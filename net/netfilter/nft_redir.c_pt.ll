; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_redir.c_pt.bc'
source_filename = "../net/netfilter/nft_redir.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.nf_nat_ipv4_multi_range_compat = type { i32, [1 x %struct.nf_nat_ipv4_range] }
%struct.nf_nat_ipv4_range = type { i32, i32, i32, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%union.nf_conntrack_man_proto = type { i16 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_redir = type { i8, i8, i16 }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.nf_nat_range2 = type { i32, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%union.nf_inet_addr = type { [4 x i32] }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }

@nft_redir_ipv4_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_redir_ipv4_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_redir_policy, i32 3, i8 2, i8 0 }, section ".data..read_mostly", align 4
@nft_redir_ipv6_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_redir_ipv6_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_redir_policy, i32 3, i8 10, i8 0 }, section ".data..read_mostly", align 4
@nft_redir_inet_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_redir_inet_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_redir_policy, i32 3, i8 1, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_redir__629_285_nft_redir_module_init6 = internal global ptr @nft_redir_module_init, section ".initcall6.init", align 4
@__exitcall_nft_redir_module_exit = internal global ptr @nft_redir_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file630 = internal constant [39 x i8] c"nft_redir.file=net/netfilter/nft_redir\00", section ".modinfo", align 1
@__UNIQUE_ID_license631 = internal constant [22 x i8] c"nft_redir.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author632 = internal constant [61 x i8] c"nft_redir.author=Arturo Borrero Gonzalez <arturo@debian.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias633 = internal constant [31 x i8] c"nft_redir.alias=nft-expr-redir\00", section ".modinfo", align 1
@__UNIQUE_ID_description634 = internal constant [58 x i8] c"nft_redir.description=Netfilter nftables redirect support\00", section ".modinfo", align 1
@nft_redir_ipv4_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_redir_ipv4_eval, ptr null, i32 16, ptr @nft_redir_init, ptr null, ptr null, ptr @nft_redir_ipv4_destroy, ptr null, ptr @nft_redir_dump, ptr @nft_redir_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_redir_ipv4_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"redir\00", [26 x i8] zeroinitializer }, align 32
@nft_redir_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nft_redir_ipv6_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_redir_ipv6_eval, ptr null, i32 16, ptr @nft_redir_init, ptr null, ptr null, ptr @nft_redir_ipv6_destroy, ptr null, ptr @nft_redir_dump, ptr @nft_redir_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_redir_ipv6_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_redir_inet_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_redir_inet_eval, ptr null, i32 16, ptr @nft_redir_init, ptr null, ptr null, ptr @nft_redir_inet_destroy, ptr null, ptr @nft_redir_dump, ptr @nft_redir_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_redir_inet_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_redir_inet_eval.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/netfilter/nft_redir.c\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.2 = private unnamed_addr constant [19 x i8] c"nft_redir_ipv4_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 129, i32 34 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 141, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"nft_redir_policy\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 22, i32 32 }
@___asan_gen_.11 = private unnamed_addr constant [19 x i8] c"nft_redir_ipv6_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 178, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [19 x i8] c"nft_redir_inet_ops\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 220, i32 34 }
@___asan_gen_.17 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.18 = private constant [29 x i8] c"../net/netfilter/nft_redir.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 210, i32 2 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias633, ptr @__UNIQUE_ID_author632, ptr @__UNIQUE_ID_description634, ptr @__UNIQUE_ID_file630, ptr @__UNIQUE_ID_license631, ptr @__exitcall_nft_redir_module_exit, ptr @__initcall__kmod_nft_redir__629_285_nft_redir_module_init6, ptr @nft_redir_module_exit, ptr @nft_redir_ipv4_ops, ptr @.str, ptr @nft_redir_policy, ptr @nft_redir_ipv6_ops, ptr @nft_redir_inet_ops, ptr @.str.1], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_redir_ipv4_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_redir_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_redir_ipv6_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_redir_inet_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_redir_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_redir_ipv4_type) #4
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_redir_ipv6_type) #4
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_redir_inet_type) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_redir_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_redir_ipv4_type) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_redir_ipv6_type) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %call.i = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_redir_inet_type) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then6, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then6:                                         ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_redir_ipv4_type) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.then6, %if.end.cleanup.sink.split_crit_edge
  %nft_redir_ipv6_type.sink = phi ptr [ @nft_redir_ipv6_type, %if.then6 ], [ @nft_redir_ipv4_type, %if.end.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %if.then6 ], [ %call1, %if.end.cleanup.sink.split_crit_edge ]
  tail call void @nft_unregister_expr(ptr noundef nonnull %nft_redir_ipv6_type.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call.i, %if.end4.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_redir_ipv4_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %mr = alloca %struct.nf_nat_ipv4_multi_range_compat, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %mr) #4
  %0 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %mr, i32 0, i32 1
  %1 = call ptr @memset(ptr %mr, i32 0, i32 20)
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %data.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %mr, i32 0, i32 1, i32 0, i32 4
  %5 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %mr, i32 0, i32 1, i32 0, i32 3
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %arrayidx, align 2
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store2_noabort(i32 %8)
  store i16 %7, ptr %5, align 4
  %sreg_proto_max = getelementptr inbounds %struct.nft_redir, ptr %data.i, i32 0, i32 1
  %9 = ptrtoint ptr %sreg_proto_max to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sreg_proto_max, align 1
  %idxprom4 = zext i8 %10 to i32
  %arrayidx5 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom4
  %11 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx5, align 2
  %13 = ptrtoint ptr %4 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %4, align 2
  %14 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %0, align 4
  %or = or i32 %15, 2
  store i32 %or, ptr %0, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags11 = getelementptr inbounds %struct.nft_redir, ptr %data.i, i32 0, i32 2
  %16 = ptrtoint ptr %flags11 to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %flags11, align 2
  %conv = zext i16 %17 to i32
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %0, align 4
  %or15 = or i32 %19, %conv
  store i32 %or15, ptr %0, align 4
  %20 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pkt, align 4
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %22 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %state.i, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %23, align 4
  %conv.i = zext i8 %25 to i32
  %call17 = call i32 @nf_nat_redirect_ipv4(ptr noundef %21, ptr noundef nonnull %mr, i32 noundef %conv.i) #4
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call17, ptr %regs, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %mr) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_redir_init(ptr nocapture noundef readonly %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then:                                          ; preds = %entry
  %call2 = tail call i32 @nft_parse_register_load(ptr noundef nonnull %1, ptr noundef %data.i, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp = icmp slt i32 %call2, 0
  br i1 %cmp, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 2
  %2 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %3, null
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  %sreg_proto_max = getelementptr inbounds %struct.nft_redir, ptr %data.i, i32 0, i32 1
  %call8 = tail call i32 @nft_parse_register_load(ptr noundef nonnull %3, ptr noundef %sreg_proto_max, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.then6.cleanup_crit_edge, label %if.then6.if.end15_crit_edge

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end15

if.then6.cleanup_crit_edge:                       ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.i, align 2
  %sreg_proto_max13 = getelementptr inbounds %struct.nft_redir, ptr %data.i, i32 0, i32 1
  %6 = ptrtoint ptr %sreg_proto_max13 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %sreg_proto_max13, align 1
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then6.if.end15_crit_edge, %entry.if.end15_crit_edge
  %arrayidx16 = getelementptr ptr, ptr %tb, i32 3
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx16, align 4
  %tobool17.not = icmp eq ptr %8, null
  br i1 %tobool17.not, label %if.end15.if.end26_crit_edge, label %if.then18

if.end15.if.end26_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.then18:                                        ; preds = %if.end15
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %add.ptr.i.i, align 4
  %conv = trunc i32 %10 to i16
  %flags = getelementptr inbounds %struct.nft_redir, ptr %data.i, i32 0, i32 2
  %11 = ptrtoint ptr %flags to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv, ptr %flags, align 2
  %and = and i32 %10, 65408
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool23.not = icmp eq i32 %and, 0
  br i1 %tobool23.not, label %if.then18.if.end26_crit_edge, label %if.then18.cleanup_crit_edge

if.then18.cleanup_crit_edge:                      ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end26

if.end26:                                         ; preds = %if.then18.if.end26_crit_edge, %if.end15.if.end26_crit_edge
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %14 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %family, align 2
  %call27 = tail call i32 @nf_ct_netns_get(ptr noundef %13, i8 noundef zeroext %15) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.then18.cleanup_crit_edge, %if.then6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call27, %if.end26 ], [ %call2, %if.then.cleanup_crit_edge ], [ %call8, %if.then6.cleanup_crit_edge ], [ -22, %if.then18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_redir_ipv4_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext 2) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_redir_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.then:                                          ; preds = %entry
  %conv = zext i8 %1 to i32
  %call2 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end, label %if.then.nla_put_failure_crit_edge

if.then.nla_put_failure_crit_edge:                ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

if.end:                                           ; preds = %if.then
  %sreg_proto_max = getelementptr inbounds %struct.nft_redir, ptr %data.i, i32 0, i32 1
  %2 = ptrtoint ptr %sreg_proto_max to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sreg_proto_max, align 1
  %conv5 = zext i8 %3 to i32
  %call6 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 2, i32 noundef %conv5) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %if.end.if.end10_crit_edge, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end10

if.end10:                                         ; preds = %if.end.if.end10_crit_edge, %entry.if.end10_crit_edge
  %flags = getelementptr inbounds %struct.nft_redir, ptr %data.i, i32 0, i32 2
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %flags, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %5)
  %cmp.not = icmp eq i16 %5, 0
  br i1 %cmp.not, label %if.end10.cleanup_crit_edge, label %land.lhs.true

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end10
  %conv11 = zext i16 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv11, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool16.not = icmp eq i32 %call.i, 0
  br i1 %tobool16.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.nla_put_failure_crit_edge

