; ModuleID = '/llk/IR_all_yes/net/netfilter/nf_tables_core.c_pt.bc'
source_filename = "../net/netfilter/nf_tables_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+nft_do_chain\22, \22a\22\09"
module asm "\09.weak\09__crc_nft_do_chain\09\09\09\09"
module asm "\09.long\09__crc_nft_do_chain\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_nft_do_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22nft_do_chain\22\09\09\09\09\09"
module asm "__kstrtabns_nft_do_chain:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.static_key_false = type { %struct.static_key }
%struct.static_key = type { %struct.atomic_t, %union.anon }
%union.anon = type { i32 }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.nft_object_type = type { ptr, ptr, %struct.list_head, i32, i32, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.nft_regs = type { %union.anon.125 }
%union.anon.125 = type { [20 x i32] }
%struct.nft_jumpstack = type { ptr, ptr, ptr }
%struct.nft_traceinfo = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon.6 }
%union.anon.6 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.7 }
%union.anon.7 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.26, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.26 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.24, i32, %struct.spinlock }
%union.anon.24 = type { %struct.anon.25 }
%struct.anon.25 = type { ptr, ptr }
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
%struct.nft_verdict = type { i32, ptr }
%struct.nft_chain = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.rhlist_head, ptr, i64, i32, i8, ptr, i16, ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.nft_rule_blob = type { i32, [4 x i8], [0 x i8] }
%struct.nft_rule_dp = type { i56, [0 x i8] }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_cmp_fast_expr = type { i32, i32, i8, i8, i8 }
%struct.nft_bitwise_fast_expr = type { i32, i32, i8, i8 }
%struct.nft_payload = type { i8, i8, i8, i8 }
%struct.sk_buff = type { %union.anon.0, %union.anon.104, %union.anon.105, [48 x i8], %union.anon.106, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.108, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.104 = type { ptr }
%union.anon.105 = type { i64 }
%union.anon.106 = type { %struct.anon.107 }
%struct.anon.107 = type { i32, ptr }
%union.anon.108 = type { %struct.anon.109 }
%struct.anon.109 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.110, i32, i32, i32, i16, i16, %union.anon.112, i32, %union.anon.113, %union.anon.114, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.110 = type { i32 }
%union.anon.112 = type { i32 }
%union.anon.113 = type { i32 }
%union.anon.114 = type { i16 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nft_stats = type { i64, i64, %struct.u64_stats_sync }
%struct.u64_stats_sync = type { %struct.seqcount }

@nft_counters_enabled = dso_local global { { { %struct.atomic_t, { ptr } } }, [24 x i8] } zeroinitializer, align 32
@nft_trace_enabled = external dso_local global %struct.static_key_false, align 4
@nft_do_chain.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/netfilter/nf_tables_core.c\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nft_do_chain.__warned.2 = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nft_cmp_fast_ops = external dso_local constant %struct.nft_expr_ops, align 4
@nft_bitwise_fast_ops = external dso_local constant %struct.nft_expr_ops, align 4
@nft_payload_fast_ops = external dso_local constant %struct.nft_expr_ops, align 4
@nft_do_chain.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@nft_do_chain.__already_done.3 = internal unnamed_addr global i1 false, section ".data.once", align 1
@__kstrtab_nft_do_chain = external dso_local constant [0 x i8], align 1
@__kstrtabns_nft_do_chain = external dso_local constant [0 x i8], align 1
@__ksymtab_nft_do_chain = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @nft_do_chain to i32), ptr @__kstrtab_nft_do_chain, ptr @__kstrtabns_nft_do_chain }, section "___ksymtab_gpl+nft_do_chain", align 4
@nft_basic_objects = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @nft_secmark_obj_type, ptr @nft_counter_obj_type], [24 x i8] zeroinitializer }, align 32
@nft_basic_types = internal constant { [13 x ptr], [44 x i8] } { [13 x ptr] [ptr @nft_imm_type, ptr @nft_cmp_type, ptr @nft_lookup_type, ptr @nft_bitwise_type, ptr @nft_byteorder_type, ptr @nft_payload_type, ptr @nft_dynset_type, ptr @nft_range_type, ptr @nft_meta_type, ptr @nft_rt_type, ptr @nft_exthdr_type, ptr @nft_last_type, ptr @nft_counter_type], [44 x i8] zeroinitializer }, align 32
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@__seqprop_assert.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@lockdep_recursion = external dso_local global i32, section ".data..percpu", align 4
@hardirqs_enabled = external dso_local global i32, section ".data..percpu", align 4
@.str.4 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/seqlock.h\00", [40 x i8] zeroinitializer }, align 32
@nft_secmark_obj_type = external dso_local global %struct.nft_object_type, align 4
@nft_counter_obj_type = external dso_local global %struct.nft_object_type, align 4
@nft_imm_type = external dso_local global %struct.nft_expr_type, align 4
@nft_cmp_type = external dso_local global %struct.nft_expr_type, align 4
@nft_lookup_type = external dso_local global %struct.nft_expr_type, align 4
@nft_bitwise_type = external dso_local global %struct.nft_expr_type, align 4
@nft_byteorder_type = external dso_local global %struct.nft_expr_type, align 4
@nft_payload_type = external dso_local global %struct.nft_expr_type, align 4
@nft_dynset_type = external dso_local global %struct.nft_expr_type, align 4
@nft_range_type = external dso_local global %struct.nft_expr_type, align 4
@nft_meta_type = external dso_local global %struct.nft_expr_type, align 4
@nft_rt_type = external dso_local global %struct.nft_expr_type, align 4
@nft_exthdr_type = external dso_local global %struct.nft_expr_type, align 4
@nft_last_type = external dso_local global %struct.nft_expr_type, align 4
@nft_counter_type = external dso_local global %struct.nft_expr_type, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 32, i64 4294967294, i64 4294967295]
@__sancov_gen_cov_switch_values.6 = internal global [6 x i64] [i64 4, i64 32, i64 4294967291, i64 4294967292, i64 4294967293, i64 4294967295]
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"nft_counters_enabled\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 132, i32 1 }
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 216, i32 10 }
@___asan_gen_.16 = private unnamed_addr constant [18 x i8] c"nft_basic_objects\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 312, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant [16 x i8] c"nft_basic_types\00", align 1
@___asan_gen_.20 = private constant [34 x i8] c"../net/netfilter/nf_tables_core.c\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.20, i32 296, i32 30 }
@___asan_gen_.22 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant [27 x i8] c"../include/linux/seqlock.h\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 271, i32 2 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @__ksymtab_nft_do_chain, ptr @nft_counters_enabled, ptr @.str, ptr @.str.1, ptr @nft_basic_objects, ptr @nft_basic_types, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_counters_enabled to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_basic_objects to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_basic_types to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nft_do_chain(ptr noundef %pkt, ptr noundef %priv) #0 align 64 {
entry:
  %regs = alloca %struct.nft_regs, align 4
  %jumpstack = alloca [16 x %struct.nft_jumpstack], align 4
  %info = alloca %struct.nft_traceinfo, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %net.i, align 4
  call void @llvm.lifetime.start.p0(i64 80, ptr nonnull %regs) #8
  %4 = call ptr @memset(ptr %regs, i32 255, i32 80)
  call void @llvm.lifetime.start.p0(i64 192, ptr nonnull %jumpstack) #8
  %5 = call ptr @memset(ptr %jumpstack, i32 255, i32 192)
  %nft = getelementptr inbounds %struct.net, ptr %3, i32 0, i32 41
  %6 = ptrtoint ptr %nft to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load volatile i8, ptr %nft, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %info) #8
  %8 = call ptr @memset(ptr %info, i32 255, i32 28)
  %trace = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 7
  %9 = ptrtoint ptr %trace to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %trace, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @nft_trace_enabled, ptr blockaddress(@nft_do_chain, %if.then)) #8
          to label %if.end [label %if.then], !srcloc !31

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  call void @nft_trace_init(ptr noundef nonnull %info, ptr noundef %pkt, ptr noundef nonnull %regs, ptr noundef %priv) #8
  br label %if.end

