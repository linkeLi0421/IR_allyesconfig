; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_ct.c_pt.bc'
source_filename = "../net/netfilter/nft_ct.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_object_type = type { ptr, ptr, %struct.list_head, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.nft_object_ops = type { ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.20, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { ptr, i32, i32, i32 }
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
%struct.seqcount = type { i32, %struct.lockdep_map }
%struct.ping_group_range = type { %struct.seqlock_t, [2 x %struct.kgid_t] }
%struct.kgid_t = type { i32 }
%struct.siphash_key_t = type { [2 x i64] }
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.105, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.105 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.95, i32, %struct.spinlock }
%union.anon.95 = type { %struct.anon.96 }
%struct.anon.96 = type { ptr, ptr }
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
%struct.nft_object = type { %struct.list_head, %struct.rhlist_head, %struct.nft_object_hash_key, i32, i64, i16, ptr, [80 x i8], ptr, [4 x i8], [0 x i8], [120 x i8] }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.nft_object_hash_key = type { ptr, ptr }
%struct.sk_buff = type { %union.anon.3, %union.anon.150, %union.anon.151, [48 x i8], %union.anon.152, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.154, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.150 = type { ptr }
%union.anon.151 = type { i64 }
%union.anon.152 = type { %struct.anon.153 }
%struct.anon.153 = type { i32, ptr }
%union.anon.154 = type { %struct.anon.155 }
%struct.anon.155 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.156, i32, i32, i32, i16, i16, %union.anon.158, i32, %union.anon.159, %union.anon.160, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.156 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i32 }
%union.anon.160 = type { i16 }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.167, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.112 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.112 = type { %union.nf_inet_addr, %union.anon.113, i8, i8 }
%union.anon.113 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.anon.167 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.nf_ct_timeout = type { i16, ptr, [0 x i8] }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.nf_conntrack_l4proto = type { i8, i8, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.anon.174, ptr }
%struct.anon.174 = type { ptr, ptr, i16, i16, ptr }
%struct.nf_conn_help = type { ptr, %struct.hlist_head, [4 x i8], [4 x i8], [32 x i8] }
%struct.nf_conntrack_expect = type { %struct.hlist_node, %struct.hlist_node, %struct.nf_conntrack_tuple, %struct.nf_conntrack_tuple_mask, ptr, ptr, ptr, %struct.timer_list, %struct.refcount_struct, i32, i32, %union.nf_inet_addr, %union.nf_conntrack_man_proto, i32, %struct.callback_head }
%struct.nf_conntrack_tuple_mask = type { %struct.anon.120 }
%struct.anon.120 = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto }
%struct.callback_head = type { ptr, ptr }
%struct.nf_conntrack_helper = type { %struct.hlist_node, [16 x i8], %struct.refcount_struct, ptr, ptr, %struct.nf_conntrack_tuple, ptr, ptr, ptr, ptr, i32, i32, i32, i16, [16 x i8] }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_ct = type { i16, %union.anon.175 }
%union.anon.175 = type { i8 }
%struct.nf_conn_counter = type { %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nf_conntrack_ecache = type { i32, i16, i16, i16, i8, i32 }

@nft_ct_timeout_obj_type = internal global %struct.nft_object_type { ptr null, ptr @nft_ct_timeout_obj_ops, %struct.list_head zeroinitializer, i32 7, i32 3, ptr null, ptr @nft_ct_timeout_policy }, section ".data..read_mostly", align 4
@nft_ct_expect_obj_type = internal global %struct.nft_object_type { ptr null, ptr @nft_ct_expect_obj_ops, %struct.list_head zeroinitializer, i32 9, i32 5, ptr null, ptr @nft_ct_expect_policy }, section ".data..read_mostly", align 4
@nft_ct_helper_obj_type = internal global %struct.nft_object_type { ptr null, ptr @nft_ct_helper_obj_ops, %struct.list_head zeroinitializer, i32 3, i32 3, ptr null, ptr @nft_ct_helper_policy }, section ".data..read_mostly", align 4
@nft_notrack_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_notrack_ops, %struct.list_head zeroinitializer, ptr @.str.3, ptr null, ptr null, i32 0, i8 0, i8 0 }, section ".data..read_mostly", align 4
@nft_ct_type = internal global %struct.nft_expr_type { ptr @nft_ct_select_ops, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @.str.4, ptr null, ptr @nft_ct_policy, i32 4, i8 0, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_ct__654_1343_nft_ct_module_init6 = internal global ptr @nft_ct_module_init, section ".initcall6.init", align 4
@__exitcall_nft_ct_module_exit = internal global ptr @nft_ct_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file655 = internal constant [33 x i8] c"nft_ct.file=net/netfilter/nft_ct\00", section ".modinfo", align 1
@__UNIQUE_ID_license656 = internal constant [19 x i8] c"nft_ct.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author657 = internal constant [48 x i8] c"nft_ct.author=Patrick McHardy <kaber@trash.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias658 = internal constant [25 x i8] c"nft_ct.alias=nft-expr-ct\00", section ".modinfo", align 1
@__UNIQUE_ID_alias659 = internal constant [30 x i8] c"nft_ct.alias=nft-expr-notrack\00", section ".modinfo", align 1
@__UNIQUE_ID_alias660 = internal constant [23 x i8] c"nft_ct.alias=nft-obj-3\00", section ".modinfo", align 1
@__UNIQUE_ID_alias661 = internal constant [23 x i8] c"nft_ct.alias=nft-obj-7\00", section ".modinfo", align 1
@__UNIQUE_ID_alias662 = internal constant [23 x i8] c"nft_ct.alias=nft-obj-9\00", section ".modinfo", align 1
@__UNIQUE_ID_description663 = internal constant [56 x i8] c"nft_ct.description=Netfilter nf_tables conntrack module\00", section ".modinfo", align 1
@__pcpu_unique_nft_ct_pcpu_template = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@nft_ct_pcpu_template = weak dso_local global ptr null, section ".data..percpu", align 4
@nft_ct_timeout_obj_ops = internal constant { %struct.nft_object_ops, [36 x i8] } { %struct.nft_object_ops { ptr @nft_ct_timeout_obj_eval, i32 8, ptr @nft_ct_timeout_obj_init, ptr @nft_ct_timeout_obj_destroy, ptr @nft_ct_timeout_obj_dump, ptr null, ptr @nft_ct_timeout_obj_type }, [36 x i8] zeroinitializer }, align 32
@nft_ct_timeout_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.28 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nf_ct_timeout_data.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"include/net/netfilter/nf_conntrack_timeout.h\00", [51 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nft_ct_expect_obj_ops = internal constant { %struct.nft_object_ops, [36 x i8] } { %struct.nft_object_ops { ptr @nft_ct_expect_obj_eval, i32 12, ptr @nft_ct_expect_obj_init, ptr @nft_ct_expect_obj_destroy, ptr @nft_ct_expect_obj_dump, ptr null, ptr @nft_ct_expect_obj_type }, [36 x i8] zeroinitializer }, align 32
@nft_ct_expect_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nft_ct_helper_obj_ops = internal constant { %struct.nft_object_ops, [36 x i8] } { %struct.nft_object_ops { ptr @nft_ct_helper_obj_eval, i32 12, ptr @nft_ct_helper_obj_init, ptr @nft_ct_helper_obj_destroy, ptr @nft_ct_helper_obj_dump, ptr null, ptr @nft_ct_helper_obj_type }, [36 x i8] zeroinitializer }, align 32
@nft_ct_helper_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 15, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 2, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nft_ct_helper_obj_eval.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"net/netfilter/nft_ct.c\00", [41 x i8] zeroinitializer }, align 32
@nft_notrack_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_notrack_eval, ptr null, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_notrack_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"notrack\00", [24 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"ct\00", [29 x i8] zeroinitializer }, align 32
@nft_ct_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@nft_ct_get_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_ct_get_eval, ptr null, i32 16, ptr @nft_ct_get_init, ptr null, ptr null, ptr @nft_ct_get_destroy, ptr null, ptr @nft_ct_get_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_ct_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_ct_set_zone_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_ct_set_zone_eval, ptr null, i32 16, ptr @nft_ct_set_init, ptr null, ptr null, ptr @nft_ct_set_destroy, ptr null, ptr @nft_ct_set_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_ct_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_ct_set_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_ct_set_eval, ptr null, i32 16, ptr @nft_ct_set_init, ptr null, ptr null, ptr @nft_ct_set_destroy, ptr null, ptr @nft_ct_set_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_ct_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_ct_get_eval.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nft_ct_pcpu_mutex = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @nft_ct_pcpu_mutex, i64 52), ptr getelementptr (i8, ptr @nft_ct_pcpu_mutex, i64 52) }, ptr @nft_ct_pcpu_mutex, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.6, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@nft_ct_pcpu_template_refcnt = internal unnamed_addr global i32 0, section ".data..read_mostly", align 4
@.str.5 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"nft_ct_pcpu_mutex.wait_lock\00", [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"nft_ct_pcpu_mutex\00", [46 x i8] zeroinitializer }, align 32
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@init_net = external dso_local global %struct.net, align 128
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.7 = internal global [7 x i64] [i64 5, i64 16, i64 1, i64 2, i64 5, i64 7, i64 10]
@__sancov_gen_cov_switch_values.8 = internal global [16 x i64] [i64 14, i64 8, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 10, i64 13, i64 14, i64 15, i64 16, i64 17, i64 23]
@__sancov_gen_cov_switch_values.9 = internal global [10 x i64] [i64 8, i64 8, i64 8, i64 9, i64 11, i64 12, i64 19, i64 20, i64 21, i64 22]
@__sancov_gen_cov_switch_values.10 = internal global [25 x i64] [i64 23, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22, i64 23]
@__sancov_gen_cov_switch_values.11 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 10]
@__sancov_gen_cov_switch_values.12 = internal global [14 x i64] [i64 12, i64 8, i64 8, i64 9, i64 11, i64 12, i64 14, i64 15, i64 16, i64 17, i64 19, i64 20, i64 21, i64 22]
@__sancov_gen_cov_switch_values.13 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.14 = internal global [7 x i64] [i64 5, i64 8, i64 3, i64 4, i64 13, i64 17, i64 18]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 8, i64 13, i64 17]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 8, i64 13, i64 17]
@__sancov_gen_cov_switch_values.17 = internal global [6 x i64] [i64 4, i64 8, i64 3, i64 4, i64 13, i64 18]
@___asan_gen_.18 = private unnamed_addr constant [23 x i8] c"nft_ct_timeout_obj_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 963, i32 36 }
@___asan_gen_.21 = private unnamed_addr constant [22 x i8] c"nft_ct_timeout_policy\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 955, i32 32 }
@___asan_gen_.28 = private unnamed_addr constant [48 x i8] c"../include/net/netfilter/nf_conntrack_timeout.h\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 38, i32 12 }
@___asan_gen_.30 = private unnamed_addr constant [22 x i8] c"nft_ct_expect_obj_ops\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 1274, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"nft_ct_expect_policy\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 1264, i32 32 }
@___asan_gen_.36 = private unnamed_addr constant [22 x i8] c"nft_ct_helper_obj_ops\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 1145, i32 36 }
@___asan_gen_.39 = private unnamed_addr constant [21 x i8] c"nft_ct_helper_policy\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 1137, i32 32 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 1090, i32 3 }
@___asan_gen_.45 = private unnamed_addr constant [16 x i8] c"nft_notrack_ops\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 784, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 791, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 760, i32 11 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"nft_ct_policy\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 342, i32 32 }
@___asan_gen_.57 = private unnamed_addr constant [15 x i8] c"nft_ct_get_ops\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 706, i32 34 }
@___asan_gen_.60 = private unnamed_addr constant [20 x i8] c"nft_ct_set_zone_ops\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 725, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [15 x i8] c"nft_ct_set_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 715, i32 34 }
@___asan_gen_.66 = private unnamed_addr constant [18 x i8] c"nft_ct_pcpu_mutex\00", align 1
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [26 x i8] c"../net/netfilter/nft_ct.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 44, i32 8 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @__UNIQUE_ID_alias658, ptr @__UNIQUE_ID_alias659, ptr @__UNIQUE_ID_alias660, ptr @__UNIQUE_ID_alias661, ptr @__UNIQUE_ID_alias662, ptr @__UNIQUE_ID_author657, ptr @__UNIQUE_ID_description663, ptr @__UNIQUE_ID_file655, ptr @__UNIQUE_ID_license656, ptr @__exitcall_nft_ct_module_exit, ptr @__initcall__kmod_nft_ct__654_1343_nft_ct_module_init6, ptr @nft_ct_module_exit, ptr @nft_ct_timeout_obj_ops, ptr @nft_ct_timeout_policy, ptr @.str, ptr @.str.1, ptr @nft_ct_expect_obj_ops, ptr @nft_ct_expect_policy, ptr @nft_ct_helper_obj_ops, ptr @nft_ct_helper_policy, ptr @.str.2, ptr @nft_notrack_ops, ptr @.str.3, ptr @.str.4, ptr @nft_ct_policy, ptr @nft_ct_get_ops, ptr @nft_ct_set_zone_ops, ptr @nft_ct_set_ops, ptr @nft_ct_pcpu_mutex, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_ct_timeout_obj_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_ct_timeout_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_ct_expect_obj_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_ct_expect_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_ct_helper_obj_ops to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_ct_helper_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_notrack_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_ct_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_ct_get_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_ct_set_zone_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_ct_set_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_ct_pcpu_mutex to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_ct_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @nft_unregister_obj(ptr noundef nonnull @nft_ct_timeout_obj_type) #14
  tail call void @nft_unregister_obj(ptr noundef nonnull @nft_ct_expect_obj_type) #14
  tail call void @nft_unregister_obj(ptr noundef nonnull @nft_ct_helper_obj_type) #14
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_notrack_type) #14
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_ct_type) #14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_ct_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_ct_type) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_notrack_type) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.end.err1_crit_edge, label %if.end4

if.end.err1_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @nft_register_obj(ptr noundef nonnull @nft_ct_helper_obj_type) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.err2_crit_edge, label %if.end8

if.end4.err2_crit_edge:                           ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #16
  br label %err2

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @nft_register_obj(ptr noundef nonnull @nft_ct_expect_obj_type) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.end8.err3_crit_edge, label %if.end12

if.end8.err3_crit_edge:                           ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #16
  br label %err3

if.end12:                                         ; preds = %if.end8
  %call13 = tail call i32 @nft_register_obj(ptr noundef nonnull @nft_ct_timeout_obj_type) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %cmp14 = icmp slt i32 %call13, 0
  br i1 %cmp14, label %err4, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err4:                                             ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @nft_unregister_obj(ptr noundef nonnull @nft_ct_expect_obj_type) #14
  br label %err3

err3:                                             ; preds = %err4, %if.end8.err3_crit_edge
  %err.0 = phi i32 [ %call9, %if.end8.err3_crit_edge ], [ %call13, %err4 ]
  tail call void @nft_unregister_obj(ptr noundef nonnull @nft_ct_helper_obj_type) #14
  br label %err2

err2:                                             ; preds = %err3, %if.end4.err2_crit_edge
  %err.1 = phi i32 [ %call5, %if.end4.err2_crit_edge ], [ %err.0, %err3 ]
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_notrack_type) #14
  br label %err1

err1:                                             ; preds = %err2, %if.end.err1_crit_edge
  %err.2 = phi i32 [ %call1, %if.end.err1_crit_edge ], [ %err.1, %err2 ]
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_ct_type) #14
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end12.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.2, %err1 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end12.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_ct_timeout_obj_eval(ptr nocapture noundef readonly %obj, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %_nfct.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_nfct.i, align 8
  %and.i = and i32 %3, -8
  %4 = inttoptr i32 %and.i to ptr
  %l4proto = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 4
  %5 = ptrtoint ptr %l4proto to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %l4proto, align 4
  %tprot = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %7 = ptrtoint ptr %tprot to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tprot, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %6, i8 %8)
  %cmp.not = icmp ne i8 %6, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %or.cond = select i1 %cmp.not, i1 true, i1 %tobool.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %4, i32 0, i32 5
  %9 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %status.i, align 8
  %11 = and i32 %10, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool5.not = icmp eq i32 %11, 0
  br i1 %tobool5.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %status.i, align 8
  %14 = and i32 %13, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool8.not = icmp eq i32 %14, 0
  br i1 %tobool8.not, label %if.end10, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end10:                                         ; preds = %lor.lhs.false6
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %4, i32 0, i32 13
  %15 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %16, null
  br i1 %tobool.not.i.i.i, label %if.end10.if.then13_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.end10.if.then13_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.end10
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %16, i32 0, i32 6
  %17 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i.i.not.i.i = icmp eq i8 %18, 0
  %conv.i.i = zext i8 %18 to i32
  %add.ptr.i.i = getelementptr i8, ptr %16, i32 %conv.i.i
  %tobool12.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond86 = select i1 %tobool.i.i.not.i.i, i1 true, i1 %tobool12.not
  br i1 %or.cond86, label %nf_ct_ext_exist.exit.i.i.if.then13_crit_edge, label %nf_ct_ext_exist.exit.i.i.do.body_crit_edge

