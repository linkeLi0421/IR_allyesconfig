; ModuleID = '/llk/IR_all_yes/net/sched/cls_bpf.c_pt.bc'
source_filename = "../net/sched/cls_bpf.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcf_proto_ops = type { %struct.list_head, [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon.92 }
%struct.atomic_t = type { i32 }
%union.anon.92 = type { i32 }
%struct.lock_class_key = type { %union.anon.7 }
%union.anon.7 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.27 }
%union.anon.27 = type { i32 }
%struct.tcf_proto = type { ptr, ptr, ptr, i16, i32, ptr, ptr, ptr, %struct.spinlock, i8, %struct.refcount_struct, %struct.callback_head, %struct.hlist_node }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.callback_head = type { ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.164, %union.anon.165, [48 x i8], %union.anon.166, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.168, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.164 = type { ptr }
%union.anon.165 = type { i64 }
%union.anon.166 = type { %struct.anon.167 }
%struct.anon.167 = type { i32, ptr }
%union.anon.168 = type { %struct.anon.169 }
%struct.anon.169 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.170, i32, i32, i32, i16, i16, %union.anon.172, i32, %union.anon.173, %union.anon.174, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.170 = type { i32 }
%union.anon.172 = type { i32 }
%union.anon.173 = type { i32 }
%union.anon.174 = type { i16 }
%struct.anon.182 = type { i32, i32 }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }
%struct.bpf_prog = type { i16, i16, i32, i32, i32, i32, [8 x i8], ptr, ptr, ptr, ptr, ptr, %union.anon.130 }
%union.anon.130 = type { %struct.anon.131 }
%struct.anon.131 = type { %struct.anon.132, [0 x %struct.sock_filter] }
%struct.anon.132 = type {}
%struct.sock_filter = type { i16, i8, i8, i32 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.bpf_prog_stats = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync, [8 x i8] }
%struct.u64_stats_t = type { i64 }
%struct.u64_stats_sync = type { %struct.seqcount }
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.cls_bpf_head = type { %struct.list_head, %struct.idr, %struct.callback_head }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.sock_fprog_kern = type { i16, ptr }
%struct.cls_bpf_prog = type { ptr, %struct.list_head, %struct.tcf_result, i8, i32, i32, %struct.tcf_exts, i32, i16, ptr, ptr, ptr, %struct.rcu_work }
%struct.tcf_result = type { %union.anon.181 }
%union.anon.181 = type { %struct.anon.182 }
%struct.tcf_exts = type { i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.rcu_work = type { %struct.work_struct, %struct.callback_head, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.tcf_chain = type { %struct.mutex, ptr, %struct.list_head, ptr, i32, i32, i32, i8, i8, ptr, ptr, %struct.callback_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.tcf_block = type { %struct.mutex, %struct.list_head, i32, i32, %struct.refcount_struct, ptr, ptr, %struct.rw_semaphore, %struct.flow_block, %struct.list_head, i8, %struct.atomic_t, i32, i32, %struct.anon.162, %struct.callback_head, [128 x %struct.hlist_head], %struct.mutex }
%struct.rw_semaphore = type { %struct.atomic_t, %struct.atomic_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head, ptr, %struct.lockdep_map }
%struct.flow_block = type { %struct.list_head }
%struct.anon.162 = type { ptr, %struct.list_head }
%struct.hlist_head = type { ptr }
%struct.Qdisc = type { ptr, ptr, i32, i32, ptr, ptr, %struct.hlist_node, i32, i32, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, [64 x i8], %struct.sk_buff_head, %struct.qdisc_skb_head, %struct.gnet_stats_basic_sync, %struct.gnet_stats_queue, i32, i32, ptr, %struct.sk_buff_head, [8 x i8], %struct.spinlock, %struct.spinlock, %struct.callback_head, ptr, [28 x i8], [0 x i32] }
%struct.qdisc_skb_head = type { ptr, ptr, i32, %struct.spinlock }
%struct.gnet_stats_basic_sync = type { %struct.u64_stats_t, %struct.u64_stats_t, %struct.u64_stats_sync }
%struct.gnet_stats_queue = type { i32, i32, i32, i32, i32 }
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
%struct.netdev_queue = type { ptr, ptr, ptr, ptr, %struct.kobject, i32, %struct.atomic_t, ptr, ptr, [88 x i8], %struct.spinlock, i32, i32, i32, [72 x i8], %struct.dql }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dql = type { i32, i32, i32, [116 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [88 x i8] }
%struct.Qdisc_ops = type { ptr, ptr, [16 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.Qdisc_class_ops = type { i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tcf_walker = type { i32, i32, i32, i8, i32, ptr }
%struct.tc_cls_bpf_offload = type { %struct.flow_cls_common_offload, i32, ptr, ptr, ptr, ptr, i8 }
%struct.flow_cls_common_offload = type { i32, i16, i32, ptr }
%struct.tcmsg = type { i8, i8, i16, i32, i32, i32, i32 }
%struct.bpf_prog_aux = type { %struct.atomic64_t, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, %struct.mutex, ptr, ptr, i32, i32, i8, i8, i8, i8, i8, i8, %struct.hlist_node, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, %struct.bpf_ksym, ptr, ptr, %struct.mutex, ptr, ptr, ptr, i64, i32, [2 x ptr], [16 x i8], ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, ptr, %union.anon.129 }
%struct.atomic64_t = type { i64 }
%struct.bpf_ksym = type { i32, i32, [128 x i8], %struct.list_head, %struct.latch_tree_node, i8 }
%struct.latch_tree_node = type { [2 x %struct.rb_node] }
%struct.rb_node = type { i32, ptr, ptr }
%union.anon.129 = type { %struct.work_struct }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.96, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.96 = type { %struct.hlist_head, %struct.spinlock, i32 }
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

@__UNIQUE_ID_file514 = internal constant [31 x i8] c"cls_bpf.file=net/sched/cls_bpf\00", section ".modinfo", align 1
@__UNIQUE_ID_license515 = internal constant [20 x i8] c"cls_bpf.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author516 = internal constant [53 x i8] c"cls_bpf.author=Daniel Borkmann <dborkman@redhat.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description517 = internal constant [44 x i8] c"cls_bpf.description=TC BPF based classifier\00", section ".modinfo", align 1
@cls_bpf_ops = internal global %struct.tcf_proto_ops { %struct.list_head zeroinitializer, [16 x i8] c"bpf\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cls_bpf_classify, ptr @cls_bpf_init, ptr @cls_bpf_destroy, ptr @cls_bpf_get, ptr null, ptr @cls_bpf_change, ptr @cls_bpf_delete, ptr null, ptr @cls_bpf_walk, ptr @cls_bpf_reoffload, ptr null, ptr null, ptr @cls_bpf_bind_class, ptr null, ptr null, ptr @cls_bpf_dump, ptr null, ptr null, ptr null, i32 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_cls_bpf__526_719_cls_bpf_init_mod6 = internal global ptr @cls_bpf_init_mod, section ".initcall6.init", align 4
@__exitcall_cls_bpf_exit_mod = internal global ptr @cls_bpf_exit_mod, section ".exitcall.exit", align 4
@cls_bpf_classify.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"net/sched/cls_bpf.c\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@cls_bpf_classify.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"include/linux/filter.h\00", [41 x i8] zeroinitializer }, align 32
@bpf_stats_enabled_key = external dso_local global %struct.static_key_false, align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@xa_init_flags.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xa->xa_lock\00", [19 x i8] zeroinitializer }, align 32
@cls_bpf_destroy.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.7 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"suspicious rcu_dereference_protected() usage\00", [51 x i8] zeroinitializer }, align 32
@__cls_bpf_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cls_bpf_stop_offload._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str, i32 220, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Stopping hardware offload failed: %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cls_bpf_stop_offload\00", [43 x i8] zeroinitializer }, align 32
@cls_bpf_stop_offload._entry_ptr = internal global ptr @cls_bpf_stop_offload._entry, section ".printk_index", align 4
@cls_bpf_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cls_bpf_change.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@bpf_policy = internal constant { [12 x %struct.nla_policy], [32 x i8] } { [12 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 11, i8 0, i16 -32768, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 10, i8 0, i16 256, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.27 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy zeroinitializer], [32 x i8] zeroinitializer }, align 32
@qdisc_root_sleeping_lock.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"include/net/sch_generic.h\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"RTNL: assertion failed at %s (%d)\0A\00", [61 x i8] zeroinitializer }, align 32
@cls_bpf_delete.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cls_bpf_walk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@cls_bpf_reoffload.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"include/net/netlink.h\00", [42 x i8] zeroinitializer }, align 32
@switch.table.cls_bpf_classify = internal constant { [9 x i32], [60 x i8] } { [9 x i32] [i32 0, i32 8, i32 2, i32 8, i32 4, i32 8, i32 8, i32 7, i32 8], [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967295]
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 83, i32 30 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 88, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [26 x i8] c"../include/linux/filter.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 613, i32 2 }
@___asan_gen_.26 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.26, i32 271, i32 2 }
@___asan_gen_.28 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [26 x i8] c"../include/linux/xarray.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 378, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 312, i32 30 }
@___asan_gen_.37 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 220, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant [11 x i8] c"bpf_policy\00", align 1
@___asan_gen_.47 = private constant [23 x i8] c"../net/sched/cls_bpf.c\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.47, i32 53, i32 32 }
@___asan_gen_.53 = private unnamed_addr constant [29 x i8] c"../include/net/sch_generic.h\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 596, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.56 = private unnamed_addr constant [25 x i8] c"../include/net/netlink.h\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 991, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant [30 x i8] c"switch.table.cls_bpf_classify\00", align 1
@llvm.compiler.used = appending global [24 x ptr] [ptr @__UNIQUE_ID_author516, ptr @__UNIQUE_ID_description517, ptr @__UNIQUE_ID_file514, ptr @__UNIQUE_ID_license515, ptr @__exitcall_cls_bpf_exit_mod, ptr @__initcall__kmod_cls_bpf__526_719_cls_bpf_init_mod6, ptr @cls_bpf_exit_mod, ptr @cls_bpf_stop_offload._entry, ptr @cls_bpf_stop_offload._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @xa_init_flags.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @bpf_policy, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @switch.table.cls_bpf_classify], section "llvm.metadata"
@0 = internal global [16 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xa_init_flags.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cls_bpf_stop_offload._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bpf_policy to i32), i32 96, i32 128, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cls_bpf_classify to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cls_bpf_exit_mod() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %call = tail call i32 @unregister_tcf_proto_ops(ptr noundef nonnull @cls_bpf_ops) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_tcf_proto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cls_bpf_init_mod() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @register_tcf_proto_ops(ptr noundef nonnull @cls_bpf_ops) #10
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cls_bpf_classify(ptr noundef %skb, ptr noundef %tp, ptr noundef %res) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %root, align 4
  %call = tail call i32 @rcu_read_lock_bh_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end7_crit_edge

entry.do.end7_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end7_crit_edge, label %land.lhs.true4

land.lhs.true.do.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b126 = load i1, ptr @cls_bpf_classify.__warned, align 1
  br i1 %.b126, label %land.lhs.true4.do.end7_crit_edge, label %if.then

land.lhs.true4.do.end7_crit_edge:                 ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end7

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cls_bpf_classify.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 83, ptr noundef nonnull @.str.1) #10
  br label %do.end7

do.end7:                                          ; preds = %if.then, %land.lhs.true4.do.end7_crit_edge, %land.lhs.true.do.end7_crit_edge, %entry.do.end7_crit_edge
  %tc_at_ingress.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %2 = ptrtoint ptr %tc_at_ingress.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load.i = load i32, ptr %tc_at_ingress.i, align 2
  %3 = and i32 %bf.load.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.i.not = icmp eq i32 %3, 0
  %call11 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %land.lhs.true13, label %do.end7.do.end21_crit_edge

do.end7.do.end21_crit_edge:                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

land.lhs.true13:                                  ; preds = %do.end7
  %call14 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true13.do.end21_crit_edge, label %land.lhs.true16

land.lhs.true13.do.end21_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

land.lhs.true16:                                  ; preds = %land.lhs.true13
  %.b124125 = load i1, ptr @cls_bpf_classify.__warned.2, align 1
  br i1 %.b124125, label %land.lhs.true16.do.end21_crit_edge, label %if.then18

land.lhs.true16.do.end21_crit_edge:               ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end21

if.then18:                                        ; preds = %land.lhs.true16
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cls_bpf_classify.__warned.2, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 88, ptr noundef nonnull @.str.3) #10
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %land.lhs.true16.do.end21_crit_edge, %land.lhs.true13.do.end21_crit_edge, %do.end7.do.end21_crit_edge
  %tc_classid = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %mac_len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %len1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %end.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %data_meta.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 28
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %data_end.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 32
  %classid55 = getelementptr inbounds %struct.anon.182, ptr %res, i32 0, i32 1
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn227 = load volatile ptr, ptr %1, align 4
  %cmp.not229 = icmp eq ptr %.pn227, %1
  br i1 %cmp.not229, label %do.end21.for.end_crit_edge, label %do.end21.for.body_crit_edge

do.end21.for.body_crit_edge:                      ; preds = %do.end21
  br label %for.body

do.end21.for.end_crit_edge:                       ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %do.end21.for.body_crit_edge
  %.pn231 = phi ptr [ %.pn, %cleanup.for.body_crit_edge ], [ %.pn227, %do.end21.for.body_crit_edge ]
  %ret.0230 = phi i32 [ %ret.1, %cleanup.for.body_crit_edge ], [ -1, %do.end21.for.body_crit_edge ]
  %prog.0232 = getelementptr i8, ptr %.pn231, i32 -4
  %res28 = getelementptr i8, ptr %.pn231, i32 8
  %classid = getelementptr i8, ptr %.pn231, i32 12
  %5 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %classid, align 4
  %conv = trunc i32 %6 to i16
  %7 = ptrtoint ptr %tc_classid to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %conv, ptr %tc_classid, align 2
  %gen_flags = getelementptr i8, ptr %.pn231, i32 20
  %8 = ptrtoint ptr %gen_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gen_flags, align 4
  %and.i = and i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i195.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i195.not, label %if.else, label %if.then31

if.then31:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %exts_integrated = getelementptr i8, ptr %.pn231, i32 16
  %10 = ptrtoint ptr %exts_integrated to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %exts_integrated, align 4, !range !66
  %sext = sub nsw i8 0, %11
  %cond = sext i8 %sext to i32
  br label %if.end46

if.else:                                          ; preds = %for.body
  br i1 %tobool.i.not, label %if.else42, label %if.then35

if.then35:                                        ; preds = %if.else
  %12 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %mac_len, align 4
  %conv36 = zext i16 %13 to i32
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %idx.neg.i = sub nsw i32 0, %conv36
  %add.ptr.i = getelementptr i8, ptr %15, i32 %idx.neg.i
  store ptr %add.ptr.i, ptr %data.i, align 4
  %16 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len1.i, align 4
  %add.i = add i32 %17, %conv36
  store i32 %add.i, ptr %len1.i, align 4
  %18 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %end.i.i.i, align 4
  %meta_len.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %meta_len.i.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %meta_len.i.i, align 1
  %conv.i = zext i8 %21 to i32
  %idx.neg.i197 = sub nsw i32 0, %conv.i
  %add.ptr.i198 = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i197
  %22 = ptrtoint ptr %data_meta.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i198, ptr %data_meta.i, align 4
  %23 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i199 = sub i32 %add.i, %24
  %add.ptr4.i = getelementptr i8, ptr %add.ptr.i, i32 %sub.i.i199
  %25 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %add.ptr4.i, ptr %data_end.i, align 4
  %26 = ptrtoint ptr %prog.0232 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prog.0232, align 4
  tail call void @__cant_migrate(ptr noundef nonnull @.str.4, i32 noundef 613) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@cls_bpf_classify, %if.then.i.i)) #10
          to label %if.else.i.i [label %if.then.i.i], !srcloc !67

if.then.i.i:                                      ; preds = %if.then35
  %call3.i.i = tail call i64 @sched_clock() #10
  %insnsi.i.i = getelementptr inbounds %struct.bpf_prog, ptr %27, i32 1
  %bpf_func.i.i = getelementptr inbounds %struct.bpf_prog, ptr %27, i32 0, i32 9
  %28 = ptrtoint ptr %bpf_func.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %bpf_func.i.i, align 4
  %call.i.i.i = tail call i32 %29(ptr noundef %skb, ptr noundef %insnsi.i.i) #10
  %stats9.i.i = getelementptr inbounds %struct.bpf_prog, ptr %27, i32 0, i32 7
  %30 = ptrtoint ptr %stats9.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %stats9.i.i, align 4
  %32 = ptrtoint ptr %31 to i32
  %33 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i = and i32 %33, -16384
  %34 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %36
  %37 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %38, %32
  %39 = inttoptr i32 %add.i.i to ptr
  %syncp.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %39, i32 0, i32 3
  %40 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !68
  %and.i.i.i.i = and i32 %40, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %if.then.i.i.do.body12.i.i.i_crit_edge

if.then.i.i.do.body12.i.i.i_crit_edge:            ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %do.body12.i.i.i

do.body12.i.i.i:                                  ; preds = %if.then.i.i.i, %if.then.i.i.do.body12.i.i.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %41 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool.not.i.i.i.i = icmp eq i32 %41, 0
  br i1 %tobool.not.i.i.i.i, label %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.lhs.true.i.i.i.i

do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %do.body12.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.lhs.true.i.i.i.i:                            ; preds = %do.body12.i.i.i
  %42 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i.i.i.i.i = and i32 %42, -16384
  %43 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %45, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  %46 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i.i.i = and i32 %46, -16384
  %47 = inttoptr i32 %and.i.i.i.i.i to ptr
  %cpu.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %49
  %50 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %51, ptrtoint (ptr @lockdep_recursion to i32)
  %52 = inttoptr i32 %add.i.i.i.i to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %52, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !70
  %55 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i7.i.i.i.i = and i32 %55, -16384
  %56 = inttoptr i32 %and.i.i.i7.i.i.i.i to ptr
  %preempt_count.i.i8.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %56, i32 0, i32 1
  %57 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i, align 4
  %sub.i.i.i.i.i = add i32 %58, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i8.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool20.not.i.i.i.i = icmp eq i32 %54, 0
  br i1 %tobool20.not.i.i.i.i, label %land.rhs.i.i.i.i, label %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %land.lhs.true.i.i.i.i
  %59 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i.i.i.i = and i32 %59, -16384
  %60 = inttoptr i32 %and.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %preempt_count.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile i32, ptr %preempt_count.i.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp.i.i.i.i = icmp eq i32 %62, 0
  br i1 %cmp.i.i.i.i, label %land.rhs22.i.i.i.i, label %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge

land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs22.i.i.i.i:                               ; preds = %land.rhs.i.i.i.i
  %63 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i9.i.i.i.i = and i32 %63, -16384
  %64 = inttoptr i32 %and.i.i.i9.i.i.i.i to ptr
  %preempt_count.i.i10.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i, align 4
  %add.i11.i.i.i.i = add i32 %66, 1
  store volatile i32 %add.i11.i.i.i.i, ptr %preempt_count.i.i10.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !71
  %67 = ptrtoint ptr %cpu.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cpu.i.i.i.i, align 4
  %arrayidx46.i.i.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %68
  %69 = ptrtoint ptr %arrayidx46.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %arrayidx46.i.i.i.i, align 4
  %add47.i.i.i.i = add i32 %70, ptrtoint (ptr @hardirqs_enabled to i32)
  %71 = inttoptr i32 %add47.i.i.i.i to ptr
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile i32, ptr %71, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  %74 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i12.i.i.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i12.i.i.i.i to ptr
  %preempt_count.i.i13.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i, align 4
  %sub.i14.i.i.i.i = add i32 %77, -1
  store volatile i32 %sub.i14.i.i.i.i, ptr %preempt_count.i.i13.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %73)
  %tobool54.not.i.i.i.i = icmp eq i32 %73, 0
  br i1 %tobool54.not.i.i.i.i, label %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %land.rhs58.i.i.i.i

land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs22.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

land.rhs58.i.i.i.i:                               ; preds = %land.rhs22.i.i.i.i
  %.b1.i.i.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i, label %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !73

land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge: ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs58.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %u64_stats_update_begin_irqsave.exit.i.i

u64_stats_update_begin_irqsave.exit.i.i:          ; preds = %if.then.i.i.i.i, %land.rhs58.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs22.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.rhs.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge, %do.body12.i.i.i.u64_stats_update_begin_irqsave.exit.i.i_crit_edge
  %78 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i.i = add i32 %79, 1
  store i32 %inc.i.i.i.i.i.i, ptr %syncp.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  %dep_map.i.i.i.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %39, i32 0, i32 3, i32 0, i32 1
  %80 = tail call ptr @llvm.returnaddress(i32 0) #10
  %81 = ptrtoint ptr %80 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %81) #10
  %82 = ptrtoint ptr %39 to i32
  call void @__asan_load8_noabort(i32 %82)
  %83 = load i64, ptr %39, align 8
  %inc.i.i.i = add i64 %83, 1
  store i64 %inc.i.i.i, ptr %39, align 8
  %nsecs.i.i = getelementptr inbounds %struct.bpf_prog_stats, ptr %39, i32 0, i32 1
  %call13.i.i = tail call i64 @sched_clock() #10
  %sub.i.i = sub i64 %call13.i.i, %call3.i.i
  %conv.i.i.i = and i64 %sub.i.i, 4294967295
  %84 = ptrtoint ptr %nsecs.i.i to i32
  call void @__asan_load8_noabort(i32 %84)
  %85 = load i64, ptr %nsecs.i.i, align 8
  %add.i.i.i = add i64 %conv.i.i.i, %85
  store i64 %add.i.i.i, ptr %nsecs.i.i, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i, i32 noundef %81) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !75
  %86 = ptrtoint ptr %syncp.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %syncp.i.i, align 4
  %inc.i.i.i.i.i = add i32 %87, 1
  store i32 %inc.i.i.i.i.i, ptr %syncp.i.i, align 4
  br i1 %tobool.not.i.i.i, label %if.then8.i.i.i, label %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge

