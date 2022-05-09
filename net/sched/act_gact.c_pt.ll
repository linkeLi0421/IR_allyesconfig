; ModuleID = '/llk/IR_all_yes/net/sched/act_gact.c_pt.bc'
source_filename = "../net/sched/act_gact.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tc_action_ops = type { %struct.list_head, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.104 }
%union.anon.104 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.tcf_gact = type { %struct.tc_action, i16, i16, i32, %struct.atomic_t }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tc_gact = type { i32, i32, i32, i32, i32 }
%struct.tc_gact_p = type { i16, i16, i32 }
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
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.127, ptr }
%union.anon.127 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, i64, i64, i64, i32 }
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

@__UNIQUE_ID_author374 = internal constant [41 x i8] c"act_gact.author=Jamal Hadi Salim(2002-4)\00", section ".modinfo", align 1
@__UNIQUE_ID_description375 = internal constant [48 x i8] c"act_gact.description=Generic Classifier actions\00", section ".modinfo", align 1
@__UNIQUE_ID_file376 = internal constant [33 x i8] c"act_gact.file=net/sched/act_gact\00", section ".modinfo", align 1
@__UNIQUE_ID_license377 = internal constant [21 x i8] c"act_gact.license=GPL\00", section ".modinfo", align 1
@act_gact_ops = internal global { %struct.tc_action_ops, [48 x i8] } { %struct.tc_action_ops { %struct.list_head zeroinitializer, [16 x i8] c"gact\00\00\00\00\00\00\00\00\00\00\00\00", i32 5, i32 288, ptr null, ptr @tcf_gact_act, ptr @tcf_gact_dump, ptr null, ptr @tcf_gact_search, ptr @tcf_gact_init, ptr @tcf_gact_walker, ptr @tcf_gact_stats_update, ptr @tcf_gact_get_fill_size, ptr null, ptr null, ptr @tcf_gact_offload_act_setup }, [48 x i8] zeroinitializer }, align 32
@gact_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @gact_init_net, ptr null, ptr null, ptr @gact_exit_net, ptr @gact_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_act_gact__378_346_gact_init_module6 = internal global ptr @gact_init_module, section ".initcall6.init", align 4
@__exitcall_gact_cleanup_module = internal global ptr @gact_cleanup_module, section ".exitcall.exit", align 4
@gact_rand = internal constant { [3 x ptr], [20 x i8] } { [3 x ptr] [ptr null, ptr @gact_net_rand, ptr @gact_determ], [20 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@gact_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@gact_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 20, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.104 zeroinitializer }, %struct.nla_policy zeroinitializer], [56 x i8] zeroinitializer }, align 32
@tcf_gact_init.__msg = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"goto chain not allowed on fallback\00", [61 x i8] zeroinitializer }, align 32
@tc_action_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tn->idrinfo->lock\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@gact_init_module._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.11, i32 333, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\016GACT probability on\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"gact_init_module\00", [47 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/sched/act_gact.c\00", [43 x i8] zeroinitializer }, align 32
@gact_init_module._entry_ptr = internal global ptr @gact_init_module._entry, section ".printk_index", align 4
@___asan_gen_.12 = private unnamed_addr constant [13 x i8] c"act_gact_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 292, i32 29 }
@___asan_gen_.15 = private unnamed_addr constant [13 x i8] c"gact_net_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 319, i32 33 }
@___asan_gen_.18 = private unnamed_addr constant [10 x i8] c"gact_rand\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 45, i32 15 }
@___asan_gen_.22 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 271, i32 2 }
@___asan_gen_.25 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 991, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant [12 x i8] c"gact_net_id\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 22, i32 21 }
@___asan_gen_.34 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 45, i32 7 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 695, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 723, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [12 x i8] c"gact_policy\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 48, i32 32 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 93, i32 4 }
@___asan_gen_.55 = private unnamed_addr constant [25 x i8] c"../include/net/act_api.h\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 156, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.61 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.61, i32 378, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [24 x i8] c"../net/sched/act_gact.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 333, i32 2 }
@llvm.compiler.used = appending global [29 x ptr] [ptr @__UNIQUE_ID_author374, ptr @__UNIQUE_ID_description375, ptr @__UNIQUE_ID_file376, ptr @__UNIQUE_ID_license377, ptr @__exitcall_gact_cleanup_module, ptr @__initcall__kmod_act_gact__378_346_gact_init_module6, ptr @gact_cleanup_module, ptr @gact_init_module._entry, ptr @gact_init_module._entry_ptr, ptr @act_gact_ops, ptr @gact_net_ops, ptr @gact_rand, ptr @.str, ptr @.str.1, ptr @gact_net_id, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @gact_policy, ptr @tcf_gact_init.__msg, ptr @tc_action_net_init.__key, ptr @.str.7, ptr @xa_init_flags.__key, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_gact_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gact_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gact_rand to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gact_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gact_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_gact_init.__msg to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_action_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gact_init_module._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @gact_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_gact_ops, ptr noundef nonnull @gact_net_ops) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_unregister_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @gact_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #16
  %call1 = tail call i32 @tcf_register_action(ptr noundef nonnull @act_gact_ops, ptr noundef nonnull @gact_net_ops) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_gact_act(ptr nocapture noundef readonly %skb, ptr noundef %a, ptr nocapture noundef readnone %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %0 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tcfa_action, align 8
  %tcfg_ptype = getelementptr inbounds %struct.tcf_gact, ptr %a, i32 0, i32 1
  %2 = ptrtoint ptr %tcfg_ptype to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load volatile i16, ptr %tcfg_ptype, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %conv = zext i16 %3 to i32
  %arrayidx = getelementptr [3 x ptr], ptr @gact_rand, i32 0, i32 %conv
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 %5(ptr noundef %a) #13
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %action.0 = phi i32 [ %call, %if.then ], [ %1, %entry.if.end_crit_edge ]
  %cpu_bstats.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 13
  %6 = ptrtoint ptr %cpu_bstats.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cpu_bstats.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %do.body.i, !prof !61

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %8 = ptrtoint ptr %7 to i32
  %9 = tail call i32 @llvm.read_register.i32(metadata !51) #13
  %and.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %12
  %13 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %14, %8
  %15 = inttoptr i32 %add.i to ptr
  tail call fastcc void @bstats_update(ptr noundef %15, ptr noundef %skb) #13
  br label %tcf_action_update_bstats.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %tcfa_lock.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %tcfa_lock.i) #13
  %tcfa_bstats.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8
  tail call fastcc void @bstats_update(ptr noundef %tcfa_bstats.i, ptr noundef %skb) #13
  tail call void @_raw_spin_unlock(ptr noundef %tcfa_lock.i) #13
  br label %tcf_action_update_bstats.exit

