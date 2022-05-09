; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_ipvs.c_pt.bc'
source_filename = "../net/netfilter/xt_ipvs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ip_vs_iphdr = type { i32, i32, i32, i16, i16, i32, %union.nf_inet_addr, %union.nf_inet_addr }
%union.nf_inet_addr = type { [4 x i32] }
%struct.xt_action_param = type { %union.anon.151, %union.anon.152, ptr, i32, i16, i8 }
%union.anon.151 = type { ptr }
%union.anon.152 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.xt_ipvs_mtinfo = type { %union.nf_inet_addr, %union.nf_inet_addr, i16, i8, i8, i16, i8, i8 }
%struct.sk_buff = type { %union.anon, %union.anon.134, %union.anon.135, [48 x i8], %union.anon.136, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.138, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.134 = type { ptr }
%union.anon.135 = type { i64 }
%union.anon.136 = type { %struct.anon.137 }
%struct.anon.137 = type { i32, ptr }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.140, i32, i32, i32, i16, i16, %union.anon.142, i32, %union.anon.143, %union.anon.144, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.140 = type { i32 }
%union.anon.142 = type { i32 }
%union.anon.143 = type { i32 }
%union.anon.144 = type { i16 }
%struct.ip_vs_protocol = type { ptr, ptr, i16, i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ip_vs_conn = type { %struct.hlist_node, i16, i16, i16, i16, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_inet_addr, i32, i16, i16, ptr, %struct.refcount_struct, %struct.timer_list, i32, %struct.spinlock, i16, i16, i32, i32, ptr, %struct.atomic_t, ptr, %struct.atomic_t, ptr, ptr, ptr, %struct.ip_vs_seq, %struct.ip_vs_seq, ptr, ptr, i8, %struct.callback_head }
%struct.ip_vs_seq = type { i32, i32, i32 }
%struct.callback_head = type { ptr, ptr }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@__UNIQUE_ID_author584 = internal constant [46 x i8] c"xt_ipvs.author=Hannes Eder <heder@google.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description585 = internal constant [62 x i8] c"xt_ipvs.description=Xtables: match IPVS connection properties\00", section ".modinfo", align 1
@__UNIQUE_ID_file586 = internal constant [35 x i8] c"xt_ipvs.file=net/netfilter/xt_ipvs\00", section ".modinfo", align 1
@__UNIQUE_ID_license587 = internal constant [20 x i8] c"xt_ipvs.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias588 = internal constant [23 x i8] c"xt_ipvs.alias=ipt_ipvs\00", section ".modinfo", align 1
@__UNIQUE_ID_alias589 = internal constant [24 x i8] c"xt_ipvs.alias=ip6t_ipvs\00", section ".modinfo", align 1
@xt_ipvs_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"ipvs\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ipvs_mt, ptr @ipvs_mt_check, ptr null, ptr null, ptr null, i32 40, i32 0, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_ipvs__591_190_ipvs_mt_init6 = internal global ptr @ipvs_mt_init, section ".initcall6.init", align 4
@__exitcall_ipvs_mt_exit = internal global ptr @ipvs_mt_exit, section ".exitcall.exit", align 4
@ipvs_mt.__UNIQUE_ID_ddebug590 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"xt_ipvs\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ipvs_mt\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/netfilter/xt_ipvs.c\00", [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"match=%d\0A\00", [22 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"xt_ipvs: match=%d\0A\00", [45 x i8] zeroinitializer }, align 32
@ipvs_mt_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.5, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.ipvs_mt_check = private unnamed_addr constant [14 x i8] c"ipvs_mt_check\00", align 1
@ipvs_mt_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @__func__.ipvs_mt_check, ptr @.str.2, i32 163, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\016xt_ipvs: protocol family %u not supported\0A\00", [51 x i8] zeroinitializer }, align 32
@ipvs_mt_check._entry_ptr = internal global ptr @ipvs_mt_check._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.7 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 151, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.33 = private constant [27 x i8] c"../net/netfilter/xt_ipvs.c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.33, i32 162, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_alias588, ptr @__UNIQUE_ID_alias589, ptr @__UNIQUE_ID_author584, ptr @__UNIQUE_ID_description585, ptr @__UNIQUE_ID_file586, ptr @__UNIQUE_ID_license587, ptr @__exitcall_ipvs_mt_exit, ptr @__initcall__kmod_xt_ipvs__591_190_ipvs_mt_init6, ptr @ipvs_mt_check._entry, ptr @ipvs_mt_check._entry_ptr, ptr @ipvs_mt_exit, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @ipvs_mt_check._rs, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvs_mt_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ipvs_mt_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ipvs_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @xt_unregister_match(ptr noundef nonnull @xt_ipvs_mt_reg) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvs_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @xt_ipvs_mt_reg) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ipvs_mt(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  %_iph.i.i = alloca %struct.ipv6hdr, align 4
  %_iph15.i.i = alloca %struct.iphdr, align 4
  %iph = alloca %struct.ip_vs_iphdr, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 5
  %5 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %net.i, align 4
  %ipvs.i = getelementptr inbounds %struct.net, ptr %6, i32 0, i32 48
  %7 = ptrtoint ptr %ipvs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ipvs.i, align 8
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pf.i, align 1
  call void @llvm.lifetime.start.p0(i64 52, ptr nonnull %iph) #6
  %11 = call ptr @memset(ptr %iph, i32 255, i32 52)
  %bitmask = getelementptr inbounds %struct.xt_ipvs_mtinfo, ptr %2, i32 0, i32 7
  %12 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %bitmask, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %13)
  %cmp = icmp eq i8 %13, 1
  %ipvs_property = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %14 = ptrtoint ptr %ipvs_property to i32
  call void @__asan_loadN_noabort(i32 %14, i32 4)
  %bf.load = load i32, ptr %ipvs_property, align 2
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %bf.lshr = lshr i32 %bf.load, 23
  %bf.cast = and i32 %bf.lshr, 1
  %invert = getelementptr inbounds %struct.xt_ipvs_mtinfo, ptr %2, i32 0, i32 6
  %15 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %invert, align 2
  %17 = and i8 %16, 1
  %18 = zext i8 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bf.cast, i32 %18)
  %tobool7 = icmp ne i32 %bf.cast, %18
  br label %do.body

if.end:                                           ; preds = %entry
  %19 = and i32 %bf.load, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool13.not = icmp eq i32 %19, 0
  br i1 %tobool13.not, label %if.end.do.body_crit_edge, label %if.end15

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end15:                                         ; preds = %if.end
  %conv16 = zext i8 %10 to i32
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %20 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %22 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %23 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %25 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %26 = ptrtoint ptr %iph to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %iph, align 4
  %off.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 1
  %27 = ptrtoint ptr %off.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub.ptr.sub.i.i, ptr %off.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %10)
  %cmp.i.i = icmp eq i8 %10, 10
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %_iph.i.i) #6
  %28 = call ptr @memset(ptr %_iph.i.i, i32 255, i32 40)
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %29 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %31 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data_len.i.i.i.i, align 8
  %33 = add i32 %sub.ptr.sub.i.i, %32
  %sub.i4.i.i.i = sub i32 %30, %33
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i4.i.i.i)
  %cmp.not.i.i.i.i = icmp slt i32 %sub.i4.i.i.i, 40
  br i1 %cmp.not.i.i.i.i, label %if.end.i.i.i.i, label %skb_header_pointer.exit.i.i, !prof !40

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  %tobool2.not.i.i.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i.i.i, label %if.end.i.i.i.i.cleanup.i.i_crit_edge, label %lor.lhs.false.i.i.i.i

