; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_set_pipapo.c_pt.bc'
source_filename = "../net/netfilter/nft_set_pipapo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_set_type = type { %struct.nft_set_ops, i32 }
%struct.nft_set_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.cpumask = type { [1 x i32] }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%union.nft_pipapo_map_bucket = type { %struct.anon }
%struct.anon = type { i32 }
%struct.nft_set = type { %struct.list_head, %struct.list_head, ptr, %struct.possible_net_t, ptr, i64, i32, i32, i32, i32, [16 x i8], i8, i32, %struct.atomic_t, i32, i64, i32, i16, i16, ptr, [20 x i8], ptr, i16, i8, i8, i8, [2 x ptr], %struct.list_head, [4 x i8], [0 x i8], [96 x i8] }
%struct.possible_net_t = type { ptr }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
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
%struct.ctl_table_header = type { %union.anon.13, ptr, ptr, ptr, ptr, ptr, ptr, %struct.hlist_head }
%union.anon.13 = type { %struct.anon.14 }
%struct.anon.14 = type { ptr, i32, i32, i32 }
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
%struct.netns_ipv6 = type { %struct.dst_ops, %struct.netns_sysctl_ipv6, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.timer_list, ptr, ptr, %struct.list_head, %struct.rwlock_t, %struct.spinlock, i32, i32, i8, i8, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.list_head, ptr, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, i32, %struct.anon.140, ptr, [24 x i8] }
%struct.dst_ops = type { i16, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, [60 x i8], %struct.percpu_counter, [56 x i8] }
%struct.percpu_counter = type { %struct.raw_spinlock, i64, %struct.list_head, ptr }
%struct.netns_sysctl_ipv6 = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i8, i8, i8, [8 x i32], ptr, i8, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i8, i8 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.rwlock_t = type { %struct.arch_rwlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_rwlock_t = type { i32 }
%struct.anon.140 = type { %struct.hlist_head, %struct.spinlock, i32 }
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
%struct.sk_buff_head = type { %union.anon.90, i32, %struct.spinlock }
%union.anon.90 = type { %struct.anon.91 }
%struct.anon.91 = type { ptr, ptr }
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
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.nft_pipapo_match = type { i32, ptr, i32, %struct.callback_head, [0 x %struct.nft_pipapo_field] }
%struct.callback_head = type { ptr, ptr }
%struct.nft_pipapo_field = type { i32, i32, i32, i32, ptr, ptr }
%struct.nft_set_ext = type { i8, [9 x i8], [0 x i8] }
%struct.nft_set_elem = type { %union.anon.151, %union.anon.152, %union.anon.153, ptr, [4 x i8] }
%union.anon.151 = type { [16 x i32] }
%union.anon.152 = type { [16 x i32] }
%union.anon.153 = type { [16 x i32] }
%struct.nft_set_iter = type { i8, i32, i32, i32, ptr }
%struct.nft_set_desc = type { i32, i32, i32, [16 x i8], i8, i8 }
%struct.nft_set_estimate = type { i64, i32, i32 }

@nft_pipapo_scratch_index = weak dso_local global i8 0, section ".data..percpu", align 1
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@nft_pipapo_lookup.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/netfilter/nft_set_pipapo.c\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"suspicious rcu_dereference_check() usage\00", [55 x i8] zeroinitializer }, align 32
@nft_set_pipapo_type = dso_local constant { %struct.nft_set_type, [60 x i8] } { %struct.nft_set_type { %struct.nft_set_ops { ptr @nft_pipapo_lookup, ptr null, ptr null, ptr @nft_pipapo_insert, ptr @nft_pipapo_activate, ptr @nft_pipapo_deactivate, ptr @nft_pipapo_flush, ptr @nft_pipapo_remove, ptr @nft_pipapo_walk, ptr @nft_pipapo_get, ptr @nft_pipapo_privsize, ptr @nft_pipapo_estimate, ptr @nft_pipapo_init, ptr @nft_pipapo_destroy, ptr @nft_pipapo_gc_init, i32 0 }, i32 92 }, [60 x i8] zeroinitializer }, align 32
@__pcpu_unique_nft_pipapo_scratch_index = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 4
@nr_cpu_ids = external dso_local local_unnamed_addr global i32, align 4
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@nft_pipapo_walk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.4 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 8]
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 427, i32 6 }
@___asan_gen_.11 = private unnamed_addr constant [20 x i8] c"nft_set_pipapo_type\00", align 1
@___asan_gen_.12 = private constant [34 x i8] c"../net/netfilter/nft_set_pipapo.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 2197, i32 27 }
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 695, i32 2 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 723, i32 2 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @.str, ptr @.str.1, ptr @nft_set_pipapo_type, ptr @.str.2, ptr @.str.3, ptr @.str.4], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_set_pipapo_type to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pipapo_refill(ptr nocapture noundef %map, i32 noundef %len, i32 noundef %rules, ptr noundef %dst, ptr nocapture noundef readonly %mt, i1 noundef zeroext %match_only) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp53 = icmp sgt i32 %len, 0
  br i1 %cmp53, label %entry.for.body_crit_edge, label %entry.cleanup14_crit_edge

entry.cleanup14_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup14

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %entry.for.body_crit_edge
  %ret.056 = phi i32 [ %ret.1.lcssa, %while.end.for.body_crit_edge ], [ -1, %entry.for.body_crit_edge ]
  %k.054 = phi i32 [ %inc, %while.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %map, i32 %k.054
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not51 = icmp eq i32 %1, 0
  br i1 %tobool.not51, label %for.body.while.end_crit_edge, label %while.body.lr.ph

for.body.while.end_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.body.lr.ph:                                 ; preds = %for.body
  %mul = shl i32 %k.054, 5
  br label %while.body

while.body:                                       ; preds = %if.end7.while.body_crit_edge, %while.body.lr.ph
  %bitset.052 = phi i32 [ %1, %while.body.lr.ph ], [ %xor, %if.end7.while.body_crit_edge ]
  %2 = tail call i32 @llvm.cttz.i32(i32 %bitset.052, i1 true), !range !30
  %add = or i32 %2, %mul
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %rules)
  %cmp1.not = icmp slt i32 %add, %rules
  br i1 %cmp1.not, label %if.end, label %if.then, !prof !31

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %arrayidx, align 4
  br label %cleanup14

if.end:                                           ; preds = %while.body
  br i1 %match_only, label %if.then6, label %if.end7

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  %shl.i.i = shl nuw i32 1, %2
  %div2.i.i = and i32 %k.054, 134217727
  %add.ptr.i.i = getelementptr i32, ptr %map, i32 %div2.i.i
  %neg.i.i = xor i32 %shl.i.i, -1
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 4
  %and.i.i = and i32 %5, %neg.i.i
  store i32 %and.i.i, ptr %add.ptr.i.i, align 4
  br label %cleanup14

if.end7:                                          ; preds = %if.end
  %arrayidx8 = getelementptr %union.nft_pipapo_map_bucket, ptr %mt, i32 %add
  %6 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %bf.load = load i32, ptr %arrayidx8, align 4
  %bf.lshr = lshr i32 %bf.load, 8
  %bf.clear = and i32 %bf.load, 255
  tail call void @__bitmap_set(ptr noundef %dst, i32 noundef %bf.lshr, i32 noundef %bf.clear) #13
  %7 = add i32 %bitset.052, -1
  %xor = and i32 %7, %bitset.052
  %tobool.not = icmp eq i32 %xor, 0
  br i1 %tobool.not, label %if.end7.while.end_crit_edge, label %if.end7.while.body_crit_edge

if.end7.while.body_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body

if.end7.while.end_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end

while.end:                                        ; preds = %if.end7.while.end_crit_edge, %for.body.while.end_crit_edge
  %ret.1.lcssa = phi i32 [ %ret.056, %for.body.while.end_crit_edge ], [ 0, %if.end7.while.end_crit_edge ]
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %arrayidx, align 4
  %inc = add nuw nsw i32 %k.054, 1
  %exitcond.not = icmp eq i32 %inc, %len
  br i1 %exitcond.not, label %while.end.cleanup14_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

while.end.cleanup14_crit_edge:                    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup14

cleanup14:                                        ; preds = %while.end.cleanup14_crit_edge, %if.then6, %if.then, %entry.cleanup14_crit_edge
  %retval.3 = phi i32 [ %add, %if.then6 ], [ -1, %if.then ], [ -1, %entry.cleanup14_crit_edge ], [ %ret.1.lcssa, %while.end.cleanup14_crit_edge ]
  ret i32 %retval.3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i1 @nft_pipapo_lookup(ptr noundef %net, ptr noundef %set, ptr nocapture noundef readonly %key, ptr nocapture noundef %ext) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %nft.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %0 = ptrtoint ptr %nft.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %nft.i, align 4
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i8
  tail call fastcc void @local_bh_disable()
  %2 = tail call i32 @llvm.read_register.i32(metadata !20) #13
  %and.i = and i32 %2, -16384
  %3 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpu, align 4
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %add = add i32 %7, ptrtoint (ptr @nft_pipapo_scratch_index to i32)
  %8 = inttoptr i32 %add to ptr
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %8, align 1, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  %11 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %data.i, align 4
  %call21 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %land.lhs.true, label %entry.do.end28_crit_edge

entry.do.end28_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

land.lhs.true:                                    ; preds = %entry
  %call23 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %land.lhs.true.do.end28_crit_edge, label %land.lhs.true25

land.lhs.true.do.end28_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

land.lhs.true25:                                  ; preds = %land.lhs.true
  %.b246 = load i1, ptr @nft_pipapo_lookup.__warned, align 1
  br i1 %.b246, label %land.lhs.true25.do.end28_crit_edge, label %if.then

land.lhs.true25.do.end28_crit_edge:               ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end28

if.then:                                          ; preds = %land.lhs.true25
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @nft_pipapo_lookup.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 427, ptr noundef nonnull @.str.1) #13
  br label %do.end28

do.end28:                                         ; preds = %if.then, %land.lhs.true25.do.end28_crit_edge, %land.lhs.true.do.end28_crit_edge, %entry.do.end28_crit_edge
  %tobool30.not = icmp eq ptr %12, null
  br i1 %tobool30.not, label %do.end28.cleanup191_crit_edge, label %do.body31, !prof !33

do.end28.cleanup191_crit_edge:                    ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup191

do.body31:                                        ; preds = %do.end28
  %scratch = getelementptr inbounds %struct.nft_pipapo_match, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %scratch, align 4
  %15 = ptrtoint ptr %14 to i32
  %16 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cpu, align 4
  %arrayidx40 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %17
  %18 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx40, align 4
  %add41 = add i32 %19, %15
  %20 = inttoptr i32 %add41 to ptr
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool42.not = icmp eq ptr %22, null
  br i1 %tobool42.not, label %do.body31.cleanup191_crit_edge, label %do.body48, !prof !33

do.body31.cleanup191_crit_edge:                   ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup191

do.body48:                                        ; preds = %do.body31
  %bsize_max76 = getelementptr inbounds %struct.nft_pipapo_match, ptr %12, i32 0, i32 2
  %23 = ptrtoint ptr %bsize_max76 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %bsize_max76, align 4
  %add.ptr256.idx = select i1 %tobool.not, i32 0, i32 %24
  %add.ptr256 = getelementptr i32, ptr %22, i32 %add.ptr256.idx
  %mul = shl i32 %24, 2
  %25 = call ptr @memset(ptr %add.ptr256, i32 255, i32 %mul)
  %26 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp303 = icmp sgt i32 %27, 0
  br i1 %cmp303, label %for.body.preheader, label %do.body48.cleanup191_crit_edge

do.body48.cleanup191_crit_edge:                   ; preds = %do.body48
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup191

for.body.preheader:                               ; preds = %do.body48
  %cond78 = select i1 %tobool.not, i32 %24, i32 0
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %extract.t = icmp ne i8 %10, 0
  %f81 = getelementptr inbounds %struct.nft_pipapo_match, ptr %12, i32 0, i32 4
  %add.ptr79 = getelementptr i32, ptr %22, i32 %cond78
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.preheader
  %28 = phi i32 [ %86, %for.inc.for.body_crit_edge ], [ %27, %for.body.preheader ]
  %res_map.0312 = phi ptr [ %fill_map.0311, %for.inc.for.body_crit_edge ], [ %add.ptr256, %for.body.preheader ]
  %fill_map.0311 = phi ptr [ %res_map.0312, %for.inc.for.body_crit_edge ], [ %add.ptr79, %for.body.preheader ]
  %rp.0309 = phi ptr [ %add.ptr189, %for.inc.for.body_crit_edge ], [ %key, %for.body.preheader ]
  %f.0307 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %f81, %for.body.preheader ]
  %map_index.0.off0305 = phi i1 [ %lnot172, %for.inc.for.body_crit_edge ], [ %extract.t, %for.body.preheader ]
  %i.0304 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %sub = add nsw i32 %28, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0304, i32 %sub)
  %cmp83 = icmp eq i32 %i.0304, %sub
  %bb = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0307, i32 0, i32 3
  %29 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %30)
  %cmp85 = icmp eq i32 %30, 8
  br i1 %cmp85, label %if.then92, label %if.else, !prof !31

if.then92:                                        ; preds = %for.body
  %31 = ptrtoint ptr %f.0307 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %f.0307, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp15.i = icmp sgt i32 %32, 0
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %if.then92.do.end96_crit_edge

if.then92.do.end96_crit_edge:                     ; preds = %if.then92
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end96

for.body.lr.ph.i:                                 ; preds = %if.then92
  %lt1.i = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0307, i32 0, i32 4
  %33 = ptrtoint ptr %lt1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %lt1.i, align 4
  %bsize.i = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0307, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %group.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %lt.017.i = phi ptr [ %34, %for.body.lr.ph.i ], [ %add.ptr6.i, %for.body.i.for.body.i_crit_edge ]
  %data.addr.016.i = phi ptr [ %rp.0309, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %35 = ptrtoint ptr %data.addr.016.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %data.addr.016.i, align 1
  %conv.i247 = zext i8 %36 to i32
  %37 = ptrtoint ptr %bsize.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bsize.i, align 4
  %mul.i = mul i32 %38, %conv.i247
  %add.ptr.i = getelementptr i32, ptr %lt.017.i, i32 %mul.i
  %mul3.i = shl i32 %38, 5
  %call.i = tail call i32 @__bitmap_and(ptr noundef %res_map.0312, ptr noundef %res_map.0312, ptr noundef %add.ptr.i, i32 noundef %mul3.i) #13
  %39 = ptrtoint ptr %bsize.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %bsize.i, align 4
  %mul5.i = shl i32 %40, 8
  %add.ptr6.i = getelementptr i32, ptr %lt.017.i, i32 %mul5.i
  %inc.i = add nuw nsw i32 %group.018.i, 1
  %incdec.ptr.i = getelementptr i8, ptr %data.addr.016.i, i32 1
  %41 = ptrtoint ptr %f.0307 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %f.0307, align 4
  %cmp.i = icmp slt i32 %inc.i, %42
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.do.end96_crit_edge

for.body.i.do.end96_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end96

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.else:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call fastcc void @pipapo_and_field_buckets_4bit(ptr noundef %f.0307, ptr noundef %res_map.0312, ptr noundef %rp.0309)
  br label %do.end96

do.end96:                                         ; preds = %if.else, %for.body.i.do.end96_crit_edge, %if.then92.do.end96_crit_edge
  %43 = ptrtoint ptr %f.0307 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %f.0307, align 4
  %45 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bb, align 4
  %div = sdiv i32 8, %46
  %div98 = sdiv i32 %44, %div
  %add.ptr99 = getelementptr i8, ptr %rp.0309, i32 %div98
  %bsize = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0307, i32 0, i32 2
  %rules = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0307, i32 0, i32 1
  %mt = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0307, i32 0, i32 5
  %47 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp53.i299 = icmp sgt i32 %48, 0
  br i1 %cmp53.i299, label %do.end96.for.body.i248.preheader_crit_edge, label %do.end96.cleanup191.sink.split_crit_edge

do.end96.cleanup191.sink.split_crit_edge:         ; preds = %do.end96
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup191.sink.split

do.end96.for.body.i248.preheader_crit_edge:       ; preds = %do.end96
  br label %for.body.i248.preheader

for.body.i248.preheader:                          ; preds = %next_match.backedge.for.body.i248.preheader_crit_edge, %do.end96.for.body.i248.preheader_crit_edge
  %49 = phi i32 [ %80, %next_match.backedge.for.body.i248.preheader_crit_edge ], [ %48, %do.end96.for.body.i248.preheader_crit_edge ]
  %50 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %rules, align 4
  %52 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mt, align 4
  br label %for.body.i248.outer

for.body.i248.outer:                              ; preds = %while.end.i.thread.for.body.i248.outer_crit_edge, %for.body.i248.preheader
  %cmp102 = phi i1 [ false, %while.end.i.thread.for.body.i248.outer_crit_edge ], [ true, %for.body.i248.preheader ]
  %ret.056.i.ph = phi i32 [ 0, %while.end.i.thread.for.body.i248.outer_crit_edge ], [ -1, %for.body.i248.preheader ]
  %k.054.i.ph = phi i32 [ %inc.i250273, %while.end.i.thread.for.body.i248.outer_crit_edge ], [ 0, %for.body.i248.preheader ]
  br label %for.body.i248

for.body.i248:                                    ; preds = %while.end.i.for.body.i248_crit_edge, %for.body.i248.outer
  %k.054.i = phi i32 [ %inc.i250, %while.end.i.for.body.i248_crit_edge ], [ %k.054.i.ph, %for.body.i248.outer ]
  %arrayidx.i = getelementptr i32, ptr %res_map.0312, i32 %k.054.i
  %54 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool.not51.i = icmp eq i32 %55, 0
  br i1 %tobool.not51.i, label %while.end.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %for.body.i248
  %mul.i249 = shl i32 %k.054.i, 5
  br label %while.body.i

while.body.i:                                     ; preds = %if.end7.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %bitset.052.i = phi i32 [ %55, %while.body.lr.ph.i ], [ %xor.i, %if.end7.i.while.body.i_crit_edge ]
  %56 = tail call i32 @llvm.cttz.i32(i32 %bitset.052.i, i1 true) #13, !range !30
  %add.i = or i32 %56, %mul.i249
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %51)
  %cmp1.not.i = icmp slt i32 %add.i, %51
  br i1 %cmp1.not.i, label %if.end.i, label %if.then.i, !prof !31

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %arrayidx.i, align 4
  br label %cleanup191.sink.split

if.end.i:                                         ; preds = %while.body.i
  br i1 %cmp83, label %pipapo_refill.exit.thread260, label %if.end7.i

if.end7.i:                                        ; preds = %if.end.i
  %arrayidx8.i = getelementptr %union.nft_pipapo_map_bucket, ptr %53, i32 %add.i
  %58 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %bf.load.i = load i32, ptr %arrayidx8.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 8
  %bf.clear.i = and i32 %bf.load.i, 255
  tail call void @__bitmap_set(ptr noundef %fill_map.0311, i32 noundef %bf.lshr.i, i32 noundef %bf.clear.i) #13
  %59 = add i32 %bitset.052.i, -1
  %xor.i = and i32 %59, %bitset.052.i
  %tobool.not.i = icmp eq i32 %xor.i, 0
  br i1 %tobool.not.i, label %while.end.i.thread, label %if.end7.i.while.body.i_crit_edge

if.end7.i.while.body.i_crit_edge:                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %for.body.i248
  %60 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %arrayidx.i, align 4
  %inc.i250 = add nuw nsw i32 %k.054.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i250, %49
  br i1 %exitcond.not.i, label %pipapo_refill.exit, label %while.end.i.for.body.i248_crit_edge

while.end.i.for.body.i248_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i248

while.end.i.thread:                               ; preds = %if.end7.i
  %61 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %arrayidx.i, align 4
  %inc.i250273 = add nuw nsw i32 %k.054.i, 1
  %exitcond.not.i274 = icmp eq i32 %inc.i250273, %49
  br i1 %exitcond.not.i274, label %while.end.i.thread.for.inc_crit_edge, label %while.end.i.thread.for.body.i248.outer_crit_edge

while.end.i.thread.for.body.i248.outer_crit_edge: ; preds = %while.end.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i248.outer

while.end.i.thread.for.inc_crit_edge:             ; preds = %while.end.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

pipapo_refill.exit:                               ; preds = %while.end.i
  br i1 %cmp102, label %pipapo_refill.exit.cleanup191.sink.split_crit_edge, label %if.end127

pipapo_refill.exit.cleanup191.sink.split_crit_edge: ; preds = %pipapo_refill.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup191.sink.split

pipapo_refill.exit.thread260:                     ; preds = %if.end.i
  %shl.i.i.i = shl nuw i32 1, %56
  %div2.i.i.i = and i32 %k.054.i, 134217727
  %add.ptr.i.i.i = getelementptr i32, ptr %res_map.0312, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %62 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %63, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i)
  %cmp102262 = icmp slt i32 %add.i, 0
  br i1 %cmp102262, label %pipapo_refill.exit.thread260.cleanup191.sink.split_crit_edge, label %pipapo_refill.exit.thread260.if.then129_crit_edge

pipapo_refill.exit.thread260.if.then129_crit_edge: ; preds = %pipapo_refill.exit.thread260
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then129

pipapo_refill.exit.thread260.cleanup191.sink.split_crit_edge: ; preds = %pipapo_refill.exit.thread260
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup191.sink.split

if.end127:                                        ; preds = %pipapo_refill.exit
  br i1 %cmp83, label %if.end127.if.then129_crit_edge, label %if.end127.for.inc_crit_edge

if.end127.for.inc_crit_edge:                      ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end127.if.then129_crit_edge:                   ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then129

if.then129:                                       ; preds = %if.end127.if.then129_crit_edge, %pipapo_refill.exit.thread260.if.then129_crit_edge
  %retval.3.i263265 = phi i32 [ %ret.056.i.ph, %if.end127.if.then129_crit_edge ], [ %add.i, %pipapo_refill.exit.thread260.if.then129_crit_edge ]
  %64 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %mt, align 4
  %arrayidx131 = getelementptr %union.nft_pipapo_map_bucket, ptr %65, i32 %retval.3.i263265
  %66 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx131, align 4
  %68 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %67, ptr %ext, align 4
  %tobool.not.i.i = icmp eq ptr %67, null
  br i1 %tobool.not.i.i, label %if.then129.lor.rhs134_crit_edge, label %nft_set_ext_exists.exit.i

if.then129.lor.rhs134_crit_edge:                  ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.rhs134

nft_set_ext_exists.exit.i:                        ; preds = %if.then129
  %arrayidx.i.i.i = getelementptr %struct.nft_set_ext, ptr %67, i32 0, i32 1, i32 5
  %69 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.i.i.not.i = icmp eq i8 %70, 0
  br i1 %tobool.i.i.not.i, label %nft_set_ext_exists.exit.i.lor.rhs134_crit_edge, label %nft_set_elem_expired.exit

nft_set_ext_exists.exit.i.lor.rhs134_crit_edge:   ; preds = %nft_set_ext_exists.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.rhs134

nft_set_elem_expired.exit:                        ; preds = %nft_set_ext_exists.exit.i
  %call1.i = tail call i64 @get_jiffies_64() #13
  %71 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %71)
  %72 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %72 to i32
  %add.ptr.i.i.i251 = getelementptr i8, ptr %67, i32 %conv.i.i.i
  %73 = ptrtoint ptr %add.ptr.i.i.i251 to i32
  call void @__asan_load8_noabort(i32 %73)
  %74 = load i64, ptr %add.ptr.i.i.i251, align 8
  %sub.i = sub i64 %call1.i, %74
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i)
  %cmp.i252 = icmp sgt i64 %sub.i, -1
  br i1 %cmp.i252, label %nft_set_elem_expired.exit.next_match.backedge_crit_edge, label %nft_set_elem_expired.exit.lor.rhs134_crit_edge, !prof !33

nft_set_elem_expired.exit.lor.rhs134_crit_edge:   ; preds = %nft_set_elem_expired.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.rhs134

nft_set_elem_expired.exit.next_match.backedge_crit_edge: ; preds = %nft_set_elem_expired.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_match.backedge

lor.rhs134:                                       ; preds = %nft_set_elem_expired.exit.lor.rhs134_crit_edge, %nft_set_ext_exists.exit.i.lor.rhs134_crit_edge, %if.then129.lor.rhs134_crit_edge
  %75 = ptrtoint ptr %ext to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %ext, align 4
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load1_noabort(i32 %77)
  %78 = load i8, ptr %76, align 1
  %and3.i = and i8 %78, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool.not.i253.not = icmp eq i8 %and3.i, 0
  br i1 %tobool.not.i253.not, label %lor.rhs134.cleanup191.sink.split_crit_edge, label %lor.rhs134.next_match.backedge_crit_edge, !prof !31

lor.rhs134.next_match.backedge_crit_edge:         ; preds = %lor.rhs134
  call void @__sanitizer_cov_trace_pc() #15
  br label %next_match.backedge

lor.rhs134.cleanup191.sink.split_crit_edge:       ; preds = %lor.rhs134
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup191.sink.split

next_match.backedge:                              ; preds = %lor.rhs134.next_match.backedge_crit_edge, %nft_set_elem_expired.exit.next_match.backedge_crit_edge
  %79 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %bsize, align 4
  %cmp53.i = icmp sgt i32 %80, 0
  br i1 %cmp53.i, label %next_match.backedge.for.body.i248.preheader_crit_edge, label %next_match.backedge.cleanup191.sink.split_crit_edge

next_match.backedge.cleanup191.sink.split_crit_edge: ; preds = %next_match.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup191.sink.split

next_match.backedge.for.body.i248.preheader_crit_edge: ; preds = %next_match.backedge
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i248.preheader

for.inc:                                          ; preds = %if.end127.for.inc_crit_edge, %while.end.i.thread.for.inc_crit_edge
  %lnot172 = xor i1 %map_index.0.off0305, true
  %81 = ptrtoint ptr %f.0307 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %f.0307, align 4
  %83 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %bb, align 4
  %div180 = sdiv i32 8, %84
  %div181 = sdiv i32 %82, %div180
  %sub182 = add i32 %div181, -1
  %or = or i32 %sub182, 3
  %add183 = sub i32 1, %div181
  %sub188 = add i32 %add183, %or
  %add.ptr189 = getelementptr i8, ptr %add.ptr99, i32 %sub188
  %inc = add nuw nsw i32 %i.0304, 1
  %incdec.ptr = getelementptr %struct.nft_pipapo_field, ptr %f.0307, i32 1
  %85 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %12, align 4
  %cmp = icmp slt i32 %inc, %86
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup191_crit_edge

for.inc.cleanup191_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup191

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

cleanup191.sink.split:                            ; preds = %next_match.backedge.cleanup191.sink.split_crit_edge, %lor.rhs134.cleanup191.sink.split_crit_edge, %pipapo_refill.exit.thread260.cleanup191.sink.split_crit_edge, %pipapo_refill.exit.cleanup191.sink.split_crit_edge, %if.then.i, %do.end96.cleanup191.sink.split_crit_edge
  %retval.2.ph = phi i1 [ false, %if.then.i ], [ false, %next_match.backedge.cleanup191.sink.split_crit_edge ], [ false, %pipapo_refill.exit.thread260.cleanup191.sink.split_crit_edge ], [ false, %pipapo_refill.exit.cleanup191.sink.split_crit_edge ], [ true, %lor.rhs134.cleanup191.sink.split_crit_edge ], [ false, %do.end96.cleanup191.sink.split_crit_edge ]
  %87 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cpu, align 4
  %arrayidx163 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %88
  %89 = ptrtoint ptr %arrayidx163 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx163, align 4
  %add164 = add i32 %90, ptrtoint (ptr @nft_pipapo_scratch_index to i32)
  %91 = inttoptr i32 %add164 to ptr
  %frombool165 = zext i1 %map_index.0.off0305 to i8
  %92 = ptrtoint ptr %91 to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 %frombool165, ptr %91, align 1
  br label %cleanup191

