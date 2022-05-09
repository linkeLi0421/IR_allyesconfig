; ModuleID = '/llk/IR_all_yes/net/sched/act_skbedit.c_pt.bc'
source_filename = "../net/sched/act_skbedit.c"
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
%struct.tcf_skbedit = type { %struct.tc_action, ptr, [12 x i8] }
%struct.tcf_skbedit_params = type { i32, i32, i32, i32, i16, i16, %struct.callback_head }
%struct.callback_head = type { ptr, ptr }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.132, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.146, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.132 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.146 = type { ptr }
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
%struct.tc_skbedit = type { i32, i32, i32, i32, i32 }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.153, ptr }
%union.anon.153 = type { %struct.anon.158 }
%struct.anon.158 = type { i32, i64, i64, i64, i32 }
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
%struct.ctl_table_header = type { %union.anon.37, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.37 = type { %struct.anon.38 }
%struct.anon.38 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.91, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.91 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.tc_action_net = type { ptr, ptr }
%struct.tcf_idrinfo = type { %struct.mutex, %struct.idr, ptr }

@__UNIQUE_ID_author537 = internal constant [66 x i8] c"act_skbedit.author=Alexander Duyck, <alexander.h.duyck@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description538 = internal constant [36 x i8] c"act_skbedit.description=SKB Editing\00", section ".modinfo", align 1
@__UNIQUE_ID_file539 = internal constant [39 x i8] c"act_skbedit.file=net/sched/act_skbedit\00", section ".modinfo", align 1
@__UNIQUE_ID_license540 = internal constant [24 x i8] c"act_skbedit.license=GPL\00", section ".modinfo", align 1
@act_skbedit_ops = internal global { %struct.tc_action_ops, [48 x i8] } { %struct.tc_action_ops { %struct.list_head zeroinitializer, [16 x i8] c"skbedit\00\00\00\00\00\00\00\00\00", i32 11, i32 288, ptr null, ptr @tcf_skbedit_act, ptr @tcf_skbedit_dump, ptr @tcf_skbedit_cleanup, ptr @tcf_skbedit_search, ptr @tcf_skbedit_init, ptr @tcf_skbedit_walker, ptr @tcf_skbedit_stats_update, ptr @tcf_skbedit_get_fill_size, ptr null, ptr null, ptr @tcf_skbedit_offload_act_setup }, [48 x i8] zeroinitializer }, align 32
@skbedit_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @skbedit_init_net, ptr null, ptr null, ptr @skbedit_exit_net, ptr @skbedit_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_act_skbedit__541_414_skbedit_init_module6 = internal global ptr @skbedit_init_module, section ".initcall6.init", align 4
@__exitcall_skbedit_cleanup_module = internal global ptr @skbedit_cleanup_module, section ".exitcall.exit", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@tcf_skbedit_act.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/sched/act_skbedit.c\00", [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@tcf_skbedit_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@skbedit_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@skbedit_policy = internal constant { [10 x %struct.nla_policy], [48 x i8] } { [10 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 20, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 2, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 2, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 4, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 8, %union.anon.76 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@tcf_skbedit_init.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@is_tcf_skbedit_with_flag.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"include/net/tc_act/tc_skbedit.h\00", [32 x i8] zeroinitializer }, align 32
@tcf_skbedit_mark.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcf_skbedit_ptype.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tcf_skbedit_priority.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@tc_action_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tn->idrinfo->lock\00", [45 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.15 = private unnamed_addr constant [16 x i8] c"act_skbedit_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 365, i32 29 }
@___asan_gen_.18 = private unnamed_addr constant [16 x i8] c"skbedit_net_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 393, i32 33 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 36, i32 11 }
@___asan_gen_.28 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 271, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 598, i32 8 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 252, i32 11 }
@___asan_gen_.37 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 991, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant [15 x i8] c"skbedit_net_id\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 23, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 45, i32 7 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 695, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 723, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [15 x i8] c"skbedit_policy\00", align 1
@___asan_gen_.55 = private constant [27 x i8] c"../net/sched/act_skbedit.c\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.55, i32 87, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant [35 x i8] c"../include/net/tc_act/tc_skbedit.h\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.58, i32 38, i32 11 }
@___asan_gen_.64 = private unnamed_addr constant [25 x i8] c"../include/net/act_api.h\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.64, i32 156, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 378, i32 2 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @__UNIQUE_ID_author537, ptr @__UNIQUE_ID_description538, ptr @__UNIQUE_ID_file539, ptr @__UNIQUE_ID_license540, ptr @__exitcall_skbedit_cleanup_module, ptr @__initcall__kmod_act_skbedit__541_414_skbedit_init_module6, ptr @skbedit_cleanup_module, ptr @act_skbedit_ops, ptr @skbedit_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @skbedit_net_id, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @skbedit_policy, ptr @.str.10, ptr @tc_action_net_init.__key, ptr @.str.11, ptr @xa_init_flags.__key, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_skbedit_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skbedit_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skbedit_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skbedit_policy to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_action_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @skbedit_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_skbedit_ops, ptr noundef nonnull @skbedit_net_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_unregister_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @skbedit_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_register_action(ptr noundef nonnull @act_skbedit_ops, ptr noundef nonnull @skbedit_net_ops) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_skbedit_act(ptr noundef %skb, ptr noundef %a, ptr nocapture noundef readnone %res) #2 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
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
  br i1 %tobool.not.i, label %if.then7.i, label %if.end.i.tcf_lastuse_update.exit_crit_edge, !prof !72

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
  %10 = tail call i32 @llvm.read_register.i32(metadata !62) #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !73
  %28 = tail call i32 @llvm.read_register.i32(metadata !62) #10
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !74
  %37 = tail call i32 @llvm.read_register.i32(metadata !62) #10
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
  %41 = tail call i32 @llvm.read_register.i32(metadata !62) #10
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
  %45 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i9.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %48, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !75
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !76
  %56 = tail call i32 @llvm.read_register.i32(metadata !62) #10
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
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, label %if.then.i.i.i.i, !prof !77

land.rhs58.i.i.i.i.bstats_update.exit_crit_edge:  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %bstats_update.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %bstats_update.exit

bstats_update.exit:                               ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge, %cond.end.i.bstats_update.exit_crit_edge
  %conv.i122 = zext i32 %18 to i64
  %syncp.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %16, i32 0, i32 2
  %60 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %61, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !78
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %16, i32 0, i32 2, i32 0, i32 1
  %62 = tail call ptr @llvm.returnaddress(i32 0) #10
  %63 = ptrtoint ptr %62 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %63) #10
  %64 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %16, align 8
  %add.i.i.i = add i64 %65, %conv.i122
  store i64 %add.i.i.i, ptr %16, align 8
  %packets2.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %16, i32 0, i32 1
  %conv.i7.i.i = zext i32 %cond.i to i64
  %66 = ptrtoint ptr %packets2.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %packets2.i.i, align 8
  %add.i8.i.i = add i64 %67, %conv.i7.i.i
  store i64 %add.i8.i.i, ptr %packets2.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %63) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !79
  %68 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %69, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  %params7 = getelementptr inbounds %struct.tcf_skbedit, ptr %a, i32 0, i32 1
  %70 = ptrtoint ptr %params7 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile ptr, ptr %params7, align 16
  %call9 = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool.not = icmp eq i32 %call9, 0
  br i1 %tobool.not, label %land.lhs.true, label %bstats_update.exit.do.end15_crit_edge

bstats_update.exit.do.end15_crit_edge:            ; preds = %bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

land.lhs.true:                                    ; preds = %bstats_update.exit
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end15_crit_edge, label %land.lhs.true12

land.lhs.true.do.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b121 = load i1, ptr @tcf_skbedit_act.__warned, align 1
  br i1 %.b121, label %land.lhs.true12.do.end15_crit_edge, label %if.then

land.lhs.true12.do.end15_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end15

if.then:                                          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_skbedit_act.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 36, ptr noundef nonnull @.str.1) #10
  br label %do.end15

do.end15:                                         ; preds = %if.then, %land.lhs.true12.do.end15_crit_edge, %land.lhs.true.do.end15_crit_edge, %bstats_update.exit.do.end15_crit_edge
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %72 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %tcfa_action, align 8
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %71, align 4
  %and = and i32 %75, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %do.end15.if.end25_crit_edge, label %if.then23

do.end15.if.end25_crit_edge:                      ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.then23:                                        ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #12
  %priority = getelementptr inbounds %struct.tcf_skbedit_params, ptr %71, i32 0, i32 1
  %76 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %priority, align 4
  %priority24 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %78 = ptrtoint ptr %priority24 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %priority24, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %do.end15.if.end25_crit_edge
  %79 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %71, align 4
  %and27 = and i32 %80, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %if.end25.if.end50_crit_edge, label %if.then29

if.end25.if.end50_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.then29:                                        ; preds = %if.end25
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %81 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %83 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %83)
  %84 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %84 to i32
  %add.ptr.i.i = getelementptr i8, ptr %82, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %85 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %86 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %87 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %89 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %90 to i32
  %91 = zext i16 %88 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values)
  switch i16 %88, label %if.then29.skb_protocol.exit_crit_edge [
    i16 -30552, label %if.then29.if.then.i.i.i_crit_edge
    i16 -32512, label %if.then29.if.then.i.i.i_crit_edge155
  ]

if.then29.if.then.i.i.i_crit_edge155:             ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then29.if.then.i.i.i_crit_edge:                ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i.i

