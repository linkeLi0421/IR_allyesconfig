; ModuleID = '/llk/IR_all_yes/net/sched/act_mpls.c_pt.bc'
source_filename = "../net/sched/act_mpls.c"
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
%struct.vlan_hdr = type { i16, i16 }
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
%struct.tcf_mpls = type { %struct.tc_action, ptr, [12 x i8] }
%struct.tcf_mpls_params = type { i32, i32, i8, i8, i8, i16, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
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
%struct.vlan_ethhdr = type { %union.anon.127, i16, i16, i16 }
%union.anon.127 = type { %struct.anon.128 }
%struct.anon.128 = type { [6 x i8], [6 x i8] }
%struct.tc_mpls = type { i32, i32, i32, i32, i32, i32 }
%struct.nlattr = type { i16, i16 }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
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
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.130, ptr }
%union.anon.130 = type { %struct.anon.135 }
%struct.anon.135 = type { i32, i64, i64, i64, i32 }
%struct.anon.138 = type { i32, i16, i8, i8, i8 }
%struct.anon.140 = type { i32, i8, i8, i8 }
%struct.flow_offload_action = type { ptr, i32, i32, i32, %struct.flow_stats, %struct.flow_action }
%struct.flow_stats = type { i64, i64, i64, i64, i32, i8 }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.tc_action_net = type { ptr, ptr }
%struct.tcf_idrinfo = type { %struct.mutex, %struct.idr, ptr }

@act_mpls_ops = internal global { %struct.tc_action_ops, [48 x i8] } { %struct.tc_action_ops { %struct.list_head zeroinitializer, [16 x i8] c"mpls\00\00\00\00\00\00\00\00\00\00\00\00", i32 28, i32 288, ptr null, ptr @tcf_mpls_act, ptr @tcf_mpls_dump, ptr @tcf_mpls_cleanup, ptr @tcf_mpls_search, ptr @tcf_mpls_init, ptr @tcf_mpls_walker, ptr null, ptr null, ptr null, ptr null, ptr @tcf_mpls_offload_act_setup }, [48 x i8] zeroinitializer }, align 32
@mpls_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @mpls_init_net, ptr null, ptr null, ptr @mpls_exit_net, ptr @mpls_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_act_mpls__386_481_mpls_init_module6 = internal global ptr @mpls_init_module, section ".initcall6.init", align 4
@__exitcall_mpls_cleanup_module = internal global ptr @mpls_cleanup_module, section ".exitcall.exit", align 4
@__UNIQUE_ID_softdep387 = internal constant [32 x i8] c"act_mpls.softdep=post: mpls_gso\00", section ".modinfo", align 1
@__UNIQUE_ID_author388 = internal constant [62 x i8] c"act_mpls.author=Netronome Systems <oss-drivers@netronome.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file389 = internal constant [33 x i8] c"act_mpls.file=net/sched/act_mpls\00", section ".modinfo", align 1
@__UNIQUE_ID_license390 = internal constant [21 x i8] c"act_mpls.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description391 = internal constant [47 x i8] c"act_mpls.description=MPLS manipulation actions\00", section ".modinfo", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@tcf_mpls_act.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"net/sched/act_mpls.c\00", [43 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@tcf_mpls_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@mpls_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@tcf_mpls_init.__msg = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"act_mpls: Missing netlink attributes\00", [59 x i8] zeroinitializer }, align 32
@tcf_mpls_init.__msg.10 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"act_mpls: No MPLS params\00", [39 x i8] zeroinitializer }, align 32
@tcf_mpls_init.__msg.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"act_mpls: Protocol must be set for MPLS pop\00", [52 x i8] zeroinitializer }, align 32
@tcf_mpls_init.__msg.12 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"act_mpls: Invalid protocol type for MPLS pop\00", [51 x i8] zeroinitializer }, align 32
@tcf_mpls_init.__msg.13 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"act_mpls: Label, TTL, TC or BOS cannot be used with MPLS pop\00", [35 x i8] zeroinitializer }, align 32
@tcf_mpls_init.__msg.14 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"act_mpls: Label, TTL, TC, BOS or protocol cannot be used with MPLS dec_ttl\00", [53 x i8] zeroinitializer }, align 32
@tcf_mpls_init.__msg.15 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"act_mpls: Label is required for MPLS push\00", [54 x i8] zeroinitializer }, align 32
@tcf_mpls_init.__msg.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"act_mpls: Protocol must be an MPLS type for MPLS push\00", [42 x i8] zeroinitializer }, align 32
@tcf_mpls_init.__msg.17 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"act_mpls: Protocol cannot be used with MPLS modify\00", [45 x i8] zeroinitializer }, align 32
@tcf_mpls_init.__msg.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"act_mpls: Unknown MPLS action\00", [34 x i8] zeroinitializer }, align 32
@tcf_mpls_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nla_parse_nested.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"NLA_F_NESTED is missing\00", [40 x i8] zeroinitializer }, align 32
@mpls_policy = internal constant { <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.105 } }, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { ptr } }, { i8, i8, i16, { %struct.anon.105 } }, { i8, i8, i16, { %struct.anon.105 } }, { i8, i8, i16, { %struct.anon.105 } } }>, [56 x i8] } { <{ %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { %struct.anon.105 } }, %struct.nla_policy, %struct.nla_policy, { i8, i8, i16, { ptr } }, { i8, i8, i16, { %struct.anon.105 } }, { i8, i8, i16, { %struct.anon.105 } }, { i8, i8, i16, { %struct.anon.105 } } }> <{ %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, { i8, i8, i16, { %struct.anon.105 } } { i8 11, i8 1, i16 0, { %struct.anon.105 } { %struct.anon.105 { i16 24, i16 24 } } }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.104 zeroinitializer }, { i8, i8, i16, { ptr } } { i8 3, i8 7, i16 0, { ptr } { ptr @valid_label } }, { i8, i8, i16, { %struct.anon.105 } } { i8 1, i8 1, i16 0, { %struct.anon.105 } { %struct.anon.105 { i16 0, i16 7 } } }, { i8, i8, i16, { %struct.anon.105 } } { i8 1, i8 3, i16 0, { %struct.anon.105 } { %struct.anon.105 { i16 1, i16 0 } } }, { i8, i8, i16, { %struct.anon.105 } } { i8 1, i8 1, i16 0, { %struct.anon.105 } { %struct.anon.105 { i16 0, i16 1 } } } }>, [56 x i8] zeroinitializer }, align 32
@valid_label.__msg = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"act_mpls: MPLS label out of range\00", [62 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tcf_mpls_action.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"include/net/tc_act/tc_mpls.h\00", [35 x i8] zeroinitializer }, align 32
@tcf_mpls_proto.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcf_mpls_label.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcf_mpls_tc.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcf_mpls_bos.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcf_mpls_ttl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tc_action_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tn->idrinfo->lock\00", [45 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.24 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.25 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 3]
@___asan_gen_.28 = private unnamed_addr constant [13 x i8] c"act_mpls_ops\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 438, i32 29 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"mpls_net_ops\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 464, i32 33 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 76, i32 6 }
@___asan_gen_.41 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 271, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 598, i32 8 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 331, i32 6 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 991, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant [12 x i8] c"mpls_net_id\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 18, i32 21 }
@___asan_gen_.56 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 45, i32 7 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 695, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.65, i32 723, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 171, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 180, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 190, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 194, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 199, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 206, i32 4 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 213, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 218, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 233, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 238, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.98, i32 1208, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [12 x i8] c"mpls_policy\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 144, i32 32 }
@___asan_gen_.103 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.104 = private constant [24 x i8] c"../net/sched/act_mpls.c\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.104, i32 137, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant [32 x i8] c"../include/net/tc_act/tc_mpls.h\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 44, i32 16 }
@___asan_gen_.113 = private unnamed_addr constant [25 x i8] c"../include/net/act_api.h\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.113, i32 156, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.119 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.119, i32 378, i32 2 }
@llvm.compiler.used = appending global [39 x ptr] [ptr @__UNIQUE_ID_author388, ptr @__UNIQUE_ID_description391, ptr @__UNIQUE_ID_file389, ptr @__UNIQUE_ID_license390, ptr @__UNIQUE_ID_softdep387, ptr @__exitcall_mpls_cleanup_module, ptr @__initcall__kmod_act_mpls__386_481_mpls_init_module6, ptr @mpls_cleanup_module, ptr @act_mpls_ops, ptr @mpls_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mpls_net_id, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @tcf_mpls_init.__msg, ptr @tcf_mpls_init.__msg.10, ptr @tcf_mpls_init.__msg.11, ptr @tcf_mpls_init.__msg.12, ptr @tcf_mpls_init.__msg.13, ptr @tcf_mpls_init.__msg.14, ptr @tcf_mpls_init.__msg.15, ptr @tcf_mpls_init.__msg.16, ptr @tcf_mpls_init.__msg.17, ptr @tcf_mpls_init.__msg.18, ptr @nla_parse_nested.__msg, ptr @mpls_policy, ptr @valid_label.__msg, ptr @.str.20, ptr @tc_action_net_init.__key, ptr @.str.21, ptr @xa_init_flags.__key, ptr @.str.22], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_mpls_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_mpls_init.__msg to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_mpls_init.__msg.10 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_mpls_init.__msg.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_mpls_init.__msg.12 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_mpls_init.__msg.13 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_mpls_init.__msg.14 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_mpls_init.__msg.15 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_mpls_init.__msg.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_mpls_init.__msg.17 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_mpls_init.__msg.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nla_parse_nested.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mpls_policy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @valid_label.__msg to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_action_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mpls_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_mpls_ops, ptr noundef nonnull @mpls_net_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_unregister_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_register_action(ptr noundef nonnull @act_mpls_ops, ptr noundef nonnull @mpls_net_ops) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_mpls_act(ptr noundef %skb, ptr noundef %a, ptr nocapture noundef readnone %res) #2 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %tobool.not.i, label %if.then7.i, label %if.end.i.tcf_lastuse_update.exit_crit_edge, !prof !102

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
  %cpu_bstats = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 13
  %7 = ptrtoint ptr %cpu_bstats to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cpu_bstats, align 4
  %9 = ptrtoint ptr %8 to i32
  %10 = tail call i32 @llvm.read_register.i32(metadata !92) #8
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
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %11, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %27, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !103
  %28 = tail call i32 @llvm.read_register.i32(metadata !92) #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !104
  %37 = tail call i32 @llvm.read_register.i32(metadata !92) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %bstats_update.exit

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %41 = tail call i32 @llvm.read_register.i32(metadata !92) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %bstats_update.exit

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %45 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i9.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %48, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !105
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !106
  %56 = tail call i32 @llvm.read_register.i32(metadata !92) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %bstats_update.exit

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, label %if.then.i.i.i.i, !prof !107

land.rhs58.i.i.i.i.bstats_update.exit_crit_edge:  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bstats_update.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %bstats_update.exit

bstats_update.exit:                               ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge, %cond.end.i.bstats_update.exit_crit_edge
  %conv.i158 = zext i32 %18 to i64
  %syncp.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %16, i32 0, i32 2
  %60 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %61, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !108
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %16, i32 0, i32 2, i32 0, i32 1
  %62 = tail call ptr @llvm.returnaddress(i32 0) #8
  %63 = ptrtoint ptr %62 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %63) #8
  %64 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %16, align 8
  %add.i.i.i = add i64 %65, %conv.i158
  store i64 %add.i.i.i, ptr %16, align 8
  %packets2.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %16, i32 0, i32 1
  %conv.i7.i.i = zext i32 %cond.i to i64
  %66 = ptrtoint ptr %packets2.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %packets2.i.i, align 8
  %add.i8.i.i = add i64 %67, %conv.i7.i.i
  store i64 %add.i8.i.i, ptr %packets2.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %63) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !109
  %68 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %69, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  %tc_at_ingress.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %70 = ptrtoint ptr %tc_at_ingress.i to i32
  call void @__asan_loadN_noabort(i32 %70, i32 4)
  %bf.load.i = load i32, ptr %tc_at_ingress.i, align 2
  %71 = and i32 %bf.load.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool.i.not = icmp eq i32 %71, 0
  br i1 %tobool.i.not, label %if.else, label %if.then

