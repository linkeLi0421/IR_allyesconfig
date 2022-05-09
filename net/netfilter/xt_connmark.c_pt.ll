; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_connmark.c_pt.bc'
source_filename = "../net/netfilter/xt_connmark.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sk_buff = type { %union.anon, %union.anon.149, %union.anon.150, [48 x i8], %union.anon.151, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.153, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.149 = type { ptr }
%union.anon.150 = type { i64 }
%union.anon.151 = type { %struct.anon.152 }
%struct.anon.152 = type { i32, ptr }
%union.anon.153 = type { %struct.anon.154 }
%struct.anon.154 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.155, i32, i32, i32, i16, i16, %union.anon.157, i32, %union.anon.158, %union.anon.159, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.155 = type { i32 }
%union.anon.157 = type { i32 }
%union.anon.158 = type { i32 }
%union.anon.159 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xt_action_param = type { %union.anon.166, %union.anon.167, ptr, i32, i16, i8 }
%union.anon.166 = type { ptr }
%union.anon.167 = type { ptr }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.168, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.111 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.111 = type { %union.nf_inet_addr, %union.anon.112, i8, i8 }
%union.anon.112 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.168 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.xt_connmark_mtinfo1 = type { i32, i32, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }
%struct.xt_connmark_tginfo2 = type { i32, i32, i32, i8, i8, i8 }
%struct.xt_connmark_tginfo1 = type { i32, i32, i32, i8 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_tgdtor_param = type { ptr, ptr, ptr, i8 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.104, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.104 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.94, i32, %struct.spinlock }
%union.anon.94 = type { %struct.anon.95 }
%struct.anon.95 = type { ptr, ptr }
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

@__UNIQUE_ID_author587 = internal constant [58 x i8] c"xt_connmark.author=Henrik Nordstrom <hno@marasystems.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description588 = internal constant [60 x i8] c"xt_connmark.description=Xtables: connection mark operations\00", section ".modinfo", align 1
@__UNIQUE_ID_file589 = internal constant [43 x i8] c"xt_connmark.file=net/netfilter/xt_connmark\00", section ".modinfo", align 1
@__UNIQUE_ID_license590 = internal constant [24 x i8] c"xt_connmark.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias591 = internal constant [31 x i8] c"xt_connmark.alias=ipt_CONNMARK\00", section ".modinfo", align 1
@__UNIQUE_ID_alias592 = internal constant [32 x i8] c"xt_connmark.alias=ip6t_CONNMARK\00", section ".modinfo", align 1
@__UNIQUE_ID_alias593 = internal constant [31 x i8] c"xt_connmark.alias=ipt_connmark\00", section ".modinfo", align 1
@__UNIQUE_ID_alias594 = internal constant [32 x i8] c"xt_connmark.alias=ip6t_connmark\00", section ".modinfo", align 1
@connmark_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"connmark\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @connmark_mt, ptr @connmark_mt_check, ptr @connmark_mt_destroy, ptr null, ptr null, i32 12, i32 0, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@connmark_tg_reg = internal global [2 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"CONNMARK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @connmark_tg, ptr @connmark_tg_check, ptr @connmark_tg_destroy, ptr null, ptr null, i32 16, i32 0, i32 0, i16 0, i16 0 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"CONNMARK\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 2, ptr @connmark_tg_v2, ptr @connmark_tg_check, ptr @connmark_tg_destroy, ptr null, ptr null, i32 16, i32 0, i32 0, i16 0, i16 0 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_connmark__595_205_connmark_mt_init6 = internal global ptr @connmark_mt_init, section ".initcall6.init", align 4
@__exitcall_connmark_mt_exit = internal global ptr @connmark_mt_exit, section ".exitcall.exit", align 4
@connmark_mt_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.connmark_mt_check = private unnamed_addr constant [18 x i8] c"connmark_mt_check\00", align 1
@connmark_mt_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.connmark_mt_check, ptr @.str.2, i32 139, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016cannot load conntrack support for proto=%u\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/netfilter/xt_connmark.c\00", [36 x i8] zeroinitializer }, align 32
@connmark_mt_check._entry_ptr = internal global ptr @connmark_mt_check._entry, section ".printk_index", align 4
@connmark_tg_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.connmark_tg_check = private unnamed_addr constant [18 x i8] c"connmark_tg_check\00", align 1
@connmark_tg_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.connmark_tg_check, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@connmark_tg_check._entry_ptr = internal global ptr @connmark_tg_check._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.15 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 138, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.22 = private constant [31 x i8] c"../net/netfilter/xt_connmark.c\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 108, i32 3 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_alias591, ptr @__UNIQUE_ID_alias592, ptr @__UNIQUE_ID_alias593, ptr @__UNIQUE_ID_alias594, ptr @__UNIQUE_ID_author587, ptr @__UNIQUE_ID_description588, ptr @__UNIQUE_ID_file589, ptr @__UNIQUE_ID_license590, ptr @__exitcall_connmark_mt_exit, ptr @__initcall__kmod_xt_connmark__595_205_connmark_mt_init6, ptr @connmark_mt_check._entry, ptr @connmark_mt_check._entry_ptr, ptr @connmark_mt_exit, ptr @connmark_tg_check._entry, ptr @connmark_tg_check._entry_ptr, ptr @connmark_mt_check._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @connmark_tg_check._rs], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connmark_mt_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connmark_mt_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connmark_tg_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connmark_tg_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @connmark_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xt_unregister_match(ptr noundef nonnull @connmark_mt_reg) #6
  tail call void @xt_unregister_targets(ptr noundef nonnull @connmark_tg_reg, i32 noundef 2) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @connmark_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_targets(ptr noundef nonnull @connmark_tg_reg, i32 noundef 2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @xt_register_match(ptr noundef nonnull @connmark_mt_reg) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp2 = icmp slt i32 %call1, 0
  br i1 %cmp2, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xt_unregister_targets(ptr noundef nonnull @connmark_tg_reg, i32 noundef 2) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.then3 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @connmark_mt(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %1, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp = icmp eq i32 %and1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = inttoptr i32 %and1.i to ptr
  %3 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %mark = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 11
  %6 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mark, align 8
  %mask = getelementptr inbounds %struct.xt_connmark_mtinfo1, ptr %5, i32 0, i32 1
  %8 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mask, align 4
  %and = and i32 %9, %7
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %11)
  %cmp2 = icmp eq i32 %and, %11
  %invert = getelementptr inbounds %struct.xt_connmark_mtinfo1, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %invert, align 4
  %14 = zext i1 %cmp2 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %13, i8 %14)
  %tobool = icmp ne i8 %13, %14
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @connmark_mt_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 6
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 4
  %call = tail call i32 @nf_ct_netns_get(ptr noundef %1, i8 noundef zeroext %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @connmark_mt_check._rs, ptr noundef nonnull @__func__.connmark_mt_check) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %family, align 4
  %conv = zext i8 %5 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv) #9
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @connmark_mt_destroy(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 3
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 4
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext %3) #6
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_netns_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_netns_put(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @connmark_tg(ptr nocapture noundef %skb, ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  %info2 = alloca %struct.xt_connmark_tginfo2, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %info2) #6
  %3 = getelementptr inbounds i8, ptr %info2, i32 12
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %2, align 4
  %7 = ptrtoint ptr %info2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %info2, align 4
  %ctmask = getelementptr inbounds %struct.xt_connmark_tginfo2, ptr %info2, i32 0, i32 1
  %ctmask2 = getelementptr inbounds %struct.xt_connmark_tginfo1, ptr %2, i32 0, i32 1
  %8 = ptrtoint ptr %ctmask2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctmask2, align 4
  %10 = ptrtoint ptr %ctmask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %ctmask, align 4
  %nfmask = getelementptr inbounds %struct.xt_connmark_tginfo2, ptr %info2, i32 0, i32 2
  %nfmask3 = getelementptr inbounds %struct.xt_connmark_tginfo1, ptr %2, i32 0, i32 2
  %11 = ptrtoint ptr %nfmask3 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nfmask3, align 4
  %13 = ptrtoint ptr %nfmask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %nfmask, align 4
  %shift_dir = getelementptr inbounds %struct.xt_connmark_tginfo2, ptr %info2, i32 0, i32 3
  %14 = ptrtoint ptr %shift_dir to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 0, ptr %shift_dir, align 4
  %shift_bits = getelementptr inbounds %struct.xt_connmark_tginfo2, ptr %info2, i32 0, i32 4
  %15 = ptrtoint ptr %shift_bits to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 0, ptr %shift_bits, align 1
  %mode = getelementptr inbounds %struct.xt_connmark_tginfo2, ptr %info2, i32 0, i32 5
  %mode4 = getelementptr inbounds %struct.xt_connmark_tginfo1, ptr %2, i32 0, i32 3
  %16 = ptrtoint ptr %mode4 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %mode4, align 4
  %18 = ptrtoint ptr %mode to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %17, ptr %mode, align 2
  call fastcc void @connmark_tg_shift(ptr noundef %skb, ptr noundef nonnull %info2)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %info2) #6
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @connmark_tg_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 6
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 4
  %call = tail call i32 @nf_ct_netns_get(ptr noundef %1, i8 noundef zeroext %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.if.end5_crit_edge

entry.if.end5_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

if.then:                                          ; preds = %entry
  %call1 = tail call i32 @___ratelimit(ptr noundef nonnull @connmark_tg_check._rs, ptr noundef nonnull @__func__.connmark_tg_check) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.then.if.end5_crit_edge, label %do.end

if.then.if.end5_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %family, align 4
  %conv = zext i8 %5 to i32
  %call4 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv) #9
  br label %if.end5

