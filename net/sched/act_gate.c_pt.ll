; ModuleID = '/llk/IR_all_yes/net/sched/act_gate.c_pt.bc'
source_filename = "../net/sched/act_gate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tc_action_ops = type { %struct.list_head, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.anon.105 = type { i16, i16 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.104 }
%union.anon.104 = type { i32 }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tcf_gate = type { %struct.tc_action, %struct.tcf_gate_params, i8, i64, i32, i32, ptr, %struct.hrtimer, i32 }
%struct.tcf_gate_params = type { i32, i64, i64, i64, i32, i32, i32, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.tc_gate = type { i32, i32, i32, i32, i32 }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.127, ptr }
%union.anon.127 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, i64, i64, i64, i32 }
%struct.action_gate_entry = type { i8, i32, i32, i32 }
%struct.anon.138 = type { i32, i64, i64, i64, i32, ptr }
%struct.flow_offload_action = type { ptr, i32, i32, i32, %struct.flow_stats, %struct.flow_action }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.tcfg_gate_entry = type { i32, i8, i32, i32, i32, %struct.list_head }
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

@act_gate_ops = internal global { %struct.tc_action_ops, [48 x i8] } { %struct.tc_action_ops { %struct.list_head zeroinitializer, [16 x i8] c"gate\00\00\00\00\00\00\00\00\00\00\00\00", i32 30, i32 416, ptr null, ptr @tcf_gate_act, ptr @tcf_gate_dump, ptr @tcf_gate_cleanup, ptr @tcf_gate_search, ptr @tcf_gate_init, ptr @tcf_gate_walker, ptr @tcf_gate_stats_update, ptr @tcf_gate_get_fill_size, ptr null, ptr null, ptr @tcf_gate_offload_act_setup }, [48 x i8] zeroinitializer }, align 32
@gate_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @gate_init_net, ptr null, ptr null, ptr @gate_exit_net, ptr @gate_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_act_gate__370_693_gate_init_module6 = internal global ptr @gate_init_module, section ".initcall6.init", align 4
@__exitcall_gate_cleanup_module = internal global ptr @gate_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_file371 = internal constant [33 x i8] c"act_gate.file=net/sched/act_gate\00", section ".modinfo", align 1
@__UNIQUE_ID_license372 = internal constant [24 x i8] c"act_gate.license=GPL v2\00", section ".modinfo", align 1
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@gate_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@tcf_gate_init.__msg = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Invalid 'clockid'\00", [46 x i8] zeroinitializer }, align 32
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@gate_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.105 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [40 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.105 } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, { i8, i8, i16, { %struct.anon.105 } } { i8 11, i8 1, i16 0, { %struct.anon.105 } { %struct.anon.105 { i16 20, i16 20 } } }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.104 zeroinitializer } }>, [40 x i8] zeroinitializer }, align 32
@parse_gate_list.__msg = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Attribute isn't type 'entry'\00", [35 x i8] zeroinitializer }, align 32
@parse_gate_list.__msg.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Not enough memory for entry\00", [36 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@entry_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 14, i8 0, i16 0, %union.anon.104 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@parse_gate_entry.__msg = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Could not parse nested entry\00", [35 x i8] zeroinitializer }, align 32
@fill_gate_entry.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Invalid interval for schedule entry\00", [60 x i8] zeroinitializer }, align 32
@tc_action_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tn->idrinfo->lock\00", [45 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 7, i64 11]
@___asan_gen_.11 = private unnamed_addr constant [13 x i8] c"act_gate_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 648, i32 29 }
@___asan_gen_.14 = private unnamed_addr constant [13 x i8] c"gate_net_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 676, i32 33 }
@___asan_gen_.18 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 271, i32 2 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 991, i32 3 }
@___asan_gen_.23 = private unnamed_addr constant [12 x i8] c"gate_net_id\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 18, i32 21 }
@___asan_gen_.30 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 45, i32 7 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 695, i32 2 }
@___asan_gen_.39 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 723, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 343, i32 4 }
@___asan_gen_.45 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 1208, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [12 x i8] c"gate_policy\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 161, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 244, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 250, i32 4 }
@___asan_gen_.56 = private unnamed_addr constant [13 x i8] c"entry_policy\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 153, i32 32 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 211, i32 3 }
@___asan_gen_.62 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.63 = private constant [24 x i8] c"../net/sched/act_gate.c\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 184, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant [25 x i8] c"../include/net/act_api.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 156, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 378, i32 2 }
@llvm.compiler.used = appending global [27 x ptr] [ptr @__UNIQUE_ID_file371, ptr @__UNIQUE_ID_license372, ptr @__exitcall_gate_cleanup_module, ptr @__initcall__kmod_act_gate__370_693_gate_init_module6, ptr @gate_cleanup_module, ptr @act_gate_ops, ptr @gate_net_ops, ptr @.str, ptr @.str.1, ptr @gate_net_id, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tcf_gate_init.__msg, ptr @nla_parse_nested.__msg, ptr @gate_policy, ptr @parse_gate_list.__msg, ptr @parse_gate_list.__msg.8, ptr @entry_policy, ptr @parse_gate_entry.__msg, ptr @fill_gate_entry.__msg, ptr @tc_action_net_init.__key, ptr @.str.9, ptr @xa_init_flags.__key, ptr @.str.10], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_gate_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gate_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gate_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_gate_init.__msg to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gate_policy to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_gate_list.__msg to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_gate_list.__msg.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @entry_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @parse_gate_entry.__msg to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fill_gate_entry.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_action_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gate_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_gate_ops, ptr noundef nonnull @gate_net_ops) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_unregister_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gate_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_register_action(ptr noundef nonnull @act_gate_ops, ptr noundef nonnull @gate_net_ops) #11
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_gate_act(ptr nocapture noundef readonly %skb, ptr noundef %a, ptr nocapture noundef readnone %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %tcfa_lock) #11
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  br i1 %tobool.not.i, label %if.then7.i, label %if.end.i.tcf_lastuse_update.exit_crit_edge, !prof !61

if.end.i.tcf_lastuse_update.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcf_lastuse_update.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %conv.i, ptr %firstuse.i, align 8
  br label %tcf_lastuse_update.exit

tcf_lastuse_update.exit:                          ; preds = %if.then7.i, %if.end.i.tcf_lastuse_update.exit_crit_edge
  %tcfa_bstats = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %7 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cb.i.i.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %9 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 4
  %11 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.i.not.i = icmp eq i16 %12, 0
  br i1 %tobool.i.not.i, label %tcf_lastuse_update.exit.cond.end.i_crit_edge, label %cond.true.i

tcf_lastuse_update.exit.cond.end.i_crit_edge:     ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i

cond.true.i:                                      ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %10, i32 0, i32 5
  %13 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %gso_segs.i, align 2
  %conv4.i = zext i16 %14 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %tcf_lastuse_update.exit.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv4.i, %cond.true.i ], [ 1, %tcf_lastuse_update.exit.cond.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %15 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i.i.i.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i.i.i.i, label %cond.end.i.bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i

cond.end.i.bstats_update.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bstats_update.exit

land.lhs.true.i.i.i.i:                            ; preds = %cond.end.i
  %16 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i.i.i.i.i.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %19, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !62
  %20 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i.i.i.i = and i32 %20, -16384
  %21 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %25, ptrtoint (ptr @lockdep_recursion to i32)
  %26 = inttoptr i32 %add.i.i.i.i to ptr
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %26, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !63
  %29 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i.i7.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %32, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool20.not.i.i.i.i = icmp eq i32 %28, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bstats_update.exit

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %33 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i.i.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp.i.i.i.i = icmp eq i32 %36, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.bstats_update.exit_crit_edge

land.rhs.i.i.i.i.bstats_update.exit_crit_edge:    ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bstats_update.exit

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %37 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i.i9.i.i.i.i = and i32 %37, -16384
  %38 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %40, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !64
  %41 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %42
  %43 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %44, ptrtoint (ptr @hardirqs_enabled to i32)
  %45 = inttoptr i32 %add47.i.i.i.i to ptr
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %45, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !65
  %48 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i.i12.i.i.i.i = and i32 %48, -16384
  %49 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %51, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool54.not.i.i.i.i = icmp eq i32 %47, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.bstats_update.exit_crit_edge:  ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bstats_update.exit

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, label %if.then.i.i.i.i, !prof !66

land.rhs58.i.i.i.i.bstats_update.exit_crit_edge:  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %bstats_update.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #11
  br label %bstats_update.exit

bstats_update.exit:                               ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge, %cond.end.i.bstats_update.exit_crit_edge
  %conv.i49 = zext i32 %8 to i64
  %syncp.i.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8, i32 2
  %52 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %53, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !67
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8, i32 2, i32 0, i32 1
  %54 = tail call ptr @llvm.returnaddress(i32 0) #11
  %55 = ptrtoint ptr %54 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %55) #11
  %56 = ptrtoint ptr %tcfa_bstats to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %tcfa_bstats, align 8
  %add.i.i.i = add i64 %57, %conv.i49
  store i64 %add.i.i.i, ptr %tcfa_bstats, align 8
  %packets2.i.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8, i32 1
  %conv.i7.i.i = zext i32 %cond.i to i64
  %58 = ptrtoint ptr %packets2.i.i to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %packets2.i.i, align 8
  %add.i8.i.i = add i64 %59, %conv.i7.i.i
  store i64 %add.i8.i.i, ptr %packets2.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %55) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !68
  %60 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %61, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  %current_gate_status = getelementptr inbounds %struct.tcf_gate, ptr %a, i32 0, i32 2
  %62 = ptrtoint ptr %current_gate_status to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %current_gate_status, align 8
  %conv = zext i8 %63 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then, !prof !66

if.then:                                          ; preds = %bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock(ptr noundef %tcfa_lock) #11
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %64 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %tcfa_action, align 8
  br label %cleanup

if.end:                                           ; preds = %bstats_update.exit
  %and10 = and i32 %conv, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %if.end.drop_crit_edge, label %if.end13

if.end.drop_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %drop

if.end13:                                         ; preds = %if.end
  %current_max_octets = getelementptr inbounds %struct.tcf_gate, ptr %a, i32 0, i32 5
  %66 = ptrtoint ptr %current_max_octets to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %current_max_octets, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %67)
  %cmp = icmp sgt i32 %67, -1
  br i1 %cmp, label %if.then15, label %if.end13.if.end23_crit_edge

if.end13.if.end23_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then15:                                        ; preds = %if.end13
  %68 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %cb.i.i.i, align 4
  %current_entry_octets = getelementptr inbounds %struct.tcf_gate, ptr %a, i32 0, i32 4
  %70 = ptrtoint ptr %current_entry_octets to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %current_entry_octets, align 8
  %add = add i32 %71, %69
  store i32 %add, ptr %current_entry_octets, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %67)
  %cmp18 = icmp ugt i32 %add, %67
  br i1 %cmp18, label %if.then20, label %if.then15.if.end23_crit_edge

