; ModuleID = '/llk/IR_all_yes/net/sched/act_sample.c_pt.bc'
source_filename = "../net/sched/act_sample.c"
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
%struct.psample_metadata = type { i32, i32, i32, i16, i64, i64, i8 }
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
%struct.tcf_sample = type { %struct.tc_action, i32, i8, i32, ptr, i32, %struct.list_head }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.106, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.120, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.106 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.120 = type { ptr }
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
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.tc_sample = type { i32, i32, i32, i32, i32 }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.127, ptr }
%union.anon.127 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, i64, i64, i64, i32 }
%struct.anon.131 = type { ptr, i32, i32, i8 }
%struct.flow_offload_action = type { ptr, i32, i32, i32, %struct.flow_stats, %struct.flow_action }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.38, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.63, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
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
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.tc_action_net = type { ptr, ptr }
%struct.tcf_idrinfo = type { %struct.mutex, %struct.idr, ptr }

@act_sample_ops = internal global { %struct.tc_action_ops, [48 x i8] } { %struct.tc_action_ops { %struct.list_head zeroinitializer, [16 x i8] c"sample\00\00\00\00\00\00\00\00\00\00", i32 26, i32 304, ptr null, ptr @tcf_sample_act, ptr @tcf_sample_dump, ptr @tcf_sample_cleanup, ptr @tcf_sample_search, ptr @tcf_sample_init, ptr @tcf_sample_walker, ptr @tcf_sample_stats_update, ptr null, ptr null, ptr @tcf_sample_get_group, ptr @tcf_sample_offload_act_setup }, [48 x i8] zeroinitializer }, align 32
@sample_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @sample_init_net, ptr null, ptr null, ptr @sample_exit_net, ptr @sample_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_act_sample__375_359_sample_init_module6 = internal global ptr @sample_init_module, section ".initcall6.init", align 4
@__exitcall_sample_cleanup_module = internal global ptr @sample_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_author376 = internal constant [50 x i8] c"act_sample.author=Yotam Gigi <yotam.gi@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description377 = internal constant [46 x i8] c"act_sample.description=Packet sampling action\00", section ".modinfo", align 1
@__UNIQUE_ID_file378 = internal constant [37 x i8] c"act_sample.file=net/sched/act_sample\00", section ".modinfo", align 1
@__UNIQUE_ID_license379 = internal constant [26 x i8] c"act_sample.license=GPL v2\00", section ".modinfo", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@tcf_sample_act.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/sched/act_sample.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@sample_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@sample_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 20, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.104 zeroinitializer }, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@tcf_sample_init.__msg = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid sample rate\00", [44 x i8] zeroinitializer }, align 32
@tcf_sample_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@tcf_sample_get_group.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tc_action_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tn->idrinfo->lock\00", [45 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 16, i64 768, i64 769, i64 776, i64 778, i64 823, i64 65534, i64 65535]
@__sancov_gen_cov_switch_values.11 = internal global [9 x i64] [i64 7, i64 16, i64 768, i64 769, i64 776, i64 778, i64 823, i64 65534, i64 65535]
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"act_sample_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 314, i32 29 }
@___asan_gen_.15 = private unnamed_addr constant [15 x i8] c"sample_net_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 342, i32 33 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 169, i32 18 }
@___asan_gen_.25 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.25, i32 271, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 991, i32 3 }
@___asan_gen_.30 = private unnamed_addr constant [14 x i8] c"sample_net_id\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 26, i32 21 }
@___asan_gen_.34 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 45, i32 7 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 695, i32 2 }
@___asan_gen_.43 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 723, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"sample_policy\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 29, i32 32 }
@___asan_gen_.48 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 89, i32 3 }
@___asan_gen_.52 = private constant [26 x i8] c"../net/sched/act_sample.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 106, i32 18 }
@___asan_gen_.58 = private unnamed_addr constant [25 x i8] c"../include/net/act_api.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 156, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.64 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 378, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author376, ptr @__UNIQUE_ID_description377, ptr @__UNIQUE_ID_file378, ptr @__UNIQUE_ID_license379, ptr @__exitcall_sample_cleanup_module, ptr @__initcall__kmod_act_sample__375_359_sample_init_module6, ptr @sample_cleanup_module, ptr @act_sample_ops, ptr @sample_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sample_net_id, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sample_policy, ptr @tcf_sample_init.__msg, ptr @.str.8, ptr @tc_action_net_init.__key, ptr @.str.9, ptr @xa_init_flags.__key, ptr @.str.10], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_sample_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sample_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_sample_init.__msg to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_action_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sample_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_sample_ops, ptr noundef nonnull @sample_net_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_unregister_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sample_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_register_action(ptr noundef nonnull @act_sample_ops, ptr noundef nonnull @sample_net_ops) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_sample_act(ptr noundef %skb, ptr noundef %a, ptr nocapture noundef readnone %res) #2 align 64 {
entry:
  %md = alloca %struct.psample_metadata, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %md) #9
  %0 = call ptr @memset(ptr %md, i32 0, i32 40)
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  br i1 %tobool.not.i, label %if.then7.i, label %if.end.i.tcf_lastuse_update.exit_crit_edge, !prof !63

if.end.i.tcf_lastuse_update.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_lastuse_update.exit

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %conv.i, ptr %firstuse.i, align 8
  br label %tcf_lastuse_update.exit