u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i.i.i

if.then8.i.i.i:                                   ; preds = %u64_stats_update_begin_irqsave.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_on() #10
  br label %do.body10.i.i.i

do.body10.i.i.i:                                  ; preds = %if.then8.i.i.i, %u64_stats_update_begin_irqsave.exit.i.i.do.body10.i.i.i_crit_edge
  %88 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !76
  %and.i.i.i4.i.i = and i32 %88, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i)
  %tobool18.not.i.i.i = icmp eq i32 %and.i.i.i4.i.i, 0
  br i1 %tobool18.not.i.i.i, label %if.then22.i.i.i, label %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge, !prof !77

do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge: ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_end_irqrestore.exit.i.i

if.then22.i.i.i:                                  ; preds = %do.body10.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %u64_stats_update_end_irqrestore.exit.i.i

u64_stats_update_end_irqrestore.exit.i.i:         ; preds = %if.then22.i.i.i, %do.body10.i.i.i.u64_stats_update_end_irqrestore.exit.i.i_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %40) #10, !srcloc !78
  br label %bpf_prog_run.exit

if.else.i.i:                                      ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %insnsi15.i.i = getelementptr inbounds %struct.bpf_prog, ptr %27, i32 1
  %bpf_func17.i.i = getelementptr inbounds %struct.bpf_prog, ptr %27, i32 0, i32 9
  %89 = ptrtoint ptr %bpf_func17.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %bpf_func17.i.i, align 4
  %call.i1.i.i = tail call i32 %90(ptr noundef %skb, ptr noundef %insnsi15.i.i) #10
  br label %bpf_prog_run.exit

bpf_prog_run.exit:                                ; preds = %if.else.i.i, %u64_stats_update_end_irqrestore.exit.i.i
  %ret.0.i.i = phi i32 [ %call.i.i.i, %u64_stats_update_end_irqrestore.exit.i.i ], [ %call.i1.i.i, %if.else.i.i ]
  %91 = ptrtoint ptr %mac_len to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %mac_len, align 4
  %conv40 = zext i16 %92 to i32
  %93 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %len1.i, align 4
  %sub.i = sub i32 %94, %conv40
  store i32 %sub.i, ptr %len1.i, align 4
  %95 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %data_len.i.i, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %96)
  %cmp.i = icmp ult i32 %sub.i, %96
  br i1 %cmp.i, label %do.body4.i, label %__skb_pull.exit, !prof !77

do.body4.i:                                       ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/skbuff.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 2398, 0\0A.popsection", ""() #10, !srcloc !79
  unreachable

__skb_pull.exit:                                  ; preds = %bpf_prog_run.exit
  call void @__sanitizer_cov_trace_pc() #12
  %97 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %data.i, align 4
  %add.ptr.i202 = getelementptr i8, ptr %98, i32 %conv40
  store ptr %add.ptr.i202, ptr %data.i, align 4
  br label %if.end46

if.else42:                                        ; preds = %if.else
  %99 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %data.i, align 4
  %101 = ptrtoint ptr %end.i.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %end.i.i.i, align 4
  %meta_len.i.i205 = getelementptr inbounds %struct.skb_shared_info, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %meta_len.i.i205 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %meta_len.i.i205, align 1
  %conv.i206 = zext i8 %104 to i32
  %idx.neg.i207 = sub nsw i32 0, %conv.i206
  %add.ptr.i208 = getelementptr i8, ptr %100, i32 %idx.neg.i207
  %105 = ptrtoint ptr %data_meta.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %add.ptr.i208, ptr %data_meta.i, align 4
  %106 = ptrtoint ptr %len1.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %len1.i, align 4
  %108 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i212 = sub i32 %107, %109
  %add.ptr4.i213 = getelementptr i8, ptr %100, i32 %sub.i.i212
  %110 = ptrtoint ptr %data_end.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %add.ptr4.i213, ptr %data_end.i, align 4
  %111 = ptrtoint ptr %prog.0232 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %prog.0232, align 4
  tail call void @__cant_migrate(ptr noundef nonnull @.str.4, i32 noundef 613) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @bpf_stats_enabled_key, ptr blockaddress(@cls_bpf_classify, %if.then.i.i140)) #10
          to label %if.else.i.i192 [label %if.then.i.i140], !srcloc !67

if.then.i.i140:                                   ; preds = %if.else42
  %call3.i.i128 = tail call i64 @sched_clock() #10
  %insnsi.i.i129 = getelementptr inbounds %struct.bpf_prog, ptr %112, i32 1
  %bpf_func.i.i130 = getelementptr inbounds %struct.bpf_prog, ptr %112, i32 0, i32 9
  %113 = ptrtoint ptr %bpf_func.i.i130 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %bpf_func.i.i130, align 4
  %call.i.i.i131 = tail call i32 %114(ptr noundef %skb, ptr noundef %insnsi.i.i129) #10
  %stats9.i.i132 = getelementptr inbounds %struct.bpf_prog, ptr %112, i32 0, i32 7
  %115 = ptrtoint ptr %stats9.i.i132 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %stats9.i.i132, align 4
  %117 = ptrtoint ptr %116 to i32
  %118 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i133 = and i32 %118, -16384
  %119 = inttoptr i32 %and.i.i.i133 to ptr
  %cpu.i.i134 = getelementptr inbounds %struct.thread_info, ptr %119, i32 0, i32 3
  %120 = ptrtoint ptr %cpu.i.i134 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %cpu.i.i134, align 4
  %arrayidx.i.i135 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %121
  %122 = ptrtoint ptr %arrayidx.i.i135 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %arrayidx.i.i135, align 4
  %add.i.i136 = add i32 %123, %117
  %124 = inttoptr i32 %add.i.i136 to ptr
  %syncp.i.i137 = getelementptr inbounds %struct.bpf_prog_stats, ptr %124, i32 0, i32 3
  %125 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #10, !srcloc !68
  %and.i.i.i.i138 = and i32 %125, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i.i138)
  %tobool.not.i.i.i139 = icmp eq i32 %and.i.i.i.i138, 0
  br i1 %tobool.not.i.i.i139, label %if.then.i.i.i141, label %if.then.i.i140.do.body12.i.i.i143_crit_edge

if.then.i.i140.do.body12.i.i.i143_crit_edge:      ; preds = %if.then.i.i140
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body12.i.i.i143

if.then.i.i.i141:                                 ; preds = %if.then.i.i140
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_off() #10
  br label %do.body12.i.i.i143

do.body12.i.i.i143:                               ; preds = %if.then.i.i.i141, %if.then.i.i140.do.body12.i.i.i143_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %126 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.not.i.i.i.i142 = icmp eq i32 %126, 0
  br i1 %tobool.not.i.i.i.i142, label %do.body12.i.i.i143.u64_stats_update_begin_irqsave.exit.i.i182_crit_edge, label %land.lhs.true.i.i.i.i155

do.body12.i.i.i143.u64_stats_update_begin_irqsave.exit.i.i182_crit_edge: ; preds = %do.body12.i.i.i143
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i182

land.lhs.true.i.i.i.i155:                         ; preds = %do.body12.i.i.i143
  %127 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i.i.i.i.i144 = and i32 %127, -16384
  %128 = inttoptr i32 %and.i.i.i.i.i.i.i144 to ptr
  %preempt_count.i.i.i.i.i.i145 = getelementptr inbounds %struct.thread_info, ptr %128, i32 0, i32 1
  %129 = ptrtoint ptr %preempt_count.i.i.i.i.i.i145 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i145, align 4
  %add.i.i.i.i.i146 = add i32 %130, 1
  store volatile i32 %add.i.i.i.i.i146, ptr %preempt_count.i.i.i.i.i.i145, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !69
  %131 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i.i.i147 = and i32 %131, -16384
  %132 = inttoptr i32 %and.i.i.i.i.i147 to ptr
  %cpu.i.i.i.i148 = getelementptr inbounds %struct.thread_info, ptr %132, i32 0, i32 3
  %133 = ptrtoint ptr %cpu.i.i.i.i148 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %cpu.i.i.i.i148, align 4
  %arrayidx.i.i.i.i149 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %134
  %135 = ptrtoint ptr %arrayidx.i.i.i.i149 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %arrayidx.i.i.i.i149, align 4
  %add.i.i.i.i150 = add i32 %136, ptrtoint (ptr @lockdep_recursion to i32)
  %137 = inttoptr i32 %add.i.i.i.i150 to ptr
  %138 = ptrtoint ptr %137 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load volatile i32, ptr %137, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !70
  %140 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i7.i.i.i.i151 = and i32 %140, -16384
  %141 = inttoptr i32 %and.i.i.i7.i.i.i.i151 to ptr
  %preempt_count.i.i8.i.i.i.i152 = getelementptr inbounds %struct.thread_info, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %preempt_count.i.i8.i.i.i.i152 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load volatile i32, ptr %preempt_count.i.i8.i.i.i.i152, align 4
  %sub.i.i.i.i.i153 = add i32 %143, -1
  store volatile i32 %sub.i.i.i.i.i153, ptr %preempt_count.i.i8.i.i.i.i152, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool20.not.i.i.i.i154 = icmp eq i32 %139, 0
  br i1 %tobool20.not.i.i.i.i154, label %land.rhs.i.i.i.i159, label %land.lhs.true.i.i.i.i155.u64_stats_update_begin_irqsave.exit.i.i182_crit_edge

land.lhs.true.i.i.i.i155.u64_stats_update_begin_irqsave.exit.i.i182_crit_edge: ; preds = %land.lhs.true.i.i.i.i155
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i182

land.rhs.i.i.i.i159:                              ; preds = %land.lhs.true.i.i.i.i155
  %144 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i.i.i.i156 = and i32 %144, -16384
  %145 = inttoptr i32 %and.i.i.i.i.i.i156 to ptr
  %preempt_count.i.i.i.i.i157 = getelementptr inbounds %struct.thread_info, ptr %145, i32 0, i32 1
  %146 = ptrtoint ptr %preempt_count.i.i.i.i.i157 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load volatile i32, ptr %preempt_count.i.i.i.i.i157, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %147)
  %cmp.i.i.i.i158 = icmp eq i32 %147, 0
  br i1 %cmp.i.i.i.i158, label %land.rhs22.i.i.i.i169, label %land.rhs.i.i.i.i159.u64_stats_update_begin_irqsave.exit.i.i182_crit_edge

land.rhs.i.i.i.i159.u64_stats_update_begin_irqsave.exit.i.i182_crit_edge: ; preds = %land.rhs.i.i.i.i159
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i182

land.rhs22.i.i.i.i169:                            ; preds = %land.rhs.i.i.i.i159
  %148 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i9.i.i.i.i160 = and i32 %148, -16384
  %149 = inttoptr i32 %and.i.i.i9.i.i.i.i160 to ptr
  %preempt_count.i.i10.i.i.i.i161 = getelementptr inbounds %struct.thread_info, ptr %149, i32 0, i32 1
  %150 = ptrtoint ptr %preempt_count.i.i10.i.i.i.i161 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load volatile i32, ptr %preempt_count.i.i10.i.i.i.i161, align 4
  %add.i11.i.i.i.i162 = add i32 %151, 1
  store volatile i32 %add.i11.i.i.i.i162, ptr %preempt_count.i.i10.i.i.i.i161, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !71
  %152 = ptrtoint ptr %cpu.i.i.i.i148 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %cpu.i.i.i.i148, align 4
  %arrayidx46.i.i.i.i163 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %153
  %154 = ptrtoint ptr %arrayidx46.i.i.i.i163 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx46.i.i.i.i163, align 4
  %add47.i.i.i.i164 = add i32 %155, ptrtoint (ptr @hardirqs_enabled to i32)
  %156 = inttoptr i32 %add47.i.i.i.i164 to ptr
  %157 = ptrtoint ptr %156 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load volatile i32, ptr %156, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !72
  %159 = tail call i32 @llvm.read_register.i32(metadata !56) #10
  %and.i.i.i12.i.i.i.i165 = and i32 %159, -16384
  %160 = inttoptr i32 %and.i.i.i12.i.i.i.i165 to ptr
  %preempt_count.i.i13.i.i.i.i166 = getelementptr inbounds %struct.thread_info, ptr %160, i32 0, i32 1
  %161 = ptrtoint ptr %preempt_count.i.i13.i.i.i.i166 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load volatile i32, ptr %preempt_count.i.i13.i.i.i.i166, align 4
  %sub.i14.i.i.i.i167 = add i32 %162, -1
  store volatile i32 %sub.i14.i.i.i.i167, ptr %preempt_count.i.i13.i.i.i.i166, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %158)
  %tobool54.not.i.i.i.i168 = icmp eq i32 %158, 0
  br i1 %tobool54.not.i.i.i.i168, label %land.rhs22.i.i.i.i169.u64_stats_update_begin_irqsave.exit.i.i182_crit_edge, label %land.rhs58.i.i.i.i171

land.rhs22.i.i.i.i169.u64_stats_update_begin_irqsave.exit.i.i182_crit_edge: ; preds = %land.rhs22.i.i.i.i169
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i182

land.rhs58.i.i.i.i171:                            ; preds = %land.rhs22.i.i.i.i169
  %.b1.i.i.i.i170 = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i.i.i170, label %land.rhs58.i.i.i.i171.u64_stats_update_begin_irqsave.exit.i.i182_crit_edge, label %if.then.i.i.i.i172, !prof !73

land.rhs58.i.i.i.i171.u64_stats_update_begin_irqsave.exit.i.i182_crit_edge: ; preds = %land.rhs58.i.i.i.i171
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_begin_irqsave.exit.i.i182

if.then.i.i.i.i172:                               ; preds = %land.rhs58.i.i.i.i171
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.5, i32 noundef 271, i32 noundef 9, ptr noundef null) #10
  br label %u64_stats_update_begin_irqsave.exit.i.i182

