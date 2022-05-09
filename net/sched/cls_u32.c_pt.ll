; ModuleID = '/llk/IR_all_yes/net/sched/cls_u32.c_pt.bc'
source_filename = "../net/sched/cls_u32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcf_proto_ops = type { %struct.list_head, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.5 }
%union.anon.5 = type { i32 }
%struct.cpumask = type { [1 x i32] }
%struct.anon.126 = type { ptr, i32 }
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
%struct.tc_u_hnode = type { ptr, i32, i32, i32, i32, %struct.idr, i8, %struct.callback_head, i32, [0 x ptr] }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tc_u_knode = type { ptr, i32, ptr, %struct.tcf_exts, i32, i8, %struct.tcf_result, ptr, ptr, i32, i32, i32, i32, ptr, %struct.rcu_work, %struct.tc_u32_sel }
%struct.tcf_exts = type { i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.tcf_result = type { %union.anon.119 }
%union.anon.119 = type { %struct.anon.120 }
%struct.anon.120 = type { i32, i32 }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tc_u32_sel = type { i8, i8, i8, i16, i16, i16, i16, i32, [0 x %struct.tc_u32_key] }
%struct.tc_u32_key = type { i32, i32, i32, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.tc_u32_pcnt = type { i64, i64, [0 x i64] }
%struct.tcf_chain = type { %struct.mutex, ptr, %struct.list_head, ptr, i32, i32, i32, i8, i8, ptr, ptr, %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, ptr, ptr, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.100, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.flow_block = type { %struct.list_head }
%struct.anon.100 = type { ptr, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.tc_u_common = type { ptr, ptr, i32, %struct.idr, %struct.hlist_node, i32 }
%struct.tc_cls_u32_offload = type { %struct.flow_cls_common_offload, i32, %union.anon.127 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%union.anon.127 = type { %struct.tc_cls_u32_knode }
%struct.tc_cls_u32_knode = type { ptr, ptr, ptr, i32, i32, i32, i32, i8 }
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
%struct.tc_u32_mark = type { i32, i32, i32 }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
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

@cls_u32_ops = internal global %struct.tcf_proto_ops { %struct.list_head zeroinitializer, [16 x i8] c"u32\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @u32_classify, ptr @u32_init, ptr @u32_destroy, ptr @u32_get, ptr null, ptr @u32_change, ptr @u32_delete, ptr null, ptr @u32_walk, ptr @u32_reoffload, ptr null, ptr null, ptr @u32_bind_class, ptr null, ptr null, ptr @u32_dump, ptr null, ptr null, ptr null, i32 0 }, section ".data..read_mostly", align 4
@tc_u_common_hash = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__initcall__kmod_cls_u32__420_1424_init_u326 = internal global ptr @init_u32, section ".initcall6.init", align 4
@__exitcall_exit_u32 = internal global ptr @exit_u32, section ".exitcall.exit", align 4
@__UNIQUE_ID_file421 = internal constant [31 x i8] c"cls_u32.file=net/sched/cls_u32\00", section ".modinfo", align 1
@__UNIQUE_ID_license422 = internal constant [20 x i8] c"cls_u32.license=GPL\00", section ".modinfo", align 1
@u32_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/sched/cls_u32.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@u32_classify.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@u32_classify.__warned.4 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_classify.__warned.5 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_classify.__warned.6 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_classify.__warned.7 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_classify.__warned.8 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_classify.__warned.9 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_classify.__warned.10 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_classify.__warned.11 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_classify.__warned.12 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_classify._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str, i32 250, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014cls_u32: dead loop\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"u32_classify\00", [19 x i8] zeroinitializer }, align 32
@u32_classify._entry_ptr = internal global ptr @u32_classify._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@u32_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.16 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@u32_destroy.__warned.17 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_destroy_hnode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_destroy_hnode.__warned.18 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_clear_hnode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_clear_hnode.__warned.19 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_destroy_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_lookup_ht.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_lookup_ht.__warned.20 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_lookup_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_lookup_key.__warned.21 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_change.__msg = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cls_u32: Filter handle requires options\00", [56 x i8] zeroinitializer }, align 32
@u32_policy = internal constant { [13 x %struct.nla_policy], [56 x i8] } { [13 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 0, i8 0, i16 16, %union.anon.5 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 16, %union.anon.5 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 0, i8 0, i16 12, %union.anon.5 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.5 zeroinitializer }, %struct.nla_policy zeroinitializer], [56 x i8] zeroinitializer }, align 32
@u32_change.__msg.22 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"cls_u32: Invalid filter flags\00", [34 x i8] zeroinitializer }, align 32
@u32_change.__msg.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"cls_u32: Key node id cannot be zero\00", [60 x i8] zeroinitializer }, align 32
@u32_change.__msg.24 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"cls_u32: Key node flags do not match passed flags\00", [46 x i8] zeroinitializer }, align 32
@u32_change.__msg.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"cls_u32: Divisor is not a power of 2\00", [59 x i8] zeroinitializer }, align 32
@u32_change.__msg.26 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"cls_u32: Exceeded maximum 256 hash buckets\00", [53 x i8] zeroinitializer }, align 32
@u32_change.__msg.27 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"cls_u32: Divisor can only be used on a hash table\00", [46 x i8] zeroinitializer }, align 32
@u32_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_change.__msg.28 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"cls_u32: Specified hash table not found\00", [56 x i8] zeroinitializer }, align 32
@u32_change.__warned.29 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_change.__msg.30 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"cls_u32: Specified hash table buckets exceed configured value\00", [34 x i8] zeroinitializer }, align 32
@u32_change.__msg.31 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"cls_u32: Handle specified hash table address mismatch\00", [42 x i8] zeroinitializer }, align 32
@u32_change.__msg.32 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cls_u32: Selector not specified\00", [32 x i8] zeroinitializer }, align 32
@u32_change.__warned.33 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_change.__warned.34 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_init_knode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_set_parms.__msg = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"cls_u32: u32 Link handle must be a hash table\00", [50 x i8] zeroinitializer }, align 32
@u32_set_parms.__msg.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"cls_u32: Link hash table not found\00", [61 x i8] zeroinitializer }, align 32
@u32_set_parms.__msg.36 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"cls_u32: Not linking to root node\00", [62 x i8] zeroinitializer }, align 32
@u32_set_parms.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@tcf_change_indev.__msg = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Interface name too long\00", [40 x i8] zeroinitializer }, align 32
@tcf_change_indev.__msg.39 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Network device not found\00", [39 x i8] zeroinitializer }, align 32
@u32_replace_hw_knode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_replace_knode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_replace_knode.__warned.40 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_replace_knode.__warned.41 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_delete.__msg = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"cls_u32: Not allowed to delete root node\00", [55 x i8] zeroinitializer }, align 32
@u32_delete.__msg.42 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"cls_u32: Can not delete in-use filter\00", [58 x i8] zeroinitializer }, align 32
@u32_delete_key.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_delete_key.__warned.43 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_delete_key.__warned.44 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_walk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_walk.__warned.45 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_walk.__warned.46 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_walk.__warned.47 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_reoffload.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_reoffload.__warned.48 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_reoffload.__warned.49 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_reoffload.__warned.50 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_reoffload_knode.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_dump.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@u32_dump.__warned.51 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@init_u32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str, i32 1395, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"\016u32 classifier\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"init_u32\00", [23 x i8] zeroinitializer }, align 32
@init_u32._entry_ptr = internal global ptr @init_u32._entry, section ".printk_index", align 4
@init_u32._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str, i32 1397, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\016    Performance counters on\0A\00", [33 x i8] zeroinitializer }, align 32
@init_u32._entry_ptr.57 = internal global ptr @init_u32._entry.55, section ".printk_index", align 4
@init_u32._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str, i32 1399, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\016    input device check on\0A\00", [35 x i8] zeroinitializer }, align 32
@init_u32._entry_ptr.60 = internal global ptr @init_u32._entry.58, section ".printk_index", align 4
@init_u32._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str, i32 1401, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016    Actions configured\0A\00", [38 x i8] zeroinitializer }, align 32
@init_u32._entry_ptr.63 = internal global ptr @init_u32._entry.61, section ".printk_index", align 4
@___asan_gen_.64 = private unnamed_addr constant [17 x i8] c"tc_u_common_hash\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 314, i32 27 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 111, i32 26 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 250, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.86, i32 378, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 623, i32 31 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 859, i32 4 }
@___asan_gen_.94 = private unnamed_addr constant [11 x i8] c"u32_policy\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 698, i32 32 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 874, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 884, i32 4 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 890, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 927, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 931, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 935, i32 4 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 984, i32 5 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 994, i32 3 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1000, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1012, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 727, i32 4 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 735, i32 5 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 739, i32 5 }
@___asan_gen_.140 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.140, i32 596, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 526, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant [25 x i8] c"../include/net/pkt_cls.h\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.146, i32 532, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 667, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant [6 x i8] c"__msg\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 674, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.155, i32 991, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1395, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1397, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1399, i32 2 }
@___asan_gen_.178 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.181 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.182 = private constant [23 x i8] c"../net/sched/cls_u32.c\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.182, i32 1401, i32 2 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__UNIQUE_ID_file421, ptr @__UNIQUE_ID_license422, ptr @__exitcall_exit_u32, ptr @__initcall__kmod_cls_u32__420_1424_init_u326, ptr @exit_u32, ptr @init_u32._entry, ptr @init_u32._entry.55, ptr @init_u32._entry.58, ptr @init_u32._entry.61, ptr @init_u32._entry_ptr, ptr @init_u32._entry_ptr.57, ptr @init_u32._entry_ptr.60, ptr @init_u32._entry_ptr.63, ptr @u32_classify._entry, ptr @u32_classify._entry_ptr, ptr @tc_u_common_hash, ptr @.str, ptr @.str.1, ptr @.str.13, ptr @.str.14, ptr @xa_init_flags.__key, ptr @.str.15, ptr @.str.16, ptr @u32_change.__msg, ptr @u32_policy, ptr @u32_change.__msg.22, ptr @u32_change.__msg.23, ptr @u32_change.__msg.24, ptr @u32_change.__msg.25, ptr @u32_change.__msg.26, ptr @u32_change.__msg.27, ptr @u32_change.__msg.28, ptr @u32_change.__msg.30, ptr @u32_change.__msg.31, ptr @u32_change.__msg.32, ptr @u32_set_parms.__msg, ptr @u32_set_parms.__msg.35, ptr @u32_set_parms.__msg.36, ptr @.str.37, ptr @.str.38, ptr @tcf_change_indev.__msg, ptr @tcf_change_indev.__msg.39, ptr @u32_delete.__msg, ptr @u32_delete.__msg.42, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tc_u_common_hash to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_classify._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_change.__msg to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_policy to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_change.__msg.22 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_change.__msg.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_change.__msg.24 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_change.__msg.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_change.__msg.26 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_change.__msg.27 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_change.__msg.28 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_change.__msg.30 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_change.__msg.31 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_change.__msg.32 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_set_parms.__msg to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_set_parms.__msg.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_set_parms.__msg.36 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_change_indev.__msg to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tcf_change_indev.__msg.39 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_delete.__msg to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @u32_delete.__msg.42 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_u32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_u32._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_u32._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_u32._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_u32() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @unregister_tcf_proto_ops(ptr noundef nonnull @cls_u32_ops) #13
  %0 = load ptr, ptr @tc_u_common_hash, align 4
  tail call void @kvfree(ptr noundef %0) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_tcf_proto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_u32() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.53) #16
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.56) #16
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.59) #16
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.62) #16
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef 4096, i32 noundef 3264, i32 noundef -1) #17
  store ptr %call.i.i, ptr @tc_u_common_hash, align 4
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.body.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %0 = call ptr @memset(ptr %call.i.i, i32 0, i32 4096)
  %call17 = tail call i32 @register_tcf_proto_ops(ptr noundef nonnull @cls_u32_ops) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %tobool18.not = icmp eq i32 %call17, 0
  br i1 %tobool18.not, label %for.body.preheader.cleanup_crit_edge, label %if.then19

for.body.preheader.cleanup_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then19:                                        ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  %1 = load ptr, ptr @tc_u_common_hash, align 4
  tail call void @kvfree(ptr noundef %1) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then19, %for.body.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %call17, %if.then19 ], [ 0, %for.body.preheader.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u32_classify(ptr noundef %skb, ptr noundef %tp, ptr noundef %res) #2 align 64 {
entry:
  %stack = alloca [8 x %struct.anon.126], align 4
  %hdata = alloca i32, align 4
  %hdata320 = alloca i32, align 4
  %hdata361 = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %stack) #13
  %0 = call ptr @memset(ptr %stack, i32 255, i32 64)
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %1 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load volatile ptr, ptr %root, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b540 = load i1, ptr @u32_classify.__warned, align 1
  br i1 %.b540, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 111, ptr noundef nonnull @.str.1) #13
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i = icmp eq ptr %skb, null
  %skb_iif.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  br label %next_ht

next_ht.loopexit:                                 ; preds = %if.end385.next_ht.loopexit_crit_edge, %if.end336.next_ht.loopexit_crit_edge
  %off2.0.ph = phi i32 [ %spec.select, %if.end385.next_ht.loopexit_crit_edge ], [ %off2.1.ph, %if.end336.next_ht.loopexit_crit_edge ]
  %off.0.ph = phi i32 [ %spec.select541, %if.end385.next_ht.loopexit_crit_edge ], [ %off.1.ph, %if.end336.next_ht.loopexit_crit_edge ]
  br label %next_ht

next_ht:                                          ; preds = %next_ht.loopexit, %do.end7
  %sel.0 = phi i32 [ 0, %do.end7 ], [ %sel.2, %next_ht.loopexit ]
  %off2.0 = phi i32 [ 0, %do.end7 ], [ %off2.0.ph, %next_ht.loopexit ]
  %sdepth.0 = phi i32 [ 0, %do.end7 ], [ %inc298, %next_ht.loopexit ]
  %off.0 = phi i32 [ %sub.ptr.sub.i, %do.end7 ], [ %off.0.ph, %next_ht.loopexit ]
  %ht.0 = phi ptr [ %2, %do.end7 ], [ %118, %next_ht.loopexit ]
  %arrayidx = getelementptr %struct.tc_u_hnode, ptr %ht.0, i32 0, i32 9, i32 %sel.0
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %arrayidx, align 4
  %call16 = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true18, label %next_ht.next_knode.outer.preheader_crit_edge

next_ht.next_knode.outer.preheader_crit_edge:     ; preds = %next_ht
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.outer.preheader

land.lhs.true18:                                  ; preds = %next_ht
  %call19 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true18.next_knode.outer.preheader_crit_edge, label %land.lhs.true21

land.lhs.true18.next_knode.outer.preheader_crit_edge: ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.outer.preheader

land.lhs.true21:                                  ; preds = %land.lhs.true18
  %.b519539 = load i1, ptr @u32_classify.__warned.2, align 1
  br i1 %.b519539, label %land.lhs.true21.next_knode.outer.preheader_crit_edge, label %land.lhs.true21.next_knode.outer.sink.split_crit_edge

land.lhs.true21.next_knode.outer.sink.split_crit_edge: ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.outer.sink.split

land.lhs.true21.next_knode.outer.preheader_crit_edge: ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.outer.preheader

next_knode.outer.sink.split:                      ; preds = %land.lhs.true283.next_knode.outer.sink.split_crit_edge, %land.lhs.true263.next_knode.outer.sink.split_crit_edge, %land.lhs.true217.next_knode.outer.sink.split_crit_edge, %land.lhs.true21.next_knode.outer.sink.split_crit_edge
  %u32_classify.__warned.10.sink.sink = phi ptr [ @u32_classify.__warned.2, %land.lhs.true21.next_knode.outer.sink.split_crit_edge ], [ @u32_classify.__warned.9, %land.lhs.true263.next_knode.outer.sink.split_crit_edge ], [ @u32_classify.__warned.8, %land.lhs.true217.next_knode.outer.sink.split_crit_edge ], [ @u32_classify.__warned.10, %land.lhs.true283.next_knode.outer.sink.split_crit_edge ]
  %.sink.sink = phi i32 [ 123, %land.lhs.true21.next_knode.outer.sink.split_crit_edge ], [ 183, %land.lhs.true263.next_knode.outer.sink.split_crit_edge ], [ 175, %land.lhs.true217.next_knode.outer.sink.split_crit_edge ], [ 189, %land.lhs.true283.next_knode.outer.sink.split_crit_edge ]
  %off2.1.ph.ph = phi i32 [ %off2.0, %land.lhs.true21.next_knode.outer.sink.split_crit_edge ], [ %off2.2, %land.lhs.true263.next_knode.outer.sink.split_crit_edge ], [ %off2.2, %land.lhs.true217.next_knode.outer.sink.split_crit_edge ], [ %off2.2, %land.lhs.true283.next_knode.outer.sink.split_crit_edge ]
  %sdepth.1.ph.ph = phi i32 [ %sdepth.0, %land.lhs.true21.next_knode.outer.sink.split_crit_edge ], [ %sdepth.2, %land.lhs.true263.next_knode.outer.sink.split_crit_edge ], [ %sdepth.2, %land.lhs.true217.next_knode.outer.sink.split_crit_edge ], [ %sdepth.2, %land.lhs.true283.next_knode.outer.sink.split_crit_edge ]
  %n.0.ph.ph = phi ptr [ %11, %land.lhs.true21.next_knode.outer.sink.split_crit_edge ], [ %112, %land.lhs.true263.next_knode.outer.sink.split_crit_edge ], [ %94, %land.lhs.true217.next_knode.outer.sink.split_crit_edge ], [ %114, %land.lhs.true283.next_knode.outer.sink.split_crit_edge ]
  %off.1.ph.ph = phi i32 [ %off.0, %land.lhs.true21.next_knode.outer.sink.split_crit_edge ], [ %off.2, %land.lhs.true263.next_knode.outer.sink.split_crit_edge ], [ %off.2, %land.lhs.true217.next_knode.outer.sink.split_crit_edge ], [ %off.2, %land.lhs.true283.next_knode.outer.sink.split_crit_edge ]
  %12 = ptrtoint ptr %u32_classify.__warned.10.sink.sink to i32
  call void @__asan_store1_noabort(i32 %12)
  store i1 true, ptr %u32_classify.__warned.10.sink.sink, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef %.sink.sink, ptr noundef nonnull @.str.1) #13
  br label %next_knode.outer.preheader

next_knode.outer.preheader:                       ; preds = %next_knode.outer.sink.split, %land.lhs.true21.next_knode.outer.preheader_crit_edge, %land.lhs.true18.next_knode.outer.preheader_crit_edge, %next_ht.next_knode.outer.preheader_crit_edge
  %off2.1.ph.ph670 = phi i32 [ %off2.1.ph.ph, %next_knode.outer.sink.split ], [ %off2.0, %next_ht.next_knode.outer.preheader_crit_edge ], [ %off2.0, %land.lhs.true18.next_knode.outer.preheader_crit_edge ], [ %off2.0, %land.lhs.true21.next_knode.outer.preheader_crit_edge ]
  %sdepth.1.ph.ph671 = phi i32 [ %sdepth.1.ph.ph, %next_knode.outer.sink.split ], [ %sdepth.0, %next_ht.next_knode.outer.preheader_crit_edge ], [ %sdepth.0, %land.lhs.true18.next_knode.outer.preheader_crit_edge ], [ %sdepth.0, %land.lhs.true21.next_knode.outer.preheader_crit_edge ]
  %n.0.ph.ph672 = phi ptr [ %n.0.ph.ph, %next_knode.outer.sink.split ], [ %11, %next_ht.next_knode.outer.preheader_crit_edge ], [ %11, %land.lhs.true18.next_knode.outer.preheader_crit_edge ], [ %11, %land.lhs.true21.next_knode.outer.preheader_crit_edge ]
  %off.1.ph.ph673 = phi i32 [ %off.1.ph.ph, %next_knode.outer.sink.split ], [ %off.0, %next_ht.next_knode.outer.preheader_crit_edge ], [ %off.0, %land.lhs.true18.next_knode.outer.preheader_crit_edge ], [ %off.0, %land.lhs.true21.next_knode.outer.preheader_crit_edge ]
  br label %next_knode.outer

next_knode.outer:                                 ; preds = %next_knode.outer.backedge, %next_knode.outer.preheader
  %off2.1.ph = phi i32 [ %off2.1.ph.ph670, %next_knode.outer.preheader ], [ %off2.2, %next_knode.outer.backedge ]
  %sdepth.1.ph = phi i32 [ %sdepth.1.ph.ph671, %next_knode.outer.preheader ], [ %sdepth.2, %next_knode.outer.backedge ]
  %n.0.ph = phi ptr [ %n.0.ph.ph672, %next_knode.outer.preheader ], [ %n.0.ph.be, %next_knode.outer.backedge ]
  %off.1.ph = phi i32 [ %off.1.ph.ph673, %next_knode.outer.preheader ], [ %off.2, %next_knode.outer.backedge ]
  %tobool28.not636 = icmp eq ptr %n.0.ph, null
  br i1 %tobool28.not636, label %next_knode.outer.if.end398_crit_edge, label %next_knode.outer.if.then29_crit_edge

next_knode.outer.if.then29_crit_edge:             ; preds = %next_knode.outer
  br label %if.then29

next_knode.outer.if.end398_crit_edge:             ; preds = %next_knode.outer
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end398

if.then29:                                        ; preds = %next_knode.backedge.if.then29_crit_edge, %next_knode.outer.if.then29_crit_edge
  %n.0637 = phi ptr [ %n.0.be, %next_knode.backedge.if.then29_crit_edge ], [ %n.0.ph, %next_knode.outer.if.then29_crit_edge ]
  %keys = getelementptr inbounds %struct.tc_u_knode, ptr %n.0637, i32 1
  %pf = getelementptr inbounds %struct.tc_u_knode, ptr %n.0637, i32 0, i32 8
  %13 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pf, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = call i32 @llvm.read_register.i32(metadata !179) #13
  %and.i = and i32 %16, -16384
  %17 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %17, i32 0, i32 3
  %18 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cpu, align 4
  %arrayidx43 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %19
  %20 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx43, align 4
  %add = add i32 %21, %15
  %22 = inttoptr i32 %add to ptr
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load8_noabort(i32 %23)
  %24 = load i64, ptr %22, align 8
  %add44 = add i64 %24, 1
  store i64 %add44, ptr %22, align 8
  %flags = getelementptr inbounds %struct.tc_u_knode, ptr %n.0637, i32 0, i32 9
  %25 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flags, align 4
  %and.i543 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i543)
  %tobool.i.not = icmp eq i32 %and.i543, 0
  br i1 %tobool.i.not, label %if.end68, label %if.then50

if.then50:                                        ; preds = %if.then29
  %27 = ptrtoint ptr %n.0637 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %n.0637, align 4
  %call56 = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call56)
  %tobool57.not = icmp eq i32 %call56, 0
  br i1 %tobool57.not, label %land.lhs.true58, label %if.then50.next_knode.backedge_crit_edge

if.then50.next_knode.backedge_crit_edge:          ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.backedge

land.lhs.true58:                                  ; preds = %if.then50
  %call59 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %land.lhs.true58.next_knode.backedge_crit_edge, label %land.lhs.true61

land.lhs.true58.next_knode.backedge_crit_edge:    ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.backedge

land.lhs.true61:                                  ; preds = %land.lhs.true58
  %.b520538 = load i1, ptr @u32_classify.__warned.4, align 1
  br i1 %.b520538, label %land.lhs.true61.next_knode.backedge_crit_edge, label %if.then63

land.lhs.true61.next_knode.backedge_crit_edge:    ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.backedge

if.then63:                                        ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_classify.__warned.4, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 135, ptr noundef nonnull @.str.1) #13
  br label %next_knode.backedge

next_knode.backedge:                              ; preds = %cleanup, %if.then83, %land.lhs.true81.next_knode.backedge_crit_edge, %land.lhs.true78.next_knode.backedge_crit_edge, %if.then69.next_knode.backedge_crit_edge, %if.then63, %land.lhs.true61.next_knode.backedge_crit_edge, %land.lhs.true58.next_knode.backedge_crit_edge, %if.then50.next_knode.backedge_crit_edge
  %n.0.be = phi ptr [ %70, %cleanup ], [ %28, %if.then63 ], [ %28, %land.lhs.true61.next_knode.backedge_crit_edge ], [ %28, %land.lhs.true58.next_knode.backedge_crit_edge ], [ %28, %if.then50.next_knode.backedge_crit_edge ], [ %36, %if.then83 ], [ %36, %land.lhs.true81.next_knode.backedge_crit_edge ], [ %36, %land.lhs.true78.next_knode.backedge_crit_edge ], [ %36, %if.then69.next_knode.backedge_crit_edge ]
  %tobool28.not = icmp eq ptr %n.0.be, null
  br i1 %tobool28.not, label %next_knode.backedge.if.end398_crit_edge, label %next_knode.backedge.if.then29_crit_edge

next_knode.backedge.if.then29_crit_edge:          ; preds = %next_knode.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then29

next_knode.backedge.if.end398_crit_edge:          ; preds = %next_knode.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end398

if.end68:                                         ; preds = %if.then29
  %29 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %9, align 4
  %mask = getelementptr inbounds %struct.tc_u_knode, ptr %n.0637, i32 0, i32 12
  %31 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mask, align 4
  %and = and i32 %32, %30
  %val = getelementptr inbounds %struct.tc_u_knode, ptr %n.0637, i32 0, i32 11
  %33 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %34)
  %cmp.not = icmp eq i32 %and, %34
  br i1 %cmp.not, label %if.else, label %if.then69

if.then69:                                        ; preds = %if.end68
  %35 = ptrtoint ptr %n.0637 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %n.0637, align 4
  %call76 = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76)
  %tobool77.not = icmp eq i32 %call76, 0
  br i1 %tobool77.not, label %land.lhs.true78, label %if.then69.next_knode.backedge_crit_edge

if.then69.next_knode.backedge_crit_edge:          ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.backedge

land.lhs.true78:                                  ; preds = %if.then69
  %call79 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %land.lhs.true78.next_knode.backedge_crit_edge, label %land.lhs.true81

land.lhs.true78.next_knode.backedge_crit_edge:    ; preds = %land.lhs.true78
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.backedge

land.lhs.true81:                                  ; preds = %land.lhs.true78
  %.b521537 = load i1, ptr @u32_classify.__warned.5, align 1
  br i1 %.b521537, label %land.lhs.true81.next_knode.backedge_crit_edge, label %if.then83

land.lhs.true81.next_knode.backedge_crit_edge:    ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.backedge

if.then83:                                        ; preds = %land.lhs.true81
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_classify.__warned.5, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 141, ptr noundef nonnull @.str.1) #13
  br label %next_knode.backedge

if.else:                                          ; preds = %if.end68
  %pcpu_success = getelementptr inbounds %struct.tc_u_knode, ptr %n.0637, i32 0, i32 13
  %37 = ptrtoint ptr %pcpu_success to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %pcpu_success, align 4
  %39 = ptrtoint ptr %38 to i32
  %40 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu, align 4
  %arrayidx103 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx103, align 4
  %add104 = add i32 %43, %39
  %44 = inttoptr i32 %add104 to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %add105 = add i32 %46, 1
  store i32 %add105, ptr %44, align 4
  %nkeys = getelementptr inbounds %struct.tc_u_knode, ptr %n.0637, i32 0, i32 15, i32 2
  %47 = ptrtoint ptr %nkeys to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %nkeys, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %cmp112631.not = icmp eq i8 %48, 0
  br i1 %cmp112631.not, label %if.else.for.end_crit_edge, label %for.body.lr.ph

if.else.for.end_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.else
  %conv = zext i8 %48 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %j.0634 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %key.0632 = phi ptr [ %keys, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %off114 = getelementptr inbounds %struct.tc_u32_key, ptr %key.0632, i32 0, i32 2
  %49 = ptrtoint ptr %off114 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %off114, align 4
  %add115 = add i32 %50, %off.1.ph
  %offmask = getelementptr inbounds %struct.tc_u32_key, ptr %key.0632, i32 0, i32 3
  %51 = ptrtoint ptr %offmask to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %offmask, align 4
  %and116 = and i32 %52, %off2.1.ph
  %add117 = add i32 %add115, %and116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdata) #13
  %53 = ptrtoint ptr %hdata to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -1, ptr %hdata, align 4, !annotation !189
  %54 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data.i, align 4
  %56 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i545 = ptrtoint ptr %55 to i32
  %sub.ptr.rhs.cast.i546 = ptrtoint ptr %57 to i32
  %sub.ptr.sub.i547 = add i32 %add117, %sub.ptr.lhs.cast.i545
  %add119 = sub i32 %sub.ptr.sub.i547, %sub.ptr.rhs.cast.i546
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add119)
  %cmp120 = icmp slt i32 %add119, 0
  br i1 %cmp120, label %for.body.cleanup.thread_crit_edge, label %if.end123

for.body.cleanup.thread_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end123:                                        ; preds = %for.body
  %58 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %len.i.i, align 4
  %60 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %data_len.i.i, align 8
  %62 = add i32 %add117, %61
  %sub.i4.i = sub i32 %59, %62
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 4
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !190

if.end.i.i:                                       ; preds = %if.end123
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup.thread_crit_edge:              ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add117, ptr noundef nonnull %hdata, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup.thread_crit_edge, label %lor.lhs.false.i.i.if.end127_crit_edge

lor.lhs.false.i.i.if.end127_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127

lor.lhs.false.i.i.cleanup.thread_crit_edge:       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

skb_header_pointer.exit:                          ; preds = %if.end123
  %add.ptr.i.i549 = getelementptr i8, ptr %55, i32 %add117
  %tobool125.not = icmp eq ptr %add.ptr.i.i549, null
  br i1 %tobool125.not, label %skb_header_pointer.exit.cleanup.thread_crit_edge, label %skb_header_pointer.exit.if.end127_crit_edge

skb_header_pointer.exit.if.end127_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end127

skb_header_pointer.exit.cleanup.thread_crit_edge: ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

if.end127:                                        ; preds = %skb_header_pointer.exit.if.end127_crit_edge, %lor.lhs.false.i.i.if.end127_crit_edge
  %retval.0.i.i587 = phi ptr [ %add.ptr.i.i549, %skb_header_pointer.exit.if.end127_crit_edge ], [ %hdata, %lor.lhs.false.i.i.if.end127_crit_edge ]
  %63 = ptrtoint ptr %retval.0.i.i587 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %retval.0.i.i587, align 4
  %val128 = getelementptr inbounds %struct.tc_u32_key, ptr %key.0632, i32 0, i32 1
  %65 = ptrtoint ptr %val128 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %val128, align 4
  %xor = xor i32 %66, %64
  %67 = ptrtoint ptr %key.0632 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %key.0632, align 4
  %and130 = and i32 %xor, %68
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and130)
  %tobool131.not = icmp eq i32 %and130, 0
  br i1 %tobool131.not, label %for.inc, label %if.then132

if.then132:                                       ; preds = %if.end127
  %69 = ptrtoint ptr %n.0637 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %n.0637, align 4
  %call139 = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %land.lhs.true141, label %if.then132.cleanup_crit_edge

if.then132.cleanup_crit_edge:                     ; preds = %if.then132
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true141:                                 ; preds = %if.then132
  %call142 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %land.lhs.true141.cleanup_crit_edge, label %land.lhs.true144

land.lhs.true141.cleanup_crit_edge:               ; preds = %land.lhs.true141
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

land.lhs.true144:                                 ; preds = %land.lhs.true141
  %.b522536 = load i1, ptr @u32_classify.__warned.6, align 1
  br i1 %.b522536, label %land.lhs.true144.cleanup_crit_edge, label %if.then146

land.lhs.true144.cleanup_crit_edge:               ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then146:                                       ; preds = %land.lhs.true144
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_classify.__warned.6, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 159, ptr noundef nonnull @.str.1) #13
  br label %cleanup

cleanup.thread:                                   ; preds = %skb_header_pointer.exit.cleanup.thread_crit_edge, %lor.lhs.false.i.i.cleanup.thread_crit_edge, %if.end.i.i.cleanup.thread_crit_edge, %for.body.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdata) #13
  br label %cleanup436

cleanup:                                          ; preds = %if.then146, %land.lhs.true144.cleanup_crit_edge, %land.lhs.true141.cleanup_crit_edge, %if.then132.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdata) #13
  br label %next_knode.backedge

for.inc:                                          ; preds = %if.end127
  %71 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %pf, align 4
  %arrayidx165 = getelementptr %struct.tc_u32_pcnt, ptr %72, i32 0, i32 2, i32 %j.0634
  %73 = ptrtoint ptr %arrayidx165 to i32
  %74 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %cpu, align 4
  %arrayidx169 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %75
  %76 = ptrtoint ptr %arrayidx169 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx169, align 4
  %add170 = add i32 %77, %73
  %78 = inttoptr i32 %add170 to ptr
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %78, align 8
  %add171 = add i64 %80, 1
  store i64 %add171, ptr %78, align 8
  %inc = add nuw nsw i32 %j.0634, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdata) #13
  %incdec.ptr = getelementptr %struct.tc_u32_key, ptr %key.0632, i32 1
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.else.for.end_crit_edge
  %ht_down = getelementptr inbounds %struct.tc_u_knode, ptr %n.0637, i32 0, i32 7
  %81 = ptrtoint ptr %ht_down to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load volatile ptr, ptr %ht_down, align 4
  %call183 = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call183)
  %tobool184.not = icmp eq i32 %call183, 0
  br i1 %tobool184.not, label %land.lhs.true185, label %for.end.do.end193_crit_edge

for.end.do.end193_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end193

land.lhs.true185:                                 ; preds = %for.end
  %call186 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call186)
  %tobool187.not = icmp eq i32 %call186, 0
  br i1 %tobool187.not, label %land.lhs.true185.do.end193_crit_edge, label %land.lhs.true188

land.lhs.true185.do.end193_crit_edge:             ; preds = %land.lhs.true185
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end193

land.lhs.true188:                                 ; preds = %land.lhs.true185
  %.b523535 = load i1, ptr @u32_classify.__warned.7, align 1
  br i1 %.b523535, label %land.lhs.true188.do.end193_crit_edge, label %if.then190

land.lhs.true188.do.end193_crit_edge:             ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end193

if.then190:                                       ; preds = %land.lhs.true188
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_classify.__warned.7, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 168, ptr noundef nonnull @.str.1) #13
  br label %do.end193

do.end193:                                        ; preds = %if.then190, %land.lhs.true188.do.end193_crit_edge, %land.lhs.true185.do.end193_crit_edge, %for.end.do.end193_crit_edge
  %tobool195.not = icmp eq ptr %82, null
  br i1 %tobool195.not, label %do.end193.check_terminal_crit_edge, label %if.end290

do.end193.check_terminal_crit_edge:               ; preds = %do.end193
  call void @__sanitizer_cov_trace_pc() #15
  br label %check_terminal

