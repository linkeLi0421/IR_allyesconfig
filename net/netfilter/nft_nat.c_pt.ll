; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_nat.c_pt.bc'
source_filename = "../net/netfilter/nft_nat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.29 }
%union.anon.29 = type { i32 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.nft_nat = type { i8, i8, i8, i8, i8, i8, i16 }
%union.nf_inet_addr = type { [4 x i32] }
%struct.nf_nat_range2 = type { i32, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%union.nf_conntrack_man_proto = type { i16 }
%struct.sk_buff = type { %union.anon.3, %union.anon.136, %union.anon.137, [48 x i8], %union.anon.138, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.140, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.136 = type { ptr }
%union.anon.137 = type { i64 }
%union.anon.138 = type { %struct.anon.139 }
%struct.anon.139 = type { i32, ptr }
%union.anon.140 = type { %struct.anon.141 }
%struct.anon.141 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.142, i32, i32, i32, i16, i16, %union.anon.144, i32, %union.anon.145, %union.anon.146, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.142 = type { i32 }
%union.anon.144 = type { i32 }
%union.anon.145 = type { i32 }
%union.anon.146 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }

@nft_nat_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_nat_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_nat_policy, i32 7, i8 0, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_nat__637_394_nft_nat_module_init6 = internal global ptr @nft_nat_module_init, section ".initcall6.init", align 4
@__exitcall_nft_nat_module_exit = internal global ptr @nft_nat_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file638 = internal constant [35 x i8] c"nft_nat.file=net/netfilter/nft_nat\00", section ".modinfo", align 1
@__UNIQUE_ID_license639 = internal constant [20 x i8] c"nft_nat.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author640 = internal constant [67 x i8] c"nft_nat.author=Tomasz Bursztyka <tomasz.bursztyka@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias641 = internal constant [27 x i8] c"nft_nat.alias=nft-expr-nat\00", section ".modinfo", align 1
@__UNIQUE_ID_description642 = internal constant [56 x i8] c"nft_nat.description=Network Address Translation support\00", section ".modinfo", align 1
@nft_inet_nat_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_nat_inet_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_nat_policy, i32 7, i8 1, i8 0 }, section ".data..read_mostly", align 4
@nft_nat_inet_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_nat_inet_eval, ptr null, i32 16, ptr @nft_nat_init, ptr null, ptr null, ptr @nft_nat_destroy, ptr null, ptr @nft_nat_dump, ptr @nft_nat_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_nat_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"nat\00", [28 x i8] zeroinitializer }, align 32
@nft_nat_policy = internal constant { [8 x %struct.nla_policy], [32 x i8] } { [8 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.29 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nft_nat_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_nat_eval, ptr null, i32 16, ptr @nft_nat_init, ptr null, ptr null, ptr @nft_nat_destroy, ptr null, ptr @nft_nat_dump, ptr @nft_nat_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_nat_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 10]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@__sancov_gen_cov_switch_values.5 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"nft_nat_inet_ops\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 341, i32 34 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 352, i32 20 }
@___asan_gen_.12 = private unnamed_addr constant [15 x i8] c"nft_nat_policy\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 128, i32 32 }
@___asan_gen_.15 = private unnamed_addr constant [12 x i8] c"nft_nat_ops\00", align 1
@___asan_gen_.16 = private constant [27 x i8] c"../net/netfilter/nft_nat.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 312, i32 34 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias641, ptr @__UNIQUE_ID_author640, ptr @__UNIQUE_ID_description642, ptr @__UNIQUE_ID_file638, ptr @__UNIQUE_ID_license639, ptr @__exitcall_nft_nat_module_exit, ptr @__initcall__kmod_nft_nat__637_394_nft_nat_module_init6, ptr @nft_nat_module_exit, ptr @nft_nat_inet_ops, ptr @.str, ptr @nft_nat_policy, ptr @nft_nat_ops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_nat_inet_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_nat_policy to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_nat_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_nat_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_inet_nat_type) #4
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_nat_type) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_nat_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_inet_nat_type) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_nat_type) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_inet_nat_type) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_nat_inet_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %family = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %family, align 1
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %2 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %pf.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %5)
  %cmp = icmp eq i8 %1, %5
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nft_nat_eval(ptr noundef %expr, ptr noundef %regs, ptr noundef %pkt)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_nat_init(ptr nocapture noundef readonly %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %land.lhs.true, label %lor.lhs.false.if.end_crit_edge

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 5
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %cmp4 = icmp eq ptr %5, null
  br i1 %cmp4, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end.cleanup_crit_edge [
    i32 0, label %if.end.sw.epilog_crit_edge
    i32 1, label %sw.bb7
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb7:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb7, %if.end.sw.epilog_crit_edge
  %.sink = phi i8 [ 1, %sw.bb7 ], [ 0, %if.end.sw.epilog_crit_edge ]
  %type8 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %9 = ptrtoint ptr %type8 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %.sink, ptr %type8, align 4
  %arrayidx9 = getelementptr ptr, ptr %tb, i32 2
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx9, align 4
  %cmp10 = icmp eq ptr %11, null
  br i1 %cmp10, label %sw.epilog.cleanup_crit_edge, label %if.end12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %sw.epilog
  %add.ptr.i.i155 = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i155 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i155, align 4
  %family15 = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %14 = ptrtoint ptr %family15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %family15, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %15)
  %cmp16.not = icmp eq i8 %15, 1
  %conv = zext i8 %15 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %conv)
  %cmp21.not = icmp eq i32 %13, %conv
  %or.cond = select i1 %cmp16.not, i1 true, i1 %cmp21.not
  br i1 %or.cond, label %if.end24, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.end12
  %16 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %13, label %sw.default27 [
    i32 2, label %if.end24.sw.epilog31_crit_edge
    i32 10, label %sw.bb26
  ]