u64_stats_update_begin_irqsave.exit.i.i182:       ; preds = %if.then.i.i.i.i172, %land.rhs58.i.i.i.i171.u64_stats_update_begin_irqsave.exit.i.i182_crit_edge, %land.rhs22.i.i.i.i169.u64_stats_update_begin_irqsave.exit.i.i182_crit_edge, %land.rhs.i.i.i.i159.u64_stats_update_begin_irqsave.exit.i.i182_crit_edge, %land.lhs.true.i.i.i.i155.u64_stats_update_begin_irqsave.exit.i.i182_crit_edge, %do.body12.i.i.i143.u64_stats_update_begin_irqsave.exit.i.i182_crit_edge
  %163 = ptrtoint ptr %syncp.i.i137 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %syncp.i.i137, align 4
  %inc.i.i.i.i.i.i173 = add i32 %164, 1
  store i32 %inc.i.i.i.i.i.i173, ptr %syncp.i.i137, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !74
  %dep_map.i.i.i.i.i174 = getelementptr inbounds %struct.bpf_prog_stats, ptr %124, i32 0, i32 3, i32 0, i32 1
  %165 = tail call ptr @llvm.returnaddress(i32 0) #10
  %166 = ptrtoint ptr %165 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i.i.i174, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %166) #10
  %167 = ptrtoint ptr %124 to i32
  call void @__asan_load8_noabort(i32 %167)
  %168 = load i64, ptr %124, align 8
  %inc.i.i.i175 = add i64 %168, 1
  store i64 %inc.i.i.i175, ptr %124, align 8
  %nsecs.i.i176 = getelementptr inbounds %struct.bpf_prog_stats, ptr %124, i32 0, i32 1
  %call13.i.i177 = tail call i64 @sched_clock() #10
  %sub.i.i178 = sub i64 %call13.i.i177, %call3.i.i128
  %conv.i.i.i179 = and i64 %sub.i.i178, 4294967295
  %169 = ptrtoint ptr %nsecs.i.i176 to i32
  call void @__asan_load8_noabort(i32 %169)
  %170 = load i64, ptr %nsecs.i.i176, align 8
  %add.i.i.i180 = add i64 %conv.i.i.i179, %170
  store i64 %add.i.i.i180, ptr %nsecs.i.i176, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i.i.i174, i32 noundef %166) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !75
  %171 = ptrtoint ptr %syncp.i.i137 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %syncp.i.i137, align 4
  %inc.i.i.i.i.i181 = add i32 %172, 1
  store i32 %inc.i.i.i.i.i181, ptr %syncp.i.i137, align 4
  br i1 %tobool.not.i.i.i139, label %if.then8.i.i.i183, label %u64_stats_update_begin_irqsave.exit.i.i182.do.body10.i.i.i186_crit_edge

u64_stats_update_begin_irqsave.exit.i.i182.do.body10.i.i.i186_crit_edge: ; preds = %u64_stats_update_begin_irqsave.exit.i.i182
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body10.i.i.i186

if.then8.i.i.i183:                                ; preds = %u64_stats_update_begin_irqsave.exit.i.i182
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @trace_hardirqs_on() #10
  br label %do.body10.i.i.i186

do.body10.i.i.i186:                               ; preds = %if.then8.i.i.i183, %u64_stats_update_begin_irqsave.exit.i.i182.do.body10.i.i.i186_crit_edge
  %173 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #10, !srcloc !76
  %and.i.i.i4.i.i184 = and i32 %173, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i4.i.i184)
  %tobool18.not.i.i.i185 = icmp eq i32 %and.i.i.i4.i.i184, 0
  br i1 %tobool18.not.i.i.i185, label %if.then22.i.i.i187, label %do.body10.i.i.i186.u64_stats_update_end_irqrestore.exit.i.i188_crit_edge, !prof !77

do.body10.i.i.i186.u64_stats_update_end_irqrestore.exit.i.i188_crit_edge: ; preds = %do.body10.i.i.i186
  call void @__sanitizer_cov_trace_pc() #12
  br label %u64_stats_update_end_irqrestore.exit.i.i188

if.then22.i.i.i187:                               ; preds = %do.body10.i.i.i186
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @warn_bogus_irq_restore() #10
  br label %u64_stats_update_end_irqrestore.exit.i.i188

u64_stats_update_end_irqrestore.exit.i.i188:      ; preds = %if.then22.i.i.i187, %do.body10.i.i.i186.u64_stats_update_end_irqrestore.exit.i.i188_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %125) #10, !srcloc !78
  br label %if.end46

if.else.i.i192:                                   ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #12
  %insnsi15.i.i189 = getelementptr inbounds %struct.bpf_prog, ptr %112, i32 1
  %bpf_func17.i.i190 = getelementptr inbounds %struct.bpf_prog, ptr %112, i32 0, i32 9
  %174 = ptrtoint ptr %bpf_func17.i.i190 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load ptr, ptr %bpf_func17.i.i190, align 4
  %call.i1.i.i191 = tail call i32 %175(ptr noundef %skb, ptr noundef %insnsi15.i.i189) #10
  br label %if.end46

if.end46:                                         ; preds = %if.else.i.i192, %u64_stats_update_end_irqrestore.exit.i.i188, %__skb_pull.exit, %if.then31
  %filter_res.0 = phi i32 [ %cond, %if.then31 ], [ %ret.0.i.i, %__skb_pull.exit ], [ %call.i.i.i131, %u64_stats_update_end_irqrestore.exit.i.i188 ], [ %call.i1.i.i191, %if.else.i.i192 ]
  %exts_integrated47 = getelementptr i8, ptr %.pn231, i32 16
  %176 = ptrtoint ptr %exts_integrated47 to i32
  call void @__asan_load1_noabort(i32 %176)
  %177 = load i8, ptr %exts_integrated47, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %177)
  %tobool48.not = icmp eq i8 %177, 0
  br i1 %tobool48.not, label %if.end61, label %if.then49

if.then49:                                        ; preds = %if.end46
  %178 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 0, ptr %res, align 4
  %179 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %classid, align 4
  %and = and i32 %180, -65536
  %181 = ptrtoint ptr %tc_classid to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %tc_classid, align 2
  %conv54 = zext i16 %182 to i32
  %or = or i32 %and, %conv54
  %183 = ptrtoint ptr %classid55 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %or, ptr %classid55, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %filter_res.0)
  %184 = icmp ult i32 %filter_res.0, 9
  br i1 %184, label %switch.hole_check, label %if.then49.cleanup_crit_edge

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end61:                                         ; preds = %if.end46
  %185 = zext i32 %filter_res.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %185, ptr @__sancov_gen_cov_switch_values)
  switch i32 %filter_res.0, label %if.then68 [
    i32 0, label %if.end61.cleanup_crit_edge
    i32 -1, label %if.else71
  ]

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then68:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %186 = ptrtoint ptr %res to i32
  call void @__asan_store4_noabort(i32 %186)
  store i32 0, ptr %res, align 4
  %187 = ptrtoint ptr %classid55 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 %filter_res.0, ptr %classid55, align 4
  br label %if.end73

if.else71:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %188 = ptrtoint ptr %res28 to i32
  call void @__asan_loadN_noabort(i32 %188, i32 8)
  %189 = load i64, ptr %res28, align 4
  %190 = ptrtoint ptr %res to i32
  call void @__asan_storeN_noabort(i32 %190, i32 8)
  store i64 %189, ptr %res, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.else71, %if.then68
  %actions.i = getelementptr i8, ptr %.pn231, i32 36
  %191 = ptrtoint ptr %actions.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %actions.i, align 4
  %nr_actions.i = getelementptr i8, ptr %.pn231, i32 32
  %193 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %nr_actions.i, align 4
  %call.i = tail call i32 @tcf_action_exec(ptr noundef %skb, ptr noundef %192, i32 noundef %194, ptr noundef %res) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp75 = icmp slt i32 %call.i, 0
  br i1 %cmp75, label %if.end73.cleanup_crit_edge, label %if.end73.for.end_crit_edge

if.end73.for.end_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end73.cleanup_crit_edge:                       ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %switch.hole_check.cleanup_crit_edge, %if.end73.cleanup_crit_edge, %if.end61.cleanup_crit_edge, %if.then49.cleanup_crit_edge
  %ret.1 = phi i32 [ %ret.0230, %if.end61.cleanup_crit_edge ], [ -1, %if.then49.cleanup_crit_edge ], [ %call.i, %if.end73.cleanup_crit_edge ], [ -1, %switch.hole_check.cleanup_crit_edge ]
  %195 = ptrtoint ptr %.pn231 to i32
  call void @__asan_load4_noabort(i32 %195)
  %.pn = load volatile ptr, ptr %.pn231, align 4
  %cmp.not = icmp eq ptr %.pn, %1
  br i1 %cmp.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

switch.hole_check:                                ; preds = %if.then49
  %switch.maskindex = trunc i32 %filter_res.0 to i16
  %switch.shifted = lshr i16 405, %switch.maskindex
  %196 = and i16 %switch.shifted, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %196)
  %switch.lobit.not = icmp eq i16 %196, 0
  br i1 %switch.lobit.not, label %switch.hole_check.cleanup_crit_edge, label %switch.lookup

switch.hole_check.cleanup_crit_edge:              ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

switch.lookup:                                    ; preds = %switch.hole_check
  call void @__sanitizer_cov_trace_pc() #12
  %switch.gep = getelementptr inbounds [9 x i32], ptr @switch.table.cls_bpf_classify, i32 0, i32 %filter_res.0
  %197 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %197)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %for.end

for.end:                                          ; preds = %switch.lookup, %cleanup.for.end_crit_edge, %if.end73.for.end_crit_edge, %do.end21.for.end_crit_edge
  %ret.2 = phi i32 [ -1, %do.end21.for.end_crit_edge ], [ %switch.load, %switch.lookup ], [ %ret.1, %cleanup.for.end_crit_edge ], [ %call.i, %if.end73.for.end_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cls_bpf_init(ptr noundef %tp) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 76) #13
  %cmp = icmp eq ptr %call7.i.i, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %1 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %call7.i.i, ptr %prev.i, align 4
  %handle_idr = getelementptr inbounds %struct.cls_bpf_head, ptr %call7.i.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %handle_idr, ptr noundef nonnull @.str.6, ptr noundef nonnull @xa_init_flags.__key, i16 noundef signext 3) #10
  %xa_flags.i.i.i = getelementptr inbounds %struct.cls_bpf_head, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 1
  %3 = ptrtoint ptr %xa_flags.i.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 67108868, ptr %xa_flags.i.i.i, align 4
  %xa_head.i.i.i = getelementptr inbounds %struct.cls_bpf_head, ptr %call7.i.i, i32 0, i32 1, i32 0, i32 2
  %4 = ptrtoint ptr %xa_head.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %xa_head.i.i.i, align 8
  %idr_base.i.i = getelementptr inbounds %struct.cls_bpf_head, ptr %call7.i.i, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %idr_base.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %idr_base.i.i, align 4
  %idr_next.i.i = getelementptr inbounds %struct.cls_bpf_head, ptr %call7.i.i, i32 0, i32 1, i32 2
  %6 = ptrtoint ptr %idr_next.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %idr_next.i.i, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !80
  %root23 = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %7 = ptrtoint ptr %root23 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i.i, ptr %root23, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -105, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cls_bpf_destroy(ptr noundef %tp, i1 noundef zeroext %rtnl_held, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b34 = load i1, ptr @cls_bpf_destroy.__warned, align 1
  br i1 %.b34, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cls_bpf_destroy.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 312, ptr noundef nonnull @.str.7) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.not36 = icmp eq ptr %3, %1
  br i1 %cmp.not36, label %do.end.for.end_crit_edge, label %do.end.for.body_crit_edge

do.end.for.body_crit_edge:                        ; preds = %do.end
  br label %for.body

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %do.end.for.body_crit_edge
  %.pn.in37 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %3, %do.end.for.body_crit_edge ]
  %prog.0 = getelementptr i8, ptr %.pn.in37, i32 -4
  %4 = ptrtoint ptr %.pn.in37 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn = load ptr, ptr %.pn.in37, align 4
  tail call fastcc void @__cls_bpf_delete(ptr noundef %tp, ptr noundef %prog.0, ptr noundef %extack)
  %cmp.not = icmp eq ptr %.pn, %1
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %do.end.for.end_crit_edge
  %handle_idr = getelementptr inbounds %struct.cls_bpf_head, ptr %1, i32 0, i32 1
  tail call void @idr_destroy(ptr noundef %handle_idr) #10
  %tobool18.not = icmp eq ptr %1, null
  br i1 %tobool18.not, label %for.end.if.end23_crit_edge, label %do.end22

for.end.if.end23_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end23

do.end22:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %rcu = getelementptr inbounds %struct.cls_bpf_head, ptr %1, i32 0, i32 2
  tail call void @kvfree_call_rcu(ptr noundef %rcu, ptr noundef nonnull inttoptr (i32 68 to ptr)) #10
  br label %if.end23

if.end23:                                         ; preds = %do.end22, %for.end.if.end23_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cls_bpf_get(ptr nocapture noundef readonly %tp, i32 noundef %handle) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b20 = load i1, ptr @cls_bpf_get.__warned, align 1
  br i1 %.b20, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cls_bpf_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 324, ptr noundef nonnull @.str.7) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %do.end
  %.pn.in = phi ptr [ %1, %do.end ], [ %.pn, %for.body.for.cond_crit_edge ]
  %2 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in, align 4
  %cmp.not = icmp eq ptr %.pn, %1
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %handle6 = getelementptr i8, ptr %.pn, i32 56
  %3 = ptrtoint ptr %handle6 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %handle6, align 4
  %cmp7 = icmp eq i32 %4, %handle
  br i1 %cmp7, label %cleanup.split.loop.exit21, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

cleanup.split.loop.exit21:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prog.0.le = getelementptr i8, ptr %.pn, i32 -4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.split.loop.exit21, %for.cond.cleanup_crit_edge
  %retval.0 = phi ptr [ %prog.0.le, %cleanup.split.loop.exit21 ], [ null, %for.cond.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cls_bpf_change(ptr noundef %net, ptr nocapture noundef readnone %in_skb, ptr noundef %tp, i32 noundef %base, i32 noundef %handle, ptr nocapture noundef readonly %tca, ptr nocapture noundef %arg, i32 noundef %flags, ptr noundef %extack) #2 align 64 {
entry:
  %fprog_tmp.i.i = alloca %struct.sock_fprog_kern, align 8
  %fp.i.i = alloca ptr, align 4
  %handle.addr = alloca i32, align 4
  %tb = alloca [12 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %handle.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %handle, ptr %handle.addr, align 4
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b123 = load i1, ptr @cls_bpf_change.__warned, align 1
  br i1 %.b123, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cls_bpf_change.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 461, ptr noundef nonnull @.str.7) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %1 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %root, align 4
  %3 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arg, align 4
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %tb) #10
  %5 = call ptr @memset(ptr %tb, i32 255, i32 48)
  %arrayidx = getelementptr ptr, ptr %tca, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %7, null
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end5

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %do.end
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %7, align 2
  %conv.i.i = zext i16 %9 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %call2.i = call i32 @__nla_parse(ptr noundef nonnull %tb, i32 noundef 11, ptr noundef %add.ptr.i.i, i32 noundef %sub.i.i, ptr noundef nonnull @bpf_policy, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp8 = icmp slt i32 %call2.i, 0
  br i1 %cmp8, label %if.end5.cleanup_crit_edge, label %if.end10

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end10:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 136) #13
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %exts = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 6
  %11 = ptrtoint ptr %exts to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %exts, align 8
  %nr_actions.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 6, i32 1
  %12 = ptrtoint ptr %nr_actions.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %nr_actions.i, align 4
  %net1.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 6, i32 3
  %13 = ptrtoint ptr %net1.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %net, ptr %net1.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %14 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %14, i32 noundef 3520, i32 noundef 128) #13
  %actions.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 6, i32 2
  %15 = ptrtoint ptr %actions.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call7.i.i.i.i, ptr %actions.i, align 8
  %tobool.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool.not.i, label %if.end14.errout_crit_edge, label %if.end18

if.end14.errout_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout

if.end18:                                         ; preds = %if.end14
  %action3.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 6, i32 5
  %16 = ptrtoint ptr %action3.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %action3.i, align 4
  %police4.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 6, i32 6
  %17 = ptrtoint ptr %police4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 2, ptr %police4.i, align 8
  %tobool19.not = icmp eq ptr %4, null
  %18 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load i32, ptr %handle.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp28 = icmp eq i32 %.pr, 0
  br i1 %tobool19.not, label %if.end27, label %if.then20

if.then20:                                        ; preds = %if.end18
  br i1 %cmp28, label %if.then20.if.then29_crit_edge, label %land.lhs.true22

if.then20.if.then29_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

land.lhs.true22:                                  ; preds = %if.then20
  %handle23 = getelementptr inbounds %struct.cls_bpf_prog, ptr %4, i32 0, i32 7
  %19 = ptrtoint ptr %handle23 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %handle23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %.pr)
  %cmp24.not = icmp eq i32 %20, %.pr
  br i1 %cmp24.not, label %if.end27.thread133, label %land.lhs.true22.errout_crit_edge

land.lhs.true22.errout_crit_edge:                 ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout

if.end27:                                         ; preds = %if.end18
  br i1 %cmp28, label %if.end27.if.then29_crit_edge, label %if.end27.if.end36_crit_edge

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36

if.end27.if.then29_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.end27.thread133:                               ; preds = %land.lhs.true22
  %21 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %.pr134 = load i32, ptr %handle.addr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr134)
  %cmp28135 = icmp eq i32 %.pr134, 0
  br i1 %cmp28135, label %if.end27.thread133.if.then29_crit_edge, label %if.end27.thread133.if.end39_crit_edge

if.end27.thread133.if.end39_crit_edge:            ; preds = %if.end27.thread133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end27.thread133.if.then29_crit_edge:           ; preds = %if.end27.thread133
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then29

if.then29:                                        ; preds = %if.end27.thread133.if.then29_crit_edge, %if.end27.if.then29_crit_edge, %if.then20.if.then29_crit_edge
  %22 = ptrtoint ptr %handle.addr to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %handle.addr, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then29, %if.end27.if.end36_crit_edge
  %.pr.sink = phi i32 [ 2147483647, %if.then29 ], [ %.pr, %if.end27.if.end36_crit_edge ]
  %handle_idr33 = getelementptr inbounds %struct.cls_bpf_head, ptr %2, i32 0, i32 1
  %call34 = call i32 @idr_alloc_u32(ptr noundef %handle_idr33, ptr noundef nonnull %call7.i.i, ptr noundef nonnull %handle.addr, i32 noundef %.pr.sink, i32 noundef 3264) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool37.not = icmp eq i32 %call34, 0
  br i1 %tobool37.not, label %if.end36.if.end39_crit_edge, label %if.end36.errout_crit_edge