tcf_action_update_bstats.exit:                    ; preds = %if.end.i, %do.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %action.0)
  %cmp = icmp eq i32 %action.0, 2
  br i1 %cmp, label %if.then7, label %tcf_action_update_bstats.exit.if.end9_crit_edge

tcf_action_update_bstats.exit.if.end9_crit_edge:  ; preds = %tcf_action_update_bstats.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end9

if.then7:                                         ; preds = %tcf_action_update_bstats.exit
  %cpu_qstats.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 15
  %16 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cpu_qstats.i, align 4
  %tobool.not.i18 = icmp eq ptr %17, null
  br i1 %tobool.not.i18, label %if.end.i25, label %do.body.i23, !prof !61

do.body.i23:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %17 to i32
  %19 = tail call i32 @llvm.read_register.i32(metadata !51) #13
  %and.i.i19 = and i32 %19, -16384
  %20 = inttoptr i32 %and.i.i19 to ptr
  %cpu.i20 = getelementptr inbounds %struct.thread_info, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %cpu.i20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cpu.i20, align 4
  %arrayidx.i21 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %22
  %23 = ptrtoint ptr %arrayidx.i21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx.i21, align 4
  %add.i22 = add i32 %24, %18
  %25 = inttoptr i32 %add.i22 to ptr
  %drops.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %25, i32 0, i32 2
  %26 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %27, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %if.end9

if.end.i25:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  %tcfa_lock.i24 = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %tcfa_lock.i24) #13
  %drops.i10.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 10, i32 2
  %28 = ptrtoint ptr %drops.i10.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %drops.i10.i, align 4
  %inc.i11.i = add i32 %29, 1
  store i32 %inc.i11.i, ptr %drops.i10.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tcfa_lock.i24) #13
  br label %if.end9

if.end9:                                          ; preds = %if.end.i25, %do.body.i23, %tcf_action_update_bstats.exit.if.end9_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %31 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %31)
  %32 = load i64, ptr %lastuse.i, align 8
  %conv.i = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %32, i64 %conv.i)
  %cmp.not.i = icmp eq i64 %32, %conv.i
  br i1 %cmp.not.i, label %if.end9.if.end.i27_crit_edge, label %if.then.i

if.end9.if.end.i27_crit_edge:                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i27

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  %33 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store8_noabort(i32 %33)
  store i64 %conv.i, ptr %lastuse.i, align 8
  br label %if.end.i27

if.end.i27:                                       ; preds = %if.then.i, %if.end9.if.end.i27_crit_edge
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %34 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %34)
  %35 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %35)
  %tobool.not.i26 = icmp eq i64 %35, 0
  br i1 %tobool.not.i26, label %if.then7.i, label %if.end.i27.tcf_lastuse_update.exit_crit_edge, !prof !61

if.end.i27.tcf_lastuse_update.exit_crit_edge:     ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcf_lastuse_update.exit

if.then7.i:                                       ; preds = %if.end.i27
  call void @__sanitizer_cov_trace_pc() #15
  %36 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 %conv.i, ptr %firstuse.i, align 8
  br label %tcf_lastuse_update.exit

tcf_lastuse_update.exit:                          ; preds = %if.then7.i, %if.end.i27.tcf_lastuse_update.exit_crit_edge
  ret i32 %action.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_gact_dump(ptr noundef %skb, ptr noundef %a, i32 noundef %bind, i32 noundef %ref) #2 align 64 {
entry:
  %opt = alloca %struct.tc_gact, align 4
  %t = alloca %struct.tcf_t, align 8
  %p_opt = alloca %struct.tc_gact_p, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %opt) #13
  %2 = getelementptr inbounds %struct.tc_gact, ptr %opt, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tc_gact, ptr %opt, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tc_gact, ptr %opt, i32 0, i32 3
  %5 = getelementptr inbounds %struct.tc_gact, ptr %opt, i32 0, i32 4
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
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_refcnt, i32 noundef 4) #13
  %10 = ptrtoint ptr %tcfa_refcnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %tcfa_refcnt, align 4
  %sub = sub i32 %11, %ref
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %4, align 4
  %tcfa_bindcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_bindcnt, i32 noundef 4) #13
  %13 = ptrtoint ptr %tcfa_bindcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %tcfa_bindcnt, align 4
  %sub5 = sub i32 %14, %bind
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub5, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #13
  %16 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 1
  %17 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 2
  %18 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 3
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  %19 = call ptr @memset(ptr %t, i32 255, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #13
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %20 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tcfa_action, align 8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %3, align 4
  %call9 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 20, ptr noundef nonnull %opt) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %tcfg_ptype = getelementptr inbounds %struct.tcf_gact, ptr %a, i32 0, i32 1
  %23 = ptrtoint ptr %tcfg_ptype to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %tcfg_ptype, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool10.not = icmp eq i16 %24, 0
  br i1 %tobool10.not, label %if.end.if.end17_crit_edge, label %if.then11

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then11:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %p_opt) #13
  %25 = getelementptr inbounds %struct.tc_gact_p, ptr %p_opt, i32 0, i32 1
  %26 = getelementptr inbounds %struct.tc_gact_p, ptr %p_opt, i32 0, i32 2
  %27 = ptrtoint ptr %p_opt to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 %24, ptr %p_opt, align 4
  %tcfg_pval = getelementptr inbounds %struct.tcf_gact, ptr %a, i32 0, i32 2
  %28 = ptrtoint ptr %tcfg_pval to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %tcfg_pval, align 2
  %30 = ptrtoint ptr %25 to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %25, align 2
  %tcfg_paction = getelementptr inbounds %struct.tcf_gact, ptr %a, i32 0, i32 3
  %31 = ptrtoint ptr %tcfg_paction to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tcfg_paction, align 4
  %33 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %26, align 4
  %call13 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 8, ptr noundef nonnull %p_opt) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %p_opt) #13
  br i1 %tobool14.not, label %if.then11.if.end17_crit_edge, label %if.then11.nla_put_failure_crit_edge

if.then11.nla_put_failure_crit_edge:              ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_put_failure