if.end:                                           ; preds = %if.then, %entry
  %flags.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 2
  %thoff.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %rule3.i = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 3
  %chain156 = getelementptr inbounds %struct.nft_verdict, ptr %regs, i32 0, i32 1
  br label %do_chain

do_chain:                                         ; preds = %sw.bb155, %if.end
  %stackptr.0 = phi i32 [ 0, %if.end ], [ %stackptr.2, %sw.bb155 ]
  %chain.0 = phi ptr [ %priv, %if.end ], [ %108, %sw.bb155 ]
  br i1 %tobool.not, label %if.else, label %if.then8

if.then8:                                         ; preds = %do_chain
  %blob_gen_1 = getelementptr inbounds %struct.nft_chain, ptr %chain.0, i32 0, i32 1
  %10 = ptrtoint ptr %blob_gen_1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %blob_gen_1, align 4
  %call14 = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %land.lhs.true, label %if.then8.if.end42_crit_edge

if.then8.if.end42_crit_edge:                      ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.lhs.true:                                    ; preds = %if.then8
  %call16 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %land.lhs.true.if.end42_crit_edge, label %land.lhs.true18

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.lhs.true18:                                  ; preds = %land.lhs.true
  %.b297 = load i1, ptr @nft_do_chain.__warned, align 1
  br i1 %.b297, label %land.lhs.true18.if.end42_crit_edge, label %land.lhs.true18.if.end42.sink.split_crit_edge

land.lhs.true18.if.end42.sink.split_crit_edge:    ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.sink.split

land.lhs.true18.if.end42_crit_edge:               ; preds = %land.lhs.true18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.else:                                          ; preds = %do_chain
  %12 = ptrtoint ptr %chain.0 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %chain.0, align 8
  %call30 = call i32 @rcu_read_lock_held() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %land.lhs.true32, label %if.else.if.end42_crit_edge

if.else.if.end42_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.lhs.true32:                                  ; preds = %if.else
  %call33 = call i32 @debug_lockdep_rcu_enabled() #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %land.lhs.true32.if.end42_crit_edge, label %land.lhs.true35

land.lhs.true32.if.end42_crit_edge:               ; preds = %land.lhs.true32
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

land.lhs.true35:                                  ; preds = %land.lhs.true32
  %.b291296 = load i1, ptr @nft_do_chain.__warned.2, align 1
  br i1 %.b291296, label %land.lhs.true35.if.end42_crit_edge, label %land.lhs.true35.if.end42.sink.split_crit_edge

land.lhs.true35.if.end42.sink.split_crit_edge:    ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42.sink.split

land.lhs.true35.if.end42_crit_edge:               ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end42

if.end42.sink.split:                              ; preds = %land.lhs.true35.if.end42.sink.split_crit_edge, %land.lhs.true18.if.end42.sink.split_crit_edge
  %nft_do_chain.__warned.2.sink = phi ptr [ @nft_do_chain.__warned, %land.lhs.true18.if.end42.sink.split_crit_edge ], [ @nft_do_chain.__warned.2, %land.lhs.true35.if.end42.sink.split_crit_edge ]
  %.sink = phi i32 [ 216, %land.lhs.true18.if.end42.sink.split_crit_edge ], [ 218, %land.lhs.true35.if.end42.sink.split_crit_edge ]
  %blob.0.ph = phi ptr [ %11, %land.lhs.true18.if.end42.sink.split_crit_edge ], [ %13, %land.lhs.true35.if.end42.sink.split_crit_edge ]
  %14 = ptrtoint ptr %nft_do_chain.__warned.2.sink to i32
  call void @__asan_store1_noabort(i32 %14)
  store i1 true, ptr %nft_do_chain.__warned.2.sink, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef %.sink, ptr noundef nonnull @.str.1) #8
  br label %if.end42

if.end42:                                         ; preds = %if.end42.sink.split, %land.lhs.true35.if.end42_crit_edge, %land.lhs.true32.if.end42_crit_edge, %if.else.if.end42_crit_edge, %land.lhs.true18.if.end42_crit_edge, %land.lhs.true.if.end42_crit_edge, %if.then8.if.end42_crit_edge
  %blob.0 = phi ptr [ %11, %land.lhs.true18.if.end42_crit_edge ], [ %11, %land.lhs.true.if.end42_crit_edge ], [ %11, %if.then8.if.end42_crit_edge ], [ %13, %land.lhs.true35.if.end42_crit_edge ], [ %13, %land.lhs.true32.if.end42_crit_edge ], [ %13, %if.else.if.end42_crit_edge ], [ %blob.0.ph, %if.end42.sink.split ]
  %data = getelementptr inbounds %struct.nft_rule_blob, ptr %blob.0, i32 0, i32 2
  %15 = ptrtoint ptr %blob.0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %blob.0, align 8
  %add.ptr = getelementptr i8, ptr %data, i32 %16
  br label %next_rule