tcf_lastuse_update.exit:                          ; preds = %if.then7.i, %if.end.i.tcf_lastuse_update.exit_crit_edge
  %cpu_bstats = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 13
  %8 = ptrtoint ptr %cpu_bstats to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cpu_bstats, align 4
  %10 = ptrtoint ptr %9 to i32
  %11 = tail call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %14
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %add = add i32 %16, %10
  %17 = inttoptr i32 %add to ptr
  %cb.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %18 = ptrtoint ptr %cb.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cb.i.i.i, align 4
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %20 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %end.i.i.i, align 4
  %gso_size.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %gso_size.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %gso_size.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool.i.not.i = icmp eq i16 %23, 0
  br i1 %tobool.i.not.i, label %tcf_lastuse_update.exit.cond.end.i_crit_edge, label %cond.true.i

tcf_lastuse_update.exit.cond.end.i_crit_edge:     ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end.i

cond.true.i:                                      ; preds = %tcf_lastuse_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  %gso_segs.i = getelementptr inbounds %struct.skb_shared_info, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %gso_segs.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %gso_segs.i, align 2
  %conv4.i = zext i16 %25 to i32
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.true.i, %tcf_lastuse_update.exit.cond.end.i_crit_edge
  %cond.i = phi i32 [ %conv4.i, %cond.true.i ], [ 1, %tcf_lastuse_update.exit.cond.end.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %26 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool.not.i.i.i.i = icmp eq i32 %26, 0
  br i1 %tobool.not.i.i.i.i, label %cond.end.i.bstats_update.exit_crit_edge, label %land.lhs.true.i.i.i.i

cond.end.i.bstats_update.exit_crit_edge:          ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bstats_update.exit

land.lhs.true.i.i.i.i:                            ; preds = %cond.end.i
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %28, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !64
  %29 = tail call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i.i.i.i.i = and i32 %29, -16384
  %30 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %32
  %33 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %34, ptrtoint (ptr @lockdep_recursion to i32)
  %35 = inttoptr i32 %add.i.i.i.i to ptr
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %35, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !65
  %38 = tail call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i.i.i7.i.i.i.i = and i32 %38, -16384
  %39 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %41, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool20.not.i.i.i.i = icmp eq i32 %37, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge

land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bstats_update.exit

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %42 = tail call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp.i.i.i.i = icmp eq i32 %45, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.bstats_update.exit_crit_edge

land.rhs.i.i.i.i.bstats_update.exit_crit_edge:    ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bstats_update.exit

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %46 = tail call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i.i.i9.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 1
  %48 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %49, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !66
  %50 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %53, ptrtoint (ptr @hardirqs_enabled to i32)
  %54 = inttoptr i32 %add47.i.i.i.i to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile i32, ptr %54, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !67
  %57 = tail call i32 @llvm.read_register.i32(metadata !53) #9
  %and.i.i.i12.i.i.i.i = and i32 %57, -16384
  %58 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %60, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %tobool54.not.i.i.i.i = icmp eq i32 %56, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.bstats_update.exit_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.bstats_update.exit_crit_edge:  ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bstats_update.exit

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, label %if.then.i.i.i.i, !prof !68

land.rhs58.i.i.i.i.bstats_update.exit_crit_edge:  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %bstats_update.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #9
  br label %bstats_update.exit

bstats_update.exit:                               ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge, %cond.end.i.bstats_update.exit_crit_edge
  %conv.i76 = zext i32 %19 to i64
  %syncp.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %17, i32 0, i32 2
  %61 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %62, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !69
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %17, i32 0, i32 2, i32 0, i32 1
  %63 = tail call ptr @llvm.returnaddress(i32 0) #9
  %64 = ptrtoint ptr %63 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %64) #9
  %65 = ptrtoint ptr %17 to i32
  call void @__asan_load8_noabort(i32 %65)
  %66 = load i64, ptr %17, align 8
  %add.i.i.i = add i64 %66, %conv.i76
  store i64 %add.i.i.i, ptr %17, align 8
  %packets2.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %17, i32 0, i32 1
  %conv.i7.i.i = zext i32 %cond.i to i64
  %67 = ptrtoint ptr %packets2.i.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %packets2.i.i, align 8
  %add.i8.i.i = add i64 %68, %conv.i7.i.i
  store i64 %add.i8.i.i, ptr %packets2.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %64) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !70
  %69 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %70, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %71 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load volatile i32, ptr %tcfa_action, align 8
  %psample_group13 = getelementptr inbounds %struct.tcf_sample, ptr %a, i32 0, i32 4
  %73 = ptrtoint ptr %psample_group13 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %psample_group13, align 4
  %call15 = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %land.lhs.true, label %bstats_update.exit.do.end21_crit_edge

bstats_update.exit.do.end21_crit_edge:            ; preds = %bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

land.lhs.true:                                    ; preds = %bstats_update.exit
  %call16 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.do.end21_crit_edge, label %land.lhs.true18

land.lhs.true.do.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

land.lhs.true18:                                  ; preds = %land.lhs.true
  %.b75 = load i1, ptr @tcf_sample_act.__warned, align 1
  br i1 %.b75, label %land.lhs.true18.do.end21_crit_edge, label %if.then

land.lhs.true18.do.end21_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

if.then:                                          ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcf_sample_act.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 169, ptr noundef nonnull @.str.1) #9
  br label %do.end21

