; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_bitwise.c_pt.bc'
source_filename = "../net/netfilter/nft_bitwise.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.40 }
%union.anon.40 = type { i32 }
%struct.nft_data = type { %union.anon.118 }
%union.anon.118 = type { [4 x i32] }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_bitwise = type { i8, i8, i8, i8, [4 x i8], %struct.nft_data, %struct.nft_data, %struct.nft_data }
%struct.nft_data_desc = type { i32, i32 }
%struct.nft_bitwise_fast_expr = type { i32, i32, i8, i8 }
%struct.anon.119 = type { ptr, ptr }
%struct.nft_regs_track = type { [20 x %struct.anon.119], ptr, ptr }
%struct.nft_offload_ctx = type { %struct.anon.120, i32, ptr, [24 x %struct.nft_offload_reg] }
%struct.anon.120 = type { i32, i16, i8 }
%struct.nft_offload_reg = type { i32, i32, i32, i32, i32, [4 x i8], %struct.nft_data, %struct.nft_data }

@nft_bitwise_type = dso_local global %struct.nft_expr_type { ptr @nft_bitwise_select_ops, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_bitwise_policy, i32 7, i8 0, i8 0 }, section ".data..read_mostly", align 4
@nft_bitwise_fast_ops = dso_local constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr null, ptr null, i32 24, ptr @nft_bitwise_fast_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_bitwise_fast_dump, ptr null, ptr @nft_bitwise_fast_reduce, ptr null, ptr @nft_bitwise_fast_offload, ptr null, ptr null, ptr @nft_bitwise_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"bitwise\00", [24 x i8] zeroinitializer }, align 32
@nft_bitwise_policy = internal constant { [8 x %struct.nla_policy], [32 x i8] } { [8 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.40 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nft_bitwise_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_bitwise_eval, ptr null, i32 64, ptr @nft_bitwise_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_bitwise_dump, ptr null, ptr @nft_bitwise_reduce, ptr null, ptr @nft_bitwise_offload, ptr null, ptr null, ptr @nft_bitwise_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@zero = internal global { %struct.nft_data, [16 x i8] } zeroinitializer, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.3 = private unnamed_addr constant [21 x i8] c"nft_bitwise_fast_ops\00", align 1
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 464, i32 27 }
@___asan_gen_.6 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 501, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [19 x i8] c"nft_bitwise_policy\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 83, i32 32 }
@___asan_gen_.12 = private unnamed_addr constant [16 x i8] c"nft_bitwise_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 320, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [5 x i8] c"zero\00", align 1
@___asan_gen_.16 = private constant [31 x i8] c"../net/netfilter/nft_bitwise.c\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.16, i32 260, i32 24 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @nft_bitwise_fast_ops, ptr @.str, ptr @nft_bitwise_policy, ptr @nft_bitwise_ops, ptr @zero], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_bitwise_fast_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_bitwise_policy to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_bitwise_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zero to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_bitwise_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr nocapture readnone %pkt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 8
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %dreg = getelementptr inbounds %struct.nft_bitwise, ptr %data.i, i32 0, i32 1
  %2 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dreg, align 1
  %idxprom1 = zext i8 %3 to i32
  %arrayidx2 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom1
  %op = getelementptr inbounds %struct.nft_bitwise, ptr %data.i, i32 0, i32 2
  %4 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load15 = load i8, ptr %op, align 2
  %5 = zext i8 %bf.load15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bf.load15, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb3
    i8 2, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %len.i = getelementptr inbounds %struct.nft_bitwise, ptr %data.i, i32 0, i32 3
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %cmp17.not.i = icmp eq i8 %7, 0
  br i1 %cmp17.not.i, label %sw.bb.sw.epilog_crit_edge, label %for.body.lr.ph.i

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.lr.ph.i:                                 ; preds = %sw.bb
  %mask.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %xor.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr i32, ptr %arrayidx, i32 %i.018.i
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i, align 4
  %arrayidx2.i = getelementptr [4 x i32], ptr %mask.i, i32 0, i32 %i.018.i
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2.i, align 4
  %and.i = and i32 %11, %9
  %arrayidx3.i = getelementptr [4 x i32], ptr %xor.i, i32 0, i32 %i.018.i
  %12 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx3.i, align 4
  %xor4.i = xor i32 %and.i, %13
  %arrayidx5.i = getelementptr i32, ptr %arrayidx2, i32 %i.018.i
  %14 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %xor4.i, ptr %arrayidx5.i, align 4
  %inc.i = add nuw nsw i32 %i.018.i, 1
  %15 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %len.i, align 1
  %conv.i = zext i8 %16 to i32
  %sub.i = add nuw nsw i32 %conv.i, 3
  %div13.i = lshr i32 %sub.i, 2
  %cmp.i = icmp ult i32 %inc.i, %div13.i
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.sw.epilog_crit_edge

for.body.i.sw.epilog_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

sw.bb3:                                           ; preds = %entry
  %data.i16 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 6
  %17 = ptrtoint ptr %data.i16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data.i16, align 8
  %len.i17 = getelementptr inbounds %struct.nft_bitwise, ptr %data.i, i32 0, i32 3
  %19 = ptrtoint ptr %len.i17 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %len.i17, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %cmp.not17.i = icmp eq i8 %20, 0
  br i1 %cmp.not17.i, label %sw.bb3.sw.epilog_crit_edge, label %for.body.lr.ph.i20

sw.bb3.sw.epilog_crit_edge:                       ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.lr.ph.i20:                               ; preds = %sw.bb3
  %conv.i18 = zext i8 %20 to i32
  %sub.i19 = add nuw nsw i32 %conv.i18, 3
  %div16.i = lshr i32 %sub.i19, 2
  %sub8.i = sub i32 32, %18
  br label %for.body.i24

for.body.i24:                                     ; preds = %for.body.i24.for.body.i24_crit_edge, %for.body.lr.ph.i20
  %carry.019.i = phi i32 [ 0, %for.body.lr.ph.i20 ], [ %shr.i, %for.body.i24.for.body.i24_crit_edge ]
  %i.018.i21 = phi i32 [ %div16.i, %for.body.lr.ph.i20 ], [ %sub2.i, %for.body.i24.for.body.i24_crit_edge ]
  %sub2.i = add nsw i32 %i.018.i21, -1
  %arrayidx3.i22 = getelementptr i32, ptr %arrayidx, i32 %sub2.i
  %21 = ptrtoint ptr %arrayidx3.i22 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx3.i22, align 4
  %shl.i = shl i32 %22, %18
  %or.i = or i32 %shl.i, %carry.019.i
  %arrayidx5.i23 = getelementptr i32, ptr %arrayidx2, i32 %sub2.i
  %23 = ptrtoint ptr %arrayidx5.i23 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i, ptr %arrayidx5.i23, align 4
  %24 = load i32, ptr %arrayidx3.i22, align 4
  %shr.i = lshr i32 %24, %sub8.i
  %cmp.not.i = icmp eq i32 %sub2.i, 0
  br i1 %cmp.not.i, label %for.body.i24.sw.epilog_crit_edge, label %for.body.i24.for.body.i24_crit_edge

for.body.i24.for.body.i24_crit_edge:              ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i24

for.body.i24.sw.epilog_crit_edge:                 ; preds = %for.body.i24
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %data.i25 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 6
  %25 = ptrtoint ptr %data.i25 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data.i25, align 8
  %len.i26 = getelementptr inbounds %struct.nft_bitwise, ptr %data.i, i32 0, i32 3
  %27 = ptrtoint ptr %len.i26 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %len.i26, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %cmp17.not.i27 = icmp eq i8 %28, 0
  br i1 %cmp17.not.i27, label %sw.bb4.sw.epilog_crit_edge, label %for.body.lr.ph.i28

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.lr.ph.i28:                               ; preds = %sw.bb4
  %sub5.i = sub i32 32, %26
  br label %for.body.i41

for.body.i41:                                     ; preds = %for.body.i41.for.body.i41_crit_edge, %for.body.lr.ph.i28
  %carry.019.i29 = phi i32 [ 0, %for.body.lr.ph.i28 ], [ %shl.i35, %for.body.i41.for.body.i41_crit_edge ]
  %i.018.i30 = phi i32 [ 0, %for.body.lr.ph.i28 ], [ %inc.i36, %for.body.i41.for.body.i41_crit_edge ]
  %arrayidx2.i31 = getelementptr i32, ptr %arrayidx, i32 %i.018.i30
  %29 = ptrtoint ptr %arrayidx2.i31 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx2.i31, align 4
  %shr.i32 = lshr i32 %30, %26
  %or.i33 = or i32 %shr.i32, %carry.019.i29
  %arrayidx3.i34 = getelementptr i32, ptr %arrayidx2, i32 %i.018.i30
  %31 = ptrtoint ptr %arrayidx3.i34 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or.i33, ptr %arrayidx3.i34, align 4
  %32 = load i32, ptr %arrayidx2.i31, align 4
  %shl.i35 = shl i32 %32, %sub5.i
  %inc.i36 = add nuw nsw i32 %i.018.i30, 1
  %33 = ptrtoint ptr %len.i26 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %len.i26, align 1
  %conv.i37 = zext i8 %34 to i32
  %sub.i38 = add nuw nsw i32 %conv.i37, 3
  %div13.i39 = lshr i32 %sub.i38, 2
  %cmp.i40 = icmp ult i32 %inc.i36, %div13.i39
  br i1 %cmp.i40, label %for.body.i41.for.body.i41_crit_edge, label %for.body.i41.sw.epilog_crit_edge

for.body.i41.sw.epilog_crit_edge:                 ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

for.body.i41.for.body.i41_crit_edge:              ; preds = %for.body.i41
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i41

sw.epilog:                                        ; preds = %for.body.i41.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %for.body.i24.sw.epilog_crit_edge, %sw.bb3.sw.epilog_crit_edge, %for.body.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_bitwise_fast_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  %desc.i44 = alloca %struct.nft_data_desc, align 4
  %data.i45 = alloca %struct.nft_data, align 8
  %desc.i = alloca %struct.nft_data_desc, align 4
  %data.i43 = alloca %struct.nft_data, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %call1 = tail call i32 @nft_parse_register_load(ptr noundef %1, ptr noundef %sreg, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %tb, i32 2
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx2, align 4
  %dreg = getelementptr inbounds %struct.nft_bitwise_fast_expr, ptr %data.i, i32 0, i32 3
  %call3 = tail call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %3, ptr noundef %dreg, ptr noundef null, i32 noundef 0, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 7
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx7, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.end9, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end6
  %arrayidx10 = getelementptr ptr, ptr %tb, i32 4
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx10, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.end9.cleanup_crit_edge, label %lor.lhs.false

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end9
  %arrayidx12 = getelementptr ptr, ptr %tb, i32 5
  %8 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %9, null
  br i1 %tobool13.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end15

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc.i) #9
  %10 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %desc.i, align 4, !annotation !21
  %11 = getelementptr inbounds %struct.nft_data_desc, ptr %desc.i, i32 0, i32 1
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 -1, ptr %11, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data.i43) #9
  %13 = call ptr @memset(ptr %data.i43, i32 255, i32 16)
  %call.i = call i32 @nft_data_init(ptr noundef null, ptr noundef nonnull %data.i43, i32 noundef 16, ptr noundef nonnull %desc.i, ptr noundef nonnull %7) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %nft_bitwise_extract_u32_data.exit.thread, label %if.end.i

