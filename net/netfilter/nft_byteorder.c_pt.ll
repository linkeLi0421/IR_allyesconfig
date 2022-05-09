; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_byteorder.c_pt.bc'
source_filename = "../net/netfilter/nft_byteorder.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.40 }
%union.anon.40 = type { i32 }
%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_byteorder = type { i8, i8, i8, i8, i8, [3 x i8] }
%union.anon.125 = type { i32 }
%struct.anon.119 = type { ptr, ptr }

@nft_byteorder_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_byteorder_eval, ptr null, i32 16, ptr @nft_byteorder_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_byteorder_dump, ptr null, ptr @nft_byteorder_reduce, ptr null, ptr null, ptr null, ptr null, ptr @nft_byteorder_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"byteorder\00", [22 x i8] zeroinitializer }, align 32
@nft_byteorder_policy = internal constant { [6 x %struct.nla_policy], [48 x i8] } { [6 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }], [48 x i8] zeroinitializer }, align 32
@nft_byteorder_type = dso_local global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_byteorder_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_byteorder_policy, i32 5, i8 0, i8 0 }, section ".data..read_mostly", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 1]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 8, i64 2, i64 4, i64 8]
@___asan_gen_.5 = private unnamed_addr constant [18 x i8] c"nft_byteorder_ops\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 181, i32 34 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 191, i32 11 }
@___asan_gen_.11 = private unnamed_addr constant [21 x i8] c"nft_byteorder_policy\00", align 1
@___asan_gen_.12 = private constant [33 x i8] c"../net/netfilter/nft_byteorder.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 87, i32 32 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @nft_byteorder_ops, ptr @.str, ptr @nft_byteorder_policy], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_byteorder_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_byteorder_policy to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_byteorder_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr nocapture readnone %pkt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 4
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %dreg = getelementptr inbounds %struct.nft_byteorder, ptr %data.i, i32 0, i32 1
  %2 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dreg, align 1
  %idxprom1 = zext i8 %3 to i32
  %arrayidx2 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom1
  %size = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %4 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %size, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %entry.sw.epilog85_crit_edge [
    i8 8, label %sw.bb
    i8 4, label %sw.bb23
    i8 2, label %sw.bb54
  ]

entry.sw.epilog85_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog85

sw.bb:                                            ; preds = %entry
  %op = getelementptr inbounds %struct.nft_byteorder, ptr %data.i, i32 0, i32 2
  %7 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load134 = load i8, ptr %op, align 2
  %8 = zext i8 %bf.load134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %bf.load134, label %sw.bb.sw.epilog85_crit_edge [
    i8 0, label %for.cond.preheader
    i8 1, label %for.cond10.preheader
  ]

sw.bb.sw.epilog85_crit_edge:                      ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog85

for.cond10.preheader:                             ; preds = %sw.bb
  %len11 = getelementptr inbounds %struct.nft_byteorder, ptr %data.i, i32 0, i32 3
  %9 = ptrtoint ptr %len11 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %len11, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %10)
  %cmp14153.not = icmp ult i8 %10, 8
  br i1 %cmp14153.not, label %for.cond10.preheader.sw.epilog85_crit_edge, label %for.cond10.preheader.for.body16_crit_edge

for.cond10.preheader.for.body16_crit_edge:        ; preds = %for.cond10.preheader
  br label %for.body16

for.cond10.preheader.sw.epilog85_crit_edge:       ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog85

for.cond.preheader:                               ; preds = %sw.bb
  %len = getelementptr inbounds %struct.nft_byteorder, ptr %data.i, i32 0, i32 3
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %len, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %12)
  %cmp156.not = icmp ult i8 %12, 8
  br i1 %cmp156.not, label %for.cond.preheader.sw.epilog85_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.sw.epilog85_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog85

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0157 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx6 = getelementptr i32, ptr %arrayidx, i32 %i.0157
  %13 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %arrayidx6, align 1
  %arrayidx8 = getelementptr i32, ptr %arrayidx2, i32 %i.0157
  %15 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %arrayidx8, align 1
  %inc = add nuw nsw i32 %i.0157, 1
  %16 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %len, align 1
  %18 = lshr i8 %17, 3
  %div = zext i8 %18 to i32
  %cmp = icmp ult i32 %inc, %div
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.sw.epilog85_crit_edge