if.end5:                                          ; preds = %do.end, %if.then.if.end5_crit_edge, %entry.if.end5_crit_edge
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @connmark_tg_destroy(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_tgdtor_param, ptr %par, i32 0, i32 3
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 4
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext %3) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @connmark_tg_v2(ptr nocapture noundef %skb, ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  tail call fastcc void @connmark_tg_shift(ptr noundef %skb, ptr noundef %2)
  ret i32 -1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @connmark_tg_shift(ptr nocapture noundef %skb, ptr nocapture noundef readonly %info) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp = icmp eq i32 %and1.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.xt_connmark_tginfo2, ptr %info, i32 0, i32 5
  %3 = ptrtoint ptr %mode to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %mode, align 2
  %5 = zext i8 %4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %4, label %if.end.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb15
    i8 2, label %sw.bb41
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %mark = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 11
  %6 = ptrtoint ptr %mark to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mark, align 8
  %ctmask = getelementptr inbounds %struct.xt_connmark_tginfo2, ptr %info, i32 0, i32 1
  %8 = ptrtoint ptr %ctmask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctmask, align 4
  %neg = xor i32 %9, -1
  %and = and i32 %7, %neg
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %info, align 4
  %xor = xor i32 %and, %11
  %shift_dir = getelementptr inbounds %struct.xt_connmark_tginfo2, ptr %info, i32 0, i32 3
  %12 = ptrtoint ptr %shift_dir to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %shift_dir, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp2 = icmp eq i8 %13, 1
  %shift_bits = getelementptr inbounds %struct.xt_connmark_tginfo2, ptr %info, i32 0, i32 4
  %14 = ptrtoint ptr %shift_bits to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %shift_bits, align 1
  %conv5 = zext i8 %15 to i32
  %shr = lshr i32 %xor, %conv5
  %shl = shl i32 %xor, %conv5
  %newmark.0 = select i1 %cmp2, i32 %shr, i32 %shl
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %newmark.0)
  %cmp10.not = icmp eq i32 %7, %newmark.0
  br i1 %cmp10.not, label %sw.bb.cleanup_crit_edge, label %if.then12

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %sw.bb
  %16 = ptrtoint ptr %mark to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %newmark.0, ptr %mark, align 8
  %ct_net.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 7
  %17 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ct_net.i.i, align 8
  %nf_conntrack_event_cb.i = getelementptr inbounds %struct.net, ptr %18, i32 0, i32 40, i32 9
  %19 = ptrtoint ptr %nf_conntrack_event_cb.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile ptr, ptr %nf_conntrack_event_cb.i, align 16
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %if.then12.cleanup_crit_edge, label %if.end.i

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.then12
  %ext.i.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 13
  %21 = ptrtoint ptr %ext.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ext.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.end.i
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %22, i32 0, i32 4
  %23 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.i.i.not.i.i.i = icmp eq i8 %24, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.cleanup_crit_edge, label %nf_ct_ecache_find.exit.i