if.end.i.i.i.i.cleanup.i.i_crit_edge:             ; preds = %if.end.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

lor.lhs.false.i.i.i.i:                            ; preds = %if.end.i.i.i.i
  %call.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i.i, ptr noundef nonnull %_iph.i.i, i32 noundef 40) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i)
  %cmp3.i.i.i.i = icmp slt i32 %call.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i, label %lor.lhs.false.i.i.i.i.cleanup.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge

lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

lor.lhs.false.i.i.i.i.cleanup.i.i_crit_edge:      ; preds = %lor.lhs.false.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

skb_header_pointer.exit.i.i:                      ; preds = %if.then.i.i
  %add.ptr.i.i.i.i = getelementptr i8, ptr %25, i32 %sub.ptr.sub.i.i
  %tobool.not.i.i = icmp eq ptr %add.ptr.i.i.i.i, null
  br i1 %tobool.not.i.i, label %skb_header_pointer.exit.i.i.cleanup.i.i_crit_edge, label %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge

skb_header_pointer.exit.i.i.if.end.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i.i

skb_header_pointer.exit.i.i.cleanup.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.i.i

if.end.i.i:                                       ; preds = %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge, %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge
  %retval.0.i.i22.i.i = phi ptr [ %add.ptr.i.i.i.i, %skb_header_pointer.exit.i.i.if.end.i.i_crit_edge ], [ %_iph.i.i, %lor.lhs.false.i.i.i.i.if.end.i.i_crit_edge ]
  %saddr.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  %saddr3.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i22.i.i, i32 0, i32 5
  %34 = call ptr @memcpy(ptr %saddr.i.i, ptr %saddr3.i.i, i32 16)
  %daddr.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %daddr4.i.i = getelementptr inbounds %struct.ipv6hdr, ptr %retval.0.i.i22.i.i, i32 0, i32 6
  %35 = call ptr @memcpy(ptr %daddr.i.i, ptr %daddr4.i.i, i32 16)
  %len.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 2
  %36 = ptrtoint ptr %len.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %sub.ptr.sub.i.i, ptr %len.i.i, align 4
  %flags.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 5
  %37 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %flags.i.i, align 4
  %fragoffs.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 3
  %call7.i.i = call i32 @ipv6_find_hdr(ptr noundef %skb, ptr noundef %len.i.i, i32 noundef -1, ptr noundef %fragoffs.i.i, ptr noundef %flags.i.i) #6
  %conv.i.i = trunc i32 %call7.i.i to i16
  %protocol.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 4
  %38 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv.i.i, ptr %protocol.i.i, align 2
  br label %cleanup.i.i

