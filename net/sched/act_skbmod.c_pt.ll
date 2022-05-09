; ModuleID = '/llk/IR_all_yes/net/sched/act_skbmod.c_pt.bc'
source_filename = "../net/sched/act_skbmod.c"
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
%struct.tcf_skbmod = type { %struct.tc_action, ptr, [12 x i8] }
%struct.tcf_skbmod_params = type { %struct.callback_head, i64, [6 x i8], i16, [6 x i8] }
%struct.callback_head = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.131, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.145, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.131 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.possible_net_t = type { ptr }
%union.anon.145 = type { ptr }
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
%struct.ethhdr = type { [6 x i8], [6 x i8], i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.tc_skbmod = type { i32, i32, i32, i32, i32, i64 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.90, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.90 = type { %struct.hlist_head, %struct.spinlock, i32 }
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

@__UNIQUE_ID_author507 = internal constant [55 x i8] c"act_skbmod.author=Jamal Hadi Salim, <jhs@mojatatu.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description508 = internal constant [40 x i8] c"act_skbmod.description=SKB data mod-ing\00", section ".modinfo", align 1
@__UNIQUE_ID_file509 = internal constant [37 x i8] c"act_skbmod.file=net/sched/act_skbmod\00", section ".modinfo", align 1
@__UNIQUE_ID_license510 = internal constant [23 x i8] c"act_skbmod.license=GPL\00", section ".modinfo", align 1
@act_skbmod_ops = internal global { %struct.tc_action_ops, [48 x i8] } { %struct.tc_action_ops { %struct.list_head zeroinitializer, [16 x i8] c"skbmod\00\00\00\00\00\00\00\00\00\00", i32 15, i32 288, ptr null, ptr @tcf_skbmod_act, ptr @tcf_skbmod_dump, ptr @tcf_skbmod_cleanup, ptr @tcf_skbmod_search, ptr @tcf_skbmod_init, ptr @tcf_skbmod_walker, ptr null, ptr null, ptr null, ptr null, ptr null }, [48 x i8] zeroinitializer }, align 32
@skbmod_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr @skbmod_init_net, ptr null, ptr null, ptr @skbmod_exit_net, ptr @skbmod_net_id, i32 8 }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_act_skbmod__511_342_skbmod_init_module6 = internal global ptr @skbmod_init_module, section ".initcall6.init", align 4
@__exitcall_skbmod_cleanup_module = internal global ptr @skbmod_cleanup_module, section ".exitcall.exit", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@tcf_skbmod_act.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/sched/act_skbmod.c\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@tcf_skbmod_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@skbmod_net_id = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.9 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@skbmod_policy = internal constant { [7 x %struct.nla_policy], [40 x i8] } { [7 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 32, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 6, %union.anon.76 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.76 zeroinitializer }, %struct.nla_policy zeroinitializer], [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tc_action_net_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"&tn->idrinfo->lock\00", [45 x i8] zeroinitializer }, align 32
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"act_skbmod_ops\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 296, i32 29 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"skbmod_net_ops\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 321, i32 33 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 41, i32 6 }
@___asan_gen_.30 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.30, i32 271, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 598, i32 8 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 252, i32 6 }
@___asan_gen_.39 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.39, i32 991, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [14 x i8] c"skbmod_net_id\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 22, i32 21 }
@___asan_gen_.45 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.45, i32 45, i32 7 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 695, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.54, i32 723, i32 2 }
@___asan_gen_.56 = private unnamed_addr constant [14 x i8] c"skbmod_policy\00", align 1
@___asan_gen_.57 = private constant [26 x i8] c"../net/sched/act_skbmod.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 94, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant [25 x i8] c"../include/net/act_api.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 156, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.69 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.69, i32 378, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_author507, ptr @__UNIQUE_ID_description508, ptr @__UNIQUE_ID_file509, ptr @__UNIQUE_ID_license510, ptr @__exitcall_skbmod_cleanup_module, ptr @__initcall__kmod_act_skbmod__511_342_skbmod_init_module6, ptr @skbmod_cleanup_module, ptr @act_skbmod_ops, ptr @skbmod_net_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @skbmod_net_id, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @skbmod_policy, ptr @tc_action_net_init.__key, ptr @.str.10, ptr @xa_init_flags.__key, ptr @.str.11], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @act_skbmod_ops to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skbmod_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skbmod_net_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skbmod_policy to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_action_net_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @skbmod_cleanup_module() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @tcf_unregister_action(ptr noundef nonnull @act_skbmod_ops, ptr noundef nonnull @skbmod_net_ops) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_unregister_action(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @skbmod_init_module() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_register_action(ptr noundef nonnull @act_skbmod_ops, ptr noundef nonnull @skbmod_net_ops) #8
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_skbmod_act(ptr noundef %skb, ptr noundef %a, ptr nocapture noundef readnone %res) #2 align 64 {
entry:
  %vhdr.i.i.i.i = alloca %struct.vlan_hdr, align 2
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
  br i1 %tobool.not.i, label %if.then7.i, label %if.end.i.tcf_lastuse_update.exit_crit_edge, !prof !63

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
  %10 = tail call i32 @llvm.read_register.i32(metadata !53) #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !64
  %28 = tail call i32 @llvm.read_register.i32(metadata !53) #8
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !65
  %37 = tail call i32 @llvm.read_register.i32(metadata !53) #8
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
  %41 = tail call i32 @llvm.read_register.i32(metadata !53) #8
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
  %45 = tail call i32 @llvm.read_register.i32(metadata !53) #8
  %and.i.i.i9.i.i.i.i = and i32 %45, -16384
  %46 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %48, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !66
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !67
  %56 = tail call i32 @llvm.read_register.i32(metadata !53) #8
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
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, label %if.then.i.i.i.i, !prof !68

land.rhs58.i.i.i.i.bstats_update.exit_crit_edge:  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %bstats_update.exit

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %bstats_update.exit

bstats_update.exit:                               ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs22.i.i.i.i.bstats_update.exit_crit_edge, %land.rhs.i.i.i.i.bstats_update.exit_crit_edge, %land.lhs.true.i.i.i.i.bstats_update.exit_crit_edge, %cond.end.i.bstats_update.exit_crit_edge
  %conv.i136 = zext i32 %18 to i64
  %syncp.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %16, i32 0, i32 2
  %60 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %61, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !69
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %16, i32 0, i32 2, i32 0, i32 1
  %62 = tail call ptr @llvm.returnaddress(i32 0) #8
  %63 = ptrtoint ptr %62 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %63) #8
  %64 = ptrtoint ptr %16 to i32
  call void @__asan_load8_noabort(i32 %64)
  %65 = load i64, ptr %16, align 8
  %add.i.i.i = add i64 %65, %conv.i136
  store i64 %add.i.i.i, ptr %16, align 8
  %packets2.i.i = getelementptr inbounds %struct.gnet_stats_basic_sync, ptr %16, i32 0, i32 1
  %conv.i7.i.i = zext i32 %cond.i to i64
  %66 = ptrtoint ptr %packets2.i.i to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %packets2.i.i, align 8
  %add.i8.i.i = add i64 %67, %conv.i7.i.i
  store i64 %add.i8.i.i, ptr %packets2.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %63) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !70
  %68 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %69, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %70 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load volatile i32, ptr %tcfa_action, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %71)
  %cmp = icmp eq i32 %71, 2
  br i1 %cmp, label %bstats_update.exit.do.body89_crit_edge, label %if.end, !prof !63

bstats_update.exit.do.body89_crit_edge:           ; preds = %bstats_update.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body89

if.end:                                           ; preds = %bstats_update.exit
  %network_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %72 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %network_header.i, align 4
  %conv.i137 = zext i16 %73 to i32
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %74 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %mac_header.i, align 2
  %conv1.i = zext i16 %75 to i32
  %sub.i = sub nsw i32 %conv.i137, %conv1.i
  %skbmod_p = getelementptr inbounds %struct.tcf_skbmod, ptr %a, i32 0, i32 1
  %76 = ptrtoint ptr %skbmod_p to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile ptr, ptr %skbmod_p, align 16
  %call15 = tail call i32 @rcu_read_lock_bh_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true, label %if.end.do.end24_crit_edge