land.lhs.true.nla_put_failure_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nla_put_failure:                                  ; preds = %land.lhs.true.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %if.then.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %land.lhs.true.cleanup_crit_edge, %if.end10.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end10.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_redir_validate(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr, ptr nocapture noundef readnone %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chain = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 2
  %0 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain, align 4
  %call = tail call i32 @nft_chain_validate_dependency(ptr noundef %1, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chain, align 4
  %call2 = tail call i32 @nft_chain_validate_hooks(ptr noundef %3, i32 noundef 9) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_redirect_ipv4(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

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

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_redir_ipv6_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %range = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range) #4
  %0 = call ptr @memset(ptr %range, i32 0, i32 44)
  %1 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %idxprom = zext i8 %2 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %arrayidx, align 2
  %min_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %5 = ptrtoint ptr %min_proto to i32
  call void @__asan_store2_noabort(i32 %5)
  store i16 %4, ptr %min_proto, align 4
  %sreg_proto_max = getelementptr inbounds %struct.nft_redir, ptr %data.i, i32 0, i32 1
  %6 = ptrtoint ptr %sreg_proto_max to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %sreg_proto_max, align 1
  %idxprom3 = zext i8 %7 to i32
  %arrayidx4 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %arrayidx4, align 2
  %max_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %10 = ptrtoint ptr %max_proto to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %9, ptr %max_proto, align 2
  %11 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %range, align 4
  %or = or i32 %12, 2
  store i32 %or, ptr %range, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %flags6 = getelementptr inbounds %struct.nft_redir, ptr %data.i, i32 0, i32 2
  %13 = ptrtoint ptr %flags6 to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %flags6, align 2
  %conv = zext i16 %14 to i32
  %15 = ptrtoint ptr %range to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %range, align 4
  %or8 = or i32 %16, %conv
  store i32 %or8, ptr %range, align 4
  %17 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %pkt, align 4
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %19 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %state.i, align 4
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %20, align 4
  %conv.i = zext i8 %22 to i32
  %call10 = call i32 @nf_nat_redirect_ipv6(ptr noundef %18, ptr noundef nonnull %range, i32 noundef %conv.i) #4
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call10, ptr %regs, align 4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_redir_ipv6_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext 10) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_redirect_ipv6(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_redir_inet_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %range.i = alloca %struct.nf_nat_range2, align 4
  %mr.i = alloca %struct.nf_nat_ipv4_multi_range_compat, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %0 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %pf.i, align 1
  %4 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i8 %3, label %land.end [
    i8 2, label %sw.bb
    i8 10, label %sw.bb1
  ]

sw.bb:                                            ; preds = %entry
  %data.i.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %mr.i) #4
  %5 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %mr.i, i32 0, i32 1
  %6 = call ptr @memset(ptr %mr.i, i32 0, i32 20)
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  br i1 %tobool.not.i, label %sw.bb.nft_redir_ipv4_eval.exit_crit_edge, label %if.then.i

sw.bb.nft_redir_ipv4_eval.exit_crit_edge:         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %nft_redir_ipv4_eval.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %9 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %mr.i, i32 0, i32 1, i32 0, i32 4
  %10 = getelementptr inbounds %struct.nf_nat_ipv4_multi_range_compat, ptr %mr.i, i32 0, i32 1, i32 0, i32 3
  %idxprom.i = zext i8 %8 to i32
  %arrayidx.i = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %arrayidx.i, align 2
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_store2_noabort(i32 %13)
  store i16 %12, ptr %10, align 4
  %sreg_proto_max.i = getelementptr inbounds %struct.nft_redir, ptr %data.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %sreg_proto_max.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %sreg_proto_max.i, align 1
  %idxprom4.i = zext i8 %15 to i32
  %arrayidx5.i = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom4.i
  %16 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %arrayidx5.i, align 2
  %18 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 %17, ptr %9, align 2
  %19 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %5, align 4
  %or.i = or i32 %20, 2
  store i32 %or.i, ptr %5, align 4
  br label %nft_redir_ipv4_eval.exit

nft_redir_ipv4_eval.exit:                         ; preds = %if.then.i, %sw.bb.nft_redir_ipv4_eval.exit_crit_edge
  %flags11.i = getelementptr inbounds %struct.nft_redir, ptr %data.i.i, i32 0, i32 2
  %21 = ptrtoint ptr %flags11.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %flags11.i, align 2
  %conv.i = zext i16 %22 to i32
  %23 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %5, align 4
  %or15.i = or i32 %24, %conv.i
  store i32 %or15.i, ptr %5, align 4
  %25 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %pkt, align 4
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %1, align 4
  %conv.i.i = zext i8 %28 to i32
  %call17.i = call i32 @nf_nat_redirect_ipv4(ptr noundef %26, ptr noundef nonnull %mr.i, i32 noundef %conv.i.i) #4
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %call17.i, ptr %regs, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %mr.i) #4
  br label %return