cleanup.i.i:                                      ; preds = %if.end.i.i, %skb_header_pointer.exit.i.i.cleanup.i.i_crit_edge, %lor.lhs.false.i.i.i.i.cleanup.i.i_crit_edge, %if.end.i.i.i.i.cleanup.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %_iph.i.i) #6
  br label %ip_vs_fill_iph_skb.exit

if.else.i.i:                                      ; preds = %if.end15
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph15.i.i) #6
  %len.i.i2.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %39 = call ptr @memset(ptr %_iph15.i.i, i32 255, i32 20)
  %40 = ptrtoint ptr %len.i.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %len.i.i2.i.i, align 4
  %data_len.i.i3.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %42 = ptrtoint ptr %data_len.i.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data_len.i.i3.i.i, align 8
  %44 = add i32 %sub.ptr.sub.i.i, %43
  %sub.i4.i4.i.i = sub i32 %41, %44
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i4.i.i)
  %cmp.not.i.i5.i.i = icmp slt i32 %sub.i4.i4.i.i, 20
  br i1 %cmp.not.i.i5.i.i, label %if.end.i.i10.i.i, label %skb_header_pointer.exit16.i.i, !prof !40

if.end.i.i10.i.i:                                 ; preds = %if.else.i.i
  %tobool2.not.i.i9.i.i = icmp eq ptr %skb, null
  br i1 %tobool2.not.i.i9.i.i, label %if.end.i.i10.i.i.cleanup31.i.i_crit_edge, label %lor.lhs.false.i.i14.i.i

if.end.i.i10.i.i.cleanup31.i.i_crit_edge:         ; preds = %if.end.i.i10.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup31.i.i

lor.lhs.false.i.i14.i.i:                          ; preds = %if.end.i.i10.i.i
  %call.i.i11.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %sub.ptr.sub.i.i, ptr noundef nonnull %_iph15.i.i, i32 noundef 20) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11.i.i)
  %cmp3.i.i12.i.i = icmp slt i32 %call.i.i11.i.i, 0
  br i1 %cmp3.i.i12.i.i, label %lor.lhs.false.i.i14.i.i.cleanup31.i.i_crit_edge, label %lor.lhs.false.i.i14.i.i.if.end20.i.i_crit_edge

lor.lhs.false.i.i14.i.i.if.end20.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i.i

lor.lhs.false.i.i14.i.i.cleanup31.i.i_crit_edge:  ; preds = %lor.lhs.false.i.i14.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup31.i.i

skb_header_pointer.exit16.i.i:                    ; preds = %if.else.i.i
  %add.ptr.i.i7.i.i = getelementptr i8, ptr %25, i32 %sub.ptr.sub.i.i
  %tobool18.not.i.i = icmp eq ptr %add.ptr.i.i7.i.i, null
  br i1 %tobool18.not.i.i, label %skb_header_pointer.exit16.i.i.cleanup31.i.i_crit_edge, label %skb_header_pointer.exit16.i.i.if.end20.i.i_crit_edge

skb_header_pointer.exit16.i.i.if.end20.i.i_crit_edge: ; preds = %skb_header_pointer.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end20.i.i

skb_header_pointer.exit16.i.i.cleanup31.i.i_crit_edge: ; preds = %skb_header_pointer.exit16.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup31.i.i

