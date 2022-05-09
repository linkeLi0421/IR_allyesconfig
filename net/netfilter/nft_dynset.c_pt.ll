; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_dynset.c_pt.bc'
source_filename = "../net/netfilter/nft_dynset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.40 }
%union.anon.40 = type { i32 }
%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nft_set_ext_type = type { i8, i8 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_set = type { %struct.list_head, %struct.list_head, ptr, %struct.possible_net_t, ptr, i64, i32, i32, i32, i32, [16 x i8], i8, i32, %struct.atomic_t, i32, i64, i32, i16, i16, ptr, [20 x i8], ptr, i16, i8, i8, i8, [2 x ptr], %struct.list_head, [4 x i8], [0 x i8], [96 x i8] }
%struct.possible_net_t = type { ptr }
%struct.atomic_t = type { i32 }
%struct.nft_set_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.nft_dynset = type { ptr, %struct.nft_set_ext_tmpl, i8, i8, i8, i8, i8, i8, i64, [2 x ptr], %struct.nft_set_binding }
%struct.nft_set_ext_tmpl = type { i16, [9 x i8] }
%struct.nft_set_binding = type { %struct.list_head, ptr, i32 }
%struct.nft_set_ext = type { i8, [9 x i8], [0 x i8] }
%struct.nft_set_elem_expr = type { i8, [7 x i8], [0 x i8] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.llist_node = type { ptr }
%struct.idr = type { %struct.xarray, i32, i32 }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ns_common = type { %struct.atomic_t, ptr, i32, %struct.refcount_struct }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%struct.ctl_table_set = type { ptr, %struct.ctl_dir }
%struct.ctl_dir = type { %struct.ctl_table_header, %struct.rb_root }
%struct.ctl_table_header = type { %union.anon.12, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.12 = type { %struct.anon.13 }
%struct.anon.13 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.115, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.115 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.38, i32, %struct.spinlock }
%union.anon.38 = type { %struct.anon.39 }
%struct.anon.39 = type { ptr, ptr }
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
%struct.nftables_pernet = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.mutex, i32, i8 }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.nlattr = type { i16, i16 }
%struct.sk_buff = type { %union.anon.15, %union.anon.18, %union.anon.19, [48 x i8], %union.anon.20, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.22, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.15 = type { %struct.anon.16 }
%struct.anon.16 = type { ptr, ptr, %union.anon.17 }
%union.anon.17 = type { ptr }
%union.anon.18 = type { ptr }
%union.anon.19 = type { i64 }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { i32, ptr }
%union.anon.22 = type { %struct.anon.23 }
%struct.anon.23 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.24, i32, i32, i32, i16, i16, %union.anon.26, i32, %union.anon.27, %union.anon.28, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.24 = type { i32 }
%union.anon.26 = type { i32 }
%union.anon.27 = type { i32 }
%union.anon.28 = type { i16 }

@nft_dynset_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_dynset_eval, ptr null, i32 64, ptr @nft_dynset_init, ptr @nft_dynset_activate, ptr @nft_dynset_deactivate, ptr @nft_dynset_destroy, ptr null, ptr @nft_dynset_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_dynset_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"dynset\00", [25 x i8] zeroinitializer }, align 32
@nft_dynset_policy = internal constant { [11 x %struct.nla_policy], [40 x i8] } { [11 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 5, i8 0, i16 255, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 4, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.40 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@nft_dynset_type = dso_local global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_dynset_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_dynset_policy, i32 10, i8 0, i8 0 }, section ".data..read_mostly", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/netfilter/nft_dynset.c\00", [37 x i8] zeroinitializer }, align 32
@nf_tables_net_id = external dso_local local_unnamed_addr global i32, align 4
@net_generic.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/net/netns/generic.h\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.6 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@nft_set_ext_types = external dso_local local_unnamed_addr constant [0 x %struct.nft_set_ext_type], align 1
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.7 = private unnamed_addr constant [15 x i8] c"nft_dynset_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 407, i32 34 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 419, i32 11 }
@___asan_gen_.13 = private unnamed_addr constant [18 x i8] c"nft_dynset_policy\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 147, i32 32 }
@___asan_gen_.17 = private constant [30 x i8] c"../net/netfilter/nft_dynset.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 171, i32 2 }
@___asan_gen_.23 = private unnamed_addr constant [31 x i8] c"../include/net/netns/generic.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 45, i32 7 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 695, i32 2 }
@___asan_gen_.31 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.32 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 723, i32 2 }
@llvm.compiler.used = appending global [9 x ptr] [ptr @nft_dynset_ops, ptr @.str, ptr @nft_dynset_policy, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_dynset_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_dynset_policy to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_dynset_eval(ptr noundef %expr, ptr noundef %regs, ptr noundef %pkt) #0 align 64 {
entry:
  %ext = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ext) #8
  %2 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %ext, align 4, !annotation !31
  %op = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %3 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load = load i8, ptr %op, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %bf.load)
  %cmp = icmp eq i8 %bf.load, 2
  %ops = getelementptr inbounds %struct.nft_set, ptr %1, i32 0, i32 21
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ops, align 128
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %delete = getelementptr inbounds %struct.nft_set_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %delete to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %delete, align 4
  %sreg_key = getelementptr inbounds %struct.nft_dynset, ptr %data.i, i32 0, i32 3
  %8 = ptrtoint ptr %sreg_key to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %sreg_key, align 1
  %idxprom = zext i8 %9 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %call2 = tail call zeroext i1 %7(ptr noundef %1, ptr noundef %arrayidx) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %update = getelementptr inbounds %struct.nft_set_ops, ptr %5, i32 0, i32 1
  %10 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %update, align 4
  %sreg_key4 = getelementptr inbounds %struct.nft_dynset, ptr %data.i, i32 0, i32 3
  %12 = ptrtoint ptr %sreg_key4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sreg_key4, align 1
  %idxprom5 = zext i8 %13 to i32
  %arrayidx6 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom5
  %call7 = call zeroext i1 %11(ptr noundef %1, ptr noundef %arrayidx6, ptr noundef nonnull @nft_dynset_new, ptr noundef %expr, ptr noundef %regs, ptr noundef nonnull %ext) #8
  br i1 %call7, label %if.then8, label %if.end23

if.then8:                                         ; preds = %if.end
  %14 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %14)
  %bf.load10 = load i8, ptr %op, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load10)
  %cmp12 = icmp eq i8 %bf.load10, 1
  br i1 %cmp12, label %land.lhs.true, label %if.then8.if.end19_crit_edge

if.then8.if.end19_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true:                                    ; preds = %if.then8
  %15 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ext, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %land.lhs.true.if.end19_crit_edge, label %nft_set_ext_exists.exit

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

nft_set_ext_exists.exit:                          ; preds = %land.lhs.true
  %arrayidx.i.i = getelementptr %struct.nft_set_ext, ptr %16, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i.i.not = icmp eq i8 %18, 0
  br i1 %tobool.i.i.not, label %nft_set_ext_exists.exit.if.end19_crit_edge, label %if.then14

nft_set_ext_exists.exit.if.end19_crit_edge:       ; preds = %nft_set_ext_exists.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then14:                                        ; preds = %nft_set_ext_exists.exit
  %timeout15 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 4
  %19 = ptrtoint ptr %timeout15 to i32
  call void @__asan_load8_noabort(i32 %19)
  %20 = load i64, ptr %timeout15, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %20)
  %tobool.not = icmp eq i64 %20, 0
  br i1 %tobool.not, label %cond.false, label %if.then14.cond.end_crit_edge

if.then14.cond.end_crit_edge:                     ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #10
  %timeout16 = getelementptr inbounds %struct.nft_set, ptr %1, i32 0, i32 15
  %21 = ptrtoint ptr %timeout16 to i32
  call void @__asan_load8_noabort(i32 %21)
  %22 = load i64, ptr %timeout16, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then14.cond.end_crit_edge
  %cond = phi i64 [ %22, %cond.false ], [ %20, %if.then14.cond.end_crit_edge ]
  %call17 = call i64 @get_jiffies_64() #8
  %add = add i64 %call17, %cond
  %23 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ext, align 4
  %arrayidx.i.i49 = getelementptr %struct.nft_set_ext, ptr %24, i32 0, i32 1, i32 5
  %25 = ptrtoint ptr %arrayidx.i.i49 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx.i.i49, align 1
  %conv.i.i = zext i8 %26 to i32
  %add.ptr.i.i = getelementptr i8, ptr %24, i32 %conv.i.i
  %27 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store i64 %add, ptr %add.ptr.i.i, align 8
  br label %if.end19

if.end19:                                         ; preds = %cond.end, %nft_set_ext_exists.exit.if.end19_crit_edge, %land.lhs.true.if.end19_crit_edge, %if.then8.if.end19_crit_edge
  %28 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ext, align 4
  %arrayidx.i.i50 = getelementptr %struct.nft_set_ext, ptr %29, i32 0, i32 1, i32 7
  %30 = ptrtoint ptr %arrayidx.i.i50 to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %arrayidx.i.i50, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.i.not.i = icmp eq i8 %31, 0
  br i1 %tobool.i.not.i, label %if.end19.nft_set_elem_update_expr.exit_crit_edge, label %if.then.i

if.end19.nft_set_elem_update_expr.exit_crit_edge: ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %nft_set_elem_update_expr.exit

if.then.i:                                        ; preds = %if.end19
  %conv.i.i.i = zext i8 %31 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 %conv.i.i.i
  %32 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %cmp23.not.i = icmp eq i8 %33, 0
  br i1 %cmp23.not.i, label %if.then.i.nft_set_elem_update_expr.exit_crit_edge, label %for.body.preheader.i

if.then.i.nft_set_elem_update_expr.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nft_set_elem_update_expr.exit

for.body.preheader.i:                             ; preds = %if.then.i
  %data.i51 = getelementptr inbounds %struct.nft_set_elem_expr, ptr %add.ptr.i.i.i, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %size.025.i = phi i32 [ %add.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %expr.024.i = phi ptr [ %add.ptr.i, %for.inc.i.for.body.i_crit_edge ], [ %data.i51, %for.body.preheader.i ]
  %34 = ptrtoint ptr %expr.024.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %expr.024.i, align 8
  %36 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %35, align 4
  call void %37(ptr noundef %expr.024.i, ptr noundef %regs, ptr noundef %pkt) #8
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %39)
  %cmp4.i = icmp eq i32 %39, -2
  br i1 %cmp4.i, label %for.body.i.nft_set_elem_update_expr.exit_crit_edge, label %for.inc.i

for.body.i.nft_set_elem_update_expr.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nft_set_elem_update_expr.exit