next_rule:                                        ; preds = %if.then210, %if.end42
  %stackptr.1 = phi i32 [ %stackptr.0, %if.end42 ], [ %dec, %if.then210 ]
  %last_rule.0 = phi ptr [ %add.ptr, %if.end42 ], [ %114, %if.then210 ]
  %rule.0 = phi ptr [ %data, %if.end42 ], [ %112, %if.then210 ]
  %chain.1 = phi ptr [ %chain.0, %if.end42 ], [ %110, %if.then210 ]
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %regs, align 4
  %cmp347 = icmp ult ptr %rule.0, %last_rule.0
  br i1 %cmp347, label %next_rule.for.body_crit_edge, label %next_rule.for.end81_crit_edge

next_rule.for.end81_crit_edge:                    ; preds = %next_rule
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end81

next_rule.for.body_crit_edge:                     ; preds = %next_rule
  br label %for.body

for.body:                                         ; preds = %for.inc75.for.body_crit_edge, %next_rule.for.body_crit_edge
  %rule.1348 = phi ptr [ %add.ptr80, %for.inc75.for.body_crit_edge ], [ %rule.0, %next_rule.for.body_crit_edge ]
  %data45 = getelementptr %struct.nft_rule_dp, ptr %rule.1348, i32 0, i32 1
  %18 = ptrtoint ptr %rule.1348 to i32
  call void @__asan_load8_noabort(i32 %18)
  %bf.load = load i64, ptr %rule.1348, align 8
  %bf.lshr = lshr i64 %bf.load, 51
  %19 = trunc i64 %bf.lshr to i32
  %idxprom = and i32 %19, 4095
  %arrayidx47 = getelementptr %struct.nft_rule_dp, ptr %rule.1348, i32 0, i32 1, i32 %idxprom
  %cmp49.not344 = icmp eq ptr %data45, %arrayidx47
  br i1 %cmp49.not344, label %for.body.for.endthread-pre-split_crit_edge, label %for.body.for.body50_crit_edge

for.body.for.body50_crit_edge:                    ; preds = %for.body
  br label %for.body50

for.body.for.endthread-pre-split_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.endthread-pre-split

for.body50:                                       ; preds = %for.inc.for.body50_crit_edge, %for.body.for.body50_crit_edge
  %expr.0345 = phi ptr [ %add.ptr71, %for.inc.for.body50_crit_edge ], [ %data45, %for.body.for.body50_crit_edge ]
  %20 = ptrtoint ptr %expr.0345 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %expr.0345, align 8
  %cmp51 = icmp eq ptr %21, @nft_cmp_fast_ops
  br i1 %cmp51, label %if.then52, label %if.else53

if.then52:                                        ; preds = %for.body50
  %data.i.i = getelementptr inbounds %struct.nft_expr, ptr %expr.0345, i32 0, i32 2
  %sreg.i = getelementptr inbounds %struct.nft_expr, ptr %expr.0345, i32 2
  %22 = ptrtoint ptr %sreg.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %sreg.i, align 4
  %idxprom.i = zext i8 %23 to i32
  %arrayidx.i = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom.i
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  %mask.i = getelementptr inbounds %struct.nft_expr, ptr %expr.0345, i32 1, i32 1
  %26 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %27, %25
  %28 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %data.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %29)
  %cmp.i = icmp eq i32 %and.i, %29
  %inv.i = getelementptr inbounds %struct.nft_cmp_fast_expr, ptr %data.i.i, i32 0, i32 4
  %30 = ptrtoint ptr %inv.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %inv.i, align 2, !range !32
  %32 = zext i1 %cmp.i to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %31, i8 %32)
  %tobool2.not.i = icmp eq i8 %31, %32
  br i1 %tobool2.not.i, label %if.then52.sw.bb_crit_edge, label %if.then52.if.end64_crit_edge

if.then52.if.end64_crit_edge:                     ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end64

if.then52.sw.bb_crit_edge:                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

if.else53:                                        ; preds = %for.body50
  %cmp55 = icmp eq ptr %21, @nft_bitwise_fast_ops
  br i1 %cmp55, label %if.then56, label %if.else57

if.then56:                                        ; preds = %if.else53
  call void @__sanitizer_cov_trace_pc() #10
  %data.i.i302 = getelementptr inbounds %struct.nft_expr, ptr %expr.0345, i32 0, i32 2
  %sreg.i303 = getelementptr inbounds %struct.nft_expr, ptr %expr.0345, i32 2
  %33 = ptrtoint ptr %sreg.i303 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %sreg.i303, align 4
  %idxprom.i304 = zext i8 %34 to i32
  %arrayidx.i305 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom.i304
  %dreg.i = getelementptr inbounds %struct.nft_bitwise_fast_expr, ptr %data.i.i302, i32 0, i32 3
  %35 = ptrtoint ptr %dreg.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dreg.i, align 1
  %idxprom1.i = zext i8 %36 to i32
  %arrayidx2.i = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom1.i
  %37 = ptrtoint ptr %arrayidx.i305 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx.i305, align 4
  %39 = ptrtoint ptr %data.i.i302 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data.i.i302, align 4
  %and.i306 = and i32 %40, %38
  %xor.i = getelementptr inbounds %struct.nft_expr, ptr %expr.0345, i32 1, i32 1
  %41 = ptrtoint ptr %xor.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %xor.i, align 4
  %xor3.i = xor i32 %and.i306, %42
  %43 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %xor3.i, ptr %arrayidx2.i, align 4
  br label %if.end64

if.else57:                                        ; preds = %if.else53
  %cmp59.not = icmp eq ptr %21, @nft_payload_fast_ops
  br i1 %cmp59.not, label %lor.lhs.false, label %if.else57.if.then61_crit_edge

if.else57.if.then61_crit_edge:                    ; preds = %if.else57
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