if.end.do.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

land.lhs.true:                                    ; preds = %if.end
  %call17 = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %land.lhs.true.do.end24_crit_edge, label %land.lhs.true19

land.lhs.true.do.end24_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

land.lhs.true19:                                  ; preds = %land.lhs.true
  %.b135 = load i1, ptr @tcf_skbmod_act.__warned, align 1
  br i1 %.b135, label %land.lhs.true19.do.end24_crit_edge, label %if.then21

land.lhs.true19.do.end24_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end24

if.then21:                                        ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tcf_skbmod_act.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 41, ptr noundef nonnull @.str.1) #8
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %land.lhs.true19.do.end24_crit_edge, %land.lhs.true.do.end24_crit_edge, %if.end.do.end24_crit_edge
  %flags26 = getelementptr inbounds %struct.tcf_skbmod_params, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %flags26 to i32
  call void @__asan_load8_noabort(i32 %78)
  %79 = load i64, ptr %flags26, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 16, i64 %79)
  %cmp27 = icmp eq i64 %79, 16
  br i1 %cmp27, label %if.then28, label %if.else

if.then28:                                        ; preds = %do.end24
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %80 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %82 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %83 to i32
  %84 = zext i16 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %84, ptr @__sancov_gen_cov_switch_values)
  switch i16 %81, label %if.then28.skb_protocol.exit_crit_edge [
    i16 -30552, label %if.then28.if.then.i.i.i_crit_edge
    i16 -32512, label %if.then28.if.then.i.i.i_crit_edge197
  ]

if.then28.if.then.i.i.i_crit_edge197:             ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then28.if.then.i.i.i_crit_edge:                ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i

if.then28.skb_protocol.exit_crit_edge:            ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %if.then28.if.then.i.i.i_crit_edge, %if.then28.if.then.i.i.i_crit_edge197
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %83)
  %tobool.not.i.i.i = icmp eq i16 %83, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %83)
  %cmp.i.i.i = icmp ult i16 %83, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !63

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 598, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %85 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i138, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #8
  %86 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %86)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !71
  %87 = ptrtoint ptr %85 to i32
  call void @__asan_store2_noabort(i32 %87)
  store i16 -1, ptr %85, align 2, !annotation !71
  %88 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %len.i.i.i.i.i, align 4
  %90 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %92 = add i32 %vlan_depth.1.i.i.i, %91
  %sub.i1.i.i.i.i = sub i32 %89, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !68

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %93 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %94, i32 %vlan_depth.1.i.i.i
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
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !63
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %95 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !63
  br i1 %95, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !63

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #8
  br label %cleanup

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %96 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #8
  %98 = zext i16 %97 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %97, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge198
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge198: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge198
  %add.i.i.i138 = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %if.then28.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ %81, %if.then28.skb_protocol.exit_crit_edge ], [ %97, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %99 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.13)
  switch i16 %retval.2.i.i.i, label %skb_protocol.exit.cleanup_crit_edge [
    i16 2048, label %skb_protocol.exit.sw.bb_crit_edge
    i16 -31011, label %skb_protocol.exit.sw.bb_crit_edge199
  ]

skb_protocol.exit.sw.bb_crit_edge199:             ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

skb_protocol.exit.sw.bb_crit_edge:                ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

skb_protocol.exit.cleanup_crit_edge:              ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb:                                            ; preds = %skb_protocol.exit.sw.bb_crit_edge, %skb_protocol.exit.sw.bb_crit_edge199
  %transport_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 19
  %100 = ptrtoint ptr %transport_header.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %transport_header.i, align 2
  %conv.i139 = zext i16 %101 to i32
  %102 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %network_header.i, align 4
  %conv1.i141 = zext i16 %103 to i32
  %sub.i142 = add nsw i32 %sub.i, %conv.i139
  %add31 = sub nsw i32 %sub.i142, %conv1.i141
  br label %if.end38

if.else:                                          ; preds = %do.end24
  %104 = getelementptr inbounds %struct.anon.51, ptr %skb, i32 0, i32 2
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %104, align 8
  %tobool32.not = icmp eq ptr %106, null
  br i1 %tobool32.not, label %if.else.cleanup_crit_edge, label %lor.lhs.false

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.else
  %type = getelementptr inbounds %struct.net_device, ptr %106, i32 0, i32 32
  %107 = ptrtoint ptr %type to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %type, align 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %108)
  %cmp34.not = icmp eq i16 %108, 1
  br i1 %cmp34.not, label %lor.lhs.false.if.end38_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.if.end38_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end38:                                         ; preds = %lor.lhs.false.if.end38_crit_edge, %sw.bb
  %max_edit_len.0 = phi i32 [ %add31, %sw.bb ], [ %sub.i, %lor.lhs.false.if.end38_crit_edge ]
  %call39 = call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %max_edit_len.0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end48, label %if.end38.do.body89_crit_edge, !prof !68

if.end38.do.body89_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body89

if.end48:                                         ; preds = %if.end38
  %and = and i64 %79, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool49.not = icmp eq i64 %and, 0
  br i1 %tobool49.not, label %if.end48.if.end53_crit_edge, label %if.then50

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %109 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %head.i.i, align 8
  %111 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %mac_header.i, align 2
  %conv.i.i = zext i16 %112 to i32
  %add.ptr.i.i = getelementptr i8, ptr %110, i32 %conv.i.i
  %eth_dst = getelementptr inbounds %struct.tcf_skbmod_params, ptr %77, i32 0, i32 2
  %113 = ptrtoint ptr %eth_dst to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %eth_dst, align 4
  %115 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %add.ptr.i.i, align 4
  %add.ptr.i = getelementptr %struct.tcf_skbmod_params, ptr %77, i32 0, i32 2, i32 4
  %116 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %add.ptr.i, align 2
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i.i, i32 4
  %118 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %118)
  store i16 %117, ptr %add.ptr1.i, align 2
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end48.if.end53_crit_edge
  %and54 = and i64 %79, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and54)
  %tobool55.not = icmp eq i64 %and54, 0
  br i1 %tobool55.not, label %if.end53.if.end60_crit_edge, label %if.then56

if.end53.if.end60_crit_edge:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then56:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i143 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %119 = ptrtoint ptr %head.i.i143 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %head.i.i143, align 8
  %121 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %121)
  %122 = load i16, ptr %mac_header.i, align 2
  %conv.i.i145 = zext i16 %122 to i32
  %add.ptr.i.i146 = getelementptr i8, ptr %120, i32 %conv.i.i145
  %h_source = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i146, i32 0, i32 1
  %eth_src = getelementptr inbounds %struct.tcf_skbmod_params, ptr %77, i32 0, i32 4
  %123 = ptrtoint ptr %eth_src to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %eth_src, align 4
  %125 = ptrtoint ptr %h_source to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %124, ptr %h_source, align 4
  %add.ptr.i147 = getelementptr %struct.tcf_skbmod_params, ptr %77, i32 0, i32 4, i32 4
  %126 = ptrtoint ptr %add.ptr.i147 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %add.ptr.i147, align 2
  %add.ptr1.i148 = getelementptr i8, ptr %h_source, i32 4
  %128 = ptrtoint ptr %add.ptr1.i148 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 %127, ptr %add.ptr1.i148, align 2
  br label %if.end60

if.end60:                                         ; preds = %if.then56, %if.end53.if.end60_crit_edge
  %and61 = and i64 %79, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and61)
  %tobool62.not = icmp eq i64 %and61, 0
  br i1 %tobool62.not, label %if.end60.if.end65_crit_edge, label %if.then63