if.end36.errout_crit_edge:                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout

if.end36.if.end39_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end39

if.end39:                                         ; preds = %if.end36.if.end39_crit_edge, %if.end27.thread133.if.end39_crit_edge
  %23 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %handle.addr, align 4
  %handle40 = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 7
  %25 = ptrtoint ptr %handle40 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %handle40, align 4
  %arrayidx42 = getelementptr ptr, ptr %tca, i32 5
  %26 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx42, align 4
  %arrayidx.i = getelementptr inbounds ptr, ptr %tb, i32 4
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i124 = icmp eq ptr %29, null
  br i1 %tobool.not.i124, label %if.end39.land.end.i_crit_edge, label %land.rhs.i

if.end39.land.end.i_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end.i

land.rhs.i:                                       ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx1.i = getelementptr inbounds ptr, ptr %tb, i32 5
  %30 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx1.i, align 4
  %tobool2.i = icmp ne ptr %31, null
  br label %land.end.i

land.end.i:                                       ; preds = %land.rhs.i, %if.end39.land.end.i_crit_edge
  %32 = phi i1 [ false, %if.end39.land.end.i_crit_edge ], [ %tobool2.i, %land.rhs.i ]
  %arrayidx3.i = getelementptr inbounds ptr, ptr %tb, i32 6
  %33 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx3.i, align 4
  %tobool4.not.i = icmp eq ptr %34, null
  %tobool4.not.not.i = xor i1 %tobool4.not.i, true
  %brmerge.i = select i1 %32, i1 true, i1 %tobool4.not.not.i
  %.not.i = xor i1 %32, true
  %brmerge90.i = select i1 %.not.i, i1 true, i1 %tobool4.not.i
  %or.cond.i = select i1 %brmerge.i, i1 %brmerge90.i, i1 false
  br i1 %or.cond.i, label %if.end.i125, label %land.end.i.errout_idr_crit_edge

land.end.i.errout_idr_crit_edge:                  ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout_idr

if.end.i125:                                      ; preds = %land.end.i
  %call.i = call i32 @tcf_exts_validate(ptr noundef %net, ptr noundef %tp, ptr noundef nonnull %tb, ptr noundef %27, ptr noundef %exts, i32 noundef %flags, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end.i125.errout_idr_crit_edge, label %if.end12.i

if.end.i125.errout_idr_crit_edge:                 ; preds = %if.end.i125
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout_idr

if.end12.i:                                       ; preds = %if.end.i125
  %arrayidx13.i = getelementptr inbounds ptr, ptr %tb, i32 8
  %35 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx13.i, align 4
  %tobool14.not.i = icmp eq ptr %36, null
  br i1 %tobool14.not.i, label %if.end12.i.if.end24.i_crit_edge, label %if.then15.i

if.end12.i.if.end24.i_crit_edge:                  ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.then15.i:                                      ; preds = %if.end12.i
  %add.ptr.i.i.i = getelementptr i8, ptr %36, i32 4
  %37 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %tobool18.not.i = icmp ult i32 %38, 2
  %and21.i = and i32 %38, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21.i)
  %tobool22.i = icmp ne i32 %and21.i, 0
  br i1 %tobool18.not.i, label %if.then15.i.if.end24.i_crit_edge, label %if.then15.i.errout_idr_crit_edge

if.then15.i.errout_idr_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout_idr

if.then15.i.if.end24.i_crit_edge:                 ; preds = %if.then15.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.then15.i.if.end24.i_crit_edge, %if.end12.i.if.end24.i_crit_edge
  %have_exts.1.off0.i = phi i1 [ %tobool22.i, %if.then15.i.if.end24.i_crit_edge ], [ false, %if.end12.i.if.end24.i_crit_edge ]
  %arrayidx25.i = getelementptr inbounds ptr, ptr %tb, i32 9
  %39 = ptrtoint ptr %arrayidx25.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx25.i, align 4
  %tobool26.not.i = icmp eq ptr %40, null
  br i1 %tobool26.not.i, label %if.end24.i.if.end36.i_crit_edge, label %if.then27.i

if.end24.i.if.end36.i_crit_edge:                  ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.then27.i:                                      ; preds = %if.end24.i
  %add.ptr.i.i91.i = getelementptr i8, ptr %40, i32 4
  %41 = ptrtoint ptr %add.ptr.i.i91.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %add.ptr.i.i91.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %42)
  %tobool31.not.i = icmp ult i32 %42, 4
  br i1 %tobool31.not.i, label %lor.lhs.false32.i, label %if.then27.i.errout_idr_crit_edge

if.then27.i.errout_idr_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout_idr

lor.lhs.false32.i:                                ; preds = %if.then27.i
  %and.i.i = and i32 %42, -20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %42)
  %tobool2.not.i.i = icmp ne i32 %42, 3
  %retval.0.i.i = and i1 %tobool2.not.i.i, %tobool.not.i.i
  br i1 %retval.0.i.i, label %lor.lhs.false32.i.if.end36.i_crit_edge, label %lor.lhs.false32.i.errout_idr_crit_edge

lor.lhs.false32.i.errout_idr_crit_edge:           ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout_idr

lor.lhs.false32.i.if.end36.i_crit_edge:           ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end36.i

if.end36.i:                                       ; preds = %lor.lhs.false32.i.if.end36.i_crit_edge, %if.end24.i.if.end36.i_crit_edge
  %gen_flags.0.i = phi i32 [ %42, %lor.lhs.false32.i.if.end36.i_crit_edge ], [ 0, %if.end24.i.if.end36.i_crit_edge ]
  %exts_integrated.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 3
  %frombool38.i = zext i1 %have_exts.1.off0.i to i8
  %43 = ptrtoint ptr %exts_integrated.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %frombool38.i, ptr %exts_integrated.i, align 4
  %gen_flags39.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %gen_flags39.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %gen_flags.0.i, ptr %gen_flags39.i, align 8
  br i1 %32, label %cond.true.i, label %cond.false.i

cond.true.i:                                      ; preds = %if.end36.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fprog_tmp.i.i) #10
  %45 = ptrtoint ptr %fprog_tmp.i.i to i32
  call void @__asan_store8_noabort(i32 %45)
  store i64 -1, ptr %fprog_tmp.i.i, align 8, !annotation !81
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %fp.i.i) #10
  %46 = ptrtoint ptr %fp.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 -1 to ptr), ptr %fp.i.i, align 4, !annotation !81
  %47 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %arrayidx.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %48, i32 4
  %49 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %add.ptr.i.i.i.i, align 2
  %51 = add i16 %50, -4097
  call void @__sanitizer_cov_trace_const_cmp2(i16 -4096, i16 %51)
  %52 = icmp ult i16 %51, -4096
  br i1 %52, label %cond.true.i.cls_bpf_prog_from_ops.exit.i_crit_edge, label %if.end.i.i

cond.true.i.cls_bpf_prog_from_ops.exit.i_crit_edge: ; preds = %cond.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cls_bpf_prog_from_ops.exit.i

if.end.i.i:                                       ; preds = %cond.true.i
  %mul.i.i = shl nuw i16 %50, 3
  %conv7.i.i = zext i16 %mul.i.i to i32
  %arrayidx8.i.i = getelementptr inbounds ptr, ptr %tb, i32 5
  %53 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %arrayidx8.i.i, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %54, align 2
  %conv.i.i.i = zext i16 %56 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i.i.i, i32 %conv7.i.i)
  %cmp10.not.i.i = icmp eq i32 %sub.i.i.i, %conv7.i.i
  br i1 %cmp10.not.i.i, label %if.end13.i.i, label %if.end.i.i.cls_bpf_prog_from_ops.exit.i_crit_edge

if.end.i.i.cls_bpf_prog_from_ops.exit.i_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cls_bpf_prog_from_ops.exit.i

if.end13.i.i:                                     ; preds = %if.end.i.i
  %add.ptr.i.i92.i = getelementptr i8, ptr %54, i32 4
  %call17.i.i = call ptr @kmemdup(ptr noundef %add.ptr.i.i92.i, i32 noundef %conv7.i.i, i32 noundef 3264) #10
  %cmp18.i.i = icmp eq ptr %call17.i.i, null
  br i1 %cmp18.i.i, label %if.end13.i.i.cls_bpf_prog_from_ops.exit.i_crit_edge, label %if.end21.i.i

if.end13.i.i.cls_bpf_prog_from_ops.exit.i_crit_edge: ; preds = %if.end13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cls_bpf_prog_from_ops.exit.i

if.end21.i.i:                                     ; preds = %if.end13.i.i
  %57 = ptrtoint ptr %fprog_tmp.i.i to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %50, ptr %fprog_tmp.i.i, align 8
  %filter.i.i = getelementptr inbounds %struct.sock_fprog_kern, ptr %fprog_tmp.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %filter.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call17.i.i, ptr %filter.i.i, align 4
  %call22.i.i = call i32 @bpf_prog_create(ptr noundef nonnull %fp.i.i, ptr noundef nonnull %fprog_tmp.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i.i)
  %cmp23.i.i = icmp slt i32 %call22.i.i, 0
  br i1 %cmp23.i.i, label %if.then25.i.i, label %if.end26.i.i

if.then25.i.i:                                    ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call17.i.i) #10
  br label %cls_bpf_prog_from_ops.exit.i

if.end26.i.i:                                     ; preds = %if.end21.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %bpf_ops27.i.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 9
  %59 = ptrtoint ptr %bpf_ops27.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call17.i.i, ptr %bpf_ops27.i.i, align 4
  %bpf_num_ops28.i.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 8
  %60 = ptrtoint ptr %bpf_num_ops28.i.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %50, ptr %bpf_num_ops28.i.i, align 8
  %bpf_name.i.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 10
  %61 = ptrtoint ptr %bpf_name.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr null, ptr %bpf_name.i.i, align 8
  %62 = ptrtoint ptr %fp.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %fp.i.i, align 4
  %64 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %63, ptr %call7.i.i, align 8
  br label %cls_bpf_prog_from_ops.exit.i

cls_bpf_prog_from_ops.exit.i:                     ; preds = %if.end26.i.i, %if.then25.i.i, %if.end13.i.i.cls_bpf_prog_from_ops.exit.i_crit_edge, %if.end.i.i.cls_bpf_prog_from_ops.exit.i_crit_edge, %cond.true.i.cls_bpf_prog_from_ops.exit.i_crit_edge
  %retval.0.i93.i = phi i32 [ %call22.i.i, %if.then25.i.i ], [ 0, %if.end26.i.i ], [ -22, %cond.true.i.cls_bpf_prog_from_ops.exit.i_crit_edge ], [ -22, %if.end.i.i.cls_bpf_prog_from_ops.exit.i_crit_edge ], [ -12, %if.end13.i.i.cls_bpf_prog_from_ops.exit.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %fp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fprog_tmp.i.i) #10
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.end36.i
  %65 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %arrayidx3.i, align 4
  %add.ptr.i.i.i95.i = getelementptr i8, ptr %66, i32 4
  %67 = ptrtoint ptr %add.ptr.i.i.i95.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %add.ptr.i.i.i95.i, align 4
  %and.i96.i = and i32 %gen_flags.0.i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96.i)
  %tobool.i.i = icmp ne i32 %and.i96.i, 0
  %call2.i.i = call ptr @bpf_prog_get_type_dev(i32 noundef %68, i32 noundef 3, i1 noundef zeroext %tobool.i.i) #10
  %cmp.i.i.i = icmp ugt ptr %call2.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %if.then.i.i, label %if.end.i97.i

if.then.i.i:                                      ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #12
  %69 = ptrtoint ptr %call2.i.i to i32
  br label %cond.end.i

if.end.i97.i:                                     ; preds = %cond.false.i
  %arrayidx5.i.i = getelementptr inbounds ptr, ptr %tb, i32 7
  %70 = ptrtoint ptr %arrayidx5.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %arrayidx5.i.i, align 4
  %tobool6.not.i.i = icmp eq ptr %71, null
  br i1 %tobool6.not.i.i, label %if.end.i97.i.if.end13.i99.i_crit_edge, label %if.then7.i.i

if.end.i97.i.if.end13.i99.i_crit_edge:            ; preds = %if.end.i97.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i99.i

if.then7.i.i:                                     ; preds = %if.end.i97.i
  %add.ptr.i.i29.i.i = getelementptr i8, ptr %71, i32 4
  %72 = ptrtoint ptr %71 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %71, align 2
  %conv.i.i.i.i = zext i16 %73 to i32
  %sub.i.i.i.i = add nsw i32 %conv.i.i.i.i, -4
  %call2.i.i.i = call ptr @kmemdup(ptr noundef %add.ptr.i.i29.i.i, i32 noundef %sub.i.i.i.i, i32 noundef 3264) #10
  %tobool10.not.i.i = icmp eq ptr %call2.i.i.i, null
  br i1 %tobool10.not.i.i, label %cond.end.thread108.i, label %if.then7.i.i.if.end13.i99.i_crit_edge

if.then7.i.i.if.end13.i99.i_crit_edge:            ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end13.i99.i

cond.end.thread108.i:                             ; preds = %if.then7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @bpf_prog_put(ptr noundef %call2.i.i) #10
  br label %errout_idr

if.end13.i99.i:                                   ; preds = %if.then7.i.i.if.end13.i99.i_crit_edge, %if.end.i97.i.if.end13.i99.i_crit_edge
  %name.0.i.i = phi ptr [ %call2.i.i.i, %if.then7.i.i.if.end13.i99.i_crit_edge ], [ null, %if.end.i97.i.if.end13.i99.i_crit_edge ]
  %bpf_ops.i.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 9
  %74 = ptrtoint ptr %bpf_ops.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr null, ptr %bpf_ops.i.i, align 4
  %bpf_name.i98.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 10
  %75 = ptrtoint ptr %bpf_name.i98.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %name.0.i.i, ptr %bpf_name.i98.i, align 8
  %76 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call2.i.i, ptr %call7.i.i, align 8
  %dst_needed.i.i = getelementptr inbounds %struct.bpf_prog, ptr %call2.i.i, i32 0, i32 1
  %77 = ptrtoint ptr %dst_needed.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load.i.i = load i16, ptr %dst_needed.i.i, align 2
  %78 = and i16 %bf.load.i.i, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool14.not.i.i = icmp eq i16 %78, 0
  br i1 %tobool14.not.i.i, label %if.end13.i99.i.if.end45.i_crit_edge, label %if.then15.i.i

if.end13.i99.i.if.end45.i_crit_edge:              ; preds = %if.end13.i99.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

if.then15.i.i:                                    ; preds = %if.end13.i99.i
  call void @__sanitizer_cov_trace_pc() #12
  %chain.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %79 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %chain.i.i, align 4
  %block.i.i = getelementptr inbounds %struct.tcf_chain, ptr %80, i32 0, i32 3
  %81 = ptrtoint ptr %block.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %block.i.i, align 4
  call void @tcf_block_netif_keep_dst(ptr noundef %82) #10
  br label %if.end45.i

cond.end.i:                                       ; preds = %if.then.i.i, %cls_bpf_prog_from_ops.exit.i
  %cond.i = phi i32 [ %retval.0.i93.i, %cls_bpf_prog_from_ops.exit.i ], [ %69, %if.then.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %cmp43.i = icmp slt i32 %cond.i, 0
  br i1 %cmp43.i, label %cond.end.i.errout_idr_crit_edge, label %cond.end.i.if.end45.i_crit_edge

cond.end.i.if.end45.i_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.i

cond.end.i.errout_idr_crit_edge:                  ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout_idr

if.end45.i:                                       ; preds = %cond.end.i.if.end45.i_crit_edge, %if.then15.i.i, %if.end13.i99.i.if.end45.i_crit_edge
  %arrayidx46.i = getelementptr inbounds ptr, ptr %tb, i32 3
  %83 = ptrtoint ptr %arrayidx46.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %arrayidx46.i, align 4
  %tobool47.not.i = icmp eq ptr %84, null
  br i1 %tobool47.not.i, label %if.end45.i.if.end46_crit_edge, label %if.then48.i

if.end45.i.if.end46_crit_edge:                    ; preds = %if.end45.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.then48.i:                                      ; preds = %if.end45.i
  %add.ptr.i.i101.i = getelementptr i8, ptr %84, i32 4
  %85 = ptrtoint ptr %add.ptr.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %add.ptr.i.i101.i, align 4
  %res.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 2
  %classid.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %87 = ptrtoint ptr %classid.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %classid.i, align 8
  %chain.i102.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %88 = ptrtoint ptr %chain.i102.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %chain.i102.i, align 4
  %block.i103.i = getelementptr inbounds %struct.tcf_chain, ptr %89, i32 0, i32 3
  %90 = ptrtoint ptr %block.i103.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %block.i103.i, align 4
  %q1.i.i = getelementptr inbounds %struct.tcf_block, ptr %91, i32 0, i32 6
  %92 = ptrtoint ptr %q1.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %q1.i.i, align 4
  %tobool.not.i104.i = icmp eq ptr %93, null
  br i1 %tobool.not.i104.i, label %if.then48.i.if.end46_crit_edge, label %if.end.i105.i

if.then48.i.if.end46_crit_edge:                   ; preds = %if.then48.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end46

if.end.i105.i:                                    ; preds = %if.then48.i
  %flags.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %93, i32 0, i32 2
  %94 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %flags.i.i.i, align 8
  %and.i.i.i = and i32 %95, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.end.i105.i.sch_tree_lock.exit.i.i_crit_edge

if.end.i105.i.sch_tree_lock.exit.i.i_crit_edge:   ; preds = %if.end.i105.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit.i.i

if.else.i.i.i:                                    ; preds = %if.end.i105.i
  %dev_queue.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %93, i32 0, i32 9
  %96 = ptrtoint ptr %dev_queue.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev_queue.i.i.i.i.i, align 8
  %qdisc_sleeping.i.i.i.i.i = getelementptr inbounds %struct.netdev_queue, ptr %97, i32 0, i32 3
  %98 = ptrtoint ptr %qdisc_sleeping.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %qdisc_sleeping.i.i.i.i.i, align 4
  %call1.i.i.i.i = call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i.i)
  %tobool.not.i.i.i.i = icmp eq i32 %call1.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i, label %land.rhs.i.i.i.i, label %if.else.i.i.i.sch_tree_lock.exit.i.i_crit_edge

