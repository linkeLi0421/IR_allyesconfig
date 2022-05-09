; ModuleID = '/llk/IR_all_yes/net/sched/act_csum.c_pt.bc'
source_filename = "../net/sched/act_csum.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tc_action_ops = type { %struct.list_head, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.skb_checksum_ops = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.77 }
%union.anon.77 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tcf_csum = type { %struct.tc_action, ptr, [12 x i8] }
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.icmphdr = type { i8, i8, i16, %union.anon.203 }
%union.anon.203 = type { i32 }
%struct.igmphdr = type { i8, i8, i16, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.sctphdr = type { i16, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.72 }
%union.anon.72 = type { [4 x i32] }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.icmp6hdr = type { i8, i8, i16, %union.anon.206 }
%union.anon.206 = type { [1 x i32] }
%struct.vlan_hdr = type { i16, i16 }
%struct.tc_csum = type { i32, i32, i32, i32, i32, i32 }
%struct.tcf_csum_params = type { i32, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.207, ptr }
%union.anon.207 = type { %struct.anon.212 }
%struct.anon.212 = type { i32, i64, i64, i64, i32 }
%struct.flow_offload_action = type { ptr, i32, i32, i32, %struct.flow_stats, %struct.flow_action }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.udphdr = type { i16, i16, i16, i16 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.136, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.136 = type { %struct.hlist_head, %struct.spinlock, i32 }
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

@__UNIQUE_ID_description679 = internal constant [47 x i8] c"act_csum.description=Checksum updating actions\00", section ".modinfo", align 1
@__UNIQUE_ID_file680 = internal constant [33 x i8] c"act_csum.file=net/sched/act_csum\00", section ".modinfo", align 1
@__UNIQUE_ID_license681 = internal constant [21 x i8] c"act_csum.license=GPL\00", section ".modinfo", align 1
@act_csum_ops = internal global { %struct.tc_action_ops, [48 x i8] } { %struct.tc_action_ops { %struct.list_head zeroinitializer, [16 x i8] c"csum\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, i32 288, ptr null, ptr @tcf_csum_act, ptr @tcf_csum_dump, ptr @tcf_csum_cleanup, ptr @tcf_csum_search, ptr @tcf_csum_init, ptr @tcf_csum_walker, ptr null, ptr @tcf_csum_get_fill_size, ptr null, ptr null, ptr @tcf_csum_offload_act_setup }, [48 x i8] zeroinitializer }, align 32
@csum_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @csum_init_net, ptr null, ptr null, ptr @csum_exit_net, ptr @csum_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_act_csum__682_763_csum_init_module6 = internal global ptr @csum_init_module, section ".initcall6.init", align 4
@__exitcall_csum_cleanup_module = internal global ptr @csum_cleanup_module, section ".exitcall.exit", align 4
@tcf_csum_act.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/sched/act_csum.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@sctp_csum_ops = internal constant { %struct.skb_checksum_ops, [24 x i8] } { %struct.skb_checksum_ops { ptr @sctp_csum_update, ptr @sctp_csum_combine }, [24 x i8] zeroinitializer }, align 32
@tcf_csum_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@csum_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@csum_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 24, %union.anon.77 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [32 x i8] zeroinitializer }, align 32
@tcf_csum_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tcf_csum_update_flags.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/net/tc_act/tc_csum.h\00", [35 x i8] zeroinitializer }, align 32
@tc_action_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tn->idrinfo->lock\00", [45 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 16, i64 2048, i64 33024, i64 34525, i64 34984]
@__sancov_gen_cov_switch_values.13 = internal global [8 x i64] [i64 6, i64 8, i64 1, i64 2, i64 6, i64 17, i64 132, i64 136]
@__sancov_gen_cov_switch_values.14 = internal global [10 x i64] [i64 8, i64 8, i64 0, i64 6, i64 17, i64 43, i64 58, i64 60, i64 132, i64 136]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 194]
@___asan_gen_.16 = private unnamed_addr constant [13 x i8] c"act_csum_ops\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 716, i32 29 }
@___asan_gen_.19 = private unnamed_addr constant [13 x i8] c"csum_net_ops\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 743, i32 33 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 578, i32 11 }
@___asan_gen_.29 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 271, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [14 x i8] c"sctp_csum_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [31 x i8] c"../include/net/sctp/checksum.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 46, i32 38 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 645, i32 11 }
@___asan_gen_.38 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 991, i32 3 }
@___asan_gen_.40 = private unnamed_addr constant [12 x i8] c"csum_net_id\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 40, i32 21 }
@___asan_gen_.44 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 45, i32 7 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 695, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 723, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [12 x i8] c"csum_policy\00", align 1
@___asan_gen_.56 = private constant [24 x i8] c"../net/sched/act_csum.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 36, i32 32 }
@___asan_gen_.59 = private unnamed_addr constant [32 x i8] c"../include/net/tc_act/tc_csum.h\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.59, i32 35, i32 17 }
@___asan_gen_.65 = private unnamed_addr constant [25 x i8] c"../include/net/act_api.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 156, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.71 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.71, i32 378, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_description679, ptr @__UNIQUE_ID_file680, ptr @__UNIQUE_ID_license681, ptr @__exitcall_csum_cleanup_module, ptr @__initcall__kmod_act_csum__682_763_csum_init_module6, ptr @csum_cleanup_module, ptr @act_csum_ops, ptr @csum_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @sctp_csum_ops, ptr @.str.4, ptr @.str.5, ptr @csum_net_id, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @csum_policy, ptr @.str.10, ptr @tc_action_net_init.__key, ptr @.str.11, ptr @xa_init_flags.__key, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_csum_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csum_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_csum_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csum_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @csum_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_action_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @csum_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_csum_ops, ptr noundef nonnull @csum_net_ops) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_unregister_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @csum_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_register_action(ptr noundef nonnull @act_csum_ops, ptr noundef nonnull @csum_net_ops) #12
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_csum_act(ptr noundef %skb, ptr noundef %a, ptr nocapture noundef readnone %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %params1 = getelementptr inbounds %struct.tcf_csum, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %params1, align 16
  %call = tail call i32 @rcu_read_lock_bh_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b62 = load i1, ptr @tcf_csum_act.__warned, align 1
  br i1 %.b62, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcf_csum_act.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 578, ptr noundef nonnull @.str.1) #12
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %entry.do.end8_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %2 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %3 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %lastuse.i, align 8
  %conv.i = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_cmp8(i64 %4, i64 %conv.i)
  %cmp.not.i = icmp eq i64 %4, %conv.i
  br i1 %cmp.not.i, label %do.end8.if.end.i_crit_edge, label %if.then.i

do.end8.if.end.i_crit_edge:                       ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv.i, ptr %lastuse.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %do.end8.if.end.i_crit_edge
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %6 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %6)
  %7 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %7)
  %tobool.not.i = icmp eq i64 %7, 0
  br i1 %tobool.not.i, label %if.then7.i, label %if.end.i.tcf_lastuse_update.exit_crit_edge, !prof !66

if.end.i.tcf_lastuse_update.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_lastuse_update.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %8 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_store8_noabort(i32 %8)
  store i64 %conv.i, ptr %firstuse.i, align 8
  br label %tcf_lastuse_update.exit

tcf_lastuse_update.exit:                          ; preds = %if.then7.i, %if.end.i.tcf_lastuse_update.exit_crit_edge
  %cpu_bstats.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 13
  %9 = ptrtoint ptr %cpu_bstats.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_bstats.i, align 4
  %tobool.not.i63 = icmp eq ptr %10, null
  br i1 %tobool.not.i63, label %if.end.i64, label %do.body.i, !prof !66

do.body.i:                                        ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, %11
  %18 = inttoptr i32 %add.i to ptr
  tail call fastcc void @bstats_update(ptr noundef %18, ptr noundef %skb) #12
  br label %tcf_action_update_bstats.exit

if.end.i64:                                       ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #14
  %tcfa_lock.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %tcfa_lock.i) #12
  %tcfa_bstats.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8
  tail call fastcc void @bstats_update(ptr noundef %tcfa_bstats.i, ptr noundef %skb) #12
  tail call void @_raw_spin_unlock(ptr noundef %tcfa_lock.i) #12
  br label %tcf_action_update_bstats.exit

tcf_action_update_bstats.exit:                    ; preds = %if.end.i64, %do.body.i
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %19 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %tcfa_action, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp = icmp eq i32 %20, 2
  br i1 %cmp, label %tcf_action_update_bstats.exit.drop_crit_edge, label %if.end19, !prof !66

tcf_action_update_bstats.exit.drop_crit_edge:     ; preds = %tcf_action_update_bstats.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end19:                                         ; preds = %tcf_action_update_bstats.exit
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %vlan_present.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %23 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %23, i32 4)
  %bf.load.i = load i32, ptr %vlan_present.i, align 2
  %vlan_proto.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.load.i)
  %tobool1.not2.i = icmp slt i32 %bf.load.i, 0
  %cond.in.in.i = select i1 %tobool1.not2.i, ptr %vlan_proto.i, ptr %protocol.i
  %24 = ptrtoint ptr %cond.in.in.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %cond.in1.i = load i16, ptr %cond.in.in.i, align 8
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  br label %again.outer

again.outer:                                      ; preds = %if.else, %if.end19
  %protocol.0.ph = phi i16 [ %249, %if.else ], [ %cond.in1.i, %if.end19 ]
  %vlan_hdr_count.0.ph = phi i32 [ %inc, %if.else ], [ 0, %if.end19 ]
  %orig_vlan_tag_present.0.off0.ph = phi i1 [ %orig_vlan_tag_present.0.off0, %if.else ], [ false, %if.end19 ]
  br label %again

again:                                            ; preds = %if.then37, %again.outer
  %protocol.0 = phi i16 [ %245, %if.then37 ], [ %protocol.0.ph, %again.outer ]
  %orig_vlan_tag_present.0.off0 = phi i1 [ true, %if.then37 ], [ %orig_vlan_tag_present.0.off0.ph, %again.outer ]
  %25 = zext i16 %protocol.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values)
  switch i16 %protocol.0, label %again.out_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb26
    i16 -30552, label %again.sw.bb32_crit_edge
    i16 -32512, label %again.sw.bb32_crit_edge311
  ]

again.sw.bb32_crit_edge311:                       ; preds = %again
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb32

again.sw.bb32_crit_edge:                          ; preds = %again
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb32

again.out_crit_edge:                              ; preds = %again
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb:                                            ; preds = %again
  %26 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i, align 8
  %28 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %network_header.i, align 4
  %conv.i.i.i = zext i16 %29 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 %conv.i.i.i
  %30 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.i65 = add i32 %sub.ptr.sub.i.i, 20
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %32 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %34 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %33, %35
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i65, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ugt i32 %add.i65, %sub.i.i.i
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb.if.end.i67_crit_edge, !prof !66

sw.bb.if.end.i67_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i67

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %add.i65)
  %cmp3.i.i = icmp ult i32 %33, %add.i65
  br i1 %cmp3.i.i, label %if.end.i.i.drop_crit_edge, label %pskb_may_pull.exit.i, !prof !66

if.end.i.i.drop_crit_edge:                        ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add.i65, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #12
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.drop_crit_edge, label %pskb_may_pull.exit.i.if.end.i67_crit_edge

pskb_may_pull.exit.i.if.end.i67_crit_edge:        ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i67

pskb_may_pull.exit.i.drop_crit_edge:              ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end.i67:                                       ; preds = %pskb_may_pull.exit.i.if.end.i67_crit_edge, %sw.bb.if.end.i67_crit_edge
  %36 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %head.i, align 8
  %38 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %network_header.i, align 4
  %conv.i.i130.i = zext i16 %39 to i32
  %add.ptr.i.i131.i = getelementptr i8, ptr %37, i32 %conv.i.i130.i
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i131.i, i32 0, i32 4
  %40 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %frag_off.i, align 2
  %42 = and i16 %41, 8191
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %42)
  %tobool.not.i66 = icmp eq i16 %42, 0
  br i1 %tobool.not.i66, label %cond.end.i, label %if.end.i67.sw.epilog.i_crit_edge

if.end.i67.sw.epilog.i_crit_edge:                 ; preds = %if.end.i67
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

cond.end.i:                                       ; preds = %if.end.i67
  %protocol.i68 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i131.i, i32 0, i32 6
  %43 = ptrtoint ptr %protocol.i68 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %protocol.i68, align 1
  %45 = zext i8 %44 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %44, label %cond.end.i.sw.epilog.i_crit_edge [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb14.i
    i8 6, label %sw.bb29.i
    i8 17, label %sw.bb44.i
    i8 -120, label %sw.bb59.i
    i8 -124, label %sw.bb74.i
  ]

cond.end.i.sw.epilog.i_crit_edge:                 ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %cond.end.i
  %and4.i = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4.i)
  %tobool5.not.i = icmp eq i32 %and4.i, 0
  br i1 %tobool5.not.i, label %sw.bb.i.sw.epilog.i_crit_edge, label %if.then6.i

sw.bb.i.sw.epilog.i_crit_edge:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then6.i:                                       ; preds = %sw.bb.i
  %46 = ptrtoint ptr %add.ptr.i.i131.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %bf.load.i69 = load i8, ptr %add.ptr.i.i131.i, align 4
  %bf.clear.i = shl i8 %bf.load.i69, 2
  %47 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %47 to i32
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i131.i, i32 0, i32 2
  %48 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %tot_len.i, align 2
  %conv8.i = zext i16 %49 to i32
  %call.i.i = tail call fastcc ptr @tcf_csum_skb_nextlayer(ptr noundef %skb, i32 noundef %mul.i, i32 noundef %conv8.i, i32 noundef 8) #12
  %cmp.i.i = icmp eq ptr %call.i.i, null
  br i1 %cmp.i.i, label %if.then6.i.drop_crit_edge, label %tcf_csum_ipv4_icmp.exit.i

if.then6.i.drop_crit_edge:                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

tcf_csum_ipv4_icmp.exit.i:                        ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #14
  %checksum.i.i = getelementptr inbounds %struct.icmphdr, ptr %call.i.i, i32 0, i32 2
  %50 = ptrtoint ptr %checksum.i.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 0, ptr %checksum.i.i, align 2
  %sub.i132.i = sub nsw i32 %conv8.i, %mul.i
  %call1.i.i = tail call i32 @csum_partial(ptr noundef nonnull %call.i.i, i32 noundef %sub.i132.i, i32 noundef 0) #12
  %51 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %call1.i.i, ptr %51, align 8
  %53 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call1.i.i) #15, !srcloc !67
  %neg.i.i.i = xor i32 %53, -1
  %shr.i.i.i = lshr i32 %neg.i.i.i, 16
  %conv.i.i133.i = trunc i32 %shr.i.i.i to i16
  %54 = ptrtoint ptr %checksum.i.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %conv.i.i133.i, ptr %checksum.i.i, align 2
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %55 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %bf.clear.i.i = and i16 %bf.load.i.i, -1537
  store i16 %bf.clear.i.i, ptr %ip_summed.i.i, align 8
  br label %sw.epilog.i