for.inc.i:                                        ; preds = %for.body.i
  %40 = ptrtoint ptr %expr.024.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %expr.024.i, align 8
  %size8.i = getelementptr inbounds %struct.nft_expr_ops, ptr %41, i32 0, i32 2
  %42 = ptrtoint ptr %size8.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %size8.i, align 4
  %add.i = add i32 %43, %size.025.i
  %add.ptr.i = getelementptr i8, ptr %expr.024.i, i32 %43
  %44 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %add.ptr.i.i.i, align 8
  %conv.i = zext i8 %45 to i32
  %cmp.i = icmp ult i32 %add.i, %conv.i
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.nft_set_elem_update_expr.exit_crit_edge

for.inc.i.nft_set_elem_update_expr.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nft_set_elem_update_expr.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

nft_set_elem_update_expr.exit:                    ; preds = %for.inc.i.nft_set_elem_update_expr.exit_crit_edge, %for.body.i.nft_set_elem_update_expr.exit_crit_edge, %if.then.i.nft_set_elem_update_expr.exit_crit_edge, %if.end19.nft_set_elem_update_expr.exit_crit_edge
  %invert = getelementptr inbounds %struct.nft_dynset, ptr %data.i, i32 0, i32 5
  %46 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %invert, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool20.not = icmp eq i8 %47, 0
  br i1 %tobool20.not, label %nft_set_elem_update_expr.exit.cleanup_crit_edge, label %if.then21

nft_set_elem_update_expr.exit.cleanup_crit_edge:  ; preds = %nft_set_elem_update_expr.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then21:                                        ; preds = %nft_set_elem_update_expr.exit
  call void @__sanitizer_cov_trace_pc() #10
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

if.end23:                                         ; preds = %if.end
  %invert24 = getelementptr inbounds %struct.nft_dynset, ptr %data.i, i32 0, i32 5
  %49 = ptrtoint ptr %invert24 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %invert24, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool25.not = icmp eq i8 %50, 0
  br i1 %tobool25.not, label %if.then26, label %if.end23.cleanup_crit_edge

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #10
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %if.end23.cleanup_crit_edge, %if.then21, %nft_set_elem_update_expr.exit.cleanup_crit_edge, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ext) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nft_dynset_new(ptr noundef %set, ptr noundef %expr, ptr noundef %regs) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %nelems = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 13
  %size = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 9
  %0 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %size, align 4
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !33
  tail call void @llvm.prefetch.p0(ptr %nelems, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %nelems, ptr %nelems, i32 %1, i32 1, ptr elementtype(i32) %nelems) #8, !srcloc !34
  %asmresult.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i, i32 %1)
  %cmp.not.i.i.i = icmp eq i32 %asmresult.i.i.i, %1
  br i1 %cmp.not.i.i.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !35
  %timeout2 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 4
  %3 = ptrtoint ptr %timeout2 to i32
  call void @__asan_load8_noabort(i32 %3)
  %4 = load i64, ptr %timeout2, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %4)
  %tobool.not = icmp eq i64 %4, 0
  br i1 %tobool.not, label %cond.false, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %timeout3 = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 15
  %5 = ptrtoint ptr %timeout3 to i32
  call void @__asan_load8_noabort(i32 %5)
  %6 = load i64, ptr %timeout3, align 8
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end.cond.end_crit_edge
  %cond = phi i64 [ %6, %cond.false ], [ %4, %if.end.cond.end_crit_edge ]
  %tmpl = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %sreg_key = getelementptr inbounds %struct.nft_dynset, ptr %data.i, i32 0, i32 3
  %7 = ptrtoint ptr %sreg_key to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %sreg_key, align 1
  %idxprom = zext i8 %8 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %sreg_data = getelementptr inbounds %struct.nft_dynset, ptr %data.i, i32 0, i32 4
  %9 = ptrtoint ptr %sreg_data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sreg_data, align 2
  %idxprom4 = zext i8 %10 to i32
  %arrayidx5 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom4
  %call6 = tail call ptr @nft_set_elem_init(ptr noundef %set, ptr noundef %tmpl, ptr noundef %arrayidx, ptr noundef null, ptr noundef %arrayidx5, i64 noundef %cond, i64 noundef 0, i32 noundef 2592) #8
  %cmp = icmp eq ptr %call6, null
  br i1 %cmp, label %cond.end.err1_crit_edge, label %if.end8

cond.end.err1_crit_edge:                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err1

if.end8:                                          ; preds = %cond.end
  %num_exprs = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3, i32 1, i32 1
  %11 = ptrtoint ptr %num_exprs to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %num_exprs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool10.not = icmp eq i8 %12, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %land.lhs.true

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end8
  %ops.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 21
  %13 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ops.i, align 128
  %elemsize.i = getelementptr inbounds %struct.nft_set_ops, ptr %14, i32 0, i32 15
  %15 = ptrtoint ptr %elemsize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %elemsize.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call6, i32 %16
  %arrayidx.i.i.i = getelementptr %struct.nft_set_ext, ptr %add.ptr.i, i32 0, i32 1, i32 7
  %17 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %18 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i.i.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %land.lhs.true
  %i.023.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %land.lhs.true ]
  %19 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %add.ptr.i.i.i, align 8
  %idxprom.i = zext i8 %20 to i32
  %arrayidx.i = getelementptr %struct.nft_set_elem_expr, ptr %add.ptr.i.i.i, i32 0, i32 2, i32 %idxprom.i
  %arrayidx2.i = getelementptr %struct.nft_dynset, ptr %data.i, i32 0, i32 9, i32 %i.023.i
  %21 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx2.i, align 4
  %call3.i = tail call i32 @nft_expr_clone(ptr noundef %arrayidx.i, ptr noundef %22) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3.i)
  %cmp4.i = icmp slt i32 %call3.i, 0
  br i1 %cmp4.i, label %err2, label %if.end.i

if.end.i:                                         ; preds = %for.body.i
  %23 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx2.i, align 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %24, align 8
  %size8.i = getelementptr inbounds %struct.nft_expr_ops, ptr %26, i32 0, i32 2
  %27 = ptrtoint ptr %size8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %size8.i, align 4
  %29 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %add.ptr.i.i.i, align 8
  %31 = trunc i32 %28 to i8
  %conv11.i = add i8 %30, %31
  store i8 %conv11.i, ptr %add.ptr.i.i.i, align 8
  %inc.i = add nuw nsw i32 %i.023.i, 1
  %32 = ptrtoint ptr %num_exprs to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %num_exprs, align 1
  %conv.i = zext i8 %33 to i32
  %cmp.i = icmp ult i32 %inc.i, %conv.i
  br i1 %cmp.i, label %if.end.i.for.body.i_crit_edge, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

err2:                                             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nft_set_elem_destroy(ptr noundef %set, ptr noundef nonnull %call6, i1 noundef zeroext false) #8
  br label %err1

err1:                                             ; preds = %err2, %cond.end.err1_crit_edge
  %34 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool17.not = icmp eq i32 %35, 0
  br i1 %tobool17.not, label %err1.cleanup_crit_edge, label %if.then18

err1.cleanup_crit_edge:                           ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then18:                                        ; preds = %err1
  call void @__sanitizer_cov_trace_pc() #10
  %call.i.i40 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nelems, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %nelems, i32 1, i32 3, i32 1) #8
  %36 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nelems, ptr %nelems, i32 1, ptr elementtype(i32) %nelems) #8, !srcloc !36
  br label %cleanup

cleanup:                                          ; preds = %if.then18, %err1.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call6, %if.end8.cleanup_crit_edge ], [ null, %if.then18 ], [ null, %err1.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ %call6, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nft_set_elem_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i64 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_set_elem_destroy(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_expr_clone(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_dynset_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  %timeout = alloca i64, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nf_tables_net_id to i32))
  %2 = load i32, ptr @nf_tables_net_id, align 4
  %3 = tail call i32 @llvm.read_register.i32(metadata !21) #8
  %and.i.i.i.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i.i.i.i, align 4
  %add.i.i.i.i.i = add i32 %6, 1
  store volatile i32 %add.i.i.i.i.i, ptr %preempt_count.i.i.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !37
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #8
  %call.i.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i.i.i, label %entry.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true.i.i.i

entry.rcu_read_lock.exit.i.i_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true.i.i.i:                              ; preds = %entry
  %call1.i.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call1.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i

land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

land.lhs.true2.i.i.i:                             ; preds = %land.lhs.true.i.i.i
  %.b4.i.i.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i.i.i, label %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, label %if.then.i.i.i

land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %rcu_read_lock.exit.i.i

if.then.i.i.i:                                    ; preds = %land.lhs.true2.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 696, ptr noundef nonnull @.str.5) #8
  br label %rcu_read_lock.exit.i.i

rcu_read_lock.exit.i.i:                           ; preds = %if.then.i.i.i, %land.lhs.true2.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %land.lhs.true.i.i.i.rcu_read_lock.exit.i.i_crit_edge, %entry.rcu_read_lock.exit.i.i_crit_edge
  %gen.i.i = getelementptr inbounds %struct.net, ptr %1, i32 0, i32 43
  %7 = ptrtoint ptr %gen.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %gen.i.i, align 128
  %call.i.i = tail call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i, label %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge

rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge:     ; preds = %rcu_read_lock.exit.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

land.lhs.true.i.i:                                ; preds = %rcu_read_lock.exit.i.i
  %call2.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i.i)
  %tobool3.not.i.i = icmp eq i32 %call2.i.i, 0
  br i1 %tobool3.not.i.i, label %land.lhs.true.i.i.do.end7.i.i_crit_edge, label %land.lhs.true4.i.i

land.lhs.true.i.i.do.end7.i.i_crit_edge:          ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

land.lhs.true4.i.i:                               ; preds = %land.lhs.true.i.i
  %.b9.i.i = load i1, ptr @net_generic.__warned, align 1
  br i1 %.b9.i.i, label %land.lhs.true4.i.i.do.end7.i.i_crit_edge, label %if.then.i.i

land.lhs.true4.i.i.do.end7.i.i_crit_edge:         ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end7.i.i

if.then.i.i:                                      ; preds = %land.lhs.true4.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @net_generic.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 45, ptr noundef nonnull @.str.3) #8
  br label %do.end7.i.i

do.end7.i.i:                                      ; preds = %if.then.i.i, %land.lhs.true4.i.i.do.end7.i.i_crit_edge, %land.lhs.true.i.i.do.end7.i.i_crit_edge, %rcu_read_lock.exit.i.i.do.end7.i.i_crit_edge
  %arrayidx.i.i = getelementptr [0 x ptr], ptr %8, i32 0, i32 %2
  %9 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx.i.i, align 4
  %call.i10.i.i = tail call zeroext i1 @rcu_is_watching() #8
  br i1 %call.i10.i.i, label %do.end7.i.i.nft_pernet.exit_crit_edge, label %land.lhs.true.i13.i.i

do.end7.i.i.nft_pernet.exit_crit_edge:            ; preds = %do.end7.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nft_pernet.exit

