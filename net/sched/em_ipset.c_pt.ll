; ModuleID = '/llk/IR_all_yes/net/sched/em_ipset.c_pt.bc'
source_filename = "../net/sched/em_ipset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.tcf_ematch_ops = type { i32, i32, ptr, ptr, ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.tcf_ematch = type { ptr, i32, i32, i16, i16, ptr }
%struct.vlan_hdr = type { i16, i16 }
%struct.ip_set_adt_opt = type { i8, i8, i8, i32, %struct.ip_set_ext }
%struct.ip_set_ext = type { %struct.ip_set_skbinfo, i64, i64, ptr, i32, i8, i8, i8 }
%struct.ip_set_skbinfo = type { i32, i32, i32, i16, i16 }
%struct.xt_action_param = type { %union.anon.152, %union.anon.153, ptr, i32, i16, i8 }
%union.anon.152 = type { ptr }
%union.anon.153 = type { ptr }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.sk_buff = type { %union.anon.82, %union.anon.113, %union.anon.114, [48 x i8], %union.anon.115, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.117, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.82 = type { %struct.anon.83 }
%struct.anon.83 = type { ptr, ptr, %union.anon.84 }
%union.anon.84 = type { ptr }
%union.anon.113 = type { ptr }
%union.anon.114 = type { i64 }
%union.anon.115 = type { %struct.anon.116 }
%struct.anon.116 = type { i32, ptr }
%union.anon.117 = type { %struct.anon.118 }
%struct.anon.118 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.119, i32, i32, i32, i16, i16, %union.anon.121, i32, %union.anon.122, %union.anon.123, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.119 = type { i32 }
%union.anon.121 = type { i32 }
%union.anon.122 = type { i32 }
%union.anon.123 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.xt_set_info = type { i16, i8, i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@em_ipset_ops = internal global { %struct.tcf_ematch_ops, [60 x i8] } { %struct.tcf_ematch_ops { i32 8, i32 0, ptr @em_ipset_change, ptr @em_ipset_match, ptr @em_ipset_destroy, ptr null, ptr null, %struct.list_head { ptr getelementptr (i8, ptr @em_ipset_ops, i64 28), ptr getelementptr (i8, ptr @em_ipset_ops, i64 28) } }, [60 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file536 = internal constant [33 x i8] c"em_ipset.file=net/sched/em_ipset\00", section ".modinfo", align 1
@__UNIQUE_ID_license537 = internal constant [21 x i8] c"em_ipset.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author538 = internal constant [48 x i8] c"em_ipset.author=Florian Westphal <fw@strlen.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description539 = internal constant [51 x i8] c"em_ipset.description=TC extended match for IP sets\00", section ".modinfo", align 1
@__initcall__kmod_em_ipset__540_131_init_em_ipset6 = internal global ptr @init_em_ipset, section ".initcall6.init", align 4
@__exitcall_exit_em_ipset = internal global ptr @exit_em_ipset, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias541 = internal constant [29 x i8] c"em_ipset.alias=ematch-kind-8\00", section ".modinfo", align 1
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"include/linux/if_vlan.h\00", [40 x i8] zeroinitializer }, align 32
@rcu_lock_map = external dso_local global %struct.lockdep_map, align 4
@rcu_read_lock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"include/linux/rcupdate.h\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"rcu_read_lock() used illegally while idle\00", [54 x i8] zeroinitializer }, align 32
@rcu_read_unlock.__warned = internal unnamed_addr global i1 false, section ".data.unlikely", align 1
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"rcu_read_unlock() used illegally while idle\00", [52 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@___asan_gen_.6 = private unnamed_addr constant [13 x i8] c"em_ipset_ops\00", align 1
@___asan_gen_.7 = private constant [24 x i8] c"../net/sched/em_ipset.c\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.7, i32 108, i32 30 }
@___asan_gen_.10 = private unnamed_addr constant [27 x i8] c"../include/linux/if_vlan.h\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.10, i32 598, i32 8 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 695, i32 2 }
@___asan_gen_.18 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.19 = private unnamed_addr constant [28 x i8] c"../include/linux/rcupdate.h\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.19, i32 723, i32 2 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @__UNIQUE_ID_alias541, ptr @__UNIQUE_ID_author538, ptr @__UNIQUE_ID_description539, ptr @__UNIQUE_ID_file536, ptr @__UNIQUE_ID_license537, ptr @__exitcall_exit_em_ipset, ptr @__initcall__kmod_em_ipset__540_131_init_em_ipset6, ptr @exit_em_ipset, ptr @em_ipset_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @em_ipset_ops to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_em_ipset() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tcf_em_unregister(ptr noundef nonnull @em_ipset_ops) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tcf_em_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_em_ipset() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @tcf_em_register(ptr noundef nonnull @em_ipset_ops) #6
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_ipset_change(ptr noundef %net, ptr noundef %data, i32 noundef %data_len, ptr nocapture noundef writeonly %em) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %data_len)
  %cmp.not = icmp eq i32 %data_len, 4
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data, align 2
  %call = tail call zeroext i16 @ip_set_nfnl_get_byindex(ptr noundef %net, i16 noundef zeroext %1) #6
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %call)
  %cmp2 = icmp eq i16 %call, -1
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %datalen = getelementptr inbounds %struct.tcf_ematch, ptr %em, i32 0, i32 2
  %2 = ptrtoint ptr %datalen to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %datalen, align 4
  %call7 = tail call ptr @kmemdup(ptr noundef %data, i32 noundef 4, i32 noundef 3264) #6
  %3 = ptrtoint ptr %call7 to i32
  %data8 = getelementptr inbounds %struct.tcf_ematch, ptr %em, i32 0, i32 1
  %4 = ptrtoint ptr %data8 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %data8, align 4
  %tobool.not = icmp eq ptr %call7, null
  br i1 %tobool.not, label %if.end11, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @ip_set_nfnl_put(ptr noundef %net, i16 noundef zeroext %call) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end11 ], [ -22, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @em_ipset_match(ptr noundef %skb, ptr nocapture noundef readonly %em, ptr nocapture noundef readnone %info) #2 align 64 {
entry:
  %vhdr.i.i.i = alloca %struct.vlan_hdr, align 2
  %opt = alloca %struct.ip_set_adt_opt, align 8
  %acpar = alloca %struct.xt_action_param, align 4
  %state = alloca %struct.nf_hook_state, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %opt) #6
  %0 = call ptr @memset(ptr %opt, i32 255, i32 56)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %acpar) #6
  %1 = call ptr @memset(ptr %acpar, i32 255, i32 20)
  %data = getelementptr inbounds %struct.tcf_ematch, ptr %em, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data, align 4
  %4 = inttoptr i32 %3 to ptr
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %state) #6
  %5 = call ptr @memset(ptr %state, i32 0, i32 24)
  %net = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 5
  %net1 = getelementptr inbounds %struct.tcf_ematch, ptr %em, i32 0, i32 5
  %6 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %net1, align 4
  %8 = ptrtoint ptr %net to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %net, align 4
  %protocol.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 18
  %9 = ptrtoint ptr %protocol.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %protocol.i.i, align 8
  %mac_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 8
  %11 = ptrtoint ptr %mac_len.i.i.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %mac_len.i.i.i, align 4
  %conv.i.i.i = zext i16 %12 to i32
  %13 = zext i16 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values)
  switch i16 %10, label %entry.skb_protocol.exit_crit_edge [
    i16 -30552, label %entry.if.then.i.i.i_crit_edge
    i16 -32512, label %entry.if.then.i.i.i_crit_edge101
  ]

