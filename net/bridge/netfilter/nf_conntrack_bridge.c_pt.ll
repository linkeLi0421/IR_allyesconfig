; ModuleID = '/llk/IR_all_yes/net/bridge/netfilter/nf_conntrack_bridge.c_pt.bc'
source_filename = "../net/bridge/netfilter/nf_conntrack_bridge.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nf_ct_bridge_info = type { ptr, i32, ptr }
%struct.nf_hook_ops = type { ptr, ptr, ptr, i8, i8, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
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
%struct.nf_conn = type { %struct.nf_conntrack, %struct.spinlock, i32, %struct.nf_conntrack_zone, [2 x %struct.nf_conntrack_tuple_hash], i32, i16, %struct.possible_net_t, %struct.hlist_node, %struct.anon.210, ptr, i32, i32, ptr, %union.nf_conntrack_proto }
%struct.nf_conntrack = type { %struct.refcount_struct }
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.6 }
%union.anon.6 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.nf_conntrack_zone = type { i16, i8, i8 }
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
%struct.anon.210 = type {}
%union.nf_conntrack_proto = type { %struct.nf_ct_dccp, [48 x i8] }
%struct.nf_ct_dccp = type { [2 x i8], i8, i8, i8, i64 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.ip_frag_state = type { i8, i32, i32, i32, i32, i32, i32, i16 }
%struct.ip_fraglist_iter = type { ptr, ptr, i32, i32 }
%struct.nf_bridge_frag_data = type { [14 x i8], i8, i16, i16 }
%struct.net_device = type { [16 x i8], ptr, ptr, i32, i32, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.anon.1, i32, i64, ptr, i32, i16, i16, i32, i16, i16, i64, i64, i64, i64, i64, i64, i64, i32, i32, i16, i8, i8, i32, %struct.net_device_stats, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, i8, i8, i8, [32 x i8], i8, i8, i8, i8, i16, i16, i16, i16, %struct.spinlock, i32, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, %struct.netdev_hw_addr_list, ptr, %struct.list_head, i32, i32, i8, i8, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, [32 x i8], ptr, %struct.hlist_node, [96 x i8], ptr, i32, i32, ptr, i32, %struct.spinlock, ptr, [2 x ptr], ptr, ptr, [16 x %struct.hlist_head], %struct.timer_list, i32, i32, %struct.list_head, ptr, %struct.ref_tracker_dir, %struct.list_head, i8, i8, i16, i8, ptr, ptr, %struct.possible_net_t, ptr, i32, %union.anon.192, ptr, ptr, %struct.device, [4 x ptr], ptr, ptr, i32, i16, ptr, i16, [16 x %struct.netdev_tc_txq], [16 x i8], i32, ptr, ptr, ptr, ptr, i8, i8, %struct.list_head, ptr, ptr, ptr, [3 x %struct.bpf_xdp_entity], [32 x i8], ptr, ptr, [44 x i8] }
%struct.anon.1 = type { %struct.list_head, %struct.list_head }
%struct.net_device_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.netdev_hw_addr_list = type { %struct.list_head, i32, %struct.rb_root }
%struct.rb_root = type { ptr }
%struct.hlist_head = type { ptr }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.ref_tracker_dir = type { %struct.spinlock, i32, %struct.refcount_struct, %struct.list_head, %struct.list_head }
%union.anon.192 = type { ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.netdev_tc_txq = type { i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.bpf_xdp_entity = type { ptr, ptr }
%struct.skb_shared_info = type { i8, i8, i8, i8, i16, i16, ptr, %struct.skb_shared_hwtstamps, i32, i32, %struct.atomic_t, ptr, [17 x %struct.bio_vec] }
%struct.skb_shared_hwtstamps = type { i64 }
%struct.bio_vec = type { ptr, i32, i32 }

@bridge_info = internal global { %struct.nf_ct_bridge_info, [20 x i8] } { %struct.nf_ct_bridge_info { ptr @nf_ct_bridge_hook_ops, i32 2, ptr null }, [20 x i8] zeroinitializer }, align 32
@__initcall__kmod_nf_conntrack_bridge__764_443_nf_conntrack_l3proto_bridge_init6 = internal global ptr @nf_conntrack_l3proto_bridge_init, section ".initcall6.init", align 4
@__exitcall_nf_conntrack_l3proto_bridge_fini = internal global ptr @nf_conntrack_l3proto_bridge_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias765 = internal constant [41 x i8] c"nf_conntrack_bridge.alias=nf_conntrack-7\00", section ".modinfo", align 1
@__UNIQUE_ID_file766 = internal constant [66 x i8] c"nf_conntrack_bridge.file=net/bridge/netfilter/nf_conntrack_bridge\00", section ".modinfo", align 1
@__UNIQUE_ID_license767 = internal constant [32 x i8] c"nf_conntrack_bridge.license=GPL\00", section ".modinfo", align 1
@nf_ct_bridge_hook_ops = internal global [2 x %struct.nf_hook_ops] [%struct.nf_hook_ops { ptr @nf_ct_bridge_pre, ptr null, ptr null, i8 7, i8 0, i32 0, i32 -200 }, %struct.nf_hook_ops { ptr @nf_ct_bridge_post, ptr null, ptr null, i8 7, i8 0, i32 4, i32 2147483647 }], section ".data..read_mostly", align 4
@nf_ct_bridge_refrag.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"net/bridge/netfilter/nf_conntrack_bridge.c\00", [53 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.3 = private unnamed_addr constant [12 x i8] c"bridge_info\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 425, i32 33 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.7 = private constant [46 x i8] c"../net/bridge/netfilter/nf_conntrack_bridge.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 326, i32 3 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_alias765, ptr @__UNIQUE_ID_file766, ptr @__UNIQUE_ID_license767, ptr @__exitcall_nf_conntrack_l3proto_bridge_fini, ptr @__initcall__kmod_nf_conntrack_bridge__764_443_nf_conntrack_l3proto_bridge_init6, ptr @nf_conntrack_l3proto_bridge_fini, ptr @bridge_info, ptr @.str], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @bridge_info to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nf_conntrack_l3proto_bridge_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @nf_ct_bridge_unregister(ptr noundef nonnull @bridge_info) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_bridge_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_conntrack_l3proto_bridge_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @nf_ct_bridge_register(ptr noundef nonnull @bridge_info) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_ct_bridge_pre(ptr nocapture noundef readnone %priv, ptr noundef %skb, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %bridge_state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %bridge_state) #5
  %0 = call ptr @memcpy(ptr %bridge_state, ptr %state, i32 24)
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %1 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %_nfct.i.i, align 8
  %and.i = and i32 %2, 7
  %and1.i = and i32 %2, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %lor.lhs.false, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  %3 = inttoptr i32 %and1.i to ptr
  %status.i = getelementptr inbounds %struct.nf_conn, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i, align 8
  %6 = and i32 %5, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp eq i32 %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %cmp = icmp eq i32 %and.i, 7
  %or.cond = select i1 %tobool2.not, i1 true, i1 %cmp
  br i1 %or.cond, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %and.i)
  %cmp.old = icmp eq i32 %and.i, 7
  br i1 %cmp.old, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false.if.end_crit_edge, %land.lhs.true.if.end_crit_edge
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %7 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %protocol, align 8
  %9 = zext i16 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i16 %8, label %sw.default [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb17
  ]

sw.bb:                                            ; preds = %if.end
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i, align 8
  %sub.i.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i.i)
  %cmp.not.i = icmp ult i32 %sub.i.i, 20
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.if.end5_crit_edge, !prof !25

sw.bb.if.end5_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end.i:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %11)
  %cmp3.i = icmp ult i32 %11, 20
  br i1 %cmp3.i, label %if.end.i.cleanup_crit_edge, label %pskb_may_pull.exit, !prof !25

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

pskb_may_pull.exit:                               ; preds = %if.end.i
  %sub.i = sub nuw nsw i32 20, %sub.i.i
  %call13.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i) #5
  %cmp14.i.not = icmp eq ptr %call13.i, null
  br i1 %cmp14.i.not, label %pskb_may_pull.exit.cleanup_crit_edge, label %pskb_may_pull.exit.if.end5_crit_edge

pskb_may_pull.exit.if.end5_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

pskb_may_pull.exit.cleanup_crit_edge:             ; preds = %pskb_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end5:                                          ; preds = %pskb_may_pull.exit.if.end5_crit_edge, %sw.bb.if.end5_crit_edge
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %16 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %17 to i32
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %conv.i.i
  %tot_len = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %tot_len to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %tot_len, align 2
  %conv7 = zext i16 %19 to i32
  %20 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %conv7)
  %cmp.not.i58 = icmp ugt i32 %21, %conv7
  br i1 %cmp.not.i58, label %pskb_trim_rcsum.exit, label %if.end5.if.end11_crit_edge, !prof !25

if.end5.if.end11_crit_edge:                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

pskb_trim_rcsum.exit:                             ; preds = %if.end5
  %call.i = tail call i32 @pskb_trim_rcsum_slow(ptr noundef %skb, i32 noundef %conv7) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %pskb_trim_rcsum.exit.if.end11_crit_edge, label %pskb_trim_rcsum.exit.cleanup_crit_edge

