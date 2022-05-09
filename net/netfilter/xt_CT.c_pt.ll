; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_CT.c_pt.bc'
source_filename = "../net/netfilter/xt_CT.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xt_action_param = type { %union.anon.210, %union.anon.211, ptr, i32, i16, i8 }
%union.anon.210 = type { ptr }
%union.anon.211 = type { ptr }
%struct.xt_ct_target_info = type { i16, i16, i32, i32, [16 x i8], [4 x i8], ptr, [4 x i8] }
%struct.sk_buff = type { %union.anon, %union.anon.193, %union.anon.194, [48 x i8], %union.anon.195, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.197, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.193 = type { ptr }
%union.anon.194 = type { i64 }
%union.anon.195 = type { %struct.anon.196 }
%struct.anon.196 = type { i32, ptr }
%union.anon.197 = type { %struct.anon.198 }
%struct.anon.198 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.199, i32, i32, i32, i16, i16, %union.anon.201, i32, %union.anon.202, %union.anon.203, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.199 = type { i32 }
%union.anon.201 = type { i32 }
%union.anon.202 = type { i32 }
%union.anon.203 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xt_ct_target_info_v1 = type { i16, i16, i32, i32, [16 x i8], [32 x i8], [4 x i8], ptr, [4 x i8] }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_tgdtor_param = type { ptr, ptr, ptr, i8 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.212, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.113 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.113 = type { %union.nf_inet_addr, %union.anon.114, i8, i8 }
%union.anon.114 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.212 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.19, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { ptr, i32, i32, i32 }
%struct.hlist_head = type { ptr }
%struct.rb_root = type { ptr }
%struct.raw_notifier_head = type { ptr }
%struct.netns_core = type { ptr, i32, ptr }
%struct.netns_mib = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.netns_packet = type { %struct.mutex, %struct.hlist_head }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.106, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.106 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.96, i32, %struct.spinlock }
%union.anon.96 = type { %struct.anon.97 }
%struct.anon.97 = type { ptr, ptr }
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
%struct.nf_conntrack_ecache = type { i32, i16, i16, i16, i8, i32 }
%struct.ipt_ip = type { %struct.in_addr, %struct.in_addr, %struct.in_addr, %struct.in_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8 }
%struct.in_addr = type { i32 }
%struct.ip6t_ip6 = type { %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, %struct.in6_addr, [16 x i8], [16 x i8], [16 x i8], [16 x i8], i16, i8, i8, i8 }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }

