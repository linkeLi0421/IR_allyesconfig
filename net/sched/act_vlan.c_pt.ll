; ModuleID = '/llk/IR_all_yes/net/sched/act_vlan.c_pt.bc'
source_filename = "../net/sched/act_vlan.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tc_action_ops = type { %struct.list_head, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.104 }
%union.anon.104 = type { i32 }
%struct.anon.105 = type { i16, i16 }
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
%struct.tcf_vlan = type { %struct.tc_action, ptr, [12 x i8] }
%struct.tcf_vlan_params = type { i32, [6 x i8], [6 x i8], i16, i16, i8, i8, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.tc_vlan = type { i32, i32, i32, i32, i32, i32 }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.127, ptr }
%union.anon.127 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, i64, i64, i64, i32 }
%struct.anon.128 = type { i16, i16, i8 }
%struct.flow_offload_action = type { ptr, i32, i32, i32, %struct.flow_stats, %struct.flow_action }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
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

@act_vlan_ops = internal global { %struct.tc_action_ops, [48 x i8] } { %struct.tc_action_ops { %struct.list_head zeroinitializer, [16 x i8] c"vlan\00\00\00\00\00\00\00\00\00\00\00\00", i32 12, i32 288, ptr null, ptr @tcf_vlan_act, ptr @tcf_vlan_dump, ptr @tcf_vlan_cleanup, ptr @tcf_vlan_search, ptr @tcf_vlan_init, ptr @tcf_vlan_walker, ptr @tcf_vlan_stats_update, ptr @tcf_vlan_get_fill_size, ptr null, ptr null, ptr @tcf_vlan_offload_act_setup }, [48 x i8] zeroinitializer }, align 32
@vlan_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @vlan_init_net, ptr null, ptr null, ptr @vlan_exit_net, ptr @vlan_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_act_vlan__384_463_vlan_init_module6 = internal global ptr @vlan_init_module, section ".initcall6.init", align 4
@__exitcall_vlan_cleanup_module = internal global ptr @vlan_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author385 = internal constant [46 x i8] c"act_vlan.author=Jiri Pirko <jiri@resnulli.us>\00", section ".modinfo", align 1
@__UNIQUE_ID_description386 = internal constant [47 x i8] c"act_vlan.description=vlan manipulation actions\00", section ".modinfo", align 1
@__UNIQUE_ID_file387 = internal constant [33 x i8] c"act_vlan.file=net/sched/act_vlan\00", section ".modinfo", align 1
@__UNIQUE_ID_license388 = internal constant [24 x i8] c"act_vlan.license=GPL v2\00", section ".modinfo", align 1
@tcf_vlan_act.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/sched/act_vlan.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@tcf_vlan_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@vlan_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@tcf_vlan_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@vlan_policy = internal constant { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.105 } }, { i8, i8, i16, { %struct.anon.105 } } }>, [56 x i8] } { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.105 } }, { i8, i8, i16, { %struct.anon.105 } } }> <{ { i8, i8, i16, { i16, [2 x i8] } } { i8 0, i8 0, i16 0, { i16, [2 x i8] } { i16 7, [2 x i8] undef } }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 24, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.104 zeroinitializer }, { i8, i8, i16, { %struct.anon.105 } } { i8 11, i8 1, i16 0, { %struct.anon.105 } { %struct.anon.105 { i16 6, i16 6 } } }, { i8, i8, i16, { %struct.anon.105 } } { i8 11, i8 1, i16 0, { %struct.anon.105 } { %struct.anon.105 { i16 6, i16 6 } } } }>, [56 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tcf_vlan_action.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/net/tc_act/tc_vlan.h\00", [35 x i8] zeroinitializer }, align 32
@tcf_vlan_push_vid.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcf_vlan_push_proto.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcf_vlan_push_prio.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tc_action_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tn->idrinfo->lock\00", [45 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.16 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.18 = private unnamed_addr constant [13 x i8] c"act_vlan_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 418, i32 29 }
@___asan_gen_.21 = private unnamed_addr constant [13 x i8] c"vlan_net_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 446, i32 33 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 42, i32 6 }
@___asan_gen_.31 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 271, i32 2 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 300, i32 6 }
@___asan_gen_.37 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 991, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [12 x i8] c"vlan_net_id\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 19, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 45, i32 7 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 695, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 723, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [12 x i8] c"vlan_policy\00", align 1
@___asan_gen_.55 = private constant [24 x i8] c"../net/sched/act_vlan.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 105, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant [32 x i8] c"../include/net/tc_act/tc_vlan.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 43, i32 16 }
@___asan_gen_.64 = private unnamed_addr constant [25 x i8] c"../include/net/act_api.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 156, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 378, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author385, ptr @__UNIQUE_ID_description386, ptr @__UNIQUE_ID_file387, ptr @__UNIQUE_ID_license388, ptr @__exitcall_vlan_cleanup_module, ptr @__initcall__kmod_act_vlan__384_463_vlan_init_module6, ptr @vlan_cleanup_module, ptr @act_vlan_ops, ptr @vlan_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @vlan_net_id, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @vlan_policy, ptr @.str.10, ptr @tc_action_net_init.__key, ptr @.str.11, ptr @xa_init_flags.__key, ptr @.str.12], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_vlan_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vlan_policy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_action_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @vlan_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_vlan_ops, ptr noundef nonnull @vlan_net_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_unregister_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_register_action(ptr noundef nonnull @act_vlan_ops, ptr noundef nonnull @vlan_net_ops) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_vlan_act(ptr noundef %skb, ptr noundef %a, ptr nocapture noundef readnone %res) #2 align 64 {
entry:
  %tci = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tci) #10
  %0 = ptrtoint ptr %tci to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %tci, align 2, !annotation !70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lastuse.i, align 8
  %conv.i = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %3, i64 %conv.i)
  %cmp.not.i = icmp eq i64 %3, %conv.i
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv.i, ptr %lastuse.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %5 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %6)
  %tobool.not.i = icmp eq i64 %6, 0
  br i1 %tobool.not.i, label %if.then7.i, label %if.end.i.tcf_lastuse_update.exit_crit_edge, !prof !71

if.end.i.tcf_lastuse_update.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_lastuse_update.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv.i, ptr %firstuse.i, align 8
  br label %tcf_lastuse_update.exit

tcf_lastuse_update.exit:                          ; preds = %if.then7.i, %if.end.i.tcf_lastuse_update.exit_crit_edge
  %cpu_bstats.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 13
  %8 = ptrtoint ptr %cpu_bstats.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu_bstats.i, align 4
  %tobool.not.i123 = icmp eq ptr %9, null
  br i1 %tobool.not.i123, label %if.end.i124, label %do.body.i, !prof !71

do.body.i:                                        ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !60) #10
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
  tail call fastcc void @bstats_update(ptr noundef %17, ptr noundef %skb) #10
  br label %tcf_action_update_bstats.exit

if.end.i124:                                      ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  %tcfa_lock.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %tcfa_lock.i) #10
  %tcfa_bstats.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8
  tail call fastcc void @bstats_update(ptr noundef %tcfa_bstats.i, ptr noundef %skb) #10
  tail call void @_raw_spin_unlock(ptr noundef %tcfa_lock.i) #10
  br label %tcf_action_update_bstats.exit

tcf_action_update_bstats.exit:                    ; preds = %if.end.i124, %do.body.i
  %tc_at_ingress.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %18 = ptrtoint ptr %tc_at_ingress.i to i32
  call void @__asan_loadN_noabort(i32 %18, i32 4)
  %bf.load.i = load i32, ptr %tc_at_ingress.i, align 2
  %19 = and i32 %bf.load.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.i.not = icmp eq i32 %19, 0
  br i1 %tobool.i.not, label %tcf_action_update_bstats.exit.do.end_crit_edge, label %if.then