nf_ct_ext_exist.exit.i.i.do.body_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

nf_ct_ext_exist.exit.i.i.if.then13_crit_edge:     ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.then13

if.then13:                                        ; preds = %nf_ct_ext_exist.exit.i.i.if.then13_crit_edge, %if.end10.if.then13_crit_edge
  %19 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %data.i, align 4
  %call.i = tail call ptr @nf_ct_ext_add(ptr noundef nonnull %4, i32 noundef 6, i32 noundef 2592) #14
  %cmp.i = icmp eq ptr %call.i, null
  br i1 %cmp.i, label %if.then17, label %nf_ct_timeout_ext_add.exit

nf_ct_timeout_ext_add.exit:                       ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !85
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %20, ptr %call.i, align 4
  br label %do.body

if.then17:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #16
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %regs, align 4
  br label %cleanup

do.body:                                          ; preds = %nf_ct_timeout_ext_add.exit, %nf_ct_ext_exist.exit.i.i.do.body_crit_edge
  %timeout.0 = phi ptr [ %call.i, %nf_ct_timeout_ext_add.exit ], [ %add.ptr.i.i, %nf_ct_ext_exist.exit.i.i.do.body_crit_edge ]
  %23 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %data.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !86
  %25 = ptrtoint ptr %timeout.0 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %24, ptr %timeout.0, align 4
  %26 = load volatile ptr, ptr %timeout.0, align 4
  %call.i81 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool.not.i = icmp eq i32 %call.i81, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %do.body.nf_ct_timeout_data.exit_crit_edge

do.body.nf_ct_timeout_data.exit_crit_edge:        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %nf_ct_timeout_data.exit

land.lhs.true.i:                                  ; preds = %do.body
  %call3.i = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %tobool4.not.i = icmp eq i32 %call3.i, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.nf_ct_timeout_data.exit_crit_edge, label %land.lhs.true5.i

land.lhs.true.i.nf_ct_timeout_data.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nf_ct_timeout_data.exit

land.lhs.true5.i:                                 ; preds = %land.lhs.true.i
  %.b13.i = load i1, ptr @nf_ct_timeout_data.__warned, align 1
  br i1 %.b13.i, label %land.lhs.true5.i.nf_ct_timeout_data.exit_crit_edge, label %if.then.i

land.lhs.true5.i.nf_ct_timeout_data.exit_crit_edge: ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nf_ct_timeout_data.exit

if.then.i:                                        ; preds = %land.lhs.true5.i
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nf_ct_timeout_data.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 38, ptr noundef nonnull @.str.1) #14
  br label %nf_ct_timeout_data.exit

nf_ct_timeout_data.exit:                          ; preds = %if.then.i, %land.lhs.true5.i.nf_ct_timeout_data.exit_crit_edge, %land.lhs.true.i.nf_ct_timeout_data.exit_crit_edge, %do.body.nf_ct_timeout_data.exit_crit_edge
  %cmp.i82 = icmp eq ptr %26, null
  %data.i83 = getelementptr inbounds %struct.nf_ct_timeout, ptr %26, i32 0, i32 2
  %tobool58.not87 = icmp eq ptr %data.i83, null
  %tobool58.not = select i1 %cmp.i82, i1 true, i1 %tobool58.not87
  br i1 %tobool58.not, label %nf_ct_timeout_data.exit.cleanup_crit_edge, label %if.then59

nf_ct_timeout_data.exit.cleanup_crit_edge:        ; preds = %nf_ct_timeout_data.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then59:                                        ; preds = %nf_ct_timeout_data.exit
  call void @__sanitizer_cov_trace_pc() #16
  %27 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %pkt, align 4
  %29 = ptrtoint ptr %data.i83 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data.i83, align 4
  tail call void @__nf_ct_refresh_acct(ptr noundef nonnull %4, i32 noundef 0, ptr noundef %28, i32 noundef %30, i1 noundef zeroext false) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then59, %nf_ct_timeout_data.exit.cleanup_crit_edge, %if.then17, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_ct_timeout_obj_init(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %tb, ptr nocapture noundef writeonly %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 2
  %conv = zext i8 %1 to i16
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 3
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %5, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.end.if.end9_crit_edge, label %if.then5

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 2
  br label %if.end9

if.end9:                                          ; preds = %if.then5, %if.end.if.end9_crit_edge
  %l3num.0 = phi i16 [ %9, %if.then5 ], [ %conv, %if.end.if.end9_crit_edge ]
  %add.ptr.i.i69 = getelementptr i8, ptr %3, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i69 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i.i69, align 1
  %l4proto12 = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 4
  %12 = ptrtoint ptr %l4proto12 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %l4proto12, align 4
  %call13 = tail call ptr @nf_ct_l4proto_find(i8 noundef zeroext %11) #14
  %13 = ptrtoint ptr %call13 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %call13, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %11)
  %cmp.not = icmp eq i8 %14, %11
  br i1 %cmp.not, label %if.end8.i.i, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end9
  %obj_size = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call13, i32 0, i32 10, i32 2
  %15 = ptrtoint ptr %obj_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %obj_size, align 4
  %conv20 = zext i16 %16 to i32
  %add = add nuw nsw i32 %conv20, 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #17
  %cmp22 = icmp eq ptr %call9.i.i, null
  br i1 %cmp22, label %if.end8.i.i.cleanup_crit_edge, label %if.end25

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end25:                                         ; preds = %if.end8.i.i
  %data = getelementptr inbounds %struct.nf_ct_timeout, ptr %call9.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctx, align 4
  %19 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx1, align 4
  %ctnl_timeout.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call13, i32 0, i32 10
  %nlattr_max.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call13, i32 0, i32 10, i32 3
  %21 = ptrtoint ptr %nlattr_max.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %nlattr_max.i, align 2
  %conv.i = zext i16 %22 to i32
  %add.i = shl nuw nsw i32 %conv.i, 2
  %23 = add nuw nsw i32 %add.i, 4
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %23, i32 noundef 3520) #17
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end25.err_free_timeout_crit_edge, label %if.end.i

if.end25.err_free_timeout_crit_edge:              ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_timeout