for.body.sw.epilog85_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog85

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.cond10.preheader.for.body16_crit_edge
  %i.1154 = phi i32 [ %inc21, %for.body16.for.body16_crit_edge ], [ 0, %for.cond10.preheader.for.body16_crit_edge ]
  %arrayidx17 = getelementptr i32, ptr %arrayidx, i32 %i.1154
  %19 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_loadN_noabort(i32 %19, i32 8)
  %20 = load i64, ptr %arrayidx17, align 1
  %arrayidx19 = getelementptr i32, ptr %arrayidx2, i32 %i.1154
  %21 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_storeN_noabort(i32 %21, i32 8)
  store i64 %20, ptr %arrayidx19, align 1
  %inc21 = add nuw nsw i32 %i.1154, 1
  %22 = ptrtoint ptr %len11 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %len11, align 1
  %24 = lshr i8 %23, 3
  %div13 = zext i8 %24 to i32
  %cmp14 = icmp ult i32 %inc21, %div13
  br i1 %cmp14, label %for.body16.for.body16_crit_edge, label %for.body16.sw.epilog85_crit_edge

for.body16.sw.epilog85_crit_edge:                 ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog85

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body16

sw.bb23:                                          ; preds = %entry
  %op24 = getelementptr inbounds %struct.nft_byteorder, ptr %data.i, i32 0, i32 2
  %25 = ptrtoint ptr %op24 to i32
  call void @__asan_load1_noabort(i32 %25)
  %bf.load25133 = load i8, ptr %op24, align 2
  %26 = zext i8 %bf.load25133 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %bf.load25133, label %sw.bb23.sw.epilog85_crit_edge [
    i8 0, label %for.cond28.preheader
    i8 1, label %for.cond41.preheader
  ]

sw.bb23.sw.epilog85_crit_edge:                    ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog85

for.cond41.preheader:                             ; preds = %sw.bb23
  %len42 = getelementptr inbounds %struct.nft_byteorder, ptr %data.i, i32 0, i32 3
  %27 = ptrtoint ptr %len42 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %len42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %28)
  %cmp45147.not = icmp ult i8 %28, 4
  br i1 %cmp45147.not, label %for.cond41.preheader.sw.epilog85_crit_edge, label %for.cond41.preheader.for.body47_crit_edge

for.cond41.preheader.for.body47_crit_edge:        ; preds = %for.cond41.preheader
  br label %for.body47

for.cond41.preheader.sw.epilog85_crit_edge:       ; preds = %for.cond41.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog85

for.cond28.preheader:                             ; preds = %sw.bb23
  %len29 = getelementptr inbounds %struct.nft_byteorder, ptr %data.i, i32 0, i32 3
  %29 = ptrtoint ptr %len29 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %len29, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %30)
  %cmp32150.not = icmp ult i8 %30, 4
  br i1 %cmp32150.not, label %for.cond28.preheader.sw.epilog85_crit_edge, label %for.cond28.preheader.for.body34_crit_edge

for.cond28.preheader.for.body34_crit_edge:        ; preds = %for.cond28.preheader
  br label %for.body34

for.cond28.preheader.sw.epilog85_crit_edge:       ; preds = %for.cond28.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog85

for.body34:                                       ; preds = %for.body34.for.body34_crit_edge, %for.cond28.preheader.for.body34_crit_edge
  %i.2151 = phi i32 [ %inc38, %for.body34.for.body34_crit_edge ], [ 0, %for.cond28.preheader.for.body34_crit_edge ]
  %arrayidx35 = getelementptr %union.anon.125, ptr %arrayidx, i32 %i.2151
  %31 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx35, align 4
  %arrayidx36 = getelementptr %union.anon.125, ptr %arrayidx2, i32 %i.2151
  %33 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %arrayidx36, align 4
  %inc38 = add nuw nsw i32 %i.2151, 1
  %34 = ptrtoint ptr %len29 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %len29, align 1
  %36 = lshr i8 %35, 2
  %div31 = zext i8 %36 to i32
  %cmp32 = icmp ult i32 %inc38, %div31
  br i1 %cmp32, label %for.body34.for.body34_crit_edge, label %for.body34.sw.epilog85_crit_edge

for.body34.sw.epilog85_crit_edge:                 ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog85

for.body34.for.body34_crit_edge:                  ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body34

for.body47:                                       ; preds = %for.body47.for.body47_crit_edge, %for.cond41.preheader.for.body47_crit_edge
  %i.3148 = phi i32 [ %inc51, %for.body47.for.body47_crit_edge ], [ 0, %for.cond41.preheader.for.body47_crit_edge ]
  %arrayidx48 = getelementptr %union.anon.125, ptr %arrayidx, i32 %i.3148
  %37 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx48, align 4
  %arrayidx49 = getelementptr %union.anon.125, ptr %arrayidx2, i32 %i.3148
  %39 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %arrayidx49, align 4
  %inc51 = add nuw nsw i32 %i.3148, 1
  %40 = ptrtoint ptr %len42 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %len42, align 1
  %42 = lshr i8 %41, 2
  %div44 = zext i8 %42 to i32
  %cmp45 = icmp ult i32 %inc51, %div44
  br i1 %cmp45, label %for.body47.for.body47_crit_edge, label %for.body47.sw.epilog85_crit_edge