if.else.i.i.i.sch_tree_lock.exit.i.i_crit_edge:   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit.i.i

land.rhs.i.i.i.i:                                 ; preds = %if.else.i.i.i
  %.b41.i.i.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i.i.i, label %land.rhs.i.i.i.i.sch_tree_lock.exit.i.i_crit_edge, label %if.then.i.i.i.i, !prof !73

land.rhs.i.i.i.i.sch_tree_lock.exit.i.i_crit_edge: ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_lock.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.rhs.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 596) #10
  br label %sch_tree_lock.exit.i.i

sch_tree_lock.exit.i.i:                           ; preds = %if.then.i.i.i.i, %land.rhs.i.i.i.i.sch_tree_lock.exit.i.i_crit_edge, %if.else.i.i.i.sch_tree_lock.exit.i.i_crit_edge, %if.end.i105.i.sch_tree_lock.exit.i.i_crit_edge
  %.sink.i.i.i = phi ptr [ %93, %if.end.i105.i.sch_tree_lock.exit.i.i_crit_edge ], [ %99, %if.else.i.i.i.sch_tree_lock.exit.i.i_crit_edge ], [ %99, %land.rhs.i.i.i.i.sch_tree_lock.exit.i.i_crit_edge ], [ %99, %if.then.i.i.i.i ]
  %lock.i.i.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i.i.i, i32 0, i32 17, i32 3
  call void @_raw_spin_lock_bh(ptr noundef %lock.i.i.i.i.i) #10
  %ops.i.i.i = getelementptr inbounds %struct.Qdisc, ptr %93, i32 0, i32 4
  %100 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ops.i.i.i, align 16
  %cl_ops.i.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %101, i32 0, i32 1
  %102 = ptrtoint ptr %cl_ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %cl_ops.i.i.i, align 4
  %bind_tcf.i.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %103, i32 0, i32 10
  %104 = ptrtoint ptr %bind_tcf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %bind_tcf.i.i.i, align 4
  %106 = ptrtoint ptr %classid.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %classid.i, align 8
  %call.i.i.i = call i32 %105(ptr noundef nonnull %93, i32 noundef %base, i32 noundef %107) #10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %res.i, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @llvm.prefetch.p0(ptr %res.i, i32 1, i32 3, i32 1) #10
  %108 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %call.i.i.i, ptr %res.i) #10, !srcloc !83
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %108, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool.not.i5.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool.not.i5.i.i, label %sch_tree_lock.exit.i.i.__tcf_bind_filter.exit.i.i_crit_edge, label %if.then.i.i.i

sch_tree_lock.exit.i.i.__tcf_bind_filter.exit.i.i_crit_edge: ; preds = %sch_tree_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__tcf_bind_filter.exit.i.i

if.then.i.i.i:                                    ; preds = %sch_tree_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %ops.i.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ops.i.i.i, align 16
  %cl_ops3.i.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %110, i32 0, i32 1
  %111 = ptrtoint ptr %cl_ops3.i.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cl_ops3.i.i.i, align 4
  %unbind_tcf.i.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %112, i32 0, i32 11
  %113 = ptrtoint ptr %unbind_tcf.i.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %unbind_tcf.i.i.i, align 4
  call void %114(ptr noundef nonnull %93, i32 noundef %asmresult.i.i.i.i.i) #10
  br label %__tcf_bind_filter.exit.i.i

__tcf_bind_filter.exit.i.i:                       ; preds = %if.then.i.i.i, %sch_tree_lock.exit.i.i.__tcf_bind_filter.exit.i.i_crit_edge
  %115 = ptrtoint ptr %flags.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %flags.i.i.i, align 8
  %and.i7.i.i = and i32 %116, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i7.i.i)
  %tobool.not.i8.i.i = icmp eq i32 %and.i7.i.i, 0
  br i1 %tobool.not.i8.i.i, label %if.else.i13.i.i, label %__tcf_bind_filter.exit.i.i.sch_tree_unlock.exit.i.i_crit_edge

__tcf_bind_filter.exit.i.i.sch_tree_unlock.exit.i.i_crit_edge: ; preds = %__tcf_bind_filter.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit.i.i

if.else.i13.i.i:                                  ; preds = %__tcf_bind_filter.exit.i.i
  %dev_queue.i.i.i9.i.i = getelementptr inbounds %struct.Qdisc, ptr %93, i32 0, i32 9
  %117 = ptrtoint ptr %dev_queue.i.i.i9.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %dev_queue.i.i.i9.i.i, align 8
  %qdisc_sleeping.i.i.i10.i.i = getelementptr inbounds %struct.netdev_queue, ptr %118, i32 0, i32 3
  %119 = ptrtoint ptr %qdisc_sleeping.i.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %qdisc_sleeping.i.i.i10.i.i, align 4
  %call1.i.i11.i.i = call i32 @rtnl_is_locked() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i11.i.i)
  %tobool.not.i.i12.i.i = icmp eq i32 %call1.i.i11.i.i, 0
  br i1 %tobool.not.i.i12.i.i, label %land.rhs.i.i15.i.i, label %if.else.i13.i.i.sch_tree_unlock.exit.i.i_crit_edge

if.else.i13.i.i.sch_tree_unlock.exit.i.i_crit_edge: ; preds = %if.else.i13.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit.i.i

land.rhs.i.i15.i.i:                               ; preds = %if.else.i13.i.i
  %.b41.i.i14.i.i = load i1, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  br i1 %.b41.i.i14.i.i, label %land.rhs.i.i15.i.i.sch_tree_unlock.exit.i.i_crit_edge, label %if.then.i.i16.i.i, !prof !73

land.rhs.i.i15.i.i.sch_tree_unlock.exit.i.i_crit_edge: ; preds = %land.rhs.i.i15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %sch_tree_unlock.exit.i.i

if.then.i.i16.i.i:                                ; preds = %land.rhs.i.i15.i.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @qdisc_root_sleeping_lock.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.10, i32 noundef 596, i32 noundef 9, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 596) #10
  br label %sch_tree_unlock.exit.i.i

sch_tree_unlock.exit.i.i:                         ; preds = %if.then.i.i16.i.i, %land.rhs.i.i15.i.i.sch_tree_unlock.exit.i.i_crit_edge, %if.else.i13.i.i.sch_tree_unlock.exit.i.i_crit_edge, %__tcf_bind_filter.exit.i.i.sch_tree_unlock.exit.i.i_crit_edge
  %.sink.i17.i.i = phi ptr [ %93, %__tcf_bind_filter.exit.i.i.sch_tree_unlock.exit.i.i_crit_edge ], [ %120, %if.else.i13.i.i.sch_tree_unlock.exit.i.i_crit_edge ], [ %120, %land.rhs.i.i15.i.i.sch_tree_unlock.exit.i.i_crit_edge ], [ %120, %if.then.i.i16.i.i ]
  %lock.i.i.i18.i.i = getelementptr inbounds %struct.Qdisc, ptr %.sink.i17.i.i, i32 0, i32 17, i32 3
  call void @_raw_spin_unlock_bh(ptr noundef %lock.i.i.i18.i.i) #10
  br label %if.end46

if.end46:                                         ; preds = %sch_tree_unlock.exit.i.i, %if.then48.i.if.end46_crit_edge, %if.end45.i.if.end46_crit_edge
  %121 = ptrtoint ptr %gen_flags39.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %gen_flags39.i, align 8
  br i1 %tobool19.not, label %if.end10.i.thread, label %land.lhs.true2.i

if.end10.i.thread:                                ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #12
  %and.i36.i143 = and i32 %122, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i143)
  %tobool.i.not.i144 = icmp eq i32 %and.i36.i143, 0
  %spec.select.i145 = select i1 %tobool.i.not.i144, ptr %call7.i.i, ptr null
  br label %if.end16.i

land.lhs.true2.i:                                 ; preds = %if.end46
  %gen_flags3.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %4, i32 0, i32 4
  %123 = ptrtoint ptr %gen_flags3.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %gen_flags3.i, align 4
  %125 = xor i32 %124, %122
  %126 = and i32 %125, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %cmp.not.i = icmp eq i32 %126, 0
  br i1 %cmp.not.i, label %land.lhs.true12.i, label %land.lhs.true2.i.errout_parms_crit_edge

land.lhs.true2.i.errout_parms_crit_edge:          ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout_parms

land.lhs.true12.i:                                ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %gen_flags39.i to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %gen_flags39.i, align 8
  %and.i36.i = and i32 %128, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36.i)
  %tobool.i.not.i = icmp eq i32 %and.i36.i, 0
  %spec.select.i = select i1 %tobool.i.not.i, ptr %call7.i.i, ptr null
  %129 = ptrtoint ptr %gen_flags3.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %gen_flags3.i, align 4
  %and.i37.i = and i32 %130, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i37.i)
  %tobool.i38.not.i = icmp eq i32 %and.i37.i, 0
  %spec.select33.i = select i1 %tobool.i38.not.i, ptr %4, ptr null
  br label %if.end16.i

if.end16.i:                                       ; preds = %land.lhs.true12.i, %if.end10.i.thread
  %spec.select.i146 = phi ptr [ %spec.select.i, %land.lhs.true12.i ], [ %spec.select.i145, %if.end10.i.thread ]
  %oldprog.addr.0.i = phi ptr [ %spec.select33.i, %land.lhs.true12.i ], [ null, %if.end10.i.thread ]
  %tobool17.not.i = icmp eq ptr %spec.select.i146, null
  %tobool19.not.i = icmp eq ptr %oldprog.addr.0.i, null
  %or.cond34.i = select i1 %tobool17.not.i, i1 %tobool19.not.i, i1 false
  br i1 %or.cond34.i, label %if.end16.i.if.end50_crit_edge, label %cls_bpf_offload.exit

if.end16.i.if.end50_crit_edge:                    ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

cls_bpf_offload.exit:                             ; preds = %if.end16.i
  %call22.i = call fastcc i32 @cls_bpf_offload_cmd(ptr noundef %tp, ptr noundef %spec.select.i146, ptr noundef %oldprog.addr.0.i, ptr noundef %extack) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22.i)
  %tobool48.not = icmp eq i32 %call22.i, 0
  br i1 %tobool48.not, label %cls_bpf_offload.exit.if.end50_crit_edge, label %cls_bpf_offload.exit.errout_parms_crit_edge

cls_bpf_offload.exit.errout_parms_crit_edge:      ; preds = %cls_bpf_offload.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout_parms

cls_bpf_offload.exit.if.end50_crit_edge:          ; preds = %cls_bpf_offload.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end50

if.end50:                                         ; preds = %cls_bpf_offload.exit.if.end50_crit_edge, %if.end16.i.if.end50_crit_edge
  %131 = ptrtoint ptr %gen_flags39.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %gen_flags39.i, align 8
  %and.i = and i32 %132, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.then52, label %if.end50.if.end54_crit_edge

if.end50.if.end54_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then52:                                        ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %132, 8
  %133 = ptrtoint ptr %gen_flags39.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 %or, ptr %gen_flags39.i, align 8
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end50.if.end54_crit_edge
  br i1 %tobool19.not, label %if.else63, label %if.then56

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %handle_idr57 = getelementptr inbounds %struct.cls_bpf_head, ptr %2, i32 0, i32 1
  %134 = ptrtoint ptr %handle.addr to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %handle.addr, align 4
  %call58 = call ptr @idr_replace(ptr noundef %handle_idr57, ptr noundef nonnull %call7.i.i, i32 noundef %135) #10
  %link = getelementptr inbounds %struct.cls_bpf_prog, ptr %4, i32 0, i32 1
  %link59 = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 1
  %136 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %link, align 4
  %138 = ptrtoint ptr %link59 to i32
  call void @__asan_store4_noabort(i32 %138)
  store ptr %137, ptr %link59, align 4
  %prev.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %4, i32 0, i32 1, i32 1
  %139 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prev.i, align 4
  %prev2.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 1, i32 1
  %141 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %140, ptr %prev2.i, align 8
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !85
  %142 = ptrtoint ptr %prev2.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %prev2.i, align 8
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %link59, ptr %143, align 4
  %145 = ptrtoint ptr %link59 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %link59, align 4
  %prev38.i = getelementptr inbounds %struct.list_head, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %prev38.i to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %link59, ptr %prev38.i, align 4
  %148 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %res = getelementptr inbounds %struct.cls_bpf_prog, ptr %4, i32 0, i32 2
  call fastcc void @tcf_unbind_filter(ptr noundef %tp, ptr noundef %res)
  %exts60 = getelementptr inbounds %struct.cls_bpf_prog, ptr %4, i32 0, i32 6
  %call61 = call fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts60)
  %rwork = getelementptr inbounds %struct.cls_bpf_prog, ptr %4, i32 0, i32 12
  %call62 = call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @cls_bpf_delete_prog_work) #10
  br label %if.end65

if.else63:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %link64 = getelementptr inbounds %struct.cls_bpf_prog, ptr %call7.i.i, i32 0, i32 1
  call fastcc void @list_add_rcu(ptr noundef %link64, ptr noundef %2)
  br label %if.end65

if.end65:                                         ; preds = %if.else63, %if.then56
  %149 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %call7.i.i, ptr %arg, align 4
  br label %cleanup

errout_parms:                                     ; preds = %cls_bpf_offload.exit.errout_parms_crit_edge, %land.lhs.true2.i.errout_parms_crit_edge
  %retval.0.i129152 = phi i32 [ %call22.i, %cls_bpf_offload.exit.errout_parms_crit_edge ], [ -22, %land.lhs.true2.i.errout_parms_crit_edge ]
  call fastcc void @cls_bpf_free_parms(ptr noundef nonnull %call7.i.i)
  br label %errout_idr

errout_idr:                                       ; preds = %errout_parms, %cond.end.i.errout_idr_crit_edge, %cond.end.thread108.i, %lor.lhs.false32.i.errout_idr_crit_edge, %if.then27.i.errout_idr_crit_edge, %if.then15.i.errout_idr_crit_edge, %if.end.i125.errout_idr_crit_edge, %land.end.i.errout_idr_crit_edge
  %ret.1 = phi i32 [ %retval.0.i129152, %errout_parms ], [ -12, %cond.end.thread108.i ], [ %cond.i, %cond.end.i.errout_idr_crit_edge ], [ -22, %if.then27.i.errout_idr_crit_edge ], [ -22, %lor.lhs.false32.i.errout_idr_crit_edge ], [ %call.i, %if.end.i125.errout_idr_crit_edge ], [ -22, %land.end.i.errout_idr_crit_edge ], [ -22, %if.then15.i.errout_idr_crit_edge ]
  br i1 %tobool19.not, label %if.then67, label %errout_idr.errout_crit_edge

errout_idr.errout_crit_edge:                      ; preds = %errout_idr
  call void @__sanitizer_cov_trace_pc() #12
  br label %errout

if.then67:                                        ; preds = %errout_idr
  call void @__sanitizer_cov_trace_pc() #12
  %handle_idr68 = getelementptr inbounds %struct.cls_bpf_head, ptr %2, i32 0, i32 1
  %150 = ptrtoint ptr %handle40 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %handle40, align 4
  %call70 = call ptr @idr_remove(ptr noundef %handle_idr68, i32 noundef %151) #10
  br label %errout

errout:                                           ; preds = %if.then67, %errout_idr.errout_crit_edge, %if.end36.errout_crit_edge, %land.lhs.true22.errout_crit_edge, %if.end14.errout_crit_edge
  %ret.2 = phi i32 [ %call34, %if.end36.errout_crit_edge ], [ %ret.1, %errout_idr.errout_crit_edge ], [ %ret.1, %if.then67 ], [ -22, %land.lhs.true22.errout_crit_edge ], [ -12, %if.end14.errout_crit_edge ]
  call void @tcf_exts_destroy(ptr noundef %exts) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %errout, %if.end65, %if.end10.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.2, %errout ], [ 0, %if.end65 ], [ -22, %do.end.cleanup_crit_edge ], [ %call2.i, %if.end5.cleanup_crit_edge ], [ -105, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %tb) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cls_bpf_delete(ptr noundef %tp, ptr noundef %arg, ptr nocapture noundef writeonly %last, i1 noundef zeroext %rtnl_held, ptr noundef %extack) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b8 = load i1, ptr @cls_bpf_delete.__warned, align 1
  br i1 %.b8, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cls_bpf_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 302, ptr noundef nonnull @.str.7) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  tail call fastcc void @__cls_bpf_delete(ptr noundef %tp, ptr noundef %arg, ptr noundef %extack)
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %1, align 4
  %cmp.i = icmp eq ptr %3, %1
  %frombool6 = zext i1 %cmp.i to i8
  %4 = ptrtoint ptr %last to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %frombool6, ptr %last, align 1
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cls_bpf_walk(ptr noundef %tp, ptr noundef %arg, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b29 = load i1, ptr @cls_bpf_walk.__warned, align 1
  br i1 %.b29, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cls_bpf_walk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 647, ptr noundef nonnull @.str.7) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn30 = load ptr, ptr %1, align 4
  %cmp.not32 = icmp eq ptr %.pn30, %1
  br i1 %cmp.not32, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %count = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 2
  %skip = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 1
  %fn = getelementptr inbounds %struct.tcf_walker, ptr %arg, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %skip13.for.body_crit_edge, %for.body.lr.ph
  %.pn33 = phi ptr [ %.pn30, %for.body.lr.ph ], [ %.pn, %skip13.for.body_crit_edge ]
  %3 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %count, align 4
  %5 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp6 = icmp slt i32 %4, %6
  br i1 %cmp6, label %for.body.skip13_crit_edge, label %if.end8

for.body.skip13_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip13

if.end8:                                          ; preds = %for.body
  %prog.034 = getelementptr i8, ptr %.pn33, i32 -4
  %7 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %fn, align 4
  %call9 = tail call i32 %8(ptr noundef %tp, ptr noundef %prog.034, ptr noundef %arg) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end8.skip13_crit_edge

if.end8.skip13_crit_edge:                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %skip13

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %arg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %arg, align 4
  br label %for.end