pskb_trim_rcsum.exit.cleanup_crit_edge:           ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

pskb_trim_rcsum.exit.if.end11_crit_edge:          ; preds = %pskb_trim_rcsum.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11

if.end11:                                         ; preds = %pskb_trim_rcsum.exit.if.end11_crit_edge, %if.end5.if.end11_crit_edge
  %22 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %head.i.i, align 8
  %24 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i.i = zext i16 %25 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 %conv.i.i.i
  %26 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i = and i8 %bf.load.i, 15
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %bf.clear.i)
  %cmp.i = icmp ugt i8 %bf.clear.i, 4
  %bf.lshr.mask.i = and i8 %bf.load.i, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %bf.lshr.mask.i)
  %cmp5.not.i = icmp eq i8 %bf.lshr.mask.i, 64
  %or.cond.i = and i1 %cmp.i, %cmp5.not.i
  br i1 %or.cond.i, label %if.end.i61, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i61:                                       ; preds = %if.end11
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %27 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %28 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %tot_len.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %tot_len.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %tot_len.i, align 2
  %conv7.i = zext i16 %30 to i32
  %31 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i.i, align 4
  %add.i = add i32 %sub.ptr.sub.i.i, %conv7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %add.i)
  %cmp9.i = icmp ult i32 %32, %add.i
  br i1 %cmp9.i, label %if.end.i61.cleanup_crit_edge, label %nf_ct_br_ip_check.exit

if.end.i61.cleanup_crit_edge:                     ; preds = %if.end.i61
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

nf_ct_br_ip_check.exit:                           ; preds = %if.end.i61
  %33 = shl nuw nsw i8 %bf.clear.i, 2
  %34 = zext i8 %33 to i16
  call void @__sanitizer_cov_trace_cmp2(i16 %30, i16 %34)
  %cmp15.i.not = icmp ult i16 %30, %34
  br i1 %cmp15.i.not, label %nf_ct_br_ip_check.exit.cleanup_crit_edge, label %if.end15

nf_ct_br_ip_check.exit.cleanup_crit_edge:         ; preds = %nf_ct_br_ip_check.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end15:                                         ; preds = %nf_ct_br_ip_check.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pf = getelementptr inbounds %struct.nf_hook_state, ptr %bridge_state, i32 0, i32 1
  %35 = ptrtoint ptr %pf to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 2, ptr %pf, align 1
  %call16 = call fastcc i32 @nf_ct_br_defrag4(ptr noundef %skb, ptr noundef nonnull %bridge_state)
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end
  %len.i.i63 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %36 = ptrtoint ptr %len.i.i63 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i.i63, align 4
  %data_len.i.i64 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %38 = ptrtoint ptr %data_len.i.i64 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i.i64, align 8
  %sub.i.i65 = sub i32 %37, %39
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %sub.i.i65)
  %cmp.not.i66 = icmp ult i32 %sub.i.i65, 40
  br i1 %cmp.not.i66, label %if.end.i68, label %sw.bb17.if.end20_crit_edge, !prof !25

sw.bb17.if.end20_crit_edge:                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

if.end.i68:                                       ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %37)
  %cmp3.i67 = icmp ult i32 %37, 40
  br i1 %cmp3.i67, label %if.end.i68.cleanup_crit_edge, label %pskb_may_pull.exit74, !prof !25

if.end.i68.cleanup_crit_edge:                     ; preds = %if.end.i68
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

pskb_may_pull.exit74:                             ; preds = %if.end.i68
  %sub.i69 = sub nuw nsw i32 40, %sub.i.i65
  %call13.i70 = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i69) #5
  %cmp14.i71.not = icmp eq ptr %call13.i70, null
  br i1 %cmp14.i71.not, label %pskb_may_pull.exit74.cleanup_crit_edge, label %pskb_may_pull.exit74.if.end20_crit_edge

pskb_may_pull.exit74.if.end20_crit_edge:          ; preds = %pskb_may_pull.exit74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end20

pskb_may_pull.exit74.cleanup_crit_edge:           ; preds = %pskb_may_pull.exit74
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end20:                                         ; preds = %pskb_may_pull.exit74.if.end20_crit_edge, %sw.bb17.if.end20_crit_edge
  %head.i.i75 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %40 = ptrtoint ptr %head.i.i75 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i75, align 8
  %network_header.i.i76 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %42 = ptrtoint ptr %network_header.i.i76 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %network_header.i.i76, align 4
  %conv.i.i77 = zext i16 %43 to i32
  %add.ptr.i.i78 = getelementptr i8, ptr %41, i32 %conv.i.i77
  %payload_len = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i78, i32 0, i32 2
  %44 = ptrtoint ptr %payload_len to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %payload_len, align 4
  %conv22 = zext i16 %45 to i32
  %add = add nuw nsw i32 %conv22, 40
  %46 = ptrtoint ptr %len.i.i63 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %len.i.i63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %add)
  %cmp.not.i80 = icmp ugt i32 %47, %add
  br i1 %cmp.not.i80, label %pskb_trim_rcsum.exit84, label %if.end20.if.end26_crit_edge, !prof !25

if.end20.if.end26_crit_edge:                      ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

pskb_trim_rcsum.exit84:                           ; preds = %if.end20
  %call.i81 = tail call i32 @pskb_trim_rcsum_slow(ptr noundef %skb, i32 noundef %add) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i81)
  %tobool24.not = icmp eq i32 %call.i81, 0
  br i1 %tobool24.not, label %pskb_trim_rcsum.exit84.if.end26_crit_edge, label %pskb_trim_rcsum.exit84.cleanup_crit_edge

pskb_trim_rcsum.exit84.cleanup_crit_edge:         ; preds = %pskb_trim_rcsum.exit84
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

pskb_trim_rcsum.exit84.if.end26_crit_edge:        ; preds = %pskb_trim_rcsum.exit84
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.end26:                                         ; preds = %pskb_trim_rcsum.exit84.if.end26_crit_edge, %if.end20.if.end26_crit_edge
  %48 = ptrtoint ptr %head.i.i75 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %head.i.i75, align 8
  %50 = ptrtoint ptr %network_header.i.i76 to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %network_header.i.i76, align 4
  %conv.i.i.i87 = zext i16 %51 to i32
  %add.ptr.i.i.i88 = getelementptr i8, ptr %49, i32 %conv.i.i.i87
  %52 = ptrtoint ptr %add.ptr.i.i.i88 to i32
  call void @__asan_load1_noabort(i32 %52)
  %bf.load.i89 = load i8, ptr %add.ptr.i.i.i88, align 4
  %bf.lshr.mask.i90 = and i8 %bf.load.i89, -16
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %bf.lshr.mask.i90)
  %cmp.not.i91 = icmp eq i8 %bf.lshr.mask.i90, 96
  br i1 %cmp.not.i91, label %nf_ct_br_ipv6_check.exit, label %if.end26.cleanup_crit_edge

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

nf_ct_br_ipv6_check.exit:                         ; preds = %if.end26
  %sub.ptr.lhs.cast.i.i92 = ptrtoint ptr %add.ptr.i.i.i88 to i32
  %data.i.i93 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %53 = ptrtoint ptr %data.i.i93 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %data.i.i93, align 4
  %sub.ptr.rhs.cast.i.i94 = ptrtoint ptr %54 to i32
  %payload_len.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i88, i32 0, i32 2
  %55 = ptrtoint ptr %payload_len.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %payload_len.i, align 4
  %conv3.i = zext i16 %56 to i32
  %add.i95 = add i32 %sub.ptr.lhs.cast.i.i92, 40
  %sub.ptr.sub.i.i96 = sub i32 %add.i95, %sub.ptr.rhs.cast.i.i94
  %add4.i = add i32 %sub.ptr.sub.i.i96, %conv3.i
  %57 = ptrtoint ptr %len.i.i63 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len.i.i63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %add4.i)
  %cmp6.i.not = icmp ult i32 %58, %add4.i
  br i1 %cmp6.i.not, label %nf_ct_br_ipv6_check.exit.cleanup_crit_edge, label %if.end30