do.end21:                                         ; preds = %if.then, %land.lhs.true18.do.end21_crit_edge, %land.lhs.true.do.end21_crit_edge, %bstats_update.exit.do.end21_crit_edge
  %tobool23.not = icmp eq ptr %74, null
  br i1 %tobool23.not, label %do.end21.if.end52_crit_edge, label %land.lhs.true24

do.end21.if.end52_crit_edge:                      ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.lhs.true24:                                  ; preds = %do.end21
  %call25 = tail call i32 @prandom_u32() #9
  %rate = getelementptr inbounds %struct.tcf_sample, ptr %a, i32 0, i32 1
  %75 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %rate, align 16
  %rem = urem i32 %call25, %76
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp = icmp eq i32 %rem, 0
  br i1 %cmp, label %if.then26, label %land.lhs.true24.if.end52_crit_edge

land.lhs.true24.if.end52_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then26:                                        ; preds = %land.lhs.true24
  %tc_at_ingress.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %77 = ptrtoint ptr %tc_at_ingress.i to i32
  call void @__asan_loadN_noabort(i32 %77, i32 4)
  %bf.load.i = load i32, ptr %tc_at_ingress.i, align 2
  %78 = and i32 %bf.load.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %tobool.i.not = icmp eq i32 %78, 0
  br i1 %tobool.i.not, label %if.end31, label %land.lhs.true33

if.end31:                                         ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %79 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %skb_iif, align 8
  %in_ifindex = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 1
  %81 = ptrtoint ptr %in_ifindex to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %in_ifindex, align 4
  %82 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 8
  %ifindex = getelementptr inbounds %struct.net_device, ptr %84, i32 0, i32 17
  %85 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %ifindex, align 4
  %out_ifindex = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 2
  %87 = ptrtoint ptr %out_ifindex to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %out_ifindex, align 8
  br label %if.end37

land.lhs.true33:                                  ; preds = %if.then26
  %88 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 8
  %ifindex29 = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 17
  %91 = ptrtoint ptr %ifindex29 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %ifindex29, align 4
  %in_ifindex30 = getelementptr inbounds %struct.psample_metadata, ptr %md, i32 0, i32 1
  %93 = ptrtoint ptr %in_ifindex30 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %in_ifindex30, align 4
  %type.i = getelementptr inbounds %struct.net_device, ptr %90, i32 0, i32 32
  %94 = ptrtoint ptr %type.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %type.i, align 16
  %96 = zext i16 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values)
  switch i16 %95, label %if.then35 [
    i16 768, label %land.lhs.true33.if.end37_crit_edge
    i16 769, label %land.lhs.true33.if.end37_crit_edge89
    i16 776, label %land.lhs.true33.if.end37_crit_edge90
    i16 778, label %land.lhs.true33.if.end37_crit_edge91
    i16 823, label %land.lhs.true33.if.end37_crit_edge92
    i16 -1, label %land.lhs.true33.if.end37_crit_edge93
    i16 -2, label %land.lhs.true33.if.end37_crit_edge94
  ]

land.lhs.true33.if.end37_crit_edge94:             ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true33.if.end37_crit_edge93:             ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true33.if.end37_crit_edge92:             ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true33.if.end37_crit_edge91:             ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true33.if.end37_crit_edge90:             ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true33.if.end37_crit_edge89:             ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

land.lhs.true33.if.end37_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end37

if.then35:                                        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #11
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %97 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %mac_len, align 4
  %conv = zext i16 %98 to i32
  %call36 = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv) #9
  br label %if.end37

if.end37:                                         ; preds = %if.then35, %land.lhs.true33.if.end37_crit_edge, %land.lhs.true33.if.end37_crit_edge89, %land.lhs.true33.if.end37_crit_edge90, %land.lhs.true33.if.end37_crit_edge91, %land.lhs.true33.if.end37_crit_edge92, %land.lhs.true33.if.end37_crit_edge93, %land.lhs.true33.if.end37_crit_edge94, %if.end31
  %truncate = getelementptr inbounds %struct.tcf_sample, ptr %a, i32 0, i32 2
  %99 = ptrtoint ptr %truncate to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %truncate, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %100)
  %tobool38.not = icmp eq i8 %100, 0
  %trunc_size = getelementptr inbounds %struct.tcf_sample, ptr %a, i32 0, i32 3
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %cond.in = select i1 %tobool38.not, ptr %len, ptr %trunc_size
  %101 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %101)
  %cond = load i32, ptr %cond.in, align 4
  %102 = ptrtoint ptr %md to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %cond, ptr %md, align 8
  %103 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %rate, align 16
  call void @psample_sample_packet(ptr noundef nonnull %74, ptr noundef %skb, i32 noundef %104, ptr noundef nonnull %md) #9
  %105 = ptrtoint ptr %tc_at_ingress.i to i32
  call void @__asan_loadN_noabort(i32 %105, i32 4)
  %bf.load.i81 = load i32, ptr %tc_at_ingress.i, align 2
  %106 = and i32 %bf.load.i81, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool.i82.not = icmp eq i32 %106, 0
  br i1 %tobool.i82.not, label %if.end37.if.end52_crit_edge, label %land.lhs.true44