if.then:                                          ; preds = %bstats_update.exit
  %mac_len4 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %72 = ptrtoint ptr %mac_len4 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %mac_len4, align 4
  %conv = zext i16 %73 to i32
  %call.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef %conv) #8
  %ip_summed.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %74 = ptrtoint ptr %ip_summed.i.i.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %bf.load.i.i.i = load i16, ptr %ip_summed.i.i.i, align 8
  %75 = and i16 %bf.load.i.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %75)
  %cmp.i.i.i = icmp eq i16 %75, 1024
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.then.skb_push_rcsum.exit_crit_edge

if.then.skb_push_rcsum.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_push_rcsum.exit

if.then.i.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %76 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %data.i, align 4
  %78 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %78, align 8
  %call.i.i.i = tail call i32 @csum_partial(ptr noundef %77, i32 noundef %conv, i32 noundef 0) #8
  %add.i.i.i.i.i159 = add i32 %call.i.i.i, %80
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i.i159, i32 %call.i.i.i)
  %cmp.i.i.i.i.i = icmp ult i32 %add.i.i.i.i.i159, %call.i.i.i
  %conv.i.i.i.i.i = zext i1 %cmp.i.i.i.i.i to i32
  %add1.i.i.i.i.i = add i32 %add.i.i.i.i.i159, %conv.i.i.i.i.i
  %81 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %add1.i.i.i.i.i, ptr %78, align 8
  br label %skb_push_rcsum.exit

skb_push_rcsum.exit:                              ; preds = %if.then.i.i.i, %if.then.skb_push_rcsum.exit_crit_edge
  %82 = ptrtoint ptr %mac_len4 to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %mac_len4, align 4
  %conv7 = zext i16 %83 to i32
  br label %do.end12

if.else:                                          ; preds = %bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %84 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %network_header.i, align 4
  %conv.i160 = zext i16 %85 to i32
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %86 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %mac_header.i, align 2
  %conv.i162 = zext i16 %87 to i32
  %gepdiff = sub nsw i32 %conv.i160, %conv.i162
  br label %do.end12

do.end12:                                         ; preds = %if.else, %skb_push_rcsum.exit
  %mac_len.0 = phi i32 [ %conv7, %skb_push_rcsum.exit ], [ %gepdiff, %if.else ]
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %88 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load volatile i32, ptr %tcfa_action, align 8
  %mpls_p = getelementptr inbounds %struct.tcf_mpls, ptr %a, i32 0, i32 1
  %90 = ptrtoint ptr %mpls_p to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load volatile ptr, ptr %mpls_p, align 16
  %call20 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool.not = icmp eq i32 %call20, 0
  br i1 %tobool.not, label %land.lhs.true, label %do.end12.do.end28_crit_edge

do.end12.do.end28_crit_edge:                      ; preds = %do.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

land.lhs.true:                                    ; preds = %do.end12
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true.do.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true
  %.b157 = load i1, ptr @tcf_mpls_act.__warned, align 1
  br i1 %.b157, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tcf_mpls_act.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 76, ptr noundef nonnull @.str.1) #8
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true.do.end28_crit_edge, %do.end12.do.end28_crit_edge
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %91, align 4
  %94 = zext i32 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values)
  switch i32 %93, label %do.end28.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb37
    i32 5, label %sw.bb53
    i32 3, label %sw.bb73
    i32 4, label %sw.bb85
  ]

do.end28.sw.epilog_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb:                                            ; preds = %do.end28
  %tcfm_proto = getelementptr inbounds %struct.tcf_mpls_params, ptr %91, i32 0, i32 5
  %95 = ptrtoint ptr %tcfm_proto to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %tcfm_proto, align 4
  %97 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %97, align 8
  %tobool30.not = icmp eq ptr %99, null
  br i1 %tobool30.not, label %sw.bb.land.end_crit_edge, label %land.rhs

sw.bb.land.end_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end

land.rhs:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %type = getelementptr inbounds %struct.net_device, ptr %99, i32 0, i32 32
  %100 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %101)
  %cmp = icmp eq i16 %101, 1
  br label %land.end

land.end:                                         ; preds = %land.rhs, %sw.bb.land.end_crit_edge
  %102 = phi i1 [ false, %sw.bb.land.end_crit_edge ], [ %cmp, %land.rhs ]
  %call33 = tail call i32 @skb_mpls_pop(ptr noundef %skb, i16 noundef zeroext %96, i32 noundef %mac_len.0, i1 noundef zeroext %102) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.end.sw.epilog_crit_edge, label %land.end.do.body96_crit_edge

land.end.do.body96_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body96

land.end.sw.epilog_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb37:                                          ; preds = %do.end28
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %103 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %105 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %106 to i32
  %107 = zext i16 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %107, ptr @__sancov_gen_cov_switch_values.23)
  switch i16 %104, label %sw.bb37.skb_protocol.exit_crit_edge [
    i16 -30552, label %sw.bb37.if.then.i.i.i164_crit_edge
    i16 -32512, label %sw.bb37.if.then.i.i.i164_crit_edge256
  ]

sw.bb37.if.then.i.i.i164_crit_edge256:            ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i164

sw.bb37.if.then.i.i.i164_crit_edge:               ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i164

sw.bb37.skb_protocol.exit_crit_edge:              ; preds = %sw.bb37
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_protocol.exit

if.then.i.i.i164:                                 ; preds = %sw.bb37.if.then.i.i.i164_crit_edge, %sw.bb37.if.then.i.i.i164_crit_edge256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %106)
  %tobool.not.i.i.i = icmp eq i16 %106, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i164.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i164.if.end26.i.i.i_crit_edge:        ; preds = %if.then.i.i.i164
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i164
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %106)
  %cmp.i.i.i165 = icmp ult i16 %106, 4
  br i1 %cmp.i.i.i165, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !102

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 598, i32 noundef 9, ptr noundef null) #8
  br label %skb_protocol.exit

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i164.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i164.if.end26.i.i.i_crit_edge ]
  %108 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i167, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #8
  %109 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %109)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !110
  %110 = ptrtoint ptr %108 to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 -1, ptr %108, align 2, !annotation !110
  %111 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %len.i.i.i.i.i, align 4
  %113 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %115 = add i32 %vlan_depth.1.i.i.i, %114
  %sub.i1.i.i.i.i = sub i32 %112, %115
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i166 = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i166, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !107

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %116 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %117, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !102
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %118 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !102
  br i1 %118, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !102

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #8
  br label %skb_protocol.exit

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %119 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %119)
  %120 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #8
  %121 = zext i16 %120 to i64
  call void @__sanitizer_cov_trace_switch(i64 %121, ptr @__sancov_gen_cov_switch_values.24)
  switch i16 %120, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge257
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge257: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge257
  %add.i.i.i167 = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i, %sw.bb37.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ 0, %do.end.i.i.i ], [ %104, %sw.bb37.skb_protocol.exit_crit_edge ], [ 0, %cleanup.thread.i.i.i ], [ %120, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %122 = add i16 %retval.2.i.i.i, 30647
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %122)
  %123 = icmp ult i16 %122, -2
  %tcfm_label.i = getelementptr inbounds %struct.tcf_mpls_params, ptr %91, i32 0, i32 1
  %124 = ptrtoint ptr %tcfm_label.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %tcfm_label.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %125)
  %cmp.not.i168 = icmp eq i32 %125, -1
  %shl.i = shl i32 %125, 12
  %new_lse.1.i = select i1 %cmp.not.i168, i32 0, i32 %shl.i
  %tcfm_ttl.i = getelementptr inbounds %struct.tcf_mpls_params, ptr %91, i32 0, i32 3
  %126 = ptrtoint ptr %tcfm_ttl.i to i32
  call void @__asan_load1_noabort(i32 %126)
  %127 = load i8, ptr %tcfm_ttl.i, align 1
  %conv.i170 = zext i8 %127 to i32
  %new_lse.2.i = or i32 %new_lse.1.i, %conv.i170
  %tcfm_tc.i = getelementptr inbounds %struct.tcf_mpls_params, ptr %91, i32 0, i32 2
  %128 = ptrtoint ptr %tcfm_tc.i to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %tcfm_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %129)
  %cmp12.not.i = icmp eq i8 %129, -1
  %conv11.i = zext i8 %129 to i32
  %shl18.i = shl nuw nsw i32 %conv11.i, 9
  %or19.i = select i1 %cmp12.not.i, i32 0, i32 %shl18.i
  %new_lse.3.i = or i32 %new_lse.2.i, %or19.i
  %tcfm_bos.i = getelementptr inbounds %struct.tcf_mpls_params, ptr %91, i32 0, i32 4
  %130 = ptrtoint ptr %tcfm_bos.i to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %tcfm_bos.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %131)
  %cmp22.not.i = icmp eq i8 %131, -1
  %conv21.i = zext i8 %131 to i32
  %shl28.i = shl nuw nsw i32 %conv21.i, 8
  %or29.i = or i32 %new_lse.3.i, %shl28.i
  %or32.i = or i32 %new_lse.3.i, 256
  %spec.select.i = select i1 %123, i32 %or32.i, i32 %new_lse.3.i
  %new_lse.4.i = select i1 %cmp22.not.i, i32 %spec.select.i, i32 %or29.i
  %tcfm_proto41 = getelementptr inbounds %struct.tcf_mpls_params, ptr %91, i32 0, i32 5
  %132 = ptrtoint ptr %tcfm_proto41 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %tcfm_proto41, align 4
  %134 = getelementptr inbounds %struct.anon.44, ptr %skb, i32 0, i32 2
  %135 = ptrtoint ptr %134 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %134, align 8
  %tobool42.not = icmp eq ptr %136, null
  br i1 %tobool42.not, label %skb_protocol.exit.land.end48_crit_edge, label %land.rhs43

skb_protocol.exit.land.end48_crit_edge:           ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.end48

land.rhs43:                                       ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #10
  %type44 = getelementptr inbounds %struct.net_device, ptr %136, i32 0, i32 32
  %137 = ptrtoint ptr %type44 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %type44, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %138)
  %cmp46 = icmp eq i16 %138, 1
  br label %land.end48

land.end48:                                       ; preds = %land.rhs43, %skb_protocol.exit.land.end48_crit_edge
  %139 = phi i1 [ false, %skb_protocol.exit.land.end48_crit_edge ], [ %cmp46, %land.rhs43 ]
  %call49 = call i32 @skb_mpls_push(ptr noundef %skb, i32 noundef %new_lse.4.i, i16 noundef zeroext %133, i32 noundef %mac_len.0, i1 noundef zeroext %139) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.end48.sw.epilog_crit_edge, label %land.end48.do.body96_crit_edge

land.end48.do.body96_crit_edge:                   ; preds = %land.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body96

land.end48.sw.epilog_crit_edge:                   ; preds = %land.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb53:                                          ; preds = %do.end28
  %140 = ptrtoint ptr %tc_at_ingress.i to i32
  call void @__asan_loadN_noabort(i32 %140, i32 4)
  %bf.load = load i32, ptr %tc_at_ingress.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load)
  %tobool54.not = icmp sgt i32 %bf.load, -1
  br i1 %tobool54.not, label %sw.bb53.if.end62_crit_edge, label %if.then55

sw.bb53.if.end62_crit_edge:                       ; preds = %sw.bb53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end62

if.then55:                                        ; preds = %sw.bb53
  %vlan_proto = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %141 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %vlan_proto, align 8
  %vlan_tci = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %143 = ptrtoint ptr %vlan_tci to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %vlan_tci, align 2
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %145 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %145)
  %bf.load.i.i.i172 = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i172)
  %tobool.not.i.i.i173 = icmp sgt i8 %bf.load.i.i.i172, -1
  br i1 %tobool.not.i.i.i173, label %skb_header_cloned.exit.thread.i.i, label %skb_header_cloned.exit.i.i

skb_header_cloned.exit.i.i:                       ; preds = %if.then55
  %146 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %end.i.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %147, i32 0, i32 10
  %call.i.i.i.i.i174 = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #8
  %148 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %data.i.i.i.i175 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %150 = ptrtoint ptr %data.i.i.i.i175 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %data.i.i.i.i175, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %152 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %151 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %153 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i1.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i, 4
  br i1 %cmp.i1.i.i, label %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge, label %if.end.i2.i.i

skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread.i.i.i

skb_header_cloned.exit.thread.i.i:                ; preds = %if.then55
  %data.i.i5.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %154 = ptrtoint ptr %data.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %data.i.i5.i.i, align 4
  %head.i.i6.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %156 = ptrtoint ptr %head.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %head.i.i6.i.i, align 8
  %sub.ptr.lhs.cast.i.i7.i.i = ptrtoint ptr %155 to i32
  %sub.ptr.rhs.cast.i.i8.i.i = ptrtoint ptr %157 to i32
  %sub.ptr.sub.i.i9.i.i = sub i32 %sub.ptr.lhs.cast.i.i7.i.i, %sub.ptr.rhs.cast.i.i8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.ptr.sub.i.i9.i.i)
  %cmp.i110.i.i = icmp ult i32 %sub.ptr.sub.i.i9.i.i, 4
  br i1 %cmp.i110.i.i, label %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.i.if.end60_crit_edge

skb_header_cloned.exit.thread.i.i.if.end60_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.thread.i.i.i

if.end.thread.i.i.i:                              ; preds = %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge, %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge
  %sub.ptr.sub.i.i12.i.i = phi i32 [ %sub.ptr.sub.i.i9.i.i, %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i.i, %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge ]
  %phi.bo.i.i.i = sub nuw nsw i32 131, %sub.ptr.sub.i.i12.i.i
  %phi.bo11.i.i.i = and i32 %phi.bo.i.i.i, -128
  br label %skb_cow_head.exit.i

if.end.i2.i.i:                                    ; preds = %skb_header_cloned.exit.i.i
  %and.i.i.i = and i32 %149, 65535
  %shr.i.i.i = ashr i32 %149, 16
  %sub.i.i.i176 = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i176)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i176, 1
  br i1 %cmp.i.not.i.i, label %if.end.i2.i.i.if.end60_crit_edge, label %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge

if.end.i2.i.i.skb_cow_head.exit.i_crit_edge:      ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_cow_head.exit.i

if.end.i2.i.i.if.end60_crit_edge:                 ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

skb_cow_head.exit.i:                              ; preds = %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge, %if.end.thread.i.i.i
  %delta.010.i.i.i = phi i32 [ %phi.bo11.i.i.i, %if.end.thread.i.i.i ], [ 0, %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge ]
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %delta.010.i.i.i, i32 noundef 0, i32 noundef 2592) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %cmp.i = icmp slt i32 %call4.i.i.i, 0
  br i1 %cmp.i, label %skb_cow_head.exit.i.do.body96_crit_edge, label %skb_cow_head.exit.i.if.end60_crit_edge

skb_cow_head.exit.i.if.end60_crit_edge:           ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

skb_cow_head.exit.i.do.body96_crit_edge:          ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body96

if.end60:                                         ; preds = %skb_cow_head.exit.i.if.end60_crit_edge, %if.end.i2.i.i.if.end60_crit_edge, %skb_header_cloned.exit.thread.i.i.if.end60_crit_edge
  %call1.i = tail call ptr @skb_push(ptr noundef %skb, i32 noundef 4) #8
  %data.i177 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %158 = ptrtoint ptr %data.i177 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %data.i177, align 4
  %add.ptr.i178 = getelementptr i8, ptr %159, i32 4
  %160 = call ptr @memmove(ptr %159, ptr %add.ptr.i178, i32 12)
  %mac_header.i179 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %161 = ptrtoint ptr %mac_header.i179 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %mac_header.i179, align 2
  %sub7.i = add i16 %162, -4
  store i16 %sub7.i, ptr %mac_header.i179, align 2
  %163 = load ptr, ptr %data.i177, align 4
  %h_vlan_proto.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %163, i32 0, i32 1
  %164 = ptrtoint ptr %h_vlan_proto.i to i32
  call void @__asan_store2_noabort(i32 %164)
  store i16 %142, ptr %h_vlan_proto.i, align 2
  %h_vlan_TCI.i = getelementptr inbounds %struct.vlan_ethhdr, ptr %163, i32 0, i32 2
  %165 = ptrtoint ptr %h_vlan_TCI.i to i32
  call void @__asan_store2_noabort(i32 %165)
  store i16 %144, ptr %h_vlan_TCI.i, align 2
  %166 = ptrtoint ptr %vlan_proto to i32
  call void @__asan_load2_noabort(i32 %166)
  %167 = load i16, ptr %vlan_proto, align 8
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %168 = ptrtoint ptr %protocol to i32
  call void @__asan_store2_noabort(i32 %168)
  store i16 %167, ptr %protocol, align 8
  %169 = ptrtoint ptr %tc_at_ingress.i to i32
  call void @__asan_loadN_noabort(i32 %169, i32 4)
  %bf.load.i181 = load i32, ptr %tc_at_ingress.i, align 2
  %bf.clear.i = and i32 %bf.load.i181, 2147483647
  store i32 %bf.clear.i, ptr %tc_at_ingress.i, align 2
  br label %if.end62

if.end62:                                         ; preds = %if.end60, %sw.bb53.if.end62_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mac_len.0)
  %tobool63.not = icmp eq i32 %mac_len.0, 0
  br i1 %tobool63.not, label %lor.rhs, label %if.end62.lor.end_crit_edge

if.end62.lor.end_crit_edge:                       ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.end

lor.rhs:                                          ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #10
  %protocol64 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %170 = ptrtoint ptr %protocol64 to i32
  call void @__asan_load2_noabort(i32 %170)
  %171 = load i16, ptr %protocol64, align 8
  %172 = add i16 %171, 30647
  call void @__sanitizer_cov_trace_const_cmp2(i16 -2, i16 %172)
  %173 = icmp ult i16 %172, -2
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %if.end62.lor.end_crit_edge
  %174 = phi i1 [ true, %if.end62.lor.end_crit_edge ], [ %173, %lor.rhs ]
  %tcfm_label.i182 = getelementptr inbounds %struct.tcf_mpls_params, ptr %91, i32 0, i32 1
  %175 = ptrtoint ptr %tcfm_label.i182 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %tcfm_label.i182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %176)
  %cmp.not.i183 = icmp eq i32 %176, -1
  %shl.i185 = shl i32 %176, 12
  %new_lse.1.i186 = select i1 %cmp.not.i183, i32 0, i32 %shl.i185
  %tcfm_ttl.i187 = getelementptr inbounds %struct.tcf_mpls_params, ptr %91, i32 0, i32 3
  %177 = ptrtoint ptr %tcfm_ttl.i187 to i32
  call void @__asan_load1_noabort(i32 %177)
  %178 = load i8, ptr %tcfm_ttl.i187, align 1
  %conv.i190 = zext i8 %178 to i32
  %new_lse.2.i192 = or i32 %new_lse.1.i186, %conv.i190
  %tcfm_tc.i193 = getelementptr inbounds %struct.tcf_mpls_params, ptr %91, i32 0, i32 2
  %179 = ptrtoint ptr %tcfm_tc.i193 to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %tcfm_tc.i193, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %180)
  %cmp12.not.i194 = icmp eq i8 %180, -1
  %conv11.i195 = zext i8 %180 to i32
  %shl18.i197 = shl nuw nsw i32 %conv11.i195, 9
  %or19.i198 = select i1 %cmp12.not.i194, i32 0, i32 %shl18.i197
  %new_lse.3.i199 = or i32 %new_lse.2.i192, %or19.i198
  %tcfm_bos.i200 = getelementptr inbounds %struct.tcf_mpls_params, ptr %91, i32 0, i32 4
  %181 = ptrtoint ptr %tcfm_bos.i200 to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %tcfm_bos.i200, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %182)
  %cmp22.not.i201 = icmp eq i8 %182, -1
  %conv21.i202 = zext i8 %182 to i32
  %shl28.i204 = shl nuw nsw i32 %conv21.i202, 8
  %or29.i205 = or i32 %new_lse.3.i199, %shl28.i204
  %or32.i206 = or i32 %new_lse.3.i199, 256
  %spec.select = select i1 %174, i32 %or32.i206, i32 %new_lse.3.i199
  %new_lse.4.i208 = select i1 %cmp22.not.i201, i32 %spec.select, i32 %or29.i205
  %tcfm_proto68 = getelementptr inbounds %struct.tcf_mpls_params, ptr %91, i32 0, i32 5
  %183 = ptrtoint ptr %tcfm_proto68 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %tcfm_proto68, align 4
  %call69 = tail call i32 @skb_mpls_push(ptr noundef %skb, i32 noundef %new_lse.4.i208, i16 noundef zeroext %184, i32 noundef 0, i1 noundef zeroext false) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %lor.end.sw.epilog_crit_edge, label %lor.end.do.body96_crit_edge

lor.end.do.body96_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body96

lor.end.sw.epilog_crit_edge:                      ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb73:                                          ; preds = %do.end28
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %185 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %187 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %187)
  %188 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %188 to i32
  %add.ptr.i.i = getelementptr i8, ptr %186, i32 %conv.i.i
  %data.i210 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %189 = ptrtoint ptr %data.i210 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %data.i210, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %190 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %add75 = add i32 %sub.ptr.sub.i, 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %191 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %193 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %192, %194
  call void @__sanitizer_cov_trace_cmp4(i32 %add75, i32 %sub.i.i)
  %cmp.not.i211 = icmp ugt i32 %add75, %sub.i.i
  br i1 %cmp.not.i211, label %if.end.i212, label %sw.bb73.if.end78_crit_edge, !prof !102

sw.bb73.if.end78_crit_edge:                       ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

if.end.i212:                                      ; preds = %sw.bb73
  call void @__sanitizer_cov_trace_cmp4(i32 %192, i32 %add75)
  %cmp3.i = icmp ult i32 %192, %add75
  br i1 %cmp3.i, label %if.end.i212.do.body96_crit_edge, label %pskb_may_pull.exit, !prof !102

if.end.i212.do.body96_crit_edge:                  ; preds = %if.end.i212
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body96

pskb_may_pull.exit:                               ; preds = %if.end.i212
  %sub.i = sub i32 %add75, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #8
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.do.body96_crit_edge, label %pskb_may_pull.exit.if.end78_crit_edge

pskb_may_pull.exit.if.end78_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end78

pskb_may_pull.exit.do.body96_crit_edge:           ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body96

if.end78:                                         ; preds = %pskb_may_pull.exit.if.end78_crit_edge, %sw.bb73.if.end78_crit_edge
  %195 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %head.i.i, align 8
  %197 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %197)
  %198 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i216 = zext i16 %198 to i32
  %add.ptr.i.i217 = getelementptr i8, ptr %196, i32 %conv.i.i216
  %tobool.not.i218 = icmp eq ptr %add.ptr.i.i217, null
  br i1 %tobool.not.i218, label %if.end78.tcf_mpls_get_lse.exit_crit_edge, label %if.then.i219

if.end78.tcf_mpls_get_lse.exit_crit_edge:         ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcf_mpls_get_lse.exit

if.then.i219:                                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #10
  %199 = ptrtoint ptr %add.ptr.i.i217 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %add.ptr.i.i217, align 4
  br label %tcf_mpls_get_lse.exit

