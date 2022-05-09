; ModuleID = '/llk/IR_all_yes/net/sched/cls_fw.c_pt.bc'
source_filename = "../net/sched/cls_fw.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcf_proto_ops = type { %struct.list_head, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.tcf_proto = type { ptr, ptr, ptr, i16, i32, ptr, ptr, ptr, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
%struct.spinlock = type { %union.anon.8 }
%union.anon.8 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.9 }
%union.anon.9 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.callback_head = type { ptr, ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.102, %union.anon.103, [48 x i8], %union.anon.104, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.106, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.102 = type { ptr }
%union.anon.103 = type { i64 }
%union.anon.104 = type { %struct.anon.105 }
%struct.anon.105 = type { i32, ptr }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.108, i32, i32, i32, i16, i16, %union.anon.110, i32, %union.anon.111, %union.anon.112, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.108 = type { i32 }
%union.anon.110 = type { i32 }
%union.anon.111 = type { i32 }
%union.anon.112 = type { i16 }
%struct.fw_head = type { i32, [256 x ptr], %struct.callback_head }
%struct.fw_filter = type { ptr, i32, %struct.tcf_result, i32, %struct.tcf_exts, ptr, %struct.rcu_work }
%struct.tcf_result = type { %union.anon.119 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32, i32 }
%struct.tcf_exts = type { i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tcf_chain = type { %struct.mutex, ptr, %struct.list_head, ptr, i32, i32, i32, i8, i8, ptr, ptr, %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, ptr, ptr, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.100, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.flow_block = type { %struct.list_head }
%struct.anon.100 = type { ptr, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.53, i32, %struct.spinlock }
%union.anon.53 = type { %struct.anon.54 }
%struct.anon.54 = type { ptr, ptr }
%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcf_walker = type { i32, i32, i32, i8, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.47, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.47 = type { %struct.anon.48 }
%struct.anon.48 = type { ptr, i32, i32, i32 }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.netns_unix = type { i32, ptr }
%struct.netns_nexthop = type { %struct.rb_root, ptr, i32, i32, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.netns_ipv4 = type { %struct.inet_timewait_death_row, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i32, i8, i8, i8, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, i8, i32, i32, i32, i32, %struct.local_ports, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i8, i32, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, [3 x i32], [3 x i32], i32, i32, i32, i32, ptr, ptr, i32, %struct.atomic_t, i32, i32, i32, i8, i8, i8, i32, i32, i32, %struct.ping_group_range, %struct.atomic_t, ptr, i32, %struct.list_head, ptr, i32, i8, i8, ptr, i32, ptr, i32, %struct.atomic_t, %struct.siphash_key_t, [96 x i8] }
%struct.inet_timewait_death_row = type { %struct.atomic_t, [124 x i8], ptr, i32 }
%struct.local_ports = type { %struct.seqlock_t, [2 x i32], i8 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount, ptr }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.52, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.52 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.netlink_ext_ack = type { ptr, ptr, ptr, [20 x i8], i8 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.101, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.possible_net_t = type { ptr }
%union.anon.101 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
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

@cls_fw_ops = internal global %struct.tcf_proto_ops { %struct.list_head zeroinitializer, [16 x i8] c"fw\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @fw_classify, ptr @fw_init, ptr @fw_destroy, ptr @fw_get, ptr null, ptr @fw_change, ptr @fw_delete, ptr null, ptr @fw_walk, ptr null, ptr null, ptr null, ptr @fw_bind_class, ptr null, ptr null, ptr @fw_dump, ptr null, ptr null, ptr null, i32 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_cls_fw__388_458_init_fw6 = internal global ptr @init_fw, section ".initcall6.init", align 4
@__exitcall_exit_fw = internal global ptr @exit_fw, section ".exitcall.exit", align 4
@__UNIQUE_ID_file389 = internal constant [29 x i8] c"cls_fw.file=net/sched/cls_fw\00", section ".modinfo", align 1
@__UNIQUE_ID_license390 = internal constant [19 x i8] c"cls_fw.license=GPL\00", section ".modinfo", align 1
@fw_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"net/sched/cls_fw.c\00", [45 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@fw_classify.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fw_classify.__warned.3 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/pkt_cls.h\00", [42 x i8] zeroinitializer }, align 32
@fw_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.5 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@fw_destroy.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fw_destroy.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fw_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fw_get.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fw_get.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fw_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fw_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 16, %union.anon.5 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@fw_change.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fw_change.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fw_change.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@fw_set_parms.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@tcf_change_indev.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Interface name too long\00", [40 x i8] zeroinitializer }, align 32
@tcf_change_indev.__msg.15 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Network device not found\00", [39 x i8] zeroinitializer }, align 32
@fw_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fw_delete.__warned.16 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fw_delete.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fw_delete.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fw_walk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fw_walk.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fw_walk.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@fw_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.21 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 53, i32 25 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 75, i32 2 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 133, i32 25 }
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"fw_policy\00", align 1
@___asan_gen_.35 = private constant [22 x i8] c"../net/sched/cls_fw.c\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.35, i32 193, i32 32 }
@___asan_gen_.41 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.41, i32 596, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 526, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.47 = private unnamed_addr constant [25 x i8] c"../include/net/pkt_cls.h\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 532, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.50, i32 991, i32 3 }
@llvm.compiler.used = appending global [15 x ptr] [ptr @__UNIQUE_ID_file389, ptr @__UNIQUE_ID_license390, ptr @__exitcall_exit_fw, ptr @__initcall__kmod_cls_fw__388_458_init_fw6, ptr @exit_fw, ptr @.str, ptr @.str.1, ptr @.str.4, ptr @.str.5, ptr @fw_policy, ptr @.str.13, ptr @.str.14, ptr @tcf_change_indev.__msg, ptr @tcf_change_indev.__msg.15, ptr @.str.21], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fw_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_change_indev.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_change_indev.__msg.15 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_fw() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @unregister_tcf_proto_ops(ptr noundef nonnull @cls_fw_ops) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_tcf_proto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_fw() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_tcf_proto_ops(ptr noundef nonnull @cls_fw_ops) #9
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_classify(ptr noundef %skb, ptr noundef %tp, ptr noundef %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %root, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b97 = load i1, ptr @fw_classify.__warned, align 1
  br i1 %.b97, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 53, ptr noundef nonnull @.str.1) #9
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %do.end7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %1, align 4
  %and = and i32 %6, %4
  %shr.i = lshr i32 %and, 16
  %xor.i = xor i32 %shr.i, %and
  %shr1.i = lshr i32 %xor.i, 8
  %xor2.i = xor i32 %shr1.i, %xor.i
  %rem.i = and i32 %xor2.i, 255
  %arrayidx = getelementptr %struct.fw_head, ptr %1, i32 0, i32 1, i32 %rem.i
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %arrayidx, align 4
  %call16 = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %if.then9.do.end26_crit_edge

if.then9.do.end26_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

land.lhs.true18:                                  ; preds = %if.then9
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true18.do.end26_crit_edge, label %land.lhs.true21

land.lhs.true18.do.end26_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %.b9396 = load i1, ptr @fw_classify.__warned.2, align 1
  br i1 %.b9396, label %land.lhs.true21.do.end26_crit_edge, label %if.then23

land.lhs.true21.do.end26_crit_edge:               ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end26

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_classify.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 61, ptr noundef nonnull @.str.1) #9
  br label %do.end26

do.end26:                                         ; preds = %if.then23, %land.lhs.true21.do.end26_crit_edge, %land.lhs.true18.do.end26_crit_edge, %if.then9.do.end26_crit_edge
  %tobool28.not100 = icmp eq ptr %8, null
  br i1 %tobool28.not100, label %do.end26.cleanup68_crit_edge, label %for.body.lr.ph

do.end26.cleanup68_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

for.body.lr.ph:                                   ; preds = %do.end26
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %do.end56.for.body_crit_edge, %for.body.lr.ph
  %f.0101 = phi ptr [ %8, %for.body.lr.ph ], [ %23, %do.end56.for.body_crit_edge ]
  %id29 = getelementptr inbounds %struct.fw_filter, ptr %f.0101, i32 0, i32 1
  %9 = ptrtoint ptr %id29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %and)
  %cmp30 = icmp eq i32 %10, %and
  br i1 %cmp30, label %if.then31, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then31:                                        ; preds = %for.body
  %res32 = getelementptr inbounds %struct.fw_filter, ptr %f.0101, i32 0, i32 2
  %11 = ptrtoint ptr %res32 to i32
  call void @__asan_loadN_noabort(i32 %11, i32 8)
  %12 = load i64, ptr %res32, align 4
  %13 = ptrtoint ptr %res to i32
  call void @__asan_storeN_noabort(i32 %13, i32 8)
  store i64 %12, ptr %res, align 4
  %ifindex = getelementptr inbounds %struct.fw_filter, ptr %f.0101, i32 0, i32 3
  %14 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool.not.i = icmp eq i32 %15, 0
  br i1 %tobool.not.i, label %if.then31.if.end35_crit_edge, label %tcf_match_indev.exit

if.then31.if.end35_crit_edge:                     ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

tcf_match_indev.exit:                             ; preds = %if.then31
  %16 = ptrtoint ptr %skb_iif.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %skb_iif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool1.not.i = icmp ne i32 %17, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %15)
  %cmp.i = icmp eq i32 %17, %15
  %spec.select.i = and i1 %tobool1.not.i, %cmp.i
  br i1 %spec.select.i, label %tcf_match_indev.exit.if.end35_crit_edge, label %tcf_match_indev.exit.for.inc_crit_edge

tcf_match_indev.exit.for.inc_crit_edge:           ; preds = %tcf_match_indev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

tcf_match_indev.exit.if.end35_crit_edge:          ; preds = %tcf_match_indev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end35

if.end35:                                         ; preds = %tcf_match_indev.exit.if.end35_crit_edge, %if.then31.if.end35_crit_edge
  %actions.i = getelementptr inbounds %struct.fw_filter, ptr %f.0101, i32 0, i32 4, i32 2
  %18 = ptrtoint ptr %actions.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %actions.i, align 4
  %nr_actions.i = getelementptr inbounds %struct.fw_filter, ptr %f.0101, i32 0, i32 4, i32 1
  %20 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %nr_actions.i, align 4
  %call.i = tail call i32 @tcf_action_exec(ptr noundef %skb, ptr noundef %19, i32 noundef %21, ptr noundef %res) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp37 = icmp slt i32 %call.i, 0
  br i1 %cmp37, label %if.end35.for.inc_crit_edge, label %if.end35.cleanup68_crit_edge

if.end35.cleanup68_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.inc:                                          ; preds = %if.end35.for.inc_crit_edge, %tcf_match_indev.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %22 = ptrtoint ptr %f.0101 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %f.0101, align 4
  %call46 = tail call i32 @rcu_read_lock_bh_held() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call46)
  %tobool47.not = icmp eq i32 %call46, 0
  br i1 %tobool47.not, label %land.lhs.true48, label %for.inc.do.end56_crit_edge

for.inc.do.end56_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56

land.lhs.true48:                                  ; preds = %for.inc
  %call49 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true48.do.end56_crit_edge, label %land.lhs.true51

land.lhs.true48.do.end56_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56

land.lhs.true51:                                  ; preds = %land.lhs.true48
  %.b9495 = load i1, ptr @fw_classify.__warned.3, align 1
  br i1 %.b9495, label %land.lhs.true51.do.end56_crit_edge, label %if.then53

land.lhs.true51.do.end56_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end56

if.then53:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_classify.__warned.3, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 62, ptr noundef nonnull @.str.1) #9
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %land.lhs.true51.do.end56_crit_edge, %land.lhs.true48.do.end56_crit_edge, %for.inc.do.end56_crit_edge
  %tobool28.not = icmp eq ptr %23, null
  br i1 %tobool28.not, label %do.end56.cleanup68_crit_edge, label %do.end56.for.body_crit_edge

do.end56.for.body_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end56.cleanup68_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

if.else:                                          ; preds = %do.end7
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %24 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chain, align 4
  %block = getelementptr inbounds %struct.tcf_chain, ptr %25, i32 0, i32 3
  %26 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %block, align 4
  %index.i.i = getelementptr inbounds %struct.tcf_block, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool.i.not.i = icmp eq i32 %29, 0
  br i1 %tobool.i.not.i, label %if.else.tcf_block_q.exit_crit_edge, label %do.end.i, !prof !79

if.else.tcf_block_q.exit_crit_edge:               ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_block_q.exit

do.end.i:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 75, i32 noundef 9, ptr noundef null) #9
  br label %tcf_block_q.exit

tcf_block_q.exit:                                 ; preds = %do.end.i, %if.else.tcf_block_q.exit_crit_edge
  %q.i = getelementptr inbounds %struct.tcf_block, ptr %27, i32 0, i32 6
  %30 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %q.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool59.not = icmp eq i32 %4, 0
  br i1 %tobool59.not, label %tcf_block_q.exit.cleanup68_crit_edge, label %land.lhs.true60

tcf_block_q.exit.cleanup68_crit_edge:             ; preds = %tcf_block_q.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

land.lhs.true60:                                  ; preds = %tcf_block_q.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %4)
  %cmp62 = icmp ult i32 %4, 65536
  br i1 %cmp62, label %land.lhs.true60.if.then65_crit_edge, label %lor.lhs.false