if.then15.if.end23_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then20:                                        ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #13
  %overlimits = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 10, i32 4
  %72 = ptrtoint ptr %overlimits to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %overlimits, align 16
  %inc = add i32 %73, 1
  store i32 %inc, ptr %overlimits, align 16
  br label %drop

if.end23:                                         ; preds = %if.then15.if.end23_crit_edge, %if.end13.if.end23_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %tcfa_lock) #11
  %tcfa_action27 = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %74 = ptrtoint ptr %tcfa_action27 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %tcfa_action27, align 8
  br label %cleanup

drop:                                             ; preds = %if.then20, %if.end.drop_crit_edge
  %drops = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 10, i32 2
  %76 = ptrtoint ptr %drops to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %drops, align 8
  %inc30 = add i32 %77, 1
  store i32 %inc30, ptr %drops, align 8
  tail call void @_raw_spin_unlock(ptr noundef %tcfa_lock) #11
  br label %cleanup

cleanup:                                          ; preds = %drop, %if.end23, %if.then
  %retval.0 = phi i32 [ %65, %if.then ], [ 2, %drop ], [ %75, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_gate_dump(ptr noundef %skb, ptr noundef %a, i32 noundef %bind, i32 noundef %ref) #2 align 64 {
entry:
  %tmp.i104 = alloca i32, align 4
  %tmp.i102 = alloca i32, align 4
  %tmp.i100 = alloca i32, align 4
  %tmp.i98 = alloca i64, align 8
  %tmp.i96 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  %opt = alloca %struct.tc_gate, align 4
  %t = alloca %struct.tcf_t, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %opt) #11
  %2 = getelementptr inbounds %struct.tc_gate, ptr %opt, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tc_gate, ptr %opt, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tc_gate, ptr %opt, i32 0, i32 3
  %5 = getelementptr inbounds %struct.tc_gate, ptr %opt, i32 0, i32 4
  %tcfa_index = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 3
  %6 = ptrtoint ptr %tcfa_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tcfa_index, align 4
  %8 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %opt, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %2, align 4
  %tcfa_refcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_refcnt, i32 noundef 4) #11
  %10 = ptrtoint ptr %tcfa_refcnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %tcfa_refcnt, align 4
  %sub = sub i32 %11, %ref
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %4, align 4
  %tcfa_bindcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_bindcnt, i32 noundef 4) #11
  %13 = ptrtoint ptr %tcfa_bindcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %tcfa_bindcnt, align 4
  %sub5 = sub i32 %14, %bind
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub5, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #11
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  %16 = call ptr @memset(ptr %t, i32 255, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #11
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %17 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %tcfa_action, align 8
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %3, align 4
  %param = getelementptr inbounds %struct.tcf_gate, ptr %a, i32 0, i32 1
  %call10 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 20, ptr noundef nonnull %opt) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %tcfg_basetime = getelementptr inbounds %struct.tcf_gate, ptr %a, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %tcfg_basetime to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tcfg_basetime, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #11
  %22 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %21, ptr %tmp.i, align 8
  %call.i = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 6, i32 noundef 8, ptr noundef nonnull %tmp.i, i32 noundef 3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool12.not = icmp eq i32 %call.i, 0
  br i1 %tobool12.not, label %if.end14, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_failure

if.end14:                                         ; preds = %if.end
  %tcfg_cycletime = getelementptr inbounds %struct.tcf_gate, ptr %a, i32 0, i32 1, i32 2
  %23 = ptrtoint ptr %tcfg_cycletime to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %tcfg_cycletime, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i96) #11
  %25 = ptrtoint ptr %tmp.i96 to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %tmp.i96, align 8
  %call.i97 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 7, i32 noundef 8, ptr noundef nonnull %tmp.i96, i32 noundef 3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i96) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool16.not = icmp eq i32 %call.i97, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.nla_put_failure_crit_edge

if.end14.nla_put_failure_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_failure

if.end18:                                         ; preds = %if.end14
  %tcfg_cycletime_ext = getelementptr inbounds %struct.tcf_gate, ptr %a, i32 0, i32 1, i32 3
  %26 = ptrtoint ptr %tcfg_cycletime_ext to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %tcfg_cycletime_ext, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i98) #11
  %28 = ptrtoint ptr %tmp.i98 to i32
  call void @__asan_store8_noabort(i32 %28)
  store i64 %27, ptr %tmp.i98, align 8
  %call.i99 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 8, i32 noundef 8, ptr noundef nonnull %tmp.i98, i32 noundef 3) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i98) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool20.not = icmp eq i32 %call.i99, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.nla_put_failure_crit_edge

if.end18.nla_put_failure_crit_edge:               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_failure

if.end22:                                         ; preds = %if.end18
  %tcfg_clockid = getelementptr inbounds %struct.tcf_gate, ptr %a, i32 0, i32 1, i32 5
  %29 = ptrtoint ptr %tcfg_clockid to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %tcfg_clockid, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i100) #11
  %31 = ptrtoint ptr %tmp.i100 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %tmp.i100, align 4
  %call.i101 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i100) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i100) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool24.not = icmp eq i32 %call.i101, 0
  br i1 %tobool24.not, label %if.end26, label %if.end22.nla_put_failure_crit_edge

if.end22.nla_put_failure_crit_edge:               ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_failure

if.end26:                                         ; preds = %if.end22
  %tcfg_flags = getelementptr inbounds %struct.tcf_gate, ptr %a, i32 0, i32 1, i32 4
  %32 = ptrtoint ptr %tcfg_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tcfg_flags, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i102) #11
  %34 = ptrtoint ptr %tmp.i102 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %tmp.i102, align 4
  %call.i103 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i102) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i102) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool28.not = icmp eq i32 %call.i103, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.nla_put_failure_crit_edge

if.end26.nla_put_failure_crit_edge:               ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_failure

if.end30:                                         ; preds = %if.end26
  %35 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %param, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i104) #11
  %37 = ptrtoint ptr %tmp.i104 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %tmp.i104, align 4
  %call.i105 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i104) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i104) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool32.not = icmp eq i32 %call.i105, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.nla_put_failure_crit_edge

if.end30.nla_put_failure_crit_edge:               ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_failure

if.end34:                                         ; preds = %if.end30
  %38 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %tail.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool36.not111 = icmp eq ptr %39, null
  %tobool36.not = select i1 %cmp.i, i1 true, i1 %tobool36.not111
  br i1 %tobool36.not, label %if.end34.nla_put_failure_crit_edge, label %if.end38

if.end34.nla_put_failure_crit_edge:               ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_failure

if.end38:                                         ; preds = %if.end34
  %entries = getelementptr inbounds %struct.tcf_gate, ptr %a, i32 0, i32 1, i32 7
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.end38
  %.pn.in = phi ptr [ %entries, %if.end38 ], [ %.pn, %for.body.for.cond_crit_edge ]
  %40 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %40)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %entries
  br i1 %cmp.not, label %for.end, label %for.body

for.body:                                         ; preds = %for.cond
  %entry6.0 = getelementptr i8, ptr %.pn, i32 -20
  %call40 = call fastcc i32 @dumping_entry(ptr noundef %skb, ptr noundef %entry6.0)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %for.body.nla_put_failure_crit_edge, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond

for.body.nla_put_failure_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_failure

for.end:                                          ; preds = %for.cond
  %41 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %42 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %39 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i, ptr %39, align 2
  %tcfa_tm = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7
  call fastcc void @tcf_tm_dump(ptr noundef nonnull %t, ptr noundef %tcfa_tm)
  %call51 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 32, ptr noundef nonnull %t, i32 noundef 3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %tobool52.not = icmp eq i32 %call51, 0
  br i1 %tobool52.not, label %if.end54, label %for.end.nla_put_failure_crit_edge

for.end.nla_put_failure_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_put_failure

if.end54:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #11
  %44 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %len.i, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %for.end.nla_put_failure_crit_edge, %for.body.nla_put_failure_crit_edge, %if.end34.nla_put_failure_crit_edge, %if.end30.nla_put_failure_crit_edge, %if.end26.nla_put_failure_crit_edge, %if.end22.nla_put_failure_crit_edge, %if.end18.nla_put_failure_crit_edge, %if.end14.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #11
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %46 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i, align 4
  %cmp.i107 = icmp ugt ptr %47, %1
  br i1 %cmp.i107, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !61

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %48 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i108 = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i109 = ptrtoint ptr %49 to i32
  %sub.ptr.sub.i110 = sub i32 %sub.ptr.lhs.cast.i108, %sub.ptr.rhs.cast.i109
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i110) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end54
  %retval.0 = phi i32 [ %45, %if.end54 ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %opt) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_gate_cleanup(ptr noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %hitimer = getelementptr inbounds %struct.tcf_gate, ptr %a, i32 0, i32 7
  %call = tail call i32 @hrtimer_cancel(ptr noundef %hitimer) #11
  %entries = getelementptr inbounds %struct.tcf_gate, ptr %a, i32 0, i32 1, i32 7
  %0 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %entries, align 4
  %cmp.not19.i = icmp eq ptr %1, %entries
  br i1 %cmp.not19.i, label %entry.release_entry_list.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.release_entry_list.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %release_entry_list.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %1, %entry.for.body.i_crit_edge ]
  %entry1.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -20
  %2 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in20.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %entry1.0.i) #11
  %cmp.not.i = icmp eq ptr %.pn.i, %entries
  br i1 %cmp.not.i, label %list_del.exit.i.release_entry_list.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_del.exit.i.release_entry_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %release_entry_list.exit

release_entry_list.exit:                          ; preds = %list_del.exit.i.release_entry_list.exit_crit_edge, %entry.release_entry_list.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_gate_search(ptr noundef %net, ptr noundef %a, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gate_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_idr_search(ptr noundef %call, ptr noundef %a, i32 noundef %index) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_gate_init(ptr noundef %net, ptr noundef %nla, ptr noundef %est, ptr noundef %a, ptr noundef %tp, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tmp.i235 = alloca i64, align 8
  %tmp.i233 = alloca i64, align 8
  %tmp.i = alloca i64, align 8
  %tb = alloca [11 x ptr], align 4
  %goto_ch = alloca ptr, align 4
  %start = alloca i64, align 8
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gate_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %and = and i32 %flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %tb) #11
  %1 = call ptr @memset(ptr %tb, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goto_ch) #11
  %2 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %goto_ch, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %start) #11
  %3 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %start, align 8, !annotation !69
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #11
  %4 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %index, align 4, !annotation !69
  %tobool1.not = icmp eq ptr %nla, null
  br i1 %tobool1.not, label %entry.cleanup145_crit_edge, label %if.end