check_terminal:                                   ; preds = %do.end419, %do.end193.check_terminal_crit_edge
  %off2.2 = phi i32 [ %off2.7, %do.end419 ], [ %off2.1.ph, %do.end193.check_terminal_crit_edge ]
  %sdepth.2 = phi i32 [ %dec399, %do.end419 ], [ %sdepth.1.ph, %do.end193.check_terminal_crit_edge ]
  %n.3 = phi ptr [ %165, %do.end419 ], [ %n.0637, %do.end193.check_terminal_crit_edge ]
  %off.2 = phi i32 [ %169, %do.end419 ], [ %off.1.ph, %do.end193.check_terminal_crit_edge ]
  %sel197 = getelementptr inbounds %struct.tc_u_knode, ptr %n.3, i32 0, i32 15
  %83 = ptrtoint ptr %sel197 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %sel197, align 4
  %85 = and i8 %84, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %85)
  %tobool201.not = icmp eq i8 %85, 0
  br i1 %tobool201.not, label %if.end271, label %if.then202

if.then202:                                       ; preds = %check_terminal
  %res203 = getelementptr inbounds %struct.tc_u_knode, ptr %n.3, i32 0, i32 6
  %86 = ptrtoint ptr %res203 to i32
  call void @__asan_loadN_noabort(i32 %86, i32 8)
  %87 = load i64, ptr %res203, align 4
  %88 = ptrtoint ptr %res to i32
  call void @__asan_storeN_noabort(i32 %88, i32 8)
  store i64 %87, ptr %res, align 4
  %ifindex = getelementptr inbounds %struct.tc_u_knode, ptr %n.3, i32 0, i32 4
  %89 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %tobool.not.i = icmp eq i32 %90, 0
  br i1 %tobool.not.i, label %if.then202.if.end224_crit_edge, label %tcf_match_indev.exit

if.then202.if.end224_crit_edge:                   ; preds = %if.then202
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end224

tcf_match_indev.exit:                             ; preds = %if.then202
  %91 = ptrtoint ptr %skb_iif.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %skb_iif.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %92)
  %tobool1.not.i = icmp ne i32 %92, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %92, i32 %90)
  %cmp.i = icmp eq i32 %92, %90
  %spec.select.i = and i1 %tobool1.not.i, %cmp.i
  br i1 %spec.select.i, label %tcf_match_indev.exit.if.end224_crit_edge, label %if.then205

tcf_match_indev.exit.if.end224_crit_edge:         ; preds = %tcf_match_indev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end224

if.then205:                                       ; preds = %tcf_match_indev.exit
  %93 = ptrtoint ptr %n.3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile ptr, ptr %n.3, align 4
  %call212 = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call212)
  %tobool213.not = icmp eq i32 %call212, 0
  br i1 %tobool213.not, label %land.lhs.true214, label %if.then205.next_knode.outer.backedge_crit_edge

if.then205.next_knode.outer.backedge_crit_edge:   ; preds = %if.then205
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.outer.backedge

land.lhs.true214:                                 ; preds = %if.then205
  %call215 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call215)
  %tobool216.not = icmp eq i32 %call215, 0
  br i1 %tobool216.not, label %land.lhs.true214.next_knode.outer.backedge_crit_edge, label %land.lhs.true217

land.lhs.true214.next_knode.outer.backedge_crit_edge: ; preds = %land.lhs.true214
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.outer.backedge

land.lhs.true217:                                 ; preds = %land.lhs.true214
  %.b524530 = load i1, ptr @u32_classify.__warned.8, align 1
  br i1 %.b524530, label %land.lhs.true217.next_knode.outer.backedge_crit_edge, label %land.lhs.true217.next_knode.outer.sink.split_crit_edge

land.lhs.true217.next_knode.outer.sink.split_crit_edge: ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.outer.sink.split

land.lhs.true217.next_knode.outer.backedge_crit_edge: ; preds = %land.lhs.true217
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.outer.backedge

if.end224:                                        ; preds = %tcf_match_indev.exit.if.end224_crit_edge, %if.then202.if.end224_crit_edge
  %pf237 = getelementptr inbounds %struct.tc_u_knode, ptr %n.3, i32 0, i32 8
  %95 = ptrtoint ptr %pf237 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %pf237, align 4
  %rhit = getelementptr inbounds %struct.tc_u32_pcnt, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %rhit to i32
  %98 = call i32 @llvm.read_register.i32(metadata !179) #13
  %and.i550 = and i32 %98, -16384
  %99 = inttoptr i32 %and.i550 to ptr
  %cpu240 = getelementptr inbounds %struct.thread_info, ptr %99, i32 0, i32 3
  %100 = ptrtoint ptr %cpu240 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %cpu240, align 4
  %arrayidx241 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %101
  %102 = ptrtoint ptr %arrayidx241 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx241, align 4
  %add242 = add i32 %103, %97
  %104 = inttoptr i32 %add242 to ptr
  %105 = ptrtoint ptr %104 to i32
  call void @__asan_load8_noabort(i32 %105)
  %106 = load i64, ptr %104, align 8
  %add243 = add i64 %106, 1
  store i64 %add243, ptr %104, align 8
  %actions.i = getelementptr inbounds %struct.tc_u_knode, ptr %n.3, i32 0, i32 3, i32 2
  %107 = ptrtoint ptr %actions.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %actions.i, align 4
  %nr_actions.i = getelementptr inbounds %struct.tc_u_knode, ptr %n.3, i32 0, i32 3, i32 1
  %109 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %nr_actions.i, align 4
  %call.i = call i32 @tcf_action_exec(ptr noundef %skb, ptr noundef %108, i32 noundef %110, ptr noundef %res) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp249 = icmp slt i32 %call.i, 0
  br i1 %cmp249, label %if.then251, label %if.end224.cleanup436_crit_edge

if.end224.cleanup436_crit_edge:                   ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup436

if.then251:                                       ; preds = %if.end224
  %111 = ptrtoint ptr %n.3 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load volatile ptr, ptr %n.3, align 4
  %call258 = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call258)
  %tobool259.not = icmp eq i32 %call258, 0
  br i1 %tobool259.not, label %land.lhs.true260, label %if.then251.next_knode.outer.backedge_crit_edge

if.then251.next_knode.outer.backedge_crit_edge:   ; preds = %if.then251
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.outer.backedge

land.lhs.true260:                                 ; preds = %if.then251
  %call261 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call261)
  %tobool262.not = icmp eq i32 %call261, 0
  br i1 %tobool262.not, label %land.lhs.true260.next_knode.outer.backedge_crit_edge, label %land.lhs.true263

land.lhs.true260.next_knode.outer.backedge_crit_edge: ; preds = %land.lhs.true260
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.outer.backedge

land.lhs.true263:                                 ; preds = %land.lhs.true260
  %.b525531 = load i1, ptr @u32_classify.__warned.9, align 1
  br i1 %.b525531, label %land.lhs.true263.next_knode.outer.backedge_crit_edge, label %land.lhs.true263.next_knode.outer.sink.split_crit_edge

land.lhs.true263.next_knode.outer.sink.split_crit_edge: ; preds = %land.lhs.true263
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.outer.sink.split

land.lhs.true263.next_knode.outer.backedge_crit_edge: ; preds = %land.lhs.true263
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.outer.backedge

if.end271:                                        ; preds = %check_terminal
  %113 = ptrtoint ptr %n.3 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load volatile ptr, ptr %n.3, align 4
  %call278 = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call278)
  %tobool279.not = icmp eq i32 %call278, 0
  br i1 %tobool279.not, label %land.lhs.true280, label %if.end271.next_knode.outer.backedge_crit_edge

if.end271.next_knode.outer.backedge_crit_edge:    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.outer.backedge

next_knode.outer.backedge:                        ; preds = %land.lhs.true283.next_knode.outer.backedge_crit_edge, %land.lhs.true280.next_knode.outer.backedge_crit_edge, %if.end271.next_knode.outer.backedge_crit_edge, %land.lhs.true263.next_knode.outer.backedge_crit_edge, %land.lhs.true260.next_knode.outer.backedge_crit_edge, %if.then251.next_knode.outer.backedge_crit_edge, %land.lhs.true217.next_knode.outer.backedge_crit_edge, %land.lhs.true214.next_knode.outer.backedge_crit_edge, %if.then205.next_knode.outer.backedge_crit_edge
  %n.0.ph.be = phi ptr [ %114, %if.end271.next_knode.outer.backedge_crit_edge ], [ %114, %land.lhs.true280.next_knode.outer.backedge_crit_edge ], [ %114, %land.lhs.true283.next_knode.outer.backedge_crit_edge ], [ %112, %if.then251.next_knode.outer.backedge_crit_edge ], [ %112, %land.lhs.true260.next_knode.outer.backedge_crit_edge ], [ %112, %land.lhs.true263.next_knode.outer.backedge_crit_edge ], [ %94, %if.then205.next_knode.outer.backedge_crit_edge ], [ %94, %land.lhs.true214.next_knode.outer.backedge_crit_edge ], [ %94, %land.lhs.true217.next_knode.outer.backedge_crit_edge ]
  br label %next_knode.outer

land.lhs.true280:                                 ; preds = %if.end271
  %call281 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call281)
  %tobool282.not = icmp eq i32 %call281, 0
  br i1 %tobool282.not, label %land.lhs.true280.next_knode.outer.backedge_crit_edge, label %land.lhs.true283

land.lhs.true280.next_knode.outer.backedge_crit_edge: ; preds = %land.lhs.true280
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.outer.backedge

land.lhs.true283:                                 ; preds = %land.lhs.true280
  %.b526529 = load i1, ptr @u32_classify.__warned.10, align 1
  br i1 %.b526529, label %land.lhs.true283.next_knode.outer.backedge_crit_edge, label %land.lhs.true283.next_knode.outer.sink.split_crit_edge

land.lhs.true283.next_knode.outer.sink.split_crit_edge: ; preds = %land.lhs.true283
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.outer.sink.split

land.lhs.true283.next_knode.outer.backedge_crit_edge: ; preds = %land.lhs.true283
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_knode.outer.backedge

if.end290:                                        ; preds = %do.end193
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %sdepth.1.ph)
  %cmp291 = icmp sgt i32 %sdepth.1.ph, 7
  br i1 %cmp291, label %do.body424, label %if.end294

if.end294:                                        ; preds = %if.end290
  %arrayidx295 = getelementptr [8 x %struct.anon.126], ptr %stack, i32 0, i32 %sdepth.1.ph
  %115 = ptrtoint ptr %arrayidx295 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr %n.0637, ptr %arrayidx295, align 4
  %off297 = getelementptr [8 x %struct.anon.126], ptr %stack, i32 0, i32 %sdepth.1.ph, i32 1
  %116 = ptrtoint ptr %off297 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %off.1.ph, ptr %off297, align 4
  %inc298 = add nsw i32 %sdepth.1.ph, 1
  %117 = ptrtoint ptr %ht_down to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load volatile ptr, ptr %ht_down, align 4
  %call305 = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call305)
  %tobool306.not = icmp eq i32 %call305, 0
  br i1 %tobool306.not, label %land.lhs.true307, label %if.end294.do.end315_crit_edge

if.end294.do.end315_crit_edge:                    ; preds = %if.end294
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end315

land.lhs.true307:                                 ; preds = %if.end294
  %call308 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call308)
  %tobool309.not = icmp eq i32 %call308, 0
  br i1 %tobool309.not, label %land.lhs.true307.do.end315_crit_edge, label %land.lhs.true310

land.lhs.true307.do.end315_crit_edge:             ; preds = %land.lhs.true307
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end315

land.lhs.true310:                                 ; preds = %land.lhs.true307
  %.b527534 = load i1, ptr @u32_classify.__warned.11, align 1
  br i1 %.b527534, label %land.lhs.true310.do.end315_crit_edge, label %if.then312

land.lhs.true310.do.end315_crit_edge:             ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end315

if.then312:                                       ; preds = %land.lhs.true310
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_classify.__warned.11, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 200, ptr noundef nonnull @.str.1) #13
  br label %do.end315

do.end315:                                        ; preds = %if.then312, %land.lhs.true310.do.end315_crit_edge, %land.lhs.true307.do.end315_crit_edge, %if.end294.do.end315_crit_edge
  %divisor = getelementptr inbounds %struct.tc_u_hnode, ptr %118, i32 0, i32 4
  %119 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %divisor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %120)
  %tobool317.not = icmp eq i32 %120, 0
  br i1 %tobool317.not, label %do.end315.if.end336_crit_edge, label %if.then318

do.end315.if.end336_crit_edge:                    ; preds = %do.end315
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end336

if.then318:                                       ; preds = %do.end315
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %hdata320) #13
  %121 = ptrtoint ptr %hdata320 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 -1, ptr %hdata320, align 4, !annotation !189
  %hoff = getelementptr inbounds %struct.tc_u_knode, ptr %n.0637, i32 0, i32 15, i32 6
  %122 = ptrtoint ptr %hoff to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %hoff, align 2
  %conv322 = sext i16 %123 to i32
  %add323 = add i32 %off.1.ph, %conv322
  %124 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %len.i.i, align 4
  %126 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %data_len.i.i, align 8
  %128 = add i32 %add323, %127
  %sub.i4.i553 = sub i32 %125, %128
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i553)
  %cmp.not.i.i554 = icmp slt i32 %sub.i4.i553, 4
  br i1 %cmp.not.i.i554, label %if.end.i.i559, label %skb_header_pointer.exit565, !prof !190

if.end.i.i559:                                    ; preds = %if.then318
  br i1 %tobool2.not.i.i, label %if.end.i.i559.cleanup332.thread_crit_edge, label %lor.lhs.false.i.i563

if.end.i.i559.cleanup332.thread_crit_edge:        ; preds = %if.end.i.i559
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup332.thread

lor.lhs.false.i.i563:                             ; preds = %if.end.i.i559
  %call.i.i560 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add323, ptr noundef nonnull %hdata320, i32 noundef 4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i560)
  %cmp3.i.i561 = icmp slt i32 %call.i.i560, 0
  br i1 %cmp3.i.i561, label %lor.lhs.false.i.i563.cleanup332.thread_crit_edge, label %lor.lhs.false.i.i563.cleanup332_crit_edge

lor.lhs.false.i.i563.cleanup332_crit_edge:        ; preds = %lor.lhs.false.i.i563
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup332

lor.lhs.false.i.i563.cleanup332.thread_crit_edge: ; preds = %lor.lhs.false.i.i563
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup332.thread

skb_header_pointer.exit565:                       ; preds = %if.then318
  %129 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i556 = getelementptr i8, ptr %130, i32 %add323
  %tobool325.not = icmp eq ptr %add.ptr.i.i556, null
  br i1 %tobool325.not, label %skb_header_pointer.exit565.cleanup332.thread_crit_edge, label %skb_header_pointer.exit565.cleanup332_crit_edge

skb_header_pointer.exit565.cleanup332_crit_edge:  ; preds = %skb_header_pointer.exit565
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup332

skb_header_pointer.exit565.cleanup332.thread_crit_edge: ; preds = %skb_header_pointer.exit565
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup332.thread

cleanup332.thread:                                ; preds = %skb_header_pointer.exit565.cleanup332.thread_crit_edge, %lor.lhs.false.i.i563.cleanup332.thread_crit_edge, %if.end.i.i559.cleanup332.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdata320) #13
  br label %cleanup436

cleanup332:                                       ; preds = %skb_header_pointer.exit565.cleanup332_crit_edge, %lor.lhs.false.i.i563.cleanup332_crit_edge
  %retval.0.i.i564604 = phi ptr [ %add.ptr.i.i556, %skb_header_pointer.exit565.cleanup332_crit_edge ], [ %hdata320, %lor.lhs.false.i.i563.cleanup332_crit_edge ]
  %131 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %divisor, align 4
  %133 = ptrtoint ptr %retval.0.i.i564604 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %retval.0.i.i564604, align 4
  %fshift = getelementptr inbounds %struct.tc_u_knode, ptr %n.0637, i32 0, i32 5
  %135 = ptrtoint ptr %fshift to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %fshift, align 4
  %hmask.i = getelementptr inbounds %struct.tc_u_knode, ptr %n.0637, i32 0, i32 15, i32 7
  %137 = ptrtoint ptr %hmask.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %hmask.i, align 4
  %and.i566 = and i32 %138, %134
  %conv.i = zext i8 %136 to i32
  %shr.i = lshr i32 %and.i566, %conv.i
  %and331 = and i32 %shr.i, %132
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %hdata320) #13
  br label %if.end336

if.end336:                                        ; preds = %cleanup332, %do.end315.if.end336_crit_edge
  %sel.2 = phi i32 [ %and331, %cleanup332 ], [ 0, %do.end315.if.end336_crit_edge ]
  %sel337 = getelementptr inbounds %struct.tc_u_knode, ptr %n.0637, i32 0, i32 15
  %139 = ptrtoint ptr %sel337 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %sel337, align 4
  %conv339 = zext i8 %140 to i32
  %and340 = and i32 %conv339, 14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and340)
  %tobool341.not = icmp eq i32 %and340, 0
  br i1 %tobool341.not, label %if.end336.next_ht.loopexit_crit_edge, label %if.end343

if.end336.next_ht.loopexit_crit_edge:             ; preds = %if.end336
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_ht.loopexit

if.end343:                                        ; preds = %if.end336
  %and347 = and i32 %conv339, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and347)
  %tobool348.not = icmp eq i32 %and347, 0
  br i1 %tobool348.not, label %if.end343.if.end385_crit_edge, label %if.then349

if.end343.if.end385_crit_edge:                    ; preds = %if.end343
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end385

if.then349:                                       ; preds = %if.end343
  %off351 = getelementptr inbounds %struct.tc_u_knode, ptr %n.0637, i32 0, i32 15, i32 4
  %141 = ptrtoint ptr %off351 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %off351, align 2
  %conv352 = zext i16 %142 to i32
  %add353 = add nuw nsw i32 %conv352, 3
  %and357 = and i32 %conv339, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and357)
  %tobool358.not = icmp eq i32 %and357, 0
  br i1 %tobool358.not, label %if.then349.if.end383_crit_edge, label %if.then359

if.then349.if.end383_crit_edge:                   ; preds = %if.then349
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end383

if.then359:                                       ; preds = %if.then349
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %hdata361) #13
  %143 = ptrtoint ptr %hdata361 to i32
  call void @__asan_store2_noabort(i32 %143)
  store i16 -1, ptr %hdata361, align 2, !annotation !189
  %offoff = getelementptr inbounds %struct.tc_u_knode, ptr %n.0637, i32 0, i32 15, i32 5
  %144 = ptrtoint ptr %offoff to i32
  call void @__asan_load2_noabort(i32 %144)
  %145 = load i16, ptr %offoff, align 4
  %conv363 = sext i16 %145 to i32
  %add364 = add i32 %off.1.ph, %conv363
  %146 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %len.i.i, align 4
  %148 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %data_len.i.i, align 8
  %150 = add i32 %add364, %149
  %sub.i4.i569 = sub i32 %147, %150
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %sub.i4.i569)
  %cmp.not.i.i570 = icmp slt i32 %sub.i4.i569, 2
  br i1 %cmp.not.i.i570, label %if.end.i.i575, label %skb_header_pointer.exit581, !prof !190

if.end.i.i575:                                    ; preds = %if.then359
  br i1 %tobool2.not.i.i, label %if.end.i.i575.cleanup379.thread_crit_edge, label %lor.lhs.false.i.i579

if.end.i.i575.cleanup379.thread_crit_edge:        ; preds = %if.end.i.i575
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup379.thread

lor.lhs.false.i.i579:                             ; preds = %if.end.i.i575
  %call.i.i576 = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %add364, ptr noundef nonnull %hdata361, i32 noundef 2) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i576)
  %cmp3.i.i577 = icmp slt i32 %call.i.i576, 0
  br i1 %cmp3.i.i577, label %lor.lhs.false.i.i579.cleanup379.thread_crit_edge, label %lor.lhs.false.i.i579.cleanup379_crit_edge

lor.lhs.false.i.i579.cleanup379_crit_edge:        ; preds = %lor.lhs.false.i.i579
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup379

lor.lhs.false.i.i579.cleanup379.thread_crit_edge: ; preds = %lor.lhs.false.i.i579
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup379.thread

skb_header_pointer.exit581:                       ; preds = %if.then359
  %151 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i572 = getelementptr i8, ptr %152, i32 %add364
  %tobool366.not = icmp eq ptr %add.ptr.i.i572, null
  br i1 %tobool366.not, label %skb_header_pointer.exit581.cleanup379.thread_crit_edge, label %skb_header_pointer.exit581.cleanup379_crit_edge

skb_header_pointer.exit581.cleanup379_crit_edge:  ; preds = %skb_header_pointer.exit581
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup379

skb_header_pointer.exit581.cleanup379.thread_crit_edge: ; preds = %skb_header_pointer.exit581
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup379.thread

cleanup379.thread:                                ; preds = %skb_header_pointer.exit581.cleanup379.thread_crit_edge, %lor.lhs.false.i.i579.cleanup379.thread_crit_edge, %if.end.i.i575.cleanup379.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hdata361) #13
  br label %cleanup436

cleanup379:                                       ; preds = %skb_header_pointer.exit581.cleanup379_crit_edge, %lor.lhs.false.i.i579.cleanup379_crit_edge
  %retval.0.i.i580614 = phi ptr [ %add.ptr.i.i572, %skb_header_pointer.exit581.cleanup379_crit_edge ], [ %hdata361, %lor.lhs.false.i.i579.cleanup379_crit_edge ]
  %offmask370 = getelementptr inbounds %struct.tc_u_knode, ptr %n.0637, i32 0, i32 15, i32 3
  %153 = ptrtoint ptr %offmask370 to i32
  call void @__asan_load2_noabort(i32 %153)
  %154 = load i16, ptr %offmask370, align 4
  %155 = ptrtoint ptr %retval.0.i.i580614 to i32
  call void @__asan_load2_noabort(i32 %155)
  %156 = load i16, ptr %retval.0.i.i580614, align 2
  %and373533 = and i16 %156, %154
  %conv375 = zext i16 %and373533 to i32
  %offshift = getelementptr inbounds %struct.tc_u_knode, ptr %n.0637, i32 0, i32 15, i32 1
  %157 = ptrtoint ptr %offshift to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %offshift, align 1
  %conv377 = zext i8 %158 to i32
  %shr = lshr i32 %conv375, %conv377
  %add378 = add nuw nsw i32 %shr, %add353
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %hdata361) #13
  br label %if.end383

if.end383:                                        ; preds = %cleanup379, %if.then349.if.end383_crit_edge
  %off2.4 = phi i32 [ %add378, %cleanup379 ], [ %add353, %if.then349.if.end383_crit_edge ]
  %and384 = and i32 %off2.4, -4
  br label %if.end385

if.end385:                                        ; preds = %if.end383, %if.end343.if.end385_crit_edge
  %off2.5 = phi i32 [ %and384, %if.end383 ], [ %off2.1.ph, %if.end343.if.end385_crit_edge ]
  %159 = ptrtoint ptr %sel337 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %sel337, align 4
  %161 = and i8 %160, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool390.not = icmp eq i8 %161, 0
  %spec.select = select i1 %tobool390.not, i32 %off2.5, i32 0
  %add392 = select i1 %tobool390.not, i32 0, i32 %off2.5
  %spec.select541 = add i32 %add392, %off.1.ph
  %162 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select541, i32 %163)
  %cmp394 = icmp ult i32 %spec.select541, %163
  br i1 %cmp394, label %if.end385.next_ht.loopexit_crit_edge, label %if.end385.if.end398_crit_edge

if.end385.if.end398_crit_edge:                    ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end398

if.end385.next_ht.loopexit_crit_edge:             ; preds = %if.end385
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_ht.loopexit

if.end398:                                        ; preds = %if.end385.if.end398_crit_edge, %next_knode.backedge.if.end398_crit_edge, %next_knode.outer.if.end398_crit_edge
  %off2.7 = phi i32 [ %spec.select, %if.end385.if.end398_crit_edge ], [ %off2.1.ph, %next_knode.outer.if.end398_crit_edge ], [ %off2.1.ph, %next_knode.backedge.if.end398_crit_edge ]
  %sdepth.3 = phi i32 [ %inc298, %if.end385.if.end398_crit_edge ], [ %sdepth.1.ph, %next_knode.outer.if.end398_crit_edge ], [ %sdepth.1.ph, %next_knode.backedge.if.end398_crit_edge ]
  %dec399 = add i32 %sdepth.3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sdepth.3)
  %tobool400.not = icmp eq i32 %sdepth.3, 0
  br i1 %tobool400.not, label %if.end398.cleanup436_crit_edge, label %if.then401

if.end398.cleanup436_crit_edge:                   ; preds = %if.end398
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup436

if.then401:                                       ; preds = %if.end398
  %arrayidx402 = getelementptr [8 x %struct.anon.126], ptr %stack, i32 0, i32 %dec399
  %164 = ptrtoint ptr %arrayidx402 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx402, align 4
  %ht_up = getelementptr inbounds %struct.tc_u_knode, ptr %165, i32 0, i32 2
  %166 = ptrtoint ptr %ht_up to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load volatile ptr, ptr %ht_up, align 4
  %call409 = call i32 @rcu_read_lock_bh_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call409)
  %tobool410.not = icmp eq i32 %call409, 0
  br i1 %tobool410.not, label %land.lhs.true411, label %if.then401.do.end419_crit_edge

if.then401.do.end419_crit_edge:                   ; preds = %if.then401
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end419

land.lhs.true411:                                 ; preds = %if.then401
  %call412 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call412)
  %tobool413.not = icmp eq i32 %call412, 0
  br i1 %tobool413.not, label %land.lhs.true411.do.end419_crit_edge, label %land.lhs.true414

land.lhs.true411.do.end419_crit_edge:             ; preds = %land.lhs.true411
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end419

land.lhs.true414:                                 ; preds = %land.lhs.true411
  %.b528532 = load i1, ptr @u32_classify.__warned.12, align 1
  br i1 %.b528532, label %land.lhs.true414.do.end419_crit_edge, label %if.then416

land.lhs.true414.do.end419_crit_edge:             ; preds = %land.lhs.true414
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end419

if.then416:                                       ; preds = %land.lhs.true414
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_classify.__warned.12, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 242, ptr noundef nonnull @.str.1) #13
  br label %do.end419

do.end419:                                        ; preds = %if.then416, %land.lhs.true414.do.end419_crit_edge, %land.lhs.true411.do.end419_crit_edge, %if.then401.do.end419_crit_edge
  %off422 = getelementptr [8 x %struct.anon.126], ptr %stack, i32 0, i32 %dec399, i32 1
  %168 = ptrtoint ptr %off422 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %off422, align 4
  br label %check_terminal

do.body424:                                       ; preds = %if.end290
  %call425 = call i32 @net_ratelimit() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call425)
  %tobool426.not = icmp eq i32 %call425, 0
  br i1 %tobool426.not, label %do.body424.cleanup436_crit_edge, label %do.end430

do.body424.cleanup436_crit_edge:                  ; preds = %do.body424
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup436

do.end430:                                        ; preds = %do.body424
  call void @__sanitizer_cov_trace_pc() #15
  %call432 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.13) #16
  br label %cleanup436

cleanup436:                                       ; preds = %do.end430, %do.body424.cleanup436_crit_edge, %if.end398.cleanup436_crit_edge, %cleanup379.thread, %cleanup332.thread, %if.end224.cleanup436_crit_edge, %cleanup.thread
  %retval.0 = phi i32 [ -1, %do.end430 ], [ -1, %do.body424.cleanup436_crit_edge ], [ -1, %cleanup.thread ], [ -1, %cleanup332.thread ], [ -1, %cleanup379.thread ], [ -1, %if.end398.cleanup436_crit_edge ], [ %call.i, %if.end224.cleanup436_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %stack) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u32_init(ptr noundef %tp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain.i, align 4
  %block1.i = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block1.i, align 4
  %index.i.i = getelementptr inbounds %struct.tcf_block, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %index.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.i.not.i = icmp eq i32 %5, 0
  br i1 %tobool.i.not.i, label %if.else.i, label %entry.tc_u_common_ptr.exit_crit_edge

entry.tc_u_common_ptr.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %tc_u_common_ptr.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %q.i = getelementptr inbounds %struct.tcf_block, ptr %3, i32 0, i32 6
  %6 = ptrtoint ptr %q.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %q.i, align 4
  br label %tc_u_common_ptr.exit

tc_u_common_ptr.exit:                             ; preds = %if.else.i, %entry.tc_u_common_ptr.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.else.i ], [ %3, %entry.tc_u_common_ptr.exit_crit_edge ]
  %8 = load ptr, ptr @tc_u_common_hash, align 4
  %9 = ptrtoint ptr %retval.0.i to i32
  %mul.i.i.i.i.i = mul i32 %9, 1640531527
  %shr.i.i.i.i = lshr i32 %mul.i.i.i.i.i, 22
  %add.ptr.i.i = getelementptr %struct.hlist_head, ptr %8, i32 %shr.i.i.i.i
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr.i.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  %add.ptr.i = getelementptr i8, ptr %11, i32 -72
  %tobool2.not2326.i = icmp eq ptr %add.ptr.i, null
  %tobool2.not23.i = or i1 %tobool.not.i, %tobool2.not2326.i
  br i1 %tobool2.not23.i, label %tc_u_common_ptr.exit.tc_u_common_find.exit_crit_edge, label %tc_u_common_ptr.exit.for.body.i_crit_edge

tc_u_common_ptr.exit.for.body.i_crit_edge:        ; preds = %tc_u_common_ptr.exit
  br label %for.body.i

tc_u_common_ptr.exit.tc_u_common_find.exit_crit_edge: ; preds = %tc_u_common_ptr.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %tc_u_common_find.exit

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %tc_u_common_ptr.exit.for.body.i_crit_edge
  %tc.024.i = phi ptr [ %add.ptr9.i, %for.inc.i.for.body.i_crit_edge ], [ %add.ptr.i, %tc_u_common_ptr.exit.for.body.i_crit_edge ]
  %ptr.i = getelementptr inbounds %struct.tc_u_common, ptr %tc.024.i, i32 0, i32 1
  %12 = ptrtoint ptr %ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ptr.i, align 4
  %cmp.i = icmp eq ptr %13, %retval.0.i
  br i1 %cmp.i, label %for.body.i.tc_u_common_find.exit_crit_edge, label %for.inc.i

for.body.i.tc_u_common_find.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tc_u_common_find.exit

for.inc.i:                                        ; preds = %for.body.i
  %hnode.i = getelementptr inbounds %struct.tc_u_common, ptr %tc.024.i, i32 0, i32 4
  %14 = ptrtoint ptr %hnode.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hnode.i, align 4
  %tobool5.not.i = icmp eq ptr %15, null
  %add.ptr9.i = getelementptr i8, ptr %15, i32 -72
  %tobool2.not27.i = icmp eq ptr %add.ptr9.i, null
  %tobool2.not.i = or i1 %tobool5.not.i, %tobool2.not27.i
  br i1 %tobool2.not.i, label %for.inc.i.tc_u_common_find.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.tc_u_common_find.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tc_u_common_find.exit

tc_u_common_find.exit:                            ; preds = %for.inc.i.tc_u_common_find.exit_crit_edge, %for.body.i.tc_u_common_find.exit_crit_edge, %tc_u_common_ptr.exit.tc_u_common_find.exit_crit_edge
  %tc.0.lcssa.i = phi ptr [ null, %tc_u_common_ptr.exit.tc_u_common_find.exit_crit_edge ], [ %tc.024.i, %for.body.i.tc_u_common_find.exit_crit_edge ], [ null, %for.inc.i.tc_u_common_find.exit_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 3520, i32 noundef 100) #18
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %tc_u_common_find.exit.cleanup_crit_edge, label %if.end

tc_u_common_find.exit.cleanup_crit_edge:          ; preds = %tc_u_common_find.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %tc_u_common_find.exit
  %refcnt = getelementptr inbounds %struct.tc_u_hnode, ptr %call7.i.i, i32 0, i32 3
  %17 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %refcnt, align 4
  %inc = add i32 %18, 1
  store i32 %inc, ptr %refcnt, align 4
  %tobool.not = icmp eq ptr %tc.0.lcssa.i, null
  br i1 %tobool.not, label %if.end.cond.end_crit_edge, label %cond.true

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end

cond.true:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %handle_idr.i = getelementptr inbounds %struct.tc_u_common, ptr %tc.0.lcssa.i, i32 0, i32 3
  %call.i = tail call i32 @idr_alloc_cyclic(ptr noundef %handle_idr.i, ptr noundef nonnull %call7.i.i, i32 noundef 1, i32 noundef 2047, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i137 = icmp slt i32 %call.i, 0
  %or.i = shl i32 %call.i, 20
  %shl.i = or i32 %or.i, -2147483648
  %retval.0.i138 = select i1 %cmp.i137, i32 0, i32 %shl.i
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %retval.0.i138, %cond.true ], [ -2147483648, %if.end.cond.end_crit_edge ]
  %handle = getelementptr inbounds %struct.tc_u_hnode, ptr %call7.i.i, i32 0, i32 1
  %19 = ptrtoint ptr %handle to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %cond, ptr %handle, align 4
  %prio = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %20 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %prio, align 4
  %prio5 = getelementptr inbounds %struct.tc_u_hnode, ptr %call7.i.i, i32 0, i32 2
  %22 = ptrtoint ptr %prio5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %prio5, align 8
  %is_root = getelementptr inbounds %struct.tc_u_hnode, ptr %call7.i.i, i32 0, i32 6
  %23 = ptrtoint ptr %is_root to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %is_root, align 8
  %handle_idr = getelementptr inbounds %struct.tc_u_hnode, ptr %call7.i.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %handle_idr, ptr noundef nonnull @.str.15, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #13
  %xa_flags.i.i.i = getelementptr inbounds %struct.tc_u_hnode, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 1
  %24 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 67108868, ptr %xa_flags.i.i.i, align 8
  %xa_head.i.i.i = getelementptr inbounds %struct.tc_u_hnode, ptr %call7.i.i, i32 0, i32 5, i32 0, i32 2
  %25 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.tc_u_hnode, ptr %call7.i.i, i32 0, i32 5, i32 1
  %26 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %idr_base.i.i, align 8
  %idr_next.i.i = getelementptr inbounds %struct.tc_u_hnode, ptr %call7.i.i, i32 0, i32 5, i32 2
  %27 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %idr_next.i.i, align 4
  br i1 %tobool.not, label %if.then7, label %cond.end.if.end16_crit_edge

cond.end.if.end16_crit_edge:                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end16

if.then7:                                         ; preds = %cond.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %28 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i139 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %28, i32 noundef 3520, i32 noundef 88) #18
  %cmp10 = icmp eq ptr %call7.i.i139, null
  br i1 %cmp10, label %if.then11, label %if.end12

if.then11:                                        ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #13
  br label %cleanup