nf_ct_br_ipv6_check.exit.cleanup_crit_edge:       ; preds = %nf_ct_br_ipv6_check.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end30:                                         ; preds = %nf_ct_br_ipv6_check.exit
  call void @__sanitizer_cov_trace_pc() #7
  %pf31 = getelementptr inbounds %struct.nf_hook_state, ptr %bridge_state, i32 0, i32 1
  %59 = ptrtoint ptr %pf31 to i32
  call void @__asan_store1_noabort(i32 %59)
  store i8 10, ptr %pf31, align 1
  %call32 = call fastcc i32 @nf_ct_br_defrag6(ptr noundef %skb, ptr noundef nonnull %bridge_state)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %slow_gro.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %60 = ptrtoint ptr %slow_gro.i.i to i32
  call void @__asan_loadN_noabort(i32 %60, i32 4)
  %bf.load.i.i = load i32, ptr %slow_gro.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, 4096
  store i32 %bf.set.i.i, ptr %slow_gro.i.i, align 2
  %61 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 7, ptr %_nfct.i.i, align 8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end30, %if.end15
  %ret.0 = phi i32 [ %call32, %if.end30 ], [ %call16, %if.end15 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %ret.0)
  %cmp33.not = icmp eq i32 %ret.0, 1
  br i1 %cmp33.not, label %if.end36, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end36:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %call37 = call i32 @nf_conntrack_in(ptr noundef %skb, ptr noundef nonnull %bridge_state) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end36, %sw.epilog.cleanup_crit_edge, %sw.default, %nf_ct_br_ipv6_check.exit.cleanup_crit_edge, %if.end26.cleanup_crit_edge, %pskb_trim_rcsum.exit84.cleanup_crit_edge, %pskb_may_pull.exit74.cleanup_crit_edge, %if.end.i68.cleanup_crit_edge, %nf_ct_br_ip_check.exit.cleanup_crit_edge, %if.end.i61.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %pskb_trim_rcsum.exit.cleanup_crit_edge, %pskb_may_pull.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.default ], [ %call37, %if.end36 ], [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %land.lhs.true.cleanup_crit_edge ], [ 1, %pskb_may_pull.exit.cleanup_crit_edge ], [ 1, %pskb_trim_rcsum.exit.cleanup_crit_edge ], [ 1, %nf_ct_br_ip_check.exit.cleanup_crit_edge ], [ 1, %pskb_may_pull.exit74.cleanup_crit_edge ], [ 1, %pskb_trim_rcsum.exit84.cleanup_crit_edge ], [ 1, %nf_ct_br_ipv6_check.exit.cleanup_crit_edge ], [ %ret.0, %sw.epilog.cleanup_crit_edge ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %if.end11.cleanup_crit_edge ], [ 1, %if.end.i61.cleanup_crit_edge ], [ 1, %if.end.i68.cleanup_crit_edge ], [ 1, %if.end26.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %bridge_state) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_ct_bridge_post(ptr nocapture noundef readnone %priv, ptr noundef %skb, ptr nocapture noundef readonly %state) #2 align 64 {
entry:
  %state.i.i = alloca %struct.ip_frag_state, align 4
  %iter.i.i = alloca %struct.ip_fraglist_iter, align 4
  %data.i = alloca %struct.nf_bridge_frag_data, align 2
  %pnum.i = alloca i8, align 1
  %frag_off.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i.i, align 8
  %and.i.i = and i32 %1, 7
  %and1.i.i = and i32 %1, -8
  %2 = inttoptr i32 %and1.i.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %and.i.i)
  %cmp.i = icmp eq i32 %and.i.i, 4
  %or.cond.i = or i1 %tobool.not.i, %cmp.i
  br i1 %or.cond.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %entry
  br i1 %tobool.not.i, label %if.then.i.if.end_crit_edge, label %if.then.i.i

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then.i.i:                                      ; preds = %if.then.i
  %status.i.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 5
  %3 = ptrtoint ptr %status.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %status.i.i.i, align 8
  %5 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool2.not.i.i = icmp eq i32 %5, 0
  br i1 %tobool2.not.i.i, label %if.end.i.i, label %if.then.i.i.if.then7.i.i_crit_edge

if.then.i.i.if.then7.i.i_crit_edge:               ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i.i

if.end.i.i:                                       ; preds = %if.then.i.i
  %call4.i.i = tail call i32 @__nf_conntrack_confirm(ptr noundef %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i.i)
  %cmp.i.i = icmp eq i32 %call4.i.i, 1
  br i1 %cmp.i.i, label %if.end.i.i.if.then7.i.i_crit_edge, label %if.end.i.i.cleanup_crit_edge, !prof !26

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end.i.i.if.then7.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i.i

if.then7.i.i:                                     ; preds = %if.end.i.i.if.then7.i.i_crit_edge, %if.then.i.i.if.then7.i.i_crit_edge
  tail call void @nf_ct_deliver_cached_events(ptr noundef nonnull %2) #5
  br label %if.end

if.end.i:                                         ; preds = %entry
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %6 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %protocol.i, align 8
  %8 = zext i16 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.1)
  switch i16 %7, label %if.end.i.if.end_crit_edge [
    i16 2048, label %sw.bb.i
    i16 -31011, label %sw.bb4.i
  ]

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %9 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %11 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %12 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %10, i32 %conv.i.i.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %13 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %14 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %bf.load.i.i = load i8, ptr %add.ptr.i.i.i, align 4
  %bf.clear.i.i = shl i8 %bf.load.i.i, 2
  %16 = and i8 %bf.clear.i.i, 60
  %mul.i.i = zext i8 %16 to i32
  %add.i = add i32 %sub.ptr.sub.i.i, %mul.i.i
  br label %sw.epilog.i

sw.bb4.i:                                         ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %pnum.i) #5
  %head.i.i32.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %17 = ptrtoint ptr %head.i.i32.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %head.i.i32.i, align 8
  %network_header.i.i33.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %19 = ptrtoint ptr %network_header.i.i33.i to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %network_header.i.i33.i, align 4
  %conv.i.i34.i = zext i16 %20 to i32
  %add.ptr.i.i35.i = getelementptr i8, ptr %18, i32 %conv.i.i34.i
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i35.i, i32 0, i32 3
  %21 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %nexthdr.i, align 2
  %23 = ptrtoint ptr %pnum.i to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %22, ptr %pnum.i, align 1
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %frag_off.i) #5
  %24 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_store2_noabort(i32 %24)
  store i16 -1, ptr %frag_off.i, align 2, !annotation !27
  %call6.i = call i32 @ipv6_skip_exthdr(ptr noundef %skb, i32 noundef 40, ptr noundef nonnull %pnum.i, ptr noundef nonnull %frag_off.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6.i)
  %cmp7.i = icmp slt i32 %call6.i, 0
  br i1 %cmp7.i, label %sw.bb4.i.if.then13.i_crit_edge, label %lor.lhs.false9.i

sw.bb4.i.if.then13.i_crit_edge:                   ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13.i

lor.lhs.false9.i:                                 ; preds = %sw.bb4.i
  %25 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %frag_off.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 8, i16 %26)
  %cmp11.not.i = icmp ult i16 %26, 8
  br i1 %cmp11.not.i, label %cleanup.i, label %lor.lhs.false9.i.if.then13.i_crit_edge

lor.lhs.false9.i.if.then13.i_crit_edge:           ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then13.i

if.then13.i:                                      ; preds = %lor.lhs.false9.i.if.then13.i_crit_edge, %sw.bb4.i.if.then13.i_crit_edge
  %27 = ptrtoint ptr %_nfct.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %_nfct.i.i.i, align 8
  %and.i.i37.i = and i32 %28, -8
  %29 = inttoptr i32 %and.i.i37.i to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i37.i)
  %tobool.not.i38.i = icmp eq i32 %and.i.i37.i, 0
  br i1 %tobool.not.i38.i, label %if.then13.i.cleanup.thread.i_crit_edge, label %if.then.i41.i

if.then13.i.cleanup.thread.i_crit_edge:           ; preds = %if.then13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i

if.then.i41.i:                                    ; preds = %if.then13.i
  %status.i.i39.i = getelementptr inbounds %struct.nf_conn, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %status.i.i39.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load volatile i32, ptr %status.i.i39.i, align 8
  %32 = and i32 %31, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool2.not.i40.i = icmp eq i32 %32, 0
  br i1 %tobool2.not.i40.i, label %if.end.i44.i, label %if.then.i41.i.if.then7.i45.i_crit_edge

if.then.i41.i.if.then7.i45.i_crit_edge:           ; preds = %if.then.i41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i45.i

if.end.i44.i:                                     ; preds = %if.then.i41.i
  %call4.i42.i = call i32 @__nf_conntrack_confirm(ptr noundef %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4.i42.i)
  %cmp.i43.i = icmp eq i32 %call4.i42.i, 1
  br i1 %cmp.i43.i, label %if.end.i44.i.if.then7.i45.i_crit_edge, label %if.end.i44.i.cleanup.thread.i_crit_edge, !prof !26

if.end.i44.i.cleanup.thread.i_crit_edge:          ; preds = %if.end.i44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i

if.end.i44.i.if.then7.i45.i_crit_edge:            ; preds = %if.end.i44.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then7.i45.i

if.then7.i45.i:                                   ; preds = %if.end.i44.i.if.then7.i45.i_crit_edge, %if.then.i41.i.if.then7.i45.i_crit_edge
  call void @nf_ct_deliver_cached_events(ptr noundef nonnull %29) #5
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then7.i45.i, %if.end.i44.i.cleanup.thread.i_crit_edge, %if.then13.i.cleanup.thread.i_crit_edge
  %retval.0.ph.i = phi i32 [ 1, %if.then13.i.cleanup.thread.i_crit_edge ], [ %call4.i42.i, %if.end.i44.i.cleanup.thread.i_crit_edge ], [ 1, %if.then7.i45.i ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pnum.i) #5
  br label %nf_ct_bridge_confirm.exit