entry.if.then.i.i.i_crit_edge101:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

entry.if.then.i.i.i_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then.i.i.i

entry.skb_protocol.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_protocol.exit

if.then.i.i.i:                                    ; preds = %entry.if.then.i.i.i_crit_edge, %entry.if.then.i.i.i_crit_edge101
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %12)
  %tobool.not.i.i.i = icmp eq i16 %12, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i.if.end26.i.i.i_crit_edge, label %if.then1.i.i.i

if.then.i.i.i.if.end26.i.i.i_crit_edge:           ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end26.i.i.i

if.then1.i.i.i:                                   ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 4, i16 %12)
  %cmp.i.i.i = icmp ult i16 %12, 4
  br i1 %cmp.i.i.i, label %do.end.i.i.i, label %if.end25.i.i.i, !prof !34

do.end.i.i.i:                                     ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 598, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end25.i.i.i:                                   ; preds = %if.then1.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %sub.i.i.i = add nsw i32 %conv.i.i.i, -4
  br label %if.end26.i.i.i

if.end26.i.i.i:                                   ; preds = %if.end25.i.i.i, %if.then.i.i.i.if.end26.i.i.i_crit_edge
  %vlan_depth.0.i.i.i = phi i32 [ %sub.i.i.i, %if.end25.i.i.i ], [ 14, %if.then.i.i.i.if.end26.i.i.i_crit_edge ]
  %14 = getelementptr inbounds %struct.vlan_hdr, ptr %vhdr.i.i.i, i32 0, i32 1
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i.i.i.i = icmp eq ptr %skb, null
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %do.body27.i.i.i

