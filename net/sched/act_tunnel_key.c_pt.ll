; ModuleID = '/llk/IR_all_yes/net/sched/act_tunnel_key.c_pt.bc'
source_filename = "../net/sched/act_tunnel_key.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tc_action_ops = type { %struct.list_head, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.76 }
%union.anon.76 = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.tcf_tunnel_key = type { %struct.tc_action, ptr, [12 x i8] }
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
%struct.tcf_tunnel_key_params = type { %struct.callback_head, i32, ptr }
%struct.callback_head = type { ptr, ptr }
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
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.tc_tunnel_key = type { i32, i32, i32, i32, i32, i32 }
%struct.metadata_dst = type { %struct.dst_entry, i32, %union.anon.160 }
%union.anon.160 = type { %struct.ip_tunnel_info }
%struct.ip_tunnel_info = type { %struct.ip_tunnel_key, %struct.dst_cache, i8, i8 }
%struct.ip_tunnel_key = type { i64, %union.anon.161, i16, i8, i8, i32, i16, i16 }
%union.anon.161 = type { %struct.anon.163 }
%struct.anon.163 = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.71 }
%union.anon.71 = type { [4 x i32] }
%struct.dst_cache = type { ptr, i32 }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.166, ptr }
%union.anon.166 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, i64, i64, i64, i32 }
%struct.flow_offload_action = type { ptr, i32, i32, i32, %struct.flow_stats, %struct.flow_action }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.geneve_opt = type { i16, i8, i8, [0 x i8] }
%struct.erspan_metadata = type { i32, %union.anon.165 }
%union.anon.165 = type { %struct.erspan_md2 }
%struct.erspan_md2 = type { i32, i16, i16 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.99, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.99 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.tc_action_net = type { ptr, ptr }
%struct.tcf_idrinfo = type { %struct.mutex, %struct.idr, ptr }

@act_tunnel_key_ops = internal global { %struct.tc_action_ops, [48 x i8] } { %struct.tc_action_ops { %struct.list_head zeroinitializer, [16 x i8] c"tunnel_key\00\00\00\00\00\00", i32 17, i32 288, ptr null, ptr @tunnel_key_act, ptr @tunnel_key_dump, ptr @tunnel_key_release, ptr @tunnel_key_search, ptr @tunnel_key_init, ptr @tunnel_key_walker, ptr null, ptr null, ptr null, ptr null, ptr @tcf_tunnel_key_offload_act_setup }, [48 x i8] zeroinitializer }, align 32
@tunnel_key_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @tunnel_key_init_net, ptr null, ptr null, ptr @tunnel_key_exit_net, ptr @tunnel_key_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_act_tunnel_key__598_886_tunnel_key_init_module6 = internal global ptr @tunnel_key_init_module, section ".initcall6.init", align 4
@__exitcall_tunnel_key_cleanup_module = internal global ptr @tunnel_key_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author599 = internal constant [49 x i8] c"act_tunnel_key.author=Amir Vadai <amir@vadai.me>\00", section ".modinfo", align 1
@__UNIQUE_ID_description600 = internal constant [58 x i8] c"act_tunnel_key.description=ip tunnel manipulation actions\00", section ".modinfo", align 1
@__UNIQUE_ID_file601 = internal constant [45 x i8] c"act_tunnel_key.file=net/sched/act_tunnel_key\00", section ".modinfo", align 1
@__UNIQUE_ID_license602 = internal constant [30 x i8] c"act_tunnel_key.license=GPL v2\00", section ".modinfo", align 1
@tunnel_key_act.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/sched/act_tunnel_key.c\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@tunnel_key_act.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Bad tunnel_key action %d.\0A\00", [37 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"include/net/dst.h\00", [46 x i8] zeroinitializer }, align 32
@tunnel_key_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@tunnel_key_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@tunnel_key_init.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Tunnel requires attributes to be passed\00", [56 x i8] zeroinitializer }, align 32
@tunnel_key_policy = internal constant { [14 x %struct.nla_policy], [48 x i8] } { [14 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 24, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@tunnel_key_init.__msg.11 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Failed to parse nested tunnel key attributes\00", [51 x i8] zeroinitializer }, align 32
@tunnel_key_init.__msg.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Missing tunnel key parameters\00", [34 x i8] zeroinitializer }, align 32
@tunnel_key_init.__msg.13 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Missing either ipv4 or ipv6 src and dst\00", [56 x i8] zeroinitializer }, align 32
@tunnel_key_init.__msg.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Cannot allocate tunnel metadata dst\00", [60 x i8] zeroinitializer }, align 32
@tunnel_key_init.__msg.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unknown tunnel key action\00", [38 x i8] zeroinitializer }, align 32
@tunnel_key_init.__msg.16 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Cannot create TC IDR\00", [43 x i8] zeroinitializer }, align 32
@tunnel_key_init.__msg.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"TC IDR already exists\00", [42 x i8] zeroinitializer }, align 32
@tunnel_key_init.__msg.18 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Cannot allocate tunnel key parameters\00", [58 x i8] zeroinitializer }, align 32
@tunnel_key_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tunnel_key_copy_opts.__msg = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Duplicate type for geneve options\00", [62 x i8] zeroinitializer }, align 32
@tunnel_key_copy_opts.__msg.19 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Tunnel options exceeds max size\00", [32 x i8] zeroinitializer }, align 32
@tunnel_key_copy_opts.__msg.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Duplicate type for vxlan options\00", [63 x i8] zeroinitializer }, align 32
@tunnel_key_copy_opts.__msg.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Duplicate type for erspan options\00", [62 x i8] zeroinitializer }, align 32
@tunnel_key_copy_opts.__msg.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Empty list of tunnel options\00", [35 x i8] zeroinitializer }, align 32
@tunnel_key_copy_opts.__msg.23 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"Trailing data after parsing tunnel key options attributes\00", [38 x i8] zeroinitializer }, align 32
@enc_opts_policy = internal constant { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [32 x i8] } { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ { i8, i8, i16, { i16, [2 x i8] } } { i8 0, i8 0, i16 0, { i16, [2 x i8] } { i16 2, [2 x i8] undef } }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.76 zeroinitializer } }>, [32 x i8] zeroinitializer }, align 32
@geneve_opt_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 128, %union.anon.76 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@tunnel_key_copy_geneve_opt.__msg = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Missing tunnel key geneve option class, type or data\00", [43 x i8] zeroinitializer }, align 32
@tunnel_key_copy_geneve_opt.__msg.25 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"Tunnel key geneve option data is less than 4 bytes long\00", [40 x i8] zeroinitializer }, align 32
@tunnel_key_copy_geneve_opt.__msg.26 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"Tunnel key geneve option data is not a multiple of 4 bytes long\00", [32 x i8] zeroinitializer }, align 32
@vxlan_opt_policy = internal constant { [2 x %struct.nla_policy], [16 x i8] } { [2 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }], [16 x i8] zeroinitializer }, align 32
@tunnel_key_copy_vxlan_opt.__msg = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Missing tunnel key vxlan option gbp\00", [60 x i8] zeroinitializer }, align 32
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@erspan_opt_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.76 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@tunnel_key_copy_erspan_opt.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Missing tunnel key erspan option ver\00", [59 x i8] zeroinitializer }, align 32
@tunnel_key_copy_erspan_opt.__msg.27 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Missing tunnel key erspan option index\00", [57 x i8] zeroinitializer }, align 32
@tunnel_key_copy_erspan_opt.__msg.28 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Missing tunnel key erspan option dir or hwid\00", [51 x i8] zeroinitializer }, align 32
@tunnel_key_copy_erspan_opt.__msg.29 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Tunnel key erspan option ver is incorrect\00", [54 x i8] zeroinitializer }, align 32
@tunnel_key_opts_set.__msg = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Cannot set tunnel options for unknown tunnel type\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@is_tcf_tunnel_set.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"include/net/tc_act/tc_tunnel_key.h\00", [61 x i8] zeroinitializer }, align 32
@tcf_tunnel_info.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@is_tcf_tunnel_release.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tc_action_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tn->idrinfo->lock\00", [45 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.32 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.33 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.34 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2048]
@__sancov_gen_cov_switch_values.37 = internal global [4 x i64] [i64 2, i64 8, i64 1, i64 2]
@___asan_gen_.38 = private unnamed_addr constant [19 x i8] c"act_tunnel_key_ops\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 843, i32 29 }
@___asan_gen_.41 = private unnamed_addr constant [19 x i8] c"tunnel_key_net_ops\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 869, i32 33 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 33, i32 11 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 48, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 271, i32 2 }
@___asan_gen_.57 = private unnamed_addr constant [21 x i8] c"../include/net/dst.h\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 231, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 726, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 991, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"tunnel_key_net_id\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 23, i32 21 }
@___asan_gen_.69 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 45, i32 7 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 695, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.78, i32 723, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 380, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant [18 x i8] c"tunnel_key_policy\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 332, i32 32 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 387, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 392, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 464, i32 4 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 470, i32 4 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 492, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 502, i32 4 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 508, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 523, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 233, i32 5 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 242, i32 5 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 253, i32 5 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 265, i32 5 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 279, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 284, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [16 x i8] c"enc_opts_policy\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 57, i32 1 }
@___asan_gen_.131 = private unnamed_addr constant [18 x i8] c"geneve_opt_policy\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 66, i32 1 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 103, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 110, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 114, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"vxlan_opt_policy\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 74, i32 1 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 151, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.150, i32 1208, i32 3 }
@___asan_gen_.152 = private unnamed_addr constant [18 x i8] c"erspan_opt_policy\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 79, i32 1 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 179, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 186, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 192, i32 4 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 196, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.168 = private constant [30 x i8] c"../net/sched/act_tunnel_key.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 327, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant [38 x i8] c"../include/net/tc_act/tc_tunnel_key.h\00", align 1
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.171, i32 33, i32 11 }
@___asan_gen_.177 = private unnamed_addr constant [25 x i8] c"../include/net/act_api.h\00", align 1
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.177, i32 156, i32 2 }
@___asan_gen_.179 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.182 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.183 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 378, i32 2 }
@llvm.compiler.used = appending global [56 x ptr] [ptr @__UNIQUE_ID_author599, ptr @__UNIQUE_ID_description600, ptr @__UNIQUE_ID_file601, ptr @__UNIQUE_ID_license602, ptr @__exitcall_tunnel_key_cleanup_module, ptr @__initcall__kmod_act_tunnel_key__598_886_tunnel_key_init_module6, ptr @tunnel_key_cleanup_module, ptr @act_tunnel_key_ops, ptr @tunnel_key_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @tunnel_key_net_id, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @tunnel_key_init.__msg, ptr @tunnel_key_policy, ptr @tunnel_key_init.__msg.11, ptr @tunnel_key_init.__msg.12, ptr @tunnel_key_init.__msg.13, ptr @tunnel_key_init.__msg.14, ptr @tunnel_key_init.__msg.15, ptr @tunnel_key_init.__msg.16, ptr @tunnel_key_init.__msg.17, ptr @tunnel_key_init.__msg.18, ptr @tunnel_key_copy_opts.__msg, ptr @tunnel_key_copy_opts.__msg.19, ptr @tunnel_key_copy_opts.__msg.20, ptr @tunnel_key_copy_opts.__msg.21, ptr @tunnel_key_copy_opts.__msg.22, ptr @tunnel_key_copy_opts.__msg.23, ptr @enc_opts_policy, ptr @geneve_opt_policy, ptr @tunnel_key_copy_geneve_opt.__msg, ptr @tunnel_key_copy_geneve_opt.__msg.25, ptr @tunnel_key_copy_geneve_opt.__msg.26, ptr @vxlan_opt_policy, ptr @tunnel_key_copy_vxlan_opt.__msg, ptr @nla_parse_nested.__msg, ptr @erspan_opt_policy, ptr @tunnel_key_copy_erspan_opt.__msg, ptr @tunnel_key_copy_erspan_opt.__msg.27, ptr @tunnel_key_copy_erspan_opt.__msg.28, ptr @tunnel_key_copy_erspan_opt.__msg.29, ptr @tunnel_key_opts_set.__msg, ptr @.str.30, ptr @tc_action_net_init.__key, ptr @.str.31, ptr @xa_init_flags.__key, ptr @.str.32], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_tunnel_key_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_init.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_policy to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_init.__msg.11 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_init.__msg.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_init.__msg.13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_init.__msg.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_init.__msg.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_init.__msg.16 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_init.__msg.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_init.__msg.18 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_copy_opts.__msg to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_copy_opts.__msg.19 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_copy_opts.__msg.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_copy_opts.__msg.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_copy_opts.__msg.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_copy_opts.__msg.23 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @enc_opts_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geneve_opt_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_copy_geneve_opt.__msg to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_copy_geneve_opt.__msg.25 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_copy_geneve_opt.__msg.26 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vxlan_opt_policy to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_copy_vxlan_opt.__msg to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @erspan_opt_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_copy_erspan_opt.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_copy_erspan_opt.__msg.27 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_copy_erspan_opt.__msg.28 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_copy_erspan_opt.__msg.29 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tunnel_key_opts_set.__msg to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_action_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tunnel_key_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_tunnel_key_ops, ptr noundef nonnull @tunnel_key_net_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_unregister_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tunnel_key_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_register_action(ptr noundef nonnull @act_tunnel_key_ops, ptr noundef nonnull @tunnel_key_net_ops) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tunnel_key_act(ptr nocapture noundef %skb, ptr noundef %a, ptr nocapture noundef readnone %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params1 = getelementptr inbounds %struct.tcf_tunnel_key, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %params1, align 16
  %call = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end8_crit_edge

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b70 = load i1, ptr @tunnel_key_act.__warned, align 1
  br i1 %.b70, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tunnel_key_act.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 33, ptr noundef nonnull @.str.1) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %tobool.not.i, label %if.then7.i, label %if.end.i.tcf_lastuse_update.exit_crit_edge, !prof !131

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
  %cpu_bstats.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 13
  %9 = ptrtoint ptr %cpu_bstats.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cpu_bstats.i, align 4
  %tobool.not.i71 = icmp eq ptr %10, null
  br i1 %tobool.not.i71, label %if.end.i72, label %do.body.i, !prof !131

do.body.i:                                        ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %10 to i32
  %12 = tail call i32 @llvm.read_register.i32(metadata !121) #9
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
  tail call fastcc void @bstats_update(ptr noundef %18, ptr noundef %skb) #9
  br label %tcf_action_update_bstats.exit

if.end.i72:                                       ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  %tcfa_lock.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  tail call void @_raw_spin_lock(ptr noundef %tcfa_lock.i) #9
  %tcfa_bstats.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 8
  tail call fastcc void @bstats_update(ptr noundef %tcfa_bstats.i, ptr noundef %skb) #9
  tail call void @_raw_spin_unlock(ptr noundef %tcfa_lock.i) #9
  br label %tcf_action_update_bstats.exit

tcf_action_update_bstats.exit:                    ; preds = %if.end.i72, %do.body.i
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %19 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %tcfa_action, align 8
  %tcft_action = getelementptr inbounds %struct.tcf_tunnel_key_params, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %tcft_action to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %tcft_action, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %land.end [
    i32 2, label %sw.bb
    i32 1, label %sw.bb16
  ]

sw.bb:                                            ; preds = %tcf_action_update_bstats.exit
  %24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i73 = icmp eq i32 %26, 0
  br i1 %tobool.not.i73, label %sw.bb.sw.epilog_crit_edge, label %if.then.i75

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then.i75:                                      ; preds = %sw.bb
  %and.i.i74 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i74)
  %tobool.not.i.i = icmp eq i32 %and.i.i74, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then.i75.refdst_drop.exit.i_crit_edge

if.then.i75.refdst_drop.exit.i_crit_edge:         ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #11
  br label %refdst_drop.exit.i

if.then.i.i:                                      ; preds = %if.then.i75
  call void @__sanitizer_cov_trace_pc() #11
  %and1.i.i = and i32 %26, -2
  %27 = inttoptr i32 %and1.i.i to ptr
  tail call void @dst_release(ptr noundef %27) #9
  br label %refdst_drop.exit.i

refdst_drop.exit.i:                               ; preds = %if.then.i.i, %if.then.i75.refdst_drop.exit.i_crit_edge
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %24, align 8
  br label %sw.epilog

sw.bb16:                                          ; preds = %tcf_action_update_bstats.exit
  %29 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 4
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool.not.i77 = icmp eq i32 %31, 0
  br i1 %tobool.not.i77, label %sw.bb16.skb_dst_drop.exit85_crit_edge, label %if.then.i80

sw.bb16.skb_dst_drop.exit85_crit_edge:            ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #11
  br label %skb_dst_drop.exit85

if.then.i80:                                      ; preds = %sw.bb16
  %and.i.i78 = and i32 %31, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i78)
  %tobool.not.i.i79 = icmp eq i32 %and.i.i78, 0
  br i1 %tobool.not.i.i79, label %if.then.i.i82, label %if.then.i80.refdst_drop.exit.i83_crit_edge

if.then.i80.refdst_drop.exit.i83_crit_edge:       ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #11
  br label %refdst_drop.exit.i83

if.then.i.i82:                                    ; preds = %if.then.i80
  call void @__sanitizer_cov_trace_pc() #11
  %and1.i.i81 = and i32 %31, -2
  %32 = inttoptr i32 %and1.i.i81 to ptr
  tail call void @dst_release(ptr noundef %32) #9
  br label %refdst_drop.exit.i83

refdst_drop.exit.i83:                             ; preds = %if.then.i.i82, %if.then.i80.refdst_drop.exit.i83_crit_edge
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %29, align 8
  br label %skb_dst_drop.exit85

skb_dst_drop.exit85:                              ; preds = %refdst_drop.exit.i83, %sw.bb16.skb_dst_drop.exit85_crit_edge
  %tcft_enc_metadata = getelementptr inbounds %struct.tcf_tunnel_key_params, ptr %1, i32 0, i32 2
  %34 = ptrtoint ptr %tcft_enc_metadata to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %tcft_enc_metadata, align 4
  %tobool.not.i86 = icmp eq ptr %35, null
  br i1 %tobool.not.i86, label %skb_dst_drop.exit85.dst_clone.exit_crit_edge, label %if.then.i87

skb_dst_drop.exit85.dst_clone.exit_crit_edge:     ; preds = %skb_dst_drop.exit85
  call void @__sanitizer_cov_trace_pc() #11
  br label %dst_clone.exit

if.then.i87:                                      ; preds = %skb_dst_drop.exit85
  %__refcnt.i.i = getelementptr inbounds %struct.dst_entry, ptr %35, i32 0, i32 18
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %__refcnt.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !132
  tail call void @llvm.prefetch.p0(ptr %__refcnt.i.i, i32 1, i32 3, i32 1) #9
  %36 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %__refcnt.i.i, ptr %__refcnt.i.i, i32 0, i32 1, ptr elementtype(i32) %__refcnt.i.i) #9, !srcloc !133
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %36, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i.i, label %do.end10.i.i, label %atomic_inc_not_zero.exit.thread.i.i

atomic_inc_not_zero.exit.thread.i.i:              ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !134
  br label %dst_clone.exit

do.end10.i.i:                                     ; preds = %if.then.i87
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 231, i32 noundef 9, ptr noundef null) #9
  br label %dst_clone.exit

dst_clone.exit:                                   ; preds = %do.end10.i.i, %atomic_inc_not_zero.exit.thread.i.i, %skb_dst_drop.exit85.dst_clone.exit_crit_edge
  %slow_gro.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %37 = ptrtoint ptr %slow_gro.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %bf.load.i = load i32, ptr %slow_gro.i, align 2
  %bf.load.mask.i = and i32 %bf.load.i, 4096
  %bf.shl.i = select i1 %tobool.not.i86, i32 %bf.load.mask.i, i32 4096
  %bf.clear4.i = and i32 %bf.load.i, -4097
  %bf.set.i = or i32 %bf.shl.i, %bf.clear4.i
  store i32 %bf.set.i, ptr %slow_gro.i, align 2
  %38 = ptrtoint ptr %35 to i32
  %39 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %29, align 8
  br label %sw.epilog

land.end:                                         ; preds = %tcf_action_update_bstats.exit
  %.b6869 = load i1, ptr @tunnel_key_act.__already_done, align 1
  br i1 %.b6869, label %land.end.sw.epilog_crit_edge, label %if.then23, !prof !135

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.then23:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tunnel_key_act.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 49, i32 noundef 9, ptr noundef nonnull @.str.2, i32 noundef %22) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then23, %land.end.sw.epilog_crit_edge, %dst_clone.exit, %refdst_drop.exit.i, %sw.bb.sw.epilog_crit_edge
  ret i32 %20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tunnel_key_dump(ptr noundef %skb, ptr noundef %a, i32 noundef %bind, i32 noundef %ref) #2 align 64 {