if.end60.if.end65_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end65

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #10
  %eth_type = getelementptr inbounds %struct.tcf_skbmod_params, ptr %77, i32 0, i32 3
  %129 = ptrtoint ptr %eth_type to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %eth_type, align 2
  %head.i.i149 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %131 = ptrtoint ptr %head.i.i149 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %head.i.i149, align 8
  %133 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %mac_header.i, align 2
  %conv.i.i151 = zext i16 %134 to i32
  %add.ptr.i.i152 = getelementptr i8, ptr %132, i32 %conv.i.i151
  %h_proto = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i152, i32 0, i32 2
  %135 = ptrtoint ptr %h_proto to i32
  call void @__asan_storeN_noabort(i32 %135, i32 2)
  store i16 %130, ptr %h_proto, align 1
  br label %if.end65

if.end65:                                         ; preds = %if.then63, %if.end60.if.end65_crit_edge
  %and66 = and i64 %79, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and66)
  %tobool67.not = icmp eq i64 %and66, 0
  br i1 %tobool67.not, label %if.end65.if.end83_crit_edge, label %if.then68

if.end65.if.end83_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end83

if.then68:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i153 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %136 = ptrtoint ptr %head.i.i153 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %head.i.i153, align 8
  %138 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %mac_header.i, align 2
  %conv.i.i155 = zext i16 %139 to i32
  %add.ptr.i.i156 = getelementptr i8, ptr %137, i32 %conv.i.i155
  %140 = ptrtoint ptr %add.ptr.i.i156 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %add.ptr.i.i156, align 4
  %add.ptr.i157 = getelementptr i8, ptr %add.ptr.i.i156, i32 4
  %142 = ptrtoint ptr %add.ptr.i157 to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %add.ptr.i157, align 2
  %h_source77 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i156, i32 0, i32 1
  %144 = ptrtoint ptr %h_source77 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %h_source77, align 4
  store i32 %145, ptr %add.ptr.i.i156, align 4
  %add.ptr.i167 = getelementptr i8, ptr %h_source77, i32 4
  %146 = ptrtoint ptr %add.ptr.i167 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %add.ptr.i167, align 2
  store i16 %147, ptr %add.ptr.i157, align 2
  %148 = load ptr, ptr %head.i.i153, align 8
  %149 = load i16, ptr %mac_header.i, align 2
  %conv.i.i171 = zext i16 %149 to i32
  %add.ptr.i.i172 = getelementptr i8, ptr %148, i32 %conv.i.i171
  %h_source80 = getelementptr inbounds %struct.ethhdr, ptr %add.ptr.i.i172, i32 0, i32 1
  %150 = ptrtoint ptr %h_source80 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %141, ptr %h_source80, align 4
  %add.ptr1.i174 = getelementptr i8, ptr %h_source80, i32 4
  %151 = ptrtoint ptr %add.ptr1.i174 to i32
  call void @__asan_store2_noabort(i32 %151)
  store i16 %143, ptr %add.ptr1.i174, align 2
  br label %if.end83

if.end83:                                         ; preds = %if.then68, %if.end65.if.end83_crit_edge
  %and84 = and i64 %79, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and84)
  %tobool85.not = icmp eq i64 %and84, 0
  br i1 %tobool85.not, label %if.end83.cleanup_crit_edge, label %if.then86

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then86:                                        ; preds = %if.end83
  %protocol.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %152 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %152)
  %153 = load i16, ptr %protocol.i.i.i, align 8
  %mac_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %154 = ptrtoint ptr %mac_len.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %mac_len.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %155 to i32
  %156 = zext i16 %153 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.14)
  switch i16 %153, label %if.then86.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %if.then86.if.then.i.i.i.i176_crit_edge
    i16 -32512, label %if.then86.if.then.i.i.i.i176_crit_edge200
  ]

if.then86.if.then.i.i.i.i176_crit_edge200:        ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i.i176

if.then86.if.then.i.i.i.i176_crit_edge:           ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i.i.i.i176

if.then86.skb_protocol.exit.i_crit_edge:          ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_protocol.exit.i

if.then.i.i.i.i176:                               ; preds = %if.then86.if.then.i.i.i.i176_crit_edge, %if.then86.if.then.i.i.i.i176_crit_edge200
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %155)
  %tobool.not.i.i.i.i175 = icmp eq i16 %155, 0
  br i1 %tobool.not.i.i.i.i175, label %if.then.i.i.i.i176.if.end26.i.i.i.i_crit_edge, label %if.then1.i.i.i.i

if.then.i.i.i.i176.if.end26.i.i.i.i_crit_edge:    ; preds = %if.then.i.i.i.i176
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26.i.i.i.i

if.then1.i.i.i.i:                                 ; preds = %if.then.i.i.i.i176
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %155)
  %cmp.i.i.i.i177 = icmp ult i16 %155, 4
  br i1 %cmp.i.i.i.i177, label %do.end.i.i.i.i, label %if.end25.i.i.i.i, !prof !63

do.end.i.i.i.i:                                   ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 598, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end25.i.i.i.i:                                 ; preds = %if.then1.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  br label %if.end26.i.i.i.i

if.end26.i.i.i.i:                                 ; preds = %if.end25.i.i.i.i, %if.then.i.i.i.i176.if.end26.i.i.i.i_crit_edge
  %vlan_depth.0.i.i.i.i = phi i32 [ %sub.i.i.i.i, %if.end25.i.i.i.i ], [ 14, %if.then.i.i.i.i176.if.end26.i.i.i.i_crit_edge ]
  %157 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i.i

do.body27.i.i.i.i:                                ; preds = %do.body27.backedge.i.i.i.i, %if.end26.i.i.i.i
  %vlan_depth.1.i.i.i.i = phi i32 [ %vlan_depth.0.i.i.i.i, %if.end26.i.i.i.i ], [ %add.i.i.i.i178, %do.body27.backedge.i.i.i.i ]
  %parse_depth.0.i.i.i.i = phi i32 [ 8, %if.end26.i.i.i.i ], [ %dec.i.i.i.i, %do.body27.backedge.i.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #8
  %158 = ptrtoint ptr %vhdr.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %158)
  store i16 -1, ptr %vhdr.i.i.i.i, align 2, !annotation !71
  %159 = ptrtoint ptr %157 to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 -1, ptr %157, align 2, !annotation !71
  %160 = ptrtoint ptr %len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %len.i.i.i.i.i.i, align 4
  %162 = ptrtoint ptr %data_len.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %data_len.i.i.i.i.i.i, align 8
  %164 = add i32 %vlan_depth.1.i.i.i.i, %163
  %sub.i1.i.i.i.i.i = sub i32 %161, %164
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i, !prof !68

if.then.i.i.i.i.i.i:                              ; preds = %do.body27.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %165 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %data.i.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i.i = getelementptr i8, ptr %166, i32 %vlan_depth.1.i.i.i.i
  br label %skb_header_pointer.exit.i.i.i.i

if.end.i.i.i.i.i.i:                               ; preds = %do.body27.i.i.i.i
  br i1 %tobool2.not.i.i.i.i.i.i, label %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.i

if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i.i.i

lor.lhs.false.i.i.i.i.i.i:                        ; preds = %if.end.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i.i, ptr noundef nonnull %vhdr.i.i.i.i, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i.i)
  %cmp3.i.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i.i, !prof !63
  br label %skb_header_pointer.exit.i.i.i.i

skb_header_pointer.exit.i.i.i.i:                  ; preds = %lor.lhs.false.i.i.i.i.i.i, %if.then.i.i.i.i.i.i
  %retval.0.i.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i.i, %if.then.i.i.i.i.i.i ], [ %spec.select.i.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i.i ]
  %tobool29.not.i.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i.i, null
  %dec.i.i.i.i = add nsw i32 %parse_depth.0.i.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i.i)
  %tobool30.not.i.i.i.i = icmp eq i32 %dec.i.i.i.i, 0
  %167 = select i1 %tobool29.not.i.i.i.i, i1 true, i1 %tobool30.not.i.i.i.i, !prof !63
  br i1 %167, label %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, label %do.cond42.i.i.i.i, !prof !63

skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup.thread.i.i.i.i

cleanup.thread.i.i.i.i:                           ; preds = %skb_header_pointer.exit.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge, %if.end.i.i.i.i.i.i.cleanup.thread.i.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #8
  br label %cleanup

