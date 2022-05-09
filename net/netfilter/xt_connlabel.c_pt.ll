; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_connlabel.c_pt.bc'
source_filename = "../net/netfilter/xt_connlabel.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.xt_action_param = type { %union.anon.166, %union.anon.167, ptr, i32, i16, i8 }
%union.anon.166 = type { ptr }
%union.anon.167 = type { ptr }
%struct.xt_connlabel_mtinfo = type { i16, i16 }
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
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }

@__UNIQUE_ID_file587 = internal constant [45 x i8] c"xt_connlabel.file=net/netfilter/xt_connlabel\00", section ".modinfo", align 1
@__UNIQUE_ID_license588 = internal constant [25 x i8] c"xt_connlabel.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author589 = internal constant [52 x i8] c"xt_connlabel.author=Florian Westphal <fw@strlen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description590 = internal constant [71 x i8] c"xt_connlabel.description=Xtables: add/match connection tracking labels\00", section ".modinfo", align 1
@__UNIQUE_ID_alias591 = internal constant [33 x i8] c"xt_connlabel.alias=ipt_connlabel\00", section ".modinfo", align 1
@__UNIQUE_ID_alias592 = internal constant [34 x i8] c"xt_connlabel.alias=ip6t_connlabel\00", section ".modinfo", align 1
@connlabels_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"connlabel\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @connlabel_mt, ptr @connlabel_mt_check, ptr @connlabel_mt_destroy, ptr null, ptr null, i32 4, i32 0, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_connlabel__593_101_connlabel_mt_init6 = internal global ptr @connlabel_mt_init, section ".initcall6.init", align 4
@__exitcall_connlabel_mt_exit = internal global ptr @connlabel_mt_exit, section ".exitcall.exit", align 4
@connlabel_mt_check._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.connlabel_mt_check = private unnamed_addr constant [19 x i8] c"connlabel_mt_check\00", align 1
@connlabel_mt_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @__func__.connlabel_mt_check, ptr @.str.2, i32 58, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\016Unknown options in mask %x\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"net/netfilter/xt_connlabel.c\00", [35 x i8] zeroinitializer }, align 32
@connlabel_mt_check._entry_ptr = internal global ptr @connlabel_mt_check._entry, section ".printk_index", align 4
@connlabel_mt_check._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@connlabel_mt_check._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.connlabel_mt_check, ptr @.str.2, i32 65, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016cannot load conntrack support for proto=%u\0A\00", [50 x i8] zeroinitializer }, align 32
@connlabel_mt_check._entry_ptr.6 = internal global ptr @connlabel_mt_check._entry.4, section ".printk_index", align 4
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 57, i32 3 }
@___asan_gen_.22 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.25 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.28 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.29 = private constant [32 x i8] c"../net/netfilter/xt_connlabel.c\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.29, i32 64, i32 3 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_alias591, ptr @__UNIQUE_ID_alias592, ptr @__UNIQUE_ID_author589, ptr @__UNIQUE_ID_description590, ptr @__UNIQUE_ID_file587, ptr @__UNIQUE_ID_license588, ptr @__exitcall_connlabel_mt_exit, ptr @__initcall__kmod_xt_connlabel__593_101_connlabel_mt_init6, ptr @connlabel_mt_check._entry, ptr @connlabel_mt_check._entry.4, ptr @connlabel_mt_check._entry_ptr, ptr @connlabel_mt_check._entry_ptr.6, ptr @connlabel_mt_exit, ptr @connlabel_mt_check._rs, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @connlabel_mt_check._rs.3, ptr @.str.5], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connlabel_mt_check._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connlabel_mt_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connlabel_mt_check._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @connlabel_mt_check._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @connlabel_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_match(ptr noundef nonnull @connlabels_mt_reg) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @connlabel_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @connlabels_mt_reg) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @connlabel_mt(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %options = getelementptr inbounds %struct.xt_connlabel_mtinfo, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %options to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %options, align 2
  %5 = and i16 %4, 1
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %tobool = icmp ne i16 %5, 0
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %6 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %_nfct.i.i, align 8
  %and1.i47 = and i32 %7, -8
  %8 = inttoptr i32 %and1.i47 to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i47)
  %cmp = icmp eq i32 %and1.i47, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %ext.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %8, i32 0, i32 13
  %9 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i, label %if.end.cleanup_crit_edge, label %nf_ct_ext_exist.exit.i.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nf_ct_ext_exist.exit.i.i:                         ; preds = %if.end
  %arrayidx.i.i.i.i = getelementptr [10 x i8], ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i.i.not.i.i = icmp eq i8 %12, 0
  br i1 %tobool.i.i.not.i.i, label %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, label %nf_ct_labels_find.exit

