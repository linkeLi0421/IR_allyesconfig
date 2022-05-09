; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_range.c_pt.bc'
source_filename = "../net/netfilter/nft_range.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.40 }
%union.anon.40 = type { i32 }
%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_range_expr = type { %struct.nft_data, %struct.nft_data, i8, i8, i8, [5 x i8] }
%struct.nft_data = type { %union.anon.118 }
%union.anon.118 = type { [4 x i32] }
%struct.nft_data_desc = type { i32, i32 }

@nft_range_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_range_eval, ptr null, i32 48, ptr @nft_range_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_range_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_range_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"range\00", [26 x i8] zeroinitializer }, align 32
@nft_range_policy = internal constant { [5 x %struct.nla_policy], [56 x i8] } { [5 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.40 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@nft_range_type = dso_local global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_range_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_range_policy, i32 4, i8 0, i8 0 }, section ".data..read_mostly", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"nft_range_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 137, i32 34 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 146, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [17 x i8] c"nft_range_policy\00", align 1
@___asan_gen_.8 = private constant [29 x i8] c"../net/netfilter/nft_range.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 43, i32 32 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @nft_range_ops, ptr @.str, ptr @nft_range_policy], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_range_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_range_policy to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nft_range_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr nocapture readnone %pkt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 5
  %0 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sreg, align 8
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %len = getelementptr inbounds %struct.nft_range_expr, ptr %data.i, i32 0, i32 3
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %len, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 @memcmp(ptr noundef %arrayidx, ptr noundef %data.i, i32 noundef %conv) #8
  %data_to = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %call7 = tail call i32 @memcmp(ptr noundef %arrayidx, ptr noundef %data_to, i32 noundef %conv) #8
  %op = getelementptr inbounds %struct.nft_range_expr, ptr %data.i, i32 0, i32 4
  %4 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load30 = load i8, ptr %op, align 2
  %5 = zext i8 %bf.load30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bf.load30, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb11
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp9 = icmp sgt i32 %call7, 0
  %or.cond = select i1 %cmp, i1 true, i1 %cmp9
  br i1 %or.cond, label %sw.bb.sw.epilog.sink.split_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb.sw.epilog.sink.split_crit_edge:             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %cmp12 = icmp sgt i32 %call1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call7)
  %cmp14 = icmp slt i32 %call7, 1
  %or.cond31 = select i1 %cmp12, i1 %cmp14, i1 false
  br i1 %or.cond31, label %sw.bb11.sw.epilog.sink.split_crit_edge, label %sw.bb11.sw.epilog_crit_edge

sw.bb11.sw.epilog_crit_edge:                      ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb11.sw.epilog.sink.split_crit_edge:           ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.sink.split

sw.epilog.sink.split:                             ; preds = %sw.bb11.sw.epilog.sink.split_crit_edge, %sw.bb.sw.epilog.sink.split_crit_edge
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -2, ptr %regs, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.epilog.sink.split, %sw.bb11.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_range_init(ptr nocapture noundef readnone %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #3 align 64 {
entry:
  %desc_from = alloca %struct.nft_data_desc, align 4
  %desc_to = alloca %struct.nft_data_desc, align 4
  %op = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc_from) #5
  %0 = ptrtoint ptr %desc_from to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %desc_from, align 4, !annotation !17
  %1 = getelementptr inbounds %struct.nft_data_desc, ptr %desc_from, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc_to) #5
  %3 = ptrtoint ptr %desc_to to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %desc_to, align 4, !annotation !17
  %4 = getelementptr inbounds %struct.nft_data_desc, ptr %desc_to, i32 0, i32 1
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %4, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %op) #5
  %6 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %op, align 4, !annotation !17
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %8, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %9 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %10, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 3
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %12, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 4
  %13 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %14, null
  br i1 %tobool8.not, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %call10 = call i32 @nft_data_init(ptr noundef null, ptr noundef %data.i, i32 noundef 16, ptr noundef nonnull %desc_from, ptr noundef nonnull %12) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %15 = ptrtoint ptr %desc_from to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %desc_from, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp13.not = icmp eq i32 %16, 0
  br i1 %cmp13.not, label %if.end15, label %if.end12.err1_crit_edge

if.end12.err1_crit_edge:                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #7
  br label %err1

if.end15:                                         ; preds = %if.end12
  %data_to = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %17 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx7, align 4
  %call17 = call i32 @nft_data_init(ptr noundef null, ptr noundef %data_to, i32 noundef 16, ptr noundef nonnull %desc_to, ptr noundef %18) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp18 = icmp slt i32 %call17, 0
  br i1 %cmp18, label %if.end15.err1_crit_edge, label %if.end20

if.end15.err1_crit_edge:                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %err1

if.end20:                                         ; preds = %if.end15
  %19 = ptrtoint ptr %desc_to to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %desc_to, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp22.not = icmp eq i32 %20, 0
  br i1 %cmp22.not, label %if.end24, label %if.end20.err2_crit_edge