do.body27.i.i.i:                                  ; preds = %do.body27.backedge.i.i.i, %if.end26.i.i.i
  %vlan_depth.1.i.i.i = phi i32 [ %vlan_depth.0.i.i.i, %if.end26.i.i.i ], [ %add.i.i.i50, %do.body27.backedge.i.i.i ]
  %parse_depth.0.i.i.i = phi i32 [ 8, %if.end26.i.i.i ], [ %dec.i.i.i, %do.body27.backedge.i.i.i ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %vhdr.i.i.i) #6
  %15 = ptrtoint ptr %vhdr.i.i.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 -1, ptr %vhdr.i.i.i, align 2, !annotation !35
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 -1, ptr %14, align 2, !annotation !35
  %17 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %len.i.i.i.i.i, align 4
  %19 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %21 = add i32 %vlan_depth.1.i.i.i, %20
  %sub.i1.i.i.i.i = sub i32 %18, %21
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %sub.i1.i.i.i.i)
  %cmp.i.i.i.i.i = icmp sgt i32 %sub.i1.i.i.i.i, 3
  br i1 %cmp.i.i.i.i.i, label %if.then.i.i.i.i.i, label %if.end.i.i.i.i.i, !prof !36

if.then.i.i.i.i.i:                                ; preds = %do.body27.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %23, i32 %vlan_depth.1.i.i.i
  br label %skb_header_pointer.exit.i.i.i

if.end.i.i.i.i.i:                                 ; preds = %do.body27.i.i.i
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge:  ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %vlan_depth.1.i.i.i, ptr noundef nonnull %vhdr.i.i.i, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  %spec.select.i.i.i.i.i = select i1 %cmp3.i.i.i.i.i, ptr null, ptr %vhdr.i.i.i, !prof !34
  br label %skb_header_pointer.exit.i.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %lor.lhs.false.i.i.i.i.i, %if.then.i.i.i.i.i
  %retval.0.i.i.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %if.then.i.i.i.i.i ], [ %spec.select.i.i.i.i.i, %lor.lhs.false.i.i.i.i.i ]
  %tobool29.not.i.i.i = icmp eq ptr %retval.0.i.i.i.i.i, null
  %dec.i.i.i = add nsw i32 %parse_depth.0.i.i.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i.i.i)
  %tobool30.not.i.i.i = icmp eq i32 %dec.i.i.i, 0
  %24 = select i1 %tobool29.not.i.i.i, i1 true, i1 %tobool30.not.i.i.i, !prof !34
  br i1 %24, label %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, label %do.cond42.i.i.i, !prof !34

skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread.i.i.i