tcf_action_update_bstats.exit.do.end_crit_edge:   ; preds = %tcf_action_update_bstats.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %tcf_action_update_bstats.exit
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %20 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %mac_len, align 4
  %conv = zext i16 %21 to i32
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv) #10
  %ip_summed.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %22 = ptrtoint ptr %ip_summed.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i.i.i = load i16, ptr %ip_summed.i.i.i, align 8
  %23 = and i16 %bf.load.i.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %23)
  %cmp.i.i.i = icmp eq i16 %23, 1024
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then.do.end_crit_edge

if.then.do.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i, align 4
  %26 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %26, align 8
  %call.i.i.i = tail call i32 @csum_partial(ptr noundef %25, i32 noundef %conv, i32 noundef 0) #10
  %add.i.i.i.i.i = add i32 %call.i.i.i, %28
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i, i32 %call.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i32 %add.i.i.i.i.i, %call.i.i.i
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i to i32
  %add1.i.i.i.i.i = add i32 %add.i.i.i.i.i, %conv.i.i.i.i.i
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %add1.i.i.i.i.i, ptr %26, align 8
  br label %do.end

do.end:                                           ; preds = %if.then.i.i.i, %if.then.do.end_crit_edge, %tcf_action_update_bstats.exit.do.end_crit_edge
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %30 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %tcfa_action, align 8
  %vlan_p = getelementptr inbounds %struct.tcf_vlan, ptr %a, i32 0, i32 1
  %32 = ptrtoint ptr %vlan_p to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %vlan_p, align 16
  %call9 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.end.do.end17_crit_edge

do.end.do.end17_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

land.lhs.true:                                    ; preds = %do.end
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true.do.end17_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b122 = load i1, ptr @tcf_vlan_act.__warned, align 1
  br i1 %.b122, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_vlan_act.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 42, ptr noundef nonnull @.str.1) #10
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true.do.end17_crit_edge, %do.end.do.end17_crit_edge
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %36 = zext i32 %35 to i64
  call void @__sanitizer_cov_trace_switch(i64 %36, ptr @__sancov_gen_cov_switch_values)
  switch i32 %35, label %do.body71 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb23
    i32 3, label %sw.bb31
    i32 4, label %sw.bb60
    i32 5, label %sw.bb65
  ]

sw.bb:                                            ; preds = %do.end17
  %call19 = tail call i32 @skb_vlan_pop(ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %sw.bb.out_crit_edge, label %sw.bb.drop_crit_edge

sw.bb.drop_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb23:                                          ; preds = %do.end17
  %tcfv_push_proto = getelementptr inbounds %struct.tcf_vlan_params, ptr %33, i32 0, i32 4
  %37 = ptrtoint ptr %tcfv_push_proto to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tcfv_push_proto, align 2
  %tcfv_push_vid = getelementptr inbounds %struct.tcf_vlan_params, ptr %33, i32 0, i32 3
  %39 = ptrtoint ptr %tcfv_push_vid to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %tcfv_push_vid, align 4
  %tcfv_push_prio = getelementptr inbounds %struct.tcf_vlan_params, ptr %33, i32 0, i32 5
  %41 = ptrtoint ptr %tcfv_push_prio to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %tcfv_push_prio, align 4
  %conv25 = zext i8 %42 to i16
  %shl = shl i16 %conv25, 13
  %or = or i16 %shl, %40
  %call27 = tail call i32 @skb_vlan_push(ptr noundef %skb, i16 noundef zeroext %38, i16 noundef zeroext %or) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %sw.bb23.out_crit_edge, label %sw.bb23.drop_crit_edge

sw.bb23.drop_crit_edge:                           ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

sw.bb23.out_crit_edge:                            ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb31:                                          ; preds = %do.end17
  %43 = ptrtoint ptr %tc_at_ingress.i to i32
  call void @__asan_loadN_noabort(i32 %43, i32 4)
  %bf.load.i125 = load i32, ptr %tc_at_ingress.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i125)
  %tobool.not.i126 = icmp sgt i32 %bf.load.i125, -1
  br i1 %tobool.not.i126, label %skb_vlan_tagged.exit, label %if.then36

skb_vlan_tagged.exit:                             ; preds = %sw.bb31
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %44 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %protocol.i, align 8
  %46 = zext i16 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %45, label %skb_vlan_tagged.exit.out_crit_edge [
    i16 -30552, label %skb_vlan_tagged.exit.if.else_crit_edge
    i16 -32512, label %skb_vlan_tagged.exit.if.else_crit_edge143
  ]

skb_vlan_tagged.exit.if.else_crit_edge143:        ; preds = %skb_vlan_tagged.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

skb_vlan_tagged.exit.if.else_crit_edge:           ; preds = %skb_vlan_tagged.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

skb_vlan_tagged.exit.out_crit_edge:               ; preds = %skb_vlan_tagged.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then36:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #12
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %47 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vlan_tci, align 2
  %49 = ptrtoint ptr %tci to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 %48, ptr %tci, align 2
  %bf.clear.i = and i32 %bf.load.i125, 2147483647
  %50 = ptrtoint ptr %tc_at_ingress.i to i32
  call void @__asan_storeN_noabort(i32 %50, i32 4)
  store i32 %bf.clear.i, ptr %tc_at_ingress.i, align 2
  br label %if.end41

if.else:                                          ; preds = %skb_vlan_tagged.exit.if.else_crit_edge, %skb_vlan_tagged.exit.if.else_crit_edge143
  %call37 = call i32 @__skb_vlan_pop(ptr noundef %skb, ptr noundef nonnull %tci) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool38.not = icmp eq i32 %call37, 0
  br i1 %tobool38.not, label %if.else.if.end41_crit_edge, label %if.else.drop_crit_edge

if.else.drop_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

if.else.if.end41_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end41

if.end41:                                         ; preds = %if.else.if.end41_crit_edge, %if.then36
  %51 = ptrtoint ptr %tci to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %tci, align 2
  %53 = and i16 %52, -4096
  %tcfv_push_vid43 = getelementptr inbounds %struct.tcf_vlan_params, ptr %33, i32 0, i32 3
  %54 = ptrtoint ptr %tcfv_push_vid43 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %tcfv_push_vid43, align 4
  %or45121 = or i16 %53, %55
  store i16 %or45121, ptr %tci, align 2
  %tcfv_push_prio_exists = getelementptr inbounds %struct.tcf_vlan_params, ptr %33, i32 0, i32 6
  %56 = ptrtoint ptr %tcfv_push_prio_exists to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %tcfv_push_prio_exists, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool47.not = icmp eq i8 %57, 0
  br i1 %tobool47.not, label %if.end41.if.end58_crit_edge, label %if.then48

if.end41.if.end58_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then48:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %58 = and i16 %or45121, 8191
  %tcfv_push_prio52 = getelementptr inbounds %struct.tcf_vlan_params, ptr %33, i32 0, i32 5
  %59 = ptrtoint ptr %tcfv_push_prio52 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %tcfv_push_prio52, align 4
  %conv53 = zext i8 %60 to i16
  %shl54 = shl i16 %conv53, 13
  %or56 = or i16 %shl54, %58
  %61 = ptrtoint ptr %tci to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %or56, ptr %tci, align 2
  br label %if.end58