nft_bitwise_extract_u32_data.exit.thread:         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i43) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc.i) #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end15
  %14 = ptrtoint ptr %desc.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %desc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp1.not.i = icmp eq i32 %15, 0
  br i1 %cmp1.not.i, label %lor.lhs.false.i, label %if.end.i.nft_bitwise_extract_u32_data.exit.thread59_crit_edge

if.end.i.nft_bitwise_extract_u32_data.exit.thread59_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_bitwise_extract_u32_data.exit.thread59

lor.lhs.false.i:                                  ; preds = %if.end.i
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %17)
  %cmp2.not.i = icmp eq i32 %17, 4
  br i1 %cmp2.not.i, label %if.end20, label %lor.lhs.false.i.nft_bitwise_extract_u32_data.exit.thread59_crit_edge

lor.lhs.false.i.nft_bitwise_extract_u32_data.exit.thread59_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_bitwise_extract_u32_data.exit.thread59

nft_bitwise_extract_u32_data.exit.thread59:       ; preds = %lor.lhs.false.i.nft_bitwise_extract_u32_data.exit.thread59_crit_edge, %if.end.i.nft_bitwise_extract_u32_data.exit.thread59_crit_edge
  call void @nft_data_release(ptr noundef nonnull %data.i43, i32 noundef %15) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i43) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc.i) #9
  br label %cleanup

if.end20:                                         ; preds = %lor.lhs.false.i
  %18 = ptrtoint ptr %data.i43 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data.i43, align 8
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %data.i, align 4
  call void @nft_data_release(ptr noundef nonnull %data.i43, i32 noundef 0) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i43) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc.i) #9
  %21 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx12, align 4
  %xor = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc.i44) #9
  %23 = ptrtoint ptr %desc.i44 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %desc.i44, align 4, !annotation !21
  %24 = getelementptr inbounds %struct.nft_data_desc, ptr %desc.i44, i32 0, i32 1
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1, ptr %24, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data.i45) #9
  %26 = call ptr @memset(ptr %data.i45, i32 255, i32 16)
  %call.i46 = call i32 @nft_data_init(ptr noundef null, ptr noundef nonnull %data.i45, i32 noundef 16, ptr noundef nonnull %desc.i44, ptr noundef %22) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i46)
  %cmp.i47 = icmp slt i32 %call.i46, 0
  br i1 %cmp.i47, label %if.end20.nft_bitwise_extract_u32_data.exit56_crit_edge, label %if.end.i49

if.end20.nft_bitwise_extract_u32_data.exit56_crit_edge: ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_bitwise_extract_u32_data.exit56

if.end.i49:                                       ; preds = %if.end20
  %27 = ptrtoint ptr %desc.i44 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %desc.i44, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %cmp1.not.i48 = icmp eq i32 %28, 0
  br i1 %cmp1.not.i48, label %lor.lhs.false.i51, label %if.end.i49.err5.i54_crit_edge

if.end.i49.err5.i54_crit_edge:                    ; preds = %if.end.i49
  call void @__sanitizer_cov_trace_pc() #11
  br label %err5.i54