cleanup.thread.i.i.i:                             ; preds = %skb_header_pointer.exit.i.i.i.cleanup.thread.i.i.i_crit_edge, %if.end.i.i.i.i.i.cleanup.thread.i.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #6
  br label %cleanup

do.cond42.i.i.i:                                  ; preds = %skb_header_pointer.exit.i.i.i
  %h_vlan_encapsulated_proto.i.i.i = getelementptr inbounds %struct.vlan_hdr, ptr %retval.0.i.i.i.i.i, i32 0, i32 1
  %25 = ptrtoint ptr %h_vlan_encapsulated_proto.i.i.i to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %h_vlan_encapsulated_proto.i.i.i, align 2
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %vhdr.i.i.i) #6
  %27 = zext i16 %26 to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.4)
  switch i16 %26, label %do.cond42.i.i.i.skb_protocol.exit_crit_edge [
    i16 -30552, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge
    i16 -32512, label %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge102
  ]

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge102: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge: ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body27.backedge.i.i.i

do.cond42.i.i.i.skb_protocol.exit_crit_edge:      ; preds = %do.cond42.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %skb_protocol.exit

do.body27.backedge.i.i.i:                         ; preds = %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge, %do.cond42.i.i.i.do.body27.backedge.i.i.i_crit_edge102
  %add.i.i.i50 = add nsw i32 %vlan_depth.1.i.i.i, 4
  br label %do.body27.i.i.i

skb_protocol.exit:                                ; preds = %do.cond42.i.i.i.skb_protocol.exit_crit_edge, %entry.skb_protocol.exit_crit_edge
  %retval.2.i.i.i = phi i16 [ %10, %entry.skb_protocol.exit_crit_edge ], [ %26, %do.cond42.i.i.i.skb_protocol.exit_crit_edge ]
  %28 = zext i16 %retval.2.i.i.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.5)
  switch i16 %retval.2.i.i.i, label %skb_protocol.exit.cleanup_crit_edge [
    i16 2048, label %sw.bb
    i16 -31011, label %sw.bb4
  ]

skb_protocol.exit.cleanup_crit_edge:              ; preds = %skb_protocol.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %skb_protocol.exit
  %pf = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %29 = ptrtoint ptr %pf to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 2, ptr %pf, align 1
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %30 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %32 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i51 = zext i16 %33 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %31, i32 %conv.i.i.i51
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %34 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %data.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %35 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  %add.i = add i32 %sub.ptr.sub.i.i, 20
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %36 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %38 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i52 = sub i32 %37, %39
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %sub.i.i.i52)
  %cmp.not.i.i = icmp ugt i32 %add.i, %sub.i.i.i52
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb.if.end_crit_edge, !prof !34

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.end.i.i:                                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_cmp4(i32 %37, i32 %add.i)
  %cmp3.i.i = icmp ult i32 %37, %add.i
  br i1 %cmp3.i.i, label %if.end.i.i.cleanup_crit_edge, label %pskb_network_may_pull.exit, !prof !34

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pskb_network_may_pull.exit:                       ; preds = %if.end.i.i
  %sub.i.i = sub i32 %add.i, %sub.i.i.i52
  %call13.i.i = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #6
  %cmp14.i.i.not = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.i.not, label %pskb_network_may_pull.exit.cleanup_crit_edge, label %pskb_network_may_pull.exit.if.end_crit_edge

pskb_network_may_pull.exit.if.end_crit_edge:      ; preds = %pskb_network_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

pskb_network_may_pull.exit.cleanup_crit_edge:     ; preds = %pskb_network_may_pull.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %pskb_network_may_pull.exit.if.end_crit_edge, %sw.bb.if.end_crit_edge
  %40 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %head.i.i.i, align 8
  %42 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i55 = zext i16 %43 to i32
  %add.ptr.i.i.i56 = getelementptr i8, ptr %41, i32 %conv.i.i.i55
  %44 = ptrtoint ptr %add.ptr.i.i.i56 to i32
  call void @__asan_load1_noabort(i32 %44)
  %bf.load.i = load i8, ptr %add.ptr.i.i.i56, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %45 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %45 to i32
  br label %sw.epilog