if.end58:                                         ; preds = %if.then48, %if.end41.if.end58_crit_edge
  %tcfv_push_proto59 = getelementptr inbounds %struct.tcf_vlan_params, ptr %33, i32 0, i32 4
  %62 = ptrtoint ptr %tcfv_push_proto59 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %tcfv_push_proto59, align 2
  %64 = ptrtoint ptr %tci to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %tci, align 2
  %vlan_proto1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %66 = ptrtoint ptr %vlan_proto1.i to i32
  call void @__asan_store2_noabort(i32 %66)
  store i16 %63, ptr %vlan_proto1.i, align 8
  %vlan_tci2.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %67 = ptrtoint ptr %vlan_tci2.i to i32
  call void @__asan_store2_noabort(i32 %67)
  store i16 %65, ptr %vlan_tci2.i, align 2
  %68 = ptrtoint ptr %tc_at_ingress.i to i32
  call void @__asan_loadN_noabort(i32 %68, i32 4)
  %bf.load.i130 = load i32, ptr %tc_at_ingress.i, align 2
  %bf.set.i = or i32 %bf.load.i130, -2147483648
  store i32 %bf.set.i, ptr %tc_at_ingress.i, align 2
  br label %out

sw.bb60:                                          ; preds = %do.end17
  %call61 = tail call i32 @skb_eth_pop(ptr noundef %skb) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call61)
  %tobool62.not = icmp eq i32 %call61, 0
  br i1 %tobool62.not, label %sw.bb60.out_crit_edge, label %sw.bb60.drop_crit_edge

sw.bb60.drop_crit_edge:                           ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

sw.bb60.out_crit_edge:                            ; preds = %sw.bb60
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

sw.bb65:                                          ; preds = %do.end17
  %tcfv_push_dst = getelementptr inbounds %struct.tcf_vlan_params, ptr %33, i32 0, i32 1
  %tcfv_push_src = getelementptr inbounds %struct.tcf_vlan_params, ptr %33, i32 0, i32 2
  %call67 = tail call i32 @skb_eth_push(ptr noundef %skb, ptr noundef %tcfv_push_dst, ptr noundef %tcfv_push_src) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %sw.bb65.out_crit_edge, label %sw.bb65.drop_crit_edge

sw.bb65.drop_crit_edge:                           ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #12
  br label %drop

sw.bb65.out_crit_edge:                            ; preds = %sw.bb65
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

do.body71:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/sched/act_vlan.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 91, 0\0A.popsection", ""() #10, !srcloc !73
  unreachable

out:                                              ; preds = %sw.bb65.out_crit_edge, %sw.bb60.out_crit_edge, %if.end58, %skb_vlan_tagged.exit.out_crit_edge, %sw.bb23.out_crit_edge, %sw.bb.out_crit_edge
  %69 = ptrtoint ptr %tc_at_ingress.i to i32
  call void @__asan_loadN_noabort(i32 %69, i32 4)
  %bf.load.i132 = load i32, ptr %tc_at_ingress.i, align 2
  %70 = and i32 %bf.load.i132, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool.i133.not = icmp eq i32 %70, 0
  br i1 %tobool.i133.not, label %out.cleanup_crit_edge, label %if.then78

out.cleanup_crit_edge:                            ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then78:                                        ; preds = %out
  call void @__sanitizer_cov_trace_pc() #12
  %mac_len79 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %71 = ptrtoint ptr %mac_len79 to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %mac_len79, align 4
  %conv80 = zext i16 %72 to i32
  %call81 = call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef %conv80) #10
  br label %cleanup

drop:                                             ; preds = %sw.bb65.drop_crit_edge, %sw.bb60.drop_crit_edge, %if.else.drop_crit_edge, %sw.bb23.drop_crit_edge, %sw.bb.drop_crit_edge
  %cpu_qstats.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 15
  %73 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %cpu_qstats.i, align 4
  %tobool.not.i134 = icmp eq ptr %74, null
  br i1 %tobool.not.i134, label %if.end.i141, label %do.body.i139, !prof !71

do.body.i139:                                     ; preds = %drop
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %74 to i32
  %76 = call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i135 = and i32 %76, -16384
  %77 = inttoptr i32 %and.i.i135 to ptr
  %cpu.i136 = getelementptr inbounds %struct.thread_info, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %cpu.i136 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cpu.i136, align 4
  %arrayidx.i137 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %79
  %80 = ptrtoint ptr %arrayidx.i137 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i137, align 4
  %add.i138 = add i32 %81, %75
  %82 = inttoptr i32 %add.i138 to ptr
  %drops.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %82, i32 0, i32 2
  %83 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %84, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %cleanup

if.end.i141:                                      ; preds = %drop
  call void @__sanitizer_cov_trace_pc() #12
  %tcfa_lock.i140 = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  call void @_raw_spin_lock(ptr noundef %tcfa_lock.i140) #10
  %drops.i10.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 10, i32 2
  %85 = ptrtoint ptr %drops.i10.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %drops.i10.i, align 4
  %inc.i11.i = add i32 %86, 1
  store i32 %inc.i11.i, ptr %drops.i10.i, align 4
  call void @_raw_spin_unlock(ptr noundef %tcfa_lock.i140) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i141, %do.body.i139, %if.then78, %out.cleanup_crit_edge
  %retval.0 = phi i32 [ %31, %if.then78 ], [ %31, %out.cleanup_crit_edge ], [ 2, %do.body.i139 ], [ 2, %if.end.i141 ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tci) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_vlan_dump(ptr noundef %skb, ptr noundef %a, i32 noundef %bind, i32 noundef %ref) #2 align 64 {
entry:
  %tmp.i94 = alloca i8, align 1
  %tmp.i92 = alloca i16, align 2
  %tmp.i = alloca i16, align 2
  %opt = alloca %struct.tc_vlan, align 4
  %t = alloca %struct.tcf_t, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %opt) #10
  %2 = getelementptr inbounds %struct.tc_vlan, ptr %opt, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tc_vlan, ptr %opt, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tc_vlan, ptr %opt, i32 0, i32 3
  %5 = getelementptr inbounds %struct.tc_vlan, ptr %opt, i32 0, i32 4
  %6 = getelementptr inbounds %struct.tc_vlan, ptr %opt, i32 0, i32 5
  %tcfa_index = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 3
  %7 = getelementptr inbounds i8, ptr %opt, i32 20
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %7, align 4
  %9 = ptrtoint ptr %tcfa_index to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tcfa_index, align 4
  %11 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %opt, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %2, align 4
  %tcfa_refcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_refcnt, i32 noundef 4) #10
  %13 = ptrtoint ptr %tcfa_refcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %tcfa_refcnt, align 4
  %sub = sub i32 %14, %ref
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %4, align 4
  %tcfa_bindcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_bindcnt, i32 noundef 4) #10
  %16 = ptrtoint ptr %tcfa_bindcnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %tcfa_bindcnt, align 4
  %sub5 = sub i32 %17, %bind
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub5, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #10
  %19 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 1
  %20 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 2
  %21 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 3
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  %22 = call ptr @memset(ptr %t, i32 255, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #10
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %23 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tcfa_action, align 8
  %25 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %3, align 4
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true14

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b90 = load i1, ptr @tcf_vlan_dump.__warned, align 1
  br i1 %.b90, label %land.lhs.true14.do.end_crit_edge, label %if.then

land.lhs.true14.do.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_vlan_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 300, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true14.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %vlan_p = getelementptr inbounds %struct.tcf_vlan, ptr %a, i32 0, i32 1
  %26 = ptrtoint ptr %vlan_p to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %vlan_p, align 16
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %6, align 4
  %call17 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 24, ptr noundef nonnull %opt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %do.end.nla_put_failure_crit_edge

do.end.nla_put_failure_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end20:                                         ; preds = %do.end
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %27, align 4
  %33 = and i32 %32, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %switch = icmp eq i32 %33, 2
  br i1 %switch, label %land.lhs.true24, label %if.end20.if.end36_crit_edge

if.end20.if.end36_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

land.lhs.true24:                                  ; preds = %if.end20
  %tcfv_push_vid = getelementptr inbounds %struct.tcf_vlan_params, ptr %27, i32 0, i32 3
  %34 = ptrtoint ptr %tcfv_push_vid to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %tcfv_push_vid, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #10
  %36 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %tmp.i, align 2
  %call.i91 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool26.not = icmp eq i32 %call.i91, 0
  br i1 %tobool26.not, label %lor.lhs.false27, label %land.lhs.true24.nla_put_failure_crit_edge

land.lhs.true24.nla_put_failure_crit_edge:        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

lor.lhs.false27:                                  ; preds = %land.lhs.true24
  %tcfv_push_proto = getelementptr inbounds %struct.tcf_vlan_params, ptr %27, i32 0, i32 4
  %37 = ptrtoint ptr %tcfv_push_proto to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %tcfv_push_proto, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i92) #10
  %39 = ptrtoint ptr %tmp.i92 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %38, ptr %tmp.i92, align 2
  %call.i93 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tmp.i92) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i92) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool29.not = icmp eq i32 %call.i93, 0
  br i1 %tobool29.not, label %lor.lhs.false30, label %lor.lhs.false27.nla_put_failure_crit_edge