for.body47.sw.epilog85_crit_edge:                 ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog85

for.body47.for.body47_crit_edge:                  ; preds = %for.body47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body47

sw.bb54:                                          ; preds = %entry
  %op55 = getelementptr inbounds %struct.nft_byteorder, ptr %data.i, i32 0, i32 2
  %43 = ptrtoint ptr %op55 to i32
  call void @__asan_load1_noabort(i32 %43)
  %bf.load56132 = load i8, ptr %op55, align 2
  %44 = zext i8 %bf.load56132 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %bf.load56132, label %sw.bb54.sw.epilog85_crit_edge [
    i8 0, label %for.cond59.preheader
    i8 1, label %for.cond72.preheader
  ]

sw.bb54.sw.epilog85_crit_edge:                    ; preds = %sw.bb54
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog85

for.cond72.preheader:                             ; preds = %sw.bb54
  %len73 = getelementptr inbounds %struct.nft_byteorder, ptr %data.i, i32 0, i32 3
  %45 = ptrtoint ptr %len73 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %len73, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %46)
  %cmp76141.not = icmp ult i8 %46, 2
  br i1 %cmp76141.not, label %for.cond72.preheader.sw.epilog85_crit_edge, label %for.cond72.preheader.for.body78_crit_edge

for.cond72.preheader.for.body78_crit_edge:        ; preds = %for.cond72.preheader
  br label %for.body78

for.cond72.preheader.sw.epilog85_crit_edge:       ; preds = %for.cond72.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog85

for.cond59.preheader:                             ; preds = %sw.bb54
  %len60 = getelementptr inbounds %struct.nft_byteorder, ptr %data.i, i32 0, i32 3
  %47 = ptrtoint ptr %len60 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %len60, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %48)
  %cmp63144.not = icmp ult i8 %48, 2
  br i1 %cmp63144.not, label %for.cond59.preheader.sw.epilog85_crit_edge, label %for.cond59.preheader.for.body65_crit_edge

for.cond59.preheader.for.body65_crit_edge:        ; preds = %for.cond59.preheader
  br label %for.body65

for.cond59.preheader.sw.epilog85_crit_edge:       ; preds = %for.cond59.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog85

for.body65:                                       ; preds = %for.body65.for.body65_crit_edge, %for.cond59.preheader.for.body65_crit_edge
  %i.4145 = phi i32 [ %inc69, %for.body65.for.body65_crit_edge ], [ 0, %for.cond59.preheader.for.body65_crit_edge ]
  %arrayidx66 = getelementptr %union.anon.125, ptr %arrayidx, i32 %i.4145
  %49 = ptrtoint ptr %arrayidx66 to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %arrayidx66, align 4
  %arrayidx67 = getelementptr %union.anon.125, ptr %arrayidx2, i32 %i.4145
  %51 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_store2_noabort(i32 %51)
  store i16 %50, ptr %arrayidx67, align 4
  %inc69 = add nuw nsw i32 %i.4145, 1
  %52 = ptrtoint ptr %len60 to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %len60, align 1
  %54 = lshr i8 %53, 1
  %div62 = zext i8 %54 to i32
  %cmp63 = icmp ult i32 %inc69, %div62
  br i1 %cmp63, label %for.body65.for.body65_crit_edge, label %for.body65.sw.epilog85_crit_edge

for.body65.sw.epilog85_crit_edge:                 ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog85

for.body65.for.body65_crit_edge:                  ; preds = %for.body65
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body65

for.body78:                                       ; preds = %for.body78.for.body78_crit_edge, %for.cond72.preheader.for.body78_crit_edge
  %i.5142 = phi i32 [ %inc82, %for.body78.for.body78_crit_edge ], [ 0, %for.cond72.preheader.for.body78_crit_edge ]
  %arrayidx79 = getelementptr %union.anon.125, ptr %arrayidx, i32 %i.5142
  %55 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %arrayidx79, align 4
  %arrayidx80 = getelementptr %union.anon.125, ptr %arrayidx2, i32 %i.5142
  %57 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_store2_noabort(i32 %57)
  store i16 %56, ptr %arrayidx80, align 4
  %inc82 = add nuw nsw i32 %i.5142, 1
  %58 = ptrtoint ptr %len73 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %len73, align 1
  %60 = lshr i8 %59, 1
  %div75 = zext i8 %60 to i32
  %cmp76 = icmp ult i32 %inc82, %div75
  br i1 %cmp76, label %for.body78.for.body78_crit_edge, label %for.body78.sw.epilog85_crit_edge