if.end37.if.end52_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.lhs.true44:                                  ; preds = %if.end37
  %107 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %108 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %107, align 8
  %type.i83 = getelementptr inbounds %struct.net_device, ptr %109, i32 0, i32 32
  %110 = ptrtoint ptr %type.i83 to i32
  call void @__asan_load2_noabort(i32 %110)
  %111 = load i16, ptr %type.i83, align 16
  %112 = zext i16 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %112, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %111, label %if.then47 [
    i16 768, label %land.lhs.true44.if.end52_crit_edge
    i16 769, label %land.lhs.true44.if.end52_crit_edge95
    i16 776, label %land.lhs.true44.if.end52_crit_edge96
    i16 778, label %land.lhs.true44.if.end52_crit_edge97
    i16 823, label %land.lhs.true44.if.end52_crit_edge98
    i16 -1, label %land.lhs.true44.if.end52_crit_edge99
    i16 -2, label %land.lhs.true44.if.end52_crit_edge100
  ]

land.lhs.true44.if.end52_crit_edge100:            ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.lhs.true44.if.end52_crit_edge99:             ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.lhs.true44.if.end52_crit_edge98:             ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.lhs.true44.if.end52_crit_edge97:             ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.lhs.true44.if.end52_crit_edge96:             ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.lhs.true44.if.end52_crit_edge95:             ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

land.lhs.true44.if.end52_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end52

if.then47:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #11
  %mac_len48 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %113 = ptrtoint ptr %mac_len48 to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %mac_len48, align 4
  %conv49 = zext i16 %114 to i32
  %call50 = call ptr @skb_pull(ptr noundef %skb, i32 noundef %conv49) #9
  br label %if.end52

if.end52:                                         ; preds = %if.then47, %land.lhs.true44.if.end52_crit_edge, %land.lhs.true44.if.end52_crit_edge95, %land.lhs.true44.if.end52_crit_edge96, %land.lhs.true44.if.end52_crit_edge97, %land.lhs.true44.if.end52_crit_edge98, %land.lhs.true44.if.end52_crit_edge99, %land.lhs.true44.if.end52_crit_edge100, %if.end37.if.end52_crit_edge, %land.lhs.true24.if.end52_crit_edge, %do.end21.if.end52_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %md) #9
  ret i32 %72
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_sample_dump(ptr noundef %skb, ptr noundef %a, i32 noundef %bind, i32 noundef %ref) #2 align 64 {
entry:
  %tmp.i58 = alloca i32, align 4
  %tmp.i56 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %opt = alloca %struct.tc_sample, align 4
  %t = alloca %struct.tcf_t, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %opt) #9
  %2 = getelementptr inbounds %struct.tc_sample, ptr %opt, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tc_sample, ptr %opt, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tc_sample, ptr %opt, i32 0, i32 3
  %5 = getelementptr inbounds %struct.tc_sample, ptr %opt, i32 0, i32 4
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
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_refcnt, i32 noundef 4) #9
  %10 = ptrtoint ptr %tcfa_refcnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %tcfa_refcnt, align 4
  %sub = sub i32 %11, %ref
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %sub, ptr %4, align 4
  %tcfa_bindcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_bindcnt, i32 noundef 4) #9
  %13 = ptrtoint ptr %tcfa_bindcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %tcfa_bindcnt, align 4
  %sub5 = sub i32 %14, %bind
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub5, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #9
  %16 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 2
  %17 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 3
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  %18 = call ptr @memset(ptr %t, i32 255, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #9
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %19 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tcfa_action, align 8
  %21 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %3, align 4
  %call9 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 20, ptr noundef nonnull %opt) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %22 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 1
  %tcfa_tm = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %24 = ptrtoint ptr %tcfa_tm to i32
  call void @__asan_load8_noabort(i32 %24)
  %25 = load i64, ptr %tcfa_tm, align 8
  %26 = trunc i64 %25 to i32
  %conv1.i = sub i32 %23, %26
  %call.i = call i32 @jiffies_to_clock_t(i32 noundef %conv1.i) #9
  %conv2.i = sext i32 %call.i to i64
  %27 = ptrtoint ptr %t to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %conv2.i, ptr %t, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %28 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %29 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %lastuse.i, align 8
  %31 = trunc i64 %30 to i32
  %conv6.i = sub i32 %28, %31
  %call7.i = call i32 @jiffies_to_clock_t(i32 noundef %conv6.i) #9
  %conv8.i = sext i32 %call7.i to i64
  %32 = ptrtoint ptr %22 to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %conv8.i, ptr %22, align 8
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %33 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %34)
  %tobool.not.i = icmp eq i64 %34, 0
  br i1 %tobool.not.i, label %if.end.tcf_tm_dump.exit_crit_edge, label %cond.true.i

if.end.tcf_tm_dump.exit_crit_edge:                ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_tm_dump.exit

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %36 = trunc i64 %34 to i32
  %conv13.i = sub i32 %35, %36
  %call14.i = call i32 @jiffies_to_clock_t(i32 noundef %conv13.i) #9
  br label %tcf_tm_dump.exit

tcf_tm_dump.exit:                                 ; preds = %cond.true.i, %if.end.tcf_tm_dump.exit_crit_edge
  %cond.i = phi i32 [ %call14.i, %cond.true.i ], [ 0, %if.end.tcf_tm_dump.exit_crit_edge ]
  %conv15.i = sext i32 %cond.i to i64
  %37 = ptrtoint ptr %17 to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %conv15.i, ptr %17, align 8
  %expires.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 2
  %38 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %38)
  %39 = load i64, ptr %expires.i, align 8
  %conv17.i = trunc i64 %39 to i32
  %call18.i = call i32 @jiffies_to_clock_t(i32 noundef %conv17.i) #9
  %conv19.i = sext i32 %call18.i to i64
  %40 = ptrtoint ptr %16 to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 %conv19.i, ptr %16, align 8
  %call11 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 32, ptr noundef nonnull %t, i32 noundef 6) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end14, label %tcf_tm_dump.exit.nla_put_failure_crit_edge