if.then11.if.end17_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.end17:                                         ; preds = %if.then11.if.end17_crit_edge, %if.end.if.end17_crit_edge
  %tcfa_tm = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %34 = load volatile i32, ptr @jiffies, align 128
  %35 = ptrtoint ptr %tcfa_tm to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %tcfa_tm, align 8
  %37 = trunc i64 %36 to i32
  %conv1.i = sub i32 %34, %37
  %call.i = call i32 @jiffies_to_clock_t(i32 noundef %conv1.i) #13
  %conv2.i = sext i32 %call.i to i64
  %38 = ptrtoint ptr %t to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 %conv2.i, ptr %t, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %39 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %40)
  %41 = load i64, ptr %lastuse.i, align 8
  %42 = trunc i64 %41 to i32
  %conv6.i = sub i32 %39, %42
  %call7.i = call i32 @jiffies_to_clock_t(i32 noundef %conv6.i) #13
  %conv8.i = sext i32 %call7.i to i64
  %43 = ptrtoint ptr %16 to i32
  call void @__asan_store8_noabort(i32 %43)
  store i64 %conv8.i, ptr %16, align 8
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %44 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %44)
  %45 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %45)
  %tobool.not.i = icmp eq i64 %45, 0
  br i1 %tobool.not.i, label %if.end17.tcf_tm_dump.exit_crit_edge, label %cond.true.i

if.end17.tcf_tm_dump.exit_crit_edge:              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcf_tm_dump.exit

cond.true.i:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %46 = load volatile i32, ptr @jiffies, align 128
  %47 = trunc i64 %45 to i32
  %conv13.i = sub i32 %46, %47
  %call14.i = call i32 @jiffies_to_clock_t(i32 noundef %conv13.i) #13
  br label %tcf_tm_dump.exit

tcf_tm_dump.exit:                                 ; preds = %cond.true.i, %if.end17.tcf_tm_dump.exit_crit_edge
  %cond.i = phi i32 [ %call14.i, %cond.true.i ], [ 0, %if.end17.tcf_tm_dump.exit_crit_edge ]
  %conv15.i = sext i32 %cond.i to i64
  %48 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv15.i, ptr %18, align 8
  %expires.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 2
  %49 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %expires.i, align 8
  %conv17.i = trunc i64 %50 to i32
  %call18.i = call i32 @jiffies_to_clock_t(i32 noundef %conv17.i) #13
  %conv19.i = sext i32 %call18.i to i64
  %51 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %51)
  store i64 %conv19.i, ptr %17, align 8
  %call19 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 32, ptr noundef nonnull %t, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %tcf_tm_dump.exit.nla_put_failure_crit_edge

tcf_tm_dump.exit.nla_put_failure_crit_edge:       ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %nla_put_failure

if.end22:                                         ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #13
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len, align 4
  br label %cleanup27

nla_put_failure:                                  ; preds = %tcf_tm_dump.exit.nla_put_failure_crit_edge, %if.then11.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #13
  %tobool.not.i47 = icmp eq ptr %1, null
  br i1 %tobool.not.i47, label %nla_put_failure.cleanup27_crit_edge, label %if.then.i

nla_put_failure.cleanup27_crit_edge:              ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup27

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %55, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !61

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 991, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #13
  br label %cleanup27

cleanup27:                                        ; preds = %if.end.i, %nla_put_failure.cleanup27_crit_edge, %if.end22
  %retval.0 = phi i32 [ %53, %if.end22 ], [ -1, %nla_put_failure.cleanup27_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %opt) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_gact_search(ptr noundef %net, ptr noundef %a, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gact_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_idr_search(ptr noundef %call, ptr noundef %a, i32 noundef %index) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_gact_init(ptr noundef %net, ptr noundef %nla, ptr noundef %est, ptr noundef %a, ptr noundef %tp, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [5 x ptr], align 4
  %goto_ch = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gact_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %and = and i32 %flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb) #13
  %1 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [5 x ptr], ptr %tb, i32 0, i32 3
  %3 = call ptr @memset(ptr %tb, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goto_ch) #13
  %4 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %goto_ch, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #13
  %cmp = icmp eq ptr %nla, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %5 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %6 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 4, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @gact_policy, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp2 = icmp slt i32 %call2.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %cmp5 = icmp eq ptr %8, null
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %add.ptr.i = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i, align 4
  %11 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %index, align 4
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %2, align 4
  %tobool12.not = icmp eq ptr %13, null
  br i1 %tobool12.not, label %if.end7.if.end28_crit_edge, label %if.then13

if.end7.if.end28_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

if.then13:                                        ; preds = %if.end7
  %add.ptr.i135 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i135 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i135, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %15)
  %cmp16 = icmp ugt i16 %15, 2
  br i1 %cmp16, label %if.then13.cleanup_crit_edge, label %if.end19

if.then13.cleanup_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end19:                                         ; preds = %if.then13
  %paction = getelementptr i8, ptr %13, i32 8
  %16 = ptrtoint ptr %paction to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %paction, align 4
  %and20 = and i32 %17, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %and20)
  %cmp21 = icmp eq i32 %and20, 536870912
  br i1 %cmp21, label %do.body, label %if.end19.if.end28_crit_edge

if.end19.if.end28_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

do.body:                                          ; preds = %if.end19
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_gact_init.__msg) #13
  %tobool24.not = icmp eq ptr %extack, null
  br i1 %tobool24.not, label %do.body.cleanup_crit_edge, label %if.then25

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then25:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @tcf_gact_init.__msg, ptr %extack, align 4
  br label %cleanup

if.end28:                                         ; preds = %if.end19.if.end28_crit_edge, %if.end7.if.end28_crit_edge
  %p_parm.0 = phi ptr [ %add.ptr.i135, %if.end19.if.end28_crit_edge ], [ null, %if.end7.if.end28_crit_edge ]
  %and.lobit = lshr exact i32 %and, 17
  %call31 = call i32 @tcf_idr_check_alloc(ptr noundef %call, ptr noundef nonnull %index, ptr noundef %a, i32 noundef %and.lobit) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %if.then33, label %if.else

if.then33:                                        ; preds = %if.end28
  %19 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %index, align 4
  %call36 = call i32 @tcf_idr_create_from_flags(ptr noundef %call, i32 noundef %20, ptr noundef %est, ptr noundef %a, ptr noundef nonnull @act_gact_ops, i32 noundef %and.lobit, i32 noundef %flags) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.then33.if.end54_crit_edge, label %if.then38

if.then33.if.end54_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then38:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %22) #13
  br label %cleanup

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call31)
  %cmp40 = icmp slt i32 %call31, 1
  %brmerge = or i1 %tobool, %cmp40
  %call31.mux = select i1 %cmp40, i32 %call31, i32 0
  br i1 %brmerge, label %if.else.cleanup_crit_edge, label %if.end45

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end45:                                         ; preds = %if.else
  %and46 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46)
  %tobool47.not = icmp eq i32 %and46, 0
  br i1 %tobool47.not, label %if.then48, label %if.end45.if.end54_crit_edge

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end54