entry:
  %tmp.i130 = alloca i8, align 1
  %tmp.i128 = alloca i8, align 1
  %tmp.i126 = alloca i8, align 1
  %tmp.i124 = alloca i16, align 2
  %tmp.i.i43.i = alloca i32, align 4
  %tmp.i.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %opt = alloca %struct.tc_tunnel_key, align 4
  %tm = alloca %struct.tcf_t, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %opt) #9
  %2 = getelementptr inbounds %struct.tc_tunnel_key, ptr %opt, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tc_tunnel_key, ptr %opt, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tc_tunnel_key, ptr %opt, i32 0, i32 3
  %5 = getelementptr inbounds %struct.tc_tunnel_key, ptr %opt, i32 0, i32 4
  %6 = getelementptr inbounds %struct.tc_tunnel_key, ptr %opt, i32 0, i32 5
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
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_refcnt, i32 noundef 4) #9
  %13 = ptrtoint ptr %tcfa_refcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %tcfa_refcnt, align 4
  %sub = sub i32 %14, %ref
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %4, align 4
  %tcfa_bindcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_bindcnt, i32 noundef 4) #9
  %16 = ptrtoint ptr %tcfa_bindcnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %tcfa_bindcnt, align 4
  %sub5 = sub i32 %17, %bind
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub5, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %tm) #9
  %19 = getelementptr inbounds %struct.tcf_t, ptr %tm, i32 0, i32 1
  %20 = getelementptr inbounds %struct.tcf_t, ptr %tm, i32 0, i32 2
  %21 = getelementptr inbounds %struct.tcf_t, ptr %tm, i32 0, i32 3
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  %22 = call ptr @memset(ptr %tm, i32 255, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #9
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true12

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b119 = load i1, ptr @tunnel_key_dump.__warned, align 1
  br i1 %.b119, label %land.lhs.true12.do.end_crit_edge, label %if.then

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tunnel_key_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 727, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true12.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %params14 = getelementptr inbounds %struct.tcf_tunnel_key, ptr %a, i32 0, i32 1
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
  %tcft_action = getelementptr inbounds %struct.tcf_tunnel_key_params, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %tcft_action to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tcft_action, align 4
  %30 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %6, align 4
  %call18 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 24, ptr noundef nonnull %opt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %do.end.nla_put_failure_crit_edge

do.end.nla_put_failure_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end21:                                         ; preds = %do.end
  %31 = ptrtoint ptr %tcft_action to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tcft_action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp = icmp eq i32 %32, 1
  br i1 %cmp, label %if.then23, label %if.end21.if.end72_crit_edge

if.end21.if.end72_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.then23:                                        ; preds = %if.end21
  %tcft_enc_metadata = getelementptr inbounds %struct.tcf_tunnel_key_params, ptr %24, i32 0, i32 2
  %33 = ptrtoint ptr %tcft_enc_metadata to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tcft_enc_metadata, align 4
  %u = getelementptr inbounds %struct.metadata_dst, ptr %34, i32 0, i32 2
  %tun_flags = getelementptr inbounds %struct.metadata_dst, ptr %34, i32 0, i32 2, i32 0, i32 0, i32 2
  %35 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %tun_flags, align 8
  %37 = and i16 %36, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %37)
  %tobool26.not = icmp eq i16 %37, 0
  br i1 %tobool26.not, label %if.then23.lor.lhs.false_crit_edge, label %land.lhs.true27

if.then23.lor.lhs.false_crit_edge:                ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

land.lhs.true27:                                  ; preds = %if.then23
  %38 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %u, align 8
  %conv.i = trunc i64 %39 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %40 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %conv.i, ptr %tmp.i, align 4
  %call.i121 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool29.not = icmp eq i32 %call.i121, 0
  br i1 %tobool29.not, label %land.lhs.true27.lor.lhs.false_crit_edge, label %land.lhs.true27.nla_put_failure_crit_edge

land.lhs.true27.nla_put_failure_crit_edge:        ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

land.lhs.true27.lor.lhs.false_crit_edge:          ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true27.lor.lhs.false_crit_edge, %if.then23.lor.lhs.false_crit_edge
  %41 = ptrtoint ptr %tcft_enc_metadata to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tcft_enc_metadata, align 4
  %mode.i.i = getelementptr inbounds %struct.metadata_dst, ptr %42, i32 0, i32 2, i32 0, i32 3
  %43 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %mode.i.i, align 1
  %45 = and i8 %44, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i.i = icmp eq i8 %45, 0
  %u.i = getelementptr inbounds %struct.metadata_dst, ptr %42, i32 0, i32 2, i32 0, i32 0, i32 1
  br i1 %tobool.not.i.i, label %if.then.i, label %if.then13.i

if.then.i:                                        ; preds = %lor.lhs.false
  %46 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %u.i, align 8
  %dst.i = getelementptr inbounds %struct.metadata_dst, ptr %42, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %48 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dst.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i) #9
  %50 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %47, ptr %tmp.i.i.i, align 4
  %call.i.i.i122 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i122)
  %tobool.not.i = icmp eq i32 %call.i.i.i122, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.i.nla_put_failure_crit_edge

if.then.i.nla_put_failure_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

land.lhs.true.i:                                  ; preds = %if.then.i
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i43.i) #9
  %51 = ptrtoint ptr %tmp.i.i43.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %49, ptr %tmp.i.i43.i, align 4
  %call.i.i44.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i.i43.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i43.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i44.i)
  %tobool6.not.i = icmp eq i32 %call.i.i44.i, 0
  br i1 %tobool6.not.i, label %land.lhs.true.i.lor.lhs.false34_crit_edge, label %land.lhs.true.i.nla_put_failure_crit_edge

land.lhs.true.i.nla_put_failure_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

land.lhs.true.i.lor.lhs.false34_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false34

if.then13.i:                                      ; preds = %lor.lhs.false
  %call.i.i123 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 16, ptr noundef %u.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i123)
  %tobool21.not.i = icmp eq i32 %call.i.i123, 0
  br i1 %tobool21.not.i, label %land.lhs.true22.i, label %if.then13.i.nla_put_failure_crit_edge

if.then13.i.nla_put_failure_crit_edge:            ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

land.lhs.true22.i:                                ; preds = %if.then13.i
  %dst19.i = getelementptr inbounds %struct.metadata_dst, ptr %42, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %call.i45.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 16, ptr noundef %dst19.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i)
  %tobool24.not.i = icmp eq i32 %call.i45.i, 0
  br i1 %tobool24.not.i, label %land.lhs.true22.i.lor.lhs.false34_crit_edge, label %land.lhs.true22.i.nla_put_failure_crit_edge

land.lhs.true22.i.nla_put_failure_crit_edge:      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

land.lhs.true22.i.lor.lhs.false34_crit_edge:      ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false34

lor.lhs.false34:                                  ; preds = %land.lhs.true22.i.lor.lhs.false34_crit_edge, %land.lhs.true.i.lor.lhs.false34_crit_edge
  %tp_dst = getelementptr inbounds %struct.metadata_dst, ptr %34, i32 0, i32 2, i32 0, i32 0, i32 7
  %52 = ptrtoint ptr %tp_dst to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %tp_dst, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %53)
  %tobool36.not = icmp eq i16 %53, 0
  br i1 %tobool36.not, label %lor.lhs.false34.lor.lhs.false41_crit_edge, label %land.lhs.true37

lor.lhs.false34.lor.lhs.false41_crit_edge:        ; preds = %lor.lhs.false34
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false41

land.lhs.true37:                                  ; preds = %lor.lhs.false34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i124) #9
  %54 = ptrtoint ptr %tmp.i124 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %tmp.i124, align 2
  %call.i125 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 2, ptr noundef nonnull %tmp.i124) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i124) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i125)
  %tobool40.not = icmp eq i32 %call.i125, 0
  br i1 %tobool40.not, label %land.lhs.true37.lor.lhs.false41_crit_edge, label %land.lhs.true37.nla_put_failure_crit_edge

land.lhs.true37.nla_put_failure_crit_edge:        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

land.lhs.true37.lor.lhs.false41_crit_edge:        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %lor.lhs.false41

lor.lhs.false41:                                  ; preds = %land.lhs.true37.lor.lhs.false41_crit_edge, %lor.lhs.false34.lor.lhs.false41_crit_edge
  %55 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %tun_flags, align 8
  %57 = trunc i16 %56 to i8
  %58 = and i8 %57, 1
  %59 = xor i8 %58, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i126) #9
  %60 = ptrtoint ptr %tmp.i126 to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %tmp.i126, align 1
  %call.i127 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 1, ptr noundef nonnull %tmp.i126) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i126) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i127)
  %tobool48.not = icmp eq i32 %call.i127, 0
  br i1 %tobool48.not, label %lor.lhs.false49, label %lor.lhs.false41.nla_put_failure_crit_edge

lor.lhs.false41.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false41
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false49:                                  ; preds = %lor.lhs.false41
  %call50 = call fastcc i32 @tunnel_key_opts_dump(ptr noundef %skb, ptr noundef %u)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.end53, label %lor.lhs.false49.nla_put_failure_crit_edge

lor.lhs.false49.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false49
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end53:                                         ; preds = %lor.lhs.false49
  %tos = getelementptr inbounds %struct.metadata_dst, ptr %34, i32 0, i32 2, i32 0, i32 0, i32 3
  %61 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %tos, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool55.not = icmp eq i8 %62, 0
  br i1 %tobool55.not, label %if.end53.if.end61_crit_edge, label %land.lhs.true56

if.end53.if.end61_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

land.lhs.true56:                                  ; preds = %if.end53
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i128) #9
  %63 = ptrtoint ptr %tmp.i128 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %tmp.i128, align 1
  %call.i129 = call i32 @nla_put(ptr noundef %skb, i32 noundef 12, i32 noundef 1, ptr noundef nonnull %tmp.i128) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i128) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i129)
  %tobool59.not = icmp eq i32 %call.i129, 0
  br i1 %tobool59.not, label %land.lhs.true56.if.end61_crit_edge, label %land.lhs.true56.nla_put_failure_crit_edge

land.lhs.true56.nla_put_failure_crit_edge:        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

land.lhs.true56.if.end61_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true56.if.end61_crit_edge, %if.end53.if.end61_crit_edge
  %ttl = getelementptr inbounds %struct.metadata_dst, ptr %34, i32 0, i32 2, i32 0, i32 0, i32 4
  %64 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %ttl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool63.not = icmp eq i8 %65, 0
  br i1 %tobool63.not, label %if.end61.if.end72_crit_edge, label %land.lhs.true64

if.end61.if.end72_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

land.lhs.true64:                                  ; preds = %if.end61
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i130) #9
  %66 = ptrtoint ptr %tmp.i130 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %tmp.i130, align 1
  %call.i131 = call i32 @nla_put(ptr noundef %skb, i32 noundef 13, i32 noundef 1, ptr noundef nonnull %tmp.i130) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i130) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool67.not = icmp eq i32 %call.i131, 0
  br i1 %tobool67.not, label %land.lhs.true64.if.end72_crit_edge, label %land.lhs.true64.nla_put_failure_crit_edge

land.lhs.true64.nla_put_failure_crit_edge:        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

land.lhs.true64.if.end72_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end72

if.end72:                                         ; preds = %land.lhs.true64.if.end72_crit_edge, %if.end61.if.end72_crit_edge, %if.end21.if.end72_crit_edge
  %tcfa_tm = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %67 = load volatile i32, ptr @jiffies, align 128
  %68 = ptrtoint ptr %tcfa_tm to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %tcfa_tm, align 8
  %70 = trunc i64 %69 to i32
  %conv1.i = sub i32 %67, %70
  %call.i132 = call i32 @jiffies_to_clock_t(i32 noundef %conv1.i) #9
  %conv2.i = sext i32 %call.i132 to i64
  %71 = ptrtoint ptr %tm to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %conv2.i, ptr %tm, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %72 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %73 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %lastuse.i, align 8
  %75 = trunc i64 %74 to i32
  %conv6.i = sub i32 %72, %75
  %call7.i = call i32 @jiffies_to_clock_t(i32 noundef %conv6.i) #9
  %conv8.i = sext i32 %call7.i to i64
  %76 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %76)
  store i64 %conv8.i, ptr %19, align 8
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %77 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %77)
  %78 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %78)
  %tobool.not.i133 = icmp eq i64 %78, 0
  br i1 %tobool.not.i133, label %if.end72.tcf_tm_dump.exit_crit_edge, label %cond.true.i

if.end72.tcf_tm_dump.exit_crit_edge:              ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_tm_dump.exit

cond.true.i:                                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %79 = load volatile i32, ptr @jiffies, align 128
  %80 = trunc i64 %78 to i32
  %conv13.i = sub i32 %79, %80
  %call14.i = call i32 @jiffies_to_clock_t(i32 noundef %conv13.i) #9
  br label %tcf_tm_dump.exit

tcf_tm_dump.exit:                                 ; preds = %cond.true.i, %if.end72.tcf_tm_dump.exit_crit_edge
  %cond.i = phi i32 [ %call14.i, %cond.true.i ], [ 0, %if.end72.tcf_tm_dump.exit_crit_edge ]
  %conv15.i = sext i32 %cond.i to i64
  %81 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %81)
  store i64 %conv15.i, ptr %21, align 8
  %expires.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 2
  %82 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %expires.i, align 8
  %conv17.i = trunc i64 %83 to i32
  %call18.i = call i32 @jiffies_to_clock_t(i32 noundef %conv17.i) #9
  %conv19.i = sext i32 %call18.i to i64
  %84 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %84)
  store i64 %conv19.i, ptr %20, align 8
  %call74 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 32, ptr noundef nonnull %tm, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end77, label %tcf_tm_dump.exit.nla_put_failure_crit_edge

tcf_tm_dump.exit.nla_put_failure_crit_edge:       ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end77:                                         ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #9
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %85 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %len, align 4
  br label %cleanup82

nla_put_failure:                                  ; preds = %tcf_tm_dump.exit.nla_put_failure_crit_edge, %land.lhs.true64.nla_put_failure_crit_edge, %land.lhs.true56.nla_put_failure_crit_edge, %lor.lhs.false49.nla_put_failure_crit_edge, %lor.lhs.false41.nla_put_failure_crit_edge, %land.lhs.true37.nla_put_failure_crit_edge, %land.lhs.true22.i.nla_put_failure_crit_edge, %if.then13.i.nla_put_failure_crit_edge, %land.lhs.true.i.nla_put_failure_crit_edge, %if.then.i.nla_put_failure_crit_edge, %land.lhs.true27.nla_put_failure_crit_edge, %do.end.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #9
  %tobool.not.i134 = icmp eq ptr %1, null
  br i1 %tobool.not.i134, label %nla_put_failure.cleanup82_crit_edge, label %if.then.i135

nla_put_failure.cleanup82_crit_edge:              ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup82

if.then.i135:                                     ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %87 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %88, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i135.if.end.i_crit_edge, !prof !131

if.then.i135.if.end.i_crit_edge:                  ; preds = %if.then.i135
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i135
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i135.if.end.i_crit_edge
  %89 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %90 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #9
  br label %cleanup82

cleanup82:                                        ; preds = %if.end.i, %nla_put_failure.cleanup82_crit_edge, %if.end77
  %retval.0 = phi i32 [ %86, %if.end77 ], [ -1, %nla_put_failure.cleanup82_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %tm) #9
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %opt) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tunnel_key_release(ptr nocapture noundef readonly %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %params1 = getelementptr inbounds %struct.tcf_tunnel_key, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params1, align 16
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.tunnel_key_release_params.exit_crit_edge, label %if.end.i

entry.tunnel_key_release_params.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tunnel_key_release_params.exit

if.end.i:                                         ; preds = %entry
  %tcft_action.i = getelementptr inbounds %struct.tcf_tunnel_key_params, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %tcft_action.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tcft_action.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.i = icmp eq i32 %3, 1
  br i1 %cmp.i, label %if.then1.i, label %if.end.i.do.end.i_crit_edge

if.end.i.do.end.i_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then1.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %tcft_enc_metadata.i = getelementptr inbounds %struct.tcf_tunnel_key_params, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %tcft_enc_metadata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tcft_enc_metadata.i, align 4
  tail call void @dst_release(ptr noundef %5) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then1.i, %if.end.i.do.end.i_crit_edge
  tail call void @kvfree_call_rcu(ptr noundef nonnull %1, ptr noundef null) #9
  br label %tunnel_key_release_params.exit

tunnel_key_release_params.exit:                   ; preds = %do.end.i, %entry.tunnel_key_release_params.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tunnel_key_search(ptr noundef %net, ptr noundef %a, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @tunnel_key_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_idr_search(ptr noundef %call, ptr noundef %a, i32 noundef %index) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tunnel_key_init(ptr noundef %net, ptr noundef %nla, ptr noundef %est, ptr noundef %a, ptr noundef %tp, i32 noundef %act_flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [14 x ptr], align 4
  %goto_ch = alloca ptr, align 4
  %index = alloca i32, align 4
  %tmp = alloca %struct.in6_addr, align 4
  %tmp113 = alloca %struct.in6_addr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @tunnel_key_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %and = and i32 %act_flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %tb) #9
  %1 = call ptr @memset(ptr %tb, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goto_ch) #9
  %2 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %goto_ch, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #9
  %3 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %index, align 4, !annotation !136
  %tobool1.not = icmp eq ptr %nla, null
  br i1 %tobool1.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_init.__msg) #9
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tunnel_key_init.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %5 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %6 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 13, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @tunnel_key_policy, i32 noundef 0, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %do.body7, label %if.end15

do.body7:                                         ; preds = %if.end4
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_init.__msg.11) #9
  %tobool9.not = icmp eq ptr %extack, null
  br i1 %tobool9.not, label %do.body7.cleanup_crit_edge, label %if.then10

do.body7.cleanup_crit_edge:                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then10:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @tunnel_key_init.__msg.11, ptr %extack, align 4
  br label %cleanup

if.end15:                                         ; preds = %if.end4
  %arrayidx = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 2
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx, align 4
  %tobool16.not = icmp eq ptr %9, null
  br i1 %tobool16.not, label %do.body18, label %if.end26

do.body18:                                        ; preds = %if.end15
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_init.__msg.12) #9
  %tobool20.not = icmp eq ptr %extack, null
  br i1 %tobool20.not, label %do.body18.cleanup_crit_edge, label %if.then21

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @tunnel_key_init.__msg.12, ptr %extack, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %13 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %index, align 4
  %and.lobit = lshr exact i32 %and, 17
  %call31 = call i32 @tcf_idr_check_alloc(ptr noundef %call, ptr noundef nonnull %index, ptr noundef %a, i32 noundef %and.lobit) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end26.cleanup_crit_edge, label %if.end35

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end35:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool36 = icmp ne i32 %call31, 0
  %brmerge.demorgan = and i1 %tobool, %tobool36
  br i1 %brmerge.demorgan, label %if.end35.cleanup_crit_edge, label %if.end43

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end43:                                         ; preds = %if.end35
  %t_action = getelementptr i8, ptr %9, i32 24
  %14 = ptrtoint ptr %t_action to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %t_action, align 4
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %15, label %do.body156 [
    i32 2, label %if.end43.sw.epilog_crit_edge
    i32 1, label %sw.bb
  ]

if.end43.sw.epilog_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end43
  %arrayidx44 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 7
  %17 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx44, align 4
  %tobool45.not = icmp eq ptr %18, null
  br i1 %tobool45.not, label %sw.bb.if.end50_crit_edge, label %if.then46

sw.bb.if.end50_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end50

if.then46:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i398 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i398 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i398, align 4
  %conv.i = zext i32 %20 to i64
  br label %if.end50

if.end50:                                         ; preds = %if.then46, %sw.bb.if.end50_crit_edge
  %key_id.0 = phi i64 [ %conv.i, %if.then46 ], [ 0, %sw.bb.if.end50_crit_edge ]
  %flags.0 = phi i16 [ 5, %if.then46 ], [ 1, %sw.bb.if.end50_crit_edge ]
  %arrayidx53 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 10
  %21 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx53, align 4
  %tobool54.not = icmp eq ptr %22, null
  br i1 %tobool54.not, label %if.end50.if.end64_crit_edge, label %land.lhs.true55

if.end50.if.end64_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end64