sw.bb14.i:                                        ; preds = %cond.end.i
  %and15.i = and i32 %22, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15.i)
  %tobool16.not.i = icmp eq i32 %and15.i, 0
  br i1 %tobool16.not.i, label %sw.bb14.i.sw.epilog.i_crit_edge, label %if.then17.i

sw.bb14.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then17.i:                                      ; preds = %sw.bb14.i
  %56 = ptrtoint ptr %add.ptr.i.i131.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %bf.load18.i = load i8, ptr %add.ptr.i.i131.i, align 4
  %bf.clear19.i = shl i8 %bf.load18.i, 2
  %57 = and i8 %bf.clear19.i, 60
  %mul21.i = zext i8 %57 to i32
  %tot_len22.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i131.i, i32 0, i32 2
  %58 = ptrtoint ptr %tot_len22.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %tot_len22.i, align 2
  %conv23.i = zext i16 %59 to i32
  %call.i136.i = tail call fastcc ptr @tcf_csum_skb_nextlayer(ptr noundef %skb, i32 noundef %mul21.i, i32 noundef %conv23.i, i32 noundef 8) #12
  %cmp.i137.i = icmp eq ptr %call.i136.i, null
  br i1 %cmp.i137.i, label %if.then17.i.drop_crit_edge, label %tcf_csum_ipv4_igmp.exit.i

if.then17.i.drop_crit_edge:                       ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

tcf_csum_ipv4_igmp.exit.i:                        ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #14
  %csum.i.i = getelementptr inbounds %struct.igmphdr, ptr %call.i136.i, i32 0, i32 2
  %60 = ptrtoint ptr %csum.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 0, ptr %csum.i.i, align 2
  %sub.i138.i = sub nsw i32 %conv23.i, %mul21.i
  %call1.i139.i = tail call i32 @csum_partial(ptr noundef nonnull %call.i136.i, i32 noundef %sub.i138.i, i32 noundef 0) #12
  %61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call1.i139.i, ptr %61, align 8
  %63 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call1.i139.i) #15, !srcloc !67
  %neg.i.i140.i = xor i32 %63, -1
  %shr.i.i141.i = lshr i32 %neg.i.i140.i, 16
  %conv.i.i142.i = trunc i32 %shr.i.i141.i to i16
  %64 = ptrtoint ptr %csum.i.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 %conv.i.i142.i, ptr %csum.i.i, align 2
  %ip_summed.i143.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %65 = ptrtoint ptr %ip_summed.i143.i to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load.i144.i = load i16, ptr %ip_summed.i143.i, align 8
  %bf.clear.i145.i = and i16 %bf.load.i144.i, -1537
  store i16 %bf.clear.i145.i, ptr %ip_summed.i143.i, align 8
  br label %sw.epilog.i

sw.bb29.i:                                        ; preds = %cond.end.i
  %and30.i = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %sw.bb29.i.sw.epilog.i_crit_edge, label %if.then32.i

sw.bb29.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb29.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then32.i:                                      ; preds = %sw.bb29.i
  %66 = ptrtoint ptr %add.ptr.i.i131.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load33.i = load i8, ptr %add.ptr.i.i131.i, align 4
  %bf.clear34.i = shl i8 %bf.load33.i, 2
  %67 = and i8 %bf.clear34.i, 60
  %mul36.i = zext i8 %67 to i32
  %tot_len37.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i131.i, i32 0, i32 2
  %68 = ptrtoint ptr %tot_len37.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %tot_len37.i, align 2
  %conv38.i = zext i16 %69 to i32
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %70 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %end.i.i.i.i, align 4
  %gso_size.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %71, i32 0, i32 4
  %72 = ptrtoint ptr %gso_size.i.i.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %gso_size.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %73)
  %tobool.i.not.i.i = icmp eq i16 %73, 0
  br i1 %tobool.i.not.i.i, label %if.then32.i.if.end.i149.i_crit_edge, label %land.lhs.true.i.i

if.then32.i.if.end.i149.i_crit_edge:              ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i149.i

land.lhs.true.i.i:                                ; preds = %if.then32.i
  %gso_type.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %71, i32 0, i32 8
  %74 = ptrtoint ptr %gso_type.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %gso_type.i.i, align 8
  %and.i.i70 = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i70)
  %tobool.not.i.i = icmp eq i32 %and.i.i70, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.if.end.i149.i_crit_edge, label %land.lhs.true.i.i.sw.epilog.i_crit_edge

land.lhs.true.i.i.sw.epilog.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

land.lhs.true.i.i.if.end.i149.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i149.i

if.end.i149.i:                                    ; preds = %land.lhs.true.i.i.if.end.i149.i_crit_edge, %if.then32.i.if.end.i149.i_crit_edge
  %call2.i.i = tail call fastcc ptr @tcf_csum_skb_nextlayer(ptr noundef %skb, i32 noundef %mul36.i, i32 noundef %conv38.i, i32 noundef 20) #12
  %cmp.i148.i = icmp eq ptr %call2.i.i, null
  br i1 %cmp.i148.i, label %if.end.i149.i.drop_crit_edge, label %if.end4.i.i

if.end.i149.i.drop_crit_edge:                     ; preds = %if.end.i149.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end4.i.i:                                      ; preds = %if.end.i149.i
  call void @__sanitizer_cov_trace_pc() #14
  %76 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %head.i, align 8
  %78 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %network_header.i, align 4
  %check.i.i = getelementptr inbounds %struct.tcphdr, ptr %call2.i.i, i32 0, i32 6
  %80 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %80)
  store i16 0, ptr %check.i.i, align 4
  %sub.i150.i = sub nsw i32 %conv38.i, %mul36.i
  %call6.i.i = tail call i32 @csum_partial(ptr noundef nonnull %call2.i.i, i32 noundef %sub.i150.i, i32 noundef 0) #12
  %81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %call6.i.i, ptr %81, align 8
  %add.i.i.i.i.i = add nsw i32 %sub.i150.i, 6
  %conv.i.i.i.i = zext i16 %79 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %77, i32 %conv.i.i.i.i
  %daddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 9
  %83 = ptrtoint ptr %daddr.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %daddr.i.i, align 4
  %saddr.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i.i, i32 0, i32 8
  %85 = ptrtoint ptr %saddr.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %saddr.i.i, align 4
  %87 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %call6.i.i, i32 %84, i32 %86, i32 %add.i.i.i.i.i) #15, !srcloc !68
  %88 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %87) #15, !srcloc !67
  %neg.i.i.i.i.i = xor i32 %88, -1
  %shr.i.i.i.i.i = lshr i32 %neg.i.i.i.i.i, 16
  %conv.i2.i.i.i.i = trunc i32 %shr.i.i.i.i.i to i16
  %89 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %89)
  store i16 %conv.i2.i.i.i.i, ptr %check.i.i, align 4
  %ip_summed.i151.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %90 = ptrtoint ptr %ip_summed.i151.i to i32
  call void @__asan_load2_noabort(i32 %90)
  %bf.load.i152.i = load i16, ptr %ip_summed.i151.i, align 8
  %bf.clear.i153.i = and i16 %bf.load.i152.i, -1537
  store i16 %bf.clear.i153.i, ptr %ip_summed.i151.i, align 8
  br label %sw.epilog.i

sw.bb44.i:                                        ; preds = %cond.end.i
  %and45.i = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45.i)
  %tobool46.not.i = icmp eq i32 %and45.i, 0
  br i1 %tobool46.not.i, label %sw.bb44.i.sw.epilog.i_crit_edge, label %if.then47.i

sw.bb44.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb44.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then47.i:                                      ; preds = %sw.bb44.i
  %91 = ptrtoint ptr %add.ptr.i.i131.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %bf.load48.i = load i8, ptr %add.ptr.i.i131.i, align 4
  %bf.clear49.i = shl i8 %bf.load48.i, 2
  %92 = and i8 %bf.clear49.i, 60
  %mul51.i = zext i8 %92 to i32
  %tot_len52.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i131.i, i32 0, i32 2
  %93 = ptrtoint ptr %tot_len52.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %tot_len52.i, align 2
  %conv53.i = zext i16 %94 to i32
  %call54.i = tail call fastcc i32 @tcf_csum_ipv4_udp(ptr noundef %skb, i32 noundef %mul51.i, i32 noundef %conv53.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54.i)
  %tobool55.not.i = icmp eq i32 %call54.i, 0
  br i1 %tobool55.not.i, label %if.then47.i.drop_crit_edge, label %if.then47.i.sw.epilog.i_crit_edge

if.then47.i.sw.epilog.i_crit_edge:                ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then47.i.drop_crit_edge:                       ; preds = %if.then47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

sw.bb59.i:                                        ; preds = %cond.end.i
  %and60.i = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60.i)
  %tobool61.not.i = icmp eq i32 %and60.i, 0
  br i1 %tobool61.not.i, label %sw.bb59.i.sw.epilog.i_crit_edge, label %if.then62.i

sw.bb59.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then62.i:                                      ; preds = %sw.bb59.i
  %95 = ptrtoint ptr %add.ptr.i.i131.i to i32
  call void @__asan_load1_noabort(i32 %95)
  %bf.load63.i = load i8, ptr %add.ptr.i.i131.i, align 4
  %bf.clear64.i = shl i8 %bf.load63.i, 2
  %96 = and i8 %bf.clear64.i, 60
  %mul66.i = zext i8 %96 to i32
  %tot_len67.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i131.i, i32 0, i32 2
  %97 = ptrtoint ptr %tot_len67.i to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %tot_len67.i, align 2
  %conv68.i = zext i16 %98 to i32
  %call69.i = tail call fastcc i32 @tcf_csum_ipv4_udp(ptr noundef %skb, i32 noundef %mul66.i, i32 noundef %conv68.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69.i)
  %tobool70.not.i = icmp eq i32 %call69.i, 0
  br i1 %tobool70.not.i, label %if.then62.i.drop_crit_edge, label %if.then62.i.sw.epilog.i_crit_edge

if.then62.i.sw.epilog.i_crit_edge:                ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

if.then62.i.drop_crit_edge:                       ; preds = %if.then62.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

sw.bb74.i:                                        ; preds = %cond.end.i
  %and75.i = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75.i)
  %tobool76.not.i = icmp eq i32 %and75.i, 0
  br i1 %tobool76.not.i, label %sw.bb74.i.sw.epilog.i_crit_edge, label %land.lhs.true.i

sw.bb74.i.sw.epilog.i_crit_edge:                  ; preds = %sw.bb74.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

land.lhs.true.i:                                  ; preds = %sw.bb74.i
  %99 = ptrtoint ptr %add.ptr.i.i131.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %bf.load77.i = load i8, ptr %add.ptr.i.i131.i, align 4
  %bf.clear78.i = shl i8 %bf.load77.i, 2
  %100 = and i8 %bf.clear78.i, 60
  %mul80.i = zext i8 %100 to i32
  %tot_len81.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i131.i, i32 0, i32 2
  %101 = ptrtoint ptr %tot_len81.i to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %tot_len81.i, align 2
  %conv82.i = zext i16 %102 to i32
  %end.i.i.i155.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %103 = ptrtoint ptr %end.i.i.i155.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %end.i.i.i155.i, align 4
  %gso_size.i.i156.i = getelementptr inbounds %struct.skb_shared_info, ptr %104, i32 0, i32 4
  %105 = ptrtoint ptr %gso_size.i.i156.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %gso_size.i.i156.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %tobool.i.not.i157.i = icmp eq i16 %106, 0
  br i1 %tobool.i.not.i157.i, label %land.lhs.true.i.if.end.i161.i_crit_edge, label %land.lhs.true.i158.i

land.lhs.true.i.if.end.i161.i_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i161.i

land.lhs.true.i158.i:                             ; preds = %land.lhs.true.i
  %gso_type.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %104, i32 0, i32 8
  %107 = ptrtoint ptr %gso_type.i.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %gso_type.i.i.i, align 8
  %and.i.i.i = and i32 %108, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i19.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i19.not.i.i, label %land.lhs.true.i158.i.if.end.i161.i_crit_edge, label %land.lhs.true.i158.i.sw.epilog.i_crit_edge

land.lhs.true.i158.i.sw.epilog.i_crit_edge:       ; preds = %land.lhs.true.i158.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i

land.lhs.true.i158.i.if.end.i161.i_crit_edge:     ; preds = %land.lhs.true.i158.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i161.i

if.end.i161.i:                                    ; preds = %land.lhs.true.i158.i.if.end.i161.i_crit_edge, %land.lhs.true.i.if.end.i161.i_crit_edge
  %call2.i159.i = tail call fastcc ptr @tcf_csum_skb_nextlayer(ptr noundef %skb, i32 noundef %mul80.i, i32 noundef %conv82.i, i32 noundef 12) #12
  %tobool.not.i160.i = icmp eq ptr %call2.i159.i, null
  br i1 %tobool.not.i160.i, label %if.end.i161.i.drop_crit_edge, label %if.end4.i174.i

