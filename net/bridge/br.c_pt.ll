; ModuleID = '/llk/IR_all_yes/net/bridge/br.c_pt.bc'
source_filename = "../net/bridge/br.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.stp_proto = type { [6 x i8], ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.pernet_operations = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.module_version_attribute = type { %struct.module_attribute, ptr, ptr }
%struct.module_attribute = type { %struct.attribute, ptr, ptr, ptr, ptr, ptr }
%struct.attribute = type { ptr, i16, i8, ptr, %struct.lock_class_key }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.net_bridge = type { %struct.spinlock, %struct.spinlock, %struct.hlist_head, ptr, i32, i16, i16, ptr, %struct.rhashtable, %struct.list_head, %union.anon.143, i16, i16, %struct.bridge_id, %struct.bridge_id, i8, i8, i16, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i8], i32, %struct.net_bridge_mcast, ptr, i32, %struct.spinlock, %struct.rhashtable, %struct.rhashtable, %struct.hlist_head, %struct.hlist_head, %struct.work_struct, %struct.timer_list, %struct.timer_list, %struct.timer_list, %struct.delayed_work, ptr, i32, i32, i32, %struct.hlist_head, %struct.hlist_head, %struct.hlist_head }
%union.anon.143 = type { %struct.rt6_info }
%struct.rt6_info = type { %struct.dst_entry, ptr, i32, %struct.rt6key, %struct.rt6key, %struct.in6_addr, ptr, i32, %struct.list_head, ptr, i16 }
%struct.dst_entry = type { ptr, ptr, i32, i32, ptr, ptr, ptr, i16, i16, i16, i16, i32, i32, ptr, %struct.callback_head, i16, i16, i32, %struct.atomic_t, ptr }
%struct.callback_head = type { ptr, ptr }
%struct.rt6key = type { %struct.in6_addr, i32 }
%struct.in6_addr = type { %union.anon.47 }
%union.anon.47 = type { [4 x i32] }
%struct.bridge_id = type { [2 x i8], [6 x i8] }
%struct.net_bridge_mcast = type { ptr, ptr, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier, %struct.hlist_head, %struct.timer_list, %struct.bridge_mcast_other_query, %struct.bridge_mcast_own_query, %struct.bridge_mcast_querier }
%struct.bridge_mcast_other_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_own_query = type { %struct.timer_list, i32 }
%struct.bridge_mcast_querier = type { %struct.br_ip, i32, %struct.seqcount_spinlock }
%struct.br_ip = type { %union.anon.144, %union.anon.145, i16, i16 }
%union.anon.144 = type { %struct.in6_addr }
%union.anon.145 = type { %struct.in6_addr }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.rhashtable = type { ptr, i32, i32, %struct.rhashtable_params, i8, %struct.work_struct, %struct.mutex, %struct.spinlock, %struct.atomic_t }
%struct.rhashtable_params = type { i16, i16, i16, i16, i32, i16, i8, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.hlist_head = type { ptr }
%struct.br_boolopt_multi = type { i32, i32 }
%struct.netdev_notifier_info = type { ptr, ptr }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.2, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.142, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.2 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.possible_net_t = type { ptr }
%union.anon.142 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
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
%struct.switchdev_notifier_brport_info = type { %struct.switchdev_notifier_info, %struct.switchdev_brport }
%struct.switchdev_notifier_info = type { ptr, ptr, ptr }
%struct.switchdev_brport = type { ptr, ptr, ptr, ptr, i8 }
%struct.switchdev_notifier_fdb_info = type { %struct.switchdev_notifier_info, ptr, i16, i8 }
%struct.netdev_notifier_pre_changeaddr_info = type { %struct.netdev_notifier_info, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.39, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.39 = type { %struct.anon.40 }
%struct.anon.40 = type { ptr, i32, i32, i32 }
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
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.56, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.56 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.51, i32, %struct.spinlock }
%union.anon.51 = type { %struct.anon.52 }
%struct.anon.52 = type { ptr, ptr }
%struct.netns_bpf = type { [2 x ptr], [2 x ptr], [2 x %struct.list_head] }
%struct.netns_xfrm = type { %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, %struct.work_struct, %struct.list_head, ptr, i32, [3 x %struct.hlist_head], [3 x %struct.xfrm_policy_hash], [6 x i32], %struct.work_struct, %struct.xfrm_policy_hthresh, %struct.list_head, ptr, ptr, i32, i32, i32, i32, i8, ptr, [8 x i8], %struct.dst_ops, %struct.dst_ops, %struct.spinlock, %struct.seqcount_spinlock, %struct.seqcount_spinlock, %struct.spinlock, %struct.mutex }
%struct.xfrm_policy_hash = type { ptr, i32, i8, i8, i8, i8 }
%struct.xfrm_policy_hthresh = type { %struct.work_struct, %struct.seqlock_t, i8, i8, i8, i8 }
%struct.netns_mpls = type { i32, i32, i32, ptr, ptr }
%struct.netns_can = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.spinlock, %struct.timer_list, ptr, ptr, %struct.hlist_head }
%struct.netns_xdp = type { %struct.mutex, %struct.hlist_head }
%struct.netns_mctp = type { %struct.list_head, %struct.mutex, %struct.hlist_head, %struct.spinlock, %struct.hlist_head, i32, %struct.mutex, %struct.list_head }
%struct.netns_smc = type { ptr, %struct.mutex, ptr }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"net/bridge/br.c\00", [16 x i8] zeroinitializer }, align 32
@br_boolopt_multi_toggle.__UNIQUE_ID_ddebug560 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str, ptr @.str.3, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"bridge\00", [25 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"br_boolopt_multi_toggle\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"%s: boolopt multi-toggle error: option: %d current: %d new: %d error: %d\0A\00", [54 x i8] zeroinitializer }, align 32
@br_opt_toggle.__UNIQUE_ID_ddebug561 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.4, ptr @.str, ptr @.str.5, i8 0, i8 83, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"br_opt_toggle\00", [18 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s: toggle option: %d state: %d -> %d\0A\00", [57 x i8] zeroinitializer }, align 32
@br_stp_proto = internal constant { %struct.stp_proto, [16 x i8] } { %struct.stp_proto { [6 x i8] zeroinitializer, ptr @br_stp_rcv, ptr null }, [16 x i8] zeroinitializer }, align 32
@br_switchdev_blocking_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @br_switchdev_blocking_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@br_switchdev_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @br_switchdev_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@br_device_notifier = internal global { %struct.notifier_block, [20 x i8] } { %struct.notifier_block { ptr @br_device_event, ptr null, i32 0 }, [20 x i8] zeroinitializer }, align 32
@br_net_ops = internal global { %struct.pernet_operations, [32 x i8] } { %struct.pernet_operations { %struct.list_head zeroinitializer, ptr null, ptr null, ptr @br_net_exit, ptr null, ptr null, i32 0 }, [32 x i8] zeroinitializer }, align 32
@br_fdb_test_addr_hook = external dso_local local_unnamed_addr global ptr, align 4
@__initcall__kmod_bridge__563_458_br_init6 = internal global ptr @br_init, section ".initcall6.init", align 4
@__exitcall_br_deinit = internal global ptr @br_deinit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file564 = internal constant [30 x i8] c"bridge.file=net/bridge/bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_license565 = internal constant [19 x i8] c"bridge.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_version566 = internal constant [19 x i8] c"bridge.version=2.3\00", section ".modinfo", align 1
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"version\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"2.3\00", [28 x i8] zeroinitializer }, align 32
@__modver_attr = internal global %struct.module_version_attribute { %struct.module_attribute { %struct.attribute { ptr @.str.6, i16 292, i8 0, ptr null, %struct.lock_class_key zeroinitializer }, ptr @__modver_version_show, ptr null, ptr null, ptr null, ptr null }, ptr @.str.1, ptr @.str.7 }, section "__modver", align 4
@__UNIQUE_ID_alias567 = internal constant [30 x i8] c"bridge.alias=rtnl-link-bridge\00", section ".modinfo", align 1
@br_port_get_rtnl.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.8 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/bridge/br_private.h\00", [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@br_port_get_rtnl_rcu.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.10 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@br_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str, i32 376, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013bridge: can't register sap for STP\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"br_init\00", [24 x i8] zeroinitializer }, align 32
@br_init._entry_ptr = internal global ptr @br_init._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 15, i64 16]
@__sancov_gen_cov_switch_values.16 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 5, i64 6]
@__sancov_gen_cov_switch_values.17 = internal global [13 x i64] [i64 11, i64 32, i64 1, i64 2, i64 4, i64 6, i64 7, i64 8, i64 9, i64 11, i64 12, i64 15, i64 22]
@__sancov_gen_cov_switch_values.18 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 6]
@__sancov_gen_cov_switch_values.19 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 270, i32 3 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 306, i32 4 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 333, i32 2 }
@___asan_gen_.38 = private unnamed_addr constant [13 x i8] c"br_stp_proto\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 364, i32 31 }
@___asan_gen_.41 = private unnamed_addr constant [31 x i8] c"br_switchdev_blocking_notifier\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 242, i32 30 }
@___asan_gen_.44 = private unnamed_addr constant [22 x i8] c"br_switchdev_notifier\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 200, i32 30 }
@___asan_gen_.47 = private unnamed_addr constant [19 x i8] c"br_device_notifier\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 145, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant [11 x i8] c"br_net_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 360, i32 33 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 461, i32 1 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 422, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [27 x i8] c"../net/bridge/br_private.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 428, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.74 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.75 = private constant [19 x i8] c"../net/bridge/br.c\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 376, i32 3 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @__UNIQUE_ID_alias567, ptr @__UNIQUE_ID_file564, ptr @__UNIQUE_ID_license565, ptr @__UNIQUE_ID_version566, ptr @__exitcall_br_deinit, ptr @__initcall__kmod_bridge__563_458_br_init6, ptr @__modver_attr, ptr @br_deinit, ptr @br_init._entry, ptr @br_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @br_stp_proto, ptr @br_switchdev_blocking_notifier, ptr @br_switchdev_notifier, ptr @br_device_notifier, ptr @br_net_ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_stp_proto to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_switchdev_blocking_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_switchdev_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_device_notifier to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_net_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @br_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_boolopt_toggle(ptr noundef %br, i32 noundef %opt, i1 noundef zeroext %on, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %opt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %opt, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %options.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %1 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %options.i.i, align 4
  %3 = and i32 %2, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i = icmp ne i32 %3, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br_opt_toggle.__UNIQUE_ID_ddebug561, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br_boolopt_toggle, %if.then.i)) #5
          to label %do.end.i [label %if.then.i], !srcloc !56

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %dev.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %.lobit = lshr exact i32 %3, 13
  %conv11.i = zext i1 %on to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br_opt_toggle.__UNIQUE_ID_ddebug561, ptr noundef nonnull @.str.5, ptr noundef %5, i32 noundef 13, i32 noundef %.lobit, i32 noundef %conv11.i) #5
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %sw.bb
  %6 = xor i1 %tobool.i, %on
  br i1 %6, label %if.end18.i, label %do.end.i.sw.epilog_crit_edge