@xt_ct_tg_reg = internal global [3 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"CT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @xt_ct_target_v0, ptr @xt_ct_tg_check_v0, ptr @xt_ct_tg_destroy_v0, ptr null, ptr @.str, i32 40, i32 32, i32 0, i16 0, i16 0 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"CT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @xt_ct_target_v1, ptr @xt_ct_tg_check_v1, ptr @xt_ct_tg_destroy_v1, ptr null, ptr @.str, i32 72, i32 32, i32 0, i16 0, i16 0 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"CT\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @xt_ct_target_v1, ptr @xt_ct_tg_check_v2, ptr @xt_ct_tg_destroy_v1, ptr null, ptr @.str, i32 72, i32 32, i32 0, i16 0, i16 0 }], section ".data..read_mostly", align 4
@notrack_tg_reg = internal global %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"NOTRACK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @notrack_tg, ptr null, ptr null, ptr null, ptr @.str, i32 0, i32 0, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_CT__701_384_xt_ct_tg_init6 = internal global ptr @xt_ct_tg_init, section ".initcall6.init", align 4
@__exitcall_xt_ct_tg_exit = internal global ptr @xt_ct_tg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file702 = internal constant [31 x i8] c"xt_CT.file=net/netfilter/xt_CT\00", section ".modinfo", align 1
@__UNIQUE_ID_license703 = internal constant [18 x i8] c"xt_CT.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description704 = internal constant [54 x i8] c"xt_CT.description=Xtables: connection tracking target\00", section ".modinfo", align 1
@__UNIQUE_ID_alias705 = internal constant [19 x i8] c"xt_CT.alias=ipt_CT\00", section ".modinfo", align 1
@__UNIQUE_ID_alias706 = internal constant [20 x i8] c"xt_CT.alias=ip6t_CT\00", section ".modinfo", align 1
@__UNIQUE_ID_alias707 = internal constant [24 x i8] c"xt_CT.alias=ipt_NOTRACK\00", section ".modinfo", align 1
@__UNIQUE_ID_alias708 = internal constant [25 x i8] c"xt_CT.alias=ip6t_NOTRACK\00", section ".modinfo", align 1
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"raw\00", [28 x i8] zeroinitializer }, align 32
@xt_ct_set_helper._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.xt_ct_set_helper = private unnamed_addr constant [17 x i8] c"xt_ct_set_helper\00", align 1
@xt_ct_set_helper._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.xt_ct_set_helper, ptr @.str.3, i32 82, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\016xt_CT: You must specify a L4 protocol and not use inversions on it\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"net/netfilter/xt_CT.c\00", [42 x i8] zeroinitializer }, align 32
@xt_ct_set_helper._entry_ptr = internal global ptr @xt_ct_set_helper._entry, section ".printk_index", align 4
@xt_ct_set_helper._rs.4 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@xt_ct_set_helper._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.xt_ct_set_helper, ptr @.str.3, i32 89, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016xt_CT: No such helper \22%s\22\0A\00", [34 x i8] zeroinitializer }, align 32
@xt_ct_set_helper._entry_ptr.7 = internal global ptr @xt_ct_set_helper._entry.5, section ".printk_index", align 4
@xt_ct_set_timeout._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.xt_ct_set_timeout = private unnamed_addr constant [18 x i8] c"xt_ct_set_timeout\00", align 1
@xt_ct_set_timeout._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @__func__.xt_ct_set_timeout, ptr @.str.3, i32 114, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\016xt_CT: You must specify a L4 protocol and not use inversions on it\00", [59 x i8] zeroinitializer }, align 32
@xt_ct_set_timeout._entry_ptr = internal global ptr @xt_ct_set_timeout._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 312, i32 13 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 82, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 89, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [25 x i8] c"../net/netfilter/xt_CT.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 113, i32 3 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_alias705, ptr @__UNIQUE_ID_alias706, ptr @__UNIQUE_ID_alias707, ptr @__UNIQUE_ID_alias708, ptr @__UNIQUE_ID_description704, ptr @__UNIQUE_ID_file702, ptr @__UNIQUE_ID_license703, ptr @__exitcall_xt_ct_tg_exit, ptr @__initcall__kmod_xt_CT__701_384_xt_ct_tg_init6, ptr @xt_ct_set_helper._entry, ptr @xt_ct_set_helper._entry.5, ptr @xt_ct_set_helper._entry_ptr, ptr @xt_ct_set_helper._entry_ptr.7, ptr @xt_ct_set_timeout._entry, ptr @xt_ct_set_timeout._entry_ptr, ptr @xt_ct_tg_exit, ptr @.str, ptr @xt_ct_set_helper._rs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @xt_ct_set_helper._rs.4, ptr @.str.6, ptr @xt_ct_set_timeout._rs, ptr @.str.8], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_ct_set_helper._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_ct_set_helper._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_ct_set_helper._rs.4 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_ct_set_helper._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_ct_set_timeout._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_ct_set_timeout._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xt_ct_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xt_unregister_targets(ptr noundef nonnull @xt_ct_tg_reg, i32 noundef 3) #8
  tail call void @xt_unregister_target(ptr noundef nonnull @notrack_tg_reg) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_ct_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_target(ptr noundef nonnull @notrack_tg_reg) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xt_register_targets(ptr noundef nonnull @xt_ct_tg_reg, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @xt_unregister_target(ptr noundef nonnull @notrack_tg_reg) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_ct_target_v0(ptr nocapture noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %ct1 = getelementptr inbounds %struct.xt_ct_target_info, ptr %2, i32 0, i32 6
  %3 = ptrtoint ptr %ct1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ct1, align 8
  %_nfct.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %5 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_nfct.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xt_ct_target.exit_crit_edge

entry.xt_ct_target.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %xt_ct_target.exit

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i.return.sink.split.i_crit_edge, label %if.then1.i

if.end.i.return.sink.split.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split.i

if.then1.i:                                       ; preds = %if.end.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %4, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #8, !srcloc !51
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then1.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !52

if.then1.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then1.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !53

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then1.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then1.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef %.sink.i.i.i.i) #8
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %9 = ptrtoint ptr %4 to i32
  %or.i.i = or i32 %9, 2
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %refcount_inc.exit.i, %if.end.i.return.sink.split.i_crit_edge
  %or.i.sink.i = phi i32 [ %or.i.i, %refcount_inc.exit.i ], [ 7, %if.end.i.return.sink.split.i_crit_edge ]
  %slow_gro.i.i1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %10 = ptrtoint ptr %slow_gro.i.i1.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %bf.load.i.i.i = load i32, ptr %slow_gro.i.i1.i, align 2
  %bf.set.i.i.i = or i32 %bf.load.i.i.i, 4096
  store i32 %bf.set.i.i.i, ptr %slow_gro.i.i1.i, align 2
  %11 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i.sink.i, ptr %_nfct.i, align 8
  br label %xt_ct_target.exit

xt_ct_target.exit:                                ; preds = %return.sink.split.i, %entry.xt_ct_target.exit_crit_edge
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_ct_tg_check_v0(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %info_v1 = alloca %struct.xt_ct_target_info_v1, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %info_v1) #8
  %2 = getelementptr inbounds i8, ptr %info_v1, i32 24
  %3 = call ptr @memset(ptr %2, i32 0, i32 48)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 8
  %6 = ptrtoint ptr %info_v1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %info_v1, align 8
  %zone = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info_v1, i32 0, i32 1
  %zone2 = getelementptr inbounds %struct.xt_ct_target_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %zone2 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %zone2, align 2
  %9 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %zone, align 2
  %ct_events = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info_v1, i32 0, i32 2
  %ct_events3 = getelementptr inbounds %struct.xt_ct_target_info, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %ct_events3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ct_events3, align 4
  %12 = ptrtoint ptr %ct_events to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ct_events, align 4
  %exp_events = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info_v1, i32 0, i32 3
  %exp_events4 = getelementptr inbounds %struct.xt_ct_target_info, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %exp_events4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %exp_events4, align 8
  %15 = ptrtoint ptr %exp_events to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %exp_events, align 8
  %16 = load i16, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %16)
  %tobool.not = icmp ult i16 %16, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %helper = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info_v1, i32 0, i32 4
  %helper6 = getelementptr inbounds %struct.xt_ct_target_info, ptr %1, i32 0, i32 4
  %17 = call ptr @memcpy(ptr %helper, ptr %helper6, i32 16)
  %call = call fastcc i32 @xt_ct_tg_check(ptr noundef %par, ptr noundef nonnull %info_v1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %ct = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info_v1, i32 0, i32 7
  %18 = ptrtoint ptr %ct to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ct, align 8
  %ct11 = getelementptr inbounds %struct.xt_ct_target_info, ptr %1, i32 0, i32 6
  %20 = ptrtoint ptr %ct11 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %ct11, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %info_v1) #8
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xt_ct_tg_destroy_v0(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %info_v1 = alloca %struct.xt_ct_target_info_v1, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %info_v1) #8
  %2 = getelementptr inbounds i8, ptr %info_v1, i32 24
  %3 = call ptr @memset(ptr %2, i32 0, i32 48)
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %1, align 8
  %6 = ptrtoint ptr %info_v1 to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %info_v1, align 8
  %zone = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info_v1, i32 0, i32 1
  %zone2 = getelementptr inbounds %struct.xt_ct_target_info, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %zone2 to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %zone2, align 2
  %9 = ptrtoint ptr %zone to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %zone, align 2
  %ct_events = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info_v1, i32 0, i32 2
  %ct_events3 = getelementptr inbounds %struct.xt_ct_target_info, ptr %1, i32 0, i32 2
  %10 = ptrtoint ptr %ct_events3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ct_events3, align 4
  %12 = ptrtoint ptr %ct_events to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %ct_events, align 4
  %exp_events = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info_v1, i32 0, i32 3
  %exp_events4 = getelementptr inbounds %struct.xt_ct_target_info, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %exp_events4 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %exp_events4, align 8
  %15 = ptrtoint ptr %exp_events to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %exp_events, align 8
  %ct = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info_v1, i32 0, i32 7
  %ct5 = getelementptr inbounds %struct.xt_ct_target_info, ptr %1, i32 0, i32 6
  %16 = ptrtoint ptr %ct5 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ct5, align 8
  %18 = ptrtoint ptr %ct to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %ct, align 8
  %helper = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info_v1, i32 0, i32 4
  %helper6 = getelementptr inbounds %struct.xt_ct_target_info, ptr %1, i32 0, i32 4
  %19 = call ptr @memcpy(ptr %helper, ptr %helper6, i32 16)
  call fastcc void @xt_ct_tg_destroy(ptr noundef %par, ptr noundef nonnull %info_v1)
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %info_v1) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_ct_target_v1(ptr nocapture noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %ct1 = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %2, i32 0, i32 7
  %3 = ptrtoint ptr %ct1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ct1, align 8
  %_nfct.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %5 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %_nfct.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp.not.i = icmp eq i32 %6, 0
  br i1 %cmp.not.i, label %if.end.i, label %entry.xt_ct_target.exit_crit_edge

entry.xt_ct_target.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %xt_ct_target.exit

if.end.i:                                         ; preds = %entry
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %if.end.i.return.sink.split.i_crit_edge, label %if.then1.i

if.end.i.return.sink.split.i_crit_edge:           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %return.sink.split.i

if.then1.i:                                       ; preds = %if.end.i
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %4, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr nonnull %4, i32 1, i32 3, i32 1) #8
  %7 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %4, ptr nonnull %4, i32 1, ptr nonnull elementtype(i32) %4) #8, !srcloc !51
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %tobool1.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i.i, label %if.then1.i.if.end15.sink.split.i.i.i.i_crit_edge, label %if.else.i.i.i.i, !prof !52