if.then29.skb_protocol.exit_crit_edge:            ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %if.then29.if.then.i.i.i_crit_edge, %if.then29.if.then.i.i.i_crit_edge155
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %90)
  %tobool.not.i.i.i = icmp eq i16 %90, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %90)
  %cmp.i.i.i = icmp ult i16 %90, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !72

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 598, i32 noundef 9, ptr noundef null) #10
  br label %if.end50

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %92 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i123, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #10
  %93 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %93)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !80
  %94 = ptrtoint ptr %92 to i32
  call void @__asan_store2_noabort(i32 %94)
  store i16 -1, ptr %92, align 2, !annotation !80
  %95 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %len.i.i.i.i.i, align 4
  %97 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %99 = add i32 %vlan_depth.1.i.i.i, %98
  %sub.i1.i.i.i.i = sub i32 %96, %99
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !77

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %100 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %101, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !72
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %102 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !72
  br i1 %102, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !72

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #10
  br label %if.end50

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %103 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #10
  %105 = zext i16 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %104, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge156
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge156: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge156
  %add.i.i.i123 = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %if.then29.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ %88, %if.then29.skb_protocol.exit_crit_edge ], [ %104, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %106 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %retval.2.i.i.i, label %skb_protocol.exit.if.end50_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb40
  ]

skb_protocol.exit.if.end50_crit_edge:             ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

sw.bb:                                            ; preds = %skb_protocol.exit
  %add32 = add i32 %sub.ptr.sub.i, 20
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %107 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %109 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %108, %110
  call void @__sanitizer_cov_trace_cmp4(i32 %add32, i32 %sub.i.i)
  %cmp.not.i124 = icmp ugt i32 %add32, %sub.i.i
  br i1 %cmp.not.i124, label %if.end.i125, label %sw.bb.if.end35_crit_edge, !prof !72

sw.bb.if.end35_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

if.end.i125:                                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_cmp4(i32 %108, i32 %add32)
  %cmp3.i = icmp ult i32 %108, %add32
  br i1 %cmp3.i, label %if.end.i125.do.body74_crit_edge, label %pskb_may_pull.exit, !prof !72

if.end.i125.do.body74_crit_edge:                  ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body74

pskb_may_pull.exit:                               ; preds = %if.end.i125
  %sub.i = sub i32 %add32, %sub.i.i
  %call13.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #10
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.do.body74_crit_edge, label %pskb_may_pull.exit.if.end35_crit_edge

pskb_may_pull.exit.if.end35_crit_edge:            ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end35

pskb_may_pull.exit.do.body74_crit_edge:           ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body74

if.end35:                                         ; preds = %pskb_may_pull.exit.if.end35_crit_edge, %sw.bb.if.end35_crit_edge
  %111 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %head.i.i, align 8
  %113 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i128 = zext i16 %114 to i32
  %add.ptr.i.i129 = getelementptr i8, ptr %112, i32 %conv.i.i128
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i129, i32 0, i32 1
  %115 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %115)
  %116 = load i8, ptr %tos.i, align 1
  %117 = lshr i8 %116, 2
  %118 = zext i8 %117 to i32
  %priority39 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %119 = ptrtoint ptr %priority39 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %118, ptr %priority39, align 4
  br label %if.end50

sw.bb40:                                          ; preds = %skb_protocol.exit
  %add41 = add i32 %sub.ptr.sub.i, 40
  %len.i.i130 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %120 = ptrtoint ptr %len.i.i130 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %len.i.i130, align 4
  %data_len.i.i131 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %122 = ptrtoint ptr %data_len.i.i131 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %data_len.i.i131, align 8
  %sub.i.i132 = sub i32 %121, %123
  call void @__sanitizer_cov_trace_cmp4(i32 %add41, i32 %sub.i.i132)
  %cmp.not.i133 = icmp ugt i32 %add41, %sub.i.i132
  br i1 %cmp.not.i133, label %if.end.i135, label %sw.bb40.if.end44_crit_edge, !prof !72

sw.bb40.if.end44_crit_edge:                       ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

if.end.i135:                                      ; preds = %sw.bb40
  call void @__sanitizer_cov_trace_cmp4(i32 %121, i32 %add41)
  %cmp3.i134 = icmp ult i32 %121, %add41
  br i1 %cmp3.i134, label %if.end.i135.do.body74_crit_edge, label %pskb_may_pull.exit141, !prof !72

if.end.i135.do.body74_crit_edge:                  ; preds = %if.end.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body74

pskb_may_pull.exit141:                            ; preds = %if.end.i135
  %sub.i136 = sub i32 %add41, %sub.i.i132
  %call13.i137 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i136) #10
  %cmp14.i138.not = icmp eq ptr %call13.i137, null
  br i1 %cmp14.i138.not, label %pskb_may_pull.exit141.do.body74_crit_edge, label %pskb_may_pull.exit141.if.end44_crit_edge

pskb_may_pull.exit141.if.end44_crit_edge:         ; preds = %pskb_may_pull.exit141
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end44

pskb_may_pull.exit141.do.body74_crit_edge:        ; preds = %pskb_may_pull.exit141
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body74

if.end44:                                         ; preds = %pskb_may_pull.exit141.if.end44_crit_edge, %sw.bb40.if.end44_crit_edge
  %124 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %head.i.i, align 8
  %126 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i144 = zext i16 %127 to i32
  %add.ptr.i.i145 = getelementptr i8, ptr %125, i32 %conv.i.i144
  %128 = ptrtoint ptr %add.ptr.i.i145 to i32
  call void @__asan_load2_noabort(i32 %128)
  %129 = load i16, ptr %add.ptr.i.i145, align 2
  %sum.shift = lshr i16 %129, 6
  %130 = and i16 %sum.shift, 63
  %131 = zext i16 %130 to i32
  %priority49 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 6
  %132 = ptrtoint ptr %priority49 to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %priority49, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.end44, %if.end35, %skb_protocol.exit.if.end50_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i, %if.end25.if.end50_crit_edge
  %133 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %71, align 4
  %and52 = and i32 %134, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.if.end59_crit_edge, label %land.lhs.true54

if.end50.if.end59_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

land.lhs.true54:                                  ; preds = %if.end50
  %135 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %135, align 8
  %real_num_tx_queues = getelementptr inbounds %struct.net_device, ptr %137, i32 0, i32 105
  %138 = ptrtoint ptr %real_num_tx_queues to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %real_num_tx_queues, align 8
  %queue_mapping = getelementptr inbounds %struct.tcf_skbedit_params, ptr %71, i32 0, i32 4
  %140 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %queue_mapping, align 4
  %conv55 = zext i16 %141 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %139, i32 %conv55)
  %cmp = icmp ugt i32 %139, %conv55
  br i1 %cmp, label %if.then57, label %land.lhs.true54.if.end59_crit_edge

land.lhs.true54.if.end59_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end59

if.then57:                                        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #12
  %queue_mapping1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 10
  %142 = ptrtoint ptr %queue_mapping1.i to i32
  call void @__asan_store2_noabort(i32 %142)
  store i16 %141, ptr %queue_mapping1.i, align 8
  br label %if.end59

if.end59:                                         ; preds = %if.then57, %land.lhs.true54.if.end59_crit_edge, %if.end50.if.end59_crit_edge
  %143 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %71, align 4
  %and61 = and i32 %144, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and61)
  %tobool62.not = icmp eq i32 %and61, 0
  br i1 %tobool62.not, label %if.end59.if.end67_crit_edge, label %if.then63

if.end59.if.end67_crit_edge:                      ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end67

if.then63:                                        ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #12
  %mask = getelementptr inbounds %struct.tcf_skbedit_params, ptr %71, i32 0, i32 3
  %145 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %mask, align 4
  %neg = xor i32 %146, -1
  %147 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %148 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %147, align 4
  %and64 = and i32 %149, %neg
  store i32 %and64, ptr %147, align 4
  %mark = getelementptr inbounds %struct.tcf_skbedit_params, ptr %71, i32 0, i32 2
  %150 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %mark, align 4
  %152 = load i32, ptr %mask, align 4
  %and66 = and i32 %152, %151
  %or = or i32 %and66, %and64
  store i32 %or, ptr %147, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.then63, %if.end59.if.end67_crit_edge
  %153 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %71, align 4
  %and69 = and i32 %154, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and69)
  %tobool70.not = icmp eq i32 %and69, 0
  br i1 %tobool70.not, label %if.end67.cleanup86_crit_edge, label %if.then71

if.end67.cleanup86_crit_edge:                     ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup86

if.then71:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_pc() #12
  %ptype = getelementptr inbounds %struct.tcf_skbedit_params, ptr %71, i32 0, i32 5
  %155 = ptrtoint ptr %ptype to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %ptype, align 2
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %157 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %157)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.shl = shl i16 %156, 13
  %bf.clear = and i16 %bf.load, 8191
  %bf.set = or i16 %bf.clear, %bf.shl
  store i16 %bf.set, ptr %pkt_type, align 8
  br label %cleanup86

do.body74:                                        ; preds = %pskb_may_pull.exit141.do.body74_crit_edge, %if.end.i135.do.body74_crit_edge, %pskb_may_pull.exit.do.body74_crit_edge, %if.end.i125.do.body74_crit_edge
  %cpu_qstats = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 15
  %158 = ptrtoint ptr %cpu_qstats to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %cpu_qstats, align 4
  %160 = ptrtoint ptr %159 to i32
  %161 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %cpu, align 4
  %arrayidx84 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %162
  %163 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %arrayidx84, align 4
  %add85 = add i32 %164, %160
  %165 = inttoptr i32 %add85 to ptr
  %drops.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %drops.i to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %drops.i, align 4
  %inc.i = add i32 %167, 1
  store i32 %inc.i, ptr %drops.i, align 4
  br label %cleanup86