nf_ct_ext_exist.exit.i.i.i.cleanup_crit_edge:     ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nf_ct_ecache_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %24 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 %conv.i.i.i
  %cmp.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %cmp.i, label %nf_ct_ecache_find.exit.i.cleanup_crit_edge, label %if.end5.i

nf_ct_ecache_find.exit.i.cleanup_crit_edge:       ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i:                                        ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 7, ptr noundef nonnull %add.ptr.i.i.i) #6
  br label %cleanup

sw.bb15:                                          ; preds = %if.end
  %25 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %nfmask = getelementptr inbounds %struct.xt_connmark_tginfo2, ptr %info, i32 0, i32 2
  %28 = ptrtoint ptr %nfmask to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %nfmask, align 4
  %and16 = and i32 %29, %27
  %shift_dir17 = getelementptr inbounds %struct.xt_connmark_tginfo2, ptr %info, i32 0, i32 3
  %30 = ptrtoint ptr %shift_dir17 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %shift_dir17, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %31)
  %cmp19 = icmp eq i8 %31, 1
  %shift_bits22 = getelementptr inbounds %struct.xt_connmark_tginfo2, ptr %info, i32 0, i32 4
  %32 = ptrtoint ptr %shift_bits22 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %shift_bits22, align 1
  %conv23 = zext i8 %33 to i32
  %shr24 = lshr i32 %and16, %conv23
  %shl28 = shl i32 %and16, %conv23
  %new_targetmark.0 = select i1 %cmp19, i32 %shr24, i32 %shl28
  %mark30 = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 11
  %34 = ptrtoint ptr %mark30 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mark30, align 8
  %ctmask31 = getelementptr inbounds %struct.xt_connmark_tginfo2, ptr %info, i32 0, i32 1
  %36 = ptrtoint ptr %ctmask31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ctmask31, align 4
  %neg32 = xor i32 %37, -1
  %and33 = and i32 %35, %neg32
  %xor34 = xor i32 %and33, %new_targetmark.0
  call void @__sanitizer_cov_trace_cmp4(i32 %35, i32 %xor34)
  %cmp36.not = icmp eq i32 %35, %xor34
  br i1 %cmp36.not, label %sw.bb15.cleanup_crit_edge, label %if.then38