if.end12:                                         ; preds = %if.then7
  %ptr = getelementptr inbounds %struct.tc_u_common, ptr %call7.i.i139, i32 0, i32 1
  %29 = ptrtoint ptr %ptr to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %retval.0.i, ptr %ptr, align 4
  %hnode = getelementptr inbounds %struct.tc_u_common, ptr %call7.i.i139, i32 0, i32 4
  %30 = ptrtoint ptr %hnode to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %hnode, align 8
  %pprev.i = getelementptr inbounds %struct.tc_u_common, ptr %call7.i.i139, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %pprev.i, align 4
  %handle_idr13 = getelementptr inbounds %struct.tc_u_common, ptr %call7.i.i139, i32 0, i32 3
  tail call void @__raw_spin_lock_init(ptr noundef %handle_idr13, ptr noundef nonnull @.str.15, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #13
  %xa_flags.i.i.i140 = getelementptr inbounds %struct.tc_u_common, ptr %call7.i.i139, i32 0, i32 3, i32 0, i32 1
  %32 = ptrtoint ptr %xa_flags.i.i.i140 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 67108868, ptr %xa_flags.i.i.i140, align 8
  %xa_head.i.i.i141 = getelementptr inbounds %struct.tc_u_common, ptr %call7.i.i139, i32 0, i32 3, i32 0, i32 2
  %33 = ptrtoint ptr %xa_head.i.i.i141 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %xa_head.i.i.i141, align 4
  %idr_base.i.i142 = getelementptr inbounds %struct.tc_u_common, ptr %call7.i.i139, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %idr_base.i.i142 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %idr_base.i.i142, align 8
  %idr_next.i.i143 = getelementptr inbounds %struct.tc_u_common, ptr %call7.i.i139, i32 0, i32 3, i32 2
  %35 = ptrtoint ptr %idr_next.i.i143 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %idr_next.i.i143, align 4
  %36 = load ptr, ptr @tc_u_common_hash, align 4
  %add.ptr.i144 = getelementptr %struct.hlist_head, ptr %36, i32 %shr.i.i.i.i
  %37 = ptrtoint ptr %add.ptr.i144 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr.i144, align 4
  %39 = ptrtoint ptr %hnode to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %38, ptr %hnode, align 8
  %tobool.not.i145 = icmp eq ptr %38, null
  br i1 %tobool.not.i145, label %if.end12.hlist_add_head.exit_crit_edge, label %do.body12.i

if.end12.hlist_add_head.exit_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_add_head.exit

do.body12.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #15
  %pprev.i146 = getelementptr inbounds %struct.hlist_node, ptr %38, i32 0, i32 1
  %40 = ptrtoint ptr %pprev.i146 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %hnode, ptr %pprev.i146, align 4
  br label %hlist_add_head.exit

hlist_add_head.exit:                              ; preds = %do.body12.i, %if.end12.hlist_add_head.exit_crit_edge
  %41 = ptrtoint ptr %add.ptr.i144 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %hnode, ptr %add.ptr.i144, align 4
  %42 = ptrtoint ptr %pprev.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %add.ptr.i144, ptr %pprev.i, align 4
  br label %if.end16

if.end16:                                         ; preds = %hlist_add_head.exit, %cond.end.if.end16_crit_edge
  %tp_c.0 = phi ptr [ %call7.i.i139, %hlist_add_head.exit ], [ %tc.0.lcssa.i, %cond.end.if.end16_crit_edge ]
  %refcnt17 = getelementptr inbounds %struct.tc_u_common, ptr %tp_c.0, i32 0, i32 2
  %43 = ptrtoint ptr %refcnt17 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %refcnt17, align 4
  %inc18 = add i32 %44, 1
  store i32 %inc18, ptr %refcnt17, align 4
  %45 = ptrtoint ptr %tp_c.0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %tp_c.0, align 4
  %47 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %46, ptr %call7.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !191
  %48 = ptrtoint ptr %tp_c.0 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %call7.i.i, ptr %tp_c.0, align 4
  %49 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %refcnt, align 4
  %inc67 = add i32 %50, 1
  store i32 %inc67, ptr %refcnt, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !192
  %root96 = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %51 = ptrtoint ptr %root96 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %call7.i.i, ptr %root96, align 4
  %data = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 5
  %52 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %tp_c.0, ptr %data, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.then11, %tc_u_common_find.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -105, %if.then11 ], [ 0, %if.end16 ], [ -105, %tc_u_common_find.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u32_destroy(ptr noundef %tp, i1 noundef zeroext %rtnl_held, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b102 = load i1, ptr @u32_destroy.__warned, align 1
  br i1 %.b102, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 623, ptr noundef nonnull @.str.16) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  %cond = icmp eq ptr %3, null
  br i1 %cond, label %do.end15, label %land.lhs.true30, !prof !190

do.end15:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 625, i32 noundef 9, ptr noundef null) #13
  br label %if.end34

land.lhs.true30:                                  ; preds = %do.end
  %refcnt = getelementptr inbounds %struct.tc_u_hnode, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refcnt, align 4
  %dec = add i32 %5, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dec)
  %cmp31 = icmp eq i32 %dec, 1
  br i1 %cmp31, label %if.then32, label %land.lhs.true30.if.end34_crit_edge

land.lhs.true30.if.end34_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end34

if.then32:                                        ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @u32_destroy_hnode(ptr noundef %tp, ptr noundef nonnull %3, ptr noundef %extack)
  br label %if.end34

if.end34:                                         ; preds = %if.then32, %land.lhs.true30.if.end34_crit_edge, %do.end15
  %refcnt35 = getelementptr inbounds %struct.tc_u_common, ptr %1, i32 0, i32 2
  %6 = ptrtoint ptr %refcnt35 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %refcnt35, align 4
  %dec36 = add i32 %7, -1
  store i32 %dec36, ptr %refcnt35, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec36)
  %cmp37 = icmp eq i32 %dec36, 0
  br i1 %cmp37, label %if.then38, label %if.end34.if.end79_crit_edge

if.end34.if.end79_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end79

if.then38:                                        ; preds = %if.end34
  %hnode = getelementptr inbounds %struct.tc_u_common, ptr %1, i32 0, i32 4
  %8 = ptrtoint ptr %hnode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hnode, align 4
  %pprev2.i.i = getelementptr inbounds %struct.tc_u_common, ptr %1, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pprev2.i.i, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %9, ptr %11, align 4
  %tobool.not.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i, label %if.then38.hlist_del.exit_crit_edge, label %do.body13.i.i

if.then38.hlist_del.exit_crit_edge:               ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  br label %hlist_del.exit

do.body13.i.i:                                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #15
  %pprev14.i.i = getelementptr inbounds %struct.hlist_node, ptr %9, i32 0, i32 1
  %13 = ptrtoint ptr %pprev14.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %pprev14.i.i, align 4
  br label %hlist_del.exit

hlist_del.exit:                                   ; preds = %do.body13.i.i, %if.then38.hlist_del.exit_crit_edge
  %14 = ptrtoint ptr %hnode to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %hnode, align 4
  %15 = ptrtoint ptr %pprev2.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %pprev2.i.i, align 4
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %hlist_del.exit
  %call40 = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call40, label %while.cond.do.end49_crit_edge, label %land.lhs.true41

while.cond.do.end49_crit_edge:                    ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end49

land.lhs.true41:                                  ; preds = %while.cond
  %call42 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %land.lhs.true41.do.end49_crit_edge, label %land.lhs.true44

land.lhs.true41.do.end49_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end49

land.lhs.true44:                                  ; preds = %land.lhs.true41
  %.b100101 = load i1, ptr @u32_destroy.__warned.17, align 1
  br i1 %.b100101, label %land.lhs.true44.do.end49_crit_edge, label %if.then46

land.lhs.true44.do.end49_crit_edge:               ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end49

if.then46:                                        ; preds = %land.lhs.true44
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_destroy.__warned.17, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 635, ptr noundef nonnull @.str.16) #13
  br label %do.end49

do.end49:                                         ; preds = %if.then46, %land.lhs.true44.do.end49_crit_edge, %land.lhs.true41.do.end49_crit_edge, %while.cond.do.end49_crit_edge
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %1, align 4
  %cmp51.not = icmp eq ptr %17, null
  br i1 %cmp51.not, label %while.end, label %while.body

while.body:                                       ; preds = %do.end49
  tail call fastcc void @u32_clear_hnode(ptr noundef %tp, ptr noundef nonnull %17, ptr noundef %extack)
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %19, ptr %1, align 4
  %refcnt65 = getelementptr inbounds %struct.tc_u_hnode, ptr %17, i32 0, i32 3
  %21 = ptrtoint ptr %refcnt65 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %refcnt65, align 4
  %dec66 = add i32 %22, -1
  store i32 %dec66, ptr %refcnt65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec66)
  %cmp67 = icmp eq i32 %dec66, 0
  br i1 %cmp67, label %do.end74, label %while.body.while.cond.backedge_crit_edge

while.body.while.cond.backedge_crit_edge:         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.backedge

do.end74:                                         ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %rcu = getelementptr inbounds %struct.tc_u_hnode, ptr %17, i32 0, i32 7
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 84 to ptr)) #13
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %do.end74, %while.body.while.cond.backedge_crit_edge
  br label %while.cond

while.end:                                        ; preds = %do.end49
  call void @__sanitizer_cov_trace_pc() #15
  %handle_idr = getelementptr inbounds %struct.tc_u_common, ptr %1, i32 0, i32 3
  tail call void @idr_destroy(ptr noundef %handle_idr) #13
  tail call void @kfree(ptr noundef %1) #13
  br label %if.end79

if.end79:                                         ; preds = %while.end, %if.end34.if.end79_crit_edge
  %23 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %data, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @u32_get(ptr nocapture noundef readonly %tp, i32 noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048577, i32 %handle)
  %cmp = icmp ugt i32 %handle, -1048577
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b23 = load i1, ptr @u32_get.__warned, align 1
  br i1 %.b23, label %land.lhs.true2.do.end_crit_edge, label %if.then4

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then4:                                         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 292, ptr noundef nonnull @.str.16) #13
  br label %do.end

do.end:                                           ; preds = %if.then4, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  br label %if.end7

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and = and i32 %handle, -1048576
  %data = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 5
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %call6 = tail call fastcc ptr @u32_lookup_ht(ptr noundef %3, i32 noundef %and)
  br label %if.end7

if.end7:                                          ; preds = %if.else, %do.end
  %ht.0 = phi ptr [ %1, %do.end ], [ %call6, %if.else ]
  %tobool8.not = icmp eq ptr %ht.0, null
  br i1 %tobool8.not, label %if.end7.cleanup_crit_edge, label %if.end10

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end10:                                         ; preds = %if.end7
  %and11 = and i32 %handle, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %cmp12 = icmp eq i32 %and11, 0
  br i1 %cmp12, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %shr.i = lshr i32 %handle, 12
  %and.i = and i32 %shr.i, 255
  %divisor.i = getelementptr inbounds %struct.tc_u_hnode, ptr %ht.0, i32 0, i32 4
  %4 = ptrtoint ptr %divisor.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %divisor.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %5)
  %cmp.i = icmp ugt i32 %and.i, %5
  br i1 %cmp.i, label %if.end14.cleanup_crit_edge, label %do.body.i

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body.i:                                        ; preds = %if.end14
  %call.i = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call.i, label %do.body.i.do.end.i_crit_edge, label %land.lhs.true.i

do.body.i.do.end.i_crit_edge:                     ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %do.body.i
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b32.i = load i1, ptr @u32_lookup_key.__warned, align 1
  br i1 %.b32.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %if.then4.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then4.i:                                       ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_lookup_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 276, ptr noundef nonnull @.str.16) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then4.i, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %do.body.i.do.end.i_crit_edge
  %arrayidx.i = getelementptr %struct.tc_u_hnode, ptr %ht.0, i32 0, i32 9, i32 %and.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %n.033.i = load ptr, ptr %arrayidx.i, align 4
  %tobool7.not34.i = icmp eq ptr %n.033.i, null
  br i1 %tobool7.not34.i, label %do.end.i.cleanup_crit_edge, label %do.end.i.for.body.i_crit_edge

do.end.i.for.body.i_crit_edge:                    ; preds = %do.end.i
  br label %for.body.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.i:                                       ; preds = %do.end22.i.for.body.i_crit_edge, %do.end.i.for.body.i_crit_edge
  %n.035.i = phi ptr [ %n.0.i, %do.end22.i.for.body.i_crit_edge ], [ %n.033.i, %do.end.i.for.body.i_crit_edge ]
  %handle8.i = getelementptr inbounds %struct.tc_u_knode, ptr %n.035.i, i32 0, i32 1
  %7 = ptrtoint ptr %handle8.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %handle)
  %cmp9.i = icmp eq i32 %8, %handle
  br i1 %cmp9.i, label %for.body.i.cleanup_crit_edge, label %do.body12.i

for.body.i.cleanup_crit_edge:                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body12.i:                                      ; preds = %for.body.i
  %call13.i = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call13.i, label %do.body12.i.do.end22.i_crit_edge, label %land.lhs.true14.i

do.body12.i.do.end22.i_crit_edge:                 ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22.i

land.lhs.true14.i:                                ; preds = %do.body12.i
  %call15.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15.i)
  %tobool16.not.i = icmp eq i32 %call15.i, 0
  br i1 %tobool16.not.i, label %land.lhs.true14.i.do.end22.i_crit_edge, label %land.lhs.true17.i

land.lhs.true14.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22.i

land.lhs.true17.i:                                ; preds = %land.lhs.true14.i
  %.b3031.i = load i1, ptr @u32_lookup_key.__warned.21, align 1
  br i1 %.b3031.i, label %land.lhs.true17.i.do.end22.i_crit_edge, label %if.then19.i

land.lhs.true17.i.do.end22.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22.i

if.then19.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_lookup_key.__warned.21, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 278, ptr noundef nonnull @.str.16) #13
  br label %do.end22.i

do.end22.i:                                       ; preds = %if.then19.i, %land.lhs.true17.i.do.end22.i_crit_edge, %land.lhs.true14.i.do.end22.i_crit_edge, %do.body12.i.do.end22.i_crit_edge
  %9 = ptrtoint ptr %n.035.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %n.0.i = load ptr, ptr %n.035.i, align 4
  %tobool7.not.i = icmp eq ptr %n.0.i, null
  br i1 %tobool7.not.i, label %do.end22.i.cleanup_crit_edge, label %do.end22.i.for.body.i_crit_edge

do.end22.i.for.body.i_crit_edge:                  ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

do.end22.i.cleanup_crit_edge:                     ; preds = %do.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %do.end22.i.cleanup_crit_edge, %for.body.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end7.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.end7.cleanup_crit_edge ], [ %ht.0, %if.end10.cleanup_crit_edge ], [ null, %if.end14.cleanup_crit_edge ], [ null, %do.end.i.cleanup_crit_edge ], [ null, %do.end22.i.cleanup_crit_edge ], [ %n.035.i, %for.body.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u32_change(ptr noundef %net, ptr nocapture noundef readnone %in_skb, ptr noundef %tp, i32 noundef %base, i32 noundef %handle, ptr nocapture noundef readonly %tca, ptr nocapture noundef %arg, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %handle.addr = alloca i32, align 4
  %tb = alloca [13 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %handle, ptr %handle.addr, align 4
  %data = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 5
  %1 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %data, align 4
  %arrayidx = getelementptr ptr, ptr %tca, i32 2
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %tb) #13
  %5 = call ptr @memset(ptr %tb, i32 255, i32 52)
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %if.then, label %if.end5

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %handle)
  %tobool1.not = icmp eq i32 %handle, 0
  br i1 %tobool1.not, label %if.then.cleanup479_crit_edge, label %do.body

if.then.cleanup479_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup479

do.body:                                          ; preds = %if.then
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @u32_change.__msg) #13
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.cleanup479_crit_edge, label %if.then4

do.body.cleanup479_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup479

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %6 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @u32_change.__msg, ptr %extack, align 4
  br label %cleanup479

if.end5:                                          ; preds = %entry
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 4
  %7 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %4, align 2
  %conv.i.i = zext i16 %8 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 12, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @u32_policy, i32 noundef 0, ptr noundef %extack) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp = icmp slt i32 %call2.i, 0
  br i1 %cmp, label %if.end5.cleanup479_crit_edge, label %if.end7

if.end5.cleanup479_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup479

if.end7:                                          ; preds = %if.end5
  %arrayidx8 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 11
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %if.end7.if.end24_crit_edge, label %if.then10

if.end7.if.end24_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

if.then10:                                        ; preds = %if.end7
  %add.ptr.i.i665 = getelementptr i8, ptr %10, i32 4
  %11 = ptrtoint ptr %add.ptr.i.i665 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i665, align 4
  %and.i = and i32 %12, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %and1.i = and i32 %12, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and1.i)
  %tobool2.not.i = icmp ne i32 %and1.i, 3
  %retval.0.i = and i1 %tobool.not.i, %tobool2.not.i
  br i1 %retval.0.i, label %if.then10.if.end24_crit_edge, label %do.body15

if.then10.if.end24_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

do.body15:                                        ; preds = %if.then10
  call void @do_trace_netlink_extack(ptr noundef nonnull @u32_change.__msg.22) #13
  %tobool17.not = icmp eq ptr %extack, null
  br i1 %tobool17.not, label %do.body15.cleanup479_crit_edge, label %if.then18

do.body15.cleanup479_crit_edge:                   ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup479

if.then18:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @u32_change.__msg.22, ptr %extack, align 4
  br label %cleanup479

if.end24:                                         ; preds = %if.then10.if.end24_crit_edge, %if.end7.if.end24_crit_edge
  %userflags.0 = phi i32 [ %12, %if.then10.if.end24_crit_edge ], [ 0, %if.end7.if.end24_crit_edge ]
  %14 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arg, align 4
  %tobool25.not = icmp eq ptr %15, null
  br i1 %tobool25.not, label %if.end76, label %if.then26

if.then26:                                        ; preds = %if.end24
  %handle27 = getelementptr inbounds %struct.tc_u_knode, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %handle27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %handle27, align 4
  %and = and i32 %17, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp28 = icmp eq i32 %and, 0
  br i1 %cmp28, label %do.body30, label %if.end38

do.body30:                                        ; preds = %if.then26
  call void @do_trace_netlink_extack(ptr noundef nonnull @u32_change.__msg.23) #13
  %tobool32.not = icmp eq ptr %extack, null
  br i1 %tobool32.not, label %do.body30.cleanup479_crit_edge, label %if.then33

do.body30.cleanup479_crit_edge:                   ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup479

if.then33:                                        ; preds = %do.body30
  call void @__sanitizer_cov_trace_pc() #15
  %18 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @u32_change.__msg.23, ptr %extack, align 4
  br label %cleanup479

if.end38:                                         ; preds = %if.then26
  %flags39 = getelementptr inbounds %struct.tc_u_knode, ptr %15, i32 0, i32 9
  %19 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags39, align 4
  %xor = xor i32 %20, %userflags.0
  %and40 = and i32 %xor, -13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and40)
  %tobool41.not = icmp eq i32 %and40, 0
  br i1 %tobool41.not, label %if.end51, label %do.body43

do.body43:                                        ; preds = %if.end38
  call void @do_trace_netlink_extack(ptr noundef nonnull @u32_change.__msg.24) #13
  %tobool45.not = icmp eq ptr %extack, null
  br i1 %tobool45.not, label %do.body43.cleanup479_crit_edge, label %if.then46

do.body43.cleanup479_crit_edge:                   ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup479

if.then46:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #15
  %21 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @u32_change.__msg.24, ptr %extack, align 4
  br label %cleanup479

if.end51:                                         ; preds = %if.end38
  %call.i = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call.i, label %if.end51.do.end.i_crit_edge, label %land.lhs.true.i

if.end51.do.end.i_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end51
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i666 = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i666, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b1.i = load i1, ptr @u32_init_knode.__warned, align 1
  br i1 %.b1.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_init_knode.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 796, ptr noundef nonnull @.str.16) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end51.do.end.i_crit_edge
  %ht_down.i = getelementptr inbounds %struct.tc_u_knode, ptr %15, i32 0, i32 7
  %22 = ptrtoint ptr %ht_down.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ht_down.i, align 4
  %sel.i = getelementptr inbounds %struct.tc_u_knode, ptr %15, i32 0, i32 15
  %nkeys.i = getelementptr inbounds %struct.tc_u_knode, ptr %15, i32 0, i32 15, i32 2
  %24 = ptrtoint ptr %nkeys.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nkeys.i, align 2
  %conv.i = zext i8 %25 to i32
  %26 = shl nuw nsw i32 %conv.i, 4
  %spec.select.i7.i = add nuw nsw i32 %26, 156
  %call9.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i7.i, i32 noundef 3520) #17
  %tobool6.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool6.not.i, label %do.end.i.cleanup479_crit_edge, label %do.body14.i

do.end.i.cleanup479_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup479

do.body14.i:                                      ; preds = %do.end.i
  %27 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %15, align 4
  %29 = ptrtoint ptr %call9.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %28, ptr %call9.i.i.i, align 128
  %30 = ptrtoint ptr %handle27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %handle27, align 4
  %handle22.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 1
  %32 = ptrtoint ptr %handle22.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %handle22.i, align 4
  %ht_up.i = getelementptr inbounds %struct.tc_u_knode, ptr %15, i32 0, i32 2
  %33 = ptrtoint ptr %ht_up.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ht_up.i, align 4
  %ht_up29.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %ht_up29.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %34, ptr %ht_up29.i, align 8
  %ifindex.i = getelementptr inbounds %struct.tc_u_knode, ptr %15, i32 0, i32 4
  %36 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ifindex.i, align 4
  %ifindex36.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %ifindex36.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %ifindex36.i, align 8
  %fshift.i = getelementptr inbounds %struct.tc_u_knode, ptr %15, i32 0, i32 5
  %39 = ptrtoint ptr %fshift.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fshift.i, align 4
  %fshift37.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 5
  %41 = ptrtoint ptr %fshift37.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %40, ptr %fshift37.i, align 4
  %res.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 6
  %res38.i = getelementptr inbounds %struct.tc_u_knode, ptr %15, i32 0, i32 6
  %42 = ptrtoint ptr %res38.i to i32
  call void @__asan_loadN_noabort(i32 %42, i32 8)
  %43 = load i64, ptr %res38.i, align 4
  %44 = ptrtoint ptr %res.i to i32
  call void @__asan_store8_noabort(i32 %44)
  store i64 %43, ptr %res.i, align 16
  %45 = ptrtoint ptr %flags39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %flags39, align 4
  %flags39.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 9
  %47 = ptrtoint ptr %flags39.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %flags39.i, align 64
  %ht_down46.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 7
  %48 = ptrtoint ptr %ht_down46.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %23, ptr %ht_down46.i, align 8
  %tobool53.not.i = icmp eq ptr %23, null
  br i1 %tobool53.not.i, label %do.body14.i.if.end55.i_crit_edge, label %if.then54.i

do.body14.i.if.end55.i_crit_edge:                 ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55.i

if.then54.i:                                      ; preds = %do.body14.i
  call void @__sanitizer_cov_trace_pc() #15
  %refcnt.i = getelementptr inbounds %struct.tc_u_hnode, ptr %23, i32 0, i32 3
  %49 = ptrtoint ptr %refcnt.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %refcnt.i, align 4
  %inc.i = add i32 %50, 1
  store i32 %inc.i, ptr %refcnt.i, align 4
  br label %if.end55.i

if.end55.i:                                       ; preds = %if.then54.i, %do.body14.i.if.end55.i_crit_edge
  %pf.i = getelementptr inbounds %struct.tc_u_knode, ptr %15, i32 0, i32 8
  %51 = ptrtoint ptr %pf.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pf.i, align 4
  %pf56.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 8
  %53 = ptrtoint ptr %pf56.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %pf56.i, align 4
  %val.i = getelementptr inbounds %struct.tc_u_knode, ptr %15, i32 0, i32 11
  %54 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %val.i, align 4
  %val57.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 11
  %56 = ptrtoint ptr %val57.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %val57.i, align 8
  %mask.i = getelementptr inbounds %struct.tc_u_knode, ptr %15, i32 0, i32 12
  %57 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %mask.i, align 4
  %mask58.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 12
  %59 = ptrtoint ptr %mask58.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %mask58.i, align 4
  %pcpu_success.i = getelementptr inbounds %struct.tc_u_knode, ptr %15, i32 0, i32 13
  %60 = ptrtoint ptr %pcpu_success.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %pcpu_success.i, align 4
  %pcpu_success59.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 13
  %62 = ptrtoint ptr %pcpu_success59.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %61, ptr %pcpu_success59.i, align 16
  %sel60.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 15
  %63 = ptrtoint ptr %nkeys.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %nkeys.i, align 2
  %conv62.i = zext i8 %64 to i32
  %65 = shl nuw nsw i32 %conv62.i, 4
  %spec.select.i28.i = add nuw nsw i32 %65, 16
  %66 = call ptr @memcpy(ptr %sel60.i, ptr %sel.i, i32 %spec.select.i28.i)
  %exts.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 3
  %67 = ptrtoint ptr %exts.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %exts.i, align 4
  %nr_actions.i.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 3, i32 1
  %68 = ptrtoint ptr %nr_actions.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %nr_actions.i.i, align 16
  %net1.i.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 3, i32 3
  %69 = ptrtoint ptr %net1.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %net, ptr %net1.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %70 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %70, i32 noundef 3520, i32 noundef 128) #18
  %actions.i.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 3, i32 2
  %71 = ptrtoint ptr %actions.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call7.i.i.i.i.i, ptr %actions.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then66.i, label %if.end55

if.then66.i:                                      ; preds = %if.end55.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call9.i.i.i) #13
  br label %cleanup479

if.end55:                                         ; preds = %if.end55.i
  %action3.i.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 3, i32 5
  %72 = ptrtoint ptr %action3.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 7, ptr %action3.i.i, align 32
  %police4.i.i = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i.i, i32 0, i32 3, i32 6
  %73 = ptrtoint ptr %police4.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 6, ptr %police4.i.i, align 4
  %arrayidx57 = getelementptr ptr, ptr %tca, i32 5
  %74 = ptrtoint ptr %arrayidx57 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx57, align 4
  %76 = ptrtoint ptr %flags39.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags39.i, align 64
  %call59 = call fastcc i32 @u32_set_parms(ptr noundef %net, ptr noundef %tp, i32 noundef %base, ptr noundef nonnull %call9.i.i.i, ptr noundef nonnull %tb, ptr noundef %75, i32 noundef %flags, i32 noundef %77, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end63, label %if.then61

if.then61:                                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @u32_destroy_key(ptr noundef nonnull %call9.i.i.i, i1 noundef zeroext false)
  br label %cleanup479

if.end63:                                         ; preds = %if.end55
  %call64 = call fastcc i32 @u32_replace_hw_knode(ptr noundef %tp, ptr noundef nonnull %call9.i.i.i, i32 noundef %flags, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call64)
  %tobool65.not = icmp eq i32 %call64, 0
  br i1 %tobool65.not, label %if.end68, label %if.then66

if.then66:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @u32_destroy_key(ptr noundef nonnull %call9.i.i.i, i1 noundef zeroext false)
  br label %cleanup479

if.end68:                                         ; preds = %if.end63
  %78 = ptrtoint ptr %flags39.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %flags39.i, align 64
  %and.i668 = and i32 %79, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i668)
  %tobool.i.not = icmp eq i32 %and.i668, 0
  br i1 %tobool.i.not, label %if.then71, label %if.end68.if.end73_crit_edge

if.end68.if.end73_crit_edge:                      ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end73

if.then71:                                        ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #15
  %or = or i32 %79, 8
  %80 = ptrtoint ptr %flags39.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %or, ptr %flags39.i, align 64
  br label %if.end73

if.end73:                                         ; preds = %if.then71, %if.end68.if.end73_crit_edge
  call fastcc void @u32_replace_knode(ptr noundef %tp, ptr noundef %2, ptr noundef nonnull %call9.i.i.i)
  call fastcc void @tcf_unbind_filter(ptr noundef %tp, ptr noundef %res38.i)
  %exts = getelementptr inbounds %struct.tc_u_knode, ptr %15, i32 0, i32 3
  %call74 = call fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts)
  %rwork = getelementptr inbounds %struct.tc_u_knode, ptr %15, i32 0, i32 14
  %call75 = call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @u32_delete_key_work) #13
  br label %cleanup479

if.end76:                                         ; preds = %if.end24
  %arrayidx77 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 4
  %81 = ptrtoint ptr %arrayidx77 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %arrayidx77, align 4
  %tobool78.not = icmp eq ptr %82, null
  br i1 %tobool78.not, label %if.end197, label %if.then79

if.then79:                                        ; preds = %if.end76
  %add.ptr.i.i669 = getelementptr i8, ptr %82, i32 4
  %83 = ptrtoint ptr %add.ptr.i.i669 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %add.ptr.i.i669, align 4
  %85 = call i32 @llvm.ctpop.i32(i32 %84) #13, !range !193
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %85)
  %86 = icmp eq i32 %85, 1
  br i1 %86, label %if.end92, label %do.body84

do.body84:                                        ; preds = %if.then79
  call void @do_trace_netlink_extack(ptr noundef nonnull @u32_change.__msg.25) #13
  %tobool86.not = icmp eq ptr %extack, null
  br i1 %tobool86.not, label %do.body84.cleanup479_crit_edge, label %if.then87

do.body84.cleanup479_crit_edge:                   ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup479

if.then87:                                        ; preds = %do.body84
  call void @__sanitizer_cov_trace_pc() #15
  %87 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @u32_change.__msg.25, ptr %extack, align 4
  br label %cleanup479

if.end92:                                         ; preds = %if.then79
  %dec = add i32 %84, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %84)
  %cmp93 = icmp ugt i32 %84, 256
  br i1 %cmp93, label %do.body95, label %if.end103

do.body95:                                        ; preds = %if.end92
  call void @do_trace_netlink_extack(ptr noundef nonnull @u32_change.__msg.26) #13
  %tobool97.not = icmp eq ptr %extack, null
  br i1 %tobool97.not, label %do.body95.cleanup479_crit_edge, label %if.then98

do.body95.cleanup479_crit_edge:                   ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup479

if.then98:                                        ; preds = %do.body95
  call void @__sanitizer_cov_trace_pc() #15
  %88 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @u32_change.__msg.26, ptr %extack, align 4
  br label %cleanup479

if.end103:                                        ; preds = %if.end92
  %89 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %handle.addr, align 4
  %and104 = and i32 %90, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and104)
  %tobool105.not = icmp eq i32 %and104, 0
  br i1 %tobool105.not, label %if.end8.i.i, label %do.body107

do.body107:                                       ; preds = %if.end103
  call void @do_trace_netlink_extack(ptr noundef nonnull @u32_change.__msg.27) #13
  %tobool109.not = icmp eq ptr %extack, null
  br i1 %tobool109.not, label %do.body107.cleanup479_crit_edge, label %if.then110

do.body107.cleanup479_crit_edge:                  ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup479

if.then110:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #15
  %91 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @u32_change.__msg.27, ptr %extack, align 4
  br label %cleanup479

if.end8.i.i:                                      ; preds = %if.end103
  %92 = shl nuw nsw i32 %84, 2
  %spec.select.i717 = add nuw nsw i32 %92, 96
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i717, i32 noundef 3520) #17
  %cmp118 = icmp eq ptr %call9.i.i, null
  br i1 %cmp118, label %if.end8.i.i.cleanup479_crit_edge, label %if.end120

if.end8.i.i.cleanup479_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup479

if.end120:                                        ; preds = %if.end8.i.i
  %93 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %handle.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp121 = icmp eq i32 %94, 0
  br i1 %cmp121, label %if.then122, label %if.else128

if.then122:                                       ; preds = %if.end120
  %95 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %data, align 4
  %handle_idr.i = getelementptr inbounds %struct.tc_u_common, ptr %96, i32 0, i32 3
  %call.i672 = call i32 @idr_alloc_cyclic(ptr noundef %handle_idr.i, ptr noundef nonnull %call9.i.i, i32 noundef 1, i32 noundef 2047, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i672)
  %cmp.i = icmp slt i32 %call.i672, 0
  %or.i = shl i32 %call.i672, 20
  %shl.i = or i32 %or.i, -2147483648
  %retval.0.i673 = select i1 %cmp.i, i32 0, i32 %shl.i
  %97 = ptrtoint ptr %handle.addr to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %retval.0.i673, ptr %handle.addr, align 4
  br i1 %cmp.i, label %if.then126, label %if.then122.if.end133_crit_edge

if.then122.if.end133_crit_edge:                   ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end133

if.then126:                                       ; preds = %if.then122
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %cleanup479

if.else128:                                       ; preds = %if.end120
  %handle_idr = getelementptr inbounds %struct.tc_u_common, ptr %2, i32 0, i32 3
  %call129 = call i32 @idr_alloc_u32(ptr noundef %handle_idr, ptr noundef nonnull %call9.i.i, ptr noundef nonnull %handle.addr, i32 noundef %94, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.else128.if.end133_crit_edge, label %if.then131

if.else128.if.end133_crit_edge:                   ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end133

if.then131:                                       ; preds = %if.else128
  call void @__sanitizer_cov_trace_pc() #15
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %cleanup479

if.end133:                                        ; preds = %if.else128.if.end133_crit_edge, %if.then122.if.end133_crit_edge
  %refcnt = getelementptr inbounds %struct.tc_u_hnode, ptr %call9.i.i, i32 0, i32 3
  %98 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %refcnt, align 4
  %divisor134 = getelementptr inbounds %struct.tc_u_hnode, ptr %call9.i.i, i32 0, i32 4
  %99 = ptrtoint ptr %divisor134 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %dec, ptr %divisor134, align 16
  %100 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %handle.addr, align 4
  %handle135 = getelementptr inbounds %struct.tc_u_hnode, ptr %call9.i.i, i32 0, i32 1
  %102 = ptrtoint ptr %handle135 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %101, ptr %handle135, align 4
  %prio = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %103 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %prio, align 4
  %prio136 = getelementptr inbounds %struct.tc_u_hnode, ptr %call9.i.i, i32 0, i32 2
  %105 = ptrtoint ptr %prio136 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %prio136, align 8
  %handle_idr137 = getelementptr inbounds %struct.tc_u_hnode, ptr %call9.i.i, i32 0, i32 5
  call void @__raw_spin_lock_init(ptr noundef %handle_idr137, ptr noundef nonnull @.str.15, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #13
  %xa_flags.i.i.i = getelementptr inbounds %struct.tc_u_hnode, ptr %call9.i.i, i32 0, i32 5, i32 0, i32 1
  %106 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 67108868, ptr %xa_flags.i.i.i, align 64
  %xa_head.i.i.i = getelementptr inbounds %struct.tc_u_hnode, ptr %call9.i.i, i32 0, i32 5, i32 0, i32 2
  %107 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr null, ptr %xa_head.i.i.i, align 4
  %idr_base.i.i = getelementptr inbounds %struct.tc_u_hnode, ptr %call9.i.i, i32 0, i32 5, i32 1
  %108 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %idr_base.i.i, align 8
  %idr_next.i.i = getelementptr inbounds %struct.tc_u_hnode, ptr %call9.i.i, i32 0, i32 5, i32 2
  %109 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %idr_next.i.i, align 4
  %flags138 = getelementptr inbounds %struct.tc_u_hnode, ptr %call9.i.i, i32 0, i32 8
  %110 = ptrtoint ptr %flags138 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 %userflags.0, ptr %flags138, align 4
  %call139 = call fastcc i32 @u32_replace_hw_hnode(ptr noundef %tp, ptr noundef nonnull %call9.i.i, i32 noundef %userflags.0, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call139)
  %tobool140.not = icmp eq i32 %call139, 0
  br i1 %tobool140.not, label %do.body150, label %if.then141

if.then141:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #15
  %handle_idr142 = getelementptr inbounds %struct.tc_u_common, ptr %2, i32 0, i32 3
  %111 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %handle.addr, align 4
  %call143 = call ptr @idr_remove(ptr noundef %handle_idr142, i32 noundef %112) #13
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br label %cleanup479

do.body150:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #15
  %113 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %2, align 4
  %115 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store volatile ptr %114, ptr %call9.i.i, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !194
  %116 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %116)
  store volatile ptr %call9.i.i, ptr %2, align 4
  %117 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call9.i.i, ptr %arg, align 4
  br label %cleanup479

if.end197:                                        ; preds = %if.end76
  %arrayidx198 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 2
  %118 = ptrtoint ptr %arrayidx198 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %arrayidx198, align 4
  %tobool199.not = icmp eq ptr %119, null
  br i1 %tobool199.not, label %do.body235, label %if.then200

if.then200:                                       ; preds = %if.end197
  %add.ptr.i.i674 = getelementptr i8, ptr %119, i32 4
  %120 = ptrtoint ptr %add.ptr.i.i674 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %add.ptr.i.i674, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048577, i32 %121)
  %cmp204 = icmp ugt i32 %121, -1048577
  br i1 %cmp204, label %do.body206, label %if.else218