cleanup86:                                        ; preds = %do.body74, %if.then71, %if.end67.cleanup86_crit_edge
  %retval.0 = phi i32 [ 2, %do.body74 ], [ %73, %if.then71 ], [ %73, %if.end67.cleanup86_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_skbedit_dump(ptr noundef %skb, ptr noundef %a, i32 noundef %bind, i32 noundef %ref) #2 align 64 {
entry:
  %tmp.i120 = alloca i32, align 4
  %tmp.i118 = alloca i16, align 2
  %tmp.i116 = alloca i32, align 4
  %tmp.i114 = alloca i16, align 2
  %tmp.i = alloca i32, align 4
  %opt = alloca %struct.tc_skbedit, align 4
  %pure_flags = alloca i64, align 8
  %t = alloca %struct.tcf_t, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %opt) #10
  %2 = getelementptr inbounds %struct.tc_skbedit, ptr %opt, i32 0, i32 1
  %3 = getelementptr inbounds %struct.tc_skbedit, ptr %opt, i32 0, i32 2
  %4 = getelementptr inbounds %struct.tc_skbedit, ptr %opt, i32 0, i32 3
  %5 = getelementptr inbounds %struct.tc_skbedit, ptr %opt, i32 0, i32 4
  %tcfa_index = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 3
  %6 = getelementptr inbounds i8, ptr %opt, i32 8
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 -1, ptr %6, align 4
  %8 = ptrtoint ptr %tcfa_index to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tcfa_index, align 4
  %10 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %opt, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %2, align 4
  %tcfa_refcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_refcnt, i32 noundef 4) #10
  %12 = ptrtoint ptr %tcfa_refcnt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %tcfa_refcnt, align 4
  %sub = sub i32 %13, %ref
  %14 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %sub, ptr %4, align 4
  %tcfa_bindcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_bindcnt, i32 noundef 4) #10
  %15 = ptrtoint ptr %tcfa_bindcnt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %tcfa_bindcnt, align 4
  %sub5 = sub i32 %16, %bind
  %17 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %sub5, ptr %5, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %pure_flags) #10
  %18 = ptrtoint ptr %pure_flags to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 0, ptr %pure_flags, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #10
  %19 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 1
  %20 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 2
  %21 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 3
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  %22 = call ptr @memset(ptr %t, i32 255, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #10
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true12

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true12:                                  ; preds = %land.lhs.true
  %.b112 = load i1, ptr @tcf_skbedit_dump.__warned, align 1
  br i1 %.b112, label %land.lhs.true12.do.end_crit_edge, label %if.then

land.lhs.true12.do.end_crit_edge:                 ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_skbedit_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 253, ptr noundef nonnull @.str.4) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true12.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %params14 = getelementptr inbounds %struct.tcf_skbedit, ptr %a, i32 0, i32 1
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
  %call17 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 20, ptr noundef nonnull %opt) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %if.end20, label %do.end.nla_put_failure_crit_edge

do.end.nla_put_failure_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end20:                                         ; preds = %do.end
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %24, align 4
  %and = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool21.not = icmp eq i32 %and, 0
  br i1 %tobool21.not, label %if.end20.if.end26_crit_edge, label %land.lhs.true22

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

land.lhs.true22:                                  ; preds = %if.end20
  %priority = getelementptr inbounds %struct.tcf_skbedit_params, ptr %24, i32 0, i32 1
  %30 = ptrtoint ptr %priority to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %priority, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %32 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %tmp.i, align 4
  %call.i113 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i113)
  %tobool24.not = icmp eq i32 %call.i113, 0
  br i1 %tobool24.not, label %land.lhs.true22.if.end26_crit_edge, label %land.lhs.true22.nla_put_failure_crit_edge

land.lhs.true22.nla_put_failure_crit_edge:        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

land.lhs.true22.if.end26_crit_edge:               ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true22.if.end26_crit_edge, %if.end20.if.end26_crit_edge
  %33 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %24, align 4
  %and28 = and i32 %34, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.if.end34_crit_edge, label %land.lhs.true30

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

land.lhs.true30:                                  ; preds = %if.end26
  %queue_mapping = getelementptr inbounds %struct.tcf_skbedit_params, ptr %24, i32 0, i32 4
  %35 = ptrtoint ptr %queue_mapping to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %queue_mapping, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i114) #10
  %37 = ptrtoint ptr %tmp.i114 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %tmp.i114, align 2
  %call.i115 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tmp.i114) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i114) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i115)
  %tobool32.not = icmp eq i32 %call.i115, 0
  br i1 %tobool32.not, label %land.lhs.true30.if.end34_crit_edge, label %land.lhs.true30.nla_put_failure_crit_edge

land.lhs.true30.nla_put_failure_crit_edge:        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

land.lhs.true30.if.end34_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.end34:                                         ; preds = %land.lhs.true30.if.end34_crit_edge, %if.end26.if.end34_crit_edge
  %38 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %24, align 4
  %and36 = and i32 %39, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %if.end34.if.end42_crit_edge, label %land.lhs.true38

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

land.lhs.true38:                                  ; preds = %if.end34
  %mark = getelementptr inbounds %struct.tcf_skbedit_params, ptr %24, i32 0, i32 2
  %40 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mark, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i116) #10
  %42 = ptrtoint ptr %tmp.i116 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %tmp.i116, align 4
  %call.i117 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i116) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i116) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i117)
  %tobool40.not = icmp eq i32 %call.i117, 0
  br i1 %tobool40.not, label %land.lhs.true38.if.end42_crit_edge, label %land.lhs.true38.nla_put_failure_crit_edge

land.lhs.true38.nla_put_failure_crit_edge:        ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

land.lhs.true38.if.end42_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end42

if.end42:                                         ; preds = %land.lhs.true38.if.end42_crit_edge, %if.end34.if.end42_crit_edge
  %43 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %24, align 4
  %and44 = and i32 %44, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end42.if.end50_crit_edge, label %land.lhs.true46

if.end42.if.end50_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

land.lhs.true46:                                  ; preds = %if.end42
  %ptype = getelementptr inbounds %struct.tcf_skbedit_params, ptr %24, i32 0, i32 5
  %45 = ptrtoint ptr %ptype to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %ptype, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i118) #10
  %47 = ptrtoint ptr %tmp.i118 to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %46, ptr %tmp.i118, align 2
  %call.i119 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 2, ptr noundef nonnull %tmp.i118) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i118) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i119)
  %tobool48.not = icmp eq i32 %call.i119, 0
  br i1 %tobool48.not, label %land.lhs.true46.if.end50_crit_edge, label %land.lhs.true46.nla_put_failure_crit_edge

land.lhs.true46.nla_put_failure_crit_edge:        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

land.lhs.true46.if.end50_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.end50:                                         ; preds = %land.lhs.true46.if.end50_crit_edge, %if.end42.if.end50_crit_edge
  %48 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %24, align 4
  %and52 = and i32 %49, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and52)
  %tobool53.not = icmp eq i32 %and52, 0
  br i1 %tobool53.not, label %if.end50.if.end58_crit_edge, label %land.lhs.true54

if.end50.if.end58_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

land.lhs.true54:                                  ; preds = %if.end50
  %mask = getelementptr inbounds %struct.tcf_skbedit_params, ptr %24, i32 0, i32 3
  %50 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mask, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i120) #10
  %52 = ptrtoint ptr %tmp.i120 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %tmp.i120, align 4
  %call.i121 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i120) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i120) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i121)
  %tobool56.not = icmp eq i32 %call.i121, 0
  br i1 %tobool56.not, label %land.lhs.true54.if.end58_crit_edge, label %land.lhs.true54.nla_put_failure_crit_edge

land.lhs.true54.nla_put_failure_crit_edge:        ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

land.lhs.true54.if.end58_crit_edge:               ; preds = %land.lhs.true54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.end58:                                         ; preds = %land.lhs.true54.if.end58_crit_edge, %if.end50.if.end58_crit_edge
  %53 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %24, align 4
  %and60 = and i32 %54, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %55 = ptrtoint ptr %pure_flags to i32
  call void @__asan_load8_noabort(i32 %55)
  %.pr = load i64, ptr %pure_flags, align 8
  br i1 %tobool61.not, label %if.end63, label %if.end63.thread

if.end63.thread:                                  ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i64 %.pr, 32
  %56 = ptrtoint ptr %pure_flags to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %or, ptr %pure_flags, align 8
  br label %land.lhs.true64

if.end63:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %.pr)
  %cmp.not = icmp eq i64 %.pr, 0
  br i1 %cmp.not, label %if.end63.if.end68_crit_edge, label %if.end63.land.lhs.true64_crit_edge

if.end63.land.lhs.true64_crit_edge:               ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true64

if.end63.if.end68_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

land.lhs.true64:                                  ; preds = %if.end63.land.lhs.true64_crit_edge, %if.end63.thread
  %call65 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 8, ptr noundef nonnull %pure_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %land.lhs.true64.if.end68_crit_edge, label %land.lhs.true64.nla_put_failure_crit_edge

land.lhs.true64.nla_put_failure_crit_edge:        ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

land.lhs.true64.if.end68_crit_edge:               ; preds = %land.lhs.true64
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end68