entry.cleanup145_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup145

if.end:                                           ; preds = %entry
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %nla, i32 0, i32 1
  %5 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %6)
  %tobool.not.i = icmp sgt i16 %6, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #11
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup145_crit_edge, label %if.then2.i

do.body.i.cleanup145_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup145

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %8 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %nla, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %9 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup145

nla_parse_nested.exit:                            ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %10 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %11 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 10, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @gate_policy, i32 noundef 31, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %nla_parse_nested.exit.cleanup145_crit_edge, label %if.end4

nla_parse_nested.exit.cleanup145_crit_edge:       ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup145

if.end4:                                          ; preds = %nla_parse_nested.exit
  %arrayidx = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 2
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %if.end4.cleanup145_crit_edge, label %if.end7

if.end4.cleanup145_crit_edge:                     ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup145

if.end7:                                          ; preds = %if.end4
  %arrayidx8 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 10
  %14 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %15, null
  br i1 %tobool9.not, label %if.end7.if.end19_crit_edge, label %if.then10

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

if.then10:                                        ; preds = %if.end7
  %add.ptr.i.i230 = getelementptr i8, ptr %15, i32 4
  %16 = ptrtoint ptr %add.ptr.i.i230 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %add.ptr.i.i230, align 4
  %18 = zext i32 %17 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values)
  switch i32 %17, label %do.body [
    i32 0, label %if.then10.if.end19_crit_edge
    i32 1, label %sw.bb13
    i32 7, label %sw.bb14
    i32 11, label %sw.bb15
  ]

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

sw.bb13:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

sw.bb14:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

sw.bb15:                                          ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end19

do.body:                                          ; preds = %if.then10
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_gate_init.__msg) #11
  %tobool16.not = icmp eq ptr %extack, null
  br i1 %tobool16.not, label %do.body.cleanup145_crit_edge, label %if.then17

do.body.cleanup145_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup145

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %19 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @tcf_gate_init.__msg, ptr %extack, align 4
  br label %cleanup145

if.end19:                                         ; preds = %sw.bb15, %sw.bb14, %sw.bb13, %if.then10.if.end19_crit_edge, %if.end7.if.end19_crit_edge
  %clockid.0 = phi i32 [ %17, %sw.bb15 ], [ %17, %sw.bb14 ], [ %17, %sw.bb13 ], [ 11, %if.end7.if.end19_crit_edge ], [ %17, %if.then10.if.end19_crit_edge ]
  %tk_offset.0 = phi i32 [ 2, %sw.bb15 ], [ 1, %sw.bb14 ], [ 3, %sw.bb13 ], [ 2, %if.end7.if.end19_crit_edge ], [ %17, %if.then10.if.end19_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %13, i32 4
  %20 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i, align 4
  %22 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %index, align 4
  %and.lobit = lshr exact i32 %and, 17
  %call24 = call i32 @tcf_idr_check_alloc(ptr noundef %call, ptr noundef nonnull %index, ptr noundef %a, i32 noundef %and.lobit) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %cmp25 = icmp slt i32 %call24, 0
  br i1 %cmp25, label %if.end19.cleanup145_crit_edge, label %if.end28

if.end19.cleanup145_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup145

if.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool29.not = icmp eq i32 %call24, 0
  %tobool.not = xor i1 %tobool, true
  %brmerge = or i1 %tobool29.not, %tobool.not
  br i1 %brmerge, label %if.end33, label %if.end28.cleanup145_crit_edge

if.end28.cleanup145_crit_edge:                    ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup145

if.end33:                                         ; preds = %if.end28
  br i1 %tobool29.not, label %if.then35, label %if.else

if.then35:                                        ; preds = %if.end33
  %23 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %index, align 4
  %call38 = call i32 @tcf_idr_create(ptr noundef %call, i32 noundef %24, ptr noundef %est, ptr noundef %a, ptr noundef nonnull @act_gate_ops, i32 noundef %and.lobit, i1 noundef zeroext false, i32 noundef %flags) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.then35.if.end48_crit_edge, label %if.then40

if.then35.if.end48_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then40:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %26) #11
  br label %cleanup145

if.else:                                          ; preds = %if.end33
  %and42 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42)
  %tobool43.not = icmp eq i32 %and42, 0
  br i1 %tobool43.not, label %if.then44, label %if.else.if.end48_crit_edge

if.else.if.end48_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then44:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %a, align 4
  %call46 = call i32 @tcf_idr_release(ptr noundef %28, i1 noundef zeroext %tobool) #11
  br label %cleanup145

if.end48:                                         ; preds = %if.else.if.end48_crit_edge, %if.then35.if.end48_crit_edge
  %ret.0 = phi i32 [ 0, %if.else.if.end48_crit_edge ], [ 1, %if.then35.if.end48_crit_edge ]
  %arrayidx49 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 4
  %29 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx49, align 4
  %tobool50.not = icmp eq ptr %30, null
  br i1 %tobool50.not, label %if.end48.if.end54_crit_edge, label %if.then51

if.end48.if.end54_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end54

if.then51:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i231 = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i231 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i231, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end48.if.end54_crit_edge
  %prio.0 = phi i32 [ %32, %if.then51 ], [ -1, %if.end48.if.end54_crit_edge ]
  %arrayidx55 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 6
  %33 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx55, align 4
  %tobool56.not = icmp eq ptr %34, null
  br i1 %tobool56.not, label %if.end54.if.end60_crit_edge, label %if.then57

if.end54.if.end60_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end60

if.then57:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i) #11
  %35 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 -1, ptr %tmp.i, align 8, !annotation !69
  %call.i = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i, ptr noundef nonnull %34, i32 noundef 8) #11
  %36 = ptrtoint ptr %tmp.i to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %tmp.i, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i) #11
  br label %if.end60

if.end60:                                         ; preds = %if.then57, %if.end54.if.end60_crit_edge
  %basetime.0 = phi i64 [ %37, %if.then57 ], [ 0, %if.end54.if.end60_crit_edge ]
  %arrayidx61 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 9
  %38 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx61, align 4
  %tobool62.not = icmp eq ptr %39, null
  br i1 %tobool62.not, label %if.end60.if.end66_crit_edge, label %if.then63

if.end60.if.end66_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end66

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i232 = getelementptr i8, ptr %39, i32 4
  %40 = ptrtoint ptr %add.ptr.i.i232 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %add.ptr.i.i232, align 4
  br label %if.end66

if.end66:                                         ; preds = %if.then63, %if.end60.if.end66_crit_edge
  %gflags.0 = phi i32 [ %41, %if.then63 ], [ 0, %if.end60.if.end66_crit_edge ]
  %42 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %a, align 4
  br i1 %tobool29.not, label %if.then69, label %if.end66.if.end70_crit_edge

if.end66.if.end70_crit_edge:                      ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end70

if.then69:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #13
  %entries = getelementptr inbounds %struct.tcf_gate, ptr %43, i32 0, i32 1, i32 7
  %44 = ptrtoint ptr %entries to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %entries, ptr %entries, align 4
  %prev.i = getelementptr inbounds %struct.tcf_gate, ptr %43, i32 0, i32 1, i32 7, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %entries, ptr %prev.i, align 4
  br label %if.end70

if.end70:                                         ; preds = %if.then69, %if.end66.if.end70_crit_edge
  %action = getelementptr i8, ptr %13, i32 12
  %46 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %action, align 4
  %call71 = call i32 @tcf_action_check_ctrlact(i32 noundef %47, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.end70.release_idr_crit_edge, label %if.end75

if.end70.release_idr_crit_edge:                   ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %release_idr

if.end75:                                         ; preds = %if.end70
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %43, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #11
  %param76 = getelementptr inbounds %struct.tcf_gate, ptr %43, i32 0, i32 1
  %arrayidx77 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 7
  %48 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx77, align 4
  %tobool78.not = icmp eq ptr %49, null
  br i1 %tobool78.not, label %if.end75.if.end82_crit_edge, label %if.then79

if.end75.if.end82_crit_edge:                      ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end82

if.then79:                                        ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i233) #11
  %50 = ptrtoint ptr %tmp.i233 to i32
  call void @__asan_store8_noabort(i32 %50)
  store i64 -1, ptr %tmp.i233, align 8, !annotation !69
  %call.i234 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i233, ptr noundef nonnull %49, i32 noundef 8) #11
  %51 = ptrtoint ptr %tmp.i233 to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %tmp.i233, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i233) #11
  br label %if.end82

if.end82:                                         ; preds = %if.then79, %if.end75.if.end82_crit_edge
  %cycletime.0 = phi i64 [ %52, %if.then79 ], [ 0, %if.end75.if.end82_crit_edge ]
  %arrayidx83 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 5
  %53 = ptrtoint ptr %arrayidx83 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx83, align 4
  %tobool84.not = icmp eq ptr %54, null
  br i1 %tobool84.not, label %if.end82.if.end92_crit_edge, label %if.then85

if.end82.if.end92_crit_edge:                      ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then85:                                        ; preds = %if.end82
  %call87 = call fastcc i32 @parse_gate_list(ptr noundef nonnull %54, ptr noundef %param76, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call87)
  %cmp88 = icmp slt i32 %call87, 0
  br i1 %cmp88, label %if.then85.chain_put_crit_edge, label %if.then85.if.end92_crit_edge

if.then85.if.end92_crit_edge:                     ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end92

if.then85.chain_put_crit_edge:                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #13
  br label %chain_put

if.end92:                                         ; preds = %if.then85.if.end92_crit_edge, %if.end82.if.end92_crit_edge
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %cycletime.0)
  %tobool93.not = icmp eq i64 %cycletime.0, 0
  br i1 %tobool93.not, label %if.then94, label %if.end92.if.end110_crit_edge

if.end92.if.end110_crit_edge:                     ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

if.then94:                                        ; preds = %if.end92
  %entries96 = getelementptr inbounds %struct.tcf_gate, ptr %43, i32 0, i32 1, i32 7
  %55 = ptrtoint ptr %entries96 to i32
  call void @__asan_load4_noabort(i32 %55)
  %.pn239 = load ptr, ptr %entries96, align 4
  %cmp98.not240 = icmp eq ptr %.pn239, %entries96
  br i1 %cmp98.not240, label %if.then94.chain_put_crit_edge, label %if.then94.for.body_crit_edge

if.then94.for.body_crit_edge:                     ; preds = %if.then94
  br label %for.body

