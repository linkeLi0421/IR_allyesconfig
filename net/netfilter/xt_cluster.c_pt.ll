; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_cluster.c_pt.bc'
source_filename = "../net/netfilter/xt_cluster.c"
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
%struct.xt_action_param = type { %union.anon.151, %union.anon.152, ptr, i32, i16, i8 }
%union.anon.151 = type { ptr }
%union.anon.152 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
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
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.171, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
%struct.nf_conntrack_tuple_hash = type { %struct.hlist_nulls_node, %struct.nf_conntrack_tuple }
%struct.hlist_nulls_node = type { ptr, ptr }
%struct.nf_conntrack_tuple = type { %struct.nf_conntrack_man, %struct.anon.163 }
%struct.nf_conntrack_man = type { %union.nf_inet_addr, %union.nf_conntrack_man_proto, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.anon.163 = type { %union.nf_inet_addr, %union.anon.164, i8, i8 }
%union.anon.164 = type { i16 }
%struct.possible_net_t = type { ptr }
%struct.hlist_node = type { ptr, ptr }
%struct.anon.171 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.xt_cluster_match_info = type { i32, i32, i32, i32 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_mtdtor_param = type { ptr, ptr, ptr, i8 }

@xt_cluster_match = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"cluster\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @xt_cluster_mt, ptr @xt_cluster_mt_checkentry, ptr @xt_cluster_mt_destroy, ptr null, ptr null, i32 16, i32 0, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__UNIQUE_ID_author581 = internal constant [58 x i8] c"xt_cluster.author=Pablo Neira Ayuso <pablo@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_file582 = internal constant [41 x i8] c"xt_cluster.file=net/netfilter/xt_cluster\00", section ".modinfo", align 1
@__UNIQUE_ID_license583 = internal constant [23 x i8] c"xt_cluster.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description584 = internal constant [57 x i8] c"xt_cluster.description=Xtables: hash-based cluster match\00", section ".modinfo", align 1
@__UNIQUE_ID_alias585 = internal constant [29 x i8] c"xt_cluster.alias=ipt_cluster\00", section ".modinfo", align 1
@__UNIQUE_ID_alias586 = internal constant [30 x i8] c"xt_cluster.alias=ip6t_cluster\00", section ".modinfo", align 1
@__initcall__kmod_xt_cluster__587_174_xt_cluster_mt_init6 = internal global ptr @xt_cluster_mt_init, section ".initcall6.init", align 4
@__exitcall_xt_cluster_mt_fini = internal global ptr @xt_cluster_mt_fini, section ".exitcall.exit", align 4
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/netfilter/xt_cluster.c\00", [37 x i8] zeroinitializer }, align 32
@xt_cluster_mt_checkentry._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.xt_cluster_mt_checkentry = private unnamed_addr constant [25 x i8] c"xt_cluster_mt_checkentry\00", align 1
@xt_cluster_mt_checkentry._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @__func__.xt_cluster_mt_checkentry, ptr @.str, i32 129, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\016xt_cluster: you have exceeded the maximum number of cluster nodes (%u > %u)\0A\00", [49 x i8] zeroinitializer }, align 32
@xt_cluster_mt_checkentry._entry_ptr = internal global ptr @xt_cluster_mt_checkentry._entry, section ".printk_index", align 4
@xt_cluster_mt_checkentry._rs.3 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@xt_cluster_mt_checkentry._entry.4 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @__func__.xt_cluster_mt_checkentry, ptr @.str, i32 133, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"\016xt_cluster: node mask cannot exceed total number of nodes\0A\00", [35 x i8] zeroinitializer }, align 32
@xt_cluster_mt_checkentry._entry_ptr.6 = internal global ptr @xt_cluster_mt_checkentry._entry.4, section ".printk_index", align 4
@xt_cluster_mt_checkentry._rs.7 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@xt_cluster_mt_checkentry._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.xt_cluster_mt_checkentry, ptr @.str, i32 140, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"\016xt_cluster: cannot load conntrack support for proto=%u\0A\00", [38 x i8] zeroinitializer }, align 32
@xt_cluster_mt_checkentry._entry_ptr.10 = internal global ptr @xt_cluster_mt_checkentry._entry.8, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@__sancov_gen_cov_switch_values.12 = internal global [4 x i64] [i64 2, i64 16, i64 2, i64 10]
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 72, i32 3 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 128, i32 3 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 133, i32 3 }
@___asan_gen_.37 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.40 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.44 = private constant [30 x i8] c"../net/netfilter/xt_cluster.c\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.44, i32 139, i32 3 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @__UNIQUE_ID_alias585, ptr @__UNIQUE_ID_alias586, ptr @__UNIQUE_ID_author581, ptr @__UNIQUE_ID_description584, ptr @__UNIQUE_ID_file582, ptr @__UNIQUE_ID_license583, ptr @__exitcall_xt_cluster_mt_fini, ptr @__initcall__kmod_xt_cluster__587_174_xt_cluster_mt_init6, ptr @xt_cluster_mt_checkentry._entry, ptr @xt_cluster_mt_checkentry._entry.4, ptr @xt_cluster_mt_checkentry._entry.8, ptr @xt_cluster_mt_checkentry._entry_ptr, ptr @xt_cluster_mt_checkentry._entry_ptr.10, ptr @xt_cluster_mt_checkentry._entry_ptr.6, ptr @xt_cluster_mt_fini, ptr @.str, ptr @xt_cluster_mt_checkentry._rs, ptr @.str.1, ptr @.str.2, ptr @xt_cluster_mt_checkentry._rs.3, ptr @.str.5, ptr @xt_cluster_mt_checkentry._rs.7, ptr @.str.9], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_cluster_mt_checkentry._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_cluster_mt_checkentry._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_cluster_mt_checkentry._rs.3 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_cluster_mt_checkentry._entry.4 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_cluster_mt_checkentry._rs.7 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @xt_cluster_mt_checkentry._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @xt_cluster_mt_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_match(ptr noundef nonnull @xt_cluster_match) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_cluster_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @xt_cluster_match) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @xt_cluster_mt(ptr nocapture noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pf.i, align 1
  %7 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values)
  switch i8 %6, label %xt_cluster_is_multicast_addr.exit.thread [
    i8 2, label %xt_cluster_is_multicast_addr.exit
    i8 10, label %sw.bb2.i
  ]