if.end20.i.i:                                     ; preds = %skb_header_pointer.exit16.i.i.if.end20.i.i_crit_edge, %lor.lhs.false.i.i14.i.i.if.end20.i.i_crit_edge
  %retval.0.i.i1529.i.i = phi ptr [ %add.ptr.i.i7.i.i, %skb_header_pointer.exit16.i.i.if.end20.i.i_crit_edge ], [ %_iph15.i.i, %lor.lhs.false.i.i14.i.i.if.end20.i.i_crit_edge ]
  %45 = ptrtoint ptr %retval.0.i.i1529.i.i to i32
  call void @__asan_load1_noabort(i32 %45)
  %bf.load.i.i = load i8, ptr %retval.0.i.i1529.i.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %46 = and i8 %bf.clear.i.i, 60
  %mul.i.i = zext i8 %46 to i32
  %add.i.i = add i32 %sub.ptr.sub.i.i, %mul.i.i
  %len22.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 2
  %47 = ptrtoint ptr %len22.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %add.i.i, ptr %len22.i.i, align 4
  %fragoffs23.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 3
  %48 = ptrtoint ptr %fragoffs23.i.i to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 0, ptr %fragoffs23.i.i, align 4
  %protocol24.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i1529.i.i, i32 0, i32 6
  %49 = ptrtoint ptr %protocol24.i.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %protocol24.i.i, align 1
  %conv25.i.i = zext i8 %50 to i16
  %protocol26.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 4
  %51 = ptrtoint ptr %protocol26.i.i to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %conv25.i.i, ptr %protocol26.i.i, align 2
  %saddr27.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i1529.i.i, i32 0, i32 8
  %52 = ptrtoint ptr %saddr27.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %saddr27.i.i, align 4
  %saddr28.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 6
  %54 = ptrtoint ptr %saddr28.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %saddr28.i.i, align 4
  %daddr29.i.i = getelementptr inbounds %struct.iphdr, ptr %retval.0.i.i1529.i.i, i32 0, i32 9
  %55 = ptrtoint ptr %daddr29.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %daddr29.i.i, align 4
  %daddr30.i.i = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 7
  %57 = ptrtoint ptr %daddr30.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %daddr30.i.i, align 4
  br label %cleanup31.i.i

cleanup31.i.i:                                    ; preds = %if.end20.i.i, %skb_header_pointer.exit16.i.i.cleanup31.i.i_crit_edge, %lor.lhs.false.i.i14.i.i.cleanup31.i.i_crit_edge, %if.end.i.i10.i.i.cleanup31.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph15.i.i) #6
  br label %ip_vs_fill_iph_skb.exit

ip_vs_fill_iph_skb.exit:                          ; preds = %cleanup31.i.i, %cleanup.i.i
  %58 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %bitmask, align 1
  %60 = and i8 %59, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool21.not = icmp eq i8 %60, 0
  br i1 %tobool21.not, label %ip_vs_fill_iph_skb.exit.if.end37_crit_edge, label %if.then22

ip_vs_fill_iph_skb.exit.if.end37_crit_edge:       ; preds = %ip_vs_fill_iph_skb.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then22:                                        ; preds = %ip_vs_fill_iph_skb.exit
  %protocol = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 4
  %61 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %protocol, align 2
  %conv23 = sext i16 %62 to i32
  %l4proto = getelementptr inbounds %struct.xt_ipvs_mtinfo, ptr %2, i32 0, i32 3
  %63 = ptrtoint ptr %l4proto to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %l4proto, align 2
  %conv24 = zext i8 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv23, i32 %conv24)
  %cmp25 = icmp eq i32 %conv23, %conv24
  %invert27 = getelementptr inbounds %struct.xt_ipvs_mtinfo, ptr %2, i32 0, i32 6
  %65 = ptrtoint ptr %invert27 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %invert27, align 2
  %67 = lshr i8 %66, 1
  %.lobit235 = and i8 %67, 1
  %68 = xor i8 %.lobit235, 1
  %69 = zext i1 %cmp25 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %68, i8 %69)
  %tobool34.not = icmp eq i8 %68, %69
  br i1 %tobool34.not, label %if.then22.if.end37_crit_edge, label %if.then22.do.body_crit_edge

if.then22.do.body_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.then22.if.end37_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end37:                                         ; preds = %if.then22.if.end37_crit_edge, %ip_vs_fill_iph_skb.exit.if.end37_crit_edge
  %protocol38 = getelementptr inbounds %struct.ip_vs_iphdr, ptr %iph, i32 0, i32 4
  %70 = ptrtoint ptr %protocol38 to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %protocol38, align 2
  %call39 = call ptr @ip_vs_proto_get(i16 noundef zeroext %71) #6
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.end37.do.body_crit_edge, label %if.end49, !prof !40

if.end37.do.body_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end49:                                         ; preds = %if.end37
  %conn_out_get = getelementptr inbounds %struct.ip_vs_protocol, ptr %call39, i32 0, i32 11
  %72 = ptrtoint ptr %conn_out_get to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %conn_out_get, align 4
  %call51 = call ptr %73(ptr noundef %8, i32 noundef %conv16, ptr noundef %skb, ptr noundef nonnull %iph) #6
  %cmp52 = icmp eq ptr %call51, null
  br i1 %cmp52, label %if.end49.do.body_crit_edge, label %if.end61, !prof !40