sw.bb1:                                           ; preds = %entry
  %data.i.i42 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range.i) #4
  %30 = call ptr @memset(ptr %range.i, i32 0, i32 44)
  %31 = ptrtoint ptr %data.i.i42 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %data.i.i42, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool.not.i43 = icmp eq i8 %32, 0
  br i1 %tobool.not.i43, label %sw.bb1.nft_redir_ipv6_eval.exit_crit_edge, label %if.then.i48

sw.bb1.nft_redir_ipv6_eval.exit_crit_edge:        ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %nft_redir_ipv6_eval.exit

if.then.i48:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  %idxprom.i44 = zext i8 %32 to i32
  %arrayidx.i45 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom.i44
  %33 = ptrtoint ptr %arrayidx.i45 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx.i45, align 2
  %min_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 3
  %35 = ptrtoint ptr %min_proto.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %34, ptr %min_proto.i, align 4
  %sreg_proto_max.i46 = getelementptr inbounds %struct.nft_redir, ptr %data.i.i42, i32 0, i32 1
  %36 = ptrtoint ptr %sreg_proto_max.i46 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %sreg_proto_max.i46, align 1
  %idxprom3.i = zext i8 %37 to i32
  %arrayidx4.i = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom3.i
  %38 = ptrtoint ptr %arrayidx4.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %arrayidx4.i, align 2
  %max_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 4
  %40 = ptrtoint ptr %max_proto.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %max_proto.i, align 2
  %41 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %range.i, align 4
  %or.i47 = or i32 %42, 2
  store i32 %or.i47, ptr %range.i, align 4
  br label %nft_redir_ipv6_eval.exit

