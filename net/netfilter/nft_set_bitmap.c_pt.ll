; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_set_bitmap.c_pt.bc'
source_filename = "../net/netfilter/nft_set_bitmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_set_type = type { %struct.nft_set_ops, i32 }
%struct.nft_set_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.net = type { %struct.refcount_struct, %struct.spinlock, i32, i32, i32, %struct.spinlock, %struct.atomic_t, %struct.list_head, %struct.list_head, %struct.llist_node, ptr, ptr, ptr, %struct.idr, %struct.ns_common, %struct.ref_tracker_dir, %struct.list_head, ptr, ptr, %struct.ctl_table_set, ptr, ptr, ptr, ptr, ptr, %struct.raw_notifier_head, i32, ptr, %struct.list_head, %struct.netns_core, %struct.netns_mib, %struct.netns_packet, %struct.netns_unix, %struct.netns_nexthop, [80 x i8], %struct.netns_ipv4, %struct.netns_ipv6, %struct.netns_ieee802154_lowpan, %struct.netns_sctp, %struct.netns_nf, %struct.netns_ct, %struct.netns_nftables, %struct.sk_buff_head, ptr, %struct.netns_bpf, [92 x i8], %struct.netns_xfrm, i64, ptr, %struct.netns_mpls, %struct.netns_can, %struct.netns_xdp, %struct.netns_mctp, ptr, ptr, %struct.netns_smc }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.atomic_t = type { i32 }
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
%struct.list_head = type { ptr, ptr }
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
%struct.nft_set = type { %struct.list_head, %struct.list_head, ptr, %struct.possible_net_t, ptr, i64, i32, i32, i32, i32, [16 x i8], i8, i32, %struct.atomic_t, i32, i64, i32, i16, i16, ptr, [20 x i8], ptr, i16, i8, i8, i8, [2 x ptr], %struct.list_head, [4 x i8], [0 x i8], [96 x i8] }
%struct.possible_net_t = type { ptr }
%struct.nft_set_elem = type { %union.anon.121, %union.anon.122, %union.anon.123, ptr, [4 x i8] }
%union.anon.121 = type { [16 x i32] }
%union.anon.122 = type { [16 x i32] }
%union.anon.123 = type { [16 x i32] }
%struct.nft_bitmap_elem = type { %struct.list_head, %struct.nft_set_ext }
%struct.nft_set_ext = type { i8, [9 x i8], [0 x i8] }
%struct.nft_bitmap = type { %struct.list_head, i16, [0 x i8] }
%struct.nft_set_iter = type { i8, i32, i32, i32, ptr }
%struct.nft_set_desc = type { i32, i32, i32, [16 x i8], i8, i8 }
%struct.nft_set_estimate = type { i64, i32, i32 }

@nft_set_bitmap_type = dso_local constant { %struct.nft_set_type, [60 x i8] } { %struct.nft_set_type { %struct.nft_set_ops { ptr @nft_bitmap_lookup, ptr null, ptr null, ptr @nft_bitmap_insert, ptr @nft_bitmap_activate, ptr @nft_bitmap_deactivate, ptr @nft_bitmap_flush, ptr @nft_bitmap_remove, ptr @nft_bitmap_walk, ptr @nft_bitmap_get, ptr @nft_bitmap_privsize, ptr @nft_bitmap_estimate, ptr @nft_bitmap_init, ptr @nft_bitmap_destroy, ptr null, i32 8 }, i32 0 }, [60 x i8] zeroinitializer }, align 32
@nft_bitmap_elem_find.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"net/netfilter/nft_set_bitmap.c\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"RCU-list traversed in non-reader section!\00", [54 x i8] zeroinitializer }, align 32
@nft_bitmap_walk.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@nft_bitmap_get.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@___asan_gen_.2 = private unnamed_addr constant [20 x i8] c"nft_set_bitmap_type\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 299, i32 27 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [34 x i8] c"../net/netfilter/nft_set_bitmap.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 96, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @nft_set_bitmap_type, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_set_bitmap_type to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nft_bitmap_lookup(ptr noundef %net, ptr nocapture noundef readonly %set, ptr nocapture noundef readonly %key, ptr nocapture noundef readnone %ext) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nft.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %0 = ptrtoint ptr %nft.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %nft.i, align 4
  %klen.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %2 = ptrtoint ptr %klen.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %klen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp.i = icmp eq i8 %3, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %key to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %key, align 2
  %conv2.i = zext i16 %5 to i32
  br label %nft_bitmap_location.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %key to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %key, align 1
  %conv3.i = zext i8 %7 to i32
  br label %nft_bitmap_location.exit