if.then94.chain_put_crit_edge:                    ; preds = %if.then94
  call void @__sanitizer_cov_trace_pc() #13
  br label %chain_put

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then94.for.body_crit_edge
  %.pn242 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn239, %if.then94.for.body_crit_edge ]
  %cycle.0241 = phi i64 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.then94.for.body_crit_edge ]
  %interval = getelementptr i8, ptr %.pn242, i32 -12
  %56 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %interval, align 4
  %conv100 = zext i32 %57 to i64
  %add = add i64 %cycle.0241, %conv100
  %58 = ptrtoint ptr %.pn242 to i32
  call void @__asan_load4_noabort(i32 %58)
  %.pn = load ptr, ptr %.pn242, align 4
  %cmp98.not = icmp eq ptr %.pn, %entries96
  br i1 %cmp98.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %add)
  %tobool106.not = icmp eq i64 %add, 0
  br i1 %tobool106.not, label %for.end.chain_put_crit_edge, label %for.end.if.end110_crit_edge

for.end.if.end110_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end110

for.end.chain_put_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %chain_put

if.end110:                                        ; preds = %for.end.if.end110_crit_edge, %if.end92.if.end110_crit_edge
  %cycletime.1 = phi i64 [ %cycletime.0, %if.end92.if.end110_crit_edge ], [ %add, %for.end.if.end110_crit_edge ]
  %tcfg_cycletime = getelementptr inbounds %struct.tcf_gate, ptr %43, i32 0, i32 1, i32 2
  %59 = ptrtoint ptr %tcfg_cycletime to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %cycletime.1, ptr %tcfg_cycletime, align 8
  %arrayidx111 = getelementptr inbounds [11 x ptr], ptr %tb, i32 0, i32 8
  %60 = ptrtoint ptr %arrayidx111 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx111, align 4
  %tobool112.not = icmp eq ptr %61, null
  br i1 %tobool112.not, label %if.end110.if.end116_crit_edge, label %if.then113

if.end110.if.end116_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end116

if.then113:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i235) #11
  %62 = ptrtoint ptr %tmp.i235 to i32
  call void @__asan_store8_noabort(i32 %62)
  store i64 -1, ptr %tmp.i235, align 8, !annotation !69
  %call.i236 = call i32 @nla_memcpy(ptr noundef nonnull %tmp.i235, ptr noundef nonnull %61, i32 noundef 8) #11
  %63 = ptrtoint ptr %tmp.i235 to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %tmp.i235, align 8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i235) #11
  %tcfg_cycletime_ext = getelementptr inbounds %struct.tcf_gate, ptr %43, i32 0, i32 1, i32 3
  %65 = ptrtoint ptr %tcfg_cycletime_ext to i32
  call void @__asan_store8_noabort(i32 %65)
  store i64 %64, ptr %tcfg_cycletime_ext, align 8
  br label %if.end116

if.end116:                                        ; preds = %if.then113, %if.end110.if.end116_crit_edge
  call fastcc void @gate_setup_timer(ptr noundef %43, i64 noundef %basetime.0, i32 noundef %tk_offset.0, i32 noundef %clockid.0, i1 noundef zeroext %tobool29.not)
  %66 = ptrtoint ptr %param76 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %prio.0, ptr %param76, align 8
  %tcfg_flags = getelementptr inbounds %struct.tcf_gate, ptr %43, i32 0, i32 1, i32 4
  %67 = ptrtoint ptr %tcfg_flags to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %gflags.0, ptr %tcfg_flags, align 8
  call fastcc void @gate_get_start_time(ptr noundef %43, ptr noundef nonnull %start)
  %68 = ptrtoint ptr %start to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %start, align 8
  %current_close_time = getelementptr inbounds %struct.tcf_gate, ptr %43, i32 0, i32 3
  %70 = ptrtoint ptr %current_close_time to i32
  call void @__asan_store8_noabort(i32 %70)
  store i64 %69, ptr %current_close_time, align 16
  %current_gate_status = getelementptr inbounds %struct.tcf_gate, ptr %43, i32 0, i32 2
  %71 = ptrtoint ptr %current_gate_status to i32
  call void @__asan_store1_noabort(i32 %71)
  store i8 3, ptr %current_gate_status, align 8
  %entries120 = getelementptr inbounds %struct.tcf_gate, ptr %43, i32 0, i32 1, i32 7
  %72 = ptrtoint ptr %entries120 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %entries120, align 4
  %add.ptr123 = getelementptr i8, ptr %73, i32 -20
  %next_entry = getelementptr inbounds %struct.tcf_gate, ptr %43, i32 0, i32 6
  %74 = ptrtoint ptr %next_entry to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %add.ptr123, ptr %next_entry, align 16
  %75 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %a, align 4
  %77 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %action, align 4
  %79 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %goto_ch, align 4
  %call125 = call ptr @tcf_action_set_ctrlact(ptr noundef %76, i32 noundef %78, ptr noundef %80) #11
  %81 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %call125, ptr %goto_ch, align 4
  %hitimer.i = getelementptr inbounds %struct.tcf_gate, ptr %43, i32 0, i32 7
  %expires.i.i = getelementptr inbounds %struct.tcf_gate, ptr %43, i32 0, i32 7, i32 0, i32 1
  %82 = ptrtoint ptr %expires.i.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %expires.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %83)
  %cmp.i = icmp eq i64 %83, 0
  %spec.store.select.i = select i1 %cmp.i, i64 9223372036854775807, i64 %83
  %84 = call i64 @llvm.smin.i64(i64 %spec.store.select.i, i64 %69) #11
  call void @hrtimer_start_range_ns(ptr noundef %hitimer.i, i64 noundef %84, i64 noundef 0, i32 noundef 4) #11
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #11
  %85 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %goto_ch, align 4
  %tobool128.not = icmp eq ptr %86, null
  br i1 %tobool128.not, label %if.end116.cleanup145_crit_edge, label %if.then129

if.end116.cleanup145_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup145

if.then129:                                       ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #13
  call void @tcf_chain_put_by_act(ptr noundef nonnull %86) #11
  br label %cleanup145

chain_put:                                        ; preds = %for.end.chain_put_crit_edge, %if.then94.chain_put_crit_edge, %if.then85.chain_put_crit_edge
  %err.2 = phi i32 [ %call87, %if.then85.chain_put_crit_edge ], [ -22, %for.end.chain_put_crit_edge ], [ -22, %if.then94.chain_put_crit_edge ]
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #11
  %87 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %goto_ch, align 4
  %tobool133.not = icmp eq ptr %88, null
  br i1 %tobool133.not, label %chain_put.release_idr_crit_edge, label %if.then134

chain_put.release_idr_crit_edge:                  ; preds = %chain_put
  call void @__sanitizer_cov_trace_pc() #13
  br label %release_idr

if.then134:                                       ; preds = %chain_put
  call void @__sanitizer_cov_trace_pc() #13
  call void @tcf_chain_put_by_act(ptr noundef nonnull %88) #11
  br label %release_idr

release_idr:                                      ; preds = %if.then134, %chain_put.release_idr_crit_edge, %if.end70.release_idr_crit_edge
  %err.3 = phi i32 [ %call71, %if.end70.release_idr_crit_edge ], [ %err.2, %if.then134 ], [ %err.2, %chain_put.release_idr_crit_edge ]
  br i1 %tobool29.not, label %if.then138, label %release_idr.if.end142_crit_edge

release_idr.if.end142_crit_edge:                  ; preds = %release_idr
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end142

if.then138:                                       ; preds = %release_idr
  call void @__sanitizer_cov_trace_pc() #13
  %tcfg_clockid = getelementptr inbounds %struct.tcf_gate, ptr %43, i32 0, i32 1, i32 5
  %89 = ptrtoint ptr %tcfg_clockid to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %tcfg_clockid, align 4
  %hitimer14.i = getelementptr inbounds %struct.tcf_gate, ptr %43, i32 0, i32 7
  call void @hrtimer_init(ptr noundef %hitimer14.i, i32 noundef %90, i32 noundef 4) #11
  %function.i = getelementptr inbounds %struct.tcf_gate, ptr %43, i32 0, i32 7, i32 2
  %91 = ptrtoint ptr %function.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @gate_timer_func, ptr %function.i, align 8
  br label %if.end142

if.end142:                                        ; preds = %if.then138, %release_idr.if.end142_crit_edge
  %92 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %a, align 4
  %call144 = call i32 @tcf_idr_release(ptr noundef %93, i1 noundef zeroext %tobool) #11
  br label %cleanup145