land.lhs.true60.if.then65_crit_edge:              ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65

lor.lhs.false:                                    ; preds = %land.lhs.true60
  %handle = getelementptr inbounds %struct.Qdisc, ptr %31, i32 0, i32 7
  %32 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %handle, align 32
  %xor = xor i32 %33, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %xor)
  %tobool64.not = icmp ult i32 %xor, 65536
  br i1 %tobool64.not, label %lor.lhs.false.if.then65_crit_edge, label %lor.lhs.false.cleanup68_crit_edge

lor.lhs.false.cleanup68_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup68

lor.lhs.false.if.then65_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then65

if.then65:                                        ; preds = %lor.lhs.false.if.then65_crit_edge, %land.lhs.true60.if.then65_crit_edge
  %classid = getelementptr inbounds %struct.anon.120, ptr %res, i32 0, i32 1
  %34 = ptrtoint ptr %classid to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %4, ptr %classid, align 4
  %35 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %res, align 4
  br label %cleanup68

cleanup68:                                        ; preds = %if.then65, %lor.lhs.false.cleanup68_crit_edge, %tcf_block_q.exit.cleanup68_crit_edge, %do.end56.cleanup68_crit_edge, %if.end35.cleanup68_crit_edge, %do.end26.cleanup68_crit_edge
  %retval.1 = phi i32 [ 0, %if.then65 ], [ -1, %lor.lhs.false.cleanup68_crit_edge ], [ -1, %tcf_block_q.exit.cleanup68_crit_edge ], [ -1, %do.end26.cleanup68_crit_edge ], [ %call.i, %if.end35.cleanup68_crit_edge ], [ -1, %do.end56.cleanup68_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @fw_init(ptr nocapture noundef readnone %tp) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_destroy(ptr nocapture noundef readonly %tp, i1 noundef zeroext %rtnl_held, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b78 = load i1, ptr @fw_destroy.__warned, align 1
  br i1 %.b78, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 133, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %for.cond.preheader

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %do.end
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %for.cond.preheader
  %h.079 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.fw_head, ptr %1, i32 0, i32 1, i32 %h.079
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %call8 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call8, label %while.cond.do.end17_crit_edge, label %land.lhs.true9

while.cond.do.end17_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.lhs.true9:                                   ; preds = %while.cond
  %call10 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %land.lhs.true9.do.end17_crit_edge, label %land.lhs.true12

land.lhs.true9.do.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %.b7477 = load i1, ptr @fw_destroy.__warned.6, align 1
  br i1 %.b7477, label %land.lhs.true12.do.end17_crit_edge, label %if.then14

land.lhs.true12.do.end17_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end17

if.then14:                                        ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_destroy.__warned.6, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 141, ptr noundef nonnull @.str.5) #9
  br label %do.end17

do.end17:                                         ; preds = %if.then14, %land.lhs.true12.do.end17_crit_edge, %land.lhs.true9.do.end17_crit_edge, %while.cond.do.end17_crit_edge
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp19.not = icmp eq ptr %3, null
  br i1 %cmp19.not, label %for.inc, label %do.body26

do.body26:                                        ; preds = %do.end17
  %call27 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call27, label %do.body26.do.end36_crit_edge, label %land.lhs.true28

do.body26.do.end36_crit_edge:                     ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

land.lhs.true28:                                  ; preds = %do.body26
  %call29 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %tobool30.not = icmp eq i32 %call29, 0
  br i1 %tobool30.not, label %land.lhs.true28.do.end36_crit_edge, label %land.lhs.true31

land.lhs.true28.do.end36_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

land.lhs.true31:                                  ; preds = %land.lhs.true28
  %.b7576 = load i1, ptr @fw_destroy.__warned.7, align 1
  br i1 %.b7576, label %land.lhs.true31.do.end36_crit_edge, label %if.then33

land.lhs.true31.do.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end36

if.then33:                                        ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_destroy.__warned.7, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 143, ptr noundef nonnull @.str.5) #9
  br label %do.end36

do.end36:                                         ; preds = %if.then33, %land.lhs.true31.do.end36_crit_edge, %land.lhs.true28.do.end36_crit_edge, %do.body26.do.end36_crit_edge
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %5, ptr %arrayidx, align 4
  %7 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chain.i, align 4
  %block.i = getelementptr inbounds %struct.tcf_chain, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %block.i, align 4
  %q1.i = getelementptr inbounds %struct.tcf_block, ptr %10, i32 0, i32 6
  %11 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %q1.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %do.end36.tcf_unbind_filter.exit_crit_edge, label %if.end.i

do.end36.tcf_unbind_filter.exit_crit_edge:        ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_unbind_filter.exit

if.end.i:                                         ; preds = %do.end36
  %res = getelementptr inbounds %struct.fw_filter, ptr %3, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #9
  %13 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #9, !srcloc !81
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %13, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.tcf_unbind_filter.exit_crit_edge, label %if.then.i.i

if.end.i.tcf_unbind_filter.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_unbind_filter.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i.i = getelementptr inbounds %struct.Qdisc, ptr %12, i32 0, i32 4
  %14 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ops.i.i, align 16
  %cl_ops.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %cl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cl_ops.i.i, align 4
  %unbind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %17, i32 0, i32 11
  %18 = ptrtoint ptr %unbind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %unbind_tcf.i.i, align 4
  tail call void %19(ptr noundef nonnull %12, i32 noundef %asmresult.i.i.i.i) #9
  br label %tcf_unbind_filter.exit

tcf_unbind_filter.exit:                           ; preds = %if.then.i.i, %if.end.i.tcf_unbind_filter.exit_crit_edge, %do.end36.tcf_unbind_filter.exit_crit_edge
  %exts = getelementptr inbounds %struct.fw_filter, ptr %3, i32 0, i32 4
  %call46 = tail call fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts)
  br i1 %call46, label %if.then47, label %if.else

if.then47:                                        ; preds = %tcf_unbind_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  %rwork = getelementptr inbounds %struct.fw_filter, ptr %3, i32 0, i32 6
  %call48 = tail call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @fw_delete_filter_work) #9
  br label %while.cond.backedge

if.else:                                          ; preds = %tcf_unbind_filter.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @__fw_delete_filter(ptr noundef nonnull %3)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %if.then47
  br label %while.cond

for.inc:                                          ; preds = %do.end17
  %inc = add nuw nsw i32 %h.079, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %do.end55, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.cond.preheader

do.end55:                                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  %rcu = getelementptr inbounds %struct.fw_head, ptr %1, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 1028 to ptr)) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %do.end.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fw_get(ptr nocapture noundef readonly %tp, i32 noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b45 = load i1, ptr @fw_get.__warned, align 1
  br i1 %.b45, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 91, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %do.body6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body6:                                         ; preds = %do.end
  %call7 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call7, label %do.body6.do.end16_crit_edge, label %land.lhs.true8

do.body6.do.end16_crit_edge:                      ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

land.lhs.true8:                                   ; preds = %do.body6
  %call9 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %land.lhs.true8.do.end16_crit_edge, label %land.lhs.true11

land.lhs.true8.do.end16_crit_edge:                ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

land.lhs.true11:                                  ; preds = %land.lhs.true8
  %.b4144 = load i1, ptr @fw_get.__warned.8, align 1
  br i1 %.b4144, label %land.lhs.true11.do.end16_crit_edge, label %if.then13

land.lhs.true11.do.end16_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end16

if.then13:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_get.__warned.8, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 97, ptr noundef nonnull @.str.5) #9
  br label %do.end16

do.end16:                                         ; preds = %if.then13, %land.lhs.true11.do.end16_crit_edge, %land.lhs.true8.do.end16_crit_edge, %do.body6.do.end16_crit_edge
  %shr.i = lshr i32 %handle, 16
  %xor.i = xor i32 %shr.i, %handle
  %shr1.i = lshr i32 %xor.i, 8
  %xor2.i = xor i32 %shr1.i, %xor.i
  %rem.i = and i32 %xor2.i, 255
  %arrayidx = getelementptr %struct.fw_head, ptr %1, i32 0, i32 1, i32 %rem.i
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %f.046 = load ptr, ptr %arrayidx, align 4
  %tobool19.not47 = icmp eq ptr %f.046, null
  br i1 %tobool19.not47, label %do.end16.cleanup_crit_edge, label %do.end16.for.body_crit_edge