do.cond42.i.i.i.i:                                ; preds = %skb_header_pointer.exit.i.i.i.i
  %h_vlan_encapsulated_proto.i.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i.i, i32 0, i32 1
  %168 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i.i) #8
  %170 = zext i16 %169 to i64
  call void @__sanitizer_cov_trace_switch(i64 %170, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %169, label %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge201
  ]

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge201: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body27.backedge.i.i.i.i

do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge:  ; preds = %do.cond42.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %skb_protocol.exit.i

do.body27.backedge.i.i.i.i:                       ; preds = %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge, %do.cond42.i.i.i.i.do.body27.backedge.i.i.i.i_crit_edge201
  %add.i.i.i.i178 = add nsw i32 %vlan_depth.1.i.i.i.i, 4
  br label %do.body27.i.i.i.i

skb_protocol.exit.i:                              ; preds = %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge, %if.then86.skb_protocol.exit.i_crit_edge
  %retval.2.i.i.i.i = phi i16 [ %153, %if.then86.skb_protocol.exit.i_crit_edge ], [ %169, %do.cond42.i.i.i.i.skb_protocol.exit.i_crit_edge ]
  %171 = zext i16 %retval.2.i.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %171, ptr @__sancov_gen_cov_switch_values.16)
  switch i16 %retval.2.i.i.i.i, label %skb_protocol.exit.i.cleanup_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb6.i
  ]

skb_protocol.exit.i.cleanup_crit_edge:            ; preds = %skb_protocol.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.bb.i:                                          ; preds = %skb_protocol.exit.i
  %head.i.i179 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %172 = ptrtoint ptr %head.i.i179 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %head.i.i179, align 8
  %174 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %network_header.i, align 4
  %conv.i.i180 = zext i16 %175 to i32
  %add.ptr.i.i181 = getelementptr i8, ptr %173, i32 %conv.i.i180
  %add.ptr.i182 = getelementptr i8, ptr %add.ptr.i.i181, i32 20
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %176 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load ptr, ptr %tail.i.i, align 8
  %cmp.not.i183 = icmp ugt ptr %add.ptr.i182, %177
  br i1 %cmp.not.i183, label %sw.bb.i.cleanup_crit_edge, label %if.then.i184

sw.bb.i.cleanup_crit_edge:                        ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i184:                                     ; preds = %sw.bb.i
  %tos.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i181, i32 0, i32 1
  %178 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_load1_noabort(i32 %178)
  %179 = load i8, ptr %tos.i.i, align 1
  %180 = add i8 %179, 1
  %181 = and i8 %180, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %181)
  %tobool.not.i.i = icmp eq i8 %181, 0
  br i1 %tobool.not.i.i, label %if.then.i184.cleanup_crit_edge, label %if.end.i.i

if.then.i184.cleanup_crit_edge:                   ; preds = %if.then.i184
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i:                                       ; preds = %if.then.i184
  call void @__sanitizer_cov_trace_pc() #10
  %182 = and i8 %180, 3
  %conv4.i.i = zext i8 %182 to i16
  %add5.i.i = add nuw nsw i16 %conv4.i.i, -5
  %check.i.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i181, i32 0, i32 7
  %183 = ptrtoint ptr %check.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %check.i.i, align 2
  %add.i.i.i185 = add i16 %184, %add5.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i185, i16 %add5.i.i)
  %cmp.i.i.i186 = icmp ult i16 %add.i.i.i185, %add5.i.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i186 to i16
  %add7.i.i.i = add i16 %add.i.i.i185, %conv6.i.i.i
  %185 = ptrtoint ptr %check.i.i to i32
  call void @__asan_store2_noabort(i32 %185)
  store i16 %add7.i.i.i, ptr %check.i.i, align 2
  %186 = or i8 %179, 3
  %187 = ptrtoint ptr %tos.i.i to i32
  call void @__asan_store1_noabort(i32 %187)
  store i8 %186, ptr %tos.i.i, align 1
  br label %cleanup

sw.bb6.i:                                         ; preds = %skb_protocol.exit.i
  %head.i1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %188 = ptrtoint ptr %head.i1.i to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %head.i1.i, align 8
  %190 = ptrtoint ptr %network_header.i to i32
  call void @__asan_load2_noabort(i32 %190)
  %191 = load i16, ptr %network_header.i, align 4
  %conv.i3.i = zext i16 %191 to i32
  %add.ptr.i4.i = getelementptr i8, ptr %189, i32 %conv.i3.i
  %add.ptr8.i = getelementptr i8, ptr %add.ptr.i4.i, i32 40
  %tail.i5.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %192 = ptrtoint ptr %tail.i5.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %tail.i5.i, align 8
  %cmp10.not.i = icmp ugt ptr %add.ptr8.i, %193
  br i1 %cmp10.not.i, label %sw.bb6.i.cleanup_crit_edge, label %if.then12.i

sw.bb6.i.cleanup_crit_edge:                       ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then12.i:                                      ; preds = %sw.bb6.i
  %194 = ptrtoint ptr %add.ptr.i4.i to i32
  call void @__asan_load2_noabort(i32 %194)
  %195 = load i16, ptr %add.ptr.i4.i, align 2
  %196 = and i16 %195, 48
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %196)
  %cmp.i14.not.i.i = icmp eq i16 %196, 0
  br i1 %cmp.i14.not.i.i, label %if.then12.i.cleanup_crit_edge, label %if.end.i10.i

if.then12.i.cleanup_crit_edge:                    ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i10.i:                                     ; preds = %if.then12.i
  %197 = ptrtoint ptr %add.ptr.i4.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %add.ptr.i4.i, align 4
  %or.i.i = or i32 %198, 3145728
  store i32 %or.i.i, ptr %add.ptr.i4.i, align 4
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %199 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %199)
  %bf.load.i.i = load i16, ptr %ip_summed.i.i, align 8
  %200 = and i16 %bf.load.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %200)
  %cmp.i.i = icmp eq i16 %200, 1024
  br i1 %cmp.i.i, label %if.then3.i.i, label %if.end.i10.i.cleanup_crit_edge

if.end.i10.i.cleanup_crit_edge:                   ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3.i.i:                                     ; preds = %if.end.i10.i
  call void @__sanitizer_cov_trace_pc() #10
  %201 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 5
  %202 = ptrtoint ptr %201 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %201, align 8
  %neg.i.i.i = xor i32 %198, -1
  %add.i.i.i11.i = add i32 %203, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i11.i, i32 %neg.i.i.i)
  %cmp.i.i.i12.i = icmp ult i32 %add.i.i.i11.i, %neg.i.i.i
  %conv.i.i.i13.i = zext i1 %cmp.i.i.i12.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i11.i, %or.i.i
  %add.i.i14.i = add i32 %add1.i.i.i.i, %conv.i.i.i13.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i14.i, i32 %or.i.i)
  %cmp.i.i15.i = icmp ult i32 %add.i.i14.i, %or.i.i
  %conv.i.i16.i = zext i1 %cmp.i.i15.i to i32
  %add1.i.i.i = add i32 %add.i.i14.i, %conv.i.i16.i
  %204 = ptrtoint ptr %201 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %add1.i.i.i, ptr %201, align 8
  br label %cleanup