tcf_mpls_get_lse.exit:                            ; preds = %if.then.i219, %if.end78.tcf_mpls_get_lse.exit_crit_edge
  %new_lse.0.i = phi i32 [ %200, %if.then.i219 ], [ 0, %if.end78.tcf_mpls_get_lse.exit_crit_edge ]
  %tcfm_label.i220 = getelementptr inbounds %struct.tcf_mpls_params, ptr %91, i32 0, i32 1
  %201 = ptrtoint ptr %tcfm_label.i220 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %tcfm_label.i220, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %202)
  %cmp.not.i221 = icmp eq i32 %202, -1
  %and.i222 = and i32 %new_lse.0.i, 4095
  %shl.i223 = shl i32 %202, 12
  %or.i = or i32 %shl.i223, %and.i222
  %new_lse.1.i224 = select i1 %cmp.not.i221, i32 %new_lse.0.i, i32 %or.i
  %tcfm_ttl.i225 = getelementptr inbounds %struct.tcf_mpls_params, ptr %91, i32 0, i32 3
  %203 = ptrtoint ptr %tcfm_ttl.i225 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %tcfm_ttl.i225, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool4.not.i226 = icmp eq i8 %204, 0
  %and6.i227 = and i32 %new_lse.1.i224, -256
  %conv.i228 = zext i8 %204 to i32
  %or9.i229 = or i32 %and6.i227, %conv.i228
  %new_lse.2.i230 = select i1 %tobool4.not.i226, i32 %new_lse.1.i224, i32 %or9.i229
  %tcfm_tc.i231 = getelementptr inbounds %struct.tcf_mpls_params, ptr %91, i32 0, i32 2
  %205 = ptrtoint ptr %tcfm_tc.i231 to i32
  call void @__asan_load1_noabort(i32 %205)
  %206 = load i8, ptr %tcfm_tc.i231, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %206)
  %cmp12.not.i232 = icmp eq i8 %206, -1
  %conv11.i233 = zext i8 %206 to i32
  %and15.i234 = and i32 %new_lse.2.i230, -3585
  %shl18.i235 = shl nuw nsw i32 %conv11.i233, 9
  %or19.i236 = or i32 %and15.i234, %shl18.i235
  %new_lse.3.i237 = select i1 %cmp12.not.i232, i32 %new_lse.2.i230, i32 %or19.i236
  %tcfm_bos.i238 = getelementptr inbounds %struct.tcf_mpls_params, ptr %91, i32 0, i32 4
  %207 = ptrtoint ptr %tcfm_bos.i238 to i32
  call void @__asan_load1_noabort(i32 %207)
  %208 = load i8, ptr %tcfm_bos.i238, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %208)
  %cmp22.not.i239 = icmp eq i8 %208, -1
  %conv21.i240 = zext i8 %208 to i32
  %and25.i241 = and i32 %new_lse.3.i237, -257
  %shl28.i242 = shl nuw nsw i32 %conv21.i240, 8
  %or29.i243 = or i32 %and25.i241, %shl28.i242
  %new_lse.4.i245 = select i1 %cmp22.not.i239, i32 %new_lse.3.i237, i32 %or29.i243
  %call81 = tail call i32 @skb_mpls_update_lse(ptr noundef %skb, i32 noundef %new_lse.4.i245) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %tobool82.not = icmp eq i32 %call81, 0
  br i1 %tobool82.not, label %tcf_mpls_get_lse.exit.sw.epilog_crit_edge, label %tcf_mpls_get_lse.exit.do.body96_crit_edge

tcf_mpls_get_lse.exit.do.body96_crit_edge:        ; preds = %tcf_mpls_get_lse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body96

tcf_mpls_get_lse.exit.sw.epilog_crit_edge:        ; preds = %tcf_mpls_get_lse.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb85:                                          ; preds = %do.end28
  %call86 = tail call i32 @skb_mpls_dec_ttl(ptr noundef %skb) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %sw.bb85.sw.epilog_crit_edge, label %sw.bb85.do.body96_crit_edge

sw.bb85.do.body96_crit_edge:                      ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body96

sw.bb85.sw.epilog_crit_edge:                      ; preds = %sw.bb85
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb85.sw.epilog_crit_edge, %tcf_mpls_get_lse.exit.sw.epilog_crit_edge, %lor.end.sw.epilog_crit_edge, %land.end48.sw.epilog_crit_edge, %land.end.sw.epilog_crit_edge, %do.end28.sw.epilog_crit_edge
  %209 = ptrtoint ptr %tc_at_ingress.i to i32
  call void @__asan_loadN_noabort(i32 %209, i32 4)
  %bf.load.i248 = load i32, ptr %tc_at_ingress.i, align 2
  %210 = and i32 %bf.load.i248, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %210)
  %tobool.i249.not = icmp eq i32 %210, 0
  br i1 %tobool.i249.not, label %sw.epilog.cleanup_crit_edge, label %if.then91

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then91:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  %mac_len92 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %211 = ptrtoint ptr %mac_len92 to i32
  call void @__asan_load2_noabort(i32 %211)
  %212 = load i16, ptr %mac_len92, align 4
  %conv93 = zext i16 %212 to i32
  %call94 = call ptr @skb_pull_rcsum(ptr noundef %skb, i32 noundef %conv93) #8
  br label %cleanup

do.body96:                                        ; preds = %sw.bb85.do.body96_crit_edge, %tcf_mpls_get_lse.exit.do.body96_crit_edge, %pskb_may_pull.exit.do.body96_crit_edge, %if.end.i212.do.body96_crit_edge, %lor.end.do.body96_crit_edge, %skb_cow_head.exit.i.do.body96_crit_edge, %land.end48.do.body96_crit_edge, %land.end.do.body96_crit_edge
  %cpu_qstats = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 15
  %213 = ptrtoint ptr %cpu_qstats to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %cpu_qstats, align 4
  %215 = ptrtoint ptr %214 to i32
  %216 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %cpu, align 4
  %arrayidx106 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %217
  %218 = ptrtoint ptr %arrayidx106 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %arrayidx106, align 4
  %add107 = add i32 %219, %215
  %220 = inttoptr i32 %add107 to ptr
  %drops.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %220, i32 0, i32 2
  %221 = ptrtoint ptr %drops.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %drops.i, align 4
  %inc.i = add i32 %222, 1
  store i32 %inc.i, ptr %drops.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body96, %if.then91, %sw.epilog.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %do.body96 ], [ %89, %if.then91 ], [ %89, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_mpls_dump(ptr noundef %skb, ptr noundef %a, i32 noundef %bind, i32 noundef %ref) #2 align 64 {
entry:
  %tmp.i104 = alloca i16, align 2
  %tmp.i102 = alloca i8, align 1
  %tmp.i100 = alloca i8, align 1
  %tmp.i98 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  %opt = alloca %struct.tc_mpls, align 4
  %t = alloca %struct.tcf_t, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %opt) #8
  %2 = getelementptr inbounds %struct.tc_mpls, ptr %opt, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tc_mpls, ptr %opt, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tc_mpls, ptr %opt, i32 0, i32 3
  %5 = getelementptr inbounds %struct.tc_mpls, ptr %opt, i32 0, i32 4
  %6 = getelementptr inbounds %struct.tc_mpls, ptr %opt, i32 0, i32 5
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
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_refcnt, i32 noundef 4) #8
  %13 = ptrtoint ptr %tcfa_refcnt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %tcfa_refcnt, align 4
  %sub = sub i32 %14, %ref
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %sub, ptr %4, align 4
  %tcfa_bindcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_bindcnt, i32 noundef 4) #8
  %16 = ptrtoint ptr %tcfa_bindcnt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %tcfa_bindcnt, align 4
  %sub5 = sub i32 %17, %bind
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub5, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #8
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  %19 = call ptr @memset(ptr %t, i32 255, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #8
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %20 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tcfa_action, align 8
  %22 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %3, align 4
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call12 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true14

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

land.lhs.true14:                                  ; preds = %land.lhs.true
  %.b96 = load i1, ptr @tcf_mpls_dump.__warned, align 1
  br i1 %.b96, label %land.lhs.true14.do.end_crit_edge, label %if.then

land.lhs.true14.do.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tcf_mpls_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 331, ptr noundef nonnull @.str.4) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true14.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %mpls_p = getelementptr inbounds %struct.tcf_mpls, ptr %a, i32 0, i32 1
  %23 = ptrtoint ptr %mpls_p to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mpls_p, align 16
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %6, align 4
  %call17 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 24, ptr noundef nonnull %opt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %do.end.nla_put_failure_crit_edge

do.end.nla_put_failure_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end20:                                         ; preds = %do.end
  %tcfm_label = getelementptr inbounds %struct.tcf_mpls_params, ptr %24, i32 0, i32 1
  %28 = ptrtoint ptr %tcfm_label to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %tcfm_label, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %29)
  %cmp.not = icmp eq i32 %29, -1
  br i1 %cmp.not, label %if.end20.if.end26_crit_edge, label %land.lhs.true21

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true21:                                  ; preds = %if.end20
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %30 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tmp.i, align 4
  %call.i97 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i97)
  %tobool24.not = icmp eq i32 %call.i97, 0
  br i1 %tobool24.not, label %land.lhs.true21.if.end26_crit_edge, label %land.lhs.true21.nla_put_failure_crit_edge

land.lhs.true21.nla_put_failure_crit_edge:        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

land.lhs.true21.if.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true21.if.end26_crit_edge, %if.end20.if.end26_crit_edge
  %tcfm_tc = getelementptr inbounds %struct.tcf_mpls_params, ptr %24, i32 0, i32 2
  %31 = ptrtoint ptr %tcfm_tc to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %tcfm_tc, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %32)
  %cmp27.not = icmp eq i8 %32, -1
  br i1 %cmp27.not, label %if.end26.if.end34_crit_edge, label %land.lhs.true29

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

land.lhs.true29:                                  ; preds = %if.end26
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i98) #8
  %33 = ptrtoint ptr %tmp.i98 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %tmp.i98, align 1
  %call.i99 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 1, ptr noundef nonnull %tmp.i98) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i98) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool32.not = icmp eq i32 %call.i99, 0
  br i1 %tobool32.not, label %land.lhs.true29.if.end34_crit_edge, label %land.lhs.true29.nla_put_failure_crit_edge

land.lhs.true29.nla_put_failure_crit_edge:        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

land.lhs.true29.if.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true29.if.end34_crit_edge, %if.end26.if.end34_crit_edge
  %tcfm_ttl = getelementptr inbounds %struct.tcf_mpls_params, ptr %24, i32 0, i32 3
  %34 = ptrtoint ptr %tcfm_ttl to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %tcfm_ttl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool36.not = icmp eq i8 %35, 0
  br i1 %tobool36.not, label %if.end34.if.end42_crit_edge, label %land.lhs.true37

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.lhs.true37:                                  ; preds = %if.end34
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i100) #8
  %36 = ptrtoint ptr %tmp.i100 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %tmp.i100, align 1
  %call.i101 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 1, ptr noundef nonnull %tmp.i100) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i100) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool40.not = icmp eq i32 %call.i101, 0
  br i1 %tobool40.not, label %land.lhs.true37.if.end42_crit_edge, label %land.lhs.true37.nla_put_failure_crit_edge

land.lhs.true37.nla_put_failure_crit_edge:        ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

land.lhs.true37.if.end42_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true37.if.end42_crit_edge, %if.end34.if.end42_crit_edge
  %tcfm_bos = getelementptr inbounds %struct.tcf_mpls_params, ptr %24, i32 0, i32 4
  %37 = ptrtoint ptr %tcfm_bos to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %tcfm_bos, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %38)
  %cmp44.not = icmp eq i8 %38, -1
  br i1 %cmp44.not, label %if.end42.if.end51_crit_edge, label %land.lhs.true46

if.end42.if.end51_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

land.lhs.true46:                                  ; preds = %if.end42
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i102) #8
  %39 = ptrtoint ptr %tmp.i102 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %38, ptr %tmp.i102, align 1
  %call.i103 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 1, ptr noundef nonnull %tmp.i102) #8
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i102) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i103)
  %tobool49.not = icmp eq i32 %call.i103, 0
  br i1 %tobool49.not, label %land.lhs.true46.if.end51_crit_edge, label %land.lhs.true46.nla_put_failure_crit_edge

land.lhs.true46.nla_put_failure_crit_edge:        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

land.lhs.true46.if.end51_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.end51:                                         ; preds = %land.lhs.true46.if.end51_crit_edge, %if.end42.if.end51_crit_edge
  %tcfm_proto = getelementptr inbounds %struct.tcf_mpls_params, ptr %24, i32 0, i32 5
  %40 = ptrtoint ptr %tcfm_proto to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %tcfm_proto, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i104) #8
  %42 = ptrtoint ptr %tmp.i104 to i32
  call void @__asan_store2_noabort(i32 %42)
  store i16 %41, ptr %tmp.i104, align 2
  %call.i105 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tmp.i104) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i104) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i105)
  %tobool53.not = icmp eq i32 %call.i105, 0
  br i1 %tobool53.not, label %if.end55, label %if.end51.nla_put_failure_crit_edge