sw.bb4:                                           ; preds = %skb_protocol.exit
  %pf5 = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %46 = ptrtoint ptr %pf5 to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 10, ptr %pf5, align 1
  %head.i.i.i57 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %47 = ptrtoint ptr %head.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %head.i.i.i57, align 8
  %network_header.i.i.i58 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %49 = ptrtoint ptr %network_header.i.i.i58 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %network_header.i.i.i58, align 4
  %conv.i.i.i59 = zext i16 %50 to i32
  %add.ptr.i.i.i60 = getelementptr i8, ptr %48, i32 %conv.i.i.i59
  %data.i.i61 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %51 = ptrtoint ptr %data.i.i61 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %data.i.i61, align 4
  %sub.ptr.lhs.cast.i.i62 = ptrtoint ptr %add.ptr.i.i.i60 to i32
  %sub.ptr.rhs.cast.i.i63 = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i.i64 = sub i32 %sub.ptr.lhs.cast.i.i62, %sub.ptr.rhs.cast.i.i63
  %add.i65 = add i32 %sub.ptr.sub.i.i64, 40
  %len.i.i.i66 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %53 = ptrtoint ptr %len.i.i.i66 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %len.i.i.i66, align 4
  %data_len.i.i.i67 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %55 = ptrtoint ptr %data_len.i.i.i67 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %data_len.i.i.i67, align 8
  %sub.i.i.i68 = sub i32 %54, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i65, i32 %sub.i.i.i68)
  %cmp.not.i.i69 = icmp ugt i32 %add.i65, %sub.i.i.i68
  br i1 %cmp.not.i.i69, label %if.end.i.i71, label %sw.bb4.sw.epilog_crit_edge, !prof !34

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.end.i.i71:                                     ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %add.i65)
  %cmp3.i.i70 = icmp ult i32 %54, %add.i65
  br i1 %cmp3.i.i70, label %if.end.i.i71.cleanup_crit_edge, label %pskb_network_may_pull.exit78, !prof !34

if.end.i.i71.cleanup_crit_edge:                   ; preds = %if.end.i.i71
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

pskb_network_may_pull.exit78:                     ; preds = %if.end.i.i71
  %sub.i.i72 = sub i32 %add.i65, %sub.i.i.i68
  %call13.i.i73 = call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i72) #6
  %cmp14.i.i74.not = icmp eq ptr %call13.i.i73, null
  br i1 %cmp14.i.i74.not, label %pskb_network_may_pull.exit78.cleanup_crit_edge, label %pskb_network_may_pull.exit78.sw.epilog_crit_edge

pskb_network_may_pull.exit78.sw.epilog_crit_edge: ; preds = %pskb_network_may_pull.exit78
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

