; ModuleID = '/llk/IR_all_yes/net/sched/act_bpf.c_pt.bc'
source_filename = "../net/sched/act_bpf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tc_action_ops = type { %struct.list_head, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.164 }
%struct.atomic_t = type { i32 }
%union.anon.164 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.76 }
%union.anon.76 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.tc_action = type { ptr, i32, ptr, i32, %struct.refcount_struct, %struct.atomic_t, i32, %struct.tcf_t, %struct.gnet_stats_basic_sync, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, ptr, %struct.spinlock, ptr, ptr, ptr, ptr, ptr, i32, i8, i8, i8, i32, [12 x i8] }
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
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcf_bpf = type { %struct.tc_action, ptr, %union.anon.188, ptr, ptr }
%union.anon.188 = type { i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.112 }
%union.anon.112 = type { %struct.anon.113 }
%struct.anon.113 = type { %struct.anon.114, [0 x %struct.sock_filter] }
%struct.anon.114 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.tc_act_bpf = type { i32, i32, i32, i32, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.111 }
%struct.atomic64_t = type { i64 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%union.anon.111 = type { %struct.work_struct }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tcf_bpf_cfg = type { ptr, ptr, ptr, i16, i8 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.126, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.126 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.78, i32, %struct.spinlock }
%union.anon.78 = type { %struct.anon.79 }
%struct.anon.79 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.sock_fprog_kern = type { i16, ptr }
%struct.tc_action_net = type { ptr, ptr }
%struct.tcf_idrinfo = type { %struct.mutex, %struct.idr, ptr }

@act_bpf_ops = internal global %struct.tc_action_ops { %struct.list_head zeroinitializer, [16 x i8] c"bpf\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 13, i32 288, ptr null, ptr @tcf_bpf_act, ptr @tcf_bpf_dump, ptr @tcf_bpf_cleanup, ptr @tcf_bpf_search, ptr @tcf_bpf_init, ptr @tcf_bpf_walker, ptr null, ptr null, ptr null, ptr null, ptr null }, section ".data..read_mostly", align 4
@bpf_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @bpf_init_net, ptr null, ptr null, ptr @bpf_exit_net, ptr @bpf_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_act_bpf__519_450_bpf_init_module6 = internal global ptr @bpf_init_module, section ".initcall6.init", align 4
@__exitcall_bpf_cleanup_module = internal global ptr @bpf_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author520 = internal constant [45 x i8] c"act_bpf.author=Jiri Pirko <jiri@resnulli.us>\00", section ".modinfo", align 1
@__UNIQUE_ID_description521 = internal constant [40 x i8] c"act_bpf.description=TC BPF based action\00", section ".modinfo", align 1
@__UNIQUE_ID_file522 = internal constant [31 x i8] c"act_bpf.file=net/sched/act_bpf\00", section ".modinfo", align 1
@__UNIQUE_ID_license523 = internal constant [23 x i8] c"act_bpf.license=GPL v2\00", section ".modinfo", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@tcf_bpf_act.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/sched/act_bpf.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@bpf_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@act_bpf_policy = internal constant { [10 x %struct.nla_policy], [48 x i8] } { [10 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 20, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 -32768, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 256, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tc_action_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tn->idrinfo->lock\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 7, i64 4294967295]
@___asan_gen_.11 = private unnamed_addr constant [12 x i8] c"bpf_net_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 433, i32 33 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 46, i32 11 }
@___asan_gen_.21 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 271, i32 2 }
@___asan_gen_.24 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.24, i32 613, i32 2 }
@___asan_gen_.27 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.27, i32 991, i32 3 }
@___asan_gen_.29 = private unnamed_addr constant [11 x i8] c"bpf_net_id\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 32, i32 21 }
@___asan_gen_.33 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 45, i32 7 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 695, i32 2 }
@___asan_gen_.42 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 723, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [15 x i8] c"act_bpf_policy\00", align 1
@___asan_gen_.45 = private constant [23 x i8] c"../net/sched/act_bpf.c\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 174, i32 32 }
@___asan_gen_.51 = private unnamed_addr constant [25 x i8] c"../include/net/act_api.h\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 156, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.57 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 378, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_author520, ptr @__UNIQUE_ID_description521, ptr @__UNIQUE_ID_file522, ptr @__UNIQUE_ID_license523, ptr @__exitcall_bpf_cleanup_module, ptr @__initcall__kmod_act_bpf__519_450_bpf_init_module6, ptr @bpf_cleanup_module, ptr @bpf_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @bpf_net_id, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @act_bpf_policy, ptr @tc_action_net_init.__key, ptr @.str.9, ptr @xa_init_flags.__key, ptr @.str.10], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_bpf_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_action_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @bpf_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_bpf_ops, ptr noundef nonnull @bpf_net_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_unregister_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_register_action(ptr noundef nonnull @act_bpf_ops, ptr noundef nonnull @bpf_net_ops) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_bpf_act(ptr noundef %skb, ptr noundef %act, ptr nocapture noundef readnone %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tc_at_ingress.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %0 = ptrtoint ptr %tc_at_ingress.i to i32
  call void @__asan_loadN_noabort(i32 %0, i32 4)
  %bf.load.i = load i32, ptr %tc_at_ingress.i, align 2
  %1 = and i32 %bf.load.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.i.not = icmp eq i32 %1, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %lastuse.i, align 8
  %conv.i = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %conv.i)
  %cmp.not.i = icmp eq i64 %4, %conv.i
  br i1 %cmp.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv.i, ptr %lastuse.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 7, i32 3
  %6 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not.i = icmp eq i64 %7, 0
  br i1 %tobool.not.i, label %if.then7.i, label %if.end.i.tcf_lastuse_update.exit_crit_edge, !prof !58

if.end.i.tcf_lastuse_update.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_lastuse_update.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv.i, ptr %firstuse.i, align 8
  br label %tcf_lastuse_update.exit

tcf_lastuse_update.exit:                          ; preds = %if.then7.i, %if.end.i.tcf_lastuse_update.exit_crit_edge
  %cpu_bstats = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 13
  %9 = ptrtoint ptr %cpu_bstats to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_bstats, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %add = add i32 %17, %11
  %18 = inttoptr i32 %add to ptr
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %19 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cb.i.i.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %21 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool.i.not.i = icmp eq i16 %24, 0
  br i1 %tobool.i.not.i, label %tcf_lastuse_update.exit.cond.end.i_crit_edge, label %cond.true.i

