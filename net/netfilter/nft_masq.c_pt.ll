; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_masq.c_pt.bc'
source_filename = "../net/netfilter/nft_masq.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.28 }
%union.anon.28 = type { i32 }
%struct.nf_nat_range2 = type { i32, %union.nf_inet_addr, %union.nf_inet_addr, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto, %union.nf_conntrack_man_proto }
%union.nf_inet_addr = type { [4 x i32] }
%union.nf_conntrack_man_proto = type { i16 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }

@nft_masq_ipv4_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_masq_ipv4_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_masq_policy, i32 3, i8 2, i8 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_nft_masq__629_298_nft_masq_module_init6 = internal global ptr @nft_masq_module_init, section ".initcall6.init", align 4
@__exitcall_nft_masq_module_exit = internal global ptr @nft_masq_module_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file630 = internal constant [37 x i8] c"nft_masq.file=net/netfilter/nft_masq\00", section ".modinfo", align 1
@__UNIQUE_ID_license631 = internal constant [21 x i8] c"nft_masq.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author632 = internal constant [60 x i8] c"nft_masq.author=Arturo Borrero Gonzalez <arturo@debian.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias633 = internal constant [29 x i8] c"nft_masq.alias=nft-expr-masq\00", section ".modinfo", align 1
@__UNIQUE_ID_description634 = internal constant [70 x i8] c"nft_masq.description=Netfilter nftables masquerade expression support\00", section ".modinfo", align 1
@nft_masq_ipv6_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_masq_ipv6_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_masq_policy, i32 3, i8 10, i8 0 }, section ".data..read_mostly", align 4
@nft_masq_ipv6_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_masq_ipv6_eval, ptr null, i32 16, ptr @nft_masq_init, ptr null, ptr null, ptr @nft_masq_ipv6_destroy, ptr null, ptr @nft_masq_dump, ptr @nft_masq_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_masq_ipv6_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"masq\00", [27 x i8] zeroinitializer }, align 32
@nft_masq_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.28 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nft_masq_inet_type = internal global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_masq_inet_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_masq_policy, i32 3, i8 1, i8 0 }, section ".data..read_mostly", align 4
@nft_masq_inet_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_masq_inet_eval, ptr null, i32 16, ptr @nft_masq_init, ptr null, ptr null, ptr @nft_masq_inet_destroy, ptr null, ptr @nft_masq_dump, ptr @nft_masq_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_masq_inet_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_masq_inet_eval.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"net/netfilter/nft_masq.c\00", [39 x i8] zeroinitializer }, align 32
@nft_masq_ipv4_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_masq_ipv4_eval, ptr null, i32 16, ptr @nft_masq_init, ptr null, ptr null, ptr @nft_masq_ipv4_destroy, ptr null, ptr @nft_masq_dump, ptr @nft_masq_validate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_masq_ipv4_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 10]
@___asan_gen_.2 = private unnamed_addr constant [18 x i8] c"nft_masq_ipv6_ops\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 170, i32 34 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 182, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [16 x i8] c"nft_masq_policy\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 22, i32 32 }
@___asan_gen_.11 = private unnamed_addr constant [18 x i8] c"nft_masq_inet_ops\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 225, i32 34 }
@___asan_gen_.14 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 215, i32 2 }
@___asan_gen_.17 = private unnamed_addr constant [18 x i8] c"nft_masq_ipv4_ops\00", align 1
@___asan_gen_.18 = private constant [28 x i8] c"../net/netfilter/nft_masq.c\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.18, i32 124, i32 34 }
@llvm.compiler.used = appending global [14 x ptr] [ptr @__UNIQUE_ID_alias633, ptr @__UNIQUE_ID_author632, ptr @__UNIQUE_ID_description634, ptr @__UNIQUE_ID_file630, ptr @__UNIQUE_ID_license631, ptr @__exitcall_nft_masq_module_exit, ptr @__initcall__kmod_nft_masq__629_298_nft_masq_module_init6, ptr @nft_masq_module_exit, ptr @nft_masq_ipv6_ops, ptr @.str, ptr @nft_masq_policy, ptr @nft_masq_inet_ops, ptr @.str.1, ptr @nft_masq_ipv4_ops], section "llvm.metadata"
@0 = internal global [6 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_masq_ipv6_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_masq_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_masq_inet_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_masq_ipv4_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @nft_masq_module_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_masq_ipv6_type) #4
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_masq_inet_type) #4
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_masq_ipv4_type) #4
  tail call void @nf_nat_masquerade_inet_unregister_notifiers() #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_unregister_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_nat_masquerade_inet_unregister_notifiers() local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_masq_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_masq_ipv6_type) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i21 = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_masq_inet_type) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %cmp2 = icmp slt i32 %call.i21, 0
  br i1 %cmp2, label %if.end.cleanup.sink.split_crit_edge, label %if.end4

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @nft_register_expr(ptr noundef nonnull @nft_masq_ipv4_type) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp6 = icmp slt i32 %call5, 0
  br i1 %cmp6, label %if.end4.cleanup.sink.split.sink.split_crit_edge, label %if.end8