nft_bitmap_location.exit:                         ; preds = %if.else.i, %if.then.i
  %k.0.i = phi i32 [ %conv2.i, %if.then.i ], [ %conv3.i, %if.else.i ]
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %shl.i4 = shl nuw nsw i32 %k.0.i, 1
  %div7.i = lshr i32 %k.0.i, 2
  %rem.i = and i32 %shl.i4, 6
  %bitmap = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 10
  %arrayidx.i = getelementptr i8, ptr %bitmap, i32 %div7.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  %conv.i5 = zext i8 %9 to i32
  %10 = and i32 %shl.i, 3
  %and.i = shl nuw nsw i32 %10, %rem.i
  %and3.i = and i32 %and.i, %conv.i5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3.i)
  %tobool.i = icmp ne i32 %and3.i, 0
  ret i1 %tobool.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_bitmap_insert(ptr nocapture noundef readonly %net, ptr noundef %set, ptr nocapture noundef readonly %elem, ptr nocapture noundef writeonly %ext) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %priv1 = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %nft.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %2 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i = icmp eq i8 %3, 0
  %cond.i.i = zext i1 %cmp.i.i to i8
  %shl.i = shl nuw nsw i8 1, %cond.i.i
  %call1.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %entry
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b36.i = load i1, ptr @nft_bitmap_elem_find.__warned, align 1
  br i1 %.b36.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i:                                        ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nft_bitmap_elem_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 96, ptr noundef nonnull @.str.1) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %be.040.i = load volatile ptr, ptr %data.i, align 4
  %cmp.not41.i = icmp eq ptr %be.040.i, %data.i
  br i1 %cmp.not41.i, label %do.end.i.if.end_crit_edge, label %for.body.lr.ph.i

do.end.i.if.end_crit_edge:                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %ext12.i = getelementptr inbounds %struct.nft_bitmap_elem, ptr %1, i32 0, i32 1
  %offset.i.i37.i = getelementptr inbounds %struct.nft_bitmap_elem, ptr %1, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %offset.i.i37.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %offset.i.i37.i, align 1
  %conv.i.i38.i = zext i8 %6 to i32
  %add.ptr.i.i39.i = getelementptr i8, ptr %ext12.i, i32 %conv.i.i38.i
  %klen.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %7 = ptrtoint ptr %klen.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %klen.i, align 2
  %conv.i = zext i8 %8 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %be.042.i = phi ptr [ %be.040.i, %for.body.lr.ph.i ], [ %be.0.i, %for.inc.i.for.body.i_crit_edge ]
  %ext.i = getelementptr inbounds %struct.nft_bitmap_elem, ptr %be.042.i, i32 0, i32 1
  %offset.i.i.i = getelementptr inbounds %struct.nft_bitmap_elem, ptr %be.042.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %offset.i.i.i, align 1
  %conv.i.i.i = zext i8 %10 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %ext.i, i32 %conv.i.i.i
  %bcmp.i = tail call i32 @bcmp(ptr %add.ptr.i.i.i, ptr %add.ptr.i.i39.i, i32 %conv.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool15.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool15.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %11 = ptrtoint ptr %ext.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %ext.i, align 1
  %and3.i.i = and i8 %12, %shl.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i.i)
  %tobool.not.i.i = icmp eq i8 %and3.i.i, 0
  br i1 %tobool.not.i.i, label %nft_bitmap_elem_find.exit, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %13 = ptrtoint ptr %be.042.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %be.0.i = load volatile ptr, ptr %be.042.i, align 4
  %cmp.not.i = icmp eq ptr %be.0.i, %data.i
  br i1 %cmp.not.i, label %for.inc.i.if.end_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.if.end_crit_edge:                       ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

nft_bitmap_elem_find.exit:                        ; preds = %lor.lhs.false.i
  %tobool.not = icmp eq ptr %be.042.i, null
  br i1 %tobool.not, label %nft_bitmap_elem_find.exit.if.end_crit_edge, label %if.then

nft_bitmap_elem_find.exit.if.end_crit_edge:       ; preds = %nft_bitmap_elem_find.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %nft_bitmap_elem_find.exit
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %ext to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %ext.i, ptr %ext, align 4
  br label %cleanup