do.body206:                                       ; preds = %if.then200
  %call207 = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call207, label %do.body206.if.end249.sink.split_crit_edge, label %land.lhs.true208

do.body206.if.end249.sink.split_crit_edge:        ; preds = %do.body206
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end249.sink.split

land.lhs.true208:                                 ; preds = %do.body206
  %call209 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call209)
  %tobool210.not = icmp eq i32 %call209, 0
  br i1 %tobool210.not, label %land.lhs.true208.if.end249.sink.split_crit_edge, label %land.lhs.true211

land.lhs.true208.if.end249.sink.split_crit_edge:  ; preds = %land.lhs.true208
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end249.sink.split

land.lhs.true211:                                 ; preds = %land.lhs.true208
  %.b664 = load i1, ptr @u32_change.__warned, align 1
  br i1 %.b664, label %land.lhs.true211.if.end249.sink.split_crit_edge, label %land.lhs.true211.if.end249.sink.split.sink.split_crit_edge

land.lhs.true211.if.end249.sink.split.sink.split_crit_edge: ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end249.sink.split.sink.split

land.lhs.true211.if.end249.sink.split_crit_edge:  ; preds = %land.lhs.true211
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end249.sink.split

if.else218:                                       ; preds = %if.then200
  %and203 = and i32 %121, -1048576
  %122 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %data, align 4
  %call221 = call fastcc ptr @u32_lookup_ht(ptr noundef %123, i32 noundef %and203)
  %tobool222.not = icmp eq ptr %call221, null
  br i1 %tobool222.not, label %do.body224, label %if.else218.if.end249_crit_edge

if.else218.if.end249_crit_edge:                   ; preds = %if.else218
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end249

do.body224:                                       ; preds = %if.else218
  call void @do_trace_netlink_extack(ptr noundef nonnull @u32_change.__msg.28) #13
  %tobool226.not = icmp eq ptr %extack, null
  br i1 %tobool226.not, label %do.body224.cleanup479_crit_edge, label %if.then227

do.body224.cleanup479_crit_edge:                  ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup479

if.then227:                                       ; preds = %do.body224
  call void @__sanitizer_cov_trace_pc() #15
  %124 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %124)
  store ptr @u32_change.__msg.28, ptr %extack, align 4
  br label %cleanup479

do.body235:                                       ; preds = %if.end197
  %call236 = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call236, label %do.body235.if.end249.sink.split_crit_edge, label %land.lhs.true237

do.body235.if.end249.sink.split_crit_edge:        ; preds = %do.body235
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end249.sink.split

land.lhs.true237:                                 ; preds = %do.body235
  %call238 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call238)
  %tobool239.not = icmp eq i32 %call238, 0
  br i1 %tobool239.not, label %land.lhs.true237.if.end249.sink.split_crit_edge, label %land.lhs.true240

land.lhs.true237.if.end249.sink.split_crit_edge:  ; preds = %land.lhs.true237
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end249.sink.split

land.lhs.true240:                                 ; preds = %land.lhs.true237
  %.b658663 = load i1, ptr @u32_change.__warned.29, align 1
  br i1 %.b658663, label %land.lhs.true240.if.end249.sink.split_crit_edge, label %land.lhs.true240.if.end249.sink.split.sink.split_crit_edge

land.lhs.true240.if.end249.sink.split.sink.split_crit_edge: ; preds = %land.lhs.true240
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end249.sink.split.sink.split

land.lhs.true240.if.end249.sink.split_crit_edge:  ; preds = %land.lhs.true240
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end249.sink.split

if.end249.sink.split.sink.split:                  ; preds = %land.lhs.true240.if.end249.sink.split.sink.split_crit_edge, %land.lhs.true211.if.end249.sink.split.sink.split_crit_edge
  %u32_change.__warned.29.sink = phi ptr [ @u32_change.__warned, %land.lhs.true211.if.end249.sink.split.sink.split_crit_edge ], [ @u32_change.__warned.29, %land.lhs.true240.if.end249.sink.split.sink.split_crit_edge ]
  %.sink734 = phi i32 [ 979, %land.lhs.true211.if.end249.sink.split.sink.split_crit_edge ], [ 989, %land.lhs.true240.if.end249.sink.split.sink.split_crit_edge ]
  %125 = ptrtoint ptr %u32_change.__warned.29.sink to i32
  call void @__asan_store1_noabort(i32 %125)
  store i1 true, ptr %u32_change.__warned.29.sink, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef %.sink734, ptr noundef nonnull @.str.16) #13
  br label %if.end249.sink.split

if.end249.sink.split:                             ; preds = %if.end249.sink.split.sink.split, %land.lhs.true240.if.end249.sink.split_crit_edge, %land.lhs.true237.if.end249.sink.split_crit_edge, %do.body235.if.end249.sink.split_crit_edge, %land.lhs.true211.if.end249.sink.split_crit_edge, %land.lhs.true208.if.end249.sink.split_crit_edge, %do.body206.if.end249.sink.split_crit_edge
  %.sink.in = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %126 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %126)
  %.sink = load ptr, ptr %.sink.in, align 4
  %handle217 = getelementptr inbounds %struct.tc_u_hnode, ptr %.sink, i32 0, i32 1
  %127 = ptrtoint ptr %handle217 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %handle217, align 4
  br label %if.end249

if.end249:                                        ; preds = %if.end249.sink.split, %if.else218.if.end249_crit_edge
  %htid.0 = phi i32 [ %121, %if.else218.if.end249_crit_edge ], [ %128, %if.end249.sink.split ]
  %ht.0 = phi ptr [ %call221, %if.else218.if.end249_crit_edge ], [ %.sink, %if.end249.sink.split ]
  %divisor250 = getelementptr inbounds %struct.tc_u_hnode, ptr %ht.0, i32 0, i32 4
  %129 = ptrtoint ptr %divisor250 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %divisor250, align 4
  %shr = lshr i32 %htid.0, 12
  %and251 = and i32 %shr, 255
  call void @__sanitizer_cov_trace_cmp4(i32 %130, i32 %and251)
  %cmp252 = icmp ult i32 %130, %and251
  br i1 %cmp252, label %do.body254, label %if.end262

do.body254:                                       ; preds = %if.end249
  call void @do_trace_netlink_extack(ptr noundef nonnull @u32_change.__msg.30) #13
  %tobool256.not = icmp eq ptr %extack, null
  br i1 %tobool256.not, label %do.body254.cleanup479_crit_edge, label %if.then257

do.body254.cleanup479_crit_edge:                  ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup479

if.then257:                                       ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #15
  %131 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr @u32_change.__msg.30, ptr %extack, align 4
  br label %cleanup479

if.end262:                                        ; preds = %if.end249
  %132 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %handle.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %133)
  %tobool263.not = icmp eq i32 %133, 0
  br i1 %tobool263.not, label %if.else288, label %if.then264

if.then264:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %133)
  %tobool266.not = icmp ult i32 %133, 1048576
  %xor268 = xor i32 %133, %htid.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %xor268)
  %tobool270.not = icmp ult i32 %xor268, 1048576
  %or.cond = select i1 %tobool266.not, i1 true, i1 %tobool270.not
  br i1 %or.cond, label %if.end280, label %do.body272

do.body272:                                       ; preds = %if.then264
  call void @do_trace_netlink_extack(ptr noundef nonnull @u32_change.__msg.31) #13
  %tobool274.not = icmp eq ptr %extack, null
  br i1 %tobool274.not, label %do.body272.cleanup479_crit_edge, label %if.then275

do.body272.cleanup479_crit_edge:                  ; preds = %do.body272
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup479

if.then275:                                       ; preds = %do.body272
  call void @__sanitizer_cov_trace_pc() #15
  %134 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr @u32_change.__msg.31, ptr %extack, align 4
  br label %cleanup479

if.end280:                                        ; preds = %if.then264
  %and281 = and i32 %133, 4095
  %or282 = or i32 %and281, %htid.0
  %135 = ptrtoint ptr %handle.addr to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 %or282, ptr %handle.addr, align 4
  %handle_idr283 = getelementptr inbounds %struct.tc_u_hnode, ptr %ht.0, i32 0, i32 5
  %call284 = call i32 @idr_alloc_u32(ptr noundef %handle_idr283, ptr noundef null, ptr noundef nonnull %handle.addr, i32 noundef %or282, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call284)
  %tobool285.not = icmp eq i32 %call284, 0
  br i1 %tobool285.not, label %if.end280.if.end290_crit_edge, label %if.end280.cleanup479_crit_edge

if.end280.cleanup479_crit_edge:                   ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup479

if.end280.if.end290_crit_edge:                    ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end290

if.else288:                                       ; preds = %if.end262
  call void @__sanitizer_cov_trace_pc() #15
  %call289 = call fastcc i32 @gen_new_kid(ptr noundef %ht.0, i32 noundef %htid.0)
  %136 = ptrtoint ptr %handle.addr to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %call289, ptr %handle.addr, align 4
  br label %if.end290

if.end290:                                        ; preds = %if.else288, %if.end280.if.end290_crit_edge
  %arrayidx291 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 5
  %137 = ptrtoint ptr %arrayidx291 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %arrayidx291, align 4
  %cmp292 = icmp eq ptr %138, null
  br i1 %cmp292, label %do.body294, label %if.end302

do.body294:                                       ; preds = %if.end290
  call void @do_trace_netlink_extack(ptr noundef nonnull @u32_change.__msg.32) #13
  %tobool296.not = icmp eq ptr %extack, null
  br i1 %tobool296.not, label %do.body294.erridr_crit_edge, label %if.then297

do.body294.erridr_crit_edge:                      ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #15
  br label %erridr

if.then297:                                       ; preds = %do.body294
  call void @__sanitizer_cov_trace_pc() #15
  %139 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %139)
  store ptr @u32_change.__msg.32, ptr %extack, align 4
  br label %erridr

if.end302:                                        ; preds = %if.end290
  %add.ptr.i = getelementptr i8, ptr %138, i32 4
  %nkeys = getelementptr i8, ptr %138, i32 6
  %140 = ptrtoint ptr %nkeys to i32
  call void @__asan_load1_noabort(i32 %140)
  %141 = load i8, ptr %nkeys, align 2
  %conv = zext i8 %141 to i32
  %142 = shl nuw nsw i32 %conv, 4
  %spec.select.i675714 = add nuw nsw i32 %142, 16
  %143 = ptrtoint ptr %138 to i32
  call void @__asan_load2_noabort(i32 %143)
  %144 = load i16, ptr %138, align 2
  %conv.i677 = zext i16 %144 to i32
  %sub.i = add nsw i32 %conv.i677, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %spec.select.i675714)
  %cmp308 = icmp ult i32 %sub.i, %spec.select.i675714
  br i1 %cmp308, label %if.end302.erridr_crit_edge, label %if.end8.i.i704

if.end302.erridr_crit_edge:                       ; preds = %if.end302
  call void @__sanitizer_cov_trace_pc() #15
  br label %erridr

if.end8.i.i704:                                   ; preds = %if.end302
  %spec.select.i678715 = add nuw nsw i32 %142, 156
  %call9.i.i703 = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i678715, i32 noundef 3520) #17
  %cmp316 = icmp eq ptr %call9.i.i703, null
  br i1 %cmp316, label %if.end8.i.i704.erridr_crit_edge, label %if.end319

if.end8.i.i704.erridr_crit_edge:                  ; preds = %if.end8.i.i704
  call void @__sanitizer_cov_trace_pc() #15
  br label %erridr

if.end319:                                        ; preds = %if.end8.i.i704
  %145 = ptrtoint ptr %nkeys to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %nkeys, align 2
  %conv321 = zext i8 %146 to i32
  %147 = shl nuw nsw i32 %conv321, 3
  %spec.select.i707716 = add nuw nsw i32 %147, 16
  %call323 = call noalias ptr @__alloc_percpu(i32 noundef %spec.select.i707716, i32 noundef 8) #17
  %pf = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i703, i32 0, i32 8
  %148 = ptrtoint ptr %pf to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %call323, ptr %pf, align 4
  %tobool325.not = icmp eq ptr %call323, null
  br i1 %tobool325.not, label %if.end319.errfree_crit_edge, label %if.end327

if.end319.errfree_crit_edge:                      ; preds = %if.end319
  call void @__sanitizer_cov_trace_pc() #15
  br label %errfree

if.end327:                                        ; preds = %if.end319
  %sel = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i703, i32 0, i32 15
  %149 = call ptr @memcpy(ptr %sel, ptr %add.ptr.i, i32 %spec.select.i675714)
  %ht_up = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i703, i32 0, i32 2
  %150 = ptrtoint ptr %ht_up to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %ht.0, ptr %ht_up, align 8
  %151 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %handle.addr, align 4
  %handle340 = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i703, i32 0, i32 1
  %153 = ptrtoint ptr %handle340 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %152, ptr %handle340, align 4
  %hmask = getelementptr i8, ptr %138, i32 16
  %154 = ptrtoint ptr %hmask to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %hmask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %155)
  %tobool341.not = icmp eq i32 %155, 0
  %156 = call i32 @llvm.cttz.i32(i32 %155, i1 true), !range !193
  %phi.cast = trunc i32 %156 to i8
  %cond = select i1 %tobool341.not, i8 0, i8 %phi.cast
  %fshift = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i703, i32 0, i32 5
  %157 = ptrtoint ptr %fshift to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %cond, ptr %fshift, align 4
  %flags344 = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i703, i32 0, i32 9
  %158 = ptrtoint ptr %flags344 to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %userflags.0, ptr %flags344, align 64
  %exts345 = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i703, i32 0, i32 3
  %call346 = call fastcc i32 @tcf_exts_init(ptr noundef %exts345, ptr noundef %net)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call346)
  %cmp347 = icmp slt i32 %call346, 0
  br i1 %cmp347, label %if.end327.errout_crit_edge, label %if.end350

if.end327.errout_crit_edge:                       ; preds = %if.end327
  call void @__sanitizer_cov_trace_pc() #15
  br label %errout

if.end350:                                        ; preds = %if.end327
  %call351 = call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #17
  %pcpu_success = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i703, i32 0, i32 13
  %159 = ptrtoint ptr %pcpu_success to i32
  call void @__asan_store4_noabort(i32 %159)
  store ptr %call351, ptr %pcpu_success, align 16
  %tobool353.not = icmp eq ptr %call351, null
  br i1 %tobool353.not, label %if.end350.errout_crit_edge, label %if.end355

if.end350.errout_crit_edge:                       ; preds = %if.end350
  call void @__sanitizer_cov_trace_pc() #15
  br label %errout

if.end355:                                        ; preds = %if.end350
  %arrayidx356 = getelementptr inbounds [13 x ptr], ptr %tb, i32 0, i32 10
  %160 = ptrtoint ptr %arrayidx356 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %arrayidx356, align 4
  %tobool357.not = icmp eq ptr %161, null
  br i1 %tobool357.not, label %if.end355.if.end363_crit_edge, label %if.then358

if.end355.if.end363_crit_edge:                    ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end363

if.then358:                                       ; preds = %if.end355
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr.i709 = getelementptr i8, ptr %161, i32 4
  %162 = ptrtoint ptr %add.ptr.i709 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %add.ptr.i709, align 4
  %val361 = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i703, i32 0, i32 11
  %164 = ptrtoint ptr %val361 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %val361, align 8
  %mask = getelementptr i8, ptr %161, i32 8
  %165 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %mask, align 4
  %mask362 = getelementptr inbounds %struct.tc_u_knode, ptr %call9.i.i703, i32 0, i32 12
  %167 = ptrtoint ptr %mask362 to i32
  call void @__asan_store4_noabort(i32 %167)
  store i32 %166, ptr %mask362, align 4
  br label %if.end363

if.end363:                                        ; preds = %if.then358, %if.end355.if.end363_crit_edge
  %arrayidx365 = getelementptr ptr, ptr %tca, i32 5
  %168 = ptrtoint ptr %arrayidx365 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %arrayidx365, align 4
  %170 = ptrtoint ptr %flags344 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %flags344, align 64
  %call367 = call fastcc i32 @u32_set_parms(ptr noundef %net, ptr noundef %tp, i32 noundef %base, ptr noundef nonnull %call9.i.i703, ptr noundef nonnull %tb, ptr noundef %169, i32 noundef %flags, i32 noundef %171, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call367)
  %cmp368 = icmp eq i32 %call367, 0
  br i1 %cmp368, label %if.then370, label %if.end363.errhw_crit_edge

if.end363.errhw_crit_edge:                        ; preds = %if.end363
  call void @__sanitizer_cov_trace_pc() #15
  br label %errhw

if.then370:                                       ; preds = %if.end363
  %call371 = call fastcc i32 @u32_replace_hw_knode(ptr noundef %tp, ptr noundef nonnull %call9.i.i703, i32 noundef %flags, ptr noundef %extack)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call371)
  %tobool372.not = icmp eq i32 %call371, 0
  br i1 %tobool372.not, label %if.end374, label %if.then370.errhw_crit_edge

if.then370.errhw_crit_edge:                       ; preds = %if.then370
  call void @__sanitizer_cov_trace_pc() #15
  br label %errhw

if.end374:                                        ; preds = %if.then370
  %172 = ptrtoint ptr %flags344 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %flags344, align 64
  %and.i710 = and i32 %173, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i710)
  %tobool.i711.not = icmp eq i32 %and.i710, 0
  br i1 %tobool.i711.not, label %if.then377, label %if.end374.if.end380_crit_edge

if.end374.if.end380_crit_edge:                    ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end380

if.then377:                                       ; preds = %if.end374
  call void @__sanitizer_cov_trace_pc() #15
  %or379 = or i32 %173, 8
  %174 = ptrtoint ptr %flags344 to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %or379, ptr %flags344, align 64
  br label %if.end380

if.end380:                                        ; preds = %if.then377, %if.end374.if.end380_crit_edge
  %175 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %handle.addr, align 4
  %shr382 = lshr i32 %176, 12
  %and383 = and i32 %shr382, 255
  %arrayidx384 = getelementptr %struct.tc_u_hnode, ptr %ht.0, i32 0, i32 9, i32 %and383
  %call386 = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call386, label %if.end380.do.end395_crit_edge, label %land.lhs.true387

if.end380.do.end395_crit_edge:                    ; preds = %if.end380
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end395

land.lhs.true387:                                 ; preds = %if.end380
  %call388 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call388)
  %tobool389.not = icmp eq i32 %call388, 0
  br i1 %tobool389.not, label %land.lhs.true387.do.end395_crit_edge, label %land.lhs.true390

land.lhs.true387.do.end395_crit_edge:             ; preds = %land.lhs.true387
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end395

land.lhs.true390:                                 ; preds = %land.lhs.true387
  %.b659662 = load i1, ptr @u32_change.__warned.33, align 1
  br i1 %.b659662, label %land.lhs.true390.do.end395_crit_edge, label %if.then392

land.lhs.true390.do.end395_crit_edge:             ; preds = %land.lhs.true390
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end395

if.then392:                                       ; preds = %land.lhs.true390
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_change.__warned.33, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1079, ptr noundef nonnull @.str.16) #13
  br label %do.end395

do.end395:                                        ; preds = %if.then392, %land.lhs.true390.do.end395_crit_edge, %land.lhs.true387.do.end395_crit_edge, %if.end380.do.end395_crit_edge
  %177 = ptrtoint ptr %arrayidx384 to i32
  call void @__asan_load4_noabort(i32 %177)
  %pins.0719 = load ptr, ptr %arrayidx384, align 4
  %tobool397.not720 = icmp eq ptr %pins.0719, null
  br i1 %tobool397.not720, label %do.end395.do.body423_crit_edge, label %for.body.preheader

do.end395.do.body423_crit_edge:                   ; preds = %do.end395
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body423

for.body.preheader:                               ; preds = %do.end395
  %178 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %handle.addr, align 4
  %and398726 = and i32 %179, 4095
  %handle399727 = getelementptr inbounds %struct.tc_u_knode, ptr %pins.0719, i32 0, i32 1
  %180 = ptrtoint ptr %handle399727 to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %handle399727, align 4
  %and400728 = and i32 %181, 4095
  call void @__sanitizer_cov_trace_cmp4(i32 %and398726, i32 %and400728)
  %cmp401729 = icmp ult i32 %and398726, %and400728
  br i1 %cmp401729, label %for.body.preheader.do.body423_crit_edge, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  br label %for.inc

for.body.preheader.do.body423_crit_edge:          ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body423

for.body:                                         ; preds = %do.end416
  %182 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %handle.addr, align 4
  %and398 = and i32 %183, 4095
  %handle399 = getelementptr inbounds %struct.tc_u_knode, ptr %pins.0, i32 0, i32 1
  %184 = ptrtoint ptr %handle399 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %handle399, align 4
  %and400 = and i32 %185, 4095
  %cmp401 = icmp ult i32 %and398, %and400
  br i1 %cmp401, label %for.body.do.body423_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.do.body423_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body423

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %pins.0722730 = phi ptr [ %pins.0, %for.body.for.inc_crit_edge ], [ %pins.0719, %for.body.preheader.for.inc_crit_edge ]
  %call407 = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call407, label %for.inc.do.end416_crit_edge, label %land.lhs.true408

for.inc.do.end416_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end416

land.lhs.true408:                                 ; preds = %for.inc
  %call409 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call409)
  %tobool410.not = icmp eq i32 %call409, 0
  br i1 %tobool410.not, label %land.lhs.true408.do.end416_crit_edge, label %land.lhs.true411

land.lhs.true408.do.end416_crit_edge:             ; preds = %land.lhs.true408
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end416

land.lhs.true411:                                 ; preds = %land.lhs.true408
  %.b660661 = load i1, ptr @u32_change.__warned.34, align 1
  br i1 %.b660661, label %land.lhs.true411.do.end416_crit_edge, label %if.then413

land.lhs.true411.do.end416_crit_edge:             ; preds = %land.lhs.true411
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end416

if.then413:                                       ; preds = %land.lhs.true411
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_change.__warned.34, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1080, ptr noundef nonnull @.str.16) #13
  br label %do.end416

do.end416:                                        ; preds = %if.then413, %land.lhs.true411.do.end416_crit_edge, %land.lhs.true408.do.end416_crit_edge, %for.inc.do.end416_crit_edge
  %186 = ptrtoint ptr %pins.0722730 to i32
  call void @__asan_load4_noabort(i32 %186)
  %pins.0 = load ptr, ptr %pins.0722730, align 4
  %tobool397.not = icmp eq ptr %pins.0, null
  br i1 %tobool397.not, label %do.end416.do.body423_crit_edge, label %for.body

do.end416.do.body423_crit_edge:                   ; preds = %do.end416
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body423

do.body423:                                       ; preds = %do.end416.do.body423_crit_edge, %for.body.do.body423_crit_edge, %for.body.preheader.do.body423_crit_edge, %do.end395.do.body423_crit_edge
  %ins.0.lcssa = phi ptr [ %arrayidx384, %do.end395.do.body423_crit_edge ], [ %arrayidx384, %for.body.preheader.do.body423_crit_edge ], [ %pins.0722730, %do.end416.do.body423_crit_edge ], [ %pins.0722730, %for.body.do.body423_crit_edge ]
  %pins.0.lcssa = phi ptr [ null, %do.end395.do.body423_crit_edge ], [ %pins.0719, %for.body.preheader.do.body423_crit_edge ], [ null, %do.end416.do.body423_crit_edge ], [ %pins.0, %for.body.do.body423_crit_edge ]
  %187 = ptrtoint ptr %call9.i.i703 to i32
  call void @__asan_store4_noabort(i32 %187)
  store volatile ptr %pins.0.lcssa, ptr %call9.i.i703, align 128
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !195
  %188 = ptrtoint ptr %ins.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %188)
  store volatile ptr %call9.i.i703, ptr %ins.0.lcssa, align 4
  %knodes = getelementptr inbounds %struct.tc_u_common, ptr %2, i32 0, i32 5
  %189 = ptrtoint ptr %knodes to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %knodes, align 4
  %inc = add i32 %190, 1
  store i32 %inc, ptr %knodes, align 4
  %191 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %191)
  store ptr %call9.i.i703, ptr %arg, align 4
  br label %cleanup479

errhw:                                            ; preds = %if.then370.errhw_crit_edge, %if.end363.errhw_crit_edge
  %err.0 = phi i32 [ %call367, %if.end363.errhw_crit_edge ], [ %call371, %if.then370.errhw_crit_edge ]
  %192 = ptrtoint ptr %pcpu_success to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %pcpu_success, align 16
  call void @free_percpu(ptr noundef %193) #13
  br label %errout

errout:                                           ; preds = %errhw, %if.end350.errout_crit_edge, %if.end327.errout_crit_edge
  %err.1 = phi i32 [ %call346, %if.end327.errout_crit_edge ], [ %err.0, %errhw ], [ -12, %if.end350.errout_crit_edge ]
  call void @tcf_exts_destroy(ptr noundef %exts345) #13
  br label %errfree

errfree:                                          ; preds = %errout, %if.end319.errfree_crit_edge
  %err.2 = phi i32 [ %err.1, %errout ], [ -105, %if.end319.errfree_crit_edge ]
  %194 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load ptr, ptr %pf, align 4
  call void @free_percpu(ptr noundef %195) #13
  call void @kfree(ptr noundef nonnull %call9.i.i703) #13
  br label %erridr

erridr:                                           ; preds = %errfree, %if.end8.i.i704.erridr_crit_edge, %if.end302.erridr_crit_edge, %if.then297, %do.body294.erridr_crit_edge
  %err.3 = phi i32 [ %err.2, %errfree ], [ -22, %if.then297 ], [ -22, %do.body294.erridr_crit_edge ], [ -22, %if.end302.erridr_crit_edge ], [ -105, %if.end8.i.i704.erridr_crit_edge ]
  %handle_idr477 = getelementptr inbounds %struct.tc_u_hnode, ptr %ht.0, i32 0, i32 5
  %196 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %handle.addr, align 4
  %call478 = call ptr @idr_remove(ptr noundef %handle_idr477, i32 noundef %197) #13
  br label %cleanup479

cleanup479:                                       ; preds = %erridr, %do.body423, %if.end280.cleanup479_crit_edge, %if.then275, %do.body272.cleanup479_crit_edge, %if.then257, %do.body254.cleanup479_crit_edge, %if.then227, %do.body224.cleanup479_crit_edge, %do.body150, %if.then141, %if.then131, %if.then126, %if.end8.i.i.cleanup479_crit_edge, %if.then110, %do.body107.cleanup479_crit_edge, %if.then98, %do.body95.cleanup479_crit_edge, %if.then87, %do.body84.cleanup479_crit_edge, %if.end73, %if.then66, %if.then61, %if.then66.i, %do.end.i.cleanup479_crit_edge, %if.then46, %do.body43.cleanup479_crit_edge, %if.then33, %do.body30.cleanup479_crit_edge, %if.then18, %do.body15.cleanup479_crit_edge, %if.end5.cleanup479_crit_edge, %if.then4, %do.body.cleanup479_crit_edge, %if.then.cleanup479_crit_edge
  %retval.3 = phi i32 [ %err.3, %erridr ], [ 0, %do.body423 ], [ -22, %if.then4 ], [ -22, %do.body.cleanup479_crit_edge ], [ 0, %if.then.cleanup479_crit_edge ], [ %call2.i, %if.end5.cleanup479_crit_edge ], [ -22, %if.then18 ], [ -22, %do.body15.cleanup479_crit_edge ], [ %call59, %if.then61 ], [ %call64, %if.then66 ], [ 0, %if.end73 ], [ -22, %if.then33 ], [ -22, %do.body30.cleanup479_crit_edge ], [ -22, %if.then46 ], [ -22, %do.body43.cleanup479_crit_edge ], [ -12, %if.then126 ], [ %call139, %if.then141 ], [ 0, %do.body150 ], [ %call129, %if.then131 ], [ -22, %if.then87 ], [ -22, %do.body84.cleanup479_crit_edge ], [ -22, %if.then98 ], [ -22, %do.body95.cleanup479_crit_edge ], [ -22, %if.then110 ], [ -22, %do.body107.cleanup479_crit_edge ], [ -105, %if.end8.i.i.cleanup479_crit_edge ], [ -22, %if.then227 ], [ -22, %do.body224.cleanup479_crit_edge ], [ -22, %if.then257 ], [ -22, %do.body254.cleanup479_crit_edge ], [ -22, %if.then275 ], [ -22, %do.body272.cleanup479_crit_edge ], [ %call284, %if.end280.cleanup479_crit_edge ], [ -12, %if.then66.i ], [ -12, %do.end.i.cleanup479_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %tb) #13
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u32_delete(ptr noundef %tp, ptr noundef %arg, ptr nocapture noundef writeonly %last, i1 noundef zeroext %rtnl_held, ptr noundef %extack) #2 align 64 {
entry:
  %cls_u32.i = alloca %struct.tc_cls_u32_offload, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %handle = getelementptr inbounds %struct.tc_u_hnode, ptr %arg, i32 0, i32 1
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle, align 4
  %and = and i32 %3, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %4 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chain.i, align 4
  %block1.i = getelementptr inbounds %struct.tcf_chain, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %block1.i, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cls_u32.i) #13
  %8 = getelementptr inbounds i8, ptr %cls_u32.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 48)
  %flags.i = getelementptr inbounds %struct.tc_u_knode, ptr %arg, i32 0, i32 9
  %10 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flags.i, align 4
  %index.i.i = getelementptr inbounds %struct.tcf_chain, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i, align 4
  %14 = ptrtoint ptr %cls_u32.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cls_u32.i, align 4
  %protocol.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %15 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol.i.i, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %8, align 4
  %prio.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %18 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prio.i.i, align 4
  %shr.i.i = lshr i32 %19, 16
  %prio2.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32.i, i32 0, i32 2
  %20 = ptrtoint ptr %prio2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr.i.i, ptr %prio2.i.i, align 4
  %21 = and i32 %11, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %if.then.u32_remove_hw_knode.exit_crit_edge, label %if.then.i.i

if.then.u32_remove_hw_knode.exit_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %u32_remove_hw_knode.exit

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %extack3.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32.i, i32 0, i32 3
  %23 = ptrtoint ptr %extack3.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %extack, ptr %extack3.i.i, align 4
  br label %u32_remove_hw_knode.exit

u32_remove_hw_knode.exit:                         ; preds = %if.then.i.i, %if.then.u32_remove_hw_knode.exit_crit_edge
  %command.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 1
  %24 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 2, ptr %command.i, align 4
  %25 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %handle, align 4
  %handle2.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 2, i32 0, i32 3
  %27 = ptrtoint ptr %handle2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %handle2.i, align 4
  %in_hw_count.i = getelementptr inbounds %struct.tc_u_knode, ptr %arg, i32 0, i32 10
  %call.i = call i32 @tc_setup_cb_destroy(ptr noundef %7, ptr noundef %tp, i32 noundef 1, ptr noundef nonnull %cls_u32.i, i1 noundef zeroext false, ptr noundef %flags.i, ptr noundef %in_hw_count.i, i1 noundef zeroext true) #13
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cls_u32.i) #13
  %28 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data, align 4
  %call.i38 = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call.i38, label %u32_remove_hw_knode.exit.do.end.i_crit_edge, label %land.lhs.true.i

u32_remove_hw_knode.exit.do.end.i_crit_edge:      ; preds = %u32_remove_hw_knode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %u32_remove_hw_knode.exit
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b3.i = load i1, ptr @u32_delete_key.__warned, align 1
  br i1 %.b3.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_delete_key.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 449, ptr noundef nonnull @.str.16) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %u32_remove_hw_knode.exit.do.end.i_crit_edge
  %ht_up.i = getelementptr inbounds %struct.tc_u_knode, ptr %arg, i32 0, i32 2
  %30 = ptrtoint ptr %ht_up.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ht_up.i, align 4
  %tobool4.not.i = icmp eq ptr %31, null
  br i1 %tobool4.not.i, label %do.end.i.do.end59.i_crit_edge, label %if.then5.i

do.end.i.do.end59.i_crit_edge:                    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end59.i

if.then5.i:                                       ; preds = %do.end.i
  %32 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %handle, align 4
  %shr.i = lshr i32 %33, 12
  %and.i = and i32 %shr.i, 255
  %arrayidx.i = getelementptr %struct.tc_u_hnode, ptr %31, i32 0, i32 9, i32 %and.i
  %call8.i = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call8.i, label %if.then5.i.do.end17.i_crit_edge, label %land.lhs.true9.i

if.then5.i.do.end17.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17.i

land.lhs.true9.i:                                 ; preds = %if.then5.i
  %call10.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %land.lhs.true9.i.do.end17.i_crit_edge, label %land.lhs.true12.i

land.lhs.true9.i.do.end17.i_crit_edge:            ; preds = %land.lhs.true9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17.i

land.lhs.true12.i:                                ; preds = %land.lhs.true9.i
  %.b912.i = load i1, ptr @u32_delete_key.__warned.43, align 1
  br i1 %.b912.i, label %land.lhs.true12.i.do.end17.i_crit_edge, label %if.then14.i

land.lhs.true12.i.do.end17.i_crit_edge:           ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end17.i

if.then14.i:                                      ; preds = %land.lhs.true12.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_delete_key.__warned.43, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 453, ptr noundef nonnull @.str.16) #13
  br label %do.end17.i

do.end17.i:                                       ; preds = %if.then14.i, %land.lhs.true12.i.do.end17.i_crit_edge, %land.lhs.true9.i.do.end17.i_crit_edge, %if.then5.i.do.end17.i_crit_edge
  %34 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %pkp.05.i = load ptr, ptr %arrayidx.i, align 4
  %tobool19.not6.i = icmp eq ptr %pkp.05.i, null
  br i1 %tobool19.not6.i, label %do.end17.i.do.end59.i_crit_edge, label %for.body.i.preheader

do.end17.i.do.end59.i_crit_edge:                  ; preds = %do.end17.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end59.i