sw.bb15.cleanup_crit_edge:                        ; preds = %sw.bb15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then38:                                        ; preds = %sw.bb15
  %38 = ptrtoint ptr %mark30 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %xor34, ptr %mark30, align 8
  %ct_net.i.i1 = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 7
  %39 = ptrtoint ptr %ct_net.i.i1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %ct_net.i.i1, align 8
  %nf_conntrack_event_cb.i2 = getelementptr inbounds %struct.net, ptr %40, i32 0, i32 40, i32 9
  %41 = ptrtoint ptr %nf_conntrack_event_cb.i2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %nf_conntrack_event_cb.i2, align 16
  %tobool.not.i3 = icmp eq ptr %42, null
  br i1 %tobool.not.i3, label %if.then38.cleanup_crit_edge, label %if.end.i6

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i6:                                        ; preds = %if.then38
  %ext.i.i.i.i4 = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 13
  %43 = ptrtoint ptr %ext.i.i.i.i4 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ext.i.i.i.i4, align 8
  %tobool.not.i.i.i.i5 = icmp eq ptr %44, null
  br i1 %tobool.not.i.i.i.i5, label %if.end.i6.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i.i9

if.end.i6.cleanup_crit_edge:                      ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nf_ct_ext_exist.exit.i.i.i9:                      ; preds = %if.end.i6
  %arrayidx.i.i.i.i.i7 = getelementptr [10 x i8], ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %arrayidx.i.i.i.i.i7 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %arrayidx.i.i.i.i.i7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool.i.i.not.i.i.i8 = icmp eq i8 %46, 0
  br i1 %tobool.i.i.not.i.i.i8, label %nf_ct_ext_exist.exit.i.i.i9.cleanup_crit_edge, label %nf_ct_ecache_find.exit.i13

nf_ct_ext_exist.exit.i.i.i9.cleanup_crit_edge:    ; preds = %nf_ct_ext_exist.exit.i.i.i9
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

nf_ct_ecache_find.exit.i13:                       ; preds = %nf_ct_ext_exist.exit.i.i.i9
  %conv.i.i.i10 = zext i8 %46 to i32
  %add.ptr.i.i.i11 = getelementptr i8, ptr %44, i32 %conv.i.i.i10
  %cmp.i12 = icmp eq ptr %add.ptr.i.i.i11, null
  br i1 %cmp.i12, label %nf_ct_ecache_find.exit.i13.cleanup_crit_edge, label %if.end5.i14