if.then48:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %23 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %a, align 4
  %call50 = call i32 @tcf_idr_release(ptr noundef %24, i1 noundef zeroext false) #13
  br label %cleanup

if.end54:                                         ; preds = %if.end45.if.end54_crit_edge, %if.then33.if.end54_crit_edge
  %ret.0 = phi i32 [ 0, %if.end45.if.end54_crit_edge ], [ 1, %if.then33.if.end54_crit_edge ]
  %action = getelementptr i8, ptr %8, i32 12
  %25 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %action, align 4
  %call55 = call i32 @tcf_action_check_ctrlact(i32 noundef %26, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %cmp56 = icmp slt i32 %call55, 0
  %27 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %a, align 4
  br i1 %cmp56, label %release_idr, label %if.end59

if.end59:                                         ; preds = %if.end54
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %28, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #13
  %29 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %a, align 4
  %31 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %action, align 4
  %33 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %goto_ch, align 4
  %call61 = call ptr @tcf_action_set_ctrlact(ptr noundef %30, i32 noundef %32, ptr noundef %34) #13
  %35 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call61, ptr %goto_ch, align 4
  %tobool62.not = icmp eq ptr %p_parm.0, null
  br i1 %tobool62.not, label %if.end59.if.end79_crit_edge, label %if.then63

if.end59.if.end79_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #15
  %paction64 = getelementptr inbounds %struct.tc_gact_p, ptr %p_parm.0, i32 0, i32 2
  %36 = ptrtoint ptr %paction64 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %paction64, align 4
  %tcfg_paction = getelementptr inbounds %struct.tcf_gact, ptr %28, i32 0, i32 3
  %38 = ptrtoint ptr %tcfg_paction to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tcfg_paction, align 4
  %pval = getelementptr inbounds %struct.tc_gact_p, ptr %p_parm.0, i32 0, i32 1
  %39 = ptrtoint ptr %pval to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %pval, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %40)
  %cmp67 = icmp eq i16 %40, 0
  %. = select i1 %cmp67, i16 1, i16 %40
  %tcfg_pval = getelementptr inbounds %struct.tcf_gact, ptr %28, i32 0, i32 2
  %41 = ptrtoint ptr %tcfg_pval to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %., ptr %tcfg_pval, align 2
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !62
  %42 = ptrtoint ptr %p_parm.0 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %p_parm.0, align 4
  %tcfg_ptype = getelementptr inbounds %struct.tcf_gact, ptr %28, i32 0, i32 1
  %44 = ptrtoint ptr %tcfg_ptype to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %tcfg_ptype, align 16
  br label %if.end79

if.end79:                                         ; preds = %if.then63, %if.end59.if.end79_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #13
  %45 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %goto_ch, align 4
  %tobool82.not = icmp eq ptr %46, null
  br i1 %tobool82.not, label %if.end79.cleanup_crit_edge, label %if.then83

if.end79.cleanup_crit_edge:                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then83:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #15
  call void @tcf_chain_put_by_act(ptr noundef nonnull %46) #13
  br label %cleanup

release_idr:                                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #15
  %call86 = call i32 @tcf_idr_release(ptr noundef %28, i1 noundef zeroext %tobool) #13
  br label %cleanup

cleanup:                                          ; preds = %release_idr, %if.then83, %if.end79.cleanup_crit_edge, %if.then48, %if.else.cleanup_crit_edge, %if.then38, %if.then25, %do.body.cleanup_crit_edge, %if.then13.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call55, %release_idr ], [ -17, %if.then48 ], [ %call36, %if.then38 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.then13.cleanup_crit_edge ], [ -22, %if.then25 ], [ -22, %do.body.cleanup_crit_edge ], [ %call31.mux, %if.else.cleanup_crit_edge ], [ %ret.0, %if.then83 ], [ %ret.0, %if.end79.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goto_ch) #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_gact_walker(ptr noundef %net, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gact_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_generic_walker(ptr noundef %call, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #13
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_gact_stats_update(ptr noundef %a, i64 noundef %bytes, i64 noundef %packets, i64 noundef %drops, i64 noundef %lastuse, i1 noundef zeroext %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %0 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %tcfa_action, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %packets.drops = select i1 %cmp, i64 %packets, i64 %drops
  tail call void @tcf_action_update_stats(ptr noundef %a, i64 noundef %bytes, i64 noundef %packets, i64 noundef %packets.drops, i1 noundef zeroext %hw) #13
  %lastuse2 = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %2 = ptrtoint ptr %lastuse2 to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %lastuse2, align 8
  %4 = tail call i64 @llvm.umax.i64(i64 %3, i64 %lastuse)
  %5 = ptrtoint ptr %lastuse2 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %4, ptr %lastuse2, align 8
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcf_gact_get_fill_size(ptr nocapture noundef readonly %act) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tcfg_ptype = getelementptr inbounds %struct.tcf_gact, ptr %act, i32 0, i32 1
  %0 = ptrtoint ptr %tcfg_ptype to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tcfg_ptype, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %1)
  %tobool.not = icmp eq i16 %1, 0
  %spec.select = select i1 %tobool.not, i32 24, i32 36
  ret i32 %spec.select
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcf_gact_offload_act_setup(ptr noundef %act, ptr nocapture noundef writeonly %entry_data, ptr nocapture noundef writeonly %index_inc, i1 noundef zeroext %bind) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %act, align 16
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %bind, label %if.then, label %if.else19

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i.i, label %is_tcf_gact_ok.exit, label %land.lhs.true.i.i

land.lhs.true.i.i:                                ; preds = %if.then
  %id.i.i = getelementptr inbounds %struct.tc_action_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %3)
  %cmp.not.i.i = icmp eq i32 %3, 5
  br i1 %cmp.not.i.i, label %is_tcf_gact_ok.exit.thread123, label %land.lhs.true.i.i.return_crit_edge

land.lhs.true.i.i.return_crit_edge:               ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

is_tcf_gact_ok.exit:                              ; preds = %if.then
  %tcfa_action8.i.i = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 6
  %4 = ptrtoint ptr %tcfa_action8.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tcfa_action8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp4.i.i = icmp eq i32 %5, 0
  br i1 %cmp4.i.i, label %is_tcf_gact_ok.exit.if.then2_crit_edge, label %is_tcf_gact_shot.exit

is_tcf_gact_ok.exit.if.then2_crit_edge:           ; preds = %is_tcf_gact_ok.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2