land.lhs.true55:                                  ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i399 = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i399 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %add.ptr.i.i399, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool59.not = icmp eq i8 %24, 0
  %25 = and i16 %flags.0, 4
  %spec.select = select i1 %tobool59.not, i16 %flags.0, i16 %25
  br label %if.end64

if.end64:                                         ; preds = %land.lhs.true55, %if.end50.if.end64_crit_edge
  %flags.1 = phi i16 [ %flags.0, %if.end50.if.end64_crit_edge ], [ %spec.select, %land.lhs.true55 ]
  %arrayidx65 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 9
  %26 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx65, align 4
  %tobool66.not = icmp eq ptr %27, null
  br i1 %tobool66.not, label %if.end64.if.end70_crit_edge, label %if.then67

if.end64.if.end70_crit_edge:                      ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end70

if.then67:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i400 = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i400 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i.i400, align 2
  br label %if.end70

if.end70:                                         ; preds = %if.then67, %if.end64.if.end70_crit_edge
  %dst_port.0 = phi i16 [ %29, %if.then67 ], [ 0, %if.end64.if.end70_crit_edge ]
  %arrayidx71 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 11
  %30 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx71, align 4
  %tobool72.not = icmp eq ptr %31, null
  br i1 %tobool72.not, label %if.end70.if.end80_crit_edge, label %if.then73

if.end70.if.end80_crit_edge:                      ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then73:                                        ; preds = %if.end70
  %call.i = call fastcc i32 @tunnel_key_copy_opts(ptr noundef nonnull %31, ptr noundef null, i32 noundef 0, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp76 = icmp slt i32 %call.i, 0
  br i1 %cmp76, label %if.then73.err_out_crit_edge, label %if.then73.if.end80_crit_edge

if.then73.if.end80_crit_edge:                     ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end80

if.then73.err_out_crit_edge:                      ; preds = %if.then73
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.end80:                                         ; preds = %if.then73.if.end80_crit_edge, %if.end70.if.end80_crit_edge
  %opts_len.0 = phi i32 [ %call.i, %if.then73.if.end80_crit_edge ], [ 0, %if.end70.if.end80_crit_edge ]
  %arrayidx81 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 12
  %32 = ptrtoint ptr %arrayidx81 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx81, align 4
  %tobool82.not = icmp eq ptr %33, null
  br i1 %tobool82.not, label %if.end80.if.end86_crit_edge, label %if.then83

if.end80.if.end86_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end86

if.then83:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i401 = getelementptr i8, ptr %33, i32 4
  %34 = ptrtoint ptr %add.ptr.i.i401 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %add.ptr.i.i401, align 1
  br label %if.end86

if.end86:                                         ; preds = %if.then83, %if.end80.if.end86_crit_edge
  %tos.0 = phi i8 [ %35, %if.then83 ], [ 0, %if.end80.if.end86_crit_edge ]
  %arrayidx87 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 13
  %36 = ptrtoint ptr %arrayidx87 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx87, align 4
  %tobool88.not = icmp eq ptr %37, null
  br i1 %tobool88.not, label %if.end86.if.end92_crit_edge, label %if.then89

if.end86.if.end92_crit_edge:                      ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end92

if.then89:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i402 = getelementptr i8, ptr %37, i32 4
  %38 = ptrtoint ptr %add.ptr.i.i402 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %add.ptr.i.i402, align 1
  br label %if.end92

if.end92:                                         ; preds = %if.then89, %if.end86.if.end92_crit_edge
  %ttl.0 = phi i8 [ %39, %if.then89 ], [ 0, %if.end86.if.end92_crit_edge ]
  %arrayidx93 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 3
  %40 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx93, align 4
  %tobool94.not = icmp eq ptr %41, null
  br i1 %tobool94.not, label %if.end92.if.else_crit_edge, label %land.lhs.true95

if.end92.if.else_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true95:                                  ; preds = %if.end92
  %arrayidx96 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 4
  %42 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx96, align 4
  %tobool97.not = icmp eq ptr %43, null
  br i1 %tobool97.not, label %land.lhs.true95.if.else_crit_edge, label %if.end126

land.lhs.true95.if.else_crit_edge:                ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.else:                                          ; preds = %land.lhs.true95.if.else_crit_edge, %if.end92.if.else_crit_edge
  %arrayidx104 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 5
  %44 = ptrtoint ptr %arrayidx104 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx104, align 4
  %tobool105.not = icmp eq ptr %45, null
  br i1 %tobool105.not, label %if.else.do.body117_crit_edge, label %land.lhs.true106

if.else.do.body117_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body117

land.lhs.true106:                                 ; preds = %if.else
  %arrayidx107 = getelementptr inbounds [14 x ptr], ptr %tb, i32 0, i32 6
  %46 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx107, align 4
  %tobool108.not = icmp eq ptr %47, null
  br i1 %tobool108.not, label %land.lhs.true106.do.body117_crit_edge, label %if.then109

land.lhs.true106.do.body117_crit_edge:            ; preds = %land.lhs.true106
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body117

if.then109:                                       ; preds = %land.lhs.true106
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp) #9
  %48 = call ptr @memset(ptr %tmp, i32 255, i32 16)
  %call.i405 = call i32 @nla_memcpy(ptr noundef nonnull %tmp, ptr noundef nonnull %45, i32 noundef 16) #9
  %49 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %49)
  %saddr110.sroa.0.0.copyload = load i32, ptr %tmp, align 4
  %saddr110.sroa.5.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 4
  %50 = ptrtoint ptr %saddr110.sroa.5.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %50)
  %saddr110.sroa.5.0.copyload = load i32, ptr %saddr110.sroa.5.0.tmp.sroa_idx, align 4
  %saddr110.sroa.6.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 8
  %51 = ptrtoint ptr %saddr110.sroa.6.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %51)
  %saddr110.sroa.6.0.copyload = load i32, ptr %saddr110.sroa.6.0.tmp.sroa_idx, align 4
  %saddr110.sroa.7.0.tmp.sroa_idx = getelementptr inbounds i8, ptr %tmp, i32 12
  %52 = ptrtoint ptr %saddr110.sroa.7.0.tmp.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %52)
  %saddr110.sroa.7.0.copyload = load i32, ptr %saddr110.sroa.7.0.tmp.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp) #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp113) #9
  %53 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx107, align 4
  %55 = call ptr @memset(ptr %tmp113, i32 255, i32 16)
  %call.i406 = call i32 @nla_memcpy(ptr noundef nonnull %tmp113, ptr noundef %54, i32 noundef 16) #9
  %56 = ptrtoint ptr %tmp113 to i32
  call void @__asan_load4_noabort(i32 %56)
  %daddr111.sroa.0.0.copyload = load i32, ptr %tmp113, align 4
  %daddr111.sroa.5.0.tmp113.sroa_idx = getelementptr inbounds i8, ptr %tmp113, i32 4
  %57 = ptrtoint ptr %daddr111.sroa.5.0.tmp113.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %57)
  %daddr111.sroa.5.0.copyload = load i32, ptr %daddr111.sroa.5.0.tmp113.sroa_idx, align 4
  %daddr111.sroa.6.0.tmp113.sroa_idx = getelementptr inbounds i8, ptr %tmp113, i32 8
  %58 = ptrtoint ptr %daddr111.sroa.6.0.tmp113.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %58)
  %daddr111.sroa.6.0.copyload = load i32, ptr %daddr111.sroa.6.0.tmp113.sroa_idx, align 4
  %daddr111.sroa.7.0.tmp113.sroa_idx = getelementptr inbounds i8, ptr %tmp113, i32 12
  %59 = ptrtoint ptr %daddr111.sroa.7.0.tmp113.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %59)
  %daddr111.sroa.7.0.copyload = load i32, ptr %daddr111.sroa.7.0.tmp113.sroa_idx, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp113) #9
  %conv.i.i407 = trunc i32 %opts_len.0 to i8
  %call.i.i = call ptr @metadata_dst_alloc(i8 noundef zeroext %conv.i.i407, i32 noundef 0, i32 noundef 2592) #9
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.then109.do.body129_crit_edge, label %if.end126.thread419

if.then109.do.body129_crit_edge:                  ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body129

if.end126.thread419:                              ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #11
  %options_len.i.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 2
  %60 = ptrtoint ptr %options_len.i.i to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 0, ptr %options_len.i.i, align 8
  %u.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2
  %mode.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 3
  %61 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 2, ptr %mode.i, align 1
  %tun_flags.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %62 = ptrtoint ptr %tun_flags.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %flags.1, ptr %tun_flags.i, align 8
  %63 = ptrtoint ptr %u.i to i32
  call void @__asan_store8_noabort(i32 %63)
  store i64 %key_id.0, ptr %u.i, align 8
  %tp_src.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 6
  %64 = ptrtoint ptr %tp_src.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 0, ptr %tp_src.i, align 8
  %tp_dst4.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 7
  %65 = ptrtoint ptr %tp_dst4.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %dst_port.0, ptr %tp_dst4.i, align 2
  %u6.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %66 = ptrtoint ptr %u6.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %saddr110.sroa.0.0.copyload, ptr %u6.i, align 8
  %saddr110.sroa.5.0.u6.i.sroa_idx = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %67 = ptrtoint ptr %saddr110.sroa.5.0.u6.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %saddr110.sroa.5.0.copyload, ptr %saddr110.sroa.5.0.u6.i.sroa_idx, align 4
  %saddr110.sroa.6.0.u6.i.sroa_idx = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %68 = ptrtoint ptr %saddr110.sroa.6.0.u6.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %saddr110.sroa.6.0.copyload, ptr %saddr110.sroa.6.0.u6.i.sroa_idx, align 8
  %saddr110.sroa.7.0.u6.i.sroa_idx = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 3
  %69 = ptrtoint ptr %saddr110.sroa.7.0.u6.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %saddr110.sroa.7.0.copyload, ptr %saddr110.sroa.7.0.u6.i.sroa_idx, align 4
  %dst.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1
  %70 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %daddr111.sroa.0.0.copyload, ptr %dst.i, align 8
  %daddr111.sroa.5.0.dst.i.sroa_idx = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 1
  %71 = ptrtoint ptr %daddr111.sroa.5.0.dst.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %daddr111.sroa.5.0.copyload, ptr %daddr111.sroa.5.0.dst.i.sroa_idx, align 4
  %daddr111.sroa.6.0.dst.i.sroa_idx = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 2
  %72 = ptrtoint ptr %daddr111.sroa.6.0.dst.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %daddr111.sroa.6.0.copyload, ptr %daddr111.sroa.6.0.dst.i.sroa_idx, align 8
  %daddr111.sroa.7.0.dst.i.sroa_idx = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 1, i32 0, i32 0, i32 3
  %73 = ptrtoint ptr %daddr111.sroa.7.0.dst.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %daddr111.sroa.7.0.copyload, ptr %daddr111.sroa.7.0.dst.i.sroa_idx, align 4
  %tos10.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 3
  %74 = ptrtoint ptr %tos10.i to i32
  call void @__asan_store1_noabort(i32 %74)
  store i8 %tos.0, ptr %tos10.i, align 2
  %ttl12.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %75 = ptrtoint ptr %ttl12.i to i32
  call void @__asan_store1_noabort(i32 %75)
  store i8 %ttl.0, ptr %ttl12.i, align 1
  %label14.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i.i, i32 0, i32 2, i32 0, i32 0, i32 5
  %76 = ptrtoint ptr %label14.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 0, ptr %label14.i, align 4
  br label %if.end137

do.body117:                                       ; preds = %land.lhs.true106.do.body117_crit_edge, %if.else.do.body117_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_init.__msg.13) #9
  %tobool119.not = icmp eq ptr %extack, null
  br i1 %tobool119.not, label %do.body117.err_out_crit_edge, label %if.then120

do.body117.err_out_crit_edge:                     ; preds = %do.body117
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.then120:                                       ; preds = %do.body117
  %77 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @tunnel_key_init.__msg.13, ptr %extack, align 4
  br i1 %tobool36, label %if.then120.if.then286_crit_edge, label %if.then120.if.else289_crit_edge

if.then120.if.else289_crit_edge:                  ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else289

if.then120.if.then286_crit_edge:                  ; preds = %if.then120
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then286

if.end126:                                        ; preds = %land.lhs.true95
  %add.ptr.i.i403 = getelementptr i8, ptr %41, i32 4
  %78 = ptrtoint ptr %add.ptr.i.i403 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %add.ptr.i.i403, align 4
  %add.ptr.i.i404 = getelementptr i8, ptr %43, i32 4
  %80 = ptrtoint ptr %add.ptr.i.i404 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr.i.i404, align 4
  %call103 = call fastcc ptr @__ip_tun_set_dst(i32 noundef %79, i32 noundef %81, i8 noundef zeroext %tos.0, i8 noundef zeroext %ttl.0, i16 noundef zeroext %dst_port.0, i16 noundef zeroext %flags.1, i64 noundef %key_id.0, i32 noundef %opts_len.0)
  %tobool127.not = icmp eq ptr %call103, null
  br i1 %tobool127.not, label %if.end126.do.body129_crit_edge, label %if.end126.if.end137_crit_edge

if.end126.if.end137_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end137

if.end126.do.body129_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body129

do.body129:                                       ; preds = %if.end126.do.body129_crit_edge, %if.then109.do.body129_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_init.__msg.14) #9
  %tobool131.not = icmp eq ptr %extack, null
  br i1 %tobool131.not, label %do.body129.err_out_crit_edge, label %if.then132

do.body129.err_out_crit_edge:                     ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.then132:                                       ; preds = %do.body129
  %82 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @tunnel_key_init.__msg.14, ptr %extack, align 4
  br i1 %tobool36, label %if.then132.if.then286_crit_edge, label %if.then132.if.else289_crit_edge

if.then132.if.else289_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else289

if.then132.if.then286_crit_edge:                  ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then286

if.end137:                                        ; preds = %if.end126.if.end137_crit_edge, %if.end126.thread419
  %metadata.0422 = phi ptr [ %call.i.i, %if.end126.thread419 ], [ %call103, %if.end126.if.end137_crit_edge ]
  %u = getelementptr inbounds %struct.metadata_dst, ptr %metadata.0422, i32 0, i32 2
  %dst_cache = getelementptr inbounds %struct.metadata_dst, ptr %metadata.0422, i32 0, i32 2, i32 0, i32 1
  %call138 = call i32 @dst_cache_init(ptr noundef %dst_cache, i32 noundef 3264) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end141, label %if.end137.if.then283_crit_edge

if.end137.if.then283_crit_edge:                   ; preds = %if.end137
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then283

if.end141:                                        ; preds = %if.end137
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %opts_len.0)
  %tobool142.not = icmp eq i32 %opts_len.0, 0
  br i1 %tobool142.not, label %if.end141.if.end151_crit_edge, label %if.then143

if.end141.if.end151_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

if.then143:                                       ; preds = %if.end141
  %83 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx71, align 4
  %call146 = call fastcc i32 @tunnel_key_opts_set(ptr noundef %84, ptr noundef %u, i32 noundef %opts_len.0, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %cmp147 = icmp slt i32 %call146, 0
  br i1 %cmp147, label %if.then143.if.then283_crit_edge, label %if.then143.if.end151_crit_edge

if.then143.if.end151_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end151

if.then143.if.then283_crit_edge:                  ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then283

if.end151:                                        ; preds = %if.then143.if.end151_crit_edge, %if.end141.if.end151_crit_edge
  %ret.0 = phi i32 [ %call146, %if.then143.if.end151_crit_edge ], [ 0, %if.end141.if.end151_crit_edge ]
  %mode = getelementptr inbounds %struct.metadata_dst, ptr %metadata.0422, i32 0, i32 2, i32 0, i32 3
  %85 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %mode, align 1
  %87 = or i8 %86, 1
  store i8 %87, ptr %mode, align 1
  br label %sw.epilog

do.body156:                                       ; preds = %if.end43
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_init.__msg.15) #9
  %tobool158.not = icmp eq ptr %extack, null
  br i1 %tobool158.not, label %do.body156.err_out_crit_edge, label %if.then159

do.body156.err_out_crit_edge:                     ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.then159:                                       ; preds = %do.body156
  %88 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @tunnel_key_init.__msg.15, ptr %extack, align 4
  br i1 %tobool36, label %if.then159.if.then286_crit_edge, label %if.then159.if.else289_crit_edge

if.then159.if.else289_crit_edge:                  ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else289

if.then159.if.then286_crit_edge:                  ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then286

sw.epilog:                                        ; preds = %if.end151, %if.end43.sw.epilog_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.end151 ], [ 0, %if.end43.sw.epilog_crit_edge ]
  %metadata.1 = phi ptr [ %metadata.0422, %if.end151 ], [ null, %if.end43.sw.epilog_crit_edge ]
  br i1 %tobool36, label %if.else180, label %if.then165

if.then165:                                       ; preds = %sw.epilog
  %89 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %index, align 4
  %call168 = call i32 @tcf_idr_create_from_flags(ptr noundef %call, i32 noundef %90, ptr noundef %est, ptr noundef %a, ptr noundef nonnull @act_tunnel_key_ops, i32 noundef %and.lobit, i32 noundef %act_flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.then165.if.end193_crit_edge, label %do.body171

if.then165.if.end193_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

do.body171:                                       ; preds = %if.then165
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_init.__msg.16) #9
  %tobool173.not = icmp eq ptr %extack, null
  br i1 %tobool173.not, label %do.body171.release_tun_meta_crit_edge, label %if.then174

do.body171.release_tun_meta_crit_edge:            ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_tun_meta

if.then174:                                       ; preds = %do.body171
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @tunnel_key_init.__msg.16, ptr %extack, align 4
  br label %release_tun_meta

if.else180:                                       ; preds = %sw.epilog
  %and181 = and i32 %act_flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and181)
  %tobool182.not = icmp eq i32 %and181, 0
  br i1 %tobool182.not, label %do.body184, label %if.else180.if.end193_crit_edge

if.else180.if.end193_crit_edge:                   ; preds = %if.else180
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end193

do.body184:                                       ; preds = %if.else180
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_init.__msg.17) #9
  %tobool186.not = icmp eq ptr %extack, null
  br i1 %tobool186.not, label %do.body184.release_tun_meta_crit_edge, label %if.then187

do.body184.release_tun_meta_crit_edge:            ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_tun_meta

if.then187:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #11
  %92 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @tunnel_key_init.__msg.17, ptr %extack, align 4
  br label %release_tun_meta

if.end193:                                        ; preds = %if.else180.if.end193_crit_edge, %if.then165.if.end193_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.else180.if.end193_crit_edge ], [ 1, %if.then165.if.end193_crit_edge ]
  %action = getelementptr i8, ptr %9, i32 12
  %93 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %action, align 4
  %call194 = call i32 @tcf_action_check_ctrlact(i32 noundef %94, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call194)
  %cmp195 = icmp slt i32 %call194, 0
  br i1 %cmp195, label %if.end193.release_tun_meta_crit_edge, label %if.end198

if.end193.release_tun_meta_crit_edge:             ; preds = %if.end193
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_tun_meta

if.end198:                                        ; preds = %if.end193
  %95 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %a, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %97 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %97, i32 noundef 3520, i32 noundef 16) #12
  %tobool200.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool200.not, label %do.body205, label %if.end213, !prof !131

do.body205:                                       ; preds = %if.end198
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_init.__msg.18) #9
  %tobool207.not = icmp eq ptr %extack, null
  br i1 %tobool207.not, label %do.body205.if.end210_crit_edge, label %if.then208

do.body205.if.end210_crit_edge:                   ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end210

if.then208:                                       ; preds = %do.body205
  call void @__sanitizer_cov_trace_pc() #11
  %98 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr @tunnel_key_init.__msg.18, ptr %extack, align 4
  br label %if.end210

if.end210:                                        ; preds = %if.then208, %do.body205.if.end210_crit_edge
  %99 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %goto_ch, align 4
  %tobool279.not = icmp eq ptr %100, null
  br i1 %tobool279.not, label %if.end210.release_tun_meta_crit_edge, label %if.then280

if.end210.release_tun_meta_crit_edge:             ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_tun_meta

if.end213:                                        ; preds = %if.end198
  %101 = ptrtoint ptr %t_action to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %t_action, align 4
  %tcft_action = getelementptr inbounds %struct.tcf_tunnel_key_params, ptr %call7.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %tcft_action to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %102, ptr %tcft_action, align 8
  %tcft_enc_metadata = getelementptr inbounds %struct.tcf_tunnel_key_params, ptr %call7.i.i, i32 0, i32 2
  %104 = ptrtoint ptr %tcft_enc_metadata to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %metadata.1, ptr %tcft_enc_metadata, align 4
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %96, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #9
  %105 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %a, align 4
  %107 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %action, align 4
  %109 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %goto_ch, align 4
  %call216 = call ptr @tcf_action_set_ctrlact(ptr noundef %106, i32 noundef %108, ptr noundef %110) #9
  %111 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call216, ptr %goto_ch, align 4
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %96, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i408 = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i408)
  %tobool221.not = icmp eq i32 %call.i408, 0
  br i1 %tobool221.not, label %land.lhs.true222, label %if.end213.do.end230_crit_edge