if.end68:                                         ; preds = %land.lhs.true64.if.end68_crit_edge, %if.end63.if.end68_crit_edge
  %tcfa_tm = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %57 = load volatile i32, ptr @jiffies, align 128
  %58 = ptrtoint ptr %tcfa_tm to i32
  call void @__asan_load8_noabort(i32 %58)
  %59 = load i64, ptr %tcfa_tm, align 8
  %60 = trunc i64 %59 to i32
  %conv1.i = sub i32 %57, %60
  %call.i122 = call i32 @jiffies_to_clock_t(i32 noundef %conv1.i) #10
  %conv2.i = sext i32 %call.i122 to i64
  %61 = ptrtoint ptr %t to i32
  call void @__asan_store8_noabort(i32 %61)
  store i64 %conv2.i, ptr %t, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %62 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %63 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %63)
  %64 = load i64, ptr %lastuse.i, align 8
  %65 = trunc i64 %64 to i32
  %conv6.i = sub i32 %62, %65
  %call7.i = call i32 @jiffies_to_clock_t(i32 noundef %conv6.i) #10
  %conv8.i = sext i32 %call7.i to i64
  %66 = ptrtoint ptr %19 to i32
  call void @__asan_store8_noabort(i32 %66)
  store i64 %conv8.i, ptr %19, align 8
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %67 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %67)
  %68 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %68)
  %tobool.not.i = icmp eq i64 %68, 0
  br i1 %tobool.not.i, label %if.end68.tcf_tm_dump.exit_crit_edge, label %cond.true.i

if.end68.tcf_tm_dump.exit_crit_edge:              ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_tm_dump.exit

cond.true.i:                                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %69 = load volatile i32, ptr @jiffies, align 128
  %70 = trunc i64 %68 to i32
  %conv13.i = sub i32 %69, %70
  %call14.i = call i32 @jiffies_to_clock_t(i32 noundef %conv13.i) #10
  br label %tcf_tm_dump.exit

tcf_tm_dump.exit:                                 ; preds = %cond.true.i, %if.end68.tcf_tm_dump.exit_crit_edge
  %cond.i = phi i32 [ %call14.i, %cond.true.i ], [ 0, %if.end68.tcf_tm_dump.exit_crit_edge ]
  %conv15.i = sext i32 %cond.i to i64
  %71 = ptrtoint ptr %21 to i32
  call void @__asan_store8_noabort(i32 %71)
  store i64 %conv15.i, ptr %21, align 8
  %expires.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 2
  %72 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %expires.i, align 8
  %conv17.i = trunc i64 %73 to i32
  %call18.i = call i32 @jiffies_to_clock_t(i32 noundef %conv17.i) #10
  %conv19.i = sext i32 %call18.i to i64
  %74 = ptrtoint ptr %20 to i32
  call void @__asan_store8_noabort(i32 %74)
  store i64 %conv19.i, ptr %20, align 8
  %call70 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 32, ptr noundef nonnull %t, i32 noundef 6) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.end73, label %tcf_tm_dump.exit.nla_put_failure_crit_edge

tcf_tm_dump.exit.nla_put_failure_crit_edge:       ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %nla_put_failure

if.end73:                                         ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #10
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %75 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %tcf_tm_dump.exit.nla_put_failure_crit_edge, %land.lhs.true64.nla_put_failure_crit_edge, %land.lhs.true54.nla_put_failure_crit_edge, %land.lhs.true46.nla_put_failure_crit_edge, %land.lhs.true38.nla_put_failure_crit_edge, %land.lhs.true30.nla_put_failure_crit_edge, %land.lhs.true22.nla_put_failure_crit_edge, %do.end.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #10
  %tobool.not.i123 = icmp eq ptr %1, null
  br i1 %tobool.not.i123, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %77 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %78, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !72

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %79 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %80 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end73
  %retval.0 = phi i32 [ %76, %if.end73 ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %pure_flags) #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %opt) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_skbedit_cleanup(ptr nocapture noundef readonly %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %params1 = getelementptr inbounds %struct.tcf_skbedit, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %params1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %params1, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %do.end7

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

do.end7:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr inbounds %struct.tcf_skbedit_params, ptr %1, i32 0, i32 6
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 20 to ptr)) #10
  br label %if.end10

if.end10:                                         ; preds = %do.end7, %entry.if.end10_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_skbedit_search(ptr noundef %net, ptr noundef %a, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @skbedit_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_idr_search(ptr noundef %call, ptr noundef %a, i32 noundef %index) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_skbedit_init(ptr noundef %net, ptr noundef %nla, ptr noundef %est, ptr noundef %a, ptr noundef %tp, i32 noundef %act_flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [10 x ptr], align 4
  %goto_ch = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @skbedit_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %and = and i32 %act_flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %tb) #10
  %1 = call ptr @memset(ptr %tb, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goto_ch) #10
  %2 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %goto_ch, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #10
  %3 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %index, align 4, !annotation !80
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
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 9, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @skbedit_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp2 = icmp slt i32 %call2.i, 0
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %arrayidx = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %arrayidx8 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 3
  %8 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx8, align 4
  %cmp9.not = icmp eq ptr %9, null
  %add.ptr.i = getelementptr i8, ptr %9, i32 4
  %not.cmp9.not = xor i1 %cmp9.not, true
  %spec.select306 = zext i1 %not.cmp9.not to i32
  %spec.select307 = select i1 %cmp9.not, ptr null, ptr %add.ptr.i
  %arrayidx14 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 4
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 4
  %cmp15.not = icmp eq ptr %11, null
  %or17 = or i32 %spec.select306, 2
  %add.ptr.i300 = getelementptr i8, ptr %11, i32 4
  %flags.1 = select i1 %cmp15.not, i32 %spec.select306, i32 %or17
  %queue_mapping.0 = select i1 %cmp15.not, ptr null, ptr %add.ptr.i300
  %arrayidx21 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 7
  %12 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx21, align 4
  %cmp22.not = icmp eq ptr %13, null
  br i1 %cmp22.not, label %if.end7.if.end30_crit_edge, label %if.then23

if.end7.if.end30_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.then23:                                        ; preds = %if.end7
  %add.ptr.i301 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i301 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i301, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %15)
  %cmp.i = icmp ult i16 %15, 4
  br i1 %cmp.i, label %if.end28, label %if.then23.cleanup_crit_edge

if.then23.cleanup_crit_edge:                      ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %or29 = or i32 %flags.1, 8
  br label %if.end30

if.end30:                                         ; preds = %if.end28, %if.end7.if.end30_crit_edge
  %flags.2 = phi i32 [ %or29, %if.end28 ], [ %flags.1, %if.end7.if.end30_crit_edge ]
  %ptype.0 = phi ptr [ %add.ptr.i301, %if.end28 ], [ null, %if.end7.if.end30_crit_edge ]
  %arrayidx31 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 5
  %16 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx31, align 4
  %cmp32.not = icmp eq ptr %17, null
  %or35 = or i32 %flags.2, 4
  %add.ptr.i302 = getelementptr i8, ptr %17, i32 4
  %flags.3 = select i1 %cmp32.not, i32 %flags.2, i32 %or35
  %mark.0 = select i1 %cmp32.not, ptr null, ptr %add.ptr.i302
  %arrayidx39 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 8
  %18 = ptrtoint ptr %arrayidx39 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx39, align 4
  %cmp40.not = icmp eq ptr %19, null
  %or43 = or i32 %flags.3, 16
  %add.ptr.i303 = getelementptr i8, ptr %19, i32 4
  %flags.4 = select i1 %cmp40.not, i32 %flags.3, i32 %or43
  %mask.0 = select i1 %cmp40.not, ptr null, ptr %add.ptr.i303
  %arrayidx47 = getelementptr inbounds [10 x ptr], ptr %tb, i32 0, i32 9
  %20 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx47, align 4
  %cmp48.not = icmp eq ptr %21, null
  br i1 %cmp48.not, label %if.end30.if.end58_crit_edge, label %if.then50

if.end30.if.end58_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then50:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i304 = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i304 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %add.ptr.i304, align 8
  %24 = trunc i64 %23 to i32
  %25 = and i32 %24, 32
  %26 = or i32 %25, %flags.4
  br label %if.end58

if.end58:                                         ; preds = %if.then50, %if.end30.if.end58_crit_edge
  %flags.6 = phi i32 [ %26, %if.then50 ], [ %flags.4, %if.end30.if.end58_crit_edge ]
  %add.ptr.i305 = getelementptr i8, ptr %7, i32 4
  %27 = ptrtoint ptr %add.ptr.i305 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %add.ptr.i305, align 4
  %29 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %index, align 4
  %and.lobit = lshr exact i32 %and, 17
  %call64 = call i32 @tcf_idr_check_alloc(ptr noundef %call, ptr noundef nonnull %index, ptr noundef %a, i32 noundef %and.lobit) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %cmp65 = icmp slt i32 %call64, 0
  br i1 %cmp65, label %if.end58.cleanup_crit_edge, label %if.end68

if.end58.cleanup_crit_edge:                       ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end68:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool69.not = icmp eq i32 %call64, 0
  %tobool.not = xor i1 %tobool, true
  %brmerge = or i1 %tobool69.not, %tobool.not
  br i1 %brmerge, label %if.end76, label %if.end68.cleanup_crit_edge

if.end68.cleanup_crit_edge:                       ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end76:                                         ; preds = %if.end68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags.6)
  %tobool77.not = icmp eq i32 %flags.6, 0
  br i1 %tobool77.not, label %if.then78, label %if.end84

if.then78:                                        ; preds = %if.end76
  br i1 %tobool69.not, label %if.else, label %if.then80

if.then80:                                        ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %a, align 4
  %call82 = call i32 @tcf_idr_release(ptr noundef %31, i1 noundef zeroext %tobool) #10
  br label %cleanup