if.end20.err2_crit_edge:                          ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end24:                                         ; preds = %if.end20
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %23 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp26.not = icmp eq i32 %22, %24
  br i1 %cmp26.not, label %if.end28, label %if.end24.err2_crit_edge

if.end24.err2_crit_edge:                          ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end28:                                         ; preds = %if.end24
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 5
  %call31 = call i32 @nft_parse_register_load(ptr noundef %26, ptr noundef %sreg, i32 noundef %22) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp32 = icmp slt i32 %call31, 0
  br i1 %cmp32, label %if.end28.err2_crit_edge, label %if.end34

if.end28.err2_crit_edge:                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end34:                                         ; preds = %if.end28
  %27 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx1, align 4
  %call36 = call i32 @nft_parse_u32_check(ptr noundef %28, i32 noundef 255, ptr noundef nonnull %op) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %cmp37 = icmp slt i32 %call36, 0
  br i1 %cmp37, label %if.end34.err2_crit_edge, label %if.end39

if.end34.err2_crit_edge:                          ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

if.end39:                                         ; preds = %if.end34
  %29 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %op, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %switch = icmp ult i32 %30, 2
  br i1 %switch, label %sw.epilog, label %if.end39.err2_crit_edge

if.end39.err2_crit_edge:                          ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  br label %err2

sw.epilog:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #7
  %op40 = getelementptr inbounds %struct.nft_range_expr, ptr %data.i, i32 0, i32 4
  %31 = trunc i32 %30 to i8
  %32 = ptrtoint ptr %op40 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %31, ptr %op40, align 2
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %1, align 4
  %conv = trunc i32 %34 to i8
  %len42 = getelementptr inbounds %struct.nft_range_expr, ptr %data.i, i32 0, i32 3
  %35 = ptrtoint ptr %len42 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv, ptr %len42, align 1
  br label %cleanup

err2:                                             ; preds = %if.end39.err2_crit_edge, %if.end34.err2_crit_edge, %if.end28.err2_crit_edge, %if.end24.err2_crit_edge, %if.end20.err2_crit_edge
  %err.0 = phi i32 [ %call31, %if.end28.err2_crit_edge ], [ %call36, %if.end34.err2_crit_edge ], [ -22, %if.end20.err2_crit_edge ], [ -22, %if.end24.err2_crit_edge ], [ -22, %if.end39.err2_crit_edge ]
  %36 = ptrtoint ptr %desc_to to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %desc_to, align 4
  call void @nft_data_release(ptr noundef %data_to, i32 noundef %37) #5
  br label %err1

err1:                                             ; preds = %err2, %if.end15.err1_crit_edge, %if.end12.err1_crit_edge
  %err.1 = phi i32 [ %call17, %if.end15.err1_crit_edge ], [ %err.0, %err2 ], [ -22, %if.end12.err1_crit_edge ]
  %38 = ptrtoint ptr %desc_from to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %desc_from, align 4
  call void @nft_data_release(ptr noundef %data.i, i32 noundef %39) #5
  br label %cleanup

cleanup:                                          ; preds = %err1, %sw.epilog, %if.end.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %err1 ], [ 0, %sw.epilog ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call10, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %op) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc_to) #5
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc_from) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_range_dump(ptr noundef %skb, ptr noundef %expr) #3 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 5
  %0 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sreg, align 8
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %op = getelementptr inbounds %struct.nft_range_expr, ptr %data.i, i32 0, i32 4
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %op, align 2
  %bf.cast = zext i8 %bf.load to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bf.cast, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_put_failure

if.end5:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.nft_range_expr, ptr %data.i, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 1
  %conv6 = zext i8 %5 to i32
  %call7 = call i32 @nft_data_dump(ptr noundef %skb, i32 noundef 3, ptr noundef %data.i, i32 noundef 0, i32 noundef %conv6) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end5.nla_put_failure_crit_edge, label %lor.lhs.false

if.end5.nla_put_failure_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %if.end5
  %data_to = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 1
  %conv10 = zext i8 %7 to i32
  %call11 = call i32 @nft_data_dump(ptr noundef %skb, i32 noundef 4, ptr noundef %data_to, i32 noundef 0, i32 noundef %conv10) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %lor.lhs.false.nla_put_failure_crit_edge, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_put_failure

nla_put_failure:                                  ; preds = %lor.lhs.false.nla_put_failure_crit_edge, %if.end5.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %lor.lhs.false.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %lor.lhs.false.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_data_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_load(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_u32_check(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_data_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_data_dump(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_range.c", i32 146, i32 11}
!2 = !{ptr @nft_range_type, !3, !"nft_range_type", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_range.c", i32 145, i32 22}
!4 = !{ptr @nft_range_ops, !5, !"nft_range_ops", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_range.c", i32 137, i32 34}
!6 = !{ptr @nft_range_policy, !7, !"nft_range_policy", i1 false, i1 false}
!7 = !{!"../net/netfilter/nft_range.c", i32 43, i32 32}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