if.end24.sw.epilog31_crit_edge:                   ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog31

sw.bb26:                                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog31

sw.default27:                                     ; preds = %if.end24
  %17 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx1, align 4
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %sw.default27.sw.epilog31_crit_edge, label %sw.default27.cleanup_crit_edge

sw.default27.cleanup_crit_edge:                   ; preds = %sw.default27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.default27.sw.epilog31_crit_edge:               ; preds = %sw.default27
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog31

sw.epilog31:                                      ; preds = %sw.default27.sw.epilog31_crit_edge, %sw.bb26, %if.end24.sw.epilog31_crit_edge
  %alen.0 = phi i32 [ -1, %sw.default27.sw.epilog31_crit_edge ], [ 16, %sw.bb26 ], [ 4, %if.end24.sw.epilog31_crit_edge ]
  %conv32 = trunc i32 %13 to i8
  %family33 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %19 = ptrtoint ptr %family33 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv32, ptr %family33, align 1
  %20 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx1, align 4
  %tobool35.not = icmp eq ptr %21, null
  br i1 %tobool35.not, label %sw.epilog31.if.end57_crit_edge, label %if.then36

sw.epilog31.if.end57_crit_edge:                   ; preds = %sw.epilog31
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end57

if.then36:                                        ; preds = %sw.epilog31
  %call38 = tail call i32 @nft_parse_register_load(ptr noundef nonnull %21, ptr noundef %data.i, i32 noundef %alen.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %cmp39 = icmp slt i32 %call38, 0
  br i1 %cmp39, label %if.then36.cleanup_crit_edge, label %if.end42

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end42:                                         ; preds = %if.then36
  %arrayidx43 = getelementptr ptr, ptr %tb, i32 4
  %22 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx43, align 4
  %tobool44.not = icmp eq ptr %23, null
  br i1 %tobool44.not, label %if.else, label %if.then45

if.then45:                                        ; preds = %if.end42
  %sreg_addr_max = getelementptr inbounds %struct.nft_nat, ptr %data.i, i32 0, i32 1
  %call47 = tail call i32 @nft_parse_register_load(ptr noundef nonnull %23, ptr noundef %sreg_addr_max, i32 noundef %alen.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call47)
  %cmp48 = icmp slt i32 %call47, 0
  br i1 %cmp48, label %if.then45.cleanup_crit_edge, label %if.then45.if.end54_crit_edge

if.then45.if.end54_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end54

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %data.i, align 4
  %sreg_addr_max53 = getelementptr inbounds %struct.nft_nat, ptr %data.i, i32 0, i32 1
  %26 = ptrtoint ptr %sreg_addr_max53 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %25, ptr %sreg_addr_max53, align 1
  br label %if.end54

if.end54:                                         ; preds = %if.else, %if.then45.if.end54_crit_edge
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %flags, align 2
  %29 = or i16 %28, 1
  store i16 %29, ptr %flags, align 2
  br label %if.end57

if.end57:                                         ; preds = %if.end54, %sw.epilog31.if.end57_crit_edge
  %arrayidx58 = getelementptr ptr, ptr %tb, i32 5
  %30 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx58, align 4
  %tobool59.not = icmp eq ptr %31, null
  br i1 %tobool59.not, label %if.end57.if.end84_crit_edge, label %if.then60

if.end57.if.end84_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end84

if.then60:                                        ; preds = %if.end57
  %sreg_proto_min = getelementptr inbounds %struct.nft_nat, ptr %data.i, i32 0, i32 2
  %call62 = tail call i32 @nft_parse_register_load(ptr noundef nonnull %31, ptr noundef %sreg_proto_min, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %cmp63 = icmp slt i32 %call62, 0
  br i1 %cmp63, label %if.then60.cleanup_crit_edge, label %if.end66

if.then60.cleanup_crit_edge:                      ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end66:                                         ; preds = %if.then60
  %arrayidx67 = getelementptr ptr, ptr %tb, i32 6
  %32 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx67, align 4
  %tobool68.not = icmp eq ptr %33, null
  br i1 %tobool68.not, label %if.else76, label %if.then69

if.then69:                                        ; preds = %if.end66
  %sreg_proto_max = getelementptr inbounds %struct.nft_nat, ptr %data.i, i32 0, i32 3
  %call71 = tail call i32 @nft_parse_register_load(ptr noundef nonnull %33, ptr noundef %sreg_proto_max, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp72 = icmp slt i32 %call71, 0
  br i1 %cmp72, label %if.then69.cleanup_crit_edge, label %if.then69.if.end79_crit_edge

if.then69.if.end79_crit_edge:                     ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end79

if.then69.cleanup_crit_edge:                      ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else76:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #6
  %34 = ptrtoint ptr %sreg_proto_min to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sreg_proto_min, align 2
  %sreg_proto_max78 = getelementptr inbounds %struct.nft_nat, ptr %data.i, i32 0, i32 3
  %36 = ptrtoint ptr %sreg_proto_max78 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %35, ptr %sreg_proto_max78, align 1
  br label %if.end79

if.end79:                                         ; preds = %if.else76, %if.then69.if.end79_crit_edge
  %flags80 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %37 = ptrtoint ptr %flags80 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %flags80, align 2
  %39 = or i16 %38, 2
  store i16 %39, ptr %flags80, align 2
  br label %if.end84

if.end84:                                         ; preds = %if.end79, %if.end57.if.end84_crit_edge
  %arrayidx85 = getelementptr ptr, ptr %tb, i32 7
  %40 = ptrtoint ptr %arrayidx85 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx85, align 4
  %tobool86.not = icmp eq ptr %41, null
  br i1 %tobool86.not, label %if.end84.if.end99_crit_edge, label %if.then87

if.end84.if.end99_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99

if.then87:                                        ; preds = %if.end84
  %add.ptr.i.i156 = getelementptr i8, ptr %41, i32 4
  %42 = ptrtoint ptr %add.ptr.i.i156 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %add.ptr.i.i156, align 4
  %flags90 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %44 = ptrtoint ptr %flags90 to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %flags90, align 2
  %46 = trunc i32 %43 to i16
  %conv93 = or i16 %45, %46
  store i16 %conv93, ptr %flags90, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 128, i16 %conv93)
  %tobool96.not = icmp ult i16 %conv93, 128
  br i1 %tobool96.not, label %if.then87.if.end99_crit_edge, label %if.then87.cleanup_crit_edge

if.then87.cleanup_crit_edge:                      ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then87.if.end99_crit_edge:                     ; preds = %if.then87
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end99

if.end99:                                         ; preds = %if.then87.if.end99_crit_edge, %if.end84.if.end99_crit_edge
  %47 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ctx, align 4
  %call101 = tail call i32 @nf_ct_netns_get(ptr noundef %48, i8 noundef zeroext %conv32) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %if.then87.cleanup_crit_edge, %if.then69.cleanup_crit_edge, %if.then60.cleanup_crit_edge, %if.then45.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %sw.default27.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call101, %if.end99 ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -95, %if.end12.cleanup_crit_edge ], [ -97, %sw.default27.cleanup_crit_edge ], [ %call38, %if.then36.cleanup_crit_edge ], [ %call47, %if.then45.cleanup_crit_edge ], [ %call62, %if.then60.cleanup_crit_edge ], [ %call71, %if.then69.cleanup_crit_edge ], [ -95, %if.then87.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_nat_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %family = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %2 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %family, align 1
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext %3) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_nat_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %tmp.i68 = alloca i32, align 4
  %tmp.i66 = alloca i32, align 4
  %tmp.i64 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %type = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load63 = load i8, ptr %type, align 4
  %1 = zext i8 %bf.load63 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %bf.load63, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.nla_put_failure_crit_edge

sw.bb.nla_put_failure_crit_edge:                  ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i64) #4
  %3 = ptrtoint ptr %tmp.i64 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 1, ptr %tmp.i64, align 4
  %call.i65 = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i64) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i64) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool4.not = icmp eq i32 %call.i65, 0
  br i1 %tobool4.not, label %sw.bb2.sw.epilog_crit_edge, label %sw.bb2.nla_put_failure_crit_edge