cleanup.i:                                        ; preds = %lor.lhs.false9.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %frag_off.i) #5
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %pnum.i) #5
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %cleanup.i, %sw.bb.i
  %protoff.0.i = phi i32 [ %call6.i, %cleanup.i ], [ %add.i, %sw.bb.i ]
  %call17.i = call i32 @nf_confirm(ptr noundef %skb, i32 noundef %protoff.0.i, ptr noundef nonnull %2, i32 noundef %and.i.i) #5
  br label %nf_ct_bridge_confirm.exit

nf_ct_bridge_confirm.exit:                        ; preds = %sw.epilog.i, %cleanup.thread.i
  %retval.1.i = phi i32 [ %call17.i, %sw.epilog.i ], [ %retval.0.ph.i, %cleanup.thread.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %retval.1.i)
  %cmp.not = icmp eq i32 %retval.1.i, 1
  br i1 %cmp.not, label %nf_ct_bridge_confirm.exit.if.end_crit_edge, label %nf_ct_bridge_confirm.exit.cleanup_crit_edge

nf_ct_bridge_confirm.exit.cleanup_crit_edge:      ; preds = %nf_ct_bridge_confirm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

nf_ct_bridge_confirm.exit.if.end_crit_edge:       ; preds = %nf_ct_bridge_confirm.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.end:                                           ; preds = %nf_ct_bridge_confirm.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge, %if.then7.i.i, %if.then.i.if.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %data.i) #5
  %33 = getelementptr inbounds i8, ptr %data.i, i32 14
  %34 = call ptr @memset(ptr %33, i32 255, i32 6)
  %frag_max_size.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %frag_max_size.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %frag_max_size.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool.not.i4 = icmp eq i16 %36, 0
  br i1 %tobool.not.i4, label %if.end.nf_ct_bridge_refrag.exit_crit_edge, label %if.end.i6

if.end.nf_ct_bridge_refrag.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %nf_ct_bridge_refrag.exit

if.end.i6:                                        ; preds = %if.end
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %37 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %37, i32 4)
  %bf.load.i.i5 = load i32, ptr %vlan_present.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i.i5)
  %tobool.not.i.i = icmp sgt i32 %bf.load.i.i5, -1
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i7

if.then.i.i7:                                     ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %33, align 2
  %vlan_tci.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %39 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %vlan_tci.i.i, align 2
  %vlan_tci2.i.i = getelementptr inbounds %struct.nf_bridge_frag_data, ptr %data.i, i32 0, i32 2
  %41 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %vlan_tci2.i.i, align 2
  %vlan_proto.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %42 = ptrtoint ptr %vlan_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %vlan_proto.i.i, align 8
  %vlan_proto3.i.i = getelementptr inbounds %struct.nf_bridge_frag_data, ptr %data.i, i32 0, i32 3
  %44 = ptrtoint ptr %vlan_proto3.i.i to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %vlan_proto3.i.i, align 2
  br label %nf_ct_bridge_frag_save.exit.i

if.else.i.i:                                      ; preds = %if.end.i6
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %33 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %33, align 2
  br label %nf_ct_bridge_frag_save.exit.i

nf_ct_bridge_frag_save.exit.i:                    ; preds = %if.else.i.i, %if.then.i.i7
  %data.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %46 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %data.i.i.i, align 4
  %add.ptr.i.i.i8 = getelementptr i8, ptr %47, i32 -14
  %48 = call ptr @memcpy(ptr %data.i, ptr %add.ptr.i.i.i8, i32 14)
  %protocol.i9 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %49 = ptrtoint ptr %protocol.i9 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %protocol.i9, align 8
  %51 = zext i16 %50 to i64
  call void @__sanitizer_cov_trace_switch(i64 %51, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %50, label %land.end.i [
    i16 2048, label %sw.bb.i11
    i16 -31011, label %sw.bb1.i
  ]

sw.bb.i11:                                        ; preds = %nf_ct_bridge_frag_save.exit.i
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %52 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %net.i, align 4
  %sk.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %54 = ptrtoint ptr %sk.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %sk.i, align 4
  %conv.i.i = zext i16 %36 to i32
  %56 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 2
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_load8_noabort(i32 %57)
  %58 = load i64, ptr %56, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %state.i.i) #5
  %59 = call ptr @memset(ptr %state.i.i, i32 255, i32 32)
  %ip_summed.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %60 = ptrtoint ptr %ip_summed.i.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %bf.load.i2.i = load i16, ptr %ip_summed.i.i, align 8
  %61 = and i16 %bf.load.i2.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %61)
  %cmp.i.i10 = icmp eq i16 %61, 1536
  br i1 %cmp.i.i10, label %land.lhs.true.i.i, label %sw.bb.i11.if.end.i.i14_crit_edge

sw.bb.i11.if.end.i.i14_crit_edge:                 ; preds = %sw.bb.i11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i14

land.lhs.true.i.i:                                ; preds = %sw.bb.i11
  %call.i.i = call i32 @skb_checksum_help(ptr noundef %skb) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i3.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i3.i, label %land.lhs.true.i.i.if.end.i.i14_crit_edge, label %land.lhs.true.i.i.blackhole.i.i_crit_edge

land.lhs.true.i.i.blackhole.i.i_crit_edge:        ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blackhole.i.i

land.lhs.true.i.i.if.end.i.i14_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i.i14

if.end.i.i14:                                     ; preds = %land.lhs.true.i.i.if.end.i.i14_crit_edge, %sw.bb.i11.if.end.i.i14_crit_edge
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %62 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %head.i.i.i.i, align 8
  %network_header.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %64 = ptrtoint ptr %network_header.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %network_header.i.i.i.i, align 4
  %conv.i.i.i.i = zext i16 %65 to i32
  %add.ptr.i.i.i.i = getelementptr i8, ptr %63, i32 %conv.i.i.i.i
  %66 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %bf.load5.i.i = load i8, ptr %add.ptr.i.i.i.i, align 4
  %bf.clear6.i.i = shl i8 %bf.load5.i.i, 2
  %67 = and i8 %bf.clear6.i.i, 60
  %mul.i.i12 = zext i8 %67 to i32
  %sub.i.i = sub nsw i32 %conv.i.i, %mul.i.i12
  %68 = getelementptr inbounds %struct.anon, ptr %skb, i32 0, i32 2
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %68, align 8
  %hard_header_len.i.i = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 19
  %71 = ptrtoint ptr %hard_header_len.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %hard_header_len.i.i, align 2
  %conv8.i.i = zext i16 %72 to i32
  %needed_headroom.i.i = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 21
  %73 = ptrtoint ptr %needed_headroom.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %needed_headroom.i.i, align 8
  %conv9.i.i = zext i16 %74 to i32
  %add.i.i = add nuw nsw i32 %conv9.i.i, %conv8.i.i
  %and.i.i13 = and i32 %add.i.i, 131056
  %add10.i.i = add nuw nsw i32 %and.i.i13, 16
  %mtu11.i.i = getelementptr inbounds %struct.net_device, ptr %70, i32 0, i32 20
  %75 = ptrtoint ptr %mtu11.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mtu11.i.i, align 4
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %77 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %end.i.i.i.i, align 4
  %frag_list.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %78, i32 0, i32 6
  %79 = ptrtoint ptr %frag_list.i.i.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %frag_list.i.i.i, align 8
  %cmp.i.not.i.i = icmp eq ptr %80, null
  br i1 %cmp.i.not.i.i, label %if.end.i.i14.slow_path.i.i_crit_edge, label %if.then13.i.i

if.end.i.i14.slow_path.i.i_crit_edge:             ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_pc() #7
  br label %slow_path.i.i

if.then13.i.i:                                    ; preds = %if.end.i.i14
  %len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %81 = ptrtoint ptr %len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %len.i.i.i.i, align 4
  %data_len.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %83 = ptrtoint ptr %data_len.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %data_len.i.i.i.i, align 8
  %nr_frags.i.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %78, i32 0, i32 2
  %85 = ptrtoint ptr %nr_frags.i.i.i.i to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %nr_frags.i.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %cmp10.not.i.i.i.i = icmp eq i8 %86, 0
  br i1 %cmp10.not.i.i.i.i, label %if.then13.i.i.skb_pagelen.exit.i.i_crit_edge, label %for.body.preheader.i.i.i.i

if.then13.i.i.skb_pagelen.exit.i.i_crit_edge:     ; preds = %if.then13.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_pagelen.exit.i.i

for.body.preheader.i.i.i.i:                       ; preds = %if.then13.i.i
  %conv.i.i2.i.i = zext i8 %86 to i32
  br label %for.body.i.i.i.i

for.body.i.i.i.i:                                 ; preds = %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, %for.body.preheader.i.i.i.i
  %i.012.in.i.i.i.i = phi i32 [ %i.012.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ %conv.i.i2.i.i, %for.body.preheader.i.i.i.i ]
  %len.011.i.i.i.i = phi i32 [ %add.i.i.i.i, %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge ], [ 0, %for.body.preheader.i.i.i.i ]
  %i.012.i.i.i.i = add nsw i32 %i.012.in.i.i.i.i, -1
  %bv_len.i.i.i.i.i = getelementptr %struct.skb_shared_info, ptr %78, i32 0, i32 12, i32 %i.012.i.i.i.i, i32 1
  %87 = ptrtoint ptr %bv_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %bv_len.i.i.i.i.i, align 4
  %add.i.i.i.i = add i32 %88, %len.011.i.i.i.i
  %cmp.i.i.i.i = icmp ugt i32 %i.012.in.i.i.i.i, 1
  br i1 %cmp.i.i.i.i, label %for.body.i.i.i.i.for.body.i.i.i.i_crit_edge, label %for.body.i.i.i.i.skb_pagelen.exit.i.i_crit_edge