if.then1.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.then1.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i:                                  ; preds = %if.then1.i
  %add.i.i.i.i = add i32 %asmresult.i.i.i.i.i.i, 1
  %8 = or i32 %add.i.i.i.i, %asmresult.i.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %8)
  %.not.i.i.i.i = icmp sgt i32 %8, -1
  br i1 %.not.i.i.i.i, label %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge, label %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, !prof !53

if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge: ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i.i

if.else.i.i.i.i.refcount_inc.exit.i_crit_edge:    ; preds = %if.else.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %refcount_inc.exit.i

if.end15.sink.split.i.i.i.i:                      ; preds = %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge, %if.then1.i.if.end15.sink.split.i.i.i.i_crit_edge
  %.sink.i.i.i.i = phi i32 [ 2, %if.then1.i.if.end15.sink.split.i.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.i.if.end15.sink.split.i.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef nonnull %4, i32 noundef %.sink.i.i.i.i) #8
  br label %refcount_inc.exit.i

refcount_inc.exit.i:                              ; preds = %if.end15.sink.split.i.i.i.i, %if.else.i.i.i.i.refcount_inc.exit.i_crit_edge
  %9 = ptrtoint ptr %4 to i32
  %or.i.i = or i32 %9, 2
  br label %return.sink.split.i

return.sink.split.i:                              ; preds = %refcount_inc.exit.i, %if.end.i.return.sink.split.i_crit_edge
  %or.i.sink.i = phi i32 [ %or.i.i, %refcount_inc.exit.i ], [ 7, %if.end.i.return.sink.split.i_crit_edge ]
  %slow_gro.i.i1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %10 = ptrtoint ptr %slow_gro.i.i1.i to i32
  call void @__asan_loadN_noabort(i32 %10, i32 4)
  %bf.load.i.i.i = load i32, ptr %slow_gro.i.i1.i, align 2
  %bf.set.i.i.i = or i32 %bf.load.i.i.i, 4096
  store i32 %bf.set.i.i.i, ptr %slow_gro.i.i1.i, align 2
  %11 = ptrtoint ptr %_nfct.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %or.i.sink.i, ptr %_nfct.i, align 8
  br label %xt_ct_target.exit