if.end4.cleanup.sink.split.sink.split_crit_edge:  ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.sink.split

if.end8:                                          ; preds = %if.end4
  %call9 = tail call i32 @nf_nat_masquerade_inet_register_notifiers() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp10 = icmp slt i32 %call9, 0
  br i1 %cmp10, label %if.then11, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_masq_ipv6_type) #4
  br label %cleanup.sink.split.sink.split

cleanup.sink.split.sink.split:                    ; preds = %if.then11, %if.end4.cleanup.sink.split.sink.split_crit_edge
  %nft_masq_ipv4_type.sink.ph = phi ptr [ @nft_masq_ipv4_type, %if.then11 ], [ @nft_masq_ipv6_type, %if.end4.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ %call9, %if.then11 ], [ %call5, %if.end4.cleanup.sink.split.sink.split_crit_edge ]
  tail call void @nft_unregister_expr(ptr noundef nonnull @nft_masq_inet_type) #4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %if.end.cleanup.sink.split_crit_edge
  %nft_masq_ipv4_type.sink = phi ptr [ @nft_masq_ipv6_type, %if.end.cleanup.sink.split_crit_edge ], [ %nft_masq_ipv4_type.sink.ph, %cleanup.sink.split.sink.split ]
  %retval.0.ph = phi i32 [ %call.i21, %if.end.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  tail call void @nft_unregister_expr(ptr noundef nonnull %nft_masq_ipv4_type.sink) #4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %entry.cleanup_crit_edge ], [ %call9, %if.end8.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_masq_ipv6_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %range = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range) #4
  %0 = getelementptr inbounds i8, ptr %range, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data.i, align 4
  %4 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %range, align 4
  %sreg_proto_min = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %5 = ptrtoint ptr %sreg_proto_min to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sreg_proto_min, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %min_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %9 = ptrtoint ptr %min_proto to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %min_proto, align 4
  %sreg_proto_max = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %sreg_proto_max to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sreg_proto_max, align 1
  %idxprom4 = zext i8 %11 to i32
  %arrayidx5 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom4
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx5, align 2
  %max_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %14 = ptrtoint ptr %max_proto to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %max_proto, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pkt, align 4
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state.i, align 4
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %out.i, align 4
  %call8 = call i32 @nf_nat_masquerade_ipv6(ptr noundef %16, ptr noundef nonnull %range, ptr noundef %20) #4
  %21 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call8, ptr %regs, align 4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_masq_init(ptr nocapture noundef readonly %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.then:                                          ; preds = %entry
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %3)
  %tobool4.not = icmp ult i32 %3, 128
  br i1 %tobool4.not, label %if.then.if.end6_crit_edge, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 2
  %5 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %6, null
  br i1 %tobool8.not, label %if.end6.if.end25_crit_edge, label %if.then9

if.end6.if.end25_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then9:                                         ; preds = %if.end6
  %sreg_proto_min = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %call11 = tail call i32 @nft_parse_register_load(ptr noundef nonnull %6, ptr noundef %sreg_proto_min, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp = icmp slt i32 %call11, 0
  br i1 %cmp, label %if.then9.cleanup_crit_edge, label %if.end13

if.then9.cleanup_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end13:                                         ; preds = %if.then9
  %arrayidx14 = getelementptr ptr, ptr %tb, i32 3
  %7 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %8, null
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end13
  %sreg_proto_max = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %call18 = tail call i32 @nft_parse_register_load(ptr noundef nonnull %8, ptr noundef %sreg_proto_max, i32 noundef 16) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %cmp19 = icmp slt i32 %call18, 0
  br i1 %cmp19, label %if.then16.cleanup_crit_edge, label %if.then16.if.end25_crit_edge

if.then16.if.end25_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end25

if.then16.cleanup_crit_edge:                      ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.else:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #6
  %9 = ptrtoint ptr %sreg_proto_min to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sreg_proto_min, align 4
  %sreg_proto_max23 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %11 = ptrtoint ptr %sreg_proto_max23 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %sreg_proto_max23, align 1
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then16.if.end25_crit_edge, %if.end6.if.end25_crit_edge
  %12 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ctx, align 4
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %14 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %family, align 2
  %call26 = tail call i32 @nf_ct_netns_get(ptr noundef %13, i8 noundef zeroext %15) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end25, %if.then16.cleanup_crit_edge, %if.then9.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ %call26, %if.end25 ], [ -22, %if.then.cleanup_crit_edge ], [ %call11, %if.then9.cleanup_crit_edge ], [ %call18, %if.then16.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_masq_ipv6_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext 10) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_masq_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #4
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 1, i32 noundef 4, ptr noundef nonnull %tmp.i) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.nla_put_failure_crit_edge

