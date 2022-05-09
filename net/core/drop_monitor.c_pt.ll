; ModuleID = '/llk/IR_all_yes/net/core/drop_monitor.c_pt.bc'
source_filename = "../net/core/drop_monitor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.per_cpu_dm_data = type { %struct.spinlock, %union.anon.2, %struct.sk_buff_head, %struct.work_struct, %struct.timer_list, %struct.net_dm_stats }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.anon.2 = type { ptr }
%struct.sk_buff_head = type { %union.anon.10, i32, %struct.spinlock }
%union.anon.10 = type { %struct.anon.11 }
%struct.anon.11 = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.net_dm_stats = type { i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.genl_family = type { i32, i32, [16 x i8], i32, i32, i32, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.genl_small_ops = type { ptr, ptr, i8, i8, i8, i8 }
%struct.genl_multicast_group = type { [16 x i8], i8 }
%struct.nla_policy = type { i8, i8, i16, %union.anon.13 }
%union.anon.13 = type { i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.net_dm_alert_ops = type { ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.51, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.55, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.55 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.88 }
%union.anon.88 = type { i32 }
%struct.srcu_struct = type { [3 x %struct.srcu_node], [3 x ptr], %struct.mutex, %struct.spinlock, %struct.mutex, i32, i32, i32, i32, i32, ptr, i32, %struct.mutex, %struct.completion, %struct.atomic_t, %struct.delayed_work, %struct.lockdep_map }
%struct.srcu_node = type { %struct.spinlock, [4 x i32], [4 x i32], i32, ptr, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.genl_info = type { i32, i32, ptr, ptr, ptr, ptr, %struct.possible_net_t, [2 x ptr], ptr }
%struct.possible_net_t = type { ptr }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%struct.sk_buff = type { %union.anon.3, %union.anon.103, %union.anon.104, [48 x i8], %union.anon.105, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.107, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%union.anon.103 = type { ptr }
%union.anon.104 = type { i64 }
%union.anon.105 = type { %struct.anon.106 }
%struct.anon.106 = type { i32, ptr }
%union.anon.107 = type { %struct.anon.108 }
%struct.anon.108 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.109, i32, i32, i32, i16, i16, %union.anon.111, i32, %union.anon.112, %union.anon.113, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.109 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.112 = type { i32 }
%union.anon.113 = type { i16 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.6, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.102, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.6 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%union.anon.102 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.net_dm_alert_msg = type { i32, [0 x %struct.net_dm_drop_point] }
%struct.net_dm_drop_point = type { [8 x i8], i32 }
%struct.net_dm_hw_entries = type { i32, [0 x %struct.net_dm_hw_entry] }
%struct.net_dm_hw_entry = type { [40 x i8], i32 }
%struct.devlink_trap_metadata = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.nlattr = type { i16, i16 }
%struct.flow_action_cookie = type { i32, [0 x i8] }
%struct.dm_hw_stat_delta = type { ptr, i32, %struct.list_head, %struct.callback_head, i32 }
%struct.callback_head = type { ptr, ptr }

@__initcall__kmod_drop_monitor__389_1777_init_net_drop_monitor6 = internal global ptr @init_net_drop_monitor, section ".initcall6.init", align 4
@__exitcall_exit_net_drop_monitor = internal global ptr @exit_net_drop_monitor, section ".exitcall.exit", align 4
@__UNIQUE_ID_file390 = internal constant [40 x i8] c"drop_monitor.file=net/core/drop_monitor\00", section ".modinfo", align 1
@__UNIQUE_ID_license391 = internal constant [28 x i8] c"drop_monitor.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author392 = internal constant [56 x i8] c"drop_monitor.author=Neil Horman <nhorman@tuxdriver.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias393 = internal constant [52 x i8] c"drop_monitor.alias=net-pf-16-proto-16-family-NET_DM\00", section ".modinfo", align 1
@__UNIQUE_ID_description394 = internal constant [75 x i8] c"drop_monitor.description=Monitoring code for network dropped packet alerts\00", section ".modinfo", align 1
@__pcpu_unique_dm_cpu_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@dm_cpu_data = weak dso_local global %struct.per_cpu_dm_data zeroinitializer, section ".data..percpu", align 8
@__pcpu_unique_dm_hw_cpu_data = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@dm_hw_cpu_data = weak dso_local global %struct.per_cpu_dm_data zeroinitializer, section ".data..percpu", align 8
@init_net_drop_monitor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1723, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"\016drop_monitor: Initializing network drop monitor service\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"init_net_drop_monitor\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/core/drop_monitor.c\00", [40 x i8] zeroinitializer }, align 32
@init_net_drop_monitor._entry_ptr = internal global ptr @init_net_drop_monitor._entry, section ".printk_index", align 4
@net_drop_monitor_family = internal global %struct.genl_family { i32 0, i32 0, [16 x i8] c"NET_DM\00\00\00\00\00\00\00\00\00\00", i32 2, i32 22, i32 0, i8 0, i8 0, i8 5, i8 1, ptr @net_dm_nl_policy, ptr @net_dm_nl_pre_doit, ptr @net_dm_nl_post_doit, ptr null, ptr @dropmon_ops, ptr @dropmon_mcgrps, ptr null }, section ".data..ro_after_init", align 4
@init_net_drop_monitor._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1732, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"\013drop_monitor: Could not create drop monitor netlink family\0A\00", [34 x i8] zeroinitializer }, align 32
@init_net_drop_monitor._entry_ptr.5 = internal global ptr @init_net_drop_monitor._entry.3, section ".printk_index", align 4
@dropmon_net_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @dropmon_net_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@init_net_drop_monitor._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1739, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"\012drop_monitor: Failed to register netdevice notifier\0A\00", [41 x i8] zeroinitializer }, align 32
@init_net_drop_monitor._entry_ptr.8 = internal global ptr @init_net_drop_monitor._entry.6, section ".printk_index", align 4
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@dropmon_ops = internal constant { [5 x %struct.genl_small_ops], [36 x i8] } { [5 x %struct.genl_small_ops] [%struct.genl_small_ops { ptr @net_dm_cmd_config, ptr null, i8 2, i8 0, i8 1, i8 3 }, %struct.genl_small_ops { ptr @net_dm_cmd_trace, ptr null, i8 3, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @net_dm_cmd_trace, ptr null, i8 4, i8 0, i8 0, i8 3 }, %struct.genl_small_ops { ptr @net_dm_cmd_config_get, ptr null, i8 6, i8 0, i8 0, i8 0 }, %struct.genl_small_ops { ptr @net_dm_cmd_stats_get, ptr null, i8 8, i8 0, i8 0, i8 0 }], [36 x i8] zeroinitializer }, align 32
@dropmon_mcgrps = internal constant { [1 x %struct.genl_multicast_group], [47 x i8] } { [1 x %struct.genl_multicast_group] [%struct.genl_multicast_group { [16 x i8] c"events\00\00\00\00\00\00\00\00\00\00", i8 0 }], [47 x i8] zeroinitializer }, align 32
@net_dm_nl_policy = internal constant { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }>, [40 x i8] } { <{ { i8, i8, i16, { i16, [2 x i8] } }, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy, %struct.nla_policy }> <{ { i8, i8, i16, { i16, [2 x i8] } } { i8 0, i8 0, i16 0, { i16, [2 x i8] } { i16 1, [2 x i8] undef } }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.13 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.13 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.13 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.13 zeroinitializer }, %struct.nla_policy { i8 6, i8 0, i16 0, %union.anon.13 zeroinitializer }, %struct.nla_policy zeroinitializer }>, [40 x i8] zeroinitializer }, align 32
@net_dm_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.10, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @net_dm_mutex, i64 52), ptr getelementptr (i8, ptr @net_dm_mutex, i64 52) }, ptr @net_dm_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net_dm_mutex.wait_lock\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"net_dm_mutex\00", [19 x i8] zeroinitializer }, align 32
@net_dm_cmd_config.__msg = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"drop_monitor: Cannot configure drop monitor during monitoring\00", [34 x i8] zeroinitializer }, align 32
@trace_state = internal global { i32, [28 x i8] } zeroinitializer, align 32
@monitor_hw = internal global { i1, [31 x i8] } zeroinitializer, align 32
@net_dm_alert_mode_set.__msg = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drop_monitor: Invalid alert mode\00", [63 x i8] zeroinitializer }, align 32
@net_dm_alert_mode = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_dm_trunc_len = internal global { i32, [28 x i8] } zeroinitializer, align 32
@net_dm_queue_len = internal global { i32, [28 x i8] } { i32 1000, [28 x i8] zeroinitializer }, align 32
@set_all_monitor_traces.__msg = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"drop_monitor: Trace state already set to requested state\00", [39 x i8] zeroinitializer }, align 32
@net_dm_alert_ops_arr = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @net_dm_alert_summary_ops, ptr @net_dm_alert_packet_ops], [24 x i8] zeroinitializer }, align 32
@net_dm_trace_on_set.__msg = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drop_monitor: Failed to take reference on module\00", [47 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@net_dm_trace_on_set.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"(work_completion)(&data->dm_alert_work)\00", [56 x i8] zeroinitializer }, align 32
@net_dm_trace_on_set.__key.13 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"(&data->send_timer)\00", [44 x i8] zeroinitializer }, align 32
@net_dm_trace_on_set.__msg.15 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drop_monitor: Failed to connect probe to kfree_skb() tracepoint\00", [32 x i8] zeroinitializer }, align 32
@net_dm_trace_on_set.__msg.16 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"drop_monitor: Failed to connect probe to napi_poll() tracepoint\00", [32 x i8] zeroinitializer }, align 32
@net_dm_alert_summary_ops = internal constant { %struct.net_dm_alert_ops, [44 x i8] } { %struct.net_dm_alert_ops { ptr @trace_kfree_skb_hit, ptr @trace_napi_poll_hit, ptr @send_dm_alert, ptr @net_dm_hw_summary_work, ptr @net_dm_hw_trap_summary_probe }, [44 x i8] zeroinitializer }, align 32
@net_dm_alert_packet_ops = internal constant { %struct.net_dm_alert_ops, [44 x i8] } { %struct.net_dm_alert_ops { ptr @net_dm_packet_trace_kfree_skb_hit, ptr @net_dm_packet_trace_napi_poll_hit, ptr @net_dm_packet_work, ptr @net_dm_hw_packet_work, ptr @net_dm_hw_trap_packet_probe }, [44 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@trace_napi_poll_hit.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.17 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@hw_stats_list = internal global { %struct.list_head, [24 x i8] } { %struct.list_head { ptr @hw_stats_list, ptr @hw_stats_list }, [24 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.20 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@init_net = external dso_local local_unnamed_addr global %struct.net, align 128
@genlmsg_multicast_netns.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/net/genetlink.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.22 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@net_dm_hw_trap_summary_probe.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.23 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%pS\00", [28 x i8] zeroinitializer }, align 32
@__tracepoint_kfree_skb = external dso_local global %struct.tracepoint, align 4
@__tracepoint_napi_poll = external dso_local global %struct.tracepoint, align 4
@tracepoint_srcu = external dso_local global %struct.srcu_struct, align 4
@net_dm_hw_monitor_start.__msg = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drop_monitor: Hardware monitoring already enabled\00", [46 x i8] zeroinitializer }, align 32
@net_dm_hw_monitor_start.__msg.25 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"drop_monitor: Failed to take reference on module\00", [47 x i8] zeroinitializer }, align 32
@net_dm_hw_monitor_start.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"(work_completion)(&hw_data->dm_alert_work)\00", [53 x i8] zeroinitializer }, align 32
@net_dm_hw_monitor_start.__key.27 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.28 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"(&hw_data->send_timer)\00", [41 x i8] zeroinitializer }, align 32
@net_dm_hw_monitor_start.__msg.29 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"drop_monitor: Failed to connect probe to devlink_trap_probe() tracepoint\00", [55 x i8] zeroinitializer }, align 32
@__tracepoint_devlink_trap_report = external dso_local global %struct.tracepoint, align 4
@net_dm_hw_monitor_stop.__msg = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"drop_monitor: Hardware monitoring already disabled\00", [45 x i8] zeroinitializer }, align 32
@__net_dm_cpu_data_init.__key = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&data->lock\00", [20 x i8] zeroinitializer }, align 32
@__net_dm_cpu_data_init.__key.31 = internal global %struct.lock_class_key zeroinitializer, align 4
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"&(&data->stats.syncp)->seq\00", [37 x i8] zeroinitializer }, align 32
@skb_queue_head_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.33 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"&list->lock\00", [20 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 3, i64 4]
@__sancov_gen_cov_switch_values.34 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.35 = internal global [4 x i64] [i64 2, i64 32, i64 5, i64 6]
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1723, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1732, i32 3 }
@___asan_gen_.54 = private unnamed_addr constant [21 x i8] c"dropmon_net_notifier\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1666, i32 30 }
@___asan_gen_.57 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1739, i32 3 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"dropmon_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1610, i32 36 }
@___asan_gen_.66 = private unnamed_addr constant [15 x i8] c"dropmon_mcgrps\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 186, i32 42 }
@___asan_gen_.69 = private unnamed_addr constant [17 x i8] c"net_dm_nl_policy\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1601, i32 32 }
@___asan_gen_.72 = private unnamed_addr constant [13 x i8] c"net_dm_mutex\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 56, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1302, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [12 x i8] c"trace_state\00", align 1
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 48, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [11 x i8] c"monitor_hw\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1270, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [18 x i8] c"net_dm_alert_mode\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 107, i32 31 }
@___asan_gen_.94 = private unnamed_addr constant [17 x i8] c"net_dm_trunc_len\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 108, i32 12 }
@___asan_gen_.97 = private unnamed_addr constant [17 x i8] c"net_dm_queue_len\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 109, i32 12 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1211, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [21 x i8] c"net_dm_alert_ops_arr\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 997, i32 39 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1122, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1130, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1131, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1142, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1148, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [25 x i8] c"net_dm_alert_summary_ops\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 490, i32 38 }
@___asan_gen_.130 = private unnamed_addr constant [24 x i8] c"net_dm_alert_packet_ops\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 989, i32 38 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 285, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant [14 x i8] c"hw_stats_list\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 105, i32 8 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 695, i32 2 }
@___asan_gen_.146 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 723, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant [27 x i8] c"../include/net/genetlink.h\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 308, i32 6 }
@___asan_gen_.152 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.152, i32 991, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 271, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 630, i32 29 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1030, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1037, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1045, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1046, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1053, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1086, i32 3 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1672, i32 2 }
@___asan_gen_.188 = private constant [27 x i8] c"../net/core/drop_monitor.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 1674, i32 2 }
@___asan_gen_.190 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.193 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.194 = private unnamed_addr constant [26 x i8] c"../include/linux/skbuff.h\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.194, i32 1984, i32 2 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_alias393, ptr @__UNIQUE_ID_author392, ptr @__UNIQUE_ID_description394, ptr @__UNIQUE_ID_file390, ptr @__UNIQUE_ID_license391, ptr @__exitcall_exit_net_drop_monitor, ptr @__initcall__kmod_drop_monitor__389_1777_init_net_drop_monitor6, ptr @init_net_drop_monitor._entry, ptr @init_net_drop_monitor._entry.3, ptr @init_net_drop_monitor._entry.6, ptr @init_net_drop_monitor._entry_ptr, ptr @init_net_drop_monitor._entry_ptr.5, ptr @init_net_drop_monitor._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @dropmon_net_notifier, ptr @.str.7, ptr @dropmon_ops, ptr @dropmon_mcgrps, ptr @net_dm_nl_policy, ptr @net_dm_mutex, ptr @.str.10, ptr @.str.11, ptr @net_dm_cmd_config.__msg, ptr @trace_state, ptr @monitor_hw, ptr @net_dm_alert_mode_set.__msg, ptr @net_dm_alert_mode, ptr @net_dm_trunc_len, ptr @net_dm_queue_len, ptr @set_all_monitor_traces.__msg, ptr @net_dm_alert_ops_arr, ptr @net_dm_trace_on_set.__msg, ptr @net_dm_trace_on_set.__key, ptr @.str.12, ptr @net_dm_trace_on_set.__key.13, ptr @.str.14, ptr @net_dm_trace_on_set.__msg.15, ptr @net_dm_trace_on_set.__msg.16, ptr @net_dm_alert_summary_ops, ptr @net_dm_alert_packet_ops, ptr @.str.17, ptr @hw_stats_list, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @net_dm_hw_monitor_start.__msg, ptr @net_dm_hw_monitor_start.__msg.25, ptr @net_dm_hw_monitor_start.__key, ptr @.str.26, ptr @net_dm_hw_monitor_start.__key.27, ptr @.str.28, ptr @net_dm_hw_monitor_start.__msg.29, ptr @net_dm_hw_monitor_stop.__msg, ptr @.str.30, ptr @.str.32, ptr @skb_queue_head_init.__key, ptr @.str.33], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_net_drop_monitor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_net_drop_monitor._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dropmon_net_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_net_drop_monitor._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dropmon_ops to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dropmon_mcgrps to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_nl_policy to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_cmd_config.__msg to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @trace_state to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @monitor_hw to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_alert_mode_set.__msg to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_alert_mode to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_trunc_len to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_queue_len to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @set_all_monitor_traces.__msg to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_alert_ops_arr to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_trace_on_set.__msg to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_trace_on_set.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_trace_on_set.__key.13 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_trace_on_set.__msg.15 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_trace_on_set.__msg.16 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_alert_summary_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_alert_packet_ops to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hw_stats_list to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_hw_monitor_start.__msg to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_hw_monitor_start.__msg.25 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_hw_monitor_start.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_hw_monitor_start.__key.27 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_hw_monitor_start.__msg.29 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @net_dm_hw_monitor_stop.__msg to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skb_queue_head_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_net_drop_monitor() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #19
  %call1 = tail call i32 @genl_register_family(ptr noundef nonnull @net_drop_monitor_family) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %do.end4

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #19
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @net_drop_monitor_family, i32 0, i32 5), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %0)
  %cmp.not = icmp eq i32 %0, 1
  br i1 %cmp.not, label %if.end.if.end24_crit_edge, label %do.end18, !prof !144

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end24

do.end18:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1735, i32 noundef 9, ptr noundef null) #16
  br label %if.end24