xt_ct_target.exit:                                ; preds = %return.sink.split.i, %entry.xt_ct_target.exit_crit_edge
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_ct_tg_check_v1(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2, i16 %3)
  %tobool.not = icmp ult i16 %3, 2
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @xt_ct_tg_check(ptr noundef %par, ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xt_ct_tg_destroy_v1(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 2
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  tail call fastcc void @xt_ct_tg_destroy(ptr noundef %par, ptr noundef %1)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_ct_tg_check_v2(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 32, i16 %3)
  %tobool.not = icmp ult i16 %3, 32
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call fastcc i32 @xt_ct_tg_check(ptr noundef %par, ptr noundef %1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @xt_ct_tg_check(ptr nocapture noundef readonly %par, ptr noundef %info) unnamed_addr #2 align 64 {
entry:
  %zone = alloca %struct.nf_conntrack_zone, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %zone) #8
  %0 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nf_conntrack_zone, ptr %zone, i32 0, i32 2
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %info, align 8
  %4 = and i16 %3, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %4)
  %tobool.not = icmp eq i16 %4, 0
  br i1 %tobool.not, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 6
  %7 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %family, align 4
  %call = tail call i32 @nf_ct_netns_get(ptr noundef %6, i8 noundef zeroext %8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %9 = ptrtoint ptr %zone to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %zone, align 4
  %zone4 = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info, i32 0, i32 1
  %10 = ptrtoint ptr %zone4 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %zone4, align 2
  store i16 %11, ptr %zone, align 4
  %12 = ptrtoint ptr %info to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %info, align 8
  %14 = and i16 %13, 12
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %14)
  %switch.selectcmp.i = icmp eq i16 %14, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %14)
  %switch.selectcmp2.i = icmp eq i16 %14, 4
  %15 = select i1 %switch.selectcmp.i, i8 2, i8 3
  %conv6 = select i1 %switch.selectcmp2.i, i8 1, i8 %15
  %16 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv6, ptr %1, align 1
  %17 = and i16 %13, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool10.not = icmp eq i16 %17, 0
  br i1 %tobool10.not, label %if.end3.if.end15_crit_edge, label %if.then11

if.end3.if.end15_crit_edge:                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

if.then11:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %0, align 2
  %20 = or i8 %19, 1
  store i8 %20, ptr %0, align 2
  br label %if.end15

if.end15:                                         ; preds = %if.then11, %if.end3.if.end15_crit_edge
  %21 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %par, align 4
  %call17 = call ptr @nf_ct_tmpl_alloc(ptr noundef %22, ptr noundef nonnull %zone, i32 noundef 3264) #8
  %tobool18.not = icmp eq ptr %call17, null
  br i1 %tobool18.not, label %if.end15.err2_crit_edge, label %if.end20

if.end15.err2_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %err2

if.end20:                                         ; preds = %if.end15
  %ct_events = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info, i32 0, i32 2
  %23 = ptrtoint ptr %ct_events to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ct_events, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool21.not = icmp eq i32 %24, 0
  br i1 %tobool21.not, label %lor.lhs.false, label %land.lhs.true

lor.lhs.false:                                    ; preds = %if.end20
  %exp_events = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info, i32 0, i32 3
  %25 = ptrtoint ptr %exp_events to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %exp_events, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool22.not = icmp eq i32 %26, 0
  br i1 %tobool22.not, label %lor.lhs.false.if.end30_crit_edge, label %land.lhs.true.thread

lor.lhs.false.if.end30_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

land.lhs.true.thread:                             ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %27 = ptrtoint ptr %exp_events to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %exp_events, align 8
  %conv26137 = trunc i32 %28 to i16
  br label %land.lhs.true.i

land.lhs.true:                                    ; preds = %if.end20
  %conv24 = trunc i32 %24 to i16
  %exp_events25 = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info, i32 0, i32 3
  %29 = ptrtoint ptr %exp_events25 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %exp_events25, align 8
  %conv26 = trunc i32 %30 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv24)
  %tobool.not.i = icmp eq i16 %conv24, 0
  br i1 %tobool.not.i, label %land.lhs.true.land.lhs.true.i_crit_edge, label %land.lhs.true.if.end9.i_crit_edge

land.lhs.true.if.end9.i_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

land.lhs.true.land.lhs.true.i_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %land.lhs.true.land.lhs.true.i_crit_edge, %land.lhs.true.thread
  %conv26140 = phi i16 [ %conv26137, %land.lhs.true.thread ], [ %conv26, %land.lhs.true.land.lhs.true.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv26140)
  %tobool1.not.i = icmp eq i16 %conv26140, 0
  br i1 %tobool1.not.i, label %if.end.i, label %land.lhs.true.i.if.end9.i_crit_edge

land.lhs.true.i.if.end9.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end.i:                                         ; preds = %land.lhs.true.i
  %.in = getelementptr inbounds %struct.nf_conn, ptr %call17, i32 0, i32 7
  %31 = ptrtoint ptr %.in to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %.in, align 4
  %sysctl_events.i = getelementptr inbounds %struct.net, ptr %32, i32 0, i32 40, i32 2
  %33 = ptrtoint ptr %sysctl_events.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sysctl_events.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool4.not.not.i = icmp eq i8 %34, 0
  br i1 %tobool4.not.not.i, label %if.end.i.err3_crit_edge, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9.i

if.end.i.err3_crit_edge:                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err3

if.end9.i:                                        ; preds = %if.end.i.if.end9.i_crit_edge, %land.lhs.true.i.if.end9.i_crit_edge, %land.lhs.true.if.end9.i_crit_edge
  %expmask.addr.08.i = phi i16 [ -1, %if.end.i.if.end9.i_crit_edge ], [ %conv26, %land.lhs.true.if.end9.i_crit_edge ], [ %conv26140, %land.lhs.true.i.if.end9.i_crit_edge ]
  %ctmask.addr.07.i = phi i16 [ -1, %if.end.i.if.end9.i_crit_edge ], [ %conv24, %land.lhs.true.if.end9.i_crit_edge ], [ 0, %land.lhs.true.i.if.end9.i_crit_edge ]
  %call10.i = call ptr @nf_ct_ext_add(ptr noundef nonnull %call17, i32 noundef 4, i32 noundef 3264) #8
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %if.end9.i.err3_crit_edge, label %nf_ct_ecache_ext_add.exit