sw.bb2.nla_put_failure_crit_edge:                 ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %family = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %4 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %family, align 1
  %conv = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i66) #4
  %6 = ptrtoint ptr %tmp.i66 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv, ptr %tmp.i66, align 4
  %call.i67 = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i66) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i66) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i67)
  %tobool8.not = icmp eq i32 %call.i67, 0
  br i1 %tobool8.not, label %if.end10, label %sw.epilog.nla_put_failure_crit_edge

sw.epilog.nla_put_failure_crit_edge:              ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

if.end10:                                         ; preds = %sw.epilog
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool11.not = icmp eq i8 %8, 0
  br i1 %tobool11.not, label %if.end10.if.end22_crit_edge, label %if.then12

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.then12:                                        ; preds = %if.end10
  %conv14 = zext i8 %8 to i32
  %call15 = call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 3, i32 noundef %conv14) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %lor.lhs.false, label %if.then12.nla_put_failure_crit_edge

if.then12.nla_put_failure_crit_edge:              ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %if.then12
  %sreg_addr_max = getelementptr inbounds %struct.nft_nat, ptr %data.i, i32 0, i32 1
  %9 = ptrtoint ptr %sreg_addr_max to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sreg_addr_max, align 1
  %conv17 = zext i8 %10 to i32
  %call18 = call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 4, i32 noundef %conv17) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %lor.lhs.false.if.end22_crit_edge, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end22