if.end.i161.i.drop_crit_edge:                     ; preds = %if.end.i161.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end4.i174.i:                                   ; preds = %if.end.i161.i
  call void @__sanitizer_cov_trace_pc() #14
  %109 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %head.i, align 8
  %111 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %network_header.i, align 4
  %conv.i.i.i164.i = zext i16 %112 to i32
  %add.ptr.i.i.i165.i = getelementptr i8, ptr %110, i32 %conv.i.i.i164.i
  %113 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %add.ptr.i.i.i165.i to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %114 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %add.i.i = add i32 %sub.ptr.sub.i.i.i, %mul80.i
  %add.ptr.i.i166.i = getelementptr i8, ptr %114, i32 %add.i.i
  %checksum.i.i.i = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i.i166.i, i32 0, i32 3
  %115 = ptrtoint ptr %checksum.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %checksum.i.i.i, align 4
  store i32 0, ptr %checksum.i.i.i, align 4
  %117 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %len.i.i.i, align 4
  %sub.i.i168.i = sub i32 %118, %add.i.i
  %call.i.i.i = tail call i32 @__skb_checksum(ptr noundef %skb, i32 noundef %add.i.i, i32 noundef %sub.i.i168.i, i32 noundef -1, ptr noundef nonnull @sctp_csum_ops) #12
  %neg.i.i169.i = xor i32 %call.i.i.i, -1
  %119 = ptrtoint ptr %checksum.i.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %116, ptr %checksum.i.i.i, align 4
  %120 = tail call i32 @llvm.bswap.i32(i32 %neg.i.i169.i) #12
  %checksum.i170.i = getelementptr inbounds %struct.sctphdr, ptr %call2.i159.i, i32 0, i32 3
  %121 = ptrtoint ptr %checksum.i170.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %checksum.i170.i, align 4
  %ip_summed.i171.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %122 = ptrtoint ptr %ip_summed.i171.i to i32
  call void @__asan_load2_noabort(i32 %122)
  %bf.load.i172.i = load i16, ptr %ip_summed.i171.i, align 8
  %bf.clear.i173.i = and i16 %bf.load.i172.i, -1537
  store i16 %bf.clear.i173.i, ptr %ip_summed.i171.i, align 8
  %123 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %123, i32 4)
  %bf.load7.i.i = load i32, ptr %vlan_present.i, align 2
  %bf.clear8.i.i = and i32 %bf.load7.i.i, -134217729
  store i32 %bf.clear8.i.i, ptr %vlan_present.i, align 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %if.end4.i174.i, %land.lhs.true.i158.i.sw.epilog.i_crit_edge, %sw.bb74.i.sw.epilog.i_crit_edge, %if.then62.i.sw.epilog.i_crit_edge, %sw.bb59.i.sw.epilog.i_crit_edge, %if.then47.i.sw.epilog.i_crit_edge, %sw.bb44.i.sw.epilog.i_crit_edge, %if.end4.i.i, %land.lhs.true.i.i.sw.epilog.i_crit_edge, %sw.bb29.i.sw.epilog.i_crit_edge, %tcf_csum_ipv4_igmp.exit.i, %sw.bb14.i.sw.epilog.i_crit_edge, %tcf_csum_ipv4_icmp.exit.i, %sw.bb.i.sw.epilog.i_crit_edge, %cond.end.i.sw.epilog.i_crit_edge, %if.end.i67.sw.epilog.i_crit_edge
  %and87.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and87.i)
  %tobool88.not.i = icmp eq i32 %and87.i, 0
  br i1 %tobool88.not.i, label %sw.epilog.i.out_crit_edge, label %if.then89.i

sw.epilog.i.out_crit_edge:                        ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then89.i:                                      ; preds = %sw.epilog.i
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %124 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.then89.i.if.end94.i_crit_edge, label %skb_cloned.exit.i.i

if.then89.i.if.end94.i_crit_edge:                 ; preds = %if.then89.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94.i

skb_cloned.exit.i.i:                              ; preds = %if.then89.i
  %end.i.i.i176.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %125 = ptrtoint ptr %end.i.i.i176.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %end.i.i.i176.i, align 4
  %dataref.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %126, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i, i32 noundef 4) #12
  %127 = ptrtoint ptr %dataref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load volatile i32, ptr %dataref.i.i.i, align 4
  %and.i.i177.i = and i32 %128, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i177.i)
  %cmp.i.not.i.i = icmp eq i32 %and.i.i177.i, 1
  br i1 %cmp.i.not.i.i, label %skb_cloned.exit.i.i.if.end94.i_crit_edge, label %land.lhs.true.i178.i

skb_cloned.exit.i.i.if.end94.i_crit_edge:         ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94.i

land.lhs.true.i178.i:                             ; preds = %skb_cloned.exit.i.i
  %129 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %129)
  %bf.load.i.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i.i)
  %tobool.not.i.i.i.i = icmp sgt i8 %bf.load.i.i.i.i, -1
  br i1 %tobool.not.i.i.i.i, label %land.lhs.true.i178.i.skb_clone_writable.exit.i.i_crit_edge, label %skb_header_cloned.exit.i.i.i

land.lhs.true.i178.i.skb_clone_writable.exit.i.i_crit_edge: ; preds = %land.lhs.true.i178.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_clone_writable.exit.i.i

skb_header_cloned.exit.i.i.i:                     ; preds = %land.lhs.true.i178.i
  %130 = ptrtoint ptr %end.i.i.i176.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %end.i.i.i176.i, align 4
  %dataref1.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %131, i32 0, i32 10
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i.i, i32 noundef 4) #12
  %132 = ptrtoint ptr %dataref1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load volatile i32, ptr %dataref1.i.i.i.i, align 4
  %and.i.i.i.i = and i32 %133, 65535
  %shr.i.i.i.i = ashr i32 %133, 16
  %sub.i.i.i.i = sub nsw i32 %and.i.i.i.i, %shr.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i.i)
  %cmp.i.not.i.i.i = icmp eq i32 %sub.i.i.i.i, 1
  br i1 %cmp.i.not.i.i.i, label %skb_header_cloned.exit.i.i.i.skb_clone_writable.exit.i.i_crit_edge, label %skb_header_cloned.exit.i.i.i.skb_try_make_writable.exit.i_crit_edge

skb_header_cloned.exit.i.i.i.skb_try_make_writable.exit.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_try_make_writable.exit.i

skb_header_cloned.exit.i.i.i.skb_clone_writable.exit.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_clone_writable.exit.i.i

skb_clone_writable.exit.i.i:                      ; preds = %skb_header_cloned.exit.i.i.i.skb_clone_writable.exit.i.i_crit_edge, %land.lhs.true.i178.i.skb_clone_writable.exit.i.i_crit_edge
  %134 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %data, align 4
  %136 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %135 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %137 to i32
  %sub.ptr.sub.i.i.i.i = add i32 %add.i65, %sub.ptr.lhs.cast.i.i.i.i
  %add.i.i.i = sub i32 %sub.ptr.sub.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %hdr_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 9
  %138 = ptrtoint ptr %hdr_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %hdr_len.i.i.i, align 2
  %conv.i.i180.i = zext i16 %139 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %conv.i.i180.i)
  %cmp.i7.not.i.i = icmp ugt i32 %add.i.i.i, %conv.i.i180.i
  br i1 %cmp.i7.not.i.i, label %skb_clone_writable.exit.i.i.skb_try_make_writable.exit.i_crit_edge, label %skb_clone_writable.exit.i.i.if.end94.i_crit_edge

skb_clone_writable.exit.i.i.if.end94.i_crit_edge: ; preds = %skb_clone_writable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94.i

skb_clone_writable.exit.i.i.skb_try_make_writable.exit.i_crit_edge: ; preds = %skb_clone_writable.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_try_make_writable.exit.i

skb_try_make_writable.exit.i:                     ; preds = %skb_clone_writable.exit.i.i.skb_try_make_writable.exit.i_crit_edge, %skb_header_cloned.exit.i.i.i.skb_try_make_writable.exit.i_crit_edge
  %call3.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i.i)
  %tobool4.i.not.i = icmp eq i32 %call3.i.i, 0
  br i1 %tobool4.i.not.i, label %skb_try_make_writable.exit.i.if.end94.i_crit_edge, label %skb_try_make_writable.exit.i.drop_crit_edge

skb_try_make_writable.exit.i.drop_crit_edge:      ; preds = %skb_try_make_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

skb_try_make_writable.exit.i.if.end94.i_crit_edge: ; preds = %skb_try_make_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end94.i

if.end94.i:                                       ; preds = %skb_try_make_writable.exit.i.if.end94.i_crit_edge, %skb_clone_writable.exit.i.i.if.end94.i_crit_edge, %skb_cloned.exit.i.i.if.end94.i_crit_edge, %if.then89.i.if.end94.i_crit_edge
  %140 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %head.i, align 8
  %142 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %network_header.i, align 4
  %conv.i.i183.i = zext i16 %143 to i32
  %add.ptr.i.i184.i = getelementptr i8, ptr %141, i32 %conv.i.i183.i
  tail call void @ip_send_check(ptr noundef %add.ptr.i.i184.i) #12
  br label %out

sw.bb26:                                          ; preds = %again
  %144 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %head.i, align 8
  %146 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %network_header.i, align 4
  %conv.i.i.i73 = zext i16 %147 to i32
  %add.ptr.i.i.i74 = getelementptr i8, ptr %145, i32 %conv.i.i.i73
  %148 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast.i.i76 = ptrtoint ptr %add.ptr.i.i.i74 to i32
  %sub.ptr.rhs.cast.i.i77 = ptrtoint ptr %149 to i32
  %sub.ptr.sub.i.i78 = sub i32 %sub.ptr.lhs.cast.i.i76, %sub.ptr.rhs.cast.i.i77
  %add.i79 = add i32 %sub.ptr.sub.i.i78, 40
  %len.i.i.i80 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %150 = ptrtoint ptr %len.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %len.i.i.i80, align 4
  %data_len.i.i.i81 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %152 = ptrtoint ptr %data_len.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %data_len.i.i.i81, align 8
  %sub.i.i.i82 = sub i32 %151, %153
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i79, i32 %sub.i.i.i82)
  %cmp.not.i.i83 = icmp ugt i32 %add.i79, %sub.i.i.i82
  br i1 %cmp.not.i.i83, label %if.end.i.i85, label %sw.bb26.if.end.i91_crit_edge, !prof !66

sw.bb26.if.end.i91_crit_edge:                     ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i91

if.end.i.i85:                                     ; preds = %sw.bb26
  call void @__sanitizer_cov_trace_cmp4(i32 %151, i32 %add.i79)
  %cmp3.i.i84 = icmp ult i32 %151, %add.i79
  br i1 %cmp3.i.i84, label %if.end.i.i85.drop_crit_edge, label %pskb_may_pull.exit.i89, !prof !66

if.end.i.i85.drop_crit_edge:                      ; preds = %if.end.i.i85
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

pskb_may_pull.exit.i89:                           ; preds = %if.end.i.i85
  %sub.i.i86 = sub i32 %add.i79, %sub.i.i.i82
  %call13.i.i87 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i86) #12
  %cmp14.i.not.i88 = icmp eq ptr %call13.i.i87, null
  br i1 %cmp14.i.not.i88, label %pskb_may_pull.exit.i89.drop_crit_edge, label %pskb_may_pull.exit.i89.if.end.i91_crit_edge

pskb_may_pull.exit.i89.if.end.i91_crit_edge:      ; preds = %pskb_may_pull.exit.i89
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i91

pskb_may_pull.exit.i89.drop_crit_edge:            ; preds = %pskb_may_pull.exit.i89
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end.i91:                                       ; preds = %pskb_may_pull.exit.i89.if.end.i91_crit_edge, %sw.bb26.if.end.i91_crit_edge
  %154 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %head.i, align 8
  %156 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %156)
  %157 = load i16, ptr %network_header.i, align 4
  %conv.i.i123.i = zext i16 %157 to i32
  %add.ptr.i.i124.i = getelementptr i8, ptr %155, i32 %conv.i.i123.i
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i124.i, i32 0, i32 2
  %158 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_load2_noabort(i32 %158)
  %159 = load i16, ptr %payload_len.i, align 4
  %conv.i90 = zext i16 %159 to i32
  %nexthdr3.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i124.i, i32 0, i32 3
  %160 = ptrtoint ptr %nexthdr3.i to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %nexthdr3.i, align 2
  br label %do.body.i92

do.body.i92:                                      ; preds = %do.body.i92.backedge, %if.end.i91
  %pl.0.i = phi i32 [ %conv.i90, %if.end.i91 ], [ %pl.2.i, %do.body.i92.backedge ]
  %hl.0.i = phi i32 [ 40, %if.end.i91 ], [ %add14.i, %do.body.i92.backedge ]
  %nexthdr.0.i = phi i8 [ %161, %if.end.i91 ], [ %191, %do.body.i92.backedge ]
  %162 = zext i8 %nexthdr.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %162, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %nexthdr.0.i, label %do.body.i92.out_crit_edge [
    i8 -124, label %sw.bb67.i
    i8 43, label %do.body.i92.sw.bb5.i_crit_edge
    i8 0, label %do.body.i92.sw.bb5.i_crit_edge312
    i8 60, label %do.body.i92.sw.bb5.i_crit_edge313
    i8 58, label %sw.bb28.i
    i8 6, label %sw.bb37.i
    i8 17, label %sw.bb47.i
    i8 -120, label %sw.bb57.i
  ]

do.body.i92.sw.bb5.i_crit_edge313:                ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5.i

do.body.i92.sw.bb5.i_crit_edge312:                ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5.i

do.body.i92.sw.bb5.i_crit_edge:                   ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.bb5.i

do.body.i92.out_crit_edge:                        ; preds = %do.body.i92
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

sw.bb5.i:                                         ; preds = %do.body.i92.sw.bb5.i_crit_edge, %do.body.i92.sw.bb5.i_crit_edge312, %do.body.i92.sw.bb5.i_crit_edge313
  %add6.i = or i32 %hl.0.i, 2
  %add7.i = add i32 %add6.i, %sub.ptr.sub.i.i78
  %163 = ptrtoint ptr %len.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %len.i.i.i80, align 4
  %165 = ptrtoint ptr %data_len.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %data_len.i.i.i81, align 8
  %sub.i.i127.i = sub i32 %164, %166
  call void @__sanitizer_cov_trace_cmp4(i32 %add7.i, i32 %sub.i.i127.i)
  %cmp.not.i128.i = icmp ugt i32 %add7.i, %sub.i.i127.i
  br i1 %cmp.not.i128.i, label %if.end.i130.i, label %sw.bb5.i.if.end10.i_crit_edge, !prof !66

sw.bb5.i.if.end10.i_crit_edge:                    ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

if.end.i130.i:                                    ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_cmp4(i32 %164, i32 %add7.i)
  %cmp3.i129.i = icmp ult i32 %164, %add7.i
  br i1 %cmp3.i129.i, label %if.end.i130.i.drop_crit_edge, label %pskb_may_pull.exit136.i, !prof !66

if.end.i130.i.drop_crit_edge:                     ; preds = %if.end.i130.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

pskb_may_pull.exit136.i:                          ; preds = %if.end.i130.i
  %sub.i131.i = sub i32 %add7.i, %sub.i.i127.i
  %call13.i132.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i131.i) #12
  %cmp14.i133.not.i = icmp eq ptr %call13.i132.i, null
  br i1 %cmp14.i133.not.i, label %pskb_may_pull.exit136.i.drop_crit_edge, label %pskb_may_pull.exit136.i.if.end10.i_crit_edge

pskb_may_pull.exit136.i.if.end10.i_crit_edge:     ; preds = %pskb_may_pull.exit136.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10.i