if.end24:                                         ; preds = %do.end18, %if.end.if.end24_crit_edge
  %call32 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @dropmon_net_notifier) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %cmp33 = icmp slt i32 %call32, 0
  br i1 %cmp33, label %do.end37, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end24
  %call4160 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %1 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4160, i32 %1)
  %cmp4261 = icmp ult i32 %call4160, %1
  br i1 %cmp4261, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.end37:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #18
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #19
  %call43 = tail call i32 @genl_unregister_family(ptr noundef nonnull @net_drop_monitor_family) #16
  br label %cleanup

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call4162 = phi i32 [ %call41, %for.body.for.body_crit_edge ], [ %call4160, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call4162
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %3, ptrtoint (ptr @dm_cpu_data to i32)
  %4 = inttoptr i32 %add.i to ptr
  tail call void @__raw_spin_lock_init(ptr noundef %4, ptr noundef nonnull @.str.30, ptr noundef nonnull @__net_dm_cpu_data_init.__key, i16 noundef signext 3) #16
  %drop_queue.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %4, i32 0, i32 2
  %lock.i.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %4, i32 0, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #16
  %5 = ptrtoint ptr %drop_queue.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %drop_queue.i.i, ptr %drop_queue.i.i, align 4
  %prev.i.i.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %4, i32 0, i32 2, i32 0, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %drop_queue.i.i, ptr %prev.i.i.i.i, align 4
  %qlen.i.i.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %4, i32 0, i32 2, i32 1
  %7 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %qlen.i.i.i.i, align 4
  %syncp.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %4, i32 0, i32 5, i32 1
  %dep_map.i.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %4, i32 0, i32 5, i32 1, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i.i, ptr noundef nonnull @.str.32, ptr noundef nonnull @__net_dm_cpu_data_init.__key.31, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %8 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %syncp.i.i, align 4
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i53 = add i32 %10, ptrtoint (ptr @dm_hw_cpu_data to i32)
  %11 = inttoptr i32 %add.i53 to ptr
  tail call void @__raw_spin_lock_init(ptr noundef %11, ptr noundef nonnull @.str.30, ptr noundef nonnull @__net_dm_cpu_data_init.__key, i16 noundef signext 3) #16
  %drop_queue.i.i54 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %11, i32 0, i32 2
  %lock.i.i.i55 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %11, i32 0, i32 2, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock.i.i.i55, ptr noundef nonnull @.str.33, ptr noundef nonnull @skb_queue_head_init.__key, i16 noundef signext 3) #16
  %12 = ptrtoint ptr %drop_queue.i.i54 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %drop_queue.i.i54, ptr %drop_queue.i.i54, align 4
  %prev.i.i.i.i56 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %11, i32 0, i32 2, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i.i56 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %drop_queue.i.i54, ptr %prev.i.i.i.i56, align 4
  %qlen.i.i.i.i57 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %11, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %qlen.i.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %qlen.i.i.i.i57, align 4
  %syncp.i.i58 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %11, i32 0, i32 5, i32 1
  %dep_map.i.i.i59 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %11, i32 0, i32 5, i32 1, i32 0, i32 1
  tail call void @lockdep_init_map_type(ptr noundef %dep_map.i.i.i59, ptr noundef nonnull @.str.32, ptr noundef nonnull @__net_dm_cpu_data_init.__key.31, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %15 = ptrtoint ptr %syncp.i.i58 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %syncp.i.i58, align 4
  %call41 = tail call i32 @cpumask_next(i32 noundef %call4162, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp42 = icmp ult i32 %call41, %16
  br i1 %cmp42, label %for.body.for.body_crit_edge, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup:                                          ; preds = %for.body.cleanup_crit_edge, %do.end37, %for.cond.preheader.cleanup_crit_edge, %do.end4
  %retval.0 = phi i32 [ %call1, %do.end4 ], [ %call32, %do.end37 ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @exit_net_drop_monitor() #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @dropmon_net_notifier) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.body3, !prof !144

for.cond.preheader:                               ; preds = %entry
  %call937 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call937, i32 %0)
  %cmp38 = icmp ult i32 %call937, %0
  br i1 %cmp38, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.do.body10_crit_edge

for.cond.preheader.do.body10_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body10

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/drop_monitor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1762, 0\0A.popsection", ""() #16, !srcloc !145
  unreachable

for.body:                                         ; preds = %net_dm_cpu_data_fini.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %call939 = phi i32 [ %call9, %net_dm_cpu_data_fini.exit.for.body_crit_edge ], [ %call937, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call939
  %1 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %2, ptrtoint (ptr @dm_hw_cpu_data to i32)
  %3 = inttoptr i32 %add.i to ptr
  %4 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %3, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  tail call void @kfree(ptr noundef %6) #16
  %drop_queue.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %3, i32 0, i32 2
  %7 = ptrtoint ptr %drop_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %drop_queue.i.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %8, %drop_queue.i.i
  br i1 %cmp.i.not.i.i, label %for.body.net_dm_hw_cpu_data_fini.exit_crit_edge, label %do.end.i.i, !prof !144

for.body.net_dm_hw_cpu_data_fini.exit_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_hw_cpu_data_fini.exit

do.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1679, i32 noundef 9, ptr noundef null) #16
  br label %net_dm_hw_cpu_data_fini.exit

net_dm_hw_cpu_data_fini.exit:                     ; preds = %do.end.i.i, %for.body.net_dm_hw_cpu_data_fini.exit_crit_edge
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i33 = add i32 %10, ptrtoint (ptr @dm_cpu_data to i32)
  %11 = inttoptr i32 %add.i33 to ptr
  %12 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %11, i32 0, i32 1
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  tail call void @consume_skb(ptr noundef %14) #16
  %drop_queue.i.i34 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %11, i32 0, i32 2
  %15 = ptrtoint ptr %drop_queue.i.i34 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %drop_queue.i.i34, align 4
  %cmp.i.not.i.i35 = icmp eq ptr %16, %drop_queue.i.i34
  br i1 %cmp.i.not.i.i35, label %net_dm_hw_cpu_data_fini.exit.net_dm_cpu_data_fini.exit_crit_edge, label %do.end.i.i36, !prof !144

net_dm_hw_cpu_data_fini.exit.net_dm_cpu_data_fini.exit_crit_edge: ; preds = %net_dm_hw_cpu_data_fini.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_cpu_data_fini.exit

do.end.i.i36:                                     ; preds = %net_dm_hw_cpu_data_fini.exit
  call void @__sanitizer_cov_trace_pc() #18
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1679, i32 noundef 9, ptr noundef null) #16
  br label %net_dm_cpu_data_fini.exit

net_dm_cpu_data_fini.exit:                        ; preds = %do.end.i.i36, %net_dm_hw_cpu_data_fini.exit.net_dm_cpu_data_fini.exit_crit_edge
  %call9 = tail call i32 @cpumask_next(i32 noundef %call939, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call9, %17
  br i1 %cmp, label %net_dm_cpu_data_fini.exit.for.body_crit_edge, label %net_dm_cpu_data_fini.exit.do.body10_crit_edge

net_dm_cpu_data_fini.exit.do.body10_crit_edge:    ; preds = %net_dm_cpu_data_fini.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body10

net_dm_cpu_data_fini.exit.for.body_crit_edge:     ; preds = %net_dm_cpu_data_fini.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

do.body10:                                        ; preds = %net_dm_cpu_data_fini.exit.do.body10_crit_edge, %for.cond.preheader.do.body10_crit_edge
  %call11 = tail call i32 @genl_unregister_family(ptr noundef nonnull @net_drop_monitor_family) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %do.end28, label %do.body20, !prof !144

do.body20:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/core/drop_monitor.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1774, 0\0A.popsection", ""() #16, !srcloc !146
  unreachable

do.end28:                                         ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #18
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_register_family(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @genl_unregister_family(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_dm_nl_pre_doit(ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @net_dm_mutex, i32 noundef 0) #16
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net_dm_nl_post_doit(ptr nocapture noundef readnone %ops, ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_unlock(ptr noundef nonnull @net_dm_mutex) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_dm_cmd_config(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %extack1 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %0 = ptrtoint ptr %extack1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack1, align 4
  %2 = load i32, ptr @trace_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %2)
  %cmp.i = icmp eq i32 %2, 1
  br i1 %cmp.i, label %entry.do.body_crit_edge, label %net_dm_is_monitoring.exit

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

net_dm_is_monitoring.exit:                        ; preds = %entry
  %.b1.i = load i1, ptr @monitor_hw, align 1
  br i1 %.b1.i, label %net_dm_is_monitoring.exit.do.body_crit_edge, label %if.end3

net_dm_is_monitoring.exit.do.body_crit_edge:      ; preds = %net_dm_is_monitoring.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body

do.body:                                          ; preds = %net_dm_is_monitoring.exit.do.body_crit_edge, %entry.do.body_crit_edge
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @net_dm_cmd_config.__msg) #16
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then2

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @net_dm_cmd_config.__msg, ptr %1, align 4
  br label %cleanup

if.end3:                                          ; preds = %net_dm_is_monitoring.exit
  %attrs.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %4 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %5, i32 1
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end3.if.end7_crit_edge, label %if.end.i

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end7

if.end.i:                                         ; preds = %if.end3
  %add.ptr.i.i.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %switch.i.i = icmp ult i8 %9, 2
  br i1 %switch.i.i, label %if.end7.i, label %do.body.i

do.body.i:                                        ; preds = %if.end.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @net_dm_alert_mode_set.__msg) #16
  %tobool4.not.i = icmp eq ptr %1, null
  br i1 %tobool4.not.i, label %do.body.i.cleanup_crit_edge, label %if.then5.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @net_dm_alert_mode_set.__msg, ptr %1, align 4
  br label %cleanup

if.end7.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %conv.i.i = zext i8 %9 to i32
  store i32 %conv.i.i, ptr @net_dm_alert_mode, align 4
  br label %if.end7

if.end7:                                          ; preds = %if.end7.i, %if.end3.if.end7_crit_edge
  %11 = ptrtoint ptr %attrs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %attrs.i, align 4
  %arrayidx.i15 = getelementptr ptr, ptr %12, i32 9
  %13 = ptrtoint ptr %arrayidx.i15 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i15, align 4
  %tobool.not.i16 = icmp eq ptr %14, null
  br i1 %tobool.not.i16, label %if.end7.net_dm_trunc_len_set.exit_crit_edge, label %if.end.i17

if.end7.net_dm_trunc_len_set.exit_crit_edge:      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_trunc_len_set.exit

if.end.i17:                                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 4
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr.i.i.i, align 4
  store i32 %16, ptr @net_dm_trunc_len, align 4
  br label %net_dm_trunc_len_set.exit

net_dm_trunc_len_set.exit:                        ; preds = %if.end.i17, %if.end7.net_dm_trunc_len_set.exit_crit_edge
  %arrayidx.i19 = getelementptr ptr, ptr %12, i32 11
  %17 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx.i19, align 4
  %tobool.not.i20 = icmp eq ptr %18, null
  br i1 %tobool.not.i20, label %net_dm_trunc_len_set.exit.cleanup_crit_edge, label %if.end.i22

net_dm_trunc_len_set.exit.cleanup_crit_edge:      ; preds = %net_dm_trunc_len_set.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end.i22:                                       ; preds = %net_dm_trunc_len_set.exit
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i.i.i21 = getelementptr i8, ptr %18, i32 4
  %19 = ptrtoint ptr %add.ptr.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %add.ptr.i.i.i21, align 4
  store i32 %20, ptr @net_dm_queue_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i22, %net_dm_trunc_len_set.exit.cleanup_crit_edge, %if.then5.i, %do.body.i.cleanup_crit_edge, %if.then2, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %if.then2 ], [ -16, %do.body.cleanup_crit_edge ], [ -22, %if.then5.i ], [ -22, %do.body.i.cleanup_crit_edge ], [ 0, %net_dm_trunc_len_set.exit.cleanup_crit_edge ], [ 0, %if.end.i22 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_dm_cmd_trace(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %attrs = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 5
  %0 = ptrtoint ptr %attrs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %attrs, align 4
  %arrayidx = getelementptr ptr, ptr %1, i32 20
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool = icmp ne ptr %3, null
  %arrayidx3 = getelementptr ptr, ptr %1, i32 21
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %tobool4 = icmp ne ptr %5, null
  %extack8 = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 8
  %6 = ptrtoint ptr %extack8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %extack8, align 4
  %not.tobool4 = xor i1 %tobool4, true
  %spec.select26 = select i1 %tobool, i1 true, i1 %not.tobool4
  %genlhdr = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 3
  %8 = ptrtoint ptr %genlhdr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %genlhdr, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %9, align 2
  %12 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %11, label %entry.cleanup_crit_edge [
    i8 3, label %sw.bb
    i8 4, label %sw.bb13
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %entry
  br i1 %spec.select26, label %if.then.i, label %if.end4.i

if.then.i:                                        ; preds = %sw.bb
  %call.i = tail call fastcc i32 @set_all_monitor_traces(i32 noundef 1, ptr noundef %7) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool2.not.i = icmp eq i32 %call.i, 0
  %13 = and i1 %tobool4, %tobool2.not.i
  br i1 %13, label %if.then.i.if.then6.i_crit_edge, label %if.then.i.cleanup_crit_edge

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then.i.if.then6.i_crit_edge:                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6.i

if.end4.i:                                        ; preds = %sw.bb
  br i1 %tobool4, label %if.end4.i.if.then6.i_crit_edge, label %if.end4.i.cleanup_crit_edge

if.end4.i.cleanup_crit_edge:                      ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end4.i.if.then6.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then6.i

if.then6.i:                                       ; preds = %if.end4.i.if.then6.i_crit_edge, %if.then.i.if.then6.i_crit_edge
  %.b89.i.i = load i1, ptr @monitor_hw, align 1
  br i1 %.b89.i.i, label %do.body.i.i, label %if.end3.i.i

do.body.i.i:                                      ; preds = %if.then6.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @net_dm_hw_monitor_start.__msg) #16
  %tobool1.not.i.i = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i, label %do.body.i.i.net_dm_hw_monitor_start.exit.i_crit_edge, label %if.then2.i.i

do.body.i.i.net_dm_hw_monitor_start.exit.i_crit_edge: ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_hw_monitor_start.exit.i

if.then2.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %14 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @net_dm_hw_monitor_start.__msg, ptr %7, align 4
  br label %net_dm_hw_monitor_start.exit.i

if.end3.i.i:                                      ; preds = %if.then6.i
  %15 = load i32, ptr @net_dm_alert_mode, align 4
  %arrayidx.i.i = getelementptr [2 x ptr], ptr @net_dm_alert_ops_arr, i32 0, i32 %15
  %16 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i.i = tail call zeroext i1 @try_module_get(ptr noundef null) #16
  br i1 %call.i.i, label %for.cond.preheader.i.i, label %do.body5.i.i

for.cond.preheader.i.i:                           ; preds = %if.end3.i.i
  %call1493.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %18 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call1493.i.i, i32 %18)
  %cmp94.i.i = icmp ult i32 %call1493.i.i, %18
  br i1 %cmp94.i.i, label %for.body.lr.ph.i.i, label %for.cond.preheader.i.i.for.end.i.i_crit_edge

for.cond.preheader.i.i.for.end.i.i_crit_edge:     ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %hw_work_item_func.i.i = getelementptr inbounds %struct.net_dm_alert_ops, ptr %17, i32 0, i32 3
  br label %for.body.i.i

do.body5.i.i:                                     ; preds = %if.end3.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @net_dm_hw_monitor_start.__msg.25) #16
  %tobool7.not.i.i = icmp eq ptr %7, null
  br i1 %tobool7.not.i.i, label %do.body5.i.i.net_dm_hw_monitor_start.exit.i_crit_edge, label %if.then8.i.i

do.body5.i.i.net_dm_hw_monitor_start.exit.i_crit_edge: ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_hw_monitor_start.exit.i

if.then8.i.i:                                     ; preds = %do.body5.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @net_dm_hw_monitor_start.__msg.25, ptr %7, align 4
  br label %net_dm_hw_monitor_start.exit.i

for.body.i.i:                                     ; preds = %net_dm_hw_reset_per_cpu_data.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %call1495.i.i = phi i32 [ %call1493.i.i, %for.body.lr.ph.i.i ], [ %call14.i.i, %net_dm_hw_reset_per_cpu_data.exit.i.i.for.body.i.i_crit_edge ]
  %arrayidx19.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call1495.i.i
  %20 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx19.i.i, align 4
  %add.i.i = add i32 %21, ptrtoint (ptr @dm_hw_cpu_data to i32)
  %22 = inttoptr i32 %add.i.i to ptr
  %dm_alert_work.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %22, i32 0, i32 3
  tail call void @__init_work(ptr noundef %dm_alert_work.i.i, i32 noundef 0) #16
  %23 = ptrtoint ptr %dm_alert_work.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -64, ptr %dm_alert_work.i.i, align 8
  %lockdep_map.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %22, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @net_dm_hw_monitor_start.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry24.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %22, i32 0, i32 3, i32 1
  %24 = ptrtoint ptr %entry24.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %entry24.i.i, ptr %entry24.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %22, i32 0, i32 3, i32 1, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %entry24.i.i, ptr %prev.i.i.i, align 4
  %26 = ptrtoint ptr %hw_work_item_func.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hw_work_item_func.i.i, align 4
  %func.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %22, i32 0, i32 3, i32 2
  %28 = ptrtoint ptr %func.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %func.i.i, align 4
  %send_timer.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %22, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %send_timer.i.i, ptr noundef nonnull @sched_send_work, i32 noundef 0, ptr noundef nonnull @.str.28, ptr noundef nonnull @net_dm_hw_monitor_start.__key.27) #16
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 2820) #21
  %tobool.not.i.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %for.body.i.i.net_dm_hw_reset_per_cpu_data.exit.i.i_crit_edge

for.body.i.i.net_dm_hw_reset_per_cpu_data.exit.i.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_hw_reset_per_cpu_data.exit.i.i

if.then.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add.i.i.i = add i32 %30, 10
  %call2.i.i.i = tail call i32 @mod_timer(ptr noundef %send_timer.i.i, i32 noundef %add.i.i.i) #16
  br label %net_dm_hw_reset_per_cpu_data.exit.i.i

net_dm_hw_reset_per_cpu_data.exit.i.i:            ; preds = %if.then.i.i.i, %for.body.i.i.net_dm_hw_reset_per_cpu_data.exit.i.i_crit_edge
  %call5.i.i.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %22) #16
  %31 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %22, i32 0, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  store ptr %call7.i.i.i.i.i, ptr %31, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %22, i32 noundef %call5.i.i.i) #16
  tail call void @kfree(ptr noundef %33) #16
  %call14.i.i = tail call i32 @cpumask_next(i32 noundef %call1495.i.i, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %34 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i = icmp ult i32 %call14.i.i, %34
  br i1 %cmp.i.i, label %net_dm_hw_reset_per_cpu_data.exit.i.i.for.body.i.i_crit_edge, label %net_dm_hw_reset_per_cpu_data.exit.i.i.for.end.i.i_crit_edge

net_dm_hw_reset_per_cpu_data.exit.i.i.for.end.i.i_crit_edge: ; preds = %net_dm_hw_reset_per_cpu_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i

net_dm_hw_reset_per_cpu_data.exit.i.i.for.body.i.i_crit_edge: ; preds = %net_dm_hw_reset_per_cpu_data.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %net_dm_hw_reset_per_cpu_data.exit.i.i.for.end.i.i_crit_edge, %for.cond.preheader.i.i.for.end.i.i_crit_edge
  %hw_trap_probe.i.i.i = getelementptr inbounds %struct.net_dm_alert_ops, ptr %17, i32 0, i32 4
  %35 = ptrtoint ptr %hw_trap_probe.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hw_trap_probe.i.i.i, align 4
  %call.i.i.i.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_devlink_trap_report, ptr noundef %36, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %tobool33.not.i.i = icmp eq i32 %call.i.i.i.i, 0
  br i1 %tobool33.not.i.i, label %net_dm_hw_monitor_start.exit.thread.i, label %do.body35.i.i

do.body35.i.i:                                    ; preds = %for.end.i.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @net_dm_hw_monitor_start.__msg.29) #16
  %tobool37.not.i.i = icmp eq ptr %7, null
  br i1 %tobool37.not.i.i, label %do.body35.i.i.if.end40.i.i_crit_edge, label %if.then38.i.i

do.body35.i.i.if.end40.i.i_crit_edge:             ; preds = %do.body35.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end40.i.i

if.then38.i.i:                                    ; preds = %do.body35.i.i
  call void @__sanitizer_cov_trace_pc() #18
  %37 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @net_dm_hw_monitor_start.__msg.29, ptr %7, align 4
  br label %if.end40.i.i

if.end40.i.i:                                     ; preds = %if.then38.i.i, %do.body35.i.i.if.end40.i.i_crit_edge
  %call4599.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %38 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call4599.i.i, i32 %38)
  %cmp46100.i.i = icmp ult i32 %call4599.i.i, %38
  br i1 %cmp46100.i.i, label %if.end40.i.i.for.body47.i.i_crit_edge, label %if.end40.i.i.for.end65.i.i_crit_edge

if.end40.i.i.for.end65.i.i_crit_edge:             ; preds = %if.end40.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end65.i.i

if.end40.i.i.for.body47.i.i_crit_edge:            ; preds = %if.end40.i.i
  br label %for.body47.i.i

net_dm_hw_monitor_start.exit.thread.i:            ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @monitor_hw, align 1
  br label %cleanup

for.cond44.loopexit.i.i:                          ; preds = %while.body.i.i.for.cond44.loopexit.i.i_crit_edge, %for.body47.i.i.for.cond44.loopexit.i.i_crit_edge
  %call45.i.i = tail call i32 @cpumask_next(i32 noundef %call45101.i.i, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %39 = load i32, ptr @nr_cpu_ids, align 4
  %cmp46.i.i = icmp ult i32 %call45.i.i, %39
  br i1 %cmp46.i.i, label %for.cond44.loopexit.i.i.for.body47.i.i_crit_edge, label %for.cond44.loopexit.i.i.for.end65.i.i_crit_edge

for.cond44.loopexit.i.i.for.end65.i.i_crit_edge:  ; preds = %for.cond44.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end65.i.i

for.cond44.loopexit.i.i.for.body47.i.i_crit_edge: ; preds = %for.cond44.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body47.i.i

for.body47.i.i:                                   ; preds = %for.cond44.loopexit.i.i.for.body47.i.i_crit_edge, %if.end40.i.i.for.body47.i.i_crit_edge
  %call45101.i.i = phi i32 [ %call45.i.i, %for.cond44.loopexit.i.i.for.body47.i.i_crit_edge ], [ %call4599.i.i, %if.end40.i.i.for.body47.i.i_crit_edge ]
  %arrayidx56.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call45101.i.i
  %40 = ptrtoint ptr %arrayidx56.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx56.i.i, align 4
  %add57.i.i = add i32 %41, ptrtoint (ptr @dm_hw_cpu_data to i32)
  %42 = inttoptr i32 %add57.i.i to ptr
  %send_timer58.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %42, i32 0, i32 4
  %call59.i.i = tail call i32 @del_timer_sync(ptr noundef %send_timer58.i.i) #16
  %dm_alert_work60.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %42, i32 0, i32 3
  %call61.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %dm_alert_work60.i.i) #16
  %drop_queue.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %42, i32 0, i32 2
  %43 = ptrtoint ptr %drop_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %drop_queue.i.i, align 4
  %cmp.i.i96.i.i = icmp eq ptr %44, %drop_queue.i.i
  %tobool.not.i909297.i.i = icmp eq ptr %44, null
  %tobool.not.i9098.i.i = or i1 %cmp.i.i96.i.i, %tobool.not.i909297.i.i
  br i1 %tobool.not.i9098.i.i, label %for.body47.i.i.for.cond44.loopexit.i.i_crit_edge, label %while.body.lr.ph.i.i

for.body47.i.i.for.cond44.loopexit.i.i_crit_edge: ; preds = %for.body47.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond44.loopexit.i.i

while.body.lr.ph.i.i:                             ; preds = %for.body47.i.i
  %qlen.i.i.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %42, i32 0, i32 2, i32 1
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %45 = phi ptr [ %44, %while.body.lr.ph.i.i ], [ %57, %while.body.i.i.while.body.i.i_crit_edge ]
  %46 = ptrtoint ptr %qlen.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %qlen.i.i.i.i, align 4
  %sub.i.i.i.i = add i32 %47, -1
  store volatile i32 %sub.i.i.i.i, ptr %qlen.i.i.i.i, align 4
  %48 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %45, align 8
  %prev9.i.i.i.i = getelementptr inbounds %struct.anon.4, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %prev9.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i.i, align 4
  store ptr null, ptr %45, align 8
  %prev17.i.i.i.i = getelementptr inbounds %struct.anon.4, ptr %49, i32 0, i32 1
  %52 = ptrtoint ptr %prev17.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %51, ptr %prev17.i.i.i.i, align 4
  %53 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %49, ptr %51, align 8
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 3
  %54 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cb.i.i, align 8
  tail call fastcc void @net_dm_hw_metadata_free(ptr noundef %55) #16
  tail call void @consume_skb(ptr noundef nonnull %45) #16
  %56 = ptrtoint ptr %drop_queue.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %drop_queue.i.i, align 4
  %cmp.i.i.i.i = icmp eq ptr %57, %drop_queue.i.i
  %tobool.not.i9092.i.i = icmp eq ptr %57, null
  %tobool.not.i90.i.i = or i1 %cmp.i.i.i.i, %tobool.not.i9092.i.i
  br i1 %tobool.not.i90.i.i, label %while.body.i.i.for.cond44.loopexit.i.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i

while.body.i.i.for.cond44.loopexit.i.i_crit_edge: ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond44.loopexit.i.i

for.end65.i.i:                                    ; preds = %for.cond44.loopexit.i.i.for.end65.i.i_crit_edge, %if.end40.i.i.for.end65.i.i_crit_edge
  tail call void @module_put(ptr noundef null) #16
  br label %net_dm_hw_monitor_start.exit.i

net_dm_hw_monitor_start.exit.i:                   ; preds = %for.end65.i.i, %if.then8.i.i, %do.body5.i.i.net_dm_hw_monitor_start.exit.i_crit_edge, %if.then2.i.i, %do.body.i.i.net_dm_hw_monitor_start.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call.i.i.i.i, %for.end65.i.i ], [ -11, %if.then2.i.i ], [ -11, %do.body.i.i.net_dm_hw_monitor_start.exit.i_crit_edge ], [ -19, %if.then8.i.i ], [ -19, %do.body5.i.i.net_dm_hw_monitor_start.exit.i_crit_edge ]
  br i1 %spec.select26, label %if.then13.i, label %net_dm_hw_monitor_start.exit.i.cleanup_crit_edge

net_dm_hw_monitor_start.exit.i.cleanup_crit_edge: ; preds = %net_dm_hw_monitor_start.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then13.i:                                      ; preds = %net_dm_hw_monitor_start.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %call14.i = tail call fastcc i32 @set_all_monitor_traces(i32 noundef 0, ptr noundef %7) #16
  br label %cleanup

sw.bb13:                                          ; preds = %entry
  br i1 %tobool4, label %if.then.i27, label %sw.bb13.if.end.i_crit_edge

sw.bb13.if.end.i_crit_edge:                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then.i27:                                      ; preds = %sw.bb13
  %.b21.i.i = load i1, ptr @monitor_hw, align 1
  br i1 %.b21.i.i, label %if.end3.i.i34, label %do.body.i.i29

do.body.i.i29:                                    ; preds = %if.then.i27
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @net_dm_hw_monitor_stop.__msg) #16
  %tobool1.not.i.i28 = icmp eq ptr %7, null
  br i1 %tobool1.not.i.i28, label %do.body.i.i29.if.end.i_crit_edge, label %if.then2.i.i30

do.body.i.i29.if.end.i_crit_edge:                 ; preds = %do.body.i.i29
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i

if.then2.i.i30:                                   ; preds = %do.body.i.i29
  call void @__sanitizer_cov_trace_pc() #18
  %58 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @net_dm_hw_monitor_stop.__msg, ptr %7, align 4
  br label %if.end.i

if.end3.i.i34:                                    ; preds = %if.then.i27
  %59 = load i32, ptr @net_dm_alert_mode, align 4
  %arrayidx.i.i31 = getelementptr [2 x ptr], ptr @net_dm_alert_ops_arr, i32 0, i32 %59
  %60 = ptrtoint ptr %arrayidx.i.i31 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.i.i31, align 4
  store i1 false, ptr @monitor_hw, align 1
  %hw_trap_probe.i.i.i32 = getelementptr inbounds %struct.net_dm_alert_ops, ptr %61, i32 0, i32 4
  %62 = ptrtoint ptr %hw_trap_probe.i.i.i32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hw_trap_probe.i.i.i32, align 4
  %call.i.i.i.i33 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_devlink_trap_report, ptr noundef %63, ptr noundef null) #16
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #16
  tail call void @synchronize_rcu() #16
  %call26.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %64 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call26.i.i, i32 %64)
  %cmp27.i.i = icmp ult i32 %call26.i.i, %64
  br i1 %cmp27.i.i, label %if.end3.i.i34.for.body.i.i41_crit_edge, label %if.end3.i.i34.for.end.i.i51_crit_edge

if.end3.i.i34.for.end.i.i51_crit_edge:            ; preds = %if.end3.i.i34
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i51

if.end3.i.i34.for.body.i.i41_crit_edge:           ; preds = %if.end3.i.i34
  br label %for.body.i.i41

for.cond.loopexit.i.i:                            ; preds = %while.body.i.i50.for.cond.loopexit.i.i_crit_edge, %for.body.i.i41.for.cond.loopexit.i.i_crit_edge
  %call.i.i35 = tail call i32 @cpumask_next(i32 noundef %call28.i.i, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %65 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i36 = icmp ult i32 %call.i.i35, %65
  br i1 %cmp.i.i36, label %for.cond.loopexit.i.i.for.body.i.i41_crit_edge, label %for.cond.loopexit.i.i.for.end.i.i51_crit_edge

for.cond.loopexit.i.i.for.end.i.i51_crit_edge:    ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i.i51

for.cond.loopexit.i.i.for.body.i.i41_crit_edge:   ; preds = %for.cond.loopexit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i41

for.body.i.i41:                                   ; preds = %for.cond.loopexit.i.i.for.body.i.i41_crit_edge, %if.end3.i.i34.for.body.i.i41_crit_edge
  %call28.i.i = phi i32 [ %call.i.i35, %for.cond.loopexit.i.i.for.body.i.i41_crit_edge ], [ %call26.i.i, %if.end3.i.i34.for.body.i.i41_crit_edge ]
  %arrayidx8.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call28.i.i
  %66 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx8.i.i, align 4
  %add.i.i37 = add i32 %67, ptrtoint (ptr @dm_hw_cpu_data to i32)
  %68 = inttoptr i32 %add.i.i37 to ptr
  %send_timer.i.i38 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %68, i32 0, i32 4
  %call9.i.i = tail call i32 @del_timer_sync(ptr noundef %send_timer.i.i38) #16
  %dm_alert_work.i.i39 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %68, i32 0, i32 3
  %call10.i.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %dm_alert_work.i.i39) #16
  %drop_queue.i.i40 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %68, i32 0, i32 2
  %69 = ptrtoint ptr %drop_queue.i.i40 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %drop_queue.i.i40, align 4
  %cmp.i.i23.i.i = icmp eq ptr %70, %drop_queue.i.i40
  %tobool.not.i2224.i.i = icmp eq ptr %70, null
  %tobool.not.i25.i.i = or i1 %cmp.i.i23.i.i, %tobool.not.i2224.i.i
  br i1 %tobool.not.i25.i.i, label %for.body.i.i41.for.cond.loopexit.i.i_crit_edge, label %while.body.lr.ph.i.i43

for.body.i.i41.for.cond.loopexit.i.i_crit_edge:   ; preds = %for.body.i.i41
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.loopexit.i.i

while.body.lr.ph.i.i43:                           ; preds = %for.body.i.i41
  %qlen.i.i.i.i42 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %68, i32 0, i32 2, i32 1
  br label %while.body.i.i50