if.end9.i.err3_crit_edge:                         ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err3

nf_ct_ecache_ext_add.exit:                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #10
  %ctmask13.i = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %call10.i, i32 0, i32 2
  %35 = ptrtoint ptr %ctmask13.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %ctmask.addr.07.i, ptr %ctmask13.i, align 2
  %expmask14.i = getelementptr inbounds %struct.nf_conntrack_ecache, ptr %call10.i, i32 0, i32 3
  %36 = ptrtoint ptr %expmask14.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %expmask.addr.08.i, ptr %expmask14.i, align 4
  br label %if.end30

if.end30:                                         ; preds = %nf_ct_ecache_ext_add.exit, %lor.lhs.false.if.end30_crit_edge
  %helper = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info, i32 0, i32 4
  %37 = ptrtoint ptr %helper to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %helper, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool31.not = icmp eq i8 %38, 0
  br i1 %tobool31.not, label %if.end30.if.end46_crit_edge, label %if.then32

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end46

if.then32:                                        ; preds = %if.end30
  %call34 = call i32 @strnlen(ptr noundef %helper, i32 noundef 16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %call34)
  %cmp35 = icmp eq i32 %call34, 16
  br i1 %cmp35, label %if.then32.err3_crit_edge, label %if.end38

if.then32.err3_crit_edge:                         ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #10
  br label %err3

if.end38:                                         ; preds = %if.then32
  %39 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %family, align 4
  %41 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values)
  switch i8 %40, label %if.end38.if.then.i_crit_edge [
    i8 2, label %if.then.i.i
    i8 10, label %if.then10.i.i
  ]

if.end38.if.then.i_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i.i:                                      ; preds = %if.end38
  %entryinfo.i.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 2
  %42 = ptrtoint ptr %entryinfo.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %entryinfo.i.i, align 4
  %invflags.i.i = getelementptr inbounds %struct.ipt_ip, ptr %43, i32 0, i32 10
  %44 = ptrtoint ptr %invflags.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %invflags.i.i, align 1
  %46 = and i8 %45, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.not.i.i = icmp eq i8 %46, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i.if.then.i_crit_edge

if.then.i.i.if.then.i_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end.i.i:                                       ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %proto.i.i = getelementptr inbounds %struct.ipt_ip, ptr %43, i32 0, i32 8
  br label %xt_ct_find_proto.exit.i

if.then10.i.i:                                    ; preds = %if.end38
  %entryinfo12.i.i = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 2
  %47 = ptrtoint ptr %entryinfo12.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %entryinfo12.i.i, align 4
  %invflags13.i.i = getelementptr inbounds %struct.ip6t_ip6, ptr %48, i32 0, i32 11
  %49 = ptrtoint ptr %invflags13.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %invflags13.i.i, align 4
  %51 = and i8 %50, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool16.not.i.i = icmp eq i8 %51, 0
  br i1 %tobool16.not.i.i, label %if.end18.i.i, label %if.then10.i.i.if.then.i_crit_edge

if.then10.i.i.if.then.i_crit_edge:                ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.end18.i.i:                                     ; preds = %if.then10.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %proto20.i.i = getelementptr inbounds %struct.ip6t_ip6, ptr %48, i32 0, i32 8
  br label %xt_ct_find_proto.exit.i

xt_ct_find_proto.exit.i:                          ; preds = %if.end18.i.i, %if.end.i.i
  %proto20.sink.i.i = phi ptr [ %proto20.i.i, %if.end18.i.i ], [ %proto.i.i, %if.end.i.i ]
  %52 = ptrtoint ptr %proto20.sink.i.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %proto20.sink.i.i, align 8
  %conv21.i.i = trunc i16 %53 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv21.i.i)
  %tobool.not.i107 = icmp eq i8 %conv21.i.i, 0
  br i1 %tobool.not.i107, label %xt_ct_find_proto.exit.i.if.then.i_crit_edge, label %if.end5.i

xt_ct_find_proto.exit.i.if.then.i_crit_edge:      ; preds = %xt_ct_find_proto.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i

if.then.i:                                        ; preds = %xt_ct_find_proto.exit.i.if.then.i_crit_edge, %if.then10.i.i.if.then.i_crit_edge, %if.then.i.i.if.then.i_crit_edge, %if.end38.if.then.i_crit_edge
  %call1.i = call i32 @___ratelimit(ptr noundef nonnull @xt_ct_set_helper._rs, ptr noundef nonnull @__func__.xt_ct_set_helper) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.then.i.err3_crit_edge, label %do.end.i

if.then.i.err3_crit_edge:                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err3

do.end.i:                                         ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2) #12
  br label %err3

if.end5.i:                                        ; preds = %xt_ct_find_proto.exit.i
  %conv.i = zext i8 %40 to i16
  %call6.i = call ptr @nf_conntrack_helper_try_module_get(ptr noundef %helper, i16 noundef zeroext %conv.i, i8 noundef zeroext %conv21.i.i) #8
  %cmp.i = icmp eq ptr %call6.i, null
  br i1 %cmp.i, label %if.then8.i, label %if.end18.i

if.then8.i:                                       ; preds = %if.end5.i
  %call9.i = call i32 @___ratelimit(ptr noundef nonnull @xt_ct_set_helper._rs.4, ptr noundef nonnull @__func__.xt_ct_set_helper) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.then8.i.err3_crit_edge, label %do.end14.i

if.then8.i.err3_crit_edge:                        ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err3

do.end14.i:                                       ; preds = %if.then8.i
  call void @__sanitizer_cov_trace_pc() #10
  %call16.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef %helper) #12
  br label %err3