if.end22:                                         ; preds = %lor.lhs.false.if.end22_crit_edge, %if.end10.if.end22_crit_edge
  %sreg_proto_min = getelementptr inbounds %struct.nft_nat, ptr %data.i, i32 0, i32 2
  %11 = ptrtoint ptr %sreg_proto_min to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %sreg_proto_min, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool23.not = icmp eq i8 %12, 0
  br i1 %tobool23.not, label %if.end22.if.end35_crit_edge, label %if.then24

if.end22.if.end35_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.then24:                                        ; preds = %if.end22
  %conv26 = zext i8 %12 to i32
  %call27 = call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 5, i32 noundef %conv26) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %lor.lhs.false29, label %if.then24.nla_put_failure_crit_edge

if.then24.nla_put_failure_crit_edge:              ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

lor.lhs.false29:                                  ; preds = %if.then24
  %sreg_proto_max = getelementptr inbounds %struct.nft_nat, ptr %data.i, i32 0, i32 3
  %13 = ptrtoint ptr %sreg_proto_max to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sreg_proto_max, align 1
  %conv30 = zext i8 %14 to i32
  %call31 = call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 6, i32 noundef %conv30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %tobool32.not = icmp eq i32 %call31, 0
  br i1 %tobool32.not, label %lor.lhs.false29.if.end35_crit_edge, label %lor.lhs.false29.nla_put_failure_crit_edge

lor.lhs.false29.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

lor.lhs.false29.if.end35_crit_edge:               ; preds = %lor.lhs.false29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end35

if.end35:                                         ; preds = %lor.lhs.false29.if.end35_crit_edge, %if.end22.if.end35_crit_edge
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %16)
  %cmp.not = icmp eq i16 %16, 0
  br i1 %cmp.not, label %if.end35.cleanup_crit_edge, label %if.then38

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then38:                                        ; preds = %if.end35
  %conv36 = zext i16 %16 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i68) #4
  %17 = ptrtoint ptr %tmp.i68 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %conv36, ptr %tmp.i68, align 4
  %call.i69 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i68) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i68) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i69)
  %tobool42.not = icmp eq i32 %call.i69, 0
  br i1 %tobool42.not, label %if.then38.cleanup_crit_edge, label %if.then38.nla_put_failure_crit_edge

if.then38.nla_put_failure_crit_edge:              ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