while.body.i.i50:                                 ; preds = %while.body.i.i50.while.body.i.i50_crit_edge, %while.body.lr.ph.i.i43
  %71 = phi ptr [ %70, %while.body.lr.ph.i.i43 ], [ %83, %while.body.i.i50.while.body.i.i50_crit_edge ]
  %72 = ptrtoint ptr %qlen.i.i.i.i42 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %qlen.i.i.i.i42, align 4
  %sub.i.i.i.i44 = add i32 %73, -1
  store volatile i32 %sub.i.i.i.i44, ptr %qlen.i.i.i.i42, align 4
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %71, align 8
  %prev9.i.i.i.i45 = getelementptr inbounds %struct.anon.4, ptr %71, i32 0, i32 1
  %76 = ptrtoint ptr %prev9.i.i.i.i45 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev9.i.i.i.i45, align 4
  store ptr null, ptr %prev9.i.i.i.i45, align 4
  store ptr null, ptr %71, align 8
  %prev17.i.i.i.i46 = getelementptr inbounds %struct.anon.4, ptr %75, i32 0, i32 1
  %78 = ptrtoint ptr %prev17.i.i.i.i46 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %77, ptr %prev17.i.i.i.i46, align 4
  %79 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %75, ptr %77, align 8
  %cb.i.i47 = getelementptr inbounds %struct.sk_buff, ptr %71, i32 0, i32 3
  %80 = ptrtoint ptr %cb.i.i47 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %cb.i.i47, align 8
  tail call fastcc void @net_dm_hw_metadata_free(ptr noundef %81) #16
  tail call void @consume_skb(ptr noundef nonnull %71) #16
  %82 = ptrtoint ptr %drop_queue.i.i40 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %drop_queue.i.i40, align 4
  %cmp.i.i.i.i48 = icmp eq ptr %83, %drop_queue.i.i40
  %tobool.not.i22.i.i = icmp eq ptr %83, null
  %tobool.not.i.i.i49 = or i1 %cmp.i.i.i.i48, %tobool.not.i22.i.i
  br i1 %tobool.not.i.i.i49, label %while.body.i.i50.for.cond.loopexit.i.i_crit_edge, label %while.body.i.i50.while.body.i.i50_crit_edge

while.body.i.i50.while.body.i.i50_crit_edge:      ; preds = %while.body.i.i50
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i.i50

while.body.i.i50.for.cond.loopexit.i.i_crit_edge: ; preds = %while.body.i.i50
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.loopexit.i.i

for.end.i.i51:                                    ; preds = %for.cond.loopexit.i.i.for.end.i.i51_crit_edge, %if.end3.i.i34.for.end.i.i51_crit_edge
  tail call void @module_put(ptr noundef null) #16
  br label %if.end.i

if.end.i:                                         ; preds = %for.end.i.i51, %if.then2.i.i30, %do.body.i.i29.if.end.i_crit_edge, %sw.bb13.if.end.i_crit_edge
  br i1 %spec.select26, label %if.then3.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %call.i52 = tail call fastcc i32 @set_all_monitor_traces(i32 noundef 0, ptr noundef %7) #16
  br label %cleanup

cleanup:                                          ; preds = %if.then3.i, %if.end.i.cleanup_crit_edge, %if.then13.i, %net_dm_hw_monitor_start.exit.i.cleanup_crit_edge, %net_dm_hw_monitor_start.exit.thread.i, %if.end4.i.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -95, %entry.cleanup_crit_edge ], [ %call.i, %if.then.i.cleanup_crit_edge ], [ %retval.0.i.i, %net_dm_hw_monitor_start.exit.i.cleanup_crit_edge ], [ 0, %if.end4.i.cleanup_crit_edge ], [ %retval.0.i.i, %if.then13.i ], [ 0, %net_dm_hw_monitor_start.exit.thread.i ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.then3.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_dm_cmd_config_get(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #1 align 64 {
entry:
  %tmp.i23.i = alloca i32, align 4
  %tmp.i21.i = alloca i32, align 4
  %tmp.i.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_portid.i, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %1, i32 noundef %3, ptr noundef nonnull @net_drop_monitor_family, i32 noundef 0, i8 noundef zeroext 7) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.free_msg_crit_edge, label %if.end.i

if.end.free_msg_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_msg

if.end.i:                                         ; preds = %if.end
  %4 = load i32, ptr @net_dm_alert_mode, align 4
  %conv.i = trunc i32 %4 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i.i) #16
  %5 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv.i, ptr %tmp.i.i, align 1
  %call.i.i12 = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 1, i32 noundef 1, ptr noundef nonnull %tmp.i.i) #16
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i12)
  %tobool2.not.i = icmp eq i32 %call.i.i12, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end4.i:                                        ; preds = %if.end.i
  %6 = load i32, ptr @net_dm_trunc_len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i21.i) #16
  %7 = ptrtoint ptr %tmp.i21.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %tmp.i21.i, align 4
  %call.i22.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i21.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i21.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22.i)
  %tobool6.not.i = icmp eq i32 %call.i22.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.if.then.i.i_crit_edge

if.end4.i.if.then.i.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end8.i:                                        ; preds = %if.end4.i
  %8 = load i32, ptr @net_dm_queue_len, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i23.i) #16
  %9 = ptrtoint ptr %tmp.i23.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %tmp.i23.i, align 4
  %call.i24.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i23.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i23.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24.i)
  %tobool10.not.i = icmp eq i32 %call.i24.i, 0
  br i1 %tobool10.not.i, label %if.end4, label %if.end8.i.if.then.i.i_crit_edge

if.end8.i.if.then.i.i_crit_edge:                  ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end8.i.if.then.i.i_crit_edge, %if.end4.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %add.ptr1.i25.i = getelementptr i8, ptr %call.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i25.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.free_msg_crit_edge, label %if.then.i.i.i.i

if.then.i.i.free_msg_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_msg

if.then.i.i.i.i:                                  ; preds = %if.then.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %10 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i.i.i = icmp ugt ptr %11, %add.ptr1.i25.i
  br i1 %cmp.i.i.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge, !prof !147

if.then.i.i.i.i.if.end.i.i.i.i_crit_edge:         ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.if.end.i.i.i.i_crit_edge
  %12 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i25.i to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %13 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i.i.i) #16
  br label %free_msg

if.end4:                                          ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr1.i.i = getelementptr i8, ptr %call.i, i32 -20
  %tail.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %14 = ptrtoint ptr %tail.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tail.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %15 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %16 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub.ptr.sub.i.i.i, ptr %add.ptr1.i.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %17 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %_net.i.i, align 4
  %19 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %18, i32 0, i32 21
  %21 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i = call i32 @netlink_unicast(ptr noundef %22, ptr noundef nonnull %call.i.i, i32 noundef %20, i32 noundef 64) #16
  %23 = call i32 @llvm.smin.i32(i32 %call.i.i.i, i32 0) #16
  br label %cleanup

free_msg:                                         ; preds = %if.end.i.i.i.i, %if.then.i.i.free_msg_crit_edge, %if.end.free_msg_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %free_msg ], [ %23, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @net_dm_cmd_stats_get(ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %info) #1 align 64 {
entry:
  %tmp.i.i18.i = alloca i64, align 8
  %tmp.i.i.i = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %snd_portid.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 1
  %0 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %snd_portid.i, align 4
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %info, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef %1, i32 noundef %3, ptr noundef nonnull @net_drop_monitor_family, i32 noundef 0, i8 noundef zeroext 9) #16
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %if.end.free_msg_crit_edge, label %if.end.i

if.end.free_msg_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_msg

if.end.i:                                         ; preds = %if.end
  %call17.i.i.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %4 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call17.i.i.i, i32 %4)
  %cmp18.i.i.i = icmp ult i32 %call17.i.i.i, %4
  br i1 %cmp18.i.i.i, label %if.end.i.for.body.i.i.i_crit_edge, label %if.end.i.net_dm_stats_read.exit.i.i_crit_edge

if.end.i.net_dm_stats_read.exit.i.i_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_stats_read.exit.i.i

if.end.i.for.body.i.i.i_crit_edge:                ; preds = %if.end.i
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %do.end9.i.i.i.for.body.i.i.i_crit_edge, %if.end.i.for.body.i.i.i_crit_edge
  %stats.sroa.0.0.i.i = phi i64 [ %add11.i.i.i, %do.end9.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end.i.for.body.i.i.i_crit_edge ]
  %call19.i.i.i = phi i32 [ %call.i.i.i, %do.end9.i.i.i.for.body.i.i.i_crit_edge ], [ %call17.i.i.i, %if.end.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call19.i.i.i
  %5 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %6, ptrtoint (ptr @dm_cpu_data to i32)
  %7 = inttoptr i32 %add.i.i.i to ptr
  %stats2.i.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %7, i32 0, i32 5
  %syncp.i.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %7, i32 0, i32 5, i32 1
  br label %do.body3.i.i.i

do.body3.i.i.i:                                   ; preds = %do.body3.i.i.i.do.body3.i.i.i_crit_edge, %for.body.i.i.i
  %call4.i.i.i = tail call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp.i.i.i) #16
  %8 = ptrtoint ptr %stats2.i.i.i to i32
  call void @__asan_load8_noabort(i32 %8)
  %9 = load i64, ptr %stats2.i.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !148
  %10 = ptrtoint ptr %syncp.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %syncp.i.i.i, align 4
  %cmp.i.i.i.i.not.i.i.i = icmp eq i32 %11, %call4.i.i.i
  br i1 %cmp.i.i.i.i.not.i.i.i, label %do.end9.i.i.i, label %do.body3.i.i.i.do.body3.i.i.i_crit_edge

do.body3.i.i.i.do.body3.i.i.i_crit_edge:          ; preds = %do.body3.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body3.i.i.i

do.end9.i.i.i:                                    ; preds = %do.body3.i.i.i
  %add11.i.i.i = add i64 %9, %stats.sroa.0.0.i.i
  %call.i.i.i = tail call i32 @cpumask_next(i32 noundef %call19.i.i.i, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %12 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i.i = icmp ult i32 %call.i.i.i, %12
  br i1 %cmp.i.i.i, label %do.end9.i.i.i.for.body.i.i.i_crit_edge, label %do.end9.i.i.i.net_dm_stats_read.exit.i.i_crit_edge

do.end9.i.i.i.net_dm_stats_read.exit.i.i_crit_edge: ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_stats_read.exit.i.i

do.end9.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %do.end9.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i.i

net_dm_stats_read.exit.i.i:                       ; preds = %do.end9.i.i.i.net_dm_stats_read.exit.i.i_crit_edge, %if.end.i.net_dm_stats_read.exit.i.i_crit_edge
  %stats.sroa.0.1.i.i = phi i64 [ 0, %if.end.i.net_dm_stats_read.exit.i.i_crit_edge ], [ %add11.i.i.i, %do.end9.i.i.i.net_dm_stats_read.exit.i.i_crit_edge ]
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i.i.i.i = tail call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 32780, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool.not17.i.i = icmp eq ptr %14, null
  %tobool.not.i.i = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool.not17.i.i
  br i1 %tobool.not.i.i, label %net_dm_stats_read.exit.i.i.if.then.i.i_crit_edge, label %if.end.i.i

net_dm_stats_read.exit.i.i.if.then.i.i_crit_edge: ; preds = %net_dm_stats_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end.i.i:                                       ; preds = %net_dm_stats_read.exit.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i.i) #16
  %15 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store8_noabort(i32 %15)
  store i64 %stats.sroa.0.1.i.i, ptr %tmp.i.i.i, align 8
  %call.i12.i.i = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %tmp.i.i.i, i32 noundef 8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i.i)
  %tobool2.not.i.i = icmp eq i32 %call.i12.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i, label %if.then.i.i.i.i

if.then.i.i.i.i:                                  ; preds = %if.end.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %16 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i13.i.i = icmp ugt ptr %17, %14
  br i1 %cmp.i.i13.i.i, label %if.then.i.i.i.i.if.then.i.sink.split.sink.split.i_crit_edge, label %if.then.i.i.i.i.if.then.i.sink.split.i_crit_edge, !prof !147

if.then.i.i.i.i.if.then.i.sink.split.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.sink.split.i

if.then.i.i.i.i.if.then.i.sink.split.sink.split.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.sink.split.sink.split.i

if.end4.i:                                        ; preds = %if.end.i.i
  %18 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %19 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv.i.i.i, ptr %14, align 2
  %call17.i.i19.i = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %21 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call17.i.i19.i, i32 %21)
  %cmp18.i.i20.i = icmp ult i32 %call17.i.i19.i, %21
  br i1 %cmp18.i.i20.i, label %if.end4.i.for.body.i.i27.i_crit_edge, label %if.end4.i.net_dm_hw_stats_read.exit.i.i_crit_edge

if.end4.i.net_dm_hw_stats_read.exit.i.i_crit_edge: ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_hw_stats_read.exit.i.i

if.end4.i.for.body.i.i27.i_crit_edge:             ; preds = %if.end4.i
  br label %for.body.i.i27.i

for.body.i.i27.i:                                 ; preds = %do.end9.i.i34.i.for.body.i.i27.i_crit_edge, %if.end4.i.for.body.i.i27.i_crit_edge
  %stats.sroa.0.0.i21.i = phi i64 [ %add11.i.i31.i, %do.end9.i.i34.i.for.body.i.i27.i_crit_edge ], [ 0, %if.end4.i.for.body.i.i27.i_crit_edge ]
  %call19.i.i22.i = phi i32 [ %call.i.i32.i, %do.end9.i.i34.i.for.body.i.i27.i_crit_edge ], [ %call17.i.i19.i, %if.end4.i.for.body.i.i27.i_crit_edge ]
  %arrayidx.i.i23.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call19.i.i22.i
  %22 = ptrtoint ptr %arrayidx.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx.i.i23.i, align 4
  %add.i.i24.i = add i32 %23, ptrtoint (ptr @dm_hw_cpu_data to i32)
  %24 = inttoptr i32 %add.i.i24.i to ptr
  %stats2.i.i25.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %24, i32 0, i32 5
  %syncp.i.i26.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %24, i32 0, i32 5, i32 1
  br label %do.body3.i.i30.i

do.body3.i.i30.i:                                 ; preds = %do.body3.i.i30.i.do.body3.i.i30.i_crit_edge, %for.body.i.i27.i
  %call4.i.i28.i = call fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp.i.i26.i) #16
  %25 = ptrtoint ptr %stats2.i.i25.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %26 = load i64, ptr %stats2.i.i25.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !148
  %27 = ptrtoint ptr %syncp.i.i26.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %syncp.i.i26.i, align 4
  %cmp.i.i.i.i.not.i.i29.i = icmp eq i32 %28, %call4.i.i28.i
  br i1 %cmp.i.i.i.i.not.i.i29.i, label %do.end9.i.i34.i, label %do.body3.i.i30.i.do.body3.i.i30.i_crit_edge

do.body3.i.i30.i.do.body3.i.i30.i_crit_edge:      ; preds = %do.body3.i.i30.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body3.i.i30.i

do.end9.i.i34.i:                                  ; preds = %do.body3.i.i30.i
  %add11.i.i31.i = add i64 %26, %stats.sroa.0.0.i21.i
  %call.i.i32.i = call i32 @cpumask_next(i32 noundef %call19.i.i22.i, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %29 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i.i33.i = icmp ult i32 %call.i.i32.i, %29
  br i1 %cmp.i.i33.i, label %do.end9.i.i34.i.for.body.i.i27.i_crit_edge, label %do.end9.i.i34.i.net_dm_hw_stats_read.exit.i.i_crit_edge

do.end9.i.i34.i.net_dm_hw_stats_read.exit.i.i_crit_edge: ; preds = %do.end9.i.i34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_hw_stats_read.exit.i.i

do.end9.i.i34.i.for.body.i.i27.i_crit_edge:       ; preds = %do.end9.i.i34.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i27.i

net_dm_hw_stats_read.exit.i.i:                    ; preds = %do.end9.i.i34.i.net_dm_hw_stats_read.exit.i.i_crit_edge, %if.end4.i.net_dm_hw_stats_read.exit.i.i_crit_edge
  %stats.sroa.0.1.i35.i = phi i64 [ 0, %if.end4.i.net_dm_hw_stats_read.exit.i.i_crit_edge ], [ %add11.i.i31.i, %do.end9.i.i34.i.net_dm_hw_stats_read.exit.i.i_crit_edge ]
  %30 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i.i.i37.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 32781, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i37.i)
  %cmp.i.i.i38.i = icmp slt i32 %call1.i.i.i37.i, 0
  %tobool.not17.i39.i = icmp eq ptr %31, null
  %tobool.not.i40.i = select i1 %cmp.i.i.i38.i, i1 true, i1 %tobool.not17.i39.i
  br i1 %tobool.not.i40.i, label %net_dm_hw_stats_read.exit.i.i.if.then.i.i_crit_edge, label %if.end.i43.i

net_dm_hw_stats_read.exit.i.i.if.then.i.i_crit_edge: ; preds = %net_dm_hw_stats_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end.i43.i:                                     ; preds = %net_dm_hw_stats_read.exit.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i.i18.i) #16
  %32 = ptrtoint ptr %tmp.i.i18.i to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %stats.sroa.0.1.i35.i, ptr %tmp.i.i18.i, align 8
  %call.i12.i41.i = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 8, ptr noundef nonnull %tmp.i.i18.i, i32 noundef 8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i.i18.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i12.i41.i)
  %tobool2.not.i42.i = icmp eq i32 %call.i12.i41.i, 0
  br i1 %tobool2.not.i42.i, label %if.end4, label %if.then.i.i.i51.i

if.then.i.i.i51.i:                                ; preds = %if.end.i43.i
  %data.i.i.i49.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %33 = ptrtoint ptr %data.i.i.i49.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data.i.i.i49.i, align 4
  %cmp.i.i13.i50.i = icmp ugt ptr %34, %31
  br i1 %cmp.i.i13.i50.i, label %if.then.i.i.i51.i.if.then.i.sink.split.sink.split.i_crit_edge, label %if.then.i.i.i51.i.if.then.i.sink.split.i_crit_edge, !prof !147

if.then.i.i.i51.i.if.then.i.sink.split.i_crit_edge: ; preds = %if.then.i.i.i51.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.sink.split.i

if.then.i.i.i51.i.if.then.i.sink.split.sink.split.i_crit_edge: ; preds = %if.then.i.i.i51.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.sink.split.sink.split.i

if.then.i.sink.split.sink.split.i:                ; preds = %if.then.i.i.i51.i.if.then.i.sink.split.sink.split.i_crit_edge, %if.then.i.i.i.i.if.then.i.sink.split.sink.split.i_crit_edge
  %data.i.i.i49.sink.ph.i = phi ptr [ %data.i.i.i.i, %if.then.i.i.i.i.if.then.i.sink.split.sink.split.i_crit_edge ], [ %data.i.i.i49.i, %if.then.i.i.i51.i.if.then.i.sink.split.sink.split.i_crit_edge ]
  %.sink78.ph.i = phi ptr [ %14, %if.then.i.i.i.i.if.then.i.sink.split.sink.split.i_crit_edge ], [ %31, %if.then.i.i.i51.i.if.then.i.sink.split.sink.split.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.then.i.sink.split.i

if.then.i.sink.split.i:                           ; preds = %if.then.i.sink.split.sink.split.i, %if.then.i.i.i51.i.if.then.i.sink.split.i_crit_edge, %if.then.i.i.i.i.if.then.i.sink.split.i_crit_edge
  %data.i.i.i49.sink.i = phi ptr [ %data.i.i.i.i, %if.then.i.i.i.i.if.then.i.sink.split.i_crit_edge ], [ %data.i.i.i49.i, %if.then.i.i.i51.i.if.then.i.sink.split.i_crit_edge ], [ %data.i.i.i49.sink.ph.i, %if.then.i.sink.split.sink.split.i ]
  %.sink78.i = phi ptr [ %14, %if.then.i.i.i.i.if.then.i.sink.split.i_crit_edge ], [ %31, %if.then.i.i.i51.i.if.then.i.sink.split.i_crit_edge ], [ %.sink78.ph.i, %if.then.i.sink.split.sink.split.i ]
  %35 = ptrtoint ptr %data.i.i.i49.sink.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i.i.i49.sink.i, align 4
  %sub.ptr.lhs.cast.i.i.i53.i = ptrtoint ptr %.sink78.i to i32
  %sub.ptr.rhs.cast.i.i.i54.i = ptrtoint ptr %36 to i32
  %sub.ptr.sub.i.i.i55.i = sub i32 %sub.ptr.lhs.cast.i.i.i53.i, %sub.ptr.rhs.cast.i.i.i54.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i.i55.i) #16
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then.i.sink.split.i, %net_dm_hw_stats_read.exit.i.i.if.then.i.i_crit_edge, %net_dm_stats_read.exit.i.i.if.then.i.i_crit_edge
  %add.ptr1.i62.i = getelementptr i8, ptr %call.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i62.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.free_msg_crit_edge, label %if.then.i.i.i65.i

if.then.i.i.free_msg_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_msg

if.then.i.i.i65.i:                                ; preds = %if.then.i.i
  %data.i.i.i63.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %37 = ptrtoint ptr %data.i.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i.i.i63.i, align 4
  %cmp.i.i.i64.i = icmp ugt ptr %38, %add.ptr1.i62.i
  br i1 %cmp.i.i.i64.i, label %do.end.i.i.i66.i, label %if.then.i.i.i65.i.if.end.i.i.i.i_crit_edge, !prof !147

if.then.i.i.i65.i.if.end.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i65.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i.i

do.end.i.i.i66.i:                                 ; preds = %if.then.i.i.i65.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i66.i, %if.then.i.i.i65.i.if.end.i.i.i.i_crit_edge
  %39 = ptrtoint ptr %data.i.i.i63.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %data.i.i.i63.i, align 4
  %sub.ptr.lhs.cast.i.i.i67.i = ptrtoint ptr %add.ptr1.i62.i to i32
  %sub.ptr.rhs.cast.i.i.i68.i = ptrtoint ptr %40 to i32
  %sub.ptr.sub.i.i.i69.i = sub i32 %sub.ptr.lhs.cast.i.i.i67.i, %sub.ptr.rhs.cast.i.i.i68.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i.i69.i) #16
  br label %free_msg

if.end4:                                          ; preds = %if.end.i43.i
  call void @__sanitizer_cov_trace_pc() #18
  %41 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i44.i = ptrtoint ptr %42 to i32
  %sub.ptr.rhs.cast.i.i45.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i46.i = sub i32 %sub.ptr.lhs.cast.i.i44.i, %sub.ptr.rhs.cast.i.i45.i
  %conv.i.i47.i = trunc i32 %sub.ptr.sub.i.i46.i to i16
  %43 = ptrtoint ptr %31 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv.i.i47.i, ptr %31, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call.i, i32 -20
  %44 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i58.i = ptrtoint ptr %44 to i32
  %sub.ptr.rhs.cast.i.i59.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i60.i = sub i32 %sub.ptr.lhs.cast.i.i58.i, %sub.ptr.rhs.cast.i.i59.i
  %45 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub.ptr.sub.i.i60.i, ptr %add.ptr1.i.i, align 4
  %_net.i.i = getelementptr inbounds %struct.genl_info, ptr %info, i32 0, i32 6
  %46 = ptrtoint ptr %_net.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %_net.i.i, align 4
  %48 = ptrtoint ptr %snd_portid.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %snd_portid.i, align 4
  %genl_sock.i.i = getelementptr inbounds %struct.net, ptr %47, i32 0, i32 21
  %50 = ptrtoint ptr %genl_sock.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %genl_sock.i.i, align 4
  %call.i.i.i13 = call i32 @netlink_unicast(ptr noundef %51, ptr noundef nonnull %call.i.i, i32 noundef %49, i32 noundef 64) #16
  %52 = call i32 @llvm.smin.i32(i32 %call.i.i.i13, i32 0) #16
  br label %cleanup

free_msg:                                         ; preds = %if.end.i.i.i.i, %if.then.i.i.free_msg_crit_edge, %if.end.free_msg_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #16
  br label %cleanup

cleanup:                                          ; preds = %free_msg, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %free_msg ], [ %52, %if.end4 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_all_monitor_traces(i32 noundef %state, ptr noundef writeonly %extack) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i32, ptr @trace_state, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %0, i32 %state)
  %cmp = icmp eq i32 %0, %state
  br i1 %cmp, label %do.body, label %if.end2

do.body:                                          ; preds = %entry
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @set_all_monitor_traces.__msg) #16
  %tobool.not = icmp eq ptr %extack, null
  br i1 %tobool.not, label %do.body.cleanup_crit_edge, label %if.then1

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  %1 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr @set_all_monitor_traces.__msg, ptr %extack, align 4
  br label %cleanup

if.end2:                                          ; preds = %entry
  %2 = zext i32 %state to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %state, label %if.end2.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb3
  ]

if.end2.cleanup_crit_edge:                        ; preds = %if.end2
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

sw.bb:                                            ; preds = %if.end2
  %3 = load i32, ptr @net_dm_alert_mode, align 4
  %arrayidx.i = getelementptr [2 x ptr], ptr @net_dm_alert_ops_arr, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.i, align 4
  %call.i = tail call zeroext i1 @try_module_get(ptr noundef null) #16
  br i1 %call.i, label %for.cond.preheader.i, label %do.body.i

for.cond.preheader.i:                             ; preds = %sw.bb
  %call398.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %6 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call398.i, i32 %6)
  %cmp99.i = icmp ult i32 %call398.i, %6
  br i1 %cmp99.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.for.end.i_crit_edge

for.cond.preheader.i.for.end.i_crit_edge:         ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %work_item_func.i = getelementptr inbounds %struct.net_dm_alert_ops, ptr %5, i32 0, i32 2
  br label %for.body.i

do.body.i:                                        ; preds = %sw.bb
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @net_dm_trace_on_set.__msg) #16
  %tobool.not.i = icmp eq ptr %extack, null
  br i1 %tobool.not.i, label %do.body.i.cleanup_crit_edge, label %if.then1.i