if.end18.i:                                       ; preds = %if.end5.i
  %call19.i = call ptr @nf_ct_helper_ext_add(ptr noundef nonnull %call17, i32 noundef 3264) #8
  %cmp20.i = icmp eq ptr %call19.i, null
  br i1 %cmp20.i, label %if.then22.i, label %xt_ct_set_helper.exit

if.then22.i:                                      ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @nf_conntrack_helper_put(ptr noundef nonnull %call6.i) #8
  br label %err3

xt_ct_set_helper.exit:                            ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %call19.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %call6.i, ptr %call19.i, align 8
  br label %if.end46

if.end46:                                         ; preds = %xt_ct_set_helper.exit, %if.end30.if.end46_crit_edge
  %timeout = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info, i32 0, i32 5
  %55 = ptrtoint ptr %timeout to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %timeout, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool48.not = icmp eq i8 %56, 0
  br i1 %tobool48.not, label %if.end46.if.end64_crit_edge, label %if.then49

if.end46.if.end64_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then49:                                        ; preds = %if.end46
  %call52 = call i32 @strnlen(ptr noundef %timeout, i32 noundef 32) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call52)
  %cmp53 = icmp eq i32 %call52, 32
  br i1 %cmp53, label %if.then49.err4_crit_edge, label %if.end56

if.then49.err4_crit_edge:                         ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #10
  br label %err4

if.end56:                                         ; preds = %if.then49
  %57 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %family, align 4
  %59 = zext i8 %58 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %58, label %if.end56.if.then.i128_crit_edge [
    i8 2, label %if.then.i.i113
    i8 10, label %if.then10.i.i119
  ]

if.end56.if.then.i128_crit_edge:                  ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i128

if.then.i.i113:                                   ; preds = %if.end56
  %entryinfo.i.i110 = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 2
  %60 = ptrtoint ptr %entryinfo.i.i110 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %entryinfo.i.i110, align 4
  %invflags.i.i111 = getelementptr inbounds %struct.ipt_ip, ptr %61, i32 0, i32 10
  %62 = ptrtoint ptr %invflags.i.i111 to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %invflags.i.i111, align 1
  %64 = and i8 %63, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %64)
  %tobool.not.i.i112 = icmp eq i8 %64, 0
  br i1 %tobool.not.i.i112, label %if.end.i.i115, label %if.then.i.i113.if.then.i128_crit_edge

if.then.i.i113.if.then.i128_crit_edge:            ; preds = %if.then.i.i113
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i128

if.end.i.i115:                                    ; preds = %if.then.i.i113
  call void @__sanitizer_cov_trace_pc() #10
  %proto.i.i114 = getelementptr inbounds %struct.ipt_ip, ptr %61, i32 0, i32 8
  br label %xt_ct_find_proto.exit.i125

if.then10.i.i119:                                 ; preds = %if.end56
  %entryinfo12.i.i116 = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 2
  %65 = ptrtoint ptr %entryinfo12.i.i116 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %entryinfo12.i.i116, align 4
  %invflags13.i.i117 = getelementptr inbounds %struct.ip6t_ip6, ptr %66, i32 0, i32 11
  %67 = ptrtoint ptr %invflags13.i.i117 to i32
  call void @__asan_load1_noabort(i32 %67)
  %68 = load i8, ptr %invflags13.i.i117, align 4
  %69 = and i8 %68, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool16.not.i.i118 = icmp eq i8 %69, 0
  br i1 %tobool16.not.i.i118, label %if.end18.i.i121, label %if.then10.i.i119.if.then.i128_crit_edge

if.then10.i.i119.if.then.i128_crit_edge:          ; preds = %if.then10.i.i119
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i128

if.end18.i.i121:                                  ; preds = %if.then10.i.i119
  call void @__sanitizer_cov_trace_pc() #10
  %proto20.i.i120 = getelementptr inbounds %struct.ip6t_ip6, ptr %66, i32 0, i32 8
  br label %xt_ct_find_proto.exit.i125

xt_ct_find_proto.exit.i125:                       ; preds = %if.end18.i.i121, %if.end.i.i115
  %proto20.sink.i.i122 = phi ptr [ %proto20.i.i120, %if.end18.i.i121 ], [ %proto.i.i114, %if.end.i.i115 ]
  %70 = ptrtoint ptr %proto20.sink.i.i122 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %proto20.sink.i.i122, align 8
  %conv21.i.i123 = trunc i16 %71 to i8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv21.i.i123)
  %tobool.not.i124 = icmp eq i8 %conv21.i.i123, 0
  br i1 %tobool.not.i124, label %xt_ct_find_proto.exit.i125.if.then.i128_crit_edge, label %xt_ct_set_timeout.exit

xt_ct_find_proto.exit.i125.if.then.i128_crit_edge: ; preds = %xt_ct_find_proto.exit.i125
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then.i128

if.then.i128:                                     ; preds = %xt_ct_find_proto.exit.i125.if.then.i128_crit_edge, %if.then10.i.i119.if.then.i128_crit_edge, %if.then.i.i113.if.then.i128_crit_edge, %if.end56.if.then.i128_crit_edge
  %call1.i126 = call i32 @___ratelimit(ptr noundef nonnull @xt_ct_set_timeout._rs, ptr noundef nonnull @__func__.xt_ct_set_timeout) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i126)
  %tobool2.not.i127 = icmp eq i32 %call1.i126, 0
  br i1 %tobool2.not.i127, label %if.then.i128.err4_crit_edge, label %do.end.i130

if.then.i128.err4_crit_edge:                      ; preds = %if.then.i128
  call void @__sanitizer_cov_trace_pc() #10
  br label %err4