cleanup191:                                       ; preds = %cleanup191.sink.split, %for.inc.cleanup191_crit_edge, %do.body48.cleanup191_crit_edge, %do.body31.cleanup191_crit_edge, %do.end28.cleanup191_crit_edge
  %retval.2 = phi i1 [ false, %do.body48.cleanup191_crit_edge ], [ false, %do.end28.cleanup191_crit_edge ], [ false, %do.body31.cleanup191_crit_edge ], [ %retval.2.ph, %cleanup191.sink.split ], [ false, %for.inc.cleanup191_crit_edge ]
  tail call fastcc void @local_bh_enable()
  ret i1 %retval.2
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_held() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipapo_and_field_buckets_4bit(ptr nocapture noundef readonly %f, ptr noundef %dst, ptr nocapture noundef readonly %data) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp38 = icmp sgt i32 %1, 0
  br i1 %cmp38, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %lt1 = getelementptr inbounds %struct.nft_pipapo_field, ptr %f, i32 0, i32 4
  %2 = ptrtoint ptr %lt1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lt1, align 4
  %bsize = getelementptr inbounds %struct.nft_pipapo_field, ptr %f, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %data.addr.041 = phi ptr [ %data, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %group.040 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.body.for.body_crit_edge ]
  %lt.039 = phi ptr [ %3, %for.body.lr.ph ], [ %add.ptr20, %for.body.for.body_crit_edge ]
  %4 = ptrtoint ptr %data.addr.041 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.addr.041, align 1
  %6 = lshr i8 %5, 4
  %conv3 = zext i8 %6 to i32
  %7 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bsize, align 4
  %mul = mul i32 %8, %conv3
  %add.ptr = getelementptr i32, ptr %lt.039, i32 %mul
  %mul5 = shl i32 %8, 5
  %call = tail call i32 @__bitmap_and(ptr noundef %dst, ptr noundef %dst, ptr noundef %add.ptr, i32 noundef %mul5) #13
  %9 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bsize, align 4
  %mul7 = shl i32 %10, 4
  %add.ptr8 = getelementptr i32, ptr %lt.039, i32 %mul7
  %11 = ptrtoint ptr %data.addr.041 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %data.addr.041, align 1
  %13 = and i8 %12, 15
  %conv11 = zext i8 %13 to i32
  %mul13 = mul i32 %10, %conv11
  %add.ptr14 = getelementptr i32, ptr %add.ptr8, i32 %mul13
  %mul16 = shl i32 %10, 5
  %call17 = tail call i32 @__bitmap_and(ptr noundef %dst, ptr noundef %dst, ptr noundef %add.ptr14, i32 noundef %mul16) #13
  %14 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %bsize, align 4
  %mul19 = shl i32 %15, 4
  %add.ptr20 = getelementptr i32, ptr %add.ptr8, i32 %mul19
  %add = add i32 %group.040, 2
  %incdec.ptr = getelementptr i8, ptr %data.addr.041, i32 1
  %16 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %f, align 4
  %cmp = icmp slt i32 %add, %17
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_pipapo_insert(ptr nocapture noundef readonly %net, ptr nocapture noundef %set, ptr nocapture noundef readonly %elem, ptr nocapture noundef writeonly %ext2) #0 align 64 {
entry:
  %tmp.i.i = alloca [16 x i8], align 1
  %base.i = alloca [16 x i8], align 1
  %rulemap = alloca [16 x %union.nft_pipapo_map_bucket], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %priv = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv, align 8
  %ops.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 21
  %2 = ptrtoint ptr %ops.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ops.i, align 128
  %elemsize.i = getelementptr inbounds %struct.nft_set_ops, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %elemsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %elemsize.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %5
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rulemap) #13
  %6 = call ptr @memset(ptr %rulemap, i32 255, i32 64)
  %clone = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  %7 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clone, align 4
  %nft.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %9 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %cmp.i.i = icmp eq i8 %10, 0
  %cond.i.i = zext i1 %cmp.i.i to i8
  %shl.i = shl nuw nsw i8 1, %cond.i.i
  %tobool.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not.i, label %entry.if.end_crit_edge, label %nft_set_ext_exists.exit

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

nft_set_ext_exists.exit:                          ; preds = %entry
  %arrayidx.i.i = getelementptr %struct.nft_set_ext, ptr %add.ptr.i, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.i.i.not = icmp eq i8 %12, 0
  br i1 %tobool.i.i.not, label %nft_set_ext_exists.exit.if.end_crit_edge, label %if.then

nft_set_ext_exists.exit.if.end_crit_edge:         ; preds = %nft_set_ext_exists.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %nft_set_ext_exists.exit
  call void @__sanitizer_cov_trace_pc() #15
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %14 to i32
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr.i, i32 %conv.i.i
  br label %if.end

if.end:                                           ; preds = %if.then, %nft_set_ext_exists.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %end.0 = phi ptr [ %add.ptr.i.i, %if.then ], [ %elem, %nft_set_ext_exists.exit.if.end_crit_edge ], [ %elem, %entry.if.end_crit_edge ]
  %call8 = tail call fastcc ptr @pipapo_get(ptr noundef %set, ptr noundef %elem, i8 noundef zeroext %shl.i)
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end29, label %if.then10

if.then10:                                        ; preds = %if.end
  %arrayidx.i.i259 = getelementptr %struct.nft_set_ext, ptr %call8, i32 0, i32 1, i32 0
  %15 = ptrtoint ptr %arrayidx.i.i259 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx.i.i259, align 1
  %conv.i.i260 = zext i8 %16 to i32
  %add.ptr.i.i261 = getelementptr i8, ptr %call8, i32 %conv.i.i260
  %tobool.not.i262 = icmp eq ptr %call8, null
  br i1 %tobool.not.i262, label %if.then10.if.end19_crit_edge, label %nft_set_ext_exists.exit266

if.then10.if.end19_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

nft_set_ext_exists.exit266:                       ; preds = %if.then10
  %arrayidx.i.i263 = getelementptr %struct.nft_set_ext, ptr %call8, i32 0, i32 1, i32 1
  %17 = ptrtoint ptr %arrayidx.i.i263 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx.i.i263, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.i.i264.not = icmp eq i8 %18, 0
  br i1 %tobool.i.i264.not, label %nft_set_ext_exists.exit266.if.end19_crit_edge, label %if.then15

nft_set_ext_exists.exit266.if.end19_crit_edge:    ; preds = %nft_set_ext_exists.exit266
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end19

if.then15:                                        ; preds = %nft_set_ext_exists.exit266
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %arrayidx.i.i263 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i263, align 1
  %conv.i.i268 = zext i8 %20 to i32
  %add.ptr.i.i269 = getelementptr i8, ptr %call8, i32 %conv.i.i268
  br label %if.end19

if.end19:                                         ; preds = %if.then15, %nft_set_ext_exists.exit266.if.end19_crit_edge, %if.then10.if.end19_crit_edge
  %dup_end.0 = phi ptr [ %add.ptr.i.i269, %if.then15 ], [ %add.ptr.i.i261, %nft_set_ext_exists.exit266.if.end19_crit_edge ], [ %add.ptr.i.i261, %if.then10.if.end19_crit_edge ]
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(4) %elem, ptr noundef dereferenceable(4) %add.ptr.i.i261, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end19.cleanup157_crit_edge

if.end19.cleanup157_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup157

land.lhs.true:                                    ; preds = %if.end19
  %bcmp251 = tail call i32 @bcmp(ptr noundef dereferenceable(4) %end.0, ptr noundef dereferenceable(4) %dup_end.0, i32 4) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp251)
  %tobool24.not = icmp eq i32 %bcmp251, 0
  br i1 %tobool24.not, label %land.lhs.true.cleanup157.sink.split_crit_edge, label %land.lhs.true.cleanup157_crit_edge

land.lhs.true.cleanup157_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup157

land.lhs.true.cleanup157.sink.split_crit_edge:    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup157.sink.split

if.end29:                                         ; preds = %if.end
  %cmp = icmp eq ptr %call8, inttoptr (i32 -2 to ptr)
  br i1 %cmp, label %if.end34, label %if.end29.if.then37_crit_edge

if.end29.if.then37_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37

if.end34:                                         ; preds = %if.end29
  %21 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %cmp.i.i271 = icmp eq i8 %22, 0
  %cond.i.i272 = zext i1 %cmp.i.i271 to i8
  %shl.i273 = shl nuw nsw i8 1, %cond.i.i272
  %call33 = tail call fastcc ptr @pipapo_get(ptr noundef %set, ptr noundef %end.0, i8 noundef zeroext %shl.i273)
  %cmp36.not = icmp eq ptr %call33, inttoptr (i32 -2 to ptr)
  br i1 %cmp36.not, label %if.end43, label %if.end34.if.then37_crit_edge

if.end34.if.then37_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then37

if.then37:                                        ; preds = %if.end34.if.then37_crit_edge, %if.end29.if.then37_crit_edge
  %dup.0321 = phi ptr [ %call33, %if.end34.if.then37_crit_edge ], [ %call8, %if.end29.if.then37_crit_edge ]
  %23 = ptrtoint ptr %dup.0321 to i32
  %cmp.i274 = icmp ugt ptr %dup.0321, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i274, label %if.then37.cleanup157_crit_edge, label %if.then37.cleanup157.sink.split_crit_edge

if.then37.cleanup157.sink.split_crit_edge:        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup157.sink.split

if.then37.cleanup157_crit_edge:                   ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup157

if.end43:                                         ; preds = %if.end34
  %f44 = getelementptr inbounds %struct.nft_pipapo_match, ptr %8, i32 0, i32 4
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp46292 = icmp sgt i32 %25, 0
  br i1 %cmp46292, label %if.end43.for.body_crit_edge, label %if.end43.for.end_crit_edge

if.end43.for.end_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end43.for.body_crit_edge:                      ; preds = %if.end43
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end43.for.body_crit_edge
  %i.0294 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end43.for.body_crit_edge ]
  %f.0293 = phi ptr [ %incdec.ptr, %for.inc.for.body_crit_edge ], [ %f44, %if.end43.for.body_crit_edge ]
  %rules = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0293, i32 0, i32 1
  %26 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %rules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8388351, i32 %27)
  %cmp47 = icmp ugt i32 %27, 8388351
  br i1 %cmp47, label %for.body.cleanup157_crit_edge, label %cleanup67

for.body.cleanup157_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup157

cleanup67:                                        ; preds = %for.body
  %28 = ptrtoint ptr %f.0293 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %f.0293, align 4
  %bb = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0293, i32 0, i32 3
  %30 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %bb, align 4
  %div = sdiv i32 8, %31
  %div50 = sdiv i32 %29, %div
  %call51 = tail call i32 @memcmp(ptr noundef %elem, ptr noundef %end.0, i32 noundef %div50) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call51)
  %cmp52 = icmp sgt i32 %call51, 0
  br i1 %cmp52, label %cleanup67.cleanup157_crit_edge, label %for.inc

cleanup67.cleanup157_crit_edge:                   ; preds = %cleanup67
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup157

for.inc:                                          ; preds = %cleanup67
  %inc = add nuw nsw i32 %i.0294, 1
  %incdec.ptr = getelementptr %struct.nft_pipapo_field, ptr %f.0293, i32 1
  %exitcond.not = icmp eq i32 %inc, %25
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end43.for.end_crit_edge
  %dirty = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 12
  %32 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %dirty, align 4
  %bsize_max69 = getelementptr inbounds %struct.nft_pipapo_match, ptr %8, i32 0, i32 2
  %33 = ptrtoint ptr %bsize_max69 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bsize_max69, align 4
  %35 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %8, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp74297 = icmp sgt i32 %36, 0
  br i1 %cmp74297, label %for.end.for.body75_crit_edge, label %for.end.do.body_crit_edge

for.end.do.body_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.end.for.body75_crit_edge:                     ; preds = %for.end
  br label %for.body75

for.body75:                                       ; preds = %if.end92.for.body75_crit_edge, %for.end.for.body75_crit_edge
  %start.0308 = phi ptr [ %add.ptr109, %if.end92.for.body75_crit_edge ], [ %elem, %for.end.for.body75_crit_edge ]
  %end.1304 = phi ptr [ %add.ptr117, %if.end92.for.body75_crit_edge ], [ %end.0, %for.end.for.body75_crit_edge ]
  %bsize_max.0303 = phi i32 [ %66, %if.end92.for.body75_crit_edge ], [ %34, %for.end.for.body75_crit_edge ]
  %i.1302 = phi i32 [ %inc119, %if.end92.for.body75_crit_edge ], [ 0, %for.end.for.body75_crit_edge ]
  %f.1298 = phi ptr [ %incdec.ptr120, %if.end92.for.body75_crit_edge ], [ %f44, %for.end.for.body75_crit_edge ]
  %rules76 = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.1298, i32 0, i32 1
  %37 = ptrtoint ptr %rules76 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %rules76, align 4
  %arrayidx = getelementptr [16 x %union.nft_pipapo_map_bucket], ptr %rulemap, i32 0, i32 %i.1302
  %bf.shl = shl i32 %38, 8
  %39 = ptrtoint ptr %f.1298 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %f.1298, align 4
  %bb78 = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.1298, i32 0, i32 3
  %41 = ptrtoint ptr %bb78 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %bb78, align 4
  %div79 = sdiv i32 8, %42
  %div80 = sdiv i32 %40, %div79
  %bcmp252 = tail call i32 @bcmp(ptr %start.0308, ptr %end.1304, i32 %div80) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp252)
  %tobool82.not = icmp eq i32 %bcmp252, 0
  %mul = mul i32 %42, %40
  br i1 %tobool82.not, label %if.then83, label %if.else87

if.then83:                                        ; preds = %for.body75
  call void @__sanitizer_cov_trace_pc() #15
  %call86 = tail call fastcc i32 @pipapo_insert(ptr noundef %f.1298, ptr noundef %start.0308, i32 noundef %mul)
  br label %if.end92

if.else87:                                        ; preds = %for.body75
  %sub.i275 = add i32 %mul, 7
  %div.i = sdiv i32 %sub.i275, 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %base.i) #13
  %43 = zext i32 %div.i to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div.i)
  %44 = icmp ugt i32 %div.i, 15
  %45 = sub nsw i64 16, %43
  %46 = select i1 %44, i64 0, i64 %45
  %47 = getelementptr i8, ptr %base.i, i32 %div.i
  %48 = trunc i64 %46 to i32
  %49 = call ptr @memset(ptr %47, i32 255, i32 %48)
  %50 = call ptr @memcpy(ptr %base.i, ptr %start.0308, i32 %div.i)
  %call63.i = call i32 @memcmp(ptr noundef nonnull %base.i, ptr noundef %end.1304, i32 noundef %div.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call63.i)
  %cmp64.i = icmp slt i32 %call63.i, 1
  br i1 %cmp64.i, label %while.cond2.preheader.lr.ph.i, label %if.else87.pipapo_expand.exit_crit_edge

if.else87.pipapo_expand.exit_crit_edge:           ; preds = %if.else87
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_expand.exit

while.cond2.preheader.lr.ph.i:                    ; preds = %if.else87
  %51 = getelementptr i8, ptr %tmp.i.i, i32 %div.i
  %smax.i = tail call i32 @llvm.smax.i32(i32 %mul, i32 1) #13
  br label %while.cond2.preheader.i

while.cond2.preheader.i:                          ; preds = %cleanup.i.while.cond2.preheader.i_crit_edge, %while.cond2.preheader.lr.ph.i
  %masks.065.i = phi i32 [ 0, %while.cond2.preheader.lr.ph.i ], [ %inc21.i, %cleanup.i.while.cond2.preheader.i_crit_edge ]
  br label %while.cond2.i

while.cond2.i:                                    ; preds = %if.end.i.while.cond2.i_crit_edge, %while.cond2.preheader.i
  %indvars.iv.i = phi i32 [ 1, %while.cond2.preheader.i ], [ %indvars.iv.next.i, %if.end.i.while.cond2.i_crit_edge ]
  %step.0.i = phi i32 [ 0, %while.cond2.preheader.i ], [ %inc.i, %if.end.i.while.cond2.i_crit_edge ]
  %rem1.i.i = and i32 %step.0.i, 7
  %shl.i.i = shl nuw nsw i32 1, %rem1.i.i
  %div.i58.i = lshr i32 %step.0.i, 3
  %arrayidx.i.i276 = getelementptr i8, ptr %base.i, i32 %div.i58.i
  %52 = ptrtoint ptr %arrayidx.i.i276 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %arrayidx.i.i276, align 1
  %conv.i.i277 = zext i8 %53 to i32
  %and.i.i = and i32 %shl.i.i, %conv.i.i277
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %while.body5.i, label %while.cond2.i.while.end.i_crit_edge

while.cond2.i.while.end.i_crit_edge:              ; preds = %while.cond2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body5.i:                                    ; preds = %while.cond2.i
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %tmp.i.i) #13
  %54 = trunc i64 %46 to i32
  %55 = call ptr @memset(ptr %51, i32 255, i32 %54)
  %56 = call ptr @memcpy(ptr %tmp.i.i, ptr %base.i, i32 %div.i)
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %while.body5.i
  %i.011.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %while.body5.i ]
  %rem9.i.i = and i32 %i.011.i.i, 7
  %shl.i44.i = shl nuw nsw i32 1, %rem9.i.i
  %div.i45.udiv74.i = lshr i32 %i.011.i.i, 3
  %arrayidx.i46.i = getelementptr [16 x i8], ptr %tmp.i.i, i32 0, i32 %div.i45.udiv74.i
  %57 = ptrtoint ptr %arrayidx.i46.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %arrayidx.i46.i, align 1
  %59 = trunc i32 %shl.i44.i to i8
  %conv1.i.i = or i8 %58, %59
  store i8 %conv1.i.i, ptr %arrayidx.i46.i, align 1
  %inc.i.i = add nuw nsw i32 %i.011.i.i, 1
  %exitcond.i = icmp eq i32 %inc.i.i, %indvars.iv.i
  br i1 %exitcond.i, label %pipapo_step_after_end.exit.i, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

pipapo_step_after_end.exit.i:                     ; preds = %for.body.i.i
  %call.i.i = call i32 @memcmp(ptr noundef nonnull %tmp.i.i, ptr noundef %end.1304, i32 noundef %div.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp sgt i32 %call.i.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %tmp.i.i) #13
  br i1 %cmp3.i.i, label %pipapo_step_after_end.exit.i.while.end.i_crit_edge, label %if.end.i

pipapo_step_after_end.exit.i.while.end.i_crit_edge: ; preds = %pipapo_step_after_end.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.end.i:                                         ; preds = %pipapo_step_after_end.exit.i
  %inc.i = add nuw nsw i32 %step.0.i, 1
  %indvars.iv.next.i = add nuw i32 %indvars.iv.i, 1
  %exitcond72.not.i = icmp eq i32 %inc.i, %smax.i
  br i1 %exitcond72.not.i, label %if.then9.i, label %if.end.i.while.cond2.i_crit_edge

if.end.i.while.cond2.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond2.i

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %masks.065.i)
  %tobool.not.i278 = icmp eq i32 %masks.065.i, 0
  br i1 %tobool.not.i278, label %if.then10.i, label %if.then9.i.pipapo_expand.exit_crit_edge

if.then9.i.pipapo_expand.exit_crit_edge:          ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_expand.exit

if.then10.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15
  %call12.i = call fastcc i32 @pipapo_insert(ptr noundef %f.1298, ptr noundef nonnull %base.i, i32 noundef 0) #13
  br label %pipapo_expand.exit

while.end.i:                                      ; preds = %pipapo_step_after_end.exit.i.while.end.i_crit_edge, %while.cond2.i.while.end.i_crit_edge
  %arrayidx.i.i276.le = getelementptr i8, ptr %base.i, i32 %div.i58.i
  %sub16.i = sub i32 %mul, %step.0.i
  %call17.i = call fastcc i32 @pipapo_insert(ptr noundef %f.1298, ptr noundef nonnull %base.i, i32 noundef %sub16.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.i)
  %cmp18.i = icmp slt i32 %call17.i, 0
  br i1 %cmp18.i, label %while.end.i.pipapo_expand.exit_crit_edge, label %if.end20.i

while.end.i.pipapo_expand.exit_crit_edge:         ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_expand.exit

if.end20.i:                                       ; preds = %while.end.i
  %inc21.i = add i32 %masks.065.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i58.i, i32 %div.i)
  %cmp16.i.i = icmp slt i32 %div.i58.i, %div.i
  br i1 %cmp16.i.i, label %for.body.lr.ph.i.i, label %if.end20.i.cleanup.i_crit_edge

if.end20.i.cleanup.i_crit_edge:                   ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

for.body.lr.ph.i.i:                               ; preds = %if.end20.i
  %60 = trunc i32 %shl.i.i to i8
  %conv2.i.peel.i = add i8 %53, %60
  %61 = ptrtoint ptr %arrayidx.i.i276.le to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %conv2.i.peel.i, ptr %arrayidx.i.i276.le, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2.i.peel.i)
  %tobool4.not.i.peel.i = icmp ne i8 %conv2.i.peel.i, 0
  %inc7.i.peel.i = add nuw nsw i32 %div.i58.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc7.i.peel.i, i32 %div.i)
  %exitcond.not.i.peel.i = icmp eq i32 %inc7.i.peel.i, %div.i
  %or.cond.i.peel.i = select i1 %tobool4.not.i.peel.i, i1 true, i1 %exitcond.not.i.peel.i
  br i1 %or.cond.i.peel.i, label %for.body.lr.ph.i.i.cleanup.i_crit_edge, label %for.body.lr.ph.i.i.for.body.i50.i_crit_edge

for.body.lr.ph.i.i.for.body.i50.i_crit_edge:      ; preds = %for.body.lr.ph.i.i
  br label %for.body.i50.i

for.body.lr.ph.i.i.cleanup.i_crit_edge:           ; preds = %for.body.lr.ph.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

for.body.i50.i:                                   ; preds = %for.body.i50.i.for.body.i50.i_crit_edge, %for.body.lr.ph.i.i.for.body.i50.i_crit_edge
  %i.018.i.i = phi i32 [ %inc7.i.i, %for.body.i50.i.for.body.i50.i_crit_edge ], [ %inc7.i.peel.i, %for.body.lr.ph.i.i.for.body.i50.i_crit_edge ]
  %arrayidx.i49.i = getelementptr i8, ptr %base.i, i32 %i.018.i.i
  %62 = ptrtoint ptr %arrayidx.i49.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %63 = load i8, ptr %arrayidx.i49.i, align 1
  %conv2.i.i = add i8 %63, 1
  store i8 %conv2.i.i, ptr %arrayidx.i49.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv2.i.i)
  %tobool4.not.i.i = icmp ne i8 %conv2.i.i, 0
  %inc7.i.i = add i32 %i.018.i.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc7.i.i, i32 %div.i)
  %exitcond.not.i.i = icmp eq i32 %inc7.i.i, %div.i
  %or.cond.i.i = select i1 %tobool4.not.i.i, i1 true, i1 %exitcond.not.i.i
  br i1 %or.cond.i.i, label %for.body.i50.i.cleanup.i_crit_edge, label %for.body.i50.i.for.body.i50.i_crit_edge, !llvm.loop !34

for.body.i50.i.for.body.i50.i_crit_edge:          ; preds = %for.body.i50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i50.i

for.body.i50.i.cleanup.i_crit_edge:               ; preds = %for.body.i50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.i

cleanup.i:                                        ; preds = %for.body.i50.i.cleanup.i_crit_edge, %for.body.lr.ph.i.i.cleanup.i_crit_edge, %if.end20.i.cleanup.i_crit_edge
  %call.i = call i32 @memcmp(ptr noundef nonnull %base.i, ptr noundef %end.1304, i32 noundef %div.i) #17
  %cmp.i279 = icmp slt i32 %call.i, 1
  br i1 %cmp.i279, label %cleanup.i.while.cond2.preheader.i_crit_edge, label %cleanup.i.pipapo_expand.exit_crit_edge

cleanup.i.pipapo_expand.exit_crit_edge:           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_expand.exit

cleanup.i.while.cond2.preheader.i_crit_edge:      ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.cond2.preheader.i

pipapo_expand.exit:                               ; preds = %cleanup.i.pipapo_expand.exit_crit_edge, %while.end.i.pipapo_expand.exit_crit_edge, %if.then10.i, %if.then9.i.pipapo_expand.exit_crit_edge, %if.else87.pipapo_expand.exit_crit_edge
  %retval.2.i = phi i32 [ 1, %if.then10.i ], [ %masks.065.i, %if.then9.i.pipapo_expand.exit_crit_edge ], [ 0, %if.else87.pipapo_expand.exit_crit_edge ], [ %call17.i, %while.end.i.pipapo_expand.exit_crit_edge ], [ %inc21.i, %cleanup.i.pipapo_expand.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %base.i) #13
  br label %if.end92

if.end92:                                         ; preds = %pipapo_expand.exit, %if.then83
  %ret.0 = phi i32 [ %retval.2.i, %pipapo_expand.exit ], [ %call86, %if.then83 ]
  %bsize = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.1298, i32 0, i32 2
  %64 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %bsize, align 4
  %66 = tail call i32 @llvm.umax.i32(i32 %65, i32 %bsize_max.0303)
  %bf.value99 = and i32 %ret.0, 255
  %bf.set101 = or i32 %bf.value99, %bf.shl
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %bf.set101, ptr %arrayidx, align 4
  %68 = ptrtoint ptr %f.1298 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %f.1298, align 4
  %70 = ptrtoint ptr %bb78 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %bb78, align 4
  %div104 = sdiv i32 8, %71
  %div105 = sdiv i32 %69, %div104
  %sub106 = add i32 %div105, -1
  %or107 = or i32 %sub106, 3
  %add108 = add i32 %or107, 1
  %add.ptr109 = getelementptr i8, ptr %start.0308, i32 %add108
  %add.ptr117 = getelementptr i8, ptr %end.1304, i32 %add108
  %inc119 = add nuw nsw i32 %i.1302, 1
  %incdec.ptr120 = getelementptr %struct.nft_pipapo_field, ptr %f.1298, i32 1
  %72 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %8, align 4
  %cmp74 = icmp slt i32 %inc119, %73
  br i1 %cmp74, label %if.end92.for.body75_crit_edge, label %if.end92.do.body_crit_edge

if.end92.do.body_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

if.end92.for.body75_crit_edge:                    ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body75

do.body:                                          ; preds = %if.end92.do.body_crit_edge, %for.end.do.body_crit_edge
  %bsize_max.0.lcssa = phi i32 [ %34, %for.end.do.body_crit_edge ], [ %66, %if.end92.do.body_crit_edge ]
  %74 = tail call i32 @llvm.read_register.i32(metadata !20) #13
  %and.i.i.i = and i32 %74, -16384
  %75 = inttoptr i32 %and.i.i.i to ptr
  %preempt_count.i.i = getelementptr inbounds %struct.thread_info, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %preempt_count.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %preempt_count.i.i, align 4
  %add.i = add i32 %77, 1
  store volatile i32 %add.i, ptr %preempt_count.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !36
  %scratch = getelementptr inbounds %struct.nft_pipapo_match, ptr %8, i32 0, i32 1
  %78 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %scratch, align 4
  %80 = ptrtoint ptr %79 to i32
  %81 = tail call i32 @llvm.read_register.i32(metadata !20) #13
  %and.i = and i32 %81, -16384
  %82 = inttoptr i32 %and.i to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %82, i32 0, i32 3
  %83 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %cpu, align 4
  %arrayidx128 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %84
  %85 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %arrayidx128, align 4
  %add129 = add i32 %86, %80
  %87 = inttoptr i32 %add129 to ptr
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %tobool130.not = icmp eq ptr %89, null
  br i1 %tobool130.not, label %do.body.do.body134_crit_edge, label %lor.lhs.false

do.body.do.body134_crit_edge:                     ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body134

lor.lhs.false:                                    ; preds = %do.body
  %90 = ptrtoint ptr %bsize_max69 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %bsize_max69, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %bsize_max.0.lcssa, i32 %91)
  %cmp132 = icmp ugt i32 %bsize_max.0.lcssa, %91
  br i1 %cmp132, label %lor.lhs.false.do.body134_crit_edge, label %do.body147

lor.lhs.false.do.body134_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body134

do.body134:                                       ; preds = %lor.lhs.false.do.body134_crit_edge, %do.body.do.body134_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !37
  %92 = tail call i32 @llvm.read_register.i32(metadata !20) #13
  %and.i.i.i253 = and i32 %92, -16384
  %93 = inttoptr i32 %and.i.i.i253 to ptr
  %preempt_count.i.i254 = getelementptr inbounds %struct.thread_info, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %preempt_count.i.i254 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %preempt_count.i.i254, align 4
  %sub.i = add i32 %95, -1
  store volatile i32 %sub.i, ptr %preempt_count.i.i254, align 4
  %call141 = tail call fastcc i32 @pipapo_realloc_scratch(ptr noundef %8, i32 noundef %bsize_max.0.lcssa)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call141)
  %tobool142.not = icmp eq i32 %call141, 0
  br i1 %tobool142.not, label %if.end144, label %do.body134.cleanup157_crit_edge

do.body134.cleanup157_crit_edge:                  ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup157

if.end144:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #15
  %96 = ptrtoint ptr %bsize_max69 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %bsize_max.0.lcssa, ptr %bsize_max69, align 4
  br label %if.end154