tcf_tm_dump.exit.nla_put_failure_crit_edge:       ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end14:                                         ; preds = %tcf_tm_dump.exit
  %rate = getelementptr inbounds %struct.tcf_sample, ptr %a, i32 0, i32 1
  %41 = ptrtoint ptr %rate to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rate, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %43 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %tmp.i, align 4
  %call.i55 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i55)
  %tobool16.not = icmp eq i32 %call.i55, 0
  br i1 %tobool16.not, label %if.end18, label %if.end14.nla_put_failure_crit_edge

if.end14.nla_put_failure_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end18:                                         ; preds = %if.end14
  %truncate = getelementptr inbounds %struct.tcf_sample, ptr %a, i32 0, i32 2
  %44 = ptrtoint ptr %truncate to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %truncate, align 4, !range !71
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool19.not = icmp eq i8 %45, 0
  br i1 %tobool19.not, label %if.end18.if.end25_crit_edge, label %if.then20

if.end18.if.end25_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then20:                                        ; preds = %if.end18
  %trunc_size = getelementptr inbounds %struct.tcf_sample, ptr %a, i32 0, i32 3
  %46 = ptrtoint ptr %trunc_size to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %trunc_size, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i56) #9
  %48 = ptrtoint ptr %tmp.i56 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %tmp.i56, align 4
  %call.i57 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i56) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i56) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool22.not = icmp eq i32 %call.i57, 0
  br i1 %tobool22.not, label %if.then20.if.end25_crit_edge, label %if.then20.nla_put_failure_crit_edge

if.then20.nla_put_failure_crit_edge:              ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25:                                         ; preds = %if.then20.if.end25_crit_edge, %if.end18.if.end25_crit_edge
  %psample_group_num = getelementptr inbounds %struct.tcf_sample, ptr %a, i32 0, i32 5
  %49 = ptrtoint ptr %psample_group_num to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %psample_group_num, align 16
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i58) #9
  %51 = ptrtoint ptr %tmp.i58 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %tmp.i58, align 4
  %call.i59 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i58) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i58) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i59)
  %tobool27.not = icmp eq i32 %call.i59, 0
  br i1 %tobool27.not, label %if.end29, label %if.end25.nla_put_failure_crit_edge

if.end25.nla_put_failure_crit_edge:               ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