do.end16.for.body_crit_edge:                      ; preds = %do.end16
  br label %for.body

do.end16.cleanup_crit_edge:                       ; preds = %do.end16
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body:                                         ; preds = %do.end33.for.body_crit_edge, %do.end16.for.body_crit_edge
  %f.048 = phi ptr [ %f.0, %do.end33.for.body_crit_edge ], [ %f.046, %do.end16.for.body_crit_edge ]
  %id = getelementptr inbounds %struct.fw_filter, ptr %f.048, i32 0, i32 1
  %3 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %handle)
  %cmp20 = icmp eq i32 %4, %handle
  br i1 %cmp20, label %for.body.cleanup_crit_edge, label %do.body23

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body23:                                        ; preds = %for.body
  %call24 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call24, label %do.body23.do.end33_crit_edge, label %land.lhs.true25

do.body23.do.end33_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

land.lhs.true25:                                  ; preds = %do.body23
  %call26 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true25.do.end33_crit_edge, label %land.lhs.true28

land.lhs.true25.do.end33_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %.b4243 = load i1, ptr @fw_get.__warned.9, align 1
  br i1 %.b4243, label %land.lhs.true28.do.end33_crit_edge, label %if.then30

land.lhs.true28.do.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end33

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_get.__warned.9, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 98, ptr noundef nonnull @.str.5) #9
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %land.lhs.true28.do.end33_crit_edge, %land.lhs.true25.do.end33_crit_edge, %do.body23.do.end33_crit_edge
  %5 = ptrtoint ptr %f.048 to i32
  call void @__asan_load4_noabort(i32 %5)
  %f.0 = load ptr, ptr %f.048, align 4
  %tobool19.not = icmp eq ptr %f.0, null
  br i1 %tobool19.not, label %do.end33.cleanup_crit_edge, label %do.end33.for.body_crit_edge

do.end33.for.body_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.end33.cleanup_crit_edge:                       ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

cleanup:                                          ; preds = %do.end33.cleanup_crit_edge, %for.body.cleanup_crit_edge, %do.end16.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end.cleanup_crit_edge ], [ null, %do.end16.cleanup_crit_edge ], [ %f.048, %for.body.cleanup_crit_edge ], [ null, %do.end33.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_change(ptr noundef %net, ptr nocapture noundef readnone %in_skb, ptr noundef %tp, i32 noundef %base, i32 noundef %handle, ptr nocapture noundef readonly %tca, ptr nocapture noundef %arg, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %tb = alloca [6 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b365 = load i1, ptr @fw_change.__warned, align 1
  br i1 %.b365, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 4
  %arrayidx = getelementptr ptr, ptr %tca, i32 2
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %tb) #9
  %6 = getelementptr inbounds [6 x ptr], ptr %tb, i32 0, i32 5
  %tobool4.not = icmp eq ptr %5, null
  %7 = call ptr @memset(ptr %tb, i32 255, i32 24)
  br i1 %tobool4.not, label %if.then5, label %if.end7

if.then5:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool6.not = icmp eq i32 %handle, 0
  %cond = select i1 %tobool6.not, i32 0, i32 -22
  br label %cleanup276

if.end7:                                          ; preds = %do.end
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %5, align 2
  %conv.i.i = zext i16 %9 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 5, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @fw_policy, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end7.cleanup276_crit_edge, label %if.end10

if.end7.cleanup276_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup276

if.end10:                                         ; preds = %if.end7
  %tobool11.not = icmp eq ptr %3, null
  br i1 %tobool11.not, label %if.end138, label %if.then12

if.then12:                                        ; preds = %if.end10
  %id = getelementptr inbounds %struct.fw_filter, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %handle)
  %cmp13.not = icmp eq i32 %11, %handle
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool15.not = icmp eq i32 %handle, 0
  %or.cond = or i1 %tobool15.not, %cmp13.not
  br i1 %or.cond, label %if.end17, label %if.then12.cleanup276_crit_edge

if.then12.cleanup276_crit_edge:                   ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup276

if.end17:                                         ; preds = %if.then12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %12 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %12, i32 noundef 3520, i32 noundef 108) #12
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.end17.cleanup276_crit_edge, label %if.end21

if.end17.cleanup276_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup276

if.end21:                                         ; preds = %if.end17
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %id23 = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %id23 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %id23, align 4
  %res = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i, i32 0, i32 2
  %res24 = getelementptr inbounds %struct.fw_filter, ptr %3, i32 0, i32 2
  %16 = ptrtoint ptr %res24 to i32
  call void @__asan_loadN_noabort(i32 %16, i32 8)
  %17 = load i64, ptr %res24, align 4
  %18 = ptrtoint ptr %res to i32
  call void @__asan_store8_noabort(i32 %18)
  store i64 %17, ptr %res, align 8
  %ifindex = getelementptr inbounds %struct.fw_filter, ptr %3, i32 0, i32 3
  %19 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ifindex, align 4
  %ifindex25 = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %ifindex25 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %ifindex25, align 8
  %tp26 = getelementptr inbounds %struct.fw_filter, ptr %3, i32 0, i32 5
  %22 = ptrtoint ptr %tp26 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %tp26, align 4
  %tp27 = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %tp27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %tp27, align 8
  %exts = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %exts to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %exts, align 4
  %nr_actions.i = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i, i32 0, i32 4, i32 1
  %26 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %nr_actions.i, align 8
  %net1.i = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i, i32 0, i32 4, i32 3
  %27 = ptrtoint ptr %net1.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %net, ptr %net1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 128) #12
  %actions.i = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i, i32 0, i32 4, i32 2
  %29 = ptrtoint ptr %actions.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call7.i.i.i.i, ptr %actions.i, align 4
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %if.then30, label %if.end31

if.then30:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup276

if.end31:                                         ; preds = %if.end21
  %action3.i = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i, i32 0, i32 4, i32 5
  %30 = ptrtoint ptr %action3.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 4, ptr %action3.i, align 8
  %police4.i = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i, i32 0, i32 4, i32 6
  %31 = ptrtoint ptr %police4.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 2, ptr %police4.i, align 4
  %call33 = call fastcc i32 @fw_set_parms(ptr noundef %net, ptr noundef %tp, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %tb, ptr noundef %tca, i32 noundef %base, i32 noundef %flags, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp34 = icmp slt i32 %call33, 0
  br i1 %cmp34, label %if.then35, label %if.end37

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  call void @tcf_exts_destroy(ptr noundef %exts) #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup276

if.end37:                                         ; preds = %if.end31
  %32 = ptrtoint ptr %id23 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %id23, align 4
  %shr.i = lshr i32 %33, 16
  %xor.i = xor i32 %shr.i, %33
  %shr1.i = lshr i32 %xor.i, 8
  %xor2.i = xor i32 %shr1.i, %xor.i
  %rem.i = and i32 %xor2.i, 255
  %arrayidx40 = getelementptr %struct.fw_head, ptr %1, i32 0, i32 1, i32 %rem.i
  %call42 = call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call42, label %if.end37.do.end51_crit_edge, label %land.lhs.true43

if.end37.do.end51_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51

land.lhs.true43:                                  ; preds = %if.end37
  %call44 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %tobool45.not = icmp eq i32 %call44, 0
  br i1 %tobool45.not, label %land.lhs.true43.do.end51_crit_edge, label %land.lhs.true46

land.lhs.true43.do.end51_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51

land.lhs.true46:                                  ; preds = %land.lhs.true43
  %.b359364 = load i1, ptr @fw_change.__warned.10, align 1
  br i1 %.b359364, label %land.lhs.true46.do.end51_crit_edge, label %if.then48

land.lhs.true46.do.end51_crit_edge:               ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end51

if.then48:                                        ; preds = %land.lhs.true46
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_change.__warned.10, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 287, ptr noundef nonnull @.str.5) #9
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %land.lhs.true46.do.end51_crit_edge, %land.lhs.true43.do.end51_crit_edge, %if.end37.do.end51_crit_edge
  %34 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %34)
  %pfp.0399 = load ptr, ptr %arrayidx40, align 4
  %tobool53.not400 = icmp eq ptr %pfp.0399, null
  %cmp54401 = icmp eq ptr %pfp.0399, %3
  %or.cond366402 = select i1 %tobool53.not400, i1 true, i1 %cmp54401
  br i1 %or.cond366402, label %do.end51.do.body75_crit_edge, label %do.end51.for.inc_crit_edge

do.end51.for.inc_crit_edge:                       ; preds = %do.end51
  br label %for.inc

do.end51.do.body75_crit_edge:                     ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body75

for.inc:                                          ; preds = %do.end67.for.inc_crit_edge, %do.end51.for.inc_crit_edge
  %pfp.0403 = phi ptr [ %pfp.0, %do.end67.for.inc_crit_edge ], [ %pfp.0399, %do.end51.for.inc_crit_edge ]
  %call58 = call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call58, label %for.inc.do.end67_crit_edge, label %land.lhs.true59

for.inc.do.end67_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true59:                                  ; preds = %for.inc
  %call60 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true59.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true59.do.end67_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true59
  %.b360363 = load i1, ptr @fw_change.__warned.11, align 1
  br i1 %.b360363, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_change.__warned.11, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 288, ptr noundef nonnull @.str.5) #9
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true59.do.end67_crit_edge, %for.inc.do.end67_crit_edge
  %35 = ptrtoint ptr %pfp.0403 to i32
  call void @__asan_load4_noabort(i32 %35)
  %pfp.0 = load ptr, ptr %pfp.0403, align 4
  %tobool53.not = icmp eq ptr %pfp.0, null
  %cmp54 = icmp eq ptr %pfp.0, %3
  %or.cond366 = select i1 %tobool53.not, i1 true, i1 %cmp54
  br i1 %or.cond366, label %do.end67.do.body75_crit_edge, label %do.end67.for.inc_crit_edge

do.end67.for.inc_crit_edge:                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

do.end67.do.body75_crit_edge:                     ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body75

do.body75:                                        ; preds = %do.end67.do.body75_crit_edge, %do.end51.do.body75_crit_edge
  %fp.0.lcssa = phi ptr [ %arrayidx40, %do.end51.do.body75_crit_edge ], [ %pfp.0403, %do.end67.do.body75_crit_edge ]
  %pfp.0.lcssa = phi ptr [ %pfp.0399, %do.end51.do.body75_crit_edge ], [ %pfp.0, %do.end67.do.body75_crit_edge ]
  %call76 = call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call76, label %do.body75.do.end85_crit_edge, label %land.lhs.true77

do.body75.do.end85_crit_edge:                     ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end85

land.lhs.true77:                                  ; preds = %do.body75
  %call78 = call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %land.lhs.true77.do.end85_crit_edge, label %land.lhs.true80

land.lhs.true77.do.end85_crit_edge:               ; preds = %land.lhs.true77
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end85