cleanup145:                                       ; preds = %if.end142, %if.then129, %if.end116.cleanup145_crit_edge, %if.then44, %if.then40, %if.end28.cleanup145_crit_edge, %if.end19.cleanup145_crit_edge, %if.then17, %do.body.cleanup145_crit_edge, %if.end4.cleanup145_crit_edge, %nla_parse_nested.exit.cleanup145_crit_edge, %if.then2.i, %do.body.i.cleanup145_crit_edge, %entry.cleanup145_crit_edge
  %retval.0 = phi i32 [ %err.3, %if.end142 ], [ -17, %if.then44 ], [ %call38, %if.then40 ], [ -22, %entry.cleanup145_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup145_crit_edge ], [ -22, %if.end4.cleanup145_crit_edge ], [ -22, %if.then17 ], [ -22, %do.body.cleanup145_crit_edge ], [ %call24, %if.end19.cleanup145_crit_edge ], [ 0, %if.end28.cleanup145_crit_edge ], [ %ret.0, %if.then129 ], [ %ret.0, %if.end116.cleanup145_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup145_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %start) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goto_ch) #11
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %tb) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_gate_walker(ptr noundef %net, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gate_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_generic_walker(ptr noundef %call, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #11
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_gate_stats_update(ptr noundef %a, i64 noundef %bytes, i64 noundef %packets, i64 noundef %drops, i64 noundef %lastuse, i1 noundef zeroext %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tcf_action_update_stats(ptr noundef %a, i64 noundef %bytes, i64 noundef %packets, i64 noundef %drops, i1 noundef zeroext %hw) #11
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
define internal i32 @tcf_gate_get_fill_size(ptr nocapture noundef readnone %act) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 24
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_gate_offload_act_setup(ptr noundef readonly %act, ptr nocapture noundef writeonly %entry_data, ptr nocapture noundef writeonly %index_inc, i1 noundef zeroext %bind) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %bind, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 28, ptr %entry_data, align 8
  %param.i = getelementptr inbounds %struct.tcf_gate, ptr %act, i32 0, i32 1
  %1 = ptrtoint ptr %param.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %param.i, align 16
  %3 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %2, ptr %3, align 8
  %tcfg_basetime1.i = getelementptr inbounds %struct.tcf_gate, ptr %act, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %tcfg_basetime1.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %tcfg_basetime1.i, align 8
  %basetime = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %basetime to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %basetime, align 8
  %tcfg_cycletime1.i = getelementptr inbounds %struct.tcf_gate, ptr %act, i32 0, i32 1, i32 2
  %8 = ptrtoint ptr %tcfg_cycletime1.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %tcfg_cycletime1.i, align 16
  %cycletime = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5, i32 0, i32 2
  %10 = ptrtoint ptr %cycletime to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %9, ptr %cycletime, align 8
  %tcfg_cycletime_ext.i = getelementptr inbounds %struct.tcf_gate, ptr %act, i32 0, i32 1, i32 3
  %11 = ptrtoint ptr %tcfg_cycletime_ext.i to i32
  call void @__asan_load8_noabort(i32 %11)
  %12 = load i64, ptr %tcfg_cycletime_ext.i, align 8
  %cycletimeext = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5, i32 0, i32 3
  %13 = ptrtoint ptr %cycletimeext to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 %12, ptr %cycletimeext, align 8
  %num_entries1.i = getelementptr inbounds %struct.tcf_gate, ptr %act, i32 0, i32 1, i32 6
  %14 = ptrtoint ptr %num_entries1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_entries1.i, align 8
  %num_entries = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5, i32 0, i32 4
  %16 = ptrtoint ptr %num_entries to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %num_entries, align 8
  %17 = load i32, ptr %num_entries1.i, align 8
  %entries.i.i = getelementptr inbounds %struct.tcf_gate, ptr %act, i32 0, i32 1, i32 7
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.cond.i.i.for.cond.i.i_crit_edge, %if.then
  %i.0.i.i = phi i32 [ 0, %if.then ], [ %inc.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %.pn.in.i.i = phi ptr [ %entries.i.i, %if.then ], [ %.pn.i.i, %for.cond.i.i.for.cond.i.i_crit_edge ]
  %18 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %entries.i.i
  %inc.i.i = add i32 %i.0.i.i, 1
  br i1 %cmp.not.i.i, label %for.end.i.i, label %for.cond.i.i.for.cond.i.i_crit_edge

for.cond.i.i.for.cond.i.i_crit_edge:              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.i.i, i32 %17)
  %cmp9.not.i.i = icmp eq i32 %i.0.i.i, %17
  br i1 %cmp9.not.i.i, label %if.end.i.i, label %for.end.i.i.tcf_gate_get_list.exit.thread.i_crit_edge

for.end.i.i.tcf_gate_get_list.exit.thread.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcf_gate_get_list.exit.thread.i

if.end.i.i:                                       ; preds = %for.end.i.i
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %17, i32 16) #11
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %if.end.i.i.tcf_gate_get_list.exit.thread.i_crit_edge, label %if.end7.i.i.i.i, !prof !61

if.end.i.i.tcf_gate_get_list.exit.thread.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcf_gate_get_list.exit.thread.i

if.end7.i.i.i.i:                                  ; preds = %if.end.i.i
  %21 = extractvalue { i32, i1 } %19, 0
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 2848) #14
  %tobool.not.i.i = icmp eq ptr %call8.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.end7.i.i.i.i.tcf_gate_get_list.exit.thread.i_crit_edge, label %for.cond17.preheader.i.i

if.end7.i.i.i.i.tcf_gate_get_list.exit.thread.i_crit_edge: ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcf_gate_get_list.exit.thread.i

for.cond17.preheader.i.i:                         ; preds = %if.end7.i.i.i.i
  %22 = ptrtoint ptr %entries.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn6568.i.i = load ptr, ptr %entries.i.i, align 4
  %cmp20.not69.i.i = icmp eq ptr %.pn6568.i.i, %entries.i.i
  br i1 %cmp20.not69.i.i, label %for.cond17.preheader.i.i.tcf_gate_get_list.exit.i_crit_edge, label %for.cond17.preheader.i.i.for.body22.i.i_crit_edge

for.cond17.preheader.i.i.for.body22.i.i_crit_edge: ; preds = %for.cond17.preheader.i.i
  br label %for.body22.i.i

for.cond17.preheader.i.i.tcf_gate_get_list.exit.i_crit_edge: ; preds = %for.cond17.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcf_gate_get_list.exit.i

for.body22.i.i:                                   ; preds = %for.body22.i.i.for.body22.i.i_crit_edge, %for.cond17.preheader.i.i.for.body22.i.i_crit_edge
  %.pn6571.i.i = phi ptr [ %.pn65.i.i, %for.body22.i.i.for.body22.i.i_crit_edge ], [ %.pn6568.i.i, %for.cond17.preheader.i.i.for.body22.i.i_crit_edge ]
  %i.170.i.i = phi i32 [ %inc30.i.i, %for.body22.i.i.for.body22.i.i_crit_edge ], [ 0, %for.cond17.preheader.i.i.for.body22.i.i_crit_edge ]
  %gate_state.i.i = getelementptr i8, ptr %.pn6571.i.i, i32 -16
  %23 = ptrtoint ptr %gate_state.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %gate_state.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.action_gate_entry, ptr %call8.i.i.i.i, i32 %i.170.i.i
  %25 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %24, ptr %arrayidx.i.i, align 16
  %interval.i.i = getelementptr i8, ptr %.pn6571.i.i, i32 -12
  %26 = ptrtoint ptr %interval.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %interval.i.i, align 4
  %interval25.i.i = getelementptr %struct.action_gate_entry, ptr %call8.i.i.i.i, i32 %i.170.i.i, i32 1
  %28 = ptrtoint ptr %interval25.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %interval25.i.i, align 4
  %ipv.i.i = getelementptr i8, ptr %.pn6571.i.i, i32 -8
  %29 = ptrtoint ptr %ipv.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ipv.i.i, align 4
  %ipv27.i.i = getelementptr %struct.action_gate_entry, ptr %call8.i.i.i.i, i32 %i.170.i.i, i32 2
  %31 = ptrtoint ptr %ipv27.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %ipv27.i.i, align 8
  %maxoctets.i.i = getelementptr i8, ptr %.pn6571.i.i, i32 -4
  %32 = ptrtoint ptr %maxoctets.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %maxoctets.i.i, align 4
  %maxoctets29.i.i = getelementptr %struct.action_gate_entry, ptr %call8.i.i.i.i, i32 %i.170.i.i, i32 3
  %34 = ptrtoint ptr %maxoctets29.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %maxoctets29.i.i, align 4
  %inc30.i.i = add i32 %i.170.i.i, 1
  %35 = ptrtoint ptr %.pn6571.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %.pn65.i.i = load ptr, ptr %.pn6571.i.i, align 4
  %cmp20.not.i.i = icmp eq ptr %.pn65.i.i, %entries.i.i
  br i1 %cmp20.not.i.i, label %for.body22.i.i.tcf_gate_get_list.exit.i_crit_edge, label %for.body22.i.i.for.body22.i.i_crit_edge

for.body22.i.i.for.body22.i.i_crit_edge:          ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body22.i.i

for.body22.i.i.tcf_gate_get_list.exit.i_crit_edge: ; preds = %for.body22.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcf_gate_get_list.exit.i

tcf_gate_get_list.exit.thread.i:                  ; preds = %if.end7.i.i.i.i.tcf_gate_get_list.exit.thread.i_crit_edge, %if.end.i.i.tcf_gate_get_list.exit.thread.i_crit_edge, %for.end.i.i.tcf_gate_get_list.exit.thread.i_crit_edge
  %entries9.i = getelementptr inbounds %struct.anon.138, ptr %3, i32 0, i32 5
  %36 = ptrtoint ptr %entries9.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr null, ptr %entries9.i, align 4
  br label %cleanup11

tcf_gate_get_list.exit.i:                         ; preds = %for.body22.i.i.tcf_gate_get_list.exit.i_crit_edge, %for.cond17.preheader.i.i.tcf_gate_get_list.exit.i_crit_edge
  %entries.i = getelementptr inbounds %struct.anon.138, ptr %3, i32 0, i32 5
  %37 = ptrtoint ptr %entries.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call8.i.i.i.i, ptr %entries.i, align 4
  %destructor.i = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 3
  %38 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @tcf_gate_entry_destructor, ptr %destructor.i, align 4
  %destructor_priv.i = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 4
  %39 = ptrtoint ptr %destructor_priv.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %call8.i.i.i.i, ptr %destructor_priv.i, align 8
  %40 = ptrtoint ptr %index_inc to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %index_inc, align 4
  br label %cleanup11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %id9 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %41 = ptrtoint ptr %id9 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 28, ptr %id9, align 8
  br label %cleanup11

cleanup11:                                        ; preds = %if.else, %tcf_gate_get_list.exit.i, %tcf_gate_get_list.exit.thread.i
  %retval.1 = phi i32 [ 0, %tcf_gate_get_list.exit.i ], [ 0, %if.else ], [ -22, %tcf_gate_get_list.exit.thread.i ]
  ret i32 %retval.1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

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
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dumping_entry(ptr noundef %skb, ptr nocapture noundef readonly %entry1) unnamed_addr #2 align 64 {
entry:
  %tmp.i42 = alloca i32, align 4
  %tmp.i40 = alloca i32, align 4
  %tmp.i38 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool.not45 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i, i1 true, i1 %tobool.not45
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %entry1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %entry1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #11
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.if.then.i.i_crit_edge

if.end.if.then.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end5:                                          ; preds = %if.end
  %gate_state = getelementptr inbounds %struct.tcfg_gate_entry, ptr %entry1, i32 0, i32 1
  %5 = ptrtoint ptr %gate_state to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %gate_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool6.not = icmp eq i8 %6, 0
  br i1 %tobool6.not, label %if.end5.if.end10_crit_edge, label %land.lhs.true

if.end5.if.end10_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end5
  %call.i37 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool8.not = icmp eq i32 %call.i37, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end5.if.end10_crit_edge
  %interval = getelementptr inbounds %struct.tcfg_gate_entry, ptr %entry1, i32 0, i32 2
  %7 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %interval, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i38) #11
  %9 = ptrtoint ptr %tmp.i38 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i38, align 4
  %call.i39 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i38) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i38) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool12.not = icmp eq i32 %call.i39, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.if.then.i.i_crit_edge

if.end10.if.then.i.i_crit_edge:                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end14:                                         ; preds = %if.end10
  %maxoctets = getelementptr inbounds %struct.tcfg_gate_entry, ptr %entry1, i32 0, i32 4
  %10 = ptrtoint ptr %maxoctets to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxoctets, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i40) #11
  %12 = ptrtoint ptr %tmp.i40 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %tmp.i40, align 4
  %call.i41 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i40) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i40) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool16.not = icmp eq i32 %call.i41, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.if.then.i.i_crit_edge