if.end:                                           ; preds = %nft_bitmap_elem_find.exit.if.end_crit_edge, %for.inc.i.if.end_crit_edge, %do.end.i.if.end_crit_edge
  %ext5 = getelementptr inbounds %struct.nft_bitmap_elem, ptr %1, i32 0, i32 1
  %offset.i.i = getelementptr inbounds %struct.nft_bitmap_elem, ptr %1, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %offset.i.i, align 1
  %conv.i.i = zext i8 %16 to i32
  %add.ptr.i.i = getelementptr i8, ptr %ext5, i32 %conv.i.i
  %klen.i21 = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %17 = ptrtoint ptr %klen.i21 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %klen.i21, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %18)
  %cmp.i = icmp eq i8 %18, 2
  br i1 %cmp.i, label %if.then.i22, label %if.else.i

if.then.i22:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i, align 2
  %conv2.i = zext i16 %20 to i32
  br label %nft_bitmap_location.exit

if.else.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %add.ptr.i.i, align 1
  %conv3.i = zext i8 %22 to i32
  br label %nft_bitmap_location.exit

nft_bitmap_location.exit:                         ; preds = %if.else.i, %if.then.i22
  %k.0.i = phi i32 [ %conv2.i, %if.then.i22 ], [ %conv3.i, %if.else.i ]
  %shl.i23 = shl nuw nsw i32 %k.0.i, 1
  %div7.i = lshr i32 %k.0.i, 2
  %rem.i = and i32 %shl.i23, 6
  %conv = zext i8 %shl.i to i32
  %shl = shl nuw nsw i32 %conv, %rem.i
  %arrayidx = getelementptr %struct.nft_bitmap, ptr %data.i, i32 0, i32 2, i32 %div7.i
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx, align 1
  %25 = trunc i32 %shl to i8
  %conv8 = or i8 %24, %25
  store i8 %conv8, ptr %arrayidx, align 1
  %prev.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %27, ptr noundef %data.i) #10
  br i1 %call.i.i, label %if.end.i.i, label %nft_bitmap_location.exit.cleanup_crit_edge