if.else:                                          ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %33) #10
  br label %cleanup

if.end84:                                         ; preds = %if.end76
  br i1 %tobool69.not, label %if.then86, label %if.else93

if.then86:                                        ; preds = %if.end84
  %34 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %index, align 4
  %call89 = call i32 @tcf_idr_create(ptr noundef %call, i32 noundef %35, ptr noundef %est, ptr noundef %a, ptr noundef nonnull @act_skbedit_ops, i32 noundef %and.lobit, i1 noundef zeroext true, i32 noundef %act_flags) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89)
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.end92, label %if.then91

if.then91:                                        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %37) #10
  br label %cleanup

if.end92:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %a, align 4
  br label %if.end100

if.else93:                                        ; preds = %if.end84
  %40 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %a, align 4
  %and94 = and i32 %act_flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and94)
  %tobool95.not = icmp eq i32 %and94, 0
  br i1 %tobool95.not, label %if.then96, label %if.else93.if.end100_crit_edge

if.else93.if.end100_crit_edge:                    ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end100

if.then96:                                        ; preds = %if.else93
  call void @__sanitizer_cov_trace_pc() #12
  %call98 = call i32 @tcf_idr_release(ptr noundef %41, i1 noundef zeroext %tobool) #10
  br label %cleanup

if.end100:                                        ; preds = %if.else93.if.end100_crit_edge, %if.end92
  %d.0 = phi ptr [ %41, %if.else93.if.end100_crit_edge ], [ %39, %if.end92 ]
  %ret.0 = phi i32 [ 0, %if.else93.if.end100_crit_edge ], [ 1, %if.end92 ]
  %action = getelementptr i8, ptr %7, i32 12
  %42 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %action, align 4
  %call101 = call i32 @tcf_action_check_ctrlact(i32 noundef %43, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp slt i32 %call101, 0
  br i1 %cmp102, label %if.end100.release_idr_crit_edge, label %if.end105

if.end100.release_idr_crit_edge:                  ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_idr

if.end105:                                        ; preds = %if.end100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %44 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %44, i32 noundef 3520, i32 noundef 28) #13
  %tobool107.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool107.not, label %if.then111, label %if.end112, !prof !72

if.then111:                                       ; preds = %if.end105
  %45 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %goto_ch, align 4
  %tobool212.not = icmp eq ptr %46, null
  br i1 %tobool212.not, label %if.then111.release_idr_crit_edge, label %if.then213

if.then111.release_idr_crit_edge:                 ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  br label %release_idr

if.end112:                                        ; preds = %if.end105
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %flags.6, ptr %call7.i.i, align 8
  %and114 = and i32 %flags.6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and114)
  %tobool115.not = icmp eq i32 %and114, 0
  br i1 %tobool115.not, label %if.end112.if.end118_crit_edge, label %if.then116

if.end112.if.end118_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end118

if.then116:                                       ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %spec.select307 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %spec.select307, align 4
  %priority117 = getelementptr inbounds %struct.tcf_skbedit_params, ptr %call7.i.i, i32 0, i32 1
  %50 = ptrtoint ptr %priority117 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %priority117, align 4
  br label %if.end118

if.end118:                                        ; preds = %if.then116, %if.end112.if.end118_crit_edge
  %and119 = and i32 %flags.6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and119)
  %tobool120.not = icmp eq i32 %and119, 0
  br i1 %tobool120.not, label %if.end118.if.end123_crit_edge, label %if.then121

if.end118.if.end123_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end123

if.then121:                                       ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %queue_mapping.0 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %queue_mapping.0, align 2
  %queue_mapping122 = getelementptr inbounds %struct.tcf_skbedit_params, ptr %call7.i.i, i32 0, i32 4
  %53 = ptrtoint ptr %queue_mapping122 to i32
  call void @__asan_store2_noabort(i32 %53)
  store i16 %52, ptr %queue_mapping122, align 8
  br label %if.end123

if.end123:                                        ; preds = %if.then121, %if.end118.if.end123_crit_edge
  %and124 = and i32 %flags.6, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124)
  %tobool125.not = icmp eq i32 %and124, 0
  br i1 %tobool125.not, label %if.end123.if.end128_crit_edge, label %if.then126

if.end123.if.end128_crit_edge:                    ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then126:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %mark.0 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mark.0, align 4
  %mark127 = getelementptr inbounds %struct.tcf_skbedit_params, ptr %call7.i.i, i32 0, i32 2
  %56 = ptrtoint ptr %mark127 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %mark127, align 8
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.end123.if.end128_crit_edge
  %and129 = and i32 %flags.6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and129)
  %tobool130.not = icmp eq i32 %and129, 0
  br i1 %tobool130.not, label %if.end128.if.end133_crit_edge, label %if.then131

if.end128.if.end133_crit_edge:                    ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end133

if.then131:                                       ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %ptype.0 to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %ptype.0, align 2
  %ptype132 = getelementptr inbounds %struct.tcf_skbedit_params, ptr %call7.i.i, i32 0, i32 5
  %59 = ptrtoint ptr %ptype132 to i32
  call void @__asan_store2_noabort(i32 %59)
  store i16 %58, ptr %ptype132, align 2
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.end128.if.end133_crit_edge
  %mask134 = getelementptr inbounds %struct.tcf_skbedit_params, ptr %call7.i.i, i32 0, i32 3
  %60 = ptrtoint ptr %mask134 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %mask134, align 4
  %and135 = and i32 %flags.6, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and135)
  %tobool136.not = icmp eq i32 %and135, 0
  br i1 %tobool136.not, label %if.end133.if.end139_crit_edge, label %if.then137

if.end133.if.end139_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end139

if.then137:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %mask.0 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %mask.0, align 4
  %63 = ptrtoint ptr %mask134 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %mask134, align 4
  br label %if.end139

if.end139:                                        ; preds = %if.then137, %if.end133.if.end139_crit_edge
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %d.0, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #10
  %64 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %a, align 4
  %66 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %action, align 4
  %68 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %goto_ch, align 4
  %call141 = call ptr @tcf_action_set_ctrlact(ptr noundef %65, i32 noundef %67, ptr noundef %69) #10
  %70 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %call141, ptr %goto_ch, align 4
  %dep_map = getelementptr inbounds %struct.tc_action, ptr %d.0, i32 0, i32 12, i32 0, i32 0, i32 4
  %call.i = call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool145.not = icmp eq i32 %call.i, 0
  br i1 %tobool145.not, label %land.lhs.true146, label %if.end139.do.end_crit_edge

if.end139.do.end_crit_edge:                       ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true146:                                 ; preds = %if.end139
  %call147 = call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %land.lhs.true146.do.end_crit_edge, label %land.lhs.true149

land.lhs.true146.do.end_crit_edge:                ; preds = %land.lhs.true146
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true149:                                 ; preds = %land.lhs.true146
  %.b299 = load i1, ptr @tcf_skbedit_init.__warned, align 1
  br i1 %.b299, label %land.lhs.true149.do.end_crit_edge, label %if.then151

land.lhs.true149.do.end_crit_edge:                ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then151:                                       ; preds = %land.lhs.true149
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_skbedit_init.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 221, ptr noundef nonnull @.str.4) #10
  br label %do.end

do.end:                                           ; preds = %if.then151, %land.lhs.true149.do.end_crit_edge, %land.lhs.true146.do.end_crit_edge, %if.end139.do.end_crit_edge
  %params = getelementptr inbounds %struct.tcf_skbedit, ptr %d.0, i32 0, i32 1
  %71 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %params, align 16
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !81
  %73 = ptrtoint ptr %params to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %call7.i.i, ptr %params, align 16
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #10
  %tobool197.not = icmp eq ptr %72, null
  br i1 %tobool197.not, label %do.end.if.end208_crit_edge, label %do.end204

do.end.if.end208_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end208

do.end204:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr inbounds %struct.tcf_skbedit_params, ptr %72, i32 0, i32 6
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 20 to ptr)) #10
  br label %if.end208

if.end208:                                        ; preds = %do.end204, %do.end.if.end208_crit_edge
  %74 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %goto_ch, align 4
  %tobool209.not = icmp eq ptr %75, null
  br i1 %tobool209.not, label %if.end208.cleanup_crit_edge, label %if.then210

if.end208.cleanup_crit_edge:                      ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then210:                                       ; preds = %if.end208
  call void @__sanitizer_cov_trace_pc() #12
  call void @tcf_chain_put_by_act(ptr noundef nonnull %75) #10
  br label %cleanup

if.then213:                                       ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #12
  call void @tcf_chain_put_by_act(ptr noundef nonnull %46) #10
  br label %release_idr

release_idr:                                      ; preds = %if.then213, %if.then111.release_idr_crit_edge, %if.end100.release_idr_crit_edge
  %err.0 = phi i32 [ %call101, %if.end100.release_idr_crit_edge ], [ -12, %if.then213 ], [ -12, %if.then111.release_idr_crit_edge ]
  %76 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %a, align 4
  %call216 = call i32 @tcf_idr_release(ptr noundef %77, i1 noundef zeroext %tobool) #10
  br label %cleanup