lor.lhs.false:                                    ; preds = %if.else57
  %data.i.i307 = getelementptr inbounds %struct.nft_expr, ptr %expr.0345, i32 0, i32 2
  %44 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %pkt, align 4
  %dreg.i308 = getelementptr inbounds %struct.nft_payload, ptr %data.i.i307, i32 0, i32 3
  %46 = ptrtoint ptr %dreg.i308 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %dreg.i308, align 1
  %idxprom.i309 = zext i8 %47 to i32
  %arrayidx.i310 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom.i309
  %48 = ptrtoint ptr %data.i.i307 to i32
  call void @__asan_load1_noabort(i32 %48)
  %bf.load.i = load i8, ptr %data.i.i307, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %bf.load.i)
  %cmp.i311 = icmp eq i8 %bf.load.i, 1
  br i1 %cmp.i311, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 18
  %49 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 15, i32 0, i32 20
  %51 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %52 to i32
  %add.ptr.i.i = getelementptr i8, ptr %50, i32 %conv.i.i
  br label %if.end6.i

if.else.i:                                        ; preds = %lor.lhs.false
  %53 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %flags.i, align 4
  %55 = and i8 %54, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i, label %if.else.i.if.then61_crit_edge, label %if.end.i312

if.else.i.if.then61_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

if.end.i312:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %head.i51.i = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 18
  %56 = ptrtoint ptr %head.i51.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %head.i51.i, align 8
  %network_header.i52.i = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 15, i32 0, i32 20
  %58 = ptrtoint ptr %network_header.i52.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %network_header.i52.i, align 4
  %conv.i53.i = zext i16 %59 to i32
  %add.ptr.i54.i = getelementptr i8, ptr %57, i32 %conv.i53.i
  %60 = ptrtoint ptr %thoff.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %thoff.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %add.ptr.i54.i, i32 %61
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end.i312, %if.then.i
  %ptr.0.i = phi ptr [ %add.ptr.i.i, %if.then.i ], [ %add.ptr.i, %if.end.i312 ]
  %offset.i = getelementptr inbounds %struct.nft_payload, ptr %data.i.i307, i32 0, i32 1
  %62 = ptrtoint ptr %offset.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %offset.i, align 1
  %conv7.i = zext i8 %63 to i32
  %add.ptr8.i = getelementptr i8, ptr %ptr.0.i, i32 %conv7.i
  %len.i = getelementptr inbounds %struct.nft_payload, ptr %data.i.i307, i32 0, i32 2
  %64 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %len.i, align 2
  %conv9.i = zext i8 %65 to i32
  %add.ptr10.i = getelementptr i8, ptr %add.ptr8.i, i32 %conv9.i
  %tail.i.i = getelementptr inbounds %struct.sk_buff, ptr %45, i32 0, i32 16
  %66 = ptrtoint ptr %tail.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %tail.i.i, align 8
  %cmp12.i = icmp ugt ptr %add.ptr10.i, %67
  br i1 %cmp12.i, label %if.end6.i.if.then61_crit_edge, label %if.end17.i, !prof !33

if.end6.i.if.then61_crit_edge:                    ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then61

if.end17.i:                                       ; preds = %if.end6.i
  %68 = ptrtoint ptr %arrayidx.i310 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %arrayidx.i310, align 4
  %69 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %len.i, align 2
  %71 = zext i8 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values)
  switch i8 %70, label %if.else29.i [
    i8 2, label %if.then22.i
    i8 4, label %if.then28.i
  ]

if.then22.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %72 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %add.ptr8.i, align 2
  %74 = ptrtoint ptr %arrayidx.i310 to i32
  call void @__asan_store2_noabort(i32 %74)
  store i16 %73, ptr %arrayidx.i310, align 4
  br label %if.end64

if.then28.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %75 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr8.i, align 4
  %77 = ptrtoint ptr %arrayidx.i310 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %arrayidx.i310, align 4
  br label %if.end64

if.else29.i:                                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #10
  %78 = ptrtoint ptr %add.ptr8.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %add.ptr8.i, align 1
  %80 = ptrtoint ptr %arrayidx.i310 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 %79, ptr %arrayidx.i310, align 4
  br label %if.end64

if.then61:                                        ; preds = %if.end6.i.if.then61_crit_edge, %if.else.i.if.then61_crit_edge, %if.else57.if.then61_crit_edge
  %81 = ptrtoint ptr %expr.0345 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %expr.0345, align 8
  %83 = ptrtoint ptr %82 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %82, align 4
  call void %84(ptr noundef %expr.0345, ptr noundef nonnull %regs, ptr noundef %pkt) #8
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.else29.i, %if.then28.i, %if.then22.i, %if.then56, %if.then52.if.end64_crit_edge
  %85 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pr = load i32, ptr %regs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %.pr)
  %cmp66.not = icmp eq i32 %.pr, -1
  br i1 %cmp66.not, label %for.inc, label %if.end64.for.end_crit_edge

if.end64.for.end_crit_edge:                       ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc:                                          ; preds = %if.end64
  %86 = ptrtoint ptr %expr.0345 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %expr.0345, align 8
  %size70 = getelementptr inbounds %struct.nft_expr_ops, ptr %87, i32 0, i32 2
  %88 = ptrtoint ptr %size70 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %size70, align 4
  %add.ptr71 = getelementptr i8, ptr %expr.0345, i32 %89
  %cmp49.not = icmp eq ptr %add.ptr71, %arrayidx47
  br i1 %cmp49.not, label %for.inc.for.endthread-pre-split_crit_edge, label %for.inc.for.body50_crit_edge

for.inc.for.body50_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body50

for.inc.for.endthread-pre-split_crit_edge:        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.endthread-pre-split

for.endthread-pre-split:                          ; preds = %for.inc.for.endthread-pre-split_crit_edge, %for.body.for.endthread-pre-split_crit_edge
  %90 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr327 = load i32, ptr %regs, align 4
  br label %for.end

for.end:                                          ; preds = %for.endthread-pre-split, %if.end64.for.end_crit_edge
  %91 = phi i32 [ %.pr327, %for.endthread-pre-split ], [ %.pr, %if.end64.for.end_crit_edge ]
  %92 = zext i32 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %92, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %91, label %for.end.for.end81_crit_edge [
    i32 -2, label %for.end.sw.bb_crit_edge
    i32 -1, label %sw.bb74
  ]

for.end.sw.bb_crit_edge:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb

for.end.for.end81_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end81