for.body78.sw.epilog85_crit_edge:                 ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog85

for.body78.for.body78_crit_edge:                  ; preds = %for.body78
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body78

sw.epilog85:                                      ; preds = %for.body78.sw.epilog85_crit_edge, %for.body65.sw.epilog85_crit_edge, %for.cond59.preheader.sw.epilog85_crit_edge, %for.cond72.preheader.sw.epilog85_crit_edge, %sw.bb54.sw.epilog85_crit_edge, %for.body47.sw.epilog85_crit_edge, %for.body34.sw.epilog85_crit_edge, %for.cond28.preheader.sw.epilog85_crit_edge, %for.cond41.preheader.sw.epilog85_crit_edge, %sw.bb23.sw.epilog85_crit_edge, %for.body16.sw.epilog85_crit_edge, %for.body.sw.epilog85_crit_edge, %for.cond.preheader.sw.epilog85_crit_edge, %for.cond10.preheader.sw.epilog85_crit_edge, %sw.bb.sw.epilog85_crit_edge, %entry.sw.epilog85_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_byteorder_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  %size = alloca i32, align 4
  %len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %size) #5
  %0 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %size, align 4, !annotation !17
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #5
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 4, !annotation !17
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %3, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %4 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx1, align 4
  %cmp2 = icmp eq ptr %5, null
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 4
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx4, align 4
  %cmp5 = icmp eq ptr %7, null
  br i1 %cmp5, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 5
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx7, align 4
  %cmp8 = icmp eq ptr %9, null
  br i1 %cmp8, label %lor.lhs.false6.cleanup_crit_edge, label %lor.lhs.false9

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false9:                                   ; preds = %lor.lhs.false6
  %arrayidx10 = getelementptr ptr, ptr %tb, i32 3
  %10 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx10, align 4
  %cmp11 = icmp eq ptr %11, null
  br i1 %cmp11, label %lor.lhs.false9.cleanup_crit_edge, label %if.end

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false9
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i, align 4
  %op = getelementptr inbounds %struct.nft_byteorder, ptr %data.i, i32 0, i32 2
  %14 = trunc i32 %13 to i8
  %15 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %op, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %14)
  %switch = icmp ult i8 %14, 2
  br i1 %switch, label %sw.epilog, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7, align 4
  %call16 = call i32 @nft_parse_u32_check(ptr noundef %17, i32 noundef 255, ptr noundef nonnull %size) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp17 = icmp slt i32 %call16, 0
  br i1 %cmp17, label %sw.epilog.cleanup_crit_edge, label %if.end19

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end19:                                         ; preds = %sw.epilog
  %18 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %size, align 4
  %conv = trunc i32 %19 to i8
  %size20 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %20 = ptrtoint ptr %size20 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv, ptr %size20, align 4
  %21 = zext i8 %conv to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %conv, label %if.end19.cleanup_crit_edge [
    i8 2, label %if.end19.sw.epilog25_crit_edge
    i8 4, label %if.end19.sw.epilog25_crit_edge72
    i8 8, label %if.end19.sw.epilog25_crit_edge73
  ]

if.end19.sw.epilog25_crit_edge73:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog25

if.end19.sw.epilog25_crit_edge72:                 ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog25

if.end19.sw.epilog25_crit_edge:                   ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog25

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

sw.epilog25:                                      ; preds = %if.end19.sw.epilog25_crit_edge, %if.end19.sw.epilog25_crit_edge72, %if.end19.sw.epilog25_crit_edge73
  %22 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx4, align 4
  %call27 = call i32 @nft_parse_u32_check(ptr noundef %23, i32 noundef 255, ptr noundef nonnull %len) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %cmp28 = icmp slt i32 %call27, 0
  br i1 %cmp28, label %sw.epilog25.cleanup_crit_edge, label %if.end31

sw.epilog25.cleanup_crit_edge:                    ; preds = %sw.epilog25
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end31:                                         ; preds = %sw.epilog25
  %24 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len, align 4
  %conv32 = trunc i32 %25 to i8
  %len33 = getelementptr inbounds %struct.nft_byteorder, ptr %data.i, i32 0, i32 3
  %26 = ptrtoint ptr %len33 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 %conv32, ptr %len33, align 1
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %conv36 = and i32 %25, 255
  %call37 = call i32 @nft_parse_register_load(ptr noundef %28, ptr noundef %data.i, i32 noundef %conv36) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %cmp38 = icmp slt i32 %call37, 0
  br i1 %cmp38, label %if.end31.cleanup_crit_edge, label %if.end41