if.end29:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #9
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %52 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end25.nla_put_failure_crit_edge, %if.then20.nla_put_failure_crit_edge, %if.end14.nla_put_failure_crit_edge, %tcf_tm_dump.exit.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #9
  %tobool.not.i60 = icmp eq ptr %1, null
  br i1 %tobool.not.i60, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %55, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !63

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %56 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end29
  %retval.0 = phi i32 [ %53, %if.end29 ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %opt) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_sample_cleanup(ptr noundef %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %psample_group1 = getelementptr inbounds %struct.tcf_sample, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %psample_group1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psample_group1, align 4
  store volatile ptr null, ptr %psample_group1, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @psample_group_put(ptr noundef nonnull %1) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_sample_search(ptr noundef %net, ptr noundef %a, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sample_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_idr_search(ptr noundef %call, ptr noundef %a, i32 noundef %index) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_sample_init(ptr noundef %net, ptr noundef %nla, ptr noundef %est, ptr noundef %a, ptr noundef %tp, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [7 x ptr], align 4
  %index = alloca i32, align 4
  %goto_ch = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sample_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %and = and i32 %flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tb) #9
  %1 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 3
  %3 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 4
  %4 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 5
  %5 = call ptr @memset(ptr %tb, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goto_ch) #9
  %6 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %goto_ch, align 4
  %tobool1.not = icmp eq ptr %nla, null
  br i1 %tobool1.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %7 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %8 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 6, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @sample_policy, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %tobool5.not = icmp eq ptr %10, null
  br i1 %tobool5.not, label %if.end4.cleanup_crit_edge, label %lor.lhs.false

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %tobool7.not = icmp eq ptr %12, null
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %4, align 4
  %tobool10.not = icmp eq ptr %14, null
  br i1 %tobool10.not, label %lor.lhs.false8.cleanup_crit_edge, label %if.end12

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false8
  %add.ptr.i = getelementptr i8, ptr %10, i32 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i, align 4
  %17 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %index, align 4
  %and.lobit = lshr exact i32 %and, 17
  %call17 = call i32 @tcf_idr_check_alloc(ptr noundef %call, ptr noundef nonnull %index, ptr noundef %a, i32 noundef %and.lobit) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end12.cleanup_crit_edge, label %if.end21

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool22.not = icmp eq i32 %call17, 0
  %tobool.not = xor i1 %tobool, true
  %brmerge = or i1 %tobool22.not, %tobool.not
  br i1 %brmerge, label %if.end29, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  br i1 %tobool22.not, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end29
  %18 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index, align 4
  %call34 = call i32 @tcf_idr_create(ptr noundef %call, i32 noundef %19, ptr noundef %est, ptr noundef %a, ptr noundef nonnull @act_sample_ops, i32 noundef %and.lobit, i1 noundef zeroext true, i32 noundef %flags) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %if.then31.if.end44_crit_edge, label %if.then36

if.then31.if.end44_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then36:                                        ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %21) #9
  br label %cleanup

if.else:                                          ; preds = %if.end29
  %and38 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.then40, label %if.else.if.end44_crit_edge

if.else.if.end44_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end44

if.then40:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %a, align 4
  %call42 = call i32 @tcf_idr_release(ptr noundef %23, i1 noundef zeroext %tobool) #9
  br label %cleanup

if.end44:                                         ; preds = %if.else.if.end44_crit_edge, %if.then31.if.end44_crit_edge
  %ret.0 = phi i32 [ %call2.i, %if.else.if.end44_crit_edge ], [ 1, %if.then31.if.end44_crit_edge ]
  %action = getelementptr i8, ptr %10, i32 12
  %24 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %action, align 4
  %call45 = call i32 @tcf_action_check_ctrlact(i32 noundef %25, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end44.release_idr_crit_edge, label %if.end49

if.end44.release_idr_crit_edge:                   ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_idr

if.end49:                                         ; preds = %if.end44
  %26 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %2, align 4
  %add.ptr.i.i201 = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i201 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i201, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool52.not = icmp eq i32 %29, 0
  br i1 %tobool52.not, label %do.body, label %if.end57

do.body:                                          ; preds = %if.end49
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_sample_init.__msg) #9
  %tobool54.not = icmp eq ptr %extack, null
  br i1 %tobool54.not, label %do.body.put_chain_crit_edge, label %if.then55

do.body.put_chain_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_chain

if.then55:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @tcf_sample_init.__msg, ptr %extack, align 4
  br label %put_chain

if.end57:                                         ; preds = %if.end49
  %31 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %4, align 4
  %add.ptr.i.i202 = getelementptr i8, ptr %32, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i202 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i202, align 4
  %call60 = call ptr @psample_group_get(ptr noundef %net, i32 noundef %34) #9
  %tobool61.not = icmp eq ptr %call60, null
  br i1 %tobool61.not, label %if.end57.put_chain_crit_edge, label %if.end63

if.end57.put_chain_crit_edge:                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  br label %put_chain

if.end63:                                         ; preds = %if.end57
  %35 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %a, align 4
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %36, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #9
  %37 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %a, align 4
  %39 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %action, align 4
  %41 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %goto_ch, align 4
  %call65 = call ptr @tcf_action_set_ctrlact(ptr noundef %38, i32 noundef %40, ptr noundef %42) #9
  %43 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call65, ptr %goto_ch, align 4
  %rate66 = getelementptr inbounds %struct.tcf_sample, ptr %36, i32 0, i32 1
  %44 = ptrtoint ptr %rate66 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %29, ptr %rate66, align 16
  %psample_group_num67 = getelementptr inbounds %struct.tcf_sample, ptr %36, i32 0, i32 5
  %45 = ptrtoint ptr %psample_group_num67 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %34, ptr %psample_group_num67, align 16
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %36, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool72.not = icmp eq i32 %call.i, 0
  br i1 %tobool72.not, label %land.lhs.true73, label %if.end63.do.end81_crit_edge

if.end63.do.end81_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81

land.lhs.true73:                                  ; preds = %if.end63
  %call74 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %land.lhs.true73.do.end81_crit_edge, label %land.lhs.true76

land.lhs.true73.do.end81_crit_edge:               ; preds = %land.lhs.true73
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81

land.lhs.true76:                                  ; preds = %land.lhs.true73
  %.b200 = load i1, ptr @tcf_sample_init.__warned, align 1
  br i1 %.b200, label %land.lhs.true76.do.end81_crit_edge, label %if.then78

land.lhs.true76.do.end81_crit_edge:               ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end81

if.then78:                                        ; preds = %land.lhs.true76
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcf_sample_init.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 107, ptr noundef nonnull @.str.8) #9
  br label %do.end81

do.end81:                                         ; preds = %if.then78, %land.lhs.true76.do.end81_crit_edge, %land.lhs.true73.do.end81_crit_edge, %if.end63.do.end81_crit_edge
  %psample_group82 = getelementptr inbounds %struct.tcf_sample, ptr %36, i32 0, i32 4
  %46 = ptrtoint ptr %psample_group82 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %psample_group82, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !72
  %48 = ptrtoint ptr %psample_group82 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %call60, ptr %psample_group82, align 4
  %49 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %3, align 4
  %tobool126.not = icmp eq ptr %50, null
  br i1 %tobool126.not, label %do.end81.if.end130_crit_edge, label %if.then127

do.end81.if.end130_crit_edge:                     ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end130

if.then127:                                       ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #11
  %truncate = getelementptr inbounds %struct.tcf_sample, ptr %36, i32 0, i32 2
  %51 = ptrtoint ptr %truncate to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %truncate, align 4
  %add.ptr.i.i203 = getelementptr i8, ptr %50, i32 4
  %52 = ptrtoint ptr %add.ptr.i.i203 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr.i.i203, align 4
  %trunc_size = getelementptr inbounds %struct.tcf_sample, ptr %36, i32 0, i32 3
  %54 = ptrtoint ptr %trunc_size to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %trunc_size, align 8
  br label %if.end130

if.end130:                                        ; preds = %if.then127, %do.end81.if.end130_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #9
  %tobool133.not = icmp eq ptr %47, null
  br i1 %tobool133.not, label %if.end130.if.end135_crit_edge, label %if.then134

if.end130.if.end135_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end135