do.body89:                                        ; preds = %if.end38.do.body89_crit_edge, %bstats_update.exit.do.body89_crit_edge
  %cpu_qstats = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 15
  %205 = ptrtoint ptr %cpu_qstats to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %cpu_qstats, align 4
  %207 = ptrtoint ptr %206 to i32
  %208 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %cpu, align 4
  %arrayidx99 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %209
  %210 = ptrtoint ptr %arrayidx99 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx99, align 4
  %add100 = add i32 %211, %207
  %212 = inttoptr i32 %add100 to ptr
  %overlimits.i = getelementptr inbounds %struct.gnet_stats_queue, ptr %212, i32 0, i32 4
  %213 = ptrtoint ptr %overlimits.i to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load i32, ptr %overlimits.i, align 4
  %inc.i = add i32 %214, 1
  store i32 %inc.i, ptr %overlimits.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body89, %if.then3.i.i, %if.end.i10.i.cleanup_crit_edge, %if.then12.i.cleanup_crit_edge, %sw.bb6.i.cleanup_crit_edge, %if.end.i.i, %if.then.i184.cleanup_crit_edge, %sw.bb.i.cleanup_crit_edge, %skb_protocol.exit.i.cleanup_crit_edge, %cleanup.thread.i.i.i.i, %do.end.i.i.i.i, %if.end83.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.else.cleanup_crit_edge, %skb_protocol.exit.cleanup_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i
  %retval.0 = phi i32 [ 2, %do.body89 ], [ %71, %if.end83.cleanup_crit_edge ], [ %71, %if.else.cleanup_crit_edge ], [ %71, %lor.lhs.false.cleanup_crit_edge ], [ %71, %skb_protocol.exit.cleanup_crit_edge ], [ %71, %do.end.i.i.i.i ], [ %71, %cleanup.thread.i.i.i.i ], [ %71, %skb_protocol.exit.i.cleanup_crit_edge ], [ %71, %sw.bb.i.cleanup_crit_edge ], [ %71, %if.then.i184.cleanup_crit_edge ], [ %71, %if.end.i.i ], [ %71, %sw.bb6.i.cleanup_crit_edge ], [ %71, %if.then12.i.cleanup_crit_edge ], [ %71, %if.end.i10.i.cleanup_crit_edge ], [ %71, %if.then3.i.i ], [ %71, %do.end.i.i.i ], [ %71, %cleanup.thread.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_skbmod_dump(ptr noundef %skb, ptr noundef %a, i32 noundef %bind, i32 noundef %ref) #2 align 64 {
entry:
  %tmp.i = alloca i16, align 2
  %opt = alloca %struct.tc_skbmod, align 8
  %t = alloca %struct.tcf_t, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %opt) #8
  %2 = getelementptr inbounds i8, ptr %opt, i32 16
  %3 = call ptr @memset(ptr %2, i32 255, i32 16)
  %tcfa_index = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 3
  %4 = ptrtoint ptr %tcfa_index to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tcfa_index, align 4
  %6 = ptrtoint ptr %opt to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %opt, align 8
  %capab = getelementptr inbounds %struct.tc_skbmod, ptr %opt, i32 0, i32 1
  %7 = ptrtoint ptr %capab to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %capab, align 4
  %action = getelementptr inbounds %struct.tc_skbmod, ptr %opt, i32 0, i32 2
  %refcnt = getelementptr inbounds %struct.tc_skbmod, ptr %opt, i32 0, i32 3
  %tcfa_refcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_refcnt, i32 noundef 4) #8
  %8 = ptrtoint ptr %tcfa_refcnt to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %tcfa_refcnt, align 4
  %sub = sub i32 %9, %ref
  %10 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %sub, ptr %refcnt, align 4
  %bindcnt = getelementptr inbounds %struct.tc_skbmod, ptr %opt, i32 0, i32 4
  %tcfa_bindcnt = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 5
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tcfa_bindcnt, i32 noundef 4) #8
  %11 = ptrtoint ptr %tcfa_bindcnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %tcfa_bindcnt, align 4
  %sub5 = sub i32 %12, %bind
  %13 = ptrtoint ptr %bindcnt to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sub5, ptr %bindcnt, align 8
  %flags = getelementptr inbounds %struct.tc_skbmod, ptr %opt, i32 0, i32 5
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %t) #8
  %14 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 1
  %15 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 2
  %16 = getelementptr inbounds %struct.tcf_t, ptr %t, i32 0, i32 3
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 12
  %17 = call ptr @memset(ptr %t, i32 255, i32 32)
  tail call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #8
  %tcfa_action = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 6
  %18 = ptrtoint ptr %tcfa_action to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tcfa_action, align 8
  %20 = ptrtoint ptr %action to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %action, align 8
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
  %.b81 = load i1, ptr @tcf_skbmod_dump.__warned, align 1
  br i1 %.b81, label %land.lhs.true14.do.end_crit_edge, label %if.then

land.lhs.true14.do.end_crit_edge:                 ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end

if.then:                                          ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @tcf_skbmod_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 253, ptr noundef nonnull @.str.4) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true14.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %skbmod_p = getelementptr inbounds %struct.tcf_skbmod, ptr %a, i32 0, i32 1
  %21 = ptrtoint ptr %skbmod_p to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %skbmod_p, align 16
  %flags16 = getelementptr inbounds %struct.tcf_skbmod_params, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %flags16 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %flags16, align 8
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_store8_noabort(i32 %25)
  store i64 %24, ptr %flags, align 8
  %call18 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 32, ptr noundef nonnull %opt) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.end21, label %do.end.nla_put_failure_crit_edge

do.end.nla_put_failure_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end21:                                         ; preds = %do.end
  %26 = ptrtoint ptr %flags16 to i32
  call void @__asan_load8_noabort(i32 %26)
  %27 = load i64, ptr %flags16, align 8
  %and = and i64 %27, 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and)
  %tobool23.not = icmp eq i64 %and, 0
  br i1 %tobool23.not, label %if.end21.if.end28_crit_edge, label %land.lhs.true24

if.end21.if.end28_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

land.lhs.true24:                                  ; preds = %if.end21
  %eth_dst = getelementptr inbounds %struct.tcf_skbmod_params, ptr %22, i32 0, i32 2
  %call25 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 6, ptr noundef %eth_dst) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %land.lhs.true24.if.end28_crit_edge, label %land.lhs.true24.nla_put_failure_crit_edge

land.lhs.true24.nla_put_failure_crit_edge:        ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

land.lhs.true24.if.end28_crit_edge:               ; preds = %land.lhs.true24
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end28

if.end28:                                         ; preds = %land.lhs.true24.if.end28_crit_edge, %if.end21.if.end28_crit_edge
  %28 = ptrtoint ptr %flags16 to i32
  call void @__asan_load8_noabort(i32 %28)
  %29 = load i64, ptr %flags16, align 8
  %and30 = and i64 %29, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and30)
  %tobool31.not = icmp eq i64 %and30, 0
  br i1 %tobool31.not, label %if.end28.if.end37_crit_edge, label %land.lhs.true32

if.end28.if.end37_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

land.lhs.true32:                                  ; preds = %if.end28
  %eth_src = getelementptr inbounds %struct.tcf_skbmod_params, ptr %22, i32 0, i32 4
  %call34 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 6, ptr noundef %eth_src) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true32.if.end37_crit_edge, label %land.lhs.true32.nla_put_failure_crit_edge

land.lhs.true32.nla_put_failure_crit_edge:        ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

land.lhs.true32.if.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true32.if.end37_crit_edge, %if.end28.if.end37_crit_edge
  %30 = ptrtoint ptr %flags16 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %flags16, align 8
  %and39 = and i64 %31, 4
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and39)
  %tobool40.not = icmp eq i64 %and39, 0
  br i1 %tobool40.not, label %if.end37.if.end45_crit_edge, label %land.lhs.true41

if.end37.if.end45_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

land.lhs.true41:                                  ; preds = %if.end37
  %eth_type = getelementptr inbounds %struct.tcf_skbmod_params, ptr %22, i32 0, i32 3
  %32 = ptrtoint ptr %eth_type to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %eth_type, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #8
  %34 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %tmp.i, align 2
  %call.i82 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 2, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i82)
  %tobool43.not = icmp eq i32 %call.i82, 0
  br i1 %tobool43.not, label %land.lhs.true41.if.end45_crit_edge, label %land.lhs.true41.nla_put_failure_crit_edge

land.lhs.true41.nla_put_failure_crit_edge:        ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