pskb_may_pull.exit136.i.drop_crit_edge:           ; preds = %pskb_may_pull.exit136.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end10.i:                                       ; preds = %pskb_may_pull.exit136.i.if.end10.i_crit_edge, %sw.bb5.i.if.end10.i_crit_edge
  %167 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %head.i, align 8
  %169 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %169)
  %170 = load i16, ptr %network_header.i, align 4
  %conv.i.i = zext i16 %170 to i32
  %add.ptr.i.i = getelementptr i8, ptr %168, i32 %conv.i.i
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i.i, i32 %hl.0.i
  %hdrlen.i = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %add.ptr.i, i32 0, i32 1
  %171 = ptrtoint ptr %hdrlen.i to i32
  call void @__asan_load1_noabort(i32 %171)
  %172 = load i8, ptr %hdrlen.i, align 1
  %conv12.i = zext i8 %172 to i32
  %add13.i = shl nuw nsw i32 %conv12.i, 3
  %shl.i = add i32 %hl.0.i, 8
  %add14.i = add i32 %shl.i, %add13.i
  %add15.i = add i32 %add14.i, %sub.ptr.sub.i.i78
  %173 = ptrtoint ptr %len.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %len.i.i.i80, align 4
  %175 = ptrtoint ptr %data_len.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %data_len.i.i.i81, align 8
  %sub.i.i139.i = sub i32 %174, %176
  call void @__sanitizer_cov_trace_cmp4(i32 %add15.i, i32 %sub.i.i139.i)
  %cmp.not.i140.i = icmp ugt i32 %add15.i, %sub.i.i139.i
  br i1 %cmp.not.i140.i, label %if.end.i142.i, label %if.end10.i.if.end18.i_crit_edge, !prof !66

if.end10.i.if.end18.i_crit_edge:                  ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

if.end.i142.i:                                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %174, i32 %add15.i)
  %cmp3.i141.i = icmp ult i32 %174, %add15.i
  br i1 %cmp3.i141.i, label %if.end.i142.i.drop_crit_edge, label %pskb_may_pull.exit148.i, !prof !66

if.end.i142.i.drop_crit_edge:                     ; preds = %if.end.i142.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

pskb_may_pull.exit148.i:                          ; preds = %if.end.i142.i
  %sub.i143.i = sub i32 %add15.i, %sub.i.i139.i
  %call13.i144.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i143.i) #12
  %cmp14.i145.not.i = icmp eq ptr %call13.i144.i, null
  br i1 %cmp14.i145.not.i, label %pskb_may_pull.exit148.i.drop_crit_edge, label %pskb_may_pull.exit148.i.if.end18.i_crit_edge

pskb_may_pull.exit148.i.if.end18.i_crit_edge:     ; preds = %pskb_may_pull.exit148.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end18.i

pskb_may_pull.exit148.i.drop_crit_edge:           ; preds = %pskb_may_pull.exit148.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end18.i:                                       ; preds = %pskb_may_pull.exit148.i.if.end18.i_crit_edge, %if.end10.i.if.end18.i_crit_edge
  %177 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %head.i, align 8
  %179 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %179)
  %180 = load i16, ptr %network_header.i, align 4
  %conv.i151.i = zext i16 %180 to i32
  %add.ptr.i152.i = getelementptr i8, ptr %178, i32 %conv.i151.i
  %add.ptr20.i = getelementptr i8, ptr %add.ptr.i152.i, i32 %hl.0.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %nexthdr.0.i)
  %cmp.i = icmp eq i8 %nexthdr.0.i, 0
  br i1 %cmp.i, label %land.lhs.true.i93, label %if.end18.i.if.end25.i_crit_edge

if.end18.i.if.end25.i_crit_edge:                  ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

land.lhs.true.i93:                                ; preds = %if.end18.i
  %sub.i153.i = or i32 %add13.i, 6
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %sw.epilog.i.i.while.body.i.i_crit_edge, %land.lhs.true.i93
  %len.046.i.i = phi i32 [ %sub22.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ], [ %sub.i153.i, %land.lhs.true.i93 ]
  %off.045.i.i = phi i32 [ %add21.i.i, %sw.epilog.i.i.while.body.i.i_crit_edge ], [ 2, %land.lhs.true.i93 ]
  %arrayidx.i.i = getelementptr i8, ptr %add.ptr20.i, i32 %off.045.i.i
  %181 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx.i.i, align 1
  %183 = zext i8 %182 to i64
  call void @__sanitizer_cov_trace_switch(i64 %183, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %182, label %sw.default.i.i [
    i8 0, label %while.body.i.i.sw.epilog.i.i_crit_edge
    i8 -62, label %sw.bb1.i.i
  ]

while.body.i.i.sw.epilog.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.bb1.i.i:                                       ; preds = %while.body.i.i
  %add.i.i94 = add i32 %off.045.i.i, 1
  %arrayidx2.i.i = getelementptr i8, ptr %add.ptr20.i, i32 %add.i.i94
  %184 = ptrtoint ptr %arrayidx2.i.i to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %arrayidx2.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %185)
  %cmp5.not.i.i = icmp eq i8 %185, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %len.046.i.i)
  %cmp7.i.i = icmp ugt i32 %len.046.i.i, 5
  %or.cond.i.i = select i1 %cmp5.not.i.i, i1 %cmp7.i.i, i1 false
  %and.i.i95 = and i32 %off.045.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i.i95)
  %cmp10.not.i.i = icmp eq i32 %and.i.i95, 2
  %or.cond41.i.i = select i1 %or.cond.i.i, i1 %cmp10.not.i.i, i1 false
  br i1 %or.cond41.i.i, label %if.end.i154.i, label %sw.bb1.i.i.drop_crit_edge

sw.bb1.i.i.drop_crit_edge:                        ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end.i154.i:                                    ; preds = %sw.bb1.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %arrayidx.i.i.le = getelementptr i8, ptr %add.ptr20.i, i32 2
  %add.ptr12.i.i = getelementptr i8, ptr %arrayidx.i.i.le, i32 %off.045.i.i
  %186 = ptrtoint ptr %add.ptr12.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %add.ptr12.i.i, align 4
  br label %if.end25.i

sw.default.i.i:                                   ; preds = %while.body.i.i
  %add13.i.i = add i32 %off.045.i.i, 1
  %arrayidx14.i.i = getelementptr i8, ptr %add.ptr20.i, i32 %add13.i.i
  %188 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %arrayidx14.i.i, align 1
  %conv15.i.i = zext i8 %189 to i32
  %add16.i.i = add nuw nsw i32 %conv15.i.i, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %add16.i.i, i32 %len.046.i.i)
  %cmp17.i.i = icmp ugt i32 %add16.i.i, %len.046.i.i
  br i1 %cmp17.i.i, label %sw.default.i.i.if.end25.i_crit_edge, label %sw.default.i.i.sw.epilog.i.i_crit_edge

sw.default.i.i.sw.epilog.i.i_crit_edge:           ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %sw.epilog.i.i

sw.default.i.i.if.end25.i_crit_edge:              ; preds = %sw.default.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

sw.epilog.i.i:                                    ; preds = %sw.default.i.i.sw.epilog.i.i_crit_edge, %while.body.i.i.sw.epilog.i.i_crit_edge
  %optlen.0.i.i = phi i32 [ %add16.i.i, %sw.default.i.i.sw.epilog.i.i_crit_edge ], [ 1, %while.body.i.i.sw.epilog.i.i_crit_edge ]
  %add21.i.i = add i32 %optlen.0.i.i, %off.045.i.i
  %sub22.i.i = sub nsw i32 %len.046.i.i, %optlen.0.i.i
  %cmp.i.i96 = icmp sgt i32 %sub22.i.i, 1
  br i1 %cmp.i.i96, label %sw.epilog.i.i.while.body.i.i_crit_edge, label %sw.epilog.i.i.if.end25.i_crit_edge

sw.epilog.i.i.if.end25.i_crit_edge:               ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25.i

sw.epilog.i.i.while.body.i.i_crit_edge:           ; preds = %sw.epilog.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i.i

if.end25.i:                                       ; preds = %sw.epilog.i.i.if.end25.i_crit_edge, %sw.default.i.i.if.end25.i_crit_edge, %if.end.i154.i, %if.end18.i.if.end25.i_crit_edge
  %pl.2.i = phi i32 [ %pl.0.i, %if.end18.i.if.end25.i_crit_edge ], [ %187, %if.end.i154.i ], [ %pl.0.i, %sw.default.i.i.if.end25.i_crit_edge ], [ %pl.0.i, %sw.epilog.i.i.if.end25.i_crit_edge ]
  %190 = ptrtoint ptr %add.ptr20.i to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %add.ptr20.i, align 1
  %add76.i = or i32 %add14.i, 1
  %add77.i = add i32 %add76.i, %sub.ptr.sub.i.i78
  %192 = ptrtoint ptr %len.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %len.i.i.i80, align 4
  %194 = ptrtoint ptr %data_len.i.i.i81 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %data_len.i.i.i81, align 8
  %sub.i.i158.i = sub i32 %193, %195
  call void @__sanitizer_cov_trace_cmp4(i32 %add77.i, i32 %sub.i.i158.i)
  %cmp.not.i159.i = icmp ugt i32 %add77.i, %sub.i.i158.i
  br i1 %cmp.not.i159.i, label %if.end.i161.i97, label %if.end25.i.do.body.i92.backedge_crit_edge, !prof !66

if.end25.i.do.body.i92.backedge_crit_edge:        ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i92.backedge

if.end.i161.i97:                                  ; preds = %if.end25.i
  call void @__sanitizer_cov_trace_cmp4(i32 %193, i32 %add77.i)
  %cmp3.i160.i = icmp ult i32 %193, %add77.i
  br i1 %cmp3.i160.i, label %if.end.i161.i97.out_crit_edge, label %if.end11.i165.i, !prof !66

if.end.i161.i97.out_crit_edge:                    ; preds = %if.end.i161.i97
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.end11.i165.i:                                  ; preds = %if.end.i161.i97
  %sub.i162.i = sub i32 %add77.i, %sub.i.i158.i
  %call13.i163.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i162.i) #12
  %cmp14.i164.not.i = icmp eq ptr %call13.i163.i, null
  br i1 %cmp14.i164.not.i, label %if.end11.i165.i.out_crit_edge, label %if.end11.i165.i.do.body.i92.backedge_crit_edge

if.end11.i165.i.do.body.i92.backedge_crit_edge:   ; preds = %if.end11.i165.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body.i92.backedge

if.end11.i165.i.out_crit_edge:                    ; preds = %if.end11.i165.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

do.body.i92.backedge:                             ; preds = %if.end11.i165.i.do.body.i92.backedge_crit_edge, %if.end25.i.do.body.i92.backedge_crit_edge
  br label %do.body.i92

sw.bb28.i:                                        ; preds = %do.body.i92
  %and.i = and i32 %22, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool29.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool29.not.i, label %sw.bb28.i.out_crit_edge, label %if.then30.i

sw.bb28.i.out_crit_edge:                          ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then30.i:                                      ; preds = %sw.bb28.i
  %add31.i = add i32 %pl.0.i, 40
  %call.i = tail call fastcc ptr @tcf_csum_skb_nextlayer(ptr noundef %skb, i32 noundef %hl.0.i, i32 noundef %add31.i, i32 noundef 8) #12
  %cmp.i157 = icmp eq ptr %call.i, null
  br i1 %cmp.i157, label %if.then30.i.drop_crit_edge, label %tcf_csum_ipv6_icmp.exit

if.then30.i.drop_crit_edge:                       ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

tcf_csum_ipv6_icmp.exit:                          ; preds = %if.then30.i
  call void @__sanitizer_cov_trace_pc() #14
  %196 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %head.i, align 8
  %198 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %198)
  %199 = load i16, ptr %network_header.i, align 4
  %conv.i.i.i160 = zext i16 %199 to i32
  %add.ptr.i.i.i161 = getelementptr i8, ptr %197, i32 %conv.i.i.i160
  %icmp6_cksum.i = getelementptr inbounds %struct.icmp6hdr, ptr %call.i, i32 0, i32 2
  %200 = ptrtoint ptr %icmp6_cksum.i to i32
  call void @__asan_store2_noabort(i32 %200)
  store i16 0, ptr %icmp6_cksum.i, align 2
  %sub.i162 = sub i32 %add31.i, %hl.0.i
  %call2.i163 = tail call i32 @csum_partial(ptr noundef nonnull %call.i, i32 noundef %sub.i162, i32 noundef 0) #12
  %201 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %call2.i163, ptr %201, align 8
  %saddr.i164 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i161, i32 0, i32 5
  %daddr.i165 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i161, i32 0, i32 6
  %call.i.i166 = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i164, ptr noundef %daddr.i165, i32 noundef %sub.i162, i32 noundef 58, i32 noundef %call2.i163) #12
  %203 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i166) #15, !srcloc !67
  %neg.i.i.i167 = xor i32 %203, -1
  %shr.i.i.i168 = lshr i32 %neg.i.i.i167, 16
  %conv.i.i19.i = trunc i32 %shr.i.i.i168 to i16
  %204 = ptrtoint ptr %icmp6_cksum.i to i32
  call void @__asan_store2_noabort(i32 %204)
  store i16 %conv.i.i19.i, ptr %icmp6_cksum.i, align 2
  %ip_summed.i169 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %205 = ptrtoint ptr %ip_summed.i169 to i32
  call void @__asan_load2_noabort(i32 %205)
  %bf.load.i170 = load i16, ptr %ip_summed.i169, align 8
  %bf.clear.i171 = and i16 %bf.load.i170, -1537
  store i16 %bf.clear.i171, ptr %ip_summed.i169, align 8
  br label %out

sw.bb37.i:                                        ; preds = %do.body.i92
  %and38.i = and i32 %22, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %tobool39.not.i = icmp eq i32 %and38.i, 0
  br i1 %tobool39.not.i, label %sw.bb37.i.out_crit_edge, label %if.then40.i

sw.bb37.i.out_crit_edge:                          ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then40.i:                                      ; preds = %sw.bb37.i
  %add41.i = add i32 %pl.0.i, 40
  %end.i.i.i136 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %206 = ptrtoint ptr %end.i.i.i136 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %end.i.i.i136, align 4
  %gso_size.i.i137 = getelementptr inbounds %struct.skb_shared_info, ptr %207, i32 0, i32 4
  %208 = ptrtoint ptr %gso_size.i.i137 to i32
  call void @__asan_load2_noabort(i32 %208)
  %209 = load i16, ptr %gso_size.i.i137, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %209)
  %tobool.i.not.i138 = icmp eq i16 %209, 0
  br i1 %tobool.i.not.i138, label %if.then40.i.if.end.i144_crit_edge, label %land.lhs.true.i141