if.then134:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #11
  call void @psample_group_put(ptr noundef nonnull %47) #9
  br label %if.end135

if.end135:                                        ; preds = %if.then134, %if.end130.if.end135_crit_edge
  %55 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %goto_ch, align 4
  %tobool136.not = icmp eq ptr %56, null
  br i1 %tobool136.not, label %if.end135.cleanup_crit_edge, label %if.then137

if.end135.cleanup_crit_edge:                      ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then137:                                       ; preds = %if.end135
  call void @__sanitizer_cov_trace_pc() #11
  call void @tcf_chain_put_by_act(ptr noundef nonnull %56) #9
  br label %cleanup

put_chain:                                        ; preds = %if.end57.put_chain_crit_edge, %if.then55, %do.body.put_chain_crit_edge
  %err.0 = phi i32 [ -22, %if.then55 ], [ -22, %do.body.put_chain_crit_edge ], [ -12, %if.end57.put_chain_crit_edge ]
  %57 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %goto_ch, align 4
  %tobool139.not = icmp eq ptr %58, null
  br i1 %tobool139.not, label %put_chain.release_idr_crit_edge, label %if.then140

put_chain.release_idr_crit_edge:                  ; preds = %put_chain
  call void @__sanitizer_cov_trace_pc() #11
  br label %release_idr

if.then140:                                       ; preds = %put_chain
  call void @__sanitizer_cov_trace_pc() #11
  call void @tcf_chain_put_by_act(ptr noundef nonnull %58) #9
  br label %release_idr

release_idr:                                      ; preds = %if.then140, %put_chain.release_idr_crit_edge, %if.end44.release_idr_crit_edge
  %err.1 = phi i32 [ %call45, %if.end44.release_idr_crit_edge ], [ %err.0, %if.then140 ], [ %err.0, %put_chain.release_idr_crit_edge ]
  %59 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %a, align 4
  %call143 = call i32 @tcf_idr_release(ptr noundef %60, i1 noundef zeroext %tobool) #9
  br label %cleanup