lor.lhs.false.i51:                                ; preds = %if.end.i49
  %29 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %30)
  %cmp2.not.i50 = icmp eq i32 %30, 4
  br i1 %cmp2.not.i50, label %if.end4.i52, label %lor.lhs.false.i51.err5.i54_crit_edge

lor.lhs.false.i51.err5.i54_crit_edge:             ; preds = %lor.lhs.false.i51
  call void @__sanitizer_cov_trace_pc() #11
  br label %err5.i54

if.end4.i52:                                      ; preds = %lor.lhs.false.i51
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %data.i45 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %data.i45, align 8
  %33 = ptrtoint ptr %xor to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %xor, align 4
  br label %err5.i54

err5.i54:                                         ; preds = %if.end4.i52, %lor.lhs.false.i51.err5.i54_crit_edge, %if.end.i49.err5.i54_crit_edge
  %err.0.i53 = phi i32 [ %call.i46, %if.end4.i52 ], [ -22, %lor.lhs.false.i51.err5.i54_crit_edge ], [ -22, %if.end.i49.err5.i54_crit_edge ]
  call void @nft_data_release(ptr noundef nonnull %data.i45, i32 noundef %28) #9
  br label %nft_bitwise_extract_u32_data.exit56

nft_bitwise_extract_u32_data.exit56:              ; preds = %err5.i54, %if.end20.nft_bitwise_extract_u32_data.exit56_crit_edge
  %retval.0.i55 = phi i32 [ %err.0.i53, %err5.i54 ], [ %call.i46, %if.end20.nft_bitwise_extract_u32_data.exit56_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data.i45) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc.i44) #9
  %34 = call i32 @llvm.smin.i32(i32 %retval.0.i55, i32 0)
  br label %cleanup