do.body147:                                       ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !38
  %97 = tail call i32 @llvm.read_register.i32(metadata !20) #13
  %and.i.i.i255 = and i32 %97, -16384
  %98 = inttoptr i32 %and.i.i.i255 to ptr
  %preempt_count.i.i256 = getelementptr inbounds %struct.thread_info, ptr %98, i32 0, i32 1
  %99 = ptrtoint ptr %preempt_count.i.i256 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile i32, ptr %preempt_count.i.i256, align 4
  %sub.i257 = add i32 %100, -1
  store volatile i32 %sub.i257, ptr %preempt_count.i.i256, align 4
  br label %if.end154

if.end154:                                        ; preds = %do.body147, %if.end144
  %101 = ptrtoint ptr %ext2 to i32
  call void @__asan_store4_noabort(i32 %101)
  store ptr %1, ptr %ext2, align 4
  %102 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %8, align 4
  %sub75.i = add i32 %103, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub75.i)
  %cmp76.i = icmp sgt i32 %sub75.i, 0
  br i1 %cmp76.i, label %if.end154.for.cond2.preheader.i_crit_edge, label %if.end154.for.cond31.preheader.i_crit_edge

if.end154.for.cond31.preheader.i_crit_edge:       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond31.preheader.i

if.end154.for.cond2.preheader.i_crit_edge:        ; preds = %if.end154
  br label %for.cond2.preheader.i

for.cond2.preheader.i:                            ; preds = %for.inc28.i.for.cond2.preheader.i_crit_edge, %if.end154.for.cond2.preheader.i_crit_edge
  %i.078.i = phi i32 [ %.pre.i, %for.inc28.i.for.cond2.preheader.i_crit_edge ], [ 0, %if.end154.for.cond2.preheader.i_crit_edge ]
  %f.077.i = phi ptr [ %incdec.ptr.i, %for.inc28.i.for.cond2.preheader.i_crit_edge ], [ %f44, %if.end154.for.cond2.preheader.i_crit_edge ]
  %arrayidx.i = getelementptr %union.nft_pipapo_map_bucket, ptr %rulemap, i32 %i.078.i
  %104 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %bf.load70.i = load i32, ptr %arrayidx.i, align 4
  %bf.clear71.i = and i32 %bf.load70.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear71.i)
  %cmp372.not.i = icmp eq i32 %bf.clear71.i, 0
  %.pre.i = add nuw nsw i32 %i.078.i, 1
  br i1 %cmp372.not.i, label %for.cond2.preheader.i.for.inc28.i_crit_edge, label %for.body4.lr.ph.i

for.cond2.preheader.i.for.inc28.i_crit_edge:      ; preds = %for.cond2.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc28.i

for.body4.lr.ph.i:                                ; preds = %for.cond2.preheader.i
  %arrayidx5.i = getelementptr %union.nft_pipapo_map_bucket, ptr %rulemap, i32 %.pre.i
  %mt.i = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.077.i, i32 0, i32 5
  %105 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %bf.load6.i = load i32, ptr %arrayidx5.i, align 4
  %bf.lshr.i = and i32 %bf.load6.i, -256
  %bf.lshr9.i = lshr i32 %bf.load70.i, 8
  %bf.clear17.i = and i32 %bf.load6.i, 255
  br label %for.body4.i

for.cond31.preheader.i:                           ; preds = %for.inc28.i.for.cond31.preheader.i_crit_edge, %if.end154.for.cond31.preheader.i_crit_edge
  %f.0.lcssa.i = phi ptr [ %f44, %if.end154.for.cond31.preheader.i_crit_edge ], [ %incdec.ptr.i, %for.inc28.i.for.cond31.preheader.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ 0, %if.end154.for.cond31.preheader.i_crit_edge ], [ %.pre.i, %for.inc28.i.for.cond31.preheader.i_crit_edge ]
  %arrayidx32.i = getelementptr %union.nft_pipapo_map_bucket, ptr %rulemap, i32 %i.0.lcssa.i
  %106 = ptrtoint ptr %arrayidx32.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %bf.load3381.i = load i32, ptr %arrayidx32.i, align 4
  %bf.clear3482.i = and i32 %bf.load3381.i, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bf.clear3482.i)
  %cmp3583.not.i = icmp eq i32 %bf.clear3482.i, 0
  br i1 %cmp3583.not.i, label %for.cond31.preheader.i.cleanup157_crit_edge, label %for.body36.lr.ph.i

for.cond31.preheader.i.cleanup157_crit_edge:      ; preds = %for.cond31.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup157

for.body36.lr.ph.i:                               ; preds = %for.cond31.preheader.i
  %mt37.i = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0.lcssa.i, i32 0, i32 5
  %bf.lshr40.i = lshr i32 %bf.load3381.i, 8
  br label %for.body36.i

for.body4.i:                                      ; preds = %for.body4.i.for.body4.i_crit_edge, %for.body4.lr.ph.i
  %j.073.i = phi i32 [ 0, %for.body4.lr.ph.i ], [ %inc.i280, %for.body4.i.for.body4.i_crit_edge ]
  %107 = ptrtoint ptr %mt.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %mt.i, align 4
  %add10.i = add nuw nsw i32 %j.073.i, %bf.lshr9.i
  %arrayidx11.i = getelementptr %union.nft_pipapo_map_bucket, ptr %108, i32 %add10.i
  %109 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %bf.load12.i = load i32, ptr %arrayidx11.i, align 4
  %bf.clear13.i = and i32 %bf.load12.i, 255
  %bf.set.i = or i32 %bf.clear13.i, %bf.lshr.i
  store i32 %bf.set.i, ptr %arrayidx11.i, align 4
  %110 = load ptr, ptr %mt.i, align 4
  %arrayidx23.i = getelementptr %union.nft_pipapo_map_bucket, ptr %110, i32 %add10.i
  %111 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %bf.load24.i = load i32, ptr %arrayidx23.i, align 4
  %bf.clear26.i = and i32 %bf.load24.i, -256
  %bf.set27.i = or i32 %bf.clear26.i, %bf.clear17.i
  store i32 %bf.set27.i, ptr %arrayidx23.i, align 4
  %inc.i280 = add nuw nsw i32 %j.073.i, 1
  %exitcond317.not = icmp eq i32 %inc.i280, %bf.clear71.i
  br i1 %exitcond317.not, label %for.body4.i.for.inc28.i_crit_edge, label %for.body4.i.for.body4.i_crit_edge

for.body4.i.for.body4.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4.i

for.body4.i.for.inc28.i_crit_edge:                ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc28.i

for.inc28.i:                                      ; preds = %for.body4.i.for.inc28.i_crit_edge, %for.cond2.preheader.i.for.inc28.i_crit_edge
  %incdec.ptr.i = getelementptr %struct.nft_pipapo_field, ptr %f.077.i, i32 1
  %112 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %8, align 4
  %sub.i281 = add i32 %113, -1
  %cmp.i282 = icmp slt i32 %.pre.i, %sub.i281
  br i1 %cmp.i282, label %for.inc28.i.for.cond2.preheader.i_crit_edge, label %for.inc28.i.for.cond31.preheader.i_crit_edge

for.inc28.i.for.cond31.preheader.i_crit_edge:     ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond31.preheader.i

for.inc28.i.for.cond2.preheader.i_crit_edge:      ; preds = %for.inc28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond2.preheader.i

for.body36.i:                                     ; preds = %for.body36.i.for.body36.i_crit_edge, %for.body36.lr.ph.i
  %j.184.i = phi i32 [ 0, %for.body36.lr.ph.i ], [ %inc44.i, %for.body36.i.for.body36.i_crit_edge ]
  %114 = ptrtoint ptr %mt37.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %mt37.i, align 4
  %add41.i = add nuw nsw i32 %j.184.i, %bf.lshr40.i
  %arrayidx42.i = getelementptr %union.nft_pipapo_map_bucket, ptr %115, i32 %add41.i
  %116 = ptrtoint ptr %arrayidx42.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %1, ptr %arrayidx42.i, align 4
  %inc44.i = add nuw nsw i32 %j.184.i, 1
  %exitcond318.not = icmp eq i32 %inc44.i, %bf.clear3482.i
  br i1 %exitcond318.not, label %for.body36.i.cleanup157_crit_edge, label %for.body36.i.for.body36.i_crit_edge

for.body36.i.for.body36.i_crit_edge:              ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body36.i

for.body36.i.cleanup157_crit_edge:                ; preds = %for.body36.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup157

cleanup157.sink.split:                            ; preds = %if.then37.cleanup157.sink.split_crit_edge, %land.lhs.true.cleanup157.sink.split_crit_edge
  %call8.sink = phi ptr [ %call8, %land.lhs.true.cleanup157.sink.split_crit_edge ], [ %dup.0321, %if.then37.cleanup157.sink.split_crit_edge ]
  %retval.3.ph = phi i32 [ -17, %land.lhs.true.cleanup157.sink.split_crit_edge ], [ -39, %if.then37.cleanup157.sink.split_crit_edge ]
  %117 = ptrtoint ptr %ext2 to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %call8.sink, ptr %ext2, align 4
  br label %cleanup157

cleanup157:                                       ; preds = %cleanup157.sink.split, %for.body36.i.cleanup157_crit_edge, %for.cond31.preheader.i.cleanup157_crit_edge, %do.body134.cleanup157_crit_edge, %cleanup67.cleanup157_crit_edge, %for.body.cleanup157_crit_edge, %if.then37.cleanup157_crit_edge, %land.lhs.true.cleanup157_crit_edge, %if.end19.cleanup157_crit_edge
  %retval.3 = phi i32 [ -39, %land.lhs.true.cleanup157_crit_edge ], [ -39, %if.end19.cleanup157_crit_edge ], [ %call141, %do.body134.cleanup157_crit_edge ], [ %23, %if.then37.cleanup157_crit_edge ], [ 0, %for.cond31.preheader.i.cleanup157_crit_edge ], [ %retval.3.ph, %cleanup157.sink.split ], [ 0, %for.body36.i.cleanup157_crit_edge ], [ -28, %for.body.cleanup157_crit_edge ], [ -22, %cleanup67.cleanup157_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rulemap) #13
  ret i32 %retval.3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_pipapo_activate(ptr nocapture noundef readonly %net, ptr noundef %set, ptr nocapture noundef readonly %elem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @pipapo_get(ptr noundef %set, ptr noundef %elem, i8 noundef zeroext 0)
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %nft.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %0 = ptrtoint ptr %nft.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nft.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i.i.i = icmp eq i8 %1, 0
  %cond.i.i.i = zext i1 %cmp.i.i.i to i8
  %shl.i.i = shl nuw nsw i8 1, %cond.i.i.i
  %2 = ptrtoint ptr %call to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %call, align 1
  %xor1.i = xor i8 %shl.i.i, %3
  store i8 %xor1.i, ptr %call, align 1
  tail call void @_clear_bit(i32 noundef 26, ptr noundef %call) #13
  tail call fastcc void @pipapo_commit(ptr noundef %set)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nft_pipapo_deactivate(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %set, ptr nocapture noundef readonly %elem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nft.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %0 = ptrtoint ptr %nft.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nft.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i.i.i = icmp eq i8 %1, 0
  %cond.i.i.i = zext i1 %cmp.i.i.i to i8
  %shl.i.i = shl nuw nsw i8 1, %cond.i.i.i
  %call1.i = tail call fastcc ptr @pipapo_get(ptr noundef %set, ptr noundef %elem, i8 noundef zeroext %shl.i.i) #13
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.pipapo_deactivate.exit_crit_edge, label %if.end.i

entry.pipapo_deactivate.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_deactivate.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %2 = ptrtoint ptr %nft.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nft.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i.i.i = icmp eq i8 %3, 0
  %cond.i.i.i.i = zext i1 %cmp.i.i.i.i to i8
  %shl.i.i.i = shl nuw nsw i8 1, %cond.i.i.i.i
  %4 = ptrtoint ptr %call1.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %call1.i, align 1
  %xor1.i.i = xor i8 %shl.i.i.i, %5
  store i8 %xor1.i.i, ptr %call1.i, align 1
  br label %pipapo_deactivate.exit

pipapo_deactivate.exit:                           ; preds = %if.end.i, %entry.pipapo_deactivate.exit_crit_edge
  %retval.0.i = phi ptr [ %call1.i, %if.end.i ], [ null, %entry.pipapo_deactivate.exit_crit_edge ]
  ret ptr %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nft_pipapo_flush(ptr nocapture noundef readonly %net, ptr nocapture noundef readonly %set, ptr nocapture noundef readonly %elem) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx.i.i = getelementptr %struct.nft_set_ext, ptr %elem, i32 0, i32 1, i32 0
  %0 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %1 to i32
  %add.ptr.i.i = getelementptr i8, ptr %elem, i32 %conv.i.i
  %nft.i.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %2 = ptrtoint ptr %nft.i.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nft.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i.i = icmp eq i8 %3, 0
  %cond.i.i.i = zext i1 %cmp.i.i.i to i8
  %shl.i.i = shl nuw nsw i8 1, %cond.i.i.i
  %call1.i = tail call fastcc ptr @pipapo_get(ptr noundef %set, ptr noundef %add.ptr.i.i, i8 noundef zeroext %shl.i.i) #13
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.pipapo_deactivate.exit_crit_edge, label %if.end.i

entry.pipapo_deactivate.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_deactivate.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %4 = ptrtoint ptr %nft.i.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nft.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp.i.i.i.i = icmp eq i8 %5, 0
  %cond.i.i.i.i = zext i1 %cmp.i.i.i.i to i8
  %shl.i.i.i = shl nuw nsw i8 1, %cond.i.i.i.i
  %6 = ptrtoint ptr %call1.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %call1.i, align 1
  %xor1.i.i = xor i8 %shl.i.i.i, %7
  store i8 %xor1.i.i, ptr %call1.i, align 1
  %phi.cmp = icmp ne ptr %call1.i, null
  br label %pipapo_deactivate.exit

pipapo_deactivate.exit:                           ; preds = %if.end.i, %entry.pipapo_deactivate.exit_crit_edge
  %retval.0.i = phi i1 [ %phi.cmp, %if.end.i ], [ false, %entry.pipapo_deactivate.exit_crit_edge ]
  ret i1 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_pipapo_remove(ptr nocapture noundef readnone %net, ptr noundef %set, ptr nocapture noundef readonly %elem) #0 align 64 {
entry:
  %right.i = alloca [16 x i8], align 1
  %left.i = alloca [16 x i8], align 1
  %rulemap = alloca [16 x %union.nft_pipapo_map_bucket], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %clone = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  %0 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clone, align 4
  %priv1 = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %2 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv1, align 8
  %arrayidx.i.i = getelementptr %struct.nft_set_ext, ptr %3, i32 0, i32 1, i32 0
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %conv.i.i = zext i8 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 %conv.i.i
  %call3 = tail call fastcc ptr @pipapo_get(ptr noundef %set, ptr noundef %add.ptr.i.i, i8 noundef zeroext 0)
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup47_crit_edge, label %while.cond.preheader

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup47

while.cond.preheader:                             ; preds = %entry
  %f = getelementptr inbounds %struct.nft_pipapo_match, ptr %1, i32 0, i32 4
  %rules.i = getelementptr inbounds %struct.nft_pipapo_match, ptr %1, i32 1, i32 1
  %6 = ptrtoint ptr %rules.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rules.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp24.i113.not = icmp eq i32 %7, 0
  br i1 %cmp24.i113.not, label %while.cond.preheader.cleanup47_crit_edge, label %for.body.lr.ph.i.lr.ph

while.cond.preheader.cleanup47_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup47

for.body.lr.ph.i.lr.ph:                           ; preds = %while.cond.preheader
  %mt.i = getelementptr inbounds %struct.nft_pipapo_match, ptr %1, i32 2
  %arrayidx.i.i85 = getelementptr %struct.nft_set_ext, ptr %call3, i32 0, i32 1, i32 1
  br label %for.body.lr.ph.i

for.body.lr.ph.i:                                 ; preds = %cleanup.for.body.lr.ph.i_crit_edge, %for.body.lr.ph.i.lr.ph
  %first_rule.0114 = phi i32 [ 0, %for.body.lr.ph.i.lr.ph ], [ %r.026.i.pn, %cleanup.for.body.lr.ph.i_crit_edge ]
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %r.026.i = phi i32 [ %first_rule.0114, %for.body.lr.ph.i ], [ %inc.i, %if.end.i.for.body.i_crit_edge ]
  %e.025.i = phi ptr [ null, %for.body.lr.ph.i ], [ %15, %if.end.i.for.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %r.026.i, i32 %first_rule.0114)
  %cmp1.not.i = icmp eq i32 %r.026.i, %first_rule.0114
  br i1 %cmp1.not.i, label %for.body.i.if.end.i_crit_edge, label %land.lhs.true.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %for.body.i
  %8 = ptrtoint ptr %mt.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %mt.i, align 4
  %arrayidx.i = getelementptr %union.nft_pipapo_map_bucket, ptr %9, i32 %r.026.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %cmp2.not.i = icmp eq ptr %e.025.i, %11
  br i1 %cmp2.not.i, label %land.lhs.true.i.if.end.i_crit_edge, label %land.lhs.true.i.pipapo_rules_same_key.exit_crit_edge

land.lhs.true.i.pipapo_rules_same_key.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_rules_same_key.exit

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %for.body.i.if.end.i_crit_edge
  %12 = ptrtoint ptr %mt.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %mt.i, align 4
  %arrayidx4.i = getelementptr %union.nft_pipapo_map_bucket, ptr %13, i32 %r.026.i
  %14 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx4.i, align 4
  %inc.i = add i32 %r.026.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %7
  br i1 %exitcond.not.i, label %for.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %first_rule.0114)
  %cmp5.not.i = icmp eq i32 %7, %first_rule.0114
  br i1 %cmp5.not.i, label %for.end.i.cleanup47_crit_edge, label %for.end.i.pipapo_rules_same_key.exit_crit_edge

for.end.i.pipapo_rules_same_key.exit_crit_edge:   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_rules_same_key.exit

for.end.i.cleanup47_crit_edge:                    ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup47

pipapo_rules_same_key.exit:                       ; preds = %for.end.i.pipapo_rules_same_key.exit_crit_edge, %land.lhs.true.i.pipapo_rules_same_key.exit_crit_edge
  %r.026.i.pn = phi i32 [ %7, %for.end.i.pipapo_rules_same_key.exit_crit_edge ], [ %r.026.i, %land.lhs.true.i.pipapo_rules_same_key.exit_crit_edge ]
  %retval.0.i = sub i32 %r.026.i.pn, %first_rule.0114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %pipapo_rules_same_key.exit.cleanup47_crit_edge, label %while.body

pipapo_rules_same_key.exit.cleanup47_crit_edge:   ; preds = %pipapo_rules_same_key.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup47

while.body:                                       ; preds = %pipapo_rules_same_key.exit
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rulemap) #13
  %16 = call ptr @memset(ptr %rulemap, i32 255, i32 64)
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp100 = icmp sgt i32 %18, 0
  br i1 %cmp100, label %for.body.preheader, label %while.body.for.end_crit_edge

while.body.for.end_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body.preheader:                               ; preds = %while.body
  %19 = ptrtoint ptr %arrayidx.i.i85 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx.i.i85, align 1
  %conv.i.i86 = zext i8 %20 to i32
  %add.ptr.i.i87 = getelementptr i8, ptr %call3, i32 %conv.i.i86
  br label %for.body

for.body:                                         ; preds = %if.end14.for.body_crit_edge, %for.body.preheader
  %rules_fx.0108 = phi i32 [ %bf.clear22, %if.end14.for.body_crit_edge ], [ %retval.0.i, %for.body.preheader ]
  %start.0106 = phi i32 [ %bf.lshr, %if.end14.for.body_crit_edge ], [ %first_rule.0114, %for.body.preheader ]
  %i.0105 = phi i32 [ %inc, %if.end14.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %f6.0103 = phi ptr [ %incdec.ptr, %if.end14.for.body_crit_edge ], [ %f, %for.body.preheader ]
  %match_end.0102 = phi ptr [ %add.ptr34, %if.end14.for.body_crit_edge ], [ %add.ptr.i.i87, %for.body.preheader ]
  %match_start.0101 = phi ptr [ %add.ptr, %if.end14.for.body_crit_edge ], [ %add.ptr.i.i, %for.body.preheader ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %right.i) #13
  %21 = call ptr @memset(ptr %right.i, i32 0, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %left.i) #13
  %22 = call ptr @memset(ptr %left.i, i32 0, i32 16)
  %23 = ptrtoint ptr %f6.0103 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %f6.0103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp15.i.i = icmp sgt i32 %24, 0
  br i1 %cmp15.i.i, label %for.cond1.preheader.lr.ph.i.i, label %for.body.pipapo_get_boundaries.exit.i_crit_edge

for.body.pipapo_get_boundaries.exit.i_crit_edge:  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_get_boundaries.exit.i

for.cond1.preheader.lr.ph.i.i:                    ; preds = %for.body
  %bb.i.i = getelementptr inbounds %struct.nft_pipapo_field, ptr %f6.0103, i32 0, i32 3
  %lt.i.i = getelementptr inbounds %struct.nft_pipapo_field, ptr %f6.0103, i32 0, i32 4
  %bsize.i.i = getelementptr inbounds %struct.nft_pipapo_field, ptr %f6.0103, i32 0, i32 2
  %div3.i.i.i = lshr i32 %start.0106, 5
  %and.i.i.i = and i32 %start.0106, 31
  %25 = shl nuw i32 1, %and.i.i.i
  %add8.i.i = add i32 %start.0106, -1
  %sub.i.i = add i32 %add8.i.i, %rules_fx.0108
  %div3.i1.i.i = lshr i32 %sub.i.i, 5
  %and.i3.i.i = and i32 %sub.i.i, 31
  %26 = shl nuw i32 1, %and.i3.i.i
  %27 = ptrtoint ptr %bb.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bb.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %28)
  %cmp29.not.i.i = icmp eq i32 %28, 31
  %shl.i.i = shl nuw nsw i32 1, %28
  %smax.i.i = tail call i32 @llvm.smax.i32(i32 %shl.i.i, i32 1) #13
  %.neg6.i.i = sub i32 8, %28
  br label %for.cond1.preheader.i.i

for.cond1.preheader.i.i:                          ; preds = %for.end.i.i.for.cond1.preheader.i.i_crit_edge, %for.cond1.preheader.lr.ph.i.i
  %bit_offset.0.neg22.i.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i.i ], [ %bit_offset.0.neg.i.i, %for.end.i.i.for.cond1.preheader.i.i_crit_edge ]
  %r.021.i.i = phi ptr [ %right.i, %for.cond1.preheader.lr.ph.i.i ], [ %r.1.i.i, %for.end.i.i.for.cond1.preheader.i.i_crit_edge ]
  %l.020.i.i = phi ptr [ %left.i, %for.cond1.preheader.lr.ph.i.i ], [ %l.1.i.i, %for.end.i.i.for.cond1.preheader.i.i_crit_edge ]
  %bit_offset.019.i.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i.i ], [ %bit_offset.1.i.i, %for.end.i.i.for.cond1.preheader.i.i_crit_edge ]
  %g.016.i.i = phi i32 [ 0, %for.cond1.preheader.lr.ph.i.i ], [ %inc59.i.i, %for.end.i.i.for.cond1.preheader.i.i_crit_edge ]
  br i1 %cmp29.not.i.i, label %for.cond1.preheader.i.i.for.end.i.i_crit_edge, label %for.body3.lr.ph.i.i

for.cond1.preheader.i.i.for.end.i.i_crit_edge:    ; preds = %for.cond1.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.body3.lr.ph.i.i:                              ; preds = %for.cond1.preheader.i.i
  %29 = ptrtoint ptr %lt.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lt.i.i, align 4
  %mul.i.i = shl i32 %g.016.i.i, %28
  %31 = ptrtoint ptr %bsize.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bsize.i.i, align 4
  br label %for.body3.i.i

for.body3.i.i:                                    ; preds = %for.body3.i.i.for.body3.i.i_crit_edge, %for.body3.lr.ph.i.i
  %x1.012.i.i = phi i32 [ -1, %for.body3.lr.ph.i.i ], [ %x1.1.i.i, %for.body3.i.i.for.body3.i.i_crit_edge ]
  %x0.011.i.i = phi i32 [ -1, %for.body3.lr.ph.i.i ], [ %x0.1.i.i, %for.body3.i.i.for.body3.i.i_crit_edge ]
  %b.010.i.i = phi i32 [ 0, %for.body3.lr.ph.i.i ], [ %inc.i.i, %for.body3.i.i.for.body3.i.i_crit_edge ]
  %add.i.i = add i32 %b.010.i.i, %mul.i.i
  %mul6.i.i = mul i32 %add.i.i, %32
  %add.ptr.i.i88 = getelementptr i32, ptr %30, i32 %mul6.i.i
  %arrayidx.i.i.i = getelementptr i32, ptr %add.ptr.i.i88, i32 %div3.i.i.i
  %33 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile i32, ptr %arrayidx.i.i.i, align 4
  %35 = and i32 %34, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool.not.i.i = icmp ne i32 %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %x0.011.i.i)
  %cmp7.i.i = icmp eq i32 %x0.011.i.i, -1
  %or.cond.i.i = select i1 %tobool.not.i.i, i1 %cmp7.i.i, i1 false
  %x0.1.i.i = select i1 %or.cond.i.i, i32 %b.010.i.i, i32 %x0.011.i.i
  %arrayidx.i2.i.i = getelementptr i32, ptr %add.ptr.i.i88, i32 %div3.i1.i.i
  %36 = ptrtoint ptr %arrayidx.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile i32, ptr %arrayidx.i2.i.i, align 4
  %38 = and i32 %37, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool10.not.i.i = icmp eq i32 %38, 0
  %x1.1.i.i = select i1 %tobool10.not.i.i, i32 %x1.012.i.i, i32 %b.010.i.i
  %inc.i.i = add nuw nsw i32 %b.010.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %smax.i.i
  br i1 %exitcond.not.i.i, label %for.body3.i.i.for.end.i.i_crit_edge, label %for.body3.i.i.for.body3.i.i_crit_edge

for.body3.i.i.for.body3.i.i_crit_edge:            ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body3.i.i

for.body3.i.i.for.end.i.i_crit_edge:              ; preds = %for.body3.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i.i

for.end.i.i:                                      ; preds = %for.body3.i.i.for.end.i.i_crit_edge, %for.cond1.preheader.i.i.for.end.i.i_crit_edge
  %x0.0.lcssa.i.i = phi i32 [ -1, %for.cond1.preheader.i.i.for.end.i.i_crit_edge ], [ %x0.1.i.i, %for.body3.i.i.for.end.i.i_crit_edge ]
  %x1.0.lcssa.i.i = phi i32 [ -1, %for.cond1.preheader.i.i.for.end.i.i_crit_edge ], [ %x1.1.i.i, %for.body3.i.i.for.end.i.i_crit_edge ]
  %sub15.i.i = add i32 %.neg6.i.i, %bit_offset.0.neg22.i.i
  %shl16.i.i = shl i32 %x0.0.lcssa.i.i, %sub15.i.i
  %39 = ptrtoint ptr %l.020.i.i to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %l.020.i.i, align 1
  %41 = trunc i32 %shl16.i.i to i8
  %conv17.i.i = or i8 %40, %41
  store i8 %conv17.i.i, ptr %l.020.i.i, align 1
  %shl21.i.i = shl i32 %x1.0.lcssa.i.i, %sub15.i.i
  %42 = ptrtoint ptr %r.021.i.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %r.021.i.i, align 1
  %44 = trunc i32 %shl21.i.i to i8
  %conv24.i.i = or i8 %43, %44
  store i8 %conv24.i.i, ptr %r.021.i.i, align 1
  %add26.i.i = add i32 %bit_offset.019.i.i, %28
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %add26.i.i)
  %cmp27.i.i = icmp sgt i32 %add26.i.i, 7
  %rem.i.i = srem i32 %add26.i.i, 8
  %bit_offset.1.i.i = select i1 %cmp27.i.i, i32 %rem.i.i, i32 %add26.i.i
  %l.1.idx.i.i = zext i1 %cmp27.i.i to i32
  %l.1.i.i = getelementptr i8, ptr %l.020.i.i, i32 %l.1.idx.i.i
  %r.1.i.i = getelementptr i8, ptr %r.021.i.i, i32 %l.1.idx.i.i
  %inc59.i.i = add nuw nsw i32 %g.016.i.i, 1
  %bit_offset.0.neg.i.i = sub i32 0, %bit_offset.1.i.i
  %exitcond.not.i89 = icmp eq i32 %inc59.i.i, %24
  br i1 %exitcond.not.i89, label %for.end.i.i.pipapo_get_boundaries.exit.i_crit_edge, label %for.end.i.i.for.cond1.preheader.i.i_crit_edge