if.end213.do.end230_crit_edge:                    ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end230

land.lhs.true222:                                 ; preds = %if.end213
  %call223 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call223)
  %tobool224.not = icmp eq i32 %call223, 0
  br i1 %tobool224.not, label %land.lhs.true222.do.end230_crit_edge, label %land.lhs.true225

land.lhs.true222.do.end230_crit_edge:             ; preds = %land.lhs.true222
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end230

land.lhs.true225:                                 ; preds = %land.lhs.true222
  %.b397 = load i1, ptr @tunnel_key_init.__warned, align 1
  br i1 %.b397, label %land.lhs.true225.do.end230_crit_edge, label %if.then227

land.lhs.true225.do.end230_crit_edge:             ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end230

if.then227:                                       ; preds = %land.lhs.true225
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tunnel_key_init.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 534, ptr noundef nonnull @.str.5) #9
  br label %do.end230

do.end230:                                        ; preds = %if.then227, %land.lhs.true225.do.end230_crit_edge, %land.lhs.true222.do.end230_crit_edge, %if.end213.do.end230_crit_edge
  %params = getelementptr inbounds %struct.tcf_tunnel_key, ptr %96, i32 0, i32 1
  %112 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %params, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !137
  %114 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %call7.i.i, ptr %params, align 16
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #9
  call fastcc void @tunnel_key_release_params(ptr noundef %113)
  %115 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %goto_ch, align 4
  %tobool276.not = icmp eq ptr %116, null
  br i1 %tobool276.not, label %do.end230.cleanup_crit_edge, label %if.then277

do.end230.cleanup_crit_edge:                      ; preds = %do.end230
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then277:                                       ; preds = %do.end230
  call void @__sanitizer_cov_trace_pc() #11
  call void @tcf_chain_put_by_act(ptr noundef nonnull %116) #9
  br label %cleanup

if.then280:                                       ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #11
  call void @tcf_chain_put_by_act(ptr noundef nonnull %100) #9
  br label %release_tun_meta

release_tun_meta:                                 ; preds = %if.then280, %if.end210.release_tun_meta_crit_edge, %if.end193.release_tun_meta_crit_edge, %if.then187, %do.body184.release_tun_meta_crit_edge, %if.then174, %do.body171.release_tun_meta_crit_edge
  %exists.0.shrunk = phi i1 [ true, %if.then280 ], [ true, %if.end210.release_tun_meta_crit_edge ], [ false, %if.then174 ], [ false, %do.body171.release_tun_meta_crit_edge ], [ true, %if.then187 ], [ true, %do.body184.release_tun_meta_crit_edge ], [ true, %if.end193.release_tun_meta_crit_edge ]
  %ret.3 = phi i32 [ -12, %if.then280 ], [ -12, %if.end210.release_tun_meta_crit_edge ], [ %call168, %if.then174 ], [ %call168, %do.body171.release_tun_meta_crit_edge ], [ -17, %if.then187 ], [ -17, %do.body184.release_tun_meta_crit_edge ], [ %call194, %if.end193.release_tun_meta_crit_edge ]
  %tobool282.not = icmp eq ptr %metadata.1, null
  br i1 %tobool282.not, label %release_tun_meta.err_out_crit_edge, label %release_tun_meta.if.then283_crit_edge

release_tun_meta.if.then283_crit_edge:            ; preds = %release_tun_meta
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then283

release_tun_meta.err_out_crit_edge:               ; preds = %release_tun_meta
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_out

if.then283:                                       ; preds = %release_tun_meta.if.then283_crit_edge, %if.then143.if.then283_crit_edge, %if.end137.if.then283_crit_edge
  %metadata.2429 = phi ptr [ %metadata.1, %release_tun_meta.if.then283_crit_edge ], [ %metadata.0422, %if.end137.if.then283_crit_edge ], [ %metadata.0422, %if.then143.if.then283_crit_edge ]
  %ret.3428 = phi i32 [ %ret.3, %release_tun_meta.if.then283_crit_edge ], [ %call138, %if.end137.if.then283_crit_edge ], [ %call146, %if.then143.if.then283_crit_edge ]
  %exists.0.shrunk427 = phi i1 [ %exists.0.shrunk, %release_tun_meta.if.then283_crit_edge ], [ %tobool36, %if.end137.if.then283_crit_edge ], [ %tobool36, %if.then143.if.then283_crit_edge ]
  call void @dst_release(ptr noundef nonnull %metadata.2429) #9
  br i1 %exists.0.shrunk427, label %if.then283.if.then286_crit_edge, label %if.then283.if.else289_crit_edge

if.then283.if.else289_crit_edge:                  ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else289

if.then283.if.then286_crit_edge:                  ; preds = %if.then283
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then286

err_out:                                          ; preds = %release_tun_meta.err_out_crit_edge, %do.body156.err_out_crit_edge, %do.body129.err_out_crit_edge, %do.body117.err_out_crit_edge, %if.then73.err_out_crit_edge
  %exists.1.off0 = phi i1 [ %exists.0.shrunk, %release_tun_meta.err_out_crit_edge ], [ %tobool36, %if.then73.err_out_crit_edge ], [ %tobool36, %do.body117.err_out_crit_edge ], [ %tobool36, %do.body129.err_out_crit_edge ], [ %tobool36, %do.body156.err_out_crit_edge ]
  %ret.4 = phi i32 [ %ret.3, %release_tun_meta.err_out_crit_edge ], [ %call.i, %if.then73.err_out_crit_edge ], [ -22, %do.body117.err_out_crit_edge ], [ -12, %do.body129.err_out_crit_edge ], [ -22, %do.body156.err_out_crit_edge ]
  br i1 %exists.1.off0, label %err_out.if.then286_crit_edge, label %err_out.if.else289_crit_edge

err_out.if.else289_crit_edge:                     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else289

err_out.if.then286_crit_edge:                     ; preds = %err_out
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then286

if.then286:                                       ; preds = %err_out.if.then286_crit_edge, %if.then283.if.then286_crit_edge, %if.then159.if.then286_crit_edge, %if.then132.if.then286_crit_edge, %if.then120.if.then286_crit_edge
  %ret.4431 = phi i32 [ %ret.3428, %if.then283.if.then286_crit_edge ], [ %ret.4, %err_out.if.then286_crit_edge ], [ -22, %if.then120.if.then286_crit_edge ], [ -12, %if.then132.if.then286_crit_edge ], [ -22, %if.then159.if.then286_crit_edge ]
  %117 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %a, align 4
  %call288 = call i32 @tcf_idr_release(ptr noundef %118, i1 noundef zeroext %tobool) #9
  br label %cleanup

if.else289:                                       ; preds = %err_out.if.else289_crit_edge, %if.then283.if.else289_crit_edge, %if.then159.if.else289_crit_edge, %if.then132.if.else289_crit_edge, %if.then120.if.else289_crit_edge
  %ret.4430 = phi i32 [ %ret.3428, %if.then283.if.else289_crit_edge ], [ %ret.4, %err_out.if.else289_crit_edge ], [ -22, %if.then120.if.else289_crit_edge ], [ -12, %if.then132.if.else289_crit_edge ], [ -22, %if.then159.if.else289_crit_edge ]
  %119 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %120) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else289, %if.then286, %if.then277, %do.end230.cleanup_crit_edge, %if.end35.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %if.then21, %do.body18.cleanup_crit_edge, %if.then10, %do.body7.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ -22, %do.body.cleanup_crit_edge ], [ %call2.i, %if.then10 ], [ %call2.i, %do.body7.cleanup_crit_edge ], [ -22, %if.then21 ], [ -22, %do.body18.cleanup_crit_edge ], [ %call31, %if.end26.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ %ret.2, %if.then277 ], [ %ret.2, %do.end230.cleanup_crit_edge ], [ %ret.4430, %if.else289 ], [ %ret.4431, %if.then286 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goto_ch) #9
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %tb) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tunnel_key_walker(ptr noundef %net, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @tunnel_key_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_generic_walker(ptr noundef %call, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_tunnel_key_offload_act_setup(ptr noundef %act, ptr nocapture noundef writeonly %entry_data, ptr nocapture noundef writeonly %index_inc, i1 noundef zeroext %bind) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map.i = getelementptr inbounds %struct.tc_action, ptr %act, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %bind, label %if.then, label %if.else12

if.then:                                          ; preds = %entry
  br i1 %tobool.not.i, label %land.lhs.true.i, label %if.then.do.end.i_crit_edge

if.then.do.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.then
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b16.i = load i1, ptr @is_tcf_tunnel_set.__warned, align 1
  br i1 %.b16.i, label %land.lhs.true3.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true3.i.do.end.i_crit_edge:              ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @is_tcf_tunnel_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 34, ptr noundef nonnull @.str.5) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true3.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.then.do.end.i_crit_edge
  %params5.i = getelementptr inbounds %struct.tcf_tunnel_key, ptr %act, i32 0, i32 1
  %0 = ptrtoint ptr %params5.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params5.i, align 16
  %2 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %act, align 16
  %tobool6.not.i = icmp eq ptr %3, null
  br i1 %tobool6.not.i, label %do.end.i.if.else_crit_edge, label %land.lhs.true7.i

do.end.i.if.else_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

land.lhs.true7.i:                                 ; preds = %do.end.i
  %id.i = getelementptr inbounds %struct.tc_action_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %5)
  %cmp.i = icmp eq i32 %5, 17
  br i1 %cmp.i, label %is_tcf_tunnel_set.exit, label %land.lhs.true7.i.if.else_crit_edge

land.lhs.true7.i.if.else_crit_edge:               ; preds = %land.lhs.true7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

is_tcf_tunnel_set.exit:                           ; preds = %land.lhs.true7.i
  %tcft_action.i = getelementptr inbounds %struct.tcf_tunnel_key_params, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %tcft_action.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tcft_action.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp10.i = icmp eq i32 %7, 1
  br i1 %cmp10.i, label %if.then2, label %is_tcf_tunnel_set.exit.if.else_crit_edge

is_tcf_tunnel_set.exit.if.else_crit_edge:         ; preds = %is_tcf_tunnel_set.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else

if.then2:                                         ; preds = %is_tcf_tunnel_set.exit
  %8 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 11, ptr %entry_data, align 8
  %call.i.i.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %if.then2.tcf_tunnel_info_copy.exit.i_crit_edge

if.then2.tcf_tunnel_info_copy.exit.i_crit_edge:   ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_tunnel_info_copy.exit.i

land.lhs.true.i.i.i:                              ; preds = %if.then2
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool2.not.i.i.i, label %land.lhs.true.i.i.i.tcf_tunnel_info_copy.exit.i_crit_edge, label %land.lhs.true3.i.i.i

land.lhs.true.i.i.i.tcf_tunnel_info_copy.exit.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_tunnel_info_copy.exit.i

land.lhs.true3.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b7.i.i.i = load i1, ptr @tcf_tunnel_info.__warned, align 1
  br i1 %.b7.i.i.i, label %land.lhs.true3.i.i.i.tcf_tunnel_info_copy.exit.i_crit_edge, label %if.then.i.i.i

land.lhs.true3.i.i.i.tcf_tunnel_info_copy.exit.i_crit_edge: ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_tunnel_info_copy.exit.i

if.then.i.i.i:                                    ; preds = %land.lhs.true3.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcf_tunnel_info.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 62, ptr noundef nonnull @.str.5) #9
  br label %tcf_tunnel_info_copy.exit.i

tcf_tunnel_info_copy.exit.i:                      ; preds = %if.then.i.i.i, %land.lhs.true3.i.i.i.tcf_tunnel_info_copy.exit.i_crit_edge, %land.lhs.true.i.i.i.tcf_tunnel_info_copy.exit.i_crit_edge, %if.then2.tcf_tunnel_info_copy.exit.i_crit_edge
  %9 = ptrtoint ptr %params5.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %params5.i, align 16
  %tcft_enc_metadata.i.i.i = getelementptr inbounds %struct.tcf_tunnel_key_params, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %tcft_enc_metadata.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %tcft_enc_metadata.i.i.i, align 4
  %u.i.i.i = getelementptr inbounds %struct.metadata_dst, ptr %12, i32 0, i32 2
  %options_len.i.i = getelementptr inbounds %struct.metadata_dst, ptr %12, i32 0, i32 2, i32 0, i32 2
  %13 = ptrtoint ptr %options_len.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %options_len.i.i, align 8
  %conv.i.i = zext i8 %14 to i32
  %add.i.i = add nuw nsw i32 %conv.i.i, 72
  %call1.i.i = tail call ptr @kmemdup(ptr noundef nonnull %u.i.i.i, i32 noundef %add.i.i, i32 noundef 2592) #9
  %15 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call1.i.i, ptr %15, align 8
  %tobool.not.i39 = icmp eq ptr %call1.i.i, null
  br i1 %tobool.not.i39, label %tcf_tunnel_info_copy.exit.i.cleanup27_crit_edge, label %tcf_tunnel_encap_get_tunnel.exit.thread

tcf_tunnel_info_copy.exit.i.cleanup27_crit_edge:  ; preds = %tcf_tunnel_info_copy.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

tcf_tunnel_encap_get_tunnel.exit.thread:          ; preds = %tcf_tunnel_info_copy.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %destructor.i = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 3
  %17 = ptrtoint ptr %destructor.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tcf_tunnel_encap_put_tunnel, ptr %destructor.i, align 4
  %destructor_priv.i = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 4
  %18 = ptrtoint ptr %destructor_priv.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call1.i.i, ptr %destructor_priv.i, align 8
  br label %cleanup

if.else:                                          ; preds = %is_tcf_tunnel_set.exit.if.else_crit_edge, %land.lhs.true7.i.if.else_crit_edge, %do.end.i.if.else_crit_edge
  %call.i.i42 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i42)
  %tobool.not.i43 = icmp eq i32 %call.i.i42, 0
  br i1 %tobool.not.i43, label %land.lhs.true.i46, label %if.else.do.end.i52_crit_edge

if.else.do.end.i52_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i52

land.lhs.true.i46:                                ; preds = %if.else
  %call1.i44 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i44)
  %tobool2.not.i45 = icmp eq i32 %call1.i44, 0
  br i1 %tobool2.not.i45, label %land.lhs.true.i46.do.end.i52_crit_edge, label %land.lhs.true3.i48

land.lhs.true.i46.do.end.i52_crit_edge:           ; preds = %land.lhs.true.i46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i52

land.lhs.true3.i48:                               ; preds = %land.lhs.true.i46
  %.b16.i47 = load i1, ptr @is_tcf_tunnel_release.__warned, align 1
  br i1 %.b16.i47, label %land.lhs.true3.i48.do.end.i52_crit_edge, label %if.then.i49

land.lhs.true3.i48.do.end.i52_crit_edge:          ; preds = %land.lhs.true3.i48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i52

if.then.i49:                                      ; preds = %land.lhs.true3.i48
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @is_tcf_tunnel_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 48, ptr noundef nonnull @.str.5) #9
  br label %do.end.i52

do.end.i52:                                       ; preds = %if.then.i49, %land.lhs.true3.i48.do.end.i52_crit_edge, %land.lhs.true.i46.do.end.i52_crit_edge, %if.else.do.end.i52_crit_edge
  %19 = ptrtoint ptr %params5.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %params5.i, align 16
  %21 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %act, align 16
  %tobool6.not.i51 = icmp eq ptr %22, null
  br i1 %tobool6.not.i51, label %do.end.i52.cleanup27_crit_edge, label %land.lhs.true7.i55

do.end.i52.cleanup27_crit_edge:                   ; preds = %do.end.i52
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

land.lhs.true7.i55:                               ; preds = %do.end.i52
  %id.i53 = getelementptr inbounds %struct.tc_action_ops, ptr %22, i32 0, i32 2
  %23 = ptrtoint ptr %id.i53 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id.i53, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %24)
  %cmp.i54 = icmp eq i32 %24, 17
  br i1 %cmp.i54, label %is_tcf_tunnel_release.exit, label %land.lhs.true7.i55.cleanup27_crit_edge

land.lhs.true7.i55.cleanup27_crit_edge:           ; preds = %land.lhs.true7.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

is_tcf_tunnel_release.exit:                       ; preds = %land.lhs.true7.i55
  %tcft_action.i56 = getelementptr inbounds %struct.tcf_tunnel_key_params, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %tcft_action.i56 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %tcft_action.i56, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %26)
  %cmp10.i57 = icmp eq i32 %26, 2
  br i1 %cmp10.i57, label %if.then7, label %is_tcf_tunnel_release.exit.cleanup27_crit_edge

is_tcf_tunnel_release.exit.cleanup27_crit_edge:   ; preds = %is_tcf_tunnel_release.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

if.then7:                                         ; preds = %is_tcf_tunnel_release.exit
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 12, ptr %entry_data, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %tcf_tunnel_encap_get_tunnel.exit.thread
  %28 = ptrtoint ptr %index_inc to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %index_inc, align 4
  br label %cleanup27

if.else12:                                        ; preds = %entry
  br i1 %tobool.not.i, label %land.lhs.true.i65, label %if.else12.do.end.i71_crit_edge

if.else12.do.end.i71_crit_edge:                   ; preds = %if.else12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i71

land.lhs.true.i65:                                ; preds = %if.else12
  %call1.i63 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i63)
  %tobool2.not.i64 = icmp eq i32 %call1.i63, 0
  br i1 %tobool2.not.i64, label %land.lhs.true.i65.do.end.i71_crit_edge, label %land.lhs.true3.i67

land.lhs.true.i65.do.end.i71_crit_edge:           ; preds = %land.lhs.true.i65
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i71

land.lhs.true3.i67:                               ; preds = %land.lhs.true.i65
  %.b16.i66 = load i1, ptr @is_tcf_tunnel_set.__warned, align 1
  br i1 %.b16.i66, label %land.lhs.true3.i67.do.end.i71_crit_edge, label %if.then.i68

land.lhs.true3.i67.do.end.i71_crit_edge:          ; preds = %land.lhs.true3.i67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i71

if.then.i68:                                      ; preds = %land.lhs.true3.i67
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @is_tcf_tunnel_set.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 34, ptr noundef nonnull @.str.5) #9
  br label %do.end.i71

do.end.i71:                                       ; preds = %if.then.i68, %land.lhs.true3.i67.do.end.i71_crit_edge, %land.lhs.true.i65.do.end.i71_crit_edge, %if.else12.do.end.i71_crit_edge
  %params5.i69 = getelementptr inbounds %struct.tcf_tunnel_key, ptr %act, i32 0, i32 1
  %29 = ptrtoint ptr %params5.i69 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %params5.i69, align 16
  %31 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %act, align 16
  %tobool6.not.i70 = icmp eq ptr %32, null
  br i1 %tobool6.not.i70, label %do.end.i71.if.else16_crit_edge, label %land.lhs.true7.i74

do.end.i71.if.else16_crit_edge:                   ; preds = %do.end.i71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else16

land.lhs.true7.i74:                               ; preds = %do.end.i71
  %id.i72 = getelementptr inbounds %struct.tc_action_ops, ptr %32, i32 0, i32 2
  %33 = ptrtoint ptr %id.i72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %id.i72, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %34)
  %cmp.i73 = icmp eq i32 %34, 17
  br i1 %cmp.i73, label %is_tcf_tunnel_set.exit79, label %land.lhs.true7.i74.if.else16_crit_edge

land.lhs.true7.i74.if.else16_crit_edge:           ; preds = %land.lhs.true7.i74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else16

is_tcf_tunnel_set.exit79:                         ; preds = %land.lhs.true7.i74
  %tcft_action.i75 = getelementptr inbounds %struct.tcf_tunnel_key_params, ptr %30, i32 0, i32 1
  %35 = ptrtoint ptr %tcft_action.i75 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %tcft_action.i75, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %36)
  %cmp10.i76 = icmp eq i32 %36, 1
  br i1 %cmp10.i76, label %if.then14, label %is_tcf_tunnel_set.exit79.if.else16_crit_edge

is_tcf_tunnel_set.exit79.if.else16_crit_edge:     ; preds = %is_tcf_tunnel_set.exit79
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else16