tcf_lastuse_update.exit.cond.end.i_crit_edge:     ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %22, i32 0, i32 5
  %25 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %gso_segs.i, align 2
  %conv4.i = zext i16 %26 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %tcf_lastuse_update.exit.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv4.i, %cond.true.i ], [ 1, %tcf_lastuse_update.exit.cond.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %27 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i.i.i.i135 = icmp eq i32 %27, 0
  br i1 %tobool.not.i.i.i.i135, label %cond.end.i.bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i147

cond.end.i.bstats_update.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bstats_update.exit

land.lhs.true.i.i.i.i147:                         ; preds = %cond.end.i
  %preempt_count.i.i.i.i.i.i137 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i.i.i.i137 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i137, align 4
  %add.i.i.i.i.i138 = add i32 %29, 1
  store volatile i32 %add.i.i.i.i.i138, ptr %preempt_count.i.i.i.i.i.i137, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  %30 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i.i.i139 = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i.i.i139 to ptr
  %cpu.i.i.i.i140 = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %cpu.i.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %cpu.i.i.i.i140, align 4
  %arrayidx.i.i.i.i141 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %33
  %34 = ptrtoint ptr %arrayidx.i.i.i.i141 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.i.i.i.i141, align 4
  %add.i.i.i.i142 = add i32 %35, ptrtoint (ptr @lockdep_recursion to i32)
  %36 = inttoptr i32 %add.i.i.i.i142 to ptr
  %37 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile i32, ptr %36, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !60
  %39 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i7.i.i.i.i143 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i7.i.i.i.i143 to ptr
  %preempt_count.i.i8.i.i.i.i144 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i144 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i144, align 4
  %sub.i.i.i.i.i145 = add i32 %42, -1
  store volatile i32 %sub.i.i.i.i.i145, ptr %preempt_count.i.i8.i.i.i.i144, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool20.not.i.i.i.i146 = icmp eq i32 %38, 0
  br i1 %tobool20.not.i.i.i.i146, label %land.rhs.i.i.i.i151, label %land.lhs.true.i.i.i.i147.bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i147.bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i147
  call void @__sanitizer_cov_trace_pc() #11
  br label %bstats_update.exit

land.rhs.i.i.i.i151:                              ; preds = %land.lhs.true.i.i.i.i147
  %43 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i.i.i.i148 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i.i148 to ptr
  %preempt_count.i.i.i.i.i149 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i.i149, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %cmp.i.i.i.i150 = icmp eq i32 %46, 0
  br i1 %cmp.i.i.i.i150, label %land.rhs22.i.i.i.i161, label %land.rhs.i.i.i.i151.bstats_update.exit_crit_edge

land.rhs.i.i.i.i151.bstats_update.exit_crit_edge: ; preds = %land.rhs.i.i.i.i151
  call void @__sanitizer_cov_trace_pc() #11
  br label %bstats_update.exit

land.rhs22.i.i.i.i161:                            ; preds = %land.rhs.i.i.i.i151
  %47 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i9.i.i.i.i152 = and i32 %47, -16384
  %48 = inttoptr i32 %and.i.i.i9.i.i.i.i152 to ptr
  %preempt_count.i.i10.i.i.i.i153 = getelementptr inbounds %struct.thread_info, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i153 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i153, align 4
  %add.i11.i.i.i.i154 = add i32 %50, 1
  store volatile i32 %add.i11.i.i.i.i154, ptr %preempt_count.i.i10.i.i.i.i153, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  %51 = ptrtoint ptr %cpu.i.i.i.i140 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %cpu.i.i.i.i140, align 4
  %arrayidx46.i.i.i.i155 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %52
  %53 = ptrtoint ptr %arrayidx46.i.i.i.i155 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx46.i.i.i.i155, align 4
  %add47.i.i.i.i156 = add i32 %54, ptrtoint (ptr @hardirqs_enabled to i32)
  %55 = inttoptr i32 %add47.i.i.i.i156 to ptr
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile i32, ptr %55, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  %58 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i12.i.i.i.i157 = and i32 %58, -16384
  %59 = inttoptr i32 %and.i.i.i12.i.i.i.i157 to ptr
  %preempt_count.i.i13.i.i.i.i158 = getelementptr inbounds %struct.thread_info, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i158 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i158, align 4
  %sub.i14.i.i.i.i159 = add i32 %61, -1
  store volatile i32 %sub.i14.i.i.i.i159, ptr %preempt_count.i.i13.i.i.i.i158, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool54.not.i.i.i.i160 = icmp eq i32 %57, 0
  br i1 %tobool54.not.i.i.i.i160, label %land.rhs22.i.i.i.i161.bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i163

land.rhs22.i.i.i.i161.bstats_update.exit_crit_edge: ; preds = %land.rhs22.i.i.i.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %bstats_update.exit

land.rhs58.i.i.i.i163:                            ; preds = %land.rhs22.i.i.i.i161
  %.b1.i.i.i.i162 = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i162, label %land.rhs58.i.i.i.i163.bstats_update.exit_crit_edge, label %if.then.i.i.i.i164, !prof !63

land.rhs58.i.i.i.i163.bstats_update.exit_crit_edge: ; preds = %land.rhs58.i.i.i.i163
  call void @__sanitizer_cov_trace_pc() #11
  br label %bstats_update.exit

if.then.i.i.i.i164:                               ; preds = %land.rhs58.i.i.i.i163
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %bstats_update.exit

bstats_update.exit:                               ; preds = %if.then.i.i.i.i164, %land.rhs58.i.i.i.i163.bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i161.bstats_update.exit_crit_edge, %land.rhs.i.i.i.i151.bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i147.bstats_update.exit_crit_edge, %cond.end.i.bstats_update.exit_crit_edge
  %conv.i165 = zext i32 %20 to i64
  %syncp.i.i166 = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %18, i32 0, i32 2
  %62 = ptrtoint ptr %syncp.i.i166 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %syncp.i.i166, align 4
  %inc.i.i.i.i.i.i167 = add i32 %63, 1
  store i32 %inc.i.i.i.i.i.i167, ptr %syncp.i.i166, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  %dep_map.i.i.i.i.i168 = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %18, i32 0, i32 2, i32 0, i32 1
  %64 = tail call ptr @llvm.returnaddress(i32 0) #9
  %65 = ptrtoint ptr %64 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i168, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %65) #9
  %66 = ptrtoint ptr %18 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %18, align 8
  %add.i.i.i169 = add i64 %67, %conv.i165
  store i64 %add.i.i.i169, ptr %18, align 8
  %packets2.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %18, i32 0, i32 1
  %conv.i7.i.i = zext i32 %cond.i to i64
  %68 = ptrtoint ptr %packets2.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %packets2.i.i, align 8
  %add.i8.i.i = add i64 %69, %conv.i7.i.i
  store i64 %add.i8.i.i, ptr %packets2.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i168, i32 noundef %65) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !65
  %70 = ptrtoint ptr %syncp.i.i166 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %syncp.i.i166, align 4
  %inc.i.i.i.i.i170 = add i32 %71, 1
  store i32 %inc.i.i.i.i.i170, ptr %syncp.i.i166, align 4
  %filter8 = getelementptr inbounds %struct.tcf_bpf, ptr %act, i32 0, i32 1
  %72 = ptrtoint ptr %filter8 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %filter8, align 16
  %call10 = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool.not = icmp eq i32 %call10, 0
  br i1 %tobool.not, label %land.lhs.true, label %bstats_update.exit.do.end16_crit_edge

bstats_update.exit.do.end16_crit_edge:            ; preds = %bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

land.lhs.true:                                    ; preds = %bstats_update.exit
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true.do.end16_crit_edge, label %land.lhs.true13

land.lhs.true.do.end16_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

land.lhs.true13:                                  ; preds = %land.lhs.true
  %.b67 = load i1, ptr @tcf_bpf_act.__warned, align 1
  br i1 %.b67, label %land.lhs.true13.do.end16_crit_edge, label %if.then

land.lhs.true13.do.end16_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

if.then:                                          ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcf_bpf_act.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 46, ptr noundef nonnull @.str.1) #9
  br label %do.end16

do.end16:                                         ; preds = %if.then, %land.lhs.true13.do.end16_crit_edge, %land.lhs.true.do.end16_crit_edge, %bstats_update.exit.do.end16_crit_edge
  br i1 %tobool.i.not, label %if.else, label %if.then19

if.then19:                                        ; preds = %do.end16
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %74 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %mac_len, align 4
  %conv = zext i16 %75 to i32
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %76 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i, align 4
  %idx.neg.i = sub nsw i32 0, %conv
  %add.ptr.i = getelementptr i8, ptr %77, i32 %idx.neg.i
  store ptr %add.ptr.i, ptr %data.i, align 4
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %78 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %79, %conv
  store i32 %add.i, ptr %len1.i, align 4
  %80 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %end.i.i.i, align 4
  %meta_len.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %meta_len.i.i to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %meta_len.i.i, align 1
  %conv.i173 = zext i8 %83 to i32
  %idx.neg.i174 = sub nsw i32 0, %conv.i173
  %add.ptr.i175 = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i174
  %data_meta.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %84 = ptrtoint ptr %data_meta.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %add.ptr.i175, ptr %data_meta.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %85 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i176 = sub i32 %add.i, %86
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %sub.i.i176
  %data_end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %87 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %add.ptr4.i, ptr %data_end.i, align 4
  tail call void @__cant_migrate(ptr noundef nonnull @.str.3, i32 noundef 613) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@tcf_bpf_act, %if.then.i.i)) #9
          to label %if.else.i.i [label %if.then.i.i], !srcloc !66

if.then.i.i:                                      ; preds = %if.then19
  %call3.i.i = tail call i64 @sched_clock() #9
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %73, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %73, i32 0, i32 9
  %88 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = tail call i32 %89(ptr noundef %skb, ptr noundef %insnsi.i.i) #9
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %73, i32 0, i32 7
  %90 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %stats9.i.i, align 4
  %92 = ptrtoint ptr %91 to i32
  %93 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i = and i32 %93, -16384
  %94 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %94, i32 0, i32 3
  %95 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %96
  %97 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %98, %92
  %99 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %99, i32 0, i32 3
  %100 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !67
  %and.i.i.i.i = and i32 %100, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %101 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %101)
  %tobool.not.i.i.i.i = icmp eq i32 %101, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %102 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i.i.i.i.i = and i32 %102, -16384
  %103 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %103, i32 0, i32 1
  %104 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %105, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  %106 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i.i.i = and i32 %106, -16384
  %107 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %107, i32 0, i32 3
  %108 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %109
  %110 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %111, ptrtoint (ptr @lockdep_recursion to i32)
  %112 = inttoptr i32 %add.i.i.i.i to ptr
  %113 = ptrtoint ptr %112 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile i32, ptr %112, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !60
  %115 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i7.i.i.i.i = and i32 %115, -16384
  %116 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %116, i32 0, i32 1
  %117 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %118, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool20.not.i.i.i.i = icmp eq i32 %114, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %119 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i.i.i.i = and i32 %119, -16384
  %120 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %122)
  %cmp.i.i.i.i = icmp eq i32 %122, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %123 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i9.i.i.i.i = and i32 %123, -16384
  %124 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %124, i32 0, i32 1
  %125 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %126, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  %127 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %128
  %129 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %130, ptrtoint (ptr @hardirqs_enabled to i32)
  %131 = inttoptr i32 %add47.i.i.i.i to ptr
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %131, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  %134 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i12.i.i.i.i = and i32 %134, -16384
  %135 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %135, i32 0, i32 1
  %136 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %137, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool54.not.i.i.i.i = icmp eq i32 %133, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !63

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %138 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %139, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %99, i32 0, i32 3, i32 0, i32 1
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %65) #9
  %140 = ptrtoint ptr %99 to i32
  call void @__asan_load8_noabort(i32 %140)
  %141 = load i64, ptr %99, align 8
  %inc.i.i.i = add i64 %141, 1
  store i64 %inc.i.i.i, ptr %99, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %99, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #9
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %142 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %142)
  %143 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %143
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %65) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !65
  %144 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %145, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %146 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !68
  %and.i.i.i4.i.i = and i32 %146, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !58

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %100) #9, !srcloc !69
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #11
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %73, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %73, i32 0, i32 9
  %147 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = tail call i32 %148(ptr noundef %skb, ptr noundef %insnsi15.i.i) #9
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  %149 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %149)
  %150 = load i16, ptr %mac_len, align 4
  %conv23 = zext i16 %150 to i32
  %151 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %len1.i, align 4
  %sub.i = sub i32 %152, %conv23
  store i32 %sub.i, ptr %len1.i, align 4
  %153 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %154)
  %cmp.i = icmp ult i32 %sub.i, %154
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !58