if.end.i:                                         ; preds = %if.end25
  %24 = ptrtoint ptr %nlattr_max.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %nlattr_max.i, align 2
  %conv3.i = zext i16 %25 to i32
  %nla_policy.i = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %call13, i32 0, i32 10, i32 4
  %26 = ptrtoint ptr %nla_policy.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %nla_policy.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 4
  %28 = ptrtoint ptr %20 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %20, align 2
  %conv.i.i.i = zext i16 %29 to i32
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  %call2.i.i = tail call i32 @__nla_parse(ptr noundef nonnull %call8.i.i.i, i32 noundef %conv3.i, ptr noundef %add.ptr.i.i.i, i32 noundef %sub.i.i.i, ptr noundef %27, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %cmp.i = icmp slt i32 %call2.i.i, 0
  br i1 %cmp.i, label %nft_ct_timeout_parse_policy.exit.thread72, label %nft_ct_timeout_parse_policy.exit

nft_ct_timeout_parse_policy.exit.thread72:        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #14
  br label %err_free_timeout

nft_ct_timeout_parse_policy.exit:                 ; preds = %if.end.i
  %30 = ptrtoint ptr %ctnl_timeout.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ctnl_timeout.i, align 4
  %call10.i = tail call i32 %31(ptr noundef nonnull %call8.i.i.i, ptr noundef %18, ptr noundef %data) #14
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp28 = icmp slt i32 %call10.i, 0
  br i1 %cmp28, label %nft_ct_timeout_parse_policy.exit.err_free_timeout_crit_edge, label %if.end31

nft_ct_timeout_parse_policy.exit.err_free_timeout_crit_edge: ; preds = %nft_ct_timeout_parse_policy.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_timeout

if.end31:                                         ; preds = %nft_ct_timeout_parse_policy.exit
  %32 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %l3num.0, ptr %call9.i.i, align 128
  %l4proto34 = getelementptr inbounds %struct.nf_ct_timeout, ptr %call9.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %l4proto34 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call13, ptr %l4proto34, align 4
  %34 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ctx, align 4
  %36 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %family, align 2
  %call37 = tail call i32 @nf_ct_netns_get(ptr noundef %35, i8 noundef zeroext %37) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end31.err_free_timeout_crit_edge, label %if.end41

if.end31.err_free_timeout_crit_edge:              ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  br label %err_free_timeout

if.end41:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #16
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call9.i.i, ptr %data.i, align 4
  br label %cleanup

err_free_timeout:                                 ; preds = %if.end31.err_free_timeout_crit_edge, %nft_ct_timeout_parse_policy.exit.err_free_timeout_crit_edge, %nft_ct_timeout_parse_policy.exit.thread72, %if.end25.err_free_timeout_crit_edge
  %ret.0 = phi i32 [ %call10.i, %nft_ct_timeout_parse_policy.exit.err_free_timeout_crit_edge ], [ %call37, %if.end31.err_free_timeout_crit_edge ], [ %call2.i.i, %nft_ct_timeout_parse_policy.exit.thread72 ], [ -12, %if.end25.err_free_timeout_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #14
  br label %cleanup

cleanup:                                          ; preds = %err_free_timeout, %if.end41, %if.end8.i.i.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %ret.0, %err_free_timeout ], [ -95, %if.end9.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_ct_timeout_obj_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  tail call void @nf_ct_untimeout(ptr noundef %3, ptr noundef %1) #14
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %family, align 2
  tail call void @nf_ct_netns_put(ptr noundef %5, i8 noundef zeroext %7) #14
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data.i, align 4
  tail call void @kfree(ptr noundef %9) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_ct_timeout_obj_dump(ptr noundef %skb, ptr nocapture noundef readonly %obj, i1 noundef zeroext %reset) #2 align 64 {
entry:
  %tmp.i26 = alloca i16, align 2
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %l4proto = getelementptr inbounds %struct.nf_ct_timeout, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %l4proto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %l4proto, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #14
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %1, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i26) #14
  %9 = ptrtoint ptr %tmp.i26 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %tmp.i26, align 2
  %call.i27 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i26) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i26) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool5.not = icmp eq i32 %call.i27, 0
  br i1 %tobool5.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %tail.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %10 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tail.i.i.i, align 8
  %call1.i.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 32771, i32 noundef 0, ptr noundef null) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %cmp.i.i = icmp slt i32 %call1.i.i, 0
  %tobool7.not28 = icmp eq ptr %11, null
  %tobool7.not = select i1 %cmp.i.i, i1 true, i1 %tobool7.not28
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %12 = ptrtoint ptr %l4proto to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %l4proto, align 4
  %obj_to_nlattr = getelementptr inbounds %struct.nf_conntrack_l4proto, ptr %13, i32 0, i32 10, i32 1
  %14 = ptrtoint ptr %obj_to_nlattr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %obj_to_nlattr, align 4
  %data = getelementptr inbounds %struct.nf_ct_timeout, ptr %1, i32 0, i32 2
  %call11 = call i32 %15(ptr noundef %skb, ptr noundef %data) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.end9.cleanup_crit_edge, label %if.end13

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %16 = ptrtoint ptr %tail.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tail.i.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %11 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %conv.i, ptr %11, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end13 ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_ext_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__nf_ct_refresh_acct(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_l4proto_find(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_netns_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nla_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_untimeout(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_netns_put(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_ct_expect_obj_eval(ptr noundef %obj, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data.i, align 4
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pkt, align 4
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %_nfct.i.i, align 8
  %and.i = and i32 %5, 7
  %and1.i = and i32 %5, -8
  %6 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.cleanup.sink.split_crit_edge, label %lor.lhs.false

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

lor.lhs.false:                                    ; preds = %entry
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %6, i32 0, i32 5
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %status.i, align 8
  %9 = and i32 %8, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool4.not = icmp eq i32 %9, 0
  br i1 %tobool4.not, label %lor.lhs.false5, label %lor.lhs.false.cleanup.sink.split_crit_edge

lor.lhs.false.cleanup.sink.split_crit_edge:       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status.i, align 8
  %12 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool7.not = icmp eq i32 %12, 0
  br i1 %tobool7.not, label %if.end, label %lor.lhs.false5.cleanup.sink.split_crit_edge

lor.lhs.false5.cleanup.sink.split_crit_edge:      ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end:                                           ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp = icmp ult i32 %and.i, 3
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %6, i32 0, i32 13
  %13 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i.i, label %if.end.if.end12_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.end
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %14, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.i.i.not.i.i = icmp eq i8 %16, 0
  %conv.i.i = zext i8 %16 to i32
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %conv.i.i
  %tobool9.not = icmp eq ptr %add.ptr.i.i, null
  %or.cond = select i1 %tobool.i.i.not.i.i, i1 true, i1 %tobool9.not
  br i1 %or.cond, label %nf_ct_ext_exist.exit.i.i.if.end12_crit_edge, label %nf_ct_ext_exist.exit.i.i.if.end16_crit_edge

nf_ct_ext_exist.exit.i.i.if.end16_crit_edge:      ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

nf_ct_ext_exist.exit.i.i.if.end12_crit_edge:      ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end12

if.end12:                                         ; preds = %nf_ct_ext_exist.exit.i.i.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %call11 = tail call ptr @nf_ct_helper_ext_add(ptr noundef nonnull %6, i32 noundef 2592) #14
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %if.end12.cleanup.sink.split_crit_edge, label %if.end12.if.end16_crit_edge

if.end12.if.end16_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end16

if.end12.cleanup.sink.split_crit_edge:            ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end12.if.end16_crit_edge, %nf_ct_ext_exist.exit.i.i.if.end16_crit_edge
  %help.089 = phi ptr [ %call11, %if.end12.if.end16_crit_edge ], [ %add.ptr.i.i, %nf_ct_ext_exist.exit.i.i.if.end16_crit_edge ]
  %expecting = getelementptr inbounds %struct.nf_conn_help, ptr %help.089, i32 0, i32 2
  %17 = ptrtoint ptr %expecting to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %expecting, align 8
  %size = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 5
  %19 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %size, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %18, i8 %20)
  %cmp18.not = icmp ult i8 %18, %20
  br i1 %cmp18.not, label %if.end22, label %if.end16.cleanup.sink.split_crit_edge

if.end16.cleanup.sink.split_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end22:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %1)
  %cmp24 = icmp eq i16 %1, 1
  %extract.t81 = trunc i16 %1 to i8
  br i1 %cmp24, label %if.then26, label %if.end22.if.end28_crit_edge

if.end22.if.end28_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end28

if.then26:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #16
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %6, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %21 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %l3num.i, align 2
  %extract.t = trunc i16 %22 to i8
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end22.if.end28_crit_edge
  %l3num.0.off0 = phi i8 [ %extract.t, %if.then26 ], [ %extract.t81, %if.end22.if.end28_crit_edge ]
  %call29 = tail call ptr @nf_ct_expect_alloc(ptr noundef nonnull %6) #14
  %cmp30 = icmp eq ptr %call29, null
  br i1 %cmp30, label %if.end28.cleanup.sink.split_crit_edge, label %if.end34

if.end28.cleanup.sink.split_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end34:                                         ; preds = %if.end28
  %lnot.ext = zext i1 %cmp to i32
  %tuple = getelementptr %struct.nf_conn, ptr %6, i32 0, i32 4, i32 %lnot.ext, i32 1
  %dst = getelementptr %struct.nf_conn, ptr %6, i32 0, i32 4, i32 %lnot.ext, i32 1, i32 1
  %l4proto = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 4
  %23 = ptrtoint ptr %l4proto to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %l4proto, align 4
  %dport = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 2
  tail call void @nf_ct_expect_init(ptr noundef nonnull %call29, i32 noundef 0, i8 noundef zeroext %l3num.0.off0, ptr noundef %tuple, ptr noundef %dst, i8 noundef zeroext %24, ptr noundef null, ptr noundef %dport) #14
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %timeout = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 8
  %26 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %timeout, align 4
  %mul = mul i32 %27, 100
  %add = add i32 %mul, %25
  %expires = getelementptr inbounds %struct.nf_conntrack_expect, ptr %call29, i32 0, i32 7, i32 1
  %28 = ptrtoint ptr %expires to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %expires, align 4
  %call.i = tail call i32 @nf_ct_expect_related_report(ptr noundef nonnull %call29, i32 noundef 0, i32 noundef 0, i32 noundef 0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp47.not = icmp eq i32 %call.i, 0
  br i1 %cmp47.not, label %if.end34.cleanup_crit_edge, label %if.end34.cleanup.sink.split_crit_edge

if.end34.cleanup.sink.split_crit_edge:            ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup.sink.split

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end34.cleanup.sink.split_crit_edge, %if.end28.cleanup.sink.split_crit_edge, %if.end16.cleanup.sink.split_crit_edge, %if.end12.cleanup.sink.split_crit_edge, %lor.lhs.false5.cleanup.sink.split_crit_edge, %lor.lhs.false.cleanup.sink.split_crit_edge, %entry.cleanup.sink.split_crit_edge
  %.sink = phi i32 [ -2, %lor.lhs.false5.cleanup.sink.split_crit_edge ], [ -2, %lor.lhs.false.cleanup.sink.split_crit_edge ], [ -2, %entry.cleanup.sink.split_crit_edge ], [ 0, %if.end12.cleanup.sink.split_crit_edge ], [ -2, %if.end16.cleanup.sink.split_crit_edge ], [ 0, %if.end28.cleanup.sink.split_crit_edge ], [ 0, %if.end34.cleanup.sink.split_crit_edge ]
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %.sink, ptr %regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end34.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_ct_expect_obj_init(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %tb, ptr nocapture noundef writeonly %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 4
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %5, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 5
  %6 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %7, null
  br i1 %tobool8.not, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %8 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %family, align 2
  %conv = zext i8 %9 to i16
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %data.i, align 4
  %arrayidx9 = getelementptr ptr, ptr %tb, i32 1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %if.end.if.end15_crit_edge, label %if.then11

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i, align 2
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %14, ptr %data.i, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end.if.end15_crit_edge
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i42 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i42 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %add.ptr.i.i42, align 1
  %l4proto = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 4
  %20 = ptrtoint ptr %l4proto to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %19, ptr %l4proto, align 4
  %21 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx1, align 4
  %add.ptr.i.i43 = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i43 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %add.ptr.i.i43, align 2
  %dport = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 2
  %25 = ptrtoint ptr %dport to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %24, ptr %dport, align 2
  %26 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx4, align 4
  %add.ptr.i.i44 = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i44 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i44, align 4
  %timeout = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 8
  %30 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %timeout, align 4
  %31 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx7, align 4
  %add.ptr.i.i45 = getelementptr i8, ptr %32, i32 4
  %33 = ptrtoint ptr %add.ptr.i.i45 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %add.ptr.i.i45, align 1
  %size = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 5
  %35 = ptrtoint ptr %size to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %34, ptr %size, align 1
  %36 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ctx, align 4
  %38 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %family, align 2
  %call25 = tail call i32 @nf_ct_netns_get(ptr noundef %37, i8 noundef zeroext %39) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call25, %if.end15 ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_ct_expect_obj_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 2
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_ct_expect_obj_dump(ptr noundef %skb, ptr nocapture noundef readonly %obj, i1 noundef zeroext %reset) #2 align 64 {
entry:
  %tmp.i27 = alloca i8, align 1
  %tmp.i25 = alloca i32, align 4
  %tmp.i23 = alloca i16, align 2
  %tmp.i21 = alloca i8, align 1
  %tmp.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data.i, align 4
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i) #14
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %tmp.i, align 2
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 2, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %l4proto = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 4
  %3 = ptrtoint ptr %l4proto to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %l4proto, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i21) #14
  %5 = ptrtoint ptr %tmp.i21 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %tmp.i21, align 1
  %call.i22 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i21) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i21) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i22)
  %tobool3.not = icmp eq i32 %call.i22, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %dport = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 2
  %6 = ptrtoint ptr %dport to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %dport, align 2
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i23) #14
  %8 = ptrtoint ptr %tmp.i23 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %tmp.i23, align 2
  %call.i24 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 2, ptr noundef nonnull %tmp.i23) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i24)
  %tobool6.not = icmp eq i32 %call.i24, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %timeout = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 8
  %9 = ptrtoint ptr %timeout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %timeout, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i25) #14
  %11 = ptrtoint ptr %tmp.i25 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %tmp.i25, align 4
  %call.i26 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i25) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i25) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i26)
  %tobool9.not = icmp eq i32 %call.i26, 0
  br i1 %tobool9.not, label %lor.lhs.false10, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #16
  %size = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 5
  %12 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %size, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i27) #14
  %14 = ptrtoint ptr %tmp.i27 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %13, ptr %tmp.i27, align 1
  %call.i28 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 1, ptr noundef nonnull %tmp.i27) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i27) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i28)
  %tobool12.not = icmp ne i32 %call.i28, 0
  %spec.select = sext i1 %tobool12.not to i32
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false10, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %lor.lhs.false7.cleanup_crit_edge ], [ -1, %lor.lhs.false4.cleanup_crit_edge ], [ -1, %lor.lhs.false.cleanup_crit_edge ], [ -1, %entry.cleanup_crit_edge ], [ %spec.select, %lor.lhs.false10 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_helper_ext_add(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_expect_alloc(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_expect_init(ptr noundef, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_expect_related_report(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_ct_helper_obj_eval(ptr nocapture noundef readonly %obj, ptr nocapture noundef readnone %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %_nfct.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_nfct.i, align 8
  %and.i = and i32 %3, -8
  %4 = inttoptr i32 %and.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %status.i, align 8
  %7 = and i32 %6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3.not = icmp eq i32 %7, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %8 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %status.i, align 8
  %10 = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %lor.lhs.false7, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false7:                                   ; preds = %lor.lhs.false4
  %l4proto = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 8
  %11 = ptrtoint ptr %l4proto to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %l4proto, align 4
  %protonum.i = getelementptr inbounds %struct.nf_conn, ptr %4, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %13 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %protonum.i, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %12, i8 %14)
  %cmp.not = icmp eq i8 %12, %14
  br i1 %cmp.not, label %if.end, label %lor.lhs.false7.cleanup_crit_edge

lor.lhs.false7.cleanup_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false7
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %4, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %15 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %l3num.i, align 2
  %17 = zext i16 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values)
  switch i16 %16, label %land.end [
    i16 2, label %if.end.sw.epilog_crit_edge
    i16 10, label %sw.bb13
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %helper6 = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 4
  br label %sw.epilog

land.end:                                         ; preds = %if.end
  %.b116 = load i1, ptr @nft_ct_helper_obj_eval.__already_done, align 1
  br i1 %.b116, label %land.end.cleanup_crit_edge, label %if.then20, !prof !87

land.end.cleanup_crit_edge:                       ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then20:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nft_ct_helper_obj_eval.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1090, i32 noundef 9, ptr noundef null) #14
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb13, %if.end.sw.epilog_crit_edge
  %to_assign.0.in = phi ptr [ %helper6, %sw.bb13 ], [ %data.i, %if.end.sw.epilog_crit_edge ]
  %18 = ptrtoint ptr %to_assign.0.in to i32
  call void @__asan_load4_noabort(i32 %18)
  %to_assign.0 = load ptr, ptr %to_assign.0.in, align 4
  %tobool50.not = icmp eq ptr %to_assign.0, null
  br i1 %tobool50.not, label %sw.epilog.cleanup_crit_edge, label %if.end52

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end52:                                         ; preds = %sw.epilog
  %19 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %status.i, align 8
  %21 = and i32 %20, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool54.not = icmp eq i32 %21, 0
  br i1 %tobool54.not, label %if.end56, label %if.end52.cleanup_crit_edge

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end56:                                         ; preds = %if.end52
  %call57 = tail call ptr @nf_ct_helper_ext_add(ptr noundef nonnull %4, i32 noundef 2592) #14
  %tobool58.not = icmp eq ptr %call57, null
  br i1 %tobool58.not, label %if.end56.cleanup_crit_edge, label %do.body60

if.end56.cleanup_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

do.body60:                                        ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !88
  %22 = ptrtoint ptr %call57 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %to_assign.0, ptr %call57, align 8
  tail call void @_set_bit(i32 noundef 13, ptr noundef %status.i) #14
  br label %cleanup

cleanup:                                          ; preds = %do.body60, %if.end56.cleanup_crit_edge, %if.end52.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.then20, %land.end.cleanup_crit_edge, %lor.lhs.false7.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_ct_helper_obj_init(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %tb, ptr nocapture noundef %obj) #2 align 64 {
entry:
  %name = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %name) #14
  %family1 = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %0 = call ptr @memset(ptr %name, i32 255, i32 16)
  %1 = ptrtoint ptr %family1 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %family1, align 2
  %conv = zext i8 %2 to i16
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %tb, i32 3
  %5 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx2, align 4
  %tobool3.not = icmp eq ptr %6, null
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %add.ptr.i.i = getelementptr i8, ptr %6, i32 4
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %add.ptr.i.i, align 1
  %l4proto = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 8
  %9 = ptrtoint ptr %l4proto to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %l4proto, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %call11 = call i32 @nla_strscpy(ptr noundef nonnull %name, ptr noundef %11, i32 noundef 16) #14
  %arrayidx12 = getelementptr ptr, ptr %tb, i32 2
  %12 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %13, null
  br i1 %tobool13.not, label %if.end9.if.end18_crit_edge, label %if.then14

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end18

if.then14:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i99 = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i99 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %add.ptr.i.i99, align 2
  br label %if.end18

if.end18:                                         ; preds = %if.then14, %if.end9.if.end18_crit_edge
  %family.0 = phi i16 [ %15, %if.then14 ], [ %conv, %if.end9.if.end18_crit_edge ]
  %16 = zext i16 %family.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.7)
  switch i16 %family.0, label %if.end18.cleanup_crit_edge [
    i16 2, label %sw.bb
    i16 10, label %sw.bb28
    i16 5, label %if.end18.sw.bb39_crit_edge
    i16 7, label %if.end18.sw.bb39_crit_edge100
    i16 1, label %if.end18.sw.bb39_crit_edge101
  ]

if.end18.sw.bb39_crit_edge101:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb39

if.end18.sw.bb39_crit_edge100:                    ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb39

if.end18.sw.bb39_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb39

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end18
  %17 = ptrtoint ptr %family1 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %family1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %18)
  %cmp = icmp eq i8 %18, 10
  br i1 %cmp, label %sw.bb.cleanup_crit_edge, label %if.end23

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end23:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %19 = ptrtoint ptr %l4proto to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %l4proto, align 4
  %call27 = call ptr @nf_conntrack_helper_try_module_get(ptr noundef nonnull %name, i16 noundef zeroext 2, i8 noundef zeroext %20) #14
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end18
  %21 = ptrtoint ptr %family1 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %family1, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %22)
  %cmp31 = icmp eq i8 %22, 2
  br i1 %cmp31, label %sw.bb28.cleanup_crit_edge, label %if.end34

sw.bb28.cleanup_crit_edge:                        ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end34:                                         ; preds = %sw.bb28
  call void @__sanitizer_cov_trace_pc() #16
  %23 = ptrtoint ptr %l4proto to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %l4proto, align 4
  %call38 = call ptr @nf_conntrack_helper_try_module_get(ptr noundef nonnull %name, i16 noundef zeroext 10, i8 noundef zeroext %24) #14
  br label %sw.epilog

sw.bb39:                                          ; preds = %if.end18.sw.bb39_crit_edge, %if.end18.sw.bb39_crit_edge100, %if.end18.sw.bb39_crit_edge101
  %25 = ptrtoint ptr %l4proto to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %l4proto, align 4
  %call42 = call ptr @nf_conntrack_helper_try_module_get(ptr noundef nonnull %name, i16 noundef zeroext 2, i8 noundef zeroext %26) #14
  %27 = ptrtoint ptr %l4proto to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %l4proto, align 4
  %call45 = call ptr @nf_conntrack_helper_try_module_get(ptr noundef nonnull %name, i16 noundef zeroext 10, i8 noundef zeroext %28) #14
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb39, %if.end34, %if.end23
  %help4.0 = phi ptr [ %call42, %sw.bb39 ], [ null, %if.end34 ], [ %call27, %if.end23 ]
  %help6.0 = phi ptr [ %call45, %sw.bb39 ], [ %call38, %if.end34 ], [ null, %if.end23 ]
  %tobool46.not = icmp eq ptr %help4.0, null
  %tobool47.not = icmp eq ptr %help6.0, null
  %or.cond = select i1 %tobool46.not, i1 %tobool47.not, i1 false
  br i1 %or.cond, label %sw.epilog.cleanup_crit_edge, label %if.end49

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end49:                                         ; preds = %sw.epilog
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %help4.0, ptr %data.i, align 4
  %helper6 = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 4
  %30 = ptrtoint ptr %helper6 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %help6.0, ptr %helper6, align 4
  %31 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ctx, align 4
  %33 = ptrtoint ptr %family1 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %family1, align 2
  %call51 = call i32 @nf_ct_netns_get(ptr noundef %32, i8 noundef zeroext %34) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp slt i32 %call51, 0
  br i1 %cmp52, label %err_put_helper, label %if.end49.cleanup_crit_edge

if.end49.cleanup_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

err_put_helper:                                   ; preds = %if.end49
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %data.i, align 4
  %tobool57.not = icmp eq ptr %36, null
  br i1 %tobool57.not, label %err_put_helper.if.end60_crit_edge, label %if.then58

err_put_helper.if.end60_crit_edge:                ; preds = %err_put_helper
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end60

if.then58:                                        ; preds = %err_put_helper
  call void @__sanitizer_cov_trace_pc() #16
  call void @nf_conntrack_helper_put(ptr noundef nonnull %36) #14
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %err_put_helper.if.end60_crit_edge
  %37 = ptrtoint ptr %helper6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %helper6, align 4
  %tobool62.not = icmp eq ptr %38, null
  br i1 %tobool62.not, label %if.end60.cleanup_crit_edge, label %if.then63

if.end60.cleanup_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then63:                                        ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #16
  call void @nf_conntrack_helper_put(ptr noundef nonnull %38) #14
  br label %cleanup

cleanup:                                          ; preds = %if.then63, %if.end60.cleanup_crit_edge, %if.end49.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %sw.bb28.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb28.cleanup_crit_edge ], [ -97, %if.end18.cleanup_crit_edge ], [ -2, %sw.epilog.cleanup_crit_edge ], [ 0, %if.end49.cleanup_crit_edge ], [ %call51, %if.then63 ], [ %call51, %if.end60.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %name) #14
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_ct_helper_obj_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %obj) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @nf_conntrack_helper_put(ptr noundef nonnull %1) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %helper6 = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 4
  %2 = ptrtoint ptr %helper6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %helper6, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @nf_conntrack_helper_put(ptr noundef nonnull %3) #14
  br label %if.end5

if.end5:                                          ; preds = %if.then3, %if.end.if.end5_crit_edge
  %4 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ctx, align 4
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %6 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %family, align 2
  tail call void @nf_ct_netns_put(ptr noundef %5, i8 noundef zeroext %7) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_ct_helper_obj_dump(ptr noundef %skb, ptr nocapture noundef readonly %obj, i1 noundef zeroext %reset) #2 align 64 {
entry:
  %tmp.i34 = alloca i16, align 2
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 10
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.else_crit_edge, label %land.lhs.true

entry.if.else_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

land.lhs.true:                                    ; preds = %entry
  %helper6 = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 4
  %2 = ptrtoint ptr %helper6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %helper6, align 4
  %tobool1.not = icmp eq ptr %3, null
  br i1 %tobool1.not, label %land.lhs.true.if.else_crit_edge, label %land.lhs.true.if.end9_crit_edge

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %entry.if.else_crit_edge
  %helper63 = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 4
  %4 = ptrtoint ptr %helper63 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %helper63, align 4
  %tobool4.not = icmp eq ptr %5, null
  %spec.select = select i1 %tobool4.not, ptr %1, ptr %5
  %spec.select36 = select i1 %tobool4.not, i16 2, i16 10
  br label %if.end9