if.then14:                                        ; preds = %is_tcf_tunnel_set.exit79
  call void @__sanitizer_cov_trace_pc() #11
  %id15 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %37 = ptrtoint ptr %id15 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 11, ptr %id15, align 8
  br label %cleanup27

if.else16:                                        ; preds = %is_tcf_tunnel_set.exit79.if.else16_crit_edge, %land.lhs.true7.i74.if.else16_crit_edge, %do.end.i71.if.else16_crit_edge
  %call.i.i81 = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81)
  %tobool.not.i82 = icmp eq i32 %call.i.i81, 0
  br i1 %tobool.not.i82, label %land.lhs.true.i85, label %if.else16.do.end.i91_crit_edge

if.else16.do.end.i91_crit_edge:                   ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i91

land.lhs.true.i85:                                ; preds = %if.else16
  %call1.i83 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i83)
  %tobool2.not.i84 = icmp eq i32 %call1.i83, 0
  br i1 %tobool2.not.i84, label %land.lhs.true.i85.do.end.i91_crit_edge, label %land.lhs.true3.i87

land.lhs.true.i85.do.end.i91_crit_edge:           ; preds = %land.lhs.true.i85
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i91

land.lhs.true3.i87:                               ; preds = %land.lhs.true.i85
  %.b16.i86 = load i1, ptr @is_tcf_tunnel_release.__warned, align 1
  br i1 %.b16.i86, label %land.lhs.true3.i87.do.end.i91_crit_edge, label %if.then.i88

land.lhs.true3.i87.do.end.i91_crit_edge:          ; preds = %land.lhs.true3.i87
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end.i91

if.then.i88:                                      ; preds = %land.lhs.true3.i87
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @is_tcf_tunnel_release.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.30, i32 noundef 48, ptr noundef nonnull @.str.5) #9
  br label %do.end.i91

do.end.i91:                                       ; preds = %if.then.i88, %land.lhs.true3.i87.do.end.i91_crit_edge, %land.lhs.true.i85.do.end.i91_crit_edge, %if.else16.do.end.i91_crit_edge
  %38 = ptrtoint ptr %params5.i69 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %params5.i69, align 16
  %40 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %act, align 16
  %tobool6.not.i90 = icmp eq ptr %41, null
  br i1 %tobool6.not.i90, label %do.end.i91.cleanup27_crit_edge, label %land.lhs.true7.i94

do.end.i91.cleanup27_crit_edge:                   ; preds = %do.end.i91
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

land.lhs.true7.i94:                               ; preds = %do.end.i91
  %id.i92 = getelementptr inbounds %struct.tc_action_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %id.i92 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %id.i92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %43)
  %cmp.i93 = icmp eq i32 %43, 17
  br i1 %cmp.i93, label %is_tcf_tunnel_release.exit99, label %land.lhs.true7.i94.cleanup27_crit_edge

land.lhs.true7.i94.cleanup27_crit_edge:           ; preds = %land.lhs.true7.i94
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

is_tcf_tunnel_release.exit99:                     ; preds = %land.lhs.true7.i94
  %tcft_action.i95 = getelementptr inbounds %struct.tcf_tunnel_key_params, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %tcft_action.i95 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %tcft_action.i95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %45)
  %cmp10.i96 = icmp eq i32 %45, 2
  br i1 %cmp10.i96, label %if.then18, label %is_tcf_tunnel_release.exit99.cleanup27_crit_edge

is_tcf_tunnel_release.exit99.cleanup27_crit_edge: ; preds = %is_tcf_tunnel_release.exit99
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup27

if.then18:                                        ; preds = %is_tcf_tunnel_release.exit99
  call void @__sanitizer_cov_trace_pc() #11
  %id19 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %46 = ptrtoint ptr %id19 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 12, ptr %id19, align 8
  br label %cleanup27

cleanup27:                                        ; preds = %if.then18, %is_tcf_tunnel_release.exit99.cleanup27_crit_edge, %land.lhs.true7.i94.cleanup27_crit_edge, %do.end.i91.cleanup27_crit_edge, %if.then14, %cleanup, %is_tcf_tunnel_release.exit.cleanup27_crit_edge, %land.lhs.true7.i55.cleanup27_crit_edge, %do.end.i52.cleanup27_crit_edge, %tcf_tunnel_info_copy.exit.i.cleanup27_crit_edge
  %retval.2 = phi i32 [ -95, %is_tcf_tunnel_release.exit99.cleanup27_crit_edge ], [ 0, %cleanup ], [ 0, %if.then18 ], [ 0, %if.then14 ], [ -12, %tcf_tunnel_info_copy.exit.i.cleanup27_crit_edge ], [ -95, %is_tcf_tunnel_release.exit.cleanup27_crit_edge ], [ -95, %land.lhs.true7.i55.cleanup27_crit_edge ], [ -95, %do.end.i52.cleanup27_crit_edge ], [ -95, %land.lhs.true7.i94.cleanup27_crit_edge ], [ -95, %do.end.i91.cleanup27_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @bstats_update(ptr noundef %bstats, ptr nocapture noundef readonly %skb) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %_bstats_update.exit

land.lhs.true.i.i.i:                              ; preds = %cond.end
  %9 = tail call i32 @llvm.read_register.i32(metadata !121) #9
  %and.i.i.i.i.i.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !138
  %13 = tail call i32 @llvm.read_register.i32(metadata !121) #9
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !139
  %22 = tail call i32 @llvm.read_register.i32(metadata !121) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %_bstats_update.exit

land.rhs.i.i.i:                                   ; preds = %land.lhs.true.i.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !121) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %_bstats_update.exit

land.rhs22.i.i.i:                                 ; preds = %land.rhs.i.i.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !121) #9
  %and.i.i.i9.i.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i9.i.i.i to ptr
  %preempt_count.i.i10.i.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i10.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i10.i.i.i, align 4
  %add.i11.i.i.i = add i32 %33, 1
  store volatile i32 %add.i11.i.i.i, ptr %preempt_count.i.i10.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !140
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
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !141
  %41 = tail call i32 @llvm.read_register.i32(metadata !121) #9
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %_bstats_update.exit

land.rhs58.i.i.i:                                 ; preds = %land.rhs22.i.i.i
  %.b1.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs58.i.i.i._bstats_update.exit_crit_edge, label %if.then.i.i.i, !prof !135

land.rhs58.i.i.i._bstats_update.exit_crit_edge:   ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %_bstats_update.exit

if.then.i.i.i:                                    ; preds = %land.rhs58.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %_bstats_update.exit

_bstats_update.exit:                              ; preds = %if.then.i.i.i, %land.rhs58.i.i.i._bstats_update.exit_crit_edge, %land.rhs22.i.i.i._bstats_update.exit_crit_edge, %land.rhs.i.i.i._bstats_update.exit_crit_edge, %land.lhs.true.i.i.i._bstats_update.exit_crit_edge, %cond.end._bstats_update.exit_crit_edge
  %conv = zext i32 %1 to i64
  %syncp.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2
  %45 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !142
  %dep_map.i.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %bstats, i32 0, i32 2, i32 0, i32 1
  %47 = tail call ptr @llvm.returnaddress(i32 0) #9
  %48 = ptrtoint ptr %47 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %48) #9
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
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i, i32 noundef %48) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !143
  %53 = ptrtoint ptr %syncp.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %syncp.i, align 4
  %inc.i.i.i.i = add i32 %54, 1
  store i32 %inc.i.i.i.i, ptr %syncp.i, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dst_release(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tunnel_key_opts_dump(ptr noundef %skb, ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  %tmp.i43.i = alloca i8, align 1
  %tmp.i41.i = alloca i8, align 1
  %tmp.i39.i = alloca i32, align 4
  %tmp.i.i73 = alloca i8, align 1
  %tmp.i.i54 = alloca i32, align 4
  %tmp.i44.i = alloca i8, align 1
  %tmp.i.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %options_len = getelementptr inbounds %struct.ip_tunnel_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %options_len, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %2 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %tobool1.not113 = icmp eq ptr %3, null
  %tobool1.not = select i1 %cmp.i, i1 true, i1 %tobool1.not113
  br i1 %tobool1.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %tun_flags = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 2
  %4 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %tun_flags, align 8
  %conv = zext i16 %5 to i32
  %and = and i32 %conv, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.end3
  %6 = ptrtoint ptr %options_len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %options_len, align 8
  %8 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not53.i = icmp eq ptr %9, null
  %tobool.not.i = select i1 %cmp.i.i, i1 true, i1 %tobool.not53.i
  br i1 %tobool.not.i, label %if.then5.if.then.i.i_crit_edge, label %while.cond.preheader.i

if.then5.if.then.i.i_crit_edge:                   ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

while.cond.preheader.i:                           ; preds = %if.then5
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp50.not.i = icmp eq i8 %7, 0
  br i1 %cmp50.not.i, label %while.cond.preheader.i.if.end34_crit_edge, label %while.body.preheader.i

while.cond.preheader.i.if.end34_crit_edge:        ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

while.body.preheader.i:                           ; preds = %while.cond.preheader.i
  %conv.i = zext i8 %7 to i32
  %add.ptr.i = getelementptr %struct.ip_tunnel_info, ptr %info, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cleanup.i.while.body.i_crit_edge, %while.body.preheader.i
  %src.052.i = phi ptr [ %add.ptr24.i, %cleanup.i.while.body.i_crit_edge ], [ %add.ptr.i, %while.body.preheader.i ]
  %len.051.i = phi i32 [ %sub.i, %cleanup.i.while.body.i_crit_edge ], [ %conv.i, %while.body.preheader.i ]
  %10 = ptrtoint ptr %src.052.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %src.052.i, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i) #9
  %12 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %12)
  store i16 %11, ptr %tmp.i.i, align 2
  %call.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i.i) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool3.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool3.not.i, label %lor.lhs.false.i, label %while.body.i.if.then.i.i.i_crit_edge

while.body.i.if.then.i.i.i_crit_edge:             ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

lor.lhs.false.i:                                  ; preds = %while.body.i
  %type.i = getelementptr inbounds %struct.geneve_opt, ptr %src.052.i, i32 0, i32 1
  %13 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type.i, align 2
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i44.i) #9
  %15 = ptrtoint ptr %tmp.i44.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %tmp.i44.i, align 1
  %call.i45.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i44.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i44.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45.i)
  %tobool5.not.i = icmp eq i32 %call.i45.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false.i.if.then.i.i.i_crit_edge

lor.lhs.false.i.if.then.i.i.i_crit_edge:          ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false.i
  %length.i = getelementptr inbounds %struct.geneve_opt, ptr %src.052.i, i32 0, i32 2
  %16 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %16)
  %bf.load.i = load i8, ptr %length.i, align 1
  %bf.clear.i = shl i8 %bf.load.i, 2
  %17 = and i8 %bf.clear.i, 124
  %mul.i = zext i8 %17 to i32
  %add.ptr8.i = getelementptr %struct.geneve_opt, ptr %src.052.i, i32 1
  %call9.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef %mul.i, ptr noundef %add.ptr8.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %cleanup.i, label %lor.lhs.false6.i.if.then.i.i.i_crit_edge

lor.lhs.false6.i.if.then.i.i.i_crit_edge:         ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %lor.lhs.false6.i.if.then.i.i.i_crit_edge, %lor.lhs.false.i.if.then.i.i.i_crit_edge, %while.body.i.if.then.i.i.i_crit_edge
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %18 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %19, %9
  br i1 %cmp.i.i.i, label %if.then.i.i.i.if.then.i.i.sink.split.sink.split_crit_edge, label %if.then.i.i.i.if.then.i.i.sink.split_crit_edge, !prof !131

if.then.i.i.i.if.then.i.i.sink.split_crit_edge:   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.sink.split

if.then.i.i.i.if.then.i.i.sink.split.sink.split_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.sink.split.sink.split

cleanup.i:                                        ; preds = %lor.lhs.false6.i
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %bf.load14.i = load i8, ptr %length.i, align 1
  %bf.clear15.i = shl i8 %bf.load14.i, 2
  %21 = and i8 %bf.clear15.i, 124
  %narrow.i = add nuw i8 %21, 4
  %add.i = zext i8 %narrow.i to i32
  %sub.i = sub nsw i32 %len.051.i, %add.i
  %add.ptr24.i = getelementptr i8, ptr %src.052.i, i32 %add.i
  %cmp.i53 = icmp sgt i32 %sub.i, 0
  br i1 %cmp.i53, label %cleanup.i.while.body.i_crit_edge, label %cleanup.i.if.end34_crit_edge

cleanup.i.if.end34_crit_edge:                     ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

cleanup.i.while.body.i_crit_edge:                 ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

if.else:                                          ; preds = %if.end3
  %and13 = and i32 %conv, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.else20, label %if.then15

if.then15:                                        ; preds = %if.else
  %22 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i56 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i56)
  %cmp.i.i57 = icmp slt i32 %call1.i.i56, 0
  %tobool.not13.i = icmp eq ptr %23, null
  %tobool.not.i58 = select i1 %cmp.i.i57, i1 true, i1 %tobool.not13.i
  br i1 %tobool.not.i58, label %if.then15.if.then.i.i_crit_edge, label %if.end.i

if.then15.if.then.i.i_crit_edge:                  ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end.i:                                         ; preds = %if.then15
  %add.ptr.i59 = getelementptr %struct.ip_tunnel_info, ptr %info, i32 1
  %24 = ptrtoint ptr %add.ptr.i59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i59, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i54) #9
  %26 = ptrtoint ptr %tmp.i.i54 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %tmp.i.i54, align 4
  %call.i.i60 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i.i54) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i54) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60)
  %tobool2.not.i = icmp eq i32 %call.i.i60, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end34_crit_edge, label %if.then.i.i.i63

if.end.i.if.end34_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then.i.i.i63:                                  ; preds = %if.end.i
  %data.i.i.i61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i.i61, align 4
  %cmp.i.i.i62 = icmp ugt ptr %28, %23
  br i1 %cmp.i.i.i62, label %if.then.i.i.i63.if.then.i.i.sink.split.sink.split_crit_edge, label %if.then.i.i.i63.if.then.i.i.sink.split_crit_edge, !prof !131

if.then.i.i.i63.if.then.i.i.sink.split_crit_edge: ; preds = %if.then.i.i.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.sink.split

if.then.i.i.i63.if.then.i.i.sink.split.sink.split_crit_edge: ; preds = %if.then.i.i.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.sink.split.sink.split

if.else20:                                        ; preds = %if.else
  %and24 = and i32 %conv, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.else20.if.then.i.i_crit_edge, label %if.then26

if.else20.if.then.i.i_crit_edge:                  ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then26:                                        ; preds = %if.else20
  %add.ptr.i74 = getelementptr %struct.ip_tunnel_info, ptr %info, i32 1
  %29 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i.i, align 8
  %call1.i.i76 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i76)
  %cmp.i.i77 = icmp slt i32 %call1.i.i76, 0
  %tobool.not46.i = icmp eq ptr %30, null
  %tobool.not.i78 = select i1 %cmp.i.i77, i1 true, i1 %tobool.not46.i
  br i1 %tobool.not.i78, label %if.then26.if.then.i.i_crit_edge, label %if.end.i82

if.then26.if.then.i.i_crit_edge:                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end.i82:                                       ; preds = %if.then26
  %31 = ptrtoint ptr %add.ptr.i74 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %add.ptr.i74, align 4
  %conv.i79 = trunc i32 %32 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i73) #9
  %33 = ptrtoint ptr %tmp.i.i73 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv.i79, ptr %tmp.i.i73, align 1
  %call.i.i80 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i.i73) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i73) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i80)
  %tobool2.not.i81 = icmp eq i32 %call.i.i80, 0
  br i1 %tobool2.not.i81, label %if.end4.i84, label %if.end.i82.if.then.i.i.i93_crit_edge

if.end.i82.if.then.i.i.i93_crit_edge:             ; preds = %if.end.i82
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i93

if.end4.i84:                                      ; preds = %if.end.i82
  %34 = ptrtoint ptr %add.ptr.i74 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %add.ptr.i74, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %35)
  %cmp.i83 = icmp eq i32 %35, 1
  br i1 %cmp.i83, label %land.lhs.true.i, label %if.end4.i84.if.end10.i_crit_edge

if.end4.i84.if.end10.i_crit_edge:                 ; preds = %if.end4.i84
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end10.i

land.lhs.true.i:                                  ; preds = %if.end4.i84
  %u.i = getelementptr inbounds %struct.erspan_metadata, ptr %add.ptr.i74, i32 0, i32 1
  %36 = ptrtoint ptr %u.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %u.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i39.i) #9
  %38 = ptrtoint ptr %tmp.i39.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %tmp.i39.i, align 4
  %call.i40.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i39.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i39.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40.i)
  %tobool8.not.i = icmp eq i32 %call.i40.i, 0
  br i1 %tobool8.not.i, label %if.end10thread-pre-split.i, label %land.lhs.true.i.if.then.i.i.i93_crit_edge

land.lhs.true.i.if.then.i.i.i93_crit_edge:        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i93

if.end10thread-pre-split.i:                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  %39 = ptrtoint ptr %add.ptr.i74 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pr.i = load i32, ptr %add.ptr.i74, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.end10thread-pre-split.i, %if.end4.i84.if.end10.i_crit_edge
  %40 = phi i32 [ %.pr.i, %if.end10thread-pre-split.i ], [ %35, %if.end4.i84.if.end10.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %40)
  %cmp12.i = icmp eq i32 %40, 2
  br i1 %cmp12.i, label %land.lhs.true14.i, label %if.end10.i.if.end34_crit_edge

if.end10.i.if.end34_crit_edge:                    ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

land.lhs.true14.i:                                ; preds = %if.end10.i
  %u15.i = getelementptr inbounds %struct.erspan_metadata, ptr %add.ptr.i74, i32 0, i32 1
  %dir.i = getelementptr inbounds %struct.erspan_md2, ptr %u15.i, i32 0, i32 2
  %41 = ptrtoint ptr %dir.i to i32
  call void @__asan_load2_noabort(i32 %41)
  %bf.load.i85 = load i16, ptr %dir.i, align 2
  %42 = trunc i16 %bf.load.i85 to i8
  %43 = lshr i8 %42, 3
  %bf.cast.i = and i8 %43, 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i41.i) #9
  %44 = ptrtoint ptr %tmp.i41.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %bf.cast.i, ptr %tmp.i41.i, align 1
  %call.i42.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i41.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i41.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i42.i)
  %tobool17.not.i = icmp eq i32 %call.i42.i, 0
  br i1 %tobool17.not.i, label %lor.lhs.false.i86, label %land.lhs.true14.i.if.then.i.i.i93_crit_edge

land.lhs.true14.i.if.then.i.i.i93_crit_edge:      ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i93

lor.lhs.false.i86:                                ; preds = %land.lhs.true14.i
  %45 = ptrtoint ptr %dir.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %bf.load.i.i = load i16, ptr %dir.i, align 2
  %46 = lshr i16 %bf.load.i.i, 4
  %47 = trunc i16 %46 to i8
  %conv6.i.i = and i8 %47, 63
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i43.i) #9
  %48 = ptrtoint ptr %tmp.i43.i to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 %conv6.i.i, ptr %tmp.i43.i, align 1
  %call.i44.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 1, ptr noundef nonnull %tmp.i43.i) #9
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i43.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i44.i)
  %tobool21.not.i = icmp eq i32 %call.i44.i, 0
  br i1 %tobool21.not.i, label %lor.lhs.false.i86.if.end34_crit_edge, label %lor.lhs.false.i86.if.then.i.i.i93_crit_edge

lor.lhs.false.i86.if.then.i.i.i93_crit_edge:      ; preds = %lor.lhs.false.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.i93

lor.lhs.false.i86.if.end34_crit_edge:             ; preds = %lor.lhs.false.i86
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end34

if.then.i.i.i93:                                  ; preds = %lor.lhs.false.i86.if.then.i.i.i93_crit_edge, %land.lhs.true14.i.if.then.i.i.i93_crit_edge, %land.lhs.true.i.if.then.i.i.i93_crit_edge, %if.end.i82.if.then.i.i.i93_crit_edge
  %data.i.i.i91 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %49 = ptrtoint ptr %data.i.i.i91 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i.i.i91, align 4
  %cmp.i.i.i92 = icmp ugt ptr %50, %30
  br i1 %cmp.i.i.i92, label %if.then.i.i.i93.if.then.i.i.sink.split.sink.split_crit_edge, label %if.then.i.i.i93.if.then.i.i.sink.split_crit_edge, !prof !131

if.then.i.i.i93.if.then.i.i.sink.split_crit_edge: ; preds = %if.then.i.i.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.sink.split