land.lhs.true.nla_put_failure_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %sreg_proto_min = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %3 = ptrtoint ptr %sreg_proto_min to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sreg_proto_min, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool3.not = icmp eq i8 %4, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.then4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then4:                                         ; preds = %if.end
  %conv = zext i8 %4 to i32
  %call6 = call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 2, i32 noundef %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.then4.nla_put_failure_crit_edge

if.then4.nla_put_failure_crit_edge:               ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %if.then4
  %sreg_proto_max = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %5 = ptrtoint ptr %sreg_proto_max to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sreg_proto_max, align 1
  %conv8 = zext i8 %6 to i32
  %call9 = call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 3, i32 noundef %conv8) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

nla_put_failure:                                  ; preds = %lor.lhs.false.nla_put_failure_crit_edge, %if.then4.nla_put_failure_crit_edge, %land.lhs.true.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_masq_validate(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr, ptr nocapture noundef readnone %data) #2 align 64 {
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
  %call2 = tail call i32 @nft_chain_validate_hooks(ptr noundef %3, i32 noundef 16) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_masquerade_ipv6(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
define internal void @nft_masq_inet_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %range.i42 = alloca %struct.nf_nat_range2, align 4
  %range.i = alloca %struct.nf_nat_range2, align 4
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
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range.i) #4
  %5 = getelementptr inbounds i8, ptr %range.i, i32 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 40)
  %7 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data.i.i, align 4
  %9 = ptrtoint ptr %range.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %range.i, align 4
  %sreg_proto_min.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %10 = ptrtoint ptr %sreg_proto_min.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sreg_proto_min.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %sw.bb.nft_masq_ipv4_eval.exit_crit_edge, label %if.then.i

sw.bb.nft_masq_ipv4_eval.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %nft_masq_ipv4_eval.exit

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %idxprom.i = zext i8 %11 to i32
  %arrayidx.i = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom.i
  %12 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx.i, align 2
  %min_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 3
  %14 = ptrtoint ptr %min_proto.i to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %min_proto.i, align 4
  %sreg_proto_max.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %15 = ptrtoint ptr %sreg_proto_max.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %sreg_proto_max.i, align 1
  %idxprom4.i = zext i8 %16 to i32
  %arrayidx5.i = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom4.i
  %17 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx5.i, align 2
  %max_proto.i = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i, i32 0, i32 4
  %19 = ptrtoint ptr %max_proto.i to i32
  call void @__asan_store2_noabort(i32 %19)
  store i16 %18, ptr %max_proto.i, align 2
  br label %nft_masq_ipv4_eval.exit