if.end49.do.body_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

if.end61:                                         ; preds = %if.end49
  %74 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %bitmask, align 1
  %76 = and i8 %75, 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %76)
  %tobool65.not = icmp eq i8 %76, 0
  br i1 %tobool65.not, label %if.end61.if.end82_crit_edge, label %if.then66

if.end61.if.end82_crit_edge:                      ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.then66:                                        ; preds = %if.end61
  %vport = getelementptr inbounds %struct.ip_vs_conn, ptr %call51, i32 0, i32 3
  %77 = ptrtoint ptr %vport to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %vport, align 4
  %vport68 = getelementptr inbounds %struct.xt_ipvs_mtinfo, ptr %2, i32 0, i32 2
  %79 = ptrtoint ptr %vport68 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %vport68, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %78, i16 %80)
  %cmp70 = icmp eq i16 %78, %80
  %invert72 = getelementptr inbounds %struct.xt_ipvs_mtinfo, ptr %2, i32 0, i32 6
  %81 = ptrtoint ptr %invert72 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %invert72, align 2
  %83 = lshr i8 %82, 3
  %.lobit234 = and i8 %83, 1
  %84 = xor i8 %.lobit234, 1
  %85 = zext i1 %cmp70 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %84, i8 %85)
  %tobool79.not = icmp eq i8 %84, %85
  br i1 %tobool79.not, label %if.then66.if.end82_crit_edge, label %if.then66.out_put_cp_crit_edge

if.then66.out_put_cp_crit_edge:                   ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_cp

if.then66.if.end82_crit_edge:                     ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end82

if.end82:                                         ; preds = %if.then66.if.end82_crit_edge, %if.end61.if.end82_crit_edge
  %86 = and i8 %75, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool86.not = icmp eq i8 %86, 0
  br i1 %tobool86.not, label %if.end82.if.end106_crit_edge, label %if.then87

if.end82.if.end106_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.then87:                                        ; preds = %if.end82
  %control = getelementptr inbounds %struct.ip_vs_conn, ptr %call51, i32 0, i32 20
  %87 = ptrtoint ptr %control to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %control, align 4
  %cmp88.not = icmp eq ptr %88, null
  br i1 %cmp88.not, label %if.then87.land.end_crit_edge, label %land.rhs

if.then87.land.end_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.end

land.rhs:                                         ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #8
  %vport91 = getelementptr inbounds %struct.ip_vs_conn, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %vport91 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %vport91, align 4
  %vportctl = getelementptr inbounds %struct.xt_ipvs_mtinfo, ptr %2, i32 0, i32 5
  %91 = ptrtoint ptr %vportctl to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %vportctl, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %90, i16 %92)
  %cmp94 = icmp eq i16 %90, %92
  %phi.cast = zext i1 %cmp94 to i32
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.then87.land.end_crit_edge
  %93 = phi i32 [ 0, %if.then87.land.end_crit_edge ], [ %phi.cast, %land.rhs ]
  %invert96 = getelementptr inbounds %struct.xt_ipvs_mtinfo, ptr %2, i32 0, i32 6
  %94 = ptrtoint ptr %invert96 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %invert96, align 2
  %96 = lshr i8 %95, 6
  %.lobit233 = and i8 %96, 1
  %97 = xor i8 %.lobit233, 1
  %98 = zext i8 %97 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %98)
  %tobool103.not = icmp eq i32 %93, %98
  br i1 %tobool103.not, label %land.end.if.end106_crit_edge, label %land.end.out_put_cp_crit_edge

land.end.out_put_cp_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_cp

land.end.if.end106_crit_edge:                     ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end106

if.end106:                                        ; preds = %land.end.if.end106_crit_edge, %if.end82.if.end106_crit_edge
  %99 = and i8 %75, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool110.not = icmp eq i8 %99, 0
  br i1 %tobool110.not, label %if.end106.if.end132_crit_edge, label %if.then111

if.end106.if.end132_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end132

if.then111:                                       ; preds = %if.end106
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %100 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %_nfct.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %101)
  %cmp113 = icmp ult i32 %101, 8
  br i1 %cmp113, label %if.then111.out_put_cp_crit_edge, label %if.end116

if.then111.out_put_cp_crit_edge:                  ; preds = %if.then111
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_cp