for.end.i.i.for.cond1.preheader.i.i_crit_edge:    ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond1.preheader.i.i

for.end.i.i.pipapo_get_boundaries.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_get_boundaries.exit.i

pipapo_get_boundaries.exit.i:                     ; preds = %for.end.i.i.pipapo_get_boundaries.exit.i_crit_edge, %for.body.pipapo_get_boundaries.exit.i_crit_edge
  %bb.i = getelementptr inbounds %struct.nft_pipapo_field, ptr %f6.0103, i32 0, i32 3
  %45 = ptrtoint ptr %bb.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %bb.i, align 4
  %div.i = sdiv i32 8, %46
  %div3.i = sdiv i32 %24, %div.i
  %bcmp.i = call i32 @bcmp(ptr %match_start.0101, ptr nonnull %left.i, i32 %div3.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool.not.i, label %pipapo_match_field.exit, label %pipapo_match_field.exit.thread

pipapo_match_field.exit.thread:                   ; preds = %pipapo_get_boundaries.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %left.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %right.i) #13
  br label %for.end

pipapo_match_field.exit:                          ; preds = %pipapo_get_boundaries.exit.i
  %bcmp16.i = call i32 @bcmp(ptr %match_end.0102, ptr nonnull %right.i, i32 %div3.i) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp16.i)
  %tobool11.not.i = icmp eq i32 %bcmp16.i, 0
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %left.i) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %right.i) #13
  br i1 %tobool11.not.i, label %if.end14, label %pipapo_match_field.exit.for.end_crit_edge

pipapo_match_field.exit.for.end_crit_edge:        ; preds = %pipapo_match_field.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

if.end14:                                         ; preds = %pipapo_match_field.exit
  %arrayidx = getelementptr [16 x %union.nft_pipapo_map_bucket], ptr %rulemap, i32 0, i32 %i.0105
  %bf.shl = shl i32 %start.0106, 8
  %bf.value17 = and i32 %rules_fx.0108, 255
  %bf.set19 = or i32 %bf.value17, %bf.shl
  %47 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %bf.set19, ptr %arrayidx, align 4
  %mt = getelementptr inbounds %struct.nft_pipapo_field, ptr %f6.0103, i32 0, i32 5
  %48 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %mt, align 4
  %arrayidx20 = getelementptr %union.nft_pipapo_map_bucket, ptr %49, i32 %start.0106
  %50 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %50)
  %bf.load21 = load i32, ptr %arrayidx20, align 4
  %bf.clear22 = and i32 %bf.load21, 255
  %bf.lshr = lshr i32 %bf.load21, 8
  %sub = add i32 %div3.i, -1
  %or = or i32 %sub, 3
  %add = add i32 %or, 1
  %add.ptr = getelementptr i8, ptr %match_start.0101, i32 %add
  %add.ptr34 = getelementptr i8, ptr %match_end.0102, i32 %add
  %inc = add nuw nsw i32 %i.0105, 1
  %incdec.ptr = getelementptr %struct.nft_pipapo_field, ptr %f6.0103, i32 1
  %exitcond.not = icmp eq i32 %inc, %18
  br i1 %exitcond.not, label %if.end14.cleanup.thread_crit_edge, label %if.end14.for.body_crit_edge

if.end14.for.body_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

if.end14.cleanup.thread_crit_edge:                ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

for.end:                                          ; preds = %pipapo_match_field.exit.for.end_crit_edge, %pipapo_match_field.exit.thread, %while.body.for.end_crit_edge
  %i.099 = phi i32 [ %i.0105, %pipapo_match_field.exit.thread ], [ 0, %while.body.for.end_crit_edge ], [ %i.0105, %pipapo_match_field.exit.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.099, i32 %18)
  %cmp36 = icmp eq i32 %i.099, %18
  br i1 %cmp36, label %for.end.cleanup.thread_crit_edge, label %cleanup

for.end.cleanup.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %for.end.cleanup.thread_crit_edge, %if.end14.cleanup.thread_crit_edge
  %dirty = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 12
  %51 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %51)
  store i8 1, ptr %dirty, align 4
  call fastcc void @pipapo_drop(ptr noundef %1, ptr noundef nonnull %rulemap)
  tail call fastcc void @pipapo_commit(ptr noundef %set)
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rulemap) #13
  br label %cleanup47

cleanup:                                          ; preds = %for.end
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rulemap) #13
  %cmp24.i = icmp ugt i32 %7, %r.026.i.pn
  br i1 %cmp24.i, label %cleanup.for.body.lr.ph.i_crit_edge, label %cleanup.cleanup47_crit_edge

cleanup.cleanup47_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup47

cleanup.for.body.lr.ph.i_crit_edge:               ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.lr.ph.i

cleanup47:                                        ; preds = %cleanup.cleanup47_crit_edge, %cleanup.thread, %pipapo_rules_same_key.exit.cleanup47_crit_edge, %for.end.i.cleanup47_crit_edge, %while.cond.preheader.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_pipapo_walk(ptr noundef %ctx, ptr noundef %set, ptr noundef %iter) #0 align 64 {
entry:
  %elem = alloca %struct.nft_set_elem, align 8
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %0 = tail call i32 @llvm.read_register.i32(metadata !20) #13
  %and.i.i.i.i.i = and i32 %0, -16384
  %1 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %3, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #13, !srcloc !39
  tail call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #13
  %call.i = tail call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i, label %entry.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

entry.rcu_read_lock.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %entry
  %call1.i = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 696, ptr noundef nonnull @.str.3) #13
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %entry.rcu_read_lock.exit_crit_edge
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %data.i, align 4
  %call2 = tail call i32 @rcu_read_lock_held() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %rcu_read_lock.exit.do.end8_crit_edge

rcu_read_lock.exit.do.end8_crit_edge:             ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

land.lhs.true:                                    ; preds = %rcu_read_lock.exit
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end8_crit_edge, label %land.lhs.true5

land.lhs.true.do.end8_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b70 = load i1, ptr @nft_pipapo_walk.__warned, align 1
  br i1 %.b70, label %land.lhs.true5.do.end8_crit_edge, label %if.then

land.lhs.true5.do.end8_crit_edge:                 ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.end8

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @nft_pipapo_walk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 1960, ptr noundef nonnull @.str.1) #13
  br label %do.end8

do.end8:                                          ; preds = %if.then, %land.lhs.true5.do.end8_crit_edge, %land.lhs.true.do.end8_crit_edge, %rcu_read_lock.exit.do.end8_crit_edge
  %tobool10.not = icmp eq ptr %5, null
  br i1 %tobool10.not, label %do.end8.out_crit_edge, label %if.end15, !prof !33

do.end8.out_crit_edge:                            ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end15:                                         ; preds = %do.end8
  %f16 = getelementptr inbounds %struct.nft_pipapo_match, ptr %5, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  %sub = add i32 %7, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp84 = icmp sgt i32 %sub, 0
  %8 = mul i32 %7, 24
  %9 = add i32 %8, -4
  %uglygep = getelementptr i8, ptr %5, i32 %9
  %f.0.lcssa = select i1 %cmp84, ptr %uglygep, ptr %f16
  %rules = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0.lcssa, i32 0, i32 1
  %10 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %rules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1887.not = icmp eq i32 %11, 0
  br i1 %cmp1887.not, label %if.end15.out_crit_edge, label %for.body19.lr.ph

if.end15.out_crit_edge:                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body19.lr.ph:                                 ; preds = %if.end15
  %mt = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0.lcssa, i32 0, i32 5
  %count = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 1
  %skip = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 2
  %priv37 = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %fn = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 4
  %err = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 3
  br label %for.body19

for.body19:                                       ; preds = %for.inc46.for.body19_crit_edge, %for.body19.lr.ph
  %r.088 = phi i32 [ 0, %for.body19.lr.ph ], [ %inc47.pre-phi, %for.inc46.for.body19_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %elem) #13
  %12 = call ptr @memset(ptr %elem, i32 255, i32 200)
  %13 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %rules, align 4
  %sub21 = add i32 %14, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %r.088, i32 %sub21)
  %cmp22 = icmp ult i32 %r.088, %sub21
  br i1 %cmp22, label %land.lhs.true23, label %for.body19.if.end28_crit_edge

for.body19.if.end28_crit_edge:                    ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

land.lhs.true23:                                  ; preds = %for.body19
  %15 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mt, align 4
  %add = add nuw i32 %r.088, 1
  %arrayidx = getelementptr %union.nft_pipapo_map_bucket, ptr %16, i32 %add
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx, align 4
  %arrayidx25 = getelementptr %union.nft_pipapo_map_bucket, ptr %16, i32 %r.088
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx25, align 4
  %cmp26 = icmp eq ptr %18, %20
  br i1 %cmp26, label %land.lhs.true23.for.inc46_crit_edge, label %land.lhs.true23.if.end28_crit_edge

land.lhs.true23.if.end28_crit_edge:               ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end28

land.lhs.true23.for.inc46_crit_edge:              ; preds = %land.lhs.true23
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc46

if.end28:                                         ; preds = %land.lhs.true23.if.end28_crit_edge, %for.body19.if.end28_crit_edge
  %21 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count, align 4
  %23 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp29 = icmp ult i32 %22, %24
  br i1 %cmp29, label %if.end28.cont_crit_edge, label %if.end31

if.end28.cont_crit_edge:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %cont

if.end31:                                         ; preds = %if.end28
  %25 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %mt, align 4
  %arrayidx33 = getelementptr %union.nft_pipapo_map_bucket, ptr %26, i32 %r.088
  %27 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx33, align 4
  %tobool.not.i.i = icmp eq ptr %28, null
  br i1 %tobool.not.i.i, label %if.end31.if.end36_crit_edge, label %nft_set_ext_exists.exit.i

if.end31.if.end36_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

nft_set_ext_exists.exit.i:                        ; preds = %if.end31
  %arrayidx.i.i.i = getelementptr %struct.nft_set_ext, ptr %28, i32 0, i32 1, i32 5
  %29 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.i.i.not.i = icmp eq i8 %30, 0
  br i1 %tobool.i.i.not.i, label %nft_set_ext_exists.exit.i.if.end36_crit_edge, label %nft_set_elem_expired.exit

nft_set_ext_exists.exit.i.if.end36_crit_edge:     ; preds = %nft_set_ext_exists.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

nft_set_elem_expired.exit:                        ; preds = %nft_set_ext_exists.exit.i
  %call1.i71 = call i64 @get_jiffies_64() #13
  %31 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %32 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 %conv.i.i.i
  %33 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load8_noabort(i32 %33)
  %34 = load i64, ptr %add.ptr.i.i.i, align 8
  %sub.i = sub i64 %call1.i71, %34
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i)
  %cmp.i = icmp sgt i64 %sub.i, -1
  br i1 %cmp.i, label %nft_set_elem_expired.exit.cont_crit_edge, label %nft_set_elem_expired.exit.if.end36_crit_edge

nft_set_elem_expired.exit.if.end36_crit_edge:     ; preds = %nft_set_elem_expired.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end36

nft_set_elem_expired.exit.cont_crit_edge:         ; preds = %nft_set_elem_expired.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %cont

if.end36:                                         ; preds = %nft_set_elem_expired.exit.if.end36_crit_edge, %nft_set_ext_exists.exit.i.if.end36_crit_edge, %if.end31.if.end36_crit_edge
  %35 = ptrtoint ptr %priv37 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %28, ptr %priv37, align 8
  %36 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %fn, align 4
  %call38 = call i32 %37(ptr noundef %ctx, ptr noundef %set, ptr noundef %iter, ptr noundef nonnull %elem) #13
  %38 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call38, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp40 = icmp slt i32 %call38, 0
  br i1 %cmp40, label %cleanup, label %if.end36.cont_crit_edge

if.end36.cont_crit_edge:                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  br label %cont

cont:                                             ; preds = %if.end36.cont_crit_edge, %nft_set_elem_expired.exit.cont_crit_edge, %if.end28.cont_crit_edge
  %39 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %count, align 4
  %inc44 = add i32 %40, 1
  store i32 %inc44, ptr %count, align 4
  %.pre = add nuw i32 %r.088, 1
  br label %for.inc46

cleanup:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %elem) #13
  br label %out

for.inc46:                                        ; preds = %cont, %land.lhs.true23.for.inc46_crit_edge
  %inc47.pre-phi = phi i32 [ %.pre, %cont ], [ %add, %land.lhs.true23.for.inc46_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %elem) #13
  %41 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %rules, align 4
  %cmp18 = icmp ult i32 %inc47.pre-phi, %42
  br i1 %cmp18, label %for.inc46.for.body19_crit_edge, label %for.inc46.out_crit_edge

for.inc46.out_crit_edge:                          ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.inc46.for.body19_crit_edge:                   ; preds = %for.inc46
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body19

out:                                              ; preds = %for.inc46.out_crit_edge, %cleanup, %if.end15.out_crit_edge, %do.end8.out_crit_edge
  %call.i72 = call zeroext i1 @rcu_is_watching() #13
  br i1 %call.i72, label %out.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i75

out.rcu_read_unlock.exit_crit_edge:               ; preds = %out
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true.i75:                                ; preds = %out
  %call1.i73 = call i32 @debug_lockdep_rcu_enabled() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i73)
  %tobool.not.i74 = icmp eq i32 %call1.i73, 0
  br i1 %tobool.not.i74, label %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i77

land.lhs.true.i75.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i75
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

land.lhs.true2.i77:                               ; preds = %land.lhs.true.i75
  %.b4.i76 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i76, label %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, label %if.then.i78

land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #15
  br label %rcu_read_unlock.exit

if.then.i78:                                      ; preds = %land.lhs.true2.i77
  call void @__sanitizer_cov_trace_pc() #15
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.2, i32 noundef 724, ptr noundef nonnull @.str.4) #13
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i78, %land.lhs.true2.i77.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i75.rcu_read_unlock.exit_crit_edge, %out.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #13, !srcloc !40
  %43 = call i32 @llvm.read_register.i32(metadata !20) #13
  %and.i.i.i.i.i79 = and i32 %43, -16384
  %44 = inttoptr i32 %and.i.i.i.i.i79 to ptr
  %preempt_count.i.i.i.i80 = getelementptr inbounds %struct.thread_info, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %preempt_count.i.i.i.i80 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %preempt_count.i.i.i.i80, align 4
  %sub.i.i.i = add i32 %46, -1
  store volatile i32 %sub.i.i.i, ptr %preempt_count.i.i.i.i80, align 4
  call void @rcu_read_unlock_strict() #13
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #13
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nft_pipapo_get(ptr noundef %net, ptr nocapture noundef readonly %set, ptr nocapture noundef readonly %elem, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %nft.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %0 = ptrtoint ptr %nft.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %nft.i, align 4
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i8
  %call1 = tail call fastcc ptr @pipapo_get(ptr noundef %set, ptr noundef %elem, i8 noundef zeroext %conv1.i)
  ret ptr %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @nft_pipapo_privsize(ptr nocapture noundef readnone %nla, ptr nocapture noundef readnone %desc) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  ret i64 20
}

; Function Attrs: argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nft_pipapo_estimate(ptr nocapture noundef readonly %desc, i32 noundef %features, ptr nocapture noundef writeonly %est) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %features, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

lor.lhs.false:                                    ; preds = %entry
  %field_count = getelementptr inbounds %struct.nft_set_desc, ptr %desc, i32 0, i32 4
  %0 = ptrtoint ptr %field_count to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %field_count, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp ult i8 %1, 2
  br i1 %cmp, label %lor.lhs.false.return_crit_edge, label %if.end

lor.lhs.false.return_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %return

if.end:                                           ; preds = %lor.lhs.false
  %conv.i = zext i8 %1 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %if.end
  %i.081.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end ]
  %entry_size.080.i = phi i32 [ %add30.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %if.end ]
  %arrayidx.i = getelementptr %struct.nft_set_desc, ptr %desc, i32 0, i32 3, i32 %i.081.i
  %2 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %3)
  %cmp3.i = icmp ugt i8 %3, 16
  br i1 %cmp3.i, label %for.body.i.pipapo_estimate_size.exit.thread_crit_edge, label %for.inc.i

for.body.i.pipapo_estimate_size.exit.thread_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_estimate_size.exit.thread

for.inc.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp12.i = icmp eq i8 %3, 0
  %conv2.i = zext i8 %3 to i32
  %mul.i = shl nuw nsw i32 %conv2.i, 3
  %4 = tail call i32 @llvm.ctlz.i32(i32 %mul.i, i1 true) #13, !range !30
  %sub.i.op.i.i = xor i32 %4, 31
  %sub.i.i = select i1 %cmp12.i, i32 -1, i32 %sub.i.op.i.i
  %5 = shl nsw i32 %sub.i.i, 6
  %div73.i = and i32 %5, 536870848
  %mul29.i = shl nsw i32 %sub.i.i, 3
  %add.i = add i32 %mul29.i, %entry_size.080.i
  %add30.i = add i32 %add.i, %div73.i
  %inc.i = add nuw nsw i32 %i.081.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %conv.i
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end.i:                                        ; preds = %for.inc.i
  %size31.i = getelementptr inbounds %struct.nft_set_desc, ptr %desc, i32 0, i32 2
  %6 = ptrtoint ptr %size31.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %size31.i, align 4
  %mul = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 %add30.i)
  %mul.val = extractvalue { i32, i1 } %mul, 0
  %mul.ov = extractvalue { i32, i1 } %mul, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.val)
  %tobool.not.i = icmp ne i32 %mul.val, 0
  %8 = and i1 %mul.ov, %tobool.not.i
  br i1 %8, label %for.end.i.pipapo_estimate_size.exit.thread_crit_edge, label %pipapo_estimate_size.exit

for.end.i.pipapo_estimate_size.exit.thread_crit_edge: ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_estimate_size.exit.thread

pipapo_estimate_size.exit.thread:                 ; preds = %for.end.i.pipapo_estimate_size.exit.thread_crit_edge, %for.body.i.pipapo_estimate_size.exit.thread_crit_edge
  %9 = ptrtoint ptr %est to i32
  call void @__asan_store8_noabort(i32 %9)
  store i64 0, ptr %est, align 8
  br label %return

pipapo_estimate_size.exit:                        ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  %conv33.i = zext i32 %mul.val to i64
  %mul44.i = mul nuw nsw i32 %conv.i, 24
  %narrow.i = add nuw nsw i32 %mul44.i, 60
  %add41.i = zext i32 %narrow.i to i64
  %add46.i = add nuw nsw i64 %conv33.i, %add41.i
  %10 = ptrtoint ptr %est to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 %add46.i, ptr %est, align 8
  %lookup = getelementptr inbounds %struct.nft_set_estimate, ptr %est, i32 0, i32 1
  %11 = ptrtoint ptr %lookup to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %lookup, align 8
  %space = getelementptr inbounds %struct.nft_set_estimate, ptr %est, i32 0, i32 2
  %12 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %space, align 4
  br label %return

return:                                           ; preds = %pipapo_estimate_size.exit, %pipapo_estimate_size.exit.thread, %lor.lhs.false.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %pipapo_estimate_size.exit ], [ false, %lor.lhs.false.return_crit_edge ], [ false, %entry.return_crit_edge ], [ false, %pipapo_estimate_size.exit.thread ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_pipapo_init(ptr noundef %set, ptr nocapture noundef readonly %desc, ptr nocapture noundef readnone %nla) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %field_count1 = getelementptr inbounds %struct.nft_set_desc, ptr %desc, i32 0, i32 4
  %0 = ptrtoint ptr %field_count1 to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %field_count1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  %narrow = select i1 %tobool.not, i8 1, i8 %1
  %conv. = zext i8 %narrow to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %narrow)
  %cmp = icmp ugt i8 %narrow, 16
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end8.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8.i:                                        ; preds = %entry
  %mul = mul nuw nsw i32 %conv., 24
  %add = add nuw nsw i32 %mul, 20
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #18
  %tobool4.not = icmp eq ptr %call9.i, null
  br i1 %tobool4.not, label %if.end8.i.cleanup_crit_edge, label %if.end6

if.end8.i.cleanup_crit_edge:                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end6:                                          ; preds = %if.end8.i
  %2 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %conv., ptr %call9.i, align 128
  %bsize_max = getelementptr inbounds %struct.nft_pipapo_match, ptr %call9.i, i32 0, i32 2
  %3 = ptrtoint ptr %bsize_max to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %bsize_max, align 8
  %call8 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %scratch = getelementptr inbounds %struct.nft_pipapo_match, ptr %call9.i, i32 0, i32 1
  %4 = ptrtoint ptr %scratch to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %scratch, align 4
  %tobool10.not = icmp eq ptr %call8, null
  br i1 %tobool10.not, label %if.end6.out_scratch_crit_edge, label %for.cond.preheader

if.end6.out_scratch_crit_edge:                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_scratch

for.cond.preheader:                               ; preds = %if.end6
  %call13124 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %5 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call13124, i32 %5)
  %cmp14125 = icmp ult i32 %call13124, %5
  br i1 %cmp14125, label %for.cond.preheader.do.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %call13126 = phi i32 [ %call13, %do.body.do.body_crit_edge ], [ %call13124, %for.cond.preheader.do.body_crit_edge ]
  %6 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %scratch, align 4
  %8 = ptrtoint ptr %7 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call13126
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %add18 = add i32 %10, %8
  %11 = inttoptr i32 %add18 to ptr
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %11, align 4
  %call13 = tail call i32 @cpumask_next(i32 noundef %call13126, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %13 = load i32, ptr @nr_cpu_ids, align 4
  %cmp14 = icmp ult i32 %call13, %13
  br i1 %cmp14, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %func.i = getelementptr inbounds %struct.nft_pipapo_match, ptr %call9.i, i32 0, i32 3, i32 1
  %14 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 -1 to ptr), ptr %func.i, align 16
  %15 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call9.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp22127 = icmp sgt i32 %16, 0
  br i1 %cmp22127, label %for.body24.lr.ph, label %for.end.for.end37_crit_edge

for.end.for.end37_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end37

for.body24.lr.ph:                                 ; preds = %for.end
  %f19 = getelementptr inbounds %struct.nft_pipapo_match, ptr %call9.i, i32 0, i32 4
  %klen = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %width = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 8
  br label %for.body24

for.body24:                                       ; preds = %cond.end31.for.body24_crit_edge, %for.body24.lr.ph
  %f.0129 = phi ptr [ %f19, %for.body24.lr.ph ], [ %incdec.ptr, %cond.end31.for.body24_crit_edge ]
  %i.1128 = phi i32 [ 0, %for.body24.lr.ph ], [ %inc, %cond.end31.for.body24_crit_edge ]
  %arrayidx25 = getelementptr %struct.nft_set_desc, ptr %desc, i32 0, i32 3, i32 %i.1128
  %17 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx25, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool27.not = icmp eq i8 %18, 0
  br i1 %tobool27.not, label %cond.false29, label %for.body24.cond.end31_crit_edge

for.body24.cond.end31_crit_edge:                  ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #15
  br label %cond.end31

cond.false29:                                     ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #15
  %19 = ptrtoint ptr %klen to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %klen, align 2
  br label %cond.end31

cond.end31:                                       ; preds = %cond.false29, %for.body24.cond.end31_crit_edge
  %cond32.in = phi i8 [ %20, %cond.false29 ], [ %18, %for.body24.cond.end31_crit_edge ]
  %cond32 = zext i8 %cond32.in to i32
  %bb = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0129, i32 0, i32 3
  %21 = ptrtoint ptr %bb to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %bb, align 4
  %22 = ptrtoint ptr %f.0129 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %cond32, ptr %f.0129, align 4
  %sub = add nsw i32 %cond32, -1
  %or = or i32 %sub, 3
  %add35 = add nsw i32 %or, 1
  %23 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %width, align 4
  %add36 = add i32 %add35, %24
  store i32 %add36, ptr %width, align 4
  %bsize = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0129, i32 0, i32 2
  %25 = ptrtoint ptr %bsize to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %bsize, align 4
  %rules = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0129, i32 0, i32 1
  %26 = ptrtoint ptr %rules to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %rules, align 4
  %lt = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0129, i32 0, i32 4
  %27 = ptrtoint ptr %lt to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %lt, align 4
  %mt = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0129, i32 0, i32 5
  %28 = ptrtoint ptr %mt to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %mt, align 4
  %inc = add nuw nsw i32 %i.1128, 1
  %incdec.ptr = getelementptr %struct.nft_pipapo_field, ptr %f.0129, i32 1
  %29 = ptrtoint ptr %call9.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %call9.i, align 128
  %cmp22 = icmp slt i32 %inc, %30
  br i1 %cmp22, label %cond.end31.for.body24_crit_edge, label %cond.end31.for.end37_crit_edge

cond.end31.for.end37_crit_edge:                   ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end37

cond.end31.for.body24_crit_edge:                  ; preds = %cond.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

for.end37:                                        ; preds = %cond.end31.for.end37_crit_edge, %for.end.for.end37_crit_edge
  %call38 = tail call fastcc ptr @pipapo_clone(ptr noundef nonnull %call9.i)
  %clone = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  %31 = ptrtoint ptr %clone to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call38, ptr %clone, align 4
  %cmp.i123 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i123, label %if.then41, label %if.end44

if.then41:                                        ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #15
  %32 = ptrtoint ptr %call38 to i32
  %33 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %scratch, align 4
  tail call void @free_percpu(ptr noundef %34) #13
  br label %out_scratch

if.end44:                                         ; preds = %for.end37
  call void @__sanitizer_cov_trace_pc() #15
  %dirty = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 12
  %35 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %dirty, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !41
  %36 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %call9.i, ptr %data.i, align 4
  br label %cleanup

out_scratch:                                      ; preds = %if.then41, %if.end6.out_scratch_crit_edge
  %err.0 = phi i32 [ %32, %if.then41 ], [ -12, %if.end6.out_scratch_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %cleanup

cleanup:                                          ; preds = %out_scratch, %if.end44, %if.end8.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %out_scratch ], [ 0, %if.end44 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end8.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_pipapo_destroy(ptr noundef %set) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end31_crit_edge, label %if.then

entry.if.end31_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end31

if.then:                                          ; preds = %entry
  tail call void @rcu_barrier() #13
  %f1 = getelementptr inbounds %struct.nft_pipapo_match, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp99 = icmp sgt i32 %sub, 0
  %4 = mul i32 %3, 24
  %5 = add i32 %4, -4
  %uglygep = getelementptr i8, ptr %1, i32 %5
  %f.0.lcssa = select i1 %cmp99, ptr %uglygep, ptr %f1
  %rules = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0.lcssa, i32 0, i32 1
  %6 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %rules, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3102.not = icmp eq i32 %7, 0
  br i1 %cmp3102.not, label %if.then.for.cond17.preheader_crit_edge, label %for.body4.lr.ph

if.then.for.cond17.preheader_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond17.preheader

for.body4.lr.ph:                                  ; preds = %if.then
  %mt = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0.lcssa, i32 0, i32 5
  br label %for.body4

for.cond17.preheader:                             ; preds = %cleanup.for.cond17.preheader_crit_edge, %if.then.for.cond17.preheader_crit_edge
  %call18106 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %8 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call18106, i32 %8)
  %cmp19107 = icmp ult i32 %call18106, %8
  br i1 %cmp19107, label %do.body21.lr.ph, label %for.cond17.preheader.for.end28_crit_edge

for.cond17.preheader.for.end28_crit_edge:         ; preds = %for.cond17.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end28

do.body21.lr.ph:                                  ; preds = %for.cond17.preheader
  %scratch = getelementptr inbounds %struct.nft_pipapo_match, ptr %1, i32 0, i32 1
  br label %do.body21

for.body4:                                        ; preds = %cleanup.for.body4_crit_edge, %for.body4.lr.ph
  %9 = phi i32 [ %7, %for.body4.lr.ph ], [ %21, %cleanup.for.body4_crit_edge ]
  %r.0103 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc15.pre-phi, %cleanup.for.body4_crit_edge ]
  %sub6 = add i32 %9, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %r.0103, i32 %sub6)
  %cmp7 = icmp ult i32 %r.0103, %sub6
  br i1 %cmp7, label %land.lhs.true, label %for.body4.if.end_crit_edge

for.body4.if.end_crit_edge:                       ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #15
  %.pre112 = add nuw i32 %r.0103, 1
  br label %if.end