do.end.i130:                                      ; preds = %if.then.i128
  call void @__sanitizer_cov_trace_pc() #10
  %call4.i129 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8) #12
  br label %err4

xt_ct_set_timeout.exit:                           ; preds = %xt_ct_find_proto.exit.i125
  %call6.i131 = call ptr @nf_ct_l4proto_find(i8 noundef zeroext %conv21.i.i123) #8
  %72 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %par, align 4
  %74 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %family, align 4
  %76 = ptrtoint ptr %call6.i131 to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %call6.i131, align 4
  %call8.i = call i32 @nf_ct_set_timeout(ptr noundef %73, ptr noundef nonnull %call17, i8 noundef zeroext %75, i8 noundef zeroext %77, ptr noundef %timeout) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp60 = icmp slt i32 %call8.i, 0
  br i1 %cmp60, label %xt_ct_set_timeout.exit.err4_crit_edge, label %xt_ct_set_timeout.exit.if.end64_crit_edge

xt_ct_set_timeout.exit.if.end64_crit_edge:        ; preds = %xt_ct_set_timeout.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

xt_ct_set_timeout.exit.err4_crit_edge:            ; preds = %xt_ct_set_timeout.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err4

if.end64:                                         ; preds = %xt_ct_set_timeout.exit.if.end64_crit_edge, %if.end46.if.end64_crit_edge
  %status = getelementptr inbounds %struct.nf_conn, ptr %call17, i32 0, i32 5
  %78 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %status, align 4
  %or.i = or i32 %79, 8
  store i32 %or.i, ptr %status, align 4
  br label %out

out:                                              ; preds = %if.end64, %entry.out_crit_edge
  %ct.0 = phi ptr [ %call17, %if.end64 ], [ null, %entry.out_crit_edge ]
  %ct65 = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info, i32 0, i32 7
  %80 = ptrtoint ptr %ct65 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %ct.0, ptr %ct65, align 8
  br label %cleanup

err4:                                             ; preds = %xt_ct_set_timeout.exit.err4_crit_edge, %do.end.i130, %if.then.i128.err4_crit_edge, %if.then49.err4_crit_edge
  %ret.0 = phi i32 [ %call8.i, %xt_ct_set_timeout.exit.err4_crit_edge ], [ -36, %if.then49.err4_crit_edge ], [ -22, %do.end.i130 ], [ -22, %if.then.i128.err4_crit_edge ]
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %call17, i32 0, i32 13
  %81 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %82, null
  br i1 %tobool.not.i.i.i, label %err4.err3_crit_edge, label %nf_ct_ext_exist.exit.i.i

err4.err3_crit_edge:                              ; preds = %err4
  call void @__sanitizer_cov_trace_pc() #10
  br label %err3

nf_ct_ext_exist.exit.i.i:                         ; preds = %err4
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %82, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.i.i.not.i.i = icmp eq i8 %84, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.err3_crit_edge, label %nfct_help.exit

nf_ct_ext_exist.exit.i.i.err3_crit_edge:          ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err3

nfct_help.exit:                                   ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %84 to i32
  %add.ptr.i.i = getelementptr i8, ptr %82, i32 %conv.i.i
  %tobool67.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool67.not, label %nfct_help.exit.err3_crit_edge, label %if.then68

nfct_help.exit.err3_crit_edge:                    ; preds = %nfct_help.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err3

if.then68:                                        ; preds = %nfct_help.exit
  call void @__sanitizer_cov_trace_pc() #10
  %85 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %add.ptr.i.i, align 8
  call void @nf_conntrack_helper_put(ptr noundef %86) #8
  br label %err3

err3:                                             ; preds = %if.then68, %nfct_help.exit.err3_crit_edge, %nf_ct_ext_exist.exit.i.i.err3_crit_edge, %err4.err3_crit_edge, %if.then22.i, %do.end14.i, %if.then8.i.err3_crit_edge, %do.end.i, %if.then.i.err3_crit_edge, %if.then32.err3_crit_edge, %if.end9.i.err3_crit_edge, %if.end.i.err3_crit_edge
  %ret.1 = phi i32 [ %ret.0, %if.then68 ], [ %ret.0, %nfct_help.exit.err3_crit_edge ], [ -36, %if.then32.err3_crit_edge ], [ -22, %if.end.i.err3_crit_edge ], [ -22, %if.end9.i.err3_crit_edge ], [ -2, %if.then8.i.err3_crit_edge ], [ -2, %do.end14.i ], [ -2, %if.then.i.err3_crit_edge ], [ -2, %do.end.i ], [ -12, %if.then22.i ], [ %ret.0, %nf_ct_ext_exist.exit.i.i.err3_crit_edge ], [ %ret.0, %err4.err3_crit_edge ]
  call void @nf_ct_tmpl_free(ptr noundef nonnull %call17) #8
  br label %err2

err2:                                             ; preds = %err3, %if.end15.err2_crit_edge
  %ret.2 = phi i32 [ %ret.1, %err3 ], [ -12, %if.end15.err2_crit_edge ]
  %87 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %par, align 4
  %89 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %family, align 4
  call void @nf_ct_netns_put(ptr noundef %88, i8 noundef zeroext %90) #8
  br label %cleanup