if.then38.cleanup_crit_edge:                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nla_put_failure:                                  ; preds = %if.then38.nla_put_failure_crit_edge, %lor.lhs.false29.nla_put_failure_crit_edge, %if.then24.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %if.then12.nla_put_failure_crit_edge, %sw.epilog.nla_put_failure_crit_edge, %sw.bb2.nla_put_failure_crit_edge, %sw.bb.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.then38.cleanup_crit_edge, %if.end35.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %if.then38.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_nat_validate(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %expr, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %call1 = tail call i32 @nft_chain_validate_dependency(ptr noundef %1, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %type = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %2 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load12 = load i8, ptr %type, align 4
  %3 = zext i8 %bf.load12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %bf.load12, label %if.end.cleanup_crit_edge [
    i8 0, label %if.end.cleanup.sink.split_crit_edge
    i8 1, label %sw.bb4
  ]

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sw.bb4, %if.end.cleanup.sink.split_crit_edge
  %.sink13 = phi i32 [ 9, %sw.bb4 ], [ 18, %if.end.cleanup.sink.split_crit_edge ]
  %4 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chain, align 4
  %call3 = tail call i32 @nft_chain_validate_hooks(ptr noundef %5, i32 noundef %.sink13) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call1, %if.end.cleanup_crit_edge ], [ %call3, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_nat_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %new_addr.i = alloca %union.nf_inet_addr, align 4
  %range = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %_nfct.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %_nfct.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %_nfct.i.i, align 8
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range) #4
  %4 = call ptr @memset(ptr %range, i32 0, i32 44)
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end4_crit_edge, label %if.then

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then:                                          ; preds = %entry
  %family.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %7 = ptrtoint ptr %family.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %family.i, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %8, label %if.then.nft_nat_setup_addr.exit_crit_edge [
    i8 2, label %sw.bb.i
    i8 10, label %sw.bb3.i
  ]

if.then.nft_nat_setup_addr.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %nft_nat_setup_addr.exit

sw.bb.i:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %idxprom.i = zext i8 %6 to i32
  %arrayidx.i = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %min_addr.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %12 = ptrtoint ptr %min_addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %min_addr.i, align 4
  %sreg_addr_max.i = getelementptr inbounds %struct.nft_nat, ptr %data.i, i32 0, i32 1
  %13 = ptrtoint ptr %sreg_addr_max.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %sreg_addr_max.i, align 1
  %idxprom1.i = zext i8 %14 to i32
  %arrayidx2.i = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom1.i
  %15 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx2.i, align 4
  %max_addr.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %17 = ptrtoint ptr %max_addr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %max_addr.i, align 4
  br label %nft_nat_setup_addr.exit

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %min_addr4.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %idxprom6.i = zext i8 %6 to i32
  %arrayidx7.i = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom6.i
  %18 = call ptr @memcpy(ptr %min_addr4.i, ptr %arrayidx7.i, i32 16)
  %max_addr8.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %sreg_addr_max10.i = getelementptr inbounds %struct.nft_nat, ptr %data.i, i32 0, i32 1
  %19 = ptrtoint ptr %sreg_addr_max10.i to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %sreg_addr_max10.i, align 1
  %idxprom11.i = zext i8 %20 to i32
  %arrayidx12.i = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom11.i
  %21 = call ptr @memcpy(ptr %max_addr8.i, ptr %arrayidx12.i, i32 16)
  br label %nft_nat_setup_addr.exit

nft_nat_setup_addr.exit:                          ; preds = %sw.bb3.i, %sw.bb.i, %if.then.nft_nat_setup_addr.exit_crit_edge
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %flags, align 2
  %24 = and i16 %23, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %24)
  %tobool2.not = icmp eq i16 %24, 0
  br i1 %tobool2.not, label %nft_nat_setup_addr.exit.if.end4_crit_edge, label %if.then3

nft_nat_setup_addr.exit.if.end4_crit_edge:        ; preds = %nft_nat_setup_addr.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end4

if.then3:                                         ; preds = %nft_nat_setup_addr.exit
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %new_addr.i) #4
  %type.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %25 = call ptr @memset(ptr %new_addr.i, i32 255, i32 16)
  %26 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %bf.load44.i = load i8, ptr %type.i, align 4
  %27 = zext i8 %bf.load44.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %27, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %bf.load44.i, label %if.then3.nft_nat_setup_netmap.exit_crit_edge [
    i8 0, label %sw.bb.i22
    i8 1, label %sw.bb6.i
  ]

if.then3.nft_nat_setup_netmap.exit_crit_edge:     ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #6
  br label %nft_nat_setup_netmap.exit