lor.lhs.false27.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false27
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

lor.lhs.false30:                                  ; preds = %lor.lhs.false27
  %tcfv_push_prio_exists = getelementptr inbounds %struct.tcf_vlan_params, ptr %27, i32 0, i32 6
  %40 = ptrtoint ptr %tcfv_push_prio_exists to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %tcfv_push_prio_exists, align 1, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool31.not = icmp eq i8 %41, 0
  br i1 %tobool31.not, label %lor.lhs.false30.if.end36thread-pre-split_crit_edge, label %land.lhs.true32

lor.lhs.false30.if.end36thread-pre-split_crit_edge: ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36thread-pre-split

land.lhs.true32:                                  ; preds = %lor.lhs.false30
  %tcfv_push_prio = getelementptr inbounds %struct.tcf_vlan_params, ptr %27, i32 0, i32 5
  %42 = ptrtoint ptr %tcfv_push_prio to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %tcfv_push_prio, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i94) #10
  %44 = ptrtoint ptr %tmp.i94 to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %43, ptr %tmp.i94, align 1
  %call.i95 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i94) #10
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i94) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95)
  %tobool34.not = icmp eq i32 %call.i95, 0
  br i1 %tobool34.not, label %land.lhs.true32.if.end36thread-pre-split_crit_edge, label %land.lhs.true32.nla_put_failure_crit_edge

land.lhs.true32.nla_put_failure_crit_edge:        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

land.lhs.true32.if.end36thread-pre-split_crit_edge: ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36thread-pre-split

if.end36thread-pre-split:                         ; preds = %land.lhs.true32.if.end36thread-pre-split_crit_edge, %lor.lhs.false30.if.end36thread-pre-split_crit_edge
  %45 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %45)
  %.pr = load i32, ptr %27, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36thread-pre-split, %if.end20.if.end36_crit_edge
  %46 = phi i32 [ %.pr, %if.end36thread-pre-split ], [ %32, %if.end20.if.end36_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %46)
  %cmp38 = icmp eq i32 %46, 5
  br i1 %cmp38, label %if.then39, label %if.end36.if.end49_crit_edge

if.end36.if.end49_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then39:                                        ; preds = %if.end36
  %tcfv_push_dst = getelementptr inbounds %struct.tcf_vlan_params, ptr %27, i32 0, i32 1
  %call40 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 6, ptr noundef %tcfv_push_dst) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.then39.nla_put_failure_crit_edge

if.then39.nla_put_failure_crit_edge:              ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end43:                                         ; preds = %if.then39
  %tcfv_push_src = getelementptr inbounds %struct.tcf_vlan_params, ptr %27, i32 0, i32 2
  %call45 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 6, ptr noundef %tcfv_push_src) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool46.not = icmp eq i32 %call45, 0
  br i1 %tobool46.not, label %if.end43.if.end49_crit_edge, label %if.end43.nla_put_failure_crit_edge

if.end43.nla_put_failure_crit_edge:               ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end43.if.end49_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.end49:                                         ; preds = %if.end43.if.end49_crit_edge, %if.end36.if.end49_crit_edge
  %tcfa_tm = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %48 = ptrtoint ptr %tcfa_tm to i32
  call void @__asan_load8_noabort(i32 %48)
  %49 = load i64, ptr %tcfa_tm, align 8
  %50 = trunc i64 %49 to i32
  %conv1.i = sub i32 %47, %50
  %call.i96 = call i32 @jiffies_to_clock_t(i32 noundef %conv1.i) #10
  %conv2.i = sext i32 %call.i96 to i64
  %51 = ptrtoint ptr %t to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv2.i, ptr %t, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %52 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %53 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %53)
  %54 = load i64, ptr %lastuse.i, align 8
  %55 = trunc i64 %54 to i32
  %conv6.i = sub i32 %52, %55
  %call7.i = call i32 @jiffies_to_clock_t(i32 noundef %conv6.i) #10
  %conv8.i = sext i32 %call7.i to i64
  %56 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %conv8.i, ptr %19, align 8
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %57 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %58)
  %tobool.not.i = icmp eq i64 %58, 0
  br i1 %tobool.not.i, label %if.end49.tcf_tm_dump.exit_crit_edge, label %cond.true.i

if.end49.tcf_tm_dump.exit_crit_edge:              ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_tm_dump.exit

cond.true.i:                                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %60 = trunc i64 %58 to i32
  %conv13.i = sub i32 %59, %60
  %call14.i = call i32 @jiffies_to_clock_t(i32 noundef %conv13.i) #10
  br label %tcf_tm_dump.exit

tcf_tm_dump.exit:                                 ; preds = %cond.true.i, %if.end49.tcf_tm_dump.exit_crit_edge
  %cond.i = phi i32 [ %call14.i, %cond.true.i ], [ 0, %if.end49.tcf_tm_dump.exit_crit_edge ]
  %conv15.i = sext i32 %cond.i to i64
  %61 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv15.i, ptr %21, align 8
  %expires.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 2
  %62 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %62)
  %63 = load i64, ptr %expires.i, align 8
  %conv17.i = trunc i64 %63 to i32
  %call18.i = call i32 @jiffies_to_clock_t(i32 noundef %conv17.i) #10
  %conv19.i = sext i32 %call18.i to i64
  %64 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv19.i, ptr %20, align 8
  %call51 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 32, ptr noundef nonnull %t, i32 noundef 5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %tcf_tm_dump.exit.nla_put_failure_crit_edge