cleanup:                                          ; preds = %nft_bitwise_extract_u32_data.exit56, %nft_bitwise_extract_u32_data.exit.thread59, %nft_bitwise_extract_u32_data.exit.thread, %lor.lhs.false.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ -22, %if.end6.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end9.cleanup_crit_edge ], [ %34, %nft_bitwise_extract_u32_data.exit56 ], [ %call.i, %nft_bitwise_extract_u32_data.exit.thread ], [ -22, %nft_bitwise_extract_u32_data.exit.thread59 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_bitwise_fast_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %tmp.i34 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  %data = alloca %struct.nft_data, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #9
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %0 = call ptr @memset(ptr %data, i32 255, i32 16)
  %1 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %sreg, align 4
  %conv = zext i8 %2 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dreg = getelementptr inbounds %struct.nft_bitwise_fast_expr, ptr %data.i, i32 0, i32 3
  %3 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %dreg, align 1
  %conv2 = zext i8 %4 to i32
  %call3 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 2, i32 noundef %conv2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 4, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i34) #9
  %6 = ptrtoint ptr %tmp.i34 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %tmp.i34, align 4
  %call.i35 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i34) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i34) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool12.not = icmp eq i32 %call.i35, 0
  br i1 %tobool12.not, label %if.end14, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data.i, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %data, align 8
  %call15 = call i32 @nft_data_dump(ptr noundef %skb, i32 noundef 4, ptr noundef nonnull %data, i32 noundef 0, i32 noundef 4) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp = icmp slt i32 %call15, 0
  br i1 %cmp, label %if.end14.cleanup_crit_edge, label %if.end18

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  %xor = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %10 = ptrtoint ptr %xor to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xor, align 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %data, align 8
  %call20 = call i32 @nft_data_dump(ptr noundef %skb, i32 noundef 5, ptr noundef nonnull %data, i32 noundef 0, i32 noundef 4) #9
  %call20.lobit = ashr i32 %call20, 31
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %if.end14.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end6.cleanup_crit_edge ], [ -1, %if.end10.cleanup_crit_edge ], [ -1, %if.end14.cleanup_crit_edge ], [ %call20.lobit, %if.end18 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nft_bitwise_fast_reduce(ptr nocapture noundef %track, ptr noundef %expr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %0 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sreg, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %dreg = getelementptr inbounds %struct.nft_bitwise_fast_expr, ptr %data.i, i32 0, i32 3
  %4 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dreg, align 1
  %idxprom8 = zext i8 %5 to i32
  %arrayidx9 = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom8
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx9, align 4
  %cmp = icmp eq ptr %3, %7
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end47_crit_edge

if.end.if.end47_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true:                                    ; preds = %if.end
  %bitwise15 = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom8, i32 1
  %8 = ptrtoint ptr %bitwise15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitwise15, align 4
  %tobool16.not = icmp eq ptr %9, null
  br i1 %tobool16.not, label %land.lhs.true.if.end47_crit_edge, label %land.lhs.true17

land.lhs.true.if.end47_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

land.lhs.true17:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %expr, align 8
  %cmp24 = icmp eq ptr %11, %13
  br i1 %cmp24, label %if.then46, label %land.lhs.true17.if.end47_crit_edge

land.lhs.true17.if.end47_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47

if.then46:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  %cur = getelementptr inbounds %struct.nft_regs_track, ptr %track, i32 0, i32 1
  %14 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %expr, ptr %cur, align 4
  br label %cleanup

if.end47:                                         ; preds = %land.lhs.true17.if.end47_crit_edge, %land.lhs.true.if.end47_crit_edge, %if.end.if.end47_crit_edge
  %bitwise52 = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom, i32 1
  %15 = ptrtoint ptr %bitwise52 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bitwise52, align 4
  %tobool53.not = icmp eq ptr %16, null
  br i1 %tobool53.not, label %if.end65, label %if.then54

if.then54:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx9, align 4
  %18 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dreg, align 1
  %idxprom62 = zext i8 %19 to i32
  %bitwise64 = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom62, i32 1
  %20 = ptrtoint ptr %bitwise64 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %bitwise64, align 4
  br label %cleanup

if.end65:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %5)
  %cmp70.not = icmp eq i8 %1, %5
  br i1 %cmp70.not, label %if.end65.if.end83_crit_edge, label %if.then72

if.end65.if.end83_crit_edge:                      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

if.then72:                                        ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %3, ptr %arrayidx9, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then72, %if.end65.if.end83_crit_edge
  %22 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dreg, align 1
  %idxprom86 = zext i8 %23 to i32
  %bitwise88 = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom86, i32 1
  %24 = ptrtoint ptr %bitwise88 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %expr, ptr %bitwise88, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83, %if.then54, %if.then46, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %if.then46 ], [ false, %if.then54 ], [ false, %if.end83 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nft_bitwise_fast_offload(ptr nocapture noundef %ctx, ptr nocapture noundef readnone %flow, ptr nocapture noundef readonly %expr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %dreg = getelementptr inbounds %struct.nft_bitwise_fast_expr, ptr %data.i, i32 0, i32 3
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 1
  %idxprom = zext i8 %1 to i32
  %xor = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %2 = ptrtoint ptr %xor to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %xor, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %4 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %sreg, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %1)
  %cmp.not = icmp eq i8 %5, %1
  br i1 %cmp.not, label %lor.lhs.false4, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %len = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp5.not = icmp eq i32 %7, 4
  br i1 %cmp5.not, label %if.end, label %lor.lhs.false4.cleanup_crit_edge

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data.i, align 4
  %mask7 = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom, i32 7
  %10 = ptrtoint ptr %mask7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %mask7, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -95, %lor.lhs.false4.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nft_bitwise_select_ops(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !21
  %arrayidx = getelementptr ptr, ptr %tb, i32 3
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 1
  %3 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 2
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %6, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %call7 = call i32 @nft_parse_u32_check(ptr noundef nonnull %2, i32 noundef 255, ptr noundef nonnull %len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.then8, label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %7 = inttoptr i32 %call7 to ptr
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %8 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %9)
  %cmp11.not = icmp eq i32 %9, 4
  br i1 %cmp11.not, label %if.end13, label %if.end10.cleanup_crit_edge

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %if.end10
  %arrayidx14 = getelementptr ptr, ptr %tb, i32 6
  %10 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx14, align 4
  %tobool15.not = icmp eq ptr %11, null
  br i1 %tobool15.not, label %if.end13.if.end20_crit_edge, label %land.lhs.true

if.end13.if.end20_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

land.lhs.true:                                    ; preds = %if.end13
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp18.not = icmp eq i32 %13, 0
  br i1 %cmp18.not, label %land.lhs.true.if.end20_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.if.end20_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end20

if.end20:                                         ; preds = %land.lhs.true.if.end20_crit_edge, %if.end13.if.end20_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %land.lhs.true.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.then8, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %7, %if.then8 ], [ @nft_bitwise_fast_ops, %if.end20 ], [ @nft_bitwise_ops, %if.end10.cleanup_crit_edge ], [ @nft_bitwise_ops, %land.lhs.true.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false3.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @nft_expr_reduce_bitwise(ptr nocapture noundef %track, ptr noundef %expr) local_unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %last1 = getelementptr inbounds %struct.nft_regs_track, ptr %track, i32 0, i32 2
  %0 = ptrtoint ptr %last1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %last1, align 4
  %cmp = icmp eq ptr %1, %expr
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %expr, align 8
  %size.i = getelementptr inbounds %struct.nft_expr_ops, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %size.i, align 4
  %add.ptr.i = getelementptr i8, ptr %expr, i32 %5
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %add.ptr.i, align 8
  %cmp2 = icmp eq ptr %7, @nft_bitwise_ops
  br i1 %cmp2, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.nft_expr, ptr %add.ptr.i, i32 0, i32 2
  %8 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %data.i.i, align 8
  %idxprom.i = zext i8 %9 to i32
  %arrayidx.i = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %11, null
  br i1 %tobool.not.i, label %if.then3.cleanup_crit_edge, label %if.end.i

if.then3.cleanup_crit_edge:                       ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.then3
  %dreg.i = getelementptr inbounds %struct.nft_bitwise, ptr %data.i.i, i32 0, i32 1
  %12 = ptrtoint ptr %dreg.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dreg.i, align 1
  %idxprom8.i = zext i8 %13 to i32
  %arrayidx9.i = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom8.i
  %14 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx9.i, align 4
  %cmp.i = icmp eq ptr %11, %15
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.i.if.end63.i_crit_edge

if.end.i.if.end63.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %bitwise15.i = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom8.i, i32 1
  %16 = ptrtoint ptr %bitwise15.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %bitwise15.i, align 4
  %tobool16.not.i = icmp eq ptr %17, null
  br i1 %tobool16.not.i, label %land.lhs.true.i.if.end63.i_crit_edge, label %land.lhs.true17.i

land.lhs.true.i.if.end63.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i

land.lhs.true17.i:                                ; preds = %land.lhs.true.i
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 8
  %cmp24.i = icmp eq ptr %19, @nft_bitwise_ops
  br i1 %cmp24.i, label %if.then62.i, label %land.lhs.true17.i.if.end63.i_crit_edge

land.lhs.true17.i.if.end63.i_crit_edge:           ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63.i

if.then62.i:                                      ; preds = %land.lhs.true17.i
  call void @__sanitizer_cov_trace_pc() #11
  %cur.i = getelementptr inbounds %struct.nft_regs_track, ptr %track, i32 0, i32 1
  %20 = ptrtoint ptr %cur.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr.i, ptr %cur.i, align 4
  br label %cleanup

if.end63.i:                                       ; preds = %land.lhs.true17.i.if.end63.i_crit_edge, %land.lhs.true.i.if.end63.i_crit_edge, %if.end.i.if.end63.i_crit_edge
  %bitwise68.i = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom.i, i32 1
  %21 = ptrtoint ptr %bitwise68.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %bitwise68.i, align 4
  %tobool69.not.i = icmp eq ptr %22, null
  br i1 %tobool69.not.i, label %if.end81.i, label %if.then70.i

if.then70.i:                                      ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %arrayidx9.i, align 4
  %24 = ptrtoint ptr %dreg.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dreg.i, align 1
  %idxprom78.i = zext i8 %25 to i32
  %bitwise80.i = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom78.i, i32 1
  %26 = ptrtoint ptr %bitwise80.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %bitwise80.i, align 4
  br label %cleanup

if.end81.i:                                       ; preds = %if.end63.i
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %13)
  %cmp86.not.i = icmp eq i8 %9, %13
  br i1 %cmp86.not.i, label %if.end81.i.if.end99.i_crit_edge, label %if.then88.i

if.end81.i.if.end99.i_crit_edge:                  ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99.i

if.then88.i:                                      ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %arrayidx9.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %11, ptr %arrayidx9.i, align 4
  br label %if.end99.i

if.end99.i:                                       ; preds = %if.then88.i, %if.end81.i.if.end99.i_crit_edge
  %28 = ptrtoint ptr %dreg.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dreg.i, align 1
  %idxprom102.i = zext i8 %29 to i32
  %bitwise104.i = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom102.i, i32 1
  %30 = ptrtoint ptr %bitwise104.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %add.ptr.i, ptr %bitwise104.i, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end
  %cmp6 = icmp eq ptr %7, @nft_bitwise_fast_ops
  br i1 %cmp6, label %if.then7, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then7:                                         ; preds = %if.else
  %sreg.i = getelementptr inbounds %struct.nft_expr, ptr %add.ptr.i, i32 2
  %31 = ptrtoint ptr %sreg.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %sreg.i, align 4
  %idxprom.i18 = zext i8 %32 to i32
  %arrayidx.i19 = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom.i18
  %33 = ptrtoint ptr %arrayidx.i19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %arrayidx.i19, align 4
  %tobool.not.i20 = icmp eq ptr %34, null
  br i1 %tobool.not.i20, label %if.then7.cleanup_crit_edge, label %if.end.i26

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i26:                                       ; preds = %if.then7
  %data.i.i21 = getelementptr inbounds %struct.nft_expr, ptr %add.ptr.i, i32 0, i32 2
  %dreg.i22 = getelementptr inbounds %struct.nft_bitwise_fast_expr, ptr %data.i.i21, i32 0, i32 3
  %35 = ptrtoint ptr %dreg.i22 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %dreg.i22, align 1
  %idxprom8.i23 = zext i8 %36 to i32
  %arrayidx9.i24 = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom8.i23
  %37 = ptrtoint ptr %arrayidx9.i24 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx9.i24, align 4
  %cmp.i25 = icmp eq ptr %34, %38
  br i1 %cmp.i25, label %land.lhs.true.i29, label %if.end.i26.if.end47.i_crit_edge

if.end.i26.if.end47.i_crit_edge:                  ; preds = %if.end.i26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

land.lhs.true.i29:                                ; preds = %if.end.i26
  %bitwise15.i27 = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom8.i23, i32 1
  %39 = ptrtoint ptr %bitwise15.i27 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bitwise15.i27, align 4
  %tobool16.not.i28 = icmp eq ptr %40, null
  br i1 %tobool16.not.i28, label %land.lhs.true.i29.if.end47.i_crit_edge, label %land.lhs.true17.i31

land.lhs.true.i29.if.end47.i_crit_edge:           ; preds = %land.lhs.true.i29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

land.lhs.true17.i31:                              ; preds = %land.lhs.true.i29
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %40, align 8
  %cmp24.i30 = icmp eq ptr %42, @nft_bitwise_fast_ops
  br i1 %cmp24.i30, label %if.then46.i, label %land.lhs.true17.i31.if.end47.i_crit_edge

land.lhs.true17.i31.if.end47.i_crit_edge:         ; preds = %land.lhs.true17.i31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end47.i

if.then46.i:                                      ; preds = %land.lhs.true17.i31
  call void @__sanitizer_cov_trace_pc() #11
  %cur.i32 = getelementptr inbounds %struct.nft_regs_track, ptr %track, i32 0, i32 1
  %43 = ptrtoint ptr %cur.i32 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %add.ptr.i, ptr %cur.i32, align 4
  br label %cleanup

if.end47.i:                                       ; preds = %land.lhs.true17.i31.if.end47.i_crit_edge, %land.lhs.true.i29.if.end47.i_crit_edge, %if.end.i26.if.end47.i_crit_edge
  %bitwise52.i = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom.i18, i32 1
  %44 = ptrtoint ptr %bitwise52.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %bitwise52.i, align 4
  %tobool53.not.i = icmp eq ptr %45, null
  br i1 %tobool53.not.i, label %if.end65.i, label %if.then54.i

if.then54.i:                                      ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #11
  %46 = ptrtoint ptr %arrayidx9.i24 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %arrayidx9.i24, align 4
  %47 = ptrtoint ptr %dreg.i22 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %dreg.i22, align 1
  %idxprom62.i = zext i8 %48 to i32
  %bitwise64.i = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom62.i, i32 1
  %49 = ptrtoint ptr %bitwise64.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr null, ptr %bitwise64.i, align 4
  br label %cleanup

if.end65.i:                                       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_cmp1(i8 %32, i8 %36)
  %cmp70.not.i = icmp eq i8 %32, %36
  br i1 %cmp70.not.i, label %if.end65.i.if.end83.i_crit_edge, label %if.then72.i

if.end65.i.if.end83.i_crit_edge:                  ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83.i

if.then72.i:                                      ; preds = %if.end65.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %arrayidx9.i24 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %34, ptr %arrayidx9.i24, align 4
  br label %if.end83.i

if.end83.i:                                       ; preds = %if.then72.i, %if.end65.i.if.end83.i_crit_edge
  %51 = ptrtoint ptr %dreg.i22 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %dreg.i22, align 1
  %idxprom86.i = zext i8 %52 to i32
  %bitwise88.i = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom86.i, i32 1
  %53 = ptrtoint ptr %bitwise88.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %add.ptr.i, ptr %bitwise88.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end83.i, %if.then54.i, %if.then46.i, %if.then7.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.end99.i, %if.then70.i, %if.then62.i, %if.then3.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %if.else.cleanup_crit_edge ], [ false, %if.then70.i ], [ false, %if.end99.i ], [ true, %if.then62.i ], [ false, %if.then3.cleanup_crit_edge ], [ true, %if.then46.i ], [ false, %if.then54.i ], [ false, %if.end83.i ], [ false, %if.then7.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nft_bitwise_reduce(ptr nocapture noundef %track, ptr noundef %expr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 8
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dreg = getelementptr inbounds %struct.nft_bitwise, ptr %data.i, i32 0, i32 1
  %4 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dreg, align 1
  %idxprom8 = zext i8 %5 to i32
  %arrayidx9 = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom8
  %6 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx9, align 4
  %cmp = icmp eq ptr %3, %7
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end63_crit_edge

if.end.if.end63_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

land.lhs.true:                                    ; preds = %if.end
  %bitwise15 = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom8, i32 1
  %8 = ptrtoint ptr %bitwise15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %bitwise15, align 4
  %tobool16.not = icmp eq ptr %9, null
  br i1 %tobool16.not, label %land.lhs.true.if.end63_crit_edge, label %land.lhs.true17

land.lhs.true.if.end63_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

land.lhs.true17:                                  ; preds = %land.lhs.true
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 8
  %12 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %expr, align 8
  %cmp24 = icmp eq ptr %11, %13
  br i1 %cmp24, label %if.then62, label %land.lhs.true17.if.end63_crit_edge

land.lhs.true17.if.end63_crit_edge:               ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end63

if.then62:                                        ; preds = %land.lhs.true17
  call void @__sanitizer_cov_trace_pc() #11
  %cur = getelementptr inbounds %struct.nft_regs_track, ptr %track, i32 0, i32 1
  %14 = ptrtoint ptr %cur to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %expr, ptr %cur, align 4
  br label %cleanup

if.end63:                                         ; preds = %land.lhs.true17.if.end63_crit_edge, %land.lhs.true.if.end63_crit_edge, %if.end.if.end63_crit_edge
  %bitwise68 = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom, i32 1
  %15 = ptrtoint ptr %bitwise68 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %bitwise68, align 4
  %tobool69.not = icmp eq ptr %16, null
  br i1 %tobool69.not, label %if.end81, label %if.then70

if.then70:                                        ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %arrayidx9, align 4
  %18 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %dreg, align 1
  %idxprom78 = zext i8 %19 to i32
  %bitwise80 = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom78, i32 1
  %20 = ptrtoint ptr %bitwise80 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %bitwise80, align 4
  br label %cleanup

if.end81:                                         ; preds = %if.end63
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %5)
  %cmp86.not = icmp eq i8 %1, %5
  br i1 %cmp86.not, label %if.end81.if.end99_crit_edge, label %if.then88

if.end81.if.end99_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end99

if.then88:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %3, ptr %arrayidx9, align 4
  br label %if.end99

if.end99:                                         ; preds = %if.then88, %if.end81.if.end99_crit_edge
  %22 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dreg, align 1
  %idxprom102 = zext i8 %23 to i32
  %bitwise104 = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom102, i32 1
  %24 = ptrtoint ptr %bitwise104 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %expr, ptr %bitwise104, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end99, %if.then70, %if.then62, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %if.then70 ], [ false, %if.end99 ], [ true, %if.then62 ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_load(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_store(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_data_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_data_release(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_data_dump(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_u32_check(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_bitwise_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  %d.i = alloca %struct.nft_data_desc, align 4
  %mask.i = alloca %struct.nft_data_desc, align 4
  %xor.i = alloca %struct.nft_data_desc, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #9
  %0 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %len, align 4, !annotation !21
  %arrayidx = getelementptr ptr, ptr %tb, i32 3
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %call1 = call i32 @nft_parse_u32_check(ptr noundef %2, i32 noundef 255, ptr noundef nonnull %len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len, align 4
  %conv = trunc i32 %4 to i8
  %len2 = getelementptr inbounds %struct.nft_bitwise, ptr %data.i, i32 0, i32 3
  %5 = ptrtoint ptr %len2 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %conv, ptr %len2, align 1
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 1
  %6 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx3, align 4
  %conv5 = and i32 %4, 255
  %call6 = call i32 @nft_parse_register_load(ptr noundef %7, ptr noundef %data.i, i32 noundef %conv5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp7 = icmp slt i32 %call6, 0
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %arrayidx11 = getelementptr ptr, ptr %tb, i32 2
  %8 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx11, align 4
  %dreg = getelementptr inbounds %struct.nft_bitwise, ptr %data.i, i32 0, i32 1
  %10 = ptrtoint ptr %len2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %len2, align 1
  %conv13 = zext i8 %11 to i32
  %call14 = call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %9, ptr noundef %dreg, ptr noundef null, i32 noundef 0, i32 noundef %conv13) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end10.cleanup_crit_edge, label %if.end18

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end10
  %arrayidx19 = getelementptr ptr, ptr %tb, i32 6
  %12 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx19, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.else, label %if.then20

if.then20:                                        ; preds = %if.end18
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 4
  %14 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i.i, align 4
  %op = getelementptr inbounds %struct.nft_bitwise, ptr %data.i, i32 0, i32 2
  %16 = trunc i32 %15 to i8
  %17 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %op, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %16)
  %switch = icmp ult i8 %16, 3
  br i1 %switch, label %if.then20.if.end25_crit_edge, label %if.then20.cleanup_crit_edge

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then20.if.end25_crit_edge:                     ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  %op24 = getelementptr inbounds %struct.nft_bitwise, ptr %data.i, i32 0, i32 2
  %18 = ptrtoint ptr %op24 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 0, ptr %op24, align 2
  br label %if.end25

if.end25:                                         ; preds = %if.else, %if.then20.if.end25_crit_edge
  %op26 = getelementptr inbounds %struct.nft_bitwise, ptr %data.i, i32 0, i32 2
  %19 = ptrtoint ptr %op26 to i32
  call void @__asan_load1_noabort(i32 %19)
  %bf.load2758 = load i8, ptr %op26, align 2
  %20 = zext i8 %bf.load2758 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %bf.load2758, label %if.end25.cleanup_crit_edge [
    i8 0, label %sw.bb29
    i8 1, label %if.end25.sw.bb31_crit_edge
    i8 2, label %if.end25.sw.bb31_crit_edge72
  ]

if.end25.sw.bb31_crit_edge72:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb31

if.end25.sw.bb31_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb31

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb29:                                          ; preds = %if.end25
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %mask.i) #9
  %21 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %mask.i, align 4, !annotation !21
  %22 = getelementptr inbounds %struct.nft_data_desc, ptr %mask.i, i32 0, i32 1
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 -1, ptr %22, align 4, !annotation !21
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %xor.i) #9
  %24 = ptrtoint ptr %xor.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -1, ptr %xor.i, align 4, !annotation !21
  %25 = getelementptr inbounds %struct.nft_data_desc, ptr %xor.i, i32 0, i32 1
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 -1, ptr %25, align 4, !annotation !21
  %arrayidx.i = getelementptr ptr, ptr %tb, i32 7
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %28, null
  br i1 %tobool.not.i, label %if.end.i, label %sw.bb29.nft_bitwise_init_bool.exit_crit_edge

sw.bb29.nft_bitwise_init_bool.exit_crit_edge:     ; preds = %sw.bb29
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_bitwise_init_bool.exit

if.end.i:                                         ; preds = %sw.bb29
  %arrayidx1.i = getelementptr ptr, ptr %tb, i32 4
  %29 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx1.i, align 4
  %tobool2.not.i = icmp eq ptr %30, null
  br i1 %tobool2.not.i, label %if.end.i.nft_bitwise_init_bool.exit_crit_edge, label %lor.lhs.false.i

if.end.i.nft_bitwise_init_bool.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_bitwise_init_bool.exit

lor.lhs.false.i:                                  ; preds = %if.end.i
  %arrayidx3.i = getelementptr ptr, ptr %tb, i32 5
  %31 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %arrayidx3.i, align 4
  %tobool4.not.i = icmp eq ptr %32, null
  br i1 %tobool4.not.i, label %lor.lhs.false.i.nft_bitwise_init_bool.exit_crit_edge, label %if.end6.i

lor.lhs.false.i.nft_bitwise_init_bool.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_bitwise_init_bool.exit

if.end6.i:                                        ; preds = %lor.lhs.false.i
  %mask7.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %call.i = call i32 @nft_data_init(ptr noundef null, ptr noundef %mask7.i, i32 noundef 16, ptr noundef nonnull %mask.i, ptr noundef nonnull %30) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp slt i32 %call.i, 0
  br i1 %cmp.i, label %if.end6.i.nft_bitwise_init_bool.exit_crit_edge, label %if.end10.i

if.end6.i.nft_bitwise_init_bool.exit_crit_edge:   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_bitwise_init_bool.exit

if.end10.i:                                       ; preds = %if.end6.i
  %33 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mask.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp11.not.i = icmp eq i32 %34, 0
  br i1 %cmp11.not.i, label %lor.lhs.false12.i, label %if.end10.i.err1.i_crit_edge

if.end10.i.err1.i_crit_edge:                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err1.i

lor.lhs.false12.i:                                ; preds = %if.end10.i
  %35 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %22, align 4
  %37 = ptrtoint ptr %len2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %len2, align 1
  %conv.i = zext i8 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv.i)
  %cmp14.not.i = icmp eq i32 %36, %conv.i
  br i1 %cmp14.not.i, label %if.end17.i, label %lor.lhs.false12.i.err1.i_crit_edge

lor.lhs.false12.i.err1.i_crit_edge:               ; preds = %lor.lhs.false12.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err1.i

if.end17.i:                                       ; preds = %lor.lhs.false12.i
  %xor18.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 4
  %39 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx3.i, align 4
  %call20.i = call i32 @nft_data_init(ptr noundef null, ptr noundef %xor18.i, i32 noundef 16, ptr noundef nonnull %xor.i, ptr noundef %40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp21.i = icmp slt i32 %call20.i, 0
  br i1 %cmp21.i, label %if.end17.i.err1.i_crit_edge, label %if.end24.i

if.end17.i.err1.i_crit_edge:                      ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %err1.i

if.end24.i:                                       ; preds = %if.end17.i
  %41 = ptrtoint ptr %xor.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %xor.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp26.not.i = icmp eq i32 %42, 0
  br i1 %cmp26.not.i, label %lor.lhs.false28.i, label %if.end24.i.if.then34.i_crit_edge

if.end24.i.if.then34.i_crit_edge:                 ; preds = %if.end24.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i

lor.lhs.false28.i:                                ; preds = %if.end24.i
  %43 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %25, align 4
  %45 = ptrtoint ptr %len2 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %len2, align 1
  %conv31.i = zext i8 %46 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %conv31.i)
  %cmp32.not.i = icmp eq i32 %44, %conv31.i
  br i1 %cmp32.not.i, label %lor.lhs.false28.i.nft_bitwise_init_bool.exit_crit_edge, label %lor.lhs.false28.i.if.then34.i_crit_edge

lor.lhs.false28.i.if.then34.i_crit_edge:          ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then34.i

lor.lhs.false28.i.nft_bitwise_init_bool.exit_crit_edge: ; preds = %lor.lhs.false28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_bitwise_init_bool.exit

if.then34.i:                                      ; preds = %lor.lhs.false28.i.if.then34.i_crit_edge, %if.end24.i.if.then34.i_crit_edge
  call void @nft_data_release(ptr noundef %xor18.i, i32 noundef %42) #9
  br label %err1.i

err1.i:                                           ; preds = %if.then34.i, %if.end17.i.err1.i_crit_edge, %lor.lhs.false12.i.err1.i_crit_edge, %if.end10.i.err1.i_crit_edge
  %err.0.i = phi i32 [ %call20.i, %if.end17.i.err1.i_crit_edge ], [ -22, %if.then34.i ], [ -22, %lor.lhs.false12.i.err1.i_crit_edge ], [ -22, %if.end10.i.err1.i_crit_edge ]
  %47 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mask.i, align 4
  call void @nft_data_release(ptr noundef %mask7.i, i32 noundef %48) #9
  br label %nft_bitwise_init_bool.exit

nft_bitwise_init_bool.exit:                       ; preds = %err1.i, %lor.lhs.false28.i.nft_bitwise_init_bool.exit_crit_edge, %if.end6.i.nft_bitwise_init_bool.exit_crit_edge, %lor.lhs.false.i.nft_bitwise_init_bool.exit_crit_edge, %if.end.i.nft_bitwise_init_bool.exit_crit_edge, %sw.bb29.nft_bitwise_init_bool.exit_crit_edge
  %retval.0.i = phi i32 [ %err.0.i, %err1.i ], [ -22, %sw.bb29.nft_bitwise_init_bool.exit_crit_edge ], [ -22, %lor.lhs.false.i.nft_bitwise_init_bool.exit_crit_edge ], [ -22, %if.end.i.nft_bitwise_init_bool.exit_crit_edge ], [ %call.i, %if.end6.i.nft_bitwise_init_bool.exit_crit_edge ], [ 0, %lor.lhs.false28.i.nft_bitwise_init_bool.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %xor.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %mask.i) #9
  br label %cleanup

sw.bb31:                                          ; preds = %if.end25.sw.bb31_crit_edge, %if.end25.sw.bb31_crit_edge72
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %d.i) #9
  %49 = ptrtoint ptr %d.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -1, ptr %d.i, align 4, !annotation !21
  %50 = getelementptr inbounds %struct.nft_data_desc, ptr %d.i, i32 0, i32 1
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 -1, ptr %50, align 4, !annotation !21
  %arrayidx.i59 = getelementptr ptr, ptr %tb, i32 4
  %52 = ptrtoint ptr %arrayidx.i59 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx.i59, align 4
  %tobool.not.i60 = icmp eq ptr %53, null
  br i1 %tobool.not.i60, label %lor.lhs.false.i63, label %sw.bb31.nft_bitwise_init_shift.exit_crit_edge

sw.bb31.nft_bitwise_init_shift.exit_crit_edge:    ; preds = %sw.bb31
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_bitwise_init_shift.exit

lor.lhs.false.i63:                                ; preds = %sw.bb31
  %arrayidx1.i61 = getelementptr ptr, ptr %tb, i32 5
  %54 = ptrtoint ptr %arrayidx1.i61 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx1.i61, align 4
  %tobool2.not.i62 = icmp eq ptr %55, null
  br i1 %tobool2.not.i62, label %if.end.i66, label %lor.lhs.false.i63.nft_bitwise_init_shift.exit_crit_edge

lor.lhs.false.i63.nft_bitwise_init_shift.exit_crit_edge: ; preds = %lor.lhs.false.i63
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_bitwise_init_shift.exit

if.end.i66:                                       ; preds = %lor.lhs.false.i63
  %arrayidx3.i64 = getelementptr ptr, ptr %tb, i32 7
  %56 = ptrtoint ptr %arrayidx3.i64 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %arrayidx3.i64, align 4
  %tobool4.not.i65 = icmp eq ptr %57, null
  br i1 %tobool4.not.i65, label %if.end.i66.nft_bitwise_init_shift.exit_crit_edge, label %if.end6.i70

if.end.i66.nft_bitwise_init_shift.exit_crit_edge: ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_bitwise_init_shift.exit

if.end6.i70:                                      ; preds = %if.end.i66
  %data.i67 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 6
  %call.i68 = call i32 @nft_data_init(ptr noundef null, ptr noundef %data.i67, i32 noundef 16, ptr noundef nonnull %d.i, ptr noundef nonnull %57) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i68)
  %cmp.i69 = icmp slt i32 %call.i68, 0
  br i1 %cmp.i69, label %if.end6.i70.nft_bitwise_init_shift.exit_crit_edge, label %if.end9.i

if.end6.i70.nft_bitwise_init_shift.exit_crit_edge: ; preds = %if.end6.i70
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_bitwise_init_shift.exit

if.end9.i:                                        ; preds = %if.end6.i70
  %58 = ptrtoint ptr %d.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %d.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp10.not.i = icmp eq i32 %59, 0
  br i1 %cmp10.not.i, label %lor.lhs.false11.i, label %if.end9.i.if.then17.i_crit_edge

if.end9.i.if.then17.i_crit_edge:                  ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i

lor.lhs.false11.i:                                ; preds = %if.end9.i
  %60 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %61)
  %cmp12.not.i = icmp eq i32 %61, 4
  br i1 %cmp12.not.i, label %lor.lhs.false13.i, label %lor.lhs.false11.i.if.then17.i_crit_edge