cleanup:                                          ; preds = %release_idr, %if.then210, %if.end208.cleanup_crit_edge, %if.then96, %if.then91, %if.else, %if.then80, %if.end68.cleanup_crit_edge, %if.end58.cleanup_crit_edge, %if.then23.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %release_idr ], [ -17, %if.then96 ], [ %call89, %if.then91 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %if.then23.cleanup_crit_edge ], [ %call64, %if.end58.cleanup_crit_edge ], [ 0, %if.end68.cleanup_crit_edge ], [ -22, %if.else ], [ -22, %if.then80 ], [ %ret.0, %if.then210 ], [ %ret.0, %if.end208.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goto_ch) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %tb) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_skbedit_walker(ptr noundef %net, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @skbedit_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_generic_walker(ptr noundef %call, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #10
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_skbedit_stats_update(ptr noundef %a, i64 noundef %bytes, i64 noundef %packets, i64 noundef %drops, i64 noundef %lastuse, i1 noundef zeroext %hw) #2 align 64 {
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
define internal i32 @tcf_skbedit_get_fill_size(ptr nocapture noundef readnone %act) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 76
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_skbedit_offload_act_setup(ptr noundef %act, ptr nocapture noundef writeonly %entry_data, ptr nocapture noundef writeonly %index_inc, i1 noundef zeroext %bind) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call fastcc zeroext i1 @is_tcf_skbedit_with_flag(ptr noundef %act, i32 noundef 4) #10
  br i1 %bind, label %if.then, label %if.else16

if.then:                                          ; preds = %entry
  br i1 %call.i, label %if.then2, label %if.else

if.then2:                                         ; preds = %if.then
  %0 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %entry_data, align 8
  %1 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %4, 1
  store volatile i32 %add.i.i.i.i, ptr %preempt_count.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i, label %if.then2.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true.i.i

if.then2.rcu_read_lock.exit.i_crit_edge:          ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true.i.i:                                ; preds = %if.then2
  %call1.i.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %.b4.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i, label %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, label %if.then.i.i

land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i

if.then.i.i:                                      ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit.i

rcu_read_lock.exit.i:                             ; preds = %if.then.i.i, %land.lhs.true2.i.i.rcu_read_lock.exit.i_crit_edge, %land.lhs.true.i.i.rcu_read_lock.exit.i_crit_edge, %if.then2.rcu_read_lock.exit.i_crit_edge
  %params.i = getelementptr inbounds %struct.tcf_skbedit, ptr %act, i32 0, i32 1
  %5 = ptrtoint ptr %params.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %params.i, align 16
  %call.i54 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i54)
  %tobool.not.i = icmp eq i32 %call.i54, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %rcu_read_lock.exit.i.do.end7.i_crit_edge

rcu_read_lock.exit.i.do.end7.i_crit_edge:         ; preds = %rcu_read_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true.i:                                  ; preds = %rcu_read_lock.exit.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end7.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b10.i = load i1, ptr @tcf_skbedit_mark.__warned, align 1
  br i1 %.b10.i, label %land.lhs.true4.i.do.end7.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end7.i_crit_edge:             ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_skbedit_mark.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 57, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i

do.end7.i:                                        ; preds = %if.then.i, %land.lhs.true4.i.do.end7.i_crit_edge, %land.lhs.true.i.do.end7.i_crit_edge, %rcu_read_lock.exit.i.do.end7.i_crit_edge
  %mark9.i = getelementptr inbounds %struct.tcf_skbedit_params, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %mark9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mark9.i, align 4
  %call.i11.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i11.i, label %do.end7.i.tcf_skbedit_mark.exit_crit_edge, label %land.lhs.true.i14.i

do.end7.i.tcf_skbedit_mark.exit_crit_edge:        ; preds = %do.end7.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_skbedit_mark.exit

land.lhs.true.i14.i:                              ; preds = %do.end7.i
  %call1.i12.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i)
  %tobool.not.i13.i = icmp eq i32 %call1.i12.i, 0
  br i1 %tobool.not.i13.i, label %land.lhs.true.i14.i.tcf_skbedit_mark.exit_crit_edge, label %land.lhs.true2.i16.i

land.lhs.true.i14.i.tcf_skbedit_mark.exit_crit_edge: ; preds = %land.lhs.true.i14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_skbedit_mark.exit

land.lhs.true2.i16.i:                             ; preds = %land.lhs.true.i14.i
  %.b4.i15.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i, label %land.lhs.true2.i16.i.tcf_skbedit_mark.exit_crit_edge, label %if.then.i17.i

land.lhs.true2.i16.i.tcf_skbedit_mark.exit_crit_edge: ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_skbedit_mark.exit

if.then.i17.i:                                    ; preds = %land.lhs.true2.i16.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %tcf_skbedit_mark.exit

tcf_skbedit_mark.exit:                            ; preds = %if.then.i17.i, %land.lhs.true2.i16.i.tcf_skbedit_mark.exit_crit_edge, %land.lhs.true.i14.i.tcf_skbedit_mark.exit_crit_edge, %do.end7.i.tcf_skbedit_mark.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %9 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i.i.i18.i = and i32 %9, -16384
  %10 = inttoptr i32 %and.i.i.i.i.i18.i to ptr
  %preempt_count.i.i.i.i19.i = getelementptr inbounds %struct.thread_info, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i19.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i19.i, align 4
  %sub.i.i.i.i = add i32 %12, -1
  store volatile i32 %sub.i.i.i.i, ptr %preempt_count.i.i.i.i19.i, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %13 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %8, ptr %13, align 8
  br label %cleanup.thread

if.else:                                          ; preds = %if.then
  %call.i55 = tail call fastcc zeroext i1 @is_tcf_skbedit_with_flag(ptr noundef %act, i32 noundef 8) #10
  br i1 %call.i55, label %if.then5, label %if.else8

if.then5:                                         ; preds = %if.else
  %15 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 17, ptr %entry_data, align 8
  %16 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i.i.i.i56 = and i32 %16, -16384
  %17 = inttoptr i32 %and.i.i.i.i.i.i56 to ptr
  %preempt_count.i.i.i.i.i57 = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %preempt_count.i.i.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %preempt_count.i.i.i.i.i57, align 4
  %add.i.i.i.i58 = add i32 %19, 1
  store volatile i32 %add.i.i.i.i58, ptr %preempt_count.i.i.i.i.i57, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i59 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i59, label %if.then5.rcu_read_lock.exit.i69_crit_edge, label %land.lhs.true.i.i62

if.then5.rcu_read_lock.exit.i69_crit_edge:        ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i69

land.lhs.true.i.i62:                              ; preds = %if.then5
  %call1.i.i60 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i60)
  %tobool.not.i.i61 = icmp eq i32 %call1.i.i60, 0
  br i1 %tobool.not.i.i61, label %land.lhs.true.i.i62.rcu_read_lock.exit.i69_crit_edge, label %land.lhs.true2.i.i64

land.lhs.true.i.i62.rcu_read_lock.exit.i69_crit_edge: ; preds = %land.lhs.true.i.i62
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i69

land.lhs.true2.i.i64:                             ; preds = %land.lhs.true.i.i62
  %.b4.i.i63 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i63, label %land.lhs.true2.i.i64.rcu_read_lock.exit.i69_crit_edge, label %if.then.i.i65

land.lhs.true2.i.i64.rcu_read_lock.exit.i69_crit_edge: ; preds = %land.lhs.true2.i.i64
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i69

if.then.i.i65:                                    ; preds = %land.lhs.true2.i.i64
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit.i69

rcu_read_lock.exit.i69:                           ; preds = %if.then.i.i65, %land.lhs.true2.i.i64.rcu_read_lock.exit.i69_crit_edge, %land.lhs.true.i.i62.rcu_read_lock.exit.i69_crit_edge, %if.then5.rcu_read_lock.exit.i69_crit_edge
  %params.i66 = getelementptr inbounds %struct.tcf_skbedit, ptr %act, i32 0, i32 1
  %20 = ptrtoint ptr %params.i66 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %params.i66, align 16
  %call.i67 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool.not.i68 = icmp eq i32 %call.i67, 0
  br i1 %tobool.not.i68, label %land.lhs.true.i72, label %rcu_read_lock.exit.i69.do.end7.i77_crit_edge

rcu_read_lock.exit.i69.do.end7.i77_crit_edge:     ; preds = %rcu_read_lock.exit.i69
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i77

land.lhs.true.i72:                                ; preds = %rcu_read_lock.exit.i69
  %call2.i70 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i70)
  %tobool3.not.i71 = icmp eq i32 %call2.i70, 0
  br i1 %tobool3.not.i71, label %land.lhs.true.i72.do.end7.i77_crit_edge, label %land.lhs.true4.i74

land.lhs.true.i72.do.end7.i77_crit_edge:          ; preds = %land.lhs.true.i72
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i77

land.lhs.true4.i74:                               ; preds = %land.lhs.true.i72
  %.b10.i73 = load i1, ptr @tcf_skbedit_ptype.__warned, align 1
  br i1 %.b10.i73, label %land.lhs.true4.i74.do.end7.i77_crit_edge, label %if.then.i75

land.lhs.true4.i74.do.end7.i77_crit_edge:         ; preds = %land.lhs.true4.i74
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i77

if.then.i75:                                      ; preds = %land.lhs.true4.i74
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_skbedit_ptype.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 74, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i77

do.end7.i77:                                      ; preds = %if.then.i75, %land.lhs.true4.i74.do.end7.i77_crit_edge, %land.lhs.true.i72.do.end7.i77_crit_edge, %rcu_read_lock.exit.i69.do.end7.i77_crit_edge
  %ptype9.i = getelementptr inbounds %struct.tcf_skbedit_params, ptr %21, i32 0, i32 5
  %22 = ptrtoint ptr %ptype9.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %ptype9.i, align 2
  %call.i11.i76 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i11.i76, label %do.end7.i77.tcf_skbedit_ptype.exit_crit_edge, label %land.lhs.true.i14.i80