sw.bb2.i:                                         ; preds = %entry
  %head.i.i24.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %8 = ptrtoint ptr %head.i.i24.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i.i24.i, align 8
  %network_header.i.i25.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %10 = ptrtoint ptr %network_header.i.i25.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %network_header.i.i25.i, align 4
  %conv.i.i26.i = zext i16 %11 to i32
  %add.ptr.i.i27.i = getelementptr i8, ptr %9, i32 %conv.i.i26.i
  %daddr4.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i27.i, i32 0, i32 6
  %12 = ptrtoint ptr %daddr4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %daddr4.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16777217, i32 %13)
  %cmp.i28.i = icmp ugt i32 %13, -16777217
  br i1 %cmp.i28.i, label %sw.bb2.i.if.end_crit_edge, label %sw.bb2.i.land.lhs.true_crit_edge

sw.bb2.i.land.lhs.true_crit_edge:                 ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

sw.bb2.i.if.end_crit_edge:                        ; preds = %sw.bb2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

xt_cluster_is_multicast_addr.exit.thread:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 72, i32 noundef 9, ptr noundef null) #5
  br label %land.lhs.true

xt_cluster_is_multicast_addr.exit:                ; preds = %entry
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %16 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %17 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %15, i32 %conv.i.i.i
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 9
  %18 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %daddr.i, align 4
  %and.i.i = and i32 %19, -268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 -536870912, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %and.i.i, -536870912
  br i1 %cmp.i.i, label %xt_cluster_is_multicast_addr.exit.if.end_crit_edge, label %xt_cluster_is_multicast_addr.exit.land.lhs.true_crit_edge

xt_cluster_is_multicast_addr.exit.land.lhs.true_crit_edge: ; preds = %xt_cluster_is_multicast_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