if.end9:                                          ; preds = %if.else, %land.lhs.true.if.end9_crit_edge
  %helper.0 = phi ptr [ %1, %land.lhs.true.if.end9_crit_edge ], [ %spec.select, %if.else ]
  %family.0 = phi i16 [ 1, %land.lhs.true.if.end9_crit_edge ], [ %spec.select36, %if.else ]
  %name = getelementptr inbounds %struct.nf_conntrack_helper, ptr %helper.0, i32 0, i32 1
  %call.i = tail call i32 @strlen(ptr noundef %name) #18
  %add.i = add i32 %call.i, 1
  %call1.i = tail call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i, ptr noundef %name) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool11.not = icmp eq i32 %call1.i, 0
  br i1 %tobool11.not, label %if.end13, label %if.end9.cleanup_crit_edge

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end13:                                         ; preds = %if.end9
  %l4proto = getelementptr inbounds %struct.nft_object, ptr %obj, i32 0, i32 11, i32 8
  %6 = ptrtoint ptr %l4proto to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %l4proto, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #14
  %8 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %7, ptr %tmp.i, align 1
  %call.i33 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool15.not = icmp eq i32 %call.i33, 0
  br i1 %tobool15.not, label %if.end17, label %if.end13.cleanup_crit_edge

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %tmp.i34) #14
  %9 = ptrtoint ptr %tmp.i34 to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %family.0, ptr %tmp.i34, align 2
  %call.i35 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 2, ptr noundef nonnull %tmp.i34) #14
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %tmp.i34) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool19.not = icmp ne i32 %call.i35, 0
  %. = sext i1 %tobool19.not to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13.cleanup_crit_edge, %if.end9.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %if.end9.cleanup_crit_edge ], [ -1, %if.end13.cleanup_crit_edge ], [ %., %if.end17 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_strscpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_conntrack_helper_try_module_get(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_helper_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nft_notrack_eval(ptr nocapture noundef readnone %expr, ptr nocapture noundef readnone %regs, ptr nocapture noundef readonly %pkt) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_nfct.i.i, align 8
  %and.i = and i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %3)
  %tobool.not = icmp ugt i32 %3, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 7
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 3
  %4 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, 4096
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %5 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 7, ptr %_nfct.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nft_ct_select_ops(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %3, null
  %arrayidx11 = getelementptr ptr, ptr %tb, i32 4
  %4 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end10, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %spec.select = select i1 %tobool12.not, ptr @nft_ct_get_ops, ptr inttoptr (i32 -22 to ptr)
  br label %return

if.end10:                                         ; preds = %if.end
  br i1 %tobool12.not, label %if.end10.return_crit_edge, label %if.then13

if.end10.return_crit_edge:                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  br label %return

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %7)
  %cmp16 = icmp eq i32 %7, 17
  %nft_ct_set_zone_ops.nft_ct_set_ops = select i1 %cmp16, ptr @nft_ct_set_zone_ops, ptr @nft_ct_set_ops
  br label %return

return:                                           ; preds = %if.then13, %if.end10.return_crit_edge, %land.lhs.true, %entry.return_crit_edge
  %retval.0 = phi ptr [ %nft_ct_set_zone_ops.nft_ct_set_ops, %if.then13 ], [ inttoptr (i32 -22 to ptr), %entry.return_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end10.return_crit_edge ], [ %spec.select, %land.lhs.true ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_ct_get_eval(ptr nocapture noundef readonly %expr, ptr noundef %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = getelementptr inbounds %struct.nft_ct, ptr %data.i, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %0, align 2
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pkt, align 4
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_nfct.i.i, align 8
  %and.i = and i32 %6, 7
  %and1.i = and i32 %6, -8
  %7 = inttoptr i32 %and1.i to ptr
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %bf.load = load i16, ptr %data.i, align 4
  %bf.lshr = lshr i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %bf.load)
  %cond188 = icmp ult i16 %bf.load, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %cond188, label %sw.bb, label %sw.epilog

sw.bb:                                            ; preds = %entry
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  %rem.lhs.trunc = trunc i32 %and.i to i8
  %rem305 = urem i8 %rem.lhs.trunc, 3
  %rem.zext = zext i8 %rem305 to i32
  %shl = shl nuw nsw i32 2, %rem.zext
  br label %if.end4

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 7
  %. = select i1 %cmp, i32 64, i32 1
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.then
  %state.0 = phi i32 [ %shl, %if.then ], [ %., %if.else ]
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %state.0, ptr %arrayidx, align 4
  br label %cleanup

sw.epilog:                                        ; preds = %entry
  br i1 %tobool.not, label %sw.epilog.err_crit_edge, label %if.end7

sw.epilog.err_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end7:                                          ; preds = %sw.epilog
  %trunc = trunc i16 %bf.lshr to i8
  %10 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %trunc, label %sw.epilog112 [
    i8 1, label %sw.bb11
    i8 2, label %sw.bb13
    i8 3, label %sw.bb14
    i8 4, label %sw.bb15
    i8 5, label %sw.bb16
    i8 6, label %sw.bb19
    i8 13, label %sw.bb48
    i8 15, label %if.end7.sw.bb55_crit_edge
    i8 14, label %if.end7.sw.bb55_crit_edge306
    i8 16, label %sw.bb67
    i8 7, label %sw.bb90
    i8 10, label %sw.bb93
    i8 17, label %sw.bb95
    i8 23, label %sw.bb109
  ]

if.end7.sw.bb55_crit_edge306:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb55

if.end7.sw.bb55_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb55

sw.bb11:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp12 = icmp ugt i32 %and.i, 2
  %conv = zext i1 %cmp12 to i8
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %arrayidx, align 4
  store i8 %conv, ptr %arrayidx, align 1
  br label %cleanup

sw.bb13:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %status = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 5
  %12 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %status, align 8
  %14 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %arrayidx, align 4
  br label %cleanup

sw.bb14:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %mark = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 11
  %15 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mark, align 8
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx, align 4
  br label %cleanup

sw.bb15:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %secmark = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 12
  %18 = ptrtoint ptr %secmark to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %secmark, align 4
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx, align 4
  br label %cleanup

sw.bb16:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %timeout1.i = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 2
  %21 = ptrtoint ptr %timeout1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile i32, ptr %timeout1.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %23 = load volatile i32, ptr @jiffies, align 128
  %sub.i = sub i32 %22, %23
  %24 = tail call i32 @llvm.smax.i32(i32 %sub.i, i32 0) #14
  %call18 = tail call i32 @jiffies_to_msecs(i32 noundef %24) #14
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %call18, ptr %arrayidx, align 4
  br label %cleanup

sw.bb19:                                          ; preds = %if.end7
  %master = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 10
  %26 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %master, align 4
  %cmp20 = icmp eq ptr %27, null
  br i1 %cmp20, label %sw.bb19.err_crit_edge, label %if.end23

sw.bb19.err_crit_edge:                            ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end23:                                         ; preds = %sw.bb19
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %27, i32 0, i32 13
  %28 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i.i, label %if.end23.err_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.end23.err_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.end23
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.i.i.not.i.i = icmp eq i8 %31, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.err_crit_edge, label %nfct_help.exit

nf_ct_ext_exist.exit.i.i.err_crit_edge:           ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

nfct_help.exit:                                   ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %31 to i32
  %add.ptr.i.i = getelementptr i8, ptr %29, i32 %conv.i.i
  %cmp26 = icmp eq ptr %add.ptr.i.i, null
  br i1 %cmp26, label %nfct_help.exit.err_crit_edge, label %if.end29

nfct_help.exit.err_crit_edge:                     ; preds = %nfct_help.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end29:                                         ; preds = %nfct_help.exit
  %32 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %add.ptr.i.i, align 8
  %call32 = tail call i32 @rcu_read_lock_held() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %land.lhs.true, label %if.end29.do.end41_crit_edge

if.end29.do.end41_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end41

land.lhs.true:                                    ; preds = %if.end29
  %call34 = tail call i32 @debug_lockdep_rcu_enabled() #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %tobool35.not = icmp eq i32 %call34, 0
  br i1 %tobool35.not, label %land.lhs.true.do.end41_crit_edge, label %land.lhs.true36

land.lhs.true.do.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end41

land.lhs.true36:                                  ; preds = %land.lhs.true
  %.b259 = load i1, ptr @nft_ct_get_eval.__warned, align 1
  br i1 %.b259, label %land.lhs.true36.do.end41_crit_edge, label %if.then38

land.lhs.true36.do.end41_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.end41

if.then38:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #16
  store i1 true, ptr @nft_ct_get_eval.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 117, ptr noundef nonnull @.str.1) #14
  br label %do.end41

do.end41:                                         ; preds = %if.then38, %land.lhs.true36.do.end41_crit_edge, %land.lhs.true.do.end41_crit_edge, %if.end29.do.end41_crit_edge
  %cmp43 = icmp eq ptr %33, null
  br i1 %cmp43, label %do.end41.err_crit_edge, label %if.end46

do.end41.err_crit_edge:                           ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end46:                                         ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #16
  %name = getelementptr inbounds %struct.nf_conntrack_helper, ptr %33, i32 0, i32 1
  %call47 = tail call ptr @strncpy(ptr noundef %arrayidx, ptr noundef %name, i32 noundef 16)
  br label %cleanup

sw.bb48:                                          ; preds = %if.end7
  %ext.i.i.i261 = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 13
  %34 = ptrtoint ptr %ext.i.i.i261 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ext.i.i.i261, align 8
  %tobool.not.i.i.i262 = icmp eq ptr %35, null
  br i1 %tobool.not.i.i.i262, label %sw.bb48.if.else53_crit_edge, label %nf_ct_ext_exist.exit.i.i264

sw.bb48.if.else53_crit_edge:                      ; preds = %sw.bb48
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else53

nf_ct_ext_exist.exit.i.i264:                      ; preds = %sw.bb48
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %35, i32 0, i32 7
  %36 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.i.i.not.i.i263 = icmp eq i8 %37, 0
  br i1 %tobool.i.i.not.i.i263, label %nf_ct_ext_exist.exit.i.i264.if.else53_crit_edge, label %nf_ct_labels_find.exit

nf_ct_ext_exist.exit.i.i264.if.else53_crit_edge:  ; preds = %nf_ct_ext_exist.exit.i.i264
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else53

nf_ct_labels_find.exit:                           ; preds = %nf_ct_ext_exist.exit.i.i264
  %conv.i.i265 = zext i8 %37 to i32
  %add.ptr.i.i266 = getelementptr i8, ptr %35, i32 %conv.i.i265
  %tobool50.not = icmp eq ptr %add.ptr.i.i266, null
  br i1 %tobool50.not, label %nf_ct_labels_find.exit.if.else53_crit_edge, label %if.then51

nf_ct_labels_find.exit.if.else53_crit_edge:       ; preds = %nf_ct_labels_find.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.else53

if.then51:                                        ; preds = %nf_ct_labels_find.exit
  call void @__sanitizer_cov_trace_pc() #16
  %38 = call ptr @memcpy(ptr %arrayidx, ptr %add.ptr.i.i266, i32 16)
  br label %cleanup

if.else53:                                        ; preds = %nf_ct_labels_find.exit.if.else53_crit_edge, %nf_ct_ext_exist.exit.i.i264.if.else53_crit_edge, %sw.bb48.if.else53_crit_edge
  %39 = call ptr @memset(ptr %arrayidx, i32 0, i32 16)
  br label %cleanup

sw.bb55:                                          ; preds = %if.end7.sw.bb55_crit_edge, %if.end7.sw.bb55_crit_edge306
  %ext.i.i.i269 = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 13
  %40 = ptrtoint ptr %ext.i.i.i269 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ext.i.i.i269, align 8
  %tobool.not.i.i.i270 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i.i270, label %sw.bb55.if.end66_crit_edge, label %nf_ct_ext_exist.exit.i.i273

sw.bb55.if.end66_crit_edge:                       ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

nf_ct_ext_exist.exit.i.i273:                      ; preds = %sw.bb55
  %arrayidx.i.i.i.i271 = getelementptr [10 x i8], ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %arrayidx.i.i.i.i271 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %arrayidx.i.i.i.i271, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.i.i.not.i.i272 = icmp eq i8 %43, 0
  br i1 %tobool.i.i.not.i.i272, label %nf_ct_ext_exist.exit.i.i273.if.end66_crit_edge, label %nf_conn_acct_find.exit

nf_ct_ext_exist.exit.i.i273.if.end66_crit_edge:   ; preds = %nf_ct_ext_exist.exit.i.i273
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

nf_conn_acct_find.exit:                           ; preds = %nf_ct_ext_exist.exit.i.i273
  %conv.i.i274 = zext i8 %43 to i32
  %add.ptr.i.i275 = getelementptr i8, ptr %41, i32 %conv.i.i274
  %tobool57.not = icmp eq ptr %add.ptr.i.i275, null
  br i1 %tobool57.not, label %nf_conn_acct_find.exit.if.end66_crit_edge, label %if.then58

nf_conn_acct_find.exit.if.end66_crit_edge:        ; preds = %nf_conn_acct_find.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end66

if.then58:                                        ; preds = %nf_conn_acct_find.exit
  call void @__sanitizer_cov_trace_pc() #16
  %bf.cast62 = zext i16 %bf.lshr to i32
  %bf.clear = and i16 %bf.load, 255
  %bf.cast64 = zext i16 %bf.clear to i32
  %call65 = tail call fastcc i64 @nft_ct_get_eval_counter(ptr noundef nonnull %add.ptr.i.i275, i32 noundef %bf.cast62, i32 noundef %bf.cast64)
  br label %if.end66

if.end66:                                         ; preds = %if.then58, %nf_conn_acct_find.exit.if.end66_crit_edge, %nf_ct_ext_exist.exit.i.i273.if.end66_crit_edge, %sw.bb55.if.end66_crit_edge
  %count.0 = phi i64 [ %call65, %if.then58 ], [ 0, %nf_conn_acct_find.exit.if.end66_crit_edge ], [ 0, %nf_ct_ext_exist.exit.i.i273.if.end66_crit_edge ], [ 0, %sw.bb55.if.end66_crit_edge ]
  %44 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %44, i32 8)
  store i64 %count.0, ptr %arrayidx, align 4
  br label %cleanup

sw.bb67:                                          ; preds = %if.end7
  %ext.i.i.i278 = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 13
  %45 = ptrtoint ptr %ext.i.i.i278 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ext.i.i.i278, align 8
  %tobool.not.i.i.i279 = icmp eq ptr %46, null
  br i1 %tobool.not.i.i.i279, label %sw.bb67.if.end89_crit_edge, label %nf_ct_ext_exist.exit.i.i282

sw.bb67.if.end89_crit_edge:                       ; preds = %sw.bb67
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

nf_ct_ext_exist.exit.i.i282:                      ; preds = %sw.bb67
  %arrayidx.i.i.i.i280 = getelementptr [10 x i8], ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %arrayidx.i.i.i.i280 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %arrayidx.i.i.i.i280, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.i.i.not.i.i281 = icmp eq i8 %48, 0
  br i1 %tobool.i.i.not.i.i281, label %nf_ct_ext_exist.exit.i.i282.if.end89_crit_edge, label %nf_conn_acct_find.exit287

nf_ct_ext_exist.exit.i.i282.if.end89_crit_edge:   ; preds = %nf_ct_ext_exist.exit.i.i282
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

nf_conn_acct_find.exit287:                        ; preds = %nf_ct_ext_exist.exit.i.i282
  %conv.i.i283 = zext i8 %48 to i32
  %add.ptr.i.i284 = getelementptr i8, ptr %46, i32 %conv.i.i283
  %tobool70.not = icmp eq ptr %add.ptr.i.i284, null
  br i1 %tobool70.not, label %nf_conn_acct_find.exit287.if.end89_crit_edge, label %if.then71

nf_conn_acct_find.exit287.if.end89_crit_edge:     ; preds = %nf_conn_acct_find.exit287
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

if.then71:                                        ; preds = %nf_conn_acct_find.exit287
  %bf.clear75 = and i16 %bf.load, 255
  %bf.cast76 = zext i16 %bf.clear75 to i32
  %call77 = tail call fastcc i64 @nft_ct_get_eval_counter(ptr noundef nonnull %add.ptr.i.i284, i32 noundef 14, i32 noundef %bf.cast76)
  %49 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %49)
  %bf.load80 = load i16, ptr %data.i, align 4
  %bf.clear81 = and i16 %bf.load80, 255
  %bf.cast82 = zext i16 %bf.clear81 to i32
  %call83 = tail call fastcc i64 @nft_ct_get_eval_counter(ptr noundef nonnull %add.ptr.i.i284, i32 noundef 15, i32 noundef %bf.cast82)
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %call77)
  %cmp84.not = icmp eq i64 %call77, 0
  br i1 %cmp84.not, label %if.then71.if.end89_crit_edge, label %if.then86

if.then71.if.end89_crit_edge:                     ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end89

if.then86:                                        ; preds = %if.then71
  call void @__sanitizer_cov_trace_pc() #16
  %call87 = tail call i64 @div64_u64(i64 noundef %call83, i64 noundef %call77) #14
  br label %if.end89

if.end89:                                         ; preds = %if.then86, %if.then71.if.end89_crit_edge, %nf_conn_acct_find.exit287.if.end89_crit_edge, %nf_ct_ext_exist.exit.i.i282.if.end89_crit_edge, %sw.bb67.if.end89_crit_edge
  %avgcnt.0 = phi i64 [ %call87, %if.then86 ], [ 0, %if.then71.if.end89_crit_edge ], [ 0, %nf_conn_acct_find.exit287.if.end89_crit_edge ], [ 0, %nf_ct_ext_exist.exit.i.i282.if.end89_crit_edge ], [ 0, %sw.bb67.if.end89_crit_edge ]
  %50 = ptrtoint ptr %arrayidx to i32
  call void @__asan_storeN_noabort(i32 %50, i32 8)
  store i64 %avgcnt.0, ptr %arrayidx, align 4
  br label %cleanup