if.end116:                                        ; preds = %if.then111
  %and.i = and i32 %101, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and.i)
  %cmp117 = icmp ult i32 %and.i, 3
  %invert119 = getelementptr inbounds %struct.xt_ipvs_mtinfo, ptr %2, i32 0, i32 6
  %102 = ptrtoint ptr %invert119 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %invert119, align 2
  %104 = and i8 %103, 16
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %104)
  %105 = icmp ne i8 %104, 0
  %tobool128.not = xor i1 %cmp117, %105
  br i1 %tobool128.not, label %if.end116.if.end132_crit_edge, label %if.end116.out_put_cp_crit_edge

if.end116.out_put_cp_crit_edge:                   ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_cp

if.end116.if.end132_crit_edge:                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end132

if.end132:                                        ; preds = %if.end116.if.end132_crit_edge, %if.end106.if.end132_crit_edge
  %106 = and i8 %75, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool136.not = icmp eq i8 %106, 0
  br i1 %tobool136.not, label %if.end132.if.end152_crit_edge, label %if.then137

if.end132.if.end152_crit_edge:                    ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152

if.then137:                                       ; preds = %if.end132
  %flags = getelementptr inbounds %struct.ip_vs_conn, ptr %call51, i32 0, i32 8
  %107 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %flags, align 4
  %and138 = and i32 %108, 7
  %fwd_method = getelementptr inbounds %struct.xt_ipvs_mtinfo, ptr %2, i32 0, i32 4
  %109 = ptrtoint ptr %fwd_method to i32
  call void @__asan_load1_noabort(i32 %109)
  %110 = load i8, ptr %fwd_method, align 1
  %conv139 = zext i8 %110 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %and138, i32 %conv139)
  %cmp140 = icmp eq i32 %and138, %conv139
  %invert142 = getelementptr inbounds %struct.xt_ipvs_mtinfo, ptr %2, i32 0, i32 6
  %111 = ptrtoint ptr %invert142 to i32
  call void @__asan_load1_noabort(i32 %111)
  %112 = load i8, ptr %invert142, align 2
  %113 = lshr i8 %112, 5
  %.lobit231 = and i8 %113, 1
  %114 = xor i8 %.lobit231, 1
  %115 = zext i1 %cmp140 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %114, i8 %115)
  %tobool149.not = icmp eq i8 %114, %115
  br i1 %tobool149.not, label %if.then137.if.end152_crit_edge, label %if.then137.out_put_cp_crit_edge

if.then137.out_put_cp_crit_edge:                  ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_cp

if.then137.if.end152_crit_edge:                   ; preds = %if.then137
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end152

if.end152:                                        ; preds = %if.then137.if.end152_crit_edge, %if.end132.if.end152_crit_edge
  %116 = and i8 %75, 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool156.not = icmp eq i8 %116, 0
  br i1 %tobool156.not, label %if.end152.out_put_cp_crit_edge, label %if.then157

if.end152.out_put_cp_crit_edge:                   ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_put_cp

if.then157:                                       ; preds = %if.end152
  %vaddr = getelementptr inbounds %struct.ip_vs_conn, ptr %call51, i32 0, i32 6
  %vmask = getelementptr inbounds %struct.xt_ipvs_mtinfo, ptr %2, i32 0, i32 1
  %117 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %117, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %if.then157.ipvs_mt_addrcmp.exit_crit_edge [
    i8 2, label %if.then.i
    i8 10, label %if.then3.i
  ]

if.then157.ipvs_mt_addrcmp.exit_crit_edge:        ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #8
  br label %ipvs_mt_addrcmp.exit

if.then.i:                                        ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #8
  %118 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %vaddr, align 4
  %120 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %2, align 4
  %xor.i = xor i32 %121, %119
  %122 = ptrtoint ptr %vmask to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %vmask, align 4
  %and.i238 = and i32 %xor.i, %123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i238)
  %cmp1.i = icmp eq i32 %and.i238, 0
  br label %ipvs_mt_addrcmp.exit