if.then40.i.if.end.i144_crit_edge:                ; preds = %if.then40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i144

land.lhs.true.i141:                               ; preds = %if.then40.i
  %gso_type.i = getelementptr inbounds %struct.skb_shared_info, ptr %207, i32 0, i32 8
  %210 = ptrtoint ptr %gso_type.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %gso_type.i, align 8
  %and.i139 = and i32 %211, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i139)
  %tobool.not.i140 = icmp eq i32 %and.i139, 0
  br i1 %tobool.not.i140, label %land.lhs.true.i141.if.end.i144_crit_edge, label %land.lhs.true.i141.out_crit_edge

land.lhs.true.i141.out_crit_edge:                 ; preds = %land.lhs.true.i141
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true.i141.if.end.i144_crit_edge:         ; preds = %land.lhs.true.i141
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i144

if.end.i144:                                      ; preds = %land.lhs.true.i141.if.end.i144_crit_edge, %if.then40.i.if.end.i144_crit_edge
  %call2.i142 = tail call fastcc ptr @tcf_csum_skb_nextlayer(ptr noundef %skb, i32 noundef %hl.0.i, i32 noundef %add41.i, i32 noundef 20) #12
  %cmp.i143 = icmp eq ptr %call2.i142, null
  br i1 %cmp.i143, label %if.end.i144.drop_crit_edge, label %if.end4.i155

if.end.i144.drop_crit_edge:                       ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end4.i155:                                     ; preds = %if.end.i144
  call void @__sanitizer_cov_trace_pc() #14
  %212 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %head.i, align 8
  %214 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %214)
  %215 = load i16, ptr %network_header.i, align 4
  %conv.i.i.i147 = zext i16 %215 to i32
  %add.ptr.i.i.i148 = getelementptr i8, ptr %213, i32 %conv.i.i.i147
  %check.i = getelementptr inbounds %struct.tcphdr, ptr %call2.i142, i32 0, i32 6
  %216 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %216)
  store i16 0, ptr %check.i, align 4
  %sub.i = sub i32 %add41.i, %hl.0.i
  %call6.i = tail call i32 @csum_partial(ptr noundef nonnull %call2.i142, i32 noundef %sub.i, i32 noundef 0) #12
  %217 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %218 = ptrtoint ptr %217 to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 %call6.i, ptr %217, align 8
  %saddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i148, i32 0, i32 5
  %daddr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i148, i32 0, i32 6
  %call.i.i149 = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr.i, ptr noundef %daddr.i, i32 noundef %sub.i, i32 noundef 6, i32 noundef %call6.i) #12
  %219 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i.i149) #15, !srcloc !67
  %neg.i.i.i150 = xor i32 %219, -1
  %shr.i.i.i151 = lshr i32 %neg.i.i.i150, 16
  %conv.i.i25.i = trunc i32 %shr.i.i.i151 to i16
  %220 = ptrtoint ptr %check.i to i32
  call void @__asan_store2_noabort(i32 %220)
  store i16 %conv.i.i25.i, ptr %check.i, align 4
  %ip_summed.i152 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %221 = ptrtoint ptr %ip_summed.i152 to i32
  call void @__asan_load2_noabort(i32 %221)
  %bf.load.i153 = load i16, ptr %ip_summed.i152, align 8
  %bf.clear.i154 = and i16 %bf.load.i153, -1537
  store i16 %bf.clear.i154, ptr %ip_summed.i152, align 8
  br label %out

sw.bb47.i:                                        ; preds = %do.body.i92
  %and48.i = and i32 %22, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48.i)
  %tobool49.not.i = icmp eq i32 %and48.i, 0
  br i1 %tobool49.not.i, label %sw.bb47.i.out_crit_edge, label %if.then50.i

sw.bb47.i.out_crit_edge:                          ; preds = %sw.bb47.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then50.i:                                      ; preds = %sw.bb47.i
  %add51.i = add i32 %pl.0.i, 40
  %call52.i = tail call fastcc i32 @tcf_csum_ipv6_udp(ptr noundef %skb, i32 noundef %hl.0.i, i32 noundef %add51.i, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52.i)
  %tobool53.not.i = icmp eq i32 %call52.i, 0
  br i1 %tobool53.not.i, label %if.then50.i.drop_crit_edge, label %if.then50.i.out_crit_edge

if.then50.i.out_crit_edge:                        ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then50.i.drop_crit_edge:                       ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

sw.bb57.i:                                        ; preds = %do.body.i92
  %and58.i = and i32 %22, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and58.i)
  %tobool59.not.i = icmp eq i32 %and58.i, 0
  br i1 %tobool59.not.i, label %sw.bb57.i.out_crit_edge, label %if.then60.i

sw.bb57.i.out_crit_edge:                          ; preds = %sw.bb57.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then60.i:                                      ; preds = %sw.bb57.i
  %add61.i = add i32 %pl.0.i, 40
  %call62.i = tail call fastcc i32 @tcf_csum_ipv6_udp(ptr noundef %skb, i32 noundef %hl.0.i, i32 noundef %add61.i, i32 noundef 1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62.i)
  %tobool63.not.i = icmp eq i32 %call62.i, 0
  br i1 %tobool63.not.i, label %if.then60.i.drop_crit_edge, label %if.then60.i.out_crit_edge

if.then60.i.out_crit_edge:                        ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

if.then60.i.drop_crit_edge:                       ; preds = %if.then60.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

sw.bb67.i:                                        ; preds = %do.body.i92
  %and68.i = and i32 %22, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and68.i)
  %tobool69.not.i = icmp eq i32 %and68.i, 0
  br i1 %tobool69.not.i, label %sw.bb67.i.out_crit_edge, label %land.lhs.true70.i

sw.bb67.i.out_crit_edge:                          ; preds = %sw.bb67.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true70.i:                                ; preds = %sw.bb67.i
  %add71.i = add i32 %pl.0.i, 40
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %222 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %223, i32 0, i32 4
  %224 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %224)
  %225 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %225)
  %tobool.i.not.i = icmp eq i16 %225, 0
  br i1 %tobool.i.not.i, label %land.lhs.true70.i.if.end.i119_crit_edge, label %land.lhs.true.i117

land.lhs.true70.i.if.end.i119_crit_edge:          ; preds = %land.lhs.true70.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i119

land.lhs.true.i117:                               ; preds = %land.lhs.true70.i
  %gso_type.i.i115 = getelementptr inbounds %struct.skb_shared_info, ptr %223, i32 0, i32 8
  %226 = ptrtoint ptr %gso_type.i.i115 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load i32, ptr %gso_type.i.i115, align 8
  %and.i.i116 = and i32 %227, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i116)
  %tobool.i19.not.i = icmp eq i32 %and.i.i116, 0
  br i1 %tobool.i19.not.i, label %land.lhs.true.i117.if.end.i119_crit_edge, label %land.lhs.true.i117.out_crit_edge

land.lhs.true.i117.out_crit_edge:                 ; preds = %land.lhs.true.i117
  call void @__sanitizer_cov_trace_pc() #14
  br label %out

land.lhs.true.i117.if.end.i119_crit_edge:         ; preds = %land.lhs.true.i117
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i119

if.end.i119:                                      ; preds = %land.lhs.true.i117.if.end.i119_crit_edge, %land.lhs.true70.i.if.end.i119_crit_edge
  %call2.i = tail call fastcc ptr @tcf_csum_skb_nextlayer(ptr noundef %skb, i32 noundef %hl.0.i, i32 noundef %add71.i, i32 noundef 12) #12
  %tobool.not.i118 = icmp eq ptr %call2.i, null
  br i1 %tobool.not.i118, label %if.end.i119.drop_crit_edge, label %if.end4.i

if.end.i119.drop_crit_edge:                       ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #14
  br label %drop

if.end4.i:                                        ; preds = %if.end.i119
  call void @__sanitizer_cov_trace_pc() #14
  %228 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %head.i, align 8
  %230 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %230)
  %231 = load i16, ptr %network_header.i, align 4
  %conv.i.i.i122 = zext i16 %231 to i32
  %add.ptr.i.i.i123 = getelementptr i8, ptr %229, i32 %conv.i.i.i122
  %232 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast.i.i125 = ptrtoint ptr %add.ptr.i.i.i123 to i32
  %sub.ptr.rhs.cast.i.i126 = ptrtoint ptr %233 to i32
  %sub.ptr.sub.i.i127 = sub i32 %sub.ptr.lhs.cast.i.i125, %sub.ptr.rhs.cast.i.i126
  %add.i128 = add i32 %sub.ptr.sub.i.i127, %hl.0.i
  %add.ptr.i.i129 = getelementptr i8, ptr %233, i32 %add.i128
  %checksum.i.i130 = getelementptr inbounds %struct.sctphdr, ptr %add.ptr.i.i129, i32 0, i32 3
  %234 = ptrtoint ptr %checksum.i.i130 to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %checksum.i.i130, align 4
  store i32 0, ptr %checksum.i.i130, align 4
  %236 = ptrtoint ptr %len.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %len.i.i.i80, align 4
  %sub.i.i131 = sub i32 %237, %add.i128
  %call.i.i132 = tail call i32 @__skb_checksum(ptr noundef %skb, i32 noundef %add.i128, i32 noundef %sub.i.i131, i32 noundef -1, ptr noundef nonnull @sctp_csum_ops) #12
  %neg.i.i = xor i32 %call.i.i132, -1
  %238 = ptrtoint ptr %checksum.i.i130 to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %235, ptr %checksum.i.i130, align 4
  %239 = tail call i32 @llvm.bswap.i32(i32 %neg.i.i) #12
  %checksum.i = getelementptr inbounds %struct.sctphdr, ptr %call2.i, i32 0, i32 3
  %240 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %240)
  store i32 %239, ptr %checksum.i, align 4
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %241 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %241)
  %bf.load.i133 = load i16, ptr %ip_summed.i, align 8
  %bf.clear.i134 = and i16 %bf.load.i133, -1537
  store i16 %bf.clear.i134, ptr %ip_summed.i, align 8
  %242 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %242, i32 4)
  %bf.load7.i = load i32, ptr %vlan_present.i, align 2
  %bf.clear8.i = and i32 %bf.load7.i, -134217729
  store i32 %bf.clear8.i, ptr %vlan_present.i, align 2
  br label %out

sw.bb32:                                          ; preds = %again.sw.bb32_crit_edge, %again.sw.bb32_crit_edge311
  %243 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_loadN_noabort(i32 %243, i32 4)
  %bf.load = load i32, ptr %vlan_present.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool34.not = icmp sgt i32 %bf.load, -1
  %brmerge = select i1 %tobool34.not, i1 true, i1 %orig_vlan_tag_present.0.off0
  br i1 %brmerge, label %if.else, label %if.then37

if.then37:                                        ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #14
  %244 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %244)
  %245 = load i16, ptr %protocol.i, align 8
  br label %again

if.else:                                          ; preds = %sw.bb32
  call void @__sanitizer_cov_trace_pc() #14
  %246 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %246)
  %247 = load ptr, ptr %data, align 4
  %h_vlan_encapsulated_proto = getelementptr inbounds %struct.vlan_hdr, ptr %247, i32 0, i32 1
  %248 = ptrtoint ptr %h_vlan_encapsulated_proto to i32
  call void @__asan_load2_noabort(i32 %248)
  %249 = load i16, ptr %h_vlan_encapsulated_proto, align 2
  %call39 = tail call ptr @skb_pull(ptr noundef %skb, i32 noundef 4) #12
  %250 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load ptr, ptr %data, align 4
  %252 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %head.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %251 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %253 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i99 = trunc i32 %sub.ptr.sub.i to i16
  %254 = ptrtoint ptr %network_header.i to i32
  call void @__asan_store2_noabort(i32 %254)
  store i16 %conv.i99, ptr %network_header.i, align 4
  %inc = add i32 %vlan_hdr_count.0.ph, 1
  br label %again.outer

out:                                              ; preds = %if.end.i114, %do.body.i112, %if.end4.i, %land.lhs.true.i117.out_crit_edge, %sw.bb67.i.out_crit_edge, %if.then60.i.out_crit_edge, %sw.bb57.i.out_crit_edge, %if.then50.i.out_crit_edge, %sw.bb47.i.out_crit_edge, %if.end4.i155, %land.lhs.true.i141.out_crit_edge, %sw.bb37.i.out_crit_edge, %tcf_csum_ipv6_icmp.exit, %sw.bb28.i.out_crit_edge, %if.end11.i165.i.out_crit_edge, %if.end.i161.i97.out_crit_edge, %do.body.i92.out_crit_edge, %if.end94.i, %sw.epilog.i.out_crit_edge, %again.out_crit_edge
  %action.0 = phi i32 [ %20, %sw.epilog.i.out_crit_edge ], [ %20, %if.end94.i ], [ 2, %do.body.i112 ], [ 2, %if.end.i114 ], [ %20, %tcf_csum_ipv6_icmp.exit ], [ %20, %sw.bb28.i.out_crit_edge ], [ %20, %sw.bb37.i.out_crit_edge ], [ %20, %if.then50.i.out_crit_edge ], [ %20, %sw.bb47.i.out_crit_edge ], [ %20, %if.then60.i.out_crit_edge ], [ %20, %sw.bb57.i.out_crit_edge ], [ %20, %sw.bb67.i.out_crit_edge ], [ %20, %if.end4.i155 ], [ %20, %land.lhs.true.i141.out_crit_edge ], [ %20, %if.end4.i ], [ %20, %land.lhs.true.i117.out_crit_edge ], [ %20, %do.body.i92.out_crit_edge ], [ %20, %if.end11.i165.i.out_crit_edge ], [ %20, %if.end.i161.i97.out_crit_edge ], [ %20, %again.out_crit_edge ]
  %vlan_hdr_count.2 = phi i32 [ %vlan_hdr_count.0.ph, %sw.epilog.i.out_crit_edge ], [ %vlan_hdr_count.0.ph, %if.end94.i ], [ %vlan_hdr_count.4, %do.body.i112 ], [ %vlan_hdr_count.4, %if.end.i114 ], [ %vlan_hdr_count.0.ph, %tcf_csum_ipv6_icmp.exit ], [ %vlan_hdr_count.0.ph, %sw.bb28.i.out_crit_edge ], [ %vlan_hdr_count.0.ph, %sw.bb37.i.out_crit_edge ], [ %vlan_hdr_count.0.ph, %if.then50.i.out_crit_edge ], [ %vlan_hdr_count.0.ph, %sw.bb47.i.out_crit_edge ], [ %vlan_hdr_count.0.ph, %if.then60.i.out_crit_edge ], [ %vlan_hdr_count.0.ph, %sw.bb57.i.out_crit_edge ], [ %vlan_hdr_count.0.ph, %sw.bb67.i.out_crit_edge ], [ %vlan_hdr_count.0.ph, %if.end4.i155 ], [ %vlan_hdr_count.0.ph, %land.lhs.true.i141.out_crit_edge ], [ %vlan_hdr_count.0.ph, %if.end4.i ], [ %vlan_hdr_count.0.ph, %land.lhs.true.i117.out_crit_edge ], [ %vlan_hdr_count.0.ph, %do.body.i92.out_crit_edge ], [ %vlan_hdr_count.0.ph, %if.end11.i165.i.out_crit_edge ], [ %vlan_hdr_count.0.ph, %if.end.i161.i97.out_crit_edge ], [ %vlan_hdr_count.0.ph, %again.out_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %vlan_hdr_count.2)
  %tobool41.not206 = icmp eq i32 %vlan_hdr_count.2, 0
  br i1 %tobool41.not206, label %out.while.end_crit_edge, label %while.body.lr.ph