sw.bb90:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %l3num.i = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %51 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %l3num.i, align 2
  %conv92 = trunc i16 %52 to i8
  %53 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %arrayidx, align 4
  store i8 %conv92, ptr %arrayidx, align 1
  br label %cleanup

sw.bb93:                                          ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %protonum.i = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 4, i32 0, i32 1, i32 1, i32 2
  %54 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %protonum.i, align 2
  %56 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %arrayidx, align 4
  store i8 %55, ptr %arrayidx, align 1
  br label %cleanup

sw.bb95:                                          ; preds = %if.end7
  %zone.i = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 3
  %bf.clear98 = and i16 %bf.load, 255
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %bf.clear98)
  %cmp100 = icmp ult i16 %bf.clear98, 2
  br i1 %cmp100, label %if.then102, label %sw.bb95.if.end108.sink.split_crit_edge

sw.bb95.if.end108.sink.split_crit_edge:           ; preds = %sw.bb95
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end108.sink.split

if.then102:                                       ; preds = %sw.bb95
  %bf.cast99 = zext i16 %bf.clear98 to i32
  %dir1.i.i = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 3, i32 2
  %57 = ptrtoint ptr %dir1.i.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %dir1.i.i, align 1
  %conv.i.i288 = zext i8 %58 to i32
  %shl.i.i = shl nuw nsw i32 1, %bf.cast99
  %and.i.i = and i32 %shl.i.i, %conv.i.i288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then102.if.end108_crit_edge, label %if.then102.if.end108.sink.split_crit_edge

if.then102.if.end108.sink.split_crit_edge:        ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end108.sink.split

if.then102.if.end108_crit_edge:                   ; preds = %if.then102
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end108

if.end108.sink.split:                             ; preds = %if.then102.if.end108.sink.split_crit_edge, %sw.bb95.if.end108.sink.split_crit_edge
  %59 = ptrtoint ptr %zone.i to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %zone.i, align 4
  br label %if.end108

if.end108:                                        ; preds = %if.end108.sink.split, %if.then102.if.end108_crit_edge
  %zoneid.0 = phi i16 [ 0, %if.then102.if.end108_crit_edge ], [ %60, %if.end108.sink.split ]
  %61 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %arrayidx, align 4
  store i16 %zoneid.0, ptr %arrayidx, align 2
  br label %cleanup

sw.bb109:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #16
  %call110 = tail call i32 @nf_ct_get_id(ptr noundef nonnull %7) #14
  %62 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call110, ptr %arrayidx, align 4
  br label %cleanup

sw.epilog112:                                     ; preds = %if.end7
  %bf.clear114 = and i16 %bf.load, 255
  %bf.cast115 = zext i16 %bf.clear114 to i32
  %tuple117 = getelementptr %struct.nf_conn, ptr %7, i32 0, i32 4, i32 %bf.cast115, i32 1
  %63 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %63, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %trunc, label %sw.epilog112.cleanup_crit_edge [
    i8 8, label %sw.bb121
    i8 9, label %sw.bb128
    i8 11, label %sw.bb136
    i8 12, label %sw.bb138
    i8 19, label %sw.bb141
    i8 20, label %sw.bb150
    i8 21, label %sw.bb159
    i8 22, label %sw.bb169
  ]

sw.epilog112.cleanup_crit_edge:                   ; preds = %sw.epilog112
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb121:                                         ; preds = %sw.epilog112
  call void @__sanitizer_cov_trace_pc() #16
  %l3num.i289 = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %64 = ptrtoint ptr %l3num.i289 to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %l3num.i289, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %65)
  %cmp125 = icmp eq i16 %65, 2
  %cond127 = select i1 %cmp125, i32 4, i32 16
  %66 = call ptr @memcpy(ptr %arrayidx, ptr %tuple117, i32 %cond127)
  br label %cleanup

sw.bb128:                                         ; preds = %sw.epilog112
  call void @__sanitizer_cov_trace_pc() #16
  %dst = getelementptr %struct.nf_conn, ptr %7, i32 0, i32 4, i32 %bf.cast115, i32 1, i32 1
  %l3num.i290 = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %67 = ptrtoint ptr %l3num.i290 to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %l3num.i290, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %68)
  %cmp133 = icmp eq i16 %68, 2
  %cond135 = select i1 %cmp133, i32 4, i32 16
  %69 = call ptr @memcpy(ptr %arrayidx, ptr %dst, i32 %cond135)
  br label %cleanup

sw.bb136:                                         ; preds = %sw.epilog112
  call void @__sanitizer_cov_trace_pc() #16
  %u = getelementptr inbounds %struct.nf_conntrack_man, ptr %tuple117, i32 0, i32 1
  %70 = ptrtoint ptr %u to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %u, align 8
  %72 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 0, ptr %arrayidx, align 4
  store i16 %71, ptr %arrayidx, align 2
  br label %cleanup

sw.bb138:                                         ; preds = %sw.epilog112
  call void @__sanitizer_cov_trace_pc() #16
  %u140 = getelementptr %struct.nf_conn, ptr %7, i32 0, i32 4, i32 %bf.cast115, i32 1, i32 1, i32 1
  %73 = ptrtoint ptr %u140 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %u140, align 4
  %75 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 0, ptr %arrayidx, align 4
  store i16 %74, ptr %arrayidx, align 2
  br label %cleanup

sw.bb141:                                         ; preds = %sw.epilog112
  %l3num.i291 = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %76 = ptrtoint ptr %l3num.i291 to i32
  call void @__asan_load2_noabort(i32 %76)
  %77 = load i16, ptr %l3num.i291, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %77)
  %cmp144.not = icmp eq i16 %77, 2
  br i1 %cmp144.not, label %if.end147, label %sw.bb141.err_crit_edge

sw.bb141.err_crit_edge:                           ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end147:                                        ; preds = %sw.bb141
  call void @__sanitizer_cov_trace_pc() #16
  %78 = ptrtoint ptr %tuple117 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %tuple117, align 8
  %80 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %arrayidx, align 4
  br label %cleanup

sw.bb150:                                         ; preds = %sw.epilog112
  %l3num.i292 = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %81 = ptrtoint ptr %l3num.i292 to i32
  call void @__asan_load2_noabort(i32 %81)
  %82 = load i16, ptr %l3num.i292, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %82)
  %cmp153.not = icmp eq i16 %82, 2
  br i1 %cmp153.not, label %if.end156, label %sw.bb150.err_crit_edge

sw.bb150.err_crit_edge:                           ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end156:                                        ; preds = %sw.bb150
  call void @__sanitizer_cov_trace_pc() #16
  %dst157 = getelementptr %struct.nf_conn, ptr %7, i32 0, i32 4, i32 %bf.cast115, i32 1, i32 1
  %83 = ptrtoint ptr %dst157 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dst157, align 4
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %84, ptr %arrayidx, align 4
  br label %cleanup

sw.bb159:                                         ; preds = %sw.epilog112
  %l3num.i293 = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %86 = ptrtoint ptr %l3num.i293 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %l3num.i293, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %87)
  %cmp162.not = icmp eq i16 %87, 10
  br i1 %cmp162.not, label %if.end165, label %sw.bb159.err_crit_edge

sw.bb159.err_crit_edge:                           ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end165:                                        ; preds = %sw.bb159
  call void @__sanitizer_cov_trace_pc() #16
  %88 = call ptr @memcpy(ptr %arrayidx, ptr %tuple117, i32 16)
  br label %cleanup

sw.bb169:                                         ; preds = %sw.epilog112
  %l3num.i294 = getelementptr inbounds %struct.nf_conn, ptr %7, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %89 = ptrtoint ptr %l3num.i294 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %l3num.i294, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 10, i16 %90)
  %cmp172.not = icmp eq i16 %90, 10
  br i1 %cmp172.not, label %if.end175, label %sw.bb169.err_crit_edge

sw.bb169.err_crit_edge:                           ; preds = %sw.bb169
  call void @__sanitizer_cov_trace_pc() #16
  br label %err

if.end175:                                        ; preds = %sw.bb169
  call void @__sanitizer_cov_trace_pc() #16
  %dst176 = getelementptr %struct.nf_conn, ptr %7, i32 0, i32 4, i32 %bf.cast115, i32 1, i32 1
  %91 = call ptr @memcpy(ptr %arrayidx, ptr %dst176, i32 16)
  br label %cleanup

err:                                              ; preds = %sw.bb169.err_crit_edge, %sw.bb159.err_crit_edge, %sw.bb150.err_crit_edge, %sw.bb141.err_crit_edge, %do.end41.err_crit_edge, %nfct_help.exit.err_crit_edge, %nf_ct_ext_exist.exit.i.i.err_crit_edge, %if.end23.err_crit_edge, %sw.bb19.err_crit_edge, %sw.epilog.err_crit_edge
  %92 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end175, %if.end165, %if.end156, %if.end147, %sw.bb138, %sw.bb136, %sw.bb128, %sw.bb121, %sw.epilog112.cleanup_crit_edge, %sw.bb109, %if.end108, %sw.bb93, %sw.bb90, %if.end89, %if.end66, %if.else53, %if.then51, %if.end46, %sw.bb16, %sw.bb15, %sw.bb14, %sw.bb13, %sw.bb11, %if.end4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_ct_get_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %4 = trunc i32 %3 to i16
  %bf.shl = shl i16 %4, 8
  %bf.set4 = or i16 %bf.shl, 2
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %bf.set4, ptr %data.i, align 4
  %trunc = trunc i32 %3 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 1, label %sw.bb
    i8 0, label %entry.sw.bb7_crit_edge
    i8 2, label %entry.sw.bb7_crit_edge135
    i8 3, label %entry.sw.bb7_crit_edge136
    i8 4, label %entry.sw.bb7_crit_edge137
    i8 5, label %entry.sw.bb7_crit_edge138
    i8 13, label %sw.bb12
    i8 6, label %sw.bb17
    i8 7, label %entry.sw.epilog52_crit_edge
    i8 10, label %entry.sw.epilog52_crit_edge139
    i8 8, label %entry.sw.bb23_crit_edge
    i8 9, label %entry.sw.bb23_crit_edge140
    i8 19, label %entry.sw.bb30_crit_edge
    i8 20, label %entry.sw.bb30_crit_edge141
    i8 21, label %entry.sw.bb36_crit_edge
    i8 22, label %entry.sw.bb36_crit_edge142
    i8 11, label %entry.sw.bb42_crit_edge
    i8 12, label %entry.sw.bb42_crit_edge143
    i8 15, label %entry.sw.bb48_crit_edge
    i8 14, label %entry.sw.bb48_crit_edge144
    i8 16, label %entry.sw.bb48_crit_edge145
    i8 17, label %sw.bb49
    i8 23, label %sw.bb50
  ]

entry.sw.bb48_crit_edge145:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb48

entry.sw.bb48_crit_edge144:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb48

entry.sw.bb48_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb48

entry.sw.bb42_crit_edge143:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb42

entry.sw.bb42_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb42

entry.sw.bb36_crit_edge142:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb36

entry.sw.bb36_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb36

entry.sw.bb30_crit_edge141:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb30

entry.sw.bb30_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb30

entry.sw.bb23_crit_edge140:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb23

entry.sw.bb23_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb23

entry.sw.epilog52_crit_edge139:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog52

entry.sw.epilog52_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog52

entry.sw.bb7_crit_edge138:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

entry.sw.bb7_crit_edge137:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

entry.sw.bb7_crit_edge136:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

entry.sw.bb7_crit_edge135:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

entry.sw.bb7_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb7

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx6 = getelementptr ptr, ptr %tb, i32 3
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx6, align 4
  %cmp.not = icmp eq ptr %8, null
  br i1 %cmp.not, label %sw.bb.sw.epilog52_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb.sw.epilog52_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog52

sw.bb7:                                           ; preds = %entry.sw.bb7_crit_edge, %entry.sw.bb7_crit_edge135, %entry.sw.bb7_crit_edge136, %entry.sw.bb7_crit_edge137, %entry.sw.bb7_crit_edge138
  %arrayidx8 = getelementptr ptr, ptr %tb, i32 3
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx8, align 4
  %cmp9.not = icmp eq ptr %10, null
  br i1 %cmp9.not, label %sw.bb7.sw.epilog52_crit_edge, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb7.sw.epilog52_crit_edge:                     ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog52

sw.bb12:                                          ; preds = %entry
  %arrayidx13 = getelementptr ptr, ptr %tb, i32 3
  %11 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx13, align 4
  %cmp14.not = icmp eq ptr %12, null
  br i1 %cmp14.not, label %sw.bb12.sw.epilog52_crit_edge, label %sw.bb12.cleanup_crit_edge

sw.bb12.cleanup_crit_edge:                        ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb12.sw.epilog52_crit_edge:                    ; preds = %sw.bb12
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog52

sw.bb17:                                          ; preds = %entry
  %arrayidx18 = getelementptr ptr, ptr %tb, i32 3
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx18, align 4
  %cmp19.not = icmp eq ptr %14, null
  br i1 %cmp19.not, label %sw.bb17.sw.epilog52_crit_edge, label %sw.bb17.cleanup_crit_edge

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb17.sw.epilog52_crit_edge:                    ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog52

sw.bb23:                                          ; preds = %entry.sw.bb23_crit_edge, %entry.sw.bb23_crit_edge140
  %arrayidx24 = getelementptr ptr, ptr %tb, i32 3
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx24, align 4
  %cmp25 = icmp eq ptr %16, null
  br i1 %cmp25, label %sw.bb23.cleanup_crit_edge, label %if.end27

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end27:                                         ; preds = %sw.bb23
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %17 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %family, align 2
  %19 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %18, label %if.end27.cleanup_crit_edge [
    i8 2, label %if.end27.sw.epilog52_crit_edge
    i8 10, label %if.end27.sw.bb29_crit_edge
    i8 1, label %if.end27.sw.bb29_crit_edge146
  ]

if.end27.sw.bb29_crit_edge146:                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb29

if.end27.sw.bb29_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb29

if.end27.sw.epilog52_crit_edge:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog52

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb29:                                          ; preds = %if.end27.sw.bb29_crit_edge, %if.end27.sw.bb29_crit_edge146
  br label %sw.epilog52

sw.bb30:                                          ; preds = %entry.sw.bb30_crit_edge, %entry.sw.bb30_crit_edge141
  %arrayidx31 = getelementptr ptr, ptr %tb, i32 3
  %20 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx31, align 4
  %cmp32 = icmp eq ptr %21, null
  br i1 %cmp32, label %sw.bb30.cleanup_crit_edge, label %sw.bb30.sw.epilog52_crit_edge

sw.bb30.sw.epilog52_crit_edge:                    ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog52

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb36:                                          ; preds = %entry.sw.bb36_crit_edge, %entry.sw.bb36_crit_edge142
  %arrayidx37 = getelementptr ptr, ptr %tb, i32 3
  %22 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx37, align 4
  %cmp38 = icmp eq ptr %23, null
  br i1 %cmp38, label %sw.bb36.cleanup_crit_edge, label %sw.bb36.sw.epilog52_crit_edge

sw.bb36.sw.epilog52_crit_edge:                    ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog52

sw.bb36.cleanup_crit_edge:                        ; preds = %sw.bb36
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb42:                                          ; preds = %entry.sw.bb42_crit_edge, %entry.sw.bb42_crit_edge143
  %arrayidx43 = getelementptr ptr, ptr %tb, i32 3
  %24 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx43, align 4
  %cmp44 = icmp eq ptr %25, null
  br i1 %cmp44, label %sw.bb42.cleanup_crit_edge, label %sw.bb42.sw.epilog52_crit_edge

sw.bb42.sw.epilog52_crit_edge:                    ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog52

sw.bb42.cleanup_crit_edge:                        ; preds = %sw.bb42
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb48:                                          ; preds = %entry.sw.bb48_crit_edge, %entry.sw.bb48_crit_edge144, %entry.sw.bb48_crit_edge145
  br label %sw.epilog52

sw.bb49:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog52

sw.bb50:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog52