lor.lhs.false11.i.if.then17.i_crit_edge:          ; preds = %lor.lhs.false11.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i

lor.lhs.false13.i:                                ; preds = %lor.lhs.false11.i
  %62 = ptrtoint ptr %data.i67 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %data.i67, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %63)
  %cmp16.i = icmp ugt i32 %63, 31
  br i1 %cmp16.i, label %lor.lhs.false13.i.if.then17.i_crit_edge, label %lor.lhs.false13.i.nft_bitwise_init_shift.exit_crit_edge

lor.lhs.false13.i.nft_bitwise_init_shift.exit_crit_edge: ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_bitwise_init_shift.exit

lor.lhs.false13.i.if.then17.i_crit_edge:          ; preds = %lor.lhs.false13.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then17.i

if.then17.i:                                      ; preds = %lor.lhs.false13.i.if.then17.i_crit_edge, %lor.lhs.false11.i.if.then17.i_crit_edge, %if.end9.i.if.then17.i_crit_edge
  call void @nft_data_release(ptr noundef %data.i67, i32 noundef %59) #9
  br label %nft_bitwise_init_shift.exit

nft_bitwise_init_shift.exit:                      ; preds = %if.then17.i, %lor.lhs.false13.i.nft_bitwise_init_shift.exit_crit_edge, %if.end6.i70.nft_bitwise_init_shift.exit_crit_edge, %if.end.i66.nft_bitwise_init_shift.exit_crit_edge, %lor.lhs.false.i63.nft_bitwise_init_shift.exit_crit_edge, %sw.bb31.nft_bitwise_init_shift.exit_crit_edge
  %retval.0.i71 = phi i32 [ -22, %if.then17.i ], [ -22, %lor.lhs.false.i63.nft_bitwise_init_shift.exit_crit_edge ], [ -22, %sw.bb31.nft_bitwise_init_shift.exit_crit_edge ], [ -22, %if.end.i66.nft_bitwise_init_shift.exit_crit_edge ], [ %call.i68, %if.end6.i70.nft_bitwise_init_shift.exit_crit_edge ], [ 0, %lor.lhs.false13.i.nft_bitwise_init_shift.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %d.i) #9
  br label %cleanup