out.while.end_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %out
  %data.i100 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %head.i101 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %network_header.i106 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %vlan_hdr_count.3207 = phi i32 [ %vlan_hdr_count.2, %while.body.lr.ph ], [ %dec, %while.body.while.body_crit_edge ]
  %dec = add i32 %vlan_hdr_count.3207, -1
  %call42 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #12
  %255 = ptrtoint ptr %data.i100 to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load ptr, ptr %data.i100, align 4
  %257 = ptrtoint ptr %head.i101 to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load ptr, ptr %head.i101, align 8
  %sub.ptr.lhs.cast.i102 = ptrtoint ptr %256 to i32
  %sub.ptr.rhs.cast.i103 = ptrtoint ptr %258 to i32
  %sub.ptr.sub.i104 = sub i32 %sub.ptr.lhs.cast.i102, %sub.ptr.rhs.cast.i103
  %conv.i105 = trunc i32 %sub.ptr.sub.i104 to i16
  %259 = ptrtoint ptr %network_header.i106 to i32
  call void @__asan_store2_noabort(i32 %259)
  store i16 %conv.i105, ptr %network_header.i106, align 4
  %tobool41.not = icmp eq i32 %dec, 0
  br i1 %tobool41.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %out.while.end_crit_edge
  ret i32 %action.0

drop:                                             ; preds = %if.end.i119.drop_crit_edge, %if.then60.i.drop_crit_edge, %if.then50.i.drop_crit_edge, %if.end.i144.drop_crit_edge, %if.then30.i.drop_crit_edge, %sw.bb1.i.i.drop_crit_edge, %pskb_may_pull.exit148.i.drop_crit_edge, %if.end.i142.i.drop_crit_edge, %pskb_may_pull.exit136.i.drop_crit_edge, %if.end.i130.i.drop_crit_edge, %pskb_may_pull.exit.i89.drop_crit_edge, %if.end.i.i85.drop_crit_edge, %skb_try_make_writable.exit.i.drop_crit_edge, %if.end.i161.i.drop_crit_edge, %if.then62.i.drop_crit_edge, %if.then47.i.drop_crit_edge, %if.end.i149.i.drop_crit_edge, %if.then17.i.drop_crit_edge, %if.then6.i.drop_crit_edge, %pskb_may_pull.exit.i.drop_crit_edge, %if.end.i.i.drop_crit_edge, %tcf_action_update_bstats.exit.drop_crit_edge
  %vlan_hdr_count.4 = phi i32 [ 0, %tcf_action_update_bstats.exit.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %if.end.i.i85.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %pskb_may_pull.exit.i89.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %if.then50.i.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %if.then60.i.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %if.end.i144.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %if.end.i119.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %skb_try_make_writable.exit.i.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %if.then62.i.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %if.then47.i.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %pskb_may_pull.exit.i.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %if.end.i149.i.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %if.end.i161.i.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %if.end.i.i.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %if.then6.i.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %if.then17.i.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %if.then30.i.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %if.end.i130.i.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %pskb_may_pull.exit136.i.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %if.end.i142.i.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %pskb_may_pull.exit148.i.drop_crit_edge ], [ %vlan_hdr_count.0.ph, %sw.bb1.i.i.drop_crit_edge ]
  %cpu_qstats.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 15
  %260 = ptrtoint ptr %cpu_qstats.i to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %cpu_qstats.i, align 4
  %tobool.not.i107 = icmp eq ptr %261, null
  br i1 %tobool.not.i107, label %if.end.i114, label %do.body.i112, !prof !66

do.body.i112:                                     ; preds = %drop
  call void @__sanitizer_cov_trace_pc() #14
  %262 = ptrtoint ptr %261 to i32
  %263 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i108 = and i32 %263, -16384
  %264 = inttoptr i32 %and.i.i108 to ptr
  %cpu.i109 = getelementptr inbounds %struct.thread_info, ptr %264, i32 0, i32 3
  %265 = ptrtoint ptr %cpu.i109 to i32
  call void @__asan_load4_noabort(i32 %265)
  %266 = load i32, ptr %cpu.i109, align 4
  %arrayidx.i110 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %266
  %267 = ptrtoint ptr %arrayidx.i110 to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx.i110, align 4
  %add.i111 = add i32 %268, %262
  %269 = inttoptr i32 %add.i111 to ptr
  %drops.i.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %269, i32 0, i32 2
  %270 = ptrtoint ptr %drops.i.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %drops.i.i, align 4
  %inc.i.i = add i32 %271, 1
  store i32 %inc.i.i, ptr %drops.i.i, align 4
  br label %out

if.end.i114:                                      ; preds = %drop
  call void @__sanitizer_cov_trace_pc() #14
  %tcfa_lock.i113 = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %tcfa_lock.i113) #12
  %drops.i10.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 10, i32 2
  %272 = ptrtoint ptr %drops.i10.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %drops.i10.i, align 4
  %inc.i11.i = add i32 %273, 1
  store i32 %inc.i11.i, ptr %drops.i10.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %tcfa_lock.i113) #12
  br label %out
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_csum_dump(ptr noundef %skb, ptr noundef %a, i32 noundef %bind, i32 noundef %ref) #2 align 64 {
entry:
  %opt = alloca %struct.tc_csum, align 4
  %t = alloca %struct.tcf_t, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %opt) #12
  %2 = getelementptr inbounds %struct.tc_csum, ptr %opt, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tc_csum, ptr %opt, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tc_csum, ptr %opt, i32 0, i32 3
  %5 = getelementptr inbounds %struct.tc_csum, ptr %opt, i32 0, i32 4
  %6 = getelementptr inbounds %struct.tc_csum, ptr %opt, i32 0, i32 5
  %tcfa_index = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 3
  %7 = getelementptr inbounds i8, ptr %opt, i32 8
  %8 = call ptr @memset(ptr %7, i32 255, i32 16)
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
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_refcnt, i32 noundef 4) #12
  %13 = ptrtoint ptr %tcfa_refcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %tcfa_refcnt, align 4
  %sub = sub i32 %14, %ref
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %4, align 4
  %tcfa_bindcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_bindcnt, i32 noundef 4) #12
  %16 = ptrtoint ptr %tcfa_bindcnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %tcfa_bindcnt, align 4
  %sub5 = sub i32 %17, %bind
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub5, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #12
  %19 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 1
  %20 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 2
  %21 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 3
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  %22 = call ptr @memset(ptr %t, i32 255, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #12
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true12

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b49 = load i1, ptr @tcf_csum_dump.__warned, align 1
  br i1 %.b49, label %land.lhs.true12.do.end_crit_edge, label %if.then

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then:                                          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcf_csum_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 646, ptr noundef nonnull @.str.4) #12
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true12.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %params14 = getelementptr inbounds %struct.tcf_csum, ptr %a, i32 0, i32 1
  %23 = ptrtoint ptr %params14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %params14, align 16
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %25 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tcfa_action, align 8
  %27 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %3, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %24, align 4
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %6, align 4
  %call19 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 24, ptr noundef nonnull %opt) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end22, label %do.end.nla_put_failure_crit_edge

do.end.nla_put_failure_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end22:                                         ; preds = %do.end
  %tcfa_tm = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %31 = load volatile i32, ptr @jiffies, align 128
  %32 = ptrtoint ptr %tcfa_tm to i32
  call void @__asan_load8_noabort(i32 %32)
  %33 = load i64, ptr %tcfa_tm, align 8
  %34 = trunc i64 %33 to i32
  %conv1.i = sub i32 %31, %34
  %call.i50 = call i32 @jiffies_to_clock_t(i32 noundef %conv1.i) #12
  %conv2.i = sext i32 %call.i50 to i64
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
  %call7.i = call i32 @jiffies_to_clock_t(i32 noundef %conv6.i) #12
  %conv8.i = sext i32 %call7.i to i64
  %40 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv8.i, ptr %19, align 8
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %41 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %42)
  %tobool.not.i = icmp eq i64 %42, 0
  br i1 %tobool.not.i, label %if.end22.tcf_tm_dump.exit_crit_edge, label %cond.true.i

if.end22.tcf_tm_dump.exit_crit_edge:              ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_tm_dump.exit

cond.true.i:                                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %43 = load volatile i32, ptr @jiffies, align 128
  %44 = trunc i64 %42 to i32
  %conv13.i = sub i32 %43, %44
  %call14.i = call i32 @jiffies_to_clock_t(i32 noundef %conv13.i) #12
  br label %tcf_tm_dump.exit

tcf_tm_dump.exit:                                 ; preds = %cond.true.i, %if.end22.tcf_tm_dump.exit_crit_edge
  %cond.i = phi i32 [ %call14.i, %cond.true.i ], [ 0, %if.end22.tcf_tm_dump.exit_crit_edge ]
  %conv15.i = sext i32 %cond.i to i64
  %45 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 %conv15.i, ptr %21, align 8
  %expires.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 2
  %46 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %46)
  %47 = load i64, ptr %expires.i, align 8
  %conv17.i = trunc i64 %47 to i32
  %call18.i = call i32 @jiffies_to_clock_t(i32 noundef %conv17.i) #12
  %conv19.i = sext i32 %call18.i to i64
  %48 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv19.i, ptr %20, align 8
  %call24 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 2, i32 noundef 32, ptr noundef nonnull %t, i32 noundef 3) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %tcf_tm_dump.exit.nla_put_failure_crit_edge

tcf_tm_dump.exit.nla_put_failure_crit_edge:       ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %nla_put_failure

if.end27:                                         ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %49 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %tcf_tm_dump.exit.nla_put_failure_crit_edge, %do.end.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #12
  %tobool.not.i51 = icmp eq ptr %1, null
  br i1 %tobool.not.i51, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %52, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !66

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %53 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %54 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end27
  %retval.0 = phi i32 [ %50, %if.end27 ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #12
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %opt) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_csum_cleanup(ptr nocapture noundef readonly %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %params1 = getelementptr inbounds %struct.tcf_csum, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.end7

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.tcf_csum_params, ptr %1, i32 0, i32 1
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 4 to ptr)) #12
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_csum_search(ptr noundef %net, ptr noundef %a, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @csum_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_idr_search(ptr noundef %call, ptr noundef %a, i32 noundef %index) #12
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_csum_init(ptr noundef %net, ptr noundef %nla, ptr noundef %est, ptr noundef %a, ptr noundef %tp, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [4 x ptr], align 4
  %goto_ch = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @csum_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %and = and i32 %flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb) #12
  %1 = getelementptr inbounds [4 x ptr], ptr %tb, i32 0, i32 1
  %2 = call ptr @memset(ptr %tb, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goto_ch) #12
  %3 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %goto_ch, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #12
  %cmp = icmp eq ptr %nla, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %4 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %5 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 3, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @csum_policy, i32 noundef 0, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp2 = icmp slt i32 %call2.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
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
  %call12 = call i32 @tcf_idr_check_alloc(ptr noundef %call, ptr noundef nonnull %index, ptr noundef %a, i32 noundef %and.lobit) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end7
  %11 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index, align 4
  %call17 = call i32 @tcf_idr_create_from_flags(ptr noundef %call, i32 noundef %12, ptr noundef %est, ptr noundef %a, ptr noundef nonnull @act_csum_ops, i32 noundef %and.lobit, i32 noundef %flags) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.then14.if.end35_crit_edge, label %if.then19

if.then14.if.end35_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then19:                                        ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #14
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %14) #12
  br label %cleanup

if.else:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp21 = icmp slt i32 %call12, 1
  %brmerge = or i1 %tobool, %cmp21
  %call12.mux = select i1 %cmp21, i32 %call12, i32 0
  br i1 %brmerge, label %if.else.cleanup_crit_edge, label %if.end26

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end26:                                         ; preds = %if.else
  %and27 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.then29, label %if.end26.if.end35_crit_edge

if.end26.if.end35_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %a, align 4
  %call31 = call i32 @tcf_idr_release(ptr noundef %16, i1 noundef zeroext false) #12
  br label %cleanup

if.end35:                                         ; preds = %if.end26.if.end35_crit_edge, %if.then14.if.end35_crit_edge
  %ret.0 = phi i32 [ 0, %if.end26.if.end35_crit_edge ], [ 1, %if.then14.if.end35_crit_edge ]
  %action = getelementptr i8, ptr %7, i32 12
  %17 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %action, align 4
  %call36 = call i32 @tcf_action_check_ctrlact(i32 noundef %18, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end35.release_idr_crit_edge, label %if.end40

if.end35.release_idr_crit_edge:                   ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_idr

if.end40:                                         ; preds = %if.end35
  %19 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %a, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 12) #16
  %tobool42.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool42.not, label %if.then46, label %if.end47, !prof !66

if.then46:                                        ; preds = %if.end40
  %22 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %goto_ch, align 4
  %tobool120.not = icmp eq ptr %23, null
  br i1 %tobool120.not, label %if.then46.release_idr_crit_edge, label %if.then121

if.then46.release_idr_crit_edge:                  ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  br label %release_idr

if.end47:                                         ; preds = %if.end40
  %update_flags = getelementptr i8, ptr %7, i32 24
  %24 = ptrtoint ptr %update_flags to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %update_flags, align 4
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %call7.i.i, align 8
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %20, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #12
  %27 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %a, align 4
  %29 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %action, align 4
  %31 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %goto_ch, align 4
  %call50 = call ptr @tcf_action_set_ctrlact(ptr noundef %28, i32 noundef %30, ptr noundef %32) #12
  %33 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call50, ptr %goto_ch, align 4
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %20, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool54.not = icmp eq i32 %call.i, 0
  br i1 %tobool54.not, label %land.lhs.true, label %if.end47.do.end_crit_edge