sw.epilog52:                                      ; preds = %sw.bb50, %sw.bb49, %sw.bb48, %sw.bb42.sw.epilog52_crit_edge, %sw.bb36.sw.epilog52_crit_edge, %sw.bb30.sw.epilog52_crit_edge, %sw.bb29, %if.end27.sw.epilog52_crit_edge, %sw.bb17.sw.epilog52_crit_edge, %sw.bb12.sw.epilog52_crit_edge, %sw.bb7.sw.epilog52_crit_edge, %sw.bb.sw.epilog52_crit_edge, %entry.sw.epilog52_crit_edge, %entry.sw.epilog52_crit_edge139
  %len.0 = phi i32 [ 4, %sw.bb50 ], [ 2, %sw.bb49 ], [ 8, %sw.bb48 ], [ 16, %sw.bb29 ], [ 1, %sw.bb.sw.epilog52_crit_edge ], [ 4, %sw.bb7.sw.epilog52_crit_edge ], [ 16, %sw.bb12.sw.epilog52_crit_edge ], [ 16, %sw.bb17.sw.epilog52_crit_edge ], [ 1, %entry.sw.epilog52_crit_edge ], [ 1, %entry.sw.epilog52_crit_edge139 ], [ 4, %if.end27.sw.epilog52_crit_edge ], [ 4, %sw.bb30.sw.epilog52_crit_edge ], [ 16, %sw.bb36.sw.epilog52_crit_edge ], [ 2, %sw.bb42.sw.epilog52_crit_edge ]
  %arrayidx53 = getelementptr ptr, ptr %tb, i32 3
  %26 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx53, align 4
  %cmp54.not = icmp eq ptr %27, null
  br i1 %cmp54.not, label %sw.epilog52.if.end71_crit_edge, label %if.then56

sw.epilog52.if.end71_crit_edge:                   ; preds = %sw.epilog52
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.then56:                                        ; preds = %sw.epilog52
  %add.ptr.i.i134 = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i134 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr.i.i134, align 1
  %30 = zext i8 %29 to i16
  %bf.set63 = or i16 %bf.shl, %30
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %bf.set63, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %switch = icmp ult i8 %29, 2
  br i1 %switch, label %if.then56.if.end71_crit_edge, label %if.then56.cleanup_crit_edge

if.then56.cleanup_crit_edge:                      ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then56.if.end71_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end71

if.end71:                                         ; preds = %if.then56.if.end71_crit_edge, %sw.epilog52.if.end71_crit_edge
  %arrayidx72 = getelementptr ptr, ptr %tb, i32 1
  %32 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx72, align 4
  %34 = getelementptr inbounds %struct.nft_ct, ptr %data.i, i32 0, i32 1
  %call73 = tail call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %33, ptr noundef %34, ptr noundef null, i32 noundef 0, i32 noundef %len.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call73)
  %cmp74 = icmp slt i32 %call73, 0
  br i1 %cmp74, label %if.end71.cleanup_crit_edge, label %if.end77

if.end71.cleanup_crit_edge:                       ; preds = %if.end71
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end77:                                         ; preds = %if.end71
  %35 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx, align 4
  %family78 = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %37 = ptrtoint ptr %family78 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %family78, align 2
  %call79 = tail call i32 @nf_ct_netns_get(ptr noundef %36, i8 noundef zeroext %38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %if.end77.cleanup_crit_edge, label %if.end83

if.end77.cleanup_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end83:                                         ; preds = %if.end77
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load84 = load i16, ptr %data.i, align 4
  %bf.lshr85 = lshr i16 %bf.load84, 8
  %bf.lshr85.off = add nsw i16 %bf.lshr85, -14
  call void @__sanitizer_cov_trace_const_cmp2(i16 3, i16 %bf.lshr85.off)
  %switch133 = icmp ult i16 %bf.lshr85.off, 3
  br i1 %switch133, label %if.then100, label %if.end83.cleanup_crit_edge

if.end83.cleanup_crit_edge:                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then100:                                       ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #16
  %40 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ctx, align 4
  %sysctl_acct.i = getelementptr inbounds %struct.net, ptr %41, i32 0, i32 40, i32 3
  %42 = ptrtoint ptr %sysctl_acct.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 1, ptr %sysctl_acct.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then100, %if.end83.cleanup_crit_edge, %if.end77.cleanup_crit_edge, %if.end71.cleanup_crit_edge, %if.then56.cleanup_crit_edge, %sw.bb42.cleanup_crit_edge, %sw.bb36.cleanup_crit_edge, %sw.bb30.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %sw.bb23.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %sw.bb12.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ -22, %sw.bb12.cleanup_crit_edge ], [ -22, %sw.bb17.cleanup_crit_edge ], [ -22, %sw.bb23.cleanup_crit_edge ], [ -97, %if.end27.cleanup_crit_edge ], [ -22, %sw.bb30.cleanup_crit_edge ], [ -22, %sw.bb36.cleanup_crit_edge ], [ -22, %sw.bb42.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -22, %if.then56.cleanup_crit_edge ], [ %call73, %if.end71.cleanup_crit_edge ], [ %call79, %if.end77.cleanup_crit_edge ], [ 0, %if.end83.cleanup_crit_edge ], [ 0, %if.then100 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_ct_get_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 2
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext %3) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_ct_get_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %tmp.i39 = alloca i8, align 1
  %tmp.i37 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = getelementptr inbounds %struct.nft_ct, ptr %data.i, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %0, align 2
  %conv = zext i8 %2 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %data.i, align 4
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.cast = zext i16 %bf.lshr to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bf.cast, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load6 = load i16, ptr %data.i, align 4
  %bf.lshr7 = lshr i16 %bf.load6, 8
  %trunc = trunc i16 %bf.lshr7 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %trunc, label %if.end5.cleanup_crit_edge [
    i8 8, label %if.end5.sw.bb_crit_edge
    i8 9, label %if.end5.sw.bb_crit_edge41
    i8 19, label %if.end5.sw.bb_crit_edge42
    i8 20, label %if.end5.sw.bb_crit_edge43
    i8 21, label %if.end5.sw.bb_crit_edge44
    i8 22, label %if.end5.sw.bb_crit_edge45
    i8 11, label %if.end5.sw.bb_crit_edge46
    i8 12, label %if.end5.sw.bb_crit_edge47
    i8 15, label %if.end5.sw.bb16_crit_edge
    i8 14, label %if.end5.sw.bb16_crit_edge48
    i8 16, label %if.end5.sw.bb16_crit_edge49
    i8 17, label %if.end5.sw.bb16_crit_edge50
  ]

if.end5.sw.bb16_crit_edge50:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

if.end5.sw.bb16_crit_edge49:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

if.end5.sw.bb16_crit_edge48:                      ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

if.end5.sw.bb16_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb16

if.end5.sw.bb_crit_edge47:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end5.sw.bb_crit_edge46:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end5.sw.bb_crit_edge45:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end5.sw.bb_crit_edge44:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end5.sw.bb_crit_edge43:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end5.sw.bb_crit_edge42:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end5.sw.bb_crit_edge41:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end5.sw.bb_crit_edge:                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.bb

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %if.end5.sw.bb_crit_edge, %if.end5.sw.bb_crit_edge41, %if.end5.sw.bb_crit_edge42, %if.end5.sw.bb_crit_edge43, %if.end5.sw.bb_crit_edge44, %if.end5.sw.bb_crit_edge45, %if.end5.sw.bb_crit_edge46, %if.end5.sw.bb_crit_edge47
  %conv11 = trunc i16 %bf.load6 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i37) #14
  %7 = ptrtoint ptr %tmp.i37 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %conv11, ptr %tmp.i37, align 1
  %call.i38 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i37) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i37) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i38)
  %tobool13.not = icmp eq i32 %call.i38, 0
  br i1 %tobool13.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.nla_put_failure_crit_edge

sw.bb.nla_put_failure_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb16:                                          ; preds = %if.end5.sw.bb16_crit_edge, %if.end5.sw.bb16_crit_edge48, %if.end5.sw.bb16_crit_edge49, %if.end5.sw.bb16_crit_edge50
  %bf.clear18 = and i16 %bf.load6, 254
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %bf.clear18)
  %cmp = icmp eq i16 %bf.clear18, 0
  br i1 %cmp, label %land.lhs.true, label %sw.bb16.cleanup_crit_edge

sw.bb16.cleanup_crit_edge:                        ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb16
  %conv24 = trunc i16 %bf.load6 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i39) #14
  %8 = ptrtoint ptr %tmp.i39 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv24, ptr %tmp.i39, align 1
  %call.i40 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i39) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i39) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i40)
  %tobool26.not = icmp eq i32 %call.i40, 0
  br i1 %tobool26.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.nla_put_failure_crit_edge

land.lhs.true.nla_put_failure_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

nla_put_failure:                                  ; preds = %land.lhs.true.nla_put_failure_crit_edge, %sw.bb.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %land.lhs.true.cleanup_crit_edge, %sw.bb16.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %sw.bb16.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @jiffies_to_msecs(i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn
declare dso_local ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i64 @nft_ct_get_eval_counter(ptr noundef %c, i32 noundef %k, i32 noundef %d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %d)
  %cmp = icmp ult i32 %d, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %k)
  %cmp1 = icmp eq i32 %k, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  br i1 %cmp1, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %bytes = getelementptr %struct.nf_conn_counter, ptr %c, i32 %d, i32 1
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes, i32 noundef 8) #14
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %bytes) #14
  br label %return

cond.false:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #16
  %arrayidx2 = getelementptr %struct.nf_conn_counter, ptr %c, i32 %d
  %call.i.i13 = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx2, i32 noundef 8) #14
  %call.i14 = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx2) #14
  br label %return

if.end:                                           ; preds = %entry
  br i1 %cmp1, label %cond.true.i20, label %cond.false.i23

cond.true.i20:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %bytes.i = getelementptr %struct.nf_conn_counter, ptr %c, i32 0, i32 1
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes.i, i32 noundef 8) #14
  %call.i.i15 = tail call i64 @generic_atomic64_read(ptr noundef %bytes.i) #14
  %bytes.i17 = getelementptr %struct.nf_conn_counter, ptr %c, i32 1, i32 1
  br label %nft_ct_get_eval_counter.exit25

cond.false.i23:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call.i.i13.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %c, i32 noundef 8) #14
  %call.i14.i = tail call i64 @generic_atomic64_read(ptr noundef %c) #14
  %arrayidx2.i = getelementptr %struct.nf_conn_counter, ptr %c, i32 1
  br label %nft_ct_get_eval_counter.exit25

nft_ct_get_eval_counter.exit25:                   ; preds = %cond.false.i23, %cond.true.i20
  %bytes.i17.sink29 = phi ptr [ %bytes.i17, %cond.true.i20 ], [ %arrayidx2.i, %cond.false.i23 ]
  %retval.0.i27 = phi i64 [ %call.i.i15, %cond.true.i20 ], [ %call.i14.i, %cond.false.i23 ]
  %call.i.i.i18 = tail call zeroext i1 @__kasan_check_read(ptr noundef %bytes.i17.sink29, i32 noundef 8) #14
  %call.i.i19 = tail call i64 @generic_atomic64_read(ptr noundef %bytes.i17.sink29) #14
  %add = add i64 %call.i.i19, %retval.0.i27
  br label %return

return:                                           ; preds = %nft_ct_get_eval_counter.exit25, %cond.false, %cond.true
  %retval.0 = phi i64 [ %add, %nft_ct_get_eval_counter.exit25 ], [ %call.i, %cond.true ], [ %call.i14, %cond.false ]
  ret i64 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @div64_u64(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_get_id(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_store(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_ct_set_zone_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %zone = alloca %struct.nf_conntrack_zone, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zone) #14
  %0 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 3, ptr %zone, align 4
  %1 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %pkt, align 4
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %_nfct.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %4)
  %tobool.not = icmp ult i32 %4, 8
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %5 = getelementptr inbounds %struct.nft_ct, ptr %data.i, i32 0, i32 1
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %5, align 2
  %idxprom = zext i8 %7 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx, align 2
  %10 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %zone, align 4
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %bf.load = load i16, ptr %data.i, align 4
  %trunc = trunc i16 %bf.load to i8
  %12 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %trunc, label %if.end.sw.epilog_crit_edge [
    i8 0, label %if.end.sw.epilog.sink.split_crit_edge
    i8 1, label %sw.bb4
  ]

if.end.sw.epilog.sink.split_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb4, %if.end.sw.epilog.sink.split_crit_edge
  %.sink = phi i8 [ 2, %sw.bb4 ], [ 1, %if.end.sw.epilog.sink.split_crit_edge ]
  %dir5 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 2
  %13 = ptrtoint ptr %dir5 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %.sink, ptr %dir5, align 1
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %if.end.sw.epilog_crit_edge
  %14 = tail call i32 @llvm.read_register.i32(metadata !75) #14
  %and.i.i.i = and i32 %14, -16384
  %15 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %17, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !89
  %18 = tail call i32 @llvm.read_register.i32(metadata !75) #14
  %and.i54 = and i32 %18, -16384
  %19 = inttoptr i32 %and.i54 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cpu, align 4
  %arrayidx19 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %21
  %22 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx19, align 4
  %add = add i32 %23, ptrtoint (ptr @nft_ct_pcpu_template to i32)
  %24 = inttoptr i32 %add to ptr
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %24, align 4
  tail call void asm sideeffect "", "~{memory}"() #14, !srcloc !90
  %27 = tail call i32 @llvm.read_register.i32(metadata !75) #14
  %and.i.i.i52 = and i32 %27, -16384
  %28 = inttoptr i32 %and.i.i.i52 to ptr
  %preempt_count.i.i53 = getelementptr inbounds %struct.thread_info, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %preempt_count.i.i53 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %preempt_count.i.i53, align 4
  %sub.i = add i32 %30, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i53, align 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %26, i32 noundef 4) #14
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile i32, ptr %26, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp = icmp eq i32 %32, 1
  br i1 %cmp, label %if.then29, label %if.else, !prof !87

if.then29:                                        ; preds = %sw.epilog
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %26, i32 noundef 4) #14
  tail call void @llvm.prefetch.p0(ptr %26, i32 1, i32 3, i32 1) #14
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %26, ptr %26, i32 1, ptr elementtype(i32) %26) #14, !srcloc !91
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.then29.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !92

if.then29.if.end15.sink.split.i.i.i_crit_edge:    ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.then29
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %34 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %34)
  %.not.i.i.i = icmp sgt i32 %34, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.refcount_inc.exit_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !87

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.refcount_inc.exit_crit_edge:        ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %refcount_inc.exit

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.then29.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.then29.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %26, i32 noundef %.sink.i.i.i) #14
  br label %refcount_inc.exit

refcount_inc.exit:                                ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.refcount_inc.exit_crit_edge
  %zone1.i = getelementptr inbounds %struct.nf_conn, ptr %26, i32 0, i32 3
  %35 = ptrtoint ptr %zone to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %zone, align 4
  %37 = ptrtoint ptr %zone1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %zone1.i, align 4
  br label %if.end37

if.else:                                          ; preds = %sw.epilog
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %38 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %net.i, align 4
  %call33 = call ptr @nf_ct_tmpl_alloc(ptr noundef %41, ptr noundef nonnull %zone, i32 noundef 2592) #14
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %if.then35, label %if.else.if.end37_crit_edge

if.else.if.end37_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end37

if.then35:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #16
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %regs, align 4
  br label %cleanup

if.end37:                                         ; preds = %if.else.if.end37_crit_edge, %refcount_inc.exit
  %ct.0 = phi ptr [ %26, %refcount_inc.exit ], [ %call33, %if.else.if.end37_crit_edge ]
  %43 = ptrtoint ptr %ct.0 to i32
  %or.i = or i32 %43, 2
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %2, i32 0, i32 15, i32 0, i32 3
  %44 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %44, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, 4096
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %45 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i, ptr %_nfct.i.i, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then35, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zone) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_ct_set_init(ptr nocapture noundef readonly %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  %zone.i = alloca %struct.nf_conntrack_zone, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load = load i16, ptr %data.i, align 4
  %bf.clear = and i16 %bf.load, -256
  %bf.set = or i16 %bf.clear, 2
  store i16 %bf.set, ptr %data.i, align 4
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %2, i32 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i.i, align 4
  %5 = trunc i32 %4 to i16
  %bf.shl = shl i16 %5, 8
  %bf.set4 = or i16 %bf.shl, 2
  store i16 %bf.set4, ptr %data.i, align 4
  %trunc = trunc i32 %4 to i8
  %6 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %trunc, label %entry.cleanup_crit_edge [
    i8 3, label %sw.bb
    i8 13, label %sw.bb7
    i8 17, label %sw.bb16
    i8 18, label %sw.bb20
    i8 4, label %sw.bb25
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %arrayidx6 = getelementptr ptr, ptr %tb, i32 3
  %7 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx6, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb7:                                           ; preds = %entry
  %arrayidx8 = getelementptr ptr, ptr %tb, i32 3
  %9 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx8, align 4
  %tobool9.not = icmp eq ptr %10, null
  br i1 %tobool9.not, label %if.end11, label %sw.bb7.cleanup_crit_edge

sw.bb7.cleanup_crit_edge:                         ; preds = %sw.bb7
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11:                                         ; preds = %sw.bb7
  %11 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctx, align 4
  %call12 = tail call i32 @nf_connlabels_get(ptr noundef %12, i32 noundef 127) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end11.sw.epilog_crit_edge, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb16:                                          ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @nft_ct_pcpu_mutex, i32 noundef 0) #14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zone.i) #14
  %13 = ptrtoint ptr %zone.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %zone.i, align 4
  %14 = load i32, ptr @nft_ct_pcpu_template_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i, label %for.cond.preheader.i, label %sw.bb16.if.end19_crit_edge

sw.bb16.if.end19_crit_edge:                       ; preds = %sw.bb16
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

for.cond.preheader.i:                             ; preds = %sw.bb16
  %call12.i = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %15 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call12.i, i32 %15)
  %cmp13.i = icmp ult i32 %call12.i, %15
  br i1 %cmp13.i, label %for.cond.preheader.i.for.body.i_crit_edge, label %for.cond.preheader.i.if.end19_crit_edge