nft_masq_ipv4_eval.exit:                          ; preds = %if.then.i, %sw.bb.nft_masq_ipv4_eval.exit_crit_edge
  %20 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %pkt, align 4
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %1, align 4
  %conv.i.i = zext i8 %23 to i32
  %out.i.i = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 3
  %24 = ptrtoint ptr %out.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %out.i.i, align 4
  %call9.i = call i32 @nf_nat_masquerade_ipv4(ptr noundef %21, i32 noundef %conv.i.i, ptr noundef nonnull %range.i, ptr noundef %25) #4
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call9.i, ptr %regs, align 4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range.i) #4
  br label %return

sw.bb1:                                           ; preds = %entry
  %data.i.i43 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range.i42) #4
  %27 = getelementptr inbounds i8, ptr %range.i42, i32 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 40)
  %29 = ptrtoint ptr %data.i.i43 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %data.i.i43, align 4
  %31 = ptrtoint ptr %range.i42 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %range.i42, align 4
  %sreg_proto_min.i44 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %32 = ptrtoint ptr %sreg_proto_min.i44 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %sreg_proto_min.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i45 = icmp eq i8 %33, 0
  br i1 %tobool.not.i45, label %sw.bb1.nft_masq_ipv6_eval.exit_crit_edge, label %if.then.i53

sw.bb1.nft_masq_ipv6_eval.exit_crit_edge:         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  br label %nft_masq_ipv6_eval.exit

if.then.i53:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #6
  %idxprom.i46 = zext i8 %33 to i32
  %arrayidx.i47 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom.i46
  %34 = ptrtoint ptr %arrayidx.i47 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %arrayidx.i47, align 2
  %min_proto.i48 = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i42, i32 0, i32 3
  %36 = ptrtoint ptr %min_proto.i48 to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %35, ptr %min_proto.i48, align 4
  %sreg_proto_max.i49 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %37 = ptrtoint ptr %sreg_proto_max.i49 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %sreg_proto_max.i49, align 1
  %idxprom4.i50 = zext i8 %38 to i32
  %arrayidx5.i51 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom4.i50
  %39 = ptrtoint ptr %arrayidx5.i51 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %arrayidx5.i51, align 2
  %max_proto.i52 = getelementptr inbounds %struct.nf_nat_range2, ptr %range.i42, i32 0, i32 4
  %41 = ptrtoint ptr %max_proto.i52 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %max_proto.i52, align 2
  br label %nft_masq_ipv6_eval.exit

nft_masq_ipv6_eval.exit:                          ; preds = %if.then.i53, %sw.bb1.nft_masq_ipv6_eval.exit_crit_edge
  %42 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pkt, align 4
  %out.i.i55 = getelementptr inbounds %struct.nf_hook_state, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %out.i.i55 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %out.i.i55, align 4
  %call8.i = call i32 @nf_nat_masquerade_ipv6(ptr noundef %43, ptr noundef nonnull %range.i42, ptr noundef %45) #4
  %46 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call8.i, ptr %regs, align 4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range.i42) #4
  br label %return

land.end:                                         ; preds = %entry
  %.b41 = load i1, ptr @nft_masq_inet_eval.__already_done, align 1
  br i1 %.b41, label %land.end.return_crit_edge, label %if.then, !prof !41

land.end.return_crit_edge:                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.then:                                          ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nft_masq_inet_eval.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 215, i32 noundef 9, ptr noundef null) #4
  br label %return