nft_bitmap_location.exit.cleanup_crit_edge:       ; preds = %nft_bitmap_location.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i:                                       ; preds = %nft_bitmap_location.exit
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %data.i, ptr %1, align 4
  %prev2.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %29 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %27, ptr %prev2.i.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !19
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %1, ptr %27, align 4
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %prev.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %nft_bitmap_location.exit.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ -17, %if.then ], [ 0, %nft_bitmap_location.exit.cleanup_crit_edge ], [ 0, %if.end.i.i ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @nft_bitmap_activate(ptr nocapture noundef readonly %net, ptr nocapture noundef %set, ptr nocapture noundef readonly %elem) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %nft.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %2 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nft.i.i, align 4
  %ext = getelementptr inbounds %struct.nft_bitmap_elem, ptr %1, i32 0, i32 1
  %offset.i.i = getelementptr inbounds %struct.nft_bitmap_elem, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %offset.i.i, align 1
  %conv.i.i = zext i8 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %ext, i32 %conv.i.i
  %klen.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %6 = ptrtoint ptr %klen.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %klen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.i = icmp eq i8 %7, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 2
  %conv2.i = zext i16 %9 to i32
  br label %nft_bitmap_location.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i.i, align 1
  %conv3.i = zext i8 %11 to i32
  br label %nft_bitmap_location.exit

nft_bitmap_location.exit:                         ; preds = %if.else.i, %if.then.i
  %k.0.i = phi i32 [ %conv2.i, %if.then.i ], [ %conv3.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i = icmp eq i8 %3, 0
  %cond.i.i = zext i1 %cmp.i.i to i8
  %shl.i = shl nuw nsw i8 1, %cond.i.i
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %shl.i11 = shl nuw nsw i32 %k.0.i, 1
  %div7.i = lshr i32 %k.0.i, 2
  %rem.i = and i32 %shl.i11, 6
  %conv = zext i8 %shl.i to i32
  %shl = shl nuw nsw i32 %conv, %rem.i
  %arrayidx = getelementptr %struct.nft_bitmap, ptr %data.i, i32 0, i32 2, i32 %div7.i
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = trunc i32 %shl to i8
  %conv5 = or i8 %13, %14
  store i8 %conv5, ptr %arrayidx, align 1
  %15 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp.i.i.i = icmp eq i8 %16, 0
  %cond.i.i.i = zext i1 %cmp.i.i.i to i8
  %shl.i.i = shl nuw nsw i8 1, %cond.i.i.i
  %17 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ext, align 1
  %xor1.i = xor i8 %shl.i.i, %18
  store i8 %xor1.i, ptr %ext, align 1
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nft_bitmap_deactivate(ptr nocapture noundef readonly %net, ptr noundef %set, ptr nocapture noundef readonly %elem) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %priv1 = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %nft.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %2 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i = icmp eq i8 %3, 0
  %cond.i.i = zext i1 %cmp.i.i to i8
  %shl.i = shl nuw nsw i8 1, %cond.i.i
  %klen.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %4 = ptrtoint ptr %klen.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %klen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i = icmp eq i8 %5, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %elem to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %elem, align 2
  %conv2.i = zext i16 %7 to i32
  br label %nft_bitmap_location.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %elem to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %elem, align 1
  %conv3.i = zext i8 %9 to i32
  br label %nft_bitmap_location.exit

nft_bitmap_location.exit:                         ; preds = %if.else.i, %if.then.i
  %k.0.i = phi i32 [ %conv2.i, %if.then.i ], [ %conv3.i, %if.else.i ]
  %shl.i19 = shl nuw nsw i32 %k.0.i, 1
  %div7.i = lshr i32 %k.0.i, 2
  %rem.i = and i32 %shl.i19, 6
  %call1.i = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i, label %nft_bitmap_location.exit.do.end.i_crit_edge

nft_bitmap_location.exit.do.end.i_crit_edge:      ; preds = %nft_bitmap_location.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true.i:                                  ; preds = %nft_bitmap_location.exit
  %call2.i = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool3.not.i = icmp eq i32 %call2.i, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.do.end.i_crit_edge, label %land.lhs.true4.i

land.lhs.true.i.do.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

land.lhs.true4.i:                                 ; preds = %land.lhs.true.i
  %.b36.i = load i1, ptr @nft_bitmap_elem_find.__warned, align 1
  br i1 %.b36.i, label %land.lhs.true4.i.do.end.i_crit_edge, label %if.then.i20

land.lhs.true4.i.do.end.i_crit_edge:              ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end.i

if.then.i20:                                      ; preds = %land.lhs.true4.i
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nft_bitmap_elem_find.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 96, ptr noundef nonnull @.str.1) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i20, %land.lhs.true4.i.do.end.i_crit_edge, %land.lhs.true.i.do.end.i_crit_edge, %nft_bitmap_location.exit.do.end.i_crit_edge
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %be.040.i = load volatile ptr, ptr %data.i, align 4
  %cmp.not41.i = icmp eq ptr %be.040.i, %data.i
  br i1 %cmp.not41.i, label %do.end.i.cleanup_crit_edge, label %for.body.lr.ph.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %do.end.i
  %ext12.i = getelementptr inbounds %struct.nft_bitmap_elem, ptr %1, i32 0, i32 1
  %offset.i.i37.i = getelementptr inbounds %struct.nft_bitmap_elem, ptr %1, i32 0, i32 1, i32 1
  %11 = ptrtoint ptr %offset.i.i37.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %offset.i.i37.i, align 1
  %conv.i.i38.i = zext i8 %12 to i32
  %add.ptr.i.i39.i = getelementptr i8, ptr %ext12.i, i32 %conv.i.i38.i
  %13 = ptrtoint ptr %klen.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %klen.i, align 2
  %conv.i = zext i8 %14 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %be.042.i = phi ptr [ %be.040.i, %for.body.lr.ph.i ], [ %be.0.i, %for.inc.i.for.body.i_crit_edge ]
  %ext.i = getelementptr inbounds %struct.nft_bitmap_elem, ptr %be.042.i, i32 0, i32 1
  %offset.i.i.i = getelementptr inbounds %struct.nft_bitmap_elem, ptr %be.042.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %offset.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %offset.i.i.i, align 1
  %conv.i.i.i = zext i8 %16 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %ext.i, i32 %conv.i.i.i
  %bcmp.i = tail call i32 @bcmp(ptr %add.ptr.i.i.i, ptr %add.ptr.i.i39.i, i32 %conv.i) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool15.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool15.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %17 = ptrtoint ptr %ext.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ext.i, align 1
  %and3.i.i = and i8 %18, %shl.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i.i)
  %tobool.not.i.i = icmp eq i8 %and3.i.i, 0
  br i1 %tobool.not.i.i, label %nft_bitmap_elem_find.exit, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %19 = ptrtoint ptr %be.042.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %be.0.i = load volatile ptr, ptr %be.042.i, align 4
  %cmp.not.i = icmp eq ptr %be.0.i, %data.i
  br i1 %cmp.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