for.cond.preheader.i.if.end19_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %call14.i = phi i32 [ %call.i, %if.end4.i.for.body.i_crit_edge ], [ %call12.i, %for.cond.preheader.i.for.body.i_crit_edge ]
  %call1.i = call ptr @nf_ct_tmpl_alloc(ptr noundef nonnull @init_net, ptr noundef nonnull %zone.i, i32 noundef 3264) #14
  %tobool2.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool2.not.i, label %if.then18, label %if.end4.i

if.end4.i:                                        ; preds = %for.body.i
  %arrayidx.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call14.i
  %16 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx.i, align 4
  %add.i = add i32 %17, ptrtoint (ptr @nft_ct_pcpu_template to i32)
  %18 = inttoptr i32 %add.i to ptr
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call1.i, ptr %18, align 4
  %call.i = call i32 @cpumask_next(i32 noundef %call14.i, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %20 = load i32, ptr @nr_cpu_ids, align 4
  %cmp.i = icmp ult i32 %call.i, %20
  br i1 %cmp.i, label %if.end4.i.for.body.i_crit_edge, label %if.end4.i.if.end19_crit_edge

if.end4.i.if.end19_crit_edge:                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end19

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.body.i

if.then18:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @nft_ct_tmpl_put_pcpu() #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zone.i) #14
  call void @mutex_unlock(ptr noundef nonnull @nft_ct_pcpu_mutex) #14
  br label %cleanup

if.end19:                                         ; preds = %if.end4.i.if.end19_crit_edge, %for.cond.preheader.i.if.end19_crit_edge, %sw.bb16.if.end19_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zone.i) #14
  %21 = load i32, ptr @nft_ct_pcpu_template_refcnt, align 4
  %inc = add i32 %21, 1
  store i32 %inc, ptr @nft_ct_pcpu_template_refcnt, align 4
  call void @mutex_unlock(ptr noundef nonnull @nft_ct_pcpu_mutex) #14
  br label %sw.epilog

sw.bb20:                                          ; preds = %entry
  %arrayidx21 = getelementptr ptr, ptr %tb, i32 3
  %22 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx21, align 4
  %tobool22.not = icmp eq ptr %23, null
  br i1 %tobool22.not, label %sw.bb20.sw.epilog_crit_edge, label %sw.bb20.cleanup_crit_edge

sw.bb20.cleanup_crit_edge:                        ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb20.sw.epilog_crit_edge:                      ; preds = %sw.bb20
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.bb25:                                          ; preds = %entry
  %arrayidx26 = getelementptr ptr, ptr %tb, i32 3
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx26, align 4
  %tobool27.not = icmp eq ptr %25, null
  br i1 %tobool27.not, label %sw.bb25.sw.epilog_crit_edge, label %sw.bb25.cleanup_crit_edge

sw.bb25.cleanup_crit_edge:                        ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb25.sw.epilog_crit_edge:                      ; preds = %sw.bb25
  call void @__sanitizer_cov_trace_pc() #16
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb25.sw.epilog_crit_edge, %sw.bb20.sw.epilog_crit_edge, %if.end19, %if.end11.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  %len.0 = phi i32 [ 2, %if.end19 ], [ 16, %if.end11.sw.epilog_crit_edge ], [ 4, %sw.bb.sw.epilog_crit_edge ], [ 4, %sw.bb20.sw.epilog_crit_edge ], [ 4, %sw.bb25.sw.epilog_crit_edge ]
  %arrayidx30 = getelementptr ptr, ptr %tb, i32 3
  %26 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %27, null
  br i1 %tobool31.not, label %sw.epilog.if.end46_crit_edge, label %if.then32

sw.epilog.if.end46_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.then32:                                        ; preds = %sw.epilog
  %add.ptr.i.i82 = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i82 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %add.ptr.i.i82, align 1
  %30 = zext i8 %29 to i16
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %31)
  %bf.load35 = load i16, ptr %data.i, align 4
  %bf.clear37 = and i16 %bf.load35, -256
  %bf.set38 = or i16 %bf.clear37, %30
  store i16 %bf.set38, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %29)
  %switch = icmp ult i8 %29, 2
  br i1 %switch, label %if.then32.if.end46_crit_edge, label %if.then32.err1_crit_edge

if.then32.err1_crit_edge:                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

if.then32.if.end46_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end46

if.end46:                                         ; preds = %if.then32.if.end46_crit_edge, %sw.epilog.if.end46_crit_edge
  %arrayidx47 = getelementptr ptr, ptr %tb, i32 4
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx47, align 4
  %34 = getelementptr inbounds %struct.nft_ct, ptr %data.i, i32 0, i32 1
  %call48 = call i32 @nft_parse_register_load(ptr noundef %33, ptr noundef %34, i32 noundef %len.0) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %cmp = icmp slt i32 %call48, 0
  br i1 %cmp, label %if.end46.err1_crit_edge, label %if.end51

if.end46.err1_crit_edge:                          ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

if.end51:                                         ; preds = %if.end46
  %35 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ctx, align 4
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %37 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %family, align 2
  %call53 = call i32 @nf_ct_netns_get(ptr noundef %36, i8 noundef zeroext %38) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end51.err1_crit_edge, label %if.end51.cleanup_crit_edge

if.end51.cleanup_crit_edge:                       ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end51.err1_crit_edge:                          ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #16
  br label %err1

err1:                                             ; preds = %if.end51.err1_crit_edge, %if.end46.err1_crit_edge, %if.then32.err1_crit_edge
  %err.0 = phi i32 [ %call48, %if.end46.err1_crit_edge ], [ %call53, %if.end51.err1_crit_edge ], [ -22, %if.then32.err1_crit_edge ]
  %39 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %bf.load.i = load i16, ptr %data.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 8
  %trunc.i = trunc i16 %bf.lshr.i to i8
  %40 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.15)
  switch i8 %trunc.i, label %err1.cleanup_crit_edge [
    i8 13, label %sw.bb.i
    i8 17, label %sw.bb1.i
  ]

err1.cleanup_crit_edge:                           ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

sw.bb.i:                                          ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #16
  %41 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ctx, align 4
  call void @nf_connlabels_put(ptr noundef %42) #14
  br label %cleanup

sw.bb1.i:                                         ; preds = %err1
  call void @mutex_lock_nested(ptr noundef nonnull @nft_ct_pcpu_mutex, i32 noundef 0) #14
  %43 = load i32, ptr @nft_ct_pcpu_template_refcnt, align 4
  %dec.i = add i32 %43, -1
  store i32 %dec.i, ptr @nft_ct_pcpu_template_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i83 = icmp eq i32 %dec.i, 0
  br i1 %cmp.i83, label %if.then.i, label %sw.bb1.i.if.end.i_crit_edge

sw.bb1.i.if.end.i_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #16
  call fastcc void @nft_ct_tmpl_put_pcpu() #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb1.i.if.end.i_crit_edge
  call void @mutex_unlock(ptr noundef nonnull @nft_ct_pcpu_mutex) #14
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %sw.bb.i, %err1.cleanup_crit_edge, %if.end51.cleanup_crit_edge, %sw.bb25.cleanup_crit_edge, %sw.bb20.cleanup_crit_edge, %if.then18, %if.end11.cleanup_crit_edge, %sw.bb7.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.then18 ], [ -22, %sw.bb.cleanup_crit_edge ], [ -22, %sw.bb7.cleanup_crit_edge ], [ %call12, %if.end11.cleanup_crit_edge ], [ -22, %sw.bb20.cleanup_crit_edge ], [ -22, %sw.bb25.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ 0, %if.end51.cleanup_crit_edge ], [ %err.0, %err1.cleanup_crit_edge ], [ %err.0, %sw.bb.i ], [ %err.0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_ct_set_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %bf.load.i = load i16, ptr %data.i, align 4
  %bf.lshr.i = lshr i16 %bf.load.i, 8
  %trunc.i = trunc i16 %bf.lshr.i to i8
  %1 = zext i8 %trunc.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.16)
  switch i8 %trunc.i, label %entry.__nft_ct_set_destroy.exit_crit_edge [
    i8 13, label %sw.bb.i
    i8 17, label %sw.bb1.i
  ]

entry.__nft_ct_set_destroy.exit_crit_edge:        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %__nft_ct_set_destroy.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  %2 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctx, align 4
  tail call void @nf_connlabels_put(ptr noundef %3) #14
  br label %__nft_ct_set_destroy.exit

sw.bb1.i:                                         ; preds = %entry
  tail call void @mutex_lock_nested(ptr noundef nonnull @nft_ct_pcpu_mutex, i32 noundef 0) #14
  %4 = load i32, ptr @nft_ct_pcpu_template_refcnt, align 4
  %dec.i = add i32 %4, -1
  store i32 %dec.i, ptr @nft_ct_pcpu_template_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %cmp.i = icmp eq i32 %dec.i, 0
  br i1 %cmp.i, label %if.then.i, label %sw.bb1.i.if.end.i_crit_edge

sw.bb1.i.if.end.i_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end.i

if.then.i:                                        ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call fastcc void @nft_ct_tmpl_put_pcpu() #14
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %sw.bb1.i.if.end.i_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @nft_ct_pcpu_mutex) #14
  br label %__nft_ct_set_destroy.exit

__nft_ct_set_destroy.exit:                        ; preds = %if.end.i, %sw.bb.i, %entry.__nft_ct_set_destroy.exit_crit_edge
  %5 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ctx, align 4
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %7 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %family, align 2
  tail call void @nf_ct_netns_put(ptr noundef %6, i8 noundef zeroext %8) #14
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_ct_set_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %tmp.i26 = alloca i8, align 1
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = getelementptr inbounds %struct.nft_ct, ptr %data.i, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %0, align 2
  %conv = zext i8 %2 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 4, i32 noundef %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %3)
  %bf.load = load i16, ptr %data.i, align 4
  %bf.lshr = lshr i16 %bf.load, 8
  %bf.cast = zext i16 %bf.lshr to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #14
  %4 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bf.cast, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #14
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

if.end5:                                          ; preds = %if.end
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %bf.load6 = load i16, ptr %data.i, align 4
  %6 = and i16 %bf.load6, -2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4352, i16 %6)
  %7 = icmp eq i16 %6, 4352
  br i1 %7, label %land.lhs.true, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end5
  %conv15 = trunc i16 %bf.load6 to i8
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i26) #14
  %8 = ptrtoint ptr %tmp.i26 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv15, ptr %tmp.i26, align 1
  %call.i27 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 1, ptr noundef nonnull %tmp.i26) #14
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i26) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i27)
  %tobool17.not = icmp eq i32 %call.i27, 0
  br i1 %tobool17.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.nla_put_failure_crit_edge

land.lhs.true.nla_put_failure_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %nla_put_failure

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

nla_put_failure:                                  ; preds = %land.lhs.true.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %land.lhs.true.cleanup_crit_edge, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %if.end5.cleanup_crit_edge ], [ 0, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_tmpl_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_connlabels_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_load(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nft_ct_tmpl_put_pcpu() unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %call15 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %0)
  %cmp16 = icmp ult i32 %call15, %0
  br i1 %cmp16, label %entry.do.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

entry.do.body_crit_edge:                          ; preds = %entry
  br label %do.body

do.body:                                          ; preds = %nf_ct_put.exit.do.body_crit_edge, %entry.do.body_crit_edge
  %call17 = phi i32 [ %call, %nf_ct_put.exit.do.body_crit_edge ], [ %call15, %entry.do.body_crit_edge ]
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call17
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %arrayidx, align 4
  %add = add i32 %2, ptrtoint (ptr @nft_ct_pcpu_template to i32)
  %3 = inttoptr i32 %add to ptr
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.body.for.end_crit_edge, label %land.lhs.true.i

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

land.lhs.true.i:                                  ; preds = %do.body
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %5, i32 noundef 4) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !93
  tail call void @llvm.prefetch.p0(ptr nonnull %5, i32 1, i32 3, i32 1) #14
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %5, ptr nonnull %5, i32 1, ptr nonnull elementtype(i32) %5) #14, !srcloc !94
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.nf_ct_put.exit_crit_edge, label %if.then10.i.i.i.i, !prof !87

if.end5.i.i.i.i.nf_ct_put.exit_crit_edge:         ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %nf_ct_put.exit

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @refcount_warn_saturate(ptr noundef nonnull %5, i32 noundef 3) #14
  br label %nf_ct_put.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #14, !srcloc !95
  tail call void @nf_ct_destroy(ptr noundef nonnull %5) #14
  br label %nf_ct_put.exit

nf_ct_put.exit:                                   ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.nf_ct_put.exit_crit_edge
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add10 = add i32 %8, ptrtoint (ptr @nft_ct_pcpu_template to i32)
  %9 = inttoptr i32 %add10 to ptr
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %9, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call17, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %11 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %11
  br i1 %cmp, label %nf_ct_put.exit.do.body_crit_edge, label %nf_ct_put.exit.for.end_crit_edge

nf_ct_put.exit.for.end_crit_edge:                 ; preds = %nf_ct_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %for.end

nf_ct_put.exit.do.body_crit_edge:                 ; preds = %nf_ct_put.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %do.body

for.end:                                          ; preds = %nf_ct_put.exit.for.end_crit_edge, %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_connlabels_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_ct_set_eval(ptr nocapture noundef readonly %expr, ptr noundef %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %2 = getelementptr inbounds %struct.nft_ct, ptr %data.i, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %2, align 2
  %idxprom = zext i8 %4 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %7 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %8, -8
  %9 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp = icmp eq i32 %and1.i, 0
  br i1 %cmp, label %entry.cleanup41_crit_edge, label %lor.lhs.false

entry.cleanup41_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

lor.lhs.false:                                    ; preds = %entry
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %9, i32 0, i32 5
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status.i, align 8
  %12 = and i32 %11, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool.not = icmp eq i32 %12, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup41_crit_edge

lor.lhs.false.cleanup41_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

if.end:                                           ; preds = %lor.lhs.false
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %bf.load = load i16, ptr %data.i, align 4
  %bf.lshr = lshr i16 %bf.load, 8
  %trunc = trunc i16 %bf.lshr to i8
  %14 = zext i8 %trunc to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.17)
  switch i8 %trunc, label %if.end.cleanup41_crit_edge [
    i8 3, label %sw.bb
    i8 4, label %sw.bb8
    i8 13, label %sw.bb13
    i8 18, label %sw.bb19
  ]

if.end.cleanup41_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

sw.bb:                                            ; preds = %if.end
  %mark = getelementptr inbounds %struct.nf_conn, ptr %9, i32 0, i32 11
  %15 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mark, align 8
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %6)
  %cmp4.not = icmp eq i32 %16, %6
  br i1 %cmp4.not, label %sw.bb.cleanup41_crit_edge, label %if.then5

sw.bb.cleanup41_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

if.then5:                                         ; preds = %sw.bb
  %17 = ptrtoint ptr %mark to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %6, ptr %mark, align 8
  %ct_net.i.i = getelementptr inbounds %struct.nf_conn, ptr %9, i32 0, i32 7
  %18 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ct_net.i.i, align 8
  %nf_conntrack_event_cb.i = getelementptr inbounds %struct.net, ptr %19, i32 0, i32 40, i32 9
  %20 = ptrtoint ptr %nf_conntrack_event_cb.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %nf_conntrack_event_cb.i, align 16
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.then5.cleanup41_crit_edge, label %if.end.i

if.then5.cleanup41_crit_edge:                     ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

if.end.i:                                         ; preds = %if.then5
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %9, i32 0, i32 13
  %22 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %23, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.cleanup41_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.end.i.cleanup41_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.end.i
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %23, i32 0, i32 4
  %24 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.i.i.not.i.i.i = icmp eq i8 %25, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.cleanup41_crit_edge, label %nf_ct_ecache_find.exit.i

nf_ct_ext_exist.exit.i.i.i.cleanup41_crit_edge:   ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

nf_ct_ecache_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %25 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 %conv.i.i.i
  %cmp.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %cmp.i, label %nf_ct_ecache_find.exit.i.cleanup41_crit_edge, label %if.end5.i