pskb_network_may_pull.exit78.cleanup_crit_edge:   ; preds = %pskb_network_may_pull.exit78
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %pskb_network_may_pull.exit78.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %if.end
  %.sink = phi i32 [ %mul.i, %if.end ], [ 40, %sw.bb4.sw.epilog_crit_edge ], [ 40, %pskb_network_may_pull.exit78.sw.epilog_crit_edge ]
  %thoff10 = getelementptr inbounds %struct.xt_action_param, ptr %acpar, i32 0, i32 3
  %57 = ptrtoint ptr %thoff10 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %.sink, ptr %thoff10, align 4
  %pf11 = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 1
  %58 = ptrtoint ptr %pf11 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %pf11, align 1
  %60 = ptrtoint ptr %opt to i32
  call void @__asan_store1_noabort(i32 %60)
  store i8 %59, ptr %opt, align 8
  %dim = getelementptr inbounds %struct.xt_set_info, ptr %4, i32 0, i32 1
  %61 = ptrtoint ptr %dim to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %dim, align 2
  %dim12 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 1
  %63 = ptrtoint ptr %dim12 to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 %62, ptr %dim12, align 1
  %flags = getelementptr inbounds %struct.xt_set_info, ptr %4, i32 0, i32 2
  %64 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %flags, align 1
  %flags13 = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 2
  %66 = ptrtoint ptr %flags13 to i32
  call void @__asan_store1_noabort(i32 %66)
  store i8 %65, ptr %flags13, align 2
  %cmdflags = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 3
  %67 = ptrtoint ptr %cmdflags to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %cmdflags, align 4
  %timeout = getelementptr inbounds %struct.ip_set_adt_opt, ptr %opt, i32 0, i32 4, i32 4
  %68 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -1, ptr %timeout, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %69 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %71 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %72 to i32
  %add.ptr.i.i = getelementptr i8, ptr %70, i32 %conv.i.i
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %73 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %data.i, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %74 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %call15 = call ptr @skb_pull(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #6
  %75 = getelementptr inbounds %struct.anon.83, ptr %skb, i32 0, i32 2
  %76 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %75, align 8
  %78 = call i32 @llvm.read_register.i32(metadata !24) #6
  %and.i.i.i.i.i = and i32 %78, -16384
  %79 = inttoptr i32 %and.i.i.i.i.i to ptr
  %preempt_count.i.i.i.i = getelementptr inbounds %struct.thread_info, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %preempt_count.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load volatile i32, ptr %preempt_count.i.i.i.i, align 4
  %add.i.i.i = add i32 %81, 1
  store volatile i32 %add.i.i.i, ptr %preempt_count.i.i.i.i, align 4
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !37
  call fastcc void @rcu_lock_acquire(ptr noundef nonnull @rcu_lock_map) #6
  %call.i = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i, label %sw.epilog.rcu_read_lock.exit_crit_edge, label %land.lhs.true.i

sw.epilog.rcu_read_lock.exit_crit_edge:           ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true.i:                                  ; preds = %sw.epilog
  %call1.i = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %land.lhs.true.i.rcu_read_lock.exit_crit_edge, label %land.lhs.true2.i

land.lhs.true.i.rcu_read_lock.exit_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

land.lhs.true2.i:                                 ; preds = %land.lhs.true.i
  %.b4.i = load i1, ptr @rcu_read_lock.__warned, align 1
  br i1 %.b4.i, label %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, label %if.then.i

land.lhs.true2.i.rcu_read_lock.exit_crit_edge:    ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_lock.exit

if.then.i:                                        ; preds = %land.lhs.true2.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_lock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 696, ptr noundef nonnull @.str.2) #6
  br label %rcu_read_lock.exit

rcu_read_lock.exit:                               ; preds = %if.then.i, %land.lhs.true2.i.rcu_read_lock.exit_crit_edge, %land.lhs.true.i.rcu_read_lock.exit_crit_edge, %sw.epilog.rcu_read_lock.exit_crit_edge
  %skb_iif = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 7
  %82 = ptrtoint ptr %skb_iif to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %skb_iif, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %83)
  %tobool16.not = icmp eq i32 %83, 0
  br i1 %tobool16.not, label %rcu_read_lock.exit.if.end21_crit_edge, label %if.then17

rcu_read_lock.exit.if.end21_crit_edge:            ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.then17:                                        ; preds = %rcu_read_lock.exit
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %net1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %net1, align 4
  %call20 = call ptr @dev_get_by_index_rcu(ptr noundef %85, i32 noundef %83) #6
  br label %if.end21