do.body.i.cleanup_crit_edge:                      ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @net_dm_trace_on_set.__msg, ptr %extack, align 4
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %call3100.i = phi i32 [ %call398.i, %for.body.lr.ph.i ], [ %call3.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx8.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call3100.i
  %8 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx8.i, align 4
  %add.i = add i32 %9, ptrtoint (ptr @dm_cpu_data to i32)
  %10 = inttoptr i32 %add.i to ptr
  %dm_alert_work.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %10, i32 0, i32 3
  tail call void @__init_work(ptr noundef %dm_alert_work.i, i32 noundef 0) #16
  %11 = ptrtoint ptr %dm_alert_work.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -64, ptr %dm_alert_work.i, align 8
  %lockdep_map.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %10, i32 0, i32 3, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map.i, ptr noundef nonnull @.str.12, ptr noundef nonnull @net_dm_trace_on_set.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #16
  %entry14.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %10, i32 0, i32 3, i32 1
  %12 = ptrtoint ptr %entry14.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %entry14.i, ptr %entry14.i, align 4
  %prev.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %10, i32 0, i32 3, i32 1, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %entry14.i, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %work_item_func.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %work_item_func.i, align 4
  %func.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %10, i32 0, i32 3, i32 2
  %16 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %func.i, align 4
  %send_timer.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %10, i32 0, i32 4
  tail call void @init_timer_key(ptr noundef %send_timer.i, ptr noundef nonnull @sched_send_work, i32 noundef 0, ptr noundef nonnull @.str.14, ptr noundef nonnull @net_dm_trace_on_set.__key.13) #16
  %call21.i = tail call fastcc ptr @reset_per_cpu_data(ptr noundef %10) #16
  tail call void @consume_skb(ptr noundef %call21.i) #16
  %call3.i = tail call i32 @cpumask_next(i32 noundef %call3100.i, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call3.i, %17
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.for.end.i_crit_edge

for.body.i.for.end.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i

for.end.i:                                        ; preds = %for.body.i.for.end.i_crit_edge, %for.cond.preheader.i.for.end.i_crit_edge
  %18 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %5, align 4
  %call.i.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_kfree_skb, ptr noundef %19, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool23.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool23.not.i, label %if.end33.i, label %do.body25.i

do.body25.i:                                      ; preds = %for.end.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @net_dm_trace_on_set.__msg.15) #16
  %tobool27.not.i = icmp eq ptr %extack, null
  br i1 %tobool27.not.i, label %do.body25.i.err_module_put.i_crit_edge, label %if.then28.i

do.body25.i.err_module_put.i_crit_edge:           ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %err_module_put.i

if.then28.i:                                      ; preds = %do.body25.i
  call void @__sanitizer_cov_trace_pc() #18
  %20 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @net_dm_trace_on_set.__msg.15, ptr %extack, align 4
  br label %err_module_put.i

if.end33.i:                                       ; preds = %for.end.i
  %napi_poll_probe.i = getelementptr inbounds %struct.net_dm_alert_ops, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %napi_poll_probe.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %napi_poll_probe.i, align 4
  %call.i95.i = tail call i32 @tracepoint_probe_register(ptr noundef nonnull @__tracepoint_napi_poll, ptr noundef %22, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i95.i)
  %tobool35.not.i = icmp eq i32 %call.i95.i, 0
  br i1 %tobool35.not.i, label %if.end33.i.if.then5_crit_edge, label %do.body37.i

if.end33.i.if.then5_crit_edge:                    ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then5

do.body37.i:                                      ; preds = %if.end33.i
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @net_dm_trace_on_set.__msg.16) #16
  %tobool39.not.i = icmp eq ptr %extack, null
  br i1 %tobool39.not.i, label %do.body37.i.if.end42.i_crit_edge, label %if.then40.i

do.body37.i.if.end42.i_crit_edge:                 ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end42.i

if.then40.i:                                      ; preds = %do.body37.i
  call void @__sanitizer_cov_trace_pc() #18
  %23 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @net_dm_trace_on_set.__msg.16, ptr %extack, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %if.then40.i, %do.body37.i.if.end42.i_crit_edge
  %24 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %5, align 4
  %call.i96.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_kfree_skb, ptr noundef %25, ptr noundef null) #16
  br label %err_module_put.i

err_module_put.i:                                 ; preds = %if.end42.i, %if.then28.i, %do.body25.i.err_module_put.i_crit_edge
  %call49104.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %26 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call49104.i, i32 %26)
  %cmp50105.i = icmp ult i32 %call49104.i, %26
  br i1 %cmp50105.i, label %err_module_put.i.for.body51.i_crit_edge, label %net_dm_trace_on_set.exit.thread36

err_module_put.i.for.body51.i_crit_edge:          ; preds = %err_module_put.i
  br label %for.body51.i

net_dm_trace_on_set.exit.thread36:                ; preds = %err_module_put.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @module_put(ptr noundef null) #16
  br label %cleanup

for.cond48.loopexit.i:                            ; preds = %while.body.i.for.cond48.loopexit.i_crit_edge, %for.body51.i.for.cond48.loopexit.i_crit_edge
  %call49.i = tail call i32 @cpumask_next(i32 noundef %call49106.i, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %27 = load i32, ptr @nr_cpu_ids, align 4
  %cmp50.i = icmp ult i32 %call49.i, %27
  br i1 %cmp50.i, label %for.cond48.loopexit.i.for.body51.i_crit_edge, label %net_dm_trace_on_set.exit

for.cond48.loopexit.i.for.body51.i_crit_edge:     ; preds = %for.cond48.loopexit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body51.i

for.body51.i:                                     ; preds = %for.cond48.loopexit.i.for.body51.i_crit_edge, %err_module_put.i.for.body51.i_crit_edge
  %call49106.i = phi i32 [ %call49.i, %for.cond48.loopexit.i.for.body51.i_crit_edge ], [ %call49104.i, %err_module_put.i.for.body51.i_crit_edge ]
  %arrayidx60.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call49106.i
  %28 = ptrtoint ptr %arrayidx60.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx60.i, align 4
  %add61.i = add i32 %29, ptrtoint (ptr @dm_cpu_data to i32)
  %30 = inttoptr i32 %add61.i to ptr
  %send_timer63.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %30, i32 0, i32 4
  %call64.i = tail call i32 @del_timer_sync(ptr noundef %send_timer63.i) #16
  %dm_alert_work65.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %30, i32 0, i32 3
  %call66.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %dm_alert_work65.i) #16
  %drop_queue.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %30, i32 0, i32 2
  %31 = ptrtoint ptr %drop_queue.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %drop_queue.i, align 4
  %cmp.i.i101.i = icmp eq ptr %32, %drop_queue.i
  %tobool.not.i97102.i = icmp eq ptr %32, null
  %tobool.not.i103.i = or i1 %cmp.i.i101.i, %tobool.not.i97102.i
  br i1 %tobool.not.i103.i, label %for.body51.i.for.cond48.loopexit.i_crit_edge, label %while.body.lr.ph.i

for.body51.i.for.cond48.loopexit.i_crit_edge:     ; preds = %for.body51.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond48.loopexit.i

while.body.lr.ph.i:                               ; preds = %for.body51.i
  %qlen.i.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %30, i32 0, i32 2, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %33 = phi ptr [ %32, %while.body.lr.ph.i ], [ %43, %while.body.i.while.body.i_crit_edge ]
  %34 = ptrtoint ptr %qlen.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %qlen.i.i.i, align 4
  %sub.i.i.i = add i32 %35, -1
  store volatile i32 %sub.i.i.i, ptr %qlen.i.i.i, align 4
  %36 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %33, align 8
  %prev9.i.i.i = getelementptr inbounds %struct.anon.4, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %prev9.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %prev9.i.i.i, align 4
  store ptr null, ptr %33, align 8
  %prev17.i.i.i = getelementptr inbounds %struct.anon.4, ptr %37, i32 0, i32 1
  %40 = ptrtoint ptr %prev17.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %39, ptr %prev17.i.i.i, align 4
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %37, ptr %39, align 8
  tail call void @consume_skb(ptr noundef nonnull %33) #16
  %42 = ptrtoint ptr %drop_queue.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %drop_queue.i, align 4
  %cmp.i.i.i = icmp eq ptr %43, %drop_queue.i
  %tobool.not.i97.i = icmp eq ptr %43, null
  %tobool.not.i.i = or i1 %cmp.i.i.i, %tobool.not.i97.i
  br i1 %tobool.not.i.i, label %while.body.i.for.cond48.loopexit.i_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i

while.body.i.for.cond48.loopexit.i_crit_edge:     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond48.loopexit.i

net_dm_trace_on_set.exit:                         ; preds = %for.cond48.loopexit.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @module_put(ptr noundef null) #16
  br label %cleanup

sw.bb3:                                           ; preds = %if.end2
  %44 = load i32, ptr @net_dm_alert_mode, align 4
  %arrayidx.i12 = getelementptr [2 x ptr], ptr @net_dm_alert_ops_arr, i32 0, i32 %44
  %45 = ptrtoint ptr %arrayidx.i12 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %arrayidx.i12, align 4
  %napi_poll_probe.i13 = getelementptr inbounds %struct.net_dm_alert_ops, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %napi_poll_probe.i13 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %napi_poll_probe.i13, align 4
  %call.i.i14 = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_napi_poll, ptr noundef %48, ptr noundef null) #16
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %46, align 4
  %call.i45.i = tail call i32 @tracepoint_probe_unregister(ptr noundef nonnull @__tracepoint_kfree_skb, ptr noundef %50, ptr noundef null) #16
  tail call void @synchronize_srcu(ptr noundef nonnull @tracepoint_srcu) #16
  tail call void @synchronize_rcu() #16
  %call250.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %51 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call250.i, i32 %51)
  %cmp51.i = icmp ult i32 %call250.i, %51
  br i1 %cmp51.i, label %sw.bb3.for.body.i20_crit_edge, label %sw.bb3.for.end.i29_crit_edge

sw.bb3.for.end.i29_crit_edge:                     ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i29

sw.bb3.for.body.i20_crit_edge:                    ; preds = %sw.bb3
  br label %for.body.i20

for.cond.loopexit.i:                              ; preds = %while.body.i28.for.cond.loopexit.i_crit_edge, %for.body.i20.for.cond.loopexit.i_crit_edge
  %call2.i = tail call i32 @cpumask_next(i32 noundef %call252.i, ptr noundef nonnull @__cpu_possible_mask) #20
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %52 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i15 = icmp ult i32 %call2.i, %52
  br i1 %cmp.i15, label %for.cond.loopexit.i.for.body.i20_crit_edge, label %for.cond.loopexit.i.for.end.i29_crit_edge

for.cond.loopexit.i.for.end.i29_crit_edge:        ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end.i29

for.cond.loopexit.i.for.body.i20_crit_edge:       ; preds = %for.cond.loopexit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i20

for.body.i20:                                     ; preds = %for.cond.loopexit.i.for.body.i20_crit_edge, %sw.bb3.for.body.i20_crit_edge
  %call252.i = phi i32 [ %call2.i, %for.cond.loopexit.i.for.body.i20_crit_edge ], [ %call250.i, %sw.bb3.for.body.i20_crit_edge ]
  %arrayidx4.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call252.i
  %53 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx4.i, align 4
  %add.i16 = add i32 %54, ptrtoint (ptr @dm_cpu_data to i32)
  %55 = inttoptr i32 %add.i16 to ptr
  %send_timer.i17 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %55, i32 0, i32 4
  %call5.i = tail call i32 @del_timer_sync(ptr noundef %send_timer.i17) #16
  %dm_alert_work.i18 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %55, i32 0, i32 3
  %call6.i = tail call zeroext i1 @cancel_work_sync(ptr noundef %dm_alert_work.i18) #16
  %drop_queue.i19 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %55, i32 0, i32 2
  %56 = ptrtoint ptr %drop_queue.i19 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %drop_queue.i19, align 4
  %cmp.i.i47.i = icmp eq ptr %57, %drop_queue.i19
  %tobool.not.i4648.i = icmp eq ptr %57, null
  %tobool.not.i49.i = or i1 %cmp.i.i47.i, %tobool.not.i4648.i
  br i1 %tobool.not.i49.i, label %for.body.i20.for.cond.loopexit.i_crit_edge, label %while.body.lr.ph.i22

for.body.i20.for.cond.loopexit.i_crit_edge:       ; preds = %for.body.i20
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.loopexit.i

while.body.lr.ph.i22:                             ; preds = %for.body.i20
  %qlen.i.i.i21 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %55, i32 0, i32 2, i32 1
  br label %while.body.i28

while.body.i28:                                   ; preds = %while.body.i28.while.body.i28_crit_edge, %while.body.lr.ph.i22
  %58 = phi ptr [ %57, %while.body.lr.ph.i22 ], [ %68, %while.body.i28.while.body.i28_crit_edge ]
  %59 = ptrtoint ptr %qlen.i.i.i21 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %qlen.i.i.i21, align 4
  %sub.i.i.i23 = add i32 %60, -1
  store volatile i32 %sub.i.i.i23, ptr %qlen.i.i.i21, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %58, align 8
  %prev9.i.i.i24 = getelementptr inbounds %struct.anon.4, ptr %58, i32 0, i32 1
  %63 = ptrtoint ptr %prev9.i.i.i24 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev9.i.i.i24, align 4
  store ptr null, ptr %prev9.i.i.i24, align 4
  store ptr null, ptr %58, align 8
  %prev17.i.i.i25 = getelementptr inbounds %struct.anon.4, ptr %62, i32 0, i32 1
  %65 = ptrtoint ptr %prev17.i.i.i25 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %64, ptr %prev17.i.i.i25, align 4
  %66 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %66)
  store volatile ptr %62, ptr %64, align 8
  tail call void @consume_skb(ptr noundef nonnull %58) #16
  %67 = ptrtoint ptr %drop_queue.i19 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %drop_queue.i19, align 4
  %cmp.i.i.i26 = icmp eq ptr %68, %drop_queue.i19
  %tobool.not.i46.i = icmp eq ptr %68, null
  %tobool.not.i.i27 = or i1 %cmp.i.i.i26, %tobool.not.i46.i
  br i1 %tobool.not.i.i27, label %while.body.i28.for.cond.loopexit.i_crit_edge, label %while.body.i28.while.body.i28_crit_edge

while.body.i28.while.body.i28_crit_edge:          ; preds = %while.body.i28
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body.i28

while.body.i28.for.cond.loopexit.i_crit_edge:     ; preds = %while.body.i28
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.cond.loopexit.i

for.end.i29:                                      ; preds = %for.cond.loopexit.i.for.end.i29_crit_edge, %sw.bb3.for.end.i29_crit_edge
  %69 = load ptr, ptr @hw_stats_list, align 4
  %cmp14.not55.i = icmp eq ptr %69, @hw_stats_list
  br i1 %cmp14.not55.i, label %for.end.i29.net_dm_trace_off_set.exit_crit_edge, label %for.end.i29.for.body15.i_crit_edge

for.end.i29.for.body15.i_crit_edge:               ; preds = %for.end.i29
  br label %for.body15.i

for.end.i29.net_dm_trace_off_set.exit_crit_edge:  ; preds = %for.end.i29
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_trace_off_set.exit

for.body15.i:                                     ; preds = %for.inc.i.for.body15.i_crit_edge, %for.end.i29.for.body15.i_crit_edge
  %.pn.in56.i = phi ptr [ %.pn59.i, %for.inc.i.for.body15.i_crit_edge ], [ %69, %for.end.i29.for.body15.i_crit_edge ]
  %new_stat.058.i = getelementptr i8, ptr %.pn.in56.i, i32 -8
  %70 = ptrtoint ptr %.pn.in56.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pn59.i = load ptr, ptr %.pn.in56.i, align 4
  %71 = ptrtoint ptr %new_stat.058.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %new_stat.058.i, align 4
  %cmp16.i = icmp eq ptr %72, null
  br i1 %cmp16.i, label %if.then.i, label %for.body15.i.for.inc.i_crit_edge

for.body15.i.for.inc.i_crit_edge:                 ; preds = %for.body15.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body15.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in56.i) #16
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.list_del_rcu.exit.i_crit_edge

if.then.i.list_del_rcu.exit.i_crit_edge:          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_rcu.exit.i

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in56.i, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i.i.i, align 4
  %75 = ptrtoint ptr %.pn.in56.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %.pn.in56.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev1.i.i.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %76, ptr %74, align 4
  br label %list_del_rcu.exit.i

list_del_rcu.exit.i:                              ; preds = %if.end.i.i.i, %if.then.i.list_del_rcu.exit.i_crit_edge
  %prev.i.i30 = getelementptr inbounds %struct.list_head, ptr %.pn.in56.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i.i30 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i30, align 4
  %tobool19.not.i = icmp eq ptr %new_stat.058.i, null
  br i1 %tobool19.not.i, label %list_del_rcu.exit.i.for.inc.i_crit_edge, label %do.end23.i

list_del_rcu.exit.i.for.inc.i_crit_edge:          ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc.i

do.end23.i:                                       ; preds = %list_del_rcu.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  %rcu.i = getelementptr i8, ptr %.pn.in56.i, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu.i, ptr noundef nonnull inttoptr (i32 16 to ptr)) #16
  br label %for.inc.i

for.inc.i:                                        ; preds = %do.end23.i, %list_del_rcu.exit.i.for.inc.i_crit_edge, %for.body15.i.for.inc.i_crit_edge
  %cmp14.not.i = icmp eq ptr %.pn59.i, @hw_stats_list
  br i1 %cmp14.not.i, label %for.inc.i.net_dm_trace_off_set.exit_crit_edge, label %for.inc.i.for.body15.i_crit_edge

for.inc.i.for.body15.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body15.i

for.inc.i.net_dm_trace_off_set.exit_crit_edge:    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_trace_off_set.exit

net_dm_trace_off_set.exit:                        ; preds = %for.inc.i.net_dm_trace_off_set.exit_crit_edge, %for.end.i29.net_dm_trace_off_set.exit_crit_edge
  tail call void @module_put(ptr noundef null) #16
  br label %if.then5

if.then5:                                         ; preds = %net_dm_trace_off_set.exit, %if.end33.i.if.then5_crit_edge
  store i32 %state, ptr @trace_state, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %net_dm_trace_on_set.exit, %net_dm_trace_on_set.exit.thread36, %if.then1.i, %do.body.i.cleanup_crit_edge, %if.end2.cleanup_crit_edge, %if.then1, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %if.then1 ], [ -11, %do.body.cleanup_crit_edge ], [ 0, %if.then5 ], [ -115, %if.end2.cleanup_crit_edge ], [ -115, %net_dm_trace_on_set.exit ], [ -115, %net_dm_trace_on_set.exit.thread36 ], [ -115, %if.then1.i ], [ -115, %do.body.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @try_module_get(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sched_send_work(ptr noundef %t) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dm_alert_work = getelementptr i8, ptr %t, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %dm_alert_work) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @reset_per_cpu_data(ptr noundef %data) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i.i = tail call ptr @__alloc_skb(i32 noundef 796, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %if.end

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %err

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @net_drop_monitor_family, i32 noundef 0, i8 noundef zeroext 1) #16
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.err.sink.split_crit_edge, label %if.end5

if.end.err.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %err.sink.split

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @nla_reserve(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 4) #16
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %if.end5.err.sink.split_crit_edge, label %if.end9

if.end5.err.sink.split_crit_edge:                 ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %err.sink.split

if.end9:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %add.ptr.i = getelementptr i8, ptr %call6, i32 4
  %0 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 776)
  br label %do.body13

err.sink.split:                                   ; preds = %if.end5.err.sink.split_crit_edge, %if.end.err.sink.split_crit_edge
  tail call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #16
  br label %err

err:                                              ; preds = %err.sink.split, %entry.err_crit_edge
  %send_timer = getelementptr inbounds %struct.per_cpu_dm_data, ptr %data, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add11 = add i32 %1, 10
  %call12 = tail call i32 @mod_timer(ptr noundef %send_timer, i32 noundef %add11) #16
  br label %do.body13

do.body13:                                        ; preds = %err, %if.end9
  %skb.1 = phi ptr [ %call.i.i.i, %if.end9 ], [ null, %err ]
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %data) #16
  %2 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %data, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  store ptr %skb.1, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %data, i32 noundef %call15) #16
  %tobool22.not = icmp eq ptr %4, null
  br i1 %tobool22.not, label %do.body13.if.end27_crit_edge, label %if.then23

do.body13.if.end27_crit_edge:                     ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27

if.then23:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #18
  %data24 = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %data24 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data24, align 4
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 16
  %7 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %sub.ptr.sub.i.i, ptr %6, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then23, %do.body13.if.end27_crit_edge
  ret ptr %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @cancel_work_sync(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @module_put(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_kfree_skb_hit(ptr nocapture noundef readnone %ignore, ptr nocapture noundef readnone %skb, ptr noundef %location, i32 noundef %reason) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @trace_drop_common(ptr noundef %location)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @trace_napi_poll_hit(ptr nocapture noundef readnone %ignore, ptr nocapture noundef readonly %napi, i32 noundef %work, i32 noundef %budget) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.napi_struct, ptr %napi, i32 0, i32 7
  %0 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup40_crit_edge, label %if.end

entry.cleanup40_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup40

if.end:                                           ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !134) #16
  %and.i.i.i.i.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %5, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !149
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #16
  %call.i = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i, label %if.end.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

if.end.rcu_read_lock.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %if.end
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 696, ptr noundef nonnull @.str.19) #16
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %if.end.rcu_read_lock.exit_crit_edge
  %call = tail call i32 @rcu_read_lock_any_held() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end_crit_edge

rcu_read_lock.exit.do.end_crit_edge:              ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b52 = load i1, ptr @trace_napi_poll_hit.__warned, align 1
  br i1 %.b52, label %land.lhs.true4.do.end_crit_edge, label %if.then6

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end

if.then6:                                         ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @trace_napi_poll_hit.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 285, ptr noundef nonnull @.str.17) #16
  br label %do.end

do.end:                                           ; preds = %if.then6, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %rcu_read_lock.exit.do.end_crit_edge
  %.pn65 = load volatile ptr, ptr @hw_stats_list, align 4
  %cmp.not66 = icmp eq ptr %.pn65, @hw_stats_list
  br i1 %cmp.not66, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 8
  %rx_dropped = getelementptr inbounds %struct.net_device, ptr %7, i32 0, i32 36, i32 6
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn67 = phi ptr [ %.pn65, %for.body.lr.ph ], [ %.pn, %cleanup.for.body_crit_edge ]
  %new_stat.0 = getelementptr i8, ptr %.pn67, i32 -8
  %8 = ptrtoint ptr %new_stat.0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %new_stat.0, align 4
  %cmp19 = icmp eq ptr %9, %7
  br i1 %cmp19, label %land.lhs.true20, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true20:                                  ; preds = %for.body
  %last_rx = getelementptr i8, ptr %.pn67, i32 -4
  %10 = ptrtoint ptr %last_rx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %last_rx, align 4
  %add = add i32 %11, 200
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %12 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %add, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp21 = icmp slt i32 %sub, 0
  br i1 %cmp21, label %land.lhs.true22, label %land.lhs.true20.cleanup_crit_edge

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

land.lhs.true22:                                  ; preds = %land.lhs.true20
  %13 = ptrtoint ptr %rx_dropped to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rx_dropped, align 8
  %last_drop_val = getelementptr i8, ptr %.pn67, i32 16
  %15 = ptrtoint ptr %last_drop_val to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %last_drop_val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %cmp24.not = icmp eq i32 %14, %16
  br i1 %cmp24.not, label %land.lhs.true22.cleanup_crit_edge, label %cleanup.thread

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

cleanup.thread:                                   ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #18
  %last_rx.le = getelementptr i8, ptr %.pn67, i32 -4
  %last_drop_val.le = getelementptr i8, ptr %.pn67, i32 16
  tail call fastcc void @trace_drop_common(ptr noundef null)
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 8
  %rx_dropped28 = getelementptr inbounds %struct.net_device, ptr %18, i32 0, i32 36, i32 6
  %19 = ptrtoint ptr %rx_dropped28 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %rx_dropped28, align 8
  %21 = ptrtoint ptr %last_drop_val.le to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %last_drop_val.le, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %22 = load volatile i32, ptr @jiffies, align 128
  %23 = ptrtoint ptr %last_rx.le to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %last_rx.le, align 4
  br label %for.end

cleanup:                                          ; preds = %land.lhs.true22.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %24 = ptrtoint ptr %.pn67 to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn = load volatile ptr, ptr %.pn67, align 4
  %cmp.not = icmp eq ptr %.pn, @hw_stats_list
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %cleanup.thread, %do.end.for.end_crit_edge
  %call.i53 = tail call zeroext i1 @rcu_is_watching() #16
  br i1 %call.i53, label %for.end.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i56

for.end.rcu_read_unlock.exit_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true.i56:                                ; preds = %for.end
  %call1.i54 = tail call i32 @debug_lockdep_rcu_enabled() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i54)
  %tobool.not.i55 = icmp eq i32 %call1.i54, 0
  br i1 %tobool.not.i55, label %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i58

land.lhs.true.i56.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i56
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

land.lhs.true2.i58:                               ; preds = %land.lhs.true.i56
  %.b4.i57 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i57, label %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, label %if.then.i59

land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #18
  br label %rcu_read_unlock.exit

if.then.i59:                                      ; preds = %land.lhs.true2.i58
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.18, i32 noundef 724, ptr noundef nonnull @.str.20) #16
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i59, %land.lhs.true2.i58.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i56.rcu_read_unlock.exit_crit_edge, %for.end.rcu_read_unlock.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !150
  %25 = tail call i32 @llvm.read_register.i32(metadata !134) #16
  %and.i.i.i.i.i60 = and i32 %25, -16384
  %26 = inttoptr i32 %and.i.i.i.i.i60 to ptr
  %preempt_count.i.i.i.i61 = getelementptr inbounds %struct.thread_info, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %preempt_count.i.i.i.i61 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile i32, ptr %preempt_count.i.i.i.i61, align 4
  %sub.i.i.i = add i32 %28, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i61, align 4
  tail call void @rcu_read_unlock_strict() #16
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #16
  br label %cleanup40

cleanup40:                                        ; preds = %rcu_read_unlock.exit, %entry.cleanup40_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @send_dm_alert(ptr noundef %work) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  %call = tail call fastcc ptr @reset_per_cpu_data(ptr noundef %add.ptr)
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then:                                          ; preds = %entry
  %0 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @net_drop_monitor_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %cmp.i.i = icmp eq i8 %0, 0
  br i1 %cmp.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.then
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.if.end_crit_edge, label %if.then.i.i, !prof !144