nft_redir_ipv6_eval.exit:                         ; preds = %if.then.i48, %sw.bb1.nft_redir_ipv6_eval.exit_crit_edge
  %flags6.i = getelementptr inbounds %struct.nft_redir, ptr %data.i.i42, i32 0, i32 2
  %43 = ptrtoint ptr %flags6.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %flags6.i, align 2
  %conv.i49 = zext i16 %44 to i32
  %45 = ptrtoint ptr %range.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %range.i, align 4
  %or8.i = or i32 %46, %conv.i49
  store i32 %or8.i, ptr %range.i, align 4
  %47 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %pkt, align 4
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %1, align 4
  %conv.i.i51 = zext i8 %50 to i32
  %call10.i = call i32 @nf_nat_redirect_ipv6(ptr noundef %48, ptr noundef nonnull %range.i, i32 noundef %conv.i.i51) #4
  %51 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call10.i, ptr %regs, align 4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range.i) #4
  br label %return

land.end:                                         ; preds = %entry
  %.b41 = load i1, ptr @nft_redir_inet_eval.__already_done, align 1
  br i1 %.b41, label %land.end.return_crit_edge, label %if.then, !prof !41

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nft_redir_inet_eval.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 210, i32 noundef 9, ptr noundef null) #4
  br label %return