if.end21:                                         ; preds = %if.then17, %rcu_read_lock.exit.if.end21_crit_edge
  %indev.0 = phi ptr [ %call20, %if.then17 ], [ null, %rcu_read_lock.exit.if.end21_crit_edge ]
  %tobool22.not = icmp eq ptr %indev.0, null
  %.indev.0 = select i1 %tobool22.not, ptr %77, ptr %indev.0
  %in = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 2
  %86 = ptrtoint ptr %in to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %.indev.0, ptr %in, align 4
  %out = getelementptr inbounds %struct.nf_hook_state, ptr %state, i32 0, i32 3
  %87 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %77, ptr %out, align 4
  %state23 = getelementptr inbounds %struct.xt_action_param, ptr %acpar, i32 0, i32 2
  %88 = ptrtoint ptr %state23 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %state, ptr %state23, align 4
  %89 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %4, align 2
  %call24 = call i32 @ip_set_test(i16 noundef zeroext %90, ptr noundef %skb, ptr noundef nonnull %acpar, ptr noundef nonnull %opt) #6
  %call.i79 = call zeroext i1 @rcu_is_watching() #6
  br i1 %call.i79, label %if.end21.rcu_read_unlock.exit_crit_edge, label %land.lhs.true.i82

if.end21.rcu_read_unlock.exit_crit_edge:          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true.i82:                                ; preds = %if.end21
  %call1.i80 = call i32 @debug_lockdep_rcu_enabled() #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i80)
  %tobool.not.i81 = icmp eq i32 %call1.i80, 0
  br i1 %tobool.not.i81, label %land.lhs.true.i82.rcu_read_unlock.exit_crit_edge, label %land.lhs.true2.i84

land.lhs.true.i82.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true.i82
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

land.lhs.true2.i84:                               ; preds = %land.lhs.true.i82
  %.b4.i83 = load i1, ptr @rcu_read_unlock.__warned, align 1
  br i1 %.b4.i83, label %land.lhs.true2.i84.rcu_read_unlock.exit_crit_edge, label %if.then.i85

land.lhs.true2.i84.rcu_read_unlock.exit_crit_edge: ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #8
  br label %rcu_read_unlock.exit

if.then.i85:                                      ; preds = %land.lhs.true2.i84
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @rcu_read_unlock.__warned, align 1
  call void @lockdep_rcu_suspicious(ptr noundef nonnull @.str.1, i32 noundef 724, ptr noundef nonnull @.str.3) #6
  br label %rcu_read_unlock.exit

rcu_read_unlock.exit:                             ; preds = %if.then.i85, %land.lhs.true2.i84.rcu_read_unlock.exit_crit_edge, %land.lhs.true.i82.rcu_read_unlock.exit_crit_edge, %if.end21.rcu_read_unlock.exit_crit_edge
  call void asm sideeffect "", "~{memory}"() #6, !srcloc !38
  %91 = call i32 @llvm.read_register.i32(metadata !24) #6
  %and.i.i.i.i.i86 = and i32 %91, -16384
  %92 = inttoptr i32 %and.i.i.i.i.i86 to ptr
  %preempt_count.i.i.i.i87 = getelementptr inbounds %struct.thread_info, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %preempt_count.i.i.i.i87 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load volatile i32, ptr %preempt_count.i.i.i.i87, align 4
  %sub.i.i.i88 = add i32 %94, -1
  store volatile i32 %sub.i.i.i88, ptr %preempt_count.i.i.i.i87, align 4
  call void @rcu_read_unlock_strict() #6
  call fastcc void @rcu_lock_release(ptr noundef nonnull @rcu_lock_map) #6
  %call25 = call ptr @skb_push(ptr noundef %skb, i32 noundef %sub.ptr.sub.i) #6
  br label %cleanup