sw.bb:                                            ; preds = %for.end.sw.bb_crit_edge, %if.then52.sw.bb_crit_edge
  %93 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 -1, ptr %regs, align 4
  br label %for.inc75

sw.bb74:                                          ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @nft_trace_enabled, ptr blockaddress(@nft_do_chain, %if.then.i314)) #8
          to label %for.inc75 [label %if.then.i314], !srcloc !31

if.then.i314:                                     ; preds = %sw.bb74
  call void @__sanitizer_cov_trace_pc() #10
  %94 = ptrtoint ptr %rule3.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %rule.1348, ptr %rule3.i, align 4
  call fastcc void @__nft_trace_packet(ptr noundef nonnull %info, ptr noundef %chain.1, i32 noundef 3) #8
  br label %for.inc75

for.inc75:                                        ; preds = %if.then.i314, %sw.bb74, %sw.bb
  %95 = ptrtoint ptr %rule.1348 to i32
  call void @__asan_load8_noabort(i32 %95)
  %bf.load77 = load i64, ptr %rule.1348, align 8
  %bf.lshr78 = lshr i64 %bf.load77, 51
  %96 = trunc i64 %bf.lshr78 to i32
  %conv = and i32 %96, 4095
  %add.ptr80 = getelementptr i8, ptr %data45, i32 %conv
  %cmp = icmp ult ptr %add.ptr80, %last_rule.0
  br i1 %cmp, label %for.inc75.for.body_crit_edge, label %for.inc75.for.end81_crit_edge

for.inc75.for.end81_crit_edge:                    ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end81

for.inc75.for.body_crit_edge:                     ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end81:                                        ; preds = %for.inc75.for.end81_crit_edge, %for.end.for.end81_crit_edge, %next_rule.for.end81_crit_edge
  %rule.1.lcssa = phi ptr [ %rule.0, %next_rule.for.end81_crit_edge ], [ %rule.1348, %for.end.for.end81_crit_edge ], [ %add.ptr80, %for.inc75.for.end81_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @nft_trace_enabled, ptr blockaddress(@nft_do_chain, %if.then.i317)) #8
          to label %nft_trace_verdict.exit [label %if.then.i317], !srcloc !31

if.then.i317:                                     ; preds = %for.end81
  call void @__sanitizer_cov_trace_pc() #10
  %97 = ptrtoint ptr %rule3.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %rule.1.lcssa, ptr %rule3.i, align 4
  call fastcc void @__nft_trace_verdict(ptr noundef nonnull %info, ptr noundef %chain.1, ptr noundef nonnull %regs) #8
  br label %nft_trace_verdict.exit

nft_trace_verdict.exit:                           ; preds = %if.then.i317, %for.end81
  %98 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %regs, align 4
  %100 = and i32 %99, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %switch = icmp eq i32 %100, 0
  br i1 %switch, label %nft_trace_verdict.exit.cleanup_crit_edge, label %sw.epilog85

nft_trace_verdict.exit.cleanup_crit_edge:         ; preds = %nft_trace_verdict.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

sw.epilog85:                                      ; preds = %nft_trace_verdict.exit
  %101 = zext i32 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.6)
  switch i32 %99, label %land.end165 [
    i32 -3, label %sw.bb87
    i32 -4, label %sw.epilog85.sw.bb155_crit_edge
    i32 -1, label %sw.epilog85.sw.epilog207_crit_edge
    i32 -5, label %sw.epilog85.sw.epilog207_crit_edge432
  ]

sw.epilog85.sw.epilog207_crit_edge432:            ; preds = %sw.epilog85
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog207

sw.epilog85.sw.epilog207_crit_edge:               ; preds = %sw.epilog85
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog207

sw.epilog85.sw.bb155_crit_edge:                   ; preds = %sw.epilog85
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb155

sw.bb87:                                          ; preds = %sw.epilog85
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %stackptr.1)
  %cmp88 = icmp ugt i32 %stackptr.1, 15
  br i1 %cmp88, label %land.rhs, label %if.end142

land.rhs:                                         ; preds = %sw.bb87
  %.b292294 = load i1, ptr @nft_do_chain.__already_done, align 1
  br i1 %.b292294, label %land.rhs.cleanup_crit_edge, label %if.then106, !prof !34

land.rhs.cleanup_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then106:                                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @nft_do_chain.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 262, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end142:                                        ; preds = %sw.bb87
  call void @__sanitizer_cov_trace_pc() #10
  %arrayidx143 = getelementptr [16 x %struct.nft_jumpstack], ptr %jumpstack, i32 0, i32 %stackptr.1
  %102 = ptrtoint ptr %arrayidx143 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %chain.1, ptr %arrayidx143, align 4
  %add.ptr145 = getelementptr i8, ptr %rule.1.lcssa, i32 8
  %103 = ptrtoint ptr %rule.1.lcssa to i32
  call void @__asan_load8_noabort(i32 %103)
  %bf.load146 = load i64, ptr %rule.1.lcssa, align 8
  %bf.lshr147 = lshr i64 %bf.load146, 51
  %104 = trunc i64 %bf.lshr147 to i32
  %conv149 = and i32 %104, 4095
  %add.ptr150 = getelementptr i8, ptr %add.ptr145, i32 %conv149
  %rule152 = getelementptr [16 x %struct.nft_jumpstack], ptr %jumpstack, i32 0, i32 %stackptr.1, i32 1
  %105 = ptrtoint ptr %rule152 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %add.ptr150, ptr %rule152, align 4
  %last_rule154 = getelementptr [16 x %struct.nft_jumpstack], ptr %jumpstack, i32 0, i32 %stackptr.1, i32 2
  %106 = ptrtoint ptr %last_rule154 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %last_rule.0, ptr %last_rule154, align 4
  %inc = add nuw nsw i32 %stackptr.1, 1
  br label %sw.bb155

sw.bb155:                                         ; preds = %if.end142, %sw.epilog85.sw.bb155_crit_edge
  %stackptr.2 = phi i32 [ %inc, %if.end142 ], [ %stackptr.1, %sw.epilog85.sw.bb155_crit_edge ]
  %107 = ptrtoint ptr %chain156 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %chain156, align 4
  br label %do_chain

land.end165:                                      ; preds = %sw.epilog85
  %.b293295 = load i1, ptr @nft_do_chain.__already_done.3, align 1
  br i1 %.b293295, label %land.end165.sw.epilog207_crit_edge, label %if.then172, !prof !34