skip13:                                           ; preds = %if.end8.skip13_crit_edge, %for.body.skip13_crit_edge
  %10 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %count, align 4
  %inc = add i32 %11, 1
  store i32 %inc, ptr %count, align 4
  %12 = ptrtoint ptr %.pn33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn = load ptr, ptr %.pn33, align 4
  %cmp.not = icmp eq ptr %.pn, %1
  br i1 %cmp.not, label %skip13.for.end_crit_edge, label %skip13.for.body_crit_edge

skip13.for.body_crit_edge:                        ; preds = %skip13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

skip13.for.end_crit_edge:                         ; preds = %skip13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %skip13.for.end_crit_edge, %if.then11, %do.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cls_bpf_reoffload(ptr noundef %tp, i1 noundef zeroext %add, ptr noundef %cb, ptr noundef %cb_priv, ptr noundef %extack) #2 align 64 {
entry:
  %cls_bpf = alloca %struct.tc_cls_bpf_offload, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b55 = load i1, ptr @cls_bpf_reoffload.__warned, align 1
  br i1 %.b55, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @cls_bpf_reoffload.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 665, ptr noundef nonnull @.str.7) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %2 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chain, align 4
  %block4 = getelementptr inbounds %struct.tcf_chain, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %block4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %block4, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cls_bpf) #10
  %6 = call ptr @memset(ptr %cls_bpf, i32 0, i32 40)
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pn57 = load ptr, ptr %1, align 4
  %cmp.not59 = icmp eq ptr %.pn57, %1
  br i1 %cmp.not59, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %protocol.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %protocol1.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_bpf, i32 0, i32 1
  %prio.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %prio2.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_bpf, i32 0, i32 2
  %extack3.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_bpf, i32 0, i32 3
  %command = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf, i32 0, i32 1
  %exts11 = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf, i32 0, i32 2
  %prog13.c = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf, i32 0, i32 3
  %oldprog = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf, i32 0, i32 4
  %name = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf, i32 0, i32 5
  %exts_integrated21 = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn60 = phi ptr [ %.pn57, %for.body.lr.ph ], [ %.pn, %for.inc.for.body_crit_edge ]
  %prog.061 = getelementptr i8, ptr %.pn60, i32 -4
  %gen_flags = getelementptr i8, ptr %.pn60, i32 20
  %8 = ptrtoint ptr %gen_flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %gen_flags, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end9, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end9:                                          ; preds = %for.body
  %10 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chain, align 4
  %index.i = getelementptr inbounds %struct.tcf_chain, ptr %11, i32 0, i32 4
  %12 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i, align 4
  %14 = ptrtoint ptr %cls_bpf to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cls_bpf, align 4
  %15 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol.i, align 4
  %17 = ptrtoint ptr %protocol1.i to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %protocol1.i, align 4
  %18 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prio.i, align 4
  %shr.i = lshr i32 %19, 16
  %20 = ptrtoint ptr %prio2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr.i, ptr %prio2.i, align 4
  %21 = and i32 %9, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %if.end9.tc_cls_common_offload_init.exit_crit_edge, label %if.then.i

if.end9.tc_cls_common_offload_init.exit_crit_edge: ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc_cls_common_offload_init.exit

if.then.i:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %extack3.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %extack, ptr %extack3.i, align 4
  br label %tc_cls_common_offload_init.exit

tc_cls_common_offload_init.exit:                  ; preds = %if.then.i, %if.end9.tc_cls_common_offload_init.exit_crit_edge
  %24 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %command, align 4
  %exts = getelementptr i8, ptr %.pn60, i32 28
  %25 = ptrtoint ptr %exts11 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %exts, ptr %exts11, align 4
  br i1 %add, label %cond.true, label %cond.false16.critedge

cond.true:                                        ; preds = %tc_cls_common_offload_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %prog.061 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prog.061, align 4
  %28 = ptrtoint ptr %prog13.c to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %27, ptr %prog13.c, align 4
  br label %cond.end18

cond.false16.critedge:                            ; preds = %tc_cls_common_offload_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %prog13.c to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %prog13.c, align 4
  %30 = ptrtoint ptr %prog.061 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prog.061, align 4
  br label %cond.end18

cond.end18:                                       ; preds = %cond.false16.critedge, %cond.true
  %cond19 = phi ptr [ %31, %cond.false16.critedge ], [ null, %cond.true ]
  %32 = ptrtoint ptr %oldprog to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %cond19, ptr %oldprog, align 4
  %bpf_name = getelementptr i8, ptr %.pn60, i32 68
  %33 = ptrtoint ptr %bpf_name to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %bpf_name, align 4
  %35 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %name, align 4
  %exts_integrated = getelementptr i8, ptr %.pn60, i32 16
  %36 = ptrtoint ptr %exts_integrated to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %exts_integrated, align 4, !range !66
  %38 = ptrtoint ptr %exts_integrated21 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %37, ptr %exts_integrated21, align 4
  %in_hw_count = getelementptr i8, ptr %.pn60, i32 24
  %call25 = call i32 @tc_setup_cb_reoffload(ptr noundef %5, ptr noundef %tp, i1 noundef zeroext %add, ptr noundef %cb, i32 noundef 4, ptr noundef nonnull %cls_bpf, ptr noundef %cb_priv, ptr noundef %gen_flags, ptr noundef %in_hw_count) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %tobool26.not = icmp eq i32 %call25, 0
  br i1 %tobool26.not, label %cond.end18.for.inc_crit_edge, label %cond.end18.cleanup_crit_edge

cond.end18.cleanup_crit_edge:                     ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cond.end18.for.inc_crit_edge:                     ; preds = %cond.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

for.inc:                                          ; preds = %cond.end18.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %39 = ptrtoint ptr %.pn60 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn = load ptr, ptr %.pn60, align 4
  %cmp.not = icmp eq ptr %.pn, %1
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %cond.end18.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ], [ %call25, %cond.end18.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cls_bpf) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cls_bpf_bind_class(ptr noundef %fh, i32 noundef %classid, i32 noundef %cl, ptr noundef %q, i32 noundef %base) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %fh, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %land.lhs.true

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %res = getelementptr inbounds %struct.cls_bpf_prog, ptr %fh, i32 0, i32 2
  %classid1 = getelementptr inbounds %struct.cls_bpf_prog, ptr %fh, i32 0, i32 2, i32 0, i32 0, i32 1
  %0 = ptrtoint ptr %classid1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %classid1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %classid)
  %cmp = icmp eq i32 %1, %classid
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
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
  %call.i = tail call i32 %7(ptr noundef %q, i32 noundef %base, i32 noundef %9) #10
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #10
  %10 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 %call.i, ptr %res) #10, !srcloc !83
  %asmresult.i.i.i = extractvalue { i32, i32 } %10, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %tobool.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %tobool.not.i, label %if.then3.if.end6_crit_edge, label %if.then3.if.end6.sink.split_crit_edge

if.then3.if.end6.sink.split_crit_edge:            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6.sink.split

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.else:                                          ; preds = %if.then
  %call.i.i.i11 = tail call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #10
  %11 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #10, !srcloc !83
  %asmresult.i.i.i12 = extractvalue { i32, i32 } %11, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i12)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i12, 0
  br i1 %cmp.not.i, label %if.else.if.end6_crit_edge, label %if.then.i16

if.else.if.end6_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then.i16:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %17(ptr noundef %q, i32 noundef %asmresult.i.i.i12.sink) #10
  br label %if.end6

if.end6:                                          ; preds = %if.end6.sink.split, %if.else.if.end6_crit_edge, %if.then3.if.end6_crit_edge, %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cls_bpf_dump(ptr nocapture noundef readnone %net, ptr nocapture noundef readonly %tp, ptr noundef %fh, ptr noundef %skb, ptr nocapture noundef writeonly %tm, i1 noundef zeroext %rtnl_held) #2 align 64 {
entry:
  %tmp.i92 = alloca i32, align 4
  %tmp.i90 = alloca i32, align 4
  %tmp.i.i80 = alloca i16, align 2
  %tmp.i.i = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %cls_bpf.i = alloca %struct.tc_cls_bpf_offload, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %fh, null
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %len = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %len, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %handle = getelementptr inbounds %struct.cls_bpf_prog, ptr %fh, i32 0, i32 7
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle, align 4
  %tcm_handle = getelementptr inbounds %struct.tcmsg, ptr %tm, i32 0, i32 4
  %4 = ptrtoint ptr %tcm_handle to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %tcm_handle, align 4
  %chain.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %5 = ptrtoint ptr %chain.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chain.i, align 4
  %block1.i = getelementptr inbounds %struct.tcf_chain, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %block1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %block1.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cls_bpf.i) #10
  %9 = getelementptr inbounds i8, ptr %cls_bpf.i, i32 4
  %10 = call ptr @memset(ptr %9, i32 0, i32 36)
  %index.i.i = getelementptr inbounds %struct.tcf_chain, ptr %6, i32 0, i32 4
  %11 = ptrtoint ptr %index.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i.i, align 4
  %13 = ptrtoint ptr %cls_bpf.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %cls_bpf.i, align 4
  %protocol.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %14 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %protocol.i.i, align 4
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %9, align 4
  %prio.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %17 = ptrtoint ptr %prio.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prio.i.i, align 4
  %shr.i.i = lshr i32 %18, 16
  %prio2.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_bpf.i, i32 0, i32 2
  %19 = ptrtoint ptr %prio2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr.i.i, ptr %prio2.i.i, align 4
  %command.i = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf.i, i32 0, i32 1
  %20 = ptrtoint ptr %command.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1, ptr %command.i, align 4
  %exts.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %fh, i32 0, i32 6
  %exts2.i = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf.i, i32 0, i32 2
  %21 = ptrtoint ptr %exts2.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %exts.i, ptr %exts2.i, align 4
  %22 = ptrtoint ptr %fh to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %fh, align 4
  %prog3.i = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf.i, i32 0, i32 3
  %24 = ptrtoint ptr %prog3.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %23, ptr %prog3.i, align 4
  %bpf_name.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %fh, i32 0, i32 10
  %25 = ptrtoint ptr %bpf_name.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %bpf_name.i, align 4
  %name.i = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf.i, i32 0, i32 5
  %27 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %26, ptr %name.i, align 4
  %exts_integrated.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %fh, i32 0, i32 3
  %28 = ptrtoint ptr %exts_integrated.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %exts_integrated.i, align 4, !range !66
  %exts_integrated4.i = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf.i, i32 0, i32 6
  %30 = ptrtoint ptr %exts_integrated4.i to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %29, ptr %exts_integrated4.i, align 4
  %call.i = call i32 @tc_setup_cb_call(ptr noundef %8, i32 noundef 4, ptr noundef nonnull %cls_bpf.i, i1 noundef zeroext false, i1 noundef zeroext true) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cls_bpf.i) #10
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %31 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %tail.i.i, align 8
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 0, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %cmp.i = icmp slt i32 %call1.i, 0
  %cmp198 = icmp eq ptr %32, null
  %cmp1 = select i1 %cmp.i, i1 true, i1 %cmp198
  br i1 %cmp1, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %classid = getelementptr inbounds %struct.cls_bpf_prog, ptr %fh, i32 0, i32 2, i32 0, i32 0, i32 1
  %33 = ptrtoint ptr %classid to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %classid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool.not = icmp eq i32 %34, 0
  br i1 %tobool.not, label %if.end3.if.end9_crit_edge, label %land.lhs.true

if.end3.if.end9_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #10
  %35 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %tmp.i, align 4
  %call.i76 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool7.not = icmp eq i32 %call.i76, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end9_crit_edge, label %land.lhs.true.if.then.i.i_crit_edge

land.lhs.true.if.then.i.i_crit_edge:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.end9:                                          ; preds = %land.lhs.true.if.end9_crit_edge, %if.end3.if.end9_crit_edge
  %bpf_ops.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %fh, i32 0, i32 9
  %36 = ptrtoint ptr %bpf_ops.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %bpf_ops.i, align 4
  %tobool.not.i = icmp eq ptr %37, null
  br i1 %tobool.not.i, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end9
  %38 = ptrtoint ptr %bpf_name.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bpf_name.i, align 4
  %tobool.not.i78 = icmp eq ptr %39, null
  br i1 %tobool.not.i78, label %if.then11.if.end.i_crit_edge, label %land.lhs.true.i

if.then11.if.end.i_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %if.then11
  %call.i.i = call i32 @strlen(ptr noundef nonnull %39) #14
  %add.i.i = add i32 %call.i.i, 1
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef %add.i.i, ptr noundef nonnull %39) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.if.then.i.i_crit_edge

land.lhs.true.i.if.then.i.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %if.then11.if.end.i_crit_edge
  %40 = ptrtoint ptr %fh to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %fh, align 4
  %aux.i = getelementptr inbounds %struct.bpf_prog, ptr %41, i32 0, i32 10
  %42 = ptrtoint ptr %aux.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %aux.i, align 4
  %id.i = getelementptr inbounds %struct.bpf_prog_aux, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %id.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i.i) #10
  %46 = ptrtoint ptr %tmp.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %tmp.i.i, align 4
  %call.i20.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 11, i32 noundef 4, ptr noundef nonnull %tmp.i.i) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i20.i)
  %tobool4.not.i = icmp eq i32 %call.i20.i, 0
  br i1 %tobool4.not.i, label %if.end6.i, label %if.end.i.if.then.i.i_crit_edge

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end6.i:                                        ; preds = %if.end.i
  %call7.i = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 10, i32 noundef 8) #10
  %cmp.i79 = icmp eq ptr %call7.i, null
  br i1 %cmp.i79, label %if.end6.i.if.then.i.i_crit_edge, label %if.end9.i

if.end6.i.if.then.i.i_crit_edge:                  ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end9.i:                                        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i = getelementptr i8, ptr %call7.i, i32 4
  %47 = ptrtoint ptr %fh to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %fh, align 4
  %tag.i = getelementptr inbounds %struct.bpf_prog, ptr %48, i32 0, i32 6
  %49 = ptrtoint ptr %call7.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %call7.i, align 2
  %conv.i.i = zext i16 %50 to i32
  %sub.i.i = add nsw i32 %conv.i.i, -4
  %51 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %tag.i, i32 %sub.i.i)
  br label %if.end17

if.else:                                          ; preds = %if.end9
  %bpf_num_ops.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %fh, i32 0, i32 8
  %52 = ptrtoint ptr %bpf_num_ops.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %bpf_num_ops.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i.i80) #10
  %54 = ptrtoint ptr %tmp.i.i80 to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %tmp.i.i80, align 2
  %call.i.i81 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 2, ptr noundef nonnull %tmp.i.i80) #10
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i.i80) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i81)
  %tobool.not.i82 = icmp eq i32 %call.i.i81, 0
  br i1 %tobool.not.i82, label %if.end.i84, label %if.else.if.then.i.i_crit_edge

if.else.if.then.i.i_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end.i84:                                       ; preds = %if.else
  %55 = ptrtoint ptr %bpf_num_ops.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %bpf_num_ops.i, align 4
  %conv.i = zext i16 %56 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 3
  %call2.i = call ptr @nla_reserve(ptr noundef %skb, i32 noundef 5, i32 noundef %mul.i) #10
  %cmp.i83 = icmp eq ptr %call2.i, null
  br i1 %cmp.i83, label %if.end.i84.if.then.i.i_crit_edge, label %if.end5.i

if.end.i84.if.then.i.i_crit_edge:                 ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end5.i:                                        ; preds = %if.end.i84
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i85 = getelementptr i8, ptr %call2.i, i32 4
  %57 = ptrtoint ptr %bpf_ops.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %bpf_ops.i, align 4
  %59 = ptrtoint ptr %call2.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %call2.i, align 2
  %conv.i.i87 = zext i16 %60 to i32
  %sub.i.i88 = add nsw i32 %conv.i.i87, -4
  %61 = call ptr @memcpy(ptr %add.ptr.i.i85, ptr %58, i32 %sub.i.i88)
  br label %if.end17

if.end17:                                         ; preds = %if.end5.i, %if.end9.i
  %call18 = call i32 @tcf_exts_dump(ptr noundef %skb, ptr noundef %exts.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.end17.if.then.i.i_crit_edge, label %if.end21

if.end17.if.then.i.i_crit_edge:                   ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end21:                                         ; preds = %if.end17
  %62 = ptrtoint ptr %exts_integrated.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %exts_integrated.i, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %63)
  %tobool22.not = icmp eq i8 %63, 0
  br i1 %tobool22.not, label %if.end21.if.end30_crit_edge, label %land.lhs.true26

if.end21.if.end30_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

land.lhs.true26:                                  ; preds = %if.end21
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i90) #10
  %64 = ptrtoint ptr %tmp.i90 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %tmp.i90, align 4
  %call.i91 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i90) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i90) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i91)
  %tobool28.not = icmp eq i32 %call.i91, 0
  br i1 %tobool28.not, label %land.lhs.true26.if.end30_crit_edge, label %land.lhs.true26.if.then.i.i_crit_edge

land.lhs.true26.if.then.i.i_crit_edge:            ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

land.lhs.true26.if.end30_crit_edge:               ; preds = %land.lhs.true26
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.end30:                                         ; preds = %land.lhs.true26.if.end30_crit_edge, %if.end21.if.end30_crit_edge
  %gen_flags = getelementptr inbounds %struct.cls_bpf_prog, ptr %fh, i32 0, i32 4
  %65 = ptrtoint ptr %gen_flags to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %gen_flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool31.not = icmp eq i32 %66, 0
  br i1 %tobool31.not, label %if.end30.if.end37_crit_edge, label %land.lhs.true32

if.end30.if.end37_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

land.lhs.true32:                                  ; preds = %if.end30
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i92) #10
  %67 = ptrtoint ptr %tmp.i92 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %tmp.i92, align 4
  %call.i93 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i92) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i92) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i93)
  %tobool35.not = icmp eq i32 %call.i93, 0
  br i1 %tobool35.not, label %land.lhs.true32.if.end37_crit_edge, label %land.lhs.true32.if.then.i.i_crit_edge

land.lhs.true32.if.then.i.i_crit_edge:            ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

land.lhs.true32.if.end37_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end37