xt_cluster_is_multicast_addr.exit.if.end_crit_edge: ; preds = %xt_cluster_is_multicast_addr.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %xt_cluster_is_multicast_addr.exit.land.lhs.true_crit_edge, %xt_cluster_is_multicast_addr.exit.thread, %sw.bb2.i.land.lhs.true_crit_edge
  %pkt_type = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %20 = ptrtoint ptr %pkt_type to i32
  call void @__asan_load2_noabort(i32 %20)
  %bf.load = load i16, ptr %pkt_type, align 8
  %bf.lshr.mask = and i16 %bf.load, -8192
  call void @__sanitizer_cov_trace_const_cmp2(i16 16384, i16 %bf.lshr.mask)
  %cmp = icmp eq i16 %bf.lshr.mask, 16384
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear = and i16 %bf.load, 8191
  %21 = ptrtoint ptr %pkt_type to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %bf.clear, ptr %pkt_type, align 8
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %xt_cluster_is_multicast_addr.exit.if.end_crit_edge, %sw.bb2.i.if.end_crit_edge
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %22 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %23, -8
  %24 = inttoptr i32 %and1.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %cmp6 = icmp eq i32 %and1.i, 0
  br i1 %cmp6, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %master = getelementptr inbounds %struct.nf_conn, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %master to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %master, align 4
  %tobool.not = icmp eq ptr %26, null
  br i1 %tobool.not, label %if.else, label %if.then10

if.then10:                                        ; preds = %if.end9
  %l3num.i.i = getelementptr inbounds %struct.nf_conn, ptr %26, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %27 = ptrtoint ptr %l3num.i.i to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %l3num.i.i, align 2
  %29 = zext i16 %28 to i64
  call void @__sanitizer_cov_trace_switch(i64 %29, ptr @__sancov_gen_cov_switch_values.11)
  switch i16 %28, label %do.end.i39 [
    i16 2, label %sw.bb.i38
    i16 10, label %sw.bb3.i
  ]

sw.bb.i38:                                        ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %tuple.i.i = getelementptr inbounds %struct.nf_conn, ptr %26, i32 0, i32 4, i32 0, i32 1
  %30 = ptrtoint ptr %tuple.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %tuple.i.i, align 8
  %hash_seed.i.i = getelementptr inbounds %struct.xt_cluster_match_info, ptr %2, i32 0, i32 2
  %32 = ptrtoint ptr %hash_seed.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hash_seed.i.i, align 4
  %add1.i.i.i = add i32 %33, -559038733
  %add.i.i.i.i = add i32 %add1.i.i.i, %31
  %or.i.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i, i32 %add1.i.i.i, i32 14) #5
  %sub.i.i.i.i = sub i32 0, %or.i.i.i.i.i
  %xor3.i.i.i.i = xor i32 %add.i.i.i.i, %sub.i.i.i.i
  %or.i1.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i, i32 %sub.i.i.i.i, i32 11) #5
  %sub5.i.i.i.i = sub i32 %xor3.i.i.i.i, %or.i1.i.i.i.i
  %xor6.i.i.i.i = xor i32 %sub5.i.i.i.i, %add1.i.i.i
  %or.i2.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i, i32 %sub5.i.i.i.i, i32 25) #5
  %sub8.i.i.i.i = sub i32 %xor6.i.i.i.i, %or.i2.i.i.i.i
  %xor9.i.i.i.i = xor i32 %sub8.i.i.i.i, %sub.i.i.i.i
  %or.i3.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i, i32 %sub8.i.i.i.i, i32 16) #5
  %sub11.i.i.i.i = sub i32 %xor9.i.i.i.i, %or.i3.i.i.i.i
  %xor12.i.i.i.i = xor i32 %sub11.i.i.i.i, %sub5.i.i.i.i
  %or.i4.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i, i32 %sub11.i.i.i.i, i32 4) #5
  %sub14.i.i.i.i = sub i32 %xor12.i.i.i.i, %or.i4.i.i.i.i
  %xor15.i.i.i.i = xor i32 %sub14.i.i.i.i, %sub8.i.i.i.i
  %or.i5.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i, i32 %sub14.i.i.i.i, i32 14) #5
  %sub17.i.i.i.i = sub i32 %xor15.i.i.i.i, %or.i5.i.i.i.i
  %xor18.i.i.i.i = xor i32 %sub17.i.i.i.i, %sub11.i.i.i.i
  %or.i6.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i, i32 %sub17.i.i.i.i, i32 24) #5
  %sub20.i.i.i.i = sub i32 %xor18.i.i.i.i, %or.i6.i.i.i.i
  br label %if.end14