do.end7.i77.tcf_skbedit_ptype.exit_crit_edge:     ; preds = %do.end7.i77
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_skbedit_ptype.exit

land.lhs.true.i14.i80:                            ; preds = %do.end7.i77
  %call1.i12.i78 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i78)
  %tobool.not.i13.i79 = icmp eq i32 %call1.i12.i78, 0
  br i1 %tobool.not.i13.i79, label %land.lhs.true.i14.i80.tcf_skbedit_ptype.exit_crit_edge, label %land.lhs.true2.i16.i82

land.lhs.true.i14.i80.tcf_skbedit_ptype.exit_crit_edge: ; preds = %land.lhs.true.i14.i80
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_skbedit_ptype.exit

land.lhs.true2.i16.i82:                           ; preds = %land.lhs.true.i14.i80
  %.b4.i15.i81 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i81, label %land.lhs.true2.i16.i82.tcf_skbedit_ptype.exit_crit_edge, label %if.then.i17.i83

land.lhs.true2.i16.i82.tcf_skbedit_ptype.exit_crit_edge: ; preds = %land.lhs.true2.i16.i82
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_skbedit_ptype.exit

if.then.i17.i83:                                  ; preds = %land.lhs.true2.i16.i82
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %tcf_skbedit_ptype.exit

tcf_skbedit_ptype.exit:                           ; preds = %if.then.i17.i83, %land.lhs.true2.i16.i82.tcf_skbedit_ptype.exit_crit_edge, %land.lhs.true.i14.i80.tcf_skbedit_ptype.exit_crit_edge, %do.end7.i77.tcf_skbedit_ptype.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %24 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i.i.i18.i84 = and i32 %24, -16384
  %25 = inttoptr i32 %and.i.i.i.i.i18.i84 to ptr
  %preempt_count.i.i.i.i19.i85 = getelementptr inbounds %struct.thread_info, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %preempt_count.i.i.i.i19.i85 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile i32, ptr %preempt_count.i.i.i.i19.i85, align 4
  %sub.i.i.i.i86 = add i32 %27, -1
  store volatile i32 %sub.i.i.i.i86, ptr %preempt_count.i.i.i.i19.i85, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %28 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %23, ptr %28, align 8
  br label %cleanup.thread

if.else8:                                         ; preds = %if.else
  %call.i87 = tail call fastcc zeroext i1 @is_tcf_skbedit_with_flag(ptr noundef %act, i32 noundef 1) #10
  br i1 %call.i87, label %if.then10, label %if.else8.return_crit_edge

if.else8.return_crit_edge:                        ; preds = %if.else8
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then10:                                        ; preds = %if.else8
  %30 = ptrtoint ptr %entry_data to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 18, ptr %entry_data, align 8
  %31 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i.i.i.i88 = and i32 %31, -16384
  %32 = inttoptr i32 %and.i.i.i.i.i.i88 to ptr
  %preempt_count.i.i.i.i.i89 = getelementptr inbounds %struct.thread_info, ptr %32, i32 0, i32 1
  %33 = ptrtoint ptr %preempt_count.i.i.i.i.i89 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %preempt_count.i.i.i.i.i89, align 4
  %add.i.i.i.i90 = add i32 %34, 1
  store volatile i32 %add.i.i.i.i90, ptr %preempt_count.i.i.i.i.i89, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i.i91 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i.i91, label %if.then10.rcu_read_lock.exit.i101_crit_edge, label %land.lhs.true.i.i94

if.then10.rcu_read_lock.exit.i101_crit_edge:      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i101

land.lhs.true.i.i94:                              ; preds = %if.then10
  %call1.i.i92 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i92)
  %tobool.not.i.i93 = icmp eq i32 %call1.i.i92, 0
  br i1 %tobool.not.i.i93, label %land.lhs.true.i.i94.rcu_read_lock.exit.i101_crit_edge, label %land.lhs.true2.i.i96

land.lhs.true.i.i94.rcu_read_lock.exit.i101_crit_edge: ; preds = %land.lhs.true.i.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i101

land.lhs.true2.i.i96:                             ; preds = %land.lhs.true.i.i94
  %.b4.i.i95 = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i95, label %land.lhs.true2.i.i96.rcu_read_lock.exit.i101_crit_edge, label %if.then.i.i97

land.lhs.true2.i.i96.rcu_read_lock.exit.i101_crit_edge: ; preds = %land.lhs.true2.i.i96
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit.i101

if.then.i.i97:                                    ; preds = %land.lhs.true2.i.i96
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit.i101

rcu_read_lock.exit.i101:                          ; preds = %if.then.i.i97, %land.lhs.true2.i.i96.rcu_read_lock.exit.i101_crit_edge, %land.lhs.true.i.i94.rcu_read_lock.exit.i101_crit_edge, %if.then10.rcu_read_lock.exit.i101_crit_edge
  %params.i98 = getelementptr inbounds %struct.tcf_skbedit, ptr %act, i32 0, i32 1
  %35 = ptrtoint ptr %params.i98 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %params.i98, align 16
  %call.i99 = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i99)
  %tobool.not.i100 = icmp eq i32 %call.i99, 0
  br i1 %tobool.not.i100, label %land.lhs.true.i104, label %rcu_read_lock.exit.i101.do.end7.i109_crit_edge

rcu_read_lock.exit.i101.do.end7.i109_crit_edge:   ; preds = %rcu_read_lock.exit.i101
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i109

land.lhs.true.i104:                               ; preds = %rcu_read_lock.exit.i101
  %call2.i102 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i102)
  %tobool3.not.i103 = icmp eq i32 %call2.i102, 0
  br i1 %tobool3.not.i103, label %land.lhs.true.i104.do.end7.i109_crit_edge, label %land.lhs.true4.i106

land.lhs.true.i104.do.end7.i109_crit_edge:        ; preds = %land.lhs.true.i104
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i109

land.lhs.true4.i106:                              ; preds = %land.lhs.true.i104
  %.b10.i105 = load i1, ptr @tcf_skbedit_priority.__warned, align 1
  br i1 %.b10.i105, label %land.lhs.true4.i106.do.end7.i109_crit_edge, label %if.then.i107

land.lhs.true4.i106.do.end7.i109_crit_edge:       ; preds = %land.lhs.true4.i106
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7.i109

if.then.i107:                                     ; preds = %land.lhs.true4.i106
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @tcf_skbedit_priority.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 91, ptr noundef nonnull @.str.1) #10
  br label %do.end7.i109

do.end7.i109:                                     ; preds = %if.then.i107, %land.lhs.true4.i106.do.end7.i109_crit_edge, %land.lhs.true.i104.do.end7.i109_crit_edge, %rcu_read_lock.exit.i101.do.end7.i109_crit_edge
  %priority9.i = getelementptr inbounds %struct.tcf_skbedit_params, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %priority9.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %priority9.i, align 4
  %call.i11.i108 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i11.i108, label %do.end7.i109.tcf_skbedit_priority.exit_crit_edge, label %land.lhs.true.i14.i112

do.end7.i109.tcf_skbedit_priority.exit_crit_edge: ; preds = %do.end7.i109
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_skbedit_priority.exit

land.lhs.true.i14.i112:                           ; preds = %do.end7.i109
  %call1.i12.i110 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i12.i110)
  %tobool.not.i13.i111 = icmp eq i32 %call1.i12.i110, 0
  br i1 %tobool.not.i13.i111, label %land.lhs.true.i14.i112.tcf_skbedit_priority.exit_crit_edge, label %land.lhs.true2.i16.i114

land.lhs.true.i14.i112.tcf_skbedit_priority.exit_crit_edge: ; preds = %land.lhs.true.i14.i112
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_skbedit_priority.exit

land.lhs.true2.i16.i114:                          ; preds = %land.lhs.true.i14.i112
  %.b4.i15.i113 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i15.i113, label %land.lhs.true2.i16.i114.tcf_skbedit_priority.exit_crit_edge, label %if.then.i17.i115

land.lhs.true2.i16.i114.tcf_skbedit_priority.exit_crit_edge: ; preds = %land.lhs.true2.i16.i114
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_skbedit_priority.exit

if.then.i17.i115:                                 ; preds = %land.lhs.true2.i16.i114
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %tcf_skbedit_priority.exit

tcf_skbedit_priority.exit:                        ; preds = %if.then.i17.i115, %land.lhs.true2.i16.i114.tcf_skbedit_priority.exit_crit_edge, %land.lhs.true.i14.i112.tcf_skbedit_priority.exit_crit_edge, %do.end7.i109.tcf_skbedit_priority.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %39 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i.i.i18.i116 = and i32 %39, -16384
  %40 = inttoptr i32 %and.i.i.i.i.i18.i116 to ptr
  %preempt_count.i.i.i.i19.i117 = getelementptr inbounds %struct.thread_info, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %preempt_count.i.i.i.i19.i117 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile i32, ptr %preempt_count.i.i.i.i19.i117, align 4
  %sub.i.i.i.i118 = add i32 %42, -1
  store volatile i32 %sub.i.i.i.i118, ptr %preempt_count.i.i.i.i19.i117, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  %43 = getelementptr inbounds %struct.flow_action_entry, ptr %entry_data, i32 0, i32 5
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %38, ptr %43, align 8
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %tcf_skbedit_priority.exit, %tcf_skbedit_ptype.exit, %tcf_skbedit_mark.exit
  %45 = ptrtoint ptr %index_inc to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %index_inc, align 4
  br label %return

if.else16:                                        ; preds = %entry
  br i1 %call.i, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else16
  call void @__sanitizer_cov_trace_pc() #12
  %id19 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %46 = ptrtoint ptr %id19 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 16, ptr %id19, align 8
  br label %return