nft_bitmap_elem_find.exit:                        ; preds = %lor.lhs.false.i
  %tobool.not = icmp eq ptr %be.042.i, null
  br i1 %tobool.not, label %nft_bitmap_elem_find.exit.cleanup_crit_edge, label %if.end

nft_bitmap_elem_find.exit.cleanup_crit_edge:      ; preds = %nft_bitmap_elem_find.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %nft_bitmap_elem_find.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv = zext i8 %shl.i to i32
  %shl = shl i32 %conv, %rem.i
  %arrayidx = getelementptr %struct.nft_bitmap, ptr %data.i, i32 0, i32 2, i32 %div7.i
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %arrayidx, align 1
  %22 = trunc i32 %shl to i8
  %23 = xor i8 %22, -1
  %conv5 = and i8 %21, %23
  store i8 %conv5, ptr %arrayidx, align 1
  %24 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %cmp.i.i.i = icmp eq i8 %25, 0
  %cond.i.i.i = zext i1 %cmp.i.i.i to i8
  %shl.i.i = shl nuw nsw i8 1, %cond.i.i.i
  %26 = ptrtoint ptr %ext.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %ext.i, align 1
  %xor1.i = xor i8 %shl.i.i, %27
  store i8 %xor1.i, ptr %ext.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nft_bitmap_elem_find.exit.cleanup_crit_edge, %for.inc.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %be.042.i, %if.end ], [ null, %nft_bitmap_elem_find.exit.cleanup_crit_edge ], [ null, %do.end.i.cleanup_crit_edge ], [ null, %for.inc.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nft_bitmap_flush(ptr nocapture noundef readonly %net, ptr nocapture noundef %set, ptr nocapture noundef %_be) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %nft.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %0 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %nft.i.i, align 4
  %ext = getelementptr inbounds %struct.nft_bitmap_elem, ptr %_be, i32 0, i32 1
  %offset.i.i = getelementptr inbounds %struct.nft_bitmap_elem, ptr %_be, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %offset.i.i, align 1
  %conv.i.i = zext i8 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %ext, i32 %conv.i.i
  %klen.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %4 = ptrtoint ptr %klen.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %klen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.i = icmp eq i8 %5, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i.i, align 2
  %conv2.i = zext i16 %7 to i32
  br label %nft_bitmap_location.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %add.ptr.i.i, align 1
  %conv3.i = zext i8 %9 to i32
  br label %nft_bitmap_location.exit

nft_bitmap_location.exit:                         ; preds = %if.else.i, %if.then.i
  %k.0.i = phi i32 [ %conv2.i, %if.then.i ], [ %conv3.i, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i.i = icmp eq i8 %1, 0
  %cond.i.i = zext i1 %cmp.i.i to i8
  %shl.i = shl nuw nsw i8 1, %cond.i.i
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %shl.i10 = shl nuw nsw i32 %k.0.i, 1
  %div7.i = lshr i32 %k.0.i, 2
  %rem.i = and i32 %shl.i10, 6
  %conv = zext i8 %shl.i to i32
  %shl = shl nuw nsw i32 %conv, %rem.i
  %arrayidx = getelementptr %struct.nft_bitmap, ptr %data.i, i32 0, i32 2, i32 %div7.i
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx, align 1
  %12 = trunc i32 %shl to i8
  %13 = xor i8 %12, -1
  %conv4 = and i8 %11, %13
  store i8 %conv4, ptr %arrayidx, align 1
  %14 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp.i.i.i = icmp eq i8 %15, 0
  %cond.i.i.i = zext i1 %cmp.i.i.i to i8
  %shl.i.i = shl nuw nsw i8 1, %cond.i.i.i
  %16 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ext, align 1
  %xor1.i = xor i8 %shl.i.i, %17
  store i8 %xor1.i, ptr %ext, align 1
  ret i1 true
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_bitmap_remove(ptr nocapture noundef readonly %net, ptr nocapture noundef %set, ptr nocapture noundef readonly %elem) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %priv1 = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 8
  %nft.i.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %2 = ptrtoint ptr %nft.i.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %nft.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i.i = icmp eq i8 %3, 0
  %cond.i.i = zext i1 %cmp.i.i to i8
  %shl.i = shl nuw nsw i8 1, %cond.i.i
  %ext = getelementptr inbounds %struct.nft_bitmap_elem, ptr %1, i32 0, i32 1
  %offset.i.i = getelementptr inbounds %struct.nft_bitmap_elem, ptr %1, i32 0, i32 1, i32 1
  %4 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %offset.i.i, align 1
  %conv.i.i = zext i8 %5 to i32
  %add.ptr.i.i = getelementptr i8, ptr %ext, i32 %conv.i.i
  %klen.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %6 = ptrtoint ptr %klen.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %klen.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.i = icmp eq i8 %7, 2
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i.i, align 2
  %conv2.i = zext i16 %9 to i32
  br label %nft_bitmap_location.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %add.ptr.i.i, align 1
  %conv3.i = zext i8 %11 to i32
  br label %nft_bitmap_location.exit

nft_bitmap_location.exit:                         ; preds = %if.else.i, %if.then.i
  %k.0.i = phi i32 [ %conv2.i, %if.then.i ], [ %conv3.i, %if.else.i ]
  %shl.i8 = shl nuw nsw i32 %k.0.i, 1
  %div7.i = lshr i32 %k.0.i, 2
  %rem.i = and i32 %shl.i8, 6
  %conv = zext i8 %shl.i to i32
  %shl = shl nuw nsw i32 %conv, %rem.i
  %arrayidx = getelementptr %struct.nft_bitmap, ptr %data.i, i32 0, i32 2, i32 %div7.i
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %14 = trunc i32 %shl to i8
  %15 = xor i8 %14, -1
  %conv5 = and i8 %13, %15
  store i8 %conv5, ptr %arrayidx, align 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i, label %if.end.i.i, label %nft_bitmap_location.exit.list_del_rcu.exit_crit_edge

nft_bitmap_location.exit.list_del_rcu.exit_crit_edge: ; preds = %nft_bitmap_location.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_rcu.exit

if.end.i.i:                                       ; preds = %nft_bitmap_location.exit
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %list_del_rcu.exit

list_del_rcu.exit:                                ; preds = %if.end.i.i, %nft_bitmap_location.exit.list_del_rcu.exit_crit_edge
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_bitmap_walk(ptr noundef %ctx, ptr noundef %set, ptr noundef %iter) #1 align 64 {
entry:
  %elem = alloca %struct.nft_set_elem, align 8
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %elem) #10
  %0 = call ptr @memset(ptr %elem, i32 255, i32 200)
  %call1 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call2 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true4

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true4:                                   ; preds = %land.lhs.true
  %.b47 = load i1, ptr @nft_bitmap_walk.__warned, align 1
  br i1 %.b47, label %land.lhs.true4.do.end_crit_edge, label %if.then

land.lhs.true4.do.end_crit_edge:                  ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true4
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nft_bitmap_walk.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 223, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true4.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %priv17 = getelementptr inbounds %struct.nft_set_elem, ptr %elem, i32 0, i32 3
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %be.048 = load volatile ptr, ptr %data.i, align 4
  %cmp.not49 = icmp eq ptr %be.048, %data.i
  br i1 %cmp.not49, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %count = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 1
  %skip = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 2
  %fn = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 4
  %err = getelementptr inbounds %struct.nft_set_iter, ptr %iter, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %cont.for.body_crit_edge, %for.body.lr.ph
  %be.050 = phi ptr [ %be.048, %for.body.lr.ph ], [ %be.0, %cont.for.body_crit_edge ]
  %2 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %count, align 4
  %4 = ptrtoint ptr %skip to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %skip, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp11 = icmp ult i32 %3, %5
  br i1 %cmp11, label %for.body.cont_crit_edge, label %if.end13

for.body.cont_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cont

if.end13:                                         ; preds = %for.body
  %ext = getelementptr inbounds %struct.nft_bitmap_elem, ptr %be.050, i32 0, i32 1
  %6 = ptrtoint ptr %iter to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %iter, align 4
  %8 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %ext, align 1
  %and3.i = and i8 %9, %7
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool.not.i = icmp eq i8 %and3.i, 0
  br i1 %tobool.not.i, label %if.end16, label %if.end13.cont_crit_edge

if.end13.cont_crit_edge:                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cont

if.end16:                                         ; preds = %if.end13
  %10 = ptrtoint ptr %priv17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %be.050, ptr %priv17, align 8
  %11 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %fn, align 4
  %call18 = call i32 %12(ptr noundef %ctx, ptr noundef %set, ptr noundef %iter, ptr noundef nonnull %elem) #10
  %13 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %call18, ptr %err, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp20 = icmp slt i32 %call18, 0
  br i1 %cmp20, label %if.end16.cleanup_crit_edge, label %if.end16.cont_crit_edge

if.end16.cont_crit_edge:                          ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cont

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cont:                                             ; preds = %if.end16.cont_crit_edge, %if.end13.cont_crit_edge, %for.body.cont_crit_edge
  %14 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %count, align 4
  %inc = add i32 %15, 1
  store i32 %inc, ptr %count, align 4
  %16 = ptrtoint ptr %be.050 to i32
  call void @__asan_load4_noabort(i32 %16)
  %be.0 = load volatile ptr, ptr %be.050, align 4
  %cmp.not = icmp eq ptr %be.0, %data.i
  br i1 %cmp.not, label %cont.cleanup_crit_edge, label %cont.for.body_crit_edge

cont.for.body_crit_edge:                          ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cont.cleanup_crit_edge:                           ; preds = %cont
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %cont.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %do.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %elem) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nft_bitmap_get(ptr noundef %net, ptr noundef %set, ptr nocapture noundef readonly %elem, i32 noundef %flags) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %nft.i = getelementptr inbounds %struct.net, ptr %net, i32 0, i32 41
  %0 = ptrtoint ptr %nft.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load volatile i8, ptr %nft.i, align 4
  %conv.i = zext i8 %1 to i32
  %shl.i = shl nuw i32 1, %conv.i
  %conv1.i = trunc i32 %shl.i to i8
  %call2 = tail call i32 @rcu_read_lock_any_held() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %call3 = tail call i32 @debug_lockdep_rcu_enabled() #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %land.lhs.true.do.end_crit_edge, label %land.lhs.true5

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