land.end165.sw.epilog207_crit_edge:               ; preds = %land.end165
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog207

if.then172:                                       ; preds = %land.end165
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @nft_do_chain.__already_done.3, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 276, i32 noundef 9, ptr noundef null) #8
  br label %sw.epilog207

sw.epilog207:                                     ; preds = %if.then172, %land.end165.sw.epilog207_crit_edge, %sw.epilog85.sw.epilog207_crit_edge, %sw.epilog85.sw.epilog207_crit_edge432
  %cmp208.not = icmp eq i32 %stackptr.1, 0
  br i1 %cmp208.not, label %if.end217, label %if.then210

if.then210:                                       ; preds = %sw.epilog207
  call void @__sanitizer_cov_trace_pc() #10
  %dec = add i32 %stackptr.1, -1
  %arrayidx211 = getelementptr [16 x %struct.nft_jumpstack], ptr %jumpstack, i32 0, i32 %dec
  %109 = ptrtoint ptr %arrayidx211 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx211, align 4
  %rule214 = getelementptr [16 x %struct.nft_jumpstack], ptr %jumpstack, i32 0, i32 %dec, i32 1
  %111 = ptrtoint ptr %rule214 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %rule214, align 4
  %last_rule216 = getelementptr [16 x %struct.nft_jumpstack], ptr %jumpstack, i32 0, i32 %dec, i32 2
  %113 = ptrtoint ptr %last_rule216 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %last_rule216, align 4
  br label %next_rule

if.end217:                                        ; preds = %sw.epilog207
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @nft_trace_enabled, ptr blockaddress(@nft_do_chain, %if.then.i320)) #8
          to label %nft_trace_packet.exit322 [label %if.then.i320], !srcloc !31

if.then.i320:                                     ; preds = %if.end217
  call void @__sanitizer_cov_trace_pc() #10
  %115 = ptrtoint ptr %rule3.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %rule3.i, align 4
  call fastcc void @__nft_trace_packet(ptr noundef nonnull %info, ptr noundef %priv, i32 noundef 1) #8
  br label %nft_trace_packet.exit322

nft_trace_packet.exit322:                         ; preds = %if.then.i320, %if.end217
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr nonnull @nft_counters_enabled, ptr blockaddress(@nft_do_chain, %if.then229)) #8
          to label %if.end230 [label %if.then229], !srcloc !31

if.then229:                                       ; preds = %nft_trace_packet.exit322
  call void @__sanitizer_cov_trace_pc() #10
  call fastcc void @nft_update_chain_stats(ptr noundef %priv, ptr noundef %pkt)
  br label %if.end230

if.end230:                                        ; preds = %if.then229, %nft_trace_packet.exit322
  %policy = getelementptr i8, ptr %priv, i32 -12
  %116 = ptrtoint ptr %policy to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %policy, align 4
  %conv232 = zext i8 %117 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end230, %if.then106, %land.rhs.cleanup_crit_edge, %nft_trace_verdict.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %conv232, %if.end230 ], [ 0, %if.then106 ], [ 0, %land.rhs.cleanup_crit_edge ], [ %99, %nft_trace_verdict.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %info) #8
  call void @llvm.lifetime.end.p0(i64 192, ptr nonnull %jumpstack) #8
  call void @llvm.lifetime.end.p0(i64 80, ptr nonnull %regs) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_trace_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @nft_update_chain_stats(ptr noundef %chain, ptr nocapture noundef readonly %pkt) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %stats1 = getelementptr i8, ptr %chain, i32 -8
  %0 = ptrtoint ptr %stats1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %stats1, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  tail call fastcc void @local_bh_disable()
  %2 = ptrtoint ptr %1 to i32
  %3 = tail call i32 @llvm.read_register.i32(metadata !21) #8
  %and.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %add = add i32 %8, %2
  %9 = inttoptr i32 %add to ptr
  %syncp = getelementptr inbounds %struct.nft_stats, ptr %9, i32 0, i32 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %10 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.then.u64_stats_update_begin.exit_crit_edge, label %land.lhs.true.i.i

if.then.u64_stats_update_begin.exit_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %u64_stats_update_begin.exit

land.lhs.true.i.i:                                ; preds = %if.then
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %11 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %12, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !35
  %13 = tail call i32 @llvm.read_register.i32(metadata !21) #8
  %and.i.i.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i to ptr
  %cpu.i.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 3
  %15 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cpu.i.i, align 4
  %arrayidx.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx.i.i, align 4
  %add.i.i = add i32 %18, ptrtoint (ptr @lockdep_recursion to i32)
  %19 = inttoptr i32 %add.i.i to ptr
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile i32, ptr %19, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !36
  %22 = tail call i32 @llvm.read_register.i32(metadata !21) #8
  %and.i.i.i7.i.i = and i32 %22, -16384
  %23 = inttoptr i32 %and.i.i.i7.i.i to ptr
  %preempt_count.i.i8.i.i = getelementptr inbounds %struct.thread_info, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %preempt_count.i.i8.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load volatile i32, ptr %preempt_count.i.i8.i.i, align 4
  %sub.i.i.i = add i32 %25, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i8.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool20.not.i.i = icmp eq i32 %21, 0
  br i1 %tobool20.not.i.i, label %land.rhs.i.i, label %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge

land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %u64_stats_update_begin.exit

land.rhs.i.i:                                     ; preds = %land.lhs.true.i.i
  %26 = tail call i32 @llvm.read_register.i32(metadata !21) #8
  %and.i.i.i.i = and i32 %26, -16384
  %27 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp.i.i = icmp eq i32 %29, 0
  br i1 %cmp.i.i, label %land.rhs22.i.i, label %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge

land.rhs.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %u64_stats_update_begin.exit