land.lhs.true80:                                  ; preds = %land.lhs.true77
  %.b361362 = load i1, ptr @fw_change.__warned.12, align 1
  br i1 %.b361362, label %land.lhs.true80.do.end85_crit_edge, label %if.then82

land.lhs.true80.do.end85_crit_edge:               ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end85

if.then82:                                        ; preds = %land.lhs.true80
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_change.__warned.12, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 292, ptr noundef nonnull @.str.5) #9
  br label %do.end85

do.end85:                                         ; preds = %if.then82, %land.lhs.true80.do.end85_crit_edge, %land.lhs.true77.do.end85_crit_edge, %do.body75.do.end85_crit_edge
  %36 = ptrtoint ptr %pfp.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pfp.0.lcssa, align 4
  %38 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %37, ptr %call7.i.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !83
  %39 = ptrtoint ptr %fp.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call7.i.i, ptr %fp.0.lcssa, align 4
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %40 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chain.i, align 4
  %block.i = getelementptr inbounds %struct.tcf_chain, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %block.i, align 4
  %q1.i = getelementptr inbounds %struct.tcf_block, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %q1.i, align 4
  %tobool.not.i367 = icmp eq ptr %45, null
  br i1 %tobool.not.i367, label %do.end85.tcf_unbind_filter.exit_crit_edge, label %if.end.i368

do.end85.tcf_unbind_filter.exit_crit_edge:        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_unbind_filter.exit

if.end.i368:                                      ; preds = %do.end85
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %res24, i32 noundef 4) #9
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  call void @llvm.prefetch.p0(ptr %res24, i32 1, i32 3, i32 1) #9
  %46 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res24) #9, !srcloc !81
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %46, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i368.tcf_unbind_filter.exit_crit_edge, label %if.then.i.i

if.end.i368.tcf_unbind_filter.exit_crit_edge:     ; preds = %if.end.i368
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_unbind_filter.exit

if.then.i.i:                                      ; preds = %if.end.i368
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i.i = getelementptr inbounds %struct.Qdisc, ptr %45, i32 0, i32 4
  %47 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i.i, align 16
  %cl_ops.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %cl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cl_ops.i.i, align 4
  %unbind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %unbind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %unbind_tcf.i.i, align 4
  call void %52(ptr noundef nonnull %45, i32 noundef %asmresult.i.i.i.i) #9
  br label %tcf_unbind_filter.exit

tcf_unbind_filter.exit:                           ; preds = %if.then.i.i, %if.end.i368.tcf_unbind_filter.exit_crit_edge, %do.end85.tcf_unbind_filter.exit_crit_edge
  %exts133 = getelementptr inbounds %struct.fw_filter, ptr %3, i32 0, i32 4
  %call134 = call fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts133)
  %rwork = getelementptr inbounds %struct.fw_filter, ptr %3, i32 0, i32 6
  %call135 = call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @fw_delete_filter_work) #9
  %53 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %call7.i.i, ptr %arg, align 4
  br label %cleanup276

if.end138:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool139.not = icmp eq i32 %handle, 0
  br i1 %tobool139.not, label %if.end138.cleanup276_crit_edge, label %if.end141

if.end138.cleanup276_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup276

if.end141:                                        ; preds = %if.end138
  %tobool142.not = icmp eq ptr %1, null
  br i1 %tobool142.not, label %if.then143, label %if.end141.if.end197_crit_edge

if.end141.if.end197_crit_edge:                    ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end197

if.then143:                                       ; preds = %if.end141
  %54 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %6, align 4
  %tobool145.not = icmp eq ptr %55, null
  br i1 %tobool145.not, label %if.then143.if.end149_crit_edge, label %if.then146

if.then143.if.end149_crit_edge:                   ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end149

if.then146:                                       ; preds = %if.then143
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i369 = getelementptr i8, ptr %55, i32 4
  %56 = ptrtoint ptr %add.ptr.i.i369 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr.i.i369, align 4
  br label %if.end149

if.end149:                                        ; preds = %if.then146, %if.then143.if.end149_crit_edge
  %mask.0 = phi i32 [ %57, %if.then146 ], [ -1, %if.then143.if.end149_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11) to i32))
  %58 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 11), align 4
  %call7.i.i371 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %58, i32 noundef 3520, i32 noundef 1036) #12
  %tobool151.not = icmp eq ptr %call7.i.i371, null
  br i1 %tobool151.not, label %if.end149.cleanup276_crit_edge, label %if.end153

if.end149.cleanup276_crit_edge:                   ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup276

if.end153:                                        ; preds = %if.end149
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %call7.i.i371 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %mask.0, ptr %call7.i.i371, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !84
  %60 = ptrtoint ptr %root to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %call7.i.i371, ptr %root, align 4
  br label %if.end197

if.end197:                                        ; preds = %if.end153, %if.end141.if.end197_crit_edge
  %head.0 = phi ptr [ %1, %if.end141.if.end197_crit_edge ], [ %call7.i.i371, %if.end153 ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %61 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i373 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %61, i32 noundef 3520, i32 noundef 108) #12
  %cmp199 = icmp eq ptr %call7.i.i373, null
  br i1 %cmp199, label %if.end197.cleanup276_crit_edge, label %if.end201

if.end197.cleanup276_crit_edge:                   ; preds = %if.end197
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup276

if.end201:                                        ; preds = %if.end197
  %exts202 = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i373, i32 0, i32 4
  %62 = ptrtoint ptr %exts202 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %exts202, align 4
  %nr_actions.i374 = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i373, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %nr_actions.i374 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %nr_actions.i374, align 8
  %net1.i375 = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i373, i32 0, i32 4, i32 3
  %64 = ptrtoint ptr %net1.i375 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %net, ptr %net1.i375, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %65 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i376 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %65, i32 noundef 3520, i32 noundef 128) #12
  %actions.i377 = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i373, i32 0, i32 4, i32 2
  %66 = ptrtoint ptr %actions.i377 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call7.i.i.i.i376, ptr %actions.i377, align 4
  %tobool.not.i378 = icmp eq ptr %call7.i.i.i.i376, null
  br i1 %tobool.not.i378, label %if.end201.errout_crit_edge, label %if.end206

if.end201.errout_crit_edge:                       ; preds = %if.end201
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout

if.end206:                                        ; preds = %if.end201
  %action3.i379 = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i373, i32 0, i32 4, i32 5
  %67 = ptrtoint ptr %action3.i379 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 4, ptr %action3.i379, align 8
  %police4.i380 = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i373, i32 0, i32 4, i32 6
  %68 = ptrtoint ptr %police4.i380 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 2, ptr %police4.i380, align 4
  %id207 = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i373, i32 0, i32 1
  %69 = ptrtoint ptr %id207 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %handle, ptr %id207, align 4
  %tp208 = getelementptr inbounds %struct.fw_filter, ptr %call7.i.i373, i32 0, i32 5
  %70 = ptrtoint ptr %tp208 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %tp, ptr %tp208, align 8
  %call210 = call fastcc i32 @fw_set_parms(ptr noundef %net, ptr noundef %tp, ptr noundef nonnull %call7.i.i373, ptr noundef nonnull %tb, ptr noundef %tca, i32 noundef %base, i32 noundef %flags, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call210)
  %cmp211 = icmp slt i32 %call210, 0
  br i1 %cmp211, label %if.end206.errout_crit_edge, label %do.body219

if.end206.errout_crit_edge:                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #11
  br label %errout

do.body219:                                       ; preds = %if.end206
  call void @__sanitizer_cov_trace_pc() #11
  %shr.i384 = lshr i32 %handle, 16
  %xor.i385 = xor i32 %shr.i384, %handle
  %shr1.i386 = lshr i32 %xor.i385, 8
  %xor2.i387 = xor i32 %shr1.i386, %xor.i385
  %rem.i388 = and i32 %xor2.i387, 255
  %arrayidx222 = getelementptr %struct.fw_head, ptr %head.0, i32 0, i32 1, i32 %rem.i388
  %71 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx222, align 4
  %73 = ptrtoint ptr %call7.i.i373 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %72, ptr %call7.i.i373, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !85
  %74 = ptrtoint ptr %arrayidx222 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %call7.i.i373, ptr %arrayidx222, align 4
  %75 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call7.i.i373, ptr %arg, align 4
  br label %cleanup276

errout:                                           ; preds = %if.end206.errout_crit_edge, %if.end201.errout_crit_edge
  %err.0 = phi i32 [ %call210, %if.end206.errout_crit_edge ], [ -12, %if.end201.errout_crit_edge ]
  call void @tcf_exts_destroy(ptr noundef %exts202) #9
  call void @kfree(ptr noundef nonnull %call7.i.i373) #9
  br label %cleanup276

cleanup276:                                       ; preds = %errout, %do.body219, %if.end197.cleanup276_crit_edge, %if.end149.cleanup276_crit_edge, %if.end138.cleanup276_crit_edge, %tcf_unbind_filter.exit, %if.then35, %if.then30, %if.end17.cleanup276_crit_edge, %if.then12.cleanup276_crit_edge, %if.end7.cleanup276_crit_edge, %if.then5
  %retval.2 = phi i32 [ %err.0, %errout ], [ 0, %do.body219 ], [ %cond, %if.then5 ], [ %call2.i, %if.end7.cleanup276_crit_edge ], [ -12, %if.then30 ], [ %call33, %if.then35 ], [ %call33, %tcf_unbind_filter.exit ], [ -22, %if.then12.cleanup276_crit_edge ], [ -105, %if.end17.cleanup276_crit_edge ], [ -22, %if.end138.cleanup276_crit_edge ], [ -105, %if.end197.cleanup276_crit_edge ], [ -105, %if.end149.cleanup276_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %tb) #9
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_delete(ptr nocapture noundef readonly %tp, ptr noundef %arg, ptr nocapture noundef writeonly %last, i1 noundef zeroext %rtnl_held, ptr nocapture noundef readnone %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b100 = load i1, ptr @fw_delete.__warned, align 1
  br i1 %.b100, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 157, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %cmp = icmp eq ptr %1, null
  %cmp4 = icmp eq ptr %arg, null
  %or.cond = or i1 %cmp4, %cmp
  br i1 %or.cond, label %do.end.out_crit_edge, label %if.end6

do.end.out_crit_edge:                             ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

if.end6:                                          ; preds = %do.end
  %id = getelementptr inbounds %struct.fw_filter, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  %shr.i = lshr i32 %3, 16
  %xor.i = xor i32 %shr.i, %3
  %shr1.i = lshr i32 %xor.i, 8
  %xor2.i = xor i32 %shr1.i, %xor.i
  %rem.i = and i32 %xor2.i, 255
  %arrayidx = getelementptr %struct.fw_head, ptr %1, i32 0, i32 1, i32 %rem.i
  %call9 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call9, label %if.end6.do.end18_crit_edge, label %land.lhs.true10

if.end6.do.end18_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

land.lhs.true10:                                  ; preds = %if.end6
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true10.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true10.do.end18_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %.b9499 = load i1, ptr @fw_delete.__warned.16, align 1
  br i1 %.b9499, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_delete.__warned.16, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 169, ptr noundef nonnull @.str.5) #9
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true10.do.end18_crit_edge, %if.end6.do.end18_crit_edge
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %pfp.0102 = load ptr, ptr %arrayidx, align 4
  %tobool20.not103 = icmp eq ptr %pfp.0102, null
  br i1 %tobool20.not103, label %do.end18.for.end_crit_edge, label %for.body.preheader