for.body.i.i.i.i.skb_pagelen.exit.i.i_crit_edge:  ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_pagelen.exit.i.i

for.body.i.i.i.i.for.body.i.i.i.i_crit_edge:      ; preds = %for.body.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i.i.i.i

skb_pagelen.exit.i.i:                             ; preds = %for.body.i.i.i.i.skb_pagelen.exit.i.i_crit_edge, %if.then13.i.i.skb_pagelen.exit.i.i_crit_edge
  %len.0.lcssa.i.i.i.i = phi i32 [ 0, %if.then13.i.i.skb_pagelen.exit.i.i_crit_edge ], [ %add.i.i.i.i, %for.body.i.i.i.i.skb_pagelen.exit.i.i_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %iter.i.i) #5
  %89 = add i32 %84, %mul.i.i12
  %90 = sub i32 %82, %89
  %sub15.i.i = add i32 %90, %len.0.lcssa.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub15.i.i, i32 %76)
  %cmp16.i.i = icmp ugt i32 %sub15.i.i, %76
  %91 = call ptr @memset(ptr %iter.i.i, i32 255, i32 16)
  br i1 %cmp16.i.i, label %skb_pagelen.exit.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false.i.i

skb_pagelen.exit.i.i.cleanup.thread.i.i_crit_edge: ; preds = %skb_pagelen.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i.i

lor.lhs.false.i.i:                                ; preds = %skb_pagelen.exit.i.i
  %92 = ptrtoint ptr %data.i.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %data.i.i.i, align 4
  %sub.ptr.lhs.cast.i.i.i = ptrtoint ptr %93 to i32
  %sub.ptr.rhs.cast.i.i.i = ptrtoint ptr %63 to i32
  %sub.ptr.sub.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i, %sub.ptr.rhs.cast.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i.i.i, i32 %add10.i.i)
  %cmp19.i.i = icmp ult i32 %sub.ptr.sub.i.i.i, %add10.i.i
  br i1 %cmp19.i.i, label %lor.lhs.false.i.i.cleanup.thread.i.i_crit_edge, label %if.end22.i.i

lor.lhs.false.i.i.cleanup.thread.i.i_crit_edge:   ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i.i

if.end22.i.i:                                     ; preds = %lor.lhs.false.i.i
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %94 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %94)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %if.end22.i.i.if.end26.i.i_crit_edge, label %skb_cloned.exit.i.i

if.end22.i.i.if.end26.i.i_crit_edge:              ; preds = %if.end22.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i.i

skb_cloned.exit.i.i:                              ; preds = %if.end22.i.i
  %dataref.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %78, i32 0, i32 10
  %call.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %dataref.i.i.i, i32 noundef 4) #5
  %95 = ptrtoint ptr %dataref.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load volatile i32, ptr %dataref.i.i.i, align 4
  %and.i.i.i = and i32 %96, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and.i.i.i)
  %cmp.i4.not.i.i = icmp eq i32 %and.i.i.i, 1
  br i1 %cmp.i4.not.i.i, label %skb_cloned.exit.i.i.if.end26.i.i_crit_edge, label %skb_cloned.exit.i.i.cleanup.i.i_crit_edge

skb_cloned.exit.i.i.cleanup.i.i_crit_edge:        ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i

skb_cloned.exit.i.i.if.end26.i.i_crit_edge:       ; preds = %skb_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26.i.i

if.end26.i.i:                                     ; preds = %skb_cloned.exit.i.i.if.end26.i.i_crit_edge, %if.end22.i.i.if.end26.i.i_crit_edge
  %97 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %end.i.i.i.i, align 4
  %frag_list.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %98, i32 0, i32 6
  %add33.i.i = add nuw nsw i32 %add10.i.i, %mul.i.i12
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %if.end37.i.i.for.cond.i.i_crit_edge, %if.end26.i.i
  %frag.0.in.i.i = phi ptr [ %frag_list.i.i, %if.end26.i.i ], [ %frag.0.i.i, %if.end37.i.i.for.cond.i.i_crit_edge ]
  %99 = ptrtoint ptr %frag.0.in.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %frag.0.i.i = load ptr, ptr %frag.0.in.i.i, align 8
  %tobool28.not.i.i = icmp eq ptr %frag.0.i.i, null
  br i1 %tobool28.not.i.i, label %for.end.i.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %frag.0.i.i, i32 0, i32 6
  %100 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %101, i32 %76)
  %cmp29.i.i = icmp ugt i32 %101, %76
  br i1 %cmp29.i.i, label %for.body.i.i.cleanup.thread.i.i_crit_edge, label %lor.lhs.false31.i.i

for.body.i.i.cleanup.thread.i.i_crit_edge:        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i.i

lor.lhs.false31.i.i:                              ; preds = %for.body.i.i
  %data.i5.i.i = getelementptr inbounds %struct.sk_buff, ptr %frag.0.i.i, i32 0, i32 19
  %102 = ptrtoint ptr %data.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %data.i5.i.i, align 4
  %head.i6.i.i = getelementptr inbounds %struct.sk_buff, ptr %frag.0.i.i, i32 0, i32 18
  %104 = ptrtoint ptr %head.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %head.i6.i.i, align 8
  %sub.ptr.lhs.cast.i7.i.i = ptrtoint ptr %103 to i32
  %sub.ptr.rhs.cast.i8.i.i = ptrtoint ptr %105 to i32
  %sub.ptr.sub.i9.i.i = sub i32 %sub.ptr.lhs.cast.i7.i.i, %sub.ptr.rhs.cast.i8.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.ptr.sub.i9.i.i, i32 %add33.i.i)
  %cmp34.i.i = icmp ult i32 %sub.ptr.sub.i9.i.i, %add33.i.i
  br i1 %cmp34.i.i, label %lor.lhs.false31.i.i.cleanup.thread.i.i_crit_edge, label %if.end37.i.i

lor.lhs.false31.i.i.cleanup.thread.i.i_crit_edge: ; preds = %lor.lhs.false31.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread.i.i

if.end37.i.i:                                     ; preds = %lor.lhs.false31.i.i
  %users.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %frag.0.i.i, i32 0, i32 21
  %call.i.i.i.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef %users.i.i.i, i32 noundef 4) #5
  %106 = ptrtoint ptr %users.i.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load volatile i32, ptr %users.i.i.i, align 4
  %cmp.i10.not.i.i = icmp eq i32 %107, 1
  br i1 %cmp.i10.not.i.i, label %if.end37.i.i.for.cond.i.i_crit_edge, label %if.end37.i.i.cleanup.i.i_crit_edge

if.end37.i.i.cleanup.i.i_crit_edge:               ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.i.i

if.end37.i.i.for.cond.i.i_crit_edge:              ; preds = %if.end37.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.i.i

for.end.i.i:                                      ; preds = %for.cond.i.i
  call void @ip_fraglist_init(ptr noundef %skb, ptr noundef %add.ptr.i.i.i.i, i32 noundef %mul.i.i12, ptr noundef nonnull %iter.i.i) #5
  br label %for.cond42.i.i

for.cond42.i.i:                                   ; preds = %if.end53.i.i, %for.end.i.i
  %skb.addr.0.i.i = phi ptr [ %skb, %for.end.i.i ], [ %113, %if.end53.i.i ]
  %108 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %iter.i.i, align 4
  %tobool44.not.i.i = icmp eq ptr %109, null
  br i1 %tobool44.not.i.i, label %for.cond42.i.i.if.end46.i.i_crit_edge, label %if.then45.i.i

for.cond42.i.i.if.end46.i.i_crit_edge:            ; preds = %for.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end46.i.i

if.then45.i.i:                                    ; preds = %for.cond42.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @ip_fraglist_prepare(ptr noundef %skb.addr.0.i.i, ptr noundef nonnull %iter.i.i) #5
  br label %if.end46.i.i

if.end46.i.i:                                     ; preds = %if.then45.i.i, %for.cond42.i.i.if.end46.i.i_crit_edge
  %110 = getelementptr inbounds %struct.sk_buff, ptr %skb.addr.0.i.i, i32 0, i32 2
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_store8_noabort(i32 %111)
  store i64 %58, ptr %110, align 8
  %call47.i.i = call i32 @nf_ct_bridge_refrag_post(ptr noundef %53, ptr noundef %55, ptr noundef nonnull %data.i, ptr noundef %skb.addr.0.i.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47.i.i)
  %tobool48.not.i.i = icmp eq i32 %call47.i.i, 0
  %112 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %iter.i.i, align 4
  br i1 %tobool48.not.i.i, label %lor.lhs.false49.i.i, label %if.end58.i.i

lor.lhs.false49.i.i:                              ; preds = %if.end46.i.i
  %tobool51.not.i.i = icmp eq ptr %113, null
  br i1 %tobool51.not.i.i, label %lor.lhs.false49.i.i.cleanup.thread16.i.i_crit_edge, label %if.end53.i.i