land.lhs.true:                                    ; preds = %for.body4
  %10 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %mt, align 4
  %add = add nuw i32 %r.0103, 1
  %arrayidx = getelementptr %union.nft_pipapo_map_bucket, ptr %11, i32 %add
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx, align 4
  %arrayidx9 = getelementptr %union.nft_pipapo_map_bucket, ptr %11, i32 %r.0103
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9, align 4
  %cmp10 = icmp eq ptr %13, %15
  br i1 %cmp10, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %for.body4.if.end_crit_edge
  %.pre.pre-phi = phi i32 [ %.pre112, %for.body4.if.end_crit_edge ], [ %add, %land.lhs.true.if.end_crit_edge ]
  %16 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mt, align 4
  %arrayidx13 = getelementptr %union.nft_pipapo_map_bucket, ptr %17, i32 %r.0103
  %18 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx13, align 4
  tail call void @nft_set_elem_destroy(ptr noundef %set, ptr noundef %19, i1 noundef zeroext true) #13
  br label %cleanup

cleanup:                                          ; preds = %if.end, %land.lhs.true.cleanup_crit_edge
  %inc15.pre-phi = phi i32 [ %add, %land.lhs.true.cleanup_crit_edge ], [ %.pre.pre-phi, %if.end ]
  %20 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %rules, align 4
  %cmp3 = icmp ult i32 %inc15.pre-phi, %21
  br i1 %cmp3, label %cleanup.for.body4_crit_edge, label %cleanup.for.cond17.preheader_crit_edge

cleanup.for.cond17.preheader_crit_edge:           ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond17.preheader

cleanup.for.body4_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4

do.body21:                                        ; preds = %do.body21.do.body21_crit_edge, %do.body21.lr.ph
  %call18108 = phi i32 [ %call18106, %do.body21.lr.ph ], [ %call18, %do.body21.do.body21_crit_edge ]
  %22 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %scratch, align 4
  %24 = ptrtoint ptr %23 to i32
  %arrayidx26 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call18108
  %25 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx26, align 4
  %add27 = add i32 %26, %24
  %27 = inttoptr i32 %add27 to ptr
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %27, align 4
  tail call void @kfree(ptr noundef %29) #13
  %call18 = tail call i32 @cpumask_next(i32 noundef %call18108, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %30 = load i32, ptr @nr_cpu_ids, align 4
  %cmp19 = icmp ult i32 %call18, %30
  br i1 %cmp19, label %do.body21.do.body21_crit_edge, label %do.body21.for.end28_crit_edge

do.body21.for.end28_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end28

do.body21.do.body21_crit_edge:                    ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body21

for.end28:                                        ; preds = %do.body21.for.end28_crit_edge, %for.cond17.preheader.for.end28_crit_edge
  %scratch29 = getelementptr inbounds %struct.nft_pipapo_match, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %scratch29 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %scratch29, align 4
  tail call void @free_percpu(ptr noundef %32) #13
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp6.i = icmp sgt i32 %34, 0
  br i1 %cmp6.i, label %for.end28.for.body.i_crit_edge, label %for.end28.pipapo_free_fields.exit_crit_edge

for.end28.pipapo_free_fields.exit_crit_edge:      ; preds = %for.end28
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_free_fields.exit

for.end28.for.body.i_crit_edge:                   ; preds = %for.end28
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end28.for.body.i_crit_edge
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end28.for.body.i_crit_edge ]
  %f.07.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %f1, %for.end28.for.body.i_crit_edge ]
  %lt.i = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.07.i, i32 0, i32 4
  %35 = ptrtoint ptr %lt.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lt.i, align 4
  tail call void @kvfree(ptr noundef %36) #13
  %mt.i = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.07.i, i32 0, i32 5
  %37 = ptrtoint ptr %mt.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %mt.i, align 4
  tail call void @kvfree(ptr noundef %38) #13
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %incdec.ptr.i = getelementptr %struct.nft_pipapo_field, ptr %f.07.i, i32 1
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %1, align 4
  %cmp.i = icmp slt i32 %inc.i, %40
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.pipapo_free_fields.exit_crit_edge

for.body.i.pipapo_free_fields.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_free_fields.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

pipapo_free_fields.exit:                          ; preds = %for.body.i.pipapo_free_fields.exit_crit_edge, %for.end28.pipapo_free_fields.exit_crit_edge
  tail call void @kfree(ptr noundef nonnull %1) #13
  %41 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %data.i, align 4
  br label %if.end31

if.end31:                                         ; preds = %pipapo_free_fields.exit, %entry.if.end31_crit_edge
  %clone = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  %42 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %clone, align 4
  %tobool32.not = icmp eq ptr %43, null
  br i1 %tobool32.not, label %if.end31.if.end55_crit_edge, label %for.cond34.preheader

if.end31.if.end55_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end55

for.cond34.preheader:                             ; preds = %if.end31
  %call35109 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %44 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call35109, i32 %44)
  %cmp36110 = icmp ult i32 %call35109, %44
  br i1 %cmp36110, label %for.cond34.preheader.do.body38_crit_edge, label %for.cond34.preheader.for.end49_crit_edge

for.cond34.preheader.for.end49_crit_edge:         ; preds = %for.cond34.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end49

for.cond34.preheader.do.body38_crit_edge:         ; preds = %for.cond34.preheader
  br label %do.body38

do.body38:                                        ; preds = %do.body38.do.body38_crit_edge, %for.cond34.preheader.do.body38_crit_edge
  %call35111 = phi i32 [ %call35, %do.body38.do.body38_crit_edge ], [ %call35109, %for.cond34.preheader.do.body38_crit_edge ]
  %45 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clone, align 4
  %scratch45 = getelementptr inbounds %struct.nft_pipapo_match, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %scratch45 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %scratch45, align 4
  %49 = ptrtoint ptr %48 to i32
  %arrayidx47 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call35111
  %50 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx47, align 4
  %add48 = add i32 %51, %49
  %52 = inttoptr i32 %add48 to ptr
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %52, align 4
  tail call void @kfree(ptr noundef %54) #13
  %call35 = tail call i32 @cpumask_next(i32 noundef %call35111, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %55 = load i32, ptr @nr_cpu_ids, align 4
  %cmp36 = icmp ult i32 %call35, %55
  br i1 %cmp36, label %do.body38.do.body38_crit_edge, label %do.body38.for.end49_crit_edge

do.body38.for.end49_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end49

do.body38.do.body38_crit_edge:                    ; preds = %do.body38
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body38

for.end49:                                        ; preds = %do.body38.for.end49_crit_edge, %for.cond34.preheader.for.end49_crit_edge
  %56 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %clone, align 4
  %scratch51 = getelementptr inbounds %struct.nft_pipapo_match, ptr %57, i32 0, i32 1
  %58 = ptrtoint ptr %scratch51 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %scratch51, align 4
  tail call void @free_percpu(ptr noundef %59) #13
  %60 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clone, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %61, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %cmp6.i87 = icmp sgt i32 %63, 0
  br i1 %cmp6.i87, label %for.body.preheader.i89, label %for.end49.pipapo_free_fields.exit98_crit_edge

for.end49.pipapo_free_fields.exit98_crit_edge:    ; preds = %for.end49
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_free_fields.exit98

for.body.preheader.i89:                           ; preds = %for.end49
  %f1.i88 = getelementptr inbounds %struct.nft_pipapo_match, ptr %61, i32 0, i32 4
  br label %for.body.i97

for.body.i97:                                     ; preds = %for.body.i97.for.body.i97_crit_edge, %for.body.preheader.i89
  %i.08.i90 = phi i32 [ %inc.i94, %for.body.i97.for.body.i97_crit_edge ], [ 0, %for.body.preheader.i89 ]
  %f.07.i91 = phi ptr [ %incdec.ptr.i95, %for.body.i97.for.body.i97_crit_edge ], [ %f1.i88, %for.body.preheader.i89 ]
  %lt.i92 = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.07.i91, i32 0, i32 4
  %64 = ptrtoint ptr %lt.i92 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %lt.i92, align 4
  tail call void @kvfree(ptr noundef %65) #13
  %mt.i93 = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.07.i91, i32 0, i32 5
  %66 = ptrtoint ptr %mt.i93 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %mt.i93, align 4
  tail call void @kvfree(ptr noundef %67) #13
  %inc.i94 = add nuw nsw i32 %i.08.i90, 1
  %incdec.ptr.i95 = getelementptr %struct.nft_pipapo_field, ptr %f.07.i91, i32 1
  %68 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %61, align 4
  %cmp.i96 = icmp slt i32 %inc.i94, %69
  br i1 %cmp.i96, label %for.body.i97.for.body.i97_crit_edge, label %for.body.i97.pipapo_free_fields.exit98_crit_edge

for.body.i97.pipapo_free_fields.exit98_crit_edge: ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_free_fields.exit98

for.body.i97.for.body.i97_crit_edge:              ; preds = %for.body.i97
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i97

pipapo_free_fields.exit98:                        ; preds = %for.body.i97.pipapo_free_fields.exit98_crit_edge, %for.end49.pipapo_free_fields.exit98_crit_edge
  %70 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %clone, align 4
  tail call void @kfree(ptr noundef %71) #13
  %72 = ptrtoint ptr %clone to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr null, ptr %clone, align 4
  br label %if.end55

if.end55:                                         ; preds = %pipapo_free_fields.exit98, %if.end31.if.end55_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nft_pipapo_gc_init(ptr nocapture noundef writeonly %set) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %last_gc = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 16
  %1 = ptrtoint ptr %last_gc to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %0, ptr %last_gc, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @get_jiffies_64() local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pipapo_get(ptr nocapture noundef readonly %set, ptr nocapture noundef readonly %data, i8 noundef zeroext %genmask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %clone = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  %0 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clone, align 4
  %bsize_max = getelementptr inbounds %struct.nft_pipapo_match, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %bsize_max to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bsize_max, align 4
  %4 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #13
  %5 = extractvalue { i32, i1 } %4, 1
  br i1 %5, label %entry.out_crit_edge, label %if.end7.i, !prof !33

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end7.i:                                        ; preds = %entry
  %6 = extractvalue { i32, i1 } %4, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %6, i32 noundef 2592) #18
  %tobool.not = icmp eq ptr %call8.i, null
  br i1 %tobool.not, label %if.end7.i.out_crit_edge, label %if.end

if.end7.i.out_crit_edge:                          ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end:                                           ; preds = %if.end7.i
  %7 = ptrtoint ptr %bsize_max to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %bsize_max, align 4
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %8, i32 4) #13
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %if.end.out_crit_edge, label %if.end7.i.i, !prof !33

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end7.i.i:                                      ; preds = %if.end
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 2848) #18
  %tobool6.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool6.not, label %if.end7.i.i.out_crit_edge, label %if.end9

if.end7.i.i.out_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end9:                                          ; preds = %if.end7.i.i
  %12 = ptrtoint ptr %bsize_max to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %bsize_max, align 4
  %mul = shl i32 %13, 2
  %14 = call ptr @memset(ptr %call8.i, i32 255, i32 %mul)
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp98 = icmp sgt i32 %16, 0
  br i1 %cmp98, label %for.body.lr.ph, label %if.end9.out_crit_edge

if.end9.out_crit_edge:                            ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.body.lr.ph:                                   ; preds = %if.end9
  %f11 = getelementptr inbounds %struct.nft_pipapo_match, ptr %1, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %genmask)
  %tobool36.not = icmp eq i8 %genmask, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %17 = phi i32 [ %16, %for.body.lr.ph ], [ %99, %for.inc.for.body_crit_edge ]
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %f.0103 = phi ptr [ %f11, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %fill_map.0102 = phi ptr [ %call8.i.i, %for.body.lr.ph ], [ %res_map.0101, %for.inc.for.body_crit_edge ]
  %res_map.0101 = phi ptr [ %call8.i, %for.body.lr.ph ], [ %fill_map.0102, %for.inc.for.body_crit_edge ]
  %data.addr.099 = phi ptr [ %data, %for.body.lr.ph ], [ %add.ptr56, %for.inc.for.body_crit_edge ]
  %sub = add nsw i32 %17, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0105, i32 %sub)
  %cmp13 = icmp eq i32 %i.0105, %sub
  %bb = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0103, i32 0, i32 3
  %18 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bb, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values)
  switch i32 %19, label %do.body [
    i32 8, label %if.then15
    i32 4, label %if.then18
  ]

if.then15:                                        ; preds = %for.body
  %21 = ptrtoint ptr %f.0103 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %f.0103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp15.i = icmp sgt i32 %22, 0
  br i1 %cmp15.i, label %for.body.lr.ph.i, label %if.then15.if.end24_crit_edge

if.then15.if.end24_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

for.body.lr.ph.i:                                 ; preds = %if.then15
  %lt1.i = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0103, i32 0, i32 4
  %23 = ptrtoint ptr %lt1.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %lt1.i, align 4
  %bsize.i = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0103, i32 0, i32 2
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %group.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %lt.017.i = phi ptr [ %24, %for.body.lr.ph.i ], [ %add.ptr6.i, %for.body.i.for.body.i_crit_edge ]
  %data.addr.016.i = phi ptr [ %data.addr.099, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ]
  %25 = ptrtoint ptr %data.addr.016.i to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %data.addr.016.i, align 1
  %conv.i = zext i8 %26 to i32
  %27 = ptrtoint ptr %bsize.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %bsize.i, align 4
  %mul.i = mul i32 %28, %conv.i
  %add.ptr.i = getelementptr i32, ptr %lt.017.i, i32 %mul.i
  %mul3.i = shl i32 %28, 5
  %call.i = tail call i32 @__bitmap_and(ptr noundef %res_map.0101, ptr noundef %res_map.0101, ptr noundef %add.ptr.i, i32 noundef %mul3.i) #13
  %29 = ptrtoint ptr %bsize.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %bsize.i, align 4
  %mul5.i = shl i32 %30, 8
  %add.ptr6.i = getelementptr i32, ptr %lt.017.i, i32 %mul5.i
  %inc.i = add nuw nsw i32 %group.018.i, 1
  %incdec.ptr.i = getelementptr i8, ptr %data.addr.016.i, i32 1
  %31 = ptrtoint ptr %f.0103 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %f.0103, align 4
  %cmp.i = icmp slt i32 %inc.i, %32
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.if.end24_crit_edge

for.body.i.if.end24_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

if.then18:                                        ; preds = %for.body
  %33 = ptrtoint ptr %f.0103 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %f.0103, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp38.i = icmp sgt i32 %34, 0
  br i1 %cmp38.i, label %for.body.lr.ph.i7, label %if.then18.if.end24_crit_edge

if.then18.if.end24_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

for.body.lr.ph.i7:                                ; preds = %if.then18
  %lt1.i5 = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0103, i32 0, i32 4
  %35 = ptrtoint ptr %lt1.i5 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %lt1.i5, align 4
  %bsize.i6 = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0103, i32 0, i32 2
  br label %for.body.i14

for.body.i14:                                     ; preds = %for.body.i14.for.body.i14_crit_edge, %for.body.lr.ph.i7
  %data.addr.041.i = phi ptr [ %data.addr.099, %for.body.lr.ph.i7 ], [ %incdec.ptr.i12, %for.body.i14.for.body.i14_crit_edge ]
  %group.040.i = phi i32 [ 0, %for.body.lr.ph.i7 ], [ %add.i, %for.body.i14.for.body.i14_crit_edge ]
  %lt.039.i = phi ptr [ %36, %for.body.lr.ph.i7 ], [ %add.ptr20.i, %for.body.i14.for.body.i14_crit_edge ]
  %37 = ptrtoint ptr %data.addr.041.i to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %data.addr.041.i, align 1
  %39 = lshr i8 %38, 4
  %conv3.i = zext i8 %39 to i32
  %40 = ptrtoint ptr %bsize.i6 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bsize.i6, align 4
  %mul.i8 = mul i32 %41, %conv3.i
  %add.ptr.i9 = getelementptr i32, ptr %lt.039.i, i32 %mul.i8
  %mul5.i10 = shl i32 %41, 5
  %call.i11 = tail call i32 @__bitmap_and(ptr noundef %res_map.0101, ptr noundef %res_map.0101, ptr noundef %add.ptr.i9, i32 noundef %mul5.i10) #13
  %42 = ptrtoint ptr %bsize.i6 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %bsize.i6, align 4
  %mul7.i = shl i32 %43, 4
  %add.ptr8.i = getelementptr i32, ptr %lt.039.i, i32 %mul7.i
  %44 = ptrtoint ptr %data.addr.041.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %data.addr.041.i, align 1
  %46 = and i8 %45, 15
  %conv11.i = zext i8 %46 to i32
  %mul13.i = mul i32 %43, %conv11.i
  %add.ptr14.i = getelementptr i32, ptr %add.ptr8.i, i32 %mul13.i
  %mul16.i = shl i32 %43, 5
  %call17.i = tail call i32 @__bitmap_and(ptr noundef %res_map.0101, ptr noundef %res_map.0101, ptr noundef %add.ptr14.i, i32 noundef %mul16.i) #13
  %47 = ptrtoint ptr %bsize.i6 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %bsize.i6, align 4
  %mul19.i = shl i32 %48, 4
  %add.ptr20.i = getelementptr i32, ptr %add.ptr8.i, i32 %mul19.i
  %add.i = add i32 %group.040.i, 2
  %incdec.ptr.i12 = getelementptr i8, ptr %data.addr.041.i, i32 1
  %49 = ptrtoint ptr %f.0103 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %f.0103, align 4
  %cmp.i13 = icmp slt i32 %add.i, %50
  br i1 %cmp.i13, label %for.body.i14.for.body.i14_crit_edge, label %for.body.i14.if.end24_crit_edge

for.body.i14.if.end24_crit_edge:                  ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end24

for.body.i14.for.body.i14_crit_edge:              ; preds = %for.body.i14
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i14

do.body:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netfilter/nft_set_pipapo.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 551, 0\0A.popsection", ""() #13, !srcloc !42
  unreachable

if.end24:                                         ; preds = %for.body.i14.if.end24_crit_edge, %if.then18.if.end24_crit_edge, %for.body.i.if.end24_crit_edge, %if.then15.if.end24_crit_edge
  %51 = ptrtoint ptr %f.0103 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %f.0103, align 4
  %53 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %bb, align 4
  %div = sdiv i32 8, %54
  %div26 = sdiv i32 %52, %div
  %add.ptr = getelementptr i8, ptr %data.addr.099, i32 %div26
  %bsize = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0103, i32 0, i32 2
  %rules = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0103, i32 0, i32 1
  %mt = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.0103, i32 0, i32 5
  %55 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp53.i90 = icmp sgt i32 %56, 0
  br i1 %cmp53.i90, label %if.end24.for.body.i15.preheader_crit_edge, label %if.end24.out_crit_edge

if.end24.out_crit_edge:                           ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end24.for.body.i15.preheader_crit_edge:        ; preds = %if.end24
  br label %for.body.i15.preheader

for.body.i15.preheader:                           ; preds = %if.then41.for.body.i15.preheader_crit_edge, %if.end24.for.body.i15.preheader_crit_edge
  %57 = phi i32 [ %89, %if.then41.for.body.i15.preheader_crit_edge ], [ %56, %if.end24.for.body.i15.preheader_crit_edge ]
  %58 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %rules, align 4
  %60 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %mt, align 4
  br label %for.body.i15.outer

for.body.i15.outer:                               ; preds = %while.end.i.thread.for.body.i15.outer_crit_edge, %for.body.i15.preheader
  %cmp29 = phi i1 [ false, %while.end.i.thread.for.body.i15.outer_crit_edge ], [ true, %for.body.i15.preheader ]
  %ret.056.i.ph = phi i32 [ 0, %while.end.i.thread.for.body.i15.outer_crit_edge ], [ -1, %for.body.i15.preheader ]
  %k.054.i.ph = phi i32 [ %inc.i2254, %while.end.i.thread.for.body.i15.outer_crit_edge ], [ 0, %for.body.i15.preheader ]
  br label %for.body.i15

for.body.i15:                                     ; preds = %while.end.i.for.body.i15_crit_edge, %for.body.i15.outer
  %k.054.i = phi i32 [ %inc.i22, %while.end.i.for.body.i15_crit_edge ], [ %k.054.i.ph, %for.body.i15.outer ]
  %arrayidx.i = getelementptr i32, ptr %res_map.0101, i32 %k.054.i
  %62 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %63)
  %tobool.not51.i = icmp eq i32 %63, 0
  br i1 %tobool.not51.i, label %while.end.i, label %while.body.lr.ph.i

while.body.lr.ph.i:                               ; preds = %for.body.i15
  %mul.i16 = shl i32 %k.054.i, 5
  br label %while.body.i

while.body.i:                                     ; preds = %if.end7.i20.while.body.i_crit_edge, %while.body.lr.ph.i
  %bitset.052.i = phi i32 [ %63, %while.body.lr.ph.i ], [ %xor.i, %if.end7.i20.while.body.i_crit_edge ]
  %64 = tail call i32 @llvm.cttz.i32(i32 %bitset.052.i, i1 true) #13, !range !30
  %add.i17 = or i32 %64, %mul.i16
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i17, i32 %59)
  %cmp1.not.i = icmp slt i32 %add.i17, %59
  br i1 %cmp1.not.i, label %if.end.i18, label %if.then.i, !prof !31

if.then.i:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %65 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %arrayidx.i, align 4
  br label %out

if.end.i18:                                       ; preds = %while.body.i
  br i1 %cmp13, label %pipapo_refill.exit.thread41, label %if.end7.i20

if.end7.i20:                                      ; preds = %if.end.i18
  %arrayidx8.i = getelementptr %union.nft_pipapo_map_bucket, ptr %61, i32 %add.i17
  %66 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %bf.load.i = load i32, ptr %arrayidx8.i, align 4
  %bf.lshr.i = lshr i32 %bf.load.i, 8
  %bf.clear.i = and i32 %bf.load.i, 255
  tail call void @__bitmap_set(ptr noundef %fill_map.0102, i32 noundef %bf.lshr.i, i32 noundef %bf.clear.i) #13
  %67 = add i32 %bitset.052.i, -1
  %xor.i = and i32 %67, %bitset.052.i
  %tobool.not.i = icmp eq i32 %xor.i, 0
  br i1 %tobool.not.i, label %while.end.i.thread, label %if.end7.i20.while.body.i_crit_edge

if.end7.i20.while.body.i_crit_edge:               ; preds = %if.end7.i20
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.body.i

while.end.i:                                      ; preds = %for.body.i15
  %68 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %arrayidx.i, align 4
  %inc.i22 = add nuw nsw i32 %k.054.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i22, %57
  br i1 %exitcond.not.i, label %pipapo_refill.exit, label %while.end.i.for.body.i15_crit_edge

while.end.i.for.body.i15_crit_edge:               ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i15

while.end.i.thread:                               ; preds = %if.end7.i20
  %69 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %arrayidx.i, align 4
  %inc.i2254 = add nuw nsw i32 %k.054.i, 1
  %exitcond.not.i55 = icmp eq i32 %inc.i2254, %57
  br i1 %exitcond.not.i55, label %while.end.i.thread.for.inc_crit_edge, label %while.end.i.thread.for.body.i15.outer_crit_edge

while.end.i.thread.for.body.i15.outer_crit_edge:  ; preds = %while.end.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i15.outer

while.end.i.thread.for.inc_crit_edge:             ; preds = %while.end.i.thread
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

pipapo_refill.exit:                               ; preds = %while.end.i
  br i1 %cmp29, label %pipapo_refill.exit.out_crit_edge, label %if.end31

pipapo_refill.exit.out_crit_edge:                 ; preds = %pipapo_refill.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

pipapo_refill.exit.thread41:                      ; preds = %if.end.i18
  %shl.i.i.i = shl nuw i32 1, %64
  %div2.i.i.i = and i32 %k.054.i, 134217727
  %add.ptr.i.i.i = getelementptr i32, ptr %res_map.0101, i32 %div2.i.i.i
  %neg.i.i.i = xor i32 %shl.i.i.i, -1
  %70 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %add.ptr.i.i.i, align 4
  %and.i.i.i = and i32 %71, %neg.i.i.i
  store i32 %and.i.i.i, ptr %add.ptr.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.i17)
  %cmp2943 = icmp slt i32 %add.i17, 0
  br i1 %cmp2943, label %pipapo_refill.exit.thread41.out_crit_edge, label %pipapo_refill.exit.thread41.if.then33_crit_edge

pipapo_refill.exit.thread41.if.then33_crit_edge:  ; preds = %pipapo_refill.exit.thread41
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then33

pipapo_refill.exit.thread41.out_crit_edge:        ; preds = %pipapo_refill.exit.thread41
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.end31:                                         ; preds = %pipapo_refill.exit
  br i1 %cmp13, label %if.end31.if.then33_crit_edge, label %if.end31.for.inc_crit_edge

if.end31.for.inc_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc

if.end31.if.then33_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then33

if.then33:                                        ; preds = %if.end31.if.then33_crit_edge, %pipapo_refill.exit.thread41.if.then33_crit_edge
  %retval.3.i4446 = phi i32 [ %ret.056.i.ph, %if.end31.if.then33_crit_edge ], [ %add.i17, %pipapo_refill.exit.thread41.if.then33_crit_edge ]
  %72 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %mt, align 4
  %arrayidx = getelementptr %union.nft_pipapo_map_bucket, ptr %73, i32 %retval.3.i4446
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx, align 4
  %tobool.not.i.i = icmp eq ptr %75, null
  br i1 %tobool.not.i.i, label %if.then33.lor.lhs.false_crit_edge, label %nft_set_ext_exists.exit.i

if.then33.lor.lhs.false_crit_edge:                ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

nft_set_ext_exists.exit.i:                        ; preds = %if.then33
  %arrayidx.i.i.i = getelementptr %struct.nft_set_ext, ptr %75, i32 0, i32 1, i32 5
  %76 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %arrayidx.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool.i.i.not.i = icmp eq i8 %77, 0
  br i1 %tobool.i.i.not.i, label %nft_set_ext_exists.exit.i.lor.lhs.false_crit_edge, label %nft_set_elem_expired.exit

nft_set_ext_exists.exit.i.lor.lhs.false_crit_edge: ; preds = %nft_set_ext_exists.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

nft_set_elem_expired.exit:                        ; preds = %nft_set_ext_exists.exit.i
  %call1.i = tail call i64 @get_jiffies_64() #13
  %78 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %arrayidx.i.i.i, align 1
  %conv.i.i.i = zext i8 %79 to i32
  %add.ptr.i.i.i23 = getelementptr i8, ptr %75, i32 %conv.i.i.i
  %80 = ptrtoint ptr %add.ptr.i.i.i23 to i32
  call void @__asan_load8_noabort(i32 %80)
  %81 = load i64, ptr %add.ptr.i.i.i23, align 8
  %sub.i = sub i64 %call1.i, %81
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i)
  %cmp.i24 = icmp sgt i64 %sub.i, -1
  br i1 %cmp.i24, label %nft_set_elem_expired.exit.if.then41_crit_edge, label %nft_set_elem_expired.exit.lor.lhs.false_crit_edge

nft_set_elem_expired.exit.lor.lhs.false_crit_edge: ; preds = %nft_set_elem_expired.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %lor.lhs.false

nft_set_elem_expired.exit.if.then41_crit_edge:    ; preds = %nft_set_elem_expired.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

lor.lhs.false:                                    ; preds = %nft_set_elem_expired.exit.lor.lhs.false_crit_edge, %nft_set_ext_exists.exit.i.lor.lhs.false_crit_edge, %if.then33.lor.lhs.false_crit_edge
  br i1 %tobool36.not, label %lor.lhs.false.if.end42_crit_edge, label %land.lhs.true

lor.lhs.false.if.end42_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

land.lhs.true:                                    ; preds = %lor.lhs.false
  %82 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mt, align 4
  %arrayidx38 = getelementptr %union.nft_pipapo_map_bucket, ptr %83, i32 %retval.3.i4446
  %84 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx38, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %85, align 1
  %and3.i = and i8 %87, %genmask
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool.not.i25 = icmp eq i8 %and3.i, 0
  br i1 %tobool.not.i25, label %land.lhs.true.if.end42_crit_edge, label %land.lhs.true.if.then41_crit_edge

land.lhs.true.if.then41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.then41

land.lhs.true.if.end42_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end42

if.then41:                                        ; preds = %land.lhs.true.if.then41_crit_edge, %nft_set_elem_expired.exit.if.then41_crit_edge
  %88 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %bsize, align 4
  %cmp53.i = icmp sgt i32 %89, 0
  br i1 %cmp53.i, label %if.then41.for.body.i15.preheader_crit_edge, label %if.then41.out_crit_edge

if.then41.out_crit_edge:                          ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

if.then41.for.body.i15.preheader_crit_edge:       ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i15.preheader