cleanup:                                          ; preds = %release_idr, %if.then137, %if.end135.cleanup_crit_edge, %if.then40, %if.then36, %if.end21.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %release_idr ], [ -17, %if.then40 ], [ %call34, %if.then36 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ %call17, %if.end12.cleanup_crit_edge ], [ 0, %if.end21.cleanup_crit_edge ], [ %ret.0, %if.then137 ], [ %ret.0, %if.end135.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goto_ch) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #9
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tb) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_sample_walker(ptr noundef %net, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sample_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_generic_walker(ptr noundef %call, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #9
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_sample_stats_update(ptr noundef %a, i64 noundef %bytes, i64 noundef %packets, i64 noundef %drops, i64 noundef %lastuse, i1 noundef zeroext %hw) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @tcf_action_update_stats(ptr noundef %a, i64 noundef %bytes, i64 noundef %packets, i64 noundef %drops, i1 noundef zeroext %hw) #9
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
define internal ptr @tcf_sample_get_group(ptr noundef %a, ptr nocapture noundef writeonly %destructor) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b11 = load i1, ptr @tcf_sample_get_group.__warned, align 1
  br i1 %.b11, label %land.lhs.true3.do.end_crit_edge, label %if.then

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @tcf_sample_get_group.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 276, ptr noundef nonnull @.str.8) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %psample_group = getelementptr inbounds %struct.tcf_sample, ptr %a, i32 0, i32 4
  %0 = ptrtoint ptr %psample_group to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %psample_group, align 4
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %do.end.if.end7_crit_edge, label %if.then6

do.end.if.end7_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7

if.then6:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @psample_group_take(ptr noundef nonnull %1) #9
  %2 = ptrtoint ptr %destructor to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @tcf_psample_group_put, ptr %destructor, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %do.end.if.end7_crit_edge
  ret ptr %1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_sample_offload_act_setup(ptr noundef %act, ptr noundef %entry_data, ptr nocapture noundef writeonly %index_inc, i1 noundef zeroext %bind) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br i1 %bind, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %0 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 21, ptr %entry_data, align 8
  %trunc_size.i = getelementptr inbounds %struct.tcf_sample, ptr %act, i32 0, i32 3
  %1 = ptrtoint ptr %trunc_size.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %trunc_size.i, align 8
  %3 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %trunc_size = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5, i32 0, i32 1
  %4 = ptrtoint ptr %trunc_size to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %2, ptr %trunc_size, align 8
  %truncate.i = getelementptr inbounds %struct.tcf_sample, ptr %act, i32 0, i32 2
  %5 = ptrtoint ptr %truncate.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %truncate.i, align 4, !range !71
  %truncate = getelementptr inbounds %struct.anon.131, ptr %3, i32 0, i32 3
  %7 = ptrtoint ptr %truncate to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %6, ptr %truncate, align 4
  %rate.i = getelementptr inbounds %struct.tcf_sample, ptr %act, i32 0, i32 1
  %8 = ptrtoint ptr %rate.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rate.i, align 16
  %rate = getelementptr inbounds %struct.anon.131, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %rate to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %rate, align 4
  %11 = ptrtoint ptr %act to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %act, align 16
  %get_psample_group.i = getelementptr inbounds %struct.tc_action_ops, ptr %12, i32 0, i32 14
  %13 = ptrtoint ptr %get_psample_group.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %get_psample_group.i, align 4
  %destructor.i = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 3
  %call.i = tail call ptr %14(ptr noundef %act, ptr noundef %destructor.i) #9
  %15 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i, ptr %3, align 8
  %destructor_priv.i = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 4
  %16 = ptrtoint ptr %destructor_priv.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i, ptr %destructor_priv.i, align 8
  %17 = ptrtoint ptr %index_inc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %index_inc, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %id5 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %18 = ptrtoint ptr %id5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 21, ptr %id5, align 8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
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
declare dso_local i32 @prandom_u32() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @psample_sample_packet(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @psample_group_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %0 = tail call i32 @llvm.read_register.i32(metadata !53) #9
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 696, ptr noundef nonnull @.str.6) #9
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 45, ptr noundef nonnull @.str.1) #9
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.5, i32 noundef 724, ptr noundef nonnull @.str.7) #9
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !74
  %8 = tail call i32 @llvm.read_register.i32(metadata !53) #9
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
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
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
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @psample_group_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcf_action_set_ctrlact(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_chain_put_by_act(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_generic_walker(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_action_update_stats(ptr noundef, i64 noundef, i64 noundef, i64 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @psample_group_take(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_psample_group_put(ptr noundef %priv) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @psample_group_put(ptr noundef %priv) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sample_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sample_net_id, align 4
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
  store ptr @act_sample_ops, ptr %ops2.i, align 4
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
define internal void @sample_exit_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @sample_net_id, align 4
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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.umax.i64(i64, i64) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

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

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #5 = { nounwind readonly }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !16, !17, !19, !20, !22, !24, !26, !27, !29, !30, !31, !33, !34, !36, !38, !40, !41, !43, !45, !47, !49, !50, !52}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__initcall__kmod_act_sample__375_359_sample_init_module6, !1, !"__initcall__kmod_act_sample__375_359_sample_init_module6", i1 false, i1 false}
!1 = !{!"../net/sched/act_sample.c", i32 359, i32 1}
!2 = !{ptr @__exitcall_sample_cleanup_module, !3, !"__exitcall_sample_cleanup_module", i1 false, i1 false}
!3 = !{!"../net/sched/act_sample.c", i32 360, i32 1}
!4 = !{ptr @__UNIQUE_ID_author376, !5, !"__UNIQUE_ID_author376", i1 false, i1 false}
!5 = !{!"../net/sched/act_sample.c", i32 362, i32 1}
!6 = !{ptr @__UNIQUE_ID_description377, !7, !"__UNIQUE_ID_description377", i1 false, i1 false}
!7 = !{!"../net/sched/act_sample.c", i32 363, i32 1}
!8 = !{ptr @__UNIQUE_ID_file378, !9, !"__UNIQUE_ID_file378", i1 false, i1 false}
!9 = !{!"../net/sched/act_sample.c", i32 364, i32 1}
!10 = !{ptr @__UNIQUE_ID_license379, !9, !"__UNIQUE_ID_license379", i1 false, i1 false}
!11 = !{ptr @act_sample_ops, !12, !"act_sample_ops", i1 false, i1 false}
!12 = !{!"../net/sched/act_sample.c", i32 314, i32 29}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/sched/act_sample.c", i32 169, i32 18}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/net/netlink.h", i32 991, i32 3}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/sched/act_sample.c", i32 135, i32 18}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!29 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @sample_net_id, !35, !"sample_net_id", i1 false, i1 false}
!35 = !{!"../net/sched/act_sample.c", i32 26, i32 21}
!36 = !{ptr @tcf_sample_init.__msg, !37, !"__msg", i1 false, i1 false}
!37 = !{!"../net/sched/act_sample.c", i32 89, i32 3}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../net/sched/act_sample.c", i32 106, i32 18}
!40 = !{ptr @.str.8, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @sample_policy, !42, !"sample_policy", i1 false, i1 false}
!42 = !{!"../net/sched/act_sample.c", i32 29, i32 32}
!43 = distinct !{null, !44, !"__warned", i1 false, i1 false}
!44 = !{!"../net/sched/act_sample.c", i32 275, i32 10}
!45 = !{ptr @sample_net_ops, !46, !"sample_net_ops", i1 false, i1 false}
!46 = !{!"../net/sched/act_sample.c", i32 342, i32 33}
!47 = !{ptr @tc_action_net_init.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../include/net/act_api.h", i32 156, i32 2}
!49 = !{ptr @.str.9, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @xa_init_flags.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!52 = !{ptr @.str.10, !51, !"<string literal>", i1 false, i1 false}
!53 = !{!"sp"}
!54 = !{i32 1, !"wchar_size", i32 2}
!55 = !{i32 1, !"min_enum_size", i32 4}
!56 = !{i32 8, !"branch-target-enforcement", i32 0}
!57 = !{i32 8, !"sign-return-address", i32 0}
!58 = !{i32 8, !"sign-return-address-all", i32 0}
!59 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!60 = !{i32 7, !"uwtable", i32 1}
!61 = !{i32 7, !"frame-pointer", i32 2}
!62 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!63 = !{!"branch_weights", i32 1, i32 2000}
!64 = !{i64 2150161557}
!65 = !{i64 2150166491}
!66 = !{i64 2150188209}
!67 = !{i64 2150193103}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2150269630}
!70 = !{i64 2150269955}
!71 = !{i8 0, i8 2}
!72 = !{i64 2156415322}
!73 = !{i64 2149652936}
!74 = !{i64 2149653202}