cleanup:                                          ; preds = %err2, %out, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %out ], [ %call, %if.end.cleanup_crit_edge ], [ %ret.2, %err2 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %zone) #8
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_netns_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_tmpl_alloc(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strnlen(ptr nocapture noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_conntrack_helper_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_tmpl_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_netns_put(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_ext_add(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_conntrack_helper_try_module_get(ptr noundef, i16 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_helper_ext_add(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nf_ct_l4proto_find(i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_set_timeout(ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @xt_ct_tg_destroy(ptr nocapture noundef readonly %par, ptr nocapture noundef readonly %info) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ct1 = getelementptr inbounds %struct.xt_ct_target_info_v1, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %ct1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ct1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end5_crit_edge, label %if.then

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then:                                          ; preds = %entry
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool.not.i.i.i, label %if.then.if.end_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.then
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %3, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.i.i.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.if.end_crit_edge, label %nfct_help.exit

nf_ct_ext_exist.exit.i.i.if.end_crit_edge:        ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

nfct_help.exit:                                   ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %tobool2.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool2.not, label %nfct_help.exit.if.end_crit_edge, label %if.then3

nfct_help.exit.if.end_crit_edge:                  ; preds = %nfct_help.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then3:                                         ; preds = %nfct_help.exit
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i.i, align 8
  tail call void @nf_conntrack_helper_put(ptr noundef %7) #8
  br label %if.end

if.end:                                           ; preds = %if.then3, %nfct_help.exit.if.end_crit_edge, %nf_ct_ext_exist.exit.i.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 3
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %family, align 4
  tail call void @nf_ct_netns_put(ptr noundef %9, i8 noundef zeroext %11) #8
  tail call void @nf_ct_destroy_timeout(ptr noundef nonnull %1) #8
  %12 = ptrtoint ptr %ct1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ct1, align 8
  %tobool.not.i = icmp eq ptr %13, null
  br i1 %tobool.not.i, label %if.end.if.end5_crit_edge, label %land.lhs.true.i

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

land.lhs.true.i:                                  ; preds = %if.end
  %call.i.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef nonnull %13, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !54
  tail call void @llvm.prefetch.p0(ptr nonnull %13, i32 1, i32 3, i32 1) #8
  %14 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr nonnull elementtype(i32) %13, ptr nonnull %13, i32 1, ptr nonnull elementtype(i32) %13) #8, !srcloc !55
  %asmresult.i.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %14, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i.i)
  %cmp.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %if.then.i, label %if.end5.i.i.i.i

if.end5.i.i.i.i:                                  ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i.i)
  %.not.i.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i, label %if.end5.i.i.i.i.if.end5_crit_edge, label %if.then10.i.i.i.i, !prof !53

if.end5.i.i.i.i.if.end5_crit_edge:                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end5

if.then10.i.i.i.i:                                ; preds = %if.end5.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef nonnull %13, i32 noundef 3) #8
  br label %if.end5

if.then.i:                                        ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !56
  tail call void @nf_ct_destroy(ptr noundef nonnull %13) #8
  br label %if.end5

if.end5:                                          ; preds = %if.then.i, %if.then10.i.i.i.i, %if.end5.i.i.i.i.if.end5_crit_edge, %if.end.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_destroy_timeout(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @notrack_tg(ptr nocapture noundef %skb, ptr nocapture noundef readnone %par) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %2 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %2, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, 4096
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %3 = ptrtoint ptr %_nfct to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 7, ptr %_nfct, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret i32 -1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_target(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !39, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__initcall__kmod_xt_CT__701_384_xt_ct_tg_init6, !1, !"__initcall__kmod_xt_CT__701_384_xt_ct_tg_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_CT.c", i32 384, i32 1}
!2 = !{ptr @__exitcall_xt_ct_tg_exit, !3, !"__exitcall_xt_ct_tg_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_CT.c", i32 385, i32 1}
!4 = !{ptr @__UNIQUE_ID_file702, !5, !"__UNIQUE_ID_file702", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_CT.c", i32 387, i32 1}
!6 = !{ptr @__UNIQUE_ID_license703, !5, !"__UNIQUE_ID_license703", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_description704, !8, !"__UNIQUE_ID_description704", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_CT.c", i32 388, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias705, !10, !"__UNIQUE_ID_alias705", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_CT.c", i32 389, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias706, !12, !"__UNIQUE_ID_alias706", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_CT.c", i32 390, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias707, !14, !"__UNIQUE_ID_alias707", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_CT.c", i32 391, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias708, !16, !"__UNIQUE_ID_alias708", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_CT.c", i32 392, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_CT.c", i32 312, i32 13}
!19 = !{ptr @xt_ct_tg_reg, !20, !"xt_ct_tg_reg", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_CT.c", i32 303, i32 25}
!21 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_CT.c", i32 82, i32 3}
!23 = !{ptr @xt_ct_set_helper._rs, !22, !"_rs", i1 false, i1 false}
!24 = !{ptr @__func__.xt_ct_set_helper, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @xt_ct_set_helper._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @xt_ct_set_helper._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @xt_ct_set_helper._rs.4, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../net/netfilter/xt_CT.c", i32 89, i32 3}
!31 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @xt_ct_set_helper._entry.5, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @xt_ct_set_helper._entry_ptr.7, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @xt_ct_set_timeout._rs, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../net/netfilter/xt_CT.c", i32 113, i32 3}
!36 = !{ptr @__func__.xt_ct_set_timeout, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @xt_ct_set_timeout._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @xt_ct_set_timeout._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @notrack_tg_reg, !41, !"notrack_tg_reg", i1 false, i1 false}
!41 = !{!"../net/netfilter/xt_CT.c", i32 353, i32 25}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{i64 2148348570, i64 2148348602, i64 2148348631, i64 2148348665, i64 2148348696, i64 2148348719}
!52 = !{!"branch_weights", i32 1, i32 2000}
!53 = !{!"branch_weights", i32 2000, i32 1}
!54 = !{i64 2148436595}
!55 = !{i64 2148351035, i64 2148351067, i64 2148351096, i64 2148351130, i64 2148351161, i64 2148351184}
!56 = !{i64 2149312709}