do.end.i.sw.epilog_crit_edge:                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end18.i:                                       ; preds = %do.end.i
  br i1 %on, label %if.then20.i, label %if.else.i

if.then20.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef 13, ptr noundef %options.i.i) #5
  br label %sw.epilog

if.else.i:                                        ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef 13, ptr noundef %options.i.i) #5
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @br_multicast_toggle_vlan_snooping(ptr noundef %br, i1 noundef zeroext %on, ptr noundef %extack) #5
  br label %sw.epilog

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 270, i32 noundef 9, ptr noundef null) #5
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end, %sw.bb1, %if.else.i, %if.then20.i, %do.end.i.sw.epilog_crit_edge
  %err.0 = phi i32 [ 0, %do.end ], [ %call, %sw.bb1 ], [ 0, %do.end.i.sw.epilog_crit_edge ], [ 0, %if.then20.i ], [ 0, %if.else.i ]
  ret i32 %err.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_opt_toggle(ptr noundef %br, i32 noundef %opt, i1 noundef zeroext %on) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %div3.i.i = lshr i32 %opt, 5
  %arrayidx.i.i = getelementptr i32, ptr %options.i, i32 %div3.i.i
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %opt, 31
  %2 = shl nuw i32 1, %and.i.i
  %3 = and i32 %1, %2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool = icmp ne i32 %3, 0
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br_opt_toggle.__UNIQUE_ID_ddebug561, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br_opt_toggle, %if.then)) #5
          to label %do.end [label %if.then], !srcloc !56

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %conv = zext i1 %tobool to i32
  %conv11 = zext i1 %on to i32
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br_opt_toggle.__UNIQUE_ID_ddebug561, ptr noundef nonnull @.str.5, ptr noundef %5, i32 noundef %opt, i32 noundef %conv, i32 noundef %conv11) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = xor i1 %tobool, %on
  br i1 %6, label %if.end18, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end18:                                         ; preds = %do.end
  br i1 %on, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_set_bit(i32 noundef %opt, ptr noundef %options.i) #5
  br label %cleanup

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @_clear_bit(i32 noundef %opt, ptr noundef %options.i) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then20, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_multicast_toggle_vlan_snooping(ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_boolopt_get(ptr noundef %br, i32 noundef %opt) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %opt to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.13)
  switch i32 %opt, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %options.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %1 = ptrtoint ptr %options.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile i32, ptr %options.i, align 4
  %shr.i.i = lshr i32 %2, 13
  %and1.i.i = and i32 %shr.i.i, 1
  br label %return

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %options.i19 = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %3 = ptrtoint ptr %options.i19 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %options.i19, align 4
  %shr.i.i20 = lshr i32 %4, 15
  %and1.i.i21 = and i32 %shr.i.i20, 1
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 286, i32 noundef 9, ptr noundef null) #5
  br label %return