land.lhs.true.i13.i.i:                            ; preds = %do.end7.i.i
  %call1.i11.i.i = tail call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i11.i.i)
  %tobool.not.i12.i.i = icmp eq i32 %call1.i11.i.i, 0
  br i1 %tobool.not.i12.i.i, label %land.lhs.true.i13.i.i.nft_pernet.exit_crit_edge, label %land.lhs.true2.i15.i.i

land.lhs.true.i13.i.i.nft_pernet.exit_crit_edge:  ; preds = %land.lhs.true.i13.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nft_pernet.exit

land.lhs.true2.i15.i.i:                           ; preds = %land.lhs.true.i13.i.i
  %.b4.i14.i.i = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i14.i.i, label %land.lhs.true2.i15.i.i.nft_pernet.exit_crit_edge, label %if.then.i16.i.i

land.lhs.true2.i15.i.i.nft_pernet.exit_crit_edge: ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %nft_pernet.exit

if.then.i16.i.i:                                  ; preds = %land.lhs.true2.i15.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.4, i32 noundef 724, ptr noundef nonnull @.str.6) #8
  br label %nft_pernet.exit

nft_pernet.exit:                                  ; preds = %if.then.i16.i.i, %land.lhs.true2.i15.i.i.nft_pernet.exit_crit_edge, %land.lhs.true.i13.i.i.nft_pernet.exit_crit_edge, %do.end7.i.i.nft_pernet.exit_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !38
  %11 = tail call i32 @llvm.read_register.i32(metadata !21) #8
  %and.i.i.i.i.i17.i.i = and i32 %11, -16384
  %12 = inttoptr i32 %and.i.i.i.i.i17.i.i to ptr
  %preempt_count.i.i.i.i18.i.i = getelementptr inbounds %struct.thread_info, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %preempt_count.i.i.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile i32, ptr %preempt_count.i.i.i.i18.i.i, align 4
  %sub.i.i.i.i.i = add i32 %14, -1
  store volatile i32 %sub.i.i.i.i.i, ptr %preempt_count.i.i.i.i18.i.i, align 4
  tail call void @rcu_read_unlock_strict() #8
  tail call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #8
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %15 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctx, align 4
  %nft.i.i = getelementptr inbounds %struct.net, ptr %16, i32 0, i32 41
  %17 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.i.i = icmp eq i8 %18, 0
  %cond.i.i = zext i1 %cmp.i.i to i8
  %shl.i = shl nuw nsw i8 1, %cond.i.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %timeout) #8
  %19 = ptrtoint ptr %timeout to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 -1, ptr %timeout, align 8, !annotation !31
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %20 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %nft_pernet.exit.if.end_crit_edge, label %land.rhs

nft_pernet.exit.if.end_crit_edge:                 ; preds = %nft_pernet.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %nft_pernet.exit
  %dep_map = getelementptr inbounds %struct.nftables_pernet, ptr %10, i32 0, i32 4, i32 5
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !39

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 171, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %nft_pernet.exit.if.end_crit_edge
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx, align 4
  %cmp28 = icmp eq ptr %22, null
  br i1 %cmp28, label %if.end.cleanup315_crit_edge, label %lor.lhs.false

if.end.cleanup315_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

lor.lhs.false:                                    ; preds = %if.end
  %arrayidx29 = getelementptr ptr, ptr %tb, i32 3
  %23 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx29, align 4
  %cmp30 = icmp eq ptr %24, null
  br i1 %cmp30, label %lor.lhs.false.cleanup315_crit_edge, label %lor.lhs.false31

lor.lhs.false.cleanup315_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

lor.lhs.false31:                                  ; preds = %lor.lhs.false
  %arrayidx32 = getelementptr ptr, ptr %tb, i32 4
  %25 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx32, align 4
  %cmp33 = icmp eq ptr %26, null
  br i1 %cmp33, label %lor.lhs.false31.cleanup315_crit_edge, label %if.end35

lor.lhs.false31.cleanup315_crit_edge:             ; preds = %lor.lhs.false31
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

if.end35:                                         ; preds = %lor.lhs.false31
  %arrayidx36 = getelementptr ptr, ptr %tb, i32 9
  %27 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx36, align 4
  %tobool37.not = icmp eq ptr %28, null
  br i1 %tobool37.not, label %if.end35.if.end53_crit_edge, label %if.then38

if.end35.if.end53_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then38:                                        ; preds = %if.end35
  %add.ptr.i.i = getelementptr i8, ptr %28, i32 4
  %29 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %tobool41.not = icmp ult i32 %30, 4
  br i1 %tobool41.not, label %if.end43, label %if.then38.cleanup315_crit_edge

if.then38.cleanup315_crit_edge:                   ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

if.end43:                                         ; preds = %if.then38
  %and44 = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44)
  %tobool45.not = icmp eq i32 %and44, 0
  br i1 %tobool45.not, label %if.end43.if.end47_crit_edge, label %if.then46

if.end43.if.end47_crit_edge:                      ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then46:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #10
  %invert = getelementptr inbounds %struct.nft_dynset, ptr %data.i, i32 0, i32 5
  %31 = ptrtoint ptr %invert to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 1, ptr %invert, align 1
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end43.if.end47_crit_edge
  %and48 = and i32 %30, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  br i1 %tobool49.not, label %if.end47.if.end53_crit_edge, label %if.then50

if.end47.if.end53_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end53

if.then50:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %expr51 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3, i32 1
  %32 = ptrtoint ptr %expr51 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %expr51, align 4
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end47.if.end53_crit_edge, %if.end35.if.end53_crit_edge
  %33 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ctx, align 4
  %table = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 1
  %35 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %table, align 4
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %arrayidx56 = getelementptr ptr, ptr %tb, i32 2
  %39 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx56, align 4
  %call57 = tail call ptr @nft_set_lookup_global(ptr noundef %34, ptr noundef %36, ptr noundef %38, ptr noundef %40, i8 noundef zeroext %shl.i) #8
  %cmp.i = icmp ugt ptr %call57, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then59, label %if.end61

if.then59:                                        ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  %41 = ptrtoint ptr %call57 to i32
  br label %cleanup315

if.end61:                                         ; preds = %if.end53
  %ops = getelementptr inbounds %struct.nft_set, ptr %call57, i32 0, i32 21
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops, align 128
  %update = getelementptr inbounds %struct.nft_set_ops, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %update to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %update, align 4
  %cmp62 = icmp eq ptr %45, null
  br i1 %cmp62, label %if.end61.cleanup315_crit_edge, label %if.end64

if.end61.cleanup315_crit_edge:                    ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

if.end64:                                         ; preds = %if.end61
  %flags65 = getelementptr inbounds %struct.nft_set, ptr %call57, i32 0, i32 22
  %46 = ptrtoint ptr %flags65 to i32
  call void @__asan_load2_noabort(i32 %46)
  %bf.load = load i16, ptr %flags65, align 4
  %47 = and i16 %bf.load, 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %47)
  %tobool67.not = icmp eq i16 %47, 0
  br i1 %tobool67.not, label %if.end69, label %if.end64.cleanup315_crit_edge

if.end64.cleanup315_crit_edge:                    ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

if.end69:                                         ; preds = %if.end64
  %48 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx29, align 4
  %add.ptr.i.i440 = getelementptr i8, ptr %49, i32 4
  %50 = ptrtoint ptr %add.ptr.i.i440 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %add.ptr.i.i440, align 4
  %op = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %52 = trunc i32 %51 to i8
  %53 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %52, ptr %op, align 8
  %bf.cast = and i32 %51, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %bf.cast)
  %cmp74 = icmp ugt i32 %bf.cast, 2
  br i1 %cmp74, label %if.end69.cleanup315_crit_edge, label %if.end77

if.end69.cleanup315_crit_edge:                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

if.end77:                                         ; preds = %if.end69
  %54 = ptrtoint ptr %timeout to i32
  call void @__asan_store8_noabort(i32 %54)
  store i64 0, ptr %timeout, align 8
  %arrayidx78 = getelementptr ptr, ptr %tb, i32 6
  %55 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %arrayidx78, align 4
  %cmp79.not = icmp eq ptr %56, null
  br i1 %cmp79.not, label %if.end77.if.end95_crit_edge, label %if.then81

if.end77.if.end95_crit_edge:                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.then81:                                        ; preds = %if.end77
  %57 = ptrtoint ptr %flags65 to i32
  call void @__asan_load2_noabort(i32 %57)
  %bf.load83 = load i16, ptr %flags65, align 4
  %58 = and i16 %bf.load83, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %58)
  %tobool87.not = icmp eq i16 %58, 0
  br i1 %tobool87.not, label %if.then81.cleanup315_crit_edge, label %if.end89

if.then81.cleanup315_crit_edge:                   ; preds = %if.then81
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

if.end89:                                         ; preds = %if.then81
  %call91 = call i32 @nf_msecs_to_jiffies64(ptr noundef nonnull %56, ptr noundef nonnull %timeout) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end89.if.end95_crit_edge, label %if.end89.cleanup315_crit_edge

if.end89.cleanup315_crit_edge:                    ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

if.end89.if.end95_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end95

if.end95:                                         ; preds = %if.end89.if.end95_crit_edge, %if.end77.if.end95_crit_edge
  %59 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %arrayidx32, align 4
  %sreg_key = getelementptr inbounds %struct.nft_dynset, ptr %data.i, i32 0, i32 3
  %klen = getelementptr inbounds %struct.nft_set, ptr %call57, i32 0, i32 23
  %61 = ptrtoint ptr %klen to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %klen, align 2
  %conv97 = zext i8 %62 to i32
  %call98 = call i32 @nft_parse_register_load(ptr noundef %60, ptr noundef %sreg_key, i32 noundef %conv97) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %cmp99 = icmp slt i32 %call98, 0
  br i1 %cmp99, label %if.end95.cleanup315_crit_edge, label %if.end102

if.end95.cleanup315_crit_edge:                    ; preds = %if.end95
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

if.end102:                                        ; preds = %if.end95
  %arrayidx103 = getelementptr ptr, ptr %tb, i32 5
  %63 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %arrayidx103, align 4
  %cmp104.not = icmp eq ptr %64, null
  %65 = ptrtoint ptr %flags65 to i32
  call void @__asan_load2_noabort(i32 %65)
  %bf.load127 = load i16, ptr %flags65, align 4
  %66 = and i16 %bf.load127, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %66)
  %tobool131.not = icmp eq i16 %66, 0
  br i1 %cmp104.not, label %if.else, label %if.then106

if.then106:                                       ; preds = %if.end102
  br i1 %tobool131.not, label %if.then106.cleanup315_crit_edge, label %if.end114

if.then106.cleanup315_crit_edge:                  ; preds = %if.then106
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

if.end114:                                        ; preds = %if.then106
  %dtype = getelementptr inbounds %struct.nft_set, ptr %call57, i32 0, i32 7
  %67 = ptrtoint ptr %dtype to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -256, i32 %68)
  %cmp115 = icmp eq i32 %68, -256
  br i1 %cmp115, label %if.end114.cleanup315_crit_edge, label %if.end118