lor.lhs.false49.i.i.cleanup.thread16.i.i_crit_edge: ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread16.i.i

if.end53.i.i:                                     ; preds = %lor.lhs.false49.i.i
  call void @__sanitizer_cov_trace_pc() #7
  %114 = ptrtoint ptr %113 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %113, align 8
  %116 = ptrtoint ptr %iter.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %115, ptr %iter.i.i, align 4
  store ptr null, ptr %113, align 8
  br label %for.cond42.i.i

if.end58.i.i:                                     ; preds = %if.end46.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @kfree_skb_list(ptr noundef %113) #5
  br label %cleanup.thread16.i.i

cleanup.thread.i.i:                               ; preds = %lor.lhs.false31.i.i.cleanup.thread.i.i_crit_edge, %for.body.i.i.cleanup.thread.i.i_crit_edge, %lor.lhs.false.i.i.cleanup.thread.i.i_crit_edge, %skb_pagelen.exit.i.i.cleanup.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i.i) #5
  br label %blackhole.i.i

cleanup.thread16.i.i:                             ; preds = %if.end58.i.i, %lor.lhs.false49.i.i.cleanup.thread16.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i.i) #5
  br label %nf_br_ip_fragment.exit.i

cleanup.i.i:                                      ; preds = %if.end37.i.i.cleanup.i.i_crit_edge, %skb_cloned.exit.i.i.cleanup.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %iter.i.i) #5
  br label %slow_path.i.i

slow_path.i.i:                                    ; preds = %cleanup.i.i, %if.end.i.i14.slow_path.i.i_crit_edge
  call void @ip_frag_init(ptr noundef %skb, i32 noundef %mul.i.i12, i32 noundef %add10.i.i, i32 noundef %sub.i.i, i1 noundef zeroext false, ptr noundef nonnull %state.i.i) #5
  %left.i.i = getelementptr inbounds %struct.ip_frag_state, ptr %state.i.i, i32 0, i32 4
  br label %while.cond.i.i

while.cond.i.i:                                   ; preds = %if.end69.i.i.while.cond.i.i_crit_edge, %slow_path.i.i
  %117 = ptrtoint ptr %left.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %left.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp63.not.i.i = icmp eq i32 %118, 0
  br i1 %cmp63.not.i.i, label %while.end.i.i, label %while.body.i.i

while.body.i.i:                                   ; preds = %while.cond.i.i
  %call65.i.i = call ptr @ip_frag_next(ptr noundef %skb, ptr noundef nonnull %state.i.i) #5
  %cmp.i11.i.i = icmp ugt ptr %call65.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i11.i.i, label %while.body.i.i.blackhole.i.i_crit_edge, label %if.end69.i.i

while.body.i.i.blackhole.i.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blackhole.i.i

if.end69.i.i:                                     ; preds = %while.body.i.i
  %119 = getelementptr inbounds %struct.sk_buff, ptr %call65.i.i, i32 0, i32 2
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_store8_noabort(i32 %120)
  store i64 %58, ptr %119, align 8
  %call70.i.i = call i32 @nf_ct_bridge_refrag_post(ptr noundef %53, ptr noundef %55, ptr noundef nonnull %data.i, ptr noundef %call65.i.i) #5
  %tobool71.not.i.i = icmp eq i32 %call70.i.i, 0
  br i1 %tobool71.not.i.i, label %if.end69.i.i.while.cond.i.i_crit_edge, label %if.end69.i.i.blackhole.i.i_crit_edge

if.end69.i.i.blackhole.i.i_crit_edge:             ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %blackhole.i.i

if.end69.i.i.while.cond.i.i_crit_edge:            ; preds = %if.end69.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.cond.i.i

while.end.i.i:                                    ; preds = %while.cond.i.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @consume_skb(ptr noundef %skb) #5
  br label %nf_br_ip_fragment.exit.i

blackhole.i.i:                                    ; preds = %if.end69.i.i.blackhole.i.i_crit_edge, %while.body.i.i.blackhole.i.i_crit_edge, %cleanup.thread.i.i, %land.lhs.true.i.i.blackhole.i.i_crit_edge
  call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %nf_br_ip_fragment.exit.i

nf_br_ip_fragment.exit.i:                         ; preds = %blackhole.i.i, %while.end.i.i, %cleanup.thread16.i.i
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %state.i.i) #5
  br label %nf_ct_bridge_refrag.exit

sw.bb1.i:                                         ; preds = %nf_ct_bridge_frag_save.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %net2.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %121 = ptrtoint ptr %net2.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %net2.i, align 4
  %sk3.i = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 4
  %123 = ptrtoint ptr %sk3.i to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %sk3.i, align 4
  %call.i5.i = call i32 @br_ip6_fragment(ptr noundef %122, ptr noundef %124, ptr noundef %skb, ptr noundef nonnull %data.i, ptr noundef nonnull @nf_ct_bridge_refrag_post) #5
  br label %nf_ct_bridge_refrag.exit

land.end.i:                                       ; preds = %nf_ct_bridge_frag_save.exit.i
  %.b1.i = load i1, ptr @nf_ct_bridge_refrag.__already_done, align 1
  br i1 %.b1.i, label %land.end.i.nf_ct_bridge_refrag.exit_crit_edge, label %if.then11.i, !prof !26

land.end.i.nf_ct_bridge_refrag.exit_crit_edge:    ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %nf_ct_bridge_refrag.exit

if.then11.i:                                      ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #7
  store i1 true, ptr @nf_ct_bridge_refrag.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 326, i32 noundef 9, ptr noundef null) #5
  br label %nf_ct_bridge_refrag.exit

nf_ct_bridge_refrag.exit:                         ; preds = %if.then11.i, %land.end.i.nf_ct_bridge_refrag.exit_crit_edge, %sw.bb1.i, %nf_br_ip_fragment.exit.i, %if.end.nf_ct_bridge_refrag.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end.nf_ct_bridge_refrag.exit_crit_edge ], [ 0, %if.then11.i ], [ 0, %land.end.i.nf_ct_bridge_refrag.exit_crit_edge ], [ 2, %sw.bb1.i ], [ 2, %nf_br_ip_fragment.exit.i ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %data.i) #5
  br label %cleanup