do.body4.i:                                       ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #9, !srcloc !70
  unreachable

__skb_pull.exit:                                  ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #11
  %155 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %data.i, align 4
  %add.ptr.i179 = getelementptr i8, ptr %156, i32 %conv23
  store ptr %add.ptr.i179, ptr %data.i, align 4
  br label %if.end26

if.else:                                          ; preds = %do.end16
  %data.i180 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %157 = ptrtoint ptr %data.i180 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %data.i180, align 4
  %159 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %end.i.i.i, align 4
  %meta_len.i.i182 = getelementptr inbounds %struct.skb_shared_info, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %meta_len.i.i182 to i32
  call void @__asan_load1_noabort(i32 %161)
  %162 = load i8, ptr %meta_len.i.i182, align 1
  %conv.i183 = zext i8 %162 to i32
  %idx.neg.i184 = sub nsw i32 0, %conv.i183
  %add.ptr.i185 = getelementptr i8, ptr %158, i32 %idx.neg.i184
  %data_meta.i186 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %163 = ptrtoint ptr %data_meta.i186 to i32
  call void @__asan_store4_noabort(i32 %163)
  store ptr %add.ptr.i185, ptr %data_meta.i186, align 4
  %len.i.i187 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %164 = ptrtoint ptr %len.i.i187 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %len.i.i187, align 4
  %data_len.i.i188 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %166 = ptrtoint ptr %data_len.i.i188 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %data_len.i.i188, align 8
  %sub.i.i189 = sub i32 %165, %167
  %add.ptr4.i190 = getelementptr i8, ptr %158, i32 %sub.i.i189
  %data_end.i191 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %168 = ptrtoint ptr %data_end.i191 to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %add.ptr4.i190, ptr %data_end.i191, align 4
  tail call void @__cant_migrate(ptr noundef nonnull @.str.3, i32 noundef 613) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@tcf_bpf_act, %if.then.i.i80)) #9
          to label %if.else.i.i132 [label %if.then.i.i80], !srcloc !66

if.then.i.i80:                                    ; preds = %if.else
  %call3.i.i68 = tail call i64 @sched_clock() #9
  %insnsi.i.i69 = getelementptr inbounds %struct.bpf_prog, ptr %73, i32 1
  %bpf_func.i.i70 = getelementptr inbounds %struct.bpf_prog, ptr %73, i32 0, i32 9
  %169 = ptrtoint ptr %bpf_func.i.i70 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %bpf_func.i.i70, align 4
  %call.i.i.i71 = tail call i32 %170(ptr noundef %skb, ptr noundef %insnsi.i.i69) #9
  %stats9.i.i72 = getelementptr inbounds %struct.bpf_prog, ptr %73, i32 0, i32 7
  %171 = ptrtoint ptr %stats9.i.i72 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %stats9.i.i72, align 4
  %173 = ptrtoint ptr %172 to i32
  %174 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i73 = and i32 %174, -16384
  %175 = inttoptr i32 %and.i.i.i73 to ptr
  %cpu.i.i74 = getelementptr inbounds %struct.thread_info, ptr %175, i32 0, i32 3
  %176 = ptrtoint ptr %cpu.i.i74 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %cpu.i.i74, align 4
  %arrayidx.i.i75 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %177
  %178 = ptrtoint ptr %arrayidx.i.i75 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %arrayidx.i.i75, align 4
  %add.i.i76 = add i32 %179, %173
  %180 = inttoptr i32 %add.i.i76 to ptr
  %syncp.i.i77 = getelementptr inbounds %struct.bpf_prog_stats, ptr %180, i32 0, i32 3
  %181 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #9, !srcloc !67
  %and.i.i.i.i78 = and i32 %181, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i78)
  %tobool.not.i.i.i79 = icmp eq i32 %and.i.i.i.i78, 0
  br i1 %tobool.not.i.i.i79, label %if.then.i.i.i81, label %if.then.i.i80.do.body12.i.i.i83_crit_edge

if.then.i.i80.do.body12.i.i.i83_crit_edge:        ; preds = %if.then.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body12.i.i.i83

if.then.i.i.i81:                                  ; preds = %if.then.i.i80
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_off() #9
  br label %do.body12.i.i.i83

do.body12.i.i.i83:                                ; preds = %if.then.i.i.i81, %if.then.i.i80.do.body12.i.i.i83_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %182 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %182)
  %tobool.not.i.i.i.i82 = icmp eq i32 %182, 0
  br i1 %tobool.not.i.i.i.i82, label %do.body12.i.i.i83.u64_stats_update_begin_irqsave.exit.i.i122_crit_edge, label %land.lhs.true.i.i.i.i95

do.body12.i.i.i83.u64_stats_update_begin_irqsave.exit.i.i122_crit_edge: ; preds = %do.body12.i.i.i83
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i122

land.lhs.true.i.i.i.i95:                          ; preds = %do.body12.i.i.i83
  %183 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i.i.i.i.i84 = and i32 %183, -16384
  %184 = inttoptr i32 %and.i.i.i.i.i.i.i84 to ptr
  %preempt_count.i.i.i.i.i.i85 = getelementptr inbounds %struct.thread_info, ptr %184, i32 0, i32 1
  %185 = ptrtoint ptr %preempt_count.i.i.i.i.i.i85 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i85, align 4
  %add.i.i.i.i.i86 = add i32 %186, 1
  store volatile i32 %add.i.i.i.i.i86, ptr %preempt_count.i.i.i.i.i.i85, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !59
  %187 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i.i.i87 = and i32 %187, -16384
  %188 = inttoptr i32 %and.i.i.i.i.i87 to ptr
  %cpu.i.i.i.i88 = getelementptr inbounds %struct.thread_info, ptr %188, i32 0, i32 3
  %189 = ptrtoint ptr %cpu.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %cpu.i.i.i.i88, align 4
  %arrayidx.i.i.i.i89 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %190
  %191 = ptrtoint ptr %arrayidx.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %arrayidx.i.i.i.i89, align 4
  %add.i.i.i.i90 = add i32 %192, ptrtoint (ptr @lockdep_recursion to i32)
  %193 = inttoptr i32 %add.i.i.i.i90 to ptr
  %194 = ptrtoint ptr %193 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load volatile i32, ptr %193, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !60
  %196 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i7.i.i.i.i91 = and i32 %196, -16384
  %197 = inttoptr i32 %and.i.i.i7.i.i.i.i91 to ptr
  %preempt_count.i.i8.i.i.i.i92 = getelementptr inbounds %struct.thread_info, ptr %197, i32 0, i32 1
  %198 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i92 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i92, align 4
  %sub.i.i.i.i.i93 = add i32 %199, -1
  store volatile i32 %sub.i.i.i.i.i93, ptr %preempt_count.i.i8.i.i.i.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %195)
  %tobool20.not.i.i.i.i94 = icmp eq i32 %195, 0
  br i1 %tobool20.not.i.i.i.i94, label %land.rhs.i.i.i.i99, label %land.lhs.true.i.i.i.i95.u64_stats_update_begin_irqsave.exit.i.i122_crit_edge

land.lhs.true.i.i.i.i95.u64_stats_update_begin_irqsave.exit.i.i122_crit_edge: ; preds = %land.lhs.true.i.i.i.i95
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i122