if.else20:                                        ; preds = %if.else16
  %call.i120 = tail call fastcc zeroext i1 @is_tcf_skbedit_with_flag(ptr noundef %act, i32 noundef 8) #10
  br i1 %call.i120, label %if.then22, label %if.else24

if.then22:                                        ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  %id23 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %47 = ptrtoint ptr %id23 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 17, ptr %id23, align 8
  br label %return

if.else24:                                        ; preds = %if.else20
  %call.i121 = tail call fastcc zeroext i1 @is_tcf_skbedit_with_flag(ptr noundef %act, i32 noundef 1) #10
  br i1 %call.i121, label %if.then26, label %if.else24.return_crit_edge

if.else24.return_crit_edge:                       ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then26:                                        ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  %id27 = getelementptr inbounds %struct.flow_offload_action, ptr %entry_data, i32 0, i32 2
  %48 = ptrtoint ptr %id27 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 18, ptr %id27, align 8
  br label %return

return:                                           ; preds = %if.then26, %if.else24.return_crit_edge, %if.then22, %if.then18, %cleanup.thread, %if.else8.return_crit_edge
  %retval.2 = phi i32 [ -95, %if.else8.return_crit_edge ], [ -95, %if.else24.return_crit_edge ], [ 0, %cleanup.thread ], [ 0, %if.then22 ], [ 0, %if.then26 ], [ 0, %if.then18 ]
  ret i32 %retval.2
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_bh_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

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
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = tail call i32 @llvm.read_register.i32(metadata !62) #10
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.6, i32 noundef 45, ptr noundef nonnull @.str.1) #10
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i16, %land.lhs.true2.i15.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i13.rcu_read_unlock.exit_crit_edge, %do.end7.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %8 = tail call i32 @llvm.read_register.i32(metadata !62) #10
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
declare dso_local i32 @tcf_idr_release(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_idr_cleanup(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_idr_create(ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_check_ctrlact(i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
define internal fastcc zeroext i1 @is_tcf_skbedit_with_flag(ptr noundef %a, i32 noundef %flag) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %a, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %land.lhs.true

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  %id = getelementptr inbounds %struct.tc_action_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %3)
  %cmp = icmp eq i32 %3, 11
  br i1 %cmp, label %if.then, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %land.lhs.true
  %4 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i.i.i = and i32 %4, -16384
  %5 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %7, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !82
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #10
  %call.i = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i, label %if.then.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.then.rcu_read_lock.exit_crit_edge:             ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.then
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
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 696, ptr noundef nonnull @.str.8) #10
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.then.rcu_read_lock.exit_crit_edge
  %params = getelementptr inbounds %struct.tcf_skbedit, ptr %a, i32 0, i32 1
  %8 = ptrtoint ptr %params to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %params, align 16
  %call = tail call i32 @rcu_read_lock_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool3.not = icmp eq i32 %call, 0
  br i1 %tobool3.not, label %land.lhs.true4, label %rcu_read_lock.exit.do.end11_crit_edge

rcu_read_lock.exit.do.end11_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

land.lhs.true4:                                   ; preds = %rcu_read_lock.exit
  %call5 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %land.lhs.true4.do.end11_crit_edge, label %land.lhs.true7

land.lhs.true4.do.end11_crit_edge:                ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

land.lhs.true7:                                   ; preds = %land.lhs.true4
  %.b18 = load i1, ptr @is_tcf_skbedit_with_flag.__warned, align 1
  br i1 %.b18, label %land.lhs.true7.do.end11_crit_edge, label %if.then9

land.lhs.true7.do.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end11

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @is_tcf_skbedit_with_flag.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.10, i32 noundef 38, ptr noundef nonnull @.str.1) #10
  br label %do.end11

do.end11:                                         ; preds = %if.then9, %land.lhs.true7.do.end11_crit_edge, %land.lhs.true4.do.end11_crit_edge, %rcu_read_lock.exit.do.end11_crit_edge
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %call.i19 = tail call zeroext i1 @rcu_is_watching() #10
  br i1 %call.i19, label %do.end11.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i22

do.end11.rcu_read_unlock.exit_crit_edge:          ; preds = %do.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true.i22:                                ; preds = %do.end11
  %call1.i20 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i20)
  %tobool.not.i21 = icmp eq i32 %call1.i20, 0
  br i1 %tobool.not.i21, label %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i24

land.lhs.true.i22.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i22
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

land.lhs.true2.i24:                               ; preds = %land.lhs.true.i22
  %.b4.i23 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i23, label %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, label %if.then.i25

land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #12
  br label %rcu_read_unlock.exit

if.then.i25:                                      ; preds = %land.lhs.true2.i24
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.7, i32 noundef 724, ptr noundef nonnull @.str.9) #10
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i25, %land.lhs.true2.i24.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i22.rcu_read_unlock.exit_crit_edge, %do.end11.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !83
  %12 = tail call i32 @llvm.read_register.i32(metadata !62) #10
  %and.i.i.i.i.i26 = and i32 %12, -16384
  %13 = inttoptr i32 %and.i.i.i.i.i26 to ptr
  %preempt_count.i.i.i.i27 = getelementptr inbounds %struct.thread_info, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %preempt_count.i.i.i.i27 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile i32, ptr %preempt_count.i.i.i.i27, align 4
  %sub.i.i.i = add i32 %15, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i27, align 4
  tail call void @rcu_read_unlock_strict() #10
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #10
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %flag)
  %cmp14 = icmp eq i32 %11, %flag
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp14, %rcu_read_unlock.exit ], [ false, %land.lhs.true.cleanup_crit_edge ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skbedit_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @skbedit_net_id, align 4
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
  store ptr @act_skbedit_ops, ptr %ops2.i, align 4
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
define internal void @skbedit_exit_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @skbedit_net_id, align 4
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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { nounwind readonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !19, !20, !22, !24, !25, !27, !29, !31, !32, !34, !35, !36, !38, !39, !41, !43, !45, !47, !48, !50, !52, !54, !56, !58, !59, !61}
!llvm.named.register.sp = !{!62}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__UNIQUE_ID_author537, !1, !"__UNIQUE_ID_author537", i1 false, i1 false}
!1 = !{!"../net/sched/act_skbedit.c", i32 400, i32 1}
!2 = !{ptr @__UNIQUE_ID_description538, !3, !"__UNIQUE_ID_description538", i1 false, i1 false}
!3 = !{!"../net/sched/act_skbedit.c", i32 401, i32 1}
!4 = !{ptr @__UNIQUE_ID_file539, !5, !"__UNIQUE_ID_file539", i1 false, i1 false}
!5 = !{!"../net/sched/act_skbedit.c", i32 402, i32 1}
!6 = !{ptr @__UNIQUE_ID_license540, !5, !"__UNIQUE_ID_license540", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_act_skbedit__541_414_skbedit_init_module6, !8, !"__initcall__kmod_act_skbedit__541_414_skbedit_init_module6", i1 false, i1 false}
!8 = !{!"../net/sched/act_skbedit.c", i32 414, i32 1}
!9 = !{ptr @__exitcall_skbedit_cleanup_module, !10, !"__exitcall_skbedit_cleanup_module", i1 false, i1 false}
!10 = !{!"../net/sched/act_skbedit.c", i32 415, i32 1}
!11 = !{ptr @act_skbedit_ops, !12, !"act_skbedit_ops", i1 false, i1 false}
!12 = !{!"../net/sched/act_skbedit.c", i32 365, i32 29}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/sched/act_skbedit.c", i32 36, i32 11}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/sched/act_skbedit.c", i32 252, i32 11}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/net/netlink.h", i32 991, i32 3}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/sched/act_skbedit.c", i32 297, i32 11}
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
!39 = !{ptr @skbedit_net_id, !40, !"skbedit_net_id", i1 false, i1 false}
!40 = !{!"../net/sched/act_skbedit.c", i32 23, i32 21}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/sched/act_skbedit.c", i32 220, i32 15}
!43 = !{ptr @skbedit_policy, !44, !"skbedit_policy", i1 false, i1 false}
!44 = !{!"../net/sched/act_skbedit.c", i32 87, i32 32}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../include/net/tc_act/tc_skbedit.h", i32 38, i32 11}
!47 = !{ptr @.str.10, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../include/net/tc_act/tc_skbedit.h", i32 57, i32 9}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../include/net/tc_act/tc_skbedit.h", i32 74, i32 10}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../include/net/tc_act/tc_skbedit.h", i32 91, i32 13}
!54 = !{ptr @skbedit_net_ops, !55, !"skbedit_net_ops", i1 false, i1 false}
!55 = !{!"../net/sched/act_skbedit.c", i32 393, i32 33}
!56 = !{ptr @tc_action_net_init.__key, !57, !"__key", i1 false, i1 false}
!57 = !{!"../include/net/act_api.h", i32 156, i32 2}
!58 = !{ptr @.str.11, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @xa_init_flags.__key, !60, !"__key", i1 false, i1 false}
!60 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!61 = !{ptr @.str.12, !60, !"<string literal>", i1 false, i1 false}
!62 = !{!"sp"}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!72 = !{!"branch_weights", i32 1, i32 2000}
!73 = !{i64 2149873668}
!74 = !{i64 2149878600}
!75 = !{i64 2149900312}
!76 = !{i64 2149905204}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2149981661}
!79 = !{i64 2149981986}
!80 = !{!"auto-init"}
!81 = !{i64 2157655148}
!82 = !{i64 2149365669}
!83 = !{i64 2149365935}