if.end51.nla_put_failure_crit_edge:               ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end55:                                         ; preds = %if.end51
  %tcfa_tm = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7
  call fastcc void @tcf_tm_dump(ptr noundef nonnull %t, ptr noundef %tcfa_tm)
  %call57 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 32, ptr noundef nonnull %t, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %if.end60, label %if.end55.nla_put_failure_crit_edge

if.end55.nla_put_failure_crit_edge:               ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end60:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %43 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end55.nla_put_failure_crit_edge, %if.end51.nla_put_failure_crit_edge, %land.lhs.true46.nla_put_failure_crit_edge, %land.lhs.true37.nla_put_failure_crit_edge, %land.lhs.true29.nla_put_failure_crit_edge, %land.lhs.true21.nla_put_failure_crit_edge, %do.end.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #8
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %45 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %46, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !102

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %48 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end60
  %retval.0 = phi i32 [ %44, %if.end60 ], [ -90, %nla_put_failure.cleanup_crit_edge ], [ -90, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #8
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %opt) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_mpls_cleanup(ptr nocapture noundef readonly %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %mpls_p = getelementptr inbounds %struct.tcf_mpls, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %mpls_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mpls_p, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.end6

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %rcu = getelementptr inbounds %struct.tcf_mpls_params, ptr %1, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 16 to ptr)) #8
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_mpls_search(ptr noundef %net, ptr noundef %a, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mpls_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_idr_search(ptr noundef %call, ptr noundef %a, i32 noundef %index) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_mpls_init(ptr noundef %net, ptr noundef %nla, ptr noundef %est, ptr noundef %a, ptr noundef %tp, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [9 x ptr], align 4
  %goto_ch = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mpls_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %and = and i32 %flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %tb) #8
  %1 = call ptr @memset(ptr %tb, i32 255, i32 36)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goto_ch) #8
  %2 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %goto_ch, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  %tobool1.not = icmp eq ptr %nla, null
  br i1 %tobool1.not, label %do.body, label %if.end4

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_mpls_init.__msg) #8
  %tobool2.not = icmp eq ptr %extack, null
  br i1 %tobool2.not, label %do.body.cleanup_crit_edge, label %if.then3

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %3 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @tcf_mpls_init.__msg, ptr %extack, align 4
  br label %cleanup

if.end4:                                          ; preds = %entry
  %nla_type.i = getelementptr inbounds %struct.nlattr, ptr %nla, i32 0, i32 1
  %4 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %nla_type.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %5)
  %tobool.not.i = icmp sgt i16 %5, -1
  br i1 %tobool.not.i, label %do.body.i, label %nla_parse_nested.exit

do.body.i:                                        ; preds = %if.end4
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @nla_parse_nested.__msg) #8
  %tobool1.not.i = icmp eq ptr %extack, null
  br i1 %tobool1.not.i, label %do.body.i.cleanup_crit_edge, label %if.then2.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @nla_parse_nested.__msg, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %7 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %nla, ptr %bad_attr.i, align 4
  %policy3.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %8 = ptrtoint ptr %policy3.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %policy3.i, align 4
  br label %cleanup

nla_parse_nested.exit:                            ; preds = %if.end4
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %9 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %10 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call6.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 8, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @mpls_policy, i32 noundef 31, ptr noundef %extack) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp = icmp slt i32 %call6.i, 0
  br i1 %cmp, label %nla_parse_nested.exit.cleanup_crit_edge, label %if.end7

nla_parse_nested.exit.cleanup_crit_edge:          ; preds = %nla_parse_nested.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %nla_parse_nested.exit
  %arrayidx = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 2
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx, align 4
  %tobool8.not = icmp eq ptr %12, null
  br i1 %tobool8.not, label %do.body10, label %if.end18

do.body10:                                        ; preds = %if.end7
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_mpls_init.__msg.10) #8
  %tobool12.not = icmp eq ptr %extack, null
  br i1 %tobool12.not, label %do.body10.cleanup_crit_edge, label %if.then13

do.body10.cleanup_crit_edge:                      ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then13:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @tcf_mpls_init.__msg.10, ptr %extack, align 4
  br label %cleanup

if.end18:                                         ; preds = %if.end7
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  %16 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %index, align 4
  %m_action = getelementptr i8, ptr %12, i32 24
  %17 = ptrtoint ptr %m_action to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m_action, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %18, label %do.body140 [
    i32 1, label %sw.bb
    i32 4, label %sw.bb67
    i32 2, label %if.end18.sw.bb92_crit_edge
    i32 5, label %if.end18.sw.bb92_crit_edge416
    i32 3, label %sw.bb127
  ]

if.end18.sw.bb92_crit_edge416:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb92

if.end18.sw.bb92_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb92

sw.bb:                                            ; preds = %if.end18
  %arrayidx22 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 4
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx22, align 4
  %tobool23.not = icmp eq ptr %21, null
  br i1 %tobool23.not, label %do.body25, label %if.end33

do.body25:                                        ; preds = %sw.bb
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_mpls_init.__msg.11) #8
  %tobool27.not = icmp eq ptr %extack, null
  br i1 %tobool27.not, label %do.body25.cleanup_crit_edge, label %if.then28

do.body25.cleanup_crit_edge:                      ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then28:                                        ; preds = %do.body25
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @tcf_mpls_init.__msg.11, ptr %extack, align 4
  br label %cleanup

if.end33:                                         ; preds = %sw.bb
  %add.ptr.i.i407 = getelementptr i8, ptr %21, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i407 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i.i407, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1535, i16 %24)
  %cmp.i = icmp ugt i16 %24, 1535
  br i1 %cmp.i, label %if.end46, label %do.body38

do.body38:                                        ; preds = %if.end33
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_mpls_init.__msg.12) #8
  %tobool40.not = icmp eq ptr %extack, null
  br i1 %tobool40.not, label %do.body38.cleanup_crit_edge, label %if.then41

do.body38.cleanup_crit_edge:                      ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then41:                                        ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @tcf_mpls_init.__msg.12, ptr %extack, align 4
  br label %cleanup

if.end46:                                         ; preds = %if.end33
  %arrayidx47 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 5
  %26 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx47, align 4
  %tobool48.not = icmp eq ptr %27, null
  br i1 %tobool48.not, label %lor.lhs.false, label %if.end46.do.body58_crit_edge

if.end46.do.body58_crit_edge:                     ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body58

lor.lhs.false:                                    ; preds = %if.end46
  %arrayidx49 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 7
  %28 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx49, align 4
  %tobool50.not = icmp eq ptr %29, null
  br i1 %tobool50.not, label %lor.lhs.false51, label %lor.lhs.false.do.body58_crit_edge

lor.lhs.false.do.body58_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body58

lor.lhs.false51:                                  ; preds = %lor.lhs.false
  %arrayidx52 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 6
  %30 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx52, align 4
  %tobool53.not = icmp eq ptr %31, null
  br i1 %tobool53.not, label %lor.lhs.false54, label %lor.lhs.false51.do.body58_crit_edge

lor.lhs.false51.do.body58_crit_edge:              ; preds = %lor.lhs.false51
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body58

lor.lhs.false54:                                  ; preds = %lor.lhs.false51
  %arrayidx55 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 8
  %32 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx55, align 4
  %tobool56.not = icmp eq ptr %33, null
  br i1 %tobool56.not, label %lor.lhs.false54.sw.epilog_crit_edge, label %lor.lhs.false54.do.body58_crit_edge

lor.lhs.false54.do.body58_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body58

lor.lhs.false54.sw.epilog_crit_edge:              ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body58:                                        ; preds = %lor.lhs.false54.do.body58_crit_edge, %lor.lhs.false51.do.body58_crit_edge, %lor.lhs.false.do.body58_crit_edge, %if.end46.do.body58_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_mpls_init.__msg.13) #8
  %tobool60.not = icmp eq ptr %extack, null
  br i1 %tobool60.not, label %do.body58.cleanup_crit_edge, label %if.then61

do.body58.cleanup_crit_edge:                      ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then61:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @tcf_mpls_init.__msg.13, ptr %extack, align 4
  br label %cleanup

sw.bb67:                                          ; preds = %if.end18
  %arrayidx68 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 4
  %35 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx68, align 4
  %tobool69.not = icmp eq ptr %36, null
  br i1 %tobool69.not, label %lor.lhs.false70, label %sw.bb67.do.body83_crit_edge

sw.bb67.do.body83_crit_edge:                      ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body83

lor.lhs.false70:                                  ; preds = %sw.bb67
  %arrayidx71 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 5
  %37 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx71, align 4
  %tobool72.not = icmp eq ptr %38, null
  br i1 %tobool72.not, label %lor.lhs.false73, label %lor.lhs.false70.do.body83_crit_edge

lor.lhs.false70.do.body83_crit_edge:              ; preds = %lor.lhs.false70
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body83

lor.lhs.false73:                                  ; preds = %lor.lhs.false70
  %arrayidx74 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 7
  %39 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx74, align 4
  %tobool75.not = icmp eq ptr %40, null
  br i1 %tobool75.not, label %lor.lhs.false76, label %lor.lhs.false73.do.body83_crit_edge

lor.lhs.false73.do.body83_crit_edge:              ; preds = %lor.lhs.false73
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body83

lor.lhs.false76:                                  ; preds = %lor.lhs.false73
  %arrayidx77 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 6
  %41 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx77, align 4
  %tobool78.not = icmp eq ptr %42, null
  br i1 %tobool78.not, label %lor.lhs.false79, label %lor.lhs.false76.do.body83_crit_edge

lor.lhs.false76.do.body83_crit_edge:              ; preds = %lor.lhs.false76
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body83

lor.lhs.false79:                                  ; preds = %lor.lhs.false76
  %arrayidx80 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 8
  %43 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %arrayidx80, align 4
  %tobool81.not = icmp eq ptr %44, null
  br i1 %tobool81.not, label %lor.lhs.false79.sw.epilog_crit_edge, label %lor.lhs.false79.do.body83_crit_edge

lor.lhs.false79.do.body83_crit_edge:              ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body83

lor.lhs.false79.sw.epilog_crit_edge:              ; preds = %lor.lhs.false79
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body83:                                        ; preds = %lor.lhs.false79.do.body83_crit_edge, %lor.lhs.false76.do.body83_crit_edge, %lor.lhs.false73.do.body83_crit_edge, %lor.lhs.false70.do.body83_crit_edge, %sw.bb67.do.body83_crit_edge
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_mpls_init.__msg.14) #8
  %tobool85.not = icmp eq ptr %extack, null
  br i1 %tobool85.not, label %do.body83.cleanup_crit_edge, label %if.then86

do.body83.cleanup_crit_edge:                      ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then86:                                        ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @tcf_mpls_init.__msg.14, ptr %extack, align 4
  br label %cleanup

sw.bb92:                                          ; preds = %if.end18.sw.bb92_crit_edge, %if.end18.sw.bb92_crit_edge416
  %arrayidx93 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 5
  %46 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx93, align 4
  %tobool94.not = icmp eq ptr %47, null
  br i1 %tobool94.not, label %do.body96, label %if.end104

do.body96:                                        ; preds = %sw.bb92
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_mpls_init.__msg.15) #8
  %tobool98.not = icmp eq ptr %extack, null
  br i1 %tobool98.not, label %do.body96.cleanup_crit_edge, label %if.then99

do.body96.cleanup_crit_edge:                      ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then99:                                        ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @tcf_mpls_init.__msg.15, ptr %extack, align 4
  br label %cleanup

if.end104:                                        ; preds = %sw.bb92
  %arrayidx105 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 4
  %49 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %arrayidx105, align 4
  %tobool106.not = icmp eq ptr %50, null
  br i1 %tobool106.not, label %if.end104.if.end119_crit_edge, label %land.lhs.true

if.end104.if.end119_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

land.lhs.true:                                    ; preds = %if.end104
  %add.ptr.i.i408 = getelementptr i8, ptr %50, i32 4
  %51 = ptrtoint ptr %add.ptr.i.i408 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %add.ptr.i.i408, align 2
  %53 = add i16 %52, 30649
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %53)
  %54 = icmp ult i16 %53, 2
  br i1 %54, label %land.lhs.true.if.end119_crit_edge, label %do.body111