land.rhs.i.i.i.i99:                               ; preds = %land.lhs.true.i.i.i.i95
  %200 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i.i.i.i96 = and i32 %200, -16384
  %201 = inttoptr i32 %and.i.i.i.i.i.i96 to ptr
  %preempt_count.i.i.i.i.i97 = getelementptr inbounds %struct.thread_info, ptr %201, i32 0, i32 1
  %202 = ptrtoint ptr %preempt_count.i.i.i.i.i97 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load volatile i32, ptr %preempt_count.i.i.i.i.i97, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %203)
  %cmp.i.i.i.i98 = icmp eq i32 %203, 0
  br i1 %cmp.i.i.i.i98, label %land.rhs22.i.i.i.i109, label %land.rhs.i.i.i.i99.u64_stats_update_begin_irqsave.exit.i.i122_crit_edge

land.rhs.i.i.i.i99.u64_stats_update_begin_irqsave.exit.i.i122_crit_edge: ; preds = %land.rhs.i.i.i.i99
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i122

land.rhs22.i.i.i.i109:                            ; preds = %land.rhs.i.i.i.i99
  %204 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i9.i.i.i.i100 = and i32 %204, -16384
  %205 = inttoptr i32 %and.i.i.i9.i.i.i.i100 to ptr
  %preempt_count.i.i10.i.i.i.i101 = getelementptr inbounds %struct.thread_info, ptr %205, i32 0, i32 1
  %206 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i101 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i101, align 4
  %add.i11.i.i.i.i102 = add i32 %207, 1
  store volatile i32 %add.i11.i.i.i.i102, ptr %preempt_count.i.i10.i.i.i.i101, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !61
  %208 = ptrtoint ptr %cpu.i.i.i.i88 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %cpu.i.i.i.i88, align 4
  %arrayidx46.i.i.i.i103 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %209
  %210 = ptrtoint ptr %arrayidx46.i.i.i.i103 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx46.i.i.i.i103, align 4
  %add47.i.i.i.i104 = add i32 %211, ptrtoint (ptr @hardirqs_enabled to i32)
  %212 = inttoptr i32 %add47.i.i.i.i104 to ptr
  %213 = ptrtoint ptr %212 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load volatile i32, ptr %212, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !62
  %215 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i12.i.i.i.i105 = and i32 %215, -16384
  %216 = inttoptr i32 %and.i.i.i12.i.i.i.i105 to ptr
  %preempt_count.i.i13.i.i.i.i106 = getelementptr inbounds %struct.thread_info, ptr %216, i32 0, i32 1
  %217 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i106 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i106, align 4
  %sub.i14.i.i.i.i107 = add i32 %218, -1
  store volatile i32 %sub.i14.i.i.i.i107, ptr %preempt_count.i.i13.i.i.i.i106, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool54.not.i.i.i.i108 = icmp eq i32 %214, 0
  br i1 %tobool54.not.i.i.i.i108, label %land.rhs22.i.i.i.i109.u64_stats_update_begin_irqsave.exit.i.i122_crit_edge, label %land.rhs58.i.i.i.i111

land.rhs22.i.i.i.i109.u64_stats_update_begin_irqsave.exit.i.i122_crit_edge: ; preds = %land.rhs22.i.i.i.i109
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i122

land.rhs58.i.i.i.i111:                            ; preds = %land.rhs22.i.i.i.i109
  %.b1.i.i.i.i110 = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i110, label %land.rhs58.i.i.i.i111.u64_stats_update_begin_irqsave.exit.i.i122_crit_edge, label %if.then.i.i.i.i112, !prof !63

land.rhs58.i.i.i.i111.u64_stats_update_begin_irqsave.exit.i.i122_crit_edge: ; preds = %land.rhs58.i.i.i.i111
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_begin_irqsave.exit.i.i122

if.then.i.i.i.i112:                               ; preds = %land.rhs58.i.i.i.i111
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %u64_stats_update_begin_irqsave.exit.i.i122

u64_stats_update_begin_irqsave.exit.i.i122:       ; preds = %if.then.i.i.i.i112, %land.rhs58.i.i.i.i111.u64_stats_update_begin_irqsave.exit.i.i122_crit_edge, %land.rhs22.i.i.i.i109.u64_stats_update_begin_irqsave.exit.i.i122_crit_edge, %land.rhs.i.i.i.i99.u64_stats_update_begin_irqsave.exit.i.i122_crit_edge, %land.lhs.true.i.i.i.i95.u64_stats_update_begin_irqsave.exit.i.i122_crit_edge, %do.body12.i.i.i83.u64_stats_update_begin_irqsave.exit.i.i122_crit_edge
  %219 = ptrtoint ptr %syncp.i.i77 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %syncp.i.i77, align 4
  %inc.i.i.i.i.i.i113 = add i32 %220, 1
  store i32 %inc.i.i.i.i.i.i113, ptr %syncp.i.i77, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !64
  %dep_map.i.i.i.i.i114 = getelementptr inbounds %struct.bpf_prog_stats, ptr %180, i32 0, i32 3, i32 0, i32 1
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i114, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %65) #9
  %221 = ptrtoint ptr %180 to i32
  call void @__asan_load8_noabort(i32 %221)
  %222 = load i64, ptr %180, align 8
  %inc.i.i.i115 = add i64 %222, 1
  store i64 %inc.i.i.i115, ptr %180, align 8
  %nsecs.i.i116 = getelementptr inbounds %struct.bpf_prog_stats, ptr %180, i32 0, i32 1
  %call13.i.i117 = tail call i64 @sched_clock() #9
  %sub.i.i118 = sub i64 %call13.i.i117, %call3.i.i68
  %conv.i.i.i119 = and i64 %sub.i.i118, 4294967295
  %223 = ptrtoint ptr %nsecs.i.i116 to i32
  call void @__asan_load8_noabort(i32 %223)
  %224 = load i64, ptr %nsecs.i.i116, align 8
  %add.i.i.i120 = add i64 %conv.i.i.i119, %224
  store i64 %add.i.i.i120, ptr %nsecs.i.i116, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i114, i32 noundef %65) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !65
  %225 = ptrtoint ptr %syncp.i.i77 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %syncp.i.i77, align 4
  %inc.i.i.i.i.i121 = add i32 %226, 1
  store i32 %inc.i.i.i.i.i121, ptr %syncp.i.i77, align 4
  br i1 %tobool.not.i.i.i79, label %if.then8.i.i.i123, label %u64_stats_update_begin_irqsave.exit.i.i122.do.body10.i.i.i126_crit_edge

u64_stats_update_begin_irqsave.exit.i.i122.do.body10.i.i.i126_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i122
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body10.i.i.i126

if.then8.i.i.i123:                                ; preds = %u64_stats_update_begin_irqsave.exit.i.i122
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @trace_hardirqs_on() #9
  br label %do.body10.i.i.i126

do.body10.i.i.i126:                               ; preds = %if.then8.i.i.i123, %u64_stats_update_begin_irqsave.exit.i.i122.do.body10.i.i.i126_crit_edge
  %227 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #9, !srcloc !68
  %and.i.i.i4.i.i124 = and i32 %227, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i124)
  %tobool18.not.i.i.i125 = icmp eq i32 %and.i.i.i4.i.i124, 0
  br i1 %tobool18.not.i.i.i125, label %if.then22.i.i.i127, label %do.body10.i.i.i126.u64_stats_update_end_irqrestore.exit.i.i128_crit_edge, !prof !58

do.body10.i.i.i126.u64_stats_update_end_irqrestore.exit.i.i128_crit_edge: ; preds = %do.body10.i.i.i126
  call void @__sanitizer_cov_trace_pc() #11
  br label %u64_stats_update_end_irqrestore.exit.i.i128

if.then22.i.i.i127:                               ; preds = %do.body10.i.i.i126
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @warn_bogus_irq_restore() #9
  br label %u64_stats_update_end_irqrestore.exit.i.i128

u64_stats_update_end_irqrestore.exit.i.i128:      ; preds = %if.then22.i.i.i127, %do.body10.i.i.i126.u64_stats_update_end_irqrestore.exit.i.i128_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %181) #9, !srcloc !69
  br label %if.end26

if.else.i.i132:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %insnsi15.i.i129 = getelementptr inbounds %struct.bpf_prog, ptr %73, i32 1
  %bpf_func17.i.i130 = getelementptr inbounds %struct.bpf_prog, ptr %73, i32 0, i32 9
  %228 = ptrtoint ptr %bpf_func17.i.i130 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %bpf_func17.i.i130, align 4
  %call.i1.i.i131 = tail call i32 %229(ptr noundef %skb, ptr noundef %insnsi15.i.i129) #9
  br label %if.end26