sw.bb.i22:                                        ; preds = %if.then3
  %state.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %28 = ptrtoint ptr %state.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %state.i.i, align 4
  %pf.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %pf.i.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %pf.i.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %31)
  %cmp.i = icmp eq i8 %31, 2
  %head.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %32 = ptrtoint ptr %head.i.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %head.i.i.i, align 8
  %network_header.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %34 = ptrtoint ptr %network_header.i.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %network_header.i.i.i, align 4
  %conv.i.i.i = zext i16 %35 to i32
  %add.ptr.i.i.i = getelementptr i8, ptr %33, i32 %conv.i.i.i
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %sw.bb.i22
  call void @__sanitizer_cov_trace_pc() #6
  %saddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i.i, i32 0, i32 8
  %36 = ptrtoint ptr %saddr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %saddr.i, align 4
  %38 = ptrtoint ptr %new_addr.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %new_addr.i, align 4
  %max_addr.i24 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %min_addr.i23 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %39 = ptrtoint ptr %min_addr.i23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %min_addr.i23, align 4
  %41 = ptrtoint ptr %max_addr.i24 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %max_addr.i24, align 4
  %xor.i = xor i32 %42, %40
  %43 = load i32, ptr %new_addr.i, align 4
  %and.i26 = and i32 %43, %xor.i
  %and24.i = and i32 %42, %40
  %or.i = or i32 %and.i26, %and24.i
  store i32 %or.i, ptr %new_addr.i, align 4
  br label %nft_nat_setup_netmap.exit

if.else.i:                                        ; preds = %sw.bb.i22
  call void @__sanitizer_cov_trace_pc() #6
  %saddr5.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i.i, i32 0, i32 5
  %44 = call ptr @memcpy(ptr %new_addr.i, ptr %saddr5.i, i32 16)
  %max_addr.i24.c38 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %min_addr.i23.c39 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %45 = ptrtoint ptr %min_addr.i23.c39 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %min_addr.i23.c39, align 4
  %47 = ptrtoint ptr %max_addr.i24.c38 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %max_addr.i24.c38, align 4
  %xor.i.c40 = xor i32 %48, %46
  %49 = ptrtoint ptr %new_addr.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %new_addr.i, align 4
  %and.i26.c41 = and i32 %50, %xor.i.c40
  %and24.i.c42 = and i32 %48, %46
  %or.i.c43 = or i32 %and.i26.c41, %and24.i.c42
  store i32 %or.i.c43, ptr %new_addr.i, align 4
  br label %for.body.i.1

sw.bb6.i:                                         ; preds = %if.then3
  %state.i49.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %51 = ptrtoint ptr %state.i49.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %state.i49.i, align 4
  %pf.i50.i = getelementptr inbounds %struct.nf_hook_state, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %pf.i50.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pf.i50.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %54)
  %cmp9.i = icmp eq i8 %54, 2
  %head.i.i51.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %55 = ptrtoint ptr %head.i.i51.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %head.i.i51.i, align 8
  %network_header.i.i52.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %57 = ptrtoint ptr %network_header.i.i52.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %network_header.i.i52.i, align 4
  %conv.i.i53.i = zext i16 %58 to i32
  %add.ptr.i.i54.i = getelementptr i8, ptr %56, i32 %conv.i.i53.i
  br i1 %cmp9.i, label %if.then11.i, label %if.else13.i

if.then11.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #6
  %daddr.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i54.i, i32 0, i32 9
  %59 = ptrtoint ptr %daddr.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %daddr.i, align 4
  %61 = ptrtoint ptr %new_addr.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %new_addr.i, align 4
  %max_addr.i24.c31 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %min_addr.i23.c32 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %62 = ptrtoint ptr %min_addr.i23.c32 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %min_addr.i23.c32, align 4
  %64 = ptrtoint ptr %max_addr.i24.c31 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %max_addr.i24.c31, align 4
  %xor.i.c33 = xor i32 %65, %63
  %66 = load i32, ptr %new_addr.i, align 4
  %and.i26.c34 = and i32 %66, %xor.i.c33
  %and24.i.c35 = and i32 %65, %63
  %or.i.c36 = or i32 %and.i26.c34, %and24.i.c35
  store i32 %or.i.c36, ptr %new_addr.i, align 4
  br label %nft_nat_setup_netmap.exit