if.end114.cleanup315_crit_edge:                   ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

if.end118:                                        ; preds = %if.end114
  %sreg_data = getelementptr inbounds %struct.nft_dynset, ptr %data.i, i32 0, i32 4
  %dlen = getelementptr inbounds %struct.nft_set, ptr %call57, i32 0, i32 24
  %69 = ptrtoint ptr %dlen to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %dlen, align 1
  %conv120 = zext i8 %70 to i32
  %call121 = call i32 @nft_parse_register_load(ptr noundef nonnull %64, ptr noundef %sreg_data, i32 noundef %conv120) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %cmp122 = icmp slt i32 %call121, 0
  br i1 %cmp122, label %if.end118.cleanup315_crit_edge, label %if.end118.if.end134_crit_edge

if.end118.if.end134_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.end118.cleanup315_crit_edge:                   ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

if.else:                                          ; preds = %if.end102
  br i1 %tobool131.not, label %if.else.if.end134_crit_edge, label %if.else.cleanup315_crit_edge

if.else.cleanup315_crit_edge:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

if.else.if.end134_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134

if.end134:                                        ; preds = %if.else.if.end134_crit_edge, %if.end118.if.end134_crit_edge
  %arrayidx135 = getelementptr ptr, ptr %tb, i32 7
  %71 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %arrayidx135, align 4
  %tobool136.not = icmp eq ptr %72, null
  br i1 %tobool136.not, label %lor.lhs.false137, label %land.lhs.true.thread

lor.lhs.false137:                                 ; preds = %if.end134
  %arrayidx138 = getelementptr ptr, ptr %tb, i32 10
  %73 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx138, align 4
  %tobool139.not = icmp eq ptr %74, null
  br i1 %tobool139.not, label %lor.lhs.false137.if.else241_crit_edge, label %land.lhs.true

lor.lhs.false137.if.else241_crit_edge:            ; preds = %lor.lhs.false137
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else241

land.lhs.true:                                    ; preds = %lor.lhs.false137
  %75 = ptrtoint ptr %flags65 to i32
  call void @__asan_load2_noabort(i32 %75)
  %bf.load141 = load i16, ptr %flags65, align 4
  %76 = and i16 %bf.load141, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %76)
  %tobool145.not = icmp eq i16 %76, 0
  br i1 %tobool145.not, label %land.lhs.true.cleanup315_crit_edge, label %if.else178

land.lhs.true.cleanup315_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

land.lhs.true.thread:                             ; preds = %if.end134
  %77 = ptrtoint ptr %flags65 to i32
  call void @__asan_load2_noabort(i32 %77)
  %bf.load141483 = load i16, ptr %flags65, align 4
  %78 = and i16 %bf.load141483, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %78)
  %tobool145.not484 = icmp eq i16 %78, 0
  br i1 %tobool145.not484, label %land.lhs.true.thread.cleanup315_crit_edge, label %if.then150

land.lhs.true.thread.cleanup315_crit_edge:        ; preds = %land.lhs.true.thread
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

if.then150:                                       ; preds = %land.lhs.true.thread
  %call152 = call fastcc ptr @nft_dynset_expr_alloc(ptr noundef %ctx, ptr noundef %call57, ptr noundef nonnull %72, i32 noundef 0)
  %cmp.i441 = icmp ugt ptr %call152, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i441, label %cleanup175.thread489, label %if.end156

cleanup175.thread489:                             ; preds = %if.then150
  call void @__sanitizer_cov_trace_pc() #10
  %79 = ptrtoint ptr %call152 to i32
  br label %cleanup315

if.end156:                                        ; preds = %if.then150
  %num_exprs = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3, i32 1, i32 1
  %80 = ptrtoint ptr %num_exprs to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %num_exprs, align 1
  %inc = add i8 %81, 1
  store i8 %inc, ptr %num_exprs, align 1
  %expr_array = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 5
  %82 = ptrtoint ptr %expr_array to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call152, ptr %expr_array, align 8
  %num_exprs158 = getelementptr inbounds %struct.nft_set, ptr %call57, i32 0, i32 25
  %83 = ptrtoint ptr %num_exprs158 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %num_exprs158, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %84)
  %cmp160 = icmp ugt i8 %84, 1
  br i1 %cmp160, label %if.end156.err_expr_free_crit_edge, label %lor.lhs.false162

if.end156.err_expr_free_crit_edge:                ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_expr_free

lor.lhs.false162:                                 ; preds = %if.end156
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %84)
  %cmp165 = icmp eq i8 %84, 1
  br i1 %cmp165, label %land.lhs.true167, label %lor.lhs.false162.if.end257_crit_edge

lor.lhs.false162.if.end257_crit_edge:             ; preds = %lor.lhs.false162
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end257

land.lhs.true167:                                 ; preds = %lor.lhs.false162
  %85 = ptrtoint ptr %call152 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %call152, align 8
  %exprs = getelementptr inbounds %struct.nft_set, ptr %call57, i32 0, i32 26
  %87 = ptrtoint ptr %exprs to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %exprs, align 4
  %89 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %88, align 8
  %cmp171.not = icmp eq ptr %86, %90
  br i1 %cmp171.not, label %land.lhs.true167.if.end257_crit_edge, label %land.lhs.true167.err_expr_free_crit_edge

land.lhs.true167.err_expr_free_crit_edge:         ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_expr_free

land.lhs.true167.if.end257_crit_edge:             ; preds = %land.lhs.true167
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end257

if.else178:                                       ; preds = %land.lhs.true
  %91 = ptrtoint ptr %arrayidx138 to i32
  call void @__asan_load4_noabort(i32 %91)
  %.pr = load ptr, ptr %arrayidx138, align 4
  %tobool180.not = icmp eq ptr %.pr, null
  br i1 %tobool180.not, label %if.else178.if.else241_crit_edge, label %if.then181

if.else178.if.else241_crit_edge:                  ; preds = %if.else178
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else241

if.then181:                                       ; preds = %if.else178
  %expr184 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3, i32 1
  %92 = ptrtoint ptr %expr184 to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %expr184, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool185.not = icmp eq i8 %93, 0
  br i1 %tobool185.not, label %if.then181.cleanup315_crit_edge, label %if.end187

if.then181.cleanup315_crit_edge:                  ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

if.end187:                                        ; preds = %if.then181
  %94 = ptrtoint ptr %.pr to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %.pr, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 7, i16 %95)
  %cmp.i442504 = icmp ugt i16 %95, 7
  br i1 %cmp.i442504, label %land.lhs.true.i.lr.ph, label %if.end187.for.end_crit_edge

if.end187.for.end_crit_edge:                      ; preds = %if.end187
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true.i.lr.ph:                            ; preds = %if.end187
  %conv.i = zext i16 %95 to i32
  %sub.i = add nsw i32 %conv.i, -4
  %add.ptr.i = getelementptr i8, ptr %.pr, i32 4
  %num_exprs210 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3, i32 1, i32 1
  %num_exprs212 = getelementptr inbounds %struct.nft_set, ptr %call57, i32 0, i32 25
  %96 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %add.ptr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %97)
  %cmp1.i = icmp ult i16 %97, 4
  %conv.i443 = zext i16 %97 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv.i443)
  %cmp5.i.not = icmp ult i32 %sub.i, %conv.i443
  %or.cond501 = select i1 %cmp1.i, i1 true, i1 %cmp5.i.not
  br i1 %or.cond501, label %land.lhs.true.i.lr.ph.for.end_crit_edge, label %for.body

land.lhs.true.i.lr.ph.for.end_crit_edge:          ; preds = %land.lhs.true.i.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %land.lhs.true.i.lr.ph
  %nla_type.i = getelementptr i8, ptr %.pr, i32 6
  %98 = ptrtoint ptr %nla_type.i to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %nla_type.i, align 2
  %100 = and i16 %99, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %100)
  %cmp199.not = icmp eq i16 %100, 1
  br i1 %cmp199.not, label %if.end202, label %for.body.err_expr_free_crit_edge

for.body.err_expr_free_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_expr_free

if.end202:                                        ; preds = %for.body
  %call203 = call fastcc ptr @nft_dynset_expr_alloc(ptr noundef %ctx, ptr noundef %call57, ptr noundef %add.ptr.i, i32 noundef 0)
  %cmp.i444 = icmp ugt ptr %call203, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i444, label %if.end202.if.then205_crit_edge, label %if.end207

if.end202.if.then205_crit_edge:                   ; preds = %if.end202
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then205

if.then205:                                       ; preds = %if.end202.1.if.then205_crit_edge, %if.end202.if.then205_crit_edge
  %call203.lcssa = phi ptr [ %call203, %if.end202.if.then205_crit_edge ], [ %call203.1, %if.end202.1.if.then205_crit_edge ]
  %101 = ptrtoint ptr %call203.lcssa to i32
  br label %err_expr_free

if.end207:                                        ; preds = %if.end202
  %arrayidx209 = getelementptr %struct.nft_expr, ptr %expr, i32 5
  %102 = ptrtoint ptr %arrayidx209 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %call203, ptr %arrayidx209, align 4
  %103 = ptrtoint ptr %num_exprs210 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %num_exprs210, align 1
  %inc211 = add i8 %104, 1
  store i8 %inc211, ptr %num_exprs210, align 1
  %105 = ptrtoint ptr %num_exprs212 to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %num_exprs212, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %106)
  %tobool214.not = icmp eq i8 %106, 0
  br i1 %tobool214.not, label %if.end207.if.end223_crit_edge, label %land.lhs.true215

if.end207.if.end223_crit_edge:                    ; preds = %if.end207
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end223

land.lhs.true215:                                 ; preds = %if.end207
  %107 = ptrtoint ptr %call203 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %call203, align 8
  %arrayidx218 = getelementptr %struct.nft_set, ptr %call57, i32 0, i32 26, i32 0
  %109 = ptrtoint ptr %arrayidx218 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx218, align 4
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 8
  %cmp220.not = icmp eq ptr %108, %112
  br i1 %cmp220.not, label %land.lhs.true215.if.end223_crit_edge, label %land.lhs.true215.err_expr_free_crit_edge

land.lhs.true215.err_expr_free_crit_edge:         ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_expr_free

land.lhs.true215.if.end223_crit_edge:             ; preds = %land.lhs.true215
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end223

if.end223:                                        ; preds = %land.lhs.true215.if.end223_crit_edge, %if.end207.if.end223_crit_edge
  %113 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %113)
  %114 = load i16, ptr %add.ptr.i, align 2
  %conv.i445 = zext i16 %114 to i32
  %sub.i446 = add nuw nsw i32 %conv.i445, 3
  %and.i447 = and i32 %sub.i446, 131068
  %sub1.i = sub nsw i32 %sub.i, %and.i447
  %add.ptr.i448 = getelementptr i8, ptr %add.ptr.i, i32 %and.i447
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i)
  %cmp.i442 = icmp sgt i32 %sub1.i, 3
  br i1 %cmp.i442, label %land.lhs.true.i.1, label %if.end223.for.end_crit_edge