return:                                           ; preds = %do.end, %sw.bb1, %sw.bb
  %retval.0 = phi i32 [ 0, %do.end ], [ %and1.i.i21, %sw.bb1 ], [ %and1.i.i, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @br_boolopt_multi_toggle(ptr noundef %br, ptr nocapture noundef readonly %bm, ptr noundef %extack) local_unnamed_addr #0 align 64 {
entry:
  %bitmap = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %bitmap) #5
  %optmask = getelementptr inbounds %struct.br_boolopt_multi, ptr %bm, i32 0, i32 1
  %0 = ptrtoint ptr %optmask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %optmask, align 4
  %2 = ptrtoint ptr %bitmap to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %bitmap, align 4
  %call = call i32 @_find_next_bit_be(ptr noundef nonnull %bitmap, i32 noundef 2, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp35 = icmp slt i32 %call, 2
  br i1 %cmp35, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %opt_id.036 = phi i32 [ %call15, %for.inc.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %3 = ptrtoint ptr %bm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bm, align 4
  %shl = shl nuw nsw i32 1, %opt_id.036
  %and = and i32 %4, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool = icmp ne i32 %and, 0
  %call3 = call i32 @br_boolopt_toggle(ptr noundef %br, i32 noundef %opt_id.036, i1 noundef zeroext %tobool, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %for.inc, label %do.body

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @br_boolopt_multi_toggle.__UNIQUE_ID_ddebug560, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@br_boolopt_multi_toggle, %if.then11)) #5
          to label %for.end [label %if.then11], !srcloc !56

if.then11:                                        ; preds = %do.body
  %dev = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 3
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = zext i32 %opt_id.036 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %opt_id.036, label %do.end.i [
    i32 0, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

sw.bb.i:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %options.i.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %8 = ptrtoint ptr %options.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %options.i.i, align 4
  %shr.i.i.i = lshr i32 %9, 13
  %and1.i.i.i = and i32 %shr.i.i.i, 1
  br label %br_boolopt_get.exit

sw.bb1.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %options.i19.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %10 = ptrtoint ptr %options.i19.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %options.i19.i, align 4
  %shr.i.i20.i = lshr i32 %11, 15
  %and1.i.i21.i = and i32 %shr.i.i20.i, 1
  br label %br_boolopt_get.exit

do.end.i:                                         ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 286, i32 noundef 9, ptr noundef null) #5
  br label %br_boolopt_get.exit

br_boolopt_get.exit:                              ; preds = %do.end.i, %sw.bb1.i, %sw.bb.i
  %retval.0.i30 = phi i32 [ 0, %do.end.i ], [ %and1.i.i21.i, %sw.bb1.i ], [ %and1.i.i.i, %sw.bb.i ]
  %conv = zext i1 %tobool to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @br_boolopt_multi_toggle.__UNIQUE_ID_ddebug560, ptr noundef nonnull @.str.3, ptr noundef %6, i32 noundef %opt_id.036, i32 noundef %retval.0.i30, i32 noundef %conv, i32 noundef %call3) #5
  br label %for.end

for.inc:                                          ; preds = %for.body
  %add = add nsw i32 %opt_id.036, 1
  %call15 = call i32 @_find_next_bit_be(ptr noundef nonnull %bitmap, i32 noundef 2, i32 noundef %add) #5
  %cmp = icmp slt i32 %call15, 2
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %br_boolopt_get.exit, %do.body, %entry.for.end_crit_edge
  %err.1 = phi i32 [ %call3, %do.body ], [ %call3, %br_boolopt_get.exit ], [ 0, %entry.for.end_crit_edge ], [ 0, %for.inc.for.end_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %bitmap) #5
  ret i32 %err.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @br_boolopt_multi_get(ptr noundef %br, ptr nocapture noundef writeonly %bm) local_unnamed_addr #0 align 64 {
br_boolopt_get.exit.1:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %options.i19.i = getelementptr inbounds %struct.net_bridge, ptr %br, i32 0, i32 4
  %0 = ptrtoint ptr %options.i19.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %options.i19.i, align 4
  %shr.i.i.i = lshr i32 %1, 13
  %and1.i.i.i = and i32 %shr.i.i.i, 1
  %2 = load volatile i32, ptr %options.i19.i, align 4
  %3 = lshr i32 %2, 14
  %phi.bo = and i32 %3, 2
  %or.1 = or i32 %phi.bo, %and1.i.i.i
  %4 = ptrtoint ptr %bm to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or.1, ptr %bm, align 4
  %optmask = getelementptr inbounds %struct.br_boolopt_multi, ptr %bm, i32 0, i32 1
  %5 = ptrtoint ptr %optmask to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 3, ptr %optmask, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @br_deinit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @stp_proto_unregister(ptr noundef nonnull @br_stp_proto) #5
  tail call void @br_netlink_fini() #5
  %call = tail call i32 @unregister_switchdev_blocking_notifier(ptr noundef nonnull @br_switchdev_blocking_notifier) #5
  %call1 = tail call i32 @unregister_switchdev_notifier(ptr noundef nonnull @br_switchdev_notifier) #5
  %call2 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @br_device_notifier) #5
  tail call void @brioctl_set(ptr noundef null) #5
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @br_net_ops) #5
  tail call void @rcu_barrier() #5
  tail call void @br_nf_core_fini() #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @br_fdb_test_addr_hook to i32))
  store ptr null, ptr @br_fdb_test_addr_hook, align 4
  tail call void @br_fdb_fini() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @stp_proto_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_netlink_fini() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_switchdev_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @brioctl_set(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_nf_core_fini() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_fini() local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @br_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @stp_proto_register(ptr noundef nonnull @br_stp_proto) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %do.end3, label %if.end

do.end3:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call5 = tail call i32 @br_fdb_init() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not = icmp eq i32 %call5, 0
  br i1 %tobool.not, label %if.end7, label %if.end.err_out_crit_edge

if.end.err_out_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out

if.end7:                                          ; preds = %if.end
  %call8 = tail call i32 @register_pernet_subsys(ptr noundef nonnull @br_net_ops) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.end7.err_out1_crit_edge

if.end7.err_out1_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out1

if.end11:                                         ; preds = %if.end7
  %call12 = tail call i32 @br_nf_core_init() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.err_out2_crit_edge

if.end11.err_out2_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out2

if.end15:                                         ; preds = %if.end11
  %call16 = tail call i32 @register_netdevice_notifier(ptr noundef nonnull @br_device_notifier) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end19, label %if.end15.err_out3_crit_edge

if.end15.err_out3_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out3

if.end19:                                         ; preds = %if.end15
  %call20 = tail call i32 @register_switchdev_notifier(ptr noundef nonnull @br_switchdev_notifier) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.end19.err_out4_crit_edge

if.end19.err_out4_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out4

if.end23:                                         ; preds = %if.end19
  %call24 = tail call i32 @register_switchdev_blocking_notifier(ptr noundef nonnull @br_switchdev_blocking_notifier) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end27, label %if.end23.err_out5_crit_edge

if.end23.err_out5_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #7
  br label %err_out5

if.end27:                                         ; preds = %if.end23
  %call28 = tail call i32 @br_netlink_init() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end31, label %err_out6

if.end31:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @brioctl_set(ptr noundef nonnull @br_ioctl_stub) #5
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @br_fdb_test_addr_hook to i32))
  store ptr @br_fdb_test_addr, ptr @br_fdb_test_addr_hook, align 4
  br label %cleanup