do.end18.for.end_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %do.end18
  %cmp21110 = icmp eq ptr %pfp.0102, %arg
  br i1 %cmp21110, label %for.body.preheader.do.body29_crit_edge, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  br label %for.inc

for.body.preheader.do.body29_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

for.body:                                         ; preds = %do.end61
  %cmp21 = icmp eq ptr %pfp.0, %arg
  br i1 %cmp21, label %for.body.do.body29_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

for.body.do.body29_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body29

do.body29:                                        ; preds = %for.body.do.body29_crit_edge, %for.body.preheader.do.body29_crit_edge
  %fp.0104.lcssa = phi ptr [ %arrayidx, %for.body.preheader.do.body29_crit_edge ], [ %pfp.0105111, %for.body.do.body29_crit_edge ]
  %call30 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call30, label %do.body29.do.end39_crit_edge, label %land.lhs.true31

do.body29.do.end39_crit_edge:                     ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39

land.lhs.true31:                                  ; preds = %do.body29
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true31.do.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %.b9598 = load i1, ptr @fw_delete.__warned.17, align 1
  br i1 %.b9598, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_delete.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 172, ptr noundef nonnull @.str.5) #9
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true31.do.end39_crit_edge, %do.body29.do.end39_crit_edge
  %5 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arg, align 4
  %7 = ptrtoint ptr %fp.0104.lcssa to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %6, ptr %fp.0104.lcssa, align 4
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %8 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chain.i, align 4
  %block.i = getelementptr inbounds %struct.tcf_chain, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block.i, align 4
  %q1.i = getelementptr inbounds %struct.tcf_block, ptr %11, i32 0, i32 6
  %12 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %q1.i, align 4
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %do.end39.tcf_unbind_filter.exit_crit_edge, label %if.end.i

do.end39.tcf_unbind_filter.exit_crit_edge:        ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_unbind_filter.exit

if.end.i:                                         ; preds = %do.end39
  %res = getelementptr inbounds %struct.fw_filter, ptr %arg, i32 0, i32 2
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #9
  %14 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #9, !srcloc !81
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %14, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.tcf_unbind_filter.exit_crit_edge, label %if.then.i.i

if.end.i.tcf_unbind_filter.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_unbind_filter.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i.i = getelementptr inbounds %struct.Qdisc, ptr %13, i32 0, i32 4
  %15 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ops.i.i, align 16
  %cl_ops.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %cl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %cl_ops.i.i, align 4
  %unbind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %18, i32 0, i32 11
  %19 = ptrtoint ptr %unbind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %unbind_tcf.i.i, align 4
  tail call void %20(ptr noundef nonnull %13, i32 noundef %asmresult.i.i.i.i) #9
  br label %tcf_unbind_filter.exit

tcf_unbind_filter.exit:                           ; preds = %if.then.i.i, %if.end.i.tcf_unbind_filter.exit_crit_edge, %do.end39.tcf_unbind_filter.exit_crit_edge
  %exts = getelementptr inbounds %struct.fw_filter, ptr %arg, i32 0, i32 4
  %call47 = tail call fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts)
  %rwork = getelementptr inbounds %struct.fw_filter, ptr %arg, i32 0, i32 6
  %call48 = tail call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @fw_delete_filter_work) #9
  br label %for.end

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %pfp.0105111 = phi ptr [ %pfp.0, %for.body.for.inc_crit_edge ], [ %pfp.0102, %for.body.preheader.for.inc_crit_edge ]
  %call52 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call52, label %for.inc.do.end61_crit_edge, label %land.lhs.true53

for.inc.do.end61_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end61

land.lhs.true53:                                  ; preds = %for.inc
  %call54 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %land.lhs.true53.do.end61_crit_edge, label %land.lhs.true56

land.lhs.true53.do.end61_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end61

land.lhs.true56:                                  ; preds = %land.lhs.true53
  %.b9697 = load i1, ptr @fw_delete.__warned.18, align 1
  br i1 %.b9697, label %land.lhs.true56.do.end61_crit_edge, label %if.then58

land.lhs.true56.do.end61_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end61

if.then58:                                        ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_delete.__warned.18, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 170, ptr noundef nonnull @.str.5) #9
  br label %do.end61

do.end61:                                         ; preds = %if.then58, %land.lhs.true56.do.end61_crit_edge, %land.lhs.true53.do.end61_crit_edge, %for.inc.do.end61_crit_edge
  %21 = ptrtoint ptr %pfp.0105111 to i32
  call void @__asan_load4_noabort(i32 %21)
  %pfp.0 = load ptr, ptr %pfp.0105111, align 4
  %tobool20.not = icmp eq ptr %pfp.0, null
  br i1 %tobool20.not, label %do.end61.for.end_crit_edge, label %for.body

do.end61.for.end_crit_edge:                       ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %do.end61.for.end_crit_edge, %tcf_unbind_filter.exit, %do.end18.for.end_crit_edge
  %ret.0 = phi i32 [ 0, %tcf_unbind_filter.exit ], [ -22, %do.end18.for.end_crit_edge ], [ -22, %do.end61.for.end_crit_edge ]
  %22 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %last, align 1
  br label %for.body65

for.cond63:                                       ; preds = %for.body65
  %inc = add nuw nsw i32 %h.0106, 1
  %exitcond.not = icmp eq i32 %inc, 256
  br i1 %exitcond.not, label %for.cond63.out_crit_edge, label %for.cond63.for.body65_crit_edge

for.cond63.for.body65_crit_edge:                  ; preds = %for.cond63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body65

for.cond63.out_crit_edge:                         ; preds = %for.cond63
  call void @__sanitizer_cov_trace_pc() #11
  br label %out

for.body65:                                       ; preds = %for.cond63.for.body65_crit_edge, %for.end
  %h.0106 = phi i32 [ 0, %for.end ], [ %inc, %for.cond63.for.body65_crit_edge ]
  %arrayidx71 = getelementptr %struct.fw_head, ptr %1, i32 0, i32 1, i32 %h.0106
  %23 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %arrayidx71, align 4
  %tobool73.not = icmp eq ptr %24, null
  br i1 %tobool73.not, label %for.cond63, label %if.then74

if.then74:                                        ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 0, ptr %last, align 1
  br label %out

out:                                              ; preds = %if.then74, %for.cond63.out_crit_edge, %do.end.out_crit_edge
  %ret.1 = phi i32 [ -22, %do.end.out_crit_edge ], [ %ret.0, %if.then74 ], [ %ret.0, %for.cond63.out_crit_edge ]
  ret i32 %ret.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_walk(ptr noundef %tp, ptr noundef %arg, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b74 = load i1, ptr @fw_walk.__warned, align 1
  br i1 %.b74, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_walk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 347, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %do.end.cleanup52.sink.split_crit_edge, label %if.end5

do.end.cleanup52.sink.split_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52.sink.split

if.end5:                                          ; preds = %do.end
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pr = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %tobool7.not = icmp eq i32 %.pr, 0
  br i1 %tobool7.not, label %for.cond.preheader, label %if.end5.cleanup52_crit_edge

if.end5.cleanup52_crit_edge:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

for.cond.preheader:                               ; preds = %if.end5
  %count = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc49.critedge.for.body_crit_edge, %for.cond.preheader
  %h.079 = phi i32 [ 0, %for.cond.preheader ], [ %inc50, %for.inc49.critedge.for.body_crit_edge ]
  %call12 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call12, label %for.body.do.end21_crit_edge, label %land.lhs.true13

for.body.do.end21_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

land.lhs.true13:                                  ; preds = %for.body
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true13.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true13.do.end21_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %.b7073 = load i1, ptr @fw_walk.__warned.19, align 1
  br i1 %.b7073, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_walk.__warned.19, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 359, ptr noundef nonnull @.str.5) #9
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true13.do.end21_crit_edge, %for.body.do.end21_crit_edge
  %arrayidx = getelementptr %struct.fw_head, ptr %1, i32 0, i32 1, i32 %h.079
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %f.076 = load ptr, ptr %arrayidx, align 4
  %tobool24.not77 = icmp eq ptr %f.076, null
  br i1 %tobool24.not77, label %do.end21.for.inc49.critedge_crit_edge, label %do.end21.for.body25_crit_edge

do.end21.for.body25_crit_edge:                    ; preds = %do.end21
  br label %for.body25

do.end21.for.inc49.critedge_crit_edge:            ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc49.critedge

for.body25:                                       ; preds = %do.end47.for.body25_crit_edge, %do.end21.for.body25_crit_edge
  %f.078 = phi ptr [ %f.0, %do.end47.for.body25_crit_edge ], [ %f.076, %do.end21.for.body25_crit_edge ]
  %4 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %count, align 4
  %6 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp26 = icmp slt i32 %5, %7
  br i1 %cmp26, label %for.body25.do.body37_crit_edge, label %if.end29

for.body25.do.body37_crit_edge:                   ; preds = %for.body25
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body37

if.end29:                                         ; preds = %for.body25
  %8 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fn, align 4
  %call30 = tail call i32 %9(ptr noundef %tp, ptr noundef nonnull %f.078, ptr noundef %arg) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp slt i32 %call30, 0
  br i1 %cmp31, label %if.end29.cleanup52.sink.split_crit_edge, label %if.end34

if.end29.cleanup52.sink.split_crit_edge:          ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52.sink.split

if.end34:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  br label %do.body37

do.body37:                                        ; preds = %if.end34, %for.body25.do.body37_crit_edge
  %storemerge.in = phi i32 [ %11, %if.end34 ], [ %5, %for.body25.do.body37_crit_edge ]
  %storemerge = add i32 %storemerge.in, 1
  %12 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %storemerge, ptr %count, align 4
  %call38 = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call38, label %do.body37.do.end47_crit_edge, label %land.lhs.true39

do.body37.do.end47_crit_edge:                     ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

land.lhs.true39:                                  ; preds = %do.body37
  %call40 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %land.lhs.true39.do.end47_crit_edge, label %land.lhs.true42

land.lhs.true39.do.end47_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

land.lhs.true42:                                  ; preds = %land.lhs.true39
  %.b7172 = load i1, ptr @fw_walk.__warned.20, align 1
  br i1 %.b7172, label %land.lhs.true42.do.end47_crit_edge, label %if.then44

land.lhs.true42.do.end47_crit_edge:               ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end47