return:                                           ; preds = %if.then, %land.end.return_crit_edge, %nft_redir_ipv6_eval.exit, %nft_redir_ipv4_eval.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_redir_inet_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext 1) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 6)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_nft_redir__629_285_nft_redir_module_init6, !1, !"__initcall__kmod_nft_redir__629_285_nft_redir_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_redir.c", i32 285, i32 1}
!2 = !{ptr @__exitcall_nft_redir_module_exit, !3, !"__exitcall_nft_redir_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_redir.c", i32 286, i32 1}
!4 = !{ptr @__UNIQUE_ID_file630, !5, !"__UNIQUE_ID_file630", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_redir.c", i32 288, i32 1}
!6 = !{ptr @__UNIQUE_ID_license631, !5, !"__UNIQUE_ID_license631", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author632, !8, !"__UNIQUE_ID_author632", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_redir.c", i32 289, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias633, !10, !"__UNIQUE_ID_alias633", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_redir.c", i32 290, i32 1}
!11 = !{ptr @__UNIQUE_ID_description634, !12, !"__UNIQUE_ID_description634", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_redir.c", i32 291, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_redir.c", i32 141, i32 11}
!15 = !{ptr @nft_redir_ipv4_type, !16, !"nft_redir_ipv4_type", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_redir.c", i32 139, i32 29}
!17 = !{ptr @nft_redir_ipv4_ops, !18, !"nft_redir_ipv4_ops", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_redir.c", i32 129, i32 34}
!19 = !{ptr @nft_redir_policy, !20, !"nft_redir_policy", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_redir.c", i32 22, i32 32}
!21 = !{ptr @nft_redir_ipv6_type, !22, !"nft_redir_ipv6_type", i1 false, i1 false}
!22 = !{!"../net/netfilter/nft_redir.c", i32 188, i32 29}
!23 = !{ptr @nft_redir_ipv6_ops, !24, !"nft_redir_ipv6_ops", i1 false, i1 false}
!24 = !{!"../net/netfilter/nft_redir.c", i32 178, i32 34}
!25 = !{ptr @nft_redir_inet_type, !26, !"nft_redir_inet_type", i1 false, i1 false}
!26 = !{!"../net/netfilter/nft_redir.c", i32 230, i32 29}
!27 = !{ptr @nft_redir_inet_ops, !28, !"nft_redir_inet_ops", i1 false, i1 false}
!28 = !{!"../net/netfilter/nft_redir.c", i32 220, i32 34}
!29 = distinct !{null, !30, !"__already_done", i1 false, i1 false}
!30 = !{!"../net/netfilter/nft_redir.c", i32 210, i32 2}
!31 = !{ptr @.str.1, !30, !"<string literal>", i1 false, i1 false}
!32 = !{i32 1, !"wchar_size", i32 2}
!33 = !{i32 1, !"min_enum_size", i32 4}
!34 = !{i32 8, !"branch-target-enforcement", i32 0}
!35 = !{i32 8, !"sign-return-address", i32 0}
!36 = !{i32 8, !"sign-return-address-all", i32 0}
!37 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!38 = !{i32 7, !"uwtable", i32 1}
!39 = !{i32 7, !"frame-pointer", i32 2}
!40 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!41 = !{!"branch_weights", i32 2000, i32 1}