is_tcf_gact_ok.exit.thread123:                    ; preds = %land.lhs.true.i.i
  %tcfa_action8.i.i124 = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 6
  %6 = ptrtoint ptr %tcfa_action8.i.i124 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tcfa_action8.i.i124, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp4.i.i125 = icmp eq i32 %7, 0
  br i1 %cmp4.i.i125, label %is_tcf_gact_ok.exit.thread123.if.then2_crit_edge, label %land.lhs.true.i.i65

is_tcf_gact_ok.exit.thread123.if.then2_crit_edge: ; preds = %is_tcf_gact_ok.exit.thread123
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then2

if.then2:                                         ; preds = %is_tcf_gact_ok.exit.thread123.if.then2_crit_edge, %is_tcf_gact_ok.exit.if.then2_crit_edge
  %8 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %entry_data, align 8
  br label %cleanup

land.lhs.true.i.i65:                              ; preds = %is_tcf_gact_ok.exit.thread123
  %9 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %.pr = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.pr)
  %cmp.not.i.i64 = icmp eq i32 %.pr, 5
  br i1 %cmp.not.i.i64, label %is_tcf_gact_shot.exit.thread128, label %land.lhs.true.i.i65.return_crit_edge

land.lhs.true.i.i65.return_crit_edge:             ; preds = %land.lhs.true.i.i65
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

is_tcf_gact_shot.exit:                            ; preds = %is_tcf_gact_ok.exit
  %10 = ptrtoint ptr %tcfa_action8.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %tcfa_action8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp4.i.i67 = icmp eq i32 %11, 2
  br i1 %cmp4.i.i67, label %is_tcf_gact_shot.exit.if.then4_crit_edge, label %is_tcf_gact_trap.exit

is_tcf_gact_shot.exit.if.then4_crit_edge:         ; preds = %is_tcf_gact_shot.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

is_tcf_gact_shot.exit.thread128:                  ; preds = %land.lhs.true.i.i65
  %tcfa_action8.i.i66129 = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 6
  %12 = ptrtoint ptr %tcfa_action8.i.i66129 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tcfa_action8.i.i66129, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp4.i.i67130 = icmp eq i32 %13, 2
  br i1 %cmp4.i.i67130, label %is_tcf_gact_shot.exit.thread128.if.then4_crit_edge, label %land.lhs.true.i.i73

is_tcf_gact_shot.exit.thread128.if.then4_crit_edge: ; preds = %is_tcf_gact_shot.exit.thread128
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then4

if.then4:                                         ; preds = %is_tcf_gact_shot.exit.thread128.if.then4_crit_edge, %is_tcf_gact_shot.exit.if.then4_crit_edge
  %14 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %entry_data, align 8
  br label %cleanup

land.lhs.true.i.i73:                              ; preds = %is_tcf_gact_shot.exit.thread128
  %15 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr159 = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.pr159)
  %cmp.not.i.i72 = icmp eq i32 %.pr159, 5
  br i1 %cmp.not.i.i72, label %is_tcf_gact_trap.exit.thread133, label %land.lhs.true.i.i73.return_crit_edge

land.lhs.true.i.i73.return_crit_edge:             ; preds = %land.lhs.true.i.i73
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

is_tcf_gact_trap.exit:                            ; preds = %is_tcf_gact_shot.exit
  %16 = ptrtoint ptr %tcfa_action8.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %tcfa_action8.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %17)
  %cmp4.i.i75 = icmp eq i32 %17, 8
  br i1 %cmp4.i.i75, label %is_tcf_gact_trap.exit.if.then8_crit_edge, label %is_tcf_gact_trap.exit.is_tcf_gact_goto_chain.exit_crit_edge

is_tcf_gact_trap.exit.is_tcf_gact_goto_chain.exit_crit_edge: ; preds = %is_tcf_gact_trap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_tcf_gact_goto_chain.exit

is_tcf_gact_trap.exit.if.then8_crit_edge:         ; preds = %is_tcf_gact_trap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

is_tcf_gact_trap.exit.thread133:                  ; preds = %land.lhs.true.i.i73
  %tcfa_action8.i.i74134 = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 6
  %18 = ptrtoint ptr %tcfa_action8.i.i74134 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tcfa_action8.i.i74134, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %19)
  %cmp4.i.i75135 = icmp eq i32 %19, 8
  br i1 %cmp4.i.i75135, label %is_tcf_gact_trap.exit.thread133.if.then8_crit_edge, label %land.lhs.true.i.i81

is_tcf_gact_trap.exit.thread133.if.then8_crit_edge: ; preds = %is_tcf_gact_trap.exit.thread133
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then8

if.then8:                                         ; preds = %is_tcf_gact_trap.exit.thread133.if.then8_crit_edge, %is_tcf_gact_trap.exit.if.then8_crit_edge
  %20 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %entry_data, align 8
  br label %cleanup

land.lhs.true.i.i81:                              ; preds = %is_tcf_gact_trap.exit.thread133
  %21 = ptrtoint ptr %id.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr161.pr = load i32, ptr %id.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.pr161.pr)
  %cmp.not.i.i80 = icmp eq i32 %.pr161.pr, 5
  br i1 %cmp.not.i.i80, label %land.lhs.true.i.i81.is_tcf_gact_goto_chain.exit_crit_edge, label %land.lhs.true.i.i81.return_crit_edge

land.lhs.true.i.i81.return_crit_edge:             ; preds = %land.lhs.true.i.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true.i.i81.is_tcf_gact_goto_chain.exit_crit_edge: ; preds = %land.lhs.true.i.i81
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_tcf_gact_goto_chain.exit

is_tcf_gact_goto_chain.exit:                      ; preds = %land.lhs.true.i.i81.is_tcf_gact_goto_chain.exit_crit_edge, %is_tcf_gact_trap.exit.is_tcf_gact_goto_chain.exit_crit_edge
  %tcfa_action8.i.i82 = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 6
  %22 = ptrtoint ptr %tcfa_action8.i.i82 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tcfa_action8.i.i82, align 8
  %and.i.i = and i32 %23, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %and.i.i)
  %cmp9.i.i = icmp eq i32 %and.i.i, 536870912
  br i1 %cmp9.i.i, label %if.then12, label %is_tcf_gact_goto_chain.exit.return_crit_edge

is_tcf_gact_goto_chain.exit.return_crit_edge:     ; preds = %is_tcf_gact_goto_chain.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then12:                                        ; preds = %is_tcf_gact_goto_chain.exit
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 3, ptr %entry_data, align 8
  %25 = ptrtoint ptr %tcfa_action8.i.i82 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile i32, ptr %tcfa_action8.i.i82, align 8
  %and.i = and i32 %26, 268435455
  %27 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %and.i, ptr %27, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.then8, %if.then4, %if.then2
  %29 = ptrtoint ptr %index_inc to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %index_inc, align 4
  br label %return