err_out6:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #7
  %call32 = tail call i32 @unregister_switchdev_blocking_notifier(ptr noundef nonnull @br_switchdev_blocking_notifier) #5
  br label %err_out5

err_out5:                                         ; preds = %err_out6, %if.end23.err_out5_crit_edge
  %err.0 = phi i32 [ %call24, %if.end23.err_out5_crit_edge ], [ %call28, %err_out6 ]
  %call33 = tail call i32 @unregister_switchdev_notifier(ptr noundef nonnull @br_switchdev_notifier) #5
  br label %err_out4

err_out4:                                         ; preds = %err_out5, %if.end19.err_out4_crit_edge
  %err.1 = phi i32 [ %call20, %if.end19.err_out4_crit_edge ], [ %err.0, %err_out5 ]
  %call34 = tail call i32 @unregister_netdevice_notifier(ptr noundef nonnull @br_device_notifier) #5
  br label %err_out3

err_out3:                                         ; preds = %err_out4, %if.end15.err_out3_crit_edge
  %err.2 = phi i32 [ %call16, %if.end15.err_out3_crit_edge ], [ %err.1, %err_out4 ]
  tail call void @br_nf_core_fini() #5
  br label %err_out2

err_out2:                                         ; preds = %err_out3, %if.end11.err_out2_crit_edge
  %err.3 = phi i32 [ %call12, %if.end11.err_out2_crit_edge ], [ %err.2, %err_out3 ]
  tail call void @unregister_pernet_subsys(ptr noundef nonnull @br_net_ops) #5
  br label %err_out1

err_out1:                                         ; preds = %err_out2, %if.end7.err_out1_crit_edge
  %err.4 = phi i32 [ %call8, %if.end7.err_out1_crit_edge ], [ %err.3, %err_out2 ]
  tail call void @br_fdb_fini() #5
  br label %err_out

err_out:                                          ; preds = %err_out1, %if.end.err_out_crit_edge
  %err.5 = phi i32 [ %call5, %if.end.err_out_crit_edge ], [ %err.4, %err_out1 ]
  tail call void @stp_proto_unregister(ptr noundef nonnull @br_stp_proto) #5
  br label %cleanup