land.lhs.true41.if.end45_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.end45:                                         ; preds = %land.lhs.true41.if.end45_crit_edge, %if.end37.if.end45_crit_edge
  %tcfa_tm = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %35 = load volatile i32, ptr @jiffies, align 128
  %36 = ptrtoint ptr %tcfa_tm to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %tcfa_tm, align 8
  %38 = trunc i64 %37 to i32
  %conv1.i = sub i32 %35, %38
  %call.i83 = call i32 @jiffies_to_clock_t(i32 noundef %conv1.i) #8
  %conv2.i = sext i32 %call.i83 to i64
  %39 = ptrtoint ptr %t to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %conv2.i, ptr %t, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %lastuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 1
  %41 = ptrtoint ptr %lastuse.i to i32
  call void @__asan_load8_noabort(i32 %41)
  %42 = load i64, ptr %lastuse.i, align 8
  %43 = trunc i64 %42 to i32
  %conv6.i = sub i32 %40, %43
  %call7.i = call i32 @jiffies_to_clock_t(i32 noundef %conv6.i) #8
  %conv8.i = sext i32 %call7.i to i64
  %44 = ptrtoint ptr %14 to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %conv8.i, ptr %14, align 8
  %firstuse.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 3
  %45 = ptrtoint ptr %firstuse.i to i32
  call void @__asan_load8_noabort(i32 %45)
  %46 = load i64, ptr %firstuse.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %46)
  %tobool.not.i = icmp eq i64 %46, 0
  br i1 %tobool.not.i, label %if.end45.tcf_tm_dump.exit_crit_edge, label %cond.true.i

if.end45.tcf_tm_dump.exit_crit_edge:              ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %tcf_tm_dump.exit

cond.true.i:                                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %47 = load volatile i32, ptr @jiffies, align 128
  %48 = trunc i64 %46 to i32
  %conv13.i = sub i32 %47, %48
  %call14.i = call i32 @jiffies_to_clock_t(i32 noundef %conv13.i) #8
  br label %tcf_tm_dump.exit

tcf_tm_dump.exit:                                 ; preds = %cond.true.i, %if.end45.tcf_tm_dump.exit_crit_edge
  %cond.i = phi i32 [ %call14.i, %cond.true.i ], [ 0, %if.end45.tcf_tm_dump.exit_crit_edge ]
  %conv15.i = sext i32 %cond.i to i64
  %49 = ptrtoint ptr %16 to i32
  call void @__asan_store8_noabort(i32 %49)
  store i64 %conv15.i, ptr %16, align 8
  %expires.i = getelementptr inbounds %struct.tc_action, ptr %a, i32 0, i32 7, i32 2
  %50 = ptrtoint ptr %expires.i to i32
  call void @__asan_load8_noabort(i32 %50)
  %51 = load i64, ptr %expires.i, align 8
  %conv17.i = trunc i64 %51 to i32
  %call18.i = call i32 @jiffies_to_clock_t(i32 noundef %conv17.i) #8
  %conv19.i = sext i32 %call18.i to i64
  %52 = ptrtoint ptr %15 to i32
  call void @__asan_store8_noabort(i32 %52)
  store i64 %conv19.i, ptr %15, align 8
  %call47 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 1, i32 noundef 32, ptr noundef nonnull %t, i32 noundef 6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %tobool48.not = icmp eq i32 %call47, 0
  br i1 %tobool48.not, label %if.end50, label %tcf_tm_dump.exit.nla_put_failure_crit_edge

tcf_tm_dump.exit.nla_put_failure_crit_edge:       ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end50:                                         ; preds = %tcf_tm_dump.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #8
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  br label %cleanup

nla_put_failure:                                  ; preds = %tcf_tm_dump.exit.nla_put_failure_crit_edge, %land.lhs.true41.nla_put_failure_crit_edge, %land.lhs.true32.nla_put_failure_crit_edge, %land.lhs.true24.nla_put_failure_crit_edge, %do.end.nla_put_failure_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock) #8
  %tobool.not.i84 = icmp eq ptr %1, null
  br i1 %tobool.not.i84, label %nla_put_failure.cleanup_crit_edge, label %if.then.i

nla_put_failure.cleanup_crit_edge:                ; preds = %nla_put_failure
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %nla_put_failure
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %55 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %data.i, align 4
  %cmp.i = icmp ugt ptr %56, %1
  br i1 %cmp.i, label %do.end.i, label %if.then.i.if.end.i_crit_edge, !prof !63

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 991, i32 noundef 9, ptr noundef null) #8
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.i.if.end.i_crit_edge
  %57 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %58 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %nla_put_failure.cleanup_crit_edge, %if.end50
  %retval.0 = phi i32 [ %54, %if.end50 ], [ -1, %nla_put_failure.cleanup_crit_edge ], [ -1, %if.end.i ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %t) #8
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %opt) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tcf_skbmod_cleanup(ptr nocapture noundef readonly %a) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %skbmod_p = getelementptr inbounds %struct.tcf_skbmod, ptr %a, i32 0, i32 1
  %0 = ptrtoint ptr %skbmod_p to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %skbmod_p, align 16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end9_crit_edge, label %do.end6

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @kvfree_call_rcu(ptr noundef nonnull %1, ptr noundef null) #8
  br label %if.end9

if.end9:                                          ; preds = %do.end6, %entry.if.end9_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_skbmod_search(ptr noundef %net, ptr noundef %a, i32 noundef %index) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @skbmod_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_idr_search(ptr noundef %call, ptr noundef %a, i32 noundef %index) #8
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_skbmod_init(ptr noundef %net, ptr noundef %nla, ptr noundef %est, ptr noundef %a, ptr noundef %tp, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [7 x ptr], align 4
  %goto_ch = alloca ptr, align 4
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @skbmod_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %and = and i32 %flags, 262144
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and1 = and i32 %flags, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool2 = icmp ne i32 %and1, 0
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %tb) #8
  %1 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 2
  %2 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 3
  %3 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 4
  %4 = getelementptr inbounds [7 x ptr], ptr %tb, i32 0, i32 5
  %5 = call ptr @memset(ptr %tb, i32 255, i32 28)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %goto_ch) #8
  %6 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %goto_ch, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #8
  %tobool4.not = icmp eq ptr %nla, null
  br i1 %tobool4.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %nla, i32 4
  %7 = ptrtoint ptr %nla to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %nla, align 2
  %conv.i.i = zext i16 %8 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 6, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @skbmod_policy, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %tobool12.not = icmp eq ptr %12, null
  %add.ptr.i = getelementptr i8, ptr %12, i32 4
  %not.tobool12.not = xor i1 %tobool12.not, true
  %spec.select258 = zext i1 %not.tobool12.not to i32
  %spec.select259 = select i1 %tobool12.not, ptr null, ptr %add.ptr.i
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %3, align 4
  %tobool18.not = icmp eq ptr %14, null
  %add.ptr.i252 = getelementptr i8, ptr %14, i32 4
  %or22 = or i32 %spec.select258, 2
  %lflags.1 = select i1 %tobool18.not, i32 %spec.select258, i32 %or22
  %saddr.0 = select i1 %tobool18.not, ptr null, ptr %add.ptr.i252
  %15 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %4, align 4
  %tobool25.not = icmp eq ptr %16, null
  br i1 %tobool25.not, label %if.end10.if.end30_crit_edge, label %if.then26

if.end10.if.end30_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then26:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr.i.i253 = getelementptr i8, ptr %16, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i253 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i253, align 2
  %or29 = or i32 %lflags.1, 4
  br label %if.end30