if.end47.do.end_crit_edge:                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true:                                    ; preds = %if.end47
  %call55 = call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call55)
  %tobool56.not = icmp eq i32 %call55, 0
  br i1 %tobool56.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true57

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

land.lhs.true57:                                  ; preds = %land.lhs.true
  %.b171 = load i1, ptr @tcf_csum_init.__warned, align 1
  br i1 %.b171, label %land.lhs.true57.do.end_crit_edge, label %if.then59

land.lhs.true57.do.end_crit_edge:                 ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

if.then59:                                        ; preds = %land.lhs.true57
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcf_csum_init.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 106, ptr noundef nonnull @.str.4) #12
  br label %do.end

do.end:                                           ; preds = %if.then59, %land.lhs.true57.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %if.end47.do.end_crit_edge
  %params = getelementptr inbounds %struct.tcf_csum, ptr %20, i32 0, i32 1
  %34 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %params, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !69
  %36 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %call7.i.i, ptr %params, align 16
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #12
  %37 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %goto_ch, align 4
  %tobool105.not = icmp eq ptr %38, null
  br i1 %tobool105.not, label %do.end.if.end107_crit_edge, label %if.then106

do.end.if.end107_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end107

if.then106:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  call void @tcf_chain_put_by_act(ptr noundef nonnull %38) #12
  br label %if.end107

if.end107:                                        ; preds = %if.then106, %do.end.if.end107_crit_edge
  %tobool108.not = icmp eq ptr %35, null
  br i1 %tobool108.not, label %if.end107.cleanup_crit_edge, label %do.end115

if.end107.cleanup_crit_edge:                      ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end115:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #14
  %rcu = getelementptr inbounds %struct.tcf_csum_params, ptr %35, i32 0, i32 1
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 4 to ptr)) #12
  br label %cleanup

if.then121:                                       ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #14
  call void @tcf_chain_put_by_act(ptr noundef nonnull %23) #12
  br label %release_idr

release_idr:                                      ; preds = %if.then121, %if.then46.release_idr_crit_edge, %if.end35.release_idr_crit_edge
  %err.0 = phi i32 [ %call36, %if.end35.release_idr_crit_edge ], [ -12, %if.then121 ], [ -12, %if.then46.release_idr_crit_edge ]
  %39 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %a, align 4
  %call124 = call i32 @tcf_idr_release(ptr noundef %40, i1 noundef zeroext %tobool) #12
  br label %cleanup

cleanup:                                          ; preds = %release_idr, %do.end115, %if.end107.cleanup_crit_edge, %if.then29, %if.else.cleanup_crit_edge, %if.then19, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %release_idr ], [ -17, %if.then29 ], [ %call17, %if.then19 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call12.mux, %if.else.cleanup_crit_edge ], [ %ret.0, %do.end115 ], [ %ret.0, %if.end107.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goto_ch) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_csum_walker(ptr noundef %net, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @csum_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_generic_walker(ptr noundef %call, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #12
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tcf_csum_get_fill_size(ptr nocapture noundef readnone %act) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 28
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_csum_offload_act_setup(ptr noundef %act, ptr nocapture noundef writeonly %entry_data, ptr nocapture noundef writeonly %index_inc, i1 noundef zeroext %bind) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %bind, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 15, ptr %entry_data, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !70
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i.i, label %if.then.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.rcu_read_lock.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then.rcu_read_lock.exit.i_crit_edge
  %params.i = getelementptr inbounds %struct.tcf_csum, ptr %act, i32 0, i32 1
  %5 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %params.i, align 16
  %call.i = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @tcf_csum_update_flags.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @tcf_csum_update_flags.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 35, ptr noundef nonnull @.str.1) #12
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %call.i11.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i11.i, label %do.end7.i.tcf_csum_update_flags.exit_crit_edge, label %land.lhs.true.i14.i

do.end7.i.tcf_csum_update_flags.exit_crit_edge:   ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_csum_update_flags.exit

land.lhs.true.i14.i:                              ; preds = %do.end7.i
  %call1.i12.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call1.i12.i, 0
  br i1 %tobool.not.i13.i, label %land.lhs.true.i14.i.tcf_csum_update_flags.exit_crit_edge, label %land.lhs.true2.i16.i

land.lhs.true.i14.i.tcf_csum_update_flags.exit_crit_edge: ; preds = %land.lhs.true.i14.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_csum_update_flags.exit

land.lhs.true2.i16.i:                             ; preds = %land.lhs.true.i14.i
  %.b4.i15.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i, label %land.lhs.true2.i16.i.tcf_csum_update_flags.exit_crit_edge, label %if.then.i17.i

land.lhs.true2.i16.i.tcf_csum_update_flags.exit_crit_edge: ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tcf_csum_update_flags.exit

if.then.i17.i:                                    ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #12
  br label %tcf_csum_update_flags.exit

tcf_csum_update_flags.exit:                       ; preds = %if.then.i17.i, %land.lhs.true2.i16.i.tcf_csum_update_flags.exit_crit_edge, %land.lhs.true.i14.i.tcf_csum_update_flags.exit_crit_edge, %do.end7.i.tcf_csum_update_flags.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !71
  %9 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i18.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i18.i to ptr
  %preempt_count.i.i.i.i19.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i19.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i19.i, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  %13 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %8, ptr %13, align 8
  %15 = ptrtoint ptr %index_inc to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %index_inc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %id2 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %16 = ptrtoint ptr %id2 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 15, ptr %id2, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %tcf_csum_update_flags.exit
  ret i32 0
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
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bstats_update(ptr noundef %bstats, ptr nocapture noundef readonly %skb) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %_bstats_update.exit

land.lhs.true.i.i.i:                              ; preds = %cond.end
  %9 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !72
  %13 = tail call i32 @llvm.read_register.i32(metadata !56) #12
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !73
  %22 = tail call i32 @llvm.read_register.i32(metadata !56) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %_bstats_update.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !56) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %_bstats_update.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i9.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %33, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !74
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
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !75
  %41 = tail call i32 @llvm.read_register.i32(metadata !56) #12
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
  call void @__sanitizer_cov_trace_pc() #14
  br label %_bstats_update.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i._bstats_update.exit_crit_edge, label %if.then.i.i.i, !prof !76

land.rhs58.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %_bstats_update.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #12
  br label %_bstats_update.exit

_bstats_update.exit:                              ; preds = %if.then.i.i.i, %land.rhs58.i.i.i._bstats_update.exit_crit_edge, %land.rhs22.i.i.i._bstats_update.exit_crit_edge, %land.rhs.i.i.i._bstats_update.exit_crit_edge, %land.lhs.true.i.i.i._bstats_update.exit_crit_edge, %cond.end._bstats_update.exit_crit_edge
  %conv = zext i32 %1 to i64
  %syncp.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2
  %45 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !77
  %dep_map.i.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2, i32 0, i32 1
  %47 = tail call ptr @llvm.returnaddress(i32 0) #12
  %48 = ptrtoint ptr %47 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %48) #12
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
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %48) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !78
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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcf_csum_ipv4_udp(ptr noundef %skb, i32 noundef %ihl, i32 noundef %ipl, i32 noundef %udplite) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.not = icmp eq i16 %3, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gso_type, align 8
  %and = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call fastcc ptr @tcf_csum_skb_nextlayer(ptr noundef %skb, i32 noundef %ihl, i32 noundef %ipl, i32 noundef 8)
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %len = getelementptr inbounds %struct.udphdr, ptr %call2, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %udplite)
  %tobool6.not = icmp eq i32 %udplite, 0
  %check = getelementptr inbounds %struct.udphdr, ptr %call2, i32 0, i32 3
  br i1 %tobool6.not, label %lor.lhs.false, label %if.then11

lor.lhs.false:                                    ; preds = %if.end4
  %12 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %13)
  %tobool7.not = icmp eq i16 %13, 0
  br i1 %tobool7.not, label %lor.lhs.false.if.end49_crit_edge, label %if.else31

lor.lhs.false.if.end49_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end49

if.then11:                                        ; preds = %if.end4
  %14 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 0, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp13 = icmp eq i16 %11, 0
  br i1 %cmp13, label %if.then15, label %if.else

if.then15:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %ipl, %ihl
  br label %if.end40

if.else:                                          ; preds = %if.then11
  %conv12 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %11)
  %cmp18 = icmp ult i16 %11, 8
  %sub22 = sub i32 %ipl, %ihl
  call void @__sanitizer_cov_trace_cmp4(i32 %sub22, i32 %conv12)
  %cmp23.not = icmp ult i32 %sub22, %conv12
  %or.cond = or i1 %cmp18, %cmp23.not
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %if.else.if.end40_crit_edge

if.else.if.end40_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else31:                                        ; preds = %lor.lhs.false
  %15 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %check, align 2
  %conv32 = zext i16 %11 to i32
  %sub33 = sub i32 %ipl, %ihl
  call void @__sanitizer_cov_trace_cmp4(i32 %sub33, i32 %conv32)
  %cmp34.not = icmp eq i32 %sub33, %conv32
  br i1 %cmp34.not, label %if.else31.if.end40_crit_edge, label %if.else31.cleanup_crit_edge

if.else31.cleanup_crit_edge:                      ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else31.if.end40_crit_edge:                     ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end40

if.end40:                                         ; preds = %if.else31.if.end40_crit_edge, %if.else.if.end40_crit_edge, %if.then15
  %sub.sink = phi i32 [ %sub, %if.then15 ], [ %conv12, %if.else.if.end40_crit_edge ], [ %conv32, %if.else31.if.end40_crit_edge ]
  %conv41.pre-phi = phi i32 [ 0, %if.then15 ], [ %conv12, %if.else.if.end40_crit_edge ], [ %conv32, %if.else31.if.end40_crit_edge ]
  %call16 = tail call i32 @csum_partial(ptr noundef nonnull %call2, i32 noundef %sub.sink, i32 noundef 0) #12
  %16 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call16, ptr %16, align 8
  %protocol = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 6
  %18 = ptrtoint ptr %protocol to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %protocol, align 1
  %conv.i.i84 = zext i8 %19 to i32
  %add.i.i = add nuw nsw i32 %conv41.pre-phi, %conv.i.i84
  %daddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 9
  %20 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %daddr, align 4
  %saddr = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 8
  %22 = ptrtoint ptr %saddr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %saddr, align 4
  %24 = tail call i32 asm "adds\09$0, $1, $2\09@ csum_tcpudp_nofold\09\0A\09adcs\09$0, $0, $3\09\09\09\09\0A\09adcs\09$0, $0, $4\09\09\09\09\0A\09adc\09$0, $0, #0", "=&r,r,r,r,r,~{cc}"(i32 %call16, i32 %21, i32 %23, i32 %add.i.i) #15, !srcloc !68
  %25 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %24) #15, !srcloc !67
  %neg.i.i = xor i32 %25, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i2.i = trunc i32 %shr.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i2.i)
  %tobool45.not = icmp eq i16 %conv.i2.i, 0
  %spec.store.select = select i1 %tobool45.not, i16 -1, i16 %conv.i2.i
  %26 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %spec.store.select, ptr %check, align 2
  br label %if.end49

if.end49:                                         ; preds = %if.end40, %lor.lhs.false.if.end49_crit_edge
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %27 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %27)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %if.else31.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.else31.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %if.end49 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_send_check(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tcf_csum_skb_nextlayer(ptr noundef %skb, i32 noundef %ihl, i32 noundef %ipl, i32 noundef %jhl) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
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
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %5 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add = add i32 %jhl, %ihl
  %add1 = add i32 %sub.ptr.sub.i, %ipl
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %6 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %8 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %add1, i32 %sub.i.i)
  %cmp.not.i = icmp ugt i32 %add1, %sub.i.i
  br i1 %cmp.not.i, label %if.end.i, label %entry.pskb_may_pull.exit_crit_edge, !prof !66

entry.pskb_may_pull.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %pskb_may_pull.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %add1)
  %cmp3.i = icmp ult i32 %7, %add1
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %if.end11.i, !prof !66

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end11.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %sub.i = sub i32 %add1, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #12
  %cmp14.i = icmp eq ptr %call13.i, null
  br label %pskb_may_pull.exit

pskb_may_pull.exit:                               ; preds = %if.end11.i, %entry.pskb_may_pull.exit_crit_edge
  %retval.0.i = phi i1 [ %cmp14.i, %if.end11.i ], [ false, %entry.pskb_may_pull.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %ipl)
  %cmp = icmp ugt i32 %add, %ipl
  %or.cond = or i1 %cmp, %retval.0.i
  br i1 %or.cond, label %pskb_may_pull.exit.cleanup_crit_edge, label %lor.lhs.false3

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

lor.lhs.false3:                                   ; preds = %pskb_may_pull.exit
  %add4 = add i32 %sub.ptr.sub.i, %add
  %cloned.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %10 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %bf.load.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i)
  %tobool.not.i.i = icmp sgt i8 %bf.load.i.i, -1
  br i1 %tobool.not.i.i, label %lor.lhs.false3.if.else_crit_edge, label %skb_cloned.exit.i

lor.lhs.false3.if.else_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

skb_cloned.exit.i:                                ; preds = %lor.lhs.false3
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %11 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %end.i.i.i, align 4
  %dataref.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %12, i32 0, i32 10
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i, i32 noundef 4) #12
  %13 = ptrtoint ptr %dataref.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %dataref.i.i, align 4
  %and.i.i = and i32 %14, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i)
  %cmp.i.not.i = icmp eq i32 %and.i.i, 1
  br i1 %cmp.i.not.i, label %skb_cloned.exit.i.if.else_crit_edge, label %land.lhs.true.i

skb_cloned.exit.i.if.else_crit_edge:              ; preds = %skb_cloned.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

land.lhs.true.i:                                  ; preds = %skb_cloned.exit.i
  %15 = ptrtoint ptr %cloned.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.skb_clone_writable.exit.i_crit_edge, label %skb_header_cloned.exit.i.i

land.lhs.true.i.skb_clone_writable.exit.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_clone_writable.exit.i

skb_header_cloned.exit.i.i:                       ; preds = %land.lhs.true.i
  %16 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %17, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #12
  %18 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %and.i.i.i = and i32 %19, 65535
  %shr.i.i.i = ashr i32 %19, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge, label %skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge

skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_try_make_writable.exit

skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_clone_writable.exit.i