for.body.i.preheader:                             ; preds = %do.end17.i
  %cmp.i41 = icmp eq ptr %pkp.05.i, %arg
  br i1 %cmp.i41, label %for.body.i.preheader.do.body26.i_crit_edge, label %for.body.i.preheader.for.inc.i_crit_edge

for.body.i.preheader.for.inc.i_crit_edge:         ; preds = %for.body.i.preheader
  br label %for.inc.i

for.body.i.preheader.do.body26.i_crit_edge:       ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body26.i

for.body.i:                                       ; preds = %do.end49.i
  %cmp.i = icmp eq ptr %pkp.0.i, %arg
  br i1 %cmp.i, label %for.body.i.do.body26.i_crit_edge, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

for.body.i.do.body26.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body26.i

do.body26.i:                                      ; preds = %for.body.i.do.body26.i_crit_edge, %for.body.i.preheader.do.body26.i_crit_edge
  %kp.07.i.lcssa = phi ptr [ %arrayidx.i, %for.body.i.preheader.do.body26.i_crit_edge ], [ %pkp.08.i42, %for.body.i.do.body26.i_crit_edge ]
  %35 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arg, align 4
  %37 = ptrtoint ptr %kp.07.i.lcssa to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %36, ptr %kp.07.i.lcssa, align 4
  %knodes.i = getelementptr inbounds %struct.tc_u_common, ptr %29, i32 0, i32 5
  %38 = ptrtoint ptr %knodes.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %knodes.i, align 4
  %dec.i = add i32 %39, -1
  store i32 %dec.i, ptr %knodes.i, align 4
  %40 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chain.i, align 4
  %block.i.i = getelementptr inbounds %struct.tcf_chain, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %block.i.i, align 4
  %q1.i.i = getelementptr inbounds %struct.tcf_block, ptr %43, i32 0, i32 6
  %44 = ptrtoint ptr %q1.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %q1.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %45, null
  br i1 %tobool.not.i.i, label %do.body26.i.tcf_unbind_filter.exit.i_crit_edge, label %if.end.i.i

do.body26.i.tcf_unbind_filter.exit.i_crit_edge:   ; preds = %do.body26.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcf_unbind_filter.exit.i

if.end.i.i:                                       ; preds = %do.body26.i
  %res.i = getelementptr inbounds %struct.tc_u_knode, ptr %arg, i32 0, i32 6
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %res.i, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !196
  call void @llvm.prefetch.p0(ptr %res.i, i32 1, i32 3, i32 1) #13
  %46 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res.i) #13, !srcloc !197
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %46, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i, label %if.end.i.i.tcf_unbind_filter.exit.i_crit_edge, label %if.then.i.i.i

if.end.i.i.tcf_unbind_filter.exit.i_crit_edge:    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcf_unbind_filter.exit.i

if.then.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  %ops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %45, i32 0, i32 4
  %47 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ops.i.i.i, align 16
  %cl_ops.i.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %cl_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cl_ops.i.i.i, align 4
  %unbind_tcf.i.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %50, i32 0, i32 11
  %51 = ptrtoint ptr %unbind_tcf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %unbind_tcf.i.i.i, align 4
  call void %52(ptr noundef nonnull %45, i32 noundef %asmresult.i.i.i.i.i) #13
  br label %tcf_unbind_filter.exit.i

tcf_unbind_filter.exit.i:                         ; preds = %if.then.i.i.i, %if.end.i.i.tcf_unbind_filter.exit.i_crit_edge, %do.body26.i.tcf_unbind_filter.exit.i_crit_edge
  %handle_idr.i = getelementptr inbounds %struct.tc_u_hnode, ptr %31, i32 0, i32 5
  %53 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %handle, align 4
  %call34.i = call ptr @idr_remove(ptr noundef %handle_idr.i, i32 noundef %54) #13
  %exts.i = getelementptr inbounds %struct.tc_u_knode, ptr %arg, i32 0, i32 3
  %call35.i = call fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts.i) #13
  %rwork.i = getelementptr inbounds %struct.tc_u_knode, ptr %arg, i32 0, i32 14
  %call36.i = call zeroext i1 @tcf_queue_work(ptr noundef %rwork.i, ptr noundef nonnull @u32_delete_key_freepf_work) #13
  br label %out

for.inc.i:                                        ; preds = %for.body.i.for.inc.i_crit_edge, %for.body.i.preheader.for.inc.i_crit_edge
  %pkp.08.i42 = phi ptr [ %pkp.0.i, %for.body.i.for.inc.i_crit_edge ], [ %pkp.05.i, %for.body.i.preheader.for.inc.i_crit_edge ]
  %call40.i = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call40.i, label %for.inc.i.do.end49.i_crit_edge, label %land.lhs.true41.i

for.inc.i.do.end49.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end49.i

land.lhs.true41.i:                                ; preds = %for.inc.i
  %call42.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42.i)
  %tobool43.not.i = icmp eq i32 %call42.i, 0
  br i1 %tobool43.not.i, label %land.lhs.true41.i.do.end49.i_crit_edge, label %land.lhs.true44.i

land.lhs.true41.i.do.end49.i_crit_edge:           ; preds = %land.lhs.true41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end49.i

land.lhs.true44.i:                                ; preds = %land.lhs.true41.i
  %.b921.i = load i1, ptr @u32_delete_key.__warned.44, align 1
  br i1 %.b921.i, label %land.lhs.true44.i.do.end49.i_crit_edge, label %if.then46.i

land.lhs.true44.i.do.end49.i_crit_edge:           ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end49.i

if.then46.i:                                      ; preds = %land.lhs.true44.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_delete_key.__warned.44, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 454, ptr noundef nonnull @.str.16) #13
  br label %do.end49.i

do.end49.i:                                       ; preds = %if.then46.i, %land.lhs.true44.i.do.end49.i_crit_edge, %land.lhs.true41.i.do.end49.i_crit_edge, %for.inc.i.do.end49.i_crit_edge
  %55 = ptrtoint ptr %pkp.08.i42 to i32
  call void @__asan_load4_noabort(i32 %55)
  %pkp.0.i = load ptr, ptr %pkp.08.i42, align 4
  %tobool19.not.i = icmp eq ptr %pkp.0.i, null
  br i1 %tobool19.not.i, label %do.end49.i.do.end59.i_crit_edge, label %for.body.i

do.end49.i.do.end59.i_crit_edge:                  ; preds = %do.end49.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end59.i

do.end59.i:                                       ; preds = %do.end49.i.do.end59.i_crit_edge, %do.end17.i.do.end59.i_crit_edge, %do.end.i.do.end59.i_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 467, i32 noundef 9, ptr noundef null) #13
  br label %out

if.end:                                           ; preds = %entry
  %is_root = getelementptr inbounds %struct.tc_u_hnode, ptr %arg, i32 0, i32 6
  %56 = ptrtoint ptr %is_root to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %is_root, align 4, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool1.not = icmp eq i8 %57, 0
  br i1 %tobool1.not, label %if.end6, label %do.body

do.body:                                          ; preds = %if.end
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @u32_delete.__msg) #13
  %tobool3.not = icmp eq ptr %extack, null
  br i1 %tobool3.not, label %do.body.cleanup_crit_edge, label %if.then4

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %58 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @u32_delete.__msg, ptr %extack, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %refcnt = getelementptr inbounds %struct.tc_u_hnode, ptr %arg, i32 0, i32 3
  %59 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %60)
  %cmp = icmp eq i32 %60, 1
  br i1 %cmp, label %if.then7, label %do.body9

if.then7:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @u32_destroy_hnode(ptr noundef %tp, ptr noundef %arg, ptr noundef %extack)
  br label %out

do.body9:                                         ; preds = %if.end6
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @u32_delete.__msg.42) #13
  %tobool11.not = icmp eq ptr %extack, null
  br i1 %tobool11.not, label %do.body9.cleanup_crit_edge, label %if.then12

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then12:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #15
  %61 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @u32_delete.__msg.42, ptr %extack, align 4
  br label %cleanup

out:                                              ; preds = %if.then7, %do.end59.i, %tcf_unbind_filter.exit.i
  %refcnt18 = getelementptr inbounds %struct.tc_u_common, ptr %1, i32 0, i32 2
  %62 = ptrtoint ptr %refcnt18 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %refcnt18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %63)
  %cmp19 = icmp eq i32 %63, 1
  br i1 %cmp19, label %land.rhs, label %out.land.end_crit_edge

out.land.end_crit_edge:                           ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %land.end

land.rhs:                                         ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  %knodes = getelementptr inbounds %struct.tc_u_common, ptr %1, i32 0, i32 5
  %64 = ptrtoint ptr %knodes to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %knodes, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp20 = icmp eq i32 %65, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %out.land.end_crit_edge
  %66 = phi i1 [ false, %out.land.end_crit_edge ], [ %cmp20, %land.rhs ]
  %frombool21 = zext i1 %66 to i8
  %67 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %67)
  store i8 %frombool21, ptr %last, align 1
  br label %cleanup

cleanup:                                          ; preds = %land.end, %if.then12, %do.body9.cleanup_crit_edge, %if.then4, %do.body.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %land.end ], [ -22, %if.then4 ], [ -22, %do.body.cleanup_crit_edge ], [ -16, %if.then12 ], [ -16, %do.body9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u32_walk(ptr noundef %tp, ptr noundef %arg, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %do.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.body:                                          ; preds = %entry
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true3

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true3:                                   ; preds = %land.lhs.true
  %.b118 = load i1, ptr @u32_walk.__warned, align 1
  br i1 %.b118, label %land.lhs.true3.do.end_crit_edge, label %if.then5

land.lhs.true3.do.end_crit_edge:                  ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then5:                                         ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_walk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1119, ptr noundef nonnull @.str.16) #13
  br label %do.end

do.end:                                           ; preds = %if.then5, %land.lhs.true3.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %ht.0123 = load ptr, ptr %1, align 4
  %tobool7.not124 = icmp eq ptr %ht.0123, null
  br i1 %tobool7.not124, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %prio8 = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %count = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %do.end80.for.body_crit_edge, %for.body.lr.ph
  %ht.0125 = phi ptr [ %ht.0123, %for.body.lr.ph ], [ %ht.0, %do.end80.for.body_crit_edge ]
  %prio = getelementptr inbounds %struct.tc_u_hnode, ptr %ht.0125, i32 0, i32 2
  %5 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %prio, align 4
  %7 = ptrtoint ptr %prio8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %prio8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp.not = icmp eq i32 %6, %8
  br i1 %cmp.not, label %if.end10, label %for.body.do.body70_crit_edge

for.body.do.body70_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body70

if.end10:                                         ; preds = %for.body
  %9 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %count, align 4
  %11 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp11.not = icmp slt i32 %10, %12
  br i1 %cmp11.not, label %if.end10.if.end18_crit_edge, label %if.then12

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then12:                                        ; preds = %if.end10
  %13 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %fn, align 4
  %call13 = tail call i32 %14(ptr noundef %tp, ptr noundef nonnull %ht.0125, ptr noundef %arg) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %if.then12.cleanup.sink.split_crit_edge, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end18

if.then12.cleanup.sink.split_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end18:                                         ; preds = %if.then12.if.end18_crit_edge, %if.end10.if.end18_crit_edge
  %15 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %count, align 4
  %inc = add i32 %16, 1
  store i32 %inc, ptr %count, align 4
  %divisor = getelementptr inbounds %struct.tc_u_hnode, ptr %ht.0125, i32 0, i32 4
  br label %do.body23

do.body23:                                        ; preds = %for.inc66.do.body23_crit_edge, %if.end18
  %h.0122 = phi i32 [ 0, %if.end18 ], [ %inc67, %for.inc66.do.body23_crit_edge ]
  %call24 = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call24, label %do.body23.do.end33_crit_edge, label %land.lhs.true25

do.body23.do.end33_crit_edge:                     ; preds = %do.body23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33

land.lhs.true25:                                  ; preds = %do.body23
  %call26 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true25.do.end33_crit_edge, label %land.lhs.true28

land.lhs.true25.do.end33_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33

land.lhs.true28:                                  ; preds = %land.lhs.true25
  %.b112117 = load i1, ptr @u32_walk.__warned.45, align 1
  br i1 %.b112117, label %land.lhs.true28.do.end33_crit_edge, label %if.then30

land.lhs.true28.do.end33_crit_edge:               ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end33

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_walk.__warned.45, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1132, ptr noundef nonnull @.str.16) #13
  br label %do.end33

do.end33:                                         ; preds = %if.then30, %land.lhs.true28.do.end33_crit_edge, %land.lhs.true25.do.end33_crit_edge, %do.body23.do.end33_crit_edge
  %arrayidx = getelementptr %struct.tc_u_hnode, ptr %ht.0125, i32 0, i32 9, i32 %h.0122
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %n.0119 = load ptr, ptr %arrayidx, align 4
  %tobool37.not120 = icmp eq ptr %n.0119, null
  br i1 %tobool37.not120, label %do.end33.for.inc66_crit_edge, label %do.end33.for.body38_crit_edge

do.end33.for.body38_crit_edge:                    ; preds = %do.end33
  br label %for.body38

do.end33.for.inc66_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc66

for.body38:                                       ; preds = %do.end64.for.body38_crit_edge, %do.end33.for.body38_crit_edge
  %n.0121 = phi ptr [ %n.0, %do.end64.for.body38_crit_edge ], [ %n.0119, %do.end33.for.body38_crit_edge ]
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  %20 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp41 = icmp slt i32 %19, %21
  br i1 %cmp41, label %for.body38.do.body54_crit_edge, label %if.end45

for.body38.do.body54_crit_edge:                   ; preds = %for.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body54

if.end45:                                         ; preds = %for.body38
  %22 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fn, align 4
  %call47 = tail call i32 %23(ptr noundef %tp, ptr noundef nonnull %n.0121, ptr noundef %arg) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.end45.cleanup.sink.split_crit_edge, label %if.end51

if.end45.cleanup.sink.split_crit_edge:            ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end51:                                         ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #15
  %24 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %count, align 4
  br label %do.body54

do.body54:                                        ; preds = %if.end51, %for.body38.do.body54_crit_edge
  %storemerge.in = phi i32 [ %25, %if.end51 ], [ %19, %for.body38.do.body54_crit_edge ]
  %storemerge = add i32 %storemerge.in, 1
  %26 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %storemerge, ptr %count, align 4
  %call55 = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call55, label %do.body54.do.end64_crit_edge, label %land.lhs.true56

do.body54.do.end64_crit_edge:                     ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end64

land.lhs.true56:                                  ; preds = %do.body54
  %call57 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call57)
  %tobool58.not = icmp eq i32 %call57, 0
  br i1 %tobool58.not, label %land.lhs.true56.do.end64_crit_edge, label %land.lhs.true59

land.lhs.true56.do.end64_crit_edge:               ; preds = %land.lhs.true56
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end64

land.lhs.true59:                                  ; preds = %land.lhs.true56
  %.b113116 = load i1, ptr @u32_walk.__warned.46, align 1
  br i1 %.b113116, label %land.lhs.true59.do.end64_crit_edge, label %if.then61

land.lhs.true59.do.end64_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end64

if.then61:                                        ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_walk.__warned.46, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1134, ptr noundef nonnull @.str.16) #13
  br label %do.end64

do.end64:                                         ; preds = %if.then61, %land.lhs.true59.do.end64_crit_edge, %land.lhs.true56.do.end64_crit_edge, %do.body54.do.end64_crit_edge
  %27 = ptrtoint ptr %n.0121 to i32
  call void @__asan_load4_noabort(i32 %27)
  %n.0 = load ptr, ptr %n.0121, align 4
  %tobool37.not = icmp eq ptr %n.0, null
  br i1 %tobool37.not, label %do.end64.for.inc66_crit_edge, label %do.end64.for.body38_crit_edge

do.end64.for.body38_crit_edge:                    ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body38

do.end64.for.inc66_crit_edge:                     ; preds = %do.end64
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc66

for.inc66:                                        ; preds = %do.end64.for.inc66_crit_edge, %do.end33.for.inc66_crit_edge
  %inc67 = add i32 %h.0122, 1
  %28 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %divisor, align 4
  %cmp21.not = icmp ugt i32 %inc67, %29
  br i1 %cmp21.not, label %for.inc66.do.body70_crit_edge, label %for.inc66.do.body23_crit_edge

for.inc66.do.body23_crit_edge:                    ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body23

for.inc66.do.body70_crit_edge:                    ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body70

do.body70:                                        ; preds = %for.inc66.do.body70_crit_edge, %for.body.do.body70_crit_edge
  %call71 = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call71, label %do.body70.do.end80_crit_edge, label %land.lhs.true72

do.body70.do.end80_crit_edge:                     ; preds = %do.body70
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end80

land.lhs.true72:                                  ; preds = %do.body70
  %call73 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %tobool74.not = icmp eq i32 %call73, 0
  br i1 %tobool74.not, label %land.lhs.true72.do.end80_crit_edge, label %land.lhs.true75

land.lhs.true72.do.end80_crit_edge:               ; preds = %land.lhs.true72
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end80

land.lhs.true75:                                  ; preds = %land.lhs.true72
  %.b114115 = load i1, ptr @u32_walk.__warned.47, align 1
  br i1 %.b114115, label %land.lhs.true75.do.end80_crit_edge, label %if.then77

land.lhs.true75.do.end80_crit_edge:               ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end80

if.then77:                                        ; preds = %land.lhs.true75
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_walk.__warned.47, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1121, ptr noundef nonnull @.str.16) #13
  br label %do.end80

do.end80:                                         ; preds = %if.then77, %land.lhs.true75.do.end80_crit_edge, %land.lhs.true72.do.end80_crit_edge, %do.body70.do.end80_crit_edge
  %30 = ptrtoint ptr %ht.0125 to i32
  call void @__asan_load4_noabort(i32 %30)
  %ht.0 = load ptr, ptr %ht.0125, align 4
  %tobool7.not = icmp eq ptr %ht.0, null
  br i1 %tobool7.not, label %do.end80.cleanup_crit_edge, label %do.end80.for.body_crit_edge

do.end80.for.body_crit_edge:                      ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.end80.cleanup_crit_edge:                       ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end45.cleanup.sink.split_crit_edge, %if.then12.cleanup.sink.split_crit_edge
  %31 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 1, ptr %arg, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %do.end80.cleanup_crit_edge, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u32_reoffload(ptr noundef %tp, i1 noundef zeroext %add, ptr noundef %cb, ptr noundef %cb_priv, ptr noundef %extack) #2 align 64 {
entry:
  %cls_u32.i142 = alloca %struct.tc_cls_u32_offload, align 4
  %cls_u32.i126 = alloca %struct.tc_cls_u32_offload, align 4
  %cls_u32.i = alloca %struct.tc_cls_u32_offload, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b123 = load i1, ptr @u32_reoffload.__warned, align 1
  br i1 %.b123, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_reoffload.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1212, ptr noundef nonnull @.str.16) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %ht.0173 = load ptr, ptr %1, align 4
  %tobool4.not174 = icmp eq ptr %ht.0173, null
  br i1 %tobool4.not174, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %prio5 = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %3 = getelementptr inbounds i8, ptr %cls_u32.i, i32 4
  %chain.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %protocol.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %prio2.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32.i, i32 0, i32 2
  %extack3.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32.i, i32 0, i32 3
  %command.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 1
  %4 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 2
  %divisor1.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 2, i32 0, i32 2
  %prio3.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 2, i32 0, i32 1
  %5 = getelementptr inbounds i8, ptr %cls_u32.i126, i32 4
  %prio2.i.i134 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32.i126, i32 0, i32 2
  %extack3.i.i135 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32.i126, i32 0, i32 3
  %cond.i = select i1 %add, i32 1, i32 2
  %command.i137 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i126, i32 0, i32 1
  %handle6.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i126, i32 0, i32 2, i32 0, i32 3
  %6 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i126, i32 0, i32 2
  %fshift9.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i126, i32 0, i32 2, i32 0, i32 7
  %val10.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i126, i32 0, i32 2, i32 0, i32 4
  %mask11.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i126, i32 0, i32 2, i32 0, i32 5
  %sel12.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i126, i32 0, i32 2, i32 0, i32 2
  %res13.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i126, i32 0, i32 2, i32 0, i32 1
  %link_handle.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i126, i32 0, i32 2, i32 0, i32 6
  %7 = getelementptr inbounds i8, ptr %cls_u32.i142, i32 4
  %prio2.i.i150 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32.i142, i32 0, i32 2
  %extack3.i.i151 = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32.i142, i32 0, i32 3
  %command.i153 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i142, i32 0, i32 1
  %8 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i142, i32 0, i32 2
  %divisor1.i155 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i142, i32 0, i32 2, i32 0, i32 2
  %prio3.i158 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i142, i32 0, i32 2, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %do.end79.for.body_crit_edge, %for.body.lr.ph
  %ht.0175 = phi ptr [ %ht.0173, %for.body.lr.ph ], [ %ht.0, %do.end79.for.body_crit_edge ]
  %prio = getelementptr inbounds %struct.tc_u_hnode, ptr %ht.0175, i32 0, i32 2
  %9 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %prio, align 4
  %11 = ptrtoint ptr %prio5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %prio5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not = icmp eq i32 %10, %12
  br i1 %cmp.not, label %if.end7, label %for.body.do.body69_crit_edge

for.body.do.body69_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body69

if.end7:                                          ; preds = %for.body
  br i1 %add, label %land.lhs.true9, label %if.end7.if.end17_crit_edge

if.end7.if.end17_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

land.lhs.true9:                                   ; preds = %if.end7
  %flags = getelementptr inbounds %struct.tc_u_hnode, ptr %ht.0175, i32 0, i32 8
  %13 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags, align 4
  %and.i = and i32 %14, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then11, label %land.lhs.true9.if.end17_crit_edge

land.lhs.true9.if.end17_crit_edge:                ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then11:                                        ; preds = %land.lhs.true9
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cls_u32.i) #13
  %15 = call ptr @memset(ptr %3, i32 0, i32 48)
  %16 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chain.i.i, align 4
  %index.i.i = getelementptr inbounds %struct.tcf_chain, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %index.i.i, align 4
  %20 = ptrtoint ptr %cls_u32.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cls_u32.i, align 4
  %21 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %protocol.i.i, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %22, ptr %3, align 4
  %shr.i.i = lshr i32 %10, 16
  %24 = ptrtoint ptr %prio2.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %shr.i.i, ptr %prio2.i.i, align 4
  %25 = and i32 %14, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %if.then11.tc_cls_common_offload_init.exit.i_crit_edge, label %if.then.i.i

if.then11.tc_cls_common_offload_init.exit.i_crit_edge: ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  br label %tc_cls_common_offload_init.exit.i

if.then.i.i:                                      ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #15
  %27 = ptrtoint ptr %extack3.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %extack, ptr %extack3.i.i, align 4
  br label %tc_cls_common_offload_init.exit.i

tc_cls_common_offload_init.exit.i:                ; preds = %if.then.i.i, %if.then11.tc_cls_common_offload_init.exit.i_crit_edge
  %28 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 3, ptr %command.i, align 4
  %divisor.i = getelementptr inbounds %struct.tc_u_hnode, ptr %ht.0175, i32 0, i32 4
  %29 = ptrtoint ptr %divisor.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %divisor.i, align 4
  %31 = ptrtoint ptr %divisor1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %divisor1.i, align 4
  %handle.i = getelementptr inbounds %struct.tc_u_hnode, ptr %ht.0175, i32 0, i32 1
  %32 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %handle.i, align 4
  %34 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %4, align 4
  %35 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %prio, align 4
  %37 = ptrtoint ptr %prio3.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %prio3.i, align 4
  %call.i = call i32 %cb(i32 noundef 1, ptr noundef nonnull %cls_u32.i, ptr noundef %cb_priv) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not.i.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not.i.not, label %tc_cls_common_offload_init.exit.i.u32_reoffload_hnode.exit.thread_crit_edge, label %land.lhs.true6.i

tc_cls_common_offload_init.exit.i.u32_reoffload_hnode.exit.thread_crit_edge: ; preds = %tc_cls_common_offload_init.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u32_reoffload_hnode.exit.thread

land.lhs.true6.i:                                 ; preds = %tc_cls_common_offload_init.exit.i
  %38 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %flags, align 4
  %and.i.i = and i32 %39, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %land.lhs.true6.i.u32_reoffload_hnode.exit.thread_crit_edge, label %u32_reoffload_hnode.exit

land.lhs.true6.i.u32_reoffload_hnode.exit.thread_crit_edge: ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u32_reoffload_hnode.exit.thread

u32_reoffload_hnode.exit.thread:                  ; preds = %land.lhs.true6.i.u32_reoffload_hnode.exit.thread_crit_edge, %tc_cls_common_offload_init.exit.i.u32_reoffload_hnode.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cls_u32.i) #13
  br label %if.end17

u32_reoffload_hnode.exit:                         ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cls_u32.i) #13
  br label %cleanup

if.end17:                                         ; preds = %u32_reoffload_hnode.exit.thread, %land.lhs.true9.if.end17_crit_edge, %if.end7.if.end17_crit_edge
  %divisor = getelementptr inbounds %struct.tc_u_hnode, ptr %ht.0175, i32 0, i32 4
  br label %do.body21

do.body21:                                        ; preds = %for.inc58.do.body21_crit_edge, %if.end17
  %h.0172 = phi i32 [ 0, %if.end17 ], [ %inc, %for.inc58.do.body21_crit_edge ]
  %call22 = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call22, label %do.body21.do.end31_crit_edge, label %land.lhs.true23

do.body21.do.end31_crit_edge:                     ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31

land.lhs.true23:                                  ; preds = %do.body21
  %call24 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %land.lhs.true23.do.end31_crit_edge, label %land.lhs.true26

land.lhs.true23.do.end31_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31

land.lhs.true26:                                  ; preds = %land.lhs.true23
  %.b117122 = load i1, ptr @u32_reoffload.__warned.48, align 1
  br i1 %.b117122, label %land.lhs.true26.do.end31_crit_edge, label %if.then28

land.lhs.true26.do.end31_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end31

if.then28:                                        ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_reoffload.__warned.48, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1230, ptr noundef nonnull @.str.16) #13
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %land.lhs.true26.do.end31_crit_edge, %land.lhs.true23.do.end31_crit_edge, %do.body21.do.end31_crit_edge
  %arrayidx = getelementptr %struct.tc_u_hnode, ptr %ht.0175, i32 0, i32 9, i32 %h.0172
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %40)
  %n.0169 = load ptr, ptr %arrayidx, align 4
  %tobool35.not170 = icmp eq ptr %n.0169, null
  br i1 %tobool35.not170, label %do.end31.for.inc58_crit_edge, label %do.end31.for.body36_crit_edge

do.end31.for.body36_crit_edge:                    ; preds = %do.end31
  br label %for.body36

do.end31.for.inc58_crit_edge:                     ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc58

for.body36:                                       ; preds = %do.end56.for.body36_crit_edge, %do.end31.for.body36_crit_edge
  %n.0171 = phi ptr [ %n.0, %do.end56.for.body36_crit_edge ], [ %n.0169, %do.end31.for.body36_crit_edge ]
  %flags37 = getelementptr inbounds %struct.tc_u_knode, ptr %n.0171, i32 0, i32 9
  %41 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %flags37, align 4
  %and.i124 = and i32 %42, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i124)
  %tobool.i125.not = icmp eq i32 %and.i124, 0
  br i1 %tobool.i125.not, label %if.end40, label %for.body36.do.body46_crit_edge

for.body36.do.body46_crit_edge:                   ; preds = %for.body36
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body46

if.end40:                                         ; preds = %for.body36
  %call.i127 = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call.i127, label %if.end40.do.end.i_crit_edge, label %land.lhs.true.i

if.end40.do.end.i_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %if.end40
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b39.i = load i1, ptr @u32_reoffload_knode.__warned, align 1
  br i1 %.b39.i, label %land.lhs.true2.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true2.i.do.end.i_crit_edge:              ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_reoffload_knode.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1173, ptr noundef nonnull @.str.16) #13
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true2.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %if.end40.do.end.i_crit_edge
  %ht_down.i = getelementptr inbounds %struct.tc_u_knode, ptr %n.0171, i32 0, i32 7
  %43 = ptrtoint ptr %ht_down.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ht_down.i, align 4
  %45 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chain.i.i, align 4
  %block4.i = getelementptr inbounds %struct.tcf_chain, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %block4.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %block4.i, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cls_u32.i126) #13
  %49 = call ptr @memset(ptr %5, i32 0, i32 48)
  %50 = ptrtoint ptr %flags37 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags37, align 4
  %index.i.i129 = getelementptr inbounds %struct.tcf_chain, ptr %46, i32 0, i32 4
  %52 = ptrtoint ptr %index.i.i129 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index.i.i129, align 4
  %54 = ptrtoint ptr %cls_u32.i126 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %cls_u32.i126, align 4
  %55 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %protocol.i.i, align 4
  %57 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %5, align 4
  %58 = ptrtoint ptr %prio5 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %prio5, align 4
  %shr.i.i133 = lshr i32 %59, 16
  %60 = ptrtoint ptr %prio2.i.i134 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %shr.i.i133, ptr %prio2.i.i134, align 4
  %61 = and i32 %51, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %do.end.i.tc_cls_common_offload_init.exit.i139_crit_edge, label %if.then.i.i136

do.end.i.tc_cls_common_offload_init.exit.i139_crit_edge: ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tc_cls_common_offload_init.exit.i139

if.then.i.i136:                                   ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %63 = ptrtoint ptr %extack3.i.i135 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %extack, ptr %extack3.i.i135, align 4
  br label %tc_cls_common_offload_init.exit.i139

tc_cls_common_offload_init.exit.i139:             ; preds = %if.then.i.i136, %do.end.i.tc_cls_common_offload_init.exit.i139_crit_edge
  %64 = ptrtoint ptr %command.i137 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %cond.i, ptr %command.i137, align 4
  %handle.i138 = getelementptr inbounds %struct.tc_u_knode, ptr %n.0171, i32 0, i32 1
  %65 = ptrtoint ptr %handle.i138 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %handle.i138, align 4
  %67 = ptrtoint ptr %handle6.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %handle6.i, align 4
  br i1 %add, label %if.then8.i, label %tc_cls_common_offload_init.exit.i139.u32_reoffload_knode.exit_crit_edge

tc_cls_common_offload_init.exit.i139.u32_reoffload_knode.exit_crit_edge: ; preds = %tc_cls_common_offload_init.exit.i139
  call void @__sanitizer_cov_trace_pc() #15
  br label %u32_reoffload_knode.exit

if.then8.i:                                       ; preds = %tc_cls_common_offload_init.exit.i139
  %fshift.i = getelementptr inbounds %struct.tc_u_knode, ptr %n.0171, i32 0, i32 5
  %68 = ptrtoint ptr %fshift.i to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %fshift.i, align 4
  %70 = ptrtoint ptr %fshift9.i to i32
  call void @__asan_store1_noabort(i32 %70)
  store i8 %69, ptr %fshift9.i, align 4
  %val.i = getelementptr inbounds %struct.tc_u_knode, ptr %n.0171, i32 0, i32 11
  %71 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %val.i, align 4
  %73 = ptrtoint ptr %val10.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %val10.i, align 4
  %mask.i = getelementptr inbounds %struct.tc_u_knode, ptr %n.0171, i32 0, i32 12
  %74 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mask.i, align 4
  %76 = ptrtoint ptr %mask11.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %mask11.i, align 4
  %sel.i = getelementptr inbounds %struct.tc_u_knode, ptr %n.0171, i32 0, i32 15
  %77 = ptrtoint ptr %sel12.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %sel.i, ptr %sel12.i, align 4
  %res.i = getelementptr inbounds %struct.tc_u_knode, ptr %n.0171, i32 0, i32 6
  %78 = ptrtoint ptr %res13.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %res.i, ptr %res13.i, align 4
  %exts.i = getelementptr inbounds %struct.tc_u_knode, ptr %n.0171, i32 0, i32 3
  %79 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %exts.i, ptr %6, align 4
  %tobool16.not.i = icmp eq ptr %44, null
  br i1 %tobool16.not.i, label %if.then8.i.u32_reoffload_knode.exit_crit_edge, label %if.then17.i

if.then8.i.u32_reoffload_knode.exit_crit_edge:    ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %u32_reoffload_knode.exit

if.then17.i:                                      ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #15
  %handle18.i = getelementptr inbounds %struct.tc_u_hnode, ptr %44, i32 0, i32 1
  %80 = ptrtoint ptr %handle18.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %handle18.i, align 4
  %82 = ptrtoint ptr %link_handle.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %link_handle.i, align 4
  br label %u32_reoffload_knode.exit

u32_reoffload_knode.exit:                         ; preds = %if.then17.i, %if.then8.i.u32_reoffload_knode.exit_crit_edge, %tc_cls_common_offload_init.exit.i139.u32_reoffload_knode.exit_crit_edge
  %in_hw_count.i = getelementptr inbounds %struct.tc_u_knode, ptr %n.0171, i32 0, i32 10
  %call23.i = call i32 @tc_setup_cb_reoffload(ptr noundef %48, ptr noundef %tp, i1 noundef zeroext %add, ptr noundef %cb, i32 noundef 1, ptr noundef nonnull %cls_u32.i126, ptr noundef %cb_priv, ptr noundef %flags37, ptr noundef %in_hw_count.i) #13
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cls_u32.i126) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %tobool43.not = icmp eq i32 %call23.i, 0
  br i1 %tobool43.not, label %u32_reoffload_knode.exit.do.body46_crit_edge, label %u32_reoffload_knode.exit.cleanup_crit_edge

u32_reoffload_knode.exit.cleanup_crit_edge:       ; preds = %u32_reoffload_knode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

u32_reoffload_knode.exit.do.body46_crit_edge:     ; preds = %u32_reoffload_knode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body46

do.body46:                                        ; preds = %u32_reoffload_knode.exit.do.body46_crit_edge, %for.body36.do.body46_crit_edge
  %call47 = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call47, label %do.body46.do.end56_crit_edge, label %land.lhs.true48

do.body46.do.end56_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end56

land.lhs.true48:                                  ; preds = %do.body46
  %call49 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true48.do.end56_crit_edge, label %land.lhs.true51

land.lhs.true48.do.end56_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end56

land.lhs.true51:                                  ; preds = %land.lhs.true48
  %.b118121 = load i1, ptr @u32_reoffload.__warned.49, align 1
  br i1 %.b118121, label %land.lhs.true51.do.end56_crit_edge, label %if.then53

land.lhs.true51.do.end56_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end56

if.then53:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_reoffload.__warned.49, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1232, ptr noundef nonnull @.str.16) #13
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %land.lhs.true51.do.end56_crit_edge, %land.lhs.true48.do.end56_crit_edge, %do.body46.do.end56_crit_edge
  %83 = ptrtoint ptr %n.0171 to i32
  call void @__asan_load4_noabort(i32 %83)
  %n.0 = load ptr, ptr %n.0171, align 4
  %tobool35.not = icmp eq ptr %n.0, null
  br i1 %tobool35.not, label %do.end56.for.inc58_crit_edge, label %do.end56.for.body36_crit_edge

do.end56.for.body36_crit_edge:                    ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body36

do.end56.for.inc58_crit_edge:                     ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc58