if.then44:                                        ; preds = %land.lhs.true42
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_walk.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 360, ptr noundef nonnull @.str.5) #9
  br label %do.end47

do.end47:                                         ; preds = %if.then44, %land.lhs.true42.do.end47_crit_edge, %land.lhs.true39.do.end47_crit_edge, %do.body37.do.end47_crit_edge
  %13 = ptrtoint ptr %f.078 to i32
  call void @__asan_load4_noabort(i32 %13)
  %f.0 = load ptr, ptr %f.078, align 4
  %tobool24.not = icmp eq ptr %f.0, null
  br i1 %tobool24.not, label %do.end47.for.inc49.critedge_crit_edge, label %do.end47.for.body25_crit_edge

do.end47.for.body25_crit_edge:                    ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body25

do.end47.for.inc49.critedge_crit_edge:            ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc49.critedge

for.inc49.critedge:                               ; preds = %do.end47.for.inc49.critedge_crit_edge, %do.end21.for.inc49.critedge_crit_edge
  %inc50 = add nuw nsw i32 %h.079, 1
  %exitcond.not = icmp eq i32 %inc50, 256
  br i1 %exitcond.not, label %for.inc49.critedge.cleanup52_crit_edge, label %for.inc49.critedge.for.body_crit_edge

for.inc49.critedge.for.body_crit_edge:            ; preds = %for.inc49.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc49.critedge.cleanup52_crit_edge:           ; preds = %for.inc49.critedge
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup52

cleanup52.sink.split:                             ; preds = %if.end29.cleanup52.sink.split_crit_edge, %do.end.cleanup52.sink.split_crit_edge
  %14 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %arg, align 4
  br label %cleanup52

cleanup52:                                        ; preds = %cleanup52.sink.split, %for.inc49.critedge.cleanup52_crit_edge, %if.end5.cleanup52_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_bind_class(ptr noundef %fh, i32 noundef %classid, i32 noundef %cl, ptr noundef %q, i32 noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fh, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %res = getelementptr inbounds %struct.fw_filter, ptr %fh, i32 0, i32 2
  %classid1 = getelementptr inbounds %struct.fw_filter, ptr %fh, i32 0, i32 2, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %classid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %classid1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %classid)
  %cmp = icmp eq i32 %1, %classid
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cl)
  %tobool2.not = icmp eq i32 %cl, 0
  br i1 %tobool2.not, label %if.else, label %if.then3

if.then3:                                         ; preds = %if.then
  %ops.i = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 4
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 16
  %cl_ops.i = getelementptr inbounds %struct.Qdisc_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %cl_ops.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cl_ops.i, align 4
  %bind_tcf.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %bind_tcf.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bind_tcf.i, align 4
  %8 = ptrtoint ptr %classid1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %classid1, align 4
  %call.i = tail call i32 %7(ptr noundef %q, i32 noundef %base, i32 noundef %9) #9
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #9
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %call.i, ptr %res) #9, !srcloc !81
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i, label %if.then3.if.end6_crit_edge, label %if.then3.if.end6.sink.split_crit_edge

if.then3.if.end6.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6.sink.split

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.else:                                          ; preds = %if.then
  %call.i.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #9
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #9, !srcloc !81
  %asmresult.i.i.i12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i12)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i12, 0
  br i1 %cmp.not.i, label %if.else.if.end6_crit_edge, label %if.then.i16

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end6

if.then.i16:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %ops.i13 = getelementptr inbounds %struct.Qdisc, ptr %q, i32 0, i32 4
  br label %if.end6.sink.split

if.end6.sink.split:                               ; preds = %if.then.i16, %if.then3.if.end6.sink.split_crit_edge
  %ops.i13.sink = phi ptr [ %ops.i13, %if.then.i16 ], [ %ops.i, %if.then3.if.end6.sink.split_crit_edge ]
  %asmresult.i.i.i12.sink = phi i32 [ %asmresult.i.i.i12, %if.then.i16 ], [ %asmresult.i.i.i, %if.then3.if.end6.sink.split_crit_edge ]
  %12 = ptrtoint ptr %ops.i13.sink to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ops.i13.sink, align 16
  %cl_ops.i14 = getelementptr inbounds %struct.Qdisc_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %cl_ops.i14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cl_ops.i14, align 4
  %unbind_tcf.i15 = getelementptr inbounds %struct.Qdisc_class_ops, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %unbind_tcf.i15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %unbind_tcf.i15, align 4
  tail call void %17(ptr noundef %q, i32 noundef %asmresult.i.i.i12.sink) #9
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.else.if.end6_crit_edge, %if.then3.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fw_dump(ptr noundef %net, ptr nocapture noundef readonly %tp, ptr noundef %fh, ptr noundef %skb, ptr nocapture noundef writeonly %t, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  %tmp.i88 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b84 = load i1, ptr @fw_dump.__warned, align 1
  br i1 %.b84, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 377, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %cmp = icmp eq ptr %fh, null
  br i1 %cmp, label %if.then4, label %if.end5

if.then4:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len, align 4
  br label %cleanup56

if.end5:                                          ; preds = %do.end
  %id = getelementptr inbounds %struct.fw_filter, ptr %fh, i32 0, i32 1
  %4 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %id, align 4
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %t, i32 0, i32 4
  %6 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tcm_handle, align 4
  %classid = getelementptr inbounds %struct.fw_filter, ptr %fh, i32 0, i32 2, i32 0, i32 0, i32 1
  %7 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %classid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool6.not = icmp eq i32 %8, 0
  br i1 %tobool6.not, label %land.lhs.true7, label %if.end5.if.end11_crit_edge

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true7:                                   ; preds = %if.end5
  %nr_actions.i = getelementptr inbounds %struct.fw_filter, ptr %fh, i32 0, i32 4, i32 1
  %9 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_actions.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.i.not = icmp eq i32 %10, 0
  br i1 %tobool.i.not, label %if.then9, label %land.lhs.true7.if.end11_crit_edge

land.lhs.true7.if.end11_crit_edge:                ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %land.lhs.true7
  call void @__sanitizer_cov_trace_pc() #11
  %len10 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %11 = ptrtoint ptr %len10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len10, align 4
  br label %cleanup56

if.end11:                                         ; preds = %land.lhs.true7.if.end11_crit_edge, %if.end5.if.end11_crit_edge
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %13 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp1393 = icmp eq ptr %14, null
  %cmp13 = select i1 %cmp.i, i1 true, i1 %cmp1393
  br i1 %cmp13, label %if.end11.cleanup56_crit_edge, label %if.end15

if.end11.cleanup56_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup56

if.end15:                                         ; preds = %if.end11
  %15 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %classid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool18.not = icmp eq i32 %16, 0
  br i1 %tobool18.not, label %if.end15.if.end25_crit_edge, label %land.lhs.true19

if.end15.if.end25_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

land.lhs.true19:                                  ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %17 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool23.not = icmp eq i32 %call.i, 0
  br i1 %tobool23.not, label %land.lhs.true19.if.end25_crit_edge, label %land.lhs.true19.if.then.i.i_crit_edge

land.lhs.true19.if.then.i.i_crit_edge:            ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

land.lhs.true19.if.end25_crit_edge:               ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.end25:                                         ; preds = %land.lhs.true19.if.end25_crit_edge, %if.end15.if.end25_crit_edge
  %ifindex = getelementptr inbounds %struct.fw_filter, ptr %fh, i32 0, i32 3
  %18 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool26.not = icmp eq i32 %19, 0
  br i1 %tobool26.not, label %if.end25.if.end36_crit_edge, label %if.then27

if.end25.if.end36_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.then27:                                        ; preds = %if.end25
  %call29 = call ptr @__dev_get_by_index(ptr noundef %net, i32 noundef %19) #9
  %tobool30.not = icmp eq ptr %call29, null
  br i1 %tobool30.not, label %if.then27.if.end36_crit_edge, label %land.lhs.true31

if.then27.if.end36_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

land.lhs.true31:                                  ; preds = %if.then27
  %call.i86 = call i32 @strlen(ptr noundef nonnull %call29) #13
  %add.i = add i32 %call.i86, 1
  %call1.i87 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef %add.i, ptr noundef nonnull %call29) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i87)
  %tobool33.not = icmp eq i32 %call1.i87, 0
  br i1 %tobool33.not, label %land.lhs.true31.if.end36_crit_edge, label %land.lhs.true31.if.then.i.i_crit_edge

land.lhs.true31.if.then.i.i_crit_edge:            ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

land.lhs.true31.if.end36_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end36:                                         ; preds = %land.lhs.true31.if.end36_crit_edge, %if.then27.if.end36_crit_edge, %if.end25.if.end36_crit_edge
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %cmp37.not = icmp eq i32 %21, -1
  br i1 %cmp37.not, label %if.end36.if.end43_crit_edge, label %land.lhs.true38

if.end36.if.end43_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

land.lhs.true38:                                  ; preds = %if.end36
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i88) #9
  %22 = ptrtoint ptr %tmp.i88 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tmp.i88, align 4
  %call.i89 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i88) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i88) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i89)
  %tobool41.not = icmp eq i32 %call.i89, 0
  br i1 %tobool41.not, label %land.lhs.true38.if.end43_crit_edge, label %land.lhs.true38.if.then.i.i_crit_edge

land.lhs.true38.if.then.i.i_crit_edge:            ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

land.lhs.true38.if.end43_crit_edge:               ; preds = %land.lhs.true38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end43

if.end43:                                         ; preds = %land.lhs.true38.if.end43_crit_edge, %if.end36.if.end43_crit_edge
  %exts44 = getelementptr inbounds %struct.fw_filter, ptr %fh, i32 0, i32 4
  %call45 = call i32 @tcf_exts_dump(ptr noundef %skb, ptr noundef %exts44) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call45)
  %cmp46 = icmp slt i32 %call45, 0
  br i1 %cmp46, label %if.end43.if.then.i.i_crit_edge, label %if.end48

if.end43.if.then.i.i_crit_edge:                   ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end48:                                         ; preds = %if.end43
  %23 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %24 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %25 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv.i, ptr %14, align 2
  %call51 = call i32 @tcf_exts_dump_stats(ptr noundef %skb, ptr noundef %exts44) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %if.end48.if.then.i.i_crit_edge, label %if.end54

if.end48.if.then.i.i_crit_edge:                   ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.end54:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #11
  %len55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %26 = ptrtoint ptr %len55 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %len55, align 4
  br label %cleanup56

if.then.i.i:                                      ; preds = %if.end48.if.then.i.i_crit_edge, %if.end43.if.then.i.i_crit_edge, %land.lhs.true38.if.then.i.i_crit_edge, %land.lhs.true31.if.then.i.i_crit_edge, %land.lhs.true19.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %29, %14
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !86

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.21, i32 noundef 991, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %30 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %31 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #9
  br label %cleanup56