cleanup:                                          ; preds = %nft_bitwise_init_shift.exit, %nft_bitwise_init_bool.exit, %if.end25.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end10.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %entry.cleanup_crit_edge ], [ %call6, %if.end.cleanup_crit_edge ], [ %call14, %if.end10.cleanup_crit_edge ], [ -95, %if.then20.cleanup_crit_edge ], [ %call14, %if.end25.cleanup_crit_edge ], [ %retval.0.i71, %nft_bitwise_init_shift.exit ], [ %retval.0.i, %nft_bitwise_init_bool.exit ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_bitwise_dump(ptr noundef %skb, ptr noundef %expr) #2 align 64 {
entry:
  %tmp.i35 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 8
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %dreg = getelementptr inbounds %struct.nft_bitwise, ptr %data.i, i32 0, i32 1
  %2 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dreg, align 1
  %conv2 = zext i8 %3 to i32
  %call3 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 2, i32 noundef %conv2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.nft_bitwise, ptr %data.i, i32 0, i32 3
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 1
  %conv7 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv7, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool9.not = icmp eq i32 %call.i, 0
  br i1 %tobool9.not, label %if.end11, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  %op = getelementptr inbounds %struct.nft_bitwise, ptr %data.i, i32 0, i32 2
  %7 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load = load i8, ptr %op, align 2
  %bf.cast = zext i8 %bf.load to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i35) #9
  %8 = ptrtoint ptr %tmp.i35 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %bf.cast, ptr %tmp.i35, align 4
  %call.i36 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i35) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i35) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i36)
  %tobool13.not = icmp eq i32 %call.i36, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %9 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %9)
  %bf.load1734 = load i8, ptr %op, align 2
  %10 = zext i8 %bf.load1734 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %bf.load1734, label %if.end15.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %if.end15.sw.bb20_crit_edge
    i8 2, label %if.end15.sw.bb20_crit_edge39
  ]