if.end223.for.end_crit_edge:                      ; preds = %if.end223
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true.i.1:                                ; preds = %if.end223
  %115 = ptrtoint ptr %add.ptr.i448 to i32
  call void @__asan_load2_noabort(i32 %115)
  %116 = load i16, ptr %add.ptr.i448, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %116)
  %cmp1.i.1 = icmp ult i16 %116, 4
  %conv.i443.1 = zext i16 %116 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i, i32 %conv.i443.1)
  %cmp5.i.not.1 = icmp ult i32 %sub1.i, %conv.i443.1
  %or.cond501.1 = select i1 %cmp1.i.1, i1 true, i1 %cmp5.i.not.1
  br i1 %or.cond501.1, label %land.lhs.true.i.1.for.end_crit_edge, label %for.body.1

land.lhs.true.i.1.for.end_crit_edge:              ; preds = %land.lhs.true.i.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.1:                                       ; preds = %land.lhs.true.i.1
  %nla_type.i.1 = getelementptr inbounds %struct.nlattr, ptr %add.ptr.i448, i32 0, i32 1
  %117 = ptrtoint ptr %nla_type.i.1 to i32
  call void @__asan_load2_noabort(i32 %117)
  %118 = load i16, ptr %nla_type.i.1, align 2
  %119 = and i16 %118, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %119)
  %cmp199.not.1 = icmp eq i16 %119, 1
  br i1 %cmp199.not.1, label %if.end202.1, label %for.body.1.err_expr_free_crit_edge

for.body.1.err_expr_free_crit_edge:               ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_expr_free

if.end202.1:                                      ; preds = %for.body.1
  %call203.1 = call fastcc ptr @nft_dynset_expr_alloc(ptr noundef %ctx, ptr noundef %call57, ptr noundef %add.ptr.i448, i32 noundef 1)
  %cmp.i444.1 = icmp ugt ptr %call203.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i444.1, label %if.end202.1.if.then205_crit_edge, label %if.end207.1

if.end202.1.if.then205_crit_edge:                 ; preds = %if.end202.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then205

if.end207.1:                                      ; preds = %if.end202.1
  %arrayidx209.1 = getelementptr %struct.nft_expr, ptr %expr, i32 5, i32 1
  %120 = ptrtoint ptr %arrayidx209.1 to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %call203.1, ptr %arrayidx209.1, align 4
  %121 = ptrtoint ptr %num_exprs210 to i32
  call void @__asan_load1_noabort(i32 %121)
  %122 = load i8, ptr %num_exprs210, align 1
  %inc211.1 = add i8 %122, 1
  store i8 %inc211.1, ptr %num_exprs210, align 1
  %123 = ptrtoint ptr %num_exprs212 to i32
  call void @__asan_load1_noabort(i32 %123)
  %124 = load i8, ptr %num_exprs212, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %124)
  %tobool214.not.1 = icmp eq i8 %124, 0
  br i1 %tobool214.not.1, label %if.end207.1.if.end223.1_crit_edge, label %land.lhs.true215.1

if.end207.1.if.end223.1_crit_edge:                ; preds = %if.end207.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end223.1

land.lhs.true215.1:                               ; preds = %if.end207.1
  %125 = ptrtoint ptr %call203.1 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %call203.1, align 8
  %arrayidx218.1 = getelementptr %struct.nft_set, ptr %call57, i32 0, i32 26, i32 1
  %127 = ptrtoint ptr %arrayidx218.1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %arrayidx218.1, align 4
  %129 = ptrtoint ptr %128 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %128, align 8
  %cmp220.not.1 = icmp eq ptr %126, %130
  br i1 %cmp220.not.1, label %land.lhs.true215.1.if.end223.1_crit_edge, label %land.lhs.true215.1.err_expr_free_crit_edge

land.lhs.true215.1.err_expr_free_crit_edge:       ; preds = %land.lhs.true215.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_expr_free

land.lhs.true215.1.if.end223.1_crit_edge:         ; preds = %land.lhs.true215.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end223.1

if.end223.1:                                      ; preds = %land.lhs.true215.1.if.end223.1_crit_edge, %if.end207.1.if.end223.1_crit_edge
  %131 = ptrtoint ptr %add.ptr.i448 to i32
  call void @__asan_load2_noabort(i32 %131)
  %132 = load i16, ptr %add.ptr.i448, align 2
  %conv.i445.1 = zext i16 %132 to i32
  %sub.i446.1 = add nuw nsw i32 %conv.i445.1, 3
  %and.i447.1 = and i32 %sub.i446.1, 131068
  %sub1.i.1 = sub nsw i32 %sub1.i, %and.i447.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub1.i.1)
  %cmp.i442.1 = icmp sgt i32 %sub1.i.1, 3
  br i1 %cmp.i442.1, label %land.lhs.true.i.2, label %if.end223.1.for.end_crit_edge

if.end223.1.for.end_crit_edge:                    ; preds = %if.end223.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

land.lhs.true.i.2:                                ; preds = %if.end223.1
  %add.ptr.i448.1 = getelementptr i8, ptr %add.ptr.i448, i32 %and.i447.1
  %133 = ptrtoint ptr %add.ptr.i448.1 to i32
  call void @__asan_load2_noabort(i32 %133)
  %134 = load i16, ptr %add.ptr.i448.1, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %134)
  %cmp1.i.2 = icmp ult i16 %134, 4
  %conv.i443.2 = zext i16 %134 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1.i.1, i32 %conv.i443.2)
  %cmp5.i.not.2 = icmp ult i32 %sub1.i.1, %conv.i443.2
  %or.cond501.2 = select i1 %cmp1.i.2, i1 true, i1 %cmp5.i.not.2
  br i1 %or.cond501.2, label %land.lhs.true.i.2.for.end_crit_edge, label %land.lhs.true.i.2.err_expr_free_crit_edge

land.lhs.true.i.2.err_expr_free_crit_edge:        ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_expr_free

land.lhs.true.i.2.for.end_crit_edge:              ; preds = %land.lhs.true.i.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %land.lhs.true.i.2.for.end_crit_edge, %if.end223.1.for.end_crit_edge, %land.lhs.true.i.1.for.end_crit_edge, %if.end223.for.end_crit_edge, %land.lhs.true.i.lr.ph.for.end_crit_edge, %if.end187.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end187.for.end_crit_edge ], [ 0, %land.lhs.true.i.lr.ph.for.end_crit_edge ], [ 1, %if.end223.for.end_crit_edge ], [ 1, %land.lhs.true.i.1.for.end_crit_edge ], [ 2, %if.end223.1.for.end_crit_edge ], [ 2, %land.lhs.true.i.2.for.end_crit_edge ]
  %num_exprs226 = getelementptr inbounds %struct.nft_set, ptr %call57, i32 0, i32 25
  %135 = ptrtoint ptr %num_exprs226 to i32
  call void @__asan_load1_noabort(i32 %135)
  %136 = load i8, ptr %num_exprs226, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %136)
  %tobool228.not = icmp eq i8 %136, 0
  %conv227 = zext i8 %136 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0.lcssa, i32 %conv227)
  %cmp232.not = icmp eq i32 %i.0.lcssa, %conv227
  %or.cond = or i1 %tobool228.not, %cmp232.not
  br i1 %or.cond, label %for.end.if.end257_crit_edge, label %for.end.err_expr_free_crit_edge

for.end.err_expr_free_crit_edge:                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_expr_free

for.end.if.end257_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end257

if.else241:                                       ; preds = %if.else178.if.else241_crit_edge, %lor.lhs.false137.if.else241_crit_edge
  %num_exprs242 = getelementptr inbounds %struct.nft_set, ptr %call57, i32 0, i32 25
  %137 = ptrtoint ptr %num_exprs242 to i32
  call void @__asan_load1_noabort(i32 %137)
  %138 = load i8, ptr %num_exprs242, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %138)
  %cmp244.not = icmp eq i8 %138, 0
  br i1 %cmp244.not, label %if.else241.if.end257_crit_edge, label %if.then246

if.else241.if.end257_crit_edge:                   ; preds = %if.else241
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end257

if.then246:                                       ; preds = %if.else241
  %expr_array247 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 5
  %call248 = call i32 @nft_set_elem_expr_clone(ptr noundef %ctx, ptr noundef %call57, ptr noundef %expr_array247) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call248)
  %cmp249 = icmp slt i32 %call248, 0
  br i1 %cmp249, label %if.then246.cleanup315_crit_edge, label %if.end252

if.then246.cleanup315_crit_edge:                  ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

if.end252:                                        ; preds = %if.then246
  call void @__sanitizer_cov_trace_pc() #10
  %139 = ptrtoint ptr %num_exprs242 to i32
  call void @__asan_load1_noabort(i32 %139)
  %140 = load i8, ptr %num_exprs242, align 8
  %num_exprs254 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3, i32 1, i32 1
  %141 = ptrtoint ptr %num_exprs254 to i32
  call void @__asan_store1_noabort(i32 %141)
  store i8 %140, ptr %num_exprs254, align 1
  br label %if.end257

if.end257:                                        ; preds = %if.end252, %if.else241.if.end257_crit_edge, %for.end.if.end257_crit_edge, %land.lhs.true167.if.end257_crit_edge, %lor.lhs.false162.if.end257_crit_edge
  %tmpl = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %142 = getelementptr %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %143 = call ptr @memset(ptr %142, i32 0, i32 10)
  %144 = ptrtoint ptr %tmpl to i32
  call void @__asan_store2_noabort(i32 %144)
  store i16 10, ptr %tmpl, align 2
  %145 = ptrtoint ptr %klen to i32
  call void @__asan_load1_noabort(i32 %145)
  %146 = load i8, ptr %klen, align 2
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 0, i32 1) to i32))
  %147 = load i8, ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 0, i32 1), align 1
  %conv3.i = zext i8 %147 to i32
  %add.i = add nuw nsw i32 %conv3.i, 65545
  %neg.i = sub nsw i32 0, %conv3.i
  %and.i451 = and i32 %add.i, %neg.i
  %conv10.i = trunc i32 %and.i451 to i16
  store i16 %conv10.i, ptr %tmpl, align 2
  %conv13.i = and i32 %and.i451, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.i)
  %cmp.not.i = icmp eq i32 %conv13.i, 0
  br i1 %cmp.not.i, label %nft_set_ext_add_length.exit, label %do.body16.i, !prof !40

do.body16.i:                                      ; preds = %if.end257
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/netfilter/nf_tables.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 663, 0\0A.popsection", ""() #8, !srcloc !41
  unreachable