return:                                           ; preds = %if.then, %land.end.return_crit_edge, %nft_masq_ipv6_eval.exit, %nft_masq_ipv4_eval.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_masq_inet_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext 1) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_masq_ipv4_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %range = alloca %struct.nf_nat_range2, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %range) #4
  %0 = getelementptr inbounds i8, ptr %range, i32 4
  %1 = call ptr @memset(ptr %0, i32 0, i32 40)
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data.i, align 4
  %4 = ptrtoint ptr %range to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %range, align 4
  %sreg_proto_min = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %5 = ptrtoint ptr %sreg_proto_min to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %sreg_proto_min, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %idxprom = zext i8 %6 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %arrayidx, align 2
  %min_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 3
  %9 = ptrtoint ptr %min_proto to i32
  call void @__asan_store2_noabort(i32 %9)
  store i16 %8, ptr %min_proto, align 4
  %sreg_proto_max = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %10 = ptrtoint ptr %sreg_proto_max to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sreg_proto_max, align 1
  %idxprom4 = zext i8 %11 to i32
  %arrayidx5 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom4
  %12 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %arrayidx5, align 2
  %max_proto = getelementptr inbounds %struct.nf_nat_range2, ptr %range, i32 0, i32 4
  %14 = ptrtoint ptr %max_proto to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %max_proto, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %15 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %pkt, align 4
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %17 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %state.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %18, align 4
  %conv.i = zext i8 %20 to i32
  %out.i = getelementptr inbounds %struct.nf_hook_state, ptr %18, i32 0, i32 3
  %21 = ptrtoint ptr %out.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %out.i, align 4
  %call9 = call i32 @nf_nat_masquerade_ipv4(ptr noundef %16, i32 noundef %conv.i, ptr noundef nonnull %range, ptr noundef %22) #4
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %call9, ptr %regs, align 4
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %range) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_masquerade_ipv4(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_masq_ipv4_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readnone %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  tail call void @nf_ct_netns_put(ptr noundef %1, i8 noundef zeroext 2) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_register_expr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nf_nat_masquerade_inet_register_notifiers() local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !28, !30}
!llvm.module.flags = !{!32, !33, !34, !35, !36, !37, !38, !39}
!llvm.ident = !{!40}

!0 = !{ptr @__initcall__kmod_nft_masq__629_298_nft_masq_module_init6, !1, !"__initcall__kmod_nft_masq__629_298_nft_masq_module_init6", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_masq.c", i32 298, i32 1}
!2 = !{ptr @__exitcall_nft_masq_module_exit, !3, !"__exitcall_nft_masq_module_exit", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_masq.c", i32 299, i32 1}
!4 = !{ptr @__UNIQUE_ID_file630, !5, !"__UNIQUE_ID_file630", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_masq.c", i32 301, i32 1}
!6 = !{ptr @__UNIQUE_ID_license631, !5, !"__UNIQUE_ID_license631", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author632, !8, !"__UNIQUE_ID_author632", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_masq.c", i32 302, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias633, !10, !"__UNIQUE_ID_alias633", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_masq.c", i32 303, i32 1}
!11 = !{ptr @__UNIQUE_ID_description634, !12, !"__UNIQUE_ID_description634", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_masq.c", i32 304, i32 1}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_masq.c", i32 182, i32 11}
!15 = !{ptr @nft_masq_ipv6_type, !16, !"nft_masq_ipv6_type", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_masq.c", i32 180, i32 29}
!17 = !{ptr @nft_masq_ipv6_ops, !18, !"nft_masq_ipv6_ops", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_masq.c", i32 170, i32 34}
!19 = !{ptr @nft_masq_policy, !20, !"nft_masq_policy", i1 false, i1 false}
!20 = !{!"../net/netfilter/nft_masq.c", i32 22, i32 32}
!21 = !{ptr @nft_masq_inet_type, !22, !"nft_masq_inet_type", i1 false, i1 false}
!22 = !{!"../net/netfilter/nft_masq.c", i32 235, i32 29}
!23 = !{ptr @nft_masq_inet_ops, !24, !"nft_masq_inet_ops", i1 false, i1 false}
!24 = !{!"../net/netfilter/nft_masq.c", i32 225, i32 34}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../net/netfilter/nft_masq.c", i32 215, i32 2}
!27 = !{ptr @.str.1, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @nft_masq_ipv4_type, !29, !"nft_masq_ipv4_type", i1 false, i1 false}
!29 = !{!"../net/netfilter/nft_masq.c", i32 134, i32 29}
!30 = !{ptr @nft_masq_ipv4_ops, !31, !"nft_masq_ipv4_ops", i1 false, i1 false}
!31 = !{!"../net/netfilter/nft_masq.c", i32 124, i32 34}
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