if.end14.if.then.i.i_crit_edge:                   ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end18:                                         ; preds = %if.end14
  %ipv = getelementptr inbounds %struct.tcfg_gate_entry, ptr %entry1, i32 0, i32 3
  %13 = ptrtoint ptr %ipv to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ipv, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i42) #11
  %15 = ptrtoint ptr %tmp.i42 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %tmp.i42, align 4
  %call.i43 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i42) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i42) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool20.not = icmp eq i32 %call.i43, 0
  br i1 %tobool20.not, label %if.end22, label %if.end18.if.then.i.i_crit_edge

if.end18.if.then.i.i_crit_edge:                   ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then.i.i

if.end22:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %1, align 2
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %19 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len.i, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end18.if.then.i.i_crit_edge, %if.end14.if.then.i.i_crit_edge, %if.end10.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge, %if.end.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %21 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %22, %1
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !61

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #11
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %23 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %24 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end22, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_nest_cancel.exit ], [ %20, %if.end22 ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcf_tm_dump(ptr nocapture noundef writeonly %dtm, ptr nocapture noundef readonly %stm) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = ptrtoint ptr %stm to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %stm, align 8
  %3 = trunc i64 %2 to i32
  %conv1 = sub i32 %0, %3
  %call = tail call i32 @jiffies_to_clock_t(i32 noundef %conv1) #11
  %conv2 = sext i32 %call to i64
  %4 = ptrtoint ptr %dtm to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %conv2, ptr %dtm, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %lastuse = getelementptr inbounds %struct.tcf_t, ptr %stm, i32 0, i32 1
  %6 = ptrtoint ptr %lastuse to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %lastuse, align 8
  %8 = trunc i64 %7 to i32
  %conv6 = sub i32 %5, %8
  %call7 = tail call i32 @jiffies_to_clock_t(i32 noundef %conv6) #11
  %conv8 = sext i32 %call7 to i64
  %lastuse9 = getelementptr inbounds %struct.tcf_t, ptr %dtm, i32 0, i32 1
  %9 = ptrtoint ptr %lastuse9 to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 %conv8, ptr %lastuse9, align 8
  %firstuse = getelementptr inbounds %struct.tcf_t, ptr %stm, i32 0, i32 3
  %10 = ptrtoint ptr %firstuse to i32
  call void @__asan_load8_noabort(i32 %10)
  %11 = load i64, ptr %firstuse, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %11)
  %tobool.not = icmp eq i64 %11, 0
  br i1 %tobool.not, label %entry.cond.end_crit_edge, label %cond.true

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %13 = trunc i64 %11 to i32
  %conv13 = sub i32 %12, %13
  %call14 = tail call i32 @jiffies_to_clock_t(i32 noundef %conv13) #11
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call14, %cond.true ], [ 0, %entry.cond.end_crit_edge ]
  %conv15 = sext i32 %cond to i64
  %firstuse16 = getelementptr inbounds %struct.tcf_t, ptr %dtm, i32 0, i32 3
  %14 = ptrtoint ptr %firstuse16 to i32
  call void @__asan_store8_noabort(i32 %14)
  store i64 %conv15, ptr %firstuse16, align 8
  %expires = getelementptr inbounds %struct.tcf_t, ptr %stm, i32 0, i32 2
  %15 = ptrtoint ptr %expires to i32
  call void @__asan_load8_noabort(i32 %15)
  %16 = load i64, ptr %expires, align 8
  %conv17 = trunc i64 %16 to i32
  %call18 = tail call i32 @jiffies_to_clock_t(i32 noundef %conv17) #11
  %conv19 = sext i32 %call18 to i64
  %expires20 = getelementptr inbounds %struct.tcf_t, ptr %dtm, i32 0, i32 2
  %17 = ptrtoint ptr %expires20 to i32
  call void @__asan_store8_noabort(i32 %17)
  store i64 %conv19, ptr %expires20, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @hrtimer_cancel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %0 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !70
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #11
  %call.i = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #11
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 45, ptr noundef nonnull @.str.3) #11
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #11
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #13
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #13
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #11
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !71
  %8 = tail call i32 @llvm.read_register.i32(metadata !51) #11
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #11
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #11
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
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @parse_gate_list(ptr noundef %list_attr, ptr noundef %sched, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %tb.i = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %list_attr, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %list_attr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %list_attr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %1)
  %cmp.i76 = icmp ugt i16 %1, 7
  br i1 %cmp.i76, label %land.lhs.true.i.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

land.lhs.true.i.lr.ph:                            ; preds = %if.end
  %conv.i = zext i16 %1 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %add.ptr.i = getelementptr i8, ptr %list_attr, i32 4
  %tobool7.not = icmp eq ptr %extack, null
  %arrayidx.i.i = getelementptr inbounds ptr, ptr %tb.i, i32 2
  %arrayidx2.i.i = getelementptr inbounds ptr, ptr %tb.i, i32 3
  %arrayidx12.i.i = getelementptr inbounds ptr, ptr %tb.i, i32 4
  %arrayidx19.i.i = getelementptr inbounds ptr, ptr %tb.i, i32 5
  %entries = getelementptr inbounds %struct.tcf_gate_params, ptr %sched, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.tcf_gate_params, ptr %sched, i32 0, i32 7, i32 1
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %i.080 = phi i32 [ 0, %land.lhs.true.i.lr.ph ], [ %i.1, %for.inc.land.lhs.true.i_crit_edge ]
  %n.078 = phi ptr [ %add.ptr.i, %land.lhs.true.i.lr.ph ], [ %add.ptr.i57, %for.inc.land.lhs.true.i_crit_edge ]
  %rem.077 = phi i32 [ %sub.i, %land.lhs.true.i.lr.ph ], [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ]
  %2 = ptrtoint ptr %n.078 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %n.078, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %cmp1.i = icmp ult i16 %3, 4
  %conv.i51 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.077, i32 %conv.i51)
  %cmp5.i.not = icmp ult i32 %rem.077, %conv.i51
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.for.end_crit_edge, label %for.body

land.lhs.true.i.for.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %land.lhs.true.i
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %n.078, i32 0, i32 1
  %4 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla_type.i, align 2
  %6 = and i16 %5, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %6)
  %cmp.not = icmp eq i16 %6, 1
  br i1 %cmp.not, label %if.end10, label %do.body

do.body:                                          ; preds = %for.body
  call void @do_trace_netlink_extack(ptr noundef nonnull @parse_gate_list.__msg) #11
  br i1 %tobool7.not, label %do.body.for.inc_crit_edge, label %if.then8

do.body.for.inc_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @parse_gate_list.__msg, ptr %extack, align 4
  br label %for.inc

if.end10:                                         ; preds = %for.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 28) #15
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %do.body14, label %if.end22

do.body14:                                        ; preds = %if.end10
  call void @do_trace_netlink_extack(ptr noundef nonnull @parse_gate_list.__msg.8) #11
  br i1 %tobool7.not, label %do.body14.release_list_crit_edge, label %if.then17

do.body14.release_list_crit_edge:                 ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  br label %release_list

if.then17:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @parse_gate_list.__msg.8, ptr %extack, align 4
  br label %release_list

if.end22:                                         ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tb.i) #11
  %10 = call ptr @memset(ptr %tb.i, i32 0, i32 24)
  %11 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %12)
  %tobool.not.i.i = icmp sgt i16 %12, -1
  br i1 %tobool.not.i.i, label %do.body.i.i, label %nla_parse_nested.exit.i

do.body.i.i:                                      ; preds = %if.end22
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #11
  br i1 %tobool7.not, label %do.body.thread.i, label %do.body.thread18.i

do.body.thread.i:                                 ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @do_trace_netlink_extack(ptr noundef nonnull @parse_gate_entry.__msg) #11
  br label %if.then25

do.body.thread18.i:                               ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %14 = ptrtoint ptr %bad_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %n.078, ptr %bad_attr.i.i, align 4
  %policy3.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %15 = ptrtoint ptr %policy3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %policy3.i.i, align 4
  call void @do_trace_netlink_extack(ptr noundef nonnull @parse_gate_entry.__msg) #11
  br label %if.then2.i

nla_parse_nested.exit.i:                          ; preds = %if.end22
  %add.ptr.i.i.i = getelementptr i8, ptr %n.078, i32 4
  %16 = ptrtoint ptr %n.078 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %n.078, align 2
  %conv.i.i.i = zext i16 %17 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call6.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 5, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @entry_policy, i32 noundef 31, ptr noundef %extack) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp.i52 = icmp slt i32 %call6.i.i, 0
  br i1 %cmp.i52, label %do.body.i, label %if.end3.i

do.body.i:                                        ; preds = %nla_parse_nested.exit.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @parse_gate_entry.__msg) #11
  br i1 %tobool7.not, label %do.body.i.if.then25_crit_edge, label %do.body.i.if.then2.i_crit_edge

do.body.i.if.then2.i_crit_edge:                   ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then2.i

do.body.i.if.then25_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.then2.i:                                       ; preds = %do.body.i.if.then2.i_crit_edge, %do.body.thread18.i
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @parse_gate_entry.__msg, ptr %extack, align 4
  br label %if.then25

if.end3.i:                                        ; preds = %nla_parse_nested.exit.i
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %i.080, ptr %call7.i.i, align 8
  %20 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.i.i.i = icmp ne ptr %21, null
  %conv.i.i = zext i1 %tobool.i.i.i to i8
  %gate_state.i.i = getelementptr inbounds %struct.tcfg_gate_entry, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %gate_state.i.i to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv.i.i, ptr %gate_state.i.i, align 4
  %23 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx2.i.i, align 4
  %tobool.not.i12.i = icmp eq ptr %24, null
  br i1 %tobool.not.i12.i, label %if.end3.i.do.body.i13.i_crit_edge, label %if.end.i.i

if.end3.i.do.body.i13.i_crit_edge:                ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i13.i

if.end.i.i:                                       ; preds = %if.end3.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %24, i32 4
  %25 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %add.ptr.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp.i.i = icmp eq i32 %26, 0
  br i1 %cmp.i.i, label %if.end.i.i.do.body.i13.i_crit_edge, label %if.end10.i.i

if.end.i.i.do.body.i13.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body.i13.i

do.body.i13.i:                                    ; preds = %if.end.i.i.do.body.i13.i_crit_edge, %if.end3.i.do.body.i13.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @fill_gate_entry.__msg) #11
  br i1 %tobool7.not, label %do.body.i13.i.if.then25_crit_edge, label %if.then8.i.i

do.body.i13.i.if.then25_crit_edge:                ; preds = %do.body.i13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then25

if.then8.i.i:                                     ; preds = %do.body.i13.i
  call void @__sanitizer_cov_trace_pc() #13
  %27 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @fill_gate_entry.__msg, ptr %extack, align 4
  br label %if.then25