for.inc58:                                        ; preds = %do.end56.for.inc58_crit_edge, %do.end31.for.inc58_crit_edge
  %inc = add i32 %h.0172, 1
  %84 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %divisor, align 4
  %cmp19.not = icmp ugt i32 %inc, %85
  br i1 %cmp19.not, label %for.end59, label %for.inc58.do.body21_crit_edge

for.inc58.do.body21_crit_edge:                    ; preds = %for.inc58
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body21

for.end59:                                        ; preds = %for.inc58
  br i1 %add, label %for.end59.do.body69_crit_edge, label %land.lhs.true61

for.end59.do.body69_crit_edge:                    ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body69

land.lhs.true61:                                  ; preds = %for.end59
  %flags62 = getelementptr inbounds %struct.tc_u_hnode, ptr %ht.0175, i32 0, i32 8
  %86 = ptrtoint ptr %flags62 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %flags62, align 4
  %and.i140 = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i140)
  %tobool.i141.not = icmp eq i32 %and.i140, 0
  br i1 %tobool.i141.not, label %if.then64, label %land.lhs.true61.do.body69_crit_edge

land.lhs.true61.do.body69_crit_edge:              ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body69

if.then64:                                        ; preds = %land.lhs.true61
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cls_u32.i142) #13
  %88 = call ptr @memset(ptr %7, i32 0, i32 48)
  %89 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %chain.i.i, align 4
  %index.i.i145 = getelementptr inbounds %struct.tcf_chain, ptr %90, i32 0, i32 4
  %91 = ptrtoint ptr %index.i.i145 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %index.i.i145, align 4
  %93 = ptrtoint ptr %cls_u32.i142 to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %92, ptr %cls_u32.i142, align 4
  %94 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %protocol.i.i, align 4
  %96 = ptrtoint ptr %7 to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %7, align 4
  %97 = ptrtoint ptr %prio5 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %prio5, align 4
  %shr.i.i149 = lshr i32 %98, 16
  %99 = ptrtoint ptr %prio2.i.i150 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %shr.i.i149, ptr %prio2.i.i150, align 4
  %100 = and i32 %87, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %if.then64.u32_reoffload_hnode.exit164_crit_edge, label %if.then.i.i152

if.then64.u32_reoffload_hnode.exit164_crit_edge:  ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  br label %u32_reoffload_hnode.exit164

if.then.i.i152:                                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #15
  %102 = ptrtoint ptr %extack3.i.i151 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %extack, ptr %extack3.i.i151, align 4
  br label %u32_reoffload_hnode.exit164

u32_reoffload_hnode.exit164:                      ; preds = %if.then.i.i152, %if.then64.u32_reoffload_hnode.exit164_crit_edge
  %103 = ptrtoint ptr %command.i153 to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 5, ptr %command.i153, align 4
  %104 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %divisor, align 4
  %106 = ptrtoint ptr %divisor1.i155 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %105, ptr %divisor1.i155, align 4
  %handle.i156 = getelementptr inbounds %struct.tc_u_hnode, ptr %ht.0175, i32 0, i32 1
  %107 = ptrtoint ptr %handle.i156 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %handle.i156, align 4
  %109 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %8, align 4
  %110 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %prio, align 4
  %112 = ptrtoint ptr %prio3.i158 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %prio3.i158, align 4
  %call.i159 = call i32 %cb(i32 noundef 1, ptr noundef nonnull %cls_u32.i142, ptr noundef %cb_priv) #13
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cls_u32.i142) #13
  br label %do.body69

do.body69:                                        ; preds = %u32_reoffload_hnode.exit164, %land.lhs.true61.do.body69_crit_edge, %for.end59.do.body69_crit_edge, %for.body.do.body69_crit_edge
  %call70 = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call70, label %do.body69.do.end79_crit_edge, label %land.lhs.true71

do.body69.do.end79_crit_edge:                     ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end79

land.lhs.true71:                                  ; preds = %do.body69
  %call72 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72)
  %tobool73.not = icmp eq i32 %call72, 0
  br i1 %tobool73.not, label %land.lhs.true71.do.end79_crit_edge, label %land.lhs.true74

land.lhs.true71.do.end79_crit_edge:               ; preds = %land.lhs.true71
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end79

land.lhs.true74:                                  ; preds = %land.lhs.true71
  %.b119120 = load i1, ptr @u32_reoffload.__warned.50, align 1
  br i1 %.b119120, label %land.lhs.true74.do.end79_crit_edge, label %if.then76

land.lhs.true74.do.end79_crit_edge:               ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end79

if.then76:                                        ; preds = %land.lhs.true74
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_reoffload.__warned.50, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1214, ptr noundef nonnull @.str.16) #13
  br label %do.end79

do.end79:                                         ; preds = %if.then76, %land.lhs.true74.do.end79_crit_edge, %land.lhs.true71.do.end79_crit_edge, %do.body69.do.end79_crit_edge
  %113 = ptrtoint ptr %ht.0175 to i32
  call void @__asan_load4_noabort(i32 %113)
  %ht.0 = load ptr, ptr %ht.0175, align 4
  %tobool4.not = icmp eq ptr %ht.0, null
  br i1 %tobool4.not, label %do.end79.cleanup_crit_edge, label %do.end79.for.body_crit_edge

do.end79.for.body_crit_edge:                      ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.end79.cleanup_crit_edge:                       ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %do.end79.cleanup_crit_edge, %u32_reoffload_knode.exit.cleanup_crit_edge, %u32_reoffload_hnode.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %u32_reoffload_hnode.exit ], [ 0, %do.end.cleanup_crit_edge ], [ %call23.i, %u32_reoffload_knode.exit.cleanup_crit_edge ], [ 0, %do.end79.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u32_bind_class(ptr noundef %fh, i32 noundef %classid, i32 noundef %cl, ptr noundef %q, i32 noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fh, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %res = getelementptr inbounds %struct.tc_u_knode, ptr %fh, i32 0, i32 6
  %classid1 = getelementptr inbounds %struct.tc_u_knode, ptr %fh, i32 0, i32 6, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %classid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %classid1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %classid)
  %cmp = icmp eq i32 %1, %classid
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
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
  %call.i = tail call i32 %7(ptr noundef %q, i32 noundef %base, i32 noundef %9) #13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #13
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %call.i, ptr %res) #13, !srcloc !197
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i, label %if.then3.if.end6_crit_edge, label %if.then3.if.end6.sink.split_crit_edge

if.then3.if.end6.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6.sink.split

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.else:                                          ; preds = %if.then
  %call.i.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #13
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #13, !srcloc !197
  %asmresult.i.i.i12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i12)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i12, 0
  br i1 %cmp.not.i, label %if.else.if.end6_crit_edge, label %if.then.i16

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then.i16:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
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
  tail call void %17(ptr noundef %q, i32 noundef %asmresult.i.i.i12.sink) #13
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.else.if.end6_crit_edge, %if.then3.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @u32_dump(ptr noundef %net, ptr nocapture noundef readnone %tp, ptr noundef %fh, ptr noundef %skb, ptr nocapture noundef writeonly %t, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  %tmp.i269 = alloca i32, align 4
  %tmp.i267 = alloca i32, align 4
  %tmp.i265 = alloca i32, align 4
  %tmp.i263 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %mark = alloca %struct.tc_u32_mark, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %fh, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  br label %cleanup185

if.end:                                           ; preds = %entry
  %handle = getelementptr inbounds %struct.tc_u_knode, ptr %fh, i32 0, i32 1
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle, align 4
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %t, i32 0, i32 4
  %4 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tcm_handle, align 4
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %5 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tail.i.i, align 8
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp1289 = icmp eq ptr %6, null
  %cmp1 = select i1 %cmp.i, i1 true, i1 %cmp1289
  br i1 %cmp1, label %if.end.cleanup185_crit_edge, label %if.end3

if.end.cleanup185_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup185

if.end3:                                          ; preds = %if.end
  %7 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle, align 4
  %and = and i32 %8, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp5 = icmp eq i32 %and, 0
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end3
  %divisor7 = getelementptr inbounds %struct.tc_u_hnode, ptr %fh, i32 0, i32 4
  %9 = ptrtoint ptr %divisor7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %divisor7, align 4
  %add = add i32 %10, 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #13
  %11 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then6.if.end171_crit_edge, label %if.then6.if.then.i.i277_crit_edge

if.then6.if.then.i.i277_crit_edge:                ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i277

if.then6.if.end171_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171

if.else:                                          ; preds = %if.end3
  %sel = getelementptr inbounds %struct.tc_u_knode, ptr %fh, i32 0, i32 15
  %nkeys = getelementptr inbounds %struct.tc_u_knode, ptr %fh, i32 0, i32 15, i32 2
  %12 = ptrtoint ptr %nkeys to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %nkeys, align 2
  %conv = zext i8 %13 to i32
  %14 = shl nuw nsw i32 %conv, 4
  %spec.select.i286 = add nuw nsw i32 %14, 16
  %call14 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef %spec.select.i286, ptr noundef %sel) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body, label %if.else.if.then.i.i277_crit_edge

if.else.if.then.i.i277_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i277

do.body:                                          ; preds = %if.else
  %call18 = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call18, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call19 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true21

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true21:                                  ; preds = %land.lhs.true
  %.b260 = load i1, ptr @u32_dump.__warned, align 1
  br i1 %.b260, label %land.lhs.true21.do.end_crit_edge, label %if.then23

land.lhs.true21.do.end_crit_edge:                 ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then23:                                        ; preds = %land.lhs.true21
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_dump.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1295, ptr noundef nonnull @.str.16) #13
  br label %do.end

do.end:                                           ; preds = %if.then23, %land.lhs.true21.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %ht_up25 = getelementptr inbounds %struct.tc_u_knode, ptr %fh, i32 0, i32 2
  %15 = ptrtoint ptr %ht_up25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ht_up25, align 4
  %tobool26.not = icmp eq ptr %16, null
  br i1 %tobool26.not, label %do.end.if.end37_crit_edge, label %if.then27

do.end.if.end37_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.then27:                                        ; preds = %do.end
  %17 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %handle, align 4
  %and29 = and i32 %18, -4096
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i263) #13
  %19 = ptrtoint ptr %tmp.i263 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and29, ptr %tmp.i263, align 4
  %call.i264 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i263) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i263) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i264)
  %tobool31.not = icmp eq i32 %call.i264, 0
  br i1 %tobool31.not, label %if.then27.if.end37_crit_edge, label %if.then27.if.then.i.i277_crit_edge

if.then27.if.then.i.i277_crit_edge:               ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i277

if.then27.if.end37_crit_edge:                     ; preds = %if.then27
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end37

if.end37:                                         ; preds = %if.then27.if.end37_crit_edge, %do.end.if.end37_crit_edge
  %classid = getelementptr inbounds %struct.tc_u_knode, ptr %fh, i32 0, i32 6, i32 0, i32 0, i32 1
  %20 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %classid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool38.not = icmp eq i32 %21, 0
  br i1 %tobool38.not, label %if.end37.do.body46_crit_edge, label %land.lhs.true39

if.end37.do.body46_crit_edge:                     ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body46

land.lhs.true39:                                  ; preds = %if.end37
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i265) #13
  %22 = ptrtoint ptr %tmp.i265 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tmp.i265, align 4
  %call.i266 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i265) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i265) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i266)
  %tobool43.not = icmp eq i32 %call.i266, 0
  br i1 %tobool43.not, label %land.lhs.true39.do.body46_crit_edge, label %land.lhs.true39.if.then.i.i277_crit_edge

land.lhs.true39.if.then.i.i277_crit_edge:         ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i277

land.lhs.true39.do.body46_crit_edge:              ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body46

do.body46:                                        ; preds = %land.lhs.true39.do.body46_crit_edge, %if.end37.do.body46_crit_edge
  %call47 = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call47, label %do.body46.do.end56_crit_edge, label %land.lhs.true48

do.body46.do.end56_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end56

land.lhs.true48:                                  ; preds = %do.body46
  %call49 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %land.lhs.true48.do.end56_crit_edge, label %land.lhs.true51

land.lhs.true48.do.end56_crit_edge:               ; preds = %land.lhs.true48
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end56

land.lhs.true51:                                  ; preds = %land.lhs.true48
  %.b258259 = load i1, ptr @u32_dump.__warned.51, align 1
  br i1 %.b258259, label %land.lhs.true51.do.end56_crit_edge, label %if.then53

land.lhs.true51.do.end56_crit_edge:               ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end56

if.then53:                                        ; preds = %land.lhs.true51
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_dump.__warned.51, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1305, ptr noundef nonnull @.str.16) #13
  br label %do.end56

do.end56:                                         ; preds = %if.then53, %land.lhs.true51.do.end56_crit_edge, %land.lhs.true48.do.end56_crit_edge, %do.body46.do.end56_crit_edge
  %ht_down58 = getelementptr inbounds %struct.tc_u_knode, ptr %fh, i32 0, i32 7
  %23 = ptrtoint ptr %ht_down58 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ht_down58, align 4
  %tobool59.not = icmp eq ptr %24, null
  br i1 %tobool59.not, label %do.end56.if.end65_crit_edge, label %land.lhs.true60

do.end56.if.end65_crit_edge:                      ; preds = %do.end56
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

land.lhs.true60:                                  ; preds = %do.end56
  %handle61 = getelementptr inbounds %struct.tc_u_hnode, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %handle61 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %handle61, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i267) #13
  %27 = ptrtoint ptr %tmp.i267 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %tmp.i267, align 4
  %call.i268 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i267) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i267) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i268)
  %tobool63.not = icmp eq i32 %call.i268, 0
  br i1 %tobool63.not, label %land.lhs.true60.if.end65_crit_edge, label %land.lhs.true60.if.then.i.i277_crit_edge

land.lhs.true60.if.then.i.i277_crit_edge:         ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i277

land.lhs.true60.if.end65_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end65

if.end65:                                         ; preds = %land.lhs.true60.if.end65_crit_edge, %do.end56.if.end65_crit_edge
  %flags = getelementptr inbounds %struct.tc_u_knode, ptr %fh, i32 0, i32 9
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool66.not = icmp eq i32 %29, 0
  br i1 %tobool66.not, label %if.end65.if.end72_crit_edge, label %land.lhs.true67

if.end65.if.end72_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

land.lhs.true67:                                  ; preds = %if.end65
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i269) #13
  %30 = ptrtoint ptr %tmp.i269 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %tmp.i269, align 4
  %call.i270 = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i269) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i269) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i270)
  %tobool70.not = icmp eq i32 %call.i270, 0
  br i1 %tobool70.not, label %land.lhs.true67.if.end72_crit_edge, label %land.lhs.true67.if.then.i.i277_crit_edge

land.lhs.true67.if.then.i.i277_crit_edge:         ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i277

land.lhs.true67.if.end72_crit_edge:               ; preds = %land.lhs.true67
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end72

if.end72:                                         ; preds = %land.lhs.true67.if.end72_crit_edge, %if.end65.if.end72_crit_edge
  %val = getelementptr inbounds %struct.tc_u_knode, ptr %fh, i32 0, i32 11
  %31 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool73.not = icmp eq i32 %32, 0
  br i1 %tobool73.not, label %lor.lhs.false, label %if.end72.if.then75_crit_edge

if.end72.if.then75_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then75

lor.lhs.false:                                    ; preds = %if.end72
  %mask = getelementptr inbounds %struct.tc_u_knode, ptr %fh, i32 0, i32 12
  %33 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool74.not = icmp eq i32 %34, 0
  br i1 %tobool74.not, label %lor.lhs.false.if.end99_crit_edge, label %lor.lhs.false.if.then75_crit_edge

lor.lhs.false.if.then75_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then75

lor.lhs.false.if.end99_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

if.then75:                                        ; preds = %lor.lhs.false.if.then75_crit_edge, %if.end72.if.then75_crit_edge
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %mark) #13
  %35 = getelementptr inbounds %struct.tc_u32_mark, ptr %mark, i32 0, i32 1
  %36 = getelementptr inbounds %struct.tc_u32_mark, ptr %mark, i32 0, i32 2
  %37 = ptrtoint ptr %mark to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %32, ptr %mark, align 4
  %mask79 = getelementptr inbounds %struct.tc_u_knode, ptr %fh, i32 0, i32 12
  %38 = ptrtoint ptr %mask79 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %mask79, align 4
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %35, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %41 = load i32, ptr @nr_cpu_ids, align 4
  %42 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %36, align 4
  %call80290 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call80290, i32 %41)
  %cmp81291 = icmp ult i32 %call80290, %41
  br i1 %cmp81291, label %for.body.lr.ph, label %if.then75.for.end_crit_edge

if.then75.for.end_crit_edge:                      ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.then75
  %pcpu_success = getelementptr inbounds %struct.tc_u_knode, ptr %fh, i32 0, i32 13
  %43 = ptrtoint ptr %pcpu_success to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pcpu_success, align 4
  %45 = ptrtoint ptr %44 to i32
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %call80293 = phi i32 [ %call80290, %for.body.lr.ph ], [ %call80, %for.body.for.body_crit_edge ]
  %storemerge292 = phi i32 [ 0, %for.body.lr.ph ], [ %add90, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call80293
  %46 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx, align 4
  %add88 = add i32 %47, %45
  %48 = inttoptr i32 %add88 to ptr
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %48, align 4
  %add90 = add i32 %50, %storemerge292
  %51 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add90, ptr %36, align 4
  %call80 = call i32 @cpumask_next(i32 noundef %call80293, ptr noundef nonnull @__cpu_possible_mask) #19
  %cmp81 = icmp ult i32 %call80, %41
  br i1 %cmp81, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.then75.for.end_crit_edge
  %call91 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 12, ptr noundef nonnull %mark) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %mark) #13
  br i1 %tobool92.not, label %for.end.if.end99_crit_edge, label %for.end.if.then.i.i277_crit_edge

for.end.if.then.i.i277_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i277

for.end.if.end99_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

if.end99:                                         ; preds = %for.end.if.end99_crit_edge, %lor.lhs.false.if.end99_crit_edge
  %exts = getelementptr inbounds %struct.tc_u_knode, ptr %fh, i32 0, i32 3
  %call100 = call i32 @tcf_exts_dump(ptr noundef %skb, ptr noundef %exts) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %cmp101 = icmp slt i32 %call100, 0
  br i1 %cmp101, label %if.end99.if.then.i.i277_crit_edge, label %if.end104

if.end99.if.then.i.i277_crit_edge:                ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i277

if.end104:                                        ; preds = %if.end99
  %ifindex = getelementptr inbounds %struct.tc_u_knode, ptr %fh, i32 0, i32 4
  %52 = ptrtoint ptr %ifindex to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ifindex, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool105.not = icmp eq i32 %53, 0
  br i1 %tobool105.not, label %if.end104.if.end8.i.i_crit_edge, label %if.then106

if.end104.if.end8.i.i_crit_edge:                  ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.then106:                                       ; preds = %if.end104
  %call108 = call ptr @__dev_get_by_index(ptr noundef %net, i32 noundef %53) #13
  %tobool109.not = icmp eq ptr %call108, null
  br i1 %tobool109.not, label %if.then106.if.end8.i.i_crit_edge, label %land.lhs.true110

if.then106.if.end8.i.i_crit_edge:                 ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

land.lhs.true110:                                 ; preds = %if.then106
  %call111 = call fastcc i32 @nla_put_string(ptr noundef %skb, ptr noundef nonnull %call108)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %land.lhs.true110.if.end8.i.i_crit_edge, label %land.lhs.true110.if.then.i.i277_crit_edge

land.lhs.true110.if.then.i.i277_crit_edge:        ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i277

land.lhs.true110.if.end8.i.i_crit_edge:           ; preds = %land.lhs.true110
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %land.lhs.true110.if.end8.i.i_crit_edge, %if.then106.if.end8.i.i_crit_edge, %if.end104.if.end8.i.i_crit_edge
  %54 = ptrtoint ptr %nkeys to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %nkeys, align 2
  %conv121 = zext i8 %55 to i32
  %56 = shl nuw nsw i32 %conv121, 3
  %spec.select.i271287 = add nuw nsw i32 %56, 16
  %call9.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i271287, i32 noundef 3520) #17
  %tobool124.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool124.not, label %if.end8.i.i.if.then.i.i277_crit_edge, label %for.cond127.preheader

if.end8.i.i.if.then.i.i277_crit_edge:             ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i277

for.cond127.preheader:                            ; preds = %if.end8.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %57 = load i32, ptr @nr_cpu_ids, align 4
  %call128296 = call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__sanitizer_cov_trace_cmp4(i32 %call128296, i32 %57)
  %cmp129297 = icmp ult i32 %call128296, %57
  br i1 %cmp129297, label %for.body131.lr.ph, label %for.cond127.preheader.for.end158_crit_edge

for.cond127.preheader.for.end158_crit_edge:       ; preds = %for.cond127.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end158

for.body131.lr.ph:                                ; preds = %for.cond127.preheader
  %pf138 = getelementptr inbounds %struct.tc_u_knode, ptr %fh, i32 0, i32 8
  %58 = ptrtoint ptr %pf138 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pf138, align 4
  %60 = ptrtoint ptr %59 to i32
  %rhit144 = getelementptr inbounds %struct.tc_u32_pcnt, ptr %call9.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %nkeys to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %nkeys, align 2
  %conv149 = zext i8 %62 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %cmp150294.not = icmp eq i8 %62, 0
  br label %for.body131

for.cond127.loopexit:                             ; preds = %for.body152.for.cond127.loopexit_crit_edge, %for.body131.for.cond127.loopexit_crit_edge
  %call128 = call i32 @cpumask_next(i32 noundef %call128298, ptr noundef nonnull @__cpu_possible_mask) #19
  %cmp129 = icmp ult i32 %call128, %57
  br i1 %cmp129, label %for.cond127.loopexit.for.body131_crit_edge, label %for.cond127.loopexit.for.end158_crit_edge

for.cond127.loopexit.for.end158_crit_edge:        ; preds = %for.cond127.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end158

for.cond127.loopexit.for.body131_crit_edge:       ; preds = %for.cond127.loopexit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body131

for.body131:                                      ; preds = %for.cond127.loopexit.for.body131_crit_edge, %for.body131.lr.ph
  %call128298 = phi i32 [ %call128296, %for.body131.lr.ph ], [ %call128, %for.cond127.loopexit.for.body131_crit_edge ]
  %arrayidx140 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call128298
  %63 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %arrayidx140, align 4
  %add141 = add i32 %64, %60
  %65 = inttoptr i32 %add141 to ptr
  %66 = ptrtoint ptr %65 to i32
  call void @__asan_load8_noabort(i32 %66)
  %67 = load i64, ptr %65, align 8
  %68 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_load8_noabort(i32 %68)
  %69 = load i64, ptr %call9.i.i, align 128
  %add143 = add i64 %69, %67
  store i64 %add143, ptr %call9.i.i, align 128
  %rhit = getelementptr inbounds %struct.tc_u32_pcnt, ptr %65, i32 0, i32 1
  %70 = ptrtoint ptr %rhit to i32
  call void @__asan_load8_noabort(i32 %70)
  %71 = load i64, ptr %rhit, align 8
  %72 = ptrtoint ptr %rhit144 to i32
  call void @__asan_load8_noabort(i32 %72)
  %73 = load i64, ptr %rhit144, align 8
  %add145 = add i64 %73, %71
  store i64 %add145, ptr %rhit144, align 8
  br i1 %cmp150294.not, label %for.body131.for.cond127.loopexit_crit_edge, label %for.body131.for.body152_crit_edge

for.body131.for.body152_crit_edge:                ; preds = %for.body131
  br label %for.body152

for.body131.for.cond127.loopexit_crit_edge:       ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond127.loopexit

for.body152:                                      ; preds = %for.body152.for.body152_crit_edge, %for.body131.for.body152_crit_edge
  %i.0295 = phi i32 [ %inc, %for.body152.for.body152_crit_edge ], [ 0, %for.body131.for.body152_crit_edge ]
  %arrayidx153 = getelementptr %struct.tc_u32_pcnt, ptr %65, i32 0, i32 2, i32 %i.0295
  %74 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load8_noabort(i32 %74)
  %75 = load i64, ptr %arrayidx153, align 8
  %arrayidx155 = getelementptr %struct.tc_u32_pcnt, ptr %call9.i.i, i32 0, i32 2, i32 %i.0295
  %76 = ptrtoint ptr %arrayidx155 to i32
  call void @__asan_load8_noabort(i32 %76)
  %77 = load i64, ptr %arrayidx155, align 8
  %add156 = add i64 %77, %75
  store i64 %add156, ptr %arrayidx155, align 8
  %inc = add nuw nsw i32 %i.0295, 1
  %exitcond.not = icmp eq i32 %inc, %conv149
  br i1 %exitcond.not, label %for.body152.for.cond127.loopexit_crit_edge, label %for.body152.for.body152_crit_edge

for.body152.for.body152_crit_edge:                ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body152

for.body152.for.cond127.loopexit_crit_edge:       ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond127.loopexit

for.end158:                                       ; preds = %for.cond127.loopexit.for.end158_crit_edge, %for.cond127.preheader.for.end158_crit_edge
  %78 = ptrtoint ptr %nkeys to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %nkeys, align 2
  %conv161 = zext i8 %79 to i32
  %80 = shl nuw nsw i32 %conv161, 3
  %spec.select.i273288 = add nuw nsw i32 %80, 16
  %call163 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 9, i32 noundef %spec.select.i273288, ptr noundef nonnull %call9.i.i, i32 noundef 12) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call163)
  %tobool164.not = icmp eq i32 %call163, 0
  call void @kfree(ptr noundef nonnull %call9.i.i) #13
  br i1 %tobool164.not, label %for.end158.if.end171_crit_edge, label %for.end158.if.then.i.i277_crit_edge

for.end158.if.then.i.i277_crit_edge:              ; preds = %for.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i277

for.end158.if.end171_crit_edge:                   ; preds = %for.end158
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end171

if.end171:                                        ; preds = %for.end158.if.end171_crit_edge, %if.then6.if.end171_crit_edge
  %81 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %82 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %6 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %83 = ptrtoint ptr %6 to i32
  call void @__asan_store2_noabort(i32 %83)
  store i16 %conv.i, ptr %6, align 2
  %84 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %handle, align 4
  %and174 = and i32 %85, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and174)
  %tobool175.not = icmp eq i32 %and174, 0
  br i1 %tobool175.not, label %if.end171.if.end183_crit_edge, label %if.then176

if.end171.if.end183_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end183

if.then176:                                       ; preds = %if.end171
  %exts177 = getelementptr inbounds %struct.tc_u_knode, ptr %fh, i32 0, i32 3
  %call178 = call i32 @tcf_exts_dump_stats(ptr noundef %skb, ptr noundef %exts177) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call178)
  %cmp179 = icmp slt i32 %call178, 0
  br i1 %cmp179, label %if.then176.if.then.i.i277_crit_edge, label %if.then176.if.end183_crit_edge

if.then176.if.end183_crit_edge:                   ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end183

if.then176.if.then.i.i277_crit_edge:              ; preds = %if.then176
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then.i.i277

if.end183:                                        ; preds = %if.then176.if.end183_crit_edge, %if.end171.if.end183_crit_edge
  %len184 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %86 = ptrtoint ptr %len184 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %len184, align 4
  br label %cleanup185

if.then.i.i277:                                   ; preds = %if.then176.if.then.i.i277_crit_edge, %for.end158.if.then.i.i277_crit_edge, %if.end8.i.i.if.then.i.i277_crit_edge, %land.lhs.true110.if.then.i.i277_crit_edge, %if.end99.if.then.i.i277_crit_edge, %for.end.if.then.i.i277_crit_edge, %land.lhs.true67.if.then.i.i277_crit_edge, %land.lhs.true60.if.then.i.i277_crit_edge, %land.lhs.true39.if.then.i.i277_crit_edge, %if.then27.if.then.i.i277_crit_edge, %if.else.if.then.i.i277_crit_edge, %if.then6.if.then.i.i277_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %88 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i276 = icmp ugt ptr %89, %6
  br i1 %cmp.i.i276, label %do.end.i.i, label %if.then.i.i277.if.end.i.i278_crit_edge, !prof !190

if.then.i.i277.if.end.i.i278_crit_edge:           ; preds = %if.then.i.i277
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i278

do.end.i.i:                                       ; preds = %if.then.i.i277
  call void @__sanitizer_cov_trace_pc() #15
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.52, i32 noundef 991, i32 noundef 9, ptr noundef null) #13
  br label %if.end.i.i278

if.end.i.i278:                                    ; preds = %do.end.i.i, %if.then.i.i277.if.end.i.i278_crit_edge
  %90 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %91 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #13
  br label %cleanup185

cleanup185:                                       ; preds = %if.end.i.i278, %if.end183, %if.end.cleanup185_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %87, %if.end183 ], [ -1, %if.end.i.i278 ], [ -1, %if.end.cleanup185_crit_edge ]
  ret i32 %retval.0
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
declare dso_local i32 @net_ratelimit() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_cyclic(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u32_destroy_hnode(ptr noundef %tp, ptr noundef %ht, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %cls_u32.i = alloca %struct.tc_cls_u32_offload, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %refcnt = getelementptr inbounds %struct.tc_u_hnode, ptr %ht, i32 0, i32 3
  %2 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %refcnt, align 4
  %dec = add i32 %3, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !200

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef null) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  tail call fastcc void @u32_clear_hnode(ptr noundef %tp, ptr noundef %ht, ptr noundef %extack)
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call, label %if.end.do.end28_crit_edge, label %land.lhs.true

if.end.do.end28_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

land.lhs.true:                                    ; preds = %if.end
  %call21 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true.do.end28_crit_edge, label %land.lhs.true23

land.lhs.true.do.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

land.lhs.true23:                                  ; preds = %land.lhs.true
  %.b2 = load i1, ptr @u32_destroy_hnode.__warned, align 1
  br i1 %.b2, label %land.lhs.true23.do.end28_crit_edge, label %if.then25

land.lhs.true23.do.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

if.then25:                                        ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_destroy_hnode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 603, ptr noundef nonnull @.str.16) #13
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %land.lhs.true23.do.end28_crit_edge, %land.lhs.true.do.end28_crit_edge, %if.end.do.end28_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %phn.04 = load ptr, ptr %1, align 4
  %tobool30.not5 = icmp eq ptr %phn.04, null
  br i1 %tobool30.not5, label %do.end28.cleanup_crit_edge, label %for.body.preheader

do.end28.cleanup_crit_edge:                       ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.body.preheader:                               ; preds = %do.end28
  %cmp11 = icmp eq ptr %phn.04, %ht
  br i1 %cmp11, label %for.body.preheader.if.then31_crit_edge, label %for.body.preheader.for.inc_crit_edge

for.body.preheader.for.inc_crit_edge:             ; preds = %for.body.preheader
  br label %for.inc

for.body.preheader.if.then31_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31

for.body:                                         ; preds = %do.end67
  %cmp = icmp eq ptr %phn.0, %ht
  br i1 %cmp, label %for.body.if.then31_crit_edge, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

for.body.if.then31_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then31

if.then31:                                        ; preds = %for.body.if.then31_crit_edge, %for.body.preheader.if.then31_crit_edge
  %hn.06.lcssa = phi ptr [ %1, %for.body.preheader.if.then31_crit_edge ], [ %phn.0712, %for.body.if.then31_crit_edge ]
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %5 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chain.i, align 4
  %block1.i = getelementptr inbounds %struct.tcf_chain, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %block1.i, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cls_u32.i) #13
  %9 = getelementptr inbounds i8, ptr %cls_u32.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 48)
  %flags.i = getelementptr inbounds %struct.tc_u_hnode, ptr %ht, i32 0, i32 8
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %index.i.i = getelementptr inbounds %struct.tcf_chain, ptr %6, i32 0, i32 4
  %13 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index.i.i, align 4
  %15 = ptrtoint ptr %cls_u32.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %cls_u32.i, align 4
  %protocol.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %16 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %protocol.i.i, align 4
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %9, align 4
  %prio.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %19 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %prio.i.i, align 4
  %shr.i.i = lshr i32 %20, 16
  %prio2.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32.i, i32 0, i32 2
  %21 = ptrtoint ptr %prio2.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shr.i.i, ptr %prio2.i.i, align 4
  %22 = and i32 %12, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %if.then31.u32_clear_hw_hnode.exit_crit_edge, label %if.then.i.i

if.then31.u32_clear_hw_hnode.exit_crit_edge:      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  br label %u32_clear_hw_hnode.exit

if.then.i.i:                                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #15
  %extack3.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32.i, i32 0, i32 3
  %24 = ptrtoint ptr %extack3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %extack, ptr %extack3.i.i, align 4
  br label %u32_clear_hw_hnode.exit

u32_clear_hw_hnode.exit:                          ; preds = %if.then.i.i, %if.then31.u32_clear_hw_hnode.exit_crit_edge
  %command.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 1
  %25 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 5, ptr %command.i, align 4
  %divisor.i = getelementptr inbounds %struct.tc_u_hnode, ptr %ht, i32 0, i32 4
  %26 = ptrtoint ptr %divisor.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %divisor.i, align 4
  %28 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 2
  %divisor2.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 2, i32 0, i32 2
  %29 = ptrtoint ptr %divisor2.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %27, ptr %divisor2.i, align 4
  %handle.i = getelementptr inbounds %struct.tc_u_hnode, ptr %ht, i32 0, i32 1
  %30 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %handle.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %28, align 4
  %prio.i = getelementptr inbounds %struct.tc_u_hnode, ptr %ht, i32 0, i32 2
  %33 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %prio.i, align 4
  %prio4.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 2, i32 0, i32 1
  %35 = ptrtoint ptr %prio4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %prio4.i, align 4
  %call.i = call i32 @tc_setup_cb_call(ptr noundef %8, i32 noundef 1, ptr noundef nonnull %cls_u32.i, i1 noundef zeroext false, i1 noundef zeroext true) #13
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cls_u32.i) #13
  %handle_idr = getelementptr inbounds %struct.tc_u_hnode, ptr %ht, i32 0, i32 5
  call void @idr_destroy(ptr noundef %handle_idr) #13
  %handle_idr32 = getelementptr inbounds %struct.tc_u_common, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %handle.i, align 4
  %call33 = call ptr @idr_remove(ptr noundef %handle_idr32, i32 noundef %37) #13
  %38 = ptrtoint ptr %ht to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ht, align 4
  %40 = ptrtoint ptr %hn.06.lcssa to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %39, ptr %hn.06.lcssa, align 4
  %tobool47.not = icmp eq ptr %ht, null
  br i1 %tobool47.not, label %u32_clear_hw_hnode.exit.cleanup_crit_edge, label %do.end51

u32_clear_hw_hnode.exit.cleanup_crit_edge:        ; preds = %u32_clear_hw_hnode.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end51:                                         ; preds = %u32_clear_hw_hnode.exit
  call void @__sanitizer_cov_trace_pc() #15
  %rcu = getelementptr inbounds %struct.tc_u_hnode, ptr %ht, i32 0, i32 7
  call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 84 to ptr)) #13
  br label %cleanup