if.end26:                                         ; preds = %if.else.i.i132, %u64_stats_update_end_irqrestore.exit.i.i128, %__skb_pull.exit
  %filter_res.0 = phi i32 [ %ret.0.i.i, %__skb_pull.exit ], [ %call.i.i.i71, %u64_stats_update_end_irqrestore.exit.i.i128 ], [ %call.i1.i.i131, %if.else.i.i132 ]
  %destructor.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4, i32 0, i32 1
  %230 = ptrtoint ptr %destructor.i to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %destructor.i, align 4
  %cmp.i192 = icmp ne ptr %231, @sock_pfree
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %filter_res.0)
  %cmp.not = icmp eq i32 %filter_res.0, 0
  %or.cond = select i1 %cmp.i192, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end26.if.end32_crit_edge, label %if.then.i195

if.end26.if.end32_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end32

if.then.i195:                                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @sock_pfree(ptr noundef %skb) #9
  %232 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store ptr null, ptr %destructor.i, align 4
  %233 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 1
  %234 = ptrtoint ptr %233 to i32
  call void @__asan_store4_noabort(i32 %234)
  store ptr null, ptr %233, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then.i195, %if.end26.if.end32_crit_edge
  %235 = zext i32 %filter_res.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values)
  switch i32 %filter_res.0, label %sw.default [
    i32 3, label %if.end32.sw.epilog_crit_edge
    i32 1, label %if.end32.sw.epilog_crit_edge196
    i32 0, label %if.end32.sw.epilog_crit_edge197
    i32 7, label %if.end32.sw.epilog_crit_edge198
    i32 2, label %sw.bb33
    i32 -1, label %sw.bb46
  ]

if.end32.sw.epilog_crit_edge198:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end32.sw.epilog_crit_edge197:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end32.sw.epilog_crit_edge196:                  ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end32.sw.epilog_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %cpu_qstats = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 15
  %236 = ptrtoint ptr %cpu_qstats to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load ptr, ptr %cpu_qstats, align 4
  %238 = ptrtoint ptr %237 to i32
  %239 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %cpu, align 4
  %arrayidx44 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %240
  %241 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %arrayidx44, align 4
  %add45 = add i32 %242, %238
  %243 = inttoptr i32 %add45 to ptr
  %drops.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %243, i32 0, i32 2
  %244 = ptrtoint ptr %drops.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %drops.i, align 4
  %inc.i = add i32 %245, 1
  store i32 %inc.i, ptr %drops.i, align 4
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 6
  %246 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load i32, ptr %tcfa_action, align 8
  br label %sw.epilog

sw.default:                                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb46, %sw.bb33, %if.end32.sw.epilog_crit_edge, %if.end32.sw.epilog_crit_edge196, %if.end32.sw.epilog_crit_edge197, %if.end32.sw.epilog_crit_edge198
  %action.0 = phi i32 [ -1, %sw.default ], [ %247, %sw.bb46 ], [ 2, %sw.bb33 ], [ %filter_res.0, %if.end32.sw.epilog_crit_edge ], [ %filter_res.0, %if.end32.sw.epilog_crit_edge196 ], [ %filter_res.0, %if.end32.sw.epilog_crit_edge197 ], [ %filter_res.0, %if.end32.sw.epilog_crit_edge198 ]
  ret i32 %action.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_bpf_dump(ptr noundef %skb, ptr noundef %act, i32 noundef %bind, i32 noundef %ref) #2 align 64 {
entry:
  %tmp.i.i49 = alloca i16, align 2
  %tmp.i.i = alloca i32, align 4
  %opt = alloca %struct.tc_act_bpf, align 4
  %tm = alloca %struct.tcf_t, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %opt) #9
  %2 = getelementptr inbounds %struct.tc_act_bpf, ptr %opt, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tc_act_bpf, ptr %opt, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tc_act_bpf, ptr %opt, i32 0, i32 3
  %5 = getelementptr inbounds %struct.tc_act_bpf, ptr %opt, i32 0, i32 4
  %tcfa_index = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 3
  %6 = ptrtoint ptr %tcfa_index to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tcfa_index, align 4
  %8 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %opt, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %2, align 4
  %tcfa_refcnt = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_refcnt, i32 noundef 4) #9
  %10 = ptrtoint ptr %tcfa_refcnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %tcfa_refcnt, align 4
  %sub = sub i32 %11, %ref
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %4, align 4
  %tcfa_bindcnt = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_bindcnt, i32 noundef 4) #9
  %13 = ptrtoint ptr %tcfa_bindcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %tcfa_bindcnt, align 4
  %sub5 = sub i32 %14, %bind
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub5, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tm) #9
  %16 = getelementptr inbounds %struct.tcf_t, ptr %tm, i32 0, i32 1
  %17 = getelementptr inbounds %struct.tcf_t, ptr %tm, i32 0, i32 2
  %18 = getelementptr inbounds %struct.tcf_t, ptr %tm, i32 0, i32 3
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 12
  %19 = call ptr @memset(ptr %tm, i32 255, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #9
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 6
  %20 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tcfa_action, align 8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %3, align 4
  %call9 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 20, ptr noundef nonnull %opt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %bpf_ops.i = getelementptr inbounds %struct.tcf_bpf, ptr %act, i32 0, i32 3
  %23 = ptrtoint ptr %bpf_ops.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %bpf_ops.i, align 8
  %tobool.not.i = icmp eq ptr %24, null
  br i1 %tobool.not.i, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  %bpf_name.i = getelementptr inbounds %struct.tcf_bpf, ptr %act, i32 0, i32 4
  %25 = ptrtoint ptr %bpf_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bpf_name.i, align 4
  %tobool.not.i47 = icmp eq ptr %26, null
  br i1 %tobool.not.i47, label %if.then11.if.end.i_crit_edge, label %land.lhs.true.i

if.then11.if.end.i_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then11
  %call.i.i48 = call i32 @strlen(ptr noundef nonnull %26) #12
  %add.i.i = add i32 %call.i.i48, 1
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef %add.i.i, ptr noundef nonnull %26) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.nla_put_failure_crit_edge

land.lhs.true.i.nla_put_failure_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then11.if.end.i_crit_edge
  %filter.i = getelementptr inbounds %struct.tcf_bpf, ptr %act, i32 0, i32 1
  %27 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %filter.i, align 16
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %28, i32 0, i32 10
  %29 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %aux.i, align 4
  %id.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %30, i32 0, i32 7
  %31 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %id.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #9
  %33 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %tmp.i.i, align 4
  %call.i20.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool4.not.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.nla_put_failure_crit_edge

if.end.i.nla_put_failure_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 8, i32 noundef 8) #9
  %cmp.i = icmp eq ptr %call7.i, null
  br i1 %cmp.i, label %if.end6.i.nla_put_failure_crit_edge, label %if.end9.i

if.end6.i.nla_put_failure_crit_edge:              ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end9.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i = getelementptr i8, ptr %call7.i, i32 4
  %34 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %filter.i, align 16
  %tag.i = getelementptr inbounds %struct.bpf_prog, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %call7.i to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %call7.i, align 2
  %conv.i.i = zext i16 %37 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %38 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %tag.i, i32 %sub.i.i)
  br label %if.end17

if.else:                                          ; preds = %if.end
  %39 = getelementptr inbounds %struct.tcf_bpf, ptr %act, i32 0, i32 2
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %39, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i49) #9
  %42 = ptrtoint ptr %tmp.i.i49 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %tmp.i.i49, align 2
  %call.i.i50 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i.i49) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i49) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i50)
  %tobool.not.i51 = icmp eq i32 %call.i.i50, 0
  br i1 %tobool.not.i51, label %if.end.i53, label %if.else.nla_put_failure_crit_edge

if.else.nla_put_failure_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end.i53:                                       ; preds = %if.else
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %39, align 4
  %conv.i = zext i16 %44 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %call1.i = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 4, i32 noundef %mul.i) #9
  %cmp.i52 = icmp eq ptr %call1.i, null
  br i1 %cmp.i52, label %if.end.i53.nla_put_failure_crit_edge, label %if.end4.i

if.end.i53.nla_put_failure_crit_edge:             ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end4.i:                                        ; preds = %if.end.i53
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i54 = getelementptr i8, ptr %call1.i, i32 4
  %45 = ptrtoint ptr %bpf_ops.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %bpf_ops.i, align 8
  %47 = ptrtoint ptr %call1.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %call1.i, align 2
  %conv.i.i56 = zext i16 %48 to i32
  %sub.i.i57 = add nsw i32 %conv.i.i56, -4
  %49 = call ptr @memcpy(ptr %add.ptr.i.i54, ptr %46, i32 %sub.i.i57)
  br label %if.end17