if.then.i.i.i93.if.then.i.i.sink.split.sink.split_crit_edge: ; preds = %if.then.i.i.i93
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i.sink.split.sink.split

if.then.i.i.sink.split.sink.split:                ; preds = %if.then.i.i.i93.if.then.i.i.sink.split.sink.split_crit_edge, %if.then.i.i.i63.if.then.i.i.sink.split.sink.split_crit_edge, %if.then.i.i.i.if.then.i.i.sink.split.sink.split_crit_edge
  %data.i.i.i91.sink.ph = phi ptr [ %data.i.i.i, %if.then.i.i.i.if.then.i.i.sink.split.sink.split_crit_edge ], [ %data.i.i.i61, %if.then.i.i.i63.if.then.i.i.sink.split.sink.split_crit_edge ], [ %data.i.i.i91, %if.then.i.i.i93.if.then.i.i.sink.split.sink.split_crit_edge ]
  %.sink114.ph = phi ptr [ %9, %if.then.i.i.i.if.then.i.i.sink.split.sink.split_crit_edge ], [ %23, %if.then.i.i.i63.if.then.i.i.sink.split.sink.split_crit_edge ], [ %30, %if.then.i.i.i93.if.then.i.i.sink.split.sink.split_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.then.i.i.sink.split

if.then.i.i.sink.split:                           ; preds = %if.then.i.i.sink.split.sink.split, %if.then.i.i.i93.if.then.i.i.sink.split_crit_edge, %if.then.i.i.i63.if.then.i.i.sink.split_crit_edge, %if.then.i.i.i.if.then.i.i.sink.split_crit_edge
  %data.i.i.i91.sink = phi ptr [ %data.i.i.i, %if.then.i.i.i.if.then.i.i.sink.split_crit_edge ], [ %data.i.i.i61, %if.then.i.i.i63.if.then.i.i.sink.split_crit_edge ], [ %data.i.i.i91, %if.then.i.i.i93.if.then.i.i.sink.split_crit_edge ], [ %data.i.i.i91.sink.ph, %if.then.i.i.sink.split.sink.split ]
  %.sink114 = phi ptr [ %9, %if.then.i.i.i.if.then.i.i.sink.split_crit_edge ], [ %23, %if.then.i.i.i63.if.then.i.i.sink.split_crit_edge ], [ %30, %if.then.i.i.i93.if.then.i.i.sink.split_crit_edge ], [ %.sink114.ph, %if.then.i.i.sink.split.sink.split ]
  %51 = ptrtoint ptr %data.i.i.i91.sink to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i.i91.sink, align 4
  %sub.ptr.lhs.cast.i.i.i95 = ptrtoint ptr %.sink114 to i32
  %sub.ptr.rhs.cast.i.i.i96 = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i.i.i97 = sub i32 %sub.ptr.lhs.cast.i.i.i95, %sub.ptr.rhs.cast.i.i.i96
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i.i97) #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i.i.sink.split, %if.then26.if.then.i.i_crit_edge, %if.else20.if.then.i.i_crit_edge, %if.then15.if.then.i.i_crit_edge, %if.then5.if.then.i.i_crit_edge
  %err.0 = phi i32 [ -22, %if.else20.if.then.i.i_crit_edge ], [ -90, %if.then5.if.then.i.i_crit_edge ], [ -90, %if.then15.if.then.i.i_crit_edge ], [ -90, %if.then26.if.then.i.i_crit_edge ], [ -90, %if.then.i.i.sink.split ]
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %53 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i101 = icmp ugt ptr %54, %3
  br i1 %cmp.i.i101, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !131

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.6, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %55 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i102 = ptrtoint ptr %3 to i32
  %sub.ptr.rhs.cast.i.i103 = ptrtoint ptr %56 to i32
  %sub.ptr.sub.i.i104 = sub i32 %sub.ptr.lhs.cast.i.i102, %sub.ptr.rhs.cast.i.i103
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i104) #9
  br label %cleanup

if.end34:                                         ; preds = %lor.lhs.false.i86.if.end34_crit_edge, %if.end10.i.if.end34_crit_edge, %if.end.i.if.end34_crit_edge, %cleanup.i.if.end34_crit_edge, %while.cond.preheader.i.if.end34_crit_edge
  %.sink115 = phi ptr [ %9, %while.cond.preheader.i.if.end34_crit_edge ], [ %23, %if.end.i.if.end34_crit_edge ], [ %30, %if.end10.i.if.end34_crit_edge ], [ %30, %lor.lhs.false.i86.if.end34_crit_edge ], [ %9, %cleanup.i.if.end34_crit_edge ]
  %57 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i.i87 = ptrtoint ptr %58 to i32
  %sub.ptr.rhs.cast.i.i88 = ptrtoint ptr %.sink115 to i32
  %sub.ptr.sub.i.i89 = sub i32 %sub.ptr.lhs.cast.i.i87, %sub.ptr.rhs.cast.i.i88
  %conv.i.i90 = trunc i32 %sub.ptr.sub.i.i89 to i16
  %59 = ptrtoint ptr %.sink115 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %conv.i.i90, ptr %.sink115, align 2
  %60 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %60 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %3 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i106 = trunc i32 %sub.ptr.sub.i to i16
  %61 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %61)
  store i16 %conv.i106, ptr %3, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %nla_nest_cancel.exit, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %nla_nest_cancel.exit ], [ 0, %if.end34 ], [ 0, %entry.cleanup_crit_edge ], [ -90, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tunnel_key_release_params(ptr noundef %p) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %p, null
  br i1 %tobool.not, label %entry.do.end8_crit_edge, label %if.end

entry.do.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end8

if.end:                                           ; preds = %entry
  %tcft_action = getelementptr inbounds %struct.tcf_tunnel_key_params, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %tcft_action to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %tcft_action, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then1, label %if.end.do.end_crit_edge

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %tcft_enc_metadata = getelementptr inbounds %struct.tcf_tunnel_key_params, ptr %p, i32 0, i32 2
  %2 = ptrtoint ptr %tcft_enc_metadata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tcft_enc_metadata, align 4
  tail call void @dst_release(ptr noundef %3) #9
  br label %do.end

do.end:                                           ; preds = %if.then1, %if.end.do.end_crit_edge
  tail call void @kvfree_call_rcu(ptr noundef nonnull %p, ptr noundef null) #9
  br label %do.end8

do.end8:                                          ; preds = %do.end, %entry.do.end8_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !121) #9
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !144
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 696, ptr noundef nonnull @.str.9) #9
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 45, ptr noundef nonnull @.str.1) #9
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 724, ptr noundef nonnull @.str.10) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !145
  %8 = tail call i32 @llvm.read_register.i32(metadata !121) #9
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

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
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
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
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
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_check_alloc(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__ip_tun_set_dst(i32 noundef %saddr, i32 noundef %daddr, i8 noundef zeroext %tos, i8 noundef zeroext %ttl, i16 noundef zeroext %tp_dst, i16 noundef zeroext %flags, i64 noundef %tunnel_id, i32 noundef %md_size) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %conv.i = trunc i32 %md_size to i8
  %call.i = tail call ptr @metadata_dst_alloc(i8 noundef zeroext %conv.i, i32 noundef 0, i32 noundef 2592) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %options_len.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i, i32 0, i32 2, i32 0, i32 2
  %0 = ptrtoint ptr %options_len.i to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %options_len.i, align 8
  %mode.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i, i32 0, i32 2, i32 0, i32 3
  %1 = ptrtoint ptr %mode.i to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 0, ptr %mode.i, align 1
  %u = getelementptr inbounds %struct.metadata_dst, ptr %call.i, i32 0, i32 2
  %2 = ptrtoint ptr %u to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 %tunnel_id, ptr %u, align 8
  %u.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %3 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %saddr, ptr %u.i, align 8
  %dst.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %4 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %daddr, ptr %dst.i, align 4
  %add.ptr.i = getelementptr %struct.metadata_dst, ptr %call.i, i32 0, i32 2, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %5 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 24)
  %tos3.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i, i32 0, i32 2, i32 0, i32 0, i32 3
  %6 = ptrtoint ptr %tos3.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %tos, ptr %tos3.i, align 2
  %ttl4.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %7 = ptrtoint ptr %ttl4.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %ttl, ptr %ttl4.i, align 1
  %label5.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i, i32 0, i32 2, i32 0, i32 0, i32 5
  %8 = ptrtoint ptr %label5.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %label5.i, align 4
  %tun_flags6.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i, i32 0, i32 2, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %tun_flags6.i to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %flags, ptr %tun_flags6.i, align 8
  %tp_src7.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i, i32 0, i32 2, i32 0, i32 0, i32 6
  %10 = ptrtoint ptr %tp_src7.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 0, ptr %tp_src7.i, align 8
  %tp_dst8.i = getelementptr inbounds %struct.metadata_dst, ptr %call.i, i32 0, i32 2, i32 0, i32 0, i32 7
  %11 = ptrtoint ptr %tp_dst8.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %tp_dst, ptr %tp_dst8.i, align 2
  %add.ptr9.i = getelementptr i8, ptr %u, i32 52
  %12 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 0, ptr %add.ptr9.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dst_cache_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tunnel_key_opts_set(ptr noundef %nla, ptr noundef %info, i32 noundef %opts_len, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %conv = trunc i32 %opts_len to i8
  %options_len = getelementptr inbounds %struct.ip_tunnel_info, ptr %info, i32 0, i32 2
  %0 = ptrtoint ptr %options_len to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 %conv, ptr %options_len, align 8
  %nla_type.i = getelementptr i8, ptr %nla, i32 6
  %1 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %1)
  %2 = load i16, ptr %nla_type.i, align 2
  %3 = and i16 %2, 16383
  %and.i = zext i16 %3 to i32
  %4 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %and.i, label %do.body [
    i32 1, label %sw.bb
    i32 2, label %sw.bb6
    i32 3, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tun_flags = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 2
  %5 = ptrtoint ptr %tun_flags to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %tun_flags, align 8
  %7 = or i16 %6, 2048
  store i16 %7, ptr %tun_flags, align 8
  %add.ptr.i38 = getelementptr %struct.ip_tunnel_info, ptr %info, i32 1
  %call5 = tail call fastcc i32 @tunnel_key_copy_opts(ptr noundef %nla, ptr noundef %add.ptr.i38, i32 noundef %opts_len, ptr noundef %extack)
  br label %return

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tun_flags8 = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %tun_flags8 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tun_flags8, align 8
  %10 = or i16 %9, 4096
  store i16 %10, ptr %tun_flags8, align 8
  %add.ptr.i39 = getelementptr %struct.ip_tunnel_info, ptr %info, i32 1
  %call13 = tail call fastcc i32 @tunnel_key_copy_opts(ptr noundef %nla, ptr noundef %add.ptr.i39, i32 noundef %opts_len, ptr noundef %extack)
  br label %return

sw.bb14:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tun_flags16 = getelementptr inbounds %struct.ip_tunnel_key, ptr %info, i32 0, i32 2
  %11 = ptrtoint ptr %tun_flags16 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %tun_flags16, align 8
  %13 = or i16 %12, 16384
  store i16 %13, ptr %tun_flags16, align 8
  %add.ptr.i40 = getelementptr %struct.ip_tunnel_info, ptr %info, i32 1
  %call21 = tail call fastcc i32 @tunnel_key_copy_opts(ptr noundef %nla, ptr noundef %add.ptr.i40, i32 noundef %opts_len, ptr noundef %extack)
  br label %return

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_opts_set.__msg) #9
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.return_crit_edge, label %if.then

do.body.return_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @tunnel_key_opts_set.__msg, ptr %extack, align 4
  br label %return

return:                                           ; preds = %if.then, %do.body.return_crit_edge, %sw.bb14, %sw.bb6, %sw.bb
  %retval.0 = phi i32 [ %call21, %sw.bb14 ], [ %call13, %sw.bb6 ], [ %call5, %sw.bb ], [ -22, %if.then ], [ -22, %do.body.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_create_from_flags(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_check_ctrlact(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcf_action_set_ctrlact(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_chain_put_by_act(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_release(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_idr_cleanup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tunnel_key_copy_opts(ptr noundef %nla, ptr noundef %dst, i32 noundef %dst_len, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %tb.i157 = alloca [5 x ptr], align 4
  %tb.i146 = alloca [2 x ptr], align 4
  %tb.i = alloca [4 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %nla, align 2
  %conv.i = zext i16 %1 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %add.ptr.i = getelementptr i8, ptr %nla, i32 4
  %call.i = tail call i32 @__nla_validate(ptr noundef %add.ptr.i, i32 noundef %sub.i, i32 noundef 3, ptr noundef nonnull @enc_opts_policy, i32 noundef 0, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %1)
  %cmp.i255 = icmp ugt i16 %1, 7
  br i1 %cmp.i255, label %land.lhs.true.i.lr.ph, label %for.cond.preheader.do.body67_crit_edge

for.cond.preheader.do.body67_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

land.lhs.true.i.lr.ph:                            ; preds = %for.cond.preheader
  %2 = getelementptr inbounds [5 x ptr], ptr %tb.i157, i32 0, i32 1
  %3 = getelementptr inbounds [5 x ptr], ptr %tb.i157, i32 0, i32 2
  %4 = getelementptr inbounds [5 x ptr], ptr %tb.i157, i32 0, i32 3
  %5 = getelementptr inbounds [5 x ptr], ptr %tb.i157, i32 0, i32 4
  %6 = getelementptr inbounds [2 x ptr], ptr %tb.i146, i32 0, i32 1
  %7 = getelementptr inbounds [4 x ptr], ptr %tb.i, i32 0, i32 1
  %8 = getelementptr inbounds [4 x ptr], ptr %tb.i, i32 0, i32 2
  %9 = getelementptr inbounds [4 x ptr], ptr %tb.i, i32 0, i32 3
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %for.inc.land.lhs.true.i_crit_edge, %land.lhs.true.i.lr.ph
  %attr.0264 = phi ptr [ %add.ptr.i, %land.lhs.true.i.lr.ph ], [ %add.ptr.i185, %for.inc.land.lhs.true.i_crit_edge ]
  %type.0263 = phi i32 [ 0, %land.lhs.true.i.lr.ph ], [ %type.1, %for.inc.land.lhs.true.i_crit_edge ]
  %opts_len.0262 = phi i32 [ 0, %land.lhs.true.i.lr.ph ], [ %opts_len.1, %for.inc.land.lhs.true.i_crit_edge ]
  %dst_len.addr.0261 = phi i32 [ %dst_len, %land.lhs.true.i.lr.ph ], [ %dst_len.addr.2, %for.inc.land.lhs.true.i_crit_edge ]
  %dst.addr.0257 = phi ptr [ %dst, %land.lhs.true.i.lr.ph ], [ %dst.addr.2, %for.inc.land.lhs.true.i_crit_edge ]
  %rem.0256 = phi i32 [ %sub.i, %land.lhs.true.i.lr.ph ], [ %sub1.i, %for.inc.land.lhs.true.i_crit_edge ]
  %10 = ptrtoint ptr %attr.0264 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %attr.0264, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %11)
  %cmp1.i = icmp ult i16 %11, 4
  %conv.i143 = zext i16 %11 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.0256, i32 %conv.i143)
  %cmp5.i.not = icmp ult i32 %rem.0256, %conv.i143
  %or.cond = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond, label %land.lhs.true.i.for.end_crit_edge, label %for.body

land.lhs.true.i.for.end_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body:                                         ; preds = %land.lhs.true.i
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %attr.0264, i32 0, i32 1
  %12 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %nla_type.i, align 2
  %14 = and i16 %13, 16383
  %and.i = zext i16 %14 to i32
  %15 = zext i32 %and.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %and.i, label %for.body.for.inc_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb30
    i32 3, label %sw.bb47
  ]

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

sw.bb:                                            ; preds = %for.body
  %16 = zext i32 %type.0263 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %type.0263, label %do.body [
    i32 0, label %sw.bb.if.end11_crit_edge
    i32 2048, label %sw.bb.if.end11_crit_edge402
  ]

sw.bb.if.end11_crit_edge402:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

sw.bb.if.end11_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.body:                                          ; preds = %sw.bb
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_copy_opts.__msg) #9
  %tobool8.not = icmp eq ptr %extack, null
  br i1 %tobool8.not, label %do.body.cleanup_crit_edge, label %if.then9

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @tunnel_key_copy_opts.__msg, ptr %extack, align 4
  br label %cleanup

if.end11:                                         ; preds = %sw.bb.if.end11_crit_edge, %sw.bb.if.end11_crit_edge402
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tb.i) #9
  %add.ptr.i.i.i = getelementptr i8, ptr %attr.0264, i32 4
  %18 = call ptr @memset(ptr %tb.i, i32 255, i32 16)
  %19 = ptrtoint ptr %attr.0264 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %attr.0264, align 2
  %conv.i.i.i = zext i16 %20 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i, i32 noundef 3, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef nonnull @geneve_opt_policy, i32 noundef 0, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i144 = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i144, label %if.end11.tunnel_key_copy_geneve_opt.exit.thread_crit_edge, label %if.end.i

if.end11.tunnel_key_copy_geneve_opt.exit.thread_crit_edge: ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %tunnel_key_copy_geneve_opt.exit.thread

if.end.i:                                         ; preds = %if.end11
  %21 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %7, align 4
  %tobool.not.i = icmp eq ptr %22, null
  br i1 %tobool.not.i, label %if.end.i.do.body.i_crit_edge, label %lor.lhs.false.i

if.end.i.do.body.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

lor.lhs.false.i:                                  ; preds = %if.end.i
  %23 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %8, align 4
  %tobool2.not.i = icmp eq ptr %24, null
  br i1 %tobool2.not.i, label %lor.lhs.false.i.do.body.i_crit_edge, label %lor.lhs.false3.i

lor.lhs.false.i.do.body.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %25 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %9, align 4
  %tobool5.not.i = icmp eq ptr %26, null
  br i1 %tobool5.not.i, label %lor.lhs.false3.i.do.body.i_crit_edge, label %if.end10.i

lor.lhs.false3.i.do.body.i_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i

do.body.i:                                        ; preds = %lor.lhs.false3.i.do.body.i_crit_edge, %lor.lhs.false.i.do.body.i_crit_edge, %if.end.i.do.body.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_copy_geneve_opt.__msg) #9
  %tobool7.not.i = icmp eq ptr %extack, null
  br i1 %tobool7.not.i, label %do.body.i.tunnel_key_copy_geneve_opt.exit.thread_crit_edge, label %do.body.i.tunnel_key_copy_geneve_opt.exit.thread.sink.split_crit_edge

do.body.i.tunnel_key_copy_geneve_opt.exit.thread.sink.split_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tunnel_key_copy_geneve_opt.exit.thread.sink.split

do.body.i.tunnel_key_copy_geneve_opt.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tunnel_key_copy_geneve_opt.exit.thread

if.end10.i:                                       ; preds = %lor.lhs.false3.i
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 4
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %26, align 2
  %conv.i.i = zext i16 %28 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %28)
  %cmp15.i = icmp ult i16 %28, 8
  br i1 %cmp15.i, label %do.body17.i, label %if.end25.i

do.body17.i:                                      ; preds = %if.end10.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_copy_geneve_opt.__msg.25) #9
  %tobool19.not.i = icmp eq ptr %extack, null
  br i1 %tobool19.not.i, label %do.body17.i.tunnel_key_copy_geneve_opt.exit.thread_crit_edge, label %do.body17.i.tunnel_key_copy_geneve_opt.exit.thread.sink.split_crit_edge

do.body17.i.tunnel_key_copy_geneve_opt.exit.thread.sink.split_crit_edge: ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tunnel_key_copy_geneve_opt.exit.thread.sink.split

do.body17.i.tunnel_key_copy_geneve_opt.exit.thread_crit_edge: ; preds = %do.body17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tunnel_key_copy_geneve_opt.exit.thread

if.end25.i:                                       ; preds = %if.end10.i
  %29 = and i32 %conv.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool26.not.i = icmp eq i32 %29, 0
  br i1 %tobool26.not.i, label %if.end36.i, label %do.body28.i

do.body28.i:                                      ; preds = %if.end25.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_copy_geneve_opt.__msg.26) #9
  %tobool30.not.i = icmp eq ptr %extack, null
  br i1 %tobool30.not.i, label %do.body28.i.tunnel_key_copy_geneve_opt.exit.thread_crit_edge, label %do.body28.i.tunnel_key_copy_geneve_opt.exit.thread.sink.split_crit_edge