if.end30:                                         ; preds = %if.then26, %if.end10.if.end30_crit_edge
  %lflags.2 = phi i32 [ %or29, %if.then26 ], [ %lflags.1, %if.end10.if.end30_crit_edge ]
  %eth_type.0 = phi i16 [ %18, %if.then26 ], [ 0, %if.end10.if.end30_crit_edge ]
  %add.ptr.i254 = getelementptr i8, ptr %10, i32 4
  %19 = ptrtoint ptr %add.ptr.i254 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i254, align 8
  %21 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %index, align 4
  %flags34 = getelementptr i8, ptr %10, i32 28
  %22 = ptrtoint ptr %flags34 to i32
  call void @__asan_load8_noabort(i32 %22)
  %23 = load i64, ptr %flags34, align 8
  %and35 = and i64 %23, 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and35)
  %tobool36.not = icmp eq i64 %and35, 0
  %spec.select = select i1 %tobool36.not, i32 %lflags.2, i32 8
  %and40 = and i64 %23, 16
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and40)
  %tobool41.not = icmp eq i64 %and40, 0
  %lflags.4 = select i1 %tobool41.not, i32 %spec.select, i32 16
  %and1.lobit = lshr exact i32 %and1, 17
  %call45 = call i32 @tcf_idr_check_alloc(ptr noundef %call, ptr noundef nonnull %index, ptr noundef %a, i32 noundef %and1.lobit) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end30.cleanup_crit_edge, label %if.end49

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end49:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %tobool50.not = icmp eq i32 %call45, 0
  %tobool2.not = xor i1 %tobool2, true
  %brmerge = or i1 %tobool50.not, %tobool2.not
  br i1 %brmerge, label %if.end57, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end57:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %lflags.4)
  %tobool58.not = icmp eq i32 %lflags.4, 0
  br i1 %tobool58.not, label %if.then59, label %if.end65

if.then59:                                        ; preds = %if.end57
  br i1 %tobool50.not, label %if.else, label %if.then61

if.then61:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %a, align 4
  %call63 = call i32 @tcf_idr_release(ptr noundef %25, i1 noundef zeroext %tobool2) #8
  br label %cleanup

if.else:                                          ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %27) #8
  br label %cleanup

if.end65:                                         ; preds = %if.end57
  br i1 %tobool50.not, label %if.then67, label %if.else74

if.then67:                                        ; preds = %if.end65
  %28 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index, align 4
  %call70 = call i32 @tcf_idr_create(ptr noundef %call, i32 noundef %29, ptr noundef %est, ptr noundef %a, ptr noundef nonnull @act_skbmod_ops, i32 noundef %and1.lobit, i1 noundef zeroext true, i32 noundef %flags) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool71.not = icmp eq i32 %call70, 0
  br i1 %tobool71.not, label %if.then67.if.end80_crit_edge, label %if.then72

if.then67.if.end80_crit_edge:                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then72:                                        ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #10
  %30 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index, align 4
  call void @tcf_idr_cleanup(ptr noundef %call, i32 noundef %31) #8
  br label %cleanup

if.else74:                                        ; preds = %if.end65
  br i1 %tobool.not, label %if.then76, label %if.else74.if.end80_crit_edge

if.else74.if.end80_crit_edge:                     ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end80

if.then76:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #10
  %32 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %a, align 4
  %call78 = call i32 @tcf_idr_release(ptr noundef %33, i1 noundef zeroext %tobool2) #8
  br label %cleanup

if.end80:                                         ; preds = %if.else74.if.end80_crit_edge, %if.then67.if.end80_crit_edge
  %ret.0 = phi i32 [ 0, %if.else74.if.end80_crit_edge ], [ 1, %if.then67.if.end80_crit_edge ]
  %action = getelementptr i8, ptr %10, i32 12
  %34 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %action, align 8
  %call81 = call i32 @tcf_action_check_ctrlact(i32 noundef %35, ptr noundef %tp, ptr noundef nonnull %goto_ch, ptr noundef %extack) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %if.end80.release_idr_crit_edge, label %if.end85

if.end80.release_idr_crit_edge:                   ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_idr

if.end85:                                         ; preds = %if.end80
  %36 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %a, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %38 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %38, i32 noundef 3520, i32 noundef 32) #11
  %tobool87.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool87.not, label %if.then91, label %if.end92, !prof !63

if.then91:                                        ; preds = %if.end85
  %39 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %goto_ch, align 4
  %tobool176.not = icmp eq ptr %40, null
  br i1 %tobool176.not, label %if.then91.release_idr_crit_edge, label %if.then177

if.then91.release_idr_crit_edge:                  ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  br label %release_idr

if.end92:                                         ; preds = %if.end85
  %conv93 = zext i32 %lflags.4 to i64
  %flags94 = getelementptr inbounds %struct.tcf_skbmod_params, ptr %call7.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %flags94 to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %conv93, ptr %flags94, align 8
  br i1 %tobool.not, label %if.end92.if.end97_crit_edge, label %if.then96

if.end92.if.end97_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end97

if.then96:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #10
  %tcfa_lock = getelementptr inbounds %struct.tc_action, ptr %37, i32 0, i32 12
  call void @_raw_spin_lock_bh(ptr noundef %tcfa_lock) #8
  br label %if.end97

if.end97:                                         ; preds = %if.then96, %if.end92.if.end97_crit_edge
  %42 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %a, align 4
  %44 = ptrtoint ptr %action to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %action, align 8
  %46 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %goto_ch, align 4
  %call99 = call ptr @tcf_action_set_ctrlact(ptr noundef %43, i32 noundef %45, ptr noundef %47) #8
  %48 = ptrtoint ptr %goto_ch to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call99, ptr %goto_ch, align 4
  %skbmod_p = getelementptr inbounds %struct.tcf_skbmod, ptr %37, i32 0, i32 1
  %49 = ptrtoint ptr %skbmod_p to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %skbmod_p, align 16
  %and100 = and i32 %lflags.4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and100)
  %tobool101.not = icmp eq i32 %and100, 0
  br i1 %tobool101.not, label %if.end97.if.end104_crit_edge, label %if.then102

if.end97.if.end104_crit_edge:                     ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end104

if.then102:                                       ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #10
  %eth_dst = getelementptr inbounds %struct.tcf_skbmod_params, ptr %call7.i.i, i32 0, i32 2
  %51 = ptrtoint ptr %spec.select259 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %spec.select259, align 4
  %53 = ptrtoint ptr %eth_dst to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %52, ptr %eth_dst, align 8
  %add.ptr.i255 = getelementptr i8, ptr %spec.select259, i32 4
  %54 = ptrtoint ptr %add.ptr.i255 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr.i255, align 2
  %add.ptr1.i = getelementptr %struct.tcf_skbmod_params, ptr %call7.i.i, i32 0, i32 2, i32 4
  %56 = ptrtoint ptr %add.ptr1.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %55, ptr %add.ptr1.i, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then102, %if.end97.if.end104_crit_edge
  %and105 = and i32 %lflags.4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and105)
  %tobool106.not = icmp eq i32 %and105, 0
  br i1 %tobool106.not, label %if.end104.if.end109_crit_edge, label %if.then107

if.end104.if.end109_crit_edge:                    ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end109

if.then107:                                       ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #10
  %eth_src = getelementptr inbounds %struct.tcf_skbmod_params, ptr %call7.i.i, i32 0, i32 4
  %57 = ptrtoint ptr %saddr.0 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %saddr.0, align 4
  %59 = ptrtoint ptr %eth_src to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %eth_src, align 8
  %add.ptr.i256 = getelementptr i8, ptr %saddr.0, i32 4
  %60 = ptrtoint ptr %add.ptr.i256 to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %add.ptr.i256, align 2
  %add.ptr1.i257 = getelementptr %struct.tcf_skbmod_params, ptr %call7.i.i, i32 0, i32 4, i32 4
  %62 = ptrtoint ptr %add.ptr1.i257 to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %add.ptr1.i257, align 4
  br label %if.end109

if.end109:                                        ; preds = %if.then107, %if.end104.if.end109_crit_edge
  %and110 = and i32 %lflags.4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and110)
  %tobool111.not = icmp eq i32 %and110, 0
  br i1 %tobool111.not, label %if.end109.do.body115_crit_edge, label %if.then112

if.end109.do.body115_crit_edge:                   ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body115

if.then112:                                       ; preds = %if.end109
  call void @__sanitizer_cov_trace_pc() #10
  %eth_type113 = getelementptr inbounds %struct.tcf_skbmod_params, ptr %call7.i.i, i32 0, i32 3
  %63 = ptrtoint ptr %eth_type113 to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %eth_type.0, ptr %eth_type113, align 2
  br label %do.body115