if.then3.i:                                       ; preds = %if.then157
  call void @__sanitizer_cov_trace_pc() #8
  %124 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %vaddr, align 4
  %126 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %2, align 4
  %xor.i.i = xor i32 %127, %125
  %128 = ptrtoint ptr %vmask to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %vmask, align 4
  %and.i.i = and i32 %xor.i.i, %129
  %arrayidx6.i.i = getelementptr %struct.ip_vs_conn, ptr %call51, i32 0, i32 6, i32 0, i32 1
  %130 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %arrayidx6.i.i, align 4
  %arrayidx8.i.i = getelementptr [4 x i32], ptr %2, i32 0, i32 1
  %132 = ptrtoint ptr %arrayidx8.i.i to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx8.i.i, align 4
  %xor9.i.i = xor i32 %133, %131
  %arrayidx11.i.i = getelementptr %struct.xt_ipvs_mtinfo, ptr %2, i32 0, i32 1, i32 0, i32 1
  %134 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx11.i.i, align 4
  %and12.i.i = and i32 %xor9.i.i, %135
  %or.i.i = or i32 %and12.i.i, %and.i.i
  %arrayidx14.i.i = getelementptr %struct.ip_vs_conn, ptr %call51, i32 0, i32 6, i32 0, i32 2
  %136 = ptrtoint ptr %arrayidx14.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx14.i.i, align 4
  %arrayidx16.i.i = getelementptr [4 x i32], ptr %2, i32 0, i32 2
  %138 = ptrtoint ptr %arrayidx16.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx16.i.i, align 4
  %xor17.i.i = xor i32 %139, %137
  %arrayidx19.i.i = getelementptr %struct.xt_ipvs_mtinfo, ptr %2, i32 0, i32 1, i32 0, i32 2
  %140 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx19.i.i, align 4
  %and20.i.i = and i32 %xor17.i.i, %141
  %or21.i.i = or i32 %or.i.i, %and20.i.i
  %arrayidx23.i.i = getelementptr %struct.ip_vs_conn, ptr %call51, i32 0, i32 6, i32 0, i32 3
  %142 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %arrayidx23.i.i, align 4
  %arrayidx25.i.i = getelementptr [4 x i32], ptr %2, i32 0, i32 3
  %144 = ptrtoint ptr %arrayidx25.i.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %arrayidx25.i.i, align 4
  %xor26.i.i = xor i32 %145, %143
  %arrayidx28.i.i = getelementptr %struct.xt_ipvs_mtinfo, ptr %2, i32 0, i32 1, i32 0, i32 3
  %146 = ptrtoint ptr %arrayidx28.i.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %arrayidx28.i.i, align 4
  %and29.i.i = and i32 %xor26.i.i, %147
  %or30.i.i = or i32 %or21.i.i, %and29.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or30.i.i)
  %tobool.i.not.i = icmp eq i32 %or30.i.i, 0
  br label %ipvs_mt_addrcmp.exit

ipvs_mt_addrcmp.exit:                             ; preds = %if.then3.i, %if.then.i, %if.then157.ipvs_mt_addrcmp.exit_crit_edge
  %retval.0.i239 = phi i1 [ %cmp1.i, %if.then.i ], [ %tobool.i.not.i, %if.then3.i ], [ false, %if.then157.ipvs_mt_addrcmp.exit_crit_edge ]
  %invert162 = getelementptr inbounds %struct.xt_ipvs_mtinfo, ptr %2, i32 0, i32 6
  %148 = ptrtoint ptr %invert162 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %invert162, align 2
  %150 = lshr i8 %149, 2
  %.lobit = and i8 %150, 1
  %151 = zext i1 %retval.0.i239 to i8
  %152 = xor i8 %.lobit, %151
  br label %out_put_cp

out_put_cp:                                       ; preds = %ipvs_mt_addrcmp.exit, %if.end152.out_put_cp_crit_edge, %if.then137.out_put_cp_crit_edge, %if.end116.out_put_cp_crit_edge, %if.then111.out_put_cp_crit_edge, %land.end.out_put_cp_crit_edge, %if.then66.out_put_cp_crit_edge
  %match.2 = phi i8 [ 1, %if.end152.out_put_cp_crit_edge ], [ 0, %if.then66.out_put_cp_crit_edge ], [ 0, %land.end.out_put_cp_crit_edge ], [ 0, %if.then137.out_put_cp_crit_edge ], [ %152, %ipvs_mt_addrcmp.exit ], [ 0, %if.end116.out_put_cp_crit_edge ], [ 0, %if.then111.out_put_cp_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !41
  %refcnt.i = getelementptr inbounds %struct.ip_vs_conn, ptr %call51, i32 0, i32 12
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %refcnt.i, i32 noundef 4) #6
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !42
  call void @llvm.prefetch.p0(ptr %refcnt.i, i32 1, i32 3, i32 1) #6
  %153 = call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt.i, ptr %refcnt.i, i32 1, ptr elementtype(i32) %refcnt.i) #6, !srcloc !43
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %153, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp slt i32 %asmresult.i.i.i.i.i.i, 2
  br i1 %cmp.i.i.i, label %if.then3.i.i.i, label %out_put_cp.__ip_vs_conn_put.exit_crit_edge, !prof !40

out_put_cp.__ip_vs_conn_put.exit_crit_edge:       ; preds = %out_put_cp
  call void @__sanitizer_cov_trace_pc() #8
  br label %__ip_vs_conn_put.exit