cleanup56:                                        ; preds = %if.end.i.i, %if.end54, %if.end11.cleanup56_crit_edge, %if.then9, %if.then4
  %retval.0 = phi i32 [ %3, %if.then4 ], [ %27, %if.end54 ], [ %12, %if.then9 ], [ -1, %if.end11.cleanup56_crit_edge ], [ -1, %if.end.i.i ]
  ret i32 %retval.0
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
declare dso_local i32 @tcf_action_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts) unnamed_addr #5 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  %net = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 3
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #9
  %2 = ptrtoint ptr %count.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %count.i, align 4
  br label %do.body.i.i.i.i

do.body.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, %entry
  %4 = phi i32 [ %3, %entry ], [ %asmresult3.i.i.i.i.i.i.i, %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge ]
  %5 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i.i.i.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i.i.i.i, label %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %do.cond.i.i.i.i

do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge:        ; preds = %do.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #9
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #9
  %6 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #9
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 %7, i32 %add.i.i.i.i, ptr elementtype(i32) %count.i) #9, !srcloc !87
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !79

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.maybe_get_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !79

if.end4.i.i.i.i.maybe_get_net.exit_crit_edge:     ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %maybe_get_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 0) #9
  br label %maybe_get_net.exit

maybe_get_net.exit:                               ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.maybe_get_net.exit_crit_edge
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.not.i = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #9
  %spec.select.i = select i1 %tobool12.i.i.i.not.i, ptr null, ptr %1
  %14 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select.i, ptr %net, align 4
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %maybe_get_net.exit.if.end_crit_edge, label %if.then

maybe_get_net.exit.if.end_crit_edge:              ; preds = %maybe_get_net.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %maybe_get_net.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ns_tracker = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 4
  %refcnt_tracker.i = getelementptr inbounds %struct.net, ptr %spec.select.i, i32 0, i32 15
  %call.i = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i, ptr noundef %ns_tracker, i32 noundef 3264) #9
  br label %if.end

if.end:                                           ; preds = %if.then, %maybe_get_net.exit.if.end_crit_edge
  %15 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %net, align 4
  %cmp = icmp ne ptr %16, null
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tcf_queue_work(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fw_delete_filter_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -52
  tail call void @rtnl_lock() #9
  tail call fastcc void @__fw_delete_filter(ptr noundef %add.ptr)
  tail call void @rtnl_unlock() #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__fw_delete_filter(ptr noundef %f) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %exts = getelementptr inbounds %struct.fw_filter, ptr %f, i32 0, i32 4
  tail call void @tcf_exts_destroy(ptr noundef %exts) #9
  %net.i = getelementptr inbounds %struct.fw_filter, ptr %f, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.tcf_exts_put_net.exit_crit_edge, label %if.then.i

entry.tcf_exts_put_net.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_exts_put_net.exit

if.then.i:                                        ; preds = %entry
  %ns_tracker.i = getelementptr inbounds %struct.fw_filter, ptr %f, i32 0, i32 4, i32 4
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 15
  %call.i.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %ns_tracker.i) #9
  %count.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !88
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #9
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #9, !srcloc !89
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !79

if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_exts_put_net.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef 3) #9
  br label %tcf_exts_put_net.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !90
  tail call void @__put_net(ptr noundef nonnull %1) #9
  br label %tcf_exts_put_net.exit

tcf_exts_put_net.exit:                            ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, %entry.tcf_exts_put_net.exit_crit_edge
  tail call void @kfree(ptr noundef %f) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_lock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @rtnl_unlock() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_exts_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fw_set_parms(ptr noundef %net, ptr noundef %tp, ptr noundef %f, ptr noundef %tb, ptr nocapture noundef readonly %tca, i32 noundef %base, i32 noundef %flags, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %indev.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #9
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b61 = load i1, ptr @fw_set_parms.__warned, align 1
  br i1 %.b61, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @fw_set_parms.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 204, ptr noundef nonnull @.str.5) #9
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %arrayidx = getelementptr ptr, ptr %tca, i32 5
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %exts = getelementptr inbounds %struct.fw_filter, ptr %f, i32 0, i32 4
  %call4 = tail call i32 @tcf_exts_validate(ptr noundef %net, ptr noundef %tp, ptr noundef %tb, ptr noundef %3, ptr noundef %exts, i32 noundef %flags, ptr noundef %extack) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %do.end.cleanup37_crit_edge, label %if.end6

do.end.cleanup37_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup37

if.end6:                                          ; preds = %do.end
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 1
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %if.end6.if.end13_crit_edge, label %if.then9

if.end6.if.end13_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then9:                                         ; preds = %if.end6
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %res = getelementptr inbounds %struct.fw_filter, ptr %f, i32 0, i32 2
  %classid = getelementptr inbounds %struct.fw_filter, ptr %f, i32 0, i32 2, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %classid to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %classid, align 4
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %9 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chain.i, align 4
  %block.i = getelementptr inbounds %struct.tcf_chain, ptr %10, i32 0, i32 3
  %11 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %block.i, align 4
  %q1.i = getelementptr inbounds %struct.tcf_block, ptr %12, i32 0, i32 6
  %13 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %q1.i, align 4
  %tobool.not.i = icmp eq ptr %14, null
  br i1 %tobool.not.i, label %if.then9.if.end13_crit_edge, label %if.end.i

if.then9.if.end13_crit_edge:                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.end.i:                                         ; preds = %if.then9
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %14, i32 0, i32 2
  %15 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %16, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end.i.sch_tree_lock.exit.i_crit_edge

if.end.i.sch_tree_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_lock.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  %dev_queue.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %14, i32 0, i32 9
  %17 = ptrtoint ptr %dev_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev_queue.i.i.i.i, align 8
  %qdisc_sleeping.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %qdisc_sleeping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %qdisc_sleeping.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !79

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef 596) #9
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %if.end.i.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %14, %if.end.i.sch_tree_lock.exit.i_crit_edge ], [ %20, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %20, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %20, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #9
  %ops.i.i = getelementptr inbounds %struct.Qdisc, ptr %14, i32 0, i32 4
  %21 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ops.i.i, align 16
  %cl_ops.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %cl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cl_ops.i.i, align 4
  %bind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %bind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bind_tcf.i.i, align 4
  %27 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %classid, align 4
  %call.i.i = tail call i32 %26(ptr noundef nonnull %14, i32 noundef %base, i32 noundef %28) #9
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !80
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #9
  %29 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %call.i.i, ptr %res) #9, !srcloc !81
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %29, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool.not.i5.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i5.i, label %sch_tree_lock.exit.i.__tcf_bind_filter.exit.i_crit_edge, label %if.then.i.i

sch_tree_lock.exit.i.__tcf_bind_filter.exit.i_crit_edge: ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %__tcf_bind_filter.exit.i

if.then.i.i:                                      ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %30 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ops.i.i, align 16
  %cl_ops3.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %cl_ops3.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %cl_ops3.i.i, align 4
  %unbind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %33, i32 0, i32 11
  %34 = ptrtoint ptr %unbind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %unbind_tcf.i.i, align 4
  tail call void %35(ptr noundef nonnull %14, i32 noundef %asmresult.i.i.i.i) #9
  br label %__tcf_bind_filter.exit.i

__tcf_bind_filter.exit.i:                         ; preds = %if.then.i.i, %sch_tree_lock.exit.i.__tcf_bind_filter.exit.i_crit_edge
  %36 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %flags.i.i, align 8
  %and.i7.i = and i32 %37, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7.i)
  %tobool.not.i8.i = icmp eq i32 %and.i7.i, 0
  br i1 %tobool.not.i8.i, label %if.else.i13.i, label %__tcf_bind_filter.exit.i.sch_tree_unlock.exit.i_crit_edge

__tcf_bind_filter.exit.i.sch_tree_unlock.exit.i_crit_edge: ; preds = %__tcf_bind_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_unlock.exit.i

if.else.i13.i:                                    ; preds = %__tcf_bind_filter.exit.i
  %dev_queue.i.i.i9.i = getelementptr inbounds %struct.Qdisc, ptr %14, i32 0, i32 9
  %38 = ptrtoint ptr %dev_queue.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev_queue.i.i.i9.i, align 8
  %qdisc_sleeping.i.i.i10.i = getelementptr inbounds %struct.netdev_queue, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %qdisc_sleeping.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %qdisc_sleeping.i.i.i10.i, align 4
  %call1.i.i11.i = tail call i32 @rtnl_is_locked() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i11.i)
  %tobool.not.i.i12.i = icmp eq i32 %call1.i.i11.i, 0
  br i1 %tobool.not.i.i12.i, label %land.rhs.i.i15.i, label %if.else.i13.i.sch_tree_unlock.exit.i_crit_edge

if.else.i13.i.sch_tree_unlock.exit.i_crit_edge:   ; preds = %if.else.i13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_unlock.exit.i

land.rhs.i.i15.i:                                 ; preds = %if.else.i13.i
  %.b41.i.i14.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i14.i, label %land.rhs.i.i15.i.sch_tree_unlock.exit.i_crit_edge, label %if.then.i.i16.i, !prof !79

land.rhs.i.i15.i.sch_tree_unlock.exit.i_crit_edge: ; preds = %land.rhs.i.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sch_tree_unlock.exit.i

if.then.i.i16.i:                                  ; preds = %land.rhs.i.i15.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.13, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, i32 noundef 596) #9
  br label %sch_tree_unlock.exit.i

sch_tree_unlock.exit.i:                           ; preds = %if.then.i.i16.i, %land.rhs.i.i15.i.sch_tree_unlock.exit.i_crit_edge, %if.else.i13.i.sch_tree_unlock.exit.i_crit_edge, %__tcf_bind_filter.exit.i.sch_tree_unlock.exit.i_crit_edge
  %.sink.i17.i = phi ptr [ %14, %__tcf_bind_filter.exit.i.sch_tree_unlock.exit.i_crit_edge ], [ %41, %if.else.i13.i.sch_tree_unlock.exit.i_crit_edge ], [ %41, %land.rhs.i.i15.i.sch_tree_unlock.exit.i_crit_edge ], [ %41, %if.then.i.i16.i ]
  %lock.i.i.i18.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i17.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i18.i) #9
  br label %if.end13

if.end13:                                         ; preds = %sch_tree_unlock.exit.i, %if.then9.if.end13_crit_edge, %if.end6.if.end13_crit_edge
  %arrayidx14 = getelementptr ptr, ptr %tb, i32 3
  %42 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %43, null
  br i1 %tobool15.not, label %if.end13.if.end22_crit_edge, label %if.then16