nf_ct_ecache_find.exit.i.cleanup41_crit_edge:     ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

if.end5.i:                                        ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 7, ptr noundef nonnull %add.ptr.i.i.i) #14
  br label %cleanup41

sw.bb8:                                           ; preds = %if.end
  %secmark = getelementptr inbounds %struct.nf_conn, ptr %9, i32 0, i32 12
  %26 = ptrtoint ptr %secmark to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %secmark, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %6)
  %cmp9.not = icmp eq i32 %27, %6
  br i1 %cmp9.not, label %sw.bb8.cleanup41_crit_edge, label %if.then10

sw.bb8.cleanup41_crit_edge:                       ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

if.then10:                                        ; preds = %sw.bb8
  %28 = ptrtoint ptr %secmark to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %6, ptr %secmark, align 4
  %ct_net.i.i74 = getelementptr inbounds %struct.nf_conn, ptr %9, i32 0, i32 7
  %29 = ptrtoint ptr %ct_net.i.i74 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ct_net.i.i74, align 8
  %nf_conntrack_event_cb.i75 = getelementptr inbounds %struct.net, ptr %30, i32 0, i32 40, i32 9
  %31 = ptrtoint ptr %nf_conntrack_event_cb.i75 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %nf_conntrack_event_cb.i75, align 16
  %tobool.not.i76 = icmp eq ptr %32, null
  br i1 %tobool.not.i76, label %if.then10.cleanup41_crit_edge, label %if.end.i79

if.then10.cleanup41_crit_edge:                    ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

if.end.i79:                                       ; preds = %if.then10
  %ext.i.i.i.i77 = getelementptr inbounds %struct.nf_conn, ptr %9, i32 0, i32 13
  %33 = ptrtoint ptr %ext.i.i.i.i77 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ext.i.i.i.i77, align 8
  %tobool.not.i.i.i.i78 = icmp eq ptr %34, null
  br i1 %tobool.not.i.i.i.i78, label %if.end.i79.cleanup41_crit_edge, label %nf_ct_ext_exist.exit.i.i.i82

if.end.i79.cleanup41_crit_edge:                   ; preds = %if.end.i79
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

nf_ct_ext_exist.exit.i.i.i82:                     ; preds = %if.end.i79
  %arrayidx.i.i.i.i.i80 = getelementptr [10 x i8], ptr %34, i32 0, i32 4
  %35 = ptrtoint ptr %arrayidx.i.i.i.i.i80 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %arrayidx.i.i.i.i.i80, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.i.i.not.i.i.i81 = icmp eq i8 %36, 0
  br i1 %tobool.i.i.not.i.i.i81, label %nf_ct_ext_exist.exit.i.i.i82.cleanup41_crit_edge, label %nf_ct_ecache_find.exit.i86

nf_ct_ext_exist.exit.i.i.i82.cleanup41_crit_edge: ; preds = %nf_ct_ext_exist.exit.i.i.i82
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

nf_ct_ecache_find.exit.i86:                       ; preds = %nf_ct_ext_exist.exit.i.i.i82
  %conv.i.i.i83 = zext i8 %36 to i32
  %add.ptr.i.i.i84 = getelementptr i8, ptr %34, i32 %conv.i.i.i83
  %cmp.i85 = icmp eq ptr %add.ptr.i.i.i84, null
  br i1 %cmp.i85, label %nf_ct_ecache_find.exit.i86.cleanup41_crit_edge, label %if.end5.i87

nf_ct_ecache_find.exit.i86.cleanup41_crit_edge:   ; preds = %nf_ct_ecache_find.exit.i86
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

if.end5.i87:                                      ; preds = %nf_ct_ecache_find.exit.i86
  call void @__sanitizer_cov_trace_pc() #16
  tail call void @_set_bit(i32 noundef 9, ptr noundef nonnull %add.ptr.i.i.i84) #14
  br label %cleanup41

sw.bb13:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #16
  %call18 = tail call i32 @nf_connlabels_replace(ptr noundef nonnull %9, ptr noundef %arrayidx, ptr noundef %arrayidx, i32 noundef 4) #14
  br label %cleanup41

sw.bb19:                                          ; preds = %if.end
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %9, i32 0, i32 13
  %37 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %38, null
  br i1 %tobool.not.i.i.i, label %sw.bb19.if.end32_crit_edge, label %nf_ct_ext_exist.exit.i.i

sw.bb19.if.end32_crit_edge:                       ; preds = %sw.bb19
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

nf_ct_ext_exist.exit.i.i:                         ; preds = %sw.bb19
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %40)
  %tobool.i.i.not.i.i = icmp eq i8 %40, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.if.end32_crit_edge, label %nf_ct_ecache_find.exit

nf_ct_ext_exist.exit.i.i.if.end32_crit_edge:      ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

nf_ct_ecache_find.exit:                           ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %40 to i32
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 %conv.i.i
  %tobool23.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool23.not, label %nf_ct_ecache_find.exit.if.end32_crit_edge, label %if.then24

nf_ct_ecache_find.exit.if.end32_crit_edge:        ; preds = %nf_ct_ecache_find.exit
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end32

if.then24:                                        ; preds = %nf_ct_ecache_find.exit
  %ctmask25 = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %add.ptr.i.i, i32 0, i32 2
  %41 = ptrtoint ptr %ctmask25 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %ctmask25, align 2
  %conv = zext i16 %42 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %conv)
  %cmp26.not = icmp eq i32 %6, %conv
  br i1 %cmp26.not, label %if.then24.cleanup41_crit_edge, label %if.then28

if.then24.cleanup41_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

if.then28:                                        ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #16
  %conv29 = trunc i32 %6 to i16
  %43 = ptrtoint ptr %ctmask25 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv29, ptr %ctmask25, align 2
  br label %cleanup41

if.end32:                                         ; preds = %nf_ct_ecache_find.exit.if.end32_crit_edge, %nf_ct_ext_exist.exit.i.i.if.end32_crit_edge, %sw.bb19.if.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool33.not = icmp eq i32 %6, 0
  br i1 %tobool33.not, label %if.end32.cleanup41_crit_edge, label %land.lhs.true

if.end32.cleanup41_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

land.lhs.true:                                    ; preds = %if.end32
  %44 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %status.i, align 8
  %46 = and i32 %45, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool35.not = icmp eq i32 %46, 0
  br i1 %tobool35.not, label %if.then36, label %land.lhs.true.cleanup41_crit_edge

land.lhs.true.cleanup41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup41

if.then36:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #16
  %conv37 = trunc i32 %6 to i16
  tail call fastcc void @nf_ct_ecache_ext_add(ptr noundef nonnull %9, i16 noundef zeroext %conv37)
  br label %cleanup41

cleanup41:                                        ; preds = %if.then36, %land.lhs.true.cleanup41_crit_edge, %if.end32.cleanup41_crit_edge, %if.then28, %if.then24.cleanup41_crit_edge, %sw.bb13, %if.end5.i87, %nf_ct_ecache_find.exit.i86.cleanup41_crit_edge, %nf_ct_ext_exist.exit.i.i.i82.cleanup41_crit_edge, %if.end.i79.cleanup41_crit_edge, %if.then10.cleanup41_crit_edge, %sw.bb8.cleanup41_crit_edge, %if.end5.i, %nf_ct_ecache_find.exit.i.cleanup41_crit_edge, %nf_ct_ext_exist.exit.i.i.i.cleanup41_crit_edge, %if.end.i.cleanup41_crit_edge, %if.then5.cleanup41_crit_edge, %sw.bb.cleanup41_crit_edge, %if.end.cleanup41_crit_edge, %lor.lhs.false.cleanup41_crit_edge, %entry.cleanup41_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_connlabels_replace(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nf_ct_ecache_ext_add(ptr noundef %ct, i16 noundef zeroext %ctmask) unnamed_addr #12 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %ctmask)
  %tobool.not = icmp eq i16 %ctmask, 0
  br i1 %tobool.not, label %land.lhs.true2, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

land.lhs.true2:                                   ; preds = %entry
  %ct_net.i = getelementptr inbounds %struct.nf_conn, ptr %ct, i32 0, i32 7
  %0 = ptrtoint ptr %ct_net.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct_net.i, align 4
  %sysctl_events = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 40, i32 2
  %2 = ptrtoint ptr %sysctl_events to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sysctl_events, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %land.lhs.true2.cleanup_crit_edge, label %land.lhs.true2.if.end9_crit_edge

land.lhs.true2.if.end9_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %if.end9

land.lhs.true2.cleanup_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.end9:                                          ; preds = %land.lhs.true2.if.end9_crit_edge, %entry.if.end9_crit_edge
  %expmask.addr.09 = phi i16 [ 0, %entry.if.end9_crit_edge ], [ -1, %land.lhs.true2.if.end9_crit_edge ]
  %ctmask.addr.08 = phi i16 [ %ctmask, %entry.if.end9_crit_edge ], [ -1, %land.lhs.true2.if.end9_crit_edge ]
  %call10 = tail call ptr @nf_ct_ext_add(ptr noundef %ct, i32 noundef 4, i32 noundef 2592) #14
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %if.then12

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  br label %cleanup

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #16
  %ctmask13 = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %call10, i32 0, i32 2
  %4 = ptrtoint ptr %ctmask13 to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %ctmask.addr.08, ptr %ctmask13, align 2
  %expmask14 = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %call10, i32 0, i32 3
  %5 = ptrtoint ptr %expmask14 to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %expmask.addr.09, ptr %expmask14, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end9.cleanup_crit_edge, %land.lhs.true2.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_obj(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #13

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #14

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #15 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #15 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind readonly }
attributes #10 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #13 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #14 = { nounwind }
attributes #15 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #16 = { nomerge }
attributes #17 = { nounwind allocsize(0) }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !26, !28, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !68, !69, !71, !73}
!llvm.named.register.sp = !{!75}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_nft_ct__654_1343_nft_ct_module_init6, !1, !"__initcall__kmod_nft_ct__654_1343_nft_ct_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_ct.c", i32 1343, i32 1}
!2 = !{ptr @__exitcall_nft_ct_module_exit, !3, !"__exitcall_nft_ct_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_ct.c", i32 1344, i32 1}
!4 = !{ptr @__UNIQUE_ID_file655, !5, !"__UNIQUE_ID_file655", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_ct.c", i32 1346, i32 1}
!6 = !{ptr @__UNIQUE_ID_license656, !5, !"__UNIQUE_ID_license656", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author657, !8, !"__UNIQUE_ID_author657", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_ct.c", i32 1347, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias658, !10, !"__UNIQUE_ID_alias658", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_ct.c", i32 1348, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias659, !12, !"__UNIQUE_ID_alias659", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_ct.c", i32 1349, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias660, !14, !"__UNIQUE_ID_alias660", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_ct.c", i32 1350, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias661, !16, !"__UNIQUE_ID_alias661", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_ct.c", i32 1351, i32 1}
!17 = !{ptr @__UNIQUE_ID_alias662, !18, !"__UNIQUE_ID_alias662", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_ct.c", i32 1352, i32 1}
!19 = !{ptr @__UNIQUE_ID_description663, !20, !"__UNIQUE_ID_description663", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_ct.c", i32 1353, i32 1}
!21 = !{ptr @__pcpu_unique_nft_ct_pcpu_template, !22, !"__pcpu_unique_nft_ct_pcpu_template", i1 false, i1 false}
!22 = !{!"../net/netfilter/nft_ct.c", i32 42, i32 8}
!23 = !{ptr @nft_ct_pcpu_template, !22, !"nft_ct_pcpu_template", i1 false, i1 false}
!24 = !{ptr @nft_ct_timeout_obj_type, !25, !"nft_ct_timeout_obj_type", i1 false, i1 false}
!25 = !{!"../net/netfilter/nft_ct.c", i32 972, i32 31}
!26 = !{ptr @nft_ct_timeout_obj_ops, !27, !"nft_ct_timeout_obj_ops", i1 false, i1 false}
!27 = !{!"../net/netfilter/nft_ct.c", i32 963, i32 36}
!28 = distinct !{null, !29, !"__warned", i1 false, i1 false}
!29 = !{!"../include/net/netfilter/nf_conntrack_timeout.h", i32 38, i32 12}
!30 = !{ptr @.str, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.1, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @nft_ct_timeout_policy, !33, !"nft_ct_timeout_policy", i1 false, i1 false}
!33 = !{!"../net/netfilter/nft_ct.c", i32 955, i32 32}
!34 = !{ptr @nft_ct_expect_obj_type, !35, !"nft_ct_expect_obj_type", i1 false, i1 false}
!35 = !{!"../net/netfilter/nft_ct.c", i32 1283, i32 31}
!36 = !{ptr @nft_ct_expect_obj_ops, !37, !"nft_ct_expect_obj_ops", i1 false, i1 false}
!37 = !{!"../net/netfilter/nft_ct.c", i32 1274, i32 36}
!38 = !{ptr @nft_ct_expect_policy, !39, !"nft_ct_expect_policy", i1 false, i1 false}
!39 = !{!"../net/netfilter/nft_ct.c", i32 1264, i32 32}
!40 = !{ptr @nft_ct_helper_obj_type, !41, !"nft_ct_helper_obj_type", i1 false, i1 false}
!41 = !{!"../net/netfilter/nft_ct.c", i32 1154, i32 31}
!42 = !{ptr @nft_ct_helper_obj_ops, !43, !"nft_ct_helper_obj_ops", i1 false, i1 false}
!43 = !{!"../net/netfilter/nft_ct.c", i32 1145, i32 36}
!44 = distinct !{null, !45, !"__already_done", i1 false, i1 false}
!45 = !{!"../net/netfilter/nft_ct.c", i32 1090, i32 3}
!46 = !{ptr @.str.2, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @nft_ct_helper_policy, !48, !"nft_ct_helper_policy", i1 false, i1 false}
!48 = !{!"../net/netfilter/nft_ct.c", i32 1137, i32 32}
!49 = !{ptr @.str.3, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../net/netfilter/nft_ct.c", i32 791, i32 11}
!51 = !{ptr @nft_notrack_type, !52, !"nft_notrack_type", i1 false, i1 false}
!52 = !{!"../net/netfilter/nft_ct.c", i32 790, i32 29}
!53 = !{ptr @nft_notrack_ops, !54, !"nft_notrack_ops", i1 false, i1 false}
!54 = !{!"../net/netfilter/nft_ct.c", i32 784, i32 34}
!55 = !{ptr @.str.4, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../net/netfilter/nft_ct.c", i32 760, i32 11}
!57 = !{ptr @nft_ct_type, !58, !"nft_ct_type", i1 false, i1 false}
!58 = !{!"../net/netfilter/nft_ct.c", i32 759, i32 29}
!59 = !{ptr @nft_ct_get_ops, !60, !"nft_ct_get_ops", i1 false, i1 false}
!60 = !{!"../net/netfilter/nft_ct.c", i32 706, i32 34}
!61 = distinct !{null, !62, !"__warned", i1 false, i1 false}
!62 = !{!"../net/netfilter/nft_ct.c", i32 117, i32 12}
!63 = !{ptr @nft_ct_set_zone_ops, !64, !"nft_ct_set_zone_ops", i1 false, i1 false}
!64 = !{!"../net/netfilter/nft_ct.c", i32 725, i32 34}
!65 = !{ptr @.str.5, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../net/netfilter/nft_ct.c", i32 44, i32 8}
!67 = !{ptr @.str.6, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @nft_ct_pcpu_mutex, !66, !"nft_ct_pcpu_mutex", i1 false, i1 false}
!69 = !{ptr @nft_ct_pcpu_template_refcnt, !70, !"nft_ct_pcpu_template_refcnt", i1 false, i1 false}
!70 = !{!"../net/netfilter/nft_ct.c", i32 43, i32 21}
!71 = !{ptr @nft_ct_set_ops, !72, !"nft_ct_set_ops", i1 false, i1 false}
!72 = !{!"../net/netfilter/nft_ct.c", i32 715, i32 34}
!73 = !{ptr @nft_ct_policy, !74, !"nft_ct_policy", i1 false, i1 false}
!74 = !{!"../net/netfilter/nft_ct.c", i32 342, i32 32}
!75 = !{!"sp"}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{i64 2158394522}
!86 = !{i64 2158513298}
!87 = !{!"branch_weights", i32 2000, i32 1}
!88 = !{i64 2158522953}
!89 = !{i64 2158460645}
!90 = !{i64 2158477998}
!91 = !{i64 2148241696, i64 2148241728, i64 2148241757, i64 2148241791, i64 2148241822, i64 2148241845}
!92 = !{!"branch_weights", i32 1, i32 2000}
!93 = !{i64 2148329697}
!94 = !{i64 2148244161, i64 2148244193, i64 2148244222, i64 2148244256, i64 2148244287, i64 2148244310}
!95 = !{i64 2149336145}