sw.bb3.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  %tuple.i26.i = getelementptr inbounds %struct.nf_conn, ptr %26, i32 0, i32 4, i32 0, i32 1
  %hash_seed.i27.i = getelementptr inbounds %struct.xt_cluster_match_info, ptr %2, i32 0, i32 2
  %34 = ptrtoint ptr %hash_seed.i27.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hash_seed.i27.i, align 4
  %add1.i.i28.i = add i32 %35, -559038733
  %36 = ptrtoint ptr %tuple.i26.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tuple.i26.i, align 4
  %add36.i.i.i = add i32 %37, %add1.i.i28.i
  %or.i.i.i.i = tail call i32 @llvm.fshl.i32(i32 %add1.i.i28.i, i32 %add1.i.i28.i, i32 14) #5
  %sub39.i.i.i = sub i32 0, %or.i.i.i.i
  %xor40.i.i.i = xor i32 %add36.i.i.i, %sub39.i.i.i
  %or.i1.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i, i32 %sub39.i.i.i, i32 11) #5
  %sub42.i.i.i = sub i32 %xor40.i.i.i, %or.i1.i.i.i
  %xor43.i.i.i = xor i32 %sub42.i.i.i, %add1.i.i28.i
  %or.i2.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i, i32 %sub42.i.i.i, i32 25) #5
  %sub45.i.i.i = sub i32 %xor43.i.i.i, %or.i2.i.i.i
  %xor46.i.i.i = xor i32 %sub45.i.i.i, %sub39.i.i.i
  %or.i3.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i, i32 %sub45.i.i.i, i32 16) #5
  %sub48.i.i.i = sub i32 %xor46.i.i.i, %or.i3.i.i.i
  %xor49.i.i.i = xor i32 %sub48.i.i.i, %sub42.i.i.i
  %or.i4.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i, i32 %sub48.i.i.i, i32 4) #5
  %sub51.i.i.i = sub i32 %xor49.i.i.i, %or.i4.i.i.i
  %xor52.i.i.i = xor i32 %sub51.i.i.i, %sub45.i.i.i
  %or.i5.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i, i32 %sub51.i.i.i, i32 14) #5
  %sub54.i.i.i = sub i32 %xor52.i.i.i, %or.i5.i.i.i
  %or.i6.i.i.i = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i, i32 %sub54.i.i.i, i32 24) #5
  %xor55.i.i.i = xor i32 %sub54.i.i.i, %sub48.i.i.i
  %sub57.i.i.i = sub i32 %xor55.i.i.i, %or.i6.i.i.i
  br label %if.end14

do.end.i39:                                       ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef null) #5
  br label %if.end14

if.else:                                          ; preds = %if.end9
  %l3num.i.i40 = getelementptr inbounds %struct.nf_conn, ptr %24, i32 0, i32 4, i32 0, i32 1, i32 0, i32 2
  %38 = ptrtoint ptr %l3num.i.i40 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %l3num.i.i40, align 2
  %40 = zext i16 %39 to i64
  call void @__sanitizer_cov_trace_switch(i64 %40, ptr @__sancov_gen_cov_switch_values.12)
  switch i16 %39, label %do.end.i91 [
    i16 2, label %sw.bb.i65
    i16 10, label %sw.bb3.i90
  ]