cleanup:                                          ; preds = %rcu_read_unlock.exit, %pskb_network_may_pull.exit78.cleanup_crit_edge, %if.end.i.i71.cleanup_crit_edge, %pskb_network_may_pull.exit.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %skb_protocol.exit.cleanup_crit_edge, %cleanup.thread.i.i.i, %do.end.i.i.i
  %retval.0 = phi i32 [ %call24, %rcu_read_unlock.exit ], [ 0, %pskb_network_may_pull.exit.cleanup_crit_edge ], [ 0, %pskb_network_may_pull.exit78.cleanup_crit_edge ], [ 0, %skb_protocol.exit.cleanup_crit_edge ], [ 0, %do.end.i.i.i ], [ 0, %cleanup.thread.i.i.i ], [ 0, %if.end.i.i.cleanup_crit_edge ], [ 0, %if.end.i.i71.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %state) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %acpar) #6
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %opt) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @em_ipset_destroy(ptr nocapture noundef readonly %em) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.tcf_ematch, ptr %em, i32 0, i32 1
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %2 = inttoptr i32 %1 to ptr
  %net = getelementptr inbounds %struct.tcf_ematch, ptr %em, i32 0, i32 5
  %3 = ptrtoint ptr %net to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %net, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %2, align 2
  tail call void @ip_set_nfnl_put(ptr noundef %4, i16 noundef zeroext %6) #6
  %7 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data, align 4
  %9 = inttoptr i32 %8 to ptr
  tail call void @kfree(ptr noundef %9) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @ip_set_nfnl_get_byindex(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @ip_set_nfnl_put(ptr noundef, i16 noundef zeroext) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_pull(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_get_by_index_rcu(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ip_set_test(i16 noundef zeroext, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @skb_push(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_acquire(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_acquire(ptr noundef nonnull @rcu_lock_map, i32 noundef 0, i32 noundef 0, i32 noundef 2, i32 noundef 0, ptr noundef null, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_acquire, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @rcu_is_watching() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @debug_lockdep_rcu_enabled() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_rcu_suspicious(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_acquire(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcu_lock_release(ptr nocapture noundef readnone %map) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  br label %__here

__here:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @lock_release(ptr noundef nonnull @rcu_lock_map, i32 noundef ptrtoint (ptr blockaddress(@rcu_lock_release, %__here) to i32)) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @rcu_read_unlock_strict() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lock_release(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tcf_em_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind readonly }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !20, !21, !23}
!llvm.named.register.sp = !{!24}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__UNIQUE_ID_file536, !1, !"__UNIQUE_ID_file536", i1 false, i1 false}
!1 = !{!"../net/sched/em_ipset.c", i32 127, i32 1}
!2 = !{ptr @__UNIQUE_ID_license537, !1, !"__UNIQUE_ID_license537", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author538, !4, !"__UNIQUE_ID_author538", i1 false, i1 false}
!4 = !{!"../net/sched/em_ipset.c", i32 128, i32 1}
!5 = !{ptr @__UNIQUE_ID_description539, !6, !"__UNIQUE_ID_description539", i1 false, i1 false}
!6 = !{!"../net/sched/em_ipset.c", i32 129, i32 1}
!7 = !{ptr @__initcall__kmod_em_ipset__540_131_init_em_ipset6, !8, !"__initcall__kmod_em_ipset__540_131_init_em_ipset6", i1 false, i1 false}
!8 = !{!"../net/sched/em_ipset.c", i32 131, i32 1}
!9 = !{ptr @__exitcall_exit_em_ipset, !10, !"__exitcall_exit_em_ipset", i1 false, i1 false}
!10 = !{!"../net/sched/em_ipset.c", i32 132, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias541, !12, !"__UNIQUE_ID_alias541", i1 false, i1 false}
!12 = !{!"../net/sched/em_ipset.c", i32 134, i32 1}
!13 = !{ptr @em_ipset_ops, !14, !"em_ipset_ops", i1 false, i1 false}
!14 = !{!"../net/sched/em_ipset.c", i32 108, i32 30}
!15 = !{ptr @.str, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../include/linux/if_vlan.h", i32 598, i32 8}
!17 = distinct !{null, !18, !"__warned", i1 false, i1 false}
!18 = !{!"../include/linux/rcupdate.h", i32 695, i32 2}
!19 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!21 = distinct !{null, !22, !"__warned", i1 false, i1 false}
!22 = !{!"../include/linux/rcupdate.h", i32 723, i32 2}
!23 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!24 = !{!"sp"}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!34 = !{!"branch_weights", i32 1, i32 2000}
!35 = !{!"auto-init"}
!36 = !{!"branch_weights", i32 2000, i32 1}
!37 = !{i64 2149894445}
!38 = !{i64 2149894711}