land.lhs.true.if.end119_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end119

do.body111:                                       ; preds = %land.lhs.true
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_mpls_init.__msg.16) #8
  %tobool113.not = icmp eq ptr %extack, null
  br i1 %tobool113.not, label %do.body111.cleanup_crit_edge, label %if.then114

do.body111.cleanup_crit_edge:                     ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then114:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #10
  %55 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @tcf_mpls_init.__msg.16, ptr %extack, align 4
  br label %cleanup

if.end119:                                        ; preds = %land.lhs.true.if.end119_crit_edge, %if.end104.if.end119_crit_edge
  %arrayidx120 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 7
  %56 = ptrtoint ptr %arrayidx120 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx120, align 4
  %tobool121.not = icmp eq ptr %57, null
  br i1 %tobool121.not, label %if.then122, label %if.end119.sw.epilog_crit_edge

if.end119.sw.epilog_crit_edge:                    ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

if.then122:                                       ; preds = %if.end119
  call void @__sanitizer_cov_trace_pc() #10
  %default_ttl = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 49, i32 1
  %58 = ptrtoint ptr %default_ttl to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %default_ttl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %tobool123.not = icmp eq i32 %59, 0
  %.op = and i32 %59, 255
  %phi.cast = select i1 %tobool123.not, i32 255, i32 %.op
  br label %sw.epilog

sw.bb127:                                         ; preds = %if.end18
  %arrayidx128 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 4
  %60 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx128, align 4
  %tobool129.not = icmp eq ptr %61, null
  br i1 %tobool129.not, label %sw.bb127.sw.epilog_crit_edge, label %do.body131

sw.bb127.sw.epilog_crit_edge:                     ; preds = %sw.bb127
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body131:                                       ; preds = %sw.bb127
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_mpls_init.__msg.17) #8
  %tobool133.not = icmp eq ptr %extack, null
  br i1 %tobool133.not, label %do.body131.cleanup_crit_edge, label %if.then134

do.body131.cleanup_crit_edge:                     ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then134:                                       ; preds = %do.body131
  call void @__sanitizer_cov_trace_pc() #10
  %62 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @tcf_mpls_init.__msg.17, ptr %extack, align 4
  br label %cleanup

do.body140:                                       ; preds = %if.end18
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_mpls_init.__msg.18) #8
  %tobool142.not = icmp eq ptr %extack, null
  br i1 %tobool142.not, label %do.body140.cleanup_crit_edge, label %if.then143

do.body140.cleanup_crit_edge:                     ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then143:                                       ; preds = %do.body140
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @tcf_mpls_init.__msg.18, ptr %extack, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb127.sw.epilog_crit_edge, %if.then122, %if.end119.sw.epilog_crit_edge, %lor.lhs.false79.sw.epilog_crit_edge, %lor.lhs.false54.sw.epilog_crit_edge
  %mpls_ttl.0 = phi i32 [ 0, %sw.bb127.sw.epilog_crit_edge ], [ 0, %if.end119.sw.epilog_crit_edge ], [ %phi.cast, %if.then122 ], [ 0, %lor.lhs.false79.sw.epilog_crit_edge ], [ 0, %lor.lhs.false54.sw.epilog_crit_edge ]
  %and.lobit = lshr exact i32 %and, 17
  %call150 = call i32 @tcf_idr_check_alloc(ptr noundef %call, ptr noundef nonnull %index, ptr noundef %a, i32 noundef %and.lobit) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %cmp151 = icmp slt i32 %call150, 0
  br i1 %cmp151, label %sw.epilog.cleanup_crit_edge, label %if.end154

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end154:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call150)
  %tobool155.not = icmp eq i32 %call150, 0
  %tobool.not = xor i1 %tobool, true
  %brmerge = or i1 %tobool155.not, %tobool.not
  br i1 %brmerge, label %if.end163, label %if.end154.cleanup_crit_edge

if.end154.cleanup_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end163:                                        ; preds = %if.end154
  br i1 %tobool155.not, label %if.then165, label %if.else

if.then165:                                       ; preds = %if.end163
  %64 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %index, align 4
  %call168 = call i32 @tcf_idr_create(ptr noundef %call, i32 noundef %65, ptr noundef %est, ptr noundef %a, ptr noundef nonnull @act_mpls_ops, i32 noundef %and.lobit, i1 noundef zeroext true, i32 noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call168)
  %tobool169.not = icmp eq i32 %call168, 0
  br i1 %tobool169.not, label %if.then165.if.end178_crit_edge, label %if.then170

if.then165.if.end178_crit_edge:                   ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end178

if.then170:                                       ; preds = %if.then165
  call void @__sanitizer_cov_trace_pc() #10
  %66 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %67) #8
  br label %cleanup

if.else:                                          ; preds = %if.end163
  %and172 = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and172)
  %tobool173.not = icmp eq i32 %and172, 0
  br i1 %tobool173.not, label %if.then174, label %if.else.if.end178_crit_edge

if.else.if.end178_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end178

if.then174:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %68 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %a, align 4
  %call176 = call i32 @tcf_idr_release(ptr noundef %69, i1 noundef zeroext %tobool) #8
  br label %cleanup

if.end178:                                        ; preds = %if.else.if.end178_crit_edge, %if.then165.if.end178_crit_edge
  %ret.0 = phi i32 [ 0, %if.else.if.end178_crit_edge ], [ 1, %if.then165.if.end178_crit_edge ]
  %action = getelementptr i8, ptr %12, i32 12
  %70 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %action, align 4
  %call179 = call i32 @tcf_action_check_ctrlact(i32 noundef %71, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call179)
  %cmp180 = icmp slt i32 %call179, 0
  br i1 %cmp180, label %if.end178.release_idr_crit_edge, label %if.end183

if.end178.release_idr_crit_edge:                  ; preds = %if.end178
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_idr

if.end183:                                        ; preds = %if.end178
  %72 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %a, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %74 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %74, i32 noundef 3520, i32 noundef 24) #11
  %tobool185.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool185.not, label %if.then186, label %if.end187

if.then186:                                       ; preds = %if.end183
  %75 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %goto_ch, align 4
  %tobool313.not = icmp eq ptr %76, null
  br i1 %tobool313.not, label %if.then186.release_idr_crit_edge, label %if.then314

if.then186.release_idr_crit_edge:                 ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_idr

if.end187:                                        ; preds = %if.end183
  %77 = ptrtoint ptr %m_action to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %m_action, align 4
  %79 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %78, ptr %call7.i.i, align 8
  %arrayidx189 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 5
  %80 = ptrtoint ptr %arrayidx189 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx189, align 4
  %tobool190.not = icmp eq ptr %81, null
  br i1 %tobool190.not, label %if.end187.cond.end195_crit_edge, label %cond.true191

if.end187.cond.end195_crit_edge:                  ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end195

cond.true191:                                     ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i409 = getelementptr i8, ptr %81, i32 4
  %82 = ptrtoint ptr %add.ptr.i.i409 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %add.ptr.i.i409, align 4
  br label %cond.end195

cond.end195:                                      ; preds = %cond.true191, %if.end187.cond.end195_crit_edge
  %cond196 = phi i32 [ %83, %cond.true191 ], [ -1, %if.end187.cond.end195_crit_edge ]
  %tcfm_label = getelementptr inbounds %struct.tcf_mpls_params, ptr %call7.i.i, i32 0, i32 1
  %84 = ptrtoint ptr %tcfm_label to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %cond196, ptr %tcfm_label, align 4
  %arrayidx197 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 6
  %85 = ptrtoint ptr %arrayidx197 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %arrayidx197, align 4
  %tobool198.not = icmp eq ptr %86, null
  br i1 %tobool198.not, label %cond.end195.cond.end204_crit_edge, label %cond.true199

cond.end195.cond.end204_crit_edge:                ; preds = %cond.end195
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end204

cond.true199:                                     ; preds = %cond.end195
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i410 = getelementptr i8, ptr %86, i32 4
  %87 = ptrtoint ptr %add.ptr.i.i410 to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %add.ptr.i.i410, align 1
  br label %cond.end204

cond.end204:                                      ; preds = %cond.true199, %cond.end195.cond.end204_crit_edge
  %cond205 = phi i8 [ %88, %cond.true199 ], [ -1, %cond.end195.cond.end204_crit_edge ]
  %tcfm_tc = getelementptr inbounds %struct.tcf_mpls_params, ptr %call7.i.i, i32 0, i32 2
  %89 = ptrtoint ptr %tcfm_tc to i32
  call void @__asan_store1_noabort(i32 %89)
  store i8 %cond205, ptr %tcfm_tc, align 8
  %arrayidx207 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 7
  %90 = ptrtoint ptr %arrayidx207 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %arrayidx207, align 4
  %tobool208.not = icmp eq ptr %91, null
  br i1 %tobool208.not, label %cond.end204.cond.end215_crit_edge, label %cond.true209

cond.end204.cond.end215_crit_edge:                ; preds = %cond.end204
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end215

cond.true209:                                     ; preds = %cond.end204
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i411 = getelementptr i8, ptr %91, i32 4
  %92 = ptrtoint ptr %add.ptr.i.i411 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %add.ptr.i.i411, align 1
  %conv212 = zext i8 %93 to i32
  br label %cond.end215

cond.end215:                                      ; preds = %cond.true209, %cond.end204.cond.end215_crit_edge
  %cond216 = phi i32 [ %conv212, %cond.true209 ], [ %mpls_ttl.0, %cond.end204.cond.end215_crit_edge ]
  %conv217 = trunc i32 %cond216 to i8
  %tcfm_ttl = getelementptr inbounds %struct.tcf_mpls_params, ptr %call7.i.i, i32 0, i32 3
  %94 = ptrtoint ptr %tcfm_ttl to i32
  call void @__asan_store1_noabort(i32 %94)
  store i8 %conv217, ptr %tcfm_ttl, align 1
  %arrayidx218 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 8
  %95 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %arrayidx218, align 4
  %tobool219.not = icmp eq ptr %96, null
  br i1 %tobool219.not, label %cond.end215.cond.end225_crit_edge, label %cond.true220

cond.end215.cond.end225_crit_edge:                ; preds = %cond.end215
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end225

cond.true220:                                     ; preds = %cond.end215
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i412 = getelementptr i8, ptr %96, i32 4
  %97 = ptrtoint ptr %add.ptr.i.i412 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %add.ptr.i.i412, align 1
  br label %cond.end225

cond.end225:                                      ; preds = %cond.true220, %cond.end215.cond.end225_crit_edge
  %cond226 = phi i8 [ %98, %cond.true220 ], [ -1, %cond.end215.cond.end225_crit_edge ]
  %tcfm_bos = getelementptr inbounds %struct.tcf_mpls_params, ptr %call7.i.i, i32 0, i32 4
  %99 = ptrtoint ptr %tcfm_bos to i32
  call void @__asan_store1_noabort(i32 %99)
  store i8 %cond226, ptr %tcfm_bos, align 2
  %arrayidx228 = getelementptr inbounds [9 x ptr], ptr %tb, i32 0, i32 4
  %100 = ptrtoint ptr %arrayidx228 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx228, align 4
  %tobool229.not = icmp eq ptr %101, null
  br i1 %tobool229.not, label %cond.end225.cond.end235_crit_edge, label %cond.true230

cond.end225.cond.end235_crit_edge:                ; preds = %cond.end225
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end235

cond.true230:                                     ; preds = %cond.end225
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i413 = getelementptr i8, ptr %101, i32 4
  %102 = ptrtoint ptr %add.ptr.i.i413 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %add.ptr.i.i413, align 2
  br label %cond.end235