nft_set_ext_add_length.exit:                      ; preds = %if.end257
  %conv260 = zext i8 %146 to i16
  %conv21.i = trunc i32 %and.i451 to i8
  %148 = ptrtoint ptr %142 to i32
  call void @__asan_store1_noabort(i32 %148)
  store i8 %conv21.i, ptr %142, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @nft_set_ext_types to i32))
  %149 = load i8, ptr @nft_set_ext_types, align 1
  %conv27.i = zext i8 %149 to i16
  %add28.i = add nuw nsw i16 %conv10.i, %conv260
  %conv32.i = add nuw nsw i16 %add28.i, %conv27.i
  %150 = ptrtoint ptr %tmpl to i32
  call void @__asan_store2_noabort(i32 %150)
  store i16 %conv32.i, ptr %tmpl, align 2
  %151 = ptrtoint ptr %flags65 to i32
  call void @__asan_load2_noabort(i32 %151)
  %bf.load262 = load i16, ptr %flags65, align 4
  %152 = and i16 %bf.load262, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %152)
  %tobool266.not = icmp eq i16 %152, 0
  br i1 %tobool266.not, label %nft_set_ext_add_length.exit.if.end271_crit_edge, label %if.then267

nft_set_ext_add_length.exit.if.end271_crit_edge:  ; preds = %nft_set_ext_add_length.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end271

if.then267:                                       ; preds = %nft_set_ext_add_length.exit
  %dlen269 = getelementptr inbounds %struct.nft_set, ptr %call57, i32 0, i32 24
  %153 = ptrtoint ptr %dlen269 to i32
  call void @__asan_load1_noabort(i32 %153)
  %154 = load i8, ptr %dlen269, align 1
  %conv.i452 = zext i16 %conv32.i to i32
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 2, i32 1) to i32))
  %155 = load i8, ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 2, i32 1), align 1
  %conv3.i453 = zext i8 %155 to i32
  %sub.i454 = add nuw nsw i32 %conv.i452, 65535
  %add.i455 = add nuw nsw i32 %sub.i454, %conv3.i453
  %neg.i456 = sub nsw i32 0, %conv3.i453
  %and.i457 = and i32 %add.i455, %neg.i456
  %conv10.i458 = trunc i32 %and.i457 to i16
  %156 = ptrtoint ptr %tmpl to i32
  call void @__asan_store2_noabort(i32 %156)
  store i16 %conv10.i458, ptr %tmpl, align 2
  %conv13.i459 = and i32 %and.i457, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.i459)
  %cmp.not.i460 = icmp eq i32 %conv13.i459, 0
  br i1 %cmp.not.i460, label %nft_set_ext_add_length.exit467, label %do.body16.i461, !prof !40

do.body16.i461:                                   ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/netfilter/nf_tables.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 663, 0\0A.popsection", ""() #8, !srcloc !41
  unreachable

nft_set_ext_add_length.exit467:                   ; preds = %if.then267
  call void @__sanitizer_cov_trace_pc() #10
  %conv270 = zext i8 %154 to i16
  %conv21.i462 = trunc i32 %and.i457 to i8
  %arrayidx23.i463 = getelementptr %struct.nft_expr, ptr %expr, i32 2
  %157 = ptrtoint ptr %arrayidx23.i463 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %conv21.i462, ptr %arrayidx23.i463, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 2) to i32))
  %158 = load i8, ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 2), align 1
  %conv27.i464 = zext i8 %158 to i16
  %add28.i465 = add i16 %conv10.i458, %conv270
  %conv32.i466 = add i16 %add28.i465, %conv27.i464
  %159 = ptrtoint ptr %tmpl to i32
  call void @__asan_store2_noabort(i32 %159)
  store i16 %conv32.i466, ptr %tmpl, align 2
  br label %if.end271

if.end271:                                        ; preds = %nft_set_ext_add_length.exit467, %nft_set_ext_add_length.exit.if.end271_crit_edge
  %num_exprs272 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3, i32 1, i32 1
  %160 = ptrtoint ptr %num_exprs272 to i32
  call void @__asan_load1_noabort(i32 %160)
  %161 = load i8, ptr %num_exprs272, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %161)
  %tobool273.not = icmp eq i8 %161, 0
  br i1 %tobool273.not, label %if.end271.if.end275_crit_edge, label %if.then274

if.end271.if.end275_crit_edge:                    ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end275

if.then274:                                       ; preds = %if.end271
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @nft_dynset_ext_add_expr(ptr noundef %data.i)
  br label %if.end275

if.end275:                                        ; preds = %if.then274, %if.end271.if.end275_crit_edge
  %162 = ptrtoint ptr %flags65 to i32
  call void @__asan_load2_noabort(i32 %162)
  %bf.load277 = load i16, ptr %flags65, align 4
  %163 = and i16 %bf.load277, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %163)
  %tobool281.not = icmp eq i16 %163, 0
  br i1 %tobool281.not, label %if.end275.if.end291_crit_edge, label %if.then282

if.end275.if.end291_crit_edge:                    ; preds = %if.end275
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end291

if.then282:                                       ; preds = %if.end275
  %164 = ptrtoint ptr %timeout to i32
  call void @__asan_load8_noabort(i32 %164)
  %165 = load i64, ptr %timeout, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %165)
  %tobool283.not = icmp eq i64 %165, 0
  br i1 %tobool283.not, label %lor.lhs.false284, label %if.then282.if.then287_crit_edge

if.then282.if.then287_crit_edge:                  ; preds = %if.then282
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then287

lor.lhs.false284:                                 ; preds = %if.then282
  %timeout285 = getelementptr inbounds %struct.nft_set, ptr %call57, i32 0, i32 15
  %166 = ptrtoint ptr %timeout285 to i32
  call void @__asan_load8_noabort(i32 %166)
  %167 = load i64, ptr %timeout285, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %167)
  %tobool286.not = icmp eq i64 %167, 0
  br i1 %tobool286.not, label %lor.lhs.false284.if.end291_crit_edge, label %lor.lhs.false284.if.then287_crit_edge

lor.lhs.false284.if.then287_crit_edge:            ; preds = %lor.lhs.false284
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then287

lor.lhs.false284.if.end291_crit_edge:             ; preds = %lor.lhs.false284
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end291

if.then287:                                       ; preds = %lor.lhs.false284.if.then287_crit_edge, %if.then282.if.then287_crit_edge
  %168 = ptrtoint ptr %tmpl to i32
  call void @__asan_load2_noabort(i32 %168)
  %169 = load i16, ptr %tmpl, align 2
  %conv.i.i = zext i16 %169 to i32
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 4, i32 1) to i32))
  %170 = load i8, ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 4, i32 1), align 1
  %conv3.i.i = zext i8 %170 to i32
  %sub.i.i = add nuw nsw i32 %conv.i.i, 65535
  %add.i.i = add nuw nsw i32 %sub.i.i, %conv3.i.i
  %neg.i.i = sub nsw i32 0, %conv3.i.i
  %and.i.i = and i32 %add.i.i, %neg.i.i
  %conv10.i.i = trunc i32 %and.i.i to i16
  store i16 %conv10.i.i, ptr %tmpl, align 2
  %conv13.i.i = and i32 %and.i.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.i.i)
  %cmp.not.i.i = icmp eq i32 %conv13.i.i, 0
  br i1 %cmp.not.i.i, label %nft_set_ext_add.exit, label %do.body16.i.i, !prof !40

do.body16.i.i:                                    ; preds = %if.then287
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/netfilter/nf_tables.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 663, 0\0A.popsection", ""() #8, !srcloc !41
  unreachable

nft_set_ext_add.exit:                             ; preds = %if.then287
  %conv21.i.i = trunc i32 %and.i.i to i8
  %arrayidx23.i.i = getelementptr %struct.nft_set_ext_tmpl, ptr %tmpl, i32 0, i32 1, i32 4
  %171 = ptrtoint ptr %arrayidx23.i.i to i32
  call void @__asan_store1_noabort(i32 %171)
  store i8 %conv21.i.i, ptr %arrayidx23.i.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 4) to i32))
  %172 = load i8, ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 4), align 1
  %173 = zext i8 %172 to i32
  %conv32.i.i = add nuw nsw i32 %and.i.i, %173
  %conv.i.i468 = and i32 %conv32.i.i, 65535
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 5, i32 1) to i32))
  %174 = load i8, ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 5, i32 1), align 1
  %conv3.i.i469 = zext i8 %174 to i32
  %sub.i.i470 = add nuw nsw i32 %conv.i.i468, 65535
  %add.i.i471 = add nuw nsw i32 %sub.i.i470, %conv3.i.i469
  %neg.i.i472 = sub nsw i32 0, %conv3.i.i469
  %and.i.i473 = and i32 %add.i.i471, %neg.i.i472
  %conv10.i.i474 = trunc i32 %and.i.i473 to i16
  %175 = ptrtoint ptr %tmpl to i32
  call void @__asan_store2_noabort(i32 %175)
  store i16 %conv10.i.i474, ptr %tmpl, align 2
  %conv13.i.i475 = and i32 %and.i.i473, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.i.i475)
  %cmp.not.i.i476 = icmp eq i32 %conv13.i.i475, 0
  br i1 %cmp.not.i.i476, label %nft_set_ext_add.exit481, label %do.body16.i.i477, !prof !40

do.body16.i.i477:                                 ; preds = %nft_set_ext_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/netfilter/nf_tables.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 663, 0\0A.popsection", ""() #8, !srcloc !41
  unreachable

nft_set_ext_add.exit481:                          ; preds = %nft_set_ext_add.exit
  call void @__sanitizer_cov_trace_pc() #10
  %conv21.i.i478 = trunc i32 %and.i.i473 to i8
  %arrayidx23.i.i479 = getelementptr %struct.nft_set_ext_tmpl, ptr %tmpl, i32 0, i32 1, i32 5
  %176 = ptrtoint ptr %arrayidx23.i.i479 to i32
  call void @__asan_store1_noabort(i32 %176)
  store i8 %conv21.i.i478, ptr %arrayidx23.i.i479, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 5) to i32))
  %177 = load i8, ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 5), align 1
  %178 = zext i8 %177 to i16
  %conv32.i.i480 = add i16 %178, %conv10.i.i474
  %179 = ptrtoint ptr %tmpl to i32
  call void @__asan_store2_noabort(i32 %179)
  store i16 %conv32.i.i480, ptr %tmpl, align 2
  br label %if.end291

if.end291:                                        ; preds = %nft_set_ext_add.exit481, %lor.lhs.false284.if.end291_crit_edge, %if.end275.if.end291_crit_edge
  %180 = ptrtoint ptr %timeout to i32
  call void @__asan_load8_noabort(i32 %180)
  %181 = load i64, ptr %timeout, align 8
  %timeout292 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 4
  %182 = ptrtoint ptr %timeout292 to i32
  call void @__asan_store8_noabort(i32 %182)
  store i64 %181, ptr %timeout292, align 8
  %binding = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 6
  %call293 = call i32 @nf_tables_bind_set(ptr noundef %ctx, ptr noundef %call57, ptr noundef %binding) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call293)
  %cmp294 = icmp slt i32 %call293, 0
  br i1 %cmp294, label %if.end291.err_expr_free_crit_edge, label %if.end297