do.body28.i.tunnel_key_copy_geneve_opt.exit.thread.sink.split_crit_edge: ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tunnel_key_copy_geneve_opt.exit.thread.sink.split

do.body28.i.tunnel_key_copy_geneve_opt.exit.thread_crit_edge: ; preds = %do.body28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tunnel_key_copy_geneve_opt.exit.thread

if.end36.i:                                       ; preds = %if.end25.i
  %tobool37.not.i = icmp eq ptr %dst.addr.0257, null
  br i1 %tobool37.not.i, label %if.end36.i.if.end15_crit_edge, label %if.then38.i

if.end36.i.if.end15_crit_edge:                    ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

if.then38.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_cmp4(i32 %dst_len.addr.0261, i32 %conv.i.i)
  %cmp39.i = icmp slt i32 %dst_len.addr.0261, %conv.i.i
  br i1 %cmp39.i, label %do.end51.i, label %if.then38.i.if.end57.i_crit_edge, !prof !131

if.then38.i.if.end57.i_crit_edge:                 ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

do.end51.i:                                       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 122, i32 noundef 9, ptr noundef null) #9
  br label %if.end57.i

if.end57.i:                                       ; preds = %do.end51.i, %if.then38.i.if.end57.i_crit_edge
  %30 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %7, align 4
  %add.ptr.i.i102.i = getelementptr i8, ptr %31, i32 4
  %32 = ptrtoint ptr %add.ptr.i.i102.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i.i102.i, align 2
  %34 = ptrtoint ptr %dst.addr.0257 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %dst.addr.0257, align 2
  %35 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %8, align 4
  %add.ptr.i.i103.i = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i103.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %add.ptr.i.i103.i, align 1
  %type.i = getelementptr inbounds %struct.geneve_opt, ptr %dst.addr.0257, i32 0, i32 1
  %39 = ptrtoint ptr %type.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %type.i, align 2
  %40 = trunc i32 %sub.i.i to i8
  %41 = lshr i8 %40, 2
  %length.i = getelementptr inbounds %struct.geneve_opt, ptr %dst.addr.0257, i32 0, i32 2
  %bf.value.i = and i8 %41, 31
  %42 = ptrtoint ptr %length.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %bf.value.i, ptr %length.i, align 1
  %add.ptr.i145 = getelementptr %struct.geneve_opt, ptr %dst.addr.0257, i32 1
  %43 = call ptr @memcpy(ptr %add.ptr.i145, ptr %add.ptr.i.i, i32 %sub.i.i)
  br label %if.end15

tunnel_key_copy_geneve_opt.exit.thread.sink.split: ; preds = %do.body28.i.tunnel_key_copy_geneve_opt.exit.thread.sink.split_crit_edge, %do.body17.i.tunnel_key_copy_geneve_opt.exit.thread.sink.split_crit_edge, %do.body.i.tunnel_key_copy_geneve_opt.exit.thread.sink.split_crit_edge
  %tunnel_key_copy_geneve_opt.__msg.sink = phi ptr [ @tunnel_key_copy_geneve_opt.__msg, %do.body.i.tunnel_key_copy_geneve_opt.exit.thread.sink.split_crit_edge ], [ @tunnel_key_copy_geneve_opt.__msg.25, %do.body17.i.tunnel_key_copy_geneve_opt.exit.thread.sink.split_crit_edge ], [ @tunnel_key_copy_geneve_opt.__msg.26, %do.body28.i.tunnel_key_copy_geneve_opt.exit.thread.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ -22, %do.body.i.tunnel_key_copy_geneve_opt.exit.thread.sink.split_crit_edge ], [ -34, %do.body17.i.tunnel_key_copy_geneve_opt.exit.thread.sink.split_crit_edge ], [ -34, %do.body28.i.tunnel_key_copy_geneve_opt.exit.thread.sink.split_crit_edge ]
  %44 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %tunnel_key_copy_geneve_opt.__msg.sink, ptr %extack, align 4
  br label %tunnel_key_copy_geneve_opt.exit.thread

tunnel_key_copy_geneve_opt.exit.thread:           ; preds = %tunnel_key_copy_geneve_opt.exit.thread.sink.split, %do.body28.i.tunnel_key_copy_geneve_opt.exit.thread_crit_edge, %do.body17.i.tunnel_key_copy_geneve_opt.exit.thread_crit_edge, %do.body.i.tunnel_key_copy_geneve_opt.exit.thread_crit_edge, %if.end11.tunnel_key_copy_geneve_opt.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -34, %do.body28.i.tunnel_key_copy_geneve_opt.exit.thread_crit_edge ], [ -34, %do.body17.i.tunnel_key_copy_geneve_opt.exit.thread_crit_edge ], [ -22, %do.body.i.tunnel_key_copy_geneve_opt.exit.thread_crit_edge ], [ %retval.0.i.ph.ph, %tunnel_key_copy_geneve_opt.exit.thread.sink.split ], [ %call2.i.i, %if.end11.tunnel_key_copy_geneve_opt.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb.i) #9
  br label %cleanup

if.end15:                                         ; preds = %if.end57.i, %if.end36.i.if.end15_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tb.i) #9
  %add = add i32 %opts_len.0262, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 255, i32 %add)
  %cmp16 = icmp ugt i32 %add, 255
  br i1 %cmp16, label %do.body18, label %if.end26

do.body18:                                        ; preds = %if.end15
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_copy_opts.__msg.19) #9
  %tobool20.not = icmp eq ptr %extack, null
  br i1 %tobool20.not, label %do.body18.cleanup_crit_edge, label %if.then21

do.body18.cleanup_crit_edge:                      ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then21:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #11
  %45 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @tunnel_key_copy_opts.__msg.19, ptr %extack, align 4
  br label %cleanup

if.end26:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr = getelementptr i8, ptr %dst.addr.0257, i32 %conv.i.i
  %dst.addr.1 = select i1 %tobool37.not.i, ptr null, ptr %add.ptr
  %sub = select i1 %tobool37.not.i, i32 0, i32 %conv.i.i
  %dst_len.addr.1 = sub i32 %dst_len.addr.0261, %sub
  br label %for.inc

sw.bb30:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type.0263)
  %tobool31.not = icmp eq i32 %type.0263, 0
  br i1 %tobool31.not, label %if.end41, label %do.body33

do.body33:                                        ; preds = %sw.bb30
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_copy_opts.__msg.20) #9
  %tobool35.not = icmp eq ptr %extack, null
  br i1 %tobool35.not, label %do.body33.cleanup_crit_edge, label %if.then36

do.body33.cleanup_crit_edge:                      ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then36:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @tunnel_key_copy_opts.__msg.20, ptr %extack, align 4
  br label %cleanup

if.end41:                                         ; preds = %sw.bb30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tb.i146) #9
  %47 = ptrtoint ptr %tb.i146 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 -1 to ptr), ptr %tb.i146, align 4, !annotation !136
  %48 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 -1 to ptr), ptr %6, align 4, !annotation !136
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %tobool.not.i.i = icmp sgt i16 %13, -1
  br i1 %tobool.not.i.i, label %do.body.i.i, label %nla_parse_nested.exit.i

do.body.i.i:                                      ; preds = %if.end41
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #9
  %tobool1.not.i.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.tunnel_key_copy_vxlan_opt.exit.thread_crit_edge, label %if.then2.i.i

do.body.i.i.tunnel_key_copy_vxlan_opt.exit.thread_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tunnel_key_copy_vxlan_opt.exit.thread

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %49 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %50 = ptrtoint ptr %bad_attr.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %attr.0264, ptr %bad_attr.i.i, align 4
  %policy3.i.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %51 = ptrtoint ptr %policy3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %policy3.i.i, align 4
  br label %tunnel_key_copy_vxlan_opt.exit.thread

nla_parse_nested.exit.i:                          ; preds = %if.end41
  %add.ptr.i.i.i147 = getelementptr i8, ptr %attr.0264, i32 4
  %52 = ptrtoint ptr %attr.0264 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %attr.0264, align 2
  %conv.i.i.i148 = zext i16 %53 to i32
  %sub.i.i.i149 = add nsw i32 %conv.i.i.i148, -4
  %call6.i.i = call i32 @__nla_parse(ptr noundef nonnull %tb.i146, i32 noundef 1, ptr noundef %add.ptr.i.i.i147, i32 noundef %sub.i.i.i149, ptr noundef nonnull @vxlan_opt_policy, i32 noundef 31, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i)
  %cmp.i150 = icmp slt i32 %call6.i.i, 0
  br i1 %cmp.i150, label %nla_parse_nested.exit.i.tunnel_key_copy_vxlan_opt.exit.thread_crit_edge, label %if.end.i152

nla_parse_nested.exit.i.tunnel_key_copy_vxlan_opt.exit.thread_crit_edge: ; preds = %nla_parse_nested.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tunnel_key_copy_vxlan_opt.exit.thread

if.end.i152:                                      ; preds = %nla_parse_nested.exit.i
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %6, align 4
  %tobool.not.i151 = icmp eq ptr %55, null
  br i1 %tobool.not.i151, label %do.body.i154, label %if.end5.i

do.body.i154:                                     ; preds = %if.end.i152
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_copy_vxlan_opt.__msg) #9
  %tobool2.not.i153 = icmp eq ptr %extack, null
  br i1 %tobool2.not.i153, label %do.body.i154.tunnel_key_copy_vxlan_opt.exit.thread_crit_edge, label %if.then3.i

do.body.i154.tunnel_key_copy_vxlan_opt.exit.thread_crit_edge: ; preds = %do.body.i154
  call void @__sanitizer_cov_trace_pc() #11
  br label %tunnel_key_copy_vxlan_opt.exit.thread

if.then3.i:                                       ; preds = %do.body.i154
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @tunnel_key_copy_vxlan_opt.__msg, ptr %extack, align 4
  br label %tunnel_key_copy_vxlan_opt.exit.thread

if.end5.i:                                        ; preds = %if.end.i152
  %tobool6.not.i = icmp eq ptr %dst.addr.0257, null
  br i1 %tobool6.not.i, label %if.end5.i.if.end45_crit_edge, label %if.then7.i

if.end5.i.if.end45_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i1.i = getelementptr i8, ptr %55, i32 4
  %57 = ptrtoint ptr %add.ptr.i.i1.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %add.ptr.i.i1.i, align 4
  %and.i155 = and i32 %58, 4784127
  %59 = ptrtoint ptr %dst.addr.0257 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %and.i155, ptr %dst.addr.0257, align 4
  br label %if.end45

tunnel_key_copy_vxlan_opt.exit.thread:            ; preds = %if.then3.i, %do.body.i154.tunnel_key_copy_vxlan_opt.exit.thread_crit_edge, %nla_parse_nested.exit.i.tunnel_key_copy_vxlan_opt.exit.thread_crit_edge, %if.then2.i.i, %do.body.i.i.tunnel_key_copy_vxlan_opt.exit.thread_crit_edge
  %retval.0.i156.ph = phi i32 [ -22, %do.body.i.i.tunnel_key_copy_vxlan_opt.exit.thread_crit_edge ], [ -22, %if.then2.i.i ], [ -22, %do.body.i154.tunnel_key_copy_vxlan_opt.exit.thread_crit_edge ], [ -22, %if.then3.i ], [ %call6.i.i, %nla_parse_nested.exit.i.tunnel_key_copy_vxlan_opt.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb.i146) #9
  br label %cleanup

if.end45:                                         ; preds = %if.then7.i, %if.end5.i.if.end45_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tb.i146) #9
  %add46 = add i32 %opts_len.0262, 4
  br label %for.inc

sw.bb47:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %type.0263)
  %tobool48.not = icmp eq i32 %type.0263, 0
  br i1 %tobool48.not, label %if.end58, label %do.body50

do.body50:                                        ; preds = %sw.bb47
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_copy_opts.__msg.21) #9
  %tobool52.not = icmp eq ptr %extack, null
  br i1 %tobool52.not, label %do.body50.cleanup_crit_edge, label %if.then53

do.body50.cleanup_crit_edge:                      ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then53:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #11
  %60 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @tunnel_key_copy_opts.__msg.21, ptr %extack, align 4
  br label %cleanup

if.end58:                                         ; preds = %sw.bb47
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %tb.i157) #9
  %61 = call ptr @memset(ptr %tb.i157, i32 255, i32 20)
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %13)
  %tobool.not.i.i159 = icmp sgt i16 %13, -1
  br i1 %tobool.not.i.i159, label %do.body.i.i161, label %nla_parse_nested.exit.i170

do.body.i.i161:                                   ; preds = %if.end58
  call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #9
  %tobool1.not.i.i160 = icmp eq ptr %extack, null
  br i1 %tobool1.not.i.i160, label %do.body.i.i161.tunnel_key_copy_erspan_opt.exit.thread_crit_edge, label %if.then2.i.i164

do.body.i.i161.tunnel_key_copy_erspan_opt.exit.thread_crit_edge: ; preds = %do.body.i.i161
  call void @__sanitizer_cov_trace_pc() #11
  br label %tunnel_key_copy_erspan_opt.exit.thread

if.then2.i.i164:                                  ; preds = %do.body.i.i161
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i.i162 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %63 = ptrtoint ptr %bad_attr.i.i162 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %attr.0264, ptr %bad_attr.i.i162, align 4
  %policy3.i.i163 = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %64 = ptrtoint ptr %policy3.i.i163 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr null, ptr %policy3.i.i163, align 4
  br label %tunnel_key_copy_erspan_opt.exit.thread

nla_parse_nested.exit.i170:                       ; preds = %if.end58
  %add.ptr.i.i.i165 = getelementptr i8, ptr %attr.0264, i32 4
  %65 = ptrtoint ptr %attr.0264 to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %attr.0264, align 2
  %conv.i.i.i166 = zext i16 %66 to i32
  %sub.i.i.i167 = add nsw i32 %conv.i.i.i166, -4
  %call6.i.i168 = call i32 @__nla_parse(ptr noundef nonnull %tb.i157, i32 noundef 4, ptr noundef %add.ptr.i.i.i165, i32 noundef %sub.i.i.i167, ptr noundef nonnull @erspan_opt_policy, i32 noundef 31, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i.i168)
  %cmp.i169 = icmp slt i32 %call6.i.i168, 0
  br i1 %cmp.i169, label %nla_parse_nested.exit.i170.tunnel_key_copy_erspan_opt.exit.thread_crit_edge, label %if.end.i172

nla_parse_nested.exit.i170.tunnel_key_copy_erspan_opt.exit.thread_crit_edge: ; preds = %nla_parse_nested.exit.i170
  call void @__sanitizer_cov_trace_pc() #11
  br label %tunnel_key_copy_erspan_opt.exit.thread

if.end.i172:                                      ; preds = %nla_parse_nested.exit.i170
  %67 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %2, align 4
  %tobool.not.i171 = icmp eq ptr %68, null
  br i1 %tobool.not.i171, label %do.body.i174, label %if.end5.i178

do.body.i174:                                     ; preds = %if.end.i172
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_copy_erspan_opt.__msg) #9
  %tobool2.not.i173 = icmp eq ptr %extack, null
  br i1 %tobool2.not.i173, label %do.body.i174.tunnel_key_copy_erspan_opt.exit.thread_crit_edge, label %if.then3.i175

do.body.i174.tunnel_key_copy_erspan_opt.exit.thread_crit_edge: ; preds = %do.body.i174
  call void @__sanitizer_cov_trace_pc() #11
  br label %tunnel_key_copy_erspan_opt.exit.thread

if.then3.i175:                                    ; preds = %do.body.i174
  call void @__sanitizer_cov_trace_pc() #11
  %69 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @tunnel_key_copy_erspan_opt.__msg, ptr %extack, align 4
  br label %tunnel_key_copy_erspan_opt.exit.thread

if.end5.i178:                                     ; preds = %if.end.i172
  %add.ptr.i.i1.i176 = getelementptr i8, ptr %68, i32 4
  %70 = ptrtoint ptr %add.ptr.i.i1.i176 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %add.ptr.i.i1.i176, align 1
  %conv.i177 = zext i8 %71 to i32
  %72 = zext i8 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.37)
  switch i8 %71, label %do.body42.i [
    i8 1, label %if.then10.i
    i8 2, label %if.then26.i
  ]

if.then10.i:                                      ; preds = %if.end5.i178
  %73 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %3, align 4
  %tobool12.not.i = icmp eq ptr %74, null
  br i1 %tobool12.not.i, label %do.body14.i, label %if.end51.i

do.body14.i:                                      ; preds = %if.then10.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_copy_erspan_opt.__msg.27) #9
  %tobool16.not.i = icmp eq ptr %extack, null
  br i1 %tobool16.not.i, label %do.body14.i.tunnel_key_copy_erspan_opt.exit.thread_crit_edge, label %if.then17.i

do.body14.i.tunnel_key_copy_erspan_opt.exit.thread_crit_edge: ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tunnel_key_copy_erspan_opt.exit.thread

if.then17.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #11
  %75 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @tunnel_key_copy_erspan_opt.__msg.27, ptr %extack, align 4
  br label %tunnel_key_copy_erspan_opt.exit.thread

if.then26.i:                                      ; preds = %if.end5.i178
  %76 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %4, align 4
  %tobool28.not.i = icmp eq ptr %77, null
  br i1 %tobool28.not.i, label %if.then26.i.do.body32.i_crit_edge, label %lor.lhs.false.i180

if.then26.i.do.body32.i_crit_edge:                ; preds = %if.then26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32.i

lor.lhs.false.i180:                               ; preds = %if.then26.i
  %78 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %5, align 4
  %tobool30.not.i179 = icmp eq ptr %79, null
  br i1 %tobool30.not.i179, label %lor.lhs.false.i180.do.body32.i_crit_edge, label %if.end51.thread.i

lor.lhs.false.i180.do.body32.i_crit_edge:         ; preds = %lor.lhs.false.i180
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body32.i

do.body32.i:                                      ; preds = %lor.lhs.false.i180.do.body32.i_crit_edge, %if.then26.i.do.body32.i_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_copy_erspan_opt.__msg.28) #9
  %tobool34.not.i = icmp eq ptr %extack, null
  br i1 %tobool34.not.i, label %do.body32.i.tunnel_key_copy_erspan_opt.exit.thread_crit_edge, label %if.then35.i

do.body32.i.tunnel_key_copy_erspan_opt.exit.thread_crit_edge: ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tunnel_key_copy_erspan_opt.exit.thread

if.then35.i:                                      ; preds = %do.body32.i
  call void @__sanitizer_cov_trace_pc() #11
  %80 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @tunnel_key_copy_erspan_opt.__msg.28, ptr %extack, align 4
  br label %tunnel_key_copy_erspan_opt.exit.thread

do.body42.i:                                      ; preds = %if.end5.i178
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_copy_erspan_opt.__msg.29) #9
  %tobool44.not.i = icmp eq ptr %extack, null
  br i1 %tobool44.not.i, label %do.body42.i.tunnel_key_copy_erspan_opt.exit.thread_crit_edge, label %if.then45.i

do.body42.i.tunnel_key_copy_erspan_opt.exit.thread_crit_edge: ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tunnel_key_copy_erspan_opt.exit.thread

if.then45.i:                                      ; preds = %do.body42.i
  call void @__sanitizer_cov_trace_pc() #11
  %81 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @tunnel_key_copy_erspan_opt.__msg.29, ptr %extack, align 4
  br label %tunnel_key_copy_erspan_opt.exit.thread

if.end51.i:                                       ; preds = %if.then10.i
  %tobool52.not.i = icmp eq ptr %dst.addr.0257, null
  br i1 %tobool52.not.i, label %if.end51.i.if.end62_crit_edge, label %if.then58.i

if.end51.i.if.end62_crit_edge:                    ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.end51.thread.i:                                ; preds = %lor.lhs.false.i180
  %tobool52.not7.i = icmp eq ptr %dst.addr.0257, null
  br i1 %tobool52.not7.i, label %if.end51.thread.i.if.end62_crit_edge, label %if.else61.i

if.end51.thread.i.if.end62_crit_edge:             ; preds = %if.end51.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

if.then58.i:                                      ; preds = %if.end51.i
  call void @__sanitizer_cov_trace_pc() #11
  %82 = ptrtoint ptr %dst.addr.0257 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %conv.i177, ptr %dst.addr.0257, align 4
  %83 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %3, align 4
  %add.ptr.i.i2.i = getelementptr i8, ptr %84, i32 4
  %85 = ptrtoint ptr %add.ptr.i.i2.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i.i2.i, align 4
  %u.i = getelementptr inbounds %struct.erspan_metadata, ptr %dst.addr.0257, i32 0, i32 1
  %87 = ptrtoint ptr %u.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %u.i, align 4
  br label %if.end62