cond.end235:                                      ; preds = %cond.true230, %cond.end225.cond.end235_crit_edge
  %cond236 = phi i16 [ %103, %cond.true230 ], [ -30649, %cond.end225.cond.end235_crit_edge ]
  %tcfm_proto = getelementptr inbounds %struct.tcf_mpls_params, ptr %call7.i.i, i32 0, i32 5
  %104 = ptrtoint ptr %tcfm_proto to i32
  call void @__asan_store2_noabort(i32 %104)
  store i16 %cond236, ptr %tcfm_proto, align 4
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %73, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #8
  %105 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %a, align 4
  %107 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %action, align 4
  %109 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %goto_ch, align 4
  %call239 = call ptr @tcf_action_set_ctrlact(ptr noundef %106, i32 noundef %108, ptr noundef %110) #8
  %111 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %111)
  store ptr %call239, ptr %goto_ch, align 4
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %73, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool244.not = icmp eq i32 %call.i, 0
  br i1 %tobool244.not, label %land.lhs.true245, label %cond.end235.do.end253_crit_edge

cond.end235.do.end253_crit_edge:                  ; preds = %cond.end235
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end253

land.lhs.true245:                                 ; preds = %cond.end235
  %call246 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call246)
  %tobool247.not = icmp eq i32 %call246, 0
  br i1 %tobool247.not, label %land.lhs.true245.do.end253_crit_edge, label %land.lhs.true248

land.lhs.true245.do.end253_crit_edge:             ; preds = %land.lhs.true245
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end253

land.lhs.true248:                                 ; preds = %land.lhs.true245
  %.b406 = load i1, ptr @tcf_mpls_init.__warned, align 1
  br i1 %.b406, label %land.lhs.true248.do.end253_crit_edge, label %if.then250

land.lhs.true248.do.end253_crit_edge:             ; preds = %land.lhs.true248
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end253

if.then250:                                       ; preds = %land.lhs.true248
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tcf_mpls_init.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 289, ptr noundef nonnull @.str.4) #8
  br label %do.end253

do.end253:                                        ; preds = %if.then250, %land.lhs.true248.do.end253_crit_edge, %land.lhs.true245.do.end253_crit_edge, %cond.end235.do.end253_crit_edge
  %mpls_p = getelementptr inbounds %struct.tcf_mpls, ptr %73, i32 0, i32 1
  %112 = ptrtoint ptr %mpls_p to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %mpls_p, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !111
  %114 = ptrtoint ptr %mpls_p to i32
  call void @__asan_store4_noabort(i32 %114)
  store volatile ptr %call7.i.i, ptr %mpls_p, align 16
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #8
  %115 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %goto_ch, align 4
  %tobool298.not = icmp eq ptr %116, null
  br i1 %tobool298.not, label %do.end253.if.end300_crit_edge, label %if.then299

do.end253.if.end300_crit_edge:                    ; preds = %do.end253
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end300

if.then299:                                       ; preds = %do.end253
  call void @__sanitizer_cov_trace_pc() #10
  call void @tcf_chain_put_by_act(ptr noundef nonnull %116) #8
  br label %if.end300

if.end300:                                        ; preds = %if.then299, %do.end253.if.end300_crit_edge
  %tobool301.not = icmp eq ptr %113, null
  br i1 %tobool301.not, label %if.end300.cleanup_crit_edge, label %do.end308

if.end300.cleanup_crit_edge:                      ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end308:                                        ; preds = %if.end300
  call void @__sanitizer_cov_trace_pc() #10
  %rcu = getelementptr inbounds %struct.tcf_mpls_params, ptr %113, i32 0, i32 6
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 16 to ptr)) #8
  br label %cleanup

if.then314:                                       ; preds = %if.then186
  call void @__sanitizer_cov_trace_pc() #10
  call void @tcf_chain_put_by_act(ptr noundef nonnull %76) #8
  br label %release_idr

release_idr:                                      ; preds = %if.then314, %if.then186.release_idr_crit_edge, %if.end178.release_idr_crit_edge
  %err.0 = phi i32 [ %call179, %if.end178.release_idr_crit_edge ], [ -12, %if.then314 ], [ -12, %if.then186.release_idr_crit_edge ]
  %117 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %a, align 4
  %call317 = call i32 @tcf_idr_release(ptr noundef %118, i1 noundef zeroext %tobool) #8
  br label %cleanup

cleanup:                                          ; preds = %release_idr, %do.end308, %if.end300.cleanup_crit_edge, %if.then174, %if.then170, %if.end154.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then143, %do.body140.cleanup_crit_edge, %if.then134, %do.body131.cleanup_crit_edge, %if.then114, %do.body111.cleanup_crit_edge, %if.then99, %do.body96.cleanup_crit_edge, %if.then86, %do.body83.cleanup_crit_edge, %if.then61, %do.body58.cleanup_crit_edge, %if.then41, %do.body38.cleanup_crit_edge, %if.then28, %do.body25.cleanup_crit_edge, %if.then13, %do.body10.cleanup_crit_edge, %nla_parse_nested.exit.cleanup_crit_edge, %if.then2.i, %do.body.i.cleanup_crit_edge, %if.then3, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %release_idr ], [ -17, %if.then174 ], [ %call168, %if.then170 ], [ -22, %if.then3 ], [ -22, %do.body.cleanup_crit_edge ], [ %call6.i, %nla_parse_nested.exit.cleanup_crit_edge ], [ -22, %if.then13 ], [ -22, %do.body10.cleanup_crit_edge ], [ -22, %if.then28 ], [ -22, %do.body25.cleanup_crit_edge ], [ -22, %if.then41 ], [ -22, %do.body38.cleanup_crit_edge ], [ -22, %if.then61 ], [ -22, %do.body58.cleanup_crit_edge ], [ -22, %if.then86 ], [ -22, %do.body83.cleanup_crit_edge ], [ -22, %if.then99 ], [ -22, %do.body96.cleanup_crit_edge ], [ -93, %if.then114 ], [ -93, %do.body111.cleanup_crit_edge ], [ -22, %if.then134 ], [ -22, %do.body131.cleanup_crit_edge ], [ -22, %if.then143 ], [ -22, %do.body140.cleanup_crit_edge ], [ %call150, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end154.cleanup_crit_edge ], [ %ret.0, %do.end308 ], [ %ret.0, %if.end300.cleanup_crit_edge ], [ -22, %if.then2.i ], [ -22, %do.body.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goto_ch) #8
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %tb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_mpls_walker(ptr noundef %net, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mpls_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_generic_walker(ptr noundef %call, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_mpls_offload_act_setup(ptr noundef %act, ptr nocapture noundef writeonly %entry_data, ptr nocapture noundef writeonly %index_inc, i1 noundef zeroext %bind) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @tcf_mpls_action(ptr noundef %act)
  br i1 %bind, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %0 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %call, label %if.then.return_crit_edge [
    i32 2, label %sw.bb
    i32 1, label %sw.bb7
    i32 3, label %sw.bb11
  ]

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb:                                            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 25, ptr %entry_data, align 8
  %call2 = tail call fastcc zeroext i16 @tcf_mpls_proto(ptr noundef %act)
  %2 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %proto = getelementptr inbounds %struct.anon.138, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %proto to i32
  call void @__asan_store2_noabort(i32 %3)
  store i16 %call2, ptr %proto, align 4
  %call3 = tail call fastcc i32 @tcf_mpls_label(ptr noundef %act)
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %call3, ptr %2, align 8
  %call4 = tail call fastcc zeroext i8 @tcf_mpls_tc(ptr noundef %act)
  %tc = getelementptr inbounds %struct.anon.138, ptr %2, i32 0, i32 2
  %5 = ptrtoint ptr %tc to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %call4, ptr %tc, align 2
  %call5 = tail call fastcc zeroext i8 @tcf_mpls_bos(ptr noundef %act)
  %bos = getelementptr inbounds %struct.anon.138, ptr %2, i32 0, i32 3
  %6 = ptrtoint ptr %bos to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %call5, ptr %bos, align 1
  %call6 = tail call fastcc zeroext i8 @tcf_mpls_ttl(ptr noundef %act)
  %ttl = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5, i32 0, i32 1
  %7 = ptrtoint ptr %ttl to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %call6, ptr %ttl, align 8
  br label %cleanup.thread

sw.bb7:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 26, ptr %entry_data, align 8
  %call9 = tail call fastcc zeroext i16 @tcf_mpls_proto(ptr noundef %act)
  %9 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %call9, ptr %9, align 8
  br label %cleanup.thread

sw.bb11:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 27, ptr %entry_data, align 8
  %call13 = tail call fastcc i32 @tcf_mpls_label(ptr noundef %act)
  %12 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call13, ptr %12, align 8
  %call15 = tail call fastcc zeroext i8 @tcf_mpls_tc(ptr noundef %act)
  %tc16 = getelementptr inbounds %struct.anon.140, ptr %12, i32 0, i32 1
  %14 = ptrtoint ptr %tc16 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %call15, ptr %tc16, align 4
  %call17 = tail call fastcc zeroext i8 @tcf_mpls_bos(ptr noundef %act)
  %bos18 = getelementptr inbounds %struct.anon.140, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %bos18 to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %call17, ptr %bos18, align 1
  %call19 = tail call fastcc zeroext i8 @tcf_mpls_ttl(ptr noundef %act)
  %ttl20 = getelementptr inbounds %struct.anon.140, ptr %12, i32 0, i32 3
  %16 = ptrtoint ptr %ttl20 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %call19, ptr %ttl20, align 2
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %sw.bb11, %sw.bb7, %sw.bb
  %17 = ptrtoint ptr %index_inc to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %index_inc, align 4
  br label %return

if.else:                                          ; preds = %entry
  %18 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %call, label %if.else.return_crit_edge [
    i32 2, label %sw.bb22
    i32 1, label %sw.bb24
    i32 3, label %sw.bb26
  ]

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

sw.bb22:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %id23 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %19 = ptrtoint ptr %id23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 25, ptr %id23, align 8
  br label %return

sw.bb24:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %id25 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %20 = ptrtoint ptr %id25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 26, ptr %id25, align 8
  br label %return

sw.bb26:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %id27 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %21 = ptrtoint ptr %id27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 27, ptr %id27, align 8
  br label %return

return:                                           ; preds = %sw.bb26, %sw.bb24, %sw.bb22, %if.else.return_crit_edge, %cleanup.thread, %if.then.return_crit_edge
  %retval.2 = phi i32 [ -95, %if.then.return_crit_edge ], [ -95, %if.else.return_crit_edge ], [ 0, %cleanup.thread ], [ 0, %sw.bb26 ], [ 0, %sw.bb24 ], [ 0, %sw.bb22 ]
  ret i32 %retval.2
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
declare dso_local i32 @skb_mpls_pop(ptr noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_mpls_push(ptr noundef, i32 noundef, i16 noundef zeroext, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_mpls_update_lse(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_mpls_dec_ttl(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull_rcsum(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcf_tm_dump(ptr nocapture noundef writeonly %dtm, ptr nocapture noundef readonly %stm) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %1 = ptrtoint ptr %stm to i32
  call void @__asan_load8_noabort(i32 %1)
  %2 = load i64, ptr %stm, align 8
  %3 = trunc i64 %2 to i32
  %conv1 = sub i32 %0, %3
  %call = tail call i32 @jiffies_to_clock_t(i32 noundef %conv1) #8
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
  %call7 = tail call i32 @jiffies_to_clock_t(i32 noundef %conv6) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %13 = trunc i64 %11 to i32
  %conv13 = sub i32 %12, %13
  %call14 = tail call i32 @jiffies_to_clock_t(i32 noundef %conv13) #8
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
  %call18 = tail call i32 @jiffies_to_clock_t(i32 noundef %conv17) #8
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
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #8
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 45, ptr noundef nonnull @.str.1) #8
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !113
  %8 = tail call i32 @llvm.read_register.i32(metadata !92) #8
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

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #6 align 64 {
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
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #6 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tcf_action_set_ctrlact(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_chain_put_by_act(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @valid_label(ptr nocapture noundef readonly %attr, ptr noundef writeonly %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %attr, i32 4
  %0 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048575, i32 %1)
  %tobool.not = icmp ugt i32 %1, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %1)
  %cmp = icmp eq i32 %1, 3
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @valid_label.__msg) #8
  %tobool1.not = icmp eq ptr %extack, null
  br i1 %tobool1.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %2 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @valid_label.__msg, ptr %extack, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then2, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then2 ], [ -22, %do.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_generic_walker(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcf_mpls_action(ptr noundef %a) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %mpls_p = getelementptr inbounds %struct.tcf_mpls, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %mpls_p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mpls_p, align 16
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
  %.b10 = load i1, ptr @tcf_mpls_action.__warned, align 1
  br i1 %.b10, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tcf_mpls_action.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 44, ptr noundef nonnull @.str.1) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i11, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %do.end7
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !113
  %8 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i.i18 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i32 %7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i16 @tcf_mpls_proto(ptr noundef %a) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %mpls_p = getelementptr inbounds %struct.tcf_mpls, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %mpls_p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mpls_p, align 16
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
  %.b10 = load i1, ptr @tcf_mpls_proto.__warned, align 1
  br i1 %.b10, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tcf_mpls_proto.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 55, ptr noundef nonnull @.str.1) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tcfm_proto9 = getelementptr inbounds %struct.tcf_mpls_params, ptr %5, i32 0, i32 5
  %6 = ptrtoint ptr %tcfm_proto9 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %tcfm_proto9, align 4
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i11, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %do.end7
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !113
  %8 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i.i18 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i16 %7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcf_mpls_label(ptr noundef %a) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %mpls_p = getelementptr inbounds %struct.tcf_mpls, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %mpls_p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mpls_p, align 16
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
  %.b10 = load i1, ptr @tcf_mpls_label.__warned, align 1
  br i1 %.b10, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tcf_mpls_label.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 66, ptr noundef nonnull @.str.1) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tcfm_label9 = getelementptr inbounds %struct.tcf_mpls_params, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %tcfm_label9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %tcfm_label9, align 4
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i11, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %do.end7
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !113
  %8 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i.i18 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i32 %7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @tcf_mpls_tc(ptr noundef %a) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %mpls_p = getelementptr inbounds %struct.tcf_mpls, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %mpls_p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mpls_p, align 16
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
  %.b10 = load i1, ptr @tcf_mpls_tc.__warned, align 1
  br i1 %.b10, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tcf_mpls_tc.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 77, ptr noundef nonnull @.str.1) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tcfm_tc9 = getelementptr inbounds %struct.tcf_mpls_params, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %tcfm_tc9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tcfm_tc9, align 4
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i11, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %do.end7
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !113
  %8 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i.i18 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i8 %7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @tcf_mpls_bos(ptr noundef %a) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %mpls_p = getelementptr inbounds %struct.tcf_mpls, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %mpls_p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mpls_p, align 16
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
  %.b10 = load i1, ptr @tcf_mpls_bos.__warned, align 1
  br i1 %.b10, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tcf_mpls_bos.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 88, ptr noundef nonnull @.str.1) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tcfm_bos9 = getelementptr inbounds %struct.tcf_mpls_params, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %tcfm_bos9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tcfm_bos9, align 2
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i11, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %do.end7
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !113
  %8 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i.i18 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i8 %7
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i8 @tcf_mpls_ttl(ptr noundef %a) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !112
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #8
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %mpls_p = getelementptr inbounds %struct.tcf_mpls, ptr %a, i32 0, i32 1
  %4 = ptrtoint ptr %mpls_p to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %mpls_p, align 16
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
  %.b10 = load i1, ptr @tcf_mpls_ttl.__warned, align 1
  br i1 %.b10, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tcf_mpls_ttl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.20, i32 noundef 99, ptr noundef nonnull @.str.1) #8
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %rcu_read_lock.exit.do.end7_crit_edge
  %tcfm_ttl9 = getelementptr inbounds %struct.tcf_mpls_params, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %tcfm_ttl9 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %tcfm_ttl9, align 1
  %call.i11 = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i11, label %do.end7.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i14