if.else13.i:                                      ; preds = %sw.bb6.i
  call void @__sanitizer_cov_trace_pc() #6
  %daddr15.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i54.i, i32 0, i32 6
  %67 = call ptr @memcpy(ptr %new_addr.i, ptr %daddr15.i, i32 16)
  %max_addr.i24.c = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %min_addr.i23.c = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %68 = ptrtoint ptr %min_addr.i23.c to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %min_addr.i23.c, align 4
  %70 = ptrtoint ptr %max_addr.i24.c to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %max_addr.i24.c, align 4
  %xor.i.c = xor i32 %71, %69
  %72 = ptrtoint ptr %new_addr.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %new_addr.i, align 4
  %and.i26.c = and i32 %73, %xor.i.c
  %and24.i.c = and i32 %71, %69
  %or.i.c = or i32 %and.i26.c, %and24.i.c
  store i32 %or.i.c, ptr %new_addr.i, align 4
  br label %for.body.i.1

for.body.i.1:                                     ; preds = %if.else13.i, %if.else.i
  %arrayidx.i25.1 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1, i32 0, i32 1
  %74 = ptrtoint ptr %arrayidx.i25.1 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx.i25.1, align 4
  %arrayidx19.i.1 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2, i32 0, i32 1
  %76 = ptrtoint ptr %arrayidx19.i.1 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx19.i.1, align 4
  %xor.i.1 = xor i32 %77, %75
  %arrayidx21.i.1 = getelementptr inbounds [4 x i32], ptr %new_addr.i, i32 0, i32 1
  %78 = ptrtoint ptr %arrayidx21.i.1 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx21.i.1, align 4
  %and.i26.1 = and i32 %79, %xor.i.1
  %and24.i.1 = and i32 %77, %75
  %or.i.1 = or i32 %and.i26.1, %and24.i.1
  store i32 %or.i.1, ptr %arrayidx21.i.1, align 4
  %arrayidx.i25.2 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1, i32 0, i32 2
  %80 = ptrtoint ptr %arrayidx.i25.2 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i25.2, align 4
  %arrayidx19.i.2 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2, i32 0, i32 2
  %82 = ptrtoint ptr %arrayidx19.i.2 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %arrayidx19.i.2, align 4
  %xor.i.2 = xor i32 %83, %81
  %arrayidx21.i.2 = getelementptr inbounds [4 x i32], ptr %new_addr.i, i32 0, i32 2
  %84 = ptrtoint ptr %arrayidx21.i.2 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx21.i.2, align 4
  %and.i26.2 = and i32 %85, %xor.i.2
  %and24.i.2 = and i32 %83, %81
  %or.i.2 = or i32 %and.i26.2, %and24.i.2
  store i32 %or.i.2, ptr %arrayidx21.i.2, align 4
  %arrayidx.i25.3 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1, i32 0, i32 3
  %86 = ptrtoint ptr %arrayidx.i25.3 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %arrayidx.i25.3, align 4
  %arrayidx19.i.3 = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2, i32 0, i32 3
  %88 = ptrtoint ptr %arrayidx19.i.3 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %arrayidx19.i.3, align 4
  %xor.i.3 = xor i32 %89, %87
  %arrayidx21.i.3 = getelementptr inbounds [4 x i32], ptr %new_addr.i, i32 0, i32 3
  %90 = ptrtoint ptr %arrayidx21.i.3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %arrayidx21.i.3, align 4
  %and.i26.3 = and i32 %91, %xor.i.3
  %and24.i.3 = and i32 %89, %87
  %or.i.3 = or i32 %and.i26.3, %and24.i.3
  store i32 %or.i.3, ptr %arrayidx21.i.3, align 4
  br label %nft_nat_setup_netmap.exit

nft_nat_setup_netmap.exit:                        ; preds = %for.body.i.1, %if.then11.i, %if.then.i, %if.then3.nft_nat_setup_netmap.exit_crit_edge
  %min_addr26.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 1
  %92 = call ptr @memcpy(ptr %min_addr26.i, ptr %new_addr.i, i32 16)
  %max_addr27.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 2
  %93 = call ptr @memcpy(ptr %max_addr27.i, ptr %new_addr.i, i32 16)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %new_addr.i) #4
  br label %if.end4

if.end4:                                          ; preds = %nft_nat_setup_netmap.exit, %nft_nat_setup_addr.exit.if.end4_crit_edge, %entry.if.end4_crit_edge
  %sreg_proto_min = getelementptr inbounds %struct.nft_nat, ptr %data.i, i32 0, i32 2
  %94 = ptrtoint ptr %sreg_proto_min to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %sreg_proto_min, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %95)
  %tobool5.not = icmp eq i8 %95, 0
  br i1 %tobool5.not, label %if.end4.if.end7_crit_edge, label %if.then6