if.end15.sw.bb20_crit_edge39:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

if.end15.sw.bb20_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb20

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.bb:                                            ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call19 = call fastcc i32 @nft_bitwise_dump_bool(ptr noundef %skb, ptr noundef %data.i)
  br label %cleanup

sw.bb20:                                          ; preds = %if.end15.sw.bb20_crit_edge, %if.end15.sw.bb20_crit_edge39
  %data.i37 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 6
  %call.i38 = call i32 @nft_data_dump(ptr noundef %skb, i32 noundef 7, ptr noundef %data.i37, i32 noundef 0, i32 noundef 4) #9
  %call.lobit.i = ashr i32 %call.i38, 31
  br label %cleanup

cleanup:                                          ; preds = %sw.bb20, %sw.bb, %if.end15.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %entry.cleanup_crit_edge ], [ -1, %if.end.cleanup_crit_edge ], [ -1, %if.end6.cleanup_crit_edge ], [ -1, %if.end11.cleanup_crit_edge ], [ 0, %if.end15.cleanup_crit_edge ], [ %call.lobit.i, %sw.bb20 ], [ %call19, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nft_bitwise_offload(ptr nocapture noundef %ctx, ptr nocapture noundef readnone %flow, ptr nocapture noundef readonly %expr) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %dreg = getelementptr inbounds %struct.nft_bitwise, ptr %data.i, i32 0, i32 1
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 1
  %idxprom = zext i8 %1 to i32
  %op = getelementptr inbounds %struct.nft_bitwise, ptr %data.i, i32 0, i32 2
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %op, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp.not = icmp eq i8 %bf.load, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %xor = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 4
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %xor, ptr noundef nonnull dereferenceable(16) @zero, i32 16) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %3 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %data.i, align 8
  call void @__sanitizer_cov_trace_cmp1(i8 %4, i8 %1)
  %cmp4.not = icmp eq i8 %4, %1
  br i1 %cmp4.not, label %lor.lhs.false6, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false
  %len = getelementptr inbounds %struct.nft_bitwise, ptr %data.i, i32 0, i32 3
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %len, align 1
  %conv7 = zext i8 %6 to i32
  %len8 = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom, i32 1
  %7 = ptrtoint ptr %len8 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len8, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv7)
  %cmp9.not = icmp eq i32 %8, %conv7
  br i1 %cmp9.not, label %if.end12, label %lor.lhs.false6.cleanup_crit_edge

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end12:                                         ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #11
  %mask = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom, i32 7
  %mask13 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %9 = call ptr @memcpy(ptr %mask, ptr %mask13, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -95, %entry.cleanup_crit_edge ], [ -95, %lor.lhs.false6.cleanup_crit_edge ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nft_bitwise_dump_bool(ptr noundef %skb, ptr noundef %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %mask = getelementptr inbounds %struct.nft_bitwise, ptr %priv, i32 0, i32 5
  %len = getelementptr inbounds %struct.nft_bitwise, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %len, align 1
  %conv = zext i8 %1 to i32
  %call = tail call i32 @nft_data_dump(ptr noundef %skb, i32 noundef 4, ptr noundef %mask, i32 noundef 0, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %xor = getelementptr inbounds %struct.nft_bitwise, ptr %priv, i32 0, i32 6
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %len, align 1
  %conv3 = zext i8 %3 to i32
  %call4 = tail call i32 @nft_data_dump(ptr noundef %skb, i32 noundef 5, ptr noundef %xor, i32 noundef 0, i32 noundef %conv3) #9
  %call4.lobit = ashr i32 %call4, 31
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ -1, %entry.return_crit_edge ], [ %call4.lobit, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10}
!llvm.module.flags = !{!12, !13, !14, !15, !16, !17, !18, !19}
!llvm.ident = !{!20}

!0 = !{ptr @nft_bitwise_fast_ops, !1, !"nft_bitwise_fast_ops", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_bitwise.c", i32 464, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_bitwise.c", i32 501, i32 11}
!4 = !{ptr @nft_bitwise_type, !5, !"nft_bitwise_type", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_bitwise.c", i32 500, i32 22}
!6 = !{ptr @nft_bitwise_policy, !7, !"nft_bitwise_policy", i1 false, i1 false}
!7 = !{!"../net/netfilter/nft_bitwise.c", i32 83, i32 32}
!8 = !{ptr @nft_bitwise_ops, !9, !"nft_bitwise_ops", i1 false, i1 false}
!9 = !{!"../net/netfilter/nft_bitwise.c", i32 320, i32 34}
!10 = !{ptr @zero, !11, !"zero", i1 false, i1 false}
!11 = !{!"../net/netfilter/nft_bitwise.c", i32 260, i32 24}
!12 = !{i32 1, !"wchar_size", i32 2}
!13 = !{i32 1, !"min_enum_size", i32 4}
!14 = !{i32 8, !"branch-target-enforcement", i32 0}
!15 = !{i32 8, !"sign-return-address", i32 0}
!16 = !{i32 8, !"sign-return-address-all", i32 0}
!17 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!18 = !{i32 7, !"uwtable", i32 1}
!19 = !{i32 7, !"frame-pointer", i32 2}
!20 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!21 = !{!"auto-init"}