land.rhs22.i.i:                                   ; preds = %land.rhs.i.i
  %30 = tail call i32 @llvm.read_register.i32(metadata !21) #8
  %and.i.i.i9.i.i = and i32 %30, -16384
  %31 = inttoptr i32 %and.i.i.i9.i.i to ptr
  %preempt_count.i.i10.i.i = getelementptr inbounds %struct.thread_info, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %preempt_count.i.i10.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %preempt_count.i.i10.i.i, align 4
  %add.i11.i.i = add i32 %33, 1
  store volatile i32 %add.i11.i.i, ptr %preempt_count.i.i10.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !37
  %34 = ptrtoint ptr %cpu.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cpu.i.i, align 4
  %arrayidx46.i.i = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx46.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx46.i.i, align 4
  %add47.i.i = add i32 %37, ptrtoint (ptr @hardirqs_enabled to i32)
  %38 = inttoptr i32 %add47.i.i to ptr
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile i32, ptr %38, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !38
  %41 = tail call i32 @llvm.read_register.i32(metadata !21) #8
  %and.i.i.i12.i.i = and i32 %41, -16384
  %42 = inttoptr i32 %and.i.i.i12.i.i to ptr
  %preempt_count.i.i13.i.i = getelementptr inbounds %struct.thread_info, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %preempt_count.i.i13.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile i32, ptr %preempt_count.i.i13.i.i, align 4
  %sub.i14.i.i = add i32 %44, -1
  store volatile i32 %sub.i14.i.i, ptr %preempt_count.i.i13.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool54.not.i.i = icmp eq i32 %40, 0
  br i1 %tobool54.not.i.i, label %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, label %land.rhs58.i.i

land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs22.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %u64_stats_update_begin.exit

land.rhs58.i.i:                                   ; preds = %land.rhs22.i.i
  %.b1.i.i = load i1, ptr @__seqprop_assert.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, label %if.then.i.i, !prof !34

land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge: ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %u64_stats_update_begin.exit

if.then.i.i:                                      ; preds = %land.rhs58.i.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @__seqprop_assert.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 271, i32 noundef 9, ptr noundef null) #8
  br label %u64_stats_update_begin.exit

u64_stats_update_begin.exit:                      ; preds = %if.then.i.i, %land.rhs58.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs22.i.i.u64_stats_update_begin.exit_crit_edge, %land.rhs.i.i.u64_stats_update_begin.exit_crit_edge, %land.lhs.true.i.i.u64_stats_update_begin.exit_crit_edge, %if.then.u64_stats_update_begin.exit_crit_edge
  %45 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %syncp, align 4
  %inc.i.i.i.i = add i32 %46, 1
  store i32 %inc.i.i.i.i, ptr %syncp, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !39
  %dep_map.i.i.i = getelementptr inbounds %struct.nft_stats, ptr %9, i32 0, i32 2, i32 0, i32 1
  %47 = tail call ptr @llvm.returnaddress(i32 0) #8
  %48 = ptrtoint ptr %47 to i32
  tail call void @lock_acquire(ptr noundef %dep_map.i.i.i, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 1, ptr noundef null, i32 noundef %48) #8
  %pkts = getelementptr inbounds %struct.nft_stats, ptr %9, i32 0, i32 1
  %49 = ptrtoint ptr %pkts to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %pkts, align 8
  %inc = add i64 %50, 1
  store i64 %inc, ptr %pkts, align 8
  %51 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %pkt, align 4
  %len = getelementptr inbounds %struct.sk_buff, ptr %52, i32 0, i32 6
  %53 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len, align 4
  %conv = zext i32 %54 to i64
  %55 = ptrtoint ptr %9 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %9, align 8
  %add8 = add i64 %56, %conv
  store i64 %add8, ptr %9, align 8
  tail call void @lock_release(ptr noundef %dep_map.i.i.i, i32 noundef %48) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !40
  %57 = ptrtoint ptr %syncp to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %syncp, align 4
  %inc.i.i.i = add i32 %58, 1
  store i32 %inc.i.i.i, ptr %syncp, align 4
  tail call fastcc void @local_bh_enable()
  br label %if.end

if.end:                                           ; preds = %u64_stats_update_begin.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @nf_tables_core_module_init() local_unnamed_addr #4 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nft_counter_init_seqcount() #8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %cmp1742.not = phi i1 [ true, %entry ], [ false, %for.inc.for.body_crit_edge ]
  %i.038 = phi i32 [ 0, %entry ], [ 1, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x ptr], ptr @nft_basic_objects, i32 0, i32 %i.038
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @nft_register_obj(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.inc, label %while.cond15.preheader

for.inc:                                          ; preds = %for.body
  br i1 %cmp1742.not, label %for.inc.for.body_crit_edge, label %for.inc.for.body3_crit_edge

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  br label %for.body3

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body3:                                        ; preds = %for.inc9.for.body3_crit_edge, %for.inc.for.body3_crit_edge
  %j.039 = phi i32 [ %inc10, %for.inc9.for.body3_crit_edge ], [ 0, %for.inc.for.body3_crit_edge ]
  %arrayidx4 = getelementptr [13 x ptr], ptr @nft_basic_types, i32 0, i32 %j.039
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4, align 4
  %call5 = tail call i32 @nft_register_expr(ptr noundef %3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool6.not = icmp eq i32 %call5, 0
  br i1 %tobool6.not, label %for.inc9, label %err12

for.inc9:                                         ; preds = %for.body3
  %inc10 = add nuw nsw i32 %j.039, 1
  %exitcond.not = icmp eq i32 %inc10, 13
  br i1 %exitcond.not, label %for.inc9.cleanup_crit_edge, label %for.inc9.for.body3_crit_edge

for.inc9.for.body3_crit_edge:                     ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3

for.inc9.cleanup_crit_edge:                       ; preds = %for.inc9
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

err12:                                            ; preds = %for.body3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %j.039)
  %cmp1340.not = icmp eq i32 %j.039, 0
  br i1 %cmp1340.not, label %err12.while.body18.preheader_crit_edge, label %err12.while.body_crit_edge

err12.while.body_crit_edge:                       ; preds = %err12
  br label %while.body

err12.while.body18.preheader_crit_edge:           ; preds = %err12
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body18.preheader

while.cond15.preheader:                           ; preds = %for.body
  br i1 %cmp1742.not, label %while.cond15.preheader.cleanup_crit_edge, label %while.cond15.preheader.while.body18.preheader_crit_edge

while.cond15.preheader.while.body18.preheader_crit_edge: ; preds = %while.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body18.preheader

while.cond15.preheader.cleanup_crit_edge:         ; preds = %while.cond15.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body18.preheader:                           ; preds = %while.body.while.body18.preheader_crit_edge, %while.cond15.preheader.while.body18.preheader_crit_edge, %err12.while.body18.preheader_crit_edge
  %i.0375460 = phi i32 [ 1, %while.cond15.preheader.while.body18.preheader_crit_edge ], [ 2, %err12.while.body18.preheader_crit_edge ], [ 2, %while.body.while.body18.preheader_crit_edge ]
  %err.05559 = phi i32 [ %call, %while.cond15.preheader.while.body18.preheader_crit_edge ], [ %call5, %err12.while.body18.preheader_crit_edge ], [ %call5, %while.body.while.body18.preheader_crit_edge ]
  br label %while.body18

while.body:                                       ; preds = %while.body.while.body_crit_edge, %err12.while.body_crit_edge
  %j.241 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %j.039, %err12.while.body_crit_edge ]
  %dec = add nsw i32 %j.241, -1
  %arrayidx14 = getelementptr [13 x ptr], ptr @nft_basic_types, i32 0, i32 %dec
  %4 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx14, align 4
  tail call void @nft_unregister_expr(ptr noundef %5) #8
  %cmp13 = icmp sgt i32 %j.241, 1
  br i1 %cmp13, label %while.body.while.body_crit_edge, label %while.body.while.body18.preheader_crit_edge