if.end10.i.i:                                     ; preds = %if.end.i.i
  %interval11.i.i = getelementptr inbounds %struct.tcfg_gate_entry, ptr %call7.i.i, i32 0, i32 2
  %28 = ptrtoint ptr %interval11.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %26, ptr %interval11.i.i, align 8
  %29 = ptrtoint ptr %arrayidx12.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx12.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %30, null
  br i1 %tobool13.not.i.i, label %if.end10.i.i.if.end18.i.i_crit_edge, label %if.then14.i.i

if.end10.i.i.if.end18.i.i_crit_edge:              ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18.i.i

if.then14.i.i:                                    ; preds = %if.end10.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i42.i.i = getelementptr i8, ptr %30, i32 4
  %31 = ptrtoint ptr %add.ptr.i.i42.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i.i42.i.i, align 4
  br label %if.end18.i.i

if.end18.i.i:                                     ; preds = %if.then14.i.i, %if.end10.i.i.if.end18.i.i_crit_edge
  %.sink.i.i = phi i32 [ %32, %if.then14.i.i ], [ -1, %if.end10.i.i.if.end18.i.i_crit_edge ]
  %33 = getelementptr inbounds %struct.tcfg_gate_entry, ptr %call7.i.i, i32 0, i32 3
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %.sink.i.i, ptr %33, align 4
  %35 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx19.i.i, align 4
  %tobool20.not.i.i = icmp eq ptr %36, null
  br i1 %tobool20.not.i.i, label %if.end18.i.i.if.end26_crit_edge, label %if.then21.i.i

if.end18.i.i.if.end26_crit_edge:                  ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then21.i.i:                                    ; preds = %if.end18.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.ptr.i.i43.i.i = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i43.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i43.i.i, align 4
  br label %if.end26

if.then25:                                        ; preds = %if.then8.i.i, %do.body.i13.i.if.then25_crit_edge, %if.then2.i, %do.body.i.if.then25_crit_edge, %do.body.thread.i
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb.i) #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %release_list

if.end26:                                         ; preds = %if.then21.i.i, %if.end18.i.i.if.end26_crit_edge
  %.sink = phi i32 [ %38, %if.then21.i.i ], [ -1, %if.end18.i.i.if.end26_crit_edge ]
  %39 = getelementptr inbounds %struct.tcfg_gate_entry, ptr %call7.i.i, i32 0, i32 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %.sink, ptr %39, align 8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb.i) #11
  %list = getelementptr inbounds %struct.tcfg_gate_entry, ptr %call7.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %42, ptr noundef %entries) #11
  br i1 %call.i.i, label %if.end.i.i53, label %if.end26.list_add_tail.exit_crit_edge

if.end26.list_add_tail.exit_crit_edge:            ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i53:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %list, ptr %prev.i, align 4
  %44 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %entries, ptr %list, align 4
  %prev3.i.i = getelementptr inbounds %struct.tcfg_gate_entry, ptr %call7.i.i, i32 0, i32 5, i32 1
  %45 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %42, ptr %prev3.i.i, align 8
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %list, ptr %42, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i53, %if.end26.list_add_tail.exit_crit_edge
  %inc = add i32 %i.080, 1
  br label %for.inc

for.inc:                                          ; preds = %list_add_tail.exit, %if.then8, %do.body.for.inc_crit_edge
  %i.1 = phi i32 [ %inc, %list_add_tail.exit ], [ %i.080, %if.then8 ], [ %i.080, %do.body.for.inc_crit_edge ]
  %47 = ptrtoint ptr %n.078 to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %n.078, align 2
  %conv.i54 = zext i16 %48 to i32
  %sub.i55 = add nuw nsw i32 %conv.i54, 3
  %and.i56 = and i32 %sub.i55, 131068
  %sub1.i = sub nsw i32 %rem.077, %and.i56
  %add.ptr.i57 = getelementptr i8, ptr %n.078, i32 %and.i56
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.i.for.end_crit_edge, %if.end.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %i.1, %for.inc.for.end_crit_edge ], [ %i.080, %land.lhs.true.i.for.end_crit_edge ]
  %num_entries = getelementptr inbounds %struct.tcf_gate_params, ptr %sched, i32 0, i32 6
  %49 = ptrtoint ptr %num_entries to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %i.0.lcssa, ptr %num_entries, align 8
  br label %cleanup

release_list:                                     ; preds = %if.then25, %if.then17, %do.body14.release_list_crit_edge
  %err.0 = phi i32 [ -22, %if.then25 ], [ -12, %if.then17 ], [ -12, %do.body14.release_list_crit_edge ]
  %50 = ptrtoint ptr %entries to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %entries, align 4
  %cmp.not19.i = icmp eq ptr %51, %entries
  br i1 %cmp.not19.i, label %release_list.cleanup_crit_edge, label %release_list.for.body.i_crit_edge

release_list.for.body.i_crit_edge:                ; preds = %release_list
  br label %for.body.i

release_list.cleanup_crit_edge:                   ; preds = %release_list
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %release_list.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %51, %release_list.for.body.i_crit_edge ]
  %entry1.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -20
  %52 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 4
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %prev.i.i.i, align 4
  %55 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %.pn.in20.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev1.i.i.i.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %56, ptr %54, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %59 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @kfree(ptr noundef %entry1.0.i) #11
  %cmp.not.i = icmp eq ptr %.pn.i, %entries
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i.cleanup_crit_edge, %release_list.cleanup_crit_edge, %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %i.0.lcssa, %for.end ], [ -22, %entry.cleanup_crit_edge ], [ %err.0, %release_list.cleanup_crit_edge ], [ %err.0, %list_del.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gate_setup_timer(ptr noundef %gact, i64 noundef %basetime, i32 noundef %tko, i32 noundef %clockid, i1 noundef zeroext %do_init) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %do_init, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8

if.then:                                          ; preds = %entry
  %tcfg_basetime = getelementptr inbounds %struct.tcf_gate, ptr %gact, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %tcfg_basetime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tcfg_basetime, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %basetime)
  %cmp = icmp eq i64 %1, %basetime
  br i1 %cmp, label %land.lhs.true, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  %tk_offset = getelementptr inbounds %struct.tcf_gate, ptr %gact, i32 0, i32 8
  %2 = ptrtoint ptr %tk_offset to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tk_offset, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %tko)
  %cmp1 = icmp eq i32 %3, %tko
  br i1 %cmp1, label %land.lhs.true2, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %tcfg_clockid = getelementptr inbounds %struct.tcf_gate, ptr %gact, i32 0, i32 1, i32 5
  %4 = ptrtoint ptr %tcfg_clockid to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tcfg_clockid, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %clockid)
  %cmp4 = icmp eq i32 %5, %clockid
  br i1 %cmp4, label %land.lhs.true2.return_crit_edge, label %land.lhs.true2.if.end_crit_edge

land.lhs.true2.if.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

land.lhs.true2.return_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #13
  br label %return

if.end:                                           ; preds = %land.lhs.true2.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %if.then.if.end_crit_edge
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %gact, i32 0, i32 12
  tail call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #11
  %hitimer = getelementptr inbounds %struct.tcf_gate, ptr %gact, i32 0, i32 7
  %call = tail call i32 @hrtimer_cancel(ptr noundef %hitimer) #11
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #11
  br label %if.end8

if.end8:                                          ; preds = %if.end, %entry.if.end8_crit_edge
  %tcfg_basetime10 = getelementptr inbounds %struct.tcf_gate, ptr %gact, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %tcfg_basetime10 to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %basetime, ptr %tcfg_basetime10, align 8
  %tcfg_clockid12 = getelementptr inbounds %struct.tcf_gate, ptr %gact, i32 0, i32 1, i32 5
  %7 = ptrtoint ptr %tcfg_clockid12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %clockid, ptr %tcfg_clockid12, align 4
  %tk_offset13 = getelementptr inbounds %struct.tcf_gate, ptr %gact, i32 0, i32 8
  %8 = ptrtoint ptr %tk_offset13 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %tko, ptr %tk_offset13, align 8
  %hitimer14 = getelementptr inbounds %struct.tcf_gate, ptr %gact, i32 0, i32 7
  tail call void @hrtimer_init(ptr noundef %hitimer14, i32 noundef %clockid, i32 noundef 4) #11
  %function = getelementptr inbounds %struct.tcf_gate, ptr %gact, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %function to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @gate_timer_func, ptr %function, align 8
  br label %return

return:                                           ; preds = %if.end8, %land.lhs.true2.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gate_get_start_time(ptr nocapture noundef readonly %gact, ptr nocapture noundef writeonly %start) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tcfg_basetime = getelementptr inbounds %struct.tcf_gate, ptr %gact, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %tcfg_basetime to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %tcfg_basetime, align 8
  %call.i = tail call i64 @ktime_get() #11
  %tk_offset.i = getelementptr inbounds %struct.tcf_gate, ptr %gact, i32 0, i32 8
  %2 = ptrtoint ptr %tk_offset.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tk_offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %3)
  %cond.i = icmp eq i32 %3, 3
  br i1 %cond.i, label %entry.gate_get_time.exit_crit_edge, label %sw.default.i

entry.gate_get_time.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %gate_get_time.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i64 @ktime_mono_to_any(i64 noundef %call.i, i32 noundef %3) #11
  br label %gate_get_time.exit

gate_get_time.exit:                               ; preds = %sw.default.i, %entry.gate_get_time.exit_crit_edge
  %retval.0.i = phi i64 [ %call2.i, %sw.default.i ], [ %call.i, %entry.gate_get_time.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %1)
  %cmp3.i.i = icmp slt i64 %retval.0.i, %1
  br i1 %cmp3.i.i, label %gate_get_time.exit.cleanup_crit_edge, label %if.end