if.end37:                                         ; preds = %land.lhs.true32.if.end37_crit_edge, %if.end30.if.end37_crit_edge
  %68 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %69 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %32 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i95 = trunc i32 %sub.ptr.sub.i to i16
  %70 = ptrtoint ptr %32 to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 %conv.i95, ptr %32, align 2
  %call40 = call i32 @tcf_exts_dump_stats(ptr noundef %skb, ptr noundef %exts.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %cmp41 = icmp slt i32 %call40, 0
  br i1 %cmp41, label %if.end37.if.then.i.i_crit_edge, label %if.end43

if.end37.if.then.i.i_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then.i.i

if.end43:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  %len44 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %71 = ptrtoint ptr %len44 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len44, align 4
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end37.if.then.i.i_crit_edge, %land.lhs.true32.if.then.i.i_crit_edge, %land.lhs.true26.if.then.i.i_crit_edge, %if.end17.if.then.i.i_crit_edge, %if.end.i84.if.then.i.i_crit_edge, %if.else.if.then.i.i_crit_edge, %if.end6.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge, %land.lhs.true.i.if.then.i.i_crit_edge, %land.lhs.true.if.then.i.i_crit_edge
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %73 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i.i, align 4
  %cmp.i.i = icmp ugt ptr %74, %32
  br i1 %cmp.i.i, label %do.end.i.i, label %if.then.i.i.if.end.i.i_crit_edge, !prof !77

if.then.i.i.if.end.i.i_crit_edge:                 ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 991, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.then.i.i.if.end.i.i_crit_edge
  %75 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %32 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %76 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @skb_trim(ptr noundef %skb, i32 noundef %sub.ptr.sub.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end43, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %1, %if.then ], [ %72, %if.end43 ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end.i.i ]
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
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__cant_migrate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @sched_clock() local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_action_exec(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @lockdep_rtnl_is_held() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cls_bpf_delete(ptr noundef %tp, ptr noundef %prog, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %cls_bpf.i.i = alloca %struct.tc_cls_bpf_offload, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @lockdep_rtnl_is_held() #10
  br i1 %call, label %entry.do.end_crit_edge, label %land.lhs.true

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call1 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true2

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true2:                                   ; preds = %land.lhs.true
  %.b17 = load i1, ptr @__cls_bpf_delete.__warned, align 1
  br i1 %.b17, label %land.lhs.true2.do.end_crit_edge, label %if.then

land.lhs.true2.do.end_crit_edge:                  ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @__cls_bpf_delete.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 287, ptr noundef nonnull @.str.7) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true2.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %root = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 1
  %0 = ptrtoint ptr %root to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %root, align 4
  %handle_idr = getelementptr inbounds %struct.cls_bpf_head, ptr %1, i32 0, i32 1
  %handle = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 7
  %2 = ptrtoint ptr %handle to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %handle, align 4
  %call4 = tail call ptr @idr_remove(ptr noundef %handle_idr, i32 noundef %3) #10
  %chain.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %4 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chain.i.i, align 4
  %block1.i.i = getelementptr inbounds %struct.tcf_chain, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %block1.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %block1.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cls_bpf.i.i) #10
  %8 = getelementptr inbounds i8, ptr %cls_bpf.i.i, i32 4
  %9 = call ptr @memset(ptr %8, i32 0, i32 36)
  %gen_flags3.i.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 4
  %10 = ptrtoint ptr %gen_flags3.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %gen_flags3.i.i, align 4
  %index.i.i.i = getelementptr inbounds %struct.tcf_chain, ptr %5, i32 0, i32 4
  %12 = ptrtoint ptr %index.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %index.i.i.i, align 4
  %14 = ptrtoint ptr %cls_bpf.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %cls_bpf.i.i, align 4
  %protocol.i.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %15 = ptrtoint ptr %protocol.i.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %protocol.i.i.i, align 4
  %17 = ptrtoint ptr %8 to i32
  call void @__asan_store2_noabort(i32 %17)
  store i16 %16, ptr %8, align 4
  %prio.i.i.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %18 = ptrtoint ptr %prio.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %prio.i.i.i, align 4
  %shr.i.i.i = lshr i32 %19, 16
  %prio2.i.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_bpf.i.i, i32 0, i32 2
  %20 = ptrtoint ptr %prio2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shr.i.i.i, ptr %prio2.i.i.i, align 4
  %21 = and i32 %11, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %do.end.tc_cls_common_offload_init.exit.i.i_crit_edge, label %if.then.i.i.i

do.end.tc_cls_common_offload_init.exit.i.i_crit_edge: ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc_cls_common_offload_init.exit.i.i

if.then.i.i.i:                                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %extack3.i.i.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_bpf.i.i, i32 0, i32 3
  %23 = ptrtoint ptr %extack3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %extack, ptr %extack3.i.i.i, align 4
  br label %tc_cls_common_offload_init.exit.i.i

tc_cls_common_offload_init.exit.i.i:              ; preds = %if.then.i.i.i, %do.end.tc_cls_common_offload_init.exit.i.i_crit_edge
  %command.i.i = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf.i.i, i32 0, i32 1
  %24 = ptrtoint ptr %command.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %command.i.i, align 4
  %exts.i.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 6
  %exts4.i.i = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf.i.i, i32 0, i32 2
  %25 = ptrtoint ptr %exts4.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %exts.i.i, ptr %exts4.i.i, align 4
  %prog10.i.i = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %prog10.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %prog10.i.i, align 4
  %tobool11.not.i.i = icmp eq ptr %prog, null
  br i1 %tobool11.not.i.i, label %tc_cls_common_offload_init.exit.i.i.cls_bpf_stop_offload.exit_crit_edge, label %cond.true12.i.i

tc_cls_common_offload_init.exit.i.i.cls_bpf_stop_offload.exit_crit_edge: ; preds = %tc_cls_common_offload_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cls_bpf_stop_offload.exit

cond.true12.i.i:                                  ; preds = %tc_cls_common_offload_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prog, align 4
  %bpf_name.c96.i.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 10
  %exts_integrated.c98.i.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 3
  br label %cls_bpf_stop_offload.exit

cls_bpf_stop_offload.exit:                        ; preds = %cond.true12.i.i, %tc_cls_common_offload_init.exit.i.i.cls_bpf_stop_offload.exit_crit_edge
  %.sink4.i = phi ptr [ %28, %cond.true12.i.i ], [ null, %tc_cls_common_offload_init.exit.i.i.cls_bpf_stop_offload.exit_crit_edge ]
  %.sink3.in.i = phi ptr [ %bpf_name.c96.i.i, %cond.true12.i.i ], [ inttoptr (i32 72 to ptr), %tc_cls_common_offload_init.exit.i.i.cls_bpf_stop_offload.exit_crit_edge ]
  %.sink.in.i = phi ptr [ %exts_integrated.c98.i.i, %cond.true12.i.i ], [ inttoptr (i32 20 to ptr), %tc_cls_common_offload_init.exit.i.i.cls_bpf_stop_offload.exit_crit_edge ]
  %29 = ptrtoint ptr %.sink.in.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %.sink.i = load i8, ptr %.sink.in.i, align 4, !range !66
  %30 = ptrtoint ptr %.sink3.in.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.sink3.i = load ptr, ptr %.sink3.in.i, align 4
  %31 = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf.i.i, i32 0, i32 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.sink4.i, ptr %31, align 4
  %33 = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf.i.i, i32 0, i32 5
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %.sink3.i, ptr %33, align 4
  %35 = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf.i.i, i32 0, i32 6
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink.i, ptr %35, align 4
  %in_hw_count37.i.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 5
  %call38.i.i = call i32 @tc_setup_cb_destroy(ptr noundef %7, ptr noundef %tp, i32 noundef 4, ptr noundef nonnull %cls_bpf.i.i, i1 noundef zeroext false, ptr noundef %gen_flags3.i.i, ptr noundef %in_hw_count37.i.i, i1 noundef zeroext true) #10
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cls_bpf.i.i) #10
  %link = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 1
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %link) #10
  br i1 %call.i.i, label %if.end.i.i, label %cls_bpf_stop_offload.exit.list_del_rcu.exit_crit_edge

cls_bpf_stop_offload.exit.list_del_rcu.exit_crit_edge: ; preds = %cls_bpf_stop_offload.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %cls_bpf_stop_offload.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i, align 4
  %39 = ptrtoint ptr %link to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %link, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %cls_bpf_stop_offload.exit.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 1, i32 1
  %43 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %44 = ptrtoint ptr %chain.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chain.i.i, align 4
  %block.i = getelementptr inbounds %struct.tcf_chain, ptr %45, i32 0, i32 3
  %46 = ptrtoint ptr %block.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %block.i, align 4
  %q1.i = getelementptr inbounds %struct.tcf_block, ptr %47, i32 0, i32 6
  %48 = ptrtoint ptr %q1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %q1.i, align 4
  %tobool.not.i = icmp eq ptr %49, null
  br i1 %tobool.not.i, label %list_del_rcu.exit.tcf_unbind_filter.exit_crit_edge, label %if.end.i

list_del_rcu.exit.tcf_unbind_filter.exit_crit_edge: ; preds = %list_del_rcu.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_unbind_filter.exit

if.end.i:                                         ; preds = %list_del_rcu.exit
  %res = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 2
  %call.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %res, i32 noundef 4) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  call void @llvm.prefetch.p0(ptr %res, i32 1, i32 3, i32 1) #10
  %50 = call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %res) #10, !srcloc !83
  %asmresult.i.i.i.i = extractvalue { i32, i32 } %50, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i, label %if.end.i.tcf_unbind_filter.exit_crit_edge, label %if.then.i.i

if.end.i.tcf_unbind_filter.exit_crit_edge:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_unbind_filter.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %ops.i.i = getelementptr inbounds %struct.Qdisc, ptr %49, i32 0, i32 4
  %51 = ptrtoint ptr %ops.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ops.i.i, align 16
  %cl_ops.i.i = getelementptr inbounds %struct.Qdisc_ops, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %cl_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cl_ops.i.i, align 4
  %unbind_tcf.i.i = getelementptr inbounds %struct.Qdisc_class_ops, ptr %54, i32 0, i32 11
  %55 = ptrtoint ptr %unbind_tcf.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %unbind_tcf.i.i, align 4
  call void %56(ptr noundef nonnull %49, i32 noundef %asmresult.i.i.i.i) #10
  br label %tcf_unbind_filter.exit

tcf_unbind_filter.exit:                           ; preds = %if.then.i.i, %if.end.i.tcf_unbind_filter.exit_crit_edge, %list_del_rcu.exit.tcf_unbind_filter.exit_crit_edge
  %call5 = call fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts.i.i)
  br i1 %call5, label %if.then6, label %if.else

if.then6:                                         ; preds = %tcf_unbind_filter.exit
  call void @__sanitizer_cov_trace_pc() #12
  %rwork = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 12
  %call7 = call zeroext i1 @tcf_queue_work(ptr noundef %rwork, ptr noundef nonnull @cls_bpf_delete_prog_work) #10
  br label %if.end8

if.else:                                          ; preds = %tcf_unbind_filter.exit
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @__cls_bpf_delete_prog(ptr noundef %prog)
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @idr_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree_call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_remove(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tcf_unbind_filter(ptr nocapture noundef readonly %tp, ptr noundef %r) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %r, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !82
  tail call void @llvm.prefetch.p0(ptr %r, i32 1, i32 3, i32 1) #10
  %6 = tail call { i32, i32 } asm sideeffect "@\09__xchg4\0A1:\09ldrex\09$0, [$3]\0A\09strex\09$1, $2, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,r,r,~{memory},~{cc}"(i32 0, ptr %r) #10, !srcloc !83
  %asmresult.i.i.i = extractvalue { i32, i32 } %6, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i)
  %cmp.not.i = icmp eq i32 %asmresult.i.i.i, 0
  br i1 %cmp.not.i, label %if.end.cleanup_crit_edge, label %if.then.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
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
  tail call void %12(ptr noundef nonnull %5, i32 noundef %asmresult.i.i.i) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @tcf_exts_get_net(ptr noundef %exts) unnamed_addr #7 align 64 {
entry:
  %old.i.i.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  %net = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 3
  %0 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net, align 4
  %count.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %call.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %count.i, i32 noundef 4) #10
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

do.cond.i.i.i.i:                                  ; preds = %do.body.i.i.i.i
  %add.i.i.i.i = add i32 %4, 1
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %count.i, i32 noundef 4) #10
  %call.i3.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef nonnull %old.i.i.i.i, i32 noundef 4) #10
  %6 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %old.i.i.i.i, align 4
  call void @llvm.prefetch.p0(ptr %count.i, i32 1, i32 3, i32 1) #10
  br label %do.body.i.i.i.i.i.i.i

do.body.i.i.i.i.i.i.i:                            ; preds = %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge, %do.cond.i.i.i.i
  %8 = call { i32, i32 } asm sideeffect "@ atomic_cmpxchg\0Aldrex\09$1, [$3]\0Amov\09$0, #0\0Ateq\09$1, $4\0Astrexeq $0, $5, [$3]\0A", "=&r,=&r,=*Qo,r,Ir,r,*Qo,~{cc}"(ptr elementtype(i32) %count.i, ptr %count.i, i32 %7, i32 %add.i.i.i.i, ptr elementtype(i32) %count.i) #10, !srcloc !86
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 0
  %tobool.not.i.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %tobool.not.i.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i, label %do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge

do.body.i.i.i.i.i.i.i.do.body.i.i.i.i.i.i.i_crit_edge: ; preds = %do.body.i.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i:     ; preds = %do.body.i.i.i.i.i.i.i
  %asmresult3.i.i.i.i.i.i.i = extractvalue { i32, i32 } %8, 1
  %cmp.not.i.i.i.i.i.i = icmp eq i32 %asmresult3.i.i.i.i.i.i.i, %7
  br i1 %cmp.not.i.i.i.i.i.i, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, label %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge, !prof !73

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.do.body.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body.i.i.i.i

arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge: ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end4.i.i.i.i

if.end4.i.i.i.i:                                  ; preds = %arch_atomic_cmpxchg_relaxed.exit.i.i.i.i.i.i.if.end4.i.i.i.i_crit_edge, %do.body.i.i.i.i.if.end4.i.i.i.i_crit_edge
  %9 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %old.i.i.i.i, align 4
  %add5.i.i.i.i = add i32 %10, 1
  %11 = or i32 %add5.i.i.i.i, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %11)
  %.not.i.i.i.i = icmp sgt i32 %11, -1
  br i1 %.not.i.i.i.i, label %if.end4.i.i.i.i.maybe_get_net.exit_crit_edge, label %if.then10.i.i.i.i, !prof !73

if.end4.i.i.i.i.maybe_get_net.exit_crit_edge:     ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %maybe_get_net.exit

if.then10.i.i.i.i:                                ; preds = %if.end4.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @refcount_warn_saturate(ptr noundef %count.i, i32 noundef 0) #10
  br label %maybe_get_net.exit

maybe_get_net.exit:                               ; preds = %if.then10.i.i.i.i, %if.end4.i.i.i.i.maybe_get_net.exit_crit_edge
  %12 = ptrtoint ptr %old.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %old.i.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.i.i.i.not.i = icmp eq i32 %13, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %old.i.i.i.i) #10
  %spec.select.i = select i1 %tobool12.i.i.i.not.i, ptr null, ptr %1
  %14 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %spec.select.i, ptr %net, align 4
  %tobool.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool.not, label %maybe_get_net.exit.if.end_crit_edge, label %if.then

maybe_get_net.exit.if.end_crit_edge:              ; preds = %maybe_get_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %maybe_get_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ns_tracker = getelementptr inbounds %struct.tcf_exts, ptr %exts, i32 0, i32 4
  %refcnt_tracker.i = getelementptr inbounds %struct.net, ptr %spec.select.i, i32 0, i32 15
  %call.i = call i32 @ref_tracker_alloc(ptr noundef %refcnt_tracker.i, ptr noundef %ns_tracker, i32 noundef 3264) #10
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
define internal void @cls_bpf_delete_prog_work(ptr noundef %work) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -80
  tail call void @rtnl_lock() #10
  tail call fastcc void @__cls_bpf_delete_prog(ptr noundef %add.ptr)
  tail call void @rtnl_unlock() #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__cls_bpf_delete_prog(ptr noundef %prog) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %exts = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 6
  tail call void @tcf_exts_destroy(ptr noundef %exts) #10
  %net.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 6, i32 3
  %0 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %net.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.tcf_exts_put_net.exit_crit_edge, label %if.then.i

entry.tcf_exts_put_net.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_exts_put_net.exit

if.then.i:                                        ; preds = %entry
  %ns_tracker.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 6, i32 4
  %refcnt_tracker.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 15
  %call.i.i.i = tail call i32 @ref_tracker_free(ptr noundef %refcnt_tracker.i.i.i, ptr noundef %ns_tracker.i) #10
  %count.i.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 14, i32 3
  %call.i.i.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %count.i.i.i, i32 noundef 4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !87
  tail call void @llvm.prefetch.p0(ptr %count.i.i.i, i32 1, i32 3, i32 1) #10
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %count.i.i.i, ptr %count.i.i.i, i32 1, ptr elementtype(i32) %count.i.i.i) #10, !srcloc !88
  %asmresult.i.i.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %cmp.i.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i.i.i, label %if.then.i.i.i, label %if.end5.i.i.i.i.i.i

if.end5.i.i.i.i.i.i:                              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i.i.i)
  %.not.i.i.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, label %if.then10.i.i.i.i.i.i, !prof !73

if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge: ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %tcf_exts_put_net.exit

if.then10.i.i.i.i.i.i:                            ; preds = %if.end5.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @refcount_warn_saturate(ptr noundef %count.i.i.i, i32 noundef 3) #10
  br label %tcf_exts_put_net.exit

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !89
  tail call void @__put_net(ptr noundef nonnull %1) #10
  br label %tcf_exts_put_net.exit

tcf_exts_put_net.exit:                            ; preds = %if.then.i.i.i, %if.then10.i.i.i.i.i.i, %if.end5.i.i.i.i.i.i.tcf_exts_put_net.exit_crit_edge, %entry.tcf_exts_put_net.exit_crit_edge
  %bpf_ops.i.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 9
  %3 = ptrtoint ptr %bpf_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %bpf_ops.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %4, null
  %5 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prog, align 4
  br i1 %tobool.not.i.i, label %if.then.i5, label %if.else.i

if.then.i5:                                       ; preds = %tcf_exts_put_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bpf_prog_put(ptr noundef %6) #10
  br label %cls_bpf_free_parms.exit