for.inc:                                          ; preds = %for.body.for.inc_crit_edge, %for.body.preheader.for.inc_crit_edge
  %phn.0712 = phi ptr [ %phn.0, %for.body.for.inc_crit_edge ], [ %phn.04, %for.body.preheader.for.inc_crit_edge ]
  %call58 = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call58, label %for.inc.do.end67_crit_edge, label %land.lhs.true59

for.inc.do.end67_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true59:                                  ; preds = %for.inc
  %call60 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call60)
  %tobool61.not = icmp eq i32 %call60, 0
  br i1 %tobool61.not, label %land.lhs.true59.do.end67_crit_edge, label %land.lhs.true62

land.lhs.true59.do.end67_crit_edge:               ; preds = %land.lhs.true59
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

land.lhs.true62:                                  ; preds = %land.lhs.true59
  %.b881 = load i1, ptr @u32_destroy_hnode.__warned.18, align 1
  br i1 %.b881, label %land.lhs.true62.do.end67_crit_edge, label %if.then64

land.lhs.true62.do.end67_crit_edge:               ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end67

if.then64:                                        ; preds = %land.lhs.true62
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_destroy_hnode.__warned.18, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 605, ptr noundef nonnull @.str.16) #13
  br label %do.end67

do.end67:                                         ; preds = %if.then64, %land.lhs.true62.do.end67_crit_edge, %land.lhs.true59.do.end67_crit_edge, %for.inc.do.end67_crit_edge
  %41 = ptrtoint ptr %phn.0712 to i32
  call void @__asan_load4_noabort(i32 %41)
  %phn.0 = load ptr, ptr %phn.0712, align 4
  %tobool30.not = icmp eq ptr %phn.0, null
  br i1 %tobool30.not, label %do.end67.cleanup_crit_edge, label %for.body

do.end67.cleanup_crit_edge:                       ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

cleanup:                                          ; preds = %do.end67.cleanup_crit_edge, %do.end51, %u32_clear_hw_hnode.exit.cleanup_crit_edge, %do.end28.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u32_clear_hnode(ptr noundef %tp, ptr noundef %ht, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %cls_u32.i = alloca %struct.tc_cls_u32_offload, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 5
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %divisor = getelementptr inbounds %struct.tc_u_hnode, ptr %ht, i32 0, i32 4
  %knodes = getelementptr inbounds %struct.tc_u_common, ptr %1, i32 0, i32 5
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %2 = getelementptr inbounds i8, ptr %cls_u32.i, i32 4
  %protocol.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %prio.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %prio2.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32.i, i32 0, i32 2
  %extack3.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32.i, i32 0, i32 3
  %command.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 1
  %handle2.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 2, i32 0, i32 3
  %handle_idr = getelementptr inbounds %struct.tc_u_hnode, ptr %ht, i32 0, i32 5
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %entry
  %h.057 = phi i32 [ 0, %entry ], [ %inc, %for.inc.while.cond.preheader_crit_edge ]
  %arrayidx = getelementptr %struct.tc_u_hnode, ptr %ht, i32 0, i32 9, i32 %h.057
  br label %while.cond

while.cond:                                       ; preds = %while.cond.backedge, %while.cond.preheader
  %call = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call, label %while.cond.do.end_crit_edge, label %land.lhs.true

while.cond.do.end_crit_edge:                      ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %while.cond
  %call1 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b54 = load i1, ptr @u32_clear_hnode.__warned, align 1
  br i1 %.b54, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_clear_hnode.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 576, ptr noundef nonnull @.str.16) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %while.cond.do.end_crit_edge
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cmp5.not = icmp eq ptr %4, null
  br i1 %cmp5.not, label %for.inc, label %do.body12

do.body12:                                        ; preds = %do.end
  %call13 = call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call13, label %do.body12.do.end22_crit_edge, label %land.lhs.true14

do.body12.do.end22_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

land.lhs.true14:                                  ; preds = %do.body12
  %call15 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true14.do.end22_crit_edge, label %land.lhs.true17

land.lhs.true14.do.end22_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %.b5253 = load i1, ptr @u32_clear_hnode.__warned.19, align 1
  br i1 %.b5253, label %land.lhs.true17.do.end22_crit_edge, label %if.then19

land.lhs.true17.do.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_clear_hnode.__warned.19, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 578, ptr noundef nonnull @.str.16) #13
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %land.lhs.true17.do.end22_crit_edge, %land.lhs.true14.do.end22_crit_edge, %do.body12.do.end22_crit_edge
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %4, align 4
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %6, ptr %arrayidx, align 4
  %8 = ptrtoint ptr %knodes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %knodes, align 4
  %dec = add i32 %9, -1
  store i32 %dec, ptr %knodes, align 4
  %10 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chain.i, align 4
  %block.i = getelementptr inbounds %struct.tcf_chain, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %block.i, align 4
  %q1.i = getelementptr inbounds %struct.tcf_block, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %q1.i, align 4
  %tobool.not.i = icmp eq ptr %15, null
  br i1 %tobool.not.i, label %do.end22.tcf_unbind_filter.exit_crit_edge, label %if.end.i

do.end22.tcf_unbind_filter.exit_crit_edge:        ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcf_unbind_filter.exit

if.end.i:                                         ; preds = %do.end22
  %res = getelementptr inbounds %struct.tc_u_knode, ptr %4, i32 0, i32 6
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !196
  call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #13
  %16 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #13, !srcloc !197
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %16, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.tcf_unbind_filter.exit_crit_edge, label %if.then.i.i

if.end.i.tcf_unbind_filter.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcf_unbind_filter.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %ops.i.i = getelementptr inbounds %struct.Qdisc, ptr %15, i32 0, i32 4
  %17 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ops.i.i, align 16
  %cl_ops.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %cl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %cl_ops.i.i, align 4
  %unbind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %20, i32 0, i32 11
  %21 = ptrtoint ptr %unbind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %unbind_tcf.i.i, align 4
  call void %22(ptr noundef nonnull %15, i32 noundef %asmresult.i.i.i.i) #13
  br label %tcf_unbind_filter.exit

tcf_unbind_filter.exit:                           ; preds = %if.then.i.i, %if.end.i.tcf_unbind_filter.exit_crit_edge, %do.end22.tcf_unbind_filter.exit_crit_edge
  %23 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chain.i, align 4
  %block1.i = getelementptr inbounds %struct.tcf_chain, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %block1.i, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cls_u32.i) #13
  %27 = call ptr @memset(ptr %2, i32 0, i32 48)
  %flags.i = getelementptr inbounds %struct.tc_u_knode, ptr %4, i32 0, i32 9
  %28 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags.i, align 4
  %index.i.i = getelementptr inbounds %struct.tcf_chain, ptr %24, i32 0, i32 4
  %30 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %index.i.i, align 4
  %32 = ptrtoint ptr %cls_u32.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %cls_u32.i, align 4
  %33 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %protocol.i.i, align 4
  %35 = ptrtoint ptr %2 to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %2, align 4
  %36 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %prio.i.i, align 4
  %shr.i.i = lshr i32 %37, 16
  %38 = ptrtoint ptr %prio2.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %shr.i.i, ptr %prio2.i.i, align 4
  %39 = and i32 %29, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %tcf_unbind_filter.exit.u32_remove_hw_knode.exit_crit_edge, label %if.then.i.i56

tcf_unbind_filter.exit.u32_remove_hw_knode.exit_crit_edge: ; preds = %tcf_unbind_filter.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %u32_remove_hw_knode.exit

if.then.i.i56:                                    ; preds = %tcf_unbind_filter.exit
  call void @__sanitizer_cov_trace_pc() #15
  %41 = ptrtoint ptr %extack3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %extack, ptr %extack3.i.i, align 4
  br label %u32_remove_hw_knode.exit

u32_remove_hw_knode.exit:                         ; preds = %if.then.i.i56, %tcf_unbind_filter.exit.u32_remove_hw_knode.exit_crit_edge
  %42 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 2, ptr %command.i, align 4
  %handle.i = getelementptr inbounds %struct.tc_u_knode, ptr %4, i32 0, i32 1
  %43 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %handle.i, align 4
  %45 = ptrtoint ptr %handle2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %handle2.i, align 4
  %in_hw_count.i = getelementptr inbounds %struct.tc_u_knode, ptr %4, i32 0, i32 10
  %call.i = call i32 @tc_setup_cb_destroy(ptr noundef %26, ptr noundef %tp, i32 noundef 1, ptr noundef nonnull %cls_u32.i, i1 noundef zeroext false, ptr noundef %flags.i, ptr noundef %in_hw_count.i, i1 noundef zeroext true) #13
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cls_u32.i) #13
  %46 = ptrtoint ptr %handle.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %handle.i, align 4
  %call32 = call ptr @idr_remove(ptr noundef %handle_idr, i32 noundef %47) #13
  %exts = getelementptr inbounds %struct.tc_u_knode, ptr %4, i32 0, i32 3
  %call33 = call fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts)
  br i1 %call33, label %if.then34, label %if.else

if.then34:                                        ; preds = %u32_remove_hw_knode.exit
  call void @__sanitizer_cov_trace_pc() #15
  %rwork = getelementptr inbounds %struct.tc_u_knode, ptr %4, i32 0, i32 14
  %call35 = call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @u32_delete_key_freepf_work) #13
  br label %while.cond.backedge

if.else:                                          ; preds = %u32_remove_hw_knode.exit
  call void @__sanitizer_cov_trace_pc() #15
  call fastcc void @u32_destroy_key(ptr noundef nonnull %4, i1 noundef zeroext true)
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %if.else, %if.then34
  br label %while.cond

for.inc:                                          ; preds = %do.end
  %inc = add i32 %h.057, 1
  %48 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %divisor, align 4
  %cmp.not = icmp ugt i32 %inc, %49
  br i1 %cmp.not, label %for.end, label %for.inc.while.cond.preheader_crit_edge

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond.preheader

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_cb_call(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcf_unbind_filter(ptr nocapture noundef readonly %tp, ptr noundef %r) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %block = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block, align 4
  %q1 = getelementptr inbounds %struct.tcf_block, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %q1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %q1, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #13
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %r) #13, !srcloc !197
  %asmresult.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %ops.i = getelementptr inbounds %struct.Qdisc, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ops.i, align 16
  %cl_ops.i = getelementptr inbounds %struct.Qdisc_ops, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %cl_ops.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cl_ops.i, align 4
  %unbind_tcf.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %10, i32 0, i32 11
  %11 = ptrtoint ptr %unbind_tcf.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %unbind_tcf.i, align 4
  tail call void %12(ptr noundef nonnull %5, i32 noundef %asmresult.i.i.i) #13
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts) unnamed_addr #8 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  %net = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 3
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #13
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
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #13
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #13
  %6 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #13
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 %7, i32 %add.i.i.i.i, ptr elementtype(i32) %count.i) #13, !srcloc !201
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !200

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.maybe_get_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !200

if.end4.i.i.i.i.maybe_get_net.exit_crit_edge:     ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %maybe_get_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 0) #13
  br label %maybe_get_net.exit

maybe_get_net.exit:                               ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.maybe_get_net.exit_crit_edge
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.not.i = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #13
  %spec.select.i = select i1 %tobool12.i.i.i.not.i, ptr null, ptr %1
  %14 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select.i, ptr %net, align 4
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %maybe_get_net.exit.if.end_crit_edge, label %if.then

maybe_get_net.exit.if.end_crit_edge:              ; preds = %maybe_get_net.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %maybe_get_net.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ns_tracker = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 4
  %refcnt_tracker.i = getelementptr inbounds %struct.net, ptr %spec.select.i, i32 0, i32 15
  %call.i = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i, ptr noundef %ns_tracker, i32 noundef 3264) #13
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
define internal void @u32_delete_key_freepf_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -84
  tail call void @rtnl_lock() #13
  tail call fastcc void @u32_destroy_key(ptr noundef %add.ptr, i1 noundef zeroext true)
  tail call void @rtnl_unlock() #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u32_destroy_key(ptr noundef %n, i1 noundef zeroext %free_pf) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b1 = load i1, ptr @u32_destroy_key.__warned, align 1
  br i1 %.b1, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_destroy_key.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 391, ptr noundef nonnull @.str.16) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %ht_down = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 7
  %0 = ptrtoint ptr %ht_down to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ht_down, align 4
  %exts = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 3
  tail call void @tcf_exts_destroy(ptr noundef %exts) #13
  %net.i = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %do.end.tcf_exts_put_net.exit_crit_edge, label %if.then.i

do.end.tcf_exts_put_net.exit_crit_edge:           ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcf_exts_put_net.exit

if.then.i:                                        ; preds = %do.end
  %ns_tracker.i = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 3, i32 4
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 15
  %call.i.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %ns_tracker.i) #13
  %count.i.i.i = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !202
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #13
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #13, !srcloc !203
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !200

if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcf_exts_put_net.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef 3) #13
  br label %tcf_exts_put_net.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !204
  tail call void @__put_net(ptr noundef nonnull %3) #13
  br label %tcf_exts_put_net.exit

tcf_exts_put_net.exit:                            ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, %do.end.tcf_exts_put_net.exit_crit_edge
  %tobool5.not = icmp eq ptr %1, null
  br i1 %tobool5.not, label %tcf_exts_put_net.exit.if.end8_crit_edge, label %land.lhs.true6

tcf_exts_put_net.exit.if.end8_crit_edge:          ; preds = %tcf_exts_put_net.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

land.lhs.true6:                                   ; preds = %tcf_exts_put_net.exit
  %refcnt = getelementptr inbounds %struct.tc_u_hnode, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %refcnt, align 4
  %dec = add i32 %6, -1
  store i32 %dec, ptr %refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp = icmp eq i32 %dec, 0
  br i1 %cmp, label %if.then7, label %land.lhs.true6.if.end8_crit_edge

land.lhs.true6.if.end8_crit_edge:                 ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end8

if.then7:                                         ; preds = %land.lhs.true6
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @kfree(ptr noundef nonnull %1) #13
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %land.lhs.true6.if.end8_crit_edge, %tcf_exts_put_net.exit.if.end8_crit_edge
  br i1 %free_pf, label %if.then10, label %if.end8.if.end14_crit_edge

if.end8.if.end14_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end14

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %pf = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 8
  %7 = ptrtoint ptr %pf to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pf, align 4
  tail call void @free_percpu(ptr noundef %8) #13
  %pcpu_success = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 13
  %9 = ptrtoint ptr %pcpu_success to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %pcpu_success, align 4
  tail call void @free_percpu(ptr noundef %10) #13
  br label %if.end14

if.end14:                                         ; preds = %if.then10, %if.end8.if.end14_crit_edge
  tail call void @kfree(ptr noundef %n) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_cb_destroy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

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
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @u32_lookup_ht(ptr nocapture noundef readonly %tp_c, i32 noundef %handle) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b25 = load i1, ptr @u32_lookup_ht.__warned, align 1
  br i1 %.b25, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_lookup_ht.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 258, ptr noundef nonnull @.str.16) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %0 = ptrtoint ptr %tp_c to i32
  call void @__asan_load4_noabort(i32 %0)
  %ht.026 = load ptr, ptr %tp_c, align 4
  %tobool4.not27 = icmp eq ptr %ht.026, null
  br i1 %tobool4.not27, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body:                                         ; preds = %do.end18.for.body_crit_edge, %do.end.for.body_crit_edge
  %ht.028 = phi ptr [ %ht.0, %do.end18.for.body_crit_edge ], [ %ht.026, %do.end.for.body_crit_edge ]
  %handle5 = getelementptr inbounds %struct.tc_u_hnode, ptr %ht.028, i32 0, i32 1
  %1 = ptrtoint ptr %handle5 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %handle5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %2, i32 %handle)
  %cmp = icmp eq i32 %2, %handle
  br i1 %cmp, label %for.body.for.end_crit_edge, label %do.body8

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body8:                                         ; preds = %for.body
  %call9 = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call9, label %do.body8.do.end18_crit_edge, label %land.lhs.true10

do.body8.do.end18_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

land.lhs.true10:                                  ; preds = %do.body8
  %call11 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true10.do.end18_crit_edge, label %land.lhs.true13

land.lhs.true10.do.end18_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

land.lhs.true13:                                  ; preds = %land.lhs.true10
  %.b2324 = load i1, ptr @u32_lookup_ht.__warned.20, align 1
  br i1 %.b2324, label %land.lhs.true13.do.end18_crit_edge, label %if.then15

land.lhs.true13.do.end18_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end18

if.then15:                                        ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_lookup_ht.__warned.20, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 260, ptr noundef nonnull @.str.16) #13
  br label %do.end18

do.end18:                                         ; preds = %if.then15, %land.lhs.true13.do.end18_crit_edge, %land.lhs.true10.do.end18_crit_edge, %do.body8.do.end18_crit_edge
  %3 = ptrtoint ptr %ht.028 to i32
  call void @__asan_load4_noabort(i32 %3)
  %ht.0 = load ptr, ptr %ht.028, align 4
  %tobool4.not = icmp eq ptr %ht.0, null
  br i1 %tobool4.not, label %do.end18.for.end_crit_edge, label %do.end18.for.body_crit_edge

do.end18.for.body_crit_edge:                      ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

do.end18.for.end_crit_edge:                       ; preds = %do.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %do.end18.for.end_crit_edge, %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %ht.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %ht.028, %for.body.for.end_crit_edge ], [ null, %do.end18.for.end_crit_edge ]
  ret ptr %ht.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @do_trace_netlink_extack(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u32_set_parms(ptr noundef %net, ptr noundef %tp, i32 noundef %base, ptr noundef %n, ptr noundef %tb, ptr noundef %est, i32 noundef %flags, i32 noundef %fl_flags, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %indev.i = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %exts = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 3
  %call = tail call i32 @tcf_exts_validate_ex(ptr noundef %net, ptr noundef %tp, ptr noundef %tb, ptr noundef %est, ptr noundef %exts, i32 noundef %flags, i32 noundef %fl_flags, ptr noundef %extack) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup112_crit_edge, label %if.end

entry.cleanup112_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup112

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr ptr, ptr %tb, i32 3
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.if.end92_crit_edge, label %if.then1

if.end.if.end92_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.then1:                                         ; preds = %if.end
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %and = and i32 %3, 1048575
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end9, label %do.body

do.body:                                          ; preds = %if.then1
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @u32_set_parms.__msg) #13
  %tobool6.not = icmp eq ptr %extack, null
  br i1 %tobool6.not, label %do.body.cleanup112_crit_edge, label %if.then7

do.body.cleanup112_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup112

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @u32_set_parms.__msg, ptr %extack, align 4
  br label %cleanup112

if.end9:                                          ; preds = %if.then1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool10.not = icmp eq i32 %3, 0
  br i1 %tobool10.not, label %if.end9.do.body36_crit_edge, label %if.then11

if.end9.do.body36_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body36

if.then11:                                        ; preds = %if.end9
  %data = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 5
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data, align 4
  %call12 = tail call fastcc ptr @u32_lookup_ht(ptr noundef %6, i32 noundef %3)
  %tobool13.not = icmp eq ptr %call12, null
  br i1 %tobool13.not, label %do.body15, label %if.end23

do.body15:                                        ; preds = %if.then11
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @u32_set_parms.__msg.35) #13
  %tobool17.not = icmp eq ptr %extack, null
  br i1 %tobool17.not, label %do.body15.cleanup112_crit_edge, label %if.then18

do.body15.cleanup112_crit_edge:                   ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup112

if.then18:                                        ; preds = %do.body15
  call void @__sanitizer_cov_trace_pc() #15
  %7 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @u32_set_parms.__msg.35, ptr %extack, align 4
  br label %cleanup112

if.end23:                                         ; preds = %if.then11
  %is_root = getelementptr inbounds %struct.tc_u_hnode, ptr %call12, i32 0, i32 6
  %8 = ptrtoint ptr %is_root to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %is_root, align 4, !range !199
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool24.not = icmp eq i8 %9, 0
  br i1 %tobool24.not, label %if.end34, label %do.body26

do.body26:                                        ; preds = %if.end23
  tail call void @do_trace_netlink_extack(ptr noundef nonnull @u32_set_parms.__msg.36) #13
  %tobool28.not = icmp eq ptr %extack, null
  br i1 %tobool28.not, label %do.body26.cleanup112_crit_edge, label %if.then29

do.body26.cleanup112_crit_edge:                   ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup112

if.then29:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #15
  %10 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @u32_set_parms.__msg.36, ptr %extack, align 4
  br label %cleanup112

if.end34:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  %refcnt = getelementptr inbounds %struct.tc_u_hnode, ptr %call12, i32 0, i32 3
  %11 = ptrtoint ptr %refcnt to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %refcnt, align 4
  %inc = add i32 %12, 1
  store i32 %inc, ptr %refcnt, align 4
  br label %do.body36

do.body36:                                        ; preds = %if.end34, %if.end9.do.body36_crit_edge
  %ht_down.0 = phi ptr [ %call12, %if.end34 ], [ null, %if.end9.do.body36_crit_edge ]
  %call37 = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call37, label %do.body36.do.end45_crit_edge, label %land.lhs.true

do.body36.do.end45_crit_edge:                     ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end45

land.lhs.true:                                    ; preds = %do.body36
  %call38 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %land.lhs.true.do.end45_crit_edge, label %land.lhs.true40

land.lhs.true.do.end45_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end45

land.lhs.true40:                                  ; preds = %land.lhs.true
  %.b147 = load i1, ptr @u32_set_parms.__warned, align 1
  br i1 %.b147, label %land.lhs.true40.do.end45_crit_edge, label %if.then42

land.lhs.true40.do.end45_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end45

if.then42:                                        ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_set_parms.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 745, ptr noundef nonnull @.str.16) #13
  br label %do.end45

do.end45:                                         ; preds = %if.then42, %land.lhs.true40.do.end45_crit_edge, %land.lhs.true.do.end45_crit_edge, %do.body36.do.end45_crit_edge
  %ht_down46 = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 7
  %13 = ptrtoint ptr %ht_down46 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ht_down46, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !205
  %15 = ptrtoint ptr %ht_down46 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %ht_down.0, ptr %ht_down46, align 4
  %tobool86.not = icmp eq ptr %14, null
  br i1 %tobool86.not, label %do.end45.if.end92_crit_edge, label %if.then87

do.end45.if.end92_crit_edge:                      ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end92

if.then87:                                        ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #15
  %refcnt88 = getelementptr inbounds %struct.tc_u_hnode, ptr %14, i32 0, i32 3
  %16 = ptrtoint ptr %refcnt88 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %refcnt88, align 4
  %dec = add i32 %17, -1
  store i32 %dec, ptr %refcnt88, align 4
  br label %if.end92

if.end92:                                         ; preds = %if.then87, %do.end45.if.end92_crit_edge, %if.end.if.end92_crit_edge
  %arrayidx93 = getelementptr ptr, ptr %tb, i32 1
  %18 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx93, align 4
  %tobool94.not = icmp eq ptr %19, null
  br i1 %tobool94.not, label %if.end92.if.end99_crit_edge, label %if.then95

if.end92.if.end99_crit_edge:                      ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

if.then95:                                        ; preds = %if.end92
  %add.ptr.i.i154 = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i154 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i154, align 4
  %res = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 6
  %classid = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 6, i32 0, i32 0, i32 1
  %22 = ptrtoint ptr %classid to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %classid, align 4
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %23 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chain.i, align 4
  %block.i = getelementptr inbounds %struct.tcf_chain, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %block.i, align 4
  %q1.i = getelementptr inbounds %struct.tcf_block, ptr %26, i32 0, i32 6
  %27 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %q1.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.then95.if.end99_crit_edge, label %if.end.i

if.then95.if.end99_crit_edge:                     ; preds = %if.then95
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end99

if.end.i:                                         ; preds = %if.then95
  %flags.i.i = getelementptr inbounds %struct.Qdisc, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i.i, align 8
  %and.i.i = and i32 %30, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.end.i.sch_tree_lock.exit.i_crit_edge

if.end.i.sch_tree_lock.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit.i

if.else.i.i:                                      ; preds = %if.end.i
  %dev_queue.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %28, i32 0, i32 9
  %31 = ptrtoint ptr %dev_queue.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev_queue.i.i.i.i, align 8
  %qdisc_sleeping.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %32, i32 0, i32 3
  %33 = ptrtoint ptr %qdisc_sleeping.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %qdisc_sleeping.i.i.i.i, align 4
  %call1.i.i.i = tail call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.rhs.i.i.i, label %if.else.i.i.sch_tree_lock.exit.i_crit_edge

if.else.i.i.sch_tree_lock.exit.i_crit_edge:       ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit.i

land.rhs.i.i.i:                                   ; preds = %if.else.i.i
  %.b41.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i, label %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, label %if.then.i.i.i, !prof !200

land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge:    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_lock.exit.i

if.then.i.i.i:                                    ; preds = %land.rhs.i.i.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 596) #13
  br label %sch_tree_lock.exit.i

sch_tree_lock.exit.i:                             ; preds = %if.then.i.i.i, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge, %if.else.i.i.sch_tree_lock.exit.i_crit_edge, %if.end.i.sch_tree_lock.exit.i_crit_edge
  %.sink.i.i = phi ptr [ %28, %if.end.i.sch_tree_lock.exit.i_crit_edge ], [ %34, %if.else.i.i.sch_tree_lock.exit.i_crit_edge ], [ %34, %land.rhs.i.i.i.sch_tree_lock.exit.i_crit_edge ], [ %34, %if.then.i.i.i ]
  %lock.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i) #13
  %ops.i.i = getelementptr inbounds %struct.Qdisc, ptr %28, i32 0, i32 4
  %35 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ops.i.i, align 16
  %cl_ops.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %cl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %cl_ops.i.i, align 4
  %bind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %38, i32 0, i32 10
  %39 = ptrtoint ptr %bind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bind_tcf.i.i, align 4
  %41 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %classid, align 4
  %call.i.i = tail call i32 %40(ptr noundef nonnull %28, i32 noundef %base, i32 noundef %42) #13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !196
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #13
  %43 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %call.i.i, ptr %res) #13, !srcloc !197
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %43, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !198
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %tobool.not.i5.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %tobool.not.i5.i, label %sch_tree_lock.exit.i.__tcf_bind_filter.exit.i_crit_edge, label %if.then.i.i

sch_tree_lock.exit.i.__tcf_bind_filter.exit.i_crit_edge: ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %__tcf_bind_filter.exit.i

if.then.i.i:                                      ; preds = %sch_tree_lock.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  %44 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %ops.i.i, align 16
  %cl_ops3.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %cl_ops3.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %cl_ops3.i.i, align 4
  %unbind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %47, i32 0, i32 11
  %48 = ptrtoint ptr %unbind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %unbind_tcf.i.i, align 4
  tail call void %49(ptr noundef nonnull %28, i32 noundef %asmresult.i.i.i.i) #13
  br label %__tcf_bind_filter.exit.i

__tcf_bind_filter.exit.i:                         ; preds = %if.then.i.i, %sch_tree_lock.exit.i.__tcf_bind_filter.exit.i_crit_edge
  %50 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %flags.i.i, align 8
  %and.i7.i = and i32 %51, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7.i)
  %tobool.not.i8.i = icmp eq i32 %and.i7.i, 0
  br i1 %tobool.not.i8.i, label %if.else.i13.i, label %__tcf_bind_filter.exit.i.sch_tree_unlock.exit.i_crit_edge

__tcf_bind_filter.exit.i.sch_tree_unlock.exit.i_crit_edge: ; preds = %__tcf_bind_filter.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_unlock.exit.i

if.else.i13.i:                                    ; preds = %__tcf_bind_filter.exit.i
  %dev_queue.i.i.i9.i = getelementptr inbounds %struct.Qdisc, ptr %28, i32 0, i32 9
  %52 = ptrtoint ptr %dev_queue.i.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev_queue.i.i.i9.i, align 8
  %qdisc_sleeping.i.i.i10.i = getelementptr inbounds %struct.netdev_queue, ptr %53, i32 0, i32 3
  %54 = ptrtoint ptr %qdisc_sleeping.i.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %qdisc_sleeping.i.i.i10.i, align 4
  %call1.i.i11.i = tail call i32 @rtnl_is_locked() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i11.i)
  %tobool.not.i.i12.i = icmp eq i32 %call1.i.i11.i, 0
  br i1 %tobool.not.i.i12.i, label %land.rhs.i.i15.i, label %if.else.i13.i.sch_tree_unlock.exit.i_crit_edge

if.else.i13.i.sch_tree_unlock.exit.i_crit_edge:   ; preds = %if.else.i13.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_unlock.exit.i

land.rhs.i.i15.i:                                 ; preds = %if.else.i13.i
  %.b41.i.i14.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i14.i, label %land.rhs.i.i15.i.sch_tree_unlock.exit.i_crit_edge, label %if.then.i.i16.i, !prof !200

land.rhs.i.i15.i.sch_tree_unlock.exit.i_crit_edge: ; preds = %land.rhs.i.i15.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %sch_tree_unlock.exit.i

if.then.i.i16.i:                                  ; preds = %land.rhs.i.i15.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.37, i32 noundef 596) #13
  br label %sch_tree_unlock.exit.i

sch_tree_unlock.exit.i:                           ; preds = %if.then.i.i16.i, %land.rhs.i.i15.i.sch_tree_unlock.exit.i_crit_edge, %if.else.i13.i.sch_tree_unlock.exit.i_crit_edge, %__tcf_bind_filter.exit.i.sch_tree_unlock.exit.i_crit_edge
  %.sink.i17.i = phi ptr [ %28, %__tcf_bind_filter.exit.i.sch_tree_unlock.exit.i_crit_edge ], [ %55, %if.else.i13.i.sch_tree_unlock.exit.i_crit_edge ], [ %55, %land.rhs.i.i15.i.sch_tree_unlock.exit.i_crit_edge ], [ %55, %if.then.i.i16.i ]
  %lock.i.i.i18.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i17.i, i32 0, i32 17, i32 3
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i18.i) #13
  br label %if.end99

if.end99:                                         ; preds = %sch_tree_unlock.exit.i, %if.then95.if.end99_crit_edge, %if.end92.if.end99_crit_edge
  %arrayidx100 = getelementptr ptr, ptr %tb, i32 8
  %56 = ptrtoint ptr %arrayidx100 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx100, align 4
  %tobool101.not = icmp eq ptr %57, null
  br i1 %tobool101.not, label %if.end99.cleanup112_crit_edge, label %if.then102

if.end99.cleanup112_crit_edge:                    ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup112

if.then102:                                       ; preds = %if.end99
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %indev.i) #13
  %58 = call ptr @memset(ptr %indev.i, i32 255, i32 16)
  %call.i = call i32 @nla_strscpy(ptr noundef nonnull %indev.i, ptr noundef nonnull %57, i32 noundef 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %do.body.i, label %if.end2.i

do.body.i:                                        ; preds = %if.then102
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_change_indev.__msg) #13
  %tobool.not.i155 = icmp eq ptr %extack, null
  br i1 %tobool.not.i155, label %do.body.i.tcf_change_indev.exit.thread_crit_edge, label %do.body.i.tcf_change_indev.exit.thread.sink.split_crit_edge

do.body.i.tcf_change_indev.exit.thread.sink.split_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcf_change_indev.exit.thread.sink.split

do.body.i.tcf_change_indev.exit.thread_crit_edge: ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcf_change_indev.exit.thread

if.end2.i:                                        ; preds = %if.then102
  %call4.i = call ptr @__dev_get_by_name(ptr noundef %net, ptr noundef nonnull %indev.i) #13
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %do.body7.i, label %tcf_change_indev.exit

do.body7.i:                                       ; preds = %if.end2.i
  call void @do_trace_netlink_extack(ptr noundef nonnull @tcf_change_indev.__msg.39) #13
  %tobool9.not.i = icmp eq ptr %extack, null
  br i1 %tobool9.not.i, label %do.body7.i.tcf_change_indev.exit.thread_crit_edge, label %do.body7.i.tcf_change_indev.exit.thread.sink.split_crit_edge

do.body7.i.tcf_change_indev.exit.thread.sink.split_crit_edge: ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcf_change_indev.exit.thread.sink.split

do.body7.i.tcf_change_indev.exit.thread_crit_edge: ; preds = %do.body7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %tcf_change_indev.exit.thread

tcf_change_indev.exit.thread.sink.split:          ; preds = %do.body7.i.tcf_change_indev.exit.thread.sink.split_crit_edge, %do.body.i.tcf_change_indev.exit.thread.sink.split_crit_edge
  %tcf_change_indev.__msg.sink = phi ptr [ @tcf_change_indev.__msg, %do.body.i.tcf_change_indev.exit.thread.sink.split_crit_edge ], [ @tcf_change_indev.__msg.39, %do.body7.i.tcf_change_indev.exit.thread.sink.split_crit_edge ]
  %59 = ptrtoint ptr %extack to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %tcf_change_indev.__msg.sink, ptr %extack, align 4
  %bad_attr.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 1
  %60 = ptrtoint ptr %bad_attr.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %bad_attr.i, align 4
  %policy.i = getelementptr inbounds %struct.netlink_ext_ack, ptr %extack, i32 0, i32 2
  %61 = ptrtoint ptr %policy.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %policy.i, align 4
  br label %tcf_change_indev.exit.thread

tcf_change_indev.exit.thread:                     ; preds = %tcf_change_indev.exit.thread.sink.split, %do.body7.i.tcf_change_indev.exit.thread_crit_edge, %do.body.i.tcf_change_indev.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %indev.i) #13
  br label %cleanup112

tcf_change_indev.exit:                            ; preds = %if.end2.i
  %ifindex.i = getelementptr inbounds %struct.net_device, ptr %call4.i, i32 0, i32 17
  %62 = ptrtoint ptr %ifindex.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ifindex.i, align 4
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %indev.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp105 = icmp slt i32 %63, 0
  br i1 %cmp105, label %tcf_change_indev.exit.cleanup112_crit_edge, label %if.end107

tcf_change_indev.exit.cleanup112_crit_edge:       ; preds = %tcf_change_indev.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup112

if.end107:                                        ; preds = %tcf_change_indev.exit
  call void @__sanitizer_cov_trace_pc() #15
  %ifindex = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 4
  %64 = ptrtoint ptr %ifindex to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %ifindex, align 4
  br label %cleanup112