nf_ct_ext_exist.exit.i.i.cleanup_crit_edge:       ; preds = %nf_ct_ext_exist.exit.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nf_ct_labels_find.exit:                           ; preds = %nf_ct_ext_exist.exit.i.i
  %conv.i.i = zext i8 %12 to i32
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %conv.i.i
  %tobool4.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool4.not, label %nf_ct_labels_find.exit.cleanup_crit_edge, label %if.end7

nf_ct_labels_find.exit.cleanup_crit_edge:         ; preds = %nf_ct_labels_find.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end7:                                          ; preds = %nf_ct_labels_find.exit
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %2, align 2
  %conv8 = zext i16 %14 to i32
  %div3.i = lshr i32 %conv8, 5
  %arrayidx.i = getelementptr i32, ptr %add.ptr.i.i, i32 %div3.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %conv8, 31
  %17 = shl nuw i32 1, %and.i
  %18 = and i32 %17, %16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool10.not = icmp eq i32 %18, 0
  br i1 %tobool10.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  %lnot = xor i1 %tobool, true
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %19 = and i16 %4, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %19)
  %tobool17.not = icmp eq i16 %19, 0
  br i1 %tobool17.not, label %if.end13.cleanup_crit_edge, label %if.then18

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then18:                                        ; preds = %if.end13
  %call23 = tail call i32 @_test_and_set_bit(i32 noundef %conv8, ptr noundef nonnull %add.ptr.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then25, label %if.then18.if.end26_crit_edge

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then25:                                        ; preds = %if.then18
  %ct_net.i.i = getelementptr inbounds %struct.nf_conn, ptr %8, i32 0, i32 7
  %20 = ptrtoint ptr %ct_net.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ct_net.i.i, align 8
  %nf_conntrack_event_cb.i = getelementptr inbounds %struct.net, ptr %21, i32 0, i32 40, i32 9
  %22 = ptrtoint ptr %nf_conntrack_event_cb.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load volatile ptr, ptr %nf_conntrack_event_cb.i, align 16
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.then25.if.end26_crit_edge, label %if.end.i

if.then25.if.end26_crit_edge:                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.end.i:                                         ; preds = %if.then25
  %24 = ptrtoint ptr %ext.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ext.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.if.end26_crit_edge, label %nf_ct_ext_exist.exit.i.i.i

if.end.i.if.end26_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

nf_ct_ext_exist.exit.i.i.i:                       ; preds = %if.end.i
  %arrayidx.i.i.i.i.i = getelementptr [10 x i8], ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %arrayidx.i.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %arrayidx.i.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.i.i.not.i.i.i = icmp eq i8 %27, 0
  br i1 %tobool.i.i.not.i.i.i, label %nf_ct_ext_exist.exit.i.i.i.if.end26_crit_edge, label %nf_ct_ecache_find.exit.i

nf_ct_ext_exist.exit.i.i.i.if.end26_crit_edge:    ; preds = %nf_ct_ext_exist.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

nf_ct_ecache_find.exit.i:                         ; preds = %nf_ct_ext_exist.exit.i.i.i
  %conv.i.i.i = zext i8 %27 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %25, i32 %conv.i.i.i
  %cmp.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %cmp.i, label %nf_ct_ecache_find.exit.i.if.end26_crit_edge, label %if.end5.i

nf_ct_ecache_find.exit.i.if.end26_crit_edge:      ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.end5.i:                                        ; preds = %nf_ct_ecache_find.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @_set_bit(i32 noundef 10, ptr noundef nonnull %add.ptr.i.i.i) #4
  br label %if.end26

if.end26:                                         ; preds = %if.end5.i, %nf_ct_ecache_find.exit.i.if.end26_crit_edge, %nf_ct_ext_exist.exit.i.i.i.if.end26_crit_edge, %if.end.i.if.end26_crit_edge, %if.then25.if.end26_crit_edge, %if.then18.if.end26_crit_edge
  %lnot28 = xor i1 %tobool, true
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.end13.cleanup_crit_edge, %if.then11, %nf_ct_labels_find.exit.cleanup_crit_edge, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %lnot, %if.then11 ], [ %lnot28, %if.end26 ], [ %tobool, %entry.cleanup_crit_edge ], [ %tobool, %nf_ct_labels_find.exit.cleanup_crit_edge ], [ %tobool, %if.end13.cleanup_crit_edge ], [ %tobool, %nf_ct_ext_exist.exit.i.i.cleanup_crit_edge ], [ %tobool, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @connlabel_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %options1 = getelementptr inbounds %struct.xt_connlabel_mtinfo, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %options1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %options1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %3)
  %tobool.not = icmp ult i16 %3, 4
  br i1 %tobool.not, label %if.end7, label %if.then

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @connlabel_mt_check._rs, ptr noundef nonnull @__func__.connlabel_mt_check) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool2.not = icmp eq i32 %call, 0
  br i1 %tobool2.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %options1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %options1, align 2
  %conv5 = zext i16 %5 to i32
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, i32 noundef %conv5) #7
  br label %cleanup