gate_get_time.exit.cleanup_crit_edge:             ; preds = %gate_get_time.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %gate_get_time.exit
  call void @__sanitizer_cov_trace_pc() #13
  %tcfg_cycletime = getelementptr inbounds %struct.tcf_gate, ptr %gact, i32 0, i32 1, i32 2
  %4 = ptrtoint ptr %tcfg_cycletime to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %tcfg_cycletime, align 8
  %sub = sub i64 %retval.0.i, %1
  %call4 = tail call i64 @div64_u64(i64 noundef %sub, i64 noundef %5) #11
  %add = add i64 %call4, 1
  %mul = mul i64 %add, %5
  %add5 = add i64 %mul, %1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %gate_get_time.exit.cleanup_crit_edge
  %storemerge = phi i64 [ %add5, %if.end ], [ %1, %gate_get_time.exit.cleanup_crit_edge ]
  %6 = ptrtoint ptr %start to i32
  call void @__asan_store8_noabort(i32 %6)
  store i64 %storemerge, ptr %start, align 8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcf_action_set_ctrlact(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_chain_put_by_act(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gate_timer_func(ptr noundef %timer) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %tcfa_lock = getelementptr i8, ptr %timer, i32 -176
  tail call void @_raw_spin_lock(ptr noundef %tcfa_lock) #11
  %next_entry = getelementptr i8, ptr %timer, i32 -8
  %0 = ptrtoint ptr %next_entry to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %next_entry, align 16
  %gate_state = getelementptr inbounds %struct.tcfg_gate_entry, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %gate_state to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %gate_state, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp ne i8 %3, 0
  %conv1 = zext i1 %tobool.not to i8
  %current_gate_status = getelementptr i8, ptr %timer, i32 -32
  %4 = ptrtoint ptr %current_gate_status to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %conv1, ptr %current_gate_status, align 8
  %current_entry_octets = getelementptr i8, ptr %timer, i32 -16
  %5 = ptrtoint ptr %current_entry_octets to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %current_entry_octets, align 8
  %maxoctets = getelementptr inbounds %struct.tcfg_gate_entry, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %maxoctets to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxoctets, align 4
  %current_max_octets = getelementptr i8, ptr %timer, i32 -12
  %8 = ptrtoint ptr %current_max_octets to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %current_max_octets, align 4
  %current_close_time = getelementptr i8, ptr %timer, i32 -24
  %9 = ptrtoint ptr %current_close_time to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %current_close_time, align 16
  %interval = getelementptr inbounds %struct.tcfg_gate_entry, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %interval to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %interval, align 4
  %conv2 = zext i32 %12 to i64
  %add = add i64 %10, %conv2
  store i64 %add, ptr %current_close_time, align 16
  %list = getelementptr inbounds %struct.tcfg_gate_entry, ptr %1, i32 0, i32 5
  %entries = getelementptr i8, ptr %timer, i32 -44
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list, align 4
  %cmp.i.not = icmp eq ptr %14, %entries
  %list.entries = select i1 %cmp.i.not, ptr %entries, ptr %list
  %15 = ptrtoint ptr %list.entries to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn = load ptr, ptr %list.entries, align 4
  %call.i = tail call i64 @ktime_get() #11
  %tk_offset.i = getelementptr i8, ptr %timer, i32 48
  %16 = ptrtoint ptr %tk_offset.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tk_offset.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %17)
  %cond.i = icmp eq i32 %17, 3
  br i1 %cond.i, label %entry.gate_get_time.exit_crit_edge, label %sw.default.i

entry.gate_get_time.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %gate_get_time.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call2.i = tail call i64 @ktime_mono_to_any(i64 noundef %call.i, i32 noundef %17) #11
  br label %gate_get_time.exit

gate_get_time.exit:                               ; preds = %sw.default.i, %entry.gate_get_time.exit_crit_edge
  %retval.0.i = phi i64 [ %call2.i, %sw.default.i ], [ %call.i, %entry.gate_get_time.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp8(i64 %retval.0.i, i64 %add)
  %cmp3.i.i = icmp sgt i64 %retval.0.i, %add
  br i1 %cmp3.i.i, label %if.then18, label %gate_get_time.exit.if.end23_crit_edge

gate_get_time.exit.if.end23_crit_edge:            ; preds = %gate_get_time.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end23

if.then18:                                        ; preds = %gate_get_time.exit
  call void @__sanitizer_cov_trace_pc() #13
  %tcfg_cycletime = getelementptr i8, ptr %timer, i32 -72
  %18 = ptrtoint ptr %tcfg_cycletime to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %tcfg_cycletime, align 8
  %tcfg_basetime = getelementptr i8, ptr %timer, i32 -80
  %20 = ptrtoint ptr %tcfg_basetime to i32
  call void @__asan_load8_noabort(i32 %20)
  %21 = load i64, ptr %tcfg_basetime, align 8
  %sub = sub i64 %retval.0.i, %21
  %call20 = tail call i64 @div64_u64(i64 noundef %sub, i64 noundef %19) #11
  %add21 = add i64 %call20, 1
  %mul = mul i64 %add21, %19
  %add22 = add i64 %mul, %21
  br label %if.end23

if.end23:                                         ; preds = %if.then18, %gate_get_time.exit.if.end23_crit_edge
  %close_time.0 = phi i64 [ %add22, %if.then18 ], [ %add, %gate_get_time.exit.if.end23_crit_edge ]
  %next.0 = getelementptr i8, ptr %.pn, i32 -20
  %22 = ptrtoint ptr %next_entry to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %next.0, ptr %next_entry, align 16
  %expires.i = getelementptr inbounds %struct.timerqueue_node, ptr %timer, i32 0, i32 1
  %23 = ptrtoint ptr %expires.i to i32
  call void @__asan_store8_noabort(i32 %23)
  store i64 %close_time.0, ptr %expires.i, align 8
  %_softexpires.i = getelementptr inbounds %struct.hrtimer, ptr %timer, i32 0, i32 1
  %24 = ptrtoint ptr %_softexpires.i to i32
  call void @__asan_store8_noabort(i32 %24)
  store i64 %close_time.0, ptr %_softexpires.i, align 8
  tail call void @_raw_spin_unlock(ptr noundef %tcfa_lock) #11
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_mono_to_any(i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @hrtimer_start_range_ns(ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_generic_walker(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_action_update_stats(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_gate_entry_destructor(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %priv) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gate_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gate_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 156) #15
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %call, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.tc_action_net_init.exit_crit_edge, label %if.end.i

entry.tc_action_net_init.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %tc_action_net_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %ops2.i = getelementptr inbounds %struct.tc_action_net, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @act_gate_ops, ptr %ops2.i, align 4
  %net4.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %net4.i, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @tc_action_net_init.__key) #11
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %action_idr.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %action_idr.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #11
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
define internal void @gate_exit_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gate_net_id, align 4
  tail call void @rtnl_lock() #11
  %1 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn12.i = load ptr, ptr %net_list, align 4
  %cmp.not13.i = icmp eq ptr %.pn12.i, %net_list
  br i1 %cmp.not13.i, label %entry.tc_action_net_exit.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.tc_action_net_exit.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %tc_action_net_exit.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn14.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn12.i, %entry.for.body.i_crit_edge ]
  %net.0.i = getelementptr i8, ptr %.pn14.i, i32 -116
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net.0.i, i32 noundef %0) #11
  %ops.i = getelementptr inbounds %struct.tc_action_net, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void @tcf_idrinfo_destroy(ptr noundef %3, ptr noundef %5) #11
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  tail call void @kfree(ptr noundef %7) #11
  %8 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %net_list
  br i1 %cmp.not.i, label %for.body.i.tc_action_net_exit.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.tc_action_net_exit.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tc_action_net_exit.exit

tc_action_net_exit.exit:                          ; preds = %for.body.i.tc_action_net_exit.exit_crit_edge, %entry.tc_action_net_exit.exit_crit_edge
  tail call void @rtnl_unlock() #11
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
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_register_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.smin.i64(i64, i64) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { nounwind allocsize(0) }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !14, !16, !17, !18, !20, !21, !22, !24, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !48, !50}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__initcall__kmod_act_gate__370_693_gate_init_module6, !1, !"__initcall__kmod_act_gate__370_693_gate_init_module6", i1 false, i1 false}
!1 = !{!"../net/sched/act_gate.c", i32 693, i32 1}
!2 = !{ptr @__exitcall_gate_cleanup_module, !3, !"__exitcall_gate_cleanup_module", i1 false, i1 false}
!3 = !{!"../net/sched/act_gate.c", i32 694, i32 1}
!4 = !{ptr @__UNIQUE_ID_file371, !5, !"__UNIQUE_ID_file371", i1 false, i1 false}
!5 = !{!"../net/sched/act_gate.c", i32 695, i32 1}
!6 = !{ptr @__UNIQUE_ID_license372, !5, !"__UNIQUE_ID_license372", i1 false, i1 false}
!7 = !{ptr @act_gate_ops, !8, !"act_gate_ops", i1 false, i1 false}
!8 = !{!"../net/sched/act_gate.c", i32 648, i32 29}
!9 = distinct !{null, !10, !"__already_done", i1 false, i1 false}
!10 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../include/net/netlink.h", i32 991, i32 3}
!14 = distinct !{null, !15, !"__warned", i1 false, i1 false}
!15 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!20 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @gate_net_id, !26, !"gate_net_id", i1 false, i1 false}
!26 = !{!"../net/sched/act_gate.c", i32 18, i32 21}
!27 = !{ptr @tcf_gate_init.__msg, !28, !"__msg", i1 false, i1 false}
!28 = !{!"../net/sched/act_gate.c", i32 343, i32 4}
!29 = !{ptr @nla_parse_nested.__msg, !30, !"__msg", i1 false, i1 false}
!30 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!31 = !{ptr @gate_policy, !32, !"gate_policy", i1 false, i1 false}
!32 = !{!"../net/sched/act_gate.c", i32 161, i32 32}
!33 = !{ptr @parse_gate_list.__msg, !34, !"__msg", i1 false, i1 false}
!34 = !{!"../net/sched/act_gate.c", i32 244, i32 4}
!35 = !{ptr @parse_gate_list.__msg.8, !36, !"__msg", i1 false, i1 false}
!36 = !{!"../net/sched/act_gate.c", i32 250, i32 4}
!37 = !{ptr @parse_gate_entry.__msg, !38, !"__msg", i1 false, i1 false}
!38 = !{!"../net/sched/act_gate.c", i32 211, i32 3}
!39 = !{ptr @entry_policy, !40, !"entry_policy", i1 false, i1 false}
!40 = !{!"../net/sched/act_gate.c", i32 153, i32 32}
!41 = !{ptr @fill_gate_entry.__msg, !42, !"__msg", i1 false, i1 false}
!42 = !{!"../net/sched/act_gate.c", i32 184, i32 3}
!43 = !{ptr @gate_net_ops, !44, !"gate_net_ops", i1 false, i1 false}
!44 = !{!"../net/sched/act_gate.c", i32 676, i32 33}
!45 = !{ptr @tc_action_net_init.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../include/net/act_api.h", i32 156, i32 2}
!47 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @xa_init_flags.__key, !49, !"__key", i1 false, i1 false}
!49 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!50 = !{ptr @.str.10, !49, !"<string literal>", i1 false, i1 false}
!51 = !{!"sp"}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"branch_weights", i32 1, i32 2000}
!62 = !{i64 2149878778}
!63 = !{i64 2149883710}
!64 = !{i64 2149905422}
!65 = !{i64 2149910314}
!66 = !{!"branch_weights", i32 2000, i32 1}
!67 = !{i64 2149986771}
!68 = !{i64 2149987096}
!69 = !{!"auto-init"}
!70 = !{i64 2149370779}
!71 = !{i64 2149371045}