do.body115:                                       ; preds = %if.then112, %if.end109.do.body115_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !72
  %64 = ptrtoint ptr %skbmod_p to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %call7.i.i, ptr %skbmod_p, align 16
  br i1 %tobool.not, label %do.body115.if.end160_crit_edge, label %if.then157

do.body115.if.end160_crit_edge:                   ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end160

if.then157:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #10
  %tcfa_lock159 = getelementptr inbounds %struct.tc_action, ptr %37, i32 0, i32 12
  call void @_raw_spin_unlock_bh(ptr noundef %tcfa_lock159) #8
  br label %if.end160

if.end160:                                        ; preds = %if.then157, %do.body115.if.end160_crit_edge
  %tobool161.not = icmp eq ptr %50, null
  br i1 %tobool161.not, label %if.end160.if.end172_crit_edge, label %do.end168

if.end160.if.end172_crit_edge:                    ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end172

do.end168:                                        ; preds = %if.end160
  call void @__sanitizer_cov_trace_pc() #10
  call void @kvfree_call_rcu(ptr noundef nonnull %50, ptr noundef null) #8
  br label %if.end172

if.end172:                                        ; preds = %do.end168, %if.end160.if.end172_crit_edge
  %65 = ptrtoint ptr %goto_ch to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %goto_ch, align 4
  %tobool173.not = icmp eq ptr %66, null
  br i1 %tobool173.not, label %if.end172.cleanup_crit_edge, label %if.then174

if.end172.cleanup_crit_edge:                      ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then174:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #10
  call void @tcf_chain_put_by_act(ptr noundef nonnull %66) #8
  br label %cleanup

if.then177:                                       ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #10
  call void @tcf_chain_put_by_act(ptr noundef nonnull %40) #8
  br label %release_idr

release_idr:                                      ; preds = %if.then177, %if.then91.release_idr_crit_edge, %if.end80.release_idr_crit_edge
  %err.0 = phi i32 [ %call81, %if.end80.release_idr_crit_edge ], [ -12, %if.then177 ], [ -12, %if.then91.release_idr_crit_edge ]
  %67 = ptrtoint ptr %a to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %a, align 4
  %call180 = call i32 @tcf_idr_release(ptr noundef %68, i1 noundef zeroext %tobool2) #8
  br label %cleanup

cleanup:                                          ; preds = %release_idr, %if.then174, %if.end172.cleanup_crit_edge, %if.then76, %if.then72, %if.else, %if.then61, %if.end49.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %release_idr ], [ -17, %if.then76 ], [ %call70, %if.then72 ], [ -22, %entry.cleanup_crit_edge ], [ %call2.i, %if.end.cleanup_crit_edge ], [ -22, %if.end7.cleanup_crit_edge ], [ %call45, %if.end30.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ -22, %if.else ], [ -22, %if.then61 ], [ %ret.0, %if.then174 ], [ %ret.0, %if.end172.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %goto_ch) #8
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %tb) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tcf_skbmod_walker(ptr noundef %net, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @skbmod_net_id, align 4
  %call = tail call fastcc ptr @net_generic(ptr noundef %net, i32 noundef %0)
  %call1 = tail call i32 @tcf_generic_walker(ptr noundef %call, ptr noundef %skb, ptr noundef %cb, i32 noundef %type, ptr noundef %ops, ptr noundef %extack) #8
  ret i32 %call1
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
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

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
define internal fastcc ptr @net_generic(ptr noundef %net, i32 noundef %id) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %0 = tail call i32 @llvm.read_register.i32(metadata !53) #8
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !73
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
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !74
  %8 = tail call i32 @llvm.read_register.i32(metadata !53) #8
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
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_generic_walker(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skbmod_init_net(ptr noundef %net) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @skbmod_net_id, align 4
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
  store ptr @act_skbmod_ops, ptr %ops2.i, align 4
  %net4.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %net4.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %net, ptr %net4.i, align 8
  tail call void @__mutex_init(ptr noundef nonnull %call7.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @tc_action_net_init.__key) #8
  %5 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %call, align 4
  %action_idr.i = getelementptr inbounds %struct.tcf_idrinfo, ptr %6, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %action_idr.i, ptr noundef nonnull @.str.11, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #8
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
define internal void @skbmod_exit_net(ptr noundef readonly %net_list) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @skbmod_net_id, align 4
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

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
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
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !17, !19, !20, !22, !24, !25, !27, !29, !31, !32, !34, !35, !36, !38, !39, !41, !43, !45, !47, !49, !50, !52}
!llvm.named.register.sp = !{!53}
!llvm.module.flags = !{!54, !55, !56, !57, !58, !59, !60, !61}
!llvm.ident = !{!62}

!0 = !{ptr @__UNIQUE_ID_author507, !1, !"__UNIQUE_ID_author507", i1 false, i1 false}
!1 = !{!"../net/sched/act_skbmod.c", i32 328, i32 1}
!2 = !{ptr @__UNIQUE_ID_description508, !3, !"__UNIQUE_ID_description508", i1 false, i1 false}
!3 = !{!"../net/sched/act_skbmod.c", i32 329, i32 1}
!4 = !{ptr @__UNIQUE_ID_file509, !5, !"__UNIQUE_ID_file509", i1 false, i1 false}
!5 = !{!"../net/sched/act_skbmod.c", i32 330, i32 1}
!6 = !{ptr @__UNIQUE_ID_license510, !5, !"__UNIQUE_ID_license510", i1 false, i1 false}
!7 = !{ptr @__initcall__kmod_act_skbmod__511_342_skbmod_init_module6, !8, !"__initcall__kmod_act_skbmod__511_342_skbmod_init_module6", i1 false, i1 false}
!8 = !{!"../net/sched/act_skbmod.c", i32 342, i32 1}
!9 = !{ptr @__exitcall_skbmod_cleanup_module, !10, !"__exitcall_skbmod_cleanup_module", i1 false, i1 false}
!10 = !{!"../net/sched/act_skbmod.c", i32 343, i32 1}
!11 = !{ptr @act_skbmod_ops, !12, !"act_skbmod_ops", i1 false, i1 false}
!12 = !{!"../net/sched/act_skbmod.c", i32 296, i32 29}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/sched/act_skbmod.c", i32 41, i32 6}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__already_done", i1 false, i1 false}
!18 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/sched/act_skbmod.c", i32 252, i32 6}
!24 = !{ptr @.str.4, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../include/net/netlink.h", i32 991, i32 3}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/sched/act_skbmod.c", i32 232, i32 6}
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
!39 = !{ptr @skbmod_net_id, !40, !"skbmod_net_id", i1 false, i1 false}
!40 = !{!"../net/sched/act_skbmod.c", i32 22, i32 21}
!41 = distinct !{null, !42, !"__warned", i1 false, i1 false}
!42 = !{!"../net/sched/act_skbmod.c", i32 200, i32 10}
!43 = !{ptr @skbmod_policy, !44, !"skbmod_policy", i1 false, i1 false}
!44 = !{!"../net/sched/act_skbmod.c", i32 94, i32 32}
!45 = !{ptr @skbmod_net_ops, !46, !"skbmod_net_ops", i1 false, i1 false}
!46 = !{!"../net/sched/act_skbmod.c", i32 321, i32 33}
!47 = !{ptr @tc_action_net_init.__key, !48, !"__key", i1 false, i1 false}
!48 = !{!"../include/net/act_api.h", i32 156, i32 2}
!49 = !{ptr @.str.10, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @xa_init_flags.__key, !51, !"__key", i1 false, i1 false}
!51 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!52 = !{ptr @.str.11, !51, !"<string literal>", i1 false, i1 false}
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
!64 = !{i64 2149870952}
!65 = !{i64 2149875884}
!66 = !{i64 2149897596}
!67 = !{i64 2149902488}
!68 = !{!"branch_weights", i32 2000, i32 1}
!69 = !{i64 2149978945}
!70 = !{i64 2149979270}
!71 = !{!"auto-init"}
!72 = !{i64 2157404999}
!73 = !{i64 2149362953}
!74 = !{i64 2149363219}