if.end7:                                          ; preds = %entry
  %6 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 6
  %8 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %family, align 4
  %call8 = tail call i32 @nf_ct_netns_get(ptr noundef %7, i8 noundef zeroext %9) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp = icmp slt i32 %call8, 0
  br i1 %cmp, label %if.then10, label %if.end22

if.then10:                                        ; preds = %if.end7
  %call11 = tail call i32 @___ratelimit(ptr noundef nonnull @connlabel_mt_check._rs.3, ptr noundef nonnull @__func__.connlabel_mt_check) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.then10.cleanup_crit_edge, label %do.end16

if.then10.cleanup_crit_edge:                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

do.end16:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #6
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %family, align 4
  %conv19 = zext i8 %11 to i32
  %call20 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5, i32 noundef %conv19) #7
  br label %cleanup

if.end22:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %par, align 4
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %1, align 2
  %conv24 = zext i16 %15 to i32
  %call25 = tail call i32 @nf_connlabels_get(ptr noundef %13, i32 noundef %conv24) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %if.then28, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  %16 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %par, align 4
  %18 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %family, align 4
  tail call void @nf_ct_netns_put(ptr noundef %17, i8 noundef zeroext %19) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then28, %if.end22.cleanup_crit_edge, %do.end16, %if.then10.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ %call8, %do.end16 ], [ %call8, %if.then10.cleanup_crit_edge ], [ %call25, %if.then28 ], [ %call25, %if.end22.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @connlabel_mt_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  tail call void @nf_connlabels_put(ptr noundef %1) #4
  %2 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 3
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %family, align 4
  tail call void @nf_ct_netns_put(ptr noundef %3, i8 noundef zeroext %5) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_netns_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_connlabels_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_netns_put(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_connlabels_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29}
!llvm.module.flags = !{!30, !31, !32, !33, !34, !35, !36, !37}
!llvm.ident = !{!38}

!0 = !{ptr @__UNIQUE_ID_file587, !1, !"__UNIQUE_ID_file587", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_connlabel.c", i32 13, i32 1}
!2 = !{ptr @__UNIQUE_ID_license588, !1, !"__UNIQUE_ID_license588", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author589, !4, !"__UNIQUE_ID_author589", i1 false, i1 false}
!4 = !{!"../net/netfilter/xt_connlabel.c", i32 14, i32 1}
!5 = !{ptr @__UNIQUE_ID_description590, !6, !"__UNIQUE_ID_description590", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_connlabel.c", i32 15, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias591, !8, !"__UNIQUE_ID_alias591", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_connlabel.c", i32 16, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias592, !10, !"__UNIQUE_ID_alias592", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_connlabel.c", i32 17, i32 1}
!11 = !{ptr @__initcall__kmod_xt_connlabel__593_101_connlabel_mt_init6, !12, !"__initcall__kmod_xt_connlabel__593_101_connlabel_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_connlabel.c", i32 101, i32 1}
!13 = !{ptr @__exitcall_connlabel_mt_exit, !14, !"__exitcall_connlabel_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_connlabel.c", i32 102, i32 1}
!15 = !{ptr @connlabels_mt_reg, !16, !"connlabels_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_connlabel.c", i32 81, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_connlabel.c", i32 57, i32 3}
!19 = !{ptr @connlabel_mt_check._rs, !18, !"_rs", i1 false, i1 false}
!20 = !{ptr @__func__.connlabel_mt_check, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @connlabel_mt_check._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @connlabel_mt_check._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @connlabel_mt_check._rs.3, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../net/netfilter/xt_connlabel.c", i32 64, i32 3}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @connlabel_mt_check._entry.4, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @connlabel_mt_check._entry_ptr.6, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{i32 1, !"wchar_size", i32 2}
!31 = !{i32 1, !"min_enum_size", i32 4}
!32 = !{i32 8, !"branch-target-enforcement", i32 0}
!33 = !{i32 8, !"sign-return-address", i32 0}
!34 = !{i32 8, !"sign-return-address-all", i32 0}
!35 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!36 = !{i32 7, !"uwtable", i32 1}
!37 = !{i32 7, !"frame-pointer", i32 2}
!38 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