tcf_tm_dump.exit.nla_put_failure_crit_edge:       ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end54:                                         ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %65 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %tcf_tm_dump.exit.nla_put_failure_crit_edge, %if.end43.nla_put_failure_crit_edge, %if.then39.nla_put_failure_crit_edge, %land.lhs.true32.nla_put_failure_crit_edge, %lor.lhs.false27.nla_put_failure_crit_edge, %land.lhs.true24.nla_put_failure_crit_edge, %do.end.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #10
  %tobool.not.i97 = icmp eq ptr %1, null
  br i1 %tobool.not.i97, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %67 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %68, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !71

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %69 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %70 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end54
  %retval.0 = phi i32 [ %66, %if.end54 ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #10
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %opt) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_vlan_cleanup(ptr nocapture noundef readonly %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %vlan_p = getelementptr inbounds %struct.tcf_vlan, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %vlan_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vlan_p, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.end6

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr inbounds %struct.tcf_vlan_params, ptr %1, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 24 to ptr)) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_vlan_search(ptr noundef %net, ptr noundef %a, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vlan_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_idr_search(ptr noundef %call, ptr noundef %a, i32 noundef %index) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_vlan_init(ptr noundef %net, ptr noundef %nla, ptr noundef %est, ptr noundef %a, ptr noundef %tp, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [9 x ptr], align 4
  %goto_ch = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vlan_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %and = and i32 %flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tb) #10
  %1 = call ptr @memset(ptr %tb, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goto_ch) #10
  %2 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %goto_ch, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #10
  %3 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %index, align 4, !annotation !70
  %tobool1.not = icmp eq ptr %nla, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

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
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 8, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @vlan_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
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
  %call12 = call i32 @tcf_idr_check_alloc(ptr noundef %call, ptr noundef nonnull %index, ptr noundef %a, i32 noundef %and.lobit) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %if.end7.cleanup_crit_edge, label %if.end16

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool17.not = icmp eq i32 %call12, 0
  %tobool.not = xor i1 %tobool, true
  %brmerge = or i1 %tobool17.not, %tobool.not
  br i1 %brmerge, label %if.end24, label %if.end16.cleanup_crit_edge

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end24:                                         ; preds = %if.end16
  %v_action = getelementptr i8, ptr %7, i32 24
  %11 = ptrtoint ptr %v_action to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %v_action, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %12, label %sw.default84 [
    i32 1, label %if.end24.sw.epilog91_crit_edge
    i32 2, label %if.end24.sw.bb_crit_edge
    i32 3, label %if.end24.sw.bb_crit_edge301
    i32 4, label %if.end24.sw.epilog91_crit_edge302
    i32 5, label %sw.bb71
  ]

if.end24.sw.epilog91_crit_edge302:                ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog91

if.end24.sw.bb_crit_edge301:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end24.sw.bb_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.bb

if.end24.sw.epilog91_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog91

sw.bb:                                            ; preds = %if.end24.sw.bb_crit_edge, %if.end24.sw.bb_crit_edge301
  %arrayidx25 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 3
  %14 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %15, null
  br i1 %tobool26.not, label %if.then27, label %if.end33

if.then27:                                        ; preds = %sw.bb
  br i1 %tobool17.not, label %if.else, label %if.then29

if.then29:                                        ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %a, align 4
  %call31 = call i32 @tcf_idr_release(ptr noundef %17, i1 noundef zeroext %tobool) #10
  br label %cleanup

if.else:                                          ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %19) #10
  br label %cleanup

if.end33:                                         ; preds = %sw.bb
  %add.ptr.i.i298 = getelementptr i8, ptr %15, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i298 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i.i298, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4094, i16 %21)
  %cmp37 = icmp ugt i16 %21, 4094
  br i1 %cmp37, label %if.then39, label %if.end46

if.then39:                                        ; preds = %if.end33
  br i1 %tobool17.not, label %if.else44, label %if.then41

if.then41:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %a, align 4
  %call43 = call i32 @tcf_idr_release(ptr noundef %23, i1 noundef zeroext %tobool) #10
  br label %cleanup

if.else44:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %25) #10
  br label %cleanup

if.end46:                                         ; preds = %if.end33
  %arrayidx47 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx47, align 4
  %tobool48.not = icmp eq ptr %27, null
  br i1 %tobool48.not, label %if.end46.if.end61_crit_edge, label %if.then49

if.end46.if.end61_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then49:                                        ; preds = %if.end46
  %add.ptr.i.i299 = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i299 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i.i299, align 2
  %30 = zext i16 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %29, label %sw.default [
    i16 -32512, label %if.then49.if.end61_crit_edge
    i16 -30552, label %if.then49.if.end61_crit_edge303
  ]

if.then49.if.end61_crit_edge303:                  ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

if.then49.if.end61_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end61

sw.default:                                       ; preds = %if.then49
  br i1 %tobool17.not, label %if.else58, label %if.then55

if.then55:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %a, align 4
  %call57 = call i32 @tcf_idr_release(ptr noundef %32, i1 noundef zeroext %tobool) #10
  br label %cleanup

if.else58:                                        ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %34) #10
  br label %cleanup

if.end61:                                         ; preds = %if.then49.if.end61_crit_edge, %if.then49.if.end61_crit_edge303, %if.end46.if.end61_crit_edge
  %push_proto.0 = phi i16 [ %29, %if.then49.if.end61_crit_edge ], [ %29, %if.then49.if.end61_crit_edge303 ], [ -32512, %if.end46.if.end61_crit_edge ]
  %arrayidx62 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 6
  %35 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx62, align 4
  %tobool63.not = icmp eq ptr %36, null
  br i1 %tobool63.not, label %if.end61.sw.epilog91_crit_edge, label %if.then67

if.end61.sw.epilog91_crit_edge:                   ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog91

if.then67:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i300 = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i300 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr.i.i300, align 1
  br label %sw.epilog91

sw.bb71:                                          ; preds = %if.end24
  %arrayidx72 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 7
  %39 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx72, align 4
  %tobool73.not = icmp eq ptr %40, null
  br i1 %tobool73.not, label %sw.bb71.if.then76_crit_edge, label %lor.lhs.false

sw.bb71.if.then76_crit_edge:                      ; preds = %sw.bb71
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76

lor.lhs.false:                                    ; preds = %sw.bb71
  %arrayidx74 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 8
  %41 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx74, align 4
  %tobool75.not = icmp eq ptr %42, null
  br i1 %tobool75.not, label %lor.lhs.false.if.then76_crit_edge, label %lor.lhs.false.sw.epilog91_crit_edge

lor.lhs.false.sw.epilog91_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog91

lor.lhs.false.if.then76_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76

if.then76:                                        ; preds = %lor.lhs.false.if.then76_crit_edge, %sw.bb71.if.then76_crit_edge
  br i1 %tobool17.not, label %if.else81, label %if.then78

if.then78:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %a, align 4
  %call80 = call i32 @tcf_idr_release(ptr noundef %44, i1 noundef zeroext %tobool) #10
  br label %cleanup

if.else81:                                        ; preds = %if.then76
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %46) #10
  br label %cleanup

sw.default84:                                     ; preds = %if.end24
  br i1 %tobool17.not, label %if.else89, label %if.then86

if.then86:                                        ; preds = %sw.default84
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %a, align 4
  %call88 = call i32 @tcf_idr_release(ptr noundef %48, i1 noundef zeroext %tobool) #10
  br label %cleanup

if.else89:                                        ; preds = %sw.default84
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %50) #10
  br label %cleanup

sw.epilog91:                                      ; preds = %lor.lhs.false.sw.epilog91_crit_edge, %if.then67, %if.end61.sw.epilog91_crit_edge, %if.end24.sw.epilog91_crit_edge, %if.end24.sw.epilog91_crit_edge302
  %push_prio_exists.0.shrunk = phi i1 [ false, %lor.lhs.false.sw.epilog91_crit_edge ], [ true, %if.then67 ], [ false, %if.end61.sw.epilog91_crit_edge ], [ false, %if.end24.sw.epilog91_crit_edge ], [ false, %if.end24.sw.epilog91_crit_edge302 ]
  %push_vid.0 = phi i16 [ 0, %lor.lhs.false.sw.epilog91_crit_edge ], [ %21, %if.then67 ], [ %21, %if.end61.sw.epilog91_crit_edge ], [ 0, %if.end24.sw.epilog91_crit_edge ], [ 0, %if.end24.sw.epilog91_crit_edge302 ]
  %push_proto.1 = phi i16 [ 0, %lor.lhs.false.sw.epilog91_crit_edge ], [ %push_proto.0, %if.then67 ], [ %push_proto.0, %if.end61.sw.epilog91_crit_edge ], [ 0, %if.end24.sw.epilog91_crit_edge ], [ 0, %if.end24.sw.epilog91_crit_edge302 ]
  %push_prio.0 = phi i8 [ 0, %lor.lhs.false.sw.epilog91_crit_edge ], [ %38, %if.then67 ], [ 0, %if.end61.sw.epilog91_crit_edge ], [ 0, %if.end24.sw.epilog91_crit_edge ], [ 0, %if.end24.sw.epilog91_crit_edge302 ]
  br i1 %tobool17.not, label %if.then94, label %if.else101