if.end42:                                         ; preds = %land.lhs.true.if.end42_crit_edge, %lor.lhs.false.if.end42_crit_edge
  %90 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %mt, align 4
  %arrayidx44 = getelementptr %union.nft_pipapo_map_bucket, ptr %91, i32 %retval.3.i4446
  %92 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx44, align 4
  br label %out

for.inc:                                          ; preds = %if.end31.for.inc_crit_edge, %while.end.i.thread.for.inc_crit_edge
  %94 = ptrtoint ptr %f.0103 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %f.0103, align 4
  %96 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %bb, align 4
  %div48 = sdiv i32 8, %97
  %div49 = sdiv i32 %95, %div48
  %sub50 = add i32 %div49, -1
  %or = or i32 %sub50, 3
  %add = sub i32 1, %div49
  %sub55 = add i32 %add, %or
  %add.ptr56 = getelementptr i8, ptr %add.ptr, i32 %sub55
  %inc = add nuw nsw i32 %i.0105, 1
  %incdec.ptr = getelementptr %struct.nft_pipapo_field, ptr %f.0103, i32 1
  %98 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %inc, %99
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.out_crit_edge

for.inc.out_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %out

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

out:                                              ; preds = %for.inc.out_crit_edge, %if.end42, %if.then41.out_crit_edge, %pipapo_refill.exit.thread41.out_crit_edge, %pipapo_refill.exit.out_crit_edge, %if.then.i, %if.end24.out_crit_edge, %if.end9.out_crit_edge, %if.end7.i.i.out_crit_edge, %if.end.out_crit_edge, %if.end7.i.out_crit_edge, %entry.out_crit_edge
  %ret.2 = phi ptr [ inttoptr (i32 -12 to ptr), %if.end7.i.out_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end7.i.i.out_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.out_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.out_crit_edge ], [ %93, %if.end42 ], [ inttoptr (i32 -2 to ptr), %if.then.i ], [ inttoptr (i32 -2 to ptr), %if.end9.out_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.then41.out_crit_edge ], [ inttoptr (i32 -2 to ptr), %pipapo_refill.exit.thread41.out_crit_edge ], [ inttoptr (i32 -2 to ptr), %pipapo_refill.exit.out_crit_edge ], [ inttoptr (i32 -2 to ptr), %if.end24.out_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.out_crit_edge ]
  %res_map.2 = phi ptr [ null, %if.end7.i.out_crit_edge ], [ %call8.i, %if.end7.i.i.out_crit_edge ], [ null, %entry.out_crit_edge ], [ %call8.i, %if.end.out_crit_edge ], [ %res_map.0101, %if.end42 ], [ %res_map.0101, %if.then.i ], [ %call8.i, %if.end9.out_crit_edge ], [ %res_map.0101, %if.then41.out_crit_edge ], [ %res_map.0101, %pipapo_refill.exit.thread41.out_crit_edge ], [ %res_map.0101, %pipapo_refill.exit.out_crit_edge ], [ %fill_map.0102, %for.inc.out_crit_edge ], [ %res_map.0101, %if.end24.out_crit_edge ]
  %fill_map.2 = phi ptr [ null, %if.end7.i.out_crit_edge ], [ null, %if.end7.i.i.out_crit_edge ], [ null, %entry.out_crit_edge ], [ null, %if.end.out_crit_edge ], [ %fill_map.0102, %if.end42 ], [ %fill_map.0102, %if.then.i ], [ %call8.i.i, %if.end9.out_crit_edge ], [ %fill_map.0102, %if.then41.out_crit_edge ], [ %fill_map.0102, %pipapo_refill.exit.thread41.out_crit_edge ], [ %fill_map.0102, %pipapo_refill.exit.out_crit_edge ], [ %res_map.0101, %for.inc.out_crit_edge ], [ %fill_map.0102, %if.end24.out_crit_edge ]
  tail call void @kfree(ptr noundef %fill_map.2) #13
  tail call void @kfree(ptr noundef %res_map.2) #13
  ret ptr %ret.2
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pipapo_insert(ptr nocapture noundef %f, ptr nocapture noundef readonly %k, i32 noundef %mask_bits) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %rules = getelementptr inbounds %struct.nft_pipapo_field, ptr %f, i32 0, i32 1
  %0 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %rules, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr %rules, align 4
  %call = tail call fastcc i32 @pipapo_resize(ptr noundef %f, i32 noundef %1, i32 noundef %inc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %for.cond.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp148 = icmp sgt i32 %3, 0
  br i1 %cmp148, label %for.body.lr.ph, label %for.cond.preheader.for.end66_crit_edge

for.cond.preheader.for.end66_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end66

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %bb = getelementptr inbounds %struct.nft_pipapo_field, ptr %f, i32 0, i32 3
  %lt.i = getelementptr inbounds %struct.nft_pipapo_field, ptr %f, i32 0, i32 4
  %bsize.i = getelementptr inbounds %struct.nft_pipapo_field, ptr %f, i32 0, i32 2
  %rem.i.i = and i32 %1, 31
  %shl.i.i = shl nuw i32 1, %rem.i.i
  %div2.i.i = lshr i32 %1, 5
  br label %for.body

for.body:                                         ; preds = %if.end63.for.body_crit_edge, %for.body.lr.ph
  %bit_offset.0150 = phi i32 [ 0, %for.body.lr.ph ], [ %rem, %if.end63.for.body_crit_edge ]
  %group.0149 = phi i32 [ 0, %for.body.lr.ph ], [ %add14, %if.end63.for.body_crit_edge ]
  %4 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bb, align 4
  %div = sdiv i32 8, %5
  %div3 = sdiv i32 %group.0149, %div
  %arrayidx = getelementptr i8, ptr %k, i32 %div3
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %7 to i32
  %sub6 = add nsw i32 %bit_offset.0150, 24
  %shr = lshr i32 -1, %sub6
  %and7 = and i32 %shr, %conv
  %8 = add i32 %5, %bit_offset.0150
  %sub10 = sub i32 8, %8
  %shr11 = lshr i32 %and7, %sub10
  %rem = srem i32 %8, 8
  %add14 = add nuw nsw i32 %group.0149, 1
  %mul = mul i32 %5, %add14
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %mask_bits)
  %cmp16.not = icmp sgt i32 %mul, %mask_bits
  br i1 %cmp16.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15
  %9 = ptrtoint ptr %lt.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %lt.i, align 4
  %11 = ptrtoint ptr %bsize.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bsize.i, align 4
  %mul.i = shl i32 %12, %5
  %mul1.i = mul i32 %mul.i, %group.0149
  %add.ptr.i = getelementptr i32, ptr %10, i32 %div2.i.i
  %mul3.i = mul i32 %12, %shr11
  %add.ptr4.i = getelementptr i32, ptr %add.ptr.i, i32 %mul1.i
  %add.ptr.i.i = getelementptr i32, ptr %add.ptr4.i, i32 %mul3.i
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i, align 4
  %or.i.i = or i32 %14, %shl.i.i
  store i32 %or.i.i, ptr %add.ptr.i.i, align 4
  br label %if.end63

if.else:                                          ; preds = %for.body
  %mul20 = mul i32 %5, %group.0149
  call void @__sanitizer_cov_trace_cmp4(i32 %mul20, i32 %mask_bits)
  %cmp21.not = icmp slt i32 %mul20, %mask_bits
  %15 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %16)
  %cmp47145.not = icmp eq i32 %16, 31
  br i1 %cmp21.not, label %if.else30, label %for.cond24.preheader

for.cond24.preheader:                             ; preds = %if.else
  br i1 %cmp47145.not, label %for.cond24.preheader.if.end63_crit_edge, label %for.cond24.preheader.for.body28_crit_edge

for.cond24.preheader.for.body28_crit_edge:        ; preds = %for.cond24.preheader
  br label %for.body28

for.cond24.preheader.if.end63_crit_edge:          ; preds = %for.cond24.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

for.body28:                                       ; preds = %for.body28.for.body28_crit_edge, %for.cond24.preheader.for.body28_crit_edge
  %17 = phi i32 [ %25, %for.body28.for.body28_crit_edge ], [ %16, %for.cond24.preheader.for.body28_crit_edge ]
  %i.0143 = phi i32 [ %inc29, %for.body28.for.body28_crit_edge ], [ 0, %for.cond24.preheader.for.body28_crit_edge ]
  %18 = ptrtoint ptr %lt.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %lt.i, align 4
  %20 = ptrtoint ptr %bsize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bsize.i, align 4
  %mul.i117 = shl i32 %21, %17
  %mul1.i118 = mul i32 %mul.i117, %group.0149
  %add.ptr.i119 = getelementptr i32, ptr %19, i32 %div2.i.i
  %mul3.i120 = mul i32 %21, %i.0143
  %add.ptr4.i121 = getelementptr i32, ptr %add.ptr.i119, i32 %mul1.i118
  %add.ptr.i.i125 = getelementptr i32, ptr %add.ptr4.i121, i32 %mul3.i120
  %22 = ptrtoint ptr %add.ptr.i.i125 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %add.ptr.i.i125, align 4
  %or.i.i126 = or i32 %23, %shl.i.i
  store i32 %or.i.i126, ptr %add.ptr.i.i125, align 4
  %inc29 = add nuw nsw i32 %i.0143, 1
  %24 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %bb, align 4
  %shl = shl nuw i32 1, %25
  %cmp26 = icmp slt i32 %inc29, %shl
  br i1 %cmp26, label %for.body28.for.body28_crit_edge, label %for.body28.if.end63_crit_edge

for.body28.if.end63_crit_edge:                    ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

for.body28.for.body28_crit_edge:                  ; preds = %for.body28
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body28

if.else30:                                        ; preds = %if.else
  br i1 %cmp47145.not, label %if.else30.if.end63_crit_edge, label %for.body49.lr.ph

if.else30.if.end63_crit_edge:                     ; preds = %if.else30
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

for.body49.lr.ph:                                 ; preds = %if.else30
  %sub33 = sub i32 32, %5
  %shr34 = lshr i32 -1, %sub33
  %conv41 = and i32 %shr34, 255
  %sub40 = sub i32 %mask_bits, %mul20
  %shr42 = lshr i32 %conv41, %sub40
  %neg = xor i32 %shr42, -1
  br label %for.body49

for.body49:                                       ; preds = %for.inc59.for.body49_crit_edge, %for.body49.lr.ph
  %26 = phi i32 [ %16, %for.body49.lr.ph ], [ %36, %for.inc59.for.body49_crit_edge ]
  %i.1146 = phi i32 [ 0, %for.body49.lr.ph ], [ %inc60, %for.inc59.for.body49_crit_edge ]
  %27 = xor i32 %i.1146, %shr11
  %28 = and i32 %27, %neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp55 = icmp eq i32 %28, 0
  br i1 %cmp55, label %if.then57, label %for.body49.for.inc59_crit_edge

for.body49.for.inc59_crit_edge:                   ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc59

if.then57:                                        ; preds = %for.body49
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %lt.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %lt.i, align 4
  %31 = ptrtoint ptr %bsize.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %bsize.i, align 4
  %mul.i130 = shl i32 %32, %26
  %mul1.i131 = mul i32 %mul.i130, %group.0149
  %add.ptr.i132 = getelementptr i32, ptr %30, i32 %div2.i.i
  %mul3.i133 = mul i32 %32, %i.1146
  %add.ptr4.i134 = getelementptr i32, ptr %add.ptr.i132, i32 %mul1.i131
  %add.ptr.i.i138 = getelementptr i32, ptr %add.ptr4.i134, i32 %mul3.i133
  %33 = ptrtoint ptr %add.ptr.i.i138 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %add.ptr.i.i138, align 4
  %or.i.i139 = or i32 %34, %shl.i.i
  store i32 %or.i.i139, ptr %add.ptr.i.i138, align 4
  br label %for.inc59

for.inc59:                                        ; preds = %if.then57, %for.body49.for.inc59_crit_edge
  %inc60 = add nuw nsw i32 %i.1146, 1
  %35 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bb, align 4
  %shl46 = shl nuw i32 1, %36
  %cmp47 = icmp slt i32 %inc60, %shl46
  br i1 %cmp47, label %for.inc59.for.body49_crit_edge, label %for.inc59.if.end63_crit_edge

for.inc59.if.end63_crit_edge:                     ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end63

for.inc59.for.body49_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body49

if.end63:                                         ; preds = %for.inc59.if.end63_crit_edge, %if.else30.if.end63_crit_edge, %for.body28.if.end63_crit_edge, %for.cond24.preheader.if.end63_crit_edge, %if.then18
  %37 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %f, align 4
  %cmp = icmp slt i32 %add14, %38
  br i1 %cmp, label %if.end63.for.body_crit_edge, label %if.end63.for.end66_crit_edge

if.end63.for.end66_crit_edge:                     ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end66

if.end63.for.body_crit_edge:                      ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body

for.end66:                                        ; preds = %if.end63.for.end66_crit_edge, %for.cond.preheader.for.end66_crit_edge
  tail call fastcc void @pipapo_lt_bits_adjust(ptr noundef %f)
  br label %cleanup

cleanup:                                          ; preds = %for.end66, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %for.end66 ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pipapo_realloc_scratch(ptr nocapture noundef readonly %clone, i32 noundef %bsize_max) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call26 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call26, i32 %0)
  %cmp27 = icmp ult i32 %call26, %0
  br i1 %cmp27, label %for.body.lr.ph, label %entry.cleanup16_crit_edge

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup16

for.body.lr.ph:                                   ; preds = %entry
  %mul1 = shl i32 %bsize_max, 3
  %scratch3 = getelementptr inbounds %struct.nft_pipapo_match, ptr %clone, i32 0, i32 1
  br label %if.end5.i.i

if.end5.i.i:                                      ; preds = %do.body.if.end5.i.i_crit_edge, %for.body.lr.ph
  %call28 = phi i32 [ %call26, %for.body.lr.ph ], [ %call, %do.body.if.end5.i.i_crit_edge ]
  %call.i2.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul1, i32 noundef 3520) #18
  %tobool.not = icmp eq ptr %call.i2.i.i, null
  br i1 %tobool.not, label %if.end5.i.i.cleanup16_crit_edge, label %do.body

if.end5.i.i.cleanup16_crit_edge:                  ; preds = %if.end5.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup16

do.body:                                          ; preds = %if.end5.i.i
  %1 = ptrtoint ptr %scratch3 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %scratch3, align 4
  %3 = ptrtoint ptr %2 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call28
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add5 = add i32 %5, %3
  %6 = inttoptr i32 %add5 to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %8) #13
  %9 = ptrtoint ptr %scratch3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %scratch3, align 4
  %11 = ptrtoint ptr %10 to i32
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx, align 4
  %add15 = add i32 %13, %11
  %14 = inttoptr i32 %add15 to ptr
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call.i2.i.i, ptr %14, align 4
  %call = tail call i32 @cpumask_next(i32 noundef %call28, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %16 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %16
  br i1 %cmp, label %do.body.if.end5.i.i_crit_edge, label %do.body.cleanup16_crit_edge

do.body.cleanup16_crit_edge:                      ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup16

do.body.if.end5.i.i_crit_edge:                    ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end5.i.i

cleanup16:                                        ; preds = %do.body.cleanup16_crit_edge, %if.end5.i.i.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup16_crit_edge ], [ -12, %if.end5.i.i.cleanup16_crit_edge ], [ 0, %do.body.cleanup16_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pipapo_resize(ptr nocapture noundef %f, i32 noundef %old_rules, i32 noundef %rules) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %lt = getelementptr inbounds %struct.nft_pipapo_field, ptr %f, i32 0, i32 4
  %0 = ptrtoint ptr %lt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lt, align 4
  %mt = getelementptr inbounds %struct.nft_pipapo_field, ptr %f, i32 0, i32 5
  %2 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mt, align 4
  %sub = add i32 %rules, 31
  %div = sdiv i32 %sub, 32
  %bsize = getelementptr inbounds %struct.nft_pipapo_field, ptr %f, i32 0, i32 2
  %4 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div, i32 %5)
  %cmp = icmp eq i32 %div, %5
  br i1 %cmp, label %entry.mt34_crit_edge, label %if.end

entry.mt34_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt34

if.end:                                           ; preds = %entry
  %6 = tail call i32 @llvm.umin.i32(i32 %div, i32 %5)
  %7 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %f, align 4
  %bb = getelementptr inbounds %struct.nft_pipapo_field, ptr %f, i32 0, i32 3
  %9 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bb, align 4
  %mul = shl i32 %8, %10
  %mul6 = shl nsw i32 %div, 2
  %mul7 = mul i32 %mul6, %mul
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul7, i32 noundef 3520, i32 noundef -1) #18
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %11 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %f, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp12118 = icmp sgt i32 %12, 0
  br i1 %cmp12118, label %for.cond13.preheader.lr.ph, label %for.cond.preheader.mt34_crit_edge

for.cond.preheader.mt34_crit_edge:                ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt34

for.cond13.preheader.lr.ph:                       ; preds = %for.cond.preheader
  %mul18 = shl i32 %6, 2
  br label %for.cond13.preheader

for.cond13.preheader:                             ; preds = %for.inc31.for.cond13.preheader_crit_edge, %for.cond13.preheader.lr.ph
  %group.0121 = phi i32 [ 0, %for.cond13.preheader.lr.ph ], [ %inc32, %for.inc31.for.cond13.preheader_crit_edge ]
  %old_p.0120 = phi ptr [ %1, %for.cond13.preheader.lr.ph ], [ %old_p.1.lcssa, %for.inc31.for.cond13.preheader_crit_edge ]
  %new_p.0119 = phi ptr [ %call.i.i, %for.cond13.preheader.lr.ph ], [ %new_p.1.lcssa, %for.inc31.for.cond13.preheader_crit_edge ]
  %13 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %14)
  %cmp16113.not = icmp eq i32 %14, 31
  br i1 %cmp16113.not, label %for.cond13.preheader.for.inc31_crit_edge, label %for.cond13.preheader.for.body17_crit_edge

for.cond13.preheader.for.body17_crit_edge:        ; preds = %for.cond13.preheader
  br label %for.body17

for.cond13.preheader.for.inc31_crit_edge:         ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc31

for.body17:                                       ; preds = %for.body17.for.body17_crit_edge, %for.cond13.preheader.for.body17_crit_edge
  %bucket.0116 = phi i32 [ %inc, %for.body17.for.body17_crit_edge ], [ 0, %for.cond13.preheader.for.body17_crit_edge ]
  %old_p.1115 = phi ptr [ %old_p.2, %for.body17.for.body17_crit_edge ], [ %old_p.0120, %for.cond13.preheader.for.body17_crit_edge ]
  %new_p.1114 = phi ptr [ %new_p.2, %for.body17.for.body17_crit_edge ], [ %new_p.0119, %for.cond13.preheader.for.body17_crit_edge ]
  %15 = call ptr @memcpy(ptr %new_p.1114, ptr %old_p.1115, i32 %mul18)
  %add.ptr = getelementptr i32, ptr %new_p.1114, i32 %6
  %add.ptr19 = getelementptr i32, ptr %old_p.1115, i32 %6
  %16 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %bsize, align 4
  %18 = tail call i32 @llvm.usub.sat.i32(i32 %div, i32 %17)
  %new_p.2 = getelementptr i32, ptr %add.ptr, i32 %18
  %19 = tail call i32 @llvm.usub.sat.i32(i32 %17, i32 %div)
  %old_p.2 = getelementptr i32, ptr %add.ptr19, i32 %19
  %inc = add nuw nsw i32 %bucket.0116, 1
  %20 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %bb, align 4
  %shl15 = shl nuw i32 1, %21
  %cmp16 = icmp slt i32 %inc, %shl15
  br i1 %cmp16, label %for.body17.for.body17_crit_edge, label %for.body17.for.inc31_crit_edge

for.body17.for.inc31_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc31

for.body17.for.body17_crit_edge:                  ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body17

for.inc31:                                        ; preds = %for.body17.for.inc31_crit_edge, %for.cond13.preheader.for.inc31_crit_edge
  %new_p.1.lcssa = phi ptr [ %new_p.0119, %for.cond13.preheader.for.inc31_crit_edge ], [ %new_p.2, %for.body17.for.inc31_crit_edge ]
  %old_p.1.lcssa = phi ptr [ %old_p.0120, %for.cond13.preheader.for.inc31_crit_edge ], [ %old_p.2, %for.body17.for.inc31_crit_edge ]
  %inc32 = add nuw nsw i32 %group.0121, 1
  %22 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %f, align 4
  %cmp12 = icmp slt i32 %inc32, %23
  br i1 %cmp12, label %for.inc31.for.cond13.preheader_crit_edge, label %for.inc31.mt34_crit_edge

for.inc31.mt34_crit_edge:                         ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #15
  br label %mt34

for.inc31.for.cond13.preheader_crit_edge:         ; preds = %for.inc31
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond13.preheader

mt34:                                             ; preds = %for.inc31.mt34_crit_edge, %for.cond.preheader.mt34_crit_edge, %entry.mt34_crit_edge
  %new_lt.0 = phi ptr [ null, %entry.mt34_crit_edge ], [ %call.i.i, %for.cond.preheader.mt34_crit_edge ], [ %call.i.i, %for.inc31.mt34_crit_edge ]
  %mul35 = shl i32 %rules, 2
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul35, i32 noundef 3264, i32 noundef -1) #18
  %tobool37.not = icmp eq ptr %call.i, null
  br i1 %tobool37.not, label %mt34.cleanup.sink.split_crit_edge, label %if.end39

mt34.cleanup.sink.split_crit_edge:                ; preds = %mt34
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup.sink.split

if.end39:                                         ; preds = %mt34
  %24 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %mt, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %rules, i32 %old_rules)
  %cmp41 = icmp sgt i32 %rules, %old_rules
  %26 = tail call i32 @llvm.smin.i32(i32 %rules, i32 %old_rules)
  %mul42 = shl i32 %26, 2
  %27 = call ptr @memcpy(ptr %call.i, ptr %25, i32 %mul42)
  br i1 %cmp41, label %if.then44, label %if.end39.if.end48_crit_edge

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end48

if.then44:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #15
  %add.ptr45 = getelementptr %union.nft_pipapo_map_bucket, ptr %call.i, i32 %old_rules
  %sub46 = sub i32 %rules, %old_rules
  %mul47 = shl i32 %sub46, 2
  %28 = call ptr @memset(ptr %add.ptr45, i32 0, i32 %mul47)
  br label %if.end48

if.end48:                                         ; preds = %if.then44, %if.end39.if.end48_crit_edge
  %tobool49.not = icmp eq ptr %new_lt.0, null
  br i1 %tobool49.not, label %if.end48.if.end53_crit_edge, label %if.then50

if.end48.if.end53_crit_edge:                      ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end53

if.then50:                                        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #15
  %29 = ptrtoint ptr %bsize to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %div, ptr %bsize, align 4
  %30 = ptrtoint ptr %lt to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %new_lt.0, ptr %lt, align 4
  tail call void @kvfree(ptr noundef %1) #13
  br label %if.end53

if.end53:                                         ; preds = %if.then50, %if.end48.if.end53_crit_edge
  %31 = ptrtoint ptr %mt to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i, ptr %mt, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end53, %mt34.cleanup.sink.split_crit_edge
  %.sink = phi ptr [ %3, %if.end53 ], [ %new_lt.0, %mt34.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ 0, %if.end53 ], [ -12, %mt34.cleanup.sink.split_crit_edge ]
  tail call void @kvfree(ptr noundef %.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipapo_lt_bits_adjust(ptr nocapture noundef %f) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %f, align 4
  %bb2 = getelementptr inbounds %struct.nft_pipapo_field, ptr %f, i32 0, i32 3
  %2 = ptrtoint ptr %bb2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %bb2, align 4
  %mul = shl i32 %1, %3
  %bsize = getelementptr inbounds %struct.nft_pipapo_field, ptr %f, i32 0, i32 2
  %4 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bsize, align 4
  %mul3 = shl i32 %5, 2
  %mul4 = mul i32 %mul3, %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp = icmp eq i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %mul4)
  %cmp6 = icmp ugt i32 %mul4, 2097152
  %or.cond = select i1 %cmp, i1 %cmp6, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %mul8 = shl i32 %1, 1
  %mul12 = shl i32 %1, 7
  %mul13 = mul i32 %mul12, %5
  br label %if.end29

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %3)
  %cmp15 = icmp eq i32 %3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2031616, i32 %mul4)
  %cmp17 = icmp ult i32 %mul4, 2031616
  %or.cond96 = select i1 %cmp15, i1 %cmp17, i1 false
  br i1 %or.cond96, label %if.then18, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.then18:                                        ; preds = %if.else
  %div = sdiv i32 %1, 2
  %mul23 = shl i32 %div, 10
  %mul24 = mul i32 %mul23, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2097152, i32 %mul24)
  %cmp25 = icmp ugt i32 %mul24, 2097152
  br i1 %cmp25, label %if.then18.cleanup_crit_edge, label %if.then18.if.end29_crit_edge

if.then18.if.end29_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end29

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end29:                                         ; preds = %if.then18.if.end29_crit_edge, %if.then
  %groups.0 = phi i32 [ %mul8, %if.then ], [ %div, %if.then18.if.end29_crit_edge ]
  %bb.0 = phi i32 [ 4, %if.then ], [ 8, %if.then18.if.end29_crit_edge ]
  %lt_size.0 = phi i32 [ %mul13, %if.then ], [ %mul24, %if.then18.if.end29_crit_edge ]
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %lt_size.0, i32 noundef 3520, i32 noundef -1) #18
  %tobool.not = icmp eq ptr %call.i.i, null
  br i1 %tobool.not, label %if.end29.cleanup_crit_edge, label %do.end

if.end29.cleanup_crit_edge:                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

do.end:                                           ; preds = %if.end29
  %6 = ptrtoint ptr %bb2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bb2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp33 = icmp ne i32 %7, 4
  %brmerge = or i1 %or.cond, %cmp33
  br i1 %brmerge, label %if.else39, label %if.then36

if.then36:                                        ; preds = %do.end
  %8 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %f, align 4
  %10 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %bsize, align 4
  %lt = getelementptr inbounds %struct.nft_pipapo_field, ptr %f, i32 0, i32 4
  %12 = ptrtoint ptr %lt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lt, align 4
  %div.i = sdiv i32 %9, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp42.i = icmp sgt i32 %9, 1
  br i1 %cmp42.i, label %for.body.lr.ph.i, label %if.then36.if.end56_crit_edge

if.then36.if.end56_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

for.body.lr.ph.i:                                 ; preds = %if.then36
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp1137.i = icmp sgt i32 %11, 0
  br label %for.body.i

for.body.i:                                       ; preds = %for.end20.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %new_lt.addr.044.i = phi ptr [ %call.i.i, %for.body.lr.ph.i ], [ %new_lt.addr.2.lcssa.i, %for.end20.i.for.body.i_crit_edge ]
  %g.043.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc22.i, %for.end20.i.for.body.i_crit_edge ]
  %mul.i = shl i32 %g.043.i, 5
  br label %for.body4.i

for.body4.i:                                      ; preds = %for.end.i.for.body4.i_crit_edge, %for.body.i
  %new_lt.addr.141.i = phi ptr [ %new_lt.addr.044.i, %for.body.i ], [ %new_lt.addr.2.lcssa.i, %for.end.i.for.body4.i_crit_edge ]
  %b.040.i = phi i32 [ 0, %for.body.i ], [ %inc19.i, %for.end.i.for.body4.i_crit_edge ]
  br i1 %cmp1137.i, label %for.body12.lr.ph.i, label %for.body4.i.for.end.i_crit_edge

for.body4.i.for.end.i_crit_edge:                  ; preds = %for.body4.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body12.lr.ph.i:                               ; preds = %for.body4.i
  %rem.urem.i = and i32 %b.040.i, 15
  %add.i = or i32 %mul.i, %rem.urem.i
  %add9.i = or i32 %add.i, 16
  %div5.udiv47.i = lshr i32 %b.040.i, 4
  %add7.i = add i32 %div5.udiv47.i, %mul.i
  %mul13.i = mul i32 %add7.i, %11
  %mul15.i = mul i32 %add9.i, %11
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.body12.i.for.body12.i_crit_edge, %for.body12.lr.ph.i
  %new_lt.addr.239.i = phi ptr [ %new_lt.addr.141.i, %for.body12.lr.ph.i ], [ %incdec.ptr.i, %for.body12.i.for.body12.i_crit_edge ]
  %i.038.i = phi i32 [ 0, %for.body12.lr.ph.i ], [ %inc.i, %for.body12.i.for.body12.i_crit_edge ]
  %add14.i = add i32 %i.038.i, %mul13.i
  %arrayidx.i = getelementptr i32, ptr %13, i32 %add14.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx.i, align 4
  %add16.i = add i32 %i.038.i, %mul15.i
  %arrayidx17.i = getelementptr i32, ptr %13, i32 %add16.i
  %16 = ptrtoint ptr %arrayidx17.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx17.i, align 4
  %and.i = and i32 %17, %15
  %18 = ptrtoint ptr %new_lt.addr.239.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %and.i, ptr %new_lt.addr.239.i, align 4
  %incdec.ptr.i = getelementptr i32, ptr %new_lt.addr.239.i, i32 1
  %inc.i = add nuw nsw i32 %i.038.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %11
  br i1 %exitcond.not.i, label %for.body12.i.for.end.i_crit_edge, label %for.body12.i.for.body12.i_crit_edge