cleanup:                                          ; preds = %nf_ct_bridge_refrag.exit, %nf_ct_bridge_confirm.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %retval.0.i, %nf_ct_bridge_refrag.exit ], [ %retval.1.i, %nf_ct_bridge_confirm.exit.cleanup_crit_edge ], [ %call4.i.i, %if.end.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_ct_br_defrag4(ptr noundef %skb, ptr nocapture noundef readonly %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %frag_off.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 4
  %4 = ptrtoint ptr %frag_off.i to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %frag_off.i, align 2
  %6 = and i16 %5, 16383
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %6)
  %cmp.i.not = icmp eq i16 %6, 0
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %7 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %8, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then3:                                         ; preds = %if.end
  %9 = inttoptr i32 %and1.i to ptr
  %and.i = and i32 %8, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 2
  %cond = zext i1 %cmp to i32
  %dir1.i.i = getelementptr inbounds %struct.nf_conn, ptr %9, i32 0, i32 3, i32 2
  %10 = ptrtoint ptr %dir1.i.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %dir1.i.i, align 1
  %conv.i.i23 = zext i8 %11 to i32
  %shl.i.i = shl nuw nsw i32 1, %cond
  %and.i.i = and i32 %shl.i.i, %conv.i.i23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then3.if.end6_crit_edge, label %cond.true.i

if.then3.if.end6_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

cond.true.i:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %zone.i = getelementptr inbounds %struct.nf_conn, ptr %9, i32 0, i32 3
  %12 = ptrtoint ptr %zone.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %zone.i, align 4
  %phi.cast31 = zext i16 %13 to i32
  %phi.bo32 = add nuw nsw i32 %phi.cast31, 131074
  br label %if.end6

if.end6:                                          ; preds = %cond.true.i, %if.then3.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %zone_id.0 = phi i32 [ 131074, %if.end.if.end6_crit_edge ], [ %phi.bo32, %cond.true.i ], [ 131074, %if.then3.if.end6_crit_edge ]
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %14 = ptrtoint ptr %cb1.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %cb.sroa.0.0.copyload = load ptr, ptr %cb1.i, align 8
  %cb.sroa.6.0.cb1.i.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %15 = ptrtoint ptr %cb.sroa.6.0.cb1.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %15)
  %cb.sroa.6.0.copyload = load i8, ptr %cb.sroa.6.0.cb1.i.sroa_idx, align 2
  %cb.sroa.7.0.cb1.i.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  %16 = ptrtoint ptr %cb.sroa.7.0.cb1.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %16)
  %cb.sroa.7.0.copyload = load i8, ptr %cb.sroa.7.0.cb1.i.sroa_idx, align 1
  %cb.sroa.8.0.cb1.i.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %cb.sroa.8.0.cb1.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %17)
  %cb.sroa.8.0.copyload = load i32, ptr %cb.sroa.8.0.cb1.i.sroa_idx, align 8
  %cb.sroa.9.0.cb1.i.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %18 = ptrtoint ptr %cb.sroa.9.0.cb1.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %18)
  %cb.sroa.9.0.copyload = load i32, ptr %cb.sroa.9.0.cb1.i.sroa_idx, align 4
  %19 = call ptr @memset(ptr %cb1.i, i32 0, i32 24)
  tail call fastcc void @local_bh_disable()
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %20 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %net, align 4
  %call7 = tail call i32 @ip_defrag(ptr noundef %21, ptr noundef %skb, i32 noundef %zone_id.0) #5
  tail call fastcc void @local_bh_enable()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool8.not = icmp eq i32 %call7, 0
  br i1 %tobool8.not, label %if.then9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then9:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %cb.sroa.5.0.cb1.i.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %frag_max_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 22
  %22 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %frag_max_size, align 2
  %24 = ptrtoint ptr %cb1.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %cb.sroa.0.0.copyload, ptr %cb1.i, align 8
  %25 = ptrtoint ptr %cb.sroa.6.0.cb1.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %cb.sroa.6.0.copyload, ptr %cb.sroa.6.0.cb1.i.sroa_idx, align 2
  %26 = ptrtoint ptr %cb.sroa.7.0.cb1.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %cb.sroa.7.0.copyload, ptr %cb.sroa.7.0.cb1.i.sroa_idx, align 1
  %27 = ptrtoint ptr %cb.sroa.8.0.cb1.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %cb.sroa.8.0.copyload, ptr %cb.sroa.8.0.cb1.i.sroa_idx, align 8
  %28 = ptrtoint ptr %cb.sroa.9.0.cb1.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %cb.sroa.9.0.copyload, ptr %cb.sroa.9.0.cb1.i.sroa_idx, align 4
  %29 = ptrtoint ptr %cb.sroa.5.0.cb1.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %23, ptr %cb.sroa.5.0.cb1.i.sroa_idx, align 4
  %ignore_df = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %30 = ptrtoint ptr %ignore_df to i32
  call void @__asan_load2_noabort(i32 %30)
  %bf.load = load i16, ptr %ignore_df, align 8
  %bf.set = or i16 %bf.load, 4096
  store i16 %bf.set, ptr %ignore_df, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.then9, %if.end6.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then9 ], [ 1, %entry.cleanup_crit_edge ], [ 2, %if.end6.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nf_ct_br_defrag6(ptr noundef %skb, ptr nocapture noundef readonly %state) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 5
  %0 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %_nfct.i.i, align 8
  %and1.i = and i32 %1, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool.not = icmp eq i32 %and1.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = inttoptr i32 %and1.i to ptr
  %and.i = and i32 %1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %and.i)
  %cmp = icmp ugt i32 %and.i, 2
  %cond = zext i1 %cmp to i32
  %dir1.i.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 3, i32 2
  %3 = ptrtoint ptr %dir1.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dir1.i.i, align 1
  %conv.i.i = zext i8 %4 to i32
  %shl.i.i = shl nuw nsw i32 1, %cond
  %and.i.i = and i32 %shl.i.i, %conv.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %if.then.if.end_crit_edge, label %cond.true.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

cond.true.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %zone.i = getelementptr inbounds %struct.nf_conn, ptr %2, i32 0, i32 3
  %5 = ptrtoint ptr %zone.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %zone.i, align 4
  %phi.cast29 = zext i16 %6 to i32
  %phi.bo30 = add nuw nsw i32 %phi.cast29, 131074
  br label %if.end

if.end:                                           ; preds = %cond.true.i, %if.then.if.end_crit_edge, %entry.if.end_crit_edge
  %zone_id.0 = phi i32 [ 131074, %entry.if.end_crit_edge ], [ %phi.bo30, %cond.true.i ], [ 131074, %if.then.if.end_crit_edge ]
  %cb1.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3
  %7 = ptrtoint ptr %cb1.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %cb.sroa.0.0.copyload = load ptr, ptr %cb1.i, align 8
  %cb.sroa.6.0.cb1.i.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 6
  %8 = ptrtoint ptr %cb.sroa.6.0.cb1.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %cb.sroa.6.0.copyload = load i8, ptr %cb.sroa.6.0.cb1.i.sroa_idx, align 2
  %cb.sroa.7.0.cb1.i.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %cb.sroa.7.0.cb1.i.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %9)
  %cb.sroa.7.0.copyload = load i8, ptr %cb.sroa.7.0.cb1.i.sroa_idx, align 1
  %cb.sroa.8.0.cb1.i.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %cb.sroa.8.0.cb1.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %10)
  %cb.sroa.8.0.copyload = load i32, ptr %cb.sroa.8.0.cb1.i.sroa_idx, align 8
  %cb.sroa.9.0.cb1.i.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 12
  %11 = ptrtoint ptr %cb.sroa.9.0.cb1.i.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %11)
  %cb.sroa.9.0.copyload = load i32, ptr %cb.sroa.9.0.cb1.i.sroa_idx, align 4
  %12 = call ptr @memset(ptr %cb1.i, i32 0, i32 24)
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %13 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %net, align 4
  %call3 = tail call i32 @nf_ct_frag6_gather(ptr noundef %14, ptr noundef %skb, i32 noundef %zone_id.0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call3)
  %cmp4 = icmp eq i32 %call3, -115
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %cb.sroa.5.0.cb1.i.sroa_idx = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 4
  %frag_max_size = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 3, i32 20
  %15 = ptrtoint ptr %frag_max_size to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %frag_max_size, align 4
  %17 = ptrtoint ptr %cb1.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %cb.sroa.0.0.copyload, ptr %cb1.i, align 8
  %18 = ptrtoint ptr %cb.sroa.6.0.cb1.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %cb.sroa.6.0.copyload, ptr %cb.sroa.6.0.cb1.i.sroa_idx, align 2
  %19 = ptrtoint ptr %cb.sroa.7.0.cb1.i.sroa_idx to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %cb.sroa.7.0.copyload, ptr %cb.sroa.7.0.cb1.i.sroa_idx, align 1
  %20 = ptrtoint ptr %cb.sroa.8.0.cb1.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %cb.sroa.8.0.copyload, ptr %cb.sroa.8.0.cb1.i.sroa_idx, align 8
  %21 = ptrtoint ptr %cb.sroa.9.0.cb1.i.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %cb.sroa.9.0.copyload, ptr %cb.sroa.9.0.cb1.i.sroa_idx, align 4
  %22 = ptrtoint ptr %cb.sroa.5.0.cb1.i.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %16, ptr %cb.sroa.5.0.cb1.i.sroa_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp9 = icmp eq i32 %call3, 0
  %cond11 = zext i1 %cmp9 to i32
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond11, %if.end7 ], [ 2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_conntrack_in(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_trim_rcsum_slow(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_disable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__local_bh_disable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_disable, %__here) to i32), i32 noundef 512) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_defrag(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @local_bh_enable() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @__local_bh_enable_ip(i32 noundef ptrtoint (ptr blockaddress(@local_bh_enable, %__here) to i32), i32 noundef 512) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_disable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__local_bh_enable_ip(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_frag6_gather(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nf_ct_bridge_refrag_post(ptr noundef %net, ptr noundef %sk, ptr nocapture noundef readonly %data, ptr noundef %skb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cloned.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 12
  %0 = ptrtoint ptr %cloned.i.i.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load.i.i.i = load i8, ptr %cloned.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i.i.i)
  %tobool.not.i.i.i = icmp sgt i8 %bf.load.i.i.i, -1
  br i1 %tobool.not.i.i.i, label %skb_header_cloned.exit.thread.i.i, label %skb_header_cloned.exit.i.i

skb_header_cloned.exit.i.i:                       ; preds = %entry
  %end.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 17
  %1 = ptrtoint ptr %end.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %end.i.i.i.i, align 4
  %dataref1.i.i.i = getelementptr inbounds %struct.skb_shared_info, ptr %2, i32 0, i32 10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %dataref1.i.i.i, i32 noundef 4) #5
  %3 = ptrtoint ptr %dataref1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile i32, ptr %dataref1.i.i.i, align 4
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %5 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %data.i.i.i.i, align 4
  %head.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i.i.i, align 8
  %sub.ptr.lhs.cast.i.i.i.i = ptrtoint ptr %6 to i32
  %sub.ptr.rhs.cast.i.i.i.i = ptrtoint ptr %8 to i32
  %sub.ptr.sub.i.i.i.i = sub i32 %sub.ptr.lhs.cast.i.i.i.i, %sub.ptr.rhs.cast.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i.i.i.i)
  %cmp.i1.i.i = icmp ult i32 %sub.ptr.sub.i.i.i.i, 14
  br i1 %cmp.i1.i.i, label %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge, label %if.end.i2.i.i

skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread.i.i.i

skb_header_cloned.exit.thread.i.i:                ; preds = %entry
  %data.i.i5.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %9 = ptrtoint ptr %data.i.i5.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data.i.i5.i.i, align 4
  %head.i.i6.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %11 = ptrtoint ptr %head.i.i6.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %head.i.i6.i.i, align 8
  %sub.ptr.lhs.cast.i.i7.i.i = ptrtoint ptr %10 to i32
  %sub.ptr.rhs.cast.i.i8.i.i = ptrtoint ptr %12 to i32
  %sub.ptr.sub.i.i9.i.i = sub i32 %sub.ptr.lhs.cast.i.i7.i.i, %sub.ptr.rhs.cast.i.i8.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %sub.ptr.sub.i.i9.i.i)
  %cmp.i110.i.i = icmp ult i32 %sub.ptr.sub.i.i9.i.i, 14
  br i1 %cmp.i110.i.i, label %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge, label %skb_header_cloned.exit.thread.i.i.if.end.i_crit_edge