land.rhs.i.i.if.end_crit_edge:                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end

if.then.i.i:                                      ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 308, i32 noundef 9, ptr noundef null) #16
  br label %if.end

if.end39.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #18
  %1 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @net_drop_monitor_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %2 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call, i32 0, i32 3, i32 16
  %3 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %1, ptr %dst_group.i.i.i, align 8
  %call.i.i.i = tail call i32 @netlink_broadcast(ptr noundef %2, ptr noundef nonnull %call, i32 noundef 0, i32 noundef %1, i32 noundef 3264) #16
  br label %if.end

if.end:                                           ; preds = %if.end39.i.i, %if.then.i.i, %land.rhs.i.i.if.end_crit_edge, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net_dm_hw_summary_work(ptr noundef %work) #1 align 64 {
entry:
  %tmp.i.i.i.i = alloca i32, align 4
  %anc_hdr.i = alloca %struct.net_dm_alert_msg, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -104
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 2820) #21
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then.i, label %entry.net_dm_hw_reset_per_cpu_data.exit_crit_edge

entry.net_dm_hw_reset_per_cpu_data.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_hw_reset_per_cpu_data.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %send_timer.i = getelementptr i8, ptr %work, i32 44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %1 = load volatile i32, ptr @jiffies, align 128
  %add.i = add i32 %1, 10
  %call2.i = tail call i32 @mod_timer(ptr noundef %send_timer.i, i32 noundef %add.i) #16
  br label %net_dm_hw_reset_per_cpu_data.exit

net_dm_hw_reset_per_cpu_data.exit:                ; preds = %if.then.i, %entry.net_dm_hw_reset_per_cpu_data.exit_crit_edge
  %call5.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %add.ptr) #16
  %2 = getelementptr i8, ptr %work, i32 -60
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %2, align 4
  store ptr %call7.i.i.i, ptr %2, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %add.ptr, i32 noundef %call5.i) #16
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %net_dm_hw_reset_per_cpu_data.exit.cleanup_crit_edge, label %if.end

net_dm_hw_reset_per_cpu_data.exit.cleanup_crit_edge: ; preds = %net_dm_hw_reset_per_cpu_data.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %net_dm_hw_reset_per_cpu_data.exit
  %call.i.i = tail call ptr @__alloc_skb(i32 noundef 3840, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool2.not = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not, label %if.end.out_crit_edge, label %if.end4

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end4:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %anc_hdr.i) #16
  %5 = ptrtoint ptr %anc_hdr.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %anc_hdr.i, align 4
  %call.i = tail call ptr @genlmsg_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @net_drop_monitor_family, i32 noundef 0, i8 noundef zeroext 1) #16
  %tobool.not.i18 = icmp eq ptr %call.i, null
  br i1 %tobool.not.i18, label %if.end4.if.then7_crit_edge, label %if.end.i

if.end4.if.then7_crit_edge:                       ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

if.end.i:                                         ; preds = %if.end4
  %call1.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %anc_hdr.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end4.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

if.end4.i:                                        ; preds = %if.end.i
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 16
  %6 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i.i.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 32785, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %cmp.i.i.i.i = icmp slt i32 %call1.i.i.i.i, 0
  %tobool.not26.i.i = icmp eq ptr %7, null
  %tobool.not.i.i = select i1 %cmp.i.i.i.i, i1 true, i1 %tobool.not26.i.i
  br i1 %tobool.not.i.i, label %if.end4.i.if.then.i.i_crit_edge, label %for.cond.preheader.i.i

if.end4.i.if.then.i.i_crit_edge:                  ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

for.cond.preheader.i.i:                           ; preds = %if.end4.i
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp24.not.i.i = icmp eq i32 %9, 0
  br i1 %cmp24.not.i.i, label %for.cond.preheader.i.i.if.end8_crit_edge, label %for.cond.preheader.i.i.for.body.i.i_crit_edge

for.cond.preheader.i.i.for.body.i.i_crit_edge:    ; preds = %for.cond.preheader.i.i
  br label %for.body.i.i

for.cond.preheader.i.i.if.end8_crit_edge:         ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

for.body.i.i:                                     ; preds = %for.inc.i.i.for.body.i.i_crit_edge, %for.cond.preheader.i.i.for.body.i.i_crit_edge
  %i.025.i.i = phi i32 [ %inc.i.i, %for.inc.i.i.for.body.i.i_crit_edge ], [ 0, %for.cond.preheader.i.i.for.body.i.i_crit_edge ]
  %10 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %call1.i.i.i.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 32786, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i.i)
  %cmp.i.i.i.i.i = icmp slt i32 %call1.i.i.i.i.i, 0
  %tobool.not19.i.i.i = icmp eq ptr %11, null
  %tobool.not.i.i.i = select i1 %cmp.i.i.i.i.i, i1 true, i1 %tobool.not19.i.i.i
  br i1 %tobool.not.i.i.i, label %for.body.i.i.if.then.i.i.i.i_crit_edge, label %if.end.i.i.i

for.body.i.i.if.then.i.i.i.i_crit_edge:           ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i.i

if.end.i.i.i:                                     ; preds = %for.body.i.i
  %arrayidx.i.i = getelementptr %struct.net_dm_hw_entries, ptr %4, i32 0, i32 1, i32 %i.025.i.i
  %call.i.i.i.i = call i32 @strlen(ptr noundef %arrayidx.i.i) #22
  %add.i.i.i.i = add i32 %call.i.i.i.i, 1
  %call1.i.i16.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 16, i32 noundef %add.i.i.i.i, ptr noundef %arrayidx.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i16.i.i)
  %tobool2.not.i.i.i = icmp eq i32 %call1.i.i16.i.i, 0
  br i1 %tobool2.not.i.i.i, label %if.end4.i.i.i, label %if.end.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end.i.i.i.if.then.i.i.i.i.i_crit_edge:         ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i.i.i

if.end4.i.i.i:                                    ; preds = %if.end.i.i.i
  %count.i.i.i = getelementptr %struct.net_dm_hw_entries, ptr %4, i32 0, i32 1, i32 %i.025.i.i, i32 1
  %12 = ptrtoint ptr %count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %count.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #16
  %14 = ptrtoint ptr %tmp.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %tmp.i.i.i.i, align 4
  %call.i17.i.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i, i32 noundef 19, i32 noundef 4, ptr noundef nonnull %tmp.i.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i17.i.i.i)
  %tobool6.not.i.i.i = icmp eq i32 %call.i17.i.i.i, 0
  br i1 %tobool6.not.i.i.i, label %for.inc.i.i, label %if.end4.i.i.i.if.then.i.i.i.i.i_crit_edge

if.end4.i.i.i.if.then.i.i.i.i.i_crit_edge:        ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i.i.i

if.then.i.i.i.i.i:                                ; preds = %if.end4.i.i.i.if.then.i.i.i.i.i_crit_edge, %if.end.i.i.i.if.then.i.i.i.i.i_crit_edge
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %15 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i.i.i.i.i, align 4
  %cmp.i.i18.i.i.i = icmp ugt ptr %16, %11
  br i1 %cmp.i.i18.i.i.i, label %do.end.i.i.i.i.i, label %if.then.i.i.i.i.i.nla_nest_cancel.exit.i.i.i_crit_edge, !prof !147

if.then.i.i.i.i.i.nla_nest_cancel.exit.i.i.i_crit_edge: ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_nest_cancel.exit.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %nla_nest_cancel.exit.i.i.i

nla_nest_cancel.exit.i.i.i:                       ; preds = %do.end.i.i.i.i.i, %if.then.i.i.i.i.i.nla_nest_cancel.exit.i.i.i_crit_edge
  %17 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %18 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i.i.i.i) #16
  br label %if.then.i.i.i.i

for.inc.i.i:                                      ; preds = %if.end4.i.i.i
  %19 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %20 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %conv.i.i.i.i = trunc i32 %sub.ptr.sub.i.i.i.i to i16
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv.i.i.i.i, ptr %11, align 2
  %inc.i.i = add nuw i32 %i.025.i.i, 1
  %22 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %4, align 4
  %cmp.i.i = icmp ult i32 %inc.i.i, %23
  br i1 %cmp.i.i, label %for.inc.i.i.for.body.i.i_crit_edge, label %for.inc.i.i.if.end8_crit_edge

for.inc.i.i.if.end8_crit_edge:                    ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end8

for.inc.i.i.for.body.i.i_crit_edge:               ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body.i.i

if.then.i.i.i.i:                                  ; preds = %nla_nest_cancel.exit.i.i.i, %for.body.i.i.if.then.i.i.i.i_crit_edge
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %24 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i.i.i, align 4
  %cmp.i.i17.i.i = icmp ugt ptr %25, %7
  br i1 %cmp.i.i17.i.i, label %do.end.i.i.i.i, label %if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge, !prof !147

if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge: ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_nest_cancel.exit.i.i

do.end.i.i.i.i:                                   ; preds = %if.then.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %nla_nest_cancel.exit.i.i

nla_nest_cancel.exit.i.i:                         ; preds = %do.end.i.i.i.i, %if.then.i.i.i.i.nla_nest_cancel.exit.i.i_crit_edge
  %26 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i18.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.rhs.cast.i.i19.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.sub.i.i20.i.i = sub i32 %sub.ptr.lhs.cast.i.i18.i.i, %sub.ptr.rhs.cast.i.i19.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i20.i.i) #16
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %nla_nest_cancel.exit.i.i, %if.end4.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %add.ptr1.i21.i = getelementptr i8, ptr %call.i, i32 -20
  %tobool.not.i.i.i.i = icmp eq ptr %add.ptr1.i21.i, null
  br i1 %tobool.not.i.i.i.i, label %if.then.i.i.if.then7_crit_edge, label %if.then.i.i.i24.i

if.then.i.i.if.then7_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then7

if.then.i.i.i24.i:                                ; preds = %if.then.i.i
  %data.i.i.i22.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i.i22.i, align 4
  %cmp.i.i.i23.i = icmp ugt ptr %29, %add.ptr1.i21.i
  br i1 %cmp.i.i.i23.i, label %do.end.i.i.i25.i, label %if.then.i.i.i24.i.if.end.i.i.i.i_crit_edge, !prof !147

if.then.i.i.i24.i.if.end.i.i.i.i_crit_edge:       ; preds = %if.then.i.i.i24.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i.i

do.end.i.i.i25.i:                                 ; preds = %if.then.i.i.i24.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i.i.i

if.end.i.i.i.i:                                   ; preds = %do.end.i.i.i25.i, %if.then.i.i.i24.i.if.end.i.i.i.i_crit_edge
  %30 = ptrtoint ptr %data.i.i.i22.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i.i22.i, align 4
  %sub.ptr.lhs.cast.i.i.i26.i = ptrtoint ptr %add.ptr1.i21.i to i32
  %sub.ptr.rhs.cast.i.i.i27.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i.i28.i = sub i32 %sub.ptr.lhs.cast.i.i.i26.i, %sub.ptr.rhs.cast.i.i.i27.i
  call void @skb_trim(ptr noundef nonnull %call.i.i, i32 noundef %sub.ptr.sub.i.i.i28.i) #16
  br label %if.then7

if.then7:                                         ; preds = %if.end.i.i.i.i, %if.then.i.i.if.then7_crit_edge, %if.end4.if.then7_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %anc_hdr.i) #16
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i, i32 noundef 0) #16
  br label %out

if.end8:                                          ; preds = %for.inc.i.i.if.end8_crit_edge, %for.cond.preheader.i.i.if.end8_crit_edge
  %32 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %33 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %7 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  %conv.i.i.i = trunc i32 %sub.ptr.sub.i.i.i to i16
  %34 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %conv.i.i.i, ptr %7, align 2
  %add.ptr1.i.i = getelementptr i8, ptr %call.i, i32 -20
  %35 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i17.i = ptrtoint ptr %35 to i32
  %sub.ptr.rhs.cast.i.i18.i = ptrtoint ptr %add.ptr1.i.i to i32
  %sub.ptr.sub.i.i19.i = sub i32 %sub.ptr.lhs.cast.i.i17.i, %sub.ptr.rhs.cast.i.i18.i
  %36 = ptrtoint ptr %add.ptr1.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub.ptr.sub.i.i19.i, ptr %add.ptr1.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %anc_hdr.i) #16
  %37 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @net_drop_monitor_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %cmp.i.i19 = icmp eq i8 %37, 0
  br i1 %cmp.i.i19, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end8
  %.b1.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.out_crit_edge, label %if.then.i.i20, !prof !144

land.rhs.i.i.out_crit_edge:                       ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then.i.i20:                                    ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 308, i32 noundef 9, ptr noundef null) #16
  br label %out

if.end39.i.i:                                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #18
  %38 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @net_drop_monitor_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i, i32 0, i32 3, i32 16
  %40 = ptrtoint ptr %dst_group.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %38, ptr %dst_group.i.i.i, align 8
  %call.i.i.i = call i32 @netlink_broadcast(ptr noundef %39, ptr noundef nonnull %call.i.i, i32 noundef 0, i32 noundef %38, i32 noundef 3264) #16
  br label %out

out:                                              ; preds = %if.end39.i.i, %if.then.i.i20, %land.rhs.i.i.out_crit_edge, %if.then7, %if.end.out_crit_edge
  call void @kfree(ptr noundef nonnull %4) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %net_dm_hw_reset_per_cpu_data.exit.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net_dm_hw_trap_summary_probe(ptr nocapture noundef readnone %ignore, ptr nocapture noundef readnone %devlink, ptr nocapture noundef readnone %skb, ptr nocapture noundef readonly %metadata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %trap_type = getelementptr inbounds %struct.devlink_trap_metadata, ptr %metadata, i32 0, i32 5
  %0 = ptrtoint ptr %trap_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trap_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

do.body:                                          ; preds = %entry
  %2 = tail call i32 @llvm.read_register.i32(metadata !134) #16
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, ptrtoint (ptr @dm_hw_cpu_data to i32)
  %8 = inttoptr i32 %add to ptr
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %8) #16
  %9 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool.not = icmp eq ptr %11, null
  br i1 %tobool.not, label %do.body.out_crit_edge, label %for.cond.preheader

do.body.out_crit_edge:                            ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

for.cond.preheader:                               ; preds = %do.body
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp14118.not = icmp eq i32 %13, 0
  br i1 %cmp14118.not, label %for.cond.preheader.if.end70.critedge_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end70.critedge_crit_edge:   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70.critedge

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %14 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %metadata, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0119 = phi i32 [ 0, %for.body.lr.ph ], [ %inc22, %for.inc.for.body_crit_edge ]
  %arrayidx16 = getelementptr %struct.net_dm_hw_entries, ptr %11, i32 0, i32 1, i32 %i.0119
  %call18 = tail call i32 @strncmp(ptr noundef %arrayidx16, ptr noundef %15, i32 noundef 39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then20, label %for.inc

if.then20:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %count = getelementptr %struct.net_dm_hw_entries, ptr %11, i32 0, i32 1, i32 %i.0119, i32 1
  %16 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %count, align 4
  %inc = add i32 %17, 1
  store i32 %inc, ptr %count, align 4
  br label %out

for.inc:                                          ; preds = %for.body
  %inc22 = add nuw i32 %i.0119, 1
  %exitcond.not = icmp eq i32 %inc22, %13
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %13)
  %cmp24 = icmp eq i32 %13, 64
  br i1 %cmp24, label %land.rhs, label %for.end.if.end70.critedge_crit_edge

for.end.if.end70.critedge_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end70.critedge

land.rhs:                                         ; preds = %for.end
  %.b114 = load i1, ptr @net_dm_hw_trap_summary_probe.__already_done, align 1
  br i1 %.b114, label %land.rhs.out_crit_edge, label %if.then34, !prof !144

land.rhs.out_crit_edge:                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then34:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @net_dm_hw_trap_summary_probe.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 472, i32 noundef 9, ptr noundef null) #16
  br label %out

if.end70.critedge:                                ; preds = %for.end.if.end70.critedge_crit_edge, %for.cond.preheader.if.end70.critedge_crit_edge
  %arrayidx73 = getelementptr %struct.net_dm_hw_entries, ptr %11, i32 0, i32 1, i32 %13
  %18 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %metadata, align 4
  %call77 = tail call i32 @strlcpy(ptr noundef %arrayidx73, ptr noundef %19, i32 noundef 39) #16
  %count78 = getelementptr %struct.net_dm_hw_entries, ptr %11, i32 0, i32 1, i32 %13, i32 1
  %20 = ptrtoint ptr %count78 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %count78, align 4
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %11, align 4
  %inc80 = add i32 %22, 1
  store i32 %inc80, ptr %11, align 4
  %pprev.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %8, i32 0, i32 4, i32 0, i32 1
  %23 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.not, label %if.then83, label %if.end70.critedge.out_crit_edge

if.end70.critedge.out_crit_edge:                  ; preds = %if.end70.critedge
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then83:                                        ; preds = %if.end70.critedge
  call void @__sanitizer_cov_trace_pc() #18
  %send_timer = getelementptr inbounds %struct.per_cpu_dm_data, ptr %8, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add84 = add i32 %25, 100
  %expires = getelementptr inbounds %struct.per_cpu_dm_data, ptr %8, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %add84, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %send_timer) #16
  br label %out

out:                                              ; preds = %if.then83, %if.end70.critedge.out_crit_edge, %if.then34, %land.rhs.out_crit_edge, %if.then20, %do.body.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %call7) #16
  br label %cleanup

cleanup:                                          ; preds = %out, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @trace_drop_common(ptr noundef %location) unnamed_addr #1 align 64 {
entry:
  %location.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %location.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %location, ptr %location.addr, align 4
  %1 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !151
  %and.i = and i32 %1, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %if.then, label %entry.do.body12_crit_edge

entry.do.body12_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.body12

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @trace_hardirqs_off() #16
  br label %do.body12

do.body12:                                        ; preds = %if.then, %entry.do.body12_crit_edge
  %2 = tail call i32 @llvm.read_register.i32(metadata !134) #16
  %and.i1 = and i32 %2, -16384
  %3 = inttoptr i32 %and.i1 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, ptrtoint (ptr @dm_cpu_data to i32)
  %8 = inttoptr i32 %add to ptr
  tail call void @_raw_spin_lock(ptr noundef %8) #16
  %9 = getelementptr inbounds %struct.per_cpu_dm_data, ptr %8, i32 0, i32 1
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool18.not = icmp eq ptr %11, null
  br i1 %tobool18.not, label %do.body12.out_crit_edge, label %if.end20

do.body12.out_crit_edge:                          ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end20:                                         ; preds = %do.body12
  %data21 = getelementptr inbounds %struct.sk_buff, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %data21 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data21, align 4
  %add.ptr.i2 = getelementptr i8, ptr %13, i32 20
  %add.ptr.i3 = getelementptr i8, ptr %13, i32 24
  %points = getelementptr i8, ptr %13, i32 28
  %14 = ptrtoint ptr %add.ptr.i3 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i3, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp256.not = icmp eq i32 %15, 0
  br i1 %cmp256.not, label %if.end20.if.end36_crit_edge, label %for.body.preheader

if.end20.if.end36_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

for.body.preheader:                               ; preds = %if.end20
  %16 = mul i32 %15, 12
  %17 = add i32 %16, 28
  %uglygep = getelementptr i8, ptr %13, i32 %17
  br label %for.body

for.body:                                         ; preds = %if.end30.for.body_crit_edge, %for.body.preheader
  %point.08 = phi ptr [ %incdec.ptr, %if.end30.for.body_crit_edge ], [ %points, %for.body.preheader ]
  %i.07 = phi i32 [ %inc31, %if.end30.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %bcmp = call i32 @bcmp(ptr noundef nonnull dereferenceable(4) %location.addr, ptr noundef dereferenceable(4) %point.08, i32 4) #23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool28.not = icmp eq i32 %bcmp, 0
  br i1 %tobool28.not, label %if.then29, label %if.end30

if.then29:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  %count = getelementptr inbounds %struct.net_dm_drop_point, ptr %point.08, i32 0, i32 1
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %count, align 4
  br label %out

if.end30:                                         ; preds = %for.body
  %incdec.ptr = getelementptr %struct.net_dm_drop_point, ptr %point.08, i32 1
  %inc31 = add nuw i32 %i.07, 1
  %exitcond.not = icmp eq i32 %inc31, %15
  br i1 %exitcond.not, label %for.end, label %if.end30.for.body_crit_edge

if.end30.for.body_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.end:                                          ; preds = %if.end30
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %15)
  %cmp33 = icmp eq i32 %15, 64
  br i1 %cmp33, label %for.end.out_crit_edge, label %for.end.if.end36_crit_edge

for.end.if.end36_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end36

for.end.out_crit_edge:                            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end36:                                         ; preds = %for.end.if.end36_crit_edge, %if.end20.if.end36_crit_edge
  %point.0.lcssa13 = phi ptr [ %uglygep, %for.end.if.end36_crit_edge ], [ %points, %if.end20.if.end36_crit_edge ]
  %call37 = tail call ptr @__nla_reserve_nohdr(ptr noundef nonnull %11, i32 noundef 12) #16
  %20 = ptrtoint ptr %add.ptr.i2 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %add.ptr.i2, align 2
  %add39 = add i16 %21, 12
  store i16 %add39, ptr %add.ptr.i2, align 2
  %22 = ptrtoint ptr %location.addr to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %location.addr, align 4
  %24 = ptrtoint ptr %point.0.lcssa13 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %point.0.lcssa13, align 4
  %count43 = getelementptr inbounds %struct.net_dm_drop_point, ptr %point.0.lcssa13, i32 0, i32 1
  %25 = ptrtoint ptr %count43 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 1, ptr %count43, align 4
  %26 = ptrtoint ptr %add.ptr.i3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %add.ptr.i3, align 4
  %inc45 = add i32 %27, 1
  store i32 %inc45, ptr %add.ptr.i3, align 4
  %pprev.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %8, i32 0, i32 4, i32 0, i32 1
  %28 = ptrtoint ptr %pprev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile ptr, ptr %pprev.i.i, align 4
  %tobool.not.i.i.not = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.not, label %if.then48, label %if.end36.out_crit_edge

if.end36.out_crit_edge:                           ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.then48:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #18
  %send_timer = getelementptr inbounds %struct.per_cpu_dm_data, ptr %8, i32 0, i32 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %30 = load volatile i32, ptr @jiffies, align 128
  %add49 = add i32 %30, 100
  %expires = getelementptr inbounds %struct.per_cpu_dm_data, ptr %8, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %add49, ptr %expires, align 4
  tail call void @add_timer(ptr noundef %send_timer) #16
  br label %out

out:                                              ; preds = %if.then48, %if.end36.out_crit_edge, %for.end.out_crit_edge, %if.then29, %do.body12.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %8, i32 noundef %1) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__nla_reserve_nohdr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @add_timer(ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_broadcast(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #4 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_skb(i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @genlmsg_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nofree null_pointer_is_valid
declare dso_local i32 @strlcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net_dm_packet_trace_kfree_skb_hit(ptr nocapture noundef readnone %ignore, ptr noundef %skb, ptr noundef %location, i32 noundef %reason) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #16
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %0 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %mac_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %1)
  %cmp.i.not = icmp eq i16 %1, -1
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #16
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 3
  %2 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %location, ptr %cb, align 8
  %3 = getelementptr inbounds %struct.sk_buff, ptr %call2, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store8_noabort(i32 %4)
  store i64 %call.i, ptr %3, align 8
  %5 = tail call i32 @llvm.read_register.i32(metadata !134) #16
  %and.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu, align 4
  %arrayidx8 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx8, align 4
  %add = add i32 %10, ptrtoint (ptr @dm_cpu_data to i32)
  %11 = inttoptr i32 %add to ptr
  %lock = getelementptr inbounds %struct.per_cpu_dm_data, ptr %11, i32 0, i32 2, i32 2
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #16
  %qlen.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %11, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %qlen.i, align 4
  %14 = load i32, ptr @net_dm_queue_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %14)
  %cmp20 = icmp ult i32 %13, %14
  br i1 %cmp20, label %if.then22, label %unlock_free

if.then22:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  %drop_queue = getelementptr inbounds %struct.per_cpu_dm_data, ptr %11, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %11, i32 0, i32 2, i32 0, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %call2 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %drop_queue, ptr %call2, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.4, ptr %call2, i32 0, i32 1
  %18 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %prev10.i.i.i, align 4
  store volatile ptr %call2, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %call2, ptr %16, align 4
  %20 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %qlen.i, align 4
  %add.i.i.i = add i32 %21, 1
  store volatile i32 %add.i.i.i, ptr %qlen.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #16
  %dm_alert_work = getelementptr inbounds %struct.per_cpu_dm_data, ptr %11, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %22 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %22, ptr noundef %dm_alert_work) #16
  br label %cleanup

unlock_free:                                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #16
  %stats = getelementptr inbounds %struct.per_cpu_dm_data, ptr %11, i32 0, i32 5
  %syncp = getelementptr inbounds %struct.per_cpu_dm_data, ptr %11, i32 0, i32 5, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %23 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %stats, align 8
  %inc = add i64 %24, 1
  store i64 %inc, ptr %stats, align 8
  %dep_map.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %11, i32 0, i32 5, i32 1, i32 0, i32 1
  %25 = tail call ptr @llvm.returnaddress(i32 0) #16
  %26 = ptrtoint ptr %25 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %26) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !152
  %27 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %28, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void @consume_skb(ptr noundef nonnull %call2) #16
  br label %cleanup