sw.bb.i65:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %tuple.i.i41 = getelementptr inbounds %struct.nf_conn, ptr %24, i32 0, i32 4, i32 0, i32 1
  %41 = ptrtoint ptr %tuple.i.i41 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %tuple.i.i41, align 8
  %hash_seed.i.i42 = getelementptr inbounds %struct.xt_cluster_match_info, ptr %2, i32 0, i32 2
  %43 = ptrtoint ptr %hash_seed.i.i42 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hash_seed.i.i42, align 4
  %add1.i.i.i43 = add i32 %44, -559038733
  %add.i.i.i.i44 = add i32 %add1.i.i.i43, %42
  %or.i.i.i.i.i45 = tail call i32 @llvm.fshl.i32(i32 %add1.i.i.i43, i32 %add1.i.i.i43, i32 14) #5
  %sub.i.i.i.i46 = sub i32 0, %or.i.i.i.i.i45
  %xor3.i.i.i.i47 = xor i32 %add.i.i.i.i44, %sub.i.i.i.i46
  %or.i1.i.i.i.i48 = tail call i32 @llvm.fshl.i32(i32 %sub.i.i.i.i46, i32 %sub.i.i.i.i46, i32 11) #5
  %sub5.i.i.i.i49 = sub i32 %xor3.i.i.i.i47, %or.i1.i.i.i.i48
  %xor6.i.i.i.i50 = xor i32 %sub5.i.i.i.i49, %add1.i.i.i43
  %or.i2.i.i.i.i51 = tail call i32 @llvm.fshl.i32(i32 %sub5.i.i.i.i49, i32 %sub5.i.i.i.i49, i32 25) #5
  %sub8.i.i.i.i52 = sub i32 %xor6.i.i.i.i50, %or.i2.i.i.i.i51
  %xor9.i.i.i.i53 = xor i32 %sub8.i.i.i.i52, %sub.i.i.i.i46
  %or.i3.i.i.i.i54 = tail call i32 @llvm.fshl.i32(i32 %sub8.i.i.i.i52, i32 %sub8.i.i.i.i52, i32 16) #5
  %sub11.i.i.i.i55 = sub i32 %xor9.i.i.i.i53, %or.i3.i.i.i.i54
  %xor12.i.i.i.i56 = xor i32 %sub11.i.i.i.i55, %sub5.i.i.i.i49
  %or.i4.i.i.i.i57 = tail call i32 @llvm.fshl.i32(i32 %sub11.i.i.i.i55, i32 %sub11.i.i.i.i55, i32 4) #5
  %sub14.i.i.i.i58 = sub i32 %xor12.i.i.i.i56, %or.i4.i.i.i.i57
  %xor15.i.i.i.i59 = xor i32 %sub14.i.i.i.i58, %sub8.i.i.i.i52
  %or.i5.i.i.i.i60 = tail call i32 @llvm.fshl.i32(i32 %sub14.i.i.i.i58, i32 %sub14.i.i.i.i58, i32 14) #5
  %sub17.i.i.i.i61 = sub i32 %xor15.i.i.i.i59, %or.i5.i.i.i.i60
  %xor18.i.i.i.i62 = xor i32 %sub17.i.i.i.i61, %sub11.i.i.i.i55
  %or.i6.i.i.i.i63 = tail call i32 @llvm.fshl.i32(i32 %sub17.i.i.i.i61, i32 %sub17.i.i.i.i61, i32 24) #5
  %sub20.i.i.i.i64 = sub i32 %xor18.i.i.i.i62, %or.i6.i.i.i.i63
  br label %if.end14

sw.bb3.i90:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %tuple.i26.i66 = getelementptr inbounds %struct.nf_conn, ptr %24, i32 0, i32 4, i32 0, i32 1
  %hash_seed.i27.i67 = getelementptr inbounds %struct.xt_cluster_match_info, ptr %2, i32 0, i32 2
  %45 = ptrtoint ptr %hash_seed.i27.i67 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hash_seed.i27.i67, align 4
  %add1.i.i28.i68 = add i32 %46, -559038733
  %47 = ptrtoint ptr %tuple.i26.i66 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %tuple.i26.i66, align 8
  %add36.i.i.i69 = add i32 %48, %add1.i.i28.i68
  %or.i.i.i.i70 = tail call i32 @llvm.fshl.i32(i32 %add1.i.i28.i68, i32 %add1.i.i28.i68, i32 14) #5
  %sub39.i.i.i71 = sub i32 0, %or.i.i.i.i70
  %xor40.i.i.i72 = xor i32 %add36.i.i.i69, %sub39.i.i.i71
  %or.i1.i.i.i73 = tail call i32 @llvm.fshl.i32(i32 %sub39.i.i.i71, i32 %sub39.i.i.i71, i32 11) #5
  %sub42.i.i.i74 = sub i32 %xor40.i.i.i72, %or.i1.i.i.i73
  %xor43.i.i.i75 = xor i32 %sub42.i.i.i74, %add1.i.i28.i68
  %or.i2.i.i.i76 = tail call i32 @llvm.fshl.i32(i32 %sub42.i.i.i74, i32 %sub42.i.i.i74, i32 25) #5
  %sub45.i.i.i77 = sub i32 %xor43.i.i.i75, %or.i2.i.i.i76
  %xor46.i.i.i78 = xor i32 %sub45.i.i.i77, %sub39.i.i.i71
  %or.i3.i.i.i79 = tail call i32 @llvm.fshl.i32(i32 %sub45.i.i.i77, i32 %sub45.i.i.i77, i32 16) #5
  %sub48.i.i.i80 = sub i32 %xor46.i.i.i78, %or.i3.i.i.i79
  %xor49.i.i.i81 = xor i32 %sub48.i.i.i80, %sub42.i.i.i74
  %or.i4.i.i.i82 = tail call i32 @llvm.fshl.i32(i32 %sub48.i.i.i80, i32 %sub48.i.i.i80, i32 4) #5
  %sub51.i.i.i83 = sub i32 %xor49.i.i.i81, %or.i4.i.i.i82
  %xor52.i.i.i84 = xor i32 %sub51.i.i.i83, %sub45.i.i.i77
  %or.i5.i.i.i85 = tail call i32 @llvm.fshl.i32(i32 %sub51.i.i.i83, i32 %sub51.i.i.i83, i32 14) #5
  %sub54.i.i.i86 = sub i32 %xor52.i.i.i84, %or.i5.i.i.i85
  %or.i6.i.i.i87 = tail call i32 @llvm.fshl.i32(i32 %sub54.i.i.i86, i32 %sub54.i.i.i86, i32 24) #5
  %xor55.i.i.i88 = xor i32 %sub54.i.i.i86, %sub48.i.i.i80
  %sub57.i.i.i89 = sub i32 %xor55.i.i.i88, %or.i6.i.i.i87
  br label %if.end14