skb_clone_writable.exit.i:                        ; preds = %skb_header_cloned.exit.i.i.skb_clone_writable.exit.i_crit_edge, %land.lhs.true.i.skb_clone_writable.exit.i_crit_edge
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %21 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %23 to i32
  %sub.ptr.sub.i.i.i = add i32 %add4, %sub.ptr.lhs.cast.i.i.i
  %add.i.i = sub i32 %sub.ptr.sub.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %hdr_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 9
  %24 = ptrtoint ptr %hdr_len.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %hdr_len.i.i, align 2
  %conv.i.i15 = zext i16 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %conv.i.i15)
  %cmp.i7.not.i = icmp ugt i32 %add.i.i, %conv.i.i15
  br i1 %cmp.i7.not.i, label %skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge, label %skb_clone_writable.exit.i.if.else_crit_edge

skb_clone_writable.exit.i.if.else_crit_edge:      ; preds = %skb_clone_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge: ; preds = %skb_clone_writable.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %skb_try_make_writable.exit

skb_try_make_writable.exit:                       ; preds = %skb_clone_writable.exit.i.skb_try_make_writable.exit_crit_edge, %skb_header_cloned.exit.i.i.skb_try_make_writable.exit_crit_edge
  %call3.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef 0, i32 noundef 0, i32 noundef 2592) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.i.not = icmp eq i32 %call3.i, 0
  br i1 %tobool4.i.not, label %skb_try_make_writable.exit.if.else_crit_edge, label %skb_try_make_writable.exit.cleanup_crit_edge

skb_try_make_writable.exit.cleanup_crit_edge:     ; preds = %skb_try_make_writable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

skb_try_make_writable.exit.if.else_crit_edge:     ; preds = %skb_try_make_writable.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.else

if.else:                                          ; preds = %skb_try_make_writable.exit.if.else_crit_edge, %skb_clone_writable.exit.i.if.else_crit_edge, %skb_cloned.exit.i.if.else_crit_edge, %lor.lhs.false3.if.else_crit_edge
  %26 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %head.i.i, align 8
  %28 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %network_header.i.i, align 4
  %conv.i = zext i16 %29 to i32
  %add.ptr.i = getelementptr i8, ptr %27, i32 %conv.i
  %add.ptr = getelementptr i8, ptr %add.ptr.i, i32 %ihl
  br label %cleanup

cleanup:                                          ; preds = %if.else, %skb_try_make_writable.exit.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %add.ptr, %if.else ], [ null, %skb_try_make_writable.exit.cleanup_crit_edge ], [ null, %pskb_may_pull.exit.cleanup_crit_edge ], [ null, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #8

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_csum_update(ptr noundef %buff, i32 noundef %len, i32 noundef %sum) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @crc32c(i32 noundef %sum, ptr noundef %buff, i32 noundef %len) #12
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_csum_combine(i32 noundef %csum, i32 noundef %csum2, i32 noundef %offset, i32 noundef %len) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call.i = tail call i32 @__crc32c_le_shift(i32 noundef %csum, i32 noundef %len) #17
  %xor.i = xor i32 %call.i, %csum2
  ret i32 %xor.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @__crc32c_le_shift(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcf_csum_ipv6_udp(ptr noundef %skb, i32 noundef %ihl, i32 noundef %ipl, i32 noundef %udplite) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %end.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %0 = ptrtoint ptr %end.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %end.i.i, align 4
  %gso_size.i = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %gso_size.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %gso_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.i.not = icmp eq i16 %3, 0
  br i1 %tobool.i.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %gso_type = getelementptr inbounds %struct.skb_shared_info, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %gso_type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %gso_type, align 8
  %and = and i32 %5, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %call2 = tail call fastcc ptr @tcf_csum_skb_nextlayer(ptr noundef %skb, i32 noundef %ihl, i32 noundef %ipl, i32 noundef 8)
  %cmp = icmp eq ptr %call2, null
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %6 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %8 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %9 to i32
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 %conv.i.i
  %len = getelementptr inbounds %struct.udphdr, ptr %call2, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %len, align 2
  %check = getelementptr inbounds %struct.udphdr, ptr %call2, i32 0, i32 3
  %12 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 0, ptr %check, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %udplite)
  %tobool6.not = icmp eq i32 %udplite, 0
  %conv27 = zext i16 %11 to i32
  br i1 %tobool6.not, label %if.else26, label %if.then7

if.then7:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %11)
  %cmp8 = icmp eq i16 %11, 0
  br i1 %cmp8, label %if.then10, label %if.else

if.then10:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  %sub = sub i32 %ipl, %ihl
  br label %if.end35

if.else:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %11)
  %cmp13 = icmp ult i16 %11, 8
  %sub17 = sub i32 %ipl, %ihl
  call void @__sanitizer_cov_trace_cmp4(i32 %sub17, i32 %conv27)
  %cmp18.not = icmp ult i32 %sub17, %conv27
  %or.cond = or i1 %cmp13, %cmp18.not
  br i1 %or.cond, label %if.else.cleanup_crit_edge, label %if.else.if.end35_crit_edge

if.else.if.end35_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else26:                                        ; preds = %if.end4
  %sub28 = sub i32 %ipl, %ihl
  call void @__sanitizer_cov_trace_cmp4(i32 %sub28, i32 %conv27)
  %cmp29.not = icmp eq i32 %sub28, %conv27
  br i1 %cmp29.not, label %if.else26.if.end35_crit_edge, label %if.else26.cleanup_crit_edge

if.else26.cleanup_crit_edge:                      ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else26.if.end35_crit_edge:                     ; preds = %if.else26
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end35

if.end35:                                         ; preds = %if.else26.if.end35_crit_edge, %if.else.if.end35_crit_edge, %if.then10
  %sub.sink = phi i32 [ %sub, %if.then10 ], [ %conv27, %if.else.if.end35_crit_edge ], [ %conv27, %if.else26.if.end35_crit_edge ]
  %conv36.pre-phi = phi i32 [ 0, %if.then10 ], [ %conv27, %if.else.if.end35_crit_edge ], [ %conv27, %if.else26.if.end35_crit_edge ]
  %cond = phi i32 [ 136, %if.then10 ], [ 136, %if.else.if.end35_crit_edge ], [ 17, %if.else26.if.end35_crit_edge ]
  %call11 = tail call i32 @csum_partial(ptr noundef nonnull %call2, i32 noundef %sub.sink, i32 noundef 0) #12
  %13 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call11, ptr %13, align 8
  %saddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 5
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %call.i = tail call i32 @__csum_ipv6_magic(ptr noundef %saddr, ptr noundef %daddr, i32 noundef %conv36.pre-phi, i32 noundef %cond, i32 noundef %call11) #12
  %15 = tail call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %call.i) #15, !srcloc !67
  %neg.i.i = xor i32 %15, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i.i78 = trunc i32 %shr.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i.i78)
  %tobool42.not = icmp eq i16 %conv.i.i78, 0
  %spec.select = select i1 %tobool42.not, i16 -1, i16 %conv.i.i78
  %16 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %spec.select, ptr %check, align 2
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %17 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  store i16 %bf.clear, ptr %ip_summed, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %if.else26.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 1, %if.else26.cleanup_crit_edge ], [ 1, %if.else.cleanup_crit_edge ], [ 1, %if.end35 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__csum_ipv6_magic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
  call void @__sanitizer_cov_trace_pc() #14
  %0 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !70
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #12
  %call.i = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #12
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %gen = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 43
  %4 = ptrtoint ptr %gen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %gen, align 128
  %call = tail call i32 @rcu_read_lock_held() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end7_crit_edge

rcu_read_lock.exit.do.end7_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b9 = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 45, ptr noundef nonnull @.str.1) #12
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %arrayidx = getelementptr [0 x ptr], ptr %5, i32 0, i32 %id
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %call.i10 = tail call zeroext i1 @rcu_is_watching() #12
  br i1 %call.i10, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i13

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true.i13:                                ; preds = %do.end7
  %call1.i11 = tail call i32 @debug_lockdep_rcu_enabled() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11)
  %tobool.not.i12 = icmp eq i32 %call1.i11, 0
  br i1 %tobool.not.i12, label %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i15

land.lhs.true.i13.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

land.lhs.true2.i15:                               ; preds = %land.lhs.true.i13
  %.b4.i14 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14, label %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, label %if.then.i16

land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcu_read_unlock.exit

if.then.i16:                                      ; preds = %land.lhs.true2.i15
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #12
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !71
  %8 = tail call i32 @llvm.read_register.i32(metadata !56) #12
  %and.i.i.i.i.i17 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i17 to ptr
  %preempt_count.i.i.i.i18 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i18, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i18, align 4
  tail call void @rcu_read_unlock_strict() #12
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #12
  ret ptr %7
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_search(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_generic_walker(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @csum_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @csum_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 156) #16
  %2 = ptrtoint ptr %call to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7.i.i, ptr %call, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not.i, label %entry.tc_action_net_init.exit_crit_edge, label %if.end.i

entry.tc_action_net_init.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tc_action_net_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %ops2.i = getelementptr inbounds %struct.tc_action_net, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @act_csum_ops, ptr %ops2.i, align 4
  %net4.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %net4.i, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @tc_action_net_init.__key) #12
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %action_idr.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %action_idr.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #12
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
define internal void @csum_exit_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @csum_net_id, align 4
  tail call void @rtnl_lock() #12
  %1 = ptrtoint ptr %net_list to i32
  call void @__asan_load4_noabort(i32 %1)
  %.pn12.i = load ptr, ptr %net_list, align 4
  %cmp.not13.i = icmp eq ptr %.pn12.i, %net_list
  br i1 %cmp.not13.i, label %entry.tc_action_net_exit.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.tc_action_net_exit.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %tc_action_net_exit.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn14.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn12.i, %entry.for.body.i_crit_edge ]
  %net.0.i = getelementptr i8, ptr %.pn14.i, i32 -116
  %call.i = tail call fastcc ptr @net_generic(ptr noundef %net.0.i, i32 noundef %0) #12
  %ops.i = getelementptr inbounds %struct.tc_action_net, ptr %call.i, i32 0, i32 1
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call.i, align 4
  tail call void @tcf_idrinfo_destroy(ptr noundef %3, ptr noundef %5) #12
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %call.i, align 4
  tail call void @kfree(ptr noundef %7) #12
  %8 = ptrtoint ptr %.pn14.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn14.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %net_list
  br i1 %cmp.not.i, label %for.body.i.tc_action_net_exit.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.tc_action_net_exit.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %tc_action_net_exit.exit

tc_action_net_exit.exit:                          ; preds = %for.body.i.tc_action_net_exit.exit_crit_edge, %entry.tc_action_net_exit.exit_crit_edge
  tail call void @rtnl_unlock() #12
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

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

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

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
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
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { nounwind readnone }
attributes #16 = { nounwind allocsize(2) }
attributes #17 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !14, !15, !17, !18, !20, !22, !24, !25, !27, !29, !31, !32, !34, !35, !36, !38, !39, !41, !43, !45, !47, !48, !50, !52, !53, !55}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__UNIQUE_ID_description679, !1, !"__UNIQUE_ID_description679", i1 false, i1 false}
!1 = !{!"../net/sched/act_csum.c", i32 750, i32 1}
!2 = !{ptr @__UNIQUE_ID_file680, !3, !"__UNIQUE_ID_file680", i1 false, i1 false}
!3 = !{!"../net/sched/act_csum.c", i32 751, i32 1}
!4 = !{ptr @__UNIQUE_ID_license681, !3, !"__UNIQUE_ID_license681", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_act_csum__682_763_csum_init_module6, !6, !"__initcall__kmod_act_csum__682_763_csum_init_module6", i1 false, i1 false}
!6 = !{!"../net/sched/act_csum.c", i32 763, i32 1}
!7 = !{ptr @__exitcall_csum_cleanup_module, !8, !"__exitcall_csum_cleanup_module", i1 false, i1 false}
!8 = !{!"../net/sched/act_csum.c", i32 764, i32 1}
!9 = !{ptr @act_csum_ops, !10, !"act_csum_ops", i1 false, i1 false}
!10 = !{!"../net/sched/act_csum.c", i32 716, i32 29}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/sched/act_csum.c", i32 578, i32 11}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__already_done", i1 false, i1 false}
!16 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!20 = !{ptr @sctp_csum_ops, !21, !"sctp_csum_ops", i1 false, i1 false}
!21 = !{!"../include/net/sctp/checksum.h", i32 46, i32 38}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/sched/act_csum.c", i32 645, i32 11}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/net/netlink.h", i32 991, i32 3}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/sched/act_csum.c", i32 671, i32 11}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!38 = !{ptr @.str.9, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @csum_net_id, !40, !"csum_net_id", i1 false, i1 false}
!40 = !{!"../net/sched/act_csum.c", i32 40, i32 21}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/sched/act_csum.c", i32 105, i32 15}
!43 = !{ptr @csum_policy, !44, !"csum_policy", i1 false, i1 false}
!44 = !{!"../net/sched/act_csum.c", i32 36, i32 32}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/net/tc_act/tc_csum.h", i32 35, i32 17}
!47 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @csum_net_ops, !49, !"csum_net_ops", i1 false, i1 false}
!49 = !{!"../net/sched/act_csum.c", i32 743, i32 33}
!50 = !{ptr @tc_action_net_init.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../include/net/act_api.h", i32 156, i32 2}
!52 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @xa_init_flags.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!55 = !{ptr @.str.12, !54, !"<string literal>", i1 false, i1 false}
!56 = !{!"sp"}
!57 = !{i32 1, !"wchar_size", i32 2}
!58 = !{i32 1, !"min_enum_size", i32 4}
!59 = !{i32 8, !"branch-target-enforcement", i32 0}
!60 = !{i32 8, !"sign-return-address", i32 0}
!61 = !{i32 8, !"sign-return-address-all", i32 0}
!62 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!63 = !{i32 7, !"uwtable", i32 1}
!64 = !{i32 7, !"frame-pointer", i32 2}
!65 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!66 = !{!"branch_weights", i32 1, i32 2000}
!67 = !{i64 6595239}
!68 = !{i64 6596592, i64 6596632, i64 6596660, i64 6596705}
!69 = !{i64 2159402532}
!70 = !{i64 2149371903}
!71 = !{i64 2149372169}
!72 = !{i64 2149879902}
!73 = !{i64 2149884834}
!74 = !{i64 2149906546}
!75 = !{i64 2149911438}
!76 = !{!"branch_weights", i32 2000, i32 1}
!77 = !{i64 2149987895}
!78 = !{i64 2149988220}