nf_ct_ecache_find.exit.i13.cleanup_crit_edge:     ; preds = %nf_ct_ecache_find.exit.i13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.i14:                                      ; preds = %nf_ct_ecache_find.exit.i13
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @_set_bit(i32 noundef 7, ptr noundef nonnull %add.ptr.i.i.i11) #6
  br label %cleanup

sw.bb41:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mark42 = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 11
  %47 = ptrtoint ptr %mark42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mark42, align 8
  %ctmask43 = getelementptr inbounds %struct.xt_connmark_tginfo2, ptr %info, i32 0, i32 1
  %49 = ptrtoint ptr %ctmask43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ctmask43, align 4
  %and44 = and i32 %50, %48
  %shift_dir45 = getelementptr inbounds %struct.xt_connmark_tginfo2, ptr %info, i32 0, i32 3
  %51 = ptrtoint ptr %shift_dir45 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %shift_dir45, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %52)
  %cmp47 = icmp eq i8 %52, 1
  %shift_bits50 = getelementptr inbounds %struct.xt_connmark_tginfo2, ptr %info, i32 0, i32 4
  %53 = ptrtoint ptr %shift_bits50 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %shift_bits50, align 1
  %conv51 = zext i8 %54 to i32
  %shr52 = lshr i32 %and44, %conv51
  %shl56 = shl i32 %and44, %conv51
  %new_targetmark.1 = select i1 %cmp47, i32 %shr52, i32 %shl56
  %55 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %55, align 4
  %nfmask58 = getelementptr inbounds %struct.xt_connmark_tginfo2, ptr %info, i32 0, i32 2
  %58 = ptrtoint ptr %nfmask58 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %nfmask58, align 4
  %neg59 = xor i32 %59, -1
  %and60 = and i32 %57, %neg59
  %xor61 = xor i32 %and60, %new_targetmark.1
  store i32 %xor61, ptr %55, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb41, %if.end5.i14, %nf_ct_ecache_find.exit.i13.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.i9.cleanup_crit_edge, %if.end.i6.cleanup_crit_edge, %if.then38.cleanup_crit_edge, %sw.bb15.cleanup_crit_edge, %if.end5.i, %nf_ct_ecache_find.exit.i.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !33, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__UNIQUE_ID_author587, !1, !"__UNIQUE_ID_author587", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_connmark.c", i32 18, i32 1}
!2 = !{ptr @__UNIQUE_ID_description588, !3, !"__UNIQUE_ID_description588", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_connmark.c", i32 19, i32 1}
!4 = !{ptr @__UNIQUE_ID_file589, !5, !"__UNIQUE_ID_file589", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_connmark.c", i32 20, i32 1}
!6 = !{ptr @__UNIQUE_ID_license590, !5, !"__UNIQUE_ID_license590", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias591, !8, !"__UNIQUE_ID_alias591", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_connmark.c", i32 21, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias592, !10, !"__UNIQUE_ID_alias592", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_connmark.c", i32 22, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias593, !12, !"__UNIQUE_ID_alias593", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_connmark.c", i32 23, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias594, !14, !"__UNIQUE_ID_alias594", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_connmark.c", i32 24, i32 1}
!15 = !{ptr @__initcall__kmod_xt_connmark__595_205_connmark_mt_init6, !16, !"__initcall__kmod_xt_connmark__595_205_connmark_mt_init6", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_connmark.c", i32 205, i32 1}
!17 = !{ptr @__exitcall_connmark_mt_exit, !18, !"__exitcall_connmark_mt_exit", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_connmark.c", i32 206, i32 1}
!19 = !{ptr @connmark_mt_reg, !20, !"connmark_mt_reg", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_connmark.c", i32 171, i32 24}
!21 = !{ptr @.str, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_connmark.c", i32 138, i32 3}
!23 = !{ptr @connmark_mt_check._rs, !22, !"_rs", i1 false, i1 false}
!24 = !{ptr @__func__.connmark_mt_check, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.1, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.2, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @connmark_mt_check._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @connmark_mt_check._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @connmark_tg_reg, !30, !"connmark_tg_reg", i1 false, i1 false}
!30 = !{!"../net/netfilter/xt_connmark.c", i32 148, i32 25}
!31 = !{ptr @connmark_tg_check._rs, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../net/netfilter/xt_connmark.c", i32 108, i32 3}
!33 = !{ptr @__func__.connmark_tg_check, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @connmark_tg_check._entry, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @connmark_tg_check._entry_ptr, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