if.then3.i.i.i:                                   ; preds = %out_put_cp
  call void @__sanitizer_cov_trace_pc() #8
  call void @refcount_warn_saturate(ptr noundef %refcnt.i, i32 noundef 4) #6
  br label %__ip_vs_conn_put.exit

__ip_vs_conn_put.exit:                            ; preds = %if.then3.i.i.i, %out_put_cp.__ip_vs_conn_put.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %match.2)
  %extract.t230 = icmp ne i8 %match.2, 0
  br label %do.body

do.body:                                          ; preds = %__ip_vs_conn_put.exit, %if.end49.do.body_crit_edge, %if.end37.do.body_crit_edge, %if.then22.do.body_crit_edge, %if.end.do.body_crit_edge, %if.then
  %match.3.off0 = phi i1 [ %tobool7, %if.then ], [ %extract.t230, %__ip_vs_conn_put.exit ], [ false, %if.end.do.body_crit_edge ], [ false, %if.then22.do.body_crit_edge ], [ false, %if.end37.do.body_crit_edge ], [ false, %if.end49.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ipvs_mt.__UNIQUE_ID_ddebug590, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ipvs_mt, %if.then182)) #6
          to label %cleanup187 [label %if.then182], !srcloc !44

if.then182:                                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %conv184 = zext i1 %match.3.off0 to i32
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @ipvs_mt.__UNIQUE_ID_ddebug590, ptr noundef nonnull @.str.4, i32 noundef %conv184) #6
  br label %cleanup187

cleanup187:                                       ; preds = %if.then182, %do.body
  call void @llvm.lifetime.end.p0(i64 52, ptr nonnull %iph) #6
  ret i1 %match.3.off0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipvs_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 6
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 4
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %1, label %if.then [
    i8 2, label %entry.return_crit_edge
    i8 10, label %entry.return_crit_edge13
  ]

entry.return_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @ipvs_mt_check._rs, ptr noundef nonnull @__func__.ipvs_mt_check) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.return_crit_edge, label %do.end

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %family, align 4
  %conv8 = zext i8 %4 to i32
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, i32 noundef %conv8) #9
  br label %return

return:                                           ; preds = %do.end, %if.then.return_crit_edge, %entry.return_crit_edge, %entry.return_crit_edge13
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.return_crit_edge ], [ 0, %entry.return_crit_edge ], [ 0, %entry.return_crit_edge13 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_vs_proto_get(i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !26, !27, !28, !29, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__UNIQUE_ID_author584, !1, !"__UNIQUE_ID_author584", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_ipvs.c", i32 25, i32 1}
!2 = !{ptr @__UNIQUE_ID_description585, !3, !"__UNIQUE_ID_description585", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_ipvs.c", i32 26, i32 1}
!4 = !{ptr @__UNIQUE_ID_file586, !5, !"__UNIQUE_ID_file586", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_ipvs.c", i32 27, i32 1}
!6 = !{ptr @__UNIQUE_ID_license587, !5, !"__UNIQUE_ID_license587", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias588, !8, !"__UNIQUE_ID_alias588", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_ipvs.c", i32 28, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias589, !10, !"__UNIQUE_ID_alias589", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_ipvs.c", i32 29, i32 1}
!11 = !{ptr @__initcall__kmod_xt_ipvs__591_190_ipvs_mt_init6, !12, !"__initcall__kmod_xt_ipvs__591_190_ipvs_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_ipvs.c", i32 190, i32 1}
!13 = !{ptr @__exitcall_ipvs_mt_exit, !14, !"__exitcall_ipvs_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_ipvs.c", i32 191, i32 1}
!15 = !{ptr @xt_ipvs_mt_reg, !16, !"xt_ipvs_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_ipvs.c", i32 170, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_ipvs.c", i32 151, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @ipvs_mt.__UNIQUE_ID_ddebug590, !18, !"__UNIQUE_ID_ddebug590", i1 false, i1 false}
!23 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../net/netfilter/xt_ipvs.c", i32 162, i32 3}
!26 = !{ptr @ipvs_mt_check._rs, !25, !"_rs", i1 false, i1 false}
!27 = !{ptr @__func__.ipvs_mt_check, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ipvs_mt_check._entry, !25, !"_entry", i1 false, i1 false}
!30 = !{ptr @ipvs_mt_check._entry_ptr, !25, !"_entry_ptr", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!40 = !{!"branch_weights", i32 1, i32 2000}
!41 = !{i64 2158053440}
!42 = !{i64 2148432016}
!43 = !{i64 2148346456, i64 2148346488, i64 2148346517, i64 2148346551, i64 2148346582, i64 2148346605}
!44 = !{i64 2148955838, i64 2148955843, i64 2148955856, i64 2148955900, i64 2148955934, i64 2148955955}