cleanup112:                                       ; preds = %if.end107, %tcf_change_indev.exit.cleanup112_crit_edge, %tcf_change_indev.exit.thread, %if.end99.cleanup112_crit_edge, %if.then29, %do.body26.cleanup112_crit_edge, %if.then18, %do.body15.cleanup112_crit_edge, %if.then7, %do.body.cleanup112_crit_edge, %entry.cleanup112_crit_edge
  %retval.3 = phi i32 [ %call, %entry.cleanup112_crit_edge ], [ -22, %if.then7 ], [ -22, %if.then18 ], [ -22, %if.then29 ], [ 0, %if.end107 ], [ 0, %if.end99.cleanup112_crit_edge ], [ -22, %do.body.cleanup112_crit_edge ], [ -22, %do.body15.cleanup112_crit_edge ], [ -22, %do.body26.cleanup112_crit_edge ], [ -22, %tcf_change_indev.exit.cleanup112_crit_edge ], [ -22, %tcf_change_indev.exit.thread ]
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u32_replace_hw_knode(ptr noundef %tp, ptr noundef %n, i32 noundef %flags, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %cls_u32.i = alloca %struct.tc_cls_u32_offload, align 4
  %cls_u32 = alloca %struct.tc_cls_u32_offload, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b52 = load i1, ptr @u32_replace_hw_knode.__warned, align 1
  br i1 %.b52, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_replace_hw_knode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 532, ptr noundef nonnull @.str.16) #13
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %ht_down = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 7
  %0 = ptrtoint ptr %ht_down to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ht_down, align 4
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %2 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chain, align 4
  %block4 = getelementptr inbounds %struct.tcf_chain, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %block4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %block4, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cls_u32) #13
  %6 = getelementptr inbounds i8, ptr %cls_u32, i32 4
  %7 = call ptr @memset(ptr %6, i32 0, i32 48)
  %and.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %index.i = getelementptr inbounds %struct.tcf_chain, ptr %3, i32 0, i32 4
  %8 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %index.i, align 4
  %10 = ptrtoint ptr %cls_u32 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cls_u32, align 4
  %protocol.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %11 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %protocol.i, align 4
  %protocol1.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32, i32 0, i32 1
  %13 = ptrtoint ptr %protocol1.i to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %protocol1.i, align 4
  %prio.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %14 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %prio.i, align 4
  %shr.i = lshr i32 %15, 16
  %prio2.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32, i32 0, i32 2
  %16 = ptrtoint ptr %prio2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %shr.i, ptr %prio2.i, align 4
  %17 = and i32 %flags, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %do.end.tc_cls_common_offload_init.exit_crit_edge, label %if.then.i

do.end.tc_cls_common_offload_init.exit_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %tc_cls_common_offload_init.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #15
  %extack3.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32, i32 0, i32 3
  %19 = ptrtoint ptr %extack3.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %extack, ptr %extack3.i, align 4
  br label %tc_cls_common_offload_init.exit

tc_cls_common_offload_init.exit:                  ; preds = %if.then.i, %do.end.tc_cls_common_offload_init.exit_crit_edge
  %command = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32, i32 0, i32 1
  %20 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %command, align 4
  %handle = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 1
  %21 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %handle, align 4
  %23 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32, i32 0, i32 2
  %handle6 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32, i32 0, i32 2, i32 0, i32 3
  %24 = ptrtoint ptr %handle6 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %handle6, align 4
  %fshift = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 5
  %25 = ptrtoint ptr %fshift to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %fshift, align 4
  %fshift7 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32, i32 0, i32 2, i32 0, i32 7
  %27 = ptrtoint ptr %fshift7 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %26, ptr %fshift7, align 4
  %val = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 11
  %28 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %val, align 4
  %val8 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32, i32 0, i32 2, i32 0, i32 4
  %30 = ptrtoint ptr %val8 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %val8, align 4
  %mask = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 12
  %31 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mask, align 4
  %mask9 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32, i32 0, i32 2, i32 0, i32 5
  %33 = ptrtoint ptr %mask9 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %mask9, align 4
  %sel = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 15
  %sel10 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32, i32 0, i32 2, i32 0, i32 2
  %34 = ptrtoint ptr %sel10 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %sel, ptr %sel10, align 4
  %res = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 6
  %res11 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32, i32 0, i32 2, i32 0, i32 1
  %35 = ptrtoint ptr %res11 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %res, ptr %res11, align 4
  %exts = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 3
  %36 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %exts, ptr %23, align 4
  %tobool14.not = icmp eq ptr %1, null
  br i1 %tobool14.not, label %tc_cls_common_offload_init.exit.if.end17_crit_edge, label %if.then15

tc_cls_common_offload_init.exit.if.end17_crit_edge: ; preds = %tc_cls_common_offload_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end17

if.then15:                                        ; preds = %tc_cls_common_offload_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %handle16 = getelementptr inbounds %struct.tc_u_hnode, ptr %1, i32 0, i32 1
  %37 = ptrtoint ptr %handle16 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %handle16, align 4
  %link_handle = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32, i32 0, i32 2, i32 0, i32 6
  %39 = ptrtoint ptr %link_handle to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %link_handle, align 4
  br label %if.end17

if.end17:                                         ; preds = %if.then15, %tc_cls_common_offload_init.exit.if.end17_crit_edge
  %flags19 = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 9
  %in_hw_count = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 10
  %call20 = call i32 @tc_setup_cb_add(ptr noundef %5, ptr noundef %tp, i32 noundef 1, ptr noundef nonnull %cls_u32, i1 noundef zeroext %tobool.i, ptr noundef %flags19, ptr noundef %in_hw_count, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20)
  %tobool21.not = icmp eq i32 %call20, 0
  br i1 %tobool21.not, label %if.end23, label %if.then22

if.then22:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #15
  %40 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chain, align 4
  %block1.i = getelementptr inbounds %struct.tcf_chain, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %block1.i, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cls_u32.i) #13
  %44 = getelementptr inbounds i8, ptr %cls_u32.i, i32 4
  %45 = call ptr @memset(ptr %44, i32 0, i32 48)
  %index.i.i = getelementptr inbounds %struct.tcf_chain, ptr %41, i32 0, i32 4
  %46 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %index.i.i, align 4
  %48 = ptrtoint ptr %cls_u32.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %cls_u32.i, align 4
  %49 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %protocol.i, align 4
  %51 = ptrtoint ptr %44 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %44, align 4
  %52 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %prio.i, align 4
  %shr.i.i = lshr i32 %53, 16
  %prio2.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32.i, i32 0, i32 2
  %54 = ptrtoint ptr %prio2.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %shr.i.i, ptr %prio2.i.i, align 4
  %command.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 1
  %55 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 2, ptr %command.i, align 4
  %56 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %handle, align 4
  %handle2.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 2, i32 0, i32 3
  %58 = ptrtoint ptr %handle2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %57, ptr %handle2.i, align 4
  %call.i = call i32 @tc_setup_cb_destroy(ptr noundef %43, ptr noundef %tp, i32 noundef 1, ptr noundef nonnull %cls_u32.i, i1 noundef zeroext false, ptr noundef %flags19, ptr noundef %in_hw_count, i1 noundef zeroext true) #13
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cls_u32.i) #13
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  br i1 %tobool.i, label %land.lhs.true25, label %if.end23.if.end29_crit_edge

if.end23.if.end29_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true25:                                  ; preds = %if.end23
  %59 = ptrtoint ptr %flags19 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %flags19, align 4
  %and = and i32 %60, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool27.not = icmp eq i32 %and, 0
  br i1 %tobool27.not, label %land.lhs.true25.cleanup_crit_edge, label %land.lhs.true25.if.end29_crit_edge

land.lhs.true25.if.end29_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

land.lhs.true25.cleanup_crit_edge:                ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %land.lhs.true25.if.end29_crit_edge, %if.end23.if.end29_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end29, %land.lhs.true25.cleanup_crit_edge, %if.then22
  %retval.0 = phi i32 [ %call20, %if.then22 ], [ 0, %if.end29 ], [ -22, %land.lhs.true25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cls_u32) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @u32_replace_knode(ptr nocapture noundef readonly %tp, ptr nocapture noundef readonly %tp_c, ptr noundef %n) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %handle = getelementptr inbounds %struct.tc_u_knode, ptr %n, i32 0, i32 1
  %0 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %handle, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1048577, i32 %1)
  %cmp = icmp ugt i32 %1, -1048577
  br i1 %cmp, label %do.body, label %if.else

do.body:                                          ; preds = %entry
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call, label %do.body.do.end_crit_edge, label %land.lhs.true

do.body.do.end_crit_edge:                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true:                                    ; preds = %do.body
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b111 = load i1, ptr @u32_replace_knode.__warned, align 1
  br i1 %.b111, label %land.lhs.true2.do.end_crit_edge, label %if.then4

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end

if.then4:                                         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_replace_knode.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 774, ptr noundef nonnull @.str.16) #13
  br label %do.end

do.end:                                           ; preds = %if.then4, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %do.body.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %2 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %root, align 4
  br label %if.end8

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %and = and i32 %1, -1048576
  %call7 = tail call fastcc ptr @u32_lookup_ht(ptr noundef %tp_c, i32 noundef %and)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %do.end
  %ht.0 = phi ptr [ %3, %do.end ], [ %call7, %if.else ]
  %4 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %handle, align 4
  %shr = lshr i32 %5, 12
  %and11 = and i32 %shr, 255
  %arrayidx = getelementptr %struct.tc_u_hnode, ptr %ht.0, i32 0, i32 9, i32 %and11
  %call13 = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call13, label %if.end8.do.end22_crit_edge, label %land.lhs.true14

if.end8.do.end22_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

land.lhs.true14:                                  ; preds = %if.end8
  %call15 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %land.lhs.true14.do.end22_crit_edge, label %land.lhs.true17

land.lhs.true14.do.end22_crit_edge:               ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

land.lhs.true17:                                  ; preds = %land.lhs.true14
  %.b107110 = load i1, ptr @u32_replace_knode.__warned.40, align 1
  br i1 %.b107110, label %land.lhs.true17.do.end22_crit_edge, label %if.then19

land.lhs.true17.do.end22_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end22

if.then19:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_replace_knode.__warned.40, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 783, ptr noundef nonnull @.str.16) #13
  br label %do.end22

do.end22:                                         ; preds = %if.then19, %land.lhs.true17.do.end22_crit_edge, %land.lhs.true14.do.end22_crit_edge, %if.end8.do.end22_crit_edge
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %pins.0112 = load ptr, ptr %arrayidx, align 4
  %handle24113 = getelementptr inbounds %struct.tc_u_knode, ptr %pins.0112, i32 0, i32 1
  %7 = ptrtoint ptr %handle24113 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %handle24113, align 4
  %9 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %handle, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp26114 = icmp eq i32 %8, %10
  br i1 %cmp26114, label %do.end22.for.end_crit_edge, label %do.end22.for.inc_crit_edge

do.end22.for.inc_crit_edge:                       ; preds = %do.end22
  br label %for.inc

do.end22.for.end_crit_edge:                       ; preds = %do.end22
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.inc:                                          ; preds = %do.end39.for.inc_crit_edge, %do.end22.for.inc_crit_edge
  %pins.0115 = phi ptr [ %pins.0, %do.end39.for.inc_crit_edge ], [ %pins.0112, %do.end22.for.inc_crit_edge ]
  %call30 = tail call zeroext i1 @lockdep_rtnl_is_held() #13
  br i1 %call30, label %for.inc.do.end39_crit_edge, label %land.lhs.true31

for.inc.do.end39_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

land.lhs.true31:                                  ; preds = %for.inc
  %call32 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true31.do.end39_crit_edge, label %land.lhs.true34

land.lhs.true31.do.end39_crit_edge:               ; preds = %land.lhs.true31
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

land.lhs.true34:                                  ; preds = %land.lhs.true31
  %.b108109 = load i1, ptr @u32_replace_knode.__warned.41, align 1
  br i1 %.b108109, label %land.lhs.true34.do.end39_crit_edge, label %if.then36

land.lhs.true34.do.end39_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end39

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @u32_replace_knode.__warned.41, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 784, ptr noundef nonnull @.str.16) #13
  br label %do.end39

do.end39:                                         ; preds = %if.then36, %land.lhs.true34.do.end39_crit_edge, %land.lhs.true31.do.end39_crit_edge, %for.inc.do.end39_crit_edge
  %11 = ptrtoint ptr %pins.0115 to i32
  call void @__asan_load4_noabort(i32 %11)
  %pins.0 = load ptr, ptr %pins.0115, align 4
  %handle24 = getelementptr inbounds %struct.tc_u_knode, ptr %pins.0, i32 0, i32 1
  %12 = ptrtoint ptr %handle24 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %handle24, align 4
  %14 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %handle, align 4
  %cmp26 = icmp eq i32 %13, %15
  br i1 %cmp26, label %do.end39.for.end_crit_edge, label %do.end39.for.inc_crit_edge

do.end39.for.inc_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

do.end39.for.end_crit_edge:                       ; preds = %do.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %do.end39.for.end_crit_edge, %do.end22.for.end_crit_edge
  %ins.0.lcssa = phi ptr [ %arrayidx, %do.end22.for.end_crit_edge ], [ %pins.0115, %do.end39.for.end_crit_edge ]
  %pins.0.lcssa = phi ptr [ %pins.0112, %do.end22.for.end_crit_edge ], [ %pins.0, %do.end39.for.end_crit_edge ]
  %.lcssa = phi i32 [ %8, %do.end22.for.end_crit_edge ], [ %13, %do.end39.for.end_crit_edge ]
  %handle_idr = getelementptr inbounds %struct.tc_u_hnode, ptr %ht.0, i32 0, i32 5
  %call42 = tail call ptr @idr_replace(ptr noundef %handle_idr, ptr noundef %n, i32 noundef %.lcssa) #13
  %16 = ptrtoint ptr %pins.0.lcssa to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %pins.0.lcssa, align 4
  %18 = ptrtoint ptr %n to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %17, ptr %n, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !206
  %19 = ptrtoint ptr %ins.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %n, ptr %ins.0.lcssa, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @u32_delete_key_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -84
  tail call void @rtnl_lock() #13
  tail call fastcc void @u32_destroy_key(ptr noundef %add.ptr, i1 noundef zeroext false)
  tail call void @rtnl_unlock() #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_u32(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @u32_replace_hw_hnode(ptr nocapture noundef readonly %tp, ptr nocapture noundef readonly %h, i32 noundef %flags, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %cls_u32.i = alloca %struct.tc_cls_u32_offload, align 4
  %cls_u32 = alloca %struct.tc_cls_u32_offload, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %block1 = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %block1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block1, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cls_u32) #13
  %4 = getelementptr inbounds i8, ptr %cls_u32, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 48)
  %and.i = and i32 %flags, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  %index.i = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 4
  %6 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %index.i, align 4
  %8 = ptrtoint ptr %cls_u32 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cls_u32, align 4
  %protocol.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %9 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %protocol.i, align 4
  %protocol1.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32, i32 0, i32 1
  %11 = ptrtoint ptr %protocol1.i to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %10, ptr %protocol1.i, align 4
  %prio.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %12 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %prio.i, align 4
  %shr.i = lshr i32 %13, 16
  %prio2.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32, i32 0, i32 2
  %14 = ptrtoint ptr %prio2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr.i, ptr %prio2.i, align 4
  %15 = and i32 %flags, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %entry.tc_cls_common_offload_init.exit_crit_edge, label %if.then.i

entry.tc_cls_common_offload_init.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %tc_cls_common_offload_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %extack3.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32, i32 0, i32 3
  %17 = ptrtoint ptr %extack3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %extack, ptr %extack3.i, align 4
  br label %tc_cls_common_offload_init.exit

tc_cls_common_offload_init.exit:                  ; preds = %if.then.i, %entry.tc_cls_common_offload_init.exit_crit_edge
  %command = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32, i32 0, i32 1
  %18 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 3, ptr %command, align 4
  %divisor = getelementptr inbounds %struct.tc_u_hnode, ptr %h, i32 0, i32 4
  %19 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %divisor, align 4
  %21 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32, i32 0, i32 2
  %divisor2 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32, i32 0, i32 2, i32 0, i32 2
  %22 = ptrtoint ptr %divisor2 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %20, ptr %divisor2, align 4
  %handle = getelementptr inbounds %struct.tc_u_hnode, ptr %h, i32 0, i32 1
  %23 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %handle, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %21, align 4
  %prio = getelementptr inbounds %struct.tc_u_hnode, ptr %h, i32 0, i32 2
  %26 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %prio, align 4
  %prio4 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32, i32 0, i32 2, i32 0, i32 1
  %28 = ptrtoint ptr %prio4 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %prio4, align 4
  %call5 = call i32 @tc_setup_cb_call(ptr noundef %3, i32 noundef 1, ptr noundef nonnull %cls_u32, i1 noundef zeroext %tobool.i, i1 noundef zeroext true) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp = icmp slt i32 %call5, 0
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %tc_cls_common_offload_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chain, align 4
  %block1.i = getelementptr inbounds %struct.tcf_chain, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %block1.i, align 4
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %cls_u32.i) #13
  %33 = getelementptr inbounds i8, ptr %cls_u32.i, i32 4
  %34 = call ptr @memset(ptr %33, i32 0, i32 48)
  %index.i.i = getelementptr inbounds %struct.tcf_chain, ptr %30, i32 0, i32 4
  %35 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %index.i.i, align 4
  %37 = ptrtoint ptr %cls_u32.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %cls_u32.i, align 4
  %38 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %protocol.i, align 4
  %40 = ptrtoint ptr %33 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %33, align 4
  %41 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %prio.i, align 4
  %shr.i.i = lshr i32 %42, 16
  %prio2.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_u32.i, i32 0, i32 2
  %43 = ptrtoint ptr %prio2.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %shr.i.i, ptr %prio2.i.i, align 4
  %command.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 1
  %44 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 5, ptr %command.i, align 4
  %45 = ptrtoint ptr %divisor to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %divisor, align 4
  %47 = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 2
  %divisor2.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 2, i32 0, i32 2
  %48 = ptrtoint ptr %divisor2.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %46, ptr %divisor2.i, align 4
  %49 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %handle, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %47, align 4
  %52 = ptrtoint ptr %prio to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %prio, align 4
  %prio4.i = getelementptr inbounds %struct.tc_cls_u32_offload, ptr %cls_u32.i, i32 0, i32 2, i32 0, i32 1
  %54 = ptrtoint ptr %prio4.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %prio4.i, align 4
  %call.i = call i32 @tc_setup_cb_call(ptr noundef %32, i32 noundef 1, ptr noundef nonnull %cls_u32.i, i1 noundef zeroext false, i1 noundef zeroext true) #13
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cls_u32.i) #13
  br label %cleanup

if.else:                                          ; preds = %tc_cls_common_offload_init.exit
  call void @__sanitizer_cov_trace_pc() #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6.not = icmp ne i32 %call5, 0
  %call.not = xor i1 %tobool.i, true
  %brmerge = select i1 %call.not, i1 true, i1 %cmp6.not
  %spec.select = select i1 %brmerge, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %retval.0 = phi i32 [ %call5, %if.then ], [ %spec.select, %if.else ]
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %cls_u32) #13
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gen_new_kid(ptr noundef %ht, i32 noundef %htid) unnamed_addr #2 align 64 {
entry:
  %index = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %index) #13
  %or = or i32 %htid, 2048
  %0 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %or, ptr %index, align 4
  %or1 = or i32 %htid, 4095
  %handle_idr = getelementptr inbounds %struct.tc_u_hnode, ptr %ht, i32 0, i32 5
  %call = call i32 @idr_alloc_u32(ptr noundef %handle_idr, ptr noundef null, ptr noundef nonnull %index, i32 noundef %or1, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then:                                          ; preds = %entry
  %add = add i32 %htid, 1
  %1 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %add, ptr %index, align 4
  %call3 = call i32 @idr_alloc_u32(ptr noundef %handle_idr, ptr noundef null, ptr noundef nonnull %index, i32 noundef %or1, i32 noundef 3264) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then5

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end6

if.then5:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %or1, ptr %index, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then5, %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %3 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %index, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %index) #13
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #10

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @tcf_exts_init(ptr nocapture noundef writeonly %exts, ptr noundef %net) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %exts to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %exts, align 4
  %nr_actions = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 1
  %1 = ptrtoint ptr %nr_actions to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %nr_actions, align 4
  %net1 = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 3
  %2 = ptrtoint ptr %net1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %net, ptr %net1, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 128) #18
  %actions = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 2
  %4 = ptrtoint ptr %actions to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call7.i.i.i, ptr %actions, align 4
  %tobool.not = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %action3 = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 5
  %5 = ptrtoint ptr %action3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %action3, align 4
  %police4 = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 6
  %6 = ptrtoint ptr %police4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 6, ptr %police4, align 4
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_validate_ex(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_cb_add(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_cb_reoffload(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dev_get_by_index(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nla_put_string(ptr noundef %skb, ptr noundef %str) unnamed_addr #8 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %call = tail call i32 @strlen(ptr noundef %str) #20
  %add = add i32 %call, 1
  %call1 = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef %add, ptr noundef %str) #13
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_dump_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #12

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_tcf_proto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #10

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind readonly }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { cold nounwind }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nounwind allocsize(2) }
attributes #19 = { nounwind readonly willreturn }
attributes #20 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !47, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !115, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !165, !166, !167, !169, !170, !171, !173, !174, !175, !177, !178}
!llvm.named.register.sp = !{!179}
!llvm.module.flags = !{!180, !181, !182, !183, !184, !185, !186, !187}
!llvm.ident = !{!188}

!0 = !{ptr @__initcall__kmod_cls_u32__420_1424_init_u326, !1, !"__initcall__kmod_cls_u32__420_1424_init_u326", i1 false, i1 false}
!1 = !{!"../net/sched/cls_u32.c", i32 1424, i32 1}
!2 = !{ptr @__exitcall_exit_u32, !3, !"__exitcall_exit_u32", i1 false, i1 false}
!3 = !{!"../net/sched/cls_u32.c", i32 1425, i32 1}
!4 = !{ptr @__UNIQUE_ID_file421, !5, !"__UNIQUE_ID_file421", i1 false, i1 false}
!5 = !{!"../net/sched/cls_u32.c", i32 1426, i32 1}
!6 = !{ptr @__UNIQUE_ID_license422, !5, !"__UNIQUE_ID_license422", i1 false, i1 false}
!7 = !{ptr @tc_u_common_hash, !8, !"tc_u_common_hash", i1 false, i1 false}
!8 = !{!"../net/sched/cls_u32.c", i32 314, i32 27}
!9 = !{ptr @cls_u32_ops, !10, !"cls_u32_ops", i1 false, i1 false}
!10 = !{!"../net/sched/cls_u32.c", i32 1376, i32 29}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../net/sched/cls_u32.c", i32 111, i32 26}
!13 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.1, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../net/sched/cls_u32.c", i32 123, i32 6}
!17 = distinct !{null, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/sched/cls_u32.c", i32 130, i32 3}
!19 = distinct !{null, !20, !"__warned", i1 false, i1 false}
!20 = !{!"../net/sched/cls_u32.c", i32 135, i32 8}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../net/sched/cls_u32.c", i32 141, i32 8}
!23 = distinct !{null, !24, !"__warned", i1 false, i1 false}
!24 = !{!"../net/sched/cls_u32.c", i32 159, i32 9}
!25 = distinct !{null, !26, !"__warned", i1 false, i1 false}
!26 = !{!"../net/sched/cls_u32.c", i32 168, i32 8}
!27 = distinct !{null, !28, !"__warned", i1 false, i1 false}
!28 = !{!"../net/sched/cls_u32.c", i32 175, i32 10}
!29 = distinct !{null, !30, !"__warned", i1 false, i1 false}
!30 = !{!"../net/sched/cls_u32.c", i32 183, i32 10}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/sched/cls_u32.c", i32 189, i32 8}
!33 = distinct !{null, !34, !"__warned", i1 false, i1 false}
!34 = !{!"../net/sched/cls_u32.c", i32 200, i32 8}
!35 = distinct !{null, !36, !"__warned", i1 false, i1 false}
!36 = !{!"../net/sched/cls_u32.c", i32 242, i32 8}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../net/sched/cls_u32.c", i32 250, i32 2}
!39 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @u32_classify._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @u32_classify._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @xa_init_flags.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!44 = !{ptr @.str.15, !43, !"<string literal>", i1 false, i1 false}
!45 = distinct !{null, !46, !"__warned", i1 false, i1 false}
!46 = !{!"../net/sched/cls_u32.c", i32 623, i32 31}
!47 = !{ptr @.str.16, !46, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/sched/cls_u32.c", i32 635, i32 16}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/sched/cls_u32.c", i32 603, i32 13}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/sched/cls_u32.c", i32 605, i32 30}
!54 = distinct !{null, !55, !"__warned", i1 false, i1 false}
!55 = !{!"../net/sched/cls_u32.c", i32 576, i32 15}
!56 = distinct !{null, !57, !"__warned", i1 false, i1 false}
!57 = !{!"../net/sched/cls_u32.c", i32 577, i32 4}
!58 = distinct !{null, !59, !"__warned", i1 false, i1 false}
!59 = !{!"../net/sched/cls_u32.c", i32 391, i32 26}
!60 = distinct !{null, !61, !"__warned", i1 false, i1 false}
!61 = !{!"../net/sched/cls_u32.c", i32 292, i32 8}
!62 = distinct !{null, !63, !"__warned", i1 false, i1 false}
!63 = !{!"../net/sched/cls_u32.c", i32 258, i32 12}
!64 = distinct !{null, !65, !"__warned", i1 false, i1 false}
!65 = !{!"../net/sched/cls_u32.c", i32 260, i32 12}
!66 = distinct !{null, !67, !"__warned", i1 false, i1 false}
!67 = !{!"../net/sched/cls_u32.c", i32 276, i32 11}
!68 = distinct !{null, !69, !"__warned", i1 false, i1 false}
!69 = !{!"../net/sched/cls_u32.c", i32 278, i32 11}
!70 = !{ptr @u32_change.__msg, !71, !"__msg", i1 false, i1 false}
!71 = !{!"../net/sched/cls_u32.c", i32 859, i32 4}
!72 = !{ptr @u32_change.__msg.22, !73, !"__msg", i1 false, i1 false}
!73 = !{!"../net/sched/cls_u32.c", i32 874, i32 4}
!74 = !{ptr @u32_change.__msg.23, !75, !"__msg", i1 false, i1 false}
!75 = !{!"../net/sched/cls_u32.c", i32 884, i32 4}
!76 = !{ptr @u32_change.__msg.24, !77, !"__msg", i1 false, i1 false}
!77 = !{!"../net/sched/cls_u32.c", i32 890, i32 4}
!78 = !{ptr @u32_change.__msg.25, !79, !"__msg", i1 false, i1 false}
!79 = !{!"../net/sched/cls_u32.c", i32 927, i32 4}
!80 = !{ptr @u32_change.__msg.26, !81, !"__msg", i1 false, i1 false}
!81 = !{!"../net/sched/cls_u32.c", i32 931, i32 4}
!82 = !{ptr @u32_change.__msg.27, !83, !"__msg", i1 false, i1 false}
!83 = !{!"../net/sched/cls_u32.c", i32 935, i32 4}
!84 = distinct !{null, !85, !"__warned", i1 false, i1 false}
!85 = !{!"../net/sched/cls_u32.c", i32 979, i32 9}
!86 = !{ptr @u32_change.__msg.28, !87, !"__msg", i1 false, i1 false}
!87 = !{!"../net/sched/cls_u32.c", i32 984, i32 5}
!88 = distinct !{null, !89, !"__warned", i1 false, i1 false}
!89 = !{!"../net/sched/cls_u32.c", i32 989, i32 8}
!90 = !{ptr @u32_change.__msg.30, !91, !"__msg", i1 false, i1 false}
!91 = !{!"../net/sched/cls_u32.c", i32 994, i32 3}
!92 = !{ptr @u32_change.__msg.31, !93, !"__msg", i1 false, i1 false}
!93 = !{!"../net/sched/cls_u32.c", i32 1000, i32 4}
!94 = !{ptr @u32_change.__msg.32, !95, !"__msg", i1 false, i1 false}
!95 = !{!"../net/sched/cls_u32.c", i32 1012, i32 3}
!96 = distinct !{null, !97, !"__warned", i1 false, i1 false}
!97 = !{!"../net/sched/cls_u32.c", i32 1079, i32 15}
!98 = distinct !{null, !99, !"__warned", i1 false, i1 false}
!99 = !{!"../net/sched/cls_u32.c", i32 1080, i32 34}
!100 = !{ptr @u32_policy, !101, !"u32_policy", i1 false, i1 false}
!101 = !{!"../net/sched/cls_u32.c", i32 698, i32 32}
!102 = distinct !{null, !103, !"__warned", i1 false, i1 false}
!103 = !{!"../net/sched/cls_u32.c", i32 796, i32 26}
!104 = !{ptr @u32_set_parms.__msg, !105, !"__msg", i1 false, i1 false}
!105 = !{!"../net/sched/cls_u32.c", i32 727, i32 4}
!106 = !{ptr @u32_set_parms.__msg.35, !107, !"__msg", i1 false, i1 false}
!107 = !{!"../net/sched/cls_u32.c", i32 735, i32 5}
!108 = !{ptr @u32_set_parms.__msg.36, !109, !"__msg", i1 false, i1 false}
!109 = !{!"../net/sched/cls_u32.c", i32 739, i32 5}
!110 = distinct !{null, !111, !"__warned", i1 false, i1 false}
!111 = !{!"../net/sched/cls_u32.c", i32 745, i32 12}
!112 = distinct !{null, !113, !"__already_done", i1 false, i1 false}
!113 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!114 = !{ptr @.str.37, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.38, !113, !"<string literal>", i1 false, i1 false}
!116 = !{ptr @tcf_change_indev.__msg, !117, !"__msg", i1 false, i1 false}
!117 = !{!"../include/net/pkt_cls.h", i32 526, i32 3}
!118 = !{ptr @tcf_change_indev.__msg.39, !119, !"__msg", i1 false, i1 false}
!119 = !{!"../include/net/pkt_cls.h", i32 532, i32 3}
!120 = distinct !{null, !121, !"__warned", i1 false, i1 false}
!121 = !{!"../net/sched/cls_u32.c", i32 532, i32 26}
!122 = distinct !{null, !123, !"__warned", i1 false, i1 false}
!123 = !{!"../net/sched/cls_u32.c", i32 774, i32 8}
!124 = distinct !{null, !125, !"__warned", i1 false, i1 false}
!125 = !{!"../net/sched/cls_u32.c", i32 783, i32 14}
!126 = distinct !{null, !127, !"__warned", i1 false, i1 false}
!127 = !{!"../net/sched/cls_u32.c", i32 784, i32 33}
!128 = !{ptr @u32_delete.__msg, !129, !"__msg", i1 false, i1 false}
!129 = !{!"../net/sched/cls_u32.c", i32 667, i32 3}
!130 = !{ptr @u32_delete.__msg.42, !131, !"__msg", i1 false, i1 false}
!131 = !{!"../net/sched/cls_u32.c", i32 674, i32 3}
!132 = distinct !{null, !133, !"__warned", i1 false, i1 false}
!133 = !{!"../net/sched/cls_u32.c", i32 449, i32 26}
!134 = distinct !{null, !135, !"__warned", i1 false, i1 false}
!135 = !{!"../net/sched/cls_u32.c", i32 453, i32 14}
!136 = distinct !{null, !137, !"__warned", i1 false, i1 false}
!137 = !{!"../net/sched/cls_u32.c", i32 454, i32 31}
!138 = distinct !{null, !139, !"__warned", i1 false, i1 false}
!139 = !{!"../net/sched/cls_u32.c", i32 1119, i32 12}
!140 = distinct !{null, !141, !"__warned", i1 false, i1 false}
!141 = !{!"../net/sched/cls_u32.c", i32 1132, i32 13}
!142 = distinct !{null, !143, !"__warned", i1 false, i1 false}
!143 = !{!"../net/sched/cls_u32.c", i32 1134, i32 13}
!144 = distinct !{null, !145, !"__warned", i1 false, i1 false}
!145 = !{!"../net/sched/cls_u32.c", i32 1121, i32 12}
!146 = distinct !{null, !147, !"__warned", i1 false, i1 false}
!147 = !{!"../net/sched/cls_u32.c", i32 1212, i32 12}
!148 = distinct !{null, !149, !"__warned", i1 false, i1 false}
!149 = !{!"../net/sched/cls_u32.c", i32 1230, i32 13}
!150 = distinct !{null, !151, !"__warned", i1 false, i1 false}
!151 = !{!"../net/sched/cls_u32.c", i32 1232, i32 13}
!152 = distinct !{null, !153, !"__warned", i1 false, i1 false}
!153 = !{!"../net/sched/cls_u32.c", i32 1214, i32 12}
!154 = distinct !{null, !155, !"__warned", i1 false, i1 false}
!155 = !{!"../net/sched/cls_u32.c", i32 1173, i32 26}
!156 = distinct !{null, !157, !"__warned", i1 false, i1 false}
!157 = !{!"../net/sched/cls_u32.c", i32 1295, i32 11}
!158 = distinct !{null, !159, !"__warned", i1 false, i1 false}
!159 = !{!"../net/sched/cls_u32.c", i32 1305, i32 13}
!160 = !{ptr @.str.52, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../include/net/netlink.h", i32 991, i32 3}
!162 = !{ptr @.str.53, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../net/sched/cls_u32.c", i32 1395, i32 2}
!164 = !{ptr @.str.54, !163, !"<string literal>", i1 false, i1 false}
!165 = !{ptr @init_u32._entry, !163, !"_entry", i1 false, i1 false}
!166 = !{ptr @init_u32._entry_ptr, !163, !"_entry_ptr", i1 false, i1 false}
!167 = !{ptr @.str.56, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../net/sched/cls_u32.c", i32 1397, i32 2}
!169 = !{ptr @init_u32._entry.55, !168, !"_entry", i1 false, i1 false}
!170 = !{ptr @init_u32._entry_ptr.57, !168, !"_entry_ptr", i1 false, i1 false}
!171 = !{ptr @.str.59, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../net/sched/cls_u32.c", i32 1399, i32 2}
!173 = !{ptr @init_u32._entry.58, !172, !"_entry", i1 false, i1 false}
!174 = !{ptr @init_u32._entry_ptr.60, !172, !"_entry_ptr", i1 false, i1 false}
!175 = !{ptr @.str.62, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../net/sched/cls_u32.c", i32 1401, i32 2}
!177 = !{ptr @init_u32._entry.61, !176, !"_entry", i1 false, i1 false}
!178 = !{ptr @init_u32._entry_ptr.63, !176, !"_entry_ptr", i1 false, i1 false}
!179 = !{!"sp"}
!180 = !{i32 1, !"wchar_size", i32 2}
!181 = !{i32 1, !"min_enum_size", i32 4}
!182 = !{i32 8, !"branch-target-enforcement", i32 0}
!183 = !{i32 8, !"sign-return-address", i32 0}
!184 = !{i32 8, !"sign-return-address-all", i32 0}
!185 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!186 = !{i32 7, !"uwtable", i32 1}
!187 = !{i32 7, !"frame-pointer", i32 2}
!188 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!189 = !{!"auto-init"}
!190 = !{!"branch_weights", i32 1, i32 2000}
!191 = !{i64 2156503129}
!192 = !{i64 2156510354}
!193 = !{i32 0, i32 33}
!194 = !{i64 2156587238}
!195 = !{i64 2156605442}
!196 = !{i64 2156412499}
!197 = !{i64 878771, i64 878788, i64 878812, i64 878838, i64 878856}
!198 = !{i64 2156412843}
!199 = !{i8 0, i8 2}
!200 = !{!"branch_weights", i32 2000, i32 1}
!201 = !{i64 856536, i64 856560, i64 856581, i64 856598, i64 856615}
!202 = !{i64 2148461558}
!203 = !{i64 2148375998, i64 2148376030, i64 2148376059, i64 2148376093, i64 2148376124, i64 2148376147}
!204 = !{i64 2149337672}
!205 = !{i64 2156553883}
!206 = !{i64 2156565444}