if.then94:                                        ; preds = %sw.epilog91
  %51 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %index, align 4
  %call97 = call i32 @tcf_idr_create_from_flags(ptr noundef %call, i32 noundef %52, ptr noundef %est, ptr noundef %a, ptr noundef nonnull @act_vlan_ops, i32 noundef %and.lobit, i32 noundef %flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.then94.if.end108_crit_edge, label %if.then99

if.then94.if.end108_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then99:                                        ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %54) #10
  br label %cleanup

if.else101:                                       ; preds = %sw.epilog91
  %and102 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and102)
  %tobool103.not = icmp eq i32 %and102, 0
  br i1 %tobool103.not, label %if.then104, label %if.else101.if.end108_crit_edge

if.else101.if.end108_crit_edge:                   ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end108

if.then104:                                       ; preds = %if.else101
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %a, align 4
  %call106 = call i32 @tcf_idr_release(ptr noundef %56, i1 noundef zeroext %tobool) #10
  br label %cleanup

if.end108:                                        ; preds = %if.else101.if.end108_crit_edge, %if.then94.if.end108_crit_edge
  %ret.0 = phi i32 [ 0, %if.else101.if.end108_crit_edge ], [ 1, %if.then94.if.end108_crit_edge ]
  %action109 = getelementptr i8, ptr %7, i32 12
  %57 = ptrtoint ptr %action109 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %action109, align 4
  %call110 = call i32 @tcf_action_check_ctrlact(i32 noundef %58, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call110)
  %cmp111 = icmp slt i32 %call110, 0
  br i1 %cmp111, label %if.end108.release_idr_crit_edge, label %if.end114

if.end108.release_idr_crit_edge:                  ; preds = %if.end108
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_idr

if.end114:                                        ; preds = %if.end108
  %59 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %a, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 32) #13
  %tobool116.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool116.not, label %if.then117, label %if.end118

if.then117:                                       ; preds = %if.end114
  %62 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %goto_ch, align 4
  %tobool204.not = icmp eq ptr %63, null
  br i1 %tobool204.not, label %if.then117.release_idr_crit_edge, label %if.then205

if.then117.release_idr_crit_edge:                 ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_idr

if.end118:                                        ; preds = %if.end114
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %12, ptr %call7.i.i, align 8
  %tcfv_push_vid = getelementptr inbounds %struct.tcf_vlan_params, ptr %call7.i.i, i32 0, i32 3
  %65 = ptrtoint ptr %tcfv_push_vid to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %push_vid.0, ptr %tcfv_push_vid, align 8
  %tcfv_push_prio = getelementptr inbounds %struct.tcf_vlan_params, ptr %call7.i.i, i32 0, i32 5
  %66 = ptrtoint ptr %tcfv_push_prio to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %push_prio.0, ptr %tcfv_push_prio, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %12)
  %cmp121 = icmp eq i32 %12, 2
  %spec.select = select i1 %push_prio_exists.0.shrunk, i1 true, i1 %cmp121
  %tcfv_push_prio_exists = getelementptr inbounds %struct.tcf_vlan_params, ptr %call7.i.i, i32 0, i32 6
  %frombool123 = zext i1 %spec.select to i8
  %67 = ptrtoint ptr %tcfv_push_prio_exists to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %frombool123, ptr %tcfv_push_prio_exists, align 1
  %tcfv_push_proto = getelementptr inbounds %struct.tcf_vlan_params, ptr %call7.i.i, i32 0, i32 4
  %68 = ptrtoint ptr %tcfv_push_proto to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %push_proto.1, ptr %tcfv_push_proto, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %12)
  %cmp124 = icmp eq i32 %12, 5
  br i1 %cmp124, label %if.then126, label %if.end118.if.end131_crit_edge

if.end118.if.end131_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end131

if.then126:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  %tcfv_push_dst = getelementptr inbounds %struct.tcf_vlan_params, ptr %call7.i.i, i32 0, i32 1
  %arrayidx127 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 7
  %69 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %arrayidx127, align 4
  %call128 = call i32 @nla_memcpy(ptr noundef %tcfv_push_dst, ptr noundef %70, i32 noundef 6) #10
  %tcfv_push_src = getelementptr inbounds %struct.tcf_vlan_params, ptr %call7.i.i, i32 0, i32 2
  %arrayidx129 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 8
  %71 = ptrtoint ptr %arrayidx129 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx129, align 4
  %call130 = call i32 @nla_memcpy(ptr noundef %tcfv_push_src, ptr noundef %72, i32 noundef 6) #10
  br label %if.end131

if.end131:                                        ; preds = %if.then126, %if.end118.if.end131_crit_edge
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %60, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #10
  %73 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %a, align 4
  %75 = ptrtoint ptr %action109 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %action109, align 4
  %77 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %goto_ch, align 4
  %call133 = call ptr @tcf_action_set_ctrlact(ptr noundef %74, i32 noundef %76, ptr noundef %78) #10
  %79 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %call133, ptr %goto_ch, align 4
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %60, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool137.not = icmp eq i32 %call.i, 0
  br i1 %tobool137.not, label %land.lhs.true138, label %if.end131.do.end_crit_edge

if.end131.do.end_crit_edge:                       ; preds = %if.end131
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true138:                                 ; preds = %if.end131
  %call139 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %land.lhs.true138.do.end_crit_edge, label %land.lhs.true141

land.lhs.true138.do.end_crit_edge:                ; preds = %land.lhs.true138
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true141:                                 ; preds = %land.lhs.true138
  %.b297 = load i1, ptr @tcf_vlan_init.__warned, align 1
  br i1 %.b297, label %land.lhs.true141.do.end_crit_edge, label %if.then143

land.lhs.true141.do.end_crit_edge:                ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then143:                                       ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_vlan_init.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 258, ptr noundef nonnull @.str.3) #10
  br label %do.end

do.end:                                           ; preds = %if.then143, %land.lhs.true141.do.end_crit_edge, %land.lhs.true138.do.end_crit_edge, %if.end131.do.end_crit_edge
  %vlan_p = getelementptr inbounds %struct.tcf_vlan, ptr %60, i32 0, i32 1
  %80 = ptrtoint ptr %vlan_p to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %vlan_p, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  %82 = ptrtoint ptr %vlan_p to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %call7.i.i, ptr %vlan_p, align 16
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #10
  %83 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %goto_ch, align 4
  %tobool189.not = icmp eq ptr %84, null
  br i1 %tobool189.not, label %do.end.if.end191_crit_edge, label %if.then190

do.end.if.end191_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end191

if.then190:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  call void @tcf_chain_put_by_act(ptr noundef nonnull %84) #10
  br label %if.end191

if.end191:                                        ; preds = %if.then190, %do.end.if.end191_crit_edge
  %tobool192.not = icmp eq ptr %81, null
  br i1 %tobool192.not, label %if.end191.cleanup_crit_edge, label %do.end199

if.end191.cleanup_crit_edge:                      ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end199:                                        ; preds = %if.end191
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr inbounds %struct.tcf_vlan_params, ptr %81, i32 0, i32 7
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 24 to ptr)) #10
  br label %cleanup

if.then205:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #12
  call void @tcf_chain_put_by_act(ptr noundef nonnull %63) #10
  br label %release_idr

release_idr:                                      ; preds = %if.then205, %if.then117.release_idr_crit_edge, %if.end108.release_idr_crit_edge
  %err.0 = phi i32 [ %call110, %if.end108.release_idr_crit_edge ], [ -12, %if.then205 ], [ -12, %if.then117.release_idr_crit_edge ]
  %85 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %a, align 4
  %call208 = call i32 @tcf_idr_release(ptr noundef %86, i1 noundef zeroext %tobool) #10
  br label %cleanup