if.else19:                                        ; preds = %entry
  br i1 %tobool.not.i.i, label %is_tcf_gact_ok.exit93, label %land.lhs.true.i.i88

land.lhs.true.i.i88:                              ; preds = %if.else19
  %id.i.i86 = getelementptr inbounds %struct.tc_action_ops, ptr %1, i32 0, i32 2
  %30 = ptrtoint ptr %id.i.i86 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %id.i.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %31)
  %cmp.not.i.i87 = icmp eq i32 %31, 5
  br i1 %cmp.not.i.i87, label %is_tcf_gact_ok.exit93.thread141, label %land.lhs.true.i.i88.return_crit_edge

land.lhs.true.i.i88.return_crit_edge:             ; preds = %land.lhs.true.i.i88
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

is_tcf_gact_ok.exit93:                            ; preds = %if.else19
  %tcfa_action8.i.i89 = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 6
  %32 = ptrtoint ptr %tcfa_action8.i.i89 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %tcfa_action8.i.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp4.i.i90 = icmp eq i32 %33, 0
  br i1 %cmp4.i.i90, label %is_tcf_gact_ok.exit93.if.then21_crit_edge, label %is_tcf_gact_shot.exit102

is_tcf_gact_ok.exit93.if.then21_crit_edge:        ; preds = %is_tcf_gact_ok.exit93
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

is_tcf_gact_ok.exit93.thread141:                  ; preds = %land.lhs.true.i.i88
  %tcfa_action8.i.i89142 = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 6
  %34 = ptrtoint ptr %tcfa_action8.i.i89142 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tcfa_action8.i.i89142, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp4.i.i90143 = icmp eq i32 %35, 0
  br i1 %cmp4.i.i90143, label %is_tcf_gact_ok.exit93.thread141.if.then21_crit_edge, label %land.lhs.true.i.i97

is_tcf_gact_ok.exit93.thread141.if.then21_crit_edge: ; preds = %is_tcf_gact_ok.exit93.thread141
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then21

if.then21:                                        ; preds = %is_tcf_gact_ok.exit93.thread141.if.then21_crit_edge, %is_tcf_gact_ok.exit93.if.then21_crit_edge
  %id22 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %36 = ptrtoint ptr %id22 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %id22, align 8
  br label %return

land.lhs.true.i.i97:                              ; preds = %is_tcf_gact_ok.exit93.thread141
  %37 = ptrtoint ptr %id.i.i86 to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr163 = load i32, ptr %id.i.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.pr163)
  %cmp.not.i.i96 = icmp eq i32 %.pr163, 5
  br i1 %cmp.not.i.i96, label %is_tcf_gact_shot.exit102.thread146, label %land.lhs.true.i.i97.return_crit_edge

land.lhs.true.i.i97.return_crit_edge:             ; preds = %land.lhs.true.i.i97
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

is_tcf_gact_shot.exit102:                         ; preds = %is_tcf_gact_ok.exit93
  %38 = ptrtoint ptr %tcfa_action8.i.i89 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %tcfa_action8.i.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %39)
  %cmp4.i.i99 = icmp eq i32 %39, 2
  br i1 %cmp4.i.i99, label %is_tcf_gact_shot.exit102.if.then25_crit_edge, label %is_tcf_gact_trap.exit111

is_tcf_gact_shot.exit102.if.then25_crit_edge:     ; preds = %is_tcf_gact_shot.exit102
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

is_tcf_gact_shot.exit102.thread146:               ; preds = %land.lhs.true.i.i97
  %tcfa_action8.i.i98147 = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 6
  %40 = ptrtoint ptr %tcfa_action8.i.i98147 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %tcfa_action8.i.i98147, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %41)
  %cmp4.i.i99148 = icmp eq i32 %41, 2
  br i1 %cmp4.i.i99148, label %is_tcf_gact_shot.exit102.thread146.if.then25_crit_edge, label %land.lhs.true.i.i106

is_tcf_gact_shot.exit102.thread146.if.then25_crit_edge: ; preds = %is_tcf_gact_shot.exit102.thread146
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then25

if.then25:                                        ; preds = %is_tcf_gact_shot.exit102.thread146.if.then25_crit_edge, %is_tcf_gact_shot.exit102.if.then25_crit_edge
  %id26 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %42 = ptrtoint ptr %id26 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %id26, align 8
  br label %return

land.lhs.true.i.i106:                             ; preds = %is_tcf_gact_shot.exit102.thread146
  %43 = ptrtoint ptr %id.i.i86 to i32
  call void @__asan_load4_noabort(i32 %43)
  %.pr165 = load i32, ptr %id.i.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.pr165)
  %cmp.not.i.i105 = icmp eq i32 %.pr165, 5
  br i1 %cmp.not.i.i105, label %is_tcf_gact_trap.exit111.thread151, label %land.lhs.true.i.i106.return_crit_edge

land.lhs.true.i.i106.return_crit_edge:            ; preds = %land.lhs.true.i.i106
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

is_tcf_gact_trap.exit111:                         ; preds = %is_tcf_gact_shot.exit102
  %44 = ptrtoint ptr %tcfa_action8.i.i89 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tcfa_action8.i.i89, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %45)
  %cmp4.i.i108 = icmp eq i32 %45, 8
  br i1 %cmp4.i.i108, label %is_tcf_gact_trap.exit111.if.then29_crit_edge, label %is_tcf_gact_trap.exit111.is_tcf_gact_goto_chain.exit121_crit_edge

is_tcf_gact_trap.exit111.is_tcf_gact_goto_chain.exit121_crit_edge: ; preds = %is_tcf_gact_trap.exit111
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_tcf_gact_goto_chain.exit121

is_tcf_gact_trap.exit111.if.then29_crit_edge:     ; preds = %is_tcf_gact_trap.exit111
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then29

is_tcf_gact_trap.exit111.thread151:               ; preds = %land.lhs.true.i.i106
  %tcfa_action8.i.i107152 = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 6
  %46 = ptrtoint ptr %tcfa_action8.i.i107152 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %tcfa_action8.i.i107152, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %47)
  %cmp4.i.i108153 = icmp eq i32 %47, 8
  br i1 %cmp4.i.i108153, label %is_tcf_gact_trap.exit111.thread151.if.then29_crit_edge, label %land.lhs.true.i.i115

is_tcf_gact_trap.exit111.thread151.if.then29_crit_edge: ; preds = %is_tcf_gact_trap.exit111.thread151
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then29