if.end17:                                         ; preds = %if.end4.i, %if.end9.i
  %tcfa_tm = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %50 = load volatile i32, ptr @jiffies, align 128
  %51 = ptrtoint ptr %tcfa_tm to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %tcfa_tm, align 8
  %53 = trunc i64 %52 to i32
  %conv1.i = sub i32 %50, %53
  %call.i = call i32 @jiffies_to_clock_t(i32 noundef %conv1.i) #9
  %conv2.i = sext i32 %call.i to i64
  %54 = ptrtoint ptr %tm to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 %conv2.i, ptr %tm, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %55 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 7, i32 1
  %56 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %56)
  %57 = load i64, ptr %lastuse.i, align 8
  %58 = trunc i64 %57 to i32
  %conv6.i = sub i32 %55, %58
  %call7.i59 = call i32 @jiffies_to_clock_t(i32 noundef %conv6.i) #9
  %conv8.i = sext i32 %call7.i59 to i64
  %59 = ptrtoint ptr %16 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 %conv8.i, ptr %16, align 8
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 7, i32 3
  %60 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %60)
  %61 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %61)
  %tobool.not.i60 = icmp eq i64 %61, 0
  br i1 %tobool.not.i60, label %if.end17.tcf_tm_dump.exit_crit_edge, label %cond.true.i

if.end17.tcf_tm_dump.exit_crit_edge:              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_tm_dump.exit

cond.true.i:                                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %63 = trunc i64 %61 to i32
  %conv13.i = sub i32 %62, %63
  %call14.i = call i32 @jiffies_to_clock_t(i32 noundef %conv13.i) #9
  br label %tcf_tm_dump.exit

tcf_tm_dump.exit:                                 ; preds = %cond.true.i, %if.end17.tcf_tm_dump.exit_crit_edge
  %cond.i = phi i32 [ %call14.i, %cond.true.i ], [ 0, %if.end17.tcf_tm_dump.exit_crit_edge ]
  %conv15.i = sext i32 %cond.i to i64
  %64 = ptrtoint ptr %18 to i32
  call void @__asan_store8_noabort(i32 %64)
  store i64 %conv15.i, ptr %18, align 8
  %expires.i = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 7, i32 2
  %65 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %expires.i, align 8
  %conv17.i = trunc i64 %66 to i32
  %call18.i = call i32 @jiffies_to_clock_t(i32 noundef %conv17.i) #9
  %conv19.i = sext i32 %call18.i to i64
  %67 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %67)
  store i64 %conv19.i, ptr %17, align 8
  %call19 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 32, ptr noundef nonnull %tm, i32 noundef 7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %tcf_tm_dump.exit.nla_put_failure_crit_edge

tcf_tm_dump.exit.nla_put_failure_crit_edge:       ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end22:                                         ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #9
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %68 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %tcf_tm_dump.exit.nla_put_failure_crit_edge, %if.end.i53.nla_put_failure_crit_edge, %if.else.nla_put_failure_crit_edge, %if.end6.i.nla_put_failure_crit_edge, %if.end.i.nla_put_failure_crit_edge, %land.lhs.true.i.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #9
  %tobool.not.i61 = icmp eq ptr %1, null
  br i1 %tobool.not.i61, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %70 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %data.i, align 4
  %cmp.i62 = icmp ugt ptr %71, %1
  br i1 %cmp.i62, label %do.end.i, label %if.then.i.if.end.i63_crit_edge, !prof !58

if.then.i.if.end.i63_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i63

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i63

if.end.i63:                                       ; preds = %do.end.i, %if.then.i.if.end.i63_crit_edge
  %72 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %73 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i63, %nla_put_failure.cleanup_crit_edge, %if.end22
  %retval.0 = phi i32 [ %69, %if.end22 ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i63 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tm) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %opt) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_bpf_cleanup(ptr nocapture noundef readonly %act) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %bpf_ops.i.i = getelementptr inbounds %struct.tcf_bpf, ptr %act, i32 0, i32 3
  %0 = ptrtoint ptr %bpf_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpf_ops.i.i, align 8
  %filter.i = getelementptr inbounds %struct.tcf_bpf, ptr %act, i32 0, i32 1
  %2 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %filter.i, align 16
  %bpf_name.i = getelementptr inbounds %struct.tcf_bpf, ptr %act, i32 0, i32 4
  %4 = ptrtoint ptr %bpf_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bpf_name.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.tcf_bpf_cfg_cleanup.exit_crit_edge, label %if.then.i

entry.tcf_bpf_cfg_cleanup.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_bpf_cfg_cleanup.exit

if.then.i:                                        ; preds = %entry
  %tobool.not.i.i.not = icmp eq ptr %1, null
  br i1 %tobool.not.i.i.not, label %if.then3.i, label %if.else.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bpf_prog_put(ptr noundef nonnull %3) #9
  br label %tcf_bpf_cfg_cleanup.exit

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bpf_prog_destroy(ptr noundef nonnull %3) #9
  br label %tcf_bpf_cfg_cleanup.exit