if.end291.err_expr_free_crit_edge:                ; preds = %if.end291
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_expr_free

if.end297:                                        ; preds = %if.end291
  %size = getelementptr inbounds %struct.nft_set, ptr %call57, i32 0, i32 9
  %183 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp298 = icmp eq i32 %184, 0
  br i1 %cmp298, label %if.then300, label %if.end297.if.end302_crit_edge

if.end297.if.end302_crit_edge:                    ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end302

if.then300:                                       ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #10
  %185 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %185)
  store i32 65535, ptr %size, align 4
  br label %if.end302

if.end302:                                        ; preds = %if.then300, %if.end297.if.end302_crit_edge
  %186 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr %call57, ptr %data.i, align 8
  br label %cleanup315

err_expr_free:                                    ; preds = %if.end291.err_expr_free_crit_edge, %for.end.err_expr_free_crit_edge, %land.lhs.true.i.2.err_expr_free_crit_edge, %land.lhs.true215.1.err_expr_free_crit_edge, %for.body.1.err_expr_free_crit_edge, %land.lhs.true215.err_expr_free_crit_edge, %if.then205, %for.body.err_expr_free_crit_edge, %land.lhs.true167.err_expr_free_crit_edge, %if.end156.err_expr_free_crit_edge
  %err.3 = phi i32 [ %call293, %if.end291.err_expr_free_crit_edge ], [ -95, %land.lhs.true167.err_expr_free_crit_edge ], [ -95, %if.end156.err_expr_free_crit_edge ], [ -95, %for.end.err_expr_free_crit_edge ], [ %101, %if.then205 ], [ -95, %land.lhs.true215.err_expr_free_crit_edge ], [ -22, %for.body.err_expr_free_crit_edge ], [ -22, %for.body.1.err_expr_free_crit_edge ], [ -95, %land.lhs.true215.1.err_expr_free_crit_edge ], [ -7, %land.lhs.true.i.2.err_expr_free_crit_edge ]
  %num_exprs305 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3, i32 1, i32 1
  %187 = ptrtoint ptr %num_exprs305 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %num_exprs305, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %188)
  %cmp307511.not = icmp eq i8 %188, 0
  br i1 %cmp307511.not, label %err_expr_free.cleanup315_crit_edge, label %err_expr_free.for.body309_crit_edge

err_expr_free.for.body309_crit_edge:              ; preds = %err_expr_free
  br label %for.body309

err_expr_free.cleanup315_crit_edge:               ; preds = %err_expr_free
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

for.body309:                                      ; preds = %for.body309.for.body309_crit_edge, %err_expr_free.for.body309_crit_edge
  %i.1512 = phi i32 [ %inc313, %for.body309.for.body309_crit_edge ], [ 0, %err_expr_free.for.body309_crit_edge ]
  %arrayidx311 = getelementptr %struct.nft_dynset, ptr %data.i, i32 0, i32 9, i32 %i.1512
  %189 = ptrtoint ptr %arrayidx311 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %arrayidx311, align 4
  call void @nft_expr_destroy(ptr noundef %ctx, ptr noundef %190) #8
  %inc313 = add nuw nsw i32 %i.1512, 1
  %191 = ptrtoint ptr %num_exprs305 to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %num_exprs305, align 1
  %conv306 = zext i8 %192 to i32
  %cmp307 = icmp ult i32 %inc313, %conv306
  br i1 %cmp307, label %for.body309.for.body309_crit_edge, label %for.body309.cleanup315_crit_edge

for.body309.cleanup315_crit_edge:                 ; preds = %for.body309
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup315

for.body309.for.body309_crit_edge:                ; preds = %for.body309
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body309

cleanup315:                                       ; preds = %for.body309.cleanup315_crit_edge, %err_expr_free.cleanup315_crit_edge, %if.end302, %if.then246.cleanup315_crit_edge, %if.then181.cleanup315_crit_edge, %cleanup175.thread489, %land.lhs.true.thread.cleanup315_crit_edge, %land.lhs.true.cleanup315_crit_edge, %if.else.cleanup315_crit_edge, %if.end118.cleanup315_crit_edge, %if.end114.cleanup315_crit_edge, %if.then106.cleanup315_crit_edge, %if.end95.cleanup315_crit_edge, %if.end89.cleanup315_crit_edge, %if.then81.cleanup315_crit_edge, %if.end69.cleanup315_crit_edge, %if.end64.cleanup315_crit_edge, %if.end61.cleanup315_crit_edge, %if.then59, %if.then38.cleanup315_crit_edge, %lor.lhs.false31.cleanup315_crit_edge, %lor.lhs.false.cleanup315_crit_edge, %if.end.cleanup315_crit_edge
  %retval.4 = phi i32 [ %41, %if.then59 ], [ 0, %if.end302 ], [ -22, %lor.lhs.false31.cleanup315_crit_edge ], [ -22, %lor.lhs.false.cleanup315_crit_edge ], [ -22, %if.end.cleanup315_crit_edge ], [ -95, %if.end61.cleanup315_crit_edge ], [ -16, %if.end64.cleanup315_crit_edge ], [ -95, %if.end69.cleanup315_crit_edge ], [ -95, %if.then81.cleanup315_crit_edge ], [ %call91, %if.end89.cleanup315_crit_edge ], [ %call98, %if.end95.cleanup315_crit_edge ], [ -95, %if.then106.cleanup315_crit_edge ], [ -95, %if.end114.cleanup315_crit_edge ], [ %call121, %if.end118.cleanup315_crit_edge ], [ -22, %if.else.cleanup315_crit_edge ], [ -22, %land.lhs.true.cleanup315_crit_edge ], [ %call248, %if.then246.cleanup315_crit_edge ], [ -95, %if.then38.cleanup315_crit_edge ], [ -22, %land.lhs.true.thread.cleanup315_crit_edge ], [ %79, %cleanup175.thread489 ], [ -22, %if.then181.cleanup315_crit_edge ], [ %err.3, %err_expr_free.cleanup315_crit_edge ], [ %err.3, %for.body309.cleanup315_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %timeout) #8
  ret i32 %retval.4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nft_dynset_activate(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %expr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 8
  %use = getelementptr inbounds %struct.nft_set, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %use to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %use, align 4
  %inc = add i32 %3, 1
  store i32 %inc, ptr %use, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_dynset_deactivate(ptr noundef %ctx, ptr noundef %expr, i32 noundef %phase) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 8
  %binding = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 6
  tail call void @nf_tables_deactivate_set(ptr noundef %ctx, ptr noundef %1, ptr noundef %binding, i32 noundef %phase) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_dynset_destroy(ptr noundef %ctx, ptr nocapture noundef readonly %expr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %num_exprs = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3, i32 1, i32 1
  %0 = ptrtoint ptr %num_exprs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_exprs, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp8.not = icmp eq i8 %1, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nft_dynset, ptr %data.i, i32 0, i32 9, i32 %i.09
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  tail call void @nft_expr_destroy(ptr noundef %ctx, ptr noundef %3) #8
  %inc = add nuw nsw i32 %i.09, 1
  %4 = ptrtoint ptr %num_exprs to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %num_exprs, align 1
  %conv = zext i8 %5 to i32
  %cmp = icmp ult i32 %inc, %conv
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %data.i, align 8
  tail call void @nf_tables_destroy_set(ptr noundef %ctx, ptr noundef %7) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_dynset_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #0 align 64 {
entry:
  %tmp.i99 = alloca i32, align 4
  %tmp.i95 = alloca i64, align 8
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %invert = getelementptr inbounds %struct.nft_dynset, ptr %data.i, i32 0, i32 5
  %0 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %invert, align 1, !range !32
  %2 = zext i8 %1 to i32
  %sreg_key = getelementptr inbounds %struct.nft_dynset, ptr %data.i, i32 0, i32 3
  %3 = ptrtoint ptr %sreg_key to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sreg_key, align 1
  %conv = zext i8 %4 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 4, i32 noundef %conv) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i, align 8
  %flags3 = getelementptr inbounds %struct.nft_set, ptr %6, i32 0, i32 22
  %7 = ptrtoint ptr %flags3 to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %flags3, align 4
  %8 = and i16 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %8)
  %tobool5.not = icmp eq i16 %8, 0
  br i1 %tobool5.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %sreg_data = getelementptr inbounds %struct.nft_dynset, ptr %data.i, i32 0, i32 4
  %9 = ptrtoint ptr %sreg_data to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sreg_data, align 2
  %conv6 = zext i8 %10 to i32
  %call7 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 5, i32 noundef %conv6) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end10_crit_edge, label %land.lhs.true.nla_put_failure_crit_edge

land.lhs.true.nla_put_failure_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %op = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %11 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %11)
  %bf.load11 = load i8, ptr %op, align 8
  %bf.cast = zext i8 %bf.load11 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #8
  %12 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %bf.cast, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool13.not = icmp eq i32 %call.i, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.nla_put_failure_crit_edge

if.end10.nla_put_failure_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end15:                                         ; preds = %if.end10
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 8
  %name = getelementptr inbounds %struct.nft_set, ptr %14, i32 0, i32 4
  %15 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %name, align 8
  %call.i94 = call i32 @strlen(ptr noundef %16) #11
  %add.i = add i32 %call.i94, 1
  %call1.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef %add.i, ptr noundef %16) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool18.not = icmp eq i32 %call1.i, 0
  br i1 %tobool18.not, label %if.end20, label %if.end15.nla_put_failure_crit_edge

if.end15.nla_put_failure_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end20:                                         ; preds = %if.end15
  %timeout = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 4
  %17 = ptrtoint ptr %timeout to i32
  call void @__asan_load8_noabort(i32 %17)
  %18 = load i64, ptr %timeout, align 8
  %call21 = call i64 @nf_jiffies64_to_msecs(i64 noundef %18) #8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %tmp.i95) #8
  %19 = ptrtoint ptr %tmp.i95 to i32
  call void @__asan_store8_noabort(i32 %19)
  store i64 %call21, ptr %tmp.i95, align 8
  %call.i96 = call i32 @nla_put_64bit(ptr noundef %skb, i32 noundef 6, i32 noundef 8, ptr noundef nonnull %tmp.i95, i32 noundef 8) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %tmp.i95) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i96)
  %tobool23.not = icmp eq i32 %call.i96, 0
  br i1 %tobool23.not, label %if.end25, label %if.end20.nla_put_failure_crit_edge