land.lhs.true5:                                   ; preds = %land.lhs.true
  %.b37 = load i1, ptr @nft_bitmap_get.__warned, align 1
  br i1 %.b37, label %land.lhs.true5.do.end_crit_edge, label %if.then

land.lhs.true5.do.end_crit_edge:                  ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

if.then:                                          ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #12
  store i1 true, ptr @nft_bitmap_get.__warned, align 1
  tail call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str, i32 noundef 114, ptr noundef nonnull @.str.1) #10
  br label %do.end

do.end:                                           ; preds = %if.then, %land.lhs.true5.do.end_crit_edge, %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %be.038 = load volatile ptr, ptr %data.i, align 4
  %cmp.not39 = icmp eq ptr %be.038, %data.i
  br i1 %cmp.not39, label %do.end.cleanup_crit_edge, label %for.body.lr.ph

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %do.end
  %klen = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %3 = ptrtoint ptr %klen to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %klen, align 2
  %conv = zext i8 %4 to i32
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %be.040 = phi ptr [ %be.038, %for.body.lr.ph ], [ %be.0, %for.inc.for.body_crit_edge ]
  %ext = getelementptr inbounds %struct.nft_bitmap_elem, ptr %be.040, i32 0, i32 1
  %offset.i.i = getelementptr inbounds %struct.nft_bitmap_elem, ptr %be.040, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %offset.i.i, align 1
  %conv.i.i = zext i8 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %ext, i32 %conv.i.i
  %bcmp = tail call i32 @bcmp(ptr %add.ptr.i.i, ptr %elem, i32 %conv) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool14.not = icmp eq i32 %bcmp, 0
  br i1 %tobool14.not, label %lor.lhs.false, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %7 = ptrtoint ptr %ext to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ext, align 1
  %and3.i = and i8 %8, %conv1.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %and3.i)
  %tobool.not.i = icmp eq i8 %and3.i, 0
  br i1 %tobool.not.i, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %9 = ptrtoint ptr %be.040 to i32
  call void @__asan_load4_noabort(i32 %9)
  %be.0 = load volatile ptr, ptr %be.040, align 4
  %cmp.not = icmp eq ptr %be.0, %data.i
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -2 to ptr), %do.end.cleanup_crit_edge ], [ inttoptr (i32 -2 to ptr), %for.inc.cleanup_crit_edge ], [ %be.040, %lor.lhs.false.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i64 @nft_bitmap_privsize(ptr nocapture noundef readonly %nla, ptr nocapture noundef readnone %desc) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %nla, i32 5
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %mul.i.i = shl i32 %3, 3
  %sub.i.i = add i32 %mul.i.i, -1
  %shl.i.i = shl i32 2, %sub.i.i
  %div.i.i = sdiv i32 %shl.i.i, 8
  %shl1.i.i = shl nsw i32 %div.i.i, 1
  %add.i = add nsw i32 %shl1.i.i, 12
  %conv.i = zext i32 %add.i to i64
  ret i64 %conv.i
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nft_bitmap_estimate(ptr nocapture noundef readonly %desc, i32 noundef %features, ptr nocapture noundef writeonly %est) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp ugt i32 %1, 2
  br i1 %cmp, label %entry.return_crit_edge, label %if.else

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.else:                                          ; preds = %entry
  %expr = getelementptr inbounds %struct.nft_set_desc, ptr %desc, i32 0, i32 5
  %2 = ptrtoint ptr %expr to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %expr, align 1, !range !20
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.end2, label %if.else.return_crit_edge

if.else.return_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end2:                                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %mul.i.i = shl nuw nsw i32 %1, 3
  %shl.i.i = shl nuw nsw i32 1, %mul.i.i
  %4 = lshr i32 %shl.i.i, 2
  %shl1.i.i = and i32 %4, 1073741822
  %add.i = add nuw nsw i32 %shl1.i.i, 12
  %conv.i = zext i32 %add.i to i64
  %5 = ptrtoint ptr %est to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 %conv.i, ptr %est, align 8
  %lookup = getelementptr inbounds %struct.nft_set_estimate, ptr %est, i32 0, i32 1
  %6 = ptrtoint ptr %lookup to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %lookup, align 8
  %space = getelementptr inbounds %struct.nft_set_estimate, ptr %est, i32 0, i32 2
  %7 = ptrtoint ptr %space to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %space, align 4
  br label %return

return:                                           ; preds = %if.end2, %if.else.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i1 [ true, %if.end2 ], [ false, %entry.return_crit_edge ], [ false, %if.else.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_bitmap_init(ptr noundef %set, ptr nocapture noundef readnone %desc, ptr nocapture noundef readnone %nla) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %data.i, ptr %data.i, align 4
  %prev.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 4
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %data.i, ptr %prev.i, align 4
  %klen = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 23
  %2 = ptrtoint ptr %klen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %klen, align 2
  %conv = zext i8 %3 to i32
  %mul.i = shl nuw nsw i32 %conv, 3
  %sub.i = add nsw i32 %mul.i, -1
  %shl.i = shl i32 2, %sub.i
  %div.i = sdiv i32 %shl.i, 8
  %div.i.tr = trunc i32 %div.i to i16
  %conv2 = shl i16 %div.i.tr, 1
  %bitmap_size = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 30, i32 8
  %4 = ptrtoint ptr %bitmap_size to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %conv2, ptr %bitmap_size, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_bitmap_destroy(ptr noundef %set) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_set, ptr %set, i32 0, i32 29
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data.i, align 4
  %cmp.not17 = icmp eq ptr %1, %data.i
  br i1 %cmp.not17, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %be.018 = phi ptr [ %n.0, %for.body.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %be.018 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %be.018, align 4
  tail call void @nft_set_elem_destroy(ptr noundef %set, ptr noundef %be.018, i1 noundef zeroext true) #10
  %cmp.not = icmp eq ptr %n.0, %data.i
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @rcu_read_lock_any_held() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_set_elem_destroy(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #8

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly nofree norecurse nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { argmemonly nofree nounwind readonly willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nobuiltin nounwind }
attributes #14 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @nft_set_bitmap_type, !1, !"nft_set_bitmap_type", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_set_bitmap.c", i32 299, i32 27}
!2 = distinct !{null, !3, !"__warned", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_set_bitmap.c", i32 96, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = distinct !{null, !7, !"__warned", i1 false, i1 false}
!7 = !{!"../net/netfilter/nft_set_bitmap.c", i32 223, i32 2}
!8 = distinct !{null, !9, !"__warned", i1 false, i1 false}
!9 = !{!"../net/netfilter/nft_set_bitmap.c", i32 114, i32 2}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 2151910616}
!20 = !{i8 0, i8 2}