if.end31.cleanup_crit_edge:                       ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end41:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx1, align 4
  %dreg = getelementptr inbounds %struct.nft_byteorder, ptr %data.i, i32 0, i32 1
  %31 = ptrtoint ptr %len33 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %len33, align 1
  %conv44 = zext i8 %32 to i32
  %call45 = call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %30, ptr noundef %dreg, ptr noundef null, i32 noundef 0, i32 noundef %conv44) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %if.end31.cleanup_crit_edge, %sw.epilog25.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %if.end41 ], [ -22, %lor.lhs.false9.cleanup_crit_edge ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call16, %sw.epilog.cleanup_crit_edge ], [ -22, %if.end19.cleanup_crit_edge ], [ %call27, %sw.epilog25.cleanup_crit_edge ], [ %call37, %if.end31.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %size) #5
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_byteorder_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %tmp.i31 = alloca i32, align 4
  %tmp.i29 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 4
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %dreg = getelementptr inbounds %struct.nft_byteorder, ptr %data.i, i32 0, i32 1
  %2 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dreg, align 1
  %conv2 = zext i8 %3 to i32
  %call3 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 2, i32 noundef %conv2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_put_failure

if.end6:                                          ; preds = %if.end
  %op = getelementptr inbounds %struct.nft_byteorder, ptr %data.i, i32 0, i32 2
  %4 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %op, align 2
  %bf.cast = zext i8 %bf.load to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #5
  %5 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %bf.cast, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool8.not = icmp eq i32 %call.i, 0
  br i1 %tobool8.not, label %if.end10, label %if.end6.nla_put_failure_crit_edge

if.end6.nla_put_failure_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_put_failure

if.end10:                                         ; preds = %if.end6
  %len = getelementptr inbounds %struct.nft_byteorder, ptr %data.i, i32 0, i32 3
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 1
  %conv11 = zext i8 %7 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i29) #5
  %8 = ptrtoint ptr %tmp.i29 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv11, ptr %tmp.i29, align 4
  %call.i30 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i29) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i29) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i30)
  %tobool13.not = icmp eq i32 %call.i30, 0
  br i1 %tobool13.not, label %if.end15, label %if.end10.nla_put_failure_crit_edge

if.end10.nla_put_failure_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_put_failure

if.end15:                                         ; preds = %if.end10
  %size = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %9 = ptrtoint ptr %size to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %size, align 4
  %conv16 = zext i8 %10 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i31) #5
  %11 = ptrtoint ptr %tmp.i31 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv16, ptr %tmp.i31, align 4
  %call.i32 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i31) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i31) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i32)
  %tobool18.not = icmp eq i32 %call.i32, 0
  br i1 %tobool18.not, label %if.end15.cleanup_crit_edge, label %if.end15.nla_put_failure_crit_edge

if.end15.nla_put_failure_crit_edge:               ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %nla_put_failure

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

nla_put_failure:                                  ; preds = %if.end15.nla_put_failure_crit_edge, %if.end10.nla_put_failure_crit_edge, %if.end6.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end15.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %if.end15.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nft_byteorder_reduce(ptr nocapture noundef writeonly %track, ptr nocapture noundef readonly %expr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %dreg = getelementptr inbounds %struct.nft_byteorder, ptr %data.i, i32 0, i32 1
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %arrayidx, align 4
  %3 = load i8, ptr %dreg, align 1
  %idxprom3 = zext i8 %3 to i32
  %bitwise = getelementptr [20 x %struct.anon.119], ptr %track, i32 0, i32 %idxprom3, i32 1
  %4 = ptrtoint ptr %bitwise to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %bitwise, align 4
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_u32_check(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_load(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_store(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

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

attributes #0 = { argmemonly nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_byteorder.c", i32 191, i32 11}
!2 = !{ptr @nft_byteorder_type, !3, !"nft_byteorder_type", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_byteorder.c", i32 190, i32 22}
!4 = !{ptr @nft_byteorder_ops, !5, !"nft_byteorder_ops", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_byteorder.c", i32 181, i32 34}
!6 = !{ptr @nft_byteorder_policy, !7, !"nft_byteorder_policy", i1 false, i1 false}
!7 = !{!"../net/netfilter/nft_byteorder.c", i32 87, i32 32}
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