if.then29:                                        ; preds = %is_tcf_gact_trap.exit111.thread151.if.then29_crit_edge, %is_tcf_gact_trap.exit111.if.then29_crit_edge
  %id30 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %48 = ptrtoint ptr %id30 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %id30, align 8
  br label %return

land.lhs.true.i.i115:                             ; preds = %is_tcf_gact_trap.exit111.thread151
  %49 = ptrtoint ptr %id.i.i86 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pr167.pr = load i32, ptr %id.i.i86, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %.pr167.pr)
  %cmp.not.i.i114 = icmp eq i32 %.pr167.pr, 5
  br i1 %cmp.not.i.i114, label %land.lhs.true.i.i115.is_tcf_gact_goto_chain.exit121_crit_edge, label %land.lhs.true.i.i115.return_crit_edge

land.lhs.true.i.i115.return_crit_edge:            ; preds = %land.lhs.true.i.i115
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

land.lhs.true.i.i115.is_tcf_gact_goto_chain.exit121_crit_edge: ; preds = %land.lhs.true.i.i115
  call void @__sanitizer_cov_trace_pc() #15
  br label %is_tcf_gact_goto_chain.exit121

is_tcf_gact_goto_chain.exit121:                   ; preds = %land.lhs.true.i.i115.is_tcf_gact_goto_chain.exit121_crit_edge, %is_tcf_gact_trap.exit111.is_tcf_gact_goto_chain.exit121_crit_edge
  %tcfa_action8.i.i116 = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 6
  %50 = ptrtoint ptr %tcfa_action8.i.i116 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %tcfa_action8.i.i116, align 8
  %and.i.i117 = and i32 %51, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 536870912, i32 %and.i.i117)
  %cmp9.i.i118 = icmp eq i32 %and.i.i117, 536870912
  br i1 %cmp9.i.i118, label %if.then33, label %is_tcf_gact_goto_chain.exit121.return_crit_edge

is_tcf_gact_goto_chain.exit121.return_crit_edge:  ; preds = %is_tcf_gact_goto_chain.exit121
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.then33:                                        ; preds = %is_tcf_gact_goto_chain.exit121
  call void @__sanitizer_cov_trace_pc() #15
  %id34 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %52 = ptrtoint ptr %id34 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 3, ptr %id34, align 8
  br label %return

return:                                           ; preds = %if.then33, %is_tcf_gact_goto_chain.exit121.return_crit_edge, %land.lhs.true.i.i115.return_crit_edge, %if.then29, %land.lhs.true.i.i106.return_crit_edge, %if.then25, %land.lhs.true.i.i97.return_crit_edge, %if.then21, %land.lhs.true.i.i88.return_crit_edge, %cleanup, %is_tcf_gact_goto_chain.exit.return_crit_edge, %land.lhs.true.i.i81.return_crit_edge, %land.lhs.true.i.i73.return_crit_edge, %land.lhs.true.i.i65.return_crit_edge, %land.lhs.true.i.i.return_crit_edge
  %retval.2 = phi i32 [ -95, %is_tcf_gact_goto_chain.exit121.return_crit_edge ], [ 0, %cleanup ], [ -95, %is_tcf_gact_goto_chain.exit.return_crit_edge ], [ -95, %land.lhs.true.i.i81.return_crit_edge ], [ -95, %land.lhs.true.i.i115.return_crit_edge ], [ 0, %if.then25 ], [ 0, %if.then33 ], [ 0, %if.then29 ], [ 0, %if.then21 ], [ -95, %land.lhs.true.i.i73.return_crit_edge ], [ -95, %land.lhs.true.i.i106.return_crit_edge ], [ -95, %land.lhs.true.i.i.return_crit_edge ], [ -95, %land.lhs.true.i.i65.return_crit_edge ], [ -95, %land.lhs.true.i.i88.return_crit_edge ], [ -95, %land.lhs.true.i.i97.return_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gact_net_rand(ptr nocapture noundef readonly %gact) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !63
  %call = tail call i32 @prandom_u32() #13
  %tcfg_pval = getelementptr inbounds %struct.tcf_gact, ptr %gact, i32 0, i32 2
  %0 = ptrtoint ptr %tcfg_pval to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %tcfg_pval, align 2
  %conv = zext i16 %1 to i32
  %rem = urem i32 %call, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %gact, i32 0, i32 6
  %tcfg_paction = getelementptr inbounds %struct.tcf_gact, ptr %gact, i32 0, i32 3
  %retval.0.in = select i1 %tobool.not, ptr %tcfg_paction, ptr %tcfa_action
  %2 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gact_determ(ptr noundef %gact) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %packets = getelementptr inbounds %struct.tcf_gact, ptr %gact, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %packets, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !64
  tail call void @llvm.prefetch.p0(ptr %packets, i32 1, i32 3, i32 1) #13
  %0 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %packets, ptr %packets, i32 1, ptr elementtype(i32) %packets) #13, !srcloc !65
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %0, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !67
  %tcfg_pval = getelementptr inbounds %struct.tcf_gact, ptr %gact, i32 0, i32 2
  %1 = ptrtoint ptr %tcfg_pval to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %tcfg_pval, align 2
  %conv = zext i16 %2 to i32
  %rem = urem i32 %asmresult.i.i.i.i, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %gact, i32 0, i32 6
  %tcfg_paction = getelementptr inbounds %struct.tcf_gact, ptr %gact, i32 0, i32 3
  %retval.0.in = select i1 %tobool.not, ptr %tcfg_paction, ptr %tcfa_action
  %3 = ptrtoint ptr %retval.0.in to i32
  call void @__asan_load4_noabort(i32 %3)
  %retval.0 = load i32, ptr %retval.0.in, align 4
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bstats_update(ptr noundef %bstats, ptr nocapture noundef readonly %skb) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %_bstats_update.exit

land.lhs.true.i.i.i:                              ; preds = %cond.end
  %9 = tail call i32 @llvm.read_register.i32(metadata !51) #13
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !68
  %13 = tail call i32 @llvm.read_register.i32(metadata !51) #13
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !69
  %22 = tail call i32 @llvm.read_register.i32(metadata !51) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %_bstats_update.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !51) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %_bstats_update.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !51) #13
  %and.i.i.i9.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %33, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !70
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
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !71
  %41 = tail call i32 @llvm.read_register.i32(metadata !51) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %_bstats_update.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i._bstats_update.exit_crit_edge, label %if.then.i.i.i, !prof !72

land.rhs58.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %_bstats_update.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 271, i32 noundef 9, ptr noundef null) #13
  br label %_bstats_update.exit