for.body12.i.for.body12.i_crit_edge:              ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body12.i

for.body12.i.for.end.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.body12.i.for.end.i_crit_edge, %for.body4.i.for.end.i_crit_edge
  %new_lt.addr.2.lcssa.i = phi ptr [ %new_lt.addr.141.i, %for.body4.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.body12.i.for.end.i_crit_edge ]
  %inc19.i = add nuw nsw i32 %b.040.i, 1
  %exitcond45.not.i = icmp eq i32 %inc19.i, 256
  br i1 %exitcond45.not.i, label %for.end20.i, label %for.end.i.for.body4.i_crit_edge

for.end.i.for.body4.i_crit_edge:                  ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4.i

for.end20.i:                                      ; preds = %for.end.i
  %inc22.i = add nuw nsw i32 %g.043.i, 1
  %exitcond46.not.i = icmp eq i32 %inc22.i, %div.i
  br i1 %exitcond46.not.i, label %for.end20.i.if.end56_crit_edge, label %for.end20.i.for.body.i_crit_edge

for.end20.i.for.body.i_crit_edge:                 ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.end20.i.if.end56_crit_edge:                   ; preds = %for.end20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

if.else39:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp41 = icmp eq i32 %7, 8
  %19 = and i1 %or.cond, %cmp41
  br i1 %19, label %if.then44, label %do.body49

if.then44:                                        ; preds = %if.else39
  %20 = ptrtoint ptr %f to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %f, align 4
  %22 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %bsize, align 4
  %lt47 = getelementptr inbounds %struct.nft_pipapo_field, ptr %f, i32 0, i32 4
  %24 = ptrtoint ptr %lt47 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lt47, align 4
  %mul.i98 = shl i32 %21, 1
  %mul2.i = shl i32 %21, 7
  %mul3.i = mul i32 %mul2.i, %23
  %26 = call ptr @memset(ptr %call.i.i, i32 0, i32 %mul3.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i98)
  %cmp110.i = icmp sgt i32 %mul.i98, 0
  br i1 %cmp110.i, label %for.body.lr.ph.i99, label %if.then44.if.end56_crit_edge

if.then44.if.end56_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

for.body.lr.ph.i99:                               ; preds = %if.then44
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %23)
  %cmp1596.i = icmp slt i32 %23, 1
  br label %for.body.i100

for.body.i100:                                    ; preds = %for.end56.i.for.body.i100_crit_edge, %for.body.lr.ph.i99
  %g.0112.i = phi i32 [ 0, %for.body.lr.ph.i99 ], [ %add58.i, %for.end56.i.for.body.i100_crit_edge ]
  %new_lt.addr.0111.i = phi ptr [ %call.i.i, %for.body.lr.ph.i99 ], [ %add.ptr53.i, %for.end56.i.for.body.i100_crit_edge ]
  %mul8.i = shl i32 %g.0112.i, 7
  %mul10.i = add i32 %mul8.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 2147483392, i32 %mul8.i)
  %cmp1198.not.i = icmp eq i32 %mul8.i, 2147483392
  br label %for.body7.i

for.body7.i:                                      ; preds = %for.end22.i.for.body7.i_crit_edge, %for.body.i100
  %b.0101.i = phi i32 [ 0, %for.body.i100 ], [ %inc24.i, %for.end22.i.for.body7.i_crit_edge ]
  %new_lt.addr.1100.i = phi ptr [ %new_lt.addr.0111.i, %for.body.i100 ], [ %add.ptr.i, %for.end22.i.for.body7.i_crit_edge ]
  br i1 %cmp1198.not.i, label %for.body7.i.for.end22.i_crit_edge, label %for.body7.i.for.body12.i102_crit_edge

for.body7.i.for.body12.i102_crit_edge:            ; preds = %for.body7.i
  br label %for.body12.i102

for.body7.i.for.end22.i_crit_edge:                ; preds = %for.body7.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end22.i

for.body12.i102:                                  ; preds = %for.inc20.i.for.body12.i102_crit_edge, %for.body7.i.for.body12.i102_crit_edge
  %bsrc.099.i = phi i32 [ %inc21.i, %for.inc20.i.for.body12.i102_crit_edge ], [ %mul8.i, %for.body7.i.for.body12.i102_crit_edge ]
  %and.i101 = lshr i32 %bsrc.099.i, 4
  %27 = and i32 %and.i101, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %b.0101.i)
  %cmp13.not.i = icmp ne i32 %27, %b.0101.i
  %brmerge.i = or i1 %cmp1596.i, %cmp13.not.i
  br i1 %brmerge.i, label %for.body12.i102.for.inc20.i_crit_edge, label %for.body16.lr.ph.i

for.body12.i102.for.inc20.i_crit_edge:            ; preds = %for.body12.i102
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc20.i

for.body16.lr.ph.i:                               ; preds = %for.body12.i102
  %mul17.i = mul i32 %bsrc.099.i, %23
  br label %for.body16.i

for.body16.i:                                     ; preds = %for.body16.i.for.body16.i_crit_edge, %for.body16.lr.ph.i
  %i.097.i = phi i32 [ 0, %for.body16.lr.ph.i ], [ %inc.i104, %for.body16.i.for.body16.i_crit_edge ]
  %add18.i = add i32 %i.097.i, %mul17.i
  %arrayidx.i103 = getelementptr i32, ptr %25, i32 %add18.i
  %28 = ptrtoint ptr %arrayidx.i103 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i103, align 4
  %arrayidx19.i = getelementptr i32, ptr %new_lt.addr.1100.i, i32 %i.097.i
  %30 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx19.i, align 4
  %or.i = or i32 %31, %29
  store i32 %or.i, ptr %arrayidx19.i, align 4
  %inc.i104 = add nuw nsw i32 %i.097.i, 1
  %exitcond.not.i105 = icmp eq i32 %inc.i104, %23
  br i1 %exitcond.not.i105, label %for.body16.i.for.inc20.i_crit_edge, label %for.body16.i.for.body16.i_crit_edge

for.body16.i.for.body16.i_crit_edge:              ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body16.i

for.body16.i.for.inc20.i_crit_edge:               ; preds = %for.body16.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc20.i

for.inc20.i:                                      ; preds = %for.body16.i.for.inc20.i_crit_edge, %for.body12.i102.for.inc20.i_crit_edge
  %inc21.i = add nsw i32 %bsrc.099.i, 1
  %cmp11.i = icmp slt i32 %inc21.i, %mul10.i
  br i1 %cmp11.i, label %for.inc20.i.for.body12.i102_crit_edge, label %for.inc20.i.for.end22.i_crit_edge

for.inc20.i.for.end22.i_crit_edge:                ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end22.i

for.inc20.i.for.body12.i102_crit_edge:            ; preds = %for.inc20.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body12.i102

for.end22.i:                                      ; preds = %for.inc20.i.for.end22.i_crit_edge, %for.body7.i.for.end22.i_crit_edge
  %add.ptr.i = getelementptr i32, ptr %new_lt.addr.1100.i, i32 %23
  %inc24.i = add nuw nsw i32 %b.0101.i, 1
  %exitcond114.not.i = icmp eq i32 %inc24.i, 16
  br i1 %exitcond114.not.i, label %for.end22.i.for.body28.i_crit_edge, label %for.end22.i.for.body7.i_crit_edge

for.end22.i.for.body7.i_crit_edge:                ; preds = %for.end22.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body7.i

for.end22.i.for.body28.i_crit_edge:               ; preds = %for.end22.i
  br label %for.body28.i

for.body28.i:                                     ; preds = %for.end52.i.for.body28.i_crit_edge, %for.end22.i.for.body28.i_crit_edge
  %b.1108.i = phi i32 [ %inc55.i, %for.end52.i.for.body28.i_crit_edge ], [ 0, %for.end22.i.for.body28.i_crit_edge ]
  %new_lt.addr.2107.i = phi ptr [ %add.ptr53.i, %for.end52.i.for.body28.i_crit_edge ], [ %add.ptr.i, %for.end22.i.for.body28.i_crit_edge ]
  br i1 %cmp1198.not.i, label %for.body28.i.for.end52.i_crit_edge, label %for.body28.i.for.body34.i_crit_edge

for.body28.i.for.body34.i_crit_edge:              ; preds = %for.body28.i
  br label %for.body34.i

for.body28.i.for.end52.i_crit_edge:               ; preds = %for.body28.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end52.i

for.body34.i:                                     ; preds = %for.inc50.i.for.body34.i_crit_edge, %for.body28.i.for.body34.i_crit_edge
  %bsrc.1106.i = phi i32 [ %inc51.i, %for.inc50.i.for.body34.i_crit_edge ], [ %mul8.i, %for.body28.i.for.body34.i_crit_edge ]
  %and35.i = and i32 %bsrc.1106.i, 15
  call void @__sanitizer_cov_trace_cmp4(i32 %and35.i, i32 %b.1108.i)
  %cmp36.not.i = icmp ne i32 %and35.i, %b.1108.i
  %brmerge113.i = or i1 %cmp1596.i, %cmp36.not.i
  br i1 %brmerge113.i, label %for.body34.i.for.inc50.i_crit_edge, label %for.body41.lr.ph.i

for.body34.i.for.inc50.i_crit_edge:               ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc50.i

for.body41.lr.ph.i:                               ; preds = %for.body34.i
  %mul42.i = mul i32 %bsrc.1106.i, %23
  br label %for.body41.i

for.body41.i:                                     ; preds = %for.body41.i.for.body41.i_crit_edge, %for.body41.lr.ph.i
  %i.1104.i = phi i32 [ 0, %for.body41.lr.ph.i ], [ %inc48.i, %for.body41.i.for.body41.i_crit_edge ]
  %add43.i = add i32 %i.1104.i, %mul42.i
  %arrayidx44.i = getelementptr i32, ptr %25, i32 %add43.i
  %32 = ptrtoint ptr %arrayidx44.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx44.i, align 4
  %arrayidx45.i = getelementptr i32, ptr %new_lt.addr.2107.i, i32 %i.1104.i
  %34 = ptrtoint ptr %arrayidx45.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx45.i, align 4
  %or46.i = or i32 %35, %33
  store i32 %or46.i, ptr %arrayidx45.i, align 4
  %inc48.i = add nuw nsw i32 %i.1104.i, 1
  %exitcond115.not.i = icmp eq i32 %inc48.i, %23
  br i1 %exitcond115.not.i, label %for.body41.i.for.inc50.i_crit_edge, label %for.body41.i.for.body41.i_crit_edge

for.body41.i.for.body41.i_crit_edge:              ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body41.i

for.body41.i.for.inc50.i_crit_edge:               ; preds = %for.body41.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc50.i

for.inc50.i:                                      ; preds = %for.body41.i.for.inc50.i_crit_edge, %for.body34.i.for.inc50.i_crit_edge
  %inc51.i = add nsw i32 %bsrc.1106.i, 1
  %cmp33.i = icmp slt i32 %inc51.i, %mul10.i
  br i1 %cmp33.i, label %for.inc50.i.for.body34.i_crit_edge, label %for.inc50.i.for.end52.i_crit_edge

for.inc50.i.for.end52.i_crit_edge:                ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end52.i

for.inc50.i.for.body34.i_crit_edge:               ; preds = %for.inc50.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body34.i

for.end52.i:                                      ; preds = %for.inc50.i.for.end52.i_crit_edge, %for.body28.i.for.end52.i_crit_edge
  %add.ptr53.i = getelementptr i32, ptr %new_lt.addr.2107.i, i32 %23
  %inc55.i = add nuw nsw i32 %b.1108.i, 1
  %exitcond116.not.i = icmp eq i32 %inc55.i, 16
  br i1 %exitcond116.not.i, label %for.end56.i, label %for.end52.i.for.body28.i_crit_edge

for.end52.i.for.body28.i_crit_edge:               ; preds = %for.end52.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body28.i

for.end56.i:                                      ; preds = %for.end52.i
  %add58.i = add nuw nsw i32 %g.0112.i, 2
  %cmp.i = icmp slt i32 %add58.i, %mul.i98
  br i1 %cmp.i, label %for.end56.i.for.body.i100_crit_edge, label %for.end56.i.if.end56_crit_edge

for.end56.i.if.end56_crit_edge:                   ; preds = %for.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end56

for.end56.i.for.body.i100_crit_edge:              ; preds = %for.end56.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i100

do.body49:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #15
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22net/netfilter/nft_set_pipapo.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 881, 0\0A.popsection", ""() #13, !srcloc !43
  unreachable

if.end56:                                         ; preds = %for.end56.i.if.end56_crit_edge, %if.then44.if.end56_crit_edge, %for.end20.i.if.end56_crit_edge, %if.then36.if.end56_crit_edge
  %36 = ptrtoint ptr %f to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %groups.0, ptr %f, align 4
  %37 = ptrtoint ptr %bb2 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %bb.0, ptr %bb2, align 4
  %lt59 = getelementptr inbounds %struct.nft_pipapo_field, ptr %f, i32 0, i32 4
  %38 = ptrtoint ptr %lt59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %lt59, align 4
  tail call void @kvfree(ptr noundef %39) #13
  %40 = ptrtoint ptr %lt59 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call.i.i, ptr %lt59, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end56, %if.end29.cleanup_crit_edge, %if.then18.cleanup_crit_edge, %if.else.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kvfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @kvmalloc_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @cpumask_next(i32 noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipapo_commit(ptr noundef %set) unnamed_addr #0 align 64 {
entry:
  %rulemap.i = alloca [16 x %union.nft_pipapo_map_bucket], align 4
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %last_gc = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 16
  %1 = ptrtoint ptr %last_gc to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %last_gc, align 4
  %gc_int.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 16
  %3 = ptrtoint ptr %gc_int.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gc_int.i, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not.i = icmp eq i32 %4, 0
  br i1 %tobool.not.i, label %entry.nft_set_gc_interval.exit_crit_edge, label %if.else.i.i

entry.nft_set_gc_interval.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %nft_set_gc_interval.exit

if.else.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  %call2.i.i = tail call i32 @__msecs_to_jiffies(i32 noundef %4) #13
  br label %nft_set_gc_interval.exit

nft_set_gc_interval.exit:                         ; preds = %if.else.i.i, %entry.nft_set_gc_interval.exit_crit_edge
  %cond.i = phi i32 [ 100, %entry.nft_set_gc_interval.exit_crit_edge ], [ %call2.i.i, %if.else.i.i ]
  %5 = add i32 %2, %cond.i
  %sub = sub i32 %0, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub)
  %cmp = icmp sgt i32 %sub, -1
  br i1 %cmp, label %if.then, label %nft_set_gc_interval.exit.if.end_crit_edge

nft_set_gc_interval.exit.if.end_crit_edge:        ; preds = %nft_set_gc_interval.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end

if.then:                                          ; preds = %nft_set_gc_interval.exit
  %clone = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  %6 = ptrtoint ptr %clone to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clone, align 4
  %f.i = getelementptr inbounds %struct.nft_pipapo_match, ptr %7, i32 0, i32 4
  %rules.i.i = getelementptr inbounds %struct.nft_pipapo_match, ptr %7, i32 1, i32 1
  %8 = ptrtoint ptr %rules.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %rules.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp24.i75.not.i = icmp eq i32 %9, 0
  br i1 %cmp24.i75.not.i, label %if.then.while.end.i_crit_edge, label %for.body.lr.ph.i.lr.ph.i

if.then.while.end.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

for.body.lr.ph.i.lr.ph.i:                         ; preds = %if.then
  %mt.i.i = getelementptr inbounds %struct.nft_pipapo_match, ptr %7, i32 2
  %dirty.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 12
  br label %for.body.lr.ph.i.i

for.body.lr.ph.i.i:                               ; preds = %if.end30.i.for.body.lr.ph.i.i_crit_edge, %for.body.lr.ph.i.lr.ph.i
  %10 = phi i32 [ %9, %for.body.lr.ph.i.lr.ph.i ], [ %39, %if.end30.i.for.body.lr.ph.i.i_crit_edge ]
  %first_rule.076.i = phi i32 [ 0, %for.body.lr.ph.i.lr.ph.i ], [ %first_rule.1.i, %if.end30.i.for.body.lr.ph.i.i_crit_edge ]
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i68.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %r.026.i.i = phi i32 [ %first_rule.076.i, %for.body.lr.ph.i.i ], [ %inc.i.i, %if.end.i.i68.for.body.i.i_crit_edge ]
  %e.025.i.i = phi ptr [ null, %for.body.lr.ph.i.i ], [ %18, %if.end.i.i68.for.body.i.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %r.026.i.i, i32 %first_rule.076.i)
  %cmp1.not.i.i = icmp eq i32 %r.026.i.i, %first_rule.076.i
  br i1 %cmp1.not.i.i, label %for.body.i.i.if.end.i.i68_crit_edge, label %land.lhs.true.i.i

for.body.i.i.if.end.i.i68_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i68

land.lhs.true.i.i:                                ; preds = %for.body.i.i
  %11 = ptrtoint ptr %mt.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %mt.i.i, align 4
  %arrayidx.i.i = getelementptr %union.nft_pipapo_map_bucket, ptr %12, i32 %r.026.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx.i.i, align 4
  %cmp2.not.i.i = icmp eq ptr %e.025.i.i, %14
  br i1 %cmp2.not.i.i, label %land.lhs.true.i.i.if.end.i.i68_crit_edge, label %land.lhs.true.i.i.pipapo_rules_same_key.exit.i_crit_edge

land.lhs.true.i.i.pipapo_rules_same_key.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_rules_same_key.exit.i

land.lhs.true.i.i.if.end.i.i68_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end.i.i68

if.end.i.i68:                                     ; preds = %land.lhs.true.i.i.if.end.i.i68_crit_edge, %for.body.i.i.if.end.i.i68_crit_edge
  %15 = ptrtoint ptr %mt.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %mt.i.i, align 4
  %arrayidx4.i.i = getelementptr %union.nft_pipapo_map_bucket, ptr %16, i32 %r.026.i.i
  %17 = ptrtoint ptr %arrayidx4.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx4.i.i, align 4
  %inc.i.i = add i32 %r.026.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %10
  br i1 %exitcond.not.i.i, label %for.end.i.i, label %if.end.i.i68.for.body.i.i_crit_edge

if.end.i.i68.for.body.i.i_crit_edge:              ; preds = %if.end.i.i68
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i.i

for.end.i.i:                                      ; preds = %if.end.i.i68
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %first_rule.076.i)
  %cmp5.not.i.i = icmp eq i32 %10, %first_rule.076.i
  br i1 %cmp5.not.i.i, label %for.end.i.i.while.end.i_crit_edge, label %for.end.i.i.pipapo_rules_same_key.exit.i_crit_edge

for.end.i.i.pipapo_rules_same_key.exit.i_crit_edge: ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_rules_same_key.exit.i

for.end.i.i.while.end.i_crit_edge:                ; preds = %for.end.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

pipapo_rules_same_key.exit.i:                     ; preds = %for.end.i.i.pipapo_rules_same_key.exit.i_crit_edge, %land.lhs.true.i.i.pipapo_rules_same_key.exit.i_crit_edge
  %r.026.i.pn.i = phi i32 [ %10, %for.end.i.i.pipapo_rules_same_key.exit.i_crit_edge ], [ %r.026.i.i, %land.lhs.true.i.i.pipapo_rules_same_key.exit.i_crit_edge ]
  %retval.0.i.i = sub i32 %r.026.i.pn.i, %first_rule.076.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool.not.i69 = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool.not.i69, label %pipapo_rules_same_key.exit.i.while.end.i_crit_edge, label %while.body.i

pipapo_rules_same_key.exit.i.while.end.i_crit_edge: ; preds = %pipapo_rules_same_key.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

while.body.i:                                     ; preds = %pipapo_rules_same_key.exit.i
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %rulemap.i) #13
  %19 = call ptr @memset(ptr %rulemap.i, i32 255, i32 64)
  %20 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp69.i = icmp sgt i32 %21, 0
  br i1 %cmp69.i, label %for.body.lr.ph.i, label %while.body.i.for.end.i_crit_edge

while.body.i.for.end.i_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %while.body.i
  %sub.i = add nsw i32 %21, -1
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %rules_fx.073.i = phi i32 [ %retval.0.i.i, %for.body.lr.ph.i ], [ %rules_fx.1.i, %for.inc.i.for.body.i_crit_edge ]
  %start.072.i = phi i32 [ %first_rule.076.i, %for.body.lr.ph.i ], [ %start.1.i, %for.inc.i.for.body.i_crit_edge ]
  %i.071.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %f2.070.i = phi ptr [ %f.i, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr [16 x %union.nft_pipapo_map_bucket], ptr %rulemap.i, i32 0, i32 %i.071.i
  %bf.shl.i = shl i32 %start.072.i, 8
  %bf.value7.i = and i32 %rules_fx.073.i, 255
  %bf.set9.i = or i32 %bf.shl.i, %bf.value7.i
  %22 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %bf.set9.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.071.i, i32 %sub.i)
  %cmp11.i = icmp slt i32 %i.071.i, %sub.i
  br i1 %cmp11.i, label %if.then.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.inc.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  %mt.i = getelementptr inbounds %struct.nft_pipapo_field, ptr %f2.070.i, i32 0, i32 5
  %23 = ptrtoint ptr %mt.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %mt.i, align 4
  %arrayidx12.i = getelementptr %union.nft_pipapo_map_bucket, ptr %24, i32 %start.072.i
  %25 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %bf.load13.i = load i32, ptr %arrayidx12.i, align 4
  %bf.clear14.i = and i32 %bf.load13.i, 255
  %bf.lshr.i = lshr i32 %bf.load13.i, 8
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then.i, %for.body.i.for.inc.i_crit_edge
  %start.1.i = phi i32 [ %bf.lshr.i, %if.then.i ], [ %start.072.i, %for.body.i.for.inc.i_crit_edge ]
  %rules_fx.1.i = phi i32 [ %bf.clear14.i, %if.then.i ], [ %rules_fx.073.i, %for.body.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.071.i, 1
  %incdec.ptr.i = getelementptr %struct.nft_pipapo_field, ptr %f2.070.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, %21
  br i1 %exitcond.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end.i

for.end.i:                                        ; preds = %for.inc.i.for.end.i_crit_edge, %while.body.i.for.end.i_crit_edge
  %f2.0.lcssa.i = phi ptr [ %f.i, %while.body.i.for.end.i_crit_edge ], [ %incdec.ptr.i, %for.inc.i.for.end.i_crit_edge ]
  %i.0.lcssa.i = phi i32 [ 0, %while.body.i.for.end.i_crit_edge ], [ %21, %for.inc.i.for.end.i_crit_edge ]
  %dec.i = add nsw i32 %i.0.lcssa.i, -1
  %mt19.i = getelementptr %struct.nft_pipapo_field, ptr %f2.0.lcssa.i, i32 -1, i32 5
  %26 = ptrtoint ptr %mt19.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %mt19.i, align 4
  %arrayidx20.i = getelementptr [16 x %union.nft_pipapo_map_bucket], ptr %rulemap.i, i32 0, i32 %dec.i
  %28 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %bf.load21.i = load i32, ptr %arrayidx20.i, align 4
  %bf.lshr22.i = lshr i32 %bf.load21.i, 8
  %arrayidx23.i = getelementptr %union.nft_pipapo_map_bucket, ptr %27, i32 %bf.lshr22.i
  %29 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx23.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %30, null
  br i1 %tobool.not.i.i.i, label %for.end.i.if.end30.i_crit_edge, label %nft_set_ext_exists.exit.i.i

for.end.i.if.end30.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

nft_set_ext_exists.exit.i.i:                      ; preds = %for.end.i
  %arrayidx.i.i.i.i = getelementptr %struct.nft_set_ext, ptr %30, i32 0, i32 1, i32 5
  %31 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx.i.i.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.i.i.not.i.i = icmp eq i8 %32, 0
  br i1 %tobool.i.i.not.i.i, label %nft_set_ext_exists.exit.i.i.if.end30.i_crit_edge, label %nft_set_elem_expired.exit.i

nft_set_ext_exists.exit.i.i.if.end30.i_crit_edge: ; preds = %nft_set_ext_exists.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

nft_set_elem_expired.exit.i:                      ; preds = %nft_set_ext_exists.exit.i.i
  %call1.i.i = tail call i64 @get_jiffies_64() #13
  %33 = ptrtoint ptr %arrayidx.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx.i.i.i.i, align 1
  %conv.i.i.i.i = zext i8 %34 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %30, i32 %conv.i.i.i.i
  %35 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load8_noabort(i32 %35)
  %36 = load i64, ptr %add.ptr.i.i.i.i, align 8
  %sub.i62.i = sub i64 %call1.i.i, %36
  call void @__sanitizer_cov_trace_const_cmp8(i64 -1, i64 %sub.i62.i)
  %cmp.i.i70 = icmp sgt i64 %sub.i62.i, -1
  br i1 %cmp.i.i70, label %land.lhs.true.i, label %nft_set_elem_expired.exit.i.if.end30.i_crit_edge

nft_set_elem_expired.exit.i.if.end30.i_crit_edge: ; preds = %nft_set_elem_expired.exit.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

land.lhs.true.i:                                  ; preds = %nft_set_elem_expired.exit.i
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 26, ptr noundef nonnull %30) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool27.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool27.not.i, label %if.then28.i, label %land.lhs.true.i.if.end30.i_crit_edge

land.lhs.true.i.if.end30.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end30.i

if.then28.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15
  %37 = ptrtoint ptr %dirty.i to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 1, ptr %dirty.i, align 4
  call fastcc void @pipapo_drop(ptr noundef %7, ptr noundef nonnull %rulemap.i) #13
  tail call void @rcu_barrier() #13
  tail call void @nft_set_elem_destroy(ptr noundef %set, ptr noundef nonnull %30, i1 noundef zeroext true) #13
  br label %if.end30.i

if.end30.i:                                       ; preds = %if.then28.i, %land.lhs.true.i.if.end30.i_crit_edge, %nft_set_elem_expired.exit.i.if.end30.i_crit_edge, %nft_set_ext_exists.exit.i.i.if.end30.i_crit_edge, %for.end.i.if.end30.i_crit_edge
  %first_rule.1.i = phi i32 [ %first_rule.076.i, %if.then28.i ], [ %r.026.i.pn.i, %for.end.i.if.end30.i_crit_edge ], [ %r.026.i.pn.i, %nft_set_ext_exists.exit.i.i.if.end30.i_crit_edge ], [ %r.026.i.pn.i, %land.lhs.true.i.if.end30.i_crit_edge ], [ %r.026.i.pn.i, %nft_set_elem_expired.exit.i.if.end30.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %rulemap.i) #13
  %38 = ptrtoint ptr %rules.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rules.i.i, align 4
  %cmp24.i.i = icmp ugt i32 %39, %first_rule.1.i
  br i1 %cmp24.i.i, label %if.end30.i.for.body.lr.ph.i.i_crit_edge, label %if.end30.i.while.end.i_crit_edge

if.end30.i.while.end.i_crit_edge:                 ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %while.end.i

if.end30.i.for.body.lr.ph.i.i_crit_edge:          ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.lr.ph.i.i

while.end.i:                                      ; preds = %if.end30.i.while.end.i_crit_edge, %pipapo_rules_same_key.exit.i.while.end.i_crit_edge, %for.end.i.i.while.end.i_crit_edge, %if.then.while.end.i_crit_edge
  %call31.i = tail call ptr @nft_set_catchall_gc(ptr noundef %set) #13
  %tobool32.not.i = icmp eq ptr %call31.i, null
  br i1 %tobool32.not.i, label %while.end.i.pipapo_gc.exit_crit_edge, label %if.then33.i

while.end.i.pipapo_gc.exit_crit_edge:             ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_gc.exit

if.then33.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @nft_set_elem_destroy(ptr noundef %set, ptr noundef nonnull %call31.i, i1 noundef zeroext true) #13
  br label %pipapo_gc.exit