cleanup:                                          ; preds = %unlock_free, %if.then22, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @net_dm_packet_trace_napi_poll_hit(ptr nocapture noundef %ignore, ptr nocapture noundef %napi, i32 noundef %work, i32 noundef %budget) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net_dm_packet_work(ptr noundef %work) #1 align 64 {
entry:
  %tmp.i80.i.i = alloca i16, align 2
  %tmp.i78.i.i = alloca i32, align 4
  %tmp.i76.i.i = alloca i64, align 8
  %tmp.i73.i.i = alloca i64, align 8
  %tmp.i.i.i = alloca i16, align 2
  %buf.i.i = alloca [40 x i8], align 1
  %list = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list) #16
  %0 = getelementptr inbounds i8, ptr %list, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.11, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i, align 4
  %drop_queue = getelementptr i8, ptr %work, i32 -56
  %lock = getelementptr i8, ptr %work, i32 -44
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #16
  %5 = ptrtoint ptr %drop_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drop_queue, align 4
  %cmp.i.not.i = icmp eq ptr %6, %drop_queue
  br i1 %cmp.i.not.i, label %entry.skb_queue_splice_tail_init.exit_crit_edge, label %if.then.i

entry.skb_queue_splice_tail_init.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_queue_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 -52
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.4, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %8, ptr %prev5.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %6, ptr %8, align 8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %10, align 8
  store volatile ptr %10, ptr %prev.i, align 4
  %qlen.i13 = getelementptr i8, ptr %work, i32 -48
  %14 = ptrtoint ptr %qlen.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i13, align 4
  %16 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i, align 4
  %add.i = add i32 %17, %15
  store i32 %add.i, ptr %qlen.i, align 4
  %18 = ptrtoint ptr %drop_queue to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %drop_queue, ptr %drop_queue, align 4
  store ptr %drop_queue, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i13, align 4
  br label %skb_queue_splice_tail_init.exit

skb_queue_splice_tail_init.exit:                  ; preds = %if.then.i, %entry.skb_queue_splice_tail_init.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #16
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  %cmp.i.i18 = icmp eq ptr %20, %list
  %tobool.not.i1719 = icmp eq ptr %20, null
  %tobool.not.i20 = or i1 %cmp.i.i18, %tobool.not.i1719
  br i1 %tobool.not.i20, label %skb_queue_splice_tail_init.exit.while.end_crit_edge, label %skb_queue_splice_tail_init.exit.while.body_crit_edge

skb_queue_splice_tail_init.exit.while.body_crit_edge: ; preds = %skb_queue_splice_tail_init.exit
  br label %while.body

skb_queue_splice_tail_init.exit.while.end_crit_edge: ; preds = %skb_queue_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %net_dm_packet_report.exit.while.body_crit_edge, %skb_queue_splice_tail_init.exit.while.body_crit_edge
  %21 = phi ptr [ %78, %net_dm_packet_report.exit.while.body_crit_edge ], [ %20, %skb_queue_splice_tail_init.exit.while.body_crit_edge ]
  %22 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.4, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %21, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.4, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %27, ptr %prev17.i.i, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %25, ptr %27, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 19
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 15, i32 0, i32 21
  %34 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %35 to i32
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %conv.i.i
  %cmp.i = icmp ugt ptr %31, %add.ptr.i.i
  br i1 %cmp.i, label %if.then.i15, label %if.else.i

if.then.i15:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %sub.ptr.lhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call3.i = call ptr @skb_push(ptr noundef nonnull %21, i32 noundef %sub.ptr.sub.i) #16
  br label %if.end.i

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %sub.ptr.lhs.cast6.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast7.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub8.i = sub i32 %sub.ptr.lhs.cast6.i, %sub.ptr.rhs.cast7.i
  %call9.i = call ptr @skb_pull(ptr noundef nonnull %21, i32 noundef %sub.ptr.sub8.i) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i15
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  %38 = call i32 @llvm.umin.i32(i32 %37, i32 65527) #16
  %39 = load i32, ptr @net_dm_trunc_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i16 = icmp eq i32 %39, 0
  %40 = call i32 @llvm.umin.i32(i32 %39, i32 %38) #16
  %payload_len.0.i = select i1 %tobool.not.i16, i32 %38, i32 %40
  %41 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @net_drop_monitor_family, i32 0, i32 1), align 4
  %42 = add i32 %41, 155
  %add15.i.i = and i32 %42, -4
  %sub.i.i.i = add nuw nsw i32 %payload_len.0.i, 7
  %and.i.i.i = and i32 %sub.i.i.i, 131068
  %add17.i.i = add i32 %add15.i.i, 19
  %sub.i.i57.i = add i32 %add17.i.i, %and.i.i.i
  %and.i.i58.i = and i32 %sub.i.i57.i, -4
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef %and.i.i58.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool21.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool21.not.i, label %if.end.i.net_dm_packet_report.exit_crit_edge, label %if.end23.i

if.end.i.net_dm_packet_report.exit_crit_edge:     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_packet_report.exit

if.end23.i:                                       ; preds = %if.end.i
  %cb.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3
  %43 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cb.i.i, align 8
  %45 = ptrtoint ptr %44 to i32
  %conv.i59.i = zext i32 %45 to i64
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %buf.i.i) #16
  %46 = call ptr @memset(ptr %buf.i.i, i32 255, i32 40)
  %call.i.i = call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @net_drop_monitor_family, i32 noundef 0, i8 noundef zeroext 5) #16
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end23.i.if.then26.i_crit_edge, label %if.end.i.i

if.end23.i.if.then26.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26.i

if.end.i.i:                                       ; preds = %if.end23.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i.i) #16
  %47 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 0, ptr %tmp.i.i.i, align 2
  %call.i.i60.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 14, i32 noundef 2, ptr noundef nonnull %tmp.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i60.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.if.then.i.i.i_crit_edge

if.end.i.i.if.then.i.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i73.i.i) #16
  %48 = ptrtoint ptr %tmp.i73.i.i to i32
  call void @__asan_store8_noabort(i32 %48)
  store i64 %conv.i59.i, ptr %tmp.i73.i.i, align 8
  %call.i74.i.i = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i.i, i32 noundef 2, i32 noundef 8, ptr noundef nonnull %tmp.i73.i.i, i32 noundef 8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i73.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i74.i.i)
  %tobool6.not.i.i = icmp eq i32 %call.i74.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.if.then.i.i.i_crit_edge

if.end4.i.i.if.then.i.i.i_crit_edge:              ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %49 = ptrtoint ptr %cb.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cb.i.i, align 8
  %call11.i.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %buf.i.i, i32 noundef 40, ptr noundef nonnull @.str.24, ptr noundef %50) #16
  %call.i75.i.i = call i32 @strlen(ptr noundef nonnull %buf.i.i) #22
  %add.i.i.i = add i32 %call.i75.i.i, 1
  %call1.i.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 3, i32 noundef %add.i.i.i, ptr noundef nonnull %buf.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool14.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool14.not.i.i, label %if.end16.i.i, label %if.end8.i.i.if.then.i.i.i_crit_edge

if.end8.i.i.if.then.i.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end16.i.i:                                     ; preds = %if.end8.i.i
  %skb_iif.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 15, i32 0, i32 7
  %51 = ptrtoint ptr %skb_iif.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %skb_iif.i.i, align 8
  %call17.i.i = call fastcc i32 @net_dm_packet_report_in_port_put(ptr noundef nonnull %call.i.i.i, i32 noundef %52, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i.i)
  %tobool18.not.i.i = icmp eq i32 %call17.i.i, 0
  br i1 %tobool18.not.i.i, label %if.end20.i.i, label %if.end16.i.i.if.then.i.i.i_crit_edge

if.end16.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end16.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end20.i.i:                                     ; preds = %if.end16.i.i
  %53 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 2
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %53, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i76.i.i) #16
  %56 = ptrtoint ptr %tmp.i76.i.i to i32
  call void @__asan_store8_noabort(i32 %56)
  store i64 %55, ptr %tmp.i76.i.i, align 8
  %call.i77.i.i = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i.i, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i76.i.i, i32 noundef 8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i76.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77.i.i)
  %tobool23.not.i.i = icmp eq i32 %call.i77.i.i, 0
  br i1 %tobool23.not.i.i, label %if.end25.i.i, label %if.end20.i.i.if.then.i.i.i_crit_edge

if.end20.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end20.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end25.i.i:                                     ; preds = %if.end20.i.i
  %57 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i78.i.i) #16
  %59 = ptrtoint ptr %tmp.i78.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %tmp.i78.i.i, align 4
  %call.i79.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i78.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i78.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i79.i.i)
  %tobool27.not.i.i = icmp eq i32 %call.i79.i.i, 0
  br i1 %tobool27.not.i.i, label %if.end29.i.i, label %if.end25.i.i.if.then.i.i.i_crit_edge

if.end25.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end29.i.i:                                     ; preds = %if.end25.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %payload_len.0.i)
  %tobool30.not.i.i = icmp eq i32 %payload_len.0.i, 0
  br i1 %tobool30.not.i.i, label %if.end29.i.i.if.end27.i_crit_edge, label %if.end32.i.i

if.end29.i.i.if.end27.i_crit_edge:                ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 15, i32 0, i32 18
  %60 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %protocol.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i80.i.i) #16
  %62 = ptrtoint ptr %tmp.i80.i.i to i32
  call void @__asan_store2_noabort(i32 %62)
  store i16 %61, ptr %tmp.i80.i.i, align 2
  %call.i81.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %tmp.i80.i.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i80.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81.i.i)
  %tobool34.not.i.i = icmp eq i32 %call.i81.i.i, 0
  br i1 %tobool34.not.i.i, label %if.end36.i.i, label %if.end32.i.i.if.then.i.i.i_crit_edge

if.end32.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end32.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end36.i.i:                                     ; preds = %if.end32.i.i
  %call38.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %and.i.i.i) #16
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %call38.i.i, i32 0, i32 1
  %63 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 7, ptr %nla_type.i.i, align 2
  %64 = trunc i32 %payload_len.0.i to i16
  %conv40.i.i = add nuw i16 %64, 4
  %65 = ptrtoint ptr %call38.i.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 %conv40.i.i, ptr %call38.i.i, align 2
  %add.ptr.i.i.i = getelementptr i8, ptr %call38.i.i, i32 4
  %call42.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %21, i32 noundef 0, ptr noundef %add.ptr.i.i.i, i32 noundef %payload_len.0.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i.i)
  %tobool43.not.i.i = icmp eq i32 %call42.i.i, 0
  br i1 %tobool43.not.i.i, label %if.end36.i.i.if.end27.i_crit_edge, label %if.end36.i.i.if.then.i.i.i_crit_edge

if.end36.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end36.i.i.if.end27.i_crit_edge:                ; preds = %if.end36.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

if.then.i.i.i:                                    ; preds = %if.end36.i.i.if.then.i.i.i_crit_edge, %if.end32.i.i.if.then.i.i.i_crit_edge, %if.end25.i.i.if.then.i.i.i_crit_edge, %if.end20.i.i.if.then.i.i.i_crit_edge, %if.end16.i.i.if.then.i.i.i_crit_edge, %if.end8.i.i.if.then.i.i.i_crit_edge, %if.end4.i.i.if.then.i.i.i_crit_edge, %if.end.i.i.if.then.i.i.i_crit_edge
  %add.ptr1.i83.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %tobool.not.i.i.i.i.i = icmp eq ptr %add.ptr1.i83.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.if.then26.i_crit_edge, label %if.then.i.i.i.i.i

if.then.i.i.i.if.then26.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %66 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %data.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i = icmp ugt ptr %67, %add.ptr1.i83.i.i
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, !prof !147

if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge:     ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.end.i.i.i.i.i, %if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge
  %68 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %data.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %add.ptr1.i83.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %69 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i.i, i32 noundef %sub.ptr.sub.i.i.i.i.i) #16
  br label %if.then26.i

if.then26.i:                                      ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.if.then26.i_crit_edge, %if.end23.i.if.then26.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf.i.i) #16
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #16
  br label %net_dm_packet_report.exit

if.end27.i:                                       ; preds = %if.end36.i.i.if.end27.i_crit_edge, %if.end29.i.i.if.end27.i_crit_edge
  %add.ptr1.i.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %70 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %71 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %72 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %sub.ptr.sub.i.i.i.i, ptr %add.ptr1.i.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %buf.i.i) #16
  %73 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @net_drop_monitor_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %cmp.i.i.i = icmp eq i8 %73, 0
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end27.i
  %.b1.i.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.net_dm_packet_report.exit_crit_edge, label %if.then.i.i63.i, !prof !144

land.rhs.i.i.i.net_dm_packet_report.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_packet_report.exit

if.then.i.i63.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 308, i32 noundef 9, ptr noundef null) #16
  br label %net_dm_packet_report.exit

if.end39.i.i.i:                                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %74 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @net_drop_monitor_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %75 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 16
  %76 = ptrtoint ptr %dst_group.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %74, ptr %dst_group.i.i.i.i, align 8
  %call.i.i.i.i = call i32 @netlink_broadcast(ptr noundef %75, ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef %74, i32 noundef 3264) #16
  br label %net_dm_packet_report.exit

net_dm_packet_report.exit:                        ; preds = %if.end39.i.i.i, %if.then.i.i63.i, %land.rhs.i.i.i.net_dm_packet_report.exit_crit_edge, %if.then26.i, %if.end.i.net_dm_packet_report.exit_crit_edge
  call void @consume_skb(ptr noundef nonnull %21) #16
  %77 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %78, %list
  %tobool.not.i17 = icmp eq ptr %78, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i17
  br i1 %tobool.not.i, label %net_dm_packet_report.exit.while.end_crit_edge, label %net_dm_packet_report.exit.while.body_crit_edge

net_dm_packet_report.exit.while.body_crit_edge:   ; preds = %net_dm_packet_report.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

net_dm_packet_report.exit.while.end_crit_edge:    ; preds = %net_dm_packet_report.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %net_dm_packet_report.exit.while.end_crit_edge, %skb_queue_splice_tail_init.exit.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net_dm_hw_packet_work(ptr noundef %work) #1 align 64 {
entry:
  %tmp.i95.i.i = alloca i16, align 2
  %tmp.i93.i.i = alloca i32, align 4
  %tmp.i91.i.i = alloca i64, align 8
  %tmp.i.i.i = alloca i16, align 2
  %list = alloca %struct.sk_buff_head, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %list) #16
  %0 = getelementptr inbounds i8, ptr %list, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 44)
  %2 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %list, align 4
  %prev.i = getelementptr inbounds %struct.anon.11, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %prev.i, align 4
  %qlen.i = getelementptr inbounds %struct.sk_buff_head, ptr %list, i32 0, i32 1
  %4 = ptrtoint ptr %qlen.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %qlen.i, align 4
  %drop_queue = getelementptr i8, ptr %work, i32 -56
  %lock = getelementptr i8, ptr %work, i32 -44
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #16
  %5 = ptrtoint ptr %drop_queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %drop_queue, align 4
  %cmp.i.not.i = icmp eq ptr %6, %drop_queue
  br i1 %cmp.i.not.i, label %entry.skb_queue_splice_tail_init.exit_crit_edge, label %if.then.i

entry.skb_queue_splice_tail_init.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %skb_queue_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr i8, ptr %work, i32 -52
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev2.i.i, align 4
  %prev5.i.i = getelementptr inbounds %struct.anon.4, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev5.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %8, ptr %prev5.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %6, ptr %8, align 8
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %list, ptr %10, align 8
  store volatile ptr %10, ptr %prev.i, align 4
  %qlen.i13 = getelementptr i8, ptr %work, i32 -48
  %14 = ptrtoint ptr %qlen.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %qlen.i13, align 4
  %16 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %qlen.i, align 4
  %add.i = add i32 %17, %15
  store i32 %add.i, ptr %qlen.i, align 4
  %18 = ptrtoint ptr %drop_queue to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %drop_queue, ptr %drop_queue, align 4
  store ptr %drop_queue, ptr %prev2.i.i, align 4
  store i32 0, ptr %qlen.i13, align 4
  br label %skb_queue_splice_tail_init.exit

skb_queue_splice_tail_init.exit:                  ; preds = %if.then.i, %entry.skb_queue_splice_tail_init.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #16
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  %cmp.i.i18 = icmp eq ptr %20, %list
  %tobool.not.i1719 = icmp eq ptr %20, null
  %tobool.not.i20 = or i1 %cmp.i.i18, %tobool.not.i1719
  br i1 %tobool.not.i20, label %skb_queue_splice_tail_init.exit.while.end_crit_edge, label %skb_queue_splice_tail_init.exit.while.body_crit_edge

skb_queue_splice_tail_init.exit.while.body_crit_edge: ; preds = %skb_queue_splice_tail_init.exit
  br label %while.body

skb_queue_splice_tail_init.exit.while.end_crit_edge: ; preds = %skb_queue_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.body:                                       ; preds = %net_dm_hw_packet_report.exit.while.body_crit_edge, %skb_queue_splice_tail_init.exit.while.body_crit_edge
  %21 = phi ptr [ %96, %net_dm_hw_packet_report.exit.while.body_crit_edge ], [ %20, %skb_queue_splice_tail_init.exit.while.body_crit_edge ]
  %22 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %qlen.i, align 4
  %sub.i.i = add i32 %23, -1
  store volatile i32 %sub.i.i, ptr %qlen.i, align 4
  %24 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %21, align 8
  %prev9.i.i = getelementptr inbounds %struct.anon.4, ptr %21, i32 0, i32 1
  %26 = ptrtoint ptr %prev9.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev9.i.i, align 4
  store ptr null, ptr %prev9.i.i, align 4
  store ptr null, ptr %21, align 8
  %prev17.i.i = getelementptr inbounds %struct.anon.4, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %prev17.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %27, ptr %prev17.i.i, align 4
  %29 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %25, ptr %27, align 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 19
  %30 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i, align 8
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 15, i32 0, i32 21
  %34 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %mac_header.i.i, align 2
  %conv.i.i = zext i16 %35 to i32
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 %conv.i.i
  %cmp.i = icmp ugt ptr %31, %add.ptr.i.i
  br i1 %cmp.i, label %if.then.i15, label %if.else.i

if.then.i15:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %sub.ptr.lhs.cast.i = ptrtoint ptr %31 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call3.i = call ptr @skb_push(ptr noundef nonnull %21, i32 noundef %sub.ptr.sub.i) #16
  br label %if.end.i

if.else.i:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #18
  %sub.ptr.lhs.cast6.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast7.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub8.i = sub i32 %sub.ptr.lhs.cast6.i, %sub.ptr.rhs.cast7.i
  %call9.i = call ptr @skb_pull(ptr noundef nonnull %21, i32 noundef %sub.ptr.sub8.i) #16
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i15
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 6
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  %38 = call i32 @llvm.umin.i32(i32 %37, i32 65527) #16
  %39 = load i32, ptr @net_dm_trunc_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not.i16 = icmp eq i32 %39, 0
  %40 = call i32 @llvm.umin.i32(i32 %39, i32 %38) #16
  %payload_len.0.i = select i1 %tobool.not.i16, i32 %38, i32 %40
  %cb.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 3
  %41 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %cb.i, align 8
  %43 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @net_drop_monitor_family, i32 0, i32 1), align 4
  %trap_group_name.i.i = getelementptr inbounds %struct.devlink_trap_metadata, ptr %42, i32 0, i32 1
  %44 = ptrtoint ptr %trap_group_name.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %trap_group_name.i.i, align 4
  %call4.i.i = call i32 @strlen(ptr noundef %45) #22
  %46 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %42, align 4
  %call8.i.i = call i32 @strlen(ptr noundef %47) #22
  %fa_cookie.i.i.i = getelementptr inbounds %struct.devlink_trap_metadata, ptr %42, i32 0, i32 4
  %48 = ptrtoint ptr %fa_cookie.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %fa_cookie.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %49, null
  br i1 %tobool.not.i.i.i, label %if.end.i.net_dm_hw_packet_report_size.exit.i_crit_edge, label %cond.true.i.i.i

if.end.i.net_dm_hw_packet_report_size.exit.i_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_hw_packet_report_size.exit.i

cond.true.i.i.i:                                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %sub.i.i.i.i = add i32 %51, 7
  %and.i.i.i.i = and i32 %sub.i.i.i.i, -4
  br label %net_dm_hw_packet_report_size.exit.i

net_dm_hw_packet_report_size.exit.i:              ; preds = %cond.true.i.i.i, %if.end.i.net_dm_hw_packet_report_size.exit.i_crit_edge
  %cond.i.i.i = phi i32 [ %and.i.i.i.i, %cond.true.i.i.i ], [ 0, %if.end.i.net_dm_hw_packet_report_size.exit.i_crit_edge ]
  %52 = add i32 %43, 31
  %add3.i.i = and i32 %52, -4
  %sub.i.i.i = add i32 %call4.i.i, 8
  %and.i.i.i = and i32 %sub.i.i.i, -4
  %sub.i26.i.i = add i32 %call8.i.i, 8
  %and.i27.i.i = and i32 %sub.i26.i.i, -4
  %53 = add nuw nsw i32 %payload_len.0.i, 71
  %add11.i.i = and i32 %53, 131068
  %add13.i.i = add i32 %add3.i.i, 19
  %add15.i.i = add i32 %add13.i.i, %add11.i.i
  %add21.i.i = add i32 %add15.i.i, %and.i.i.i
  %add23.i.i = add i32 %add21.i.i, %and.i27.i.i
  %sub.i.i61.i = add i32 %add23.i.i, %cond.i.i.i
  %and.i.i62.i = and i32 %sub.i.i61.i, -4
  %call.i.i.i = call ptr @__alloc_skb(i32 noundef %and.i.i62.i, i32 noundef 3264, i32 noundef 0, i32 noundef -1) #16
  %tobool21.not.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool21.not.i, label %net_dm_hw_packet_report_size.exit.i.net_dm_hw_packet_report.exit_crit_edge, label %if.end23.i

net_dm_hw_packet_report_size.exit.i.net_dm_hw_packet_report.exit_crit_edge: ; preds = %net_dm_hw_packet_report_size.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_hw_packet_report.exit

if.end23.i:                                       ; preds = %net_dm_hw_packet_report_size.exit.i
  %54 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cb.i, align 8
  %call.i.i = call ptr @genlmsg_put(ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef 0, ptr noundef nonnull @net_drop_monitor_family, i32 noundef 0, i8 noundef zeroext 5) #16
  %tobool.not.i.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i.i, label %if.end23.i.if.then26.i_crit_edge, label %if.end.i.i

if.end23.i.if.then26.i_crit_edge:                 ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26.i

if.end.i.i:                                       ; preds = %if.end23.i
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i.i) #16
  %56 = ptrtoint ptr %tmp.i.i.i to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %tmp.i.i.i, align 2
  %call.i.i63.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 14, i32 noundef 2, ptr noundef nonnull %tmp.i.i.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i63.i)
  %tobool2.not.i.i = icmp eq i32 %call.i.i63.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.if.then.i.i.i_crit_edge

if.end.i.i.if.then.i.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end4.i.i:                                      ; preds = %if.end.i.i
  %trap_group_name.i64.i = getelementptr inbounds %struct.devlink_trap_metadata, ptr %55, i32 0, i32 1
  %57 = ptrtoint ptr %trap_group_name.i64.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %trap_group_name.i64.i, align 4
  %call.i87.i.i = call i32 @strlen(ptr noundef %58) #22
  %add.i.i.i = add i32 %call.i87.i.i, 1
  %call1.i.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 15, i32 noundef %add.i.i.i, ptr noundef %58) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool6.not.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool6.not.i.i, label %if.end8.i.i, label %if.end4.i.i.if.then.i.i.i_crit_edge

if.end4.i.i.if.then.i.i.i_crit_edge:              ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end8.i.i:                                      ; preds = %if.end4.i.i
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %55, align 4
  %call.i88.i.i = call i32 @strlen(ptr noundef %60) #22
  %add.i89.i.i = add i32 %call.i88.i.i, 1
  %call1.i90.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 16, i32 noundef %add.i89.i.i, ptr noundef %60) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i90.i.i)
  %tobool10.not.i.i = icmp eq i32 %call1.i90.i.i, 0
  br i1 %tobool10.not.i.i, label %if.end12.i.i, label %if.end8.i.i.if.then.i.i.i_crit_edge

if.end8.i.i.if.then.i.i.i_crit_edge:              ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end12.i.i:                                     ; preds = %if.end8.i.i
  %input_dev.i.i = getelementptr inbounds %struct.devlink_trap_metadata, ptr %55, i32 0, i32 2
  %61 = ptrtoint ptr %input_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %input_dev.i.i, align 4
  %tobool13.not.i.i = icmp eq ptr %62, null
  br i1 %tobool13.not.i.i, label %if.end12.i.i.if.end21.i.i_crit_edge, label %if.then14.i.i

if.end12.i.i.if.end21.i.i_crit_edge:              ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21.i.i

if.then14.i.i:                                    ; preds = %if.end12.i.i
  %ifindex.i.i = getelementptr inbounds %struct.net_device, ptr %62, i32 0, i32 17
  %63 = ptrtoint ptr %ifindex.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ifindex.i.i, align 4
  %call16.i.i = call fastcc i32 @net_dm_packet_report_in_port_put(ptr noundef nonnull %call.i.i.i, i32 noundef %64, ptr noundef nonnull %62) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16.i.i)
  %tobool17.not.i.i = icmp eq i32 %call16.i.i, 0
  br i1 %tobool17.not.i.i, label %if.then14.i.i.if.end21.i.i_crit_edge, label %if.then14.i.i.if.then.i.i.i_crit_edge

if.then14.i.i.if.then.i.i.i_crit_edge:            ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.then14.i.i.if.end21.i.i_crit_edge:             ; preds = %if.then14.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end21.i.i