cleanup:                                          ; preds = %release_idr, %do.end199, %if.end191.cleanup_crit_edge, %if.then104, %if.then99, %if.else89, %if.then86, %if.else81, %if.then78, %if.else58, %if.then55, %if.else44, %if.then41, %if.else, %if.then29, %if.end16.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %release_idr ], [ -17, %if.then104 ], [ %call97, %if.then99 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call12, %if.end7.cleanup_crit_edge ], [ 0, %if.end16.cleanup_crit_edge ], [ -22, %if.else ], [ -22, %if.then29 ], [ -34, %if.else44 ], [ -34, %if.then41 ], [ -93, %if.else58 ], [ -93, %if.then55 ], [ -22, %if.else81 ], [ -22, %if.then78 ], [ -22, %if.else89 ], [ -22, %if.then86 ], [ %ret.0, %do.end199 ], [ %ret.0, %if.end191.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goto_ch) #10
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tb) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_vlan_walker(ptr noundef %net, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vlan_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_generic_walker(ptr noundef %call, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_vlan_stats_update(ptr noundef %a, i64 noundef %bytes, i64 noundef %packets, i64 noundef %drops, i64 noundef %lastuse, i1 noundef zeroext %hw) #2 align 64 {
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

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcf_vlan_get_fill_size(ptr nocapture noundef readnone %act) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 52
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_vlan_offload_act_setup(ptr noundef %act, ptr nocapture noundef writeonly %entry_data, ptr nocapture noundef writeonly %index_inc, i1 noundef zeroext %bind) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tcf_vlan_action(ptr noundef %act)
  br i1 %bind, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %call, label %if.then.return_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb5
    i32 3, label %sw.bb7
  ]

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 8, ptr %entry_data, align 8
  %call2 = tail call fastcc zeroext i16 @tcf_vlan_push_vid(ptr noundef %act)
  %2 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %call2, ptr %2, align 8
  %call3 = tail call fastcc zeroext i16 @tcf_vlan_push_proto(ptr noundef %act)
  %proto = getelementptr inbounds %struct.anon.128, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %proto to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %call3, ptr %proto, align 2
  %call4 = tail call fastcc zeroext i8 @tcf_vlan_push_prio(ptr noundef %act)
  %prio = getelementptr inbounds %struct.anon.128, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %prio to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call4, ptr %prio, align 4
  br label %cleanup.thread

sw.bb5:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 9, ptr %entry_data, align 8
  br label %cleanup.thread

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 10, ptr %entry_data, align 8
  %call9 = tail call fastcc zeroext i16 @tcf_vlan_push_vid(ptr noundef %act)
  %8 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %call9, ptr %8, align 8
  %call11 = tail call fastcc zeroext i16 @tcf_vlan_push_proto(ptr noundef %act)
  %proto12 = getelementptr inbounds %struct.anon.128, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %proto12 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %call11, ptr %proto12, align 2
  %call13 = tail call fastcc zeroext i8 @tcf_vlan_push_prio(ptr noundef %act)
  %prio14 = getelementptr inbounds %struct.anon.128, ptr %8, i32 0, i32 2
  %11 = ptrtoint ptr %prio14 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %call13, ptr %prio14, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %sw.bb7, %sw.bb5, %sw.bb
  %12 = ptrtoint ptr %index_inc to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %index_inc, align 4
  br label %return

if.else:                                          ; preds = %entry
  %13 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %call, label %if.else.return_crit_edge [
    i32 2, label %sw.bb16
    i32 1, label %sw.bb18
    i32 3, label %sw.bb20
  ]

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

sw.bb16:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %id17 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %14 = ptrtoint ptr %id17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 8, ptr %id17, align 8
  br label %return

sw.bb18:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %id19 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %15 = ptrtoint ptr %id19 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 9, ptr %id19, align 8
  br label %return

sw.bb20:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %id21 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %16 = ptrtoint ptr %id21 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 10, ptr %id21, align 8
  br label %return

return:                                           ; preds = %sw.bb20, %sw.bb18, %sw.bb16, %if.else.return_crit_edge, %cleanup.thread, %if.then.return_crit_edge
  %retval.2 = phi i32 [ -95, %if.then.return_crit_edge ], [ -95, %if.else.return_crit_edge ], [ 0, %cleanup.thread ], [ 0, %sw.bb20 ], [ 0, %sw.bb18 ], [ 0, %sw.bb16 ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_vlan_pop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_vlan_push(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_vlan_pop(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_eth_pop(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_eth_push(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bstats_update(ptr noundef %bstats, ptr nocapture noundef readonly %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %0 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cb.i.i, align 4
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %2 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool.i.not = icmp eq i16 %5, 0
  br i1 %tobool.i.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %gso_segs = getelementptr inbounds %struct.skb_shared_info, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %gso_segs to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %gso_segs, align 2
  %conv4 = zext i16 %7 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %conv4, %cond.true ], [ 1, %entry.cond.end_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %8 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not.i.i.i = icmp eq i32 %8, 0
  br i1 %tobool.not.i.i.i, label %cond.end._bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i

cond.end._bstats_update.exit_crit_edge:           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %_bstats_update.exit

land.lhs.true.i.i.i:                              ; preds = %cond.end
  %9 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
  %13 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %18, ptrtoint (ptr @lockdep_recursion to i32)
  %19 = inttoptr i32 %add.i.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  %22 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i7.i.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i7.i.i.i to ptr
  %preempt_count.i.i8.i.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i8.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i8.i.i.i, align 4
  %sub.i.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i8.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not.i.i.i = icmp eq i32 %21, 0
  br i1 %tobool20.not.i.i.i, label %land.rhs.i.i.i, label %land.lhs.true.i.i.i._bstats_update.exit_crit_edge

land.lhs.true.i.i.i._bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_bstats_update.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i.i, label %land.rhs22.i.i.i, label %land.rhs.i.i.i._bstats_update.exit_crit_edge

land.rhs.i.i.i._bstats_update.exit_crit_edge:     ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_bstats_update.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i9.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %33, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !77
  %34 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx46.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx46.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx46.i.i.i, align 4
  %add47.i.i.i = add i32 %37, ptrtoint (ptr @hardirqs_enabled to i32)
  %38 = inttoptr i32 %add47.i.i.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !78
  %41 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i12.i.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i12.i.i.i to ptr
  %preempt_count.i.i13.i.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i13.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i13.i.i.i, align 4
  %sub.i14.i.i.i = add i32 %44, -1
  store volatile i32 %sub.i14.i.i.i, ptr %preempt_count.i.i13.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool54.not.i.i.i = icmp eq i32 %40, 0
  br i1 %tobool54.not.i.i.i, label %land.rhs22.i.i.i._bstats_update.exit_crit_edge, label %land.rhs58.i.i.i

land.rhs22.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs22.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_bstats_update.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i._bstats_update.exit_crit_edge, label %if.then.i.i.i, !prof !79

land.rhs58.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %_bstats_update.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %_bstats_update.exit

_bstats_update.exit:                              ; preds = %if.then.i.i.i, %land.rhs58.i.i.i._bstats_update.exit_crit_edge, %land.rhs22.i.i.i._bstats_update.exit_crit_edge, %land.rhs.i.i.i._bstats_update.exit_crit_edge, %land.lhs.true.i.i.i._bstats_update.exit_crit_edge, %cond.end._bstats_update.exit_crit_edge
  %conv = zext i32 %1 to i64
  %syncp.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2
  %45 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !80
  %dep_map.i.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2, i32 0, i32 1
  %47 = tail call ptr @llvm.returnaddress(i32 0) #10
  %48 = ptrtoint ptr %47 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %48) #10
  %49 = ptrtoint ptr %bstats to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %bstats, align 8
  %add.i.i = add i64 %50, %conv
  store i64 %add.i.i, ptr %bstats, align 8
  %packets2.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 1
  %conv.i7.i = zext i32 %cond to i64
  %51 = ptrtoint ptr %packets2.i to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %packets2.i, align 8
  %add.i8.i = add i64 %52, %conv.i7.i
  store i64 %add.i8.i, ptr %packets2.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %48) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  %53 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %8 = tail call i32 @llvm.read_register.i32(metadata !60) #10
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
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
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
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
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
declare dso_local i32 @tcf_idr_release(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_idr_cleanup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_create_from_flags(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_check_ctrlact(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcf_action_set_ctrlact(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_chain_put_by_act(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_generic_walker(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_action_update_stats(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcf_vlan_action(ptr noundef %a) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
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
  %vlan_p = getelementptr inbounds %struct.tcf_vlan, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %vlan_p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vlan_p, align 16
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
  %.b10 = load i1, ptr @tcf_vlan_action.__warned, align 1
  br i1 %.b10, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_vlan_action.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 43, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i11, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %do.end7
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %8 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i.i18 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i32 %7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @tcf_vlan_push_vid(ptr noundef %a) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
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
  %vlan_p = getelementptr inbounds %struct.tcf_vlan, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %vlan_p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vlan_p, align 16
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
  %.b10 = load i1, ptr @tcf_vlan_push_vid.__warned, align 1
  br i1 %.b10, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_vlan_push_vid.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 54, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tcfv_push_vid9 = getelementptr inbounds %struct.tcf_vlan_params, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %tcfv_push_vid9 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tcfv_push_vid9, align 4
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i11, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %do.end7
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %8 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i.i18 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i16 %7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @tcf_vlan_push_proto(ptr noundef %a) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
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
  %vlan_p = getelementptr inbounds %struct.tcf_vlan, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %vlan_p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vlan_p, align 16
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
  %.b10 = load i1, ptr @tcf_vlan_push_proto.__warned, align 1
  br i1 %.b10, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_vlan_push_proto.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 65, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tcfv_push_proto9 = getelementptr inbounds %struct.tcf_vlan_params, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %tcfv_push_proto9 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tcfv_push_proto9, align 2
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i11, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %do.end7
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %8 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i.i18 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i16 %7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @tcf_vlan_push_prio(ptr noundef %a) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
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
  %vlan_p = getelementptr inbounds %struct.tcf_vlan, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %vlan_p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %vlan_p, align 16
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
  %.b10 = load i1, ptr @tcf_vlan_push_prio.__warned, align 1
  br i1 %.b10, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_vlan_push_prio.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 76, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tcfv_push_prio9 = getelementptr inbounds %struct.tcf_vlan_params, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %tcfv_push_prio9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tcfv_push_prio9, align 4
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i11, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %do.end7
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %8 = tail call i32 @llvm.read_register.i32(metadata !60) #10
  %and.i.i.i.i.i18 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  ret i8 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @vlan_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vlan_net_id, align 4
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
  store ptr @act_vlan_ops, ptr %ops2.i, align 4
  %net4.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %net4.i, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @tc_action_net_init.__key) #10
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %action_idr.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %action_idr.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
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
define internal void @vlan_exit_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @vlan_net_id, align 4
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #9

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

declare void @__asan_loadN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { nounwind readonly }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !19, !20, !22, !23, !25, !27, !29, !30, !32, !33, !34, !36, !37, !39, !41, !43, !45, !46, !48, !50, !52, !54, !56, !57, !59}
!llvm.named.register.sp = !{!60}
!llvm.module.flags = !{!61, !62, !63, !64, !65, !66, !67, !68}
!llvm.ident = !{!69}

!0 = !{ptr @__initcall__kmod_act_vlan__384_463_vlan_init_module6, !1, !"__initcall__kmod_act_vlan__384_463_vlan_init_module6", i1 false, i1 false}
!1 = !{!"../net/sched/act_vlan.c", i32 463, i32 1}
!2 = !{ptr @__exitcall_vlan_cleanup_module, !3, !"__exitcall_vlan_cleanup_module", i1 false, i1 false}
!3 = !{!"../net/sched/act_vlan.c", i32 464, i32 1}
!4 = !{ptr @__UNIQUE_ID_author385, !5, !"__UNIQUE_ID_author385", i1 false, i1 false}
!5 = !{!"../net/sched/act_vlan.c", i32 466, i32 1}
!6 = !{ptr @__UNIQUE_ID_description386, !7, !"__UNIQUE_ID_description386", i1 false, i1 false}
!7 = !{!"../net/sched/act_vlan.c", i32 467, i32 1}
!8 = !{ptr @__UNIQUE_ID_file387, !9, !"__UNIQUE_ID_file387", i1 false, i1 false}
!9 = !{!"../net/sched/act_vlan.c", i32 468, i32 1}
!10 = !{ptr @__UNIQUE_ID_license388, !9, !"__UNIQUE_ID_license388", i1 false, i1 false}
!11 = !{ptr @act_vlan_ops, !12, !"act_vlan_ops", i1 false, i1 false}
!12 = !{!"../net/sched/act_vlan.c", i32 418, i32 29}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/sched/act_vlan.c", i32 42, i32 6}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../net/sched/act_vlan.c", i32 300, i32 6}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/net/netlink.h", i32 991, i32 3}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/sched/act_vlan.c", i32 280, i32 6}
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
!37 = !{ptr @vlan_net_id, !38, !"vlan_net_id", i1 false, i1 false}
!38 = !{!"../net/sched/act_vlan.c", i32 19, i32 21}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../net/sched/act_vlan.c", i32 258, i32 6}
!41 = !{ptr @vlan_policy, !42, !"vlan_policy", i1 false, i1 false}
!42 = !{!"../net/sched/act_vlan.c", i32 105, i32 32}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../include/net/tc_act/tc_vlan.h", i32 43, i32 16}
!45 = !{ptr @.str.10, !44, !"<string literal>", i1 false, i1 false}
!46 = distinct !{null, !47, !"__warned", i1 false, i1 false}
!47 = !{!"../include/net/tc_act/tc_vlan.h", i32 54, i32 18}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/net/tc_act/tc_vlan.h", i32 65, i32 20}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/net/tc_act/tc_vlan.h", i32 76, i32 19}
!52 = !{ptr @vlan_net_ops, !53, !"vlan_net_ops", i1 false, i1 false}
!53 = !{!"../net/sched/act_vlan.c", i32 446, i32 33}
!54 = !{ptr @tc_action_net_init.__key, !55, !"__key", i1 false, i1 false}
!55 = !{!"../include/net/act_api.h", i32 156, i32 2}
!56 = !{ptr @.str.11, !55, !"<string literal>", i1 false, i1 false}
!57 = !{ptr @xa_init_flags.__key, !58, !"__key", i1 false, i1 false}
!58 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!59 = !{ptr @.str.12, !58, !"<string literal>", i1 false, i1 false}
!60 = !{!"sp"}
!61 = !{i32 1, !"wchar_size", i32 2}
!62 = !{i32 1, !"min_enum_size", i32 4}
!63 = !{i32 8, !"branch-target-enforcement", i32 0}
!64 = !{i32 8, !"sign-return-address", i32 0}
!65 = !{i32 8, !"sign-return-address-all", i32 0}
!66 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!67 = !{i32 7, !"uwtable", i32 1}
!68 = !{i32 7, !"frame-pointer", i32 2}
!69 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!70 = !{!"auto-init"}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i8 0, i8 2}
!73 = !{i64 2156429148, i64 2156429632, i64 2156429185, i64 2156429241, i64 2156429275, i64 2156429299, i64 2156429340, i64 2156429361, i64 2156429389, i64 2156429423}
!74 = !{i64 2156439833}
!75 = !{i64 2149874005}
!76 = !{i64 2149878937}
!77 = !{i64 2149900649}
!78 = !{i64 2149905541}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i64 2149981998}
!81 = !{i64 2149982323}
!82 = !{i64 2149366006}
!83 = !{i64 2149366272}