if.else.i:                                        ; preds = %tcf_exts_put_net.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bpf_prog_destroy(ptr noundef %6) #10
  br label %cls_bpf_free_parms.exit

cls_bpf_free_parms.exit:                          ; preds = %if.else.i, %if.then.i5
  %bpf_name.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 10
  %7 = ptrtoint ptr %bpf_name.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %bpf_name.i, align 4
  tail call void @kfree(ptr noundef %8) #10
  %9 = ptrtoint ptr %bpf_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %bpf_ops.i.i, align 4
  tail call void @kfree(ptr noundef %10) #10
  tail call void @kfree(ptr noundef %prog) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cls_bpf_offload_cmd(ptr noundef %tp, ptr noundef %prog, ptr noundef %oldprog, ptr noundef %extack) unnamed_addr #2 align 64 {
entry:
  %cls_bpf = alloca %struct.tc_cls_bpf_offload, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 7
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %block1 = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %block1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %block1, align 4
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %cls_bpf) #10
  %4 = getelementptr inbounds i8, ptr %cls_bpf, i32 4
  %5 = call ptr @memset(ptr %4, i32 0, i32 36)
  %tobool.not = icmp eq ptr %prog, null
  br i1 %tobool.not, label %entry.land.end_crit_edge, label %land.rhs

entry.land.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.end

land.rhs:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %gen_flags = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 4
  %6 = ptrtoint ptr %gen_flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %gen_flags, align 4
  %and.i = and i32 %7, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i = icmp ne i32 %and.i, 0
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry.land.end_crit_edge
  %spec.select = phi ptr [ %prog, %land.rhs ], [ %oldprog, %entry.land.end_crit_edge ]
  %8 = phi i1 [ %tobool.i, %land.rhs ], [ false, %entry.land.end_crit_edge ]
  %gen_flags3 = getelementptr inbounds %struct.cls_bpf_prog, ptr %spec.select, i32 0, i32 4
  %9 = ptrtoint ptr %gen_flags3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %gen_flags3, align 4
  %index.i = getelementptr inbounds %struct.tcf_chain, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %index.i, align 4
  %13 = ptrtoint ptr %cls_bpf to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %cls_bpf, align 4
  %protocol.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 3
  %14 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %protocol.i, align 4
  %protocol1.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_bpf, i32 0, i32 1
  %16 = ptrtoint ptr %protocol1.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %protocol1.i, align 4
  %prio.i = getelementptr inbounds %struct.tcf_proto, ptr %tp, i32 0, i32 4
  %17 = ptrtoint ptr %prio.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %prio.i, align 4
  %shr.i = lshr i32 %18, 16
  %prio2.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_bpf, i32 0, i32 2
  %19 = ptrtoint ptr %prio2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %shr.i, ptr %prio2.i, align 4
  %20 = and i32 %10, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %land.end.tc_cls_common_offload_init.exit_crit_edge, label %if.then.i

land.end.tc_cls_common_offload_init.exit_crit_edge: ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %tc_cls_common_offload_init.exit

if.then.i:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #12
  %extack3.i = getelementptr inbounds %struct.flow_cls_common_offload, ptr %cls_bpf, i32 0, i32 3
  %22 = ptrtoint ptr %extack3.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %extack, ptr %extack3.i, align 4
  br label %tc_cls_common_offload_init.exit

tc_cls_common_offload_init.exit:                  ; preds = %if.then.i, %land.end.tc_cls_common_offload_init.exit_crit_edge
  %command = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf, i32 0, i32 1
  %23 = ptrtoint ptr %command to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %command, align 4
  %exts = getelementptr inbounds %struct.cls_bpf_prog, ptr %spec.select, i32 0, i32 6
  %exts4 = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf, i32 0, i32 2
  %24 = ptrtoint ptr %exts4 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %exts, ptr %exts4, align 4
  br i1 %tobool.not, label %tc_cls_common_offload_init.exit.cond.end8_crit_edge, label %cond.true6

tc_cls_common_offload_init.exit.cond.end8_crit_edge: ; preds = %tc_cls_common_offload_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cond.end8

cond.true6:                                       ; preds = %tc_cls_common_offload_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prog, align 4
  br label %cond.end8

cond.end8:                                        ; preds = %cond.true6, %tc_cls_common_offload_init.exit.cond.end8_crit_edge
  %cond9 = phi ptr [ %26, %cond.true6 ], [ null, %tc_cls_common_offload_init.exit.cond.end8_crit_edge ]
  %prog10 = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf, i32 0, i32 3
  %27 = ptrtoint ptr %prog10 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %cond9, ptr %prog10, align 4
  %tobool11.not = icmp eq ptr %oldprog, null
  br i1 %tobool11.not, label %if.else.critedge, label %cond.true12

cond.true12:                                      ; preds = %cond.end8
  %28 = ptrtoint ptr %oldprog to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %oldprog, align 4
  %oldprog17.c95 = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf, i32 0, i32 4
  %30 = ptrtoint ptr %oldprog17.c95 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %29, ptr %oldprog17.c95, align 4
  %bpf_name.c96 = getelementptr inbounds %struct.cls_bpf_prog, ptr %spec.select, i32 0, i32 10
  %31 = ptrtoint ptr %bpf_name.c96 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %bpf_name.c96, align 4
  %name.c97 = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf, i32 0, i32 5
  %33 = ptrtoint ptr %name.c97 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %32, ptr %name.c97, align 4
  %exts_integrated.c98 = getelementptr inbounds %struct.cls_bpf_prog, ptr %spec.select, i32 0, i32 3
  %34 = ptrtoint ptr %exts_integrated.c98 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %exts_integrated.c98, align 4, !range !66
  %exts_integrated19.c99 = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf, i32 0, i32 6
  %36 = ptrtoint ptr %exts_integrated19.c99 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %exts_integrated19.c99, align 4
  br i1 %tobool.not, label %cond.true12.if.end45.thread_crit_edge, label %if.then

cond.true12.if.end45.thread_crit_edge:            ; preds = %cond.true12
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.thread

if.then:                                          ; preds = %cond.true12
  call void @__sanitizer_cov_trace_pc() #12
  %gen_flags24 = getelementptr inbounds %struct.cls_bpf_prog, ptr %oldprog, i32 0, i32 4
  %in_hw_count = getelementptr inbounds %struct.cls_bpf_prog, ptr %oldprog, i32 0, i32 5
  %gen_flags25 = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 4
  %in_hw_count26 = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 5
  %call27 = call i32 @tc_setup_cb_replace(ptr noundef %3, ptr noundef %tp, i32 noundef 4, ptr noundef nonnull %cls_bpf, i1 noundef zeroext %8, ptr noundef %gen_flags24, ptr noundef %in_hw_count, ptr noundef %gen_flags25, ptr noundef %in_hw_count26, i1 noundef zeroext true) #10
  br label %if.end39

if.else.critedge:                                 ; preds = %cond.end8
  %oldprog17.c = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf, i32 0, i32 4
  %37 = ptrtoint ptr %oldprog17.c to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %oldprog17.c, align 4
  %bpf_name.c = getelementptr inbounds %struct.cls_bpf_prog, ptr %spec.select, i32 0, i32 10
  %38 = ptrtoint ptr %bpf_name.c to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %bpf_name.c, align 4
  %name.c = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf, i32 0, i32 5
  %40 = ptrtoint ptr %name.c to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %39, ptr %name.c, align 4
  %exts_integrated.c = getelementptr inbounds %struct.cls_bpf_prog, ptr %spec.select, i32 0, i32 3
  %41 = ptrtoint ptr %exts_integrated.c to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %exts_integrated.c, align 4, !range !66
  %exts_integrated19.c = getelementptr inbounds %struct.tc_cls_bpf_offload, ptr %cls_bpf, i32 0, i32 6
  %43 = ptrtoint ptr %exts_integrated19.c to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %42, ptr %exts_integrated19.c, align 4
  br i1 %tobool.not, label %if.else.critedge.if.end45.thread_crit_edge, label %if.then29

if.else.critedge.if.end45.thread_crit_edge:       ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end45.thread

if.then29:                                        ; preds = %if.else.critedge
  call void @__sanitizer_cov_trace_pc() #12
  %gen_flags31 = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 4
  %in_hw_count32 = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 5
  %call33 = call i32 @tc_setup_cb_add(ptr noundef %3, ptr noundef %tp, i32 noundef 4, ptr noundef nonnull %cls_bpf, i1 noundef zeroext %8, ptr noundef %gen_flags31, ptr noundef %in_hw_count32, i1 noundef zeroext true) #10
  br label %if.end39

if.end45.thread:                                  ; preds = %if.else.critedge.if.end45.thread_crit_edge, %cond.true12.if.end45.thread_crit_edge
  %gen_flags36 = getelementptr inbounds %struct.cls_bpf_prog, ptr %oldprog, i32 0, i32 4
  %in_hw_count37 = getelementptr inbounds %struct.cls_bpf_prog, ptr %oldprog, i32 0, i32 5
  %call38 = call i32 @tc_setup_cb_destroy(ptr noundef %3, ptr noundef %tp, i32 noundef 4, ptr noundef nonnull %cls_bpf, i1 noundef zeroext %8, ptr noundef %gen_flags36, ptr noundef %in_hw_count37, i1 noundef zeroext true) #10
  br label %if.end53

if.end39:                                         ; preds = %if.then29, %if.then
  %err.0 = phi i32 [ %call27, %if.then ], [ %call33, %if.then29 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0)
  %tobool42.not = icmp eq i32 %err.0, 0
  br i1 %tobool42.not, label %if.end45, label %if.then43

if.then43:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  %call44 = call fastcc i32 @cls_bpf_offload_cmd(ptr noundef %tp, ptr noundef %oldprog, ptr noundef nonnull %prog, ptr noundef %extack)
  br label %cleanup

if.end45:                                         ; preds = %if.end39
  br i1 %8, label %land.lhs.true49, label %if.end45.if.end53_crit_edge

if.end45.if.end53_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true49:                                  ; preds = %if.end45
  %gen_flags50 = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 4
  %44 = ptrtoint ptr %gen_flags50 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %gen_flags50, align 4
  %and = and i32 %45, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool51.not = icmp eq i32 %and, 0
  br i1 %tobool51.not, label %land.lhs.true49.cleanup_crit_edge, label %land.lhs.true49.if.end53_crit_edge

land.lhs.true49.if.end53_crit_edge:               ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end53

land.lhs.true49.cleanup_crit_edge:                ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end53:                                         ; preds = %land.lhs.true49.if.end53_crit_edge, %if.end45.if.end53_crit_edge, %if.end45.thread
  br label %cleanup

cleanup:                                          ; preds = %if.end53, %land.lhs.true49.cleanup_crit_edge, %if.then43
  %retval.0 = phi i32 [ %err.0, %if.then43 ], [ 0, %if.end53 ], [ -22, %land.lhs.true49.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %cls_bpf) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_cb_replace(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_cb_add(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_cb_destroy(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cls_bpf_free_parms(ptr nocapture noundef readonly %prog) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %bpf_ops.i = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 9
  %0 = ptrtoint ptr %bpf_ops.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %bpf_ops.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  %2 = ptrtoint ptr %prog to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prog, align 4
  br i1 %tobool.not.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bpf_prog_put(ptr noundef %3) #10
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @bpf_prog_destroy(ptr noundef %3) #10
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %bpf_name = getelementptr inbounds %struct.cls_bpf_prog, ptr %prog, i32 0, i32 10
  %4 = ptrtoint ptr %bpf_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %bpf_name, align 4
  tail call void @kfree(ptr noundef %5) #10
  %6 = ptrtoint ptr %bpf_ops.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %bpf_ops.i, align 4
  tail call void @kfree(ptr noundef %7) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ref_tracker_free(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__put_net(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @bpf_prog_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @idr_alloc_u32(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @idr_replace(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @list_add_rcu(ptr noundef %new, ptr noundef %head) unnamed_addr #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %head to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head, align 4
  %call.i = tail call zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %head, ptr noundef %1) #10
  br i1 %call.i, label %if.end.i, label %entry.__list_add_rcu.exit_crit_edge

entry.__list_add_rcu.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_add_rcu.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %new to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %new, align 4
  %prev2.i = getelementptr inbounds %struct.list_head, ptr %new, i32 0, i32 1
  %3 = ptrtoint ptr %prev2.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %head, ptr %prev2.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !90
  %4 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %new, ptr %head, align 4
  %prev37.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %prev37.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %new, ptr %prev37.i, align 4
  br label %__list_add_rcu.exit

__list_add_rcu.exit:                              ; preds = %if.end.i, %entry.__list_add_rcu.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_validate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bpf_prog_create(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @bpf_prog_get_type_dev(i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_block_netif_keep_dst(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rtnl_is_locked() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_cb_reoffload(ptr noundef, ptr noundef, i1 noundef zeroext, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_dump(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_exts_dump_stats(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tc_setup_cb_call(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nla_reserve(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @skb_trim(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @register_tcf_proto_ops(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 16)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind readonly }
attributes #5 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !19, !20, !22, !24, !25, !27, !28, !30, !31, !33, !35, !36, !37, !38, !40, !42, !44, !46, !47, !48, !50, !52, !54}
!llvm.named.register.sp = !{!56}
!llvm.module.flags = !{!57, !58, !59, !60, !61, !62, !63, !64}
!llvm.ident = !{!65}

!0 = !{ptr @__UNIQUE_ID_file514, !1, !"__UNIQUE_ID_file514", i1 false, i1 false}
!1 = !{!"../net/sched/cls_bpf.c", i32 23, i32 1}
!2 = !{ptr @__UNIQUE_ID_license515, !1, !"__UNIQUE_ID_license515", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author516, !4, !"__UNIQUE_ID_author516", i1 false, i1 false}
!4 = !{!"../net/sched/cls_bpf.c", i32 24, i32 1}
!5 = !{ptr @__UNIQUE_ID_description517, !6, !"__UNIQUE_ID_description517", i1 false, i1 false}
!6 = !{!"../net/sched/cls_bpf.c", i32 25, i32 1}
!7 = !{ptr @__initcall__kmod_cls_bpf__526_719_cls_bpf_init_mod6, !8, !"__initcall__kmod_cls_bpf__526_719_cls_bpf_init_mod6", i1 false, i1 false}
!8 = !{!"../net/sched/cls_bpf.c", i32 719, i32 1}
!9 = !{ptr @__exitcall_cls_bpf_exit_mod, !10, !"__exitcall_cls_bpf_exit_mod", i1 false, i1 false}
!10 = !{!"../net/sched/cls_bpf.c", i32 720, i32 1}
!11 = !{ptr @cls_bpf_ops, !12, !"cls_bpf_ops", i1 false, i1 false}
!12 = !{!"../net/sched/cls_bpf.c", i32 694, i32 29}
!13 = distinct !{null, !14, !"__warned", i1 false, i1 false}
!14 = !{!"../net/sched/cls_bpf.c", i32 83, i32 30}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../net/sched/cls_bpf.c", i32 88, i32 2}
!19 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../include/linux/filter.h", i32 613, i32 2}
!22 = distinct !{null, !23, !"__already_done", i1 false, i1 false}
!23 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!24 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @xa_init_flags.__key, !26, !"__key", i1 false, i1 false}
!26 = !{!"../include/linux/xarray.h", i32 378, i32 2}
!27 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../net/sched/cls_bpf.c", i32 312, i32 30}
!30 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!31 = distinct !{null, !32, !"__warned", i1 false, i1 false}
!32 = !{!"../net/sched/cls_bpf.c", i32 287, i32 30}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../net/sched/cls_bpf.c", i32 220, i32 3}
!35 = !{ptr @.str.9, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @cls_bpf_stop_offload._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @cls_bpf_stop_offload._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = distinct !{null, !39, !"__warned", i1 false, i1 false}
!39 = !{!"../net/sched/cls_bpf.c", i32 324, i32 30}
!40 = distinct !{null, !41, !"__warned", i1 false, i1 false}
!41 = !{!"../net/sched/cls_bpf.c", i32 461, i32 30}
!42 = !{ptr @bpf_policy, !43, !"bpf_policy", i1 false, i1 false}
!43 = !{!"../net/sched/cls_bpf.c", i32 53, i32 32}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../include/net/sch_generic.h", i32 596, i32 2}
!46 = !{ptr @.str.10, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!48 = distinct !{null, !49, !"__warned", i1 false, i1 false}
!49 = !{!"../net/sched/cls_bpf.c", i32 302, i32 30}
!50 = distinct !{null, !51, !"__warned", i1 false, i1 false}
!51 = !{!"../net/sched/cls_bpf.c", i32 647, i32 30}
!52 = distinct !{null, !53, !"__warned", i1 false, i1 false}
!53 = !{!"../net/sched/cls_bpf.c", i32 665, i32 30}
!54 = !{ptr @.str.12, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../include/net/netlink.h", i32 991, i32 3}
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
!66 = !{i8 0, i8 2}
!67 = !{i64 2148968713, i64 2148968718, i64 2148968731, i64 2148968775, i64 2148968809, i64 2148968830}
!68 = !{i64 759036, i64 759097}
!69 = !{i64 2149879494}
!70 = !{i64 2149884426}
!71 = !{i64 2149906138}
!72 = !{i64 2149911030}
!73 = !{!"branch_weights", i32 2000, i32 1}
!74 = !{i64 2149987487}
!75 = !{i64 2149987812}
!76 = !{i64 761768}
!77 = !{!"branch_weights", i32 1, i32 2000}
!78 = !{i64 762053}
!79 = !{i64 2154579741, i64 2154580229, i64 2154579778, i64 2154579834, i64 2154579868, i64 2154579892, i64 2154579933, i64 2154579954, i64 2154579982, i64 2154580016}
!80 = !{i64 2157940720}
!81 = !{!"auto-init"}
!82 = !{i64 2157079643}
!83 = !{i64 862104, i64 862121, i64 862145, i64 862171, i64 862189}
!84 = !{i64 2157079987}
!85 = !{i64 2151896799}
!86 = !{i64 839869, i64 839893, i64 839914, i64 839931, i64 839948}
!87 = !{i64 2148444891}
!88 = !{i64 2148359331, i64 2148359363, i64 2148359392, i64 2148359426, i64 2148359457, i64 2148359480}
!89 = !{i64 2149321005}
!90 = !{i64 2151882847}