do.end.i91:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 52, i32 noundef 9, ptr noundef null) #5
  br label %if.end14

if.end14:                                         ; preds = %do.end.i91, %sw.bb3.i90, %sw.bb.i65, %do.end.i39, %sw.bb3.i, %sw.bb.i38
  %hash.0.i92.sink = phi i32 [ 0, %do.end.i39 ], [ %sub57.i.i.i, %sw.bb3.i ], [ %sub20.i.i.i.i, %sw.bb.i38 ], [ 0, %do.end.i91 ], [ %sub57.i.i.i89, %sw.bb3.i90 ], [ %sub20.i.i.i.i64, %sw.bb.i65 ]
  %49 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %2, align 4
  %conv.i.i93 = zext i32 %hash.0.i92.sink to i64
  %conv1.i.i94 = zext i32 %50 to i64
  %mul.i.i95 = mul nuw i64 %conv1.i.i94, %conv.i.i93
  %shr.i.i96 = lshr i64 %mul.i.i95, 32
  %conv2.i.i97 = trunc i64 %shr.i.i96 to i32
  %node_mask = getelementptr inbounds %struct.xt_cluster_match_info, ptr %2, i32 0, i32 1
  %51 = ptrtoint ptr %node_mask to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %node_mask, align 4
  %53 = lshr i32 %52, %conv2.i.i97
  %flags = getelementptr inbounds %struct.xt_cluster_match_info, ptr %2, i32 0, i32 3
  %54 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags, align 4
  %56 = xor i32 %53, %55
  %xor = and i32 %56, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xor)
  %tobool23 = icmp ne i32 %xor, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool23, %if.end14 ], [ false, %if.end.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xt_cluster_mt_checkentry(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %3)
  %cmp = icmp ugt i32 %3, 32
  br i1 %cmp, label %if.then, label %if.end4

if.then:                                          ; preds = %entry
  %call = tail call i32 @___ratelimit(ptr noundef nonnull @xt_cluster_mt_checkentry._rs, ptr noundef nonnull @__func__.xt_cluster_mt_checkentry) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.then.cleanup_crit_edge, label %do.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.2, i32 noundef %5, i32 noundef 32) #8
  br label %cleanup

if.end4:                                          ; preds = %entry
  %node_mask = getelementptr inbounds %struct.xt_cluster_match_info, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %node_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %node_mask, align 4
  %conv = zext i32 %7 to i64
  %sh_prom = zext i32 %3 to i64
  %conv.highbits = lshr i64 %conv, %sh_prom
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %conv.highbits)
  %cmp6.not = icmp eq i64 %conv.highbits, 0
  br i1 %cmp6.not, label %if.end18, label %if.then8