if.end13.if.end22_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.then16:                                        ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %indev.i) #9
  %44 = call ptr @memset(ptr %indev.i, i32 255, i32 16)
  %call.i = call i32 @nla_strscpy(ptr noundef nonnull %indev.i, ptr noundef nonnull %43, i32 noundef 16) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %if.then16
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_change_indev.__msg) #9
  %tobool.not.i62 = icmp eq ptr %extack, null
  br i1 %tobool.not.i62, label %do.body.i.tcf_change_indev.exit.thread_crit_edge, label %do.body.i.tcf_change_indev.exit.thread.sink.split_crit_edge

do.body.i.tcf_change_indev.exit.thread.sink.split_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_change_indev.exit.thread.sink.split

do.body.i.tcf_change_indev.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_change_indev.exit.thread

if.end2.i:                                        ; preds = %if.then16
  %call4.i = call ptr @__dev_get_by_name(ptr noundef %net, ptr noundef nonnull %indev.i) #9
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %do.body7.i, label %tcf_change_indev.exit

do.body7.i:                                       ; preds = %if.end2.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_change_indev.__msg.15) #9
  %tobool9.not.i = icmp eq ptr %extack, null
  br i1 %tobool9.not.i, label %do.body7.i.tcf_change_indev.exit.thread_crit_edge, label %do.body7.i.tcf_change_indev.exit.thread.sink.split_crit_edge

do.body7.i.tcf_change_indev.exit.thread.sink.split_crit_edge: ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_change_indev.exit.thread.sink.split

do.body7.i.tcf_change_indev.exit.thread_crit_edge: ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %tcf_change_indev.exit.thread

tcf_change_indev.exit.thread.sink.split:          ; preds = %do.body7.i.tcf_change_indev.exit.thread.sink.split_crit_edge, %do.body.i.tcf_change_indev.exit.thread.sink.split_crit_edge
  %tcf_change_indev.__msg.sink = phi ptr [ @tcf_change_indev.__msg, %do.body.i.tcf_change_indev.exit.thread.sink.split_crit_edge ], [ @tcf_change_indev.__msg.15, %do.body7.i.tcf_change_indev.exit.thread.sink.split_crit_edge ]
  %retval.0.i.ph.ph = phi i32 [ -22, %do.body.i.tcf_change_indev.exit.thread.sink.split_crit_edge ], [ -19, %do.body7.i.tcf_change_indev.exit.thread.sink.split_crit_edge ]
  %45 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %tcf_change_indev.__msg.sink, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %46 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %bad_attr.i, align 4
  %policy.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %47 = ptrtoint ptr %policy.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %policy.i, align 4
  br label %tcf_change_indev.exit.thread

tcf_change_indev.exit.thread:                     ; preds = %tcf_change_indev.exit.thread.sink.split, %do.body7.i.tcf_change_indev.exit.thread_crit_edge, %do.body.i.tcf_change_indev.exit.thread_crit_edge
  %retval.0.i.ph = phi i32 [ -19, %do.body7.i.tcf_change_indev.exit.thread_crit_edge ], [ -22, %do.body.i.tcf_change_indev.exit.thread_crit_edge ], [ %retval.0.i.ph.ph, %tcf_change_indev.exit.thread.sink.split ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %indev.i) #9
  br label %cleanup37

tcf_change_indev.exit:                            ; preds = %if.end2.i
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %call4.i, i32 0, i32 17
  %48 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ifindex.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %indev.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %cmp19 = icmp slt i32 %49, 0
  br i1 %cmp19, label %tcf_change_indev.exit.cleanup37_crit_edge, label %if.end21

tcf_change_indev.exit.cleanup37_crit_edge:        ; preds = %tcf_change_indev.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup37

if.end21:                                         ; preds = %tcf_change_indev.exit
  call void @__sanitizer_cov_trace_pc() #11
  %ifindex = getelementptr inbounds %struct.fw_filter, ptr %f, i32 0, i32 3
  %50 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %ifindex, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end21, %if.end13.if.end22_crit_edge
  %arrayidx23 = getelementptr ptr, ptr %tb, i32 5
  %51 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %arrayidx23, align 4
  %tobool24.not = icmp eq ptr %52, null
  br i1 %tobool24.not, label %if.else, label %if.then25

if.then25:                                        ; preds = %if.end22
  %add.ptr.i.i63 = getelementptr i8, ptr %52, i32 4
  %53 = ptrtoint ptr %add.ptr.i.i63 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %add.ptr.i.i63, align 4
  %55 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %cmp29.not = icmp eq i32 %54, %56
  br i1 %cmp29.not, label %if.then25.if.end36_crit_edge, label %if.then25.cleanup37_crit_edge

if.then25.cleanup37_crit_edge:                    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup37

if.then25.if.end36_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.else:                                          ; preds = %if.end22
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %58)
  %cmp33.not = icmp eq i32 %58, -1
  br i1 %cmp33.not, label %if.else.if.end36_crit_edge, label %if.else.cleanup37_crit_edge

if.else.cleanup37_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup37

if.else.if.end36_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end36:                                         ; preds = %if.else.if.end36_crit_edge, %if.then25.if.end36_crit_edge
  br label %cleanup37

cleanup37:                                        ; preds = %if.end36, %if.else.cleanup37_crit_edge, %if.then25.cleanup37_crit_edge, %tcf_change_indev.exit.cleanup37_crit_edge, %tcf_change_indev.exit.thread, %do.end.cleanup37_crit_edge
  %retval.1 = phi i32 [ 0, %if.end36 ], [ %call4, %do.end.cleanup37_crit_edge ], [ -22, %if.then25.cleanup37_crit_edge ], [ -22, %if.else.cleanup37_crit_edge ], [ %49, %tcf_change_indev.exit.cleanup37_crit_edge ], [ %retval.0.i.ph, %tcf_change_indev.exit.thread ]
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_validate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_dump_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_tcf_proto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !12, !13, !15, !17, !19, !21, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68}
!llvm.module.flags = !{!70, !71, !72, !73, !74, !75, !76, !77}
!llvm.ident = !{!78}

!0 = !{ptr @__initcall__kmod_cls_fw__388_458_init_fw6, !1, !"__initcall__kmod_cls_fw__388_458_init_fw6", i1 false, i1 false}
!1 = !{!"../net/sched/cls_fw.c", i32 458, i32 1}
!2 = !{ptr @__exitcall_exit_fw, !3, !"__exitcall_exit_fw", i1 false, i1 false}
!3 = !{!"../net/sched/cls_fw.c", i32 459, i32 1}
!4 = !{ptr @__UNIQUE_ID_file389, !5, !"__UNIQUE_ID_file389", i1 false, i1 false}
!5 = !{!"../net/sched/cls_fw.c", i32 460, i32 1}
!6 = !{ptr @__UNIQUE_ID_license390, !5, !"__UNIQUE_ID_license390", i1 false, i1 false}
!7 = !{ptr @cls_fw_ops, !8, !"cls_fw_ops", i1 false, i1 false}
!8 = !{!"../net/sched/cls_fw.c", i32 434, i32 29}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../net/sched/cls_fw.c", i32 53, i32 25}
!11 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.1, !10, !"<string literal>", i1 false, i1 false}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/sched/cls_fw.c", i32 61, i32 12}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/sched/cls_fw.c", i32 62, i32 12}
!17 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../include/net/pkt_cls.h", i32 75, i32 2}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/sched/cls_fw.c", i32 133, i32 25}
!21 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!22 = distinct !{null, !23, !"__warned", i1 false, i1 false}
!23 = !{!"../net/sched/cls_fw.c", i32 141, i32 15}
!24 = distinct !{null, !25, !"__warned", i1 false, i1 false}
!25 = !{!"../net/sched/cls_fw.c", i32 142, i32 4}
!26 = distinct !{null, !27, !"__warned", i1 false, i1 false}
!27 = !{!"../net/sched/cls_fw.c", i32 91, i32 25}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../net/sched/cls_fw.c", i32 97, i32 6}
!30 = distinct !{null, !31, !"__warned", i1 false, i1 false}
!31 = !{!"../net/sched/cls_fw.c", i32 98, i32 16}
!32 = distinct !{null, !33, !"__warned", i1 false, i1 false}
!33 = !{!"../net/sched/cls_fw.c", i32 242, i32 25}
!34 = distinct !{null, !35, !"__warned", i1 false, i1 false}
!35 = !{!"../net/sched/cls_fw.c", i32 287, i32 14}
!36 = distinct !{null, !37, !"__warned", i1 false, i1 false}
!37 = !{!"../net/sched/cls_fw.c", i32 288, i32 31}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../net/sched/cls_fw.c", i32 292, i32 3}
!40 = !{ptr @fw_policy, !41, !"fw_policy", i1 false, i1 false}
!41 = !{!"../net/sched/cls_fw.c", i32 193, i32 32}
!42 = distinct !{null, !43, !"__warned", i1 false, i1 false}
!43 = !{!"../net/sched/cls_fw.c", i32 204, i32 25}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!46 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @tcf_change_indev.__msg, !49, !"__msg", i1 false, i1 false}
!49 = !{!"../include/net/pkt_cls.h", i32 526, i32 3}
!50 = !{ptr @tcf_change_indev.__msg.15, !51, !"__msg", i1 false, i1 false}
!51 = !{!"../include/net/pkt_cls.h", i32 532, i32 3}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/sched/cls_fw.c", i32 157, i32 25}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../net/sched/cls_fw.c", i32 169, i32 13}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../net/sched/cls_fw.c", i32 172, i32 4}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../net/sched/cls_fw.c", i32 170, i32 30}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../net/sched/cls_fw.c", i32 347, i32 25}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../net/sched/cls_fw.c", i32 359, i32 12}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../net/sched/cls_fw.c", i32 360, i32 12}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../net/sched/cls_fw.c", i32 377, i32 25}
!68 = !{ptr @.str.21, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../include/net/netlink.h", i32 991, i32 3}
!70 = !{i32 1, !"wchar_size", i32 2}
!71 = !{i32 1, !"min_enum_size", i32 4}
!72 = !{i32 8, !"branch-target-enforcement", i32 0}
!73 = !{i32 8, !"sign-return-address", i32 0}
!74 = !{i32 8, !"sign-return-address-all", i32 0}
!75 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!76 = !{i32 7, !"uwtable", i32 1}
!77 = !{i32 7, !"frame-pointer", i32 2}
!78 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!79 = !{!"branch_weights", i32 2000, i32 1}
!80 = !{i64 2156388490}
!81 = !{i64 854768, i64 854785, i64 854809, i64 854835, i64 854853}
!82 = !{i64 2156388834}
!83 = !{i64 2156448689}
!84 = !{i64 2156455864}
!85 = !{i64 2156466523}
!86 = !{!"branch_weights", i32 1, i32 2000}
!87 = !{i64 832533, i64 832557, i64 832578, i64 832595, i64 832612}
!88 = !{i64 2148437555}
!89 = !{i64 2148351995, i64 2148352027, i64 2148352056, i64 2148352090, i64 2148352121, i64 2148352144}
!90 = !{i64 2149313669}