tcf_bpf_cfg_cleanup.exit:                         ; preds = %if.else.i, %if.then3.i, %entry.tcf_bpf_cfg_cleanup.exit_crit_edge
  tail call void @kfree(ptr noundef %1) #9
  tail call void @kfree(ptr noundef %5) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_bpf_search(ptr noundef %net, ptr noundef %a, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bpf_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_idr_search(ptr noundef %call, ptr noundef %a, i32 noundef %index) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_bpf_init(ptr noundef %net, ptr noundef %nla, ptr noundef %est, ptr noundef %act, ptr noundef %tp, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [10 x ptr], align 4
  %goto_ch = alloca ptr, align 4
  %cfg = alloca %struct.tcf_bpf_cfg, align 4
  %old = alloca %struct.tcf_bpf_cfg, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bpf_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %and = and i32 %flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tb) #9
  %1 = call ptr @memset(ptr %tb, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goto_ch) #9
  %2 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %goto_ch, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %cfg) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %old) #9
  %3 = call ptr @memset(ptr %old, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #9
  %tobool1.not = icmp eq ptr %nla, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %4 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 9, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @act_bpf_policy, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool5.not = icmp eq ptr %7, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
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
  %call12 = call i32 @tcf_idr_check_alloc(ptr noundef %call, ptr noundef nonnull %index, ptr noundef %act, i32 noundef %and.lobit) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end7
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %call17 = call i32 @tcf_idr_create(ptr noundef %call, i32 noundef %12, ptr noundef %est, ptr noundef %act, ptr noundef nonnull @act_bpf_ops, i32 noundef %and.lobit, i1 noundef zeroext true, i32 noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.then20, label %if.then14.if.end36_crit_edge

if.then14.if.end36_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then20:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #11
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %14) #9
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp22 = icmp slt i32 %call12, 1
  %brmerge185 = or i1 %tobool, %cmp22
  %call12.mux = select i1 %cmp22, i32 %call12, i32 0
  br i1 %brmerge185, label %if.else.cleanup_crit_edge, label %if.end27

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.else
  %and28 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.then30, label %if.end27.if.end36_crit_edge

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then30:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %act, align 4
  %call32 = call i32 @tcf_idr_release(ptr noundef %16, i1 noundef zeroext false) #9
  br label %cleanup

if.end36:                                         ; preds = %if.end27.if.end36_crit_edge, %if.then14.if.end36_crit_edge
  %res.0 = phi i32 [ 0, %if.end27.if.end36_crit_edge ], [ 1, %if.then14.if.end36_crit_edge ]
  %action = getelementptr i8, ptr %7, i32 12
  %17 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %action, align 4
  %call37 = call i32 @tcf_action_check_ctrlact(i32 noundef %18, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end36.release_idr_crit_edge, label %if.end41

if.end36.release_idr_crit_edge:                   ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_idr

if.end41:                                         ; preds = %if.end36
  %arrayidx42 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 3
  %19 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx42, align 4
  %tobool43.not = icmp eq ptr %20, null
  br i1 %tobool43.not, label %if.end41.land.end_crit_edge, label %land.rhs

if.end41.land.end_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.end

land.rhs:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx44 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx44, align 4
  %tobool45 = icmp ne ptr %22, null
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.end41.land.end_crit_edge
  %23 = phi i1 [ false, %if.end41.land.end_crit_edge ], [ %tobool45, %land.rhs ]
  %arrayidx47 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 5
  %24 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx47, align 4
  %tobool48.not = icmp eq ptr %25, null
  %tobool48.not.not = xor i1 %tobool48.not, true
  %brmerge = select i1 %23, i1 true, i1 %tobool48.not.not
  %.not = xor i1 %23, true
  %brmerge184 = select i1 %.not, i1 true, i1 %tobool48.not
  %or.cond = select i1 %brmerge, i1 %brmerge184, i1 false
  br i1 %or.cond, label %if.end58, label %land.end.put_chain_crit_edge

land.end.put_chain_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_chain

if.end58:                                         ; preds = %land.end
  %26 = call ptr @memset(ptr %cfg, i32 0, i32 16)
  br i1 %23, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %call62 = call fastcc i32 @tcf_bpf_init_from_ops(ptr noundef nonnull %tb, ptr noundef nonnull %cfg)
  br label %cond.end

cond.false:                                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #11
  %call64 = call fastcc i32 @tcf_bpf_init_from_efd(ptr noundef nonnull %tb, ptr noundef nonnull %cfg)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call62, %cond.true ], [ %call64, %cond.false ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %cmp65 = icmp slt i32 %cond, 0
  br i1 %cmp65, label %cond.end.put_chain_crit_edge, label %if.end68

cond.end.put_chain_crit_edge:                     ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_chain

if.end68:                                         ; preds = %cond.end
  %27 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %act, align 4
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %28, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #9
  br i1 %tobool13.not, label %if.end68.if.end72_crit_edge, label %if.then71

if.end68.if.end72_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  %bpf_ops.i.i = getelementptr inbounds %struct.tcf_bpf, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %bpf_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %bpf_ops.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %30, null
  %is_ebpf.i = getelementptr inbounds %struct.tcf_bpf_cfg, ptr %old, i32 0, i32 4
  %frombool.i = zext i1 %tobool.not.i.i to i8
  %31 = ptrtoint ptr %is_ebpf.i to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %frombool.i, ptr %is_ebpf.i, align 2
  %filter.i = getelementptr inbounds %struct.tcf_bpf, ptr %28, i32 0, i32 1
  %32 = ptrtoint ptr %filter.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %filter.i, align 16
  %34 = ptrtoint ptr %old to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %33, ptr %old, align 4
  %bpf_ops2.i = getelementptr inbounds %struct.tcf_bpf_cfg, ptr %old, i32 0, i32 1
  %35 = ptrtoint ptr %bpf_ops2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %30, ptr %bpf_ops2.i, align 4
  %bpf_name.i = getelementptr inbounds %struct.tcf_bpf, ptr %28, i32 0, i32 4
  %36 = ptrtoint ptr %bpf_name.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bpf_name.i, align 4
  %bpf_name3.i = getelementptr inbounds %struct.tcf_bpf_cfg, ptr %old, i32 0, i32 2
  %38 = ptrtoint ptr %bpf_name3.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %37, ptr %bpf_name3.i, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then71, %if.end68.if.end72_crit_edge
  %bpf_ops = getelementptr inbounds %struct.tcf_bpf_cfg, ptr %cfg, i32 0, i32 1
  %39 = ptrtoint ptr %bpf_ops to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bpf_ops, align 4
  %bpf_ops73 = getelementptr inbounds %struct.tcf_bpf, ptr %28, i32 0, i32 3
  %41 = ptrtoint ptr %bpf_ops73 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %40, ptr %bpf_ops73, align 8
  %bpf_name = getelementptr inbounds %struct.tcf_bpf_cfg, ptr %cfg, i32 0, i32 2
  %42 = ptrtoint ptr %bpf_name to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %bpf_name, align 4
  %bpf_name74 = getelementptr inbounds %struct.tcf_bpf, ptr %28, i32 0, i32 4
  %44 = ptrtoint ptr %bpf_name74 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %43, ptr %bpf_name74, align 4
  %bpf_num_ops = getelementptr inbounds %struct.tcf_bpf_cfg, ptr %cfg, i32 0, i32 3
  %45 = ptrtoint ptr %bpf_num_ops to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %bpf_num_ops, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool75.not = icmp eq i16 %46, 0
  br i1 %tobool75.not, label %if.end72.if.end78_crit_edge, label %if.then76

if.end72.if.end78_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end78

if.then76:                                        ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  %47 = getelementptr inbounds %struct.tcf_bpf, ptr %28, i32 0, i32 2
  %48 = ptrtoint ptr %47 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %46, ptr %47, align 4
  br label %if.end78

if.end78:                                         ; preds = %if.then76, %if.end72.if.end78_crit_edge
  %49 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %act, align 4
  %51 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %action, align 4
  %53 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %goto_ch, align 4
  %call80 = call ptr @tcf_action_set_ctrlact(ptr noundef %50, i32 noundef %52, ptr noundef %54) #9
  %55 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %call80, ptr %goto_ch, align 4
  %56 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %cfg, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  %filter107 = getelementptr inbounds %struct.tcf_bpf, ptr %28, i32 0, i32 1
  %58 = ptrtoint ptr %filter107 to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %57, ptr %filter107, align 16
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #9
  %59 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %goto_ch, align 4
  %tobool121.not = icmp eq ptr %60, null
  br i1 %tobool121.not, label %if.end78.if.end123_crit_edge, label %if.then122

if.end78.if.end123_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end123

if.then122:                                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #11
  call void @tcf_chain_put_by_act(ptr noundef nonnull %60) #9
  br label %if.end123

if.end123:                                        ; preds = %if.then122, %if.end78.if.end123_crit_edge
  br i1 %tobool13.not, label %if.end123.cleanup_crit_edge, label %if.then126

if.end123.cleanup_crit_edge:                      ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then126:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #11
  call void @synchronize_rcu() #9
  call fastcc void @tcf_bpf_cfg_cleanup(ptr noundef nonnull %old)
  br label %cleanup

put_chain:                                        ; preds = %cond.end.put_chain_crit_edge, %land.end.put_chain_crit_edge
  %ret.0 = phi i32 [ %cond, %cond.end.put_chain_crit_edge ], [ -22, %land.end.put_chain_crit_edge ]
  %61 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %goto_ch, align 4
  %tobool128.not = icmp eq ptr %62, null
  br i1 %tobool128.not, label %put_chain.release_idr_crit_edge, label %if.then129

put_chain.release_idr_crit_edge:                  ; preds = %put_chain
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_idr

if.then129:                                       ; preds = %put_chain
  call void @__sanitizer_cov_trace_pc() #11
  call void @tcf_chain_put_by_act(ptr noundef nonnull %62) #9
  br label %release_idr

release_idr:                                      ; preds = %if.then129, %put_chain.release_idr_crit_edge, %if.end36.release_idr_crit_edge
  %ret.1 = phi i32 [ %call37, %if.end36.release_idr_crit_edge ], [ %ret.0, %if.then129 ], [ %ret.0, %put_chain.release_idr_crit_edge ]
  %63 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %act, align 4
  %call132 = call i32 @tcf_idr_release(ptr noundef %64, i1 noundef zeroext %tobool) #9
  br label %cleanup

cleanup:                                          ; preds = %release_idr, %if.then126, %if.end123.cleanup_crit_edge, %if.then30, %if.else.cleanup_crit_edge, %if.then20, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %release_idr ], [ -17, %if.then30 ], [ %call17, %if.then20 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call12.mux, %if.else.cleanup_crit_edge ], [ %res.0, %if.then126 ], [ %res.0, %if.end123.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %old) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %cfg) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goto_ch) #9
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tb) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_bpf_walker(ptr noundef %net, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bpf_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_generic_walker(ptr noundef %call, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #9
  ret i32 %call1
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sock_pfree(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_clock_t(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcf_bpf_cfg_cleanup(ptr nocapture noundef readonly %cfg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4

if.then:                                          ; preds = %entry
  %is_ebpf = getelementptr inbounds %struct.tcf_bpf_cfg, ptr %cfg, i32 0, i32 4
  %2 = ptrtoint ptr %is_ebpf to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %is_ebpf, align 2, !range !72
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool2.not = icmp eq i8 %3, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bpf_prog_put(ptr noundef nonnull %1) #9
  br label %if.end4

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bpf_prog_destroy(ptr noundef nonnull %1) #9
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then3, %entry.if.end4_crit_edge
  %bpf_ops = getelementptr inbounds %struct.tcf_bpf_cfg, ptr %cfg, i32 0, i32 1
  %4 = ptrtoint ptr %bpf_ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bpf_ops, align 4
  tail call void @kfree(ptr noundef %5) #9
  %bpf_name = getelementptr inbounds %struct.tcf_bpf_cfg, ptr %cfg, i32 0, i32 2
  %6 = ptrtoint ptr %bpf_name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bpf_name, align 4
  tail call void @kfree(ptr noundef %7) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !73
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #9
  %call.i = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 696, ptr noundef nonnull @.str.7) #9
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 45, ptr noundef nonnull @.str.1) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #9
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 724, ptr noundef nonnull @.str.8) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  %8 = tail call i32 @llvm.read_register.i32(metadata !48) #9
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #9
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #9
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_search(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #9
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcf_bpf_init_from_ops(ptr nocapture noundef readonly %tb, ptr nocapture noundef writeonly %cfg) unnamed_addr #2 align 64 {
entry:
  %fprog_tmp = alloca %struct.sock_fprog_kern, align 8
  %fp = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fprog_tmp) #9
  %0 = ptrtoint ptr %fprog_tmp to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 -1, ptr %fprog_tmp, align 8, !annotation !75
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fp) #9
  %1 = ptrtoint ptr %fp to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %fp, align 4, !annotation !75
  %arrayidx = getelementptr ptr, ptr %tb, i32 3
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %add.ptr.i.i, align 2
  %6 = add i16 %5, -4097
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4096, i16 %6)
  %7 = icmp ult i16 %6, -4096
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %mul = shl nuw i16 %5, 3
  %conv7 = zext i16 %mul to i32
  %arrayidx8 = getelementptr ptr, ptr %tb, i32 4
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx8, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %9, align 2
  %conv.i = zext i16 %11 to i32
  %sub.i = add nsw i32 %conv.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv7)
  %cmp10.not = icmp eq i32 %sub.i, %conv7
  br i1 %cmp10.not, label %if.end13, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %call17 = tail call ptr @kmemdup(ptr noundef %add.ptr.i, i32 noundef %conv7, i32 noundef 3264) #9
  %cmp18 = icmp eq ptr %call17, null
  br i1 %cmp18, label %if.end13.cleanup_crit_edge, label %if.end21

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end13
  %12 = ptrtoint ptr %fprog_tmp to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %5, ptr %fprog_tmp, align 8
  %filter = getelementptr inbounds %struct.sock_fprog_kern, ptr %fprog_tmp, i32 0, i32 1
  %13 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %filter, align 4
  %call22 = call i32 @bpf_prog_create(ptr noundef nonnull %fp, ptr noundef nonnull %fprog_tmp) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then25, label %if.end26

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call17) #9
  br label %cleanup