skb_header_cloned.exit.thread.i.i.if.end.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge: ; preds = %skb_header_cloned.exit.thread.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.thread.i.i.i

if.end.thread.i.i.i:                              ; preds = %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge, %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge
  %sub.ptr.sub.i.i12.i.i = phi i32 [ %sub.ptr.sub.i.i9.i.i, %skb_header_cloned.exit.thread.i.i.if.end.thread.i.i.i_crit_edge ], [ %sub.ptr.sub.i.i.i.i, %skb_header_cloned.exit.i.i.if.end.thread.i.i.i_crit_edge ]
  %phi.bo.i.i.i = sub nuw nsw i32 141, %sub.ptr.sub.i.i12.i.i
  %phi.bo11.i.i.i = and i32 %phi.bo.i.i.i, -128
  br label %skb_cow_head.exit.i

if.end.i2.i.i:                                    ; preds = %skb_header_cloned.exit.i.i
  %and.i.i.i = and i32 %4, 65535
  %shr.i.i.i = ashr i32 %4, 16
  %sub.i.i.i = sub nsw i32 %and.i.i.i, %shr.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i.i.i)
  %cmp.i.not.i.i = icmp eq i32 %sub.i.i.i, 1
  br i1 %cmp.i.not.i.i, label %if.end.i2.i.i.if.end.i_crit_edge, label %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge

if.end.i2.i.i.skb_cow_head.exit.i_crit_edge:      ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %skb_cow_head.exit.i

if.end.i2.i.i.if.end.i_crit_edge:                 ; preds = %if.end.i2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

skb_cow_head.exit.i:                              ; preds = %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge, %if.end.thread.i.i.i
  %delta.010.i.i.i = phi i32 [ %phi.bo11.i.i.i, %if.end.thread.i.i.i ], [ 0, %if.end.i2.i.i.skb_cow_head.exit.i_crit_edge ]
  %call4.i.i.i = tail call i32 @pskb_expand_head(ptr noundef %skb, i32 noundef %delta.010.i.i.i, i32 noundef 0, i32 noundef 2592) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i.i.i)
  %tobool.not.i = icmp eq i32 %call4.i.i.i, 0
  br i1 %tobool.not.i, label %skb_cow_head.exit.i.if.end.i_crit_edge, label %nf_ct_bridge_frag_restore.exit.thread

skb_cow_head.exit.i.if.end.i_crit_edge:           ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

nf_ct_bridge_frag_restore.exit.thread:            ; preds = %skb_cow_head.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @kfree_skb_reason(ptr noundef %skb, i32 noundef 0) #5
  br label %cleanup

if.end.i:                                         ; preds = %skb_cow_head.exit.i.if.end.i_crit_edge, %if.end.i2.i.i.if.end.i_crit_edge, %skb_header_cloned.exit.thread.i.i.if.end.i_crit_edge
  %vlan_present.i = getelementptr inbounds %struct.nf_bridge_frag_data, ptr %data, i32 0, i32 1
  %13 = ptrtoint ptr %vlan_present.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %vlan_present.i, align 2, !range !28
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool1.not.i = icmp eq i8 %14, 0
  br i1 %tobool1.not.i, label %if.else.i, label %if.then2.i

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %vlan_proto.i = getelementptr inbounds %struct.nf_bridge_frag_data, ptr %data, i32 0, i32 3
  %15 = ptrtoint ptr %vlan_proto.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %vlan_proto.i, align 2
  %vlan_tci.i = getelementptr inbounds %struct.nf_bridge_frag_data, ptr %data, i32 0, i32 2
  %17 = ptrtoint ptr %vlan_tci.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vlan_tci.i, align 2
  %vlan_proto1.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 9
  %19 = ptrtoint ptr %vlan_proto1.i.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %16, ptr %vlan_proto1.i.i, align 8
  %vlan_tci2.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 10
  %20 = ptrtoint ptr %vlan_tci2.i.i to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %18, ptr %vlan_tci2.i.i, align 2
  %vlan_present.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %21 = ptrtoint ptr %vlan_present.i.i to i32
  call void @__asan_loadN_noabort(i32 %21, i32 4)
  %bf.load.i.i = load i32, ptr %vlan_present.i.i, align 2
  %bf.set.i.i = or i32 %bf.load.i.i, -2147483648
  store i32 %bf.set.i.i, ptr %vlan_present.i.i, align 2
  br label %if.end

if.else.i:                                        ; preds = %if.end.i
  %vlan_present3.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 3
  %22 = ptrtoint ptr %vlan_present3.i to i32
  call void @__asan_loadN_noabort(i32 %22, i32 4)
  %bf.load.i = load i32, ptr %vlan_present3.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load.i)
  %tobool4.not.i = icmp sgt i32 %bf.load.i, -1
  br i1 %tobool4.not.i, label %if.else.i.if.end_crit_edge, label %if.then5.i

if.else.i.if.end_crit_edge:                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #7
  %bf.clear.i.i = and i32 %bf.load.i, 2147483647
  %23 = ptrtoint ptr %vlan_present3.i to i32
  call void @__asan_storeN_noabort(i32 %23, i32 4)
  store i32 %bf.clear.i.i, ptr %vlan_present3.i, align 2
  br label %if.end

if.end:                                           ; preds = %if.then5.i, %if.else.i.if.end_crit_edge, %if.then2.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %24 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 -14
  %26 = call ptr @memcpy(ptr %add.ptr.i.i, ptr %data, i32 14)
  %27 = load ptr, ptr %data.i.i, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %28 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %head.i.i, align 8
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %27 to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %29 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %conv.i.i = trunc i32 %sub.ptr.sub.i.i to i16
  %mac_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 21
  %30 = ptrtoint ptr %mac_header.i.i to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %conv.i.i, ptr %mac_header.i.i, align 2
  %call1 = tail call i32 @br_dev_queue_push_xmit(ptr noundef %net, ptr noundef %sk, ptr noundef %skb) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %nf_ct_bridge_frag_restore.exit.thread
  %retval.0 = phi i32 [ %call1, %if.end ], [ -12, %nf_ct_bridge_frag_restore.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_skip_exthdr(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_confirm(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__nf_conntrack_confirm(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_deliver_cached_events(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum_help(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_fraglist_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_fraglist_prepare(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_list(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_frag_init(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ip_frag_next(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @consume_skb(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_skb_reason(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_ip6_fragment(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @br_dev_queue_push_xmit(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pskb_expand_head(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_bridge_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @__initcall__kmod_nf_conntrack_bridge__764_443_nf_conntrack_l3proto_bridge_init6, !1, !"__initcall__kmod_nf_conntrack_bridge__764_443_nf_conntrack_l3proto_bridge_init6", i1 false, i1 false}
!1 = !{!"../net/bridge/netfilter/nf_conntrack_bridge.c", i32 443, i32 1}
!2 = !{ptr @__exitcall_nf_conntrack_l3proto_bridge_fini, !3, !"__exitcall_nf_conntrack_l3proto_bridge_fini", i1 false, i1 false}
!3 = !{!"../net/bridge/netfilter/nf_conntrack_bridge.c", i32 444, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias765, !5, !"__UNIQUE_ID_alias765", i1 false, i1 false}
!5 = !{!"../net/bridge/netfilter/nf_conntrack_bridge.c", i32 446, i32 1}
!6 = !{ptr @__UNIQUE_ID_file766, !7, !"__UNIQUE_ID_file766", i1 false, i1 false}
!7 = !{!"../net/bridge/netfilter/nf_conntrack_bridge.c", i32 447, i32 1}
!8 = !{ptr @__UNIQUE_ID_license767, !7, !"__UNIQUE_ID_license767", i1 false, i1 false}
!9 = !{ptr @bridge_info, !10, !"bridge_info", i1 false, i1 false}
!10 = !{!"../net/bridge/netfilter/nf_conntrack_bridge.c", i32 425, i32 33}
!11 = !{ptr @nf_ct_bridge_hook_ops, !12, !"nf_ct_bridge_hook_ops", i1 false, i1 false}
!12 = !{!"../net/bridge/netfilter/nf_conntrack_bridge.c", i32 410, i32 27}
!13 = distinct !{null, !14, !"__already_done", i1 false, i1 false}
!14 = !{!"../net/bridge/netfilter/nf_conntrack_bridge.c", i32 326, i32 3}
!15 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!25 = !{!"branch_weights", i32 1, i32 2000}
!26 = !{!"branch_weights", i32 2000, i32 1}
!27 = !{!"auto-init"}
!28 = !{i8 0, i8 2}