do.end7.rcu_read_unlock.exit_crit_edge:           ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true.i14:                                ; preds = %do.end7
  %call1.i12 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12)
  %tobool.not.i13 = icmp eq i32 %call1.i12, 0
  br i1 %tobool.not.i13, label %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i16

land.lhs.true.i14.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i14
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

land.lhs.true2.i16:                               ; preds = %land.lhs.true.i14
  %.b4.i15 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15, label %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, label %if.then.i17

land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_unlock.exit

if.then.i17:                                      ; preds = %land.lhs.true2.i16
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #8
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i17, %land.lhs.true2.i16.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i14.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !113
  %8 = tail call i32 @llvm.read_register.i32(metadata !92) #8
  %and.i.i.i.i.i18 = and i32 %8, -16384
  %9 = inttoptr i32 %and.i.i.i.i.i18 to ptr
  %preempt_count.i.i.i.i19 = getelementptr inbounds %struct.thread_info, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %preempt_count.i.i.i.i19 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %preempt_count.i.i.i.i19, align 4
  %sub.i.i.i = add i32 %11, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i19, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  ret i8 %7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mpls_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mpls_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 156) #11
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
  store ptr @act_mpls_ops, ptr %ops2.i, align 4
  %net4.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %net4.i, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @tc_action_net_init.__key) #8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %action_idr.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %action_idr.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
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
define internal void @mpls_exit_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @mpls_net_id, align 4
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

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
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
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !21, !22, !24, !26, !27, !29, !31, !33, !34, !36, !37, !38, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !74, !76, !78, !80, !82, !84, !86, !88, !89, !91}
!llvm.named.register.sp = !{!92}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__initcall__kmod_act_mpls__386_481_mpls_init_module6, !1, !"__initcall__kmod_act_mpls__386_481_mpls_init_module6", i1 false, i1 false}
!1 = !{!"../net/sched/act_mpls.c", i32 481, i32 1}
!2 = !{ptr @__exitcall_mpls_cleanup_module, !3, !"__exitcall_mpls_cleanup_module", i1 false, i1 false}
!3 = !{!"../net/sched/act_mpls.c", i32 482, i32 1}
!4 = !{ptr @__UNIQUE_ID_softdep387, !5, !"__UNIQUE_ID_softdep387", i1 false, i1 false}
!5 = !{!"../net/sched/act_mpls.c", i32 484, i32 1}
!6 = !{ptr @__UNIQUE_ID_author388, !7, !"__UNIQUE_ID_author388", i1 false, i1 false}
!7 = !{!"../net/sched/act_mpls.c", i32 485, i32 1}
!8 = !{ptr @__UNIQUE_ID_file389, !9, !"__UNIQUE_ID_file389", i1 false, i1 false}
!9 = !{!"../net/sched/act_mpls.c", i32 486, i32 1}
!10 = !{ptr @__UNIQUE_ID_license390, !9, !"__UNIQUE_ID_license390", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description391, !12, !"__UNIQUE_ID_description391", i1 false, i1 false}
!12 = !{!"../net/sched/act_mpls.c", i32 487, i32 1}
!13 = !{ptr @act_mpls_ops, !14, !"act_mpls_ops", i1 false, i1 false}
!14 = !{!"../net/sched/act_mpls.c", i32 438, i32 29}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/sched/act_mpls.c", i32 76, i32 6}
!17 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!19 = distinct !{null, !20, !"__already_done", i1 false, i1 false}
!20 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/sched/act_mpls.c", i32 331, i32 6}
!26 = !{ptr @.str.4, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.5, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../include/net/netlink.h", i32 991, i32 3}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/sched/act_mpls.c", i32 311, i32 6}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!33 = !{ptr @.str.6, !32, !"<string literal>", i1 false, i1 false}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!36 = !{ptr @.str.7, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!40 = !{ptr @.str.9, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @mpls_net_id, !42, !"mpls_net_id", i1 false, i1 false}
!42 = !{!"../net/sched/act_mpls.c", i32 18, i32 21}
!43 = !{ptr @tcf_mpls_init.__msg, !44, !"__msg", i1 false, i1 false}
!44 = !{!"../net/sched/act_mpls.c", i32 171, i32 3}
!45 = !{ptr @tcf_mpls_init.__msg.10, !46, !"__msg", i1 false, i1 false}
!46 = !{!"../net/sched/act_mpls.c", i32 180, i32 3}
!47 = !{ptr @tcf_mpls_init.__msg.11, !48, !"__msg", i1 false, i1 false}
!48 = !{!"../net/sched/act_mpls.c", i32 190, i32 4}
!49 = !{ptr @tcf_mpls_init.__msg.12, !50, !"__msg", i1 false, i1 false}
!50 = !{!"../net/sched/act_mpls.c", i32 194, i32 4}
!51 = !{ptr @tcf_mpls_init.__msg.13, !52, !"__msg", i1 false, i1 false}
!52 = !{!"../net/sched/act_mpls.c", i32 199, i32 4}
!53 = !{ptr @tcf_mpls_init.__msg.14, !54, !"__msg", i1 false, i1 false}
!54 = !{!"../net/sched/act_mpls.c", i32 206, i32 4}
!55 = !{ptr @tcf_mpls_init.__msg.15, !56, !"__msg", i1 false, i1 false}
!56 = !{!"../net/sched/act_mpls.c", i32 213, i32 4}
!57 = !{ptr @tcf_mpls_init.__msg.16, !58, !"__msg", i1 false, i1 false}
!58 = !{!"../net/sched/act_mpls.c", i32 218, i32 4}
!59 = !{ptr @tcf_mpls_init.__msg.17, !60, !"__msg", i1 false, i1 false}
!60 = !{!"../net/sched/act_mpls.c", i32 233, i32 4}
!61 = !{ptr @tcf_mpls_init.__msg.18, !62, !"__msg", i1 false, i1 false}
!62 = !{!"../net/sched/act_mpls.c", i32 238, i32 3}
!63 = distinct !{null, !64, !"__warned", i1 false, i1 false}
!64 = !{!"../net/sched/act_mpls.c", i32 289, i32 6}
!65 = !{ptr @nla_parse_nested.__msg, !66, !"__msg", i1 false, i1 false}
!66 = !{!"../include/net/netlink.h", i32 1208, i32 3}
!67 = !{ptr @mpls_policy, !68, !"mpls_policy", i1 false, i1 false}
!68 = !{!"../net/sched/act_mpls.c", i32 144, i32 32}
!69 = !{ptr @valid_label.__msg, !70, !"__msg", i1 false, i1 false}
!70 = !{!"../net/sched/act_mpls.c", i32 137, i32 3}
!71 = distinct !{null, !72, !"__warned", i1 false, i1 false}
!72 = !{!"../include/net/tc_act/tc_mpls.h", i32 44, i32 16}
!73 = !{ptr @.str.20, !72, !"<string literal>", i1 false, i1 false}
!74 = distinct !{null, !75, !"__warned", i1 false, i1 false}
!75 = !{!"../include/net/tc_act/tc_mpls.h", i32 55, i32 15}
!76 = distinct !{null, !77, !"__warned", i1 false, i1 false}
!77 = !{!"../include/net/tc_act/tc_mpls.h", i32 66, i32 15}
!78 = distinct !{null, !79, !"__warned", i1 false, i1 false}
!79 = !{!"../include/net/tc_act/tc_mpls.h", i32 77, i32 12}
!80 = distinct !{null, !81, !"__warned", i1 false, i1 false}
!81 = !{!"../include/net/tc_act/tc_mpls.h", i32 88, i32 13}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/net/tc_act/tc_mpls.h", i32 99, i32 13}
!84 = !{ptr @mpls_net_ops, !85, !"mpls_net_ops", i1 false, i1 false}
!85 = !{!"../net/sched/act_mpls.c", i32 464, i32 33}
!86 = !{ptr @tc_action_net_init.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../include/net/act_api.h", i32 156, i32 2}
!88 = !{ptr @.str.21, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @xa_init_flags.__key, !90, !"__key", i1 false, i1 false}
!90 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!91 = !{ptr @.str.22, !90, !"<string literal>", i1 false, i1 false}
!92 = !{!"sp"}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"branch_weights", i32 1, i32 2000}
!103 = !{i64 2150166477}
!104 = !{i64 2150171411}
!105 = !{i64 2150193129}
!106 = !{i64 2150198023}
!107 = !{!"branch_weights", i32 2000, i32 1}
!108 = !{i64 2150274550}
!109 = !{i64 2150274875}
!110 = !{!"auto-init"}
!111 = !{i64 2156472909}
!112 = !{i64 2149657856}
!113 = !{i64 2149658122}