if.end21.i.i:                                     ; preds = %if.then14.i.i.if.end21.i.i_crit_edge, %if.end12.i.i.if.end21.i.i_crit_edge
  %fa_cookie.i.i = getelementptr inbounds %struct.devlink_trap_metadata, ptr %55, i32 0, i32 4
  %65 = ptrtoint ptr %fa_cookie.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %fa_cookie.i.i, align 4
  %tobool22.not.i.i = icmp eq ptr %66, null
  br i1 %tobool22.not.i.i, label %if.end21.i.i.if.end29.i.i_crit_edge, label %land.lhs.true.i.i

if.end21.i.i.if.end29.i.i_crit_edge:              ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i.i

land.lhs.true.i.i:                                ; preds = %if.end21.i.i
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %66, align 4
  %cookie.i.i = getelementptr inbounds %struct.flow_action_cookie, ptr %66, i32 0, i32 1
  %call26.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 22, i32 noundef %68, ptr noundef %cookie.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26.i.i)
  %tobool27.not.i.i = icmp eq i32 %call26.i.i, 0
  br i1 %tobool27.not.i.i, label %land.lhs.true.i.i.if.end29.i.i_crit_edge, label %land.lhs.true.i.i.if.then.i.i.i_crit_edge

land.lhs.true.i.i.if.then.i.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

land.lhs.true.i.i.if.end29.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end29.i.i

if.end29.i.i:                                     ; preds = %land.lhs.true.i.i.if.end29.i.i_crit_edge, %if.end21.i.i.if.end29.i.i_crit_edge
  %69 = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 2
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %69, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i91.i.i) #16
  %72 = ptrtoint ptr %tmp.i91.i.i to i32
  call void @__asan_store8_noabort(i32 %72)
  store i64 %71, ptr %tmp.i91.i.i, align 8
  %call.i92.i.i = call i32 @nla_put_64bit(ptr noundef nonnull %call.i.i.i, i32 noundef 5, i32 noundef 8, ptr noundef nonnull %tmp.i91.i.i, i32 noundef 8) #16
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i91.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i92.i.i)
  %tobool32.not.i.i = icmp eq i32 %call.i92.i.i, 0
  br i1 %tobool32.not.i.i, label %if.end34.i.i, label %if.end29.i.i.if.then.i.i.i_crit_edge

if.end29.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end29.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end34.i.i:                                     ; preds = %if.end29.i.i
  %73 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %len.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i93.i.i) #16
  %75 = ptrtoint ptr %tmp.i93.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %74, ptr %tmp.i93.i.i, align 4
  %call.i94.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 10, i32 noundef 4, ptr noundef nonnull %tmp.i93.i.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i93.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i94.i.i)
  %tobool36.not.i.i = icmp eq i32 %call.i94.i.i, 0
  br i1 %tobool36.not.i.i, label %if.end38.i.i, label %if.end34.i.i.if.then.i.i.i_crit_edge

if.end34.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end38.i.i:                                     ; preds = %if.end34.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %payload_len.0.i)
  %tobool39.not.i.i = icmp eq i32 %payload_len.0.i, 0
  br i1 %tobool39.not.i.i, label %if.end38.i.i.if.end27.i_crit_edge, label %if.end41.i.i

if.end38.i.i.if.end27.i_crit_edge:                ; preds = %if.end38.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %21, i32 0, i32 15, i32 0, i32 18
  %76 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %protocol.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i95.i.i) #16
  %78 = ptrtoint ptr %tmp.i95.i.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 %77, ptr %tmp.i95.i.i, align 2
  %call.i96.i.i = call i32 @nla_put(ptr noundef nonnull %call.i.i.i, i32 noundef 6, i32 noundef 2, ptr noundef nonnull %tmp.i95.i.i) #16
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i95.i.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96.i.i)
  %tobool43.not.i.i = icmp eq i32 %call.i96.i.i, 0
  br i1 %tobool43.not.i.i, label %if.end45.i.i, label %if.end41.i.i.if.then.i.i.i_crit_edge

if.end41.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end41.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end45.i.i:                                     ; preds = %if.end41.i.i
  %sub.i.i65.i = add nuw nsw i32 %payload_len.0.i, 7
  %and.i.i66.i = and i32 %sub.i.i65.i, 131068
  %call47.i.i = call ptr @skb_put(ptr noundef nonnull %call.i.i.i, i32 noundef %and.i.i66.i) #16
  %nla_type.i.i = getelementptr inbounds %struct.nlattr, ptr %call47.i.i, i32 0, i32 1
  %79 = ptrtoint ptr %nla_type.i.i to i32
  call void @__asan_store2_noabort(i32 %79)
  store i16 7, ptr %nla_type.i.i, align 2
  %80 = trunc i32 %payload_len.0.i to i16
  %conv.i67.i = add nuw i16 %80, 4
  %81 = ptrtoint ptr %call47.i.i to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %conv.i67.i, ptr %call47.i.i, align 2
  %add.ptr.i.i.i = getelementptr i8, ptr %call47.i.i, i32 4
  %call50.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %21, i32 noundef 0, ptr noundef %add.ptr.i.i.i, i32 noundef %payload_len.0.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50.i.i)
  %tobool51.not.i.i = icmp eq i32 %call50.i.i, 0
  br i1 %tobool51.not.i.i, label %if.end45.i.i.if.end27.i_crit_edge, label %if.end45.i.i.if.then.i.i.i_crit_edge

if.end45.i.i.if.then.i.i.i_crit_edge:             ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i.i

if.end45.i.i.if.end27.i_crit_edge:                ; preds = %if.end45.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end27.i

if.then.i.i.i:                                    ; preds = %if.end45.i.i.if.then.i.i.i_crit_edge, %if.end41.i.i.if.then.i.i.i_crit_edge, %if.end34.i.i.if.then.i.i.i_crit_edge, %if.end29.i.i.if.then.i.i.i_crit_edge, %land.lhs.true.i.i.if.then.i.i.i_crit_edge, %if.then14.i.i.if.then.i.i.i_crit_edge, %if.end8.i.i.if.then.i.i.i_crit_edge, %if.end4.i.i.if.then.i.i.i_crit_edge, %if.end.i.i.if.then.i.i.i_crit_edge
  %add.ptr1.i98.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %tobool.not.i.i.i.i.i = icmp eq ptr %add.ptr1.i98.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.i.if.then26.i_crit_edge, label %if.then.i.i.i.i.i

if.then.i.i.i.if.then26.i_crit_edge:              ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then26.i

if.then.i.i.i.i.i:                                ; preds = %if.then.i.i.i
  %data.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 19
  %82 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %data.i.i.i.i.i, align 4
  %cmp.i.i.i.i.i = icmp ugt ptr %83, %add.ptr1.i98.i.i
  br i1 %cmp.i.i.i.i.i, label %do.end.i.i.i.i.i, label %if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge, !prof !147

if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge:     ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end.i.i.i.i.i

do.end.i.i.i.i.i:                                 ; preds = %if.then.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %if.end.i.i.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.end.i.i.i.i.i, %if.then.i.i.i.i.i.if.end.i.i.i.i.i_crit_edge
  %84 = ptrtoint ptr %data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %data.i.i.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i.i.i = ptrtoint ptr %add.ptr1.i98.i.i to i32
  %sub.ptr.rhs.cast.i.i.i.i.i = ptrtoint ptr %85 to i32
  %sub.ptr.sub.i.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i.i
  call void @skb_trim(ptr noundef nonnull %call.i.i.i, i32 noundef %sub.ptr.sub.i.i.i.i.i) #16
  br label %if.then26.i

if.then26.i:                                      ; preds = %if.end.i.i.i.i.i, %if.then.i.i.i.if.then26.i_crit_edge, %if.end23.i.if.then26.i_crit_edge
  call void @kfree_skb_reason(ptr noundef nonnull %call.i.i.i, i32 noundef 0) #16
  br label %net_dm_hw_packet_report.exit

if.end27.i:                                       ; preds = %if.end45.i.i.if.end27.i_crit_edge, %if.end38.i.i.if.end27.i_crit_edge
  %add.ptr1.i.i.i = getelementptr i8, ptr %call.i.i, i32 -20
  %tail.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 16
  %86 = ptrtoint ptr %tail.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %tail.i.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %87 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %add.ptr1.i.i.i to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  %88 = ptrtoint ptr %add.ptr1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %sub.ptr.sub.i.i.i.i, ptr %add.ptr1.i.i.i, align 4
  %89 = load i8, ptr getelementptr inbounds (%struct.genl_family, ptr @net_drop_monitor_family, i32 0, i32 9), align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %cmp.i.i.i = icmp eq i8 %89, 0
  br i1 %cmp.i.i.i, label %land.rhs.i.i.i, label %if.end39.i.i.i

land.rhs.i.i.i:                                   ; preds = %if.end27.i
  %.b1.i.i.i = load i1, ptr @genlmsg_multicast_netns.__already_done, align 1
  br i1 %.b1.i.i.i, label %land.rhs.i.i.i.net_dm_hw_packet_report.exit_crit_edge, label %if.then.i.i68.i, !prof !144

land.rhs.i.i.i.net_dm_hw_packet_report.exit_crit_edge: ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %net_dm_hw_packet_report.exit

if.then.i.i68.i:                                  ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @genlmsg_multicast_netns.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 308, i32 noundef 9, ptr noundef null) #16
  br label %net_dm_hw_packet_report.exit

if.end39.i.i.i:                                   ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #18
  %90 = load i32, ptr getelementptr inbounds (%struct.genl_family, ptr @net_drop_monitor_family, i32 0, i32 5), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21) to i32))
  %91 = load ptr, ptr getelementptr inbounds (%struct.net, ptr @init_net, i32 0, i32 21), align 4
  %dst_group.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %call.i.i.i, i32 0, i32 3, i32 16
  %92 = ptrtoint ptr %dst_group.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %90, ptr %dst_group.i.i.i.i, align 8
  %call.i.i.i.i = call i32 @netlink_broadcast(ptr noundef %91, ptr noundef nonnull %call.i.i.i, i32 noundef 0, i32 noundef %90, i32 noundef 3264) #16
  br label %net_dm_hw_packet_report.exit

net_dm_hw_packet_report.exit:                     ; preds = %if.end39.i.i.i, %if.then.i.i68.i, %land.rhs.i.i.i.net_dm_hw_packet_report.exit_crit_edge, %if.then26.i, %net_dm_hw_packet_report_size.exit.i.net_dm_hw_packet_report.exit_crit_edge
  %93 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %cb.i, align 8
  call fastcc void @net_dm_hw_metadata_free(ptr noundef %94) #16
  call void @consume_skb(ptr noundef nonnull %21) #16
  %95 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %list, align 4
  %cmp.i.i = icmp eq ptr %96, %list
  %tobool.not.i17 = icmp eq ptr %96, null
  %tobool.not.i = or i1 %cmp.i.i, %tobool.not.i17
  br i1 %tobool.not.i, label %net_dm_hw_packet_report.exit.while.end_crit_edge, label %net_dm_hw_packet_report.exit.while.body_crit_edge

net_dm_hw_packet_report.exit.while.body_crit_edge: ; preds = %net_dm_hw_packet_report.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.body

net_dm_hw_packet_report.exit.while.end_crit_edge: ; preds = %net_dm_hw_packet_report.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %while.end

while.end:                                        ; preds = %net_dm_hw_packet_report.exit.while.end_crit_edge, %skb_queue_splice_tail_init.exit.while.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %list) #16
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @net_dm_hw_trap_packet_probe(ptr nocapture noundef readnone %ignore, ptr nocapture noundef readnone %devlink, ptr noundef %skb, ptr nocapture noundef readonly %metadata) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i64 @ktime_get_with_offset(i32 noundef 0) #16
  %trap_type = getelementptr inbounds %struct.devlink_trap_metadata, ptr %metadata, i32 0, i32 5
  %0 = ptrtoint ptr %trap_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %trap_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %2 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %mac_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %3)
  %cmp.i.not = icmp eq i16 %3, -1
  br i1 %cmp.i.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call4 = tail call ptr @skb_clone(ptr noundef %skb, i32 noundef 2592) #16
  %tobool5.not = icmp eq ptr %call4, null
  br i1 %tobool5.not, label %if.end3.cleanup_crit_edge, label %if.end7

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end7:                                          ; preds = %if.end3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 2848, i32 noundef 24) #21
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.free_crit_edge, label %if.end.i

if.end7.free_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #18
  br label %free

if.end.i:                                         ; preds = %if.end7
  %trap_group_name1.i = getelementptr inbounds %struct.devlink_trap_metadata, ptr %metadata, i32 0, i32 1
  %5 = ptrtoint ptr %trap_group_name1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %trap_group_name1.i, align 4
  %call2.i = tail call noalias ptr @kstrdup(ptr noundef %6, i32 noundef 2592) #16
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.free_hw_metadata.i_crit_edge, label %if.end5.i

if.end.i.free_hw_metadata.i_crit_edge:            ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_hw_metadata.i

if.end5.i:                                        ; preds = %if.end.i
  %trap_group_name6.i = getelementptr inbounds %struct.devlink_trap_metadata, ptr %call7.i.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %trap_group_name6.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call2.i, ptr %trap_group_name6.i, align 4
  %8 = ptrtoint ptr %metadata to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %metadata, align 4
  %call8.i = tail call noalias ptr @kstrdup(ptr noundef %9, i32 noundef 2592) #16
  %tobool9.not.i = icmp eq ptr %call8.i, null
  br i1 %tobool9.not.i, label %if.end5.i.free_trap_group.i_crit_edge, label %if.end11.i

if.end5.i.free_trap_group.i_crit_edge:            ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %free_trap_group.i

if.end11.i:                                       ; preds = %if.end5.i
  %10 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call8.i, ptr %call7.i.i.i, align 8
  %fa_cookie13.i = getelementptr inbounds %struct.devlink_trap_metadata, ptr %metadata, i32 0, i32 4
  %11 = ptrtoint ptr %fa_cookie13.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fa_cookie13.i, align 4
  %tobool14.not.i = icmp eq ptr %12, null
  br i1 %tobool14.not.i, label %if.end11.i.if.end23.i_crit_edge, label %if.then15.i

if.end11.i.if.end23.i_crit_edge:                  ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end23.i

if.then15.i:                                      ; preds = %if.end11.i
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add.i = add i32 %14, 4
  %call18.i = tail call ptr @kmemdup(ptr noundef nonnull %12, i32 noundef %add.i, i32 noundef 2592) #16
  %tobool19.not.i = icmp eq ptr %call18.i, null
  br i1 %tobool19.not.i, label %free_trap_name.i, label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #18
  %fa_cookie22.i = getelementptr inbounds %struct.devlink_trap_metadata, ptr %call7.i.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %fa_cookie22.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call18.i, ptr %fa_cookie22.i, align 8
  br label %if.end23.i

if.end23.i:                                       ; preds = %cleanup.thread.i, %if.end11.i.if.end23.i_crit_edge
  %input_dev.i = getelementptr inbounds %struct.devlink_trap_metadata, ptr %metadata, i32 0, i32 2
  %16 = ptrtoint ptr %input_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %input_dev.i, align 4
  %input_dev24.i = getelementptr inbounds %struct.devlink_trap_metadata, ptr %call7.i.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %input_dev24.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %input_dev24.i, align 8
  %dev_tracker.i = getelementptr inbounds %struct.devlink_trap_metadata, ptr %call7.i.i.i, i32 0, i32 3
  %tobool.not.i.i = icmp eq ptr %17, null
  br i1 %tobool.not.i.i, label %if.end23.i.if.end11_crit_edge, label %do.body1.i.i.i

if.end23.i.if.end11_crit_edge:                    ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

do.body1.i.i.i:                                   ; preds = %if.end23.i
  %19 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !151
  %pcpu_refcnt.i.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 118
  %20 = ptrtoint ptr %pcpu_refcnt.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pcpu_refcnt.i.i.i, align 4
  %22 = ptrtoint ptr %21 to i32
  %23 = tail call i32 @llvm.read_register.i32(metadata !134) #16
  %and.i.i.i.i = and i32 %23, -16384
  %24 = inttoptr i32 %and.i.i.i.i to ptr
  %cpu.i.i.i = getelementptr inbounds %struct.thread_info, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %cpu.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cpu.i.i.i, align 4
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx.i.i.i, align 4
  %add.i.i.i = add i32 %28, %22
  %29 = inttoptr i32 %add.i.i.i to ptr
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %29, align 4
  %add13.i.i.i = add i32 %31, 1
  store i32 %add13.i.i.i, ptr %29, align 4
  %32 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !153
  %and.i.i.i.i.i = and i32 %32, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i.i)
  %tobool24.not.i.i.i = icmp eq i32 %and.i.i.i.i.i, 0
  br i1 %tobool24.not.i.i.i, label %if.then28.i.i.i, label %do.body1.i.i.i.dev_hold.exit.i.i_crit_edge, !prof !147

do.body1.i.i.i.dev_hold.exit.i.i_crit_edge:       ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_hold.exit.i.i

if.then28.i.i.i:                                  ; preds = %do.body1.i.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %dev_hold.exit.i.i

dev_hold.exit.i.i:                                ; preds = %if.then28.i.i.i, %do.body1.i.i.i.dev_hold.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %19) #16, !srcloc !154
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net_device, ptr %17, i32 0, i32 119
  %call.i.i.i = tail call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %dev_tracker.i, i32 noundef 2592) #16
  br label %if.end11

free_trap_name.i:                                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @kfree(ptr noundef nonnull %call8.i) #16
  br label %free_trap_group.i

free_trap_group.i:                                ; preds = %free_trap_name.i, %if.end5.i.free_trap_group.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call2.i) #16
  br label %free_hw_metadata.i

free_hw_metadata.i:                               ; preds = %free_trap_group.i, %if.end.i.free_hw_metadata.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #16
  br label %free

if.end11:                                         ; preds = %dev_hold.exit.i.i, %if.end23.i.if.end11_crit_edge
  %cb = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 3
  %33 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call7.i.i.i, ptr %cb, align 8
  %34 = getelementptr inbounds %struct.sk_buff, ptr %call4, i32 0, i32 2
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 %call.i, ptr %34, align 8
  %36 = tail call i32 @llvm.read_register.i32(metadata !134) #16
  %and.i = and i32 %36, -16384
  %37 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cpu, align 4
  %arrayidx14 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %39
  %40 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx14, align 4
  %add = add i32 %41, ptrtoint (ptr @dm_hw_cpu_data to i32)
  %42 = inttoptr i32 %add to ptr
  %lock = getelementptr inbounds %struct.per_cpu_dm_data, ptr %42, i32 0, i32 2, i32 2
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #16
  %qlen.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %42, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %qlen.i, align 4
  %45 = load i32, ptr @net_dm_queue_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %45)
  %cmp27 = icmp ult i32 %44, %45
  br i1 %cmp27, label %if.then29, label %unlock_free

if.then29:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  %drop_queue = getelementptr inbounds %struct.per_cpu_dm_data, ptr %42, i32 0, i32 2
  %prev.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %42, i32 0, i32 2, i32 0, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i, align 4
  %48 = ptrtoint ptr %call4 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %drop_queue, ptr %call4, align 8
  %prev10.i.i.i = getelementptr inbounds %struct.anon.4, ptr %call4, i32 0, i32 1
  %49 = ptrtoint ptr %prev10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %47, ptr %prev10.i.i.i, align 4
  store volatile ptr %call4, ptr %prev.i.i, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %call4, ptr %47, align 4
  %51 = ptrtoint ptr %qlen.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %qlen.i, align 4
  %add.i.i.i61 = add i32 %52, 1
  store volatile i32 %add.i.i.i61, ptr %qlen.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call20) #16
  %dm_alert_work = getelementptr inbounds %struct.per_cpu_dm_data, ptr %42, i32 0, i32 3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %53 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %53, ptr noundef %dm_alert_work) #16
  br label %cleanup

unlock_free:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call20) #16
  %stats = getelementptr inbounds %struct.per_cpu_dm_data, ptr %42, i32 0, i32 5
  %syncp = getelementptr inbounds %struct.per_cpu_dm_data, ptr %42, i32 0, i32 5, i32 1
  tail call fastcc void @u64_stats_update_begin(ptr noundef %syncp)
  %54 = ptrtoint ptr %stats to i32
  call void @__asan_load8_noabort(i32 %54)
  %55 = load i64, ptr %stats, align 8
  %inc = add i64 %55, 1
  store i64 %inc, ptr %stats, align 8
  %dep_map.i.i = getelementptr inbounds %struct.per_cpu_dm_data, ptr %42, i32 0, i32 5, i32 1, i32 0, i32 1
  %56 = tail call ptr @llvm.returnaddress(i32 0) #16
  %57 = ptrtoint ptr %56 to i32
  tail call void @lock_release(ptr noundef %dep_map.i.i, i32 noundef %57) #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !152
  %58 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %59, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @net_dm_hw_metadata_free(ptr noundef nonnull %call7.i.i.i)
  br label %free

free:                                             ; preds = %unlock_free, %free_hw_metadata.i, %if.end7.free_crit_edge
  tail call void @consume_skb(ptr noundef nonnull %call4) #16
  br label %cleanup

cleanup:                                          ; preds = %free, %if.then29, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_clone(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u64_stats_update_begin(ptr noundef %syncp) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not.i = icmp eq i32 %0, 0
  br i1 %tobool.not.i, label %entry.__seqprop_assert.exit_crit_edge, label %land.lhs.true.i

entry.__seqprop_assert.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.lhs.true.i:                                  ; preds = %entry
  %1 = tail call i32 @llvm.read_register.i32(metadata !134) #16
  %and.i.i.i.i = and i32 %1, -16384
  %2 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %4, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !155
  %5 = tail call i32 @llvm.read_register.i32(metadata !134) #16
  %and.i.i = and i32 %5, -16384
  %6 = inttoptr i32 %and.i.i to ptr
  %cpu.i = getelementptr inbounds %struct.thread_info, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %cpu.i, align 4
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %8
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %10, ptrtoint (ptr @lockdep_recursion to i32)
  %11 = inttoptr i32 %add.i to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %11, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !156
  %14 = tail call i32 @llvm.read_register.i32(metadata !134) #16
  %and.i.i.i7.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i7.i to ptr
  %preempt_count.i.i8.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i8.i, align 4
  %sub.i.i = add i32 %17, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i8.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not.i = icmp eq i32 %13, 0
  br i1 %tobool20.not.i, label %land.rhs.i, label %land.lhs.true.i.__seqprop_assert.exit_crit_edge

land.lhs.true.i.__seqprop_assert.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs.i:                                       ; preds = %land.lhs.true.i
  %18 = tail call i32 @llvm.read_register.i32(metadata !134) #16
  %and.i.i.i = and i32 %18, -16384
  %19 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %preempt_count.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp.i = icmp eq i32 %21, 0
  br i1 %cmp.i, label %land.rhs22.i, label %land.rhs.i.__seqprop_assert.exit_crit_edge

land.rhs.i.__seqprop_assert.exit_crit_edge:       ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs22.i:                                     ; preds = %land.rhs.i
  %22 = tail call i32 @llvm.read_register.i32(metadata !134) #16
  %and.i.i.i9.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i9.i to ptr
  %preempt_count.i.i10.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i10.i, align 4
  %add.i11.i = add i32 %25, 1
  store volatile i32 %add.i11.i, ptr %preempt_count.i.i10.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !157
  %26 = ptrtoint ptr %cpu.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cpu.i, align 4
  %arrayidx46.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %27
  %28 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx46.i, align 4
  %add47.i = add i32 %29, ptrtoint (ptr @hardirqs_enabled to i32)
  %30 = inttoptr i32 %add47.i to ptr
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %30, align 4
  tail call void asm sideeffect "", "~{memory}"() #16, !srcloc !158
  %33 = tail call i32 @llvm.read_register.i32(metadata !134) #16
  %and.i.i.i12.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i12.i to ptr
  %preempt_count.i.i13.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %preempt_count.i.i13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile i32, ptr %preempt_count.i.i13.i, align 4
  %sub.i14.i = add i32 %36, -1
  store volatile i32 %sub.i14.i, ptr %preempt_count.i.i13.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool54.not.i = icmp eq i32 %32, 0
  br i1 %tobool54.not.i, label %land.rhs22.i.__seqprop_assert.exit_crit_edge, label %land.rhs58.i

land.rhs22.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs22.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

land.rhs58.i:                                     ; preds = %land.rhs22.i
  %.b1.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i, label %land.rhs58.i.__seqprop_assert.exit_crit_edge, label %if.then.i, !prof !144

land.rhs58.i.__seqprop_assert.exit_crit_edge:     ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__seqprop_assert.exit

if.then.i:                                        ; preds = %land.rhs58.i
  call void @__sanitizer_cov_trace_pc() #18
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.23, i32 noundef 271, i32 noundef 9, ptr noundef null) #16
  br label %__seqprop_assert.exit

__seqprop_assert.exit:                            ; preds = %if.then.i, %land.rhs58.i.__seqprop_assert.exit_crit_edge, %land.rhs22.i.__seqprop_assert.exit_crit_edge, %land.rhs.i.__seqprop_assert.exit_crit_edge, %land.lhs.true.i.__seqprop_assert.exit_crit_edge, %entry.__seqprop_assert.exit_crit_edge
  %37 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %38, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !159
  %dep_map.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %39 = tail call ptr @llvm.returnaddress(i32 0) #16
  %40 = ptrtoint ptr %39 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %40) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_with_offset(i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #13

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @net_dm_packet_report_in_port_put(ptr noundef %msg, i32 noundef %ifindex, ptr noundef %name) unnamed_addr #1 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 16
  %0 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = tail call i32 @nla_put(ptr noundef %msg, i32 noundef 32772, i32 noundef 0, ptr noundef null) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool.not23 = icmp eq ptr %1, null
  %tobool.not = select i1 %cmp.i.i, i1 true, i1 %tobool.not23
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ifindex)
  %tobool1.not = icmp eq i32 %ifindex, 0
  br i1 %tobool1.not, label %if.end.if.end5_crit_edge, label %land.lhs.true

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