if.end4.if.end7_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end7

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  %idxprom.i27 = zext i8 %95 to i32
  %arrayidx.i28 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom.i27
  %96 = ptrtoint ptr %arrayidx.i28 to i32
  call void @__asan_load2_noabort(i32 %96)
  %97 = load i16, ptr %arrayidx.i28, align 2
  %min_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %98 = ptrtoint ptr %min_proto.i to i32
  call void @__asan_store2_noabort(i32 %98)
  store i16 %97, ptr %min_proto.i, align 4
  %sreg_proto_max.i = getelementptr inbounds %struct.nft_nat, ptr %data.i, i32 0, i32 3
  %99 = ptrtoint ptr %sreg_proto_max.i to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %sreg_proto_max.i, align 1
  %idxprom1.i29 = zext i8 %100 to i32
  %arrayidx2.i30 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom1.i29
  %101 = ptrtoint ptr %arrayidx2.i30 to i32
  call void @__asan_load2_noabort(i32 %101)
  %102 = load i16, ptr %arrayidx2.i30, align 2
  %max_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %103 = ptrtoint ptr %max_proto.i to i32
  call void @__asan_store2_noabort(i32 %103)
  store i16 %102, ptr %max_proto.i, align 2
  br label %if.end7

if.end7:                                          ; preds = %if.then6, %if.end4.if.end7_crit_edge
  %and1.i = and i32 %3, -8
  %104 = inttoptr i32 %and1.i to ptr
  %flags8 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %105 = ptrtoint ptr %flags8 to i32
  call void @__asan_load2_noabort(i32 %105)
  %106 = load i16, ptr %flags8, align 2
  %conv9 = zext i16 %106 to i32
  %107 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %conv9, ptr %range, align 4
  %type = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %108 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %108)
  %bf.load = load i8, ptr %type, align 4
  %bf.cast = zext i8 %bf.load to i32
  %call11 = call i32 @nf_nat_setup_info(ptr noundef %104, ptr noundef nonnull %range, i32 noundef %bf.cast) #4
  %109 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %call11, ptr %regs, align 4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_setup_info(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_load(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_ct_netns_get(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_ct_netns_put(ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_chain_validate_dependency(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_chain_validate_hooks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23}
!llvm.module.flags = !{!25, !26, !27, !28, !29, !30, !31, !32}
!llvm.ident = !{!33}

!0 = !{ptr @__initcall__kmod_nft_nat__637_394_nft_nat_module_init6, !1, !"__initcall__kmod_nft_nat__637_394_nft_nat_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_nat.c", i32 394, i32 1}
!2 = !{ptr @__exitcall_nft_nat_module_exit, !3, !"__exitcall_nft_nat_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_nat.c", i32 395, i32 1}
!4 = !{ptr @__UNIQUE_ID_file638, !5, !"__UNIQUE_ID_file638", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_nat.c", i32 397, i32 1}
!6 = !{ptr @__UNIQUE_ID_license639, !5, !"__UNIQUE_ID_license639", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author640, !8, !"__UNIQUE_ID_author640", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_nat.c", i32 398, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias641, !10, !"__UNIQUE_ID_alias641", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_nat.c", i32 399, i32 1}
!11 = !{ptr @__UNIQUE_ID_description642, !12, !"__UNIQUE_ID_description642", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_nat.c", i32 400, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_nat.c", i32 352, i32 20}
!15 = !{ptr @nft_inet_nat_type, !16, !"nft_inet_nat_type", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_nat.c", i32 351, i32 29}
!17 = !{ptr @nft_nat_inet_ops, !18, !"nft_nat_inet_ops", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_nat.c", i32 341, i32 34}
!19 = !{ptr @nft_nat_policy, !20, !"nft_nat_policy", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_nat.c", i32 128, i32 32}
!21 = !{ptr @nft_nat_type, !22, !"nft_nat_type", i1 false, i1 false}
!22 = !{!"../net/netfilter/nft_nat.c", i32 322, i32 29}
!23 = !{ptr @nft_nat_ops, !24, !"nft_nat_ops", i1 false, i1 false}
!24 = !{!"../net/netfilter/nft_nat.c", i32 312, i32 34}
!25 = !{i32 1, !"wchar_size", i32 2}
!26 = !{i32 1, !"min_enum_size", i32 4}
!27 = !{i32 8, !"branch-target-enforcement", i32 0}
!28 = !{i32 8, !"sign-return-address", i32 0}
!29 = !{i32 8, !"sign-return-address-all", i32 0}
!30 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!31 = !{i32 7, !"uwtable", i32 1}
!32 = !{i32 7, !"frame-pointer", i32 2}
!33 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