_bstats_update.exit:                              ; preds = %if.then.i.i.i, %land.rhs58.i.i.i._bstats_update.exit_crit_edge, %land.rhs22.i.i.i._bstats_update.exit_crit_edge, %land.rhs.i.i.i._bstats_update.exit_crit_edge, %land.lhs.true.i.i.i._bstats_update.exit_crit_edge, %cond.end._bstats_update.exit_crit_edge
  %conv = zext i32 %1 to i64
  %syncp.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2
  %45 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !73
  %dep_map.i.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2, i32 0, i32 1
  %47 = tail call ptr @llvm.returnaddress(i32 0) #13
  %48 = ptrtoint ptr %47 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %48) #13
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
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %48) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !74
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
declare ptr @llvm.returnaddress(i32 immarg) #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = tail call i32 @llvm.read_register.i32(metadata !51) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !75
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 45, ptr noundef nonnull @.str.3) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !76
  %8 = tail call i32 @llvm.read_register.i32(metadata !51) #13
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #13
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_check_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_create_from_flags(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_action_update_stats(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gact_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gact_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 156) #17
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %call, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.tc_action_net_init.exit_crit_edge, label %if.end.i

entry.tc_action_net_init.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %tc_action_net_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %ops2.i = getelementptr inbounds %struct.tc_action_net, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @act_gact_ops, ptr %ops2.i, align 4
  %net4.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %net4.i, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.7, ptr noundef nonnull @tc_action_net_init.__key) #13
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %action_idr.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %action_idr.i, ptr noundef nonnull @.str.8, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #13
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
define internal void @gact_exit_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @gact_net_id, align 4
  tail call void @rtnl_lock() #13
  %1 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn12.i = load ptr, ptr %net_list, align 4
  %cmp.not13.i = icmp eq ptr %.pn12.i, %net_list
  br i1 %cmp.not13.i, label %entry.tc_action_net_exit.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.tc_action_net_exit.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %tc_action_net_exit.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn14.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn12.i, %entry.for.body.i_crit_edge ]
  %net.0.i = getelementptr i8, ptr %.pn14.i, i32 -116
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net.0.i, i32 noundef %0) #13
  %ops.i = getelementptr inbounds %struct.tc_action_net, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void @tcf_idrinfo_destroy(ptr noundef %3, ptr noundef %5) #13
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  tail call void @kfree(ptr noundef %7) #13
  %8 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %net_list
  br i1 %cmp.not.i, label %for.body.i.tc_action_net_exit.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.body.i.tc_action_net_exit.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tc_action_net_exit.exit

tc_action_net_exit.exit:                          ; preds = %for.body.i.tc_action_net_exit.exit_crit_edge, %entry.tc_action_net_exit.exit_crit_edge
  tail call void @rtnl_unlock() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_register_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #12

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #9 = { nounwind readonly }
attributes #10 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !18, !20, !22, !23, !24, !26, !27, !28, !30, !31, !33, !35, !37, !39, !41, !42, !44, !45, !47, !48, !49, !50}
!llvm.named.register.sp = !{!51}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @__UNIQUE_ID_author374, !1, !"__UNIQUE_ID_author374", i1 false, i1 false}
!1 = !{!"../net/sched/act_gact.c", i32 326, i32 1}
!2 = !{ptr @__UNIQUE_ID_description375, !3, !"__UNIQUE_ID_description375", i1 false, i1 false}
!3 = !{!"../net/sched/act_gact.c", i32 327, i32 1}
!4 = !{ptr @__UNIQUE_ID_file376, !5, !"__UNIQUE_ID_file376", i1 false, i1 false}
!5 = !{!"../net/sched/act_gact.c", i32 328, i32 1}
!6 = !{ptr @__UNIQUE_ID_license377, !5, !"__UNIQUE_ID_license377", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_act_gact__378_346_gact_init_module6, !8, !"__initcall__kmod_act_gact__378_346_gact_init_module6", i1 false, i1 false}
!8 = !{!"../net/sched/act_gact.c", i32 346, i32 1}
!9 = !{ptr @__exitcall_gact_cleanup_module, !10, !"__exitcall_gact_cleanup_module", i1 false, i1 false}
!10 = !{!"../net/sched/act_gact.c", i32 347, i32 1}
!11 = !{ptr @act_gact_ops, !12, !"act_gact_ops", i1 false, i1 false}
!12 = !{!"../net/sched/act_gact.c", i32 292, i32 29}
!13 = !{ptr @gact_rand, !14, !"gact_rand", i1 false, i1 false}
!14 = !{!"../net/sched/act_gact.c", i32 45, i32 15}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/net/netlink.h", i32 991, i32 3}
!20 = distinct !{null, !21, !"__warned", i1 false, i1 false}
!21 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!22 = !{ptr @.str.2, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!30 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @gact_net_id, !32, !"gact_net_id", i1 false, i1 false}
!32 = !{!"../net/sched/act_gact.c", i32 22, i32 21}
!33 = !{ptr @tcf_gact_init.__msg, !34, !"__msg", i1 false, i1 false}
!34 = !{!"../net/sched/act_gact.c", i32 93, i32 4}
!35 = !{ptr @gact_policy, !36, !"gact_policy", i1 false, i1 false}
!36 = !{!"../net/sched/act_gact.c", i32 48, i32 32}
!37 = !{ptr @gact_net_ops, !38, !"gact_net_ops", i1 false, i1 false}
!38 = !{!"../net/sched/act_gact.c", i32 319, i32 33}
!39 = !{ptr @tc_action_net_init.__key, !40, !"__key", i1 false, i1 false}
!40 = !{!"../include/net/act_api.h", i32 156, i32 2}
!41 = !{ptr @.str.7, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @xa_init_flags.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!44 = !{ptr @.str.8, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.9, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../net/sched/act_gact.c", i32 333, i32 2}
!47 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.11, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @gact_init_module._entry, !46, !"_entry", i1 false, i1 false}
!50 = !{ptr @gact_init_module._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
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
!62 = !{i64 2156400890}
!63 = !{i64 2156398109}
!64 = !{i64 2148301839}
!65 = !{i64 2148217148, i64 2148217180, i64 2148217209, i64 2148217243, i64 2148217274, i64 2148217297}
!66 = !{i64 2148302068}
!67 = !{i64 2156398293}
!68 = !{i64 2150160660}
!69 = !{i64 2150165594}
!70 = !{i64 2150187312}
!71 = !{i64 2150192206}
!72 = !{!"branch_weights", i32 2000, i32 1}
!73 = !{i64 2150268733}
!74 = !{i64 2150269058}
!75 = !{i64 2149652039}
!76 = !{i64 2149652305}