land.lhs.true:                                    ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #16
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %ifindex, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 0, i32 noundef 4, ptr noundef nonnull %tmp.i) #16
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end5_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

land.lhs.true.if.end5_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end5

if.end5:                                          ; preds = %land.lhs.true.if.end5_crit_edge, %if.end.if.end5_crit_edge
  %tobool6.not = icmp eq ptr %name, null
  br i1 %tobool6.not, label %if.end5.if.end11_crit_edge, label %land.lhs.true7

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

land.lhs.true7:                                   ; preds = %if.end5
  %call.i21 = call i32 @strlen(ptr noundef nonnull %name) #22
  %add.i = add i32 %call.i21, 1
  %call1.i = call i32 @nla_put(ptr noundef %msg, i32 noundef 1, i32 noundef %add.i, ptr noundef nonnull %name) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool9.not = icmp eq i32 %call1.i, 0
  br i1 %tobool9.not, label %land.lhs.true7.if.end11_crit_edge, label %land.lhs.true7.if.then.i.i_crit_edge

land.lhs.true7.if.then.i.i_crit_edge:             ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.then.i.i

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #18
  br label %if.end11

if.end11:                                         ; preds = %land.lhs.true7.if.end11_crit_edge, %if.end5.if.end11_crit_edge
  %3 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %4 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %1 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %conv.i, ptr %1, align 2
  br label %cleanup

if.then.i.i:                                      ; preds = %land.lhs.true7.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %msg, i32 0, i32 19
  %6 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i22 = icmp ugt ptr %7, %1
  br i1 %cmp.i.i22, label %do.end.i.i, label %if.then.i.i.nla_nest_cancel.exit_crit_edge, !prof !147

if.then.i.i.nla_nest_cancel.exit_crit_edge:       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %nla_nest_cancel.exit

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #18
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 991, i32 noundef 9, ptr noundef null) #16
  br label %nla_nest_cancel.exit

nla_nest_cancel.exit:                             ; preds = %do.end.i.i, %if.then.i.i.nla_nest_cancel.exit_crit_edge
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %1 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %9 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %msg, i32 noundef %sub.ptr.sub.i.i) #16
  br label %cleanup

cleanup:                                          ; preds = %nla_nest_cancel.exit, %if.end11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -90, %nla_nest_cancel.exit ], [ 0, %if.end11 ], [ -90, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_put(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @net_dm_hw_metadata_free(ptr noundef %hw_metadata) unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %input_dev = getelementptr inbounds %struct.devlink_trap_metadata, ptr %hw_metadata, i32 0, i32 2
  %0 = ptrtoint ptr %input_dev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %input_dev, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dev_put_track.exit_crit_edge, label %do.body1.i.i

entry.dev_put_track.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_put_track.exit

do.body1.i.i:                                     ; preds = %entry
  %dev_tracker = getelementptr inbounds %struct.devlink_trap_metadata, ptr %hw_metadata, i32 0, i32 3
  %refcnt_tracker.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 119
  %call.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i, ptr noundef %dev_tracker) #16
  %2 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !151
  %pcpu_refcnt.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 118
  %3 = ptrtoint ptr %pcpu_refcnt.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pcpu_refcnt.i.i, align 4
  %5 = ptrtoint ptr %4 to i32
  %6 = tail call i32 @llvm.read_register.i32(metadata !134) #16
  %and.i.i.i = and i32 %6, -16384
  %7 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %9
  %10 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %11, %5
  %12 = inttoptr i32 %add.i.i to ptr
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %add13.i.i = add i32 %14, -1
  store i32 %add13.i.i, ptr %12, align 4
  %15 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !153
  %and.i.i.i.i = and i32 %15, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool24.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool24.not.i.i, label %if.then28.i.i, label %do.body1.i.i.dev_put.exit.i_crit_edge, !prof !147

do.body1.i.i.dev_put.exit.i_crit_edge:            ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %dev_put.exit.i

if.then28.i.i:                                    ; preds = %do.body1.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %dev_put.exit.i

dev_put.exit.i:                                   ; preds = %if.then28.i.i, %do.body1.i.i.dev_put.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %2) #16, !srcloc !154
  br label %dev_put_track.exit

dev_put_track.exit:                               ; preds = %dev_put.exit.i, %entry.dev_put_track.exit_crit_edge
  %fa_cookie = getelementptr inbounds %struct.devlink_trap_metadata, ptr %hw_metadata, i32 0, i32 4
  %16 = ptrtoint ptr %fa_cookie to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fa_cookie, align 4
  tail call void @kfree(ptr noundef %17) #16
  %18 = ptrtoint ptr %hw_metadata to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_metadata, align 4
  tail call void @kfree(ptr noundef %19) #16
  %trap_group_name = getelementptr inbounds %struct.devlink_trap_metadata, ptr %hw_metadata, i32 0, i32 1
  %20 = ptrtoint ptr %trap_group_name to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %trap_group_name, align 4
  tail call void @kfree(ptr noundef %21) #16
  tail call void @kfree(ptr noundef %hw_metadata) #16
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @kstrdup(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_probe_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tracepoint_probe_unregister(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_srcu(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_rcu() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @netlink_unicast(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u64_stats_fetch_begin_irq(ptr noundef %syncp) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  %0 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #16, !srcloc !151
  %and.i.i.i = and i32 %0, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %do.body24.critedge.i.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @trace_hardirqs_off() #16
  %dep_map.c.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %1 = tail call ptr @llvm.returnaddress(i32 0) #16
  %2 = ptrtoint ptr %1 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %2) #16
  tail call void @lock_release(ptr noundef %dep_map.c.i.i, i32 noundef %2) #16
  tail call void @trace_hardirqs_on() #16
  br label %do.body24.i.i

do.body24.critedge.i.i:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  %dep_map.c48.i.i = getelementptr inbounds %struct.seqcount, ptr %syncp, i32 0, i32 1
  %3 = tail call ptr @llvm.returnaddress(i32 0) #16
  %4 = ptrtoint ptr %3 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.c48.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 1, ptr noundef null, i32 noundef %4) #16
  tail call void @lock_release(ptr noundef %dep_map.c48.i.i, i32 noundef %4) #16
  br label %do.body24.i.i

do.body24.i.i:                                    ; preds = %do.body24.critedge.i.i, %if.then.i.i
  %5 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #16, !srcloc !153
  %and.i.i.i.i = and i32 %5, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool32.not.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool32.not.i.i, label %if.then36.i.i, label %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge, !prof !147

do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge: ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %seqcount_lockdep_reader_access.exit.i

if.then36.i.i:                                    ; preds = %do.body24.i.i
  call void @__sanitizer_cov_trace_pc() #18
  tail call void @warn_bogus_irq_restore() #16
  br label %seqcount_lockdep_reader_access.exit.i

seqcount_lockdep_reader_access.exit.i:            ; preds = %if.then36.i.i, %do.body24.i.i.seqcount_lockdep_reader_access.exit.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %0) #16, !srcloc !154
  %6 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %syncp, align 4
  %and18.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and18.i)
  %tobool.not19.i = icmp eq i32 %and18.i, 0
  br i1 %tobool.not19.i, label %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge, label %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge

seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  br label %do.end.i

seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge: ; preds = %seqcount_lockdep_reader_access.exit.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__u64_stats_fetch_begin.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %seqcount_lockdep_reader_access.exit.i.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !160
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #16, !srcloc !161
  %8 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %syncp, align 4
  %and.i = and i32 %9, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %do.end.i

do.end.i.__u64_stats_fetch_begin.exit_crit_edge:  ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #18
  br label %__u64_stats_fetch_begin.exit

__u64_stats_fetch_begin.exit:                     ; preds = %do.end.i.__u64_stats_fetch_begin.exit_crit_edge, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge
  %.lcssa.i = phi i32 [ %7, %seqcount_lockdep_reader_access.exit.i.__u64_stats_fetch_begin.exit_crit_edge ], [ %9, %do.end.i.__u64_stats_fetch_begin.exit_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !162
  ret i32 %.lcssa.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dropmon_net_event(ptr nocapture noundef readnone %ev_block, i32 noundef %event, ptr nocapture noundef readonly %ptr) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #18
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %2 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %event, label %entry.out_crit_edge [
    i32 5, label %sw.bb
    i32 6, label %sw.bb3
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

sw.bb:                                            ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 28) #21
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %sw.bb.out_crit_edge, label %if.end

sw.bb.out_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #18
  br label %out

if.end:                                           ; preds = %sw.bb
  %4 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %call7.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %5 = load volatile i32, ptr @jiffies, align 128
  %last_rx = getelementptr inbounds %struct.dm_hw_stat_delta, ptr %call7.i.i, i32 0, i32 1
  %6 = ptrtoint ptr %last_rx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %last_rx, align 4
  tail call void @mutex_lock_nested(ptr noundef nonnull @net_dm_mutex, i32 noundef 0) #16
  %list = getelementptr inbounds %struct.dm_hw_stat_delta, ptr %call7.i.i, i32 0, i32 2
  %7 = load ptr, ptr @hw_stats_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef nonnull @hw_stats_list, ptr noundef %7) #16
  br i1 %call.i.i, label %if.end.i.i, label %if.end.out.sink.split_crit_edge

if.end.out.sink.split_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.sink.split

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #18
  %8 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %list, align 8
  %prev2.i.i = getelementptr inbounds %struct.dm_hw_stat_delta, ptr %call7.i.i, i32 0, i32 2, i32 1
  %9 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @hw_stats_list, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !srcloc !163
  store volatile ptr %list, ptr @hw_stats_list, align 4
  %prev37.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %10 = ptrtoint ptr %prev37.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %list, ptr %prev37.i.i, align 4
  br label %out.sink.split

sw.bb3:                                           ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @net_dm_mutex, i32 noundef 0) #16
  %11 = load ptr, ptr @hw_stats_list, align 4
  %cmp.not59 = icmp eq ptr %11, @hw_stats_list
  br i1 %cmp.not59, label %sw.bb3.out.sink.split_crit_edge, label %sw.bb3.for.body_crit_edge

sw.bb3.for.body_crit_edge:                        ; preds = %sw.bb3
  br label %for.body

sw.bb3.out.sink.split_crit_edge:                  ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.sink.split

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %sw.bb3.for.body_crit_edge
  %.pn.in60 = phi ptr [ %.pn62, %for.inc.for.body_crit_edge ], [ %11, %sw.bb3.for.body_crit_edge ]
  %new_stat.061 = getelementptr i8, ptr %.pn.in60, i32 -8
  %12 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn62 = load ptr, ptr %.pn.in60, align 4
  %13 = ptrtoint ptr %new_stat.061 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %new_stat.061, align 4
  %cmp11 = icmp eq ptr %14, %1
  br i1 %cmp11, label %do.body14, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

do.body14:                                        ; preds = %for.body
  %15 = ptrtoint ptr %new_stat.061 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr null, ptr %new_stat.061, align 4
  %16 = load i32, ptr @trace_state, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp20 = icmp eq i32 %16, 0
  br i1 %cmp20, label %if.then21, label %do.body14.for.inc_crit_edge

do.body14.for.inc_crit_edge:                      ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.inc

if.then21:                                        ; preds = %do.body14
  %call.i.i52 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in60) #16
  br i1 %call.i.i52, label %if.end.i.i53, label %if.then21.list_del_rcu.exit_crit_edge

if.then21.list_del_rcu.exit_crit_edge:            ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  br label %list_del_rcu.exit

if.end.i.i53:                                     ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #18
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in60, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %.pn.in60 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in60, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i53, %if.then21.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in60, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %tobool24.not = icmp eq ptr %new_stat.061, null
  br i1 %tobool24.not, label %list_del_rcu.exit.out.sink.split_crit_edge, label %do.end28

list_del_rcu.exit.out.sink.split_crit_edge:       ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.sink.split

do.end28:                                         ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #18
  %rcu = getelementptr i8, ptr %.pn.in60, i32 8
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 16 to ptr)) #16
  br label %out.sink.split

for.inc:                                          ; preds = %do.body14.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp.not = icmp eq ptr %.pn62, @hw_stats_list
  br i1 %cmp.not, label %for.inc.out.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %for.body

for.inc.out.sink.split_crit_edge:                 ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #18
  br label %out.sink.split

out.sink.split:                                   ; preds = %for.inc.out.sink.split_crit_edge, %do.end28, %list_del_rcu.exit.out.sink.split_crit_edge, %sw.bb3.out.sink.split_crit_edge, %if.end.i.i, %if.end.out.sink.split_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @net_dm_mutex) #16
  br label %out

out:                                              ; preds = %out.sink.split, %sw.bb.out_crit_edge, %entry.out_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #14

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #15

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #15

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #16

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #17 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #17 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind readonly }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #13 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #14 = { argmemonly nofree nounwind readonly willreturn }
attributes #15 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #16 = { nounwind }
attributes #17 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #18 = { nomerge }
attributes #19 = { cold nounwind }
attributes #20 = { nounwind readonly willreturn }
attributes #21 = { nounwind allocsize(2) }
attributes #22 = { nobuiltin nounwind }
attributes #23 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !16, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !37, !39, !40, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !64, !66, !67, !69, !71, !73, !75, !77, !79, !81, !82, !84, !85, !86, !88, !90, !92, !93, !95, !96, !98, !100, !102, !104, !105, !107, !109, !111, !113, !114, !116, !117, !119, !121, !123, !125, !127, !128, !130, !131, !133}
!llvm.named.register.sp = !{!134}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !{ptr @__initcall__kmod_drop_monitor__389_1777_init_net_drop_monitor6, !1, !"__initcall__kmod_drop_monitor__389_1777_init_net_drop_monitor6", i1 false, i1 false}
!1 = !{!"../net/core/drop_monitor.c", i32 1777, i32 1}
!2 = !{ptr @__exitcall_exit_net_drop_monitor, !3, !"__exitcall_exit_net_drop_monitor", i1 false, i1 false}
!3 = !{!"../net/core/drop_monitor.c", i32 1778, i32 1}
!4 = !{ptr @__UNIQUE_ID_file390, !5, !"__UNIQUE_ID_file390", i1 false, i1 false}
!5 = !{!"../net/core/drop_monitor.c", i32 1780, i32 1}
!6 = !{ptr @__UNIQUE_ID_license391, !5, !"__UNIQUE_ID_license391", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author392, !8, !"__UNIQUE_ID_author392", i1 false, i1 false}
!8 = !{!"../net/core/drop_monitor.c", i32 1781, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias393, !10, !"__UNIQUE_ID_alias393", i1 false, i1 false}
!10 = !{!"../net/core/drop_monitor.c", i32 1782, i32 1}
!11 = !{ptr @__UNIQUE_ID_description394, !12, !"__UNIQUE_ID_description394", i1 false, i1 false}
!12 = !{!"../net/core/drop_monitor.c", i32 1783, i32 1}
!13 = !{ptr @__pcpu_unique_dm_cpu_data, !14, !"__pcpu_unique_dm_cpu_data", i1 false, i1 false}
!14 = !{!"../net/core/drop_monitor.c", i32 99, i32 8}
!15 = !{ptr @dm_cpu_data, !14, !"dm_cpu_data", i1 false, i1 false}
!16 = !{ptr @__pcpu_unique_dm_hw_cpu_data, !17, !"__pcpu_unique_dm_hw_cpu_data", i1 false, i1 false}
!17 = !{!"../net/core/drop_monitor.c", i32 100, i32 8}
!18 = !{ptr @dm_hw_cpu_data, !17, !"dm_hw_cpu_data", i1 false, i1 false}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/core/drop_monitor.c", i32 1723, i32 2}
!21 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @init_net_drop_monitor._entry, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @init_net_drop_monitor._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../net/core/drop_monitor.c", i32 1732, i32 3}
!27 = !{ptr @init_net_drop_monitor._entry.3, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @init_net_drop_monitor._entry_ptr.5, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.7, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../net/core/drop_monitor.c", i32 1739, i32 3}
!31 = !{ptr @init_net_drop_monitor._entry.6, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @init_net_drop_monitor._entry_ptr.8, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @net_drop_monitor_family, !34, !"net_drop_monitor_family", i1 false, i1 false}
!34 = !{!"../net/core/drop_monitor.c", i32 1651, i32 27}
!35 = !{ptr @net_dm_nl_policy, !36, !"net_dm_nl_policy", i1 false, i1 false}
!36 = !{!"../net/core/drop_monitor.c", i32 1601, i32 32}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/core/drop_monitor.c", i32 56, i32 8}
!39 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @net_dm_mutex, !38, !"net_dm_mutex", i1 false, i1 false}
!41 = !{ptr @dropmon_ops, !42, !"dropmon_ops", i1 false, i1 false}
!42 = !{!"../net/core/drop_monitor.c", i32 1610, i32 36}
!43 = !{ptr @net_dm_cmd_config.__msg, !44, !"__msg", i1 false, i1 false}
!44 = !{!"../net/core/drop_monitor.c", i32 1302, i32 3}
!45 = !{ptr @trace_state, !46, !"trace_state", i1 false, i1 false}
!46 = !{!"../net/core/drop_monitor.c", i32 48, i32 12}
!47 = distinct !{null, !48, !"monitor_hw", i1 false, i1 false}
!48 = !{!"../net/core/drop_monitor.c", i32 49, i32 13}
!49 = !{ptr @net_dm_alert_mode_set.__msg, !50, !"__msg", i1 false, i1 false}
!50 = !{!"../net/core/drop_monitor.c", i32 1270, i32 3}
!51 = !{ptr @net_dm_alert_mode, !52, !"net_dm_alert_mode", i1 false, i1 false}
!52 = !{!"../net/core/drop_monitor.c", i32 107, i32 31}
!53 = !{ptr @net_dm_trunc_len, !54, !"net_dm_trunc_len", i1 false, i1 false}
!54 = !{!"../net/core/drop_monitor.c", i32 108, i32 12}
!55 = !{ptr @net_dm_queue_len, !56, !"net_dm_queue_len", i1 false, i1 false}
!56 = !{!"../net/core/drop_monitor.c", i32 109, i32 12}
!57 = !{ptr @set_all_monitor_traces.__msg, !58, !"__msg", i1 false, i1 false}
!58 = !{!"../net/core/drop_monitor.c", i32 1211, i32 3}
!59 = !{ptr @net_dm_trace_on_set.__msg, !60, !"__msg", i1 false, i1 false}
!60 = !{!"../net/core/drop_monitor.c", i32 1122, i32 3}
!61 = !{ptr @net_dm_trace_on_set.__key, !62, !"__key", i1 false, i1 false}
!62 = !{!"../net/core/drop_monitor.c", i32 1130, i32 3}
!63 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @net_dm_trace_on_set.__key.13, !65, !"__key", i1 false, i1 false}
!65 = !{!"../net/core/drop_monitor.c", i32 1131, i32 3}
!66 = !{ptr @.str.14, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @net_dm_trace_on_set.__msg.15, !68, !"__msg", i1 false, i1 false}
!68 = !{!"../net/core/drop_monitor.c", i32 1142, i32 3}
!69 = !{ptr @net_dm_trace_on_set.__msg.16, !70, !"__msg", i1 false, i1 false}
!70 = !{!"../net/core/drop_monitor.c", i32 1148, i32 3}
!71 = !{ptr @net_dm_alert_ops_arr, !72, !"net_dm_alert_ops_arr", i1 false, i1 false}
!72 = !{!"../net/core/drop_monitor.c", i32 997, i32 39}
!73 = !{ptr @net_dm_alert_summary_ops, !74, !"net_dm_alert_summary_ops", i1 false, i1 false}
!74 = !{!"../net/core/drop_monitor.c", i32 490, i32 38}
!75 = distinct !{null, !76, !"dm_hit_limit", i1 false, i1 false}
!76 = !{!"../net/core/drop_monitor.c", i32 102, i32 12}
!77 = distinct !{null, !78, !"dm_delay", i1 false, i1 false}
!78 = !{!"../net/core/drop_monitor.c", i32 103, i32 12}
!79 = distinct !{null, !80, !"__warned", i1 false, i1 false}
!80 = !{!"../net/core/drop_monitor.c", i32 285, i32 2}
!81 = !{ptr @.str.17, !80, !"<string literal>", i1 false, i1 false}
!82 = distinct !{null, !83, !"__warned", i1 false, i1 false}
!83 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!84 = !{ptr @.str.18, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @.str.19, !83, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @hw_stats_list, !87, !"hw_stats_list", i1 false, i1 false}
!87 = !{!"../net/core/drop_monitor.c", i32 105, i32 8}
!88 = distinct !{null, !89, !"dm_hw_check_delta", i1 false, i1 false}
!89 = !{!"../net/core/drop_monitor.c", i32 104, i32 22}
!90 = distinct !{null, !91, !"__warned", i1 false, i1 false}
!91 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!92 = !{ptr @.str.20, !91, !"<string literal>", i1 false, i1 false}
!93 = distinct !{null, !94, !"__already_done", i1 false, i1 false}
!94 = !{!"../include/net/genetlink.h", i32 308, i32 6}
!95 = !{ptr @.str.21, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.22, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../include/net/netlink.h", i32 991, i32 3}
!98 = distinct !{null, !99, !"__already_done", i1 false, i1 false}
!99 = !{!"../net/core/drop_monitor.c", i32 472, i32 6}
!100 = !{ptr @net_dm_alert_packet_ops, !101, !"net_dm_alert_packet_ops", i1 false, i1 false}
!101 = !{!"../net/core/drop_monitor.c", i32 989, i32 38}
!102 = distinct !{null, !103, !"__already_done", i1 false, i1 false}
!103 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!104 = !{ptr @.str.23, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @.str.24, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../net/core/drop_monitor.c", i32 630, i32 29}
!107 = !{ptr @net_dm_hw_monitor_start.__msg, !108, !"__msg", i1 false, i1 false}
!108 = !{!"../net/core/drop_monitor.c", i32 1030, i32 3}
!109 = !{ptr @net_dm_hw_monitor_start.__msg.25, !110, !"__msg", i1 false, i1 false}
!110 = !{!"../net/core/drop_monitor.c", i32 1037, i32 3}
!111 = !{ptr @net_dm_hw_monitor_start.__key, !112, !"__key", i1 false, i1 false}
!112 = !{!"../net/core/drop_monitor.c", i32 1045, i32 3}
!113 = !{ptr @.str.26, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @net_dm_hw_monitor_start.__key.27, !115, !"__key", i1 false, i1 false}
!115 = !{!"../net/core/drop_monitor.c", i32 1046, i32 3}
!116 = !{ptr @.str.28, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @net_dm_hw_monitor_start.__msg.29, !118, !"__msg", i1 false, i1 false}
!118 = !{!"../net/core/drop_monitor.c", i32 1053, i32 3}
!119 = !{ptr @net_dm_hw_monitor_stop.__msg, !120, !"__msg", i1 false, i1 false}
!120 = !{!"../net/core/drop_monitor.c", i32 1086, i32 3}
!121 = !{ptr @dropmon_mcgrps, !122, !"dropmon_mcgrps", i1 false, i1 false}
!122 = !{!"../net/core/drop_monitor.c", i32 186, i32 42}
!123 = !{ptr @dropmon_net_notifier, !124, !"dropmon_net_notifier", i1 false, i1 false}
!124 = !{!"../net/core/drop_monitor.c", i32 1666, i32 30}
!125 = !{ptr @__net_dm_cpu_data_init.__key, !126, !"__key", i1 false, i1 false}
!126 = !{!"../net/core/drop_monitor.c", i32 1672, i32 2}
!127 = !{ptr @.str.30, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @__net_dm_cpu_data_init.__key.31, !129, !"__key", i1 false, i1 false}
!129 = !{!"../net/core/drop_monitor.c", i32 1674, i32 2}
!130 = !{ptr @.str.32, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @skb_queue_head_init.__key, !132, !"__key", i1 false, i1 false}
!132 = !{!"../include/linux/skbuff.h", i32 1984, i32 2}
!133 = !{ptr @.str.33, !132, !"<string literal>", i1 false, i1 false}
!134 = !{!"sp"}
!135 = !{i32 1, !"wchar_size", i32 2}
!136 = !{i32 1, !"min_enum_size", i32 4}
!137 = !{i32 8, !"branch-target-enforcement", i32 0}
!138 = !{i32 8, !"sign-return-address", i32 0}
!139 = !{i32 8, !"sign-return-address-all", i32 0}
!140 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!141 = !{i32 7, !"uwtable", i32 1}
!142 = !{i32 7, !"frame-pointer", i32 2}
!143 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{i64 2156871911, i64 2156872400, i64 2156871948, i64 2156872004, i64 2156872038, i64 2156872062, i64 2156872103, i64 2156872124, i64 2156872152, i64 2156872186}
!146 = !{i64 2156873833, i64 2156874322, i64 2156873870, i64 2156873926, i64 2156873960, i64 2156873984, i64 2156874025, i64 2156874046, i64 2156874074, i64 2156874108}
!147 = !{!"branch_weights", i32 1, i32 2000}
!148 = !{i64 2150380504}
!149 = !{i64 2149628459}
!150 = !{i64 2149628725}
!151 = !{i64 926134, i64 926195}
!152 = !{i64 2150381154}
!153 = !{i64 928866}
!154 = !{i64 929151}
!155 = !{i64 2150272756}
!156 = !{i64 2150277690}
!157 = !{i64 2150299408}
!158 = !{i64 2150304302}
!159 = !{i64 2150380829}
!160 = !{i64 2150960041}
!161 = !{i64 2150959883}
!162 = !{i64 2150960211}
!163 = !{i64 2149653851}