if.else61.i:                                      ; preds = %if.end51.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  %88 = ptrtoint ptr %dst.addr.0257 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %conv.i177, ptr %dst.addr.0257, align 4
  %89 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %4, align 4
  %add.ptr.i.i3.i = getelementptr i8, ptr %90, i32 4
  %91 = ptrtoint ptr %add.ptr.i.i3.i to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %add.ptr.i.i3.i, align 1
  %dir.i = getelementptr inbounds %struct.erspan_metadata, ptr %dst.addr.0257, i32 0, i32 1, i32 0, i32 2
  %93 = ptrtoint ptr %dir.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %bf.load.i = load i16, ptr %dir.i, align 2
  %94 = shl i8 %92, 3
  %95 = and i8 %94, 8
  %bf.shl.i = zext i8 %95 to i16
  %bf.clear.i = and i16 %bf.load.i, -9
  %bf.set.i = or i16 %bf.clear.i, %bf.shl.i
  store i16 %bf.set.i, ptr %dir.i, align 2
  %96 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %5, align 4
  %add.ptr.i.i4.i = getelementptr i8, ptr %97, i32 4
  %98 = ptrtoint ptr %add.ptr.i.i4.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %add.ptr.i.i4.i, align 1
  %100 = shl i8 %99, 4
  %bf.shl.i.i = zext i8 %100 to i16
  %bf.clear.i.i = and i16 %bf.set.i, -1009
  %bf.set.i.i = or i16 %bf.clear.i.i, %bf.shl.i.i
  %101 = lshr i8 %99, 4
  %102 = and i8 %101, 3
  %bf.value7.i.i = zext i8 %102 to i16
  %bf.shl8.i.i = shl nuw nsw i16 %bf.value7.i.i, 8
  %bf.set10.i.i = or i16 %bf.shl8.i.i, %bf.set.i.i
  store i16 %bf.set10.i.i, ptr %dir.i, align 2
  br label %if.end62

tunnel_key_copy_erspan_opt.exit.thread:           ; preds = %if.then45.i, %do.body42.i.tunnel_key_copy_erspan_opt.exit.thread_crit_edge, %if.then35.i, %do.body32.i.tunnel_key_copy_erspan_opt.exit.thread_crit_edge, %if.then17.i, %do.body14.i.tunnel_key_copy_erspan_opt.exit.thread_crit_edge, %if.then3.i175, %do.body.i174.tunnel_key_copy_erspan_opt.exit.thread_crit_edge, %nla_parse_nested.exit.i170.tunnel_key_copy_erspan_opt.exit.thread_crit_edge, %if.then2.i.i164, %do.body.i.i161.tunnel_key_copy_erspan_opt.exit.thread_crit_edge
  %retval.0.i181.ph = phi i32 [ -22, %do.body.i.i161.tunnel_key_copy_erspan_opt.exit.thread_crit_edge ], [ -22, %if.then2.i.i164 ], [ -22, %do.body42.i.tunnel_key_copy_erspan_opt.exit.thread_crit_edge ], [ -22, %if.then45.i ], [ -22, %do.body32.i.tunnel_key_copy_erspan_opt.exit.thread_crit_edge ], [ -22, %if.then35.i ], [ -22, %do.body14.i.tunnel_key_copy_erspan_opt.exit.thread_crit_edge ], [ -22, %if.then17.i ], [ -22, %do.body.i174.tunnel_key_copy_erspan_opt.exit.thread_crit_edge ], [ -22, %if.then3.i175 ], [ %call6.i.i168, %nla_parse_nested.exit.i170.tunnel_key_copy_erspan_opt.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i157) #9
  br label %cleanup

if.end62:                                         ; preds = %if.else61.i, %if.then58.i, %if.end51.thread.i.if.end62_crit_edge, %if.end51.i.if.end62_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %tb.i157) #9
  %add63 = add i32 %opts_len.0262, 12
  br label %for.inc

for.inc:                                          ; preds = %if.end62, %if.end45, %if.end26, %for.body.for.inc_crit_edge
  %dst.addr.2 = phi ptr [ %dst.addr.0257, %for.body.for.inc_crit_edge ], [ %dst.addr.0257, %if.end62 ], [ %dst.addr.0257, %if.end45 ], [ %dst.addr.1, %if.end26 ]
  %dst_len.addr.2 = phi i32 [ %dst_len.addr.0261, %for.body.for.inc_crit_edge ], [ %dst_len.addr.0261, %if.end62 ], [ %dst_len.addr.0261, %if.end45 ], [ %dst_len.addr.1, %if.end26 ]
  %opts_len.1 = phi i32 [ %opts_len.0262, %for.body.for.inc_crit_edge ], [ %add63, %if.end62 ], [ %add46, %if.end45 ], [ %add, %if.end26 ]
  %type.1 = phi i32 [ %type.0263, %for.body.for.inc_crit_edge ], [ 16384, %if.end62 ], [ 4096, %if.end45 ], [ 2048, %if.end26 ]
  %103 = ptrtoint ptr %attr.0264 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %attr.0264, align 2
  %conv.i182 = zext i16 %104 to i32
  %sub.i183 = add nuw nsw i32 %conv.i182, 3
  %and.i184 = and i32 %sub.i183, 131068
  %sub1.i = sub nsw i32 %rem.0256, %and.i184
  %add.ptr.i185 = getelementptr i8, ptr %attr.0264, i32 %and.i184
  %cmp.i = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i, label %for.inc.land.lhs.true.i_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.land.lhs.true.i_crit_edge:                ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %land.lhs.true.i.for.end_crit_edge
  %rem.0.lcssa = phi i32 [ %rem.0256, %land.lhs.true.i.for.end_crit_edge ], [ %sub1.i, %for.inc.for.end_crit_edge ]
  %opts_len.0.lcssa = phi i32 [ %opts_len.0262, %land.lhs.true.i.for.end_crit_edge ], [ %opts_len.1, %for.inc.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %opts_len.0.lcssa)
  %tobool65.not = icmp eq i32 %opts_len.0.lcssa, 0
  br i1 %tobool65.not, label %for.end.do.body67_crit_edge, label %if.end75

for.end.do.body67_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body67

do.body67:                                        ; preds = %for.end.do.body67_crit_edge, %for.cond.preheader.do.body67_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_copy_opts.__msg.22) #9
  %tobool69.not = icmp eq ptr %extack, null
  br i1 %tobool69.not, label %do.body67.cleanup_crit_edge, label %if.then70

do.body67.cleanup_crit_edge:                      ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then70:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #11
  %105 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr @tunnel_key_copy_opts.__msg.22, ptr %extack, align 4
  br label %cleanup

if.end75:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.0.lcssa)
  %cmp76 = icmp sgt i32 %rem.0.lcssa, 0
  br i1 %cmp76, label %do.body78, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body78:                                        ; preds = %if.end75
  call void @do_trace_netlink_extack(ptr noundef nonnull @tunnel_key_copy_opts.__msg.23) #9
  %tobool80.not = icmp eq ptr %extack, null
  br i1 %tobool80.not, label %do.body78.cleanup_crit_edge, label %if.then81

do.body78.cleanup_crit_edge:                      ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then81:                                        ; preds = %do.body78
  call void @__sanitizer_cov_trace_pc() #11
  %106 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr @tunnel_key_copy_opts.__msg.23, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then81, %do.body78.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.then70, %do.body67.cleanup_crit_edge, %tunnel_key_copy_erspan_opt.exit.thread, %if.then53, %do.body50.cleanup_crit_edge, %tunnel_key_copy_vxlan_opt.exit.thread, %if.then36, %do.body33.cleanup_crit_edge, %if.then21, %do.body18.cleanup_crit_edge, %tunnel_key_copy_geneve_opt.exit.thread, %if.then9, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ -22, %if.then9 ], [ -22, %do.body.cleanup_crit_edge ], [ -22, %if.then21 ], [ -22, %do.body18.cleanup_crit_edge ], [ -22, %if.then36 ], [ -22, %do.body33.cleanup_crit_edge ], [ -22, %if.then53 ], [ -22, %do.body50.cleanup_crit_edge ], [ -22, %if.then70 ], [ -22, %do.body67.cleanup_crit_edge ], [ -22, %if.then81 ], [ -22, %do.body78.cleanup_crit_edge ], [ %opts_len.0.lcssa, %if.end75.cleanup_crit_edge ], [ %retval.0.i.ph, %tunnel_key_copy_geneve_opt.exit.thread ], [ %retval.0.i156.ph, %tunnel_key_copy_vxlan_opt.exit.thread ], [ %retval.0.i181.ph, %tunnel_key_copy_erspan_opt.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_validate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @metadata_dst_alloc(i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_generic_walker(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_tunnel_encap_put_tunnel(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %priv) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tunnel_key_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @tunnel_key_net_id, align 4
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %tc_action_net_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %ops2.i = getelementptr inbounds %struct.tc_action_net, ptr %call, i32 0, i32 1
  %3 = ptrtoint ptr %ops2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @act_tunnel_key_ops, ptr %ops2.i, align 4
  %net4.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %net4.i, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @tc_action_net_init.__key) #9
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %action_idr.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %action_idr.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #9
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
define internal void @tunnel_key_exit_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @tunnel_key_net_id, align 4
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

declare void @__asan_storeN_noabort(i32, i32)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !19, !20, !22, !23, !25, !27, !28, !30, !32, !34, !35, !37, !38, !39, !41, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !109, !111, !113, !115, !117, !118, !120}
!llvm.named.register.sp = !{!121}
!llvm.module.flags = !{!122, !123, !124, !125, !126, !127, !128, !129}
!llvm.ident = !{!130}

!0 = !{ptr @__initcall__kmod_act_tunnel_key__598_886_tunnel_key_init_module6, !1, !"__initcall__kmod_act_tunnel_key__598_886_tunnel_key_init_module6", i1 false, i1 false}
!1 = !{!"../net/sched/act_tunnel_key.c", i32 886, i32 1}
!2 = !{ptr @__exitcall_tunnel_key_cleanup_module, !3, !"__exitcall_tunnel_key_cleanup_module", i1 false, i1 false}
!3 = !{!"../net/sched/act_tunnel_key.c", i32 887, i32 1}
!4 = !{ptr @__UNIQUE_ID_author599, !5, !"__UNIQUE_ID_author599", i1 false, i1 false}
!5 = !{!"../net/sched/act_tunnel_key.c", i32 889, i32 1}
!6 = !{ptr @__UNIQUE_ID_description600, !7, !"__UNIQUE_ID_description600", i1 false, i1 false}
!7 = !{!"../net/sched/act_tunnel_key.c", i32 890, i32 1}
!8 = !{ptr @__UNIQUE_ID_file601, !9, !"__UNIQUE_ID_file601", i1 false, i1 false}
!9 = !{!"../net/sched/act_tunnel_key.c", i32 891, i32 1}
!10 = !{ptr @__UNIQUE_ID_license602, !9, !"__UNIQUE_ID_license602", i1 false, i1 false}
!11 = !{ptr @act_tunnel_key_ops, !12, !"act_tunnel_key_ops", i1 false, i1 false}
!12 = !{!"../net/sched/act_tunnel_key.c", i32 843, i32 29}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/sched/act_tunnel_key.c", i32 33, i32 11}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../net/sched/act_tunnel_key.c", i32 48, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = distinct !{null, !21, !"__already_done", i1 false, i1 false}
!21 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../include/net/dst.h", i32 231, i32 2}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/sched/act_tunnel_key.c", i32 726, i32 11}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../include/net/netlink.h", i32 991, i32 3}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/sched/act_tunnel_key.c", i32 563, i32 11}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!34 = !{ptr @.str.7, !33, !"<string literal>", i1 false, i1 false}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!37 = !{ptr @.str.8, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!39 = distinct !{null, !40, !"__warned", i1 false, i1 false}
!40 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!41 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @tunnel_key_net_id, !43, !"tunnel_key_net_id", i1 false, i1 false}
!43 = !{!"../net/sched/act_tunnel_key.c", i32 23, i32 21}
!44 = !{ptr @tunnel_key_init.__msg, !45, !"__msg", i1 false, i1 false}
!45 = !{!"../net/sched/act_tunnel_key.c", i32 380, i32 3}
!46 = !{ptr @tunnel_key_init.__msg.11, !47, !"__msg", i1 false, i1 false}
!47 = !{!"../net/sched/act_tunnel_key.c", i32 387, i32 3}
!48 = !{ptr @tunnel_key_init.__msg.12, !49, !"__msg", i1 false, i1 false}
!49 = !{!"../net/sched/act_tunnel_key.c", i32 392, i32 3}
!50 = !{ptr @tunnel_key_init.__msg.13, !51, !"__msg", i1 false, i1 false}
!51 = !{!"../net/sched/act_tunnel_key.c", i32 464, i32 4}
!52 = !{ptr @tunnel_key_init.__msg.14, !53, !"__msg", i1 false, i1 false}
!53 = !{!"../net/sched/act_tunnel_key.c", i32 470, i32 4}
!54 = !{ptr @tunnel_key_init.__msg.15, !55, !"__msg", i1 false, i1 false}
!55 = !{!"../net/sched/act_tunnel_key.c", i32 492, i32 3}
!56 = !{ptr @tunnel_key_init.__msg.16, !57, !"__msg", i1 false, i1 false}
!57 = !{!"../net/sched/act_tunnel_key.c", i32 502, i32 4}
!58 = !{ptr @tunnel_key_init.__msg.17, !59, !"__msg", i1 false, i1 false}
!59 = !{!"../net/sched/act_tunnel_key.c", i32 508, i32 3}
!60 = !{ptr @tunnel_key_init.__msg.18, !61, !"__msg", i1 false, i1 false}
!61 = !{!"../net/sched/act_tunnel_key.c", i32 523, i32 3}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../net/sched/act_tunnel_key.c", i32 533, i32 15}
!64 = !{ptr @tunnel_key_policy, !65, !"tunnel_key_policy", i1 false, i1 false}
!65 = !{!"../net/sched/act_tunnel_key.c", i32 332, i32 32}
!66 = !{ptr @tunnel_key_copy_opts.__msg, !67, !"__msg", i1 false, i1 false}
!67 = !{!"../net/sched/act_tunnel_key.c", i32 233, i32 5}
!68 = !{ptr @tunnel_key_copy_opts.__msg.19, !69, !"__msg", i1 false, i1 false}
!69 = !{!"../net/sched/act_tunnel_key.c", i32 242, i32 5}
!70 = !{ptr @tunnel_key_copy_opts.__msg.20, !71, !"__msg", i1 false, i1 false}
!71 = !{!"../net/sched/act_tunnel_key.c", i32 253, i32 5}
!72 = !{ptr @tunnel_key_copy_opts.__msg.21, !73, !"__msg", i1 false, i1 false}
!73 = !{!"../net/sched/act_tunnel_key.c", i32 265, i32 5}
!74 = !{ptr @tunnel_key_copy_opts.__msg.22, !75, !"__msg", i1 false, i1 false}
!75 = !{!"../net/sched/act_tunnel_key.c", i32 279, i32 3}
!76 = !{ptr @tunnel_key_copy_opts.__msg.23, !77, !"__msg", i1 false, i1 false}
!77 = !{!"../net/sched/act_tunnel_key.c", i32 284, i32 3}
!78 = !{ptr @enc_opts_policy, !79, !"enc_opts_policy", i1 false, i1 false}
!79 = !{!"../net/sched/act_tunnel_key.c", i32 57, i32 1}
!80 = !{ptr @tunnel_key_copy_geneve_opt.__msg, !81, !"__msg", i1 false, i1 false}
!81 = !{!"../net/sched/act_tunnel_key.c", i32 103, i32 3}
!82 = !{ptr @tunnel_key_copy_geneve_opt.__msg.25, !83, !"__msg", i1 false, i1 false}
!83 = !{!"../net/sched/act_tunnel_key.c", i32 110, i32 3}
!84 = !{ptr @tunnel_key_copy_geneve_opt.__msg.26, !85, !"__msg", i1 false, i1 false}
!85 = !{!"../net/sched/act_tunnel_key.c", i32 114, i32 3}
!86 = !{ptr @geneve_opt_policy, !87, !"geneve_opt_policy", i1 false, i1 false}
!87 = !{!"../net/sched/act_tunnel_key.c", i32 66, i32 1}
!88 = !{ptr @tunnel_key_copy_vxlan_opt.__msg, !89, !"__msg", i1 false, i1 false}
!89 = !{!"../net/sched/act_tunnel_key.c", i32 151, i32 3}
!90 = !{ptr @nla_parse_nested.__msg, !91, !"__msg", i1 false, i1 false}
!91 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!92 = !{ptr @vxlan_opt_policy, !93, !"vxlan_opt_policy", i1 false, i1 false}
!93 = !{!"../net/sched/act_tunnel_key.c", i32 74, i32 1}
!94 = !{ptr @tunnel_key_copy_erspan_opt.__msg, !95, !"__msg", i1 false, i1 false}
!95 = !{!"../net/sched/act_tunnel_key.c", i32 179, i32 3}
!96 = !{ptr @tunnel_key_copy_erspan_opt.__msg.27, !97, !"__msg", i1 false, i1 false}
!97 = !{!"../net/sched/act_tunnel_key.c", i32 186, i32 4}
!98 = !{ptr @tunnel_key_copy_erspan_opt.__msg.28, !99, !"__msg", i1 false, i1 false}
!99 = !{!"../net/sched/act_tunnel_key.c", i32 192, i32 4}
!100 = !{ptr @tunnel_key_copy_erspan_opt.__msg.29, !101, !"__msg", i1 false, i1 false}
!101 = !{!"../net/sched/act_tunnel_key.c", i32 196, i32 3}
!102 = !{ptr @erspan_opt_policy, !103, !"erspan_opt_policy", i1 false, i1 false}
!103 = !{!"../net/sched/act_tunnel_key.c", i32 79, i32 1}
!104 = !{ptr @tunnel_key_opts_set.__msg, !105, !"__msg", i1 false, i1 false}
!105 = !{!"../net/sched/act_tunnel_key.c", i32 327, i32 3}
!106 = distinct !{null, !107, !"__warned", i1 false, i1 false}
!107 = !{!"../include/net/tc_act/tc_tunnel_key.h", i32 33, i32 11}
!108 = !{ptr @.str.30, !107, !"<string literal>", i1 false, i1 false}
!109 = distinct !{null, !110, !"__warned", i1 false, i1 false}
!110 = !{!"../include/net/tc_act/tc_tunnel_key.h", i32 61, i32 11}
!111 = distinct !{null, !112, !"__warned", i1 false, i1 false}
!112 = !{!"../include/net/tc_act/tc_tunnel_key.h", i32 47, i32 11}
!113 = !{ptr @tunnel_key_net_ops, !114, !"tunnel_key_net_ops", i1 false, i1 false}
!114 = !{!"../net/sched/act_tunnel_key.c", i32 869, i32 33}
!115 = !{ptr @tc_action_net_init.__key, !116, !"__key", i1 false, i1 false}
!116 = !{!"../include/net/act_api.h", i32 156, i32 2}
!117 = !{ptr @.str.31, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @xa_init_flags.__key, !119, !"__key", i1 false, i1 false}
!119 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!120 = !{ptr @.str.32, !119, !"<string literal>", i1 false, i1 false}
!121 = !{!"sp"}
!122 = !{i32 1, !"wchar_size", i32 2}
!123 = !{i32 1, !"min_enum_size", i32 4}
!124 = !{i32 8, !"branch-target-enforcement", i32 0}
!125 = !{i32 8, !"sign-return-address", i32 0}
!126 = !{i32 8, !"sign-return-address-all", i32 0}
!127 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!128 = !{i32 7, !"uwtable", i32 1}
!129 = !{i32 7, !"frame-pointer", i32 2}
!130 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!131 = !{!"branch_weights", i32 1, i32 2000}
!132 = !{i64 2148361322}
!133 = !{i64 846942, i64 846967, i64 846989, i64 847005, i64 847017, i64 847037, i64 847061, i64 847077, i64 847089}
!134 = !{i64 2148361510}
!135 = !{!"branch_weights", i32 2000, i32 1}
!136 = !{!"auto-init"}
!137 = !{i64 2158348300}
!138 = !{i64 2149886061}
!139 = !{i64 2149890993}
!140 = !{i64 2149912705}
!141 = !{i64 2149917597}
!142 = !{i64 2149994054}
!143 = !{i64 2149994379}
!144 = !{i64 2149378062}
!145 = !{i64 2149378328}