if.end20.nla_put_failure_crit_edge:               ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end25:                                         ; preds = %if.end20
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 8
  %num_exprs = getelementptr inbounds %struct.nft_set, ptr %21, i32 0, i32 25
  %22 = ptrtoint ptr %num_exprs to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %num_exprs, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %cmp = icmp eq i8 %23, 0
  br i1 %cmp, label %if.then29, label %if.end25.if.end61_crit_edge

if.end25.if.end61_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then29:                                        ; preds = %if.end25
  %num_exprs30 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3, i32 1, i32 1
  %24 = ptrtoint ptr %num_exprs30 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %num_exprs30, align 1
  %26 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values)
  switch i8 %25, label %if.then43 [
    i8 1, label %if.then34
    i8 0, label %if.then29.if.end61_crit_edge
  ]

if.then29.if.end61_crit_edge:                     ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then34:                                        ; preds = %if.then29
  %expr_array = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 5
  %27 = ptrtoint ptr %expr_array to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %expr_array, align 8
  %call35 = call i32 @nft_expr_dump(ptr noundef %skb, i32 noundef 7, ptr noundef %28) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call35)
  %tobool36.not = icmp eq i32 %call35, 0
  br i1 %tobool36.not, label %if.then34.if.end61_crit_edge, label %if.then34.nla_put_failure_crit_edge

if.then34.nla_put_failure_crit_edge:              ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.then34.if.end61_crit_edge:                     ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end61

if.then43:                                        ; preds = %if.then29
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 16
  %29 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %tail.i.i, align 8
  %call1.i97 = call i32 @nla_put(ptr noundef %skb, i32 noundef 10, i32 noundef 0, ptr noundef null) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i97)
  %cmp.i = icmp slt i32 %call1.i97, 0
  %tobool45.not106 = icmp eq ptr %30, null
  %tobool45.not = select i1 %cmp.i, i1 true, i1 %tobool45.not106
  br i1 %tobool45.not, label %if.then43.nla_put_failure_crit_edge, label %for.cond.preheader

if.then43.nla_put_failure_crit_edge:              ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

for.cond.preheader:                               ; preds = %if.then43
  %31 = ptrtoint ptr %num_exprs30 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %num_exprs30, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %cmp50104.not = icmp eq i8 %32, 0
  br i1 %cmp50104.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0105, 1
  %33 = ptrtoint ptr %num_exprs30 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %num_exprs30, align 1
  %conv49 = zext i8 %34 to i32
  %cmp50 = icmp ult i32 %inc, %conv49
  br i1 %cmp50, label %for.cond.for.body_crit_edge, label %for.cond.cleanup_crit_edge

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0105 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx53 = getelementptr %struct.nft_dynset, ptr %data.i, i32 0, i32 9, i32 %i.0105
  %35 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %arrayidx53, align 4
  %call54 = call i32 @nft_expr_dump(ptr noundef %skb, i32 noundef 1, ptr noundef %36) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call54)
  %tobool55.not = icmp eq i32 %call54, 0
  br i1 %tobool55.not, label %for.cond, label %for.body.nla_put_failure_crit_edge

for.body.nla_put_failure_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

cleanup:                                          ; preds = %for.cond.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %37 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tail.i.i, align 8
  %sub.ptr.lhs.cast.i = ptrtoint ptr %38 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %30 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %conv.i = trunc i32 %sub.ptr.sub.i to i16
  %39 = ptrtoint ptr %30 to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 %conv.i, ptr %30, align 2
  br label %if.end61

if.end61:                                         ; preds = %cleanup, %if.then34.if.end61_crit_edge, %if.then29.if.end61_crit_edge, %if.end25.if.end61_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i99) #8
  %40 = ptrtoint ptr %tmp.i99 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %2, ptr %tmp.i99, align 4
  %call.i100 = call i32 @nla_put(ptr noundef %skb, i32 noundef 9, i32 noundef 4, ptr noundef nonnull %tmp.i99) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i99) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i100)
  %tobool63.not = icmp eq i32 %call.i100, 0
  br i1 %tobool63.not, label %if.end61.cleanup66_crit_edge, label %if.end61.nla_put_failure_crit_edge

if.end61.nla_put_failure_crit_edge:               ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %nla_put_failure

if.end61.cleanup66_crit_edge:                     ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup66

nla_put_failure:                                  ; preds = %if.end61.nla_put_failure_crit_edge, %for.body.nla_put_failure_crit_edge, %if.then43.nla_put_failure_crit_edge, %if.then34.nla_put_failure_crit_edge, %if.end20.nla_put_failure_crit_edge, %if.end15.nla_put_failure_crit_edge, %if.end10.nla_put_failure_crit_edge, %land.lhs.true.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup66

cleanup66:                                        ; preds = %nla_put_failure, %if.end61.cleanup66_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %if.end61.cleanup66_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nft_set_lookup_global(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_msecs_to_jiffies64(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_load(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nft_dynset_expr_alloc(ptr noundef %ctx, ptr noundef %set, ptr noundef %attr, i32 noundef %pos) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @nft_set_elem_expr_alloc(ptr noundef %ctx, ptr noundef %set, ptr noundef %attr) #8
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr %struct.nft_set, ptr %set, i32 0, i32 26, i32 %pos
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %4 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %call, align 8
  %cmp.not = icmp eq ptr %3, %5
  br i1 %cmp.not, label %land.lhs.true.cleanup_crit_edge, label %if.then5

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @nft_expr_destroy(ptr noundef %ctx, ptr noundef %call) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then5, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -95 to ptr), %if.then5 ], [ %call, %entry.cleanup_crit_edge ], [ %call, %land.lhs.true.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_set_elem_expr_clone(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nft_dynset_ext_add_expr(ptr nocapture noundef %priv) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %num_exprs = getelementptr inbounds %struct.nft_dynset, ptr %priv, i32 0, i32 7
  %0 = ptrtoint ptr %num_exprs to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %num_exprs, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp12.not = icmp eq i8 %1, 0
  br i1 %cmp12.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.014 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %size.013 = phi i32 [ %phi.cast, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.nft_dynset, ptr %priv, i32 0, i32 9, i32 %i.014
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %size2 = getelementptr inbounds %struct.nft_expr_ops, ptr %5, i32 0, i32 2
  %6 = ptrtoint ptr %size2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size2, align 4
  %add = add i32 %7, %size.013
  %inc = add nuw nsw i32 %i.014, 1
  %phi.cast = and i32 %add, 255
  %exitcond.not = icmp eq i32 %inc, %conv
  br i1 %exitcond.not, label %for.end.loopexit, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end.loopexit:                                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo = add nuw nsw i32 %phi.cast, 8
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %entry.for.end_crit_edge
  %size.0.lcssa = phi i32 [ 8, %entry.for.end_crit_edge ], [ %phi.bo, %for.end.loopexit ]
  %tmpl = getelementptr inbounds %struct.nft_dynset, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %tmpl to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %tmpl, align 2
  %conv.i = zext i16 %9 to i32
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 7, i32 1) to i32))
  %10 = load i8, ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 7, i32 1), align 1
  %conv3.i = zext i8 %10 to i32
  %sub.i = add nuw nsw i32 %conv.i, 65535
  %add.i = add nuw nsw i32 %sub.i, %conv3.i
  %neg.i = sub nsw i32 0, %conv3.i
  %and.i = and i32 %add.i, %neg.i
  %conv10.i = trunc i32 %and.i to i16
  store i16 %conv10.i, ptr %tmpl, align 2
  %conv13.i = and i32 %and.i, 65280
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv13.i)
  %cmp.not.i = icmp eq i32 %conv13.i, 0
  br i1 %cmp.not.i, label %nft_set_ext_add_length.exit, label %do.body16.i, !prof !40

do.body16.i:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/net/netfilter/nf_tables.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 663, 0\0A.popsection", ""() #8, !srcloc !41
  unreachable

nft_set_ext_add_length.exit:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %conv21.i = trunc i32 %and.i to i8
  %arrayidx23.i = getelementptr %struct.nft_dynset, ptr %priv, i32 0, i32 1, i32 1, i32 7
  %11 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv21.i, ptr %arrayidx23.i, align 1
  call void @__asan_load1_noabort(i32 ptrtoint (ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 7) to i32))
  %12 = load i8, ptr getelementptr inbounds ([0 x %struct.nft_set_ext_type], ptr @nft_set_ext_types, i32 0, i32 7), align 1
  %conv27.i = zext i8 %12 to i32
  %add28.i = add nuw nsw i32 %size.0.lcssa, %conv27.i
  %13 = trunc i32 %add28.i to i16
  %conv32.i = add i16 %13, %conv10.i
  %14 = ptrtoint ptr %tmpl to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %conv32.i, ptr %tmpl, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_tables_bind_set(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_expr_destroy(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nft_set_elem_expr_alloc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_tables_deactivate_set(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_tables_destroy_set(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @nf_jiffies64_to_msecs(i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_expr_dump(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put_64bit(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !12, !14, !15, !16, !18, !19}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_dynset.c", i32 419, i32 11}
!2 = !{ptr @nft_dynset_type, !3, !"nft_dynset_type", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_dynset.c", i32 418, i32 22}
!4 = !{ptr @nft_dynset_ops, !5, !"nft_dynset_ops", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_dynset.c", i32 407, i32 34}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../net/netfilter/nft_dynset.c", i32 171, i32 2}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../include/net/netns/generic.h", i32 45, i32 7}
!10 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!12 = distinct !{null, !13, !"__warned", i1 false, i1 false}
!13 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = distinct !{null, !17, !"__warned", i1 false, i1 false}
!17 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!18 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @nft_dynset_policy, !20, !"nft_dynset_policy", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_dynset.c", i32 147, i32 32}
!21 = !{!"sp"}
!22 = !{i32 1, !"wchar_size", i32 2}
!23 = !{i32 1, !"min_enum_size", i32 4}
!24 = !{i32 8, !"branch-target-enforcement", i32 0}
!25 = !{i32 8, !"sign-return-address", i32 0}
!26 = !{i32 8, !"sign-return-address-all", i32 0}
!27 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!28 = !{i32 7, !"uwtable", i32 1}
!29 = !{i32 7, !"frame-pointer", i32 2}
!30 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!31 = !{!"auto-init"}
!32 = !{i8 0, i8 2}
!33 = !{i64 2148217884}
!34 = !{i64 702707, i64 702732, i64 702754, i64 702770, i64 702782, i64 702802, i64 702826, i64 702842, i64 702854}
!35 = !{i64 2148218072}
!36 = !{i64 2148220930, i64 2148220956, i64 2148220985, i64 2148221019, i64 2148221050, i64 2148221073}
!37 = !{i64 2149364934}
!38 = !{i64 2149365200}
!39 = !{!"branch_weights", i32 1, i32 2000}
!40 = !{!"branch_weights", i32 2000, i32 1}
!41 = !{i64 2156545503, i64 2156546001, i64 2156545540, i64 2156545596, i64 2156545630, i64 2156545654, i64 2156545695, i64 2156545716, i64 2156545744, i64 2156545778}