while.body.while.body18.preheader_crit_edge:      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body18.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body18:                                     ; preds = %while.body18.while.body18_crit_edge, %while.body18.preheader
  %i.143 = phi i32 [ %dec16, %while.body18.while.body18_crit_edge ], [ %i.0375460, %while.body18.preheader ]
  %dec16 = add nsw i32 %i.143, -1
  %arrayidx19 = getelementptr [2 x ptr], ptr @nft_basic_objects, i32 0, i32 %dec16
  %6 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx19, align 4
  tail call void @nft_unregister_obj(ptr noundef %7) #8
  %cmp17 = icmp sgt i32 %i.143, 1
  br i1 %cmp17, label %while.body18.while.body18_crit_edge, label %while.body18.cleanup_crit_edge

while.body18.cleanup_crit_edge:                   ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.body18.while.body18_crit_edge:              ; preds = %while.body18
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body18

cleanup:                                          ; preds = %while.body18.cleanup_crit_edge, %while.cond15.preheader.cleanup_crit_edge, %for.inc9.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %while.cond15.preheader.cleanup_crit_edge ], [ %err.05559, %while.body18.cleanup_crit_edge ], [ 0, %for.inc9.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_counter_init_seqcount() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_obj(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_obj(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nf_tables_core_module_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_counter_type) #8
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_last_type) #8
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_exthdr_type) #8
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_rt_type) #8
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_meta_type) #8
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_range_type) #8
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_dynset_type) #8
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_payload_type) #8
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_byteorder_type) #8
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_bitwise_type) #8
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_lookup_type) #8
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_cmp_type) #8
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_imm_type) #8
  tail call void @nft_unregister_obj(ptr noundef nonnull @nft_counter_obj_type) #8
  tail call void @nft_unregister_obj(ptr noundef nonnull @nft_secmark_obj_type) #8
  ret void
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nft_trace_packet(ptr noundef %info, ptr noundef %chain, i32 noundef %type) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %trace = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 7
  %0 = ptrtoint ptr %trace to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %trace, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %info, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %nf_trace = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %nf_trace to i32
  call void @__asan_load2_noabort(i32 %6)
  %bf.load = load i16, ptr %nf_trace, align 8
  %7 = and i16 %bf.load, 2048
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool2.not = icmp eq i16 %7, 0
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %chain3 = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 2
  %8 = ptrtoint ptr %chain3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %chain, ptr %chain3, align 4
  %type4 = getelementptr inbounds %struct.nft_traceinfo, ptr %info, i32 0, i32 5
  %9 = ptrtoint ptr %type4 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %type, ptr %type4, align 4
  tail call void @nft_trace_notify(ptr noundef %info) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_trace_notify(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__nft_trace_verdict(ptr noundef %info, ptr noundef %chain, ptr nocapture noundef readonly %regs) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %regs, align 4
  %2 = add i32 %1, 5
  %switch.and = and i32 %2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and)
  %switch.selectcmp = icmp eq i32 %switch.and, 0
  %3 = select i1 %switch.selectcmp, i32 2, i32 3
  tail call fastcc void @__nft_trace_packet(ptr noundef %info, ptr noundef %chain, i32 noundef %3)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone willreturn
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind readonly }
attributes #7 = { nocallback nofree nosync nounwind readnone willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !14, !16, !17, !19}
!llvm.named.register.sp = !{!21}
!llvm.module.flags = !{!22, !23, !24, !25, !26, !27, !28, !29}
!llvm.ident = !{!30}

!0 = !{ptr @nft_counters_enabled, !1, !"nft_counters_enabled", i1 false, i1 false}
!1 = !{!"../net/netfilter/nf_tables_core.c", i32 132, i32 1}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/netfilter/nf_tables_core.c", i32 216, i32 10}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/netfilter/nf_tables_core.c", i32 218, i32 10}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../net/netfilter/nf_tables_core.c", i32 262, i32 7}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../net/netfilter/nf_tables_core.c", i32 276, i32 3}
!12 = !{ptr @__ksymtab_nft_do_chain, !13, !"__ksymtab_nft_do_chain", i1 false, i1 false}
!13 = !{!"../net/netfilter/nf_tables_core.c", i32 294, i32 1}
!14 = distinct !{null, !15, !"__already_done", i1 false, i1 false}
!15 = !{!"../include/linux/seqlock.h", i32 271, i32 2}
!16 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @nft_basic_objects, !18, !"nft_basic_objects", i1 false, i1 false}
!18 = !{!"../net/netfilter/nf_tables_core.c", i32 312, i32 32}
!19 = !{ptr @nft_basic_types, !20, !"nft_basic_types", i1 false, i1 false}
!20 = !{!"../net/netfilter/nf_tables_core.c", i32 296, i32 30}
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
!31 = !{i64 2148698438, i64 2148698443, i64 2148698456, i64 2148698500, i64 2148698534, i64 2148698555}
!32 = !{i8 0, i8 2}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = !{!"branch_weights", i32 2000, i32 1}
!35 = !{i64 2149871091}
!36 = !{i64 2149876023}
!37 = !{i64 2149897735}
!38 = !{i64 2149902627}
!39 = !{i64 2149979084}
!40 = !{i64 2149979409}