if.then8:                                         ; preds = %if.end4
  %call9 = tail call i32 @___ratelimit(ptr noundef nonnull @xt_cluster_mt_checkentry._rs.3, ptr noundef nonnull @__func__.xt_cluster_mt_checkentry) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.then8.cleanup_crit_edge, label %do.end14

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end14:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #7
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #8
  br label %cleanup

if.end18:                                         ; preds = %if.end4
  %8 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 6
  %10 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %family, align 4
  %call19 = tail call i32 @nf_ct_netns_get(ptr noundef %9, i8 noundef zeroext %11) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %if.then22, label %if.end18.cleanup_crit_edge

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then22:                                        ; preds = %if.end18
  %call23 = tail call i32 @___ratelimit(ptr noundef nonnull @xt_cluster_mt_checkentry._rs.7, ptr noundef nonnull @__func__.xt_cluster_mt_checkentry) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.then22.cleanup_crit_edge, label %do.end28

if.then22.cleanup_crit_edge:                      ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end28:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %family, align 4
  %conv31 = zext i8 %13 to i32
  %call32 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9, i32 noundef %conv31) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end28, %if.then22.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %do.end14, %if.then8.cleanup_crit_edge, %do.end, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %if.then.cleanup_crit_edge ], [ -33, %do.end14 ], [ -33, %if.then8.cleanup_crit_edge ], [ %call19, %if.then22.cleanup_crit_edge ], [ %call19, %do.end28 ], [ %call19, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @xt_cluster_mt_destroy(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %par to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %par, align 4
  %family = getelementptr inbounds %struct.xt_mtdtor_param, ptr %par, i32 0, i32 3
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 4
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext %3) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_netns_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_netns_put(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !28, !29, !30, !31, !33, !34, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @__UNIQUE_ID_author581, !1, !"__UNIQUE_ID_author581", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_cluster.c", i32 169, i32 1}
!2 = !{ptr @__UNIQUE_ID_file582, !3, !"__UNIQUE_ID_file582", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_cluster.c", i32 170, i32 1}
!4 = !{ptr @__UNIQUE_ID_license583, !3, !"__UNIQUE_ID_license583", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description584, !6, !"__UNIQUE_ID_description584", i1 false, i1 false}
!6 = !{!"../net/netfilter/xt_cluster.c", i32 171, i32 1}
!7 = !{ptr @__UNIQUE_ID_alias585, !8, !"__UNIQUE_ID_alias585", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_cluster.c", i32 172, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias586, !10, !"__UNIQUE_ID_alias586", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_cluster.c", i32 173, i32 1}
!11 = !{ptr @__initcall__kmod_xt_cluster__587_174_xt_cluster_mt_init6, !12, !"__initcall__kmod_xt_cluster__587_174_xt_cluster_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_cluster.c", i32 174, i32 1}
!13 = !{ptr @__exitcall_xt_cluster_mt_fini, !14, !"__exitcall_xt_cluster_mt_fini", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_cluster.c", i32 175, i32 1}
!15 = !{ptr @xt_cluster_match, !16, !"xt_cluster_match", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_cluster.c", i32 149, i32 24}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_cluster.c", i32 72, i32 3}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_cluster.c", i32 128, i32 3}
!21 = !{ptr @xt_cluster_mt_checkentry._rs, !20, !"_rs", i1 false, i1 false}
!22 = !{ptr @__func__.xt_cluster_mt_checkentry, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @xt_cluster_mt_checkentry._entry, !20, !"_entry", i1 false, i1 false}
!25 = !{ptr @xt_cluster_mt_checkentry._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @xt_cluster_mt_checkentry._rs.3, !27, !"_rs", i1 false, i1 false}
!27 = !{!"../net/netfilter/xt_cluster.c", i32 133, i32 3}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @xt_cluster_mt_checkentry._entry.4, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @xt_cluster_mt_checkentry._entry_ptr.6, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @xt_cluster_mt_checkentry._rs.7, !32, !"_rs", i1 false, i1 false}
!32 = !{!"../net/netfilter/xt_cluster.c", i32 139, i32 3}
!33 = !{ptr @.str.9, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @xt_cluster_mt_checkentry._entry.8, !32, !"_entry", i1 false, i1 false}
!35 = !{ptr @xt_cluster_mt_checkentry._entry_ptr.10, !32, !"_entry_ptr", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