cleanup:                                          ; preds = %err_out, %if.end31, %do.end3
  %retval.0 = phi i32 [ %call, %do.end3 ], [ %err.5, %err_out ], [ 0, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__modver_version_show(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_stp_rcv(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_switchdev_blocking_event(ptr nocapture noundef readnone %nb, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %extack.i = getelementptr inbounds %struct.netdev_notifier_info, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack.i, align 4
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptr, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %5, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.out_crit_edge, label %do.body.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

do.body.i:                                        ; preds = %entry
  %call1.i = tail call zeroext i1 @lockdep_rtnl_is_held() #5
  br i1 %call1.i, label %do.body.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

do.body.i.br_port_get_rtnl.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.br_port_get_rtnl.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_port_get_rtnl.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 422, ptr noundef nonnull @.str.9) #5
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %if.then.i, %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, %do.body.i.br_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 95
  %6 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %rx_handler_data.i, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %br_port_get_rtnl.exit.out_crit_edge, label %if.end

br_port_get_rtnl.exit.out_crit_edge:              ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %br_port_get_rtnl.exit
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %event, label %if.end.out_crit_edge [
    i32 15, label %sw.bb
    i32 16, label %sw.bb7
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %brport = getelementptr inbounds %struct.switchdev_notifier_brport_info, ptr %ptr, i32 0, i32 1
  %9 = ptrtoint ptr %brport to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %brport, align 4
  %ctx = getelementptr inbounds %struct.switchdev_notifier_brport_info, ptr %ptr, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %atomic_nb = getelementptr inbounds %struct.switchdev_notifier_brport_info, ptr %ptr, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %atomic_nb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %atomic_nb, align 4
  %blocking_nb = getelementptr inbounds %struct.switchdev_notifier_brport_info, ptr %ptr, i32 0, i32 1, i32 3
  %15 = ptrtoint ptr %blocking_nb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %blocking_nb, align 4
  %tx_fwd_offload = getelementptr inbounds %struct.switchdev_notifier_brport_info, ptr %ptr, i32 0, i32 1, i32 4
  %17 = ptrtoint ptr %tx_fwd_offload to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %tx_fwd_offload, align 4, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool4 = icmp ne i8 %18, 0
  %call5 = tail call i32 @br_switchdev_port_offload(ptr noundef nonnull %7, ptr noundef %10, ptr noundef %12, ptr noundef %14, ptr noundef %16, i1 noundef zeroext %tobool4, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool.not.i26 = icmp eq i32 %call5, 0
  %sub.i = sub i32 1, %call5
  %or.i = or i32 %sub.i, 32768
  %retval.0.i = select i1 %tobool.not.i26, i32 1, i32 %or.i
  br label %out

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ctx9 = getelementptr inbounds %struct.switchdev_notifier_brport_info, ptr %ptr, i32 0, i32 1, i32 1
  %19 = ptrtoint ptr %ctx9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctx9, align 4
  %atomic_nb10 = getelementptr inbounds %struct.switchdev_notifier_brport_info, ptr %ptr, i32 0, i32 1, i32 2
  %21 = ptrtoint ptr %atomic_nb10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %atomic_nb10, align 4
  %blocking_nb11 = getelementptr inbounds %struct.switchdev_notifier_brport_info, ptr %ptr, i32 0, i32 1, i32 3
  %23 = ptrtoint ptr %blocking_nb11 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %blocking_nb11, align 4
  tail call void @br_switchdev_port_unoffload(ptr noundef nonnull %7, ptr noundef %20, ptr noundef %22, ptr noundef %24) #5
  br label %out

out:                                              ; preds = %sw.bb7, %sw.bb, %if.end.out_crit_edge, %br_port_get_rtnl.exit.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %sw.bb7 ], [ %retval.0.i, %sw.bb ], [ 0, %br_port_get_rtnl.exit.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_switchdev_port_offload(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_switchdev_port_unoffload(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_switchdev_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr nocapture noundef readonly %ptr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ptr, align 4
  %priv_flags.i.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %priv_flags.i.i to i32
  call void @__asan_load8_noabort(i32 %2)
  %3 = load i64, ptr %priv_flags.i.i, align 16
  %and.i.i = and i64 %3, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %entry.out_crit_edge, label %cond.true.i

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

cond.true.i:                                      ; preds = %entry
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %1, i32 0, i32 95
  %4 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %rx_handler_data.i, align 4
  %call2.i = tail call zeroext i1 @lockdep_rtnl_is_held() #5
  br i1 %call2.i, label %cond.true.i.br_port_get_rtnl_rcu.exit_crit_edge, label %lor.lhs.false.i

cond.true.i.br_port_get_rtnl_rcu.exit_crit_edge:  ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_port_get_rtnl_rcu.exit

lor.lhs.false.i:                                  ; preds = %cond.true.i
  %call3.i = tail call i32 @rcu_read_lock_held() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %lor.lhs.false.i.br_port_get_rtnl_rcu.exit_crit_edge

lor.lhs.false.i.br_port_get_rtnl_rcu.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_port_get_rtnl_rcu.exit

land.lhs.true.i:                                  ; preds = %lor.lhs.false.i
  %call4.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool5.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool5.not.i, label %land.lhs.true.i.br_port_get_rtnl_rcu.exit_crit_edge, label %land.lhs.true6.i

land.lhs.true.i.br_port_get_rtnl_rcu.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_port_get_rtnl_rcu.exit

land.lhs.true6.i:                                 ; preds = %land.lhs.true.i
  %.b12.i = load i1, ptr @br_port_get_rtnl_rcu.__warned, align 1
  br i1 %.b12.i, label %land.lhs.true6.i.br_port_get_rtnl_rcu.exit_crit_edge, label %if.then.i

land.lhs.true6.i.br_port_get_rtnl_rcu.exit_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_port_get_rtnl_rcu.exit

if.then.i:                                        ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @br_port_get_rtnl_rcu.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 428, ptr noundef nonnull @.str.10) #5
  br label %br_port_get_rtnl_rcu.exit

br_port_get_rtnl_rcu.exit:                        ; preds = %if.then.i, %land.lhs.true6.i.br_port_get_rtnl_rcu.exit_crit_edge, %land.lhs.true.i.br_port_get_rtnl_rcu.exit_crit_edge, %lor.lhs.false.i.br_port_get_rtnl_rcu.exit_crit_edge, %cond.true.i.br_port_get_rtnl_rcu.exit_crit_edge
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %br_port_get_rtnl_rcu.exit.out_crit_edge, label %if.end

br_port_get_rtnl_rcu.exit.out_crit_edge:          ; preds = %br_port_get_rtnl_rcu.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.end:                                           ; preds = %br_port_get_rtnl_rcu.exit
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 8
  %8 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %event, label %if.end.out_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb10
    i32 5, label %sw.bb18
    i32 6, label %sw.bb22
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

sw.bb:                                            ; preds = %if.end
  %addr = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %ptr, i32 0, i32 1
  %9 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %addr, align 4
  %vid = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %ptr, i32 0, i32 2
  %11 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %vid, align 4
  %call3 = tail call i32 @br_fdb_external_learn_add(ptr noundef %7, ptr noundef nonnull %5, ptr noundef %10, i16 noundef zeroext %12, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end7, label %if.then5

if.then5:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub i32 1, %call3
  %or.i = or i32 %sub.i, 32768
  br label %out

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %addr, align 4
  %15 = ptrtoint ptr %vid to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vid, align 4
  tail call void @br_fdb_offloaded_set(ptr noundef %7, ptr noundef nonnull %5, ptr noundef %14, i16 noundef zeroext %16, i1 noundef zeroext true) #5
  br label %out

sw.bb10:                                          ; preds = %if.end
  %addr11 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %ptr, i32 0, i32 1
  %17 = ptrtoint ptr %addr11 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %addr11, align 4
  %vid12 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %ptr, i32 0, i32 2
  %19 = ptrtoint ptr %vid12 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %vid12, align 4
  %call13 = tail call i32 @br_fdb_external_learn_del(ptr noundef %7, ptr noundef nonnull %5, ptr noundef %18, i16 noundef zeroext %20, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %sw.bb10.out_crit_edge, label %if.then15

sw.bb10.out_crit_edge:                            ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  br label %out

if.then15:                                        ; preds = %sw.bb10
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i53 = sub i32 1, %call13
  %or.i54 = or i32 %sub.i53, 32768
  br label %out

sw.bb18:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %addr19 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %ptr, i32 0, i32 1
  %21 = ptrtoint ptr %addr19 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %addr19, align 4
  %vid20 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %ptr, i32 0, i32 2
  %23 = ptrtoint ptr %vid20 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %vid20, align 4
  %offloaded = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %ptr, i32 0, i32 3
  %25 = ptrtoint ptr %offloaded to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load = load i8, ptr %offloaded, align 2
  %26 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool21 = icmp ne i8 %26, 0
  tail call void @br_fdb_offloaded_set(ptr noundef %7, ptr noundef nonnull %5, ptr noundef %22, i16 noundef zeroext %24, i1 noundef zeroext %tobool21) #5
  br label %out

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %vid23 = getelementptr inbounds %struct.switchdev_notifier_fdb_info, ptr %ptr, i32 0, i32 2
  %27 = ptrtoint ptr %vid23 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %vid23, align 4
  tail call void @br_fdb_delete_by_port(ptr noundef %7, ptr noundef nonnull %5, i16 noundef zeroext %28, i32 noundef 0) #5
  br label %out

out:                                              ; preds = %sw.bb22, %sw.bb18, %if.then15, %sw.bb10.out_crit_edge, %if.end7, %if.then5, %if.end.out_crit_edge, %br_port_get_rtnl_rcu.exit.out_crit_edge, %entry.out_crit_edge
  %err.0 = phi i32 [ 0, %if.end.out_crit_edge ], [ 0, %sw.bb22 ], [ 0, %sw.bb18 ], [ %or.i54, %if.then15 ], [ 0, %sw.bb10.out_crit_edge ], [ %or.i, %if.then5 ], [ 0, %if.end7 ], [ 0, %br_port_get_rtnl_rcu.exit.out_crit_edge ], [ 0, %entry.out_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_fdb_external_learn_add(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_offloaded_set(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_fdb_external_learn_del(ptr noundef, ptr noundef, ptr noundef, i16 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_delete_by_port(ptr noundef, ptr noundef, i16 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @br_device_event(ptr nocapture noundef readnone %unused, i32 noundef %event, ptr noundef %ptr) #0 align 64 {
entry:
  %notified = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %extack.i = getelementptr inbounds %struct.netdev_notifier_info, ptr %ptr, i32 0, i32 1
  %0 = ptrtoint ptr %extack.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %extack.i, align 4
  %2 = ptrtoint ptr %ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ptr, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %notified) #5
  %4 = ptrtoint ptr %notified to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %notified, align 1
  %priv_flags.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 15
  %5 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %6, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %entry.if.end13_crit_edge, label %if.then

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then:                                          ; preds = %entry
  %call3 = tail call i32 @br_vlan_bridge_event(ptr noundef %3, i32 noundef %event, ptr noundef %ptr) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then4

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub i32 1, %call3
  %or.i = or i32 %sub.i, 32768
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %event)
  %cmp = icmp eq i32 %event, 5
  br i1 %cmp, label %if.then6, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end13

if.then6:                                         ; preds = %if.end
  %call7 = tail call i32 @br_sysfs_addbr(ptr noundef %3) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then6.cleanup_crit_edge, label %if.then9

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i146 = sub i32 1, %call7
  %or.i147 = or i32 %sub.i146, 32768
  br label %cleanup

if.end13:                                         ; preds = %if.end.if.end13_crit_edge, %entry.if.end13_crit_edge
  %7 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %7)
  %8 = load i64, ptr %priv_flags.i, align 16
  %and.i.i = and i64 %8, 512
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i.i)
  %tobool.i.not.i = icmp eq i64 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.end13.cleanup_crit_edge, label %do.body.i

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body.i:                                        ; preds = %if.end13
  %call1.i = tail call zeroext i1 @lockdep_rtnl_is_held() #5
  br i1 %call1.i, label %do.body.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true.i

do.body.i.br_port_get_rtnl.exit_crit_edge:        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_port_get_rtnl.exit

land.lhs.true.i:                                  ; preds = %do.body.i
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool.not.i149 = icmp eq i32 %call2.i, 0
  br i1 %tobool.not.i149, label %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, label %land.lhs.true3.i

land.lhs.true.i.br_port_get_rtnl.exit_crit_edge:  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_port_get_rtnl.exit

land.lhs.true3.i:                                 ; preds = %land.lhs.true.i
  %.b6.i = load i1, ptr @br_port_get_rtnl.__warned, align 1
  br i1 %.b6.i, label %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, label %if.then.i

land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge: ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %br_port_get_rtnl.exit

if.then.i:                                        ; preds = %land.lhs.true3.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @br_port_get_rtnl.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.8, i32 noundef 422, ptr noundef nonnull @.str.9) #5
  br label %br_port_get_rtnl.exit

br_port_get_rtnl.exit:                            ; preds = %if.then.i, %land.lhs.true3.i.br_port_get_rtnl.exit_crit_edge, %land.lhs.true.i.br_port_get_rtnl.exit_crit_edge, %do.body.i.br_port_get_rtnl.exit_crit_edge
  %rx_handler_data.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 95
  %9 = ptrtoint ptr %rx_handler_data.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %rx_handler_data.i, align 4
  %tobool15.not = icmp eq ptr %10, null
  br i1 %tobool15.not, label %br_port_get_rtnl.exit.cleanup_crit_edge, label %if.end17

br_port_get_rtnl.exit.cleanup_crit_edge:          ; preds = %br_port_get_rtnl.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17:                                         ; preds = %br_port_get_rtnl.exit
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 8
  %13 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %event, label %if.end17.if.then74_crit_edge [
    i32 7, label %sw.bb
    i32 9, label %sw.bb19
    i32 8, label %sw.bb31
    i32 4, label %sw.bb40
    i32 12, label %sw.bb41
    i32 2, label %sw.bb43
    i32 1, label %sw.bb50
    i32 6, label %sw.epilog
    i32 11, label %sw.bb62
    i32 15, label %if.end17.cleanup_crit_edge
    i32 22, label %sw.bb69
  ]

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end17.if.then74_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then74

sw.bb:                                            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @br_mtu_auto_adjust(ptr noundef %12) #5
  br label %if.then74

sw.bb19:                                          ; preds = %if.end17
  %dev20 = getelementptr inbounds %struct.net_bridge, ptr %12, i32 0, i32 3
  %14 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev20, align 4
  %addr_assign_type = getelementptr inbounds %struct.net_device, ptr %15, i32 0, i32 55
  %16 = ptrtoint ptr %addr_assign_type to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %addr_assign_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %17)
  %cmp21 = icmp eq i8 %17, 3
  br i1 %cmp21, label %sw.bb19.if.then74_crit_edge, label %if.end24

sw.bb19.if.then74_crit_edge:                      ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then74

if.end24:                                         ; preds = %sw.bb19
  %dev_addr = getelementptr inbounds %struct.netdev_notifier_pre_changeaddr_info, ptr %ptr, i32 0, i32 1
  %18 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev_addr, align 4
  %call26 = tail call i32 @dev_pre_changeaddr_notify(ptr noundef %15, ptr noundef %19, ptr noundef %1) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end24.if.then74_crit_edge, label %if.then28

if.end24.if.then74_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then74

if.then28:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i151 = sub i32 1, %call26
  %or.i152 = or i32 %sub.i151, 32768
  br label %cleanup

sw.bb31:                                          ; preds = %if.end17
  tail call void @_raw_spin_lock_bh(ptr noundef %12) #5
  %dev_addr32 = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 86
  %20 = ptrtoint ptr %dev_addr32 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev_addr32, align 64
  tail call void @br_fdb_changeaddr(ptr noundef nonnull %10, ptr noundef %21) #5
  %call33 = tail call zeroext i1 @br_stp_recalculate_bridge_id(ptr noundef %12) #5
  tail call void @_raw_spin_unlock_bh(ptr noundef %12) #5
  br i1 %call33, label %if.then36, label %sw.bb31.if.then74_crit_edge

sw.bb31.if.then74_crit_edge:                      ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then74

if.then36:                                        ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #7
  %dev37 = getelementptr inbounds %struct.net_bridge, ptr %12, i32 0, i32 3
  %22 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev37, align 4
  %call38 = tail call i32 @call_netdevice_notifiers(i32 noundef 8, ptr noundef %23) #5
  br label %if.then74

sw.bb40:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  call void @br_port_carrier_check(ptr noundef nonnull %10, ptr noundef nonnull %notified) #5
  br label %if.then74

sw.bb41:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %dev42 = getelementptr inbounds %struct.net_bridge, ptr %12, i32 0, i32 3
  %24 = ptrtoint ptr %dev42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev42, align 4
  tail call void @netdev_update_features(ptr noundef %25) #5
  br label %if.then74

sw.bb43:                                          ; preds = %if.end17
  tail call void @_raw_spin_lock_bh(ptr noundef %12) #5
  %dev45 = getelementptr inbounds %struct.net_bridge, ptr %12, i32 0, i32 3
  %26 = ptrtoint ptr %dev45 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev45, align 4
  %flags = getelementptr inbounds %struct.net_device, ptr %27, i32 0, i32 14
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 8
  %and = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool46.not = icmp eq i32 %and, 0
  br i1 %tobool46.not, label %sw.bb43.if.end48_crit_edge, label %if.then47

sw.bb43.if.end48_crit_edge:                       ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end48

if.then47:                                        ; preds = %sw.bb43
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @br_stp_disable_port(ptr noundef nonnull %10) #5
  %30 = ptrtoint ptr %notified to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %notified, align 1
  br label %if.end48

if.end48:                                         ; preds = %if.then47, %sw.bb43.if.end48_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %12) #5
  br label %if.then74

sw.bb50:                                          ; preds = %if.end17
  %dev51 = getelementptr inbounds %struct.net_bridge, ptr %12, i32 0, i32 3
  %31 = ptrtoint ptr %dev51 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev51, align 4
  %state.i = getelementptr inbounds %struct.net_device, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %state.i, align 4
  %and1.i.i = and i32 %34, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.i154.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.i154.not, label %sw.bb50.if.then74_crit_edge, label %land.lhs.true

sw.bb50.if.then74_crit_edge:                      ; preds = %sw.bb50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then74

land.lhs.true:                                    ; preds = %sw.bb50
  %operstate.i = getelementptr inbounds %struct.net_device, ptr %3, i32 0, i32 50
  %35 = ptrtoint ptr %operstate.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %operstate.i, align 8
  %37 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %37, ptr @__sancov_gen_cov_switch_values.18)
  switch i8 %36, label %land.lhs.true.if.then74_crit_edge [
    i8 6, label %land.lhs.true.if.then56_crit_edge
    i8 0, label %land.lhs.true.if.then56_crit_edge163
  ]

land.lhs.true.if.then56_crit_edge163:             ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then56

land.lhs.true.if.then56_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then56

land.lhs.true.if.then74_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then74

if.then56:                                        ; preds = %land.lhs.true.if.then56_crit_edge, %land.lhs.true.if.then56_crit_edge163
  tail call void @_raw_spin_lock_bh(ptr noundef %12) #5
  tail call void @br_stp_enable_port(ptr noundef nonnull %10) #5
  %38 = ptrtoint ptr %notified to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %notified, align 1
  tail call void @_raw_spin_unlock_bh(ptr noundef %12) #5
  br label %if.then74

sw.bb62:                                          ; preds = %if.end17
  %call63 = tail call i32 @br_sysfs_renameif(ptr noundef nonnull %10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %sw.bb62.if.then74_crit_edge, label %if.then65

sw.bb62.if.then74_crit_edge:                      ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then74

if.then65:                                        ; preds = %sw.bb62
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i156 = sub i32 1, %call63
  %or.i157 = or i32 %sub.i156, 32768
  br label %cleanup

sw.bb69:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %dev70 = getelementptr inbounds %struct.net_bridge, ptr %12, i32 0, i32 3
  %39 = ptrtoint ptr %dev70 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev70, align 4
  %call71 = tail call i32 @call_netdevice_notifiers(i32 noundef 22, ptr noundef %40) #5
  br label %if.then74

sw.epilog:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call61 = tail call i32 @br_del_if(ptr noundef %12, ptr noundef %3) #5
  br label %if.end75

if.then74:                                        ; preds = %sw.bb69, %sw.bb62.if.then74_crit_edge, %if.then56, %land.lhs.true.if.then74_crit_edge, %sw.bb50.if.then74_crit_edge, %if.end48, %sw.bb41, %sw.bb40, %if.then36, %sw.bb31.if.then74_crit_edge, %if.end24.if.then74_crit_edge, %sw.bb19.if.then74_crit_edge, %sw.bb, %if.end17.if.then74_crit_edge
  call void @br_vlan_port_event(ptr noundef nonnull %10, i32 noundef %event) #5
  br label %if.end75

if.end75:                                         ; preds = %if.then74, %sw.epilog
  %41 = ptrtoint ptr %notified to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %notified, align 1, !range !57
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool76.not = icmp eq i8 %42, 0
  br i1 %tobool76.not, label %land.lhs.true77, label %if.end75.cleanup_crit_edge

if.end75.cleanup_crit_edge:                       ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true77:                                  ; preds = %if.end75
  %43 = zext i32 %event to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %event, label %land.lhs.true77.cleanup_crit_edge [
    i32 8, label %land.lhs.true77.if.then88_crit_edge
    i32 1, label %land.lhs.true77.if.then88_crit_edge164
    i32 4, label %land.lhs.true77.if.then88_crit_edge165
    i32 2, label %land.lhs.true77.if.then88_crit_edge166
  ]

land.lhs.true77.if.then88_crit_edge166:           ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then88

land.lhs.true77.if.then88_crit_edge165:           ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then88

land.lhs.true77.if.then88_crit_edge164:           ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then88

land.lhs.true77.if.then88_crit_edge:              ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then88

land.lhs.true77.cleanup_crit_edge:                ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then88:                                        ; preds = %land.lhs.true77.if.then88_crit_edge, %land.lhs.true77.if.then88_crit_edge164, %land.lhs.true77.if.then88_crit_edge165, %land.lhs.true77.if.then88_crit_edge166
  call void @br_ifinfo_notify(i32 noundef 16, ptr noundef null, ptr noundef nonnull %10) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then88, %land.lhs.true77.cleanup_crit_edge, %if.end75.cleanup_crit_edge, %if.then65, %if.then28, %if.end17.cleanup_crit_edge, %br_port_get_rtnl.exit.cleanup_crit_edge, %if.end13.cleanup_crit_edge, %if.then9, %if.then6.cleanup_crit_edge, %if.then4
  %retval.0 = phi i32 [ %or.i, %if.then4 ], [ %or.i147, %if.then9 ], [ %or.i157, %if.then65 ], [ %or.i152, %if.then28 ], [ 0, %if.then6.cleanup_crit_edge ], [ 0, %br_port_get_rtnl.exit.cleanup_crit_edge ], [ 32770, %if.end17.cleanup_crit_edge ], [ 0, %land.lhs.true77.cleanup_crit_edge ], [ 0, %if.then88 ], [ 0, %if.end75.cleanup_crit_edge ], [ 0, %if.end13.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %notified) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_vlan_bridge_event(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_sysfs_addbr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_mtu_auto_adjust(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_pre_changeaddr_notify(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_fdb_changeaddr(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @br_stp_recalculate_bridge_id(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @call_netdevice_notifiers(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_port_carrier_check(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @netdev_update_features(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_stp_disable_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_stp_enable_port(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_del_if(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_sysfs_renameif(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_vlan_port_event(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_ifinfo_notify(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @br_net_exit(ptr noundef readonly %net) #0 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #5
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  call void @rtnl_lock() #5
  %dev_base_head = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 16
  %3 = ptrtoint ptr %dev_base_head to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn12 = load ptr, ptr %dev_base_head, align 4
  %cmp.not14 = icmp eq ptr %.pn12, %dev_base_head
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn15 = phi ptr [ %.pn, %for.inc.for.body_crit_edge ], [ %.pn12, %entry.for.body_crit_edge ]
  %priv_flags.i = getelementptr i8, ptr %.pn15, i32 72
  %4 = ptrtoint ptr %priv_flags.i to i32
  call void @__asan_load8_noabort(i32 %4)
  %5 = load i64, ptr %priv_flags.i, align 16
  %and.i = and i64 %5, 2
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %and.i)
  %tobool.i.not = icmp eq i64 %and.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  %dev.016 = getelementptr i8, ptr %.pn15, i32 -40
  call void @br_dev_delete(ptr noundef %dev.016, ptr noundef nonnull %list) #5
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %6 = ptrtoint ptr %.pn15 to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn = load ptr, ptr %.pn15, align 4
  %cmp.not = icmp eq ptr %.pn, %dev_base_head
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  call void @unregister_netdevice_many(ptr noundef nonnull %list) #5
  call void @rtnl_unlock() #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @br_dev_delete(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @unregister_netdevice_many(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @stp_proto_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_fdb_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_pernet_subsys(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_nf_core_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_netdevice_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_switchdev_blocking_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_netlink_init() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_ioctl_stub(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_fdb_test_addr(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !9, !10, !11, !13, !15, !17, !18, !20, !21, !22, !23, !25, !27, !29, !31, !32, !33, !35, !37, !38, !40, !42, !44, !45, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/bridge/br.c", i32 270, i32 3}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/bridge/br.c", i32 306, i32 4}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @br_boolopt_multi_toggle.__UNIQUE_ID_ddebug560, !3, !"__UNIQUE_ID_ddebug560", i1 false, i1 false}
!7 = !{ptr @.str.4, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../net/bridge/br.c", i32 333, i32 2}
!9 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @br_opt_toggle.__UNIQUE_ID_ddebug561, !8, !"__UNIQUE_ID_ddebug561", i1 false, i1 false}
!11 = !{ptr @__initcall__kmod_bridge__563_458_br_init6, !12, !"__initcall__kmod_bridge__563_458_br_init6", i1 false, i1 false}
!12 = !{!"../net/bridge/br.c", i32 458, i32 1}
!13 = !{ptr @__exitcall_br_deinit, !14, !"__exitcall_br_deinit", i1 false, i1 false}
!14 = !{!"../net/bridge/br.c", i32 459, i32 1}
!15 = !{ptr @__UNIQUE_ID_file564, !16, !"__UNIQUE_ID_file564", i1 false, i1 false}
!16 = !{!"../net/bridge/br.c", i32 460, i32 1}
!17 = !{ptr @__UNIQUE_ID_license565, !16, !"__UNIQUE_ID_license565", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_version566, !19, !"__UNIQUE_ID_version566", i1 false, i1 false}
!19 = !{!"../net/bridge/br.c", i32 461, i32 1}
!20 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @__modver_attr, !19, !"__modver_attr", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_alias567, !24, !"__UNIQUE_ID_alias567", i1 false, i1 false}
!24 = !{!"../net/bridge/br.c", i32 462, i32 1}
!25 = !{ptr @br_stp_proto, !26, !"br_stp_proto", i1 false, i1 false}
!26 = !{!"../net/bridge/br.c", i32 364, i32 31}
!27 = !{ptr @br_switchdev_blocking_notifier, !28, !"br_switchdev_blocking_notifier", i1 false, i1 false}
!28 = !{!"../net/bridge/br.c", i32 242, i32 30}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/bridge/br_private.h", i32 422, i32 3}
!31 = !{ptr @.str.8, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @br_switchdev_notifier, !34, !"br_switchdev_notifier", i1 false, i1 false}
!34 = !{!"../net/bridge/br.c", i32 200, i32 30}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../net/bridge/br_private.h", i32 428, i32 3}
!37 = !{ptr @.str.10, !36, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @br_device_notifier, !39, !"br_device_notifier", i1 false, i1 false}
!39 = !{!"../net/bridge/br.c", i32 145, i32 30}
!40 = !{ptr @br_net_ops, !41, !"br_net_ops", i1 false, i1 false}
!41 = !{!"../net/bridge/br.c", i32 360, i32 33}
!42 = !{ptr @.str.11, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../net/bridge/br.c", i32 376, i32 3}
!44 = !{ptr @.str.12, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @br_init._entry, !43, !"_entry", i1 false, i1 false}
!46 = !{ptr @br_init._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i64 2148961960, i64 2148961965, i64 2148961978, i64 2148962022, i64 2148962056, i64 2148962077}
!57 = !{i8 0, i8 2}