pipapo_gc.exit:                                   ; preds = %if.then33.i, %while.end.i.pipapo_gc.exit_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %40 = load volatile i32, ptr @jiffies, align 128
  %41 = ptrtoint ptr %last_gc to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %last_gc, align 4
  br label %if.end

if.end:                                           ; preds = %pipapo_gc.exit, %nft_set_gc_interval.exit.if.end_crit_edge
  %dirty = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 12
  %42 = ptrtoint ptr %dirty to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dirty, align 4, !range !32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not = icmp eq i8 %43, 0
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %clone4 = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  %44 = ptrtoint ptr %clone4 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clone4, align 4
  %call5 = tail call fastcc ptr @pipapo_clone(ptr noundef %45)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end3.cleanup_crit_edge, label %if.end8

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup

if.end8:                                          ; preds = %if.end3
  %46 = ptrtoint ptr %dirty to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 0, ptr %dirty, align 4
  %47 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %data.i, align 4
  %49 = ptrtoint ptr %clone4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %clone4, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #13, !srcloc !44
  %51 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %50, ptr %data.i, align 4
  %tobool50.not = icmp eq ptr %48, null
  br i1 %tobool50.not, label %if.end8.if.end52_crit_edge, label %if.then51

if.end8.if.end52_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  br label %if.end52

if.then51:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #15
  %rcu = getelementptr inbounds %struct.nft_pipapo_match, ptr %48, i32 0, i32 3
  tail call void @call_rcu(ptr noundef %rcu, ptr noundef nonnull @pipapo_reclaim_match) #13
  br label %if.end52

if.end52:                                         ; preds = %if.then51, %if.end8.if.end52_crit_edge
  %52 = ptrtoint ptr %clone4 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call5, ptr %clone4, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end52, %if.end3.cleanup_crit_edge, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @pipapo_clone(ptr nocapture noundef readonly %old) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %old, align 4
  %mul = mul i32 %1, 24
  %add = add i32 %mul, 20
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #18
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %entry.cleanup80_crit_edge, label %if.end

entry.cleanup80_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %old, align 4
  %4 = ptrtoint ptr %call9.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %call9.i, align 128
  %bsize_max = getelementptr inbounds %struct.nft_pipapo_match, ptr %old, i32 0, i32 2
  %5 = ptrtoint ptr %bsize_max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %bsize_max, align 4
  %bsize_max4 = getelementptr inbounds %struct.nft_pipapo_match, ptr %call9.i, i32 0, i32 2
  %7 = ptrtoint ptr %bsize_max4 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %bsize_max4, align 8
  %call5 = tail call noalias ptr @__alloc_percpu(i32 noundef 4, i32 noundef 4) #18
  %scratch = getelementptr inbounds %struct.nft_pipapo_match, ptr %call9.i, i32 0, i32 1
  %8 = ptrtoint ptr %scratch to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %scratch, align 4
  %tobool7.not = icmp eq ptr %call5, null
  br i1 %tobool7.not, label %if.end.out_scratch_crit_edge, label %for.cond.preheader

if.end.out_scratch_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_scratch

for.cond.preheader:                               ; preds = %if.end
  %call10150 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call10150, i32 %9)
  %cmp151 = icmp ult i32 %call10150, %9
  br i1 %cmp151, label %for.cond.preheader.do.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %for.cond.preheader.do.body_crit_edge
  %call10152 = phi i32 [ %call10, %do.body.do.body_crit_edge ], [ %call10150, %for.cond.preheader.do.body_crit_edge ]
  %10 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scratch, align 4
  %12 = ptrtoint ptr %11 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call10152
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  %add13 = add i32 %14, %12
  %15 = inttoptr i32 %add13 to ptr
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %15, align 4
  %call10 = tail call i32 @cpumask_next(i32 noundef %call10152, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %17 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call10, %17
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %18 = ptrtoint ptr %bsize_max to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bsize_max, align 4
  %call15 = tail call fastcc i32 @pipapo_realloc_scratch(ptr noundef nonnull %call9.i, i32 noundef %19)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %if.end18, label %for.end.out_scratch_realloc_crit_edge

for.end.out_scratch_realloc_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_scratch_realloc

if.end18:                                         ; preds = %for.end
  %func.i = getelementptr inbounds %struct.nft_pipapo_match, ptr %call9.i, i32 0, i32 3, i32 1
  %20 = ptrtoint ptr %func.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %func.i, align 16
  %21 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %old, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp23153 = icmp sgt i32 %22, 0
  br i1 %cmp23153, label %for.body24.preheader, label %if.end18.cleanup80_crit_edge

if.end18.cleanup80_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

for.body24.preheader:                             ; preds = %if.end18
  %f19 = getelementptr inbounds %struct.nft_pipapo_match, ptr %call9.i, i32 0, i32 4
  %f = getelementptr inbounds %struct.nft_pipapo_match, ptr %old, i32 0, i32 4
  br label %for.body24

for.body24:                                       ; preds = %for.inc.for.body24_crit_edge, %for.body24.preheader
  %dst.0156 = phi ptr [ %incdec.ptr51, %for.inc.for.body24_crit_edge ], [ %f19, %for.body24.preheader ]
  %src.0155 = phi ptr [ %incdec.ptr, %for.inc.for.body24_crit_edge ], [ %f, %for.body24.preheader ]
  %i.1154 = phi i32 [ %inc, %for.inc.for.body24_crit_edge ], [ 0, %for.body24.preheader ]
  %23 = call ptr @memcpy(ptr %dst.0156, ptr %src.0155, i32 16)
  %24 = ptrtoint ptr %src.0155 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src.0155, align 4
  %bb = getelementptr inbounds %struct.nft_pipapo_field, ptr %src.0155, i32 0, i32 3
  %26 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %bb, align 4
  %mul25 = shl i32 %25, %27
  %bsize = getelementptr inbounds %struct.nft_pipapo_field, ptr %src.0155, i32 0, i32 2
  %28 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %bsize, align 4
  %mul26 = shl i32 %29, 2
  %mul27 = mul i32 %mul26, %mul25
  %call.i.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul27, i32 noundef 3520, i32 noundef -1) #18
  %tobool30.not = icmp eq ptr %call.i.i, null
  br i1 %tobool30.not, label %for.body24.out_lt_crit_edge, label %if.end32

for.body24.out_lt_crit_edge:                      ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_lt

if.end32:                                         ; preds = %for.body24
  %lt = getelementptr inbounds %struct.nft_pipapo_field, ptr %dst.0156, i32 0, i32 4
  %30 = ptrtoint ptr %lt to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call.i.i, ptr %lt, align 4
  %lt33 = getelementptr inbounds %struct.nft_pipapo_field, ptr %src.0155, i32 0, i32 4
  %31 = ptrtoint ptr %lt33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %lt33, align 4
  %33 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %bsize, align 4
  %mul35 = shl i32 %34, 2
  %35 = ptrtoint ptr %src.0155 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src.0155, align 4
  %mul37 = mul i32 %mul35, %36
  %37 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %bb, align 4
  %mul40 = shl i32 %mul37, %38
  %39 = call ptr @memcpy(ptr %call.i.i, ptr %32, i32 %mul40)
  %rules = getelementptr inbounds %struct.nft_pipapo_field, ptr %src.0155, i32 0, i32 1
  %40 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rules, align 4
  %mul41 = shl i32 %41, 2
  %call.i = tail call noalias ptr @kvmalloc_node(i32 noundef %mul41, i32 noundef 3264, i32 noundef -1) #18
  %mt = getelementptr inbounds %struct.nft_pipapo_field, ptr %dst.0156, i32 0, i32 5
  %42 = ptrtoint ptr %mt to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %mt, align 4
  %tobool44.not = icmp eq ptr %call.i, null
  br i1 %tobool44.not, label %out_mt, label %for.inc

for.inc:                                          ; preds = %if.end32
  %mt48 = getelementptr inbounds %struct.nft_pipapo_field, ptr %src.0155, i32 0, i32 5
  %43 = ptrtoint ptr %mt48 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %mt48, align 4
  %45 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %rules, align 4
  %mul50 = shl i32 %46, 2
  %47 = call ptr @memcpy(ptr %call.i, ptr %44, i32 %mul50)
  %incdec.ptr = getelementptr %struct.nft_pipapo_field, ptr %src.0155, i32 1
  %incdec.ptr51 = getelementptr %struct.nft_pipapo_field, ptr %dst.0156, i32 1
  %inc = add nuw nsw i32 %i.1154, 1
  %48 = ptrtoint ptr %old to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %old, align 4
  %cmp23 = icmp slt i32 %inc, %49
  br i1 %cmp23, label %for.inc.for.body24_crit_edge, label %for.inc.cleanup80_crit_edge

for.inc.cleanup80_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %cleanup80

for.inc.for.body24_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body24

out_mt:                                           ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #15
  %lt.le = getelementptr inbounds %struct.nft_pipapo_field, ptr %dst.0156, i32 0, i32 4
  %50 = ptrtoint ptr %lt.le to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %lt.le, align 4
  tail call void @kvfree(ptr noundef %51) #13
  br label %out_lt

out_lt:                                           ; preds = %out_mt, %for.body24.out_lt_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1154)
  %cmp56157.not = icmp eq i32 %i.1154, 0
  br i1 %cmp56157.not, label %out_lt.out_scratch_realloc_crit_edge, label %out_lt.for.body57_crit_edge

out_lt.for.body57_crit_edge:                      ; preds = %out_lt
  br label %for.body57

out_lt.out_scratch_realloc_crit_edge:             ; preds = %out_lt
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_scratch_realloc

for.body57:                                       ; preds = %for.body57.for.body57_crit_edge, %out_lt.for.body57_crit_edge
  %dst.1.pn159 = phi ptr [ %dst.2, %for.body57.for.body57_crit_edge ], [ %dst.0156, %out_lt.for.body57_crit_edge ]
  %i.2158 = phi i32 [ %dec, %for.body57.for.body57_crit_edge ], [ %i.1154, %out_lt.for.body57_crit_edge ]
  %dst.2 = getelementptr %struct.nft_pipapo_field, ptr %dst.1.pn159, i32 -1
  %mt58 = getelementptr %struct.nft_pipapo_field, ptr %dst.1.pn159, i32 -1, i32 5
  %52 = ptrtoint ptr %mt58 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %mt58, align 4
  tail call void @kvfree(ptr noundef %53) #13
  %lt59 = getelementptr %struct.nft_pipapo_field, ptr %dst.1.pn159, i32 -1, i32 4
  %54 = ptrtoint ptr %lt59 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %lt59, align 4
  tail call void @kvfree(ptr noundef %55) #13
  %dec = add nsw i32 %i.2158, -1
  %cmp56 = icmp sgt i32 %i.2158, 1
  br i1 %cmp56, label %for.body57.for.body57_crit_edge, label %for.body57.out_scratch_realloc_crit_edge

for.body57.out_scratch_realloc_crit_edge:         ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_scratch_realloc

for.body57.for.body57_crit_edge:                  ; preds = %for.body57
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body57

out_scratch_realloc:                              ; preds = %for.body57.out_scratch_realloc_crit_edge, %out_lt.out_scratch_realloc_crit_edge, %for.end.out_scratch_realloc_crit_edge
  %call64160 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %56 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call64160, i32 %56)
  %cmp65161 = icmp ult i32 %call64160, %56
  br i1 %cmp65161, label %out_scratch_realloc.do.body67_crit_edge, label %out_scratch_realloc.out_scratch_crit_edge

out_scratch_realloc.out_scratch_crit_edge:        ; preds = %out_scratch_realloc
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_scratch

out_scratch_realloc.do.body67_crit_edge:          ; preds = %out_scratch_realloc
  br label %do.body67

do.body67:                                        ; preds = %do.body67.do.body67_crit_edge, %out_scratch_realloc.do.body67_crit_edge
  %call64162 = phi i32 [ %call64, %do.body67.do.body67_crit_edge ], [ %call64160, %out_scratch_realloc.do.body67_crit_edge ]
  %57 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %scratch, align 4
  %59 = ptrtoint ptr %58 to i32
  %arrayidx75 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call64162
  %60 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx75, align 4
  %add76 = add i32 %61, %59
  %62 = inttoptr i32 %add76 to ptr
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %62, align 4
  tail call void @kfree(ptr noundef %64) #13
  %call64 = tail call i32 @cpumask_next(i32 noundef %call64162, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %65 = load i32, ptr @nr_cpu_ids, align 4
  %cmp65 = icmp ult i32 %call64, %65
  br i1 %cmp65, label %do.body67.do.body67_crit_edge, label %do.body67.out_scratch_crit_edge

do.body67.out_scratch_crit_edge:                  ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #15
  br label %out_scratch

do.body67.do.body67_crit_edge:                    ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body67

out_scratch:                                      ; preds = %do.body67.out_scratch_crit_edge, %out_scratch_realloc.out_scratch_crit_edge, %if.end.out_scratch_crit_edge
  %66 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %scratch, align 4
  tail call void @free_percpu(ptr noundef %67) #13
  tail call void @kfree(ptr noundef nonnull %call9.i) #13
  br label %cleanup80

cleanup80:                                        ; preds = %out_scratch, %for.inc.cleanup80_crit_edge, %if.end18.cleanup80_crit_edge, %entry.cleanup80_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %out_scratch ], [ inttoptr (i32 -12 to ptr), %entry.cleanup80_crit_edge ], [ %call9.i, %if.end18.cleanup80_crit_edge ], [ %call9.i, %for.inc.cleanup80_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @call_rcu(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pipapo_reclaim_match(ptr noundef %rcu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %call9 = tail call i32 @cpumask_next(i32 noundef -1, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %0 = load i32, ptr @nr_cpu_ids, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call9, i32 %0)
  %cmp10 = icmp ult i32 %call9, %0
  br i1 %cmp10, label %do.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %scratch = getelementptr i8, ptr %rcu, i32 -8
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.lr.ph
  %call11 = phi i32 [ %call9, %do.body.lr.ph ], [ %call, %do.body.do.body_crit_edge ]
  %1 = ptrtoint ptr %scratch to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %scratch, align 4
  %3 = ptrtoint ptr %2 to i32
  %arrayidx = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %call11
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx, align 4
  %add = add i32 %5, %3
  %6 = inttoptr i32 %add to ptr
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 4
  tail call void @kfree(ptr noundef %8) #13
  %call = tail call i32 @cpumask_next(i32 noundef %call11, ptr noundef nonnull @__cpu_possible_mask) #19
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @nr_cpu_ids to i32))
  %9 = load i32, ptr @nr_cpu_ids, align 4
  %cmp = icmp ult i32 %call, %9
  br i1 %cmp, label %do.body.do.body_crit_edge, label %do.body.for.end_crit_edge

do.body.for.end_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #15
  br label %do.body

for.end:                                          ; preds = %do.body.for.end_crit_edge, %entry.for.end_crit_edge
  %add.ptr = getelementptr i8, ptr %rcu, i32 -12
  %scratch3 = getelementptr i8, ptr %rcu, i32 -8
  %10 = ptrtoint ptr %scratch3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %scratch3, align 4
  tail call void @free_percpu(ptr noundef %11) #13
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp6.i = icmp sgt i32 %13, 0
  br i1 %cmp6.i, label %for.body.preheader.i, label %for.end.pipapo_free_fields.exit_crit_edge

for.end.pipapo_free_fields.exit_crit_edge:        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_free_fields.exit

for.body.preheader.i:                             ; preds = %for.end
  %f1.i = getelementptr i8, ptr %rcu, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.08.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %f.07.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %f1.i, %for.body.preheader.i ]
  %lt.i = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.07.i, i32 0, i32 4
  %14 = ptrtoint ptr %lt.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %lt.i, align 4
  tail call void @kvfree(ptr noundef %15) #13
  %mt.i = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.07.i, i32 0, i32 5
  %16 = ptrtoint ptr %mt.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %mt.i, align 4
  tail call void @kvfree(ptr noundef %17) #13
  %inc.i = add nuw nsw i32 %i.08.i, 1
  %incdec.ptr.i = getelementptr %struct.nft_pipapo_field, ptr %f.07.i, i32 1
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr, align 4
  %cmp.i = icmp slt i32 %inc.i, %19
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.pipapo_free_fields.exit_crit_edge

for.body.i.pipapo_free_fields.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_free_fields.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

pipapo_free_fields.exit:                          ; preds = %for.body.i.pipapo_free_fields.exit_crit_edge, %for.end.pipapo_free_fields.exit_crit_edge
  tail call void @kfree(ptr noundef %add.ptr) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @pipapo_drop(ptr nocapture noundef %m, ptr nocapture noundef readonly %rulemap) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %m, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp87 = icmp sgt i32 %1, 0
  br i1 %cmp87, label %for.cond2.preheader.preheader, label %entry.for.end44_crit_edge

entry.for.end44_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end44

for.cond2.preheader.preheader:                    ; preds = %entry
  %f1 = getelementptr inbounds %struct.nft_pipapo_match, ptr %m, i32 0, i32 4
  br label %for.cond2.preheader

for.cond2.preheader:                              ; preds = %pipapo_unmap.exit.for.cond2.preheader_crit_edge, %for.cond2.preheader.preheader
  %i.090 = phi i32 [ %add, %pipapo_unmap.exit.for.cond2.preheader_crit_edge ], [ 0, %for.cond2.preheader.preheader ]
  %f.088 = phi ptr [ %incdec.ptr, %pipapo_unmap.exit.for.cond2.preheader_crit_edge ], [ %f1, %for.cond2.preheader.preheader ]
  %2 = ptrtoint ptr %f.088 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %f.088, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp385 = icmp sgt i32 %3, 0
  br i1 %cmp385, label %for.body4.lr.ph, label %for.cond2.preheader.for.end19_crit_edge

for.cond2.preheader.for.end19_crit_edge:          ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end19

for.body4.lr.ph:                                  ; preds = %for.cond2.preheader
  %lt = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.088, i32 0, i32 4
  %bb = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.088, i32 0, i32 3
  %bsize = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.088, i32 0, i32 2
  %arrayidx = getelementptr %union.nft_pipapo_map_bucket, ptr %rulemap, i32 %i.090
  br label %for.body4

for.body4:                                        ; preds = %for.end.for.body4_crit_edge, %for.body4.lr.ph
  %g.086 = phi i32 [ 0, %for.body4.lr.ph ], [ %inc18, %for.end.for.body4_crit_edge ]
  %4 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %bb, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %5)
  %cmp982.not = icmp eq i32 %5, 31
  br i1 %cmp982.not, label %for.body4.for.end_crit_edge, label %for.body10.preheader

for.body4.for.end_crit_edge:                      ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body10.preheader:                             ; preds = %for.body4
  %6 = ptrtoint ptr %lt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %lt, align 4
  %mul = shl i32 %g.086, %5
  %8 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bsize, align 4
  %mul5 = mul i32 %mul, %9
  %add.ptr = getelementptr i32, ptr %7, i32 %mul5
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body10.preheader
  %b.084 = phi i32 [ %inc, %for.body10.for.body10_crit_edge ], [ 0, %for.body10.preheader ]
  %pos.083 = phi ptr [ %add.ptr16, %for.body10.for.body10_crit_edge ], [ %add.ptr, %for.body10.preheader ]
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %bf.load = load i32, ptr %arrayidx, align 4
  %bf.lshr = lshr i32 %bf.load, 8
  %bf.clear = and i32 %bf.load, 255
  %11 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %bsize, align 4
  %mul14 = shl i32 %12, 5
  tail call void @bitmap_cut(ptr noundef %pos.083, ptr noundef %pos.083, i32 noundef %bf.lshr, i32 noundef %bf.clear, i32 noundef %mul14) #13
  %13 = ptrtoint ptr %bsize to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %bsize, align 4
  %add.ptr16 = getelementptr i32, ptr %pos.083, i32 %14
  %inc = add nuw nsw i32 %b.084, 1
  %15 = ptrtoint ptr %bb to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %bb, align 4
  %shl8 = shl nuw i32 1, %16
  %cmp9 = icmp slt i32 %inc, %shl8
  br i1 %cmp9, label %for.body10.for.body10_crit_edge, label %for.body10.for.end_crit_edge

for.body10.for.end_crit_edge:                     ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body10

for.end:                                          ; preds = %for.body10.for.end_crit_edge, %for.body4.for.end_crit_edge
  %inc18 = add nuw nsw i32 %g.086, 1
  %17 = ptrtoint ptr %f.088 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %f.088, align 4
  %cmp3 = icmp slt i32 %inc18, %18
  br i1 %cmp3, label %for.end.for.body4_crit_edge, label %for.end.for.end19_crit_edge

for.end.for.end19_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end19

for.end.for.body4_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body4

for.end19:                                        ; preds = %for.end.for.end19_crit_edge, %for.cond2.preheader.for.end19_crit_edge
  %mt = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.088, i32 0, i32 5
  %19 = ptrtoint ptr %mt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mt, align 4
  %rules = getelementptr inbounds %struct.nft_pipapo_field, ptr %f.088, i32 0, i32 1
  %21 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %rules, align 4
  %arrayidx20 = getelementptr %union.nft_pipapo_map_bucket, ptr %rulemap, i32 %i.090
  %23 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %bf.load21 = load i32, ptr %arrayidx20, align 4
  %bf.lshr22 = lshr i32 %bf.load21, 8
  %bf.clear25 = and i32 %bf.load21, 255
  %idx.neg.i = sub nsw i32 0, %bf.clear25
  %add = add nuw nsw i32 %i.090, 1
  %arrayidx26 = getelementptr %union.nft_pipapo_map_bucket, ptr %rulemap, i32 %add
  %24 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %24)
  %bf.load27 = load i32, ptr %arrayidx26, align 4
  %bf.clear28 = and i32 %bf.load27, 255
  %25 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %m, align 4
  %sub = add i32 %26, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.090, i32 %sub)
  %cmp30 = icmp eq i32 %i.090, %sub
  %add.ptr.i = getelementptr %union.nft_pipapo_map_bucket, ptr %20, i32 %bf.lshr22
  %add.ptr2.i = getelementptr %union.nft_pipapo_map_bucket, ptr %add.ptr.i, i32 %bf.clear25
  %27 = add nuw nsw i32 %bf.clear25, %bf.lshr22
  %sub3.i = sub i32 %22, %27
  %mul.i = shl i32 %sub3.i, 2
  %28 = call ptr @memmove(ptr %add.ptr.i, ptr %add.ptr2.i, i32 %mul.i)
  %add.ptr4.i = getelementptr %union.nft_pipapo_map_bucket, ptr %20, i32 %22
  %add.ptr5.i = getelementptr %union.nft_pipapo_map_bucket, ptr %add.ptr4.i, i32 %idx.neg.i
  %mul6.i = shl nuw nsw i32 %bf.clear25, 2
  %29 = call ptr @memset(ptr %add.ptr5.i, i32 0, i32 %mul6.i)
  br i1 %cmp30, label %for.end19.pipapo_unmap.exit_crit_edge, label %for.cond.preheader.i

for.end19.pipapo_unmap.exit_crit_edge:            ; preds = %for.end19
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_unmap.exit

for.cond.preheader.i:                             ; preds = %for.end19
  %sub7.i = sub i32 %22, %bf.clear25
  call void @__sanitizer_cov_trace_cmp4(i32 %sub7.i, i32 %bf.lshr22)
  %cmp26.i = icmp sgt i32 %sub7.i, %bf.lshr22
  br i1 %cmp26.i, label %for.body.lr.ph.i, label %for.cond.preheader.i.pipapo_unmap.exit_crit_edge

for.cond.preheader.i.pipapo_unmap.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_unmap.exit

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sub824.neg.i = mul nsw i32 %bf.clear28, -256
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.027.i = phi i32 [ %bf.lshr22, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %union.nft_pipapo_map_bucket, ptr %20, i32 %i.027.i
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %bf.load.i = load i32, ptr %arrayidx.i, align 4
  %bf.lshr25.i = add i32 %bf.load.i, %sub824.neg.i
  store i32 %bf.lshr25.i, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.027.i, 1
  %cmp.i = icmp slt i32 %inc.i, %sub7.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.pipapo_unmap.exit_crit_edge

for.body.i.pipapo_unmap.exit_crit_edge:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %pipapo_unmap.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.body.i

pipapo_unmap.exit:                                ; preds = %for.body.i.pipapo_unmap.exit_crit_edge, %for.cond.preheader.i.pipapo_unmap.exit_crit_edge, %for.end19.pipapo_unmap.exit_crit_edge
  %31 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %rules, align 4
  %33 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %33)
  %bf.load34 = load i32, ptr %arrayidx20, align 4
  %bf.clear35 = and i32 %bf.load34, 255
  %sub36 = sub i32 %32, %bf.clear35
  %call = tail call fastcc i32 @pipapo_resize(ptr noundef %f.088, i32 noundef %32, i32 noundef %sub36)
  %34 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %bf.load38 = load i32, ptr %arrayidx20, align 4
  %bf.clear39 = and i32 %bf.load38, 255
  %35 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %rules, align 4
  %sub41 = sub i32 %36, %bf.clear39
  store i32 %sub41, ptr %rules, align 4
  tail call fastcc void @pipapo_lt_bits_adjust(ptr noundef %f.088)
  %incdec.ptr = getelementptr %struct.nft_pipapo_field, ptr %f.088, i32 1
  %37 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %m, align 4
  %cmp = icmp slt i32 %add, %38
  br i1 %cmp, label %pipapo_unmap.exit.for.cond2.preheader_crit_edge, label %pipapo_unmap.exit.for.end44_crit_edge

pipapo_unmap.exit.for.end44_crit_edge:            ; preds = %pipapo_unmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.end44

pipapo_unmap.exit.for.cond2.preheader_crit_edge:  ; preds = %pipapo_unmap.exit
  call void @__sanitizer_cov_trace_pc() #15
  br label %for.cond2.preheader

for.end44:                                        ; preds = %pipapo_unmap.exit.for.end44_crit_edge, %entry.for.end44_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_barrier() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_set_elem_destroy(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @nft_set_catchall_gc(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_cut(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__alloc_percpu(i32 noundef, i32 noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_percpu(ptr noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #13
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #12

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #13

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memmove(ptr, ptr, i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { mustprogress nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #12 = { argmemonly nofree nounwind readonly willreturn }
attributes #13 = { nounwind }
attributes #14 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #15 = { nomerge }
attributes #16 = { nobuiltin }
attributes #17 = { nobuiltin nounwind }
attributes #18 = { nounwind allocsize(0) }
attributes #19 = { nounwind readonly willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !6, !8, !9, !11, !13, !14, !15, !17, !18}
!llvm.named.register.sp = !{!20}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = distinct !{null, !1, !"__warned", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_set_pipapo.c", i32 427, i32 6}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @nft_set_pipapo_type, !5, !"nft_set_pipapo_type", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_set_pipapo.c", i32 2197, i32 27}
!6 = !{ptr @__pcpu_unique_nft_pipapo_scratch_index, !7, !"__pcpu_unique_nft_pipapo_scratch_index", i1 false, i1 false}
!7 = !{!"../net/netfilter/nft_set_pipapo.c", i32 346, i32 8}
!8 = !{ptr @nft_pipapo_scratch_index, !7, !"nft_pipapo_scratch_index", i1 false, i1 false}
!9 = distinct !{null, !10, !"__warned", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_set_pipapo.c", i32 1960, i32 6}
!11 = distinct !{null, !12, !"__warned", i1 false, i1 false}
!12 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!13 = !{ptr @.str.2, !12, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!15 = distinct !{null, !16, !"__warned", i1 false, i1 false}
!16 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!17 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!18 = distinct !{null, !19, !"__warned", i1 false, i1 false}
!19 = !{!"../net/netfilter/nft_set_pipapo.c", i32 2138, i32 6}
!20 = !{!"sp"}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!30 = !{i32 0, i32 33}
!31 = !{!"branch_weights", i32 2000, i32 1}
!32 = !{i8 0, i8 2}
!33 = !{!"branch_weights", i32 1, i32 2000}
!34 = distinct !{!34, !35}
!35 = !{!"llvm.loop.peeled.count", i32 1}
!36 = !{i64 2157672306}
!37 = !{i64 2157673355}
!38 = !{i64 2157673588}
!39 = !{i64 2149419195}
!40 = !{i64 2149419461}
!41 = !{i64 2157702080}
!42 = !{i64 2157650036, i64 2157650531, i64 2157650073, i64 2157650129, i64 2157650163, i64 2157650187, i64 2157650228, i64 2157650249, i64 2157650277, i64 2157650311}
!43 = !{i64 2157656333, i64 2157656828, i64 2157656370, i64 2157656426, i64 2157656460, i64 2157656484, i64 2157656525, i64 2157656546, i64 2157656574, i64 2157656608}
!44 = !{i64 2157687979}