if.end26:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  %bpf_ops27 = getelementptr inbounds %struct.tcf_bpf_cfg, ptr %cfg, i32 0, i32 1
  %14 = ptrtoint ptr %bpf_ops27 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call17, ptr %bpf_ops27, align 4
  %bpf_num_ops28 = getelementptr inbounds %struct.tcf_bpf_cfg, ptr %cfg, i32 0, i32 3
  %15 = ptrtoint ptr %bpf_num_ops28 to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %5, ptr %bpf_num_ops28, align 4
  %16 = ptrtoint ptr %fp to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fp, align 4
  %18 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %cfg, align 4
  %is_ebpf = getelementptr inbounds %struct.tcf_bpf_cfg, ptr %cfg, i32 0, i32 4
  %19 = ptrtoint ptr %is_ebpf to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %is_ebpf, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then25, %if.end13.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call22, %if.then25 ], [ 0, %if.end26 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -12, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fp) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fprog_tmp) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcf_bpf_init_from_efd(ptr nocapture noundef readonly %tb, ptr nocapture noundef writeonly %cfg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %call.i = tail call ptr @bpf_prog_get_type_dev(i32 noundef %3, i32 noundef 4, i1 noundef zeroext false) #9
  %cmp.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %call.i to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 6
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx4, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end11_crit_edge, label %if.then5

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then5:                                         ; preds = %if.end
  %add.ptr.i.i22 = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %6, align 2
  %conv.i.i = zext i16 %8 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = tail call ptr @kmemdup(ptr noundef %add.ptr.i.i22, i32 noundef %sub.i.i, i32 noundef 3264) #9
  %tobool8.not = icmp eq ptr %call2.i, null
  br i1 %tobool8.not, label %if.then9, label %if.then5.if.end11_crit_edge

if.then5.if.end11_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @bpf_prog_put(ptr noundef %call.i) #9
  br label %cleanup

if.end11:                                         ; preds = %if.then5.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %name.0 = phi ptr [ %call2.i, %if.then5.if.end11_crit_edge ], [ null, %if.end.if.end11_crit_edge ]
  %bpf_name = getelementptr inbounds %struct.tcf_bpf_cfg, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %bpf_name to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %name.0, ptr %bpf_name, align 4
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %cfg, align 4
  %is_ebpf = getelementptr inbounds %struct.tcf_bpf_cfg, ptr %cfg, i32 0, i32 4
  %11 = ptrtoint ptr %is_ebpf to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %is_ebpf, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.then9, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %if.end11 ], [ -12, %if.then9 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcf_action_set_ctrlact(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_chain_put_by_act(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_get_type_dev(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_generic_walker(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @bpf_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bpf_net_id, align 4
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %tc_action_net_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ops2.i = getelementptr inbounds %struct.tc_action_net, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @act_bpf_ops, ptr %ops2.i, align 4
  %net4.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %net4.i, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.9, ptr noundef nonnull @tc_action_net_init.__key) #9
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %action_idr.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %action_idr.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
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
define internal void @bpf_exit_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @bpf_net_id, align 4
  tail call void @rtnl_lock() #9
  %1 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn12.i = load ptr, ptr %net_list, align 4
  %cmp.not13.i = icmp eq ptr %.pn12.i, %net_list
  br i1 %cmp.not13.i, label %entry.tc_action_net_exit.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.tc_action_net_exit.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tc_action_net_exit.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn14.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn12.i, %entry.for.body.i_crit_edge ]
  %net.0.i = getelementptr i8, ptr %.pn14.i, i32 -116
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net.0.i, i32 noundef %0) #9
  %ops.i = getelementptr inbounds %struct.tc_action_net, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void @tcf_idrinfo_destroy(ptr noundef %3, ptr noundef %5) #9
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  tail call void @kfree(ptr noundef %7) #9
  %8 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %net_list
  br i1 %cmp.not.i, label %for.body.i.tc_action_net_exit.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

for.body.i.tc_action_net_exit.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tc_action_net_exit.exit

tc_action_net_exit.exit:                          ; preds = %for.body.i.tc_action_net_exit.exit_crit_edge, %entry.tc_action_net_exit.exit_crit_edge
  tail call void @rtnl_unlock() #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin nounwind }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !19, !20, !22, !24, !26, !28, !29, !31, !32, !33, !35, !36, !38, !40, !42, !44, !45, !47}
!llvm.named.register.sp = !{!48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__initcall__kmod_act_bpf__519_450_bpf_init_module6, !1, !"__initcall__kmod_act_bpf__519_450_bpf_init_module6", i1 false, i1 false}
!1 = !{!"../net/sched/act_bpf.c", i32 450, i32 1}
!2 = !{ptr @__exitcall_bpf_cleanup_module, !3, !"__exitcall_bpf_cleanup_module", i1 false, i1 false}
!3 = !{!"../net/sched/act_bpf.c", i32 451, i32 1}
!4 = !{ptr @__UNIQUE_ID_author520, !5, !"__UNIQUE_ID_author520", i1 false, i1 false}
!5 = !{!"../net/sched/act_bpf.c", i32 453, i32 1}
!6 = !{ptr @__UNIQUE_ID_description521, !7, !"__UNIQUE_ID_description521", i1 false, i1 false}
!7 = !{!"../net/sched/act_bpf.c", i32 454, i32 1}
!8 = !{ptr @__UNIQUE_ID_file522, !9, !"__UNIQUE_ID_file522", i1 false, i1 false}
!9 = !{!"../net/sched/act_bpf.c", i32 455, i32 1}
!10 = !{ptr @__UNIQUE_ID_license523, !9, !"__UNIQUE_ID_license523", i1 false, i1 false}
!11 = !{ptr @act_bpf_ops, !12, !"act_bpf_ops", i1 false, i1 false}
!12 = !{!"../net/sched/act_bpf.c", i32 408, i32 29}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/sched/act_bpf.c", i32 46, i32 11}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/filter.h", i32 613, i32 2}
!22 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/net/netlink.h", i32 991, i32 3}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/sched/act_bpf.c", i32 270, i32 16}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!35 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @bpf_net_id, !37, !"bpf_net_id", i1 false, i1 false}
!37 = !{!"../net/sched/act_bpf.c", i32 32, i32 21}
!38 = !{ptr @act_bpf_policy, !39, !"act_bpf_policy", i1 false, i1 false}
!39 = !{!"../net/sched/act_bpf.c", i32 174, i32 32}
!40 = !{ptr @bpf_net_ops, !41, !"bpf_net_ops", i1 false, i1 false}
!41 = !{!"../net/sched/act_bpf.c", i32 433, i32 33}
!42 = !{ptr @tc_action_net_init.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/net/act_api.h", i32 156, i32 2}
!44 = !{ptr @.str.9, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @xa_init_flags.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!47 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!48 = !{!"sp"}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 1, i32 2000}
!59 = !{i64 2149872792}
!60 = !{i64 2149877724}
!61 = !{i64 2149899436}
!62 = !{i64 2149904328}
!63 = !{!"branch_weights", i32 2000, i32 1}
!64 = !{i64 2149980785}
!65 = !{i64 2149981110}
!66 = !{i64 2148962011, i64 2148962016, i64 2148962029, i64 2148962073, i64 2148962107, i64 2148962128}
!67 = !{i64 752334, i64 752395}
!68 = !{i64 755066}
!69 = !{i64 755351}
!70 = !{i64 2154573039, i64 2154573527, i64 2154573076, i64 2154573132, i64 2154573166, i64 2154573190, i64 2154573231, i64 2154573252, i64 2154573280, i64 2154573314}
!71 = !{i64 2157898500}
!72 = !{i8 0, i8 2}
!73 = !{i64 2149364793}
!74 = !{i64 2149365059}
!75 = !{!"auto-init"}
