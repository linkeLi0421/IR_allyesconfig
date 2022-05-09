; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_cmp.c_pt.bc'
source_filename = "../net/netfilter/nft_cmp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.40 }
%union.anon.40 = type { i32 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_cmp_expr = type { %struct.nft_data, i8, i8, i8, [5 x i8] }
%struct.nft_data = type { %union.anon.118 }
%union.anon.118 = type { [4 x i32] }
%struct.nft_data_desc = type { i32, i32 }
%struct.nft_cmp_fast_expr = type { i32, i32, i8, i8, i8 }
%union.nft_cmp_offload_data = type { i64 }
%struct.nft_offload_ctx = type { %struct.anon.120, i32, ptr, [24 x %struct.nft_offload_reg] }
%struct.anon.120 = type { i32, i16, i8 }
%struct.nft_offload_reg = type { i32, i32, i32, i32, i32, [4 x i8], %struct.nft_data, %struct.nft_data }
%struct.nft_flow_rule = type { i16, %struct.nft_flow_match, ptr }
%struct.nft_flow_match = type { %struct.flow_dissector, %struct.nft_flow_key, %struct.nft_flow_key }
%struct.flow_dissector = type { i32, [28 x i16] }
%struct.nft_flow_key = type { %struct.flow_dissector_key_basic, %struct.flow_dissector_key_control, %union.anon.121, %struct.flow_dissector_key_ports, %struct.flow_dissector_key_ip, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_vlan, %struct.flow_dissector_key_eth_addrs, %struct.flow_dissector_key_meta }
%struct.flow_dissector_key_basic = type { i16, i8, i8 }
%struct.flow_dissector_key_control = type { i16, i16, i32 }
%union.anon.121 = type { %struct.flow_dissector_key_ipv6_addrs }
%struct.flow_dissector_key_ipv6_addrs = type { %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.114 }
%union.anon.114 = type { [4 x i32] }
%struct.flow_dissector_key_ports = type { %union.anon.122 }
%union.anon.122 = type { i32 }
%struct.flow_dissector_key_ip = type { i8, i8 }
%struct.flow_dissector_key_vlan = type { %union.anon.124, i16 }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type { i16 }
%struct.flow_dissector_key_eth_addrs = type { [6 x i8], [6 x i8] }
%struct.flow_dissector_key_meta = type { i32, i16 }

@nft_cmp_type = dso_local global %struct.nft_expr_type { ptr @nft_cmp_select_ops, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_cmp_policy, i32 3, i8 0, i8 0 }, section ".data..read_mostly", align 4
@nft_cmp_fast_ops = dso_local constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr null, ptr null, i32 24, ptr @nft_cmp_fast_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_cmp_fast_dump, ptr null, ptr null, ptr null, ptr @nft_cmp_fast_offload, ptr null, ptr null, ptr @nft_cmp_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"cmp\00", [28 x i8] zeroinitializer }, align 32
@nft_cmp_policy = internal constant { [4 x %struct.nla_policy], [32 x i8] } { [4 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.40 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nft_payload_n2h.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"net/netfilter/nft_cmp.c\00", [40 x i8] zeroinitializer }, align 32
@nft_cmp_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_cmp_eval, ptr null, i32 32, ptr @nft_cmp_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_cmp_dump, ptr null, ptr null, ptr null, ptr @nft_cmp_offload, ptr null, ptr null, ptr @nft_cmp_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 8, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 4, i64 8]
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"nft_cmp_fast_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 266, i32 27 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 319, i32 11 }
@___asan_gen_.10 = private unnamed_addr constant [15 x i8] c"nft_cmp_policy\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 66, i32 32 }
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 137, i32 3 }
@___asan_gen_.16 = private unnamed_addr constant [12 x i8] c"nft_cmp_ops\00", align 1
@___asan_gen_.17 = private constant [27 x i8] c"../net/netfilter/nft_cmp.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 190, i32 34 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @nft_cmp_fast_ops, ptr @.str, ptr @nft_cmp_policy, ptr @.str.1, ptr @nft_cmp_ops], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_cmp_fast_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_cmp_policy to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_cmp_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nft_cmp_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr nocapture readnone %pkt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %0 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sreg, align 8
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %len = getelementptr inbounds %struct.nft_cmp_expr, ptr %data.i, i32 0, i32 2
  %2 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %len, align 1
  %conv = zext i8 %3 to i32
  %call1 = tail call i32 @memcmp(ptr noundef %arrayidx, ptr noundef %data.i, i32 noundef %conv) #9
  %op = getelementptr inbounds %struct.nft_cmp_expr, ptr %data.i, i32 0, i32 3
  %4 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load38 = load i8, ptr %op, align 2
  %5 = zext i8 %bf.load38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bf.load38, label %entry.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb3
    i8 2, label %sw.bb8
    i8 3, label %sw.bb13
    i8 4, label %sw.bb18
    i8 5, label %sw.bb23
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp.not = icmp eq i32 %call1, 0
  br i1 %cmp.not, label %sw.bb.cleanup_crit_edge, label %sw.bb.mismatch_crit_edge

sw.bb.mismatch_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %mismatch

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp4 = icmp eq i32 %call1, 0
  br i1 %cmp4, label %sw.bb3.mismatch_crit_edge, label %sw.bb3.cleanup_crit_edge

sw.bb3.cleanup_crit_edge:                         ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3.mismatch_crit_edge:                        ; preds = %sw.bb3
  call void @__sanitizer_cov_trace_pc() #8
  br label %mismatch

sw.bb8:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %6 = icmp sgt i32 %call1, -1
  br i1 %6, label %sw.bb8.mismatch_crit_edge, label %sw.bb8.cleanup_crit_edge

sw.bb8.cleanup_crit_edge:                         ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb8.mismatch_crit_edge:                        ; preds = %sw.bb8
  call void @__sanitizer_cov_trace_pc() #8
  br label %mismatch

sw.bb13:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp14.old = icmp sgt i32 %call1, 0
  br i1 %cmp14.old, label %sw.bb13.mismatch_crit_edge, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb13.mismatch_crit_edge:                       ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %mismatch

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %7 = icmp slt i32 %call1, 1
  br i1 %7, label %sw.bb18.mismatch_crit_edge, label %sw.bb18.cleanup_crit_edge

sw.bb18.cleanup_crit_edge:                        ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb18.mismatch_crit_edge:                       ; preds = %sw.bb18
  call void @__sanitizer_cov_trace_pc() #8
  br label %mismatch

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp24.old = icmp slt i32 %call1, 0
  br i1 %cmp24.old, label %sw.bb23.mismatch_crit_edge, label %sw.bb23.cleanup_crit_edge

sw.bb23.cleanup_crit_edge:                        ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb23.mismatch_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #8
  br label %mismatch

mismatch:                                         ; preds = %sw.bb23.mismatch_crit_edge, %sw.bb18.mismatch_crit_edge, %sw.bb13.mismatch_crit_edge, %sw.bb8.mismatch_crit_edge, %sw.bb3.mismatch_crit_edge, %sw.bb.mismatch_crit_edge
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %mismatch, %sw.bb23.cleanup_crit_edge, %sw.bb18.cleanup_crit_edge, %sw.bb13.cleanup_crit_edge, %sw.bb8.cleanup_crit_edge, %sw.bb3.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @memcmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_cmp_fast_init(ptr nocapture noundef readnone %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #3 align 64 {
entry:
  %desc = alloca %struct.nft_data_desc, align 4
  %data = alloca %struct.nft_data, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc) #6
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %desc, align 4, !annotation !22
  %1 = getelementptr inbounds %struct.nft_data_desc, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #6
  %arrayidx = getelementptr ptr, ptr %tb, i32 3
  %3 = call ptr @memset(ptr %data, i32 255, i32 16)
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %call1 = call i32 @nft_data_init(ptr noundef null, ptr noundef nonnull %data, i32 noundef 16, ptr noundef nonnull %desc, ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx2 = getelementptr ptr, ptr %tb, i32 1
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  %call3 = call i32 @nft_parse_register_load(ptr noundef %7, ptr noundef %sreg, i32 noundef %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %1, align 4
  %mul = shl i32 %11, 3
  store i32 %mul, ptr %1, align 4
  %sub.i = sub i32 32, %mul
  %shr.i = lshr i32 -1, %sub.i
  %12 = call i32 @llvm.bswap.i32(i32 %shr.i) #6
  %mask = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %mask, align 4
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %data, align 8
  %and = and i32 %12, %15
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %and, ptr %data.i, align 4
  %conv = trunc i32 %mul to i8
  %len14 = getelementptr inbounds %struct.nft_cmp_fast_expr, ptr %data.i, i32 0, i32 3
  %17 = ptrtoint ptr %len14 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv, ptr %len14, align 1
  %arrayidx15 = getelementptr ptr, ptr %tb, i32 2
  %18 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx15, align 4
  %add.ptr.i.i = getelementptr i8, ptr %19, i32 4
  %20 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %cmp17 = icmp ne i32 %21, 0
  %inv = getelementptr inbounds %struct.nft_cmp_fast_expr, ptr %data.i, i32 0, i32 4
  %frombool = zext i1 %cmp17 to i8
  %22 = ptrtoint ptr %inv to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %frombool, ptr %inv, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end6 ], [ %call1, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_cmp_fast_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #3 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  %data = alloca %struct.nft_data, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %inv = getelementptr inbounds %struct.nft_cmp_fast_expr, ptr %data.i, i32 0, i32 4
  %0 = ptrtoint ptr %inv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %inv, align 2, !range !23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #6
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %2 = call ptr @memset(ptr %data, i32 255, i32 16)
  %3 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %sreg, align 4
  %conv = zext i8 %4 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %5 = zext i8 %1 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %6 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool4.not = icmp eq i32 %call.i, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end6:                                          ; preds = %if.end
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %data.i, align 4
  %9 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %data, align 8
  %len = getelementptr inbounds %struct.nft_cmp_fast_expr, ptr %data.i, i32 0, i32 3
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %len, align 1
  %12 = lshr i8 %11, 3
  %div = zext i8 %12 to i32
  %call9 = call i32 @nft_data_dump(ptr noundef %skb, i32 noundef 3, ptr noundef nonnull %data, i32 noundef 0, i32 noundef %div) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %cmp = icmp slt i32 %call9, 0
  br i1 %cmp, label %if.end6.nla_put_failure_crit_edge, label %if.end6.cleanup_crit_edge

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6.nla_put_failure_crit_edge:                ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

nla_put_failure:                                  ; preds = %if.end6.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end6.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_cmp_fast_offload(ptr noundef %ctx, ptr nocapture noundef %flow, ptr nocapture noundef readonly %expr) #3 align 64 {
entry:
  %cmp = alloca %struct.nft_cmp_expr, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %cmp) #6
  %0 = getelementptr inbounds [4 x i32], ptr %cmp, i32 0, i32 1
  %1 = getelementptr inbounds %struct.nft_cmp_expr, ptr %cmp, i32 0, i32 1
  %2 = getelementptr inbounds %struct.nft_cmp_expr, ptr %cmp, i32 0, i32 2
  %3 = getelementptr inbounds %struct.nft_cmp_expr, ptr %cmp, i32 0, i32 3
  %4 = getelementptr inbounds i8, ptr %cmp, i32 16
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_store8_noabort(i32 %5)
  store i64 -1, ptr %4, align 8
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data.i, align 4
  %8 = ptrtoint ptr %cmp to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cmp, align 8
  %9 = call ptr @memset(ptr %0, i32 0, i32 12)
  %sreg3 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 2
  %10 = ptrtoint ptr %sreg3 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %sreg3, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %1, align 8
  %len4 = getelementptr inbounds %struct.nft_cmp_fast_expr, ptr %data.i, i32 0, i32 3
  %13 = ptrtoint ptr %len4 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %len4, align 1
  %15 = lshr i8 %14, 3
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %2, align 1
  %inv = getelementptr inbounds %struct.nft_cmp_fast_expr, ptr %data.i, i32 0, i32 4
  %17 = ptrtoint ptr %inv to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %inv, align 2, !range !23
  %19 = ptrtoint ptr %3 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %18, ptr %3, align 2
  %call7 = call fastcc i32 @__nft_cmp_offload(ptr noundef %ctx, ptr noundef %flow, ptr noundef nonnull %cmp)
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %cmp) #6
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @nft_cmp_select_ops(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb) #3 align 64 {
entry:
  %desc = alloca %struct.nft_data_desc, align 4
  %data = alloca %struct.nft_data, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc) #6
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %desc, align 4, !annotation !22
  %1 = getelementptr inbounds %struct.nft_data_desc, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !22
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %data) #6
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %3 = call ptr @memset(ptr %data, i32 255, i32 16)
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %5, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %cmp2 = icmp eq ptr %7, null
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %cmp5 = icmp eq ptr %9, null
  br i1 %cmp5, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 4
  %10 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %11)
  %switch = icmp ult i32 %11, 6
  br i1 %switch, label %sw.epilog, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %call10 = call i32 @nft_data_init(ptr noundef null, ptr noundef nonnull %data, i32 noundef 16, ptr noundef nonnull %desc, ptr noundef nonnull %9) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp slt i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.end14

if.then12:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  %12 = inttoptr i32 %call10 to ptr
  br label %cleanup

if.end14:                                         ; preds = %sw.epilog
  %13 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp15.not = icmp eq i32 %14, 0
  br i1 %cmp15.not, label %if.end17, label %err1

if.end17:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %16)
  %cmp18 = icmp ult i32 %16, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %switch37 = icmp ult i32 %11, 2
  %or.cond = select i1 %cmp18, i1 %switch37, i1 false
  %spec.select = select i1 %or.cond, ptr @nft_cmp_fast_ops, ptr @nft_cmp_ops
  br label %cleanup

err1:                                             ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  call void @nft_data_release(ptr noundef nonnull %data, i32 noundef %14) #6
  br label %cleanup

cleanup:                                          ; preds = %err1, %if.end17, %if.then12, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %12, %if.then12 ], [ inttoptr (i32 -22 to ptr), %err1 ], [ %spec.select, %if.end17 ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false3.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %data) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc) #6
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_data_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_load(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_data_dump(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__nft_cmp_offload(ptr noundef %ctx, ptr nocapture noundef %flow, ptr noundef %priv) unnamed_addr #3 align 64 {
entry:
  %_data = alloca %union.nft_cmp_offload_data, align 8
  %_datamask = alloca %union.nft_cmp_offload_data, align 8
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %sreg = getelementptr inbounds %struct.nft_cmp_expr, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sreg, align 8
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_data) #6
  %2 = ptrtoint ptr %_data to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 -1, ptr %_data, align 8, !annotation !22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_datamask) #6
  %3 = ptrtoint ptr %_datamask to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 -1, ptr %_datamask, align 8, !annotation !22
  %match = getelementptr inbounds %struct.nft_flow_rule, ptr %flow, i32 0, i32 1
  %mask1 = getelementptr inbounds %struct.nft_flow_rule, ptr %flow, i32 0, i32 1, i32 2
  %key3 = getelementptr inbounds %struct.nft_flow_rule, ptr %flow, i32 0, i32 1, i32 1
  %op = getelementptr inbounds %struct.nft_cmp_expr, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %op, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %bf.load)
  %cmp.not = icmp eq i8 %bf.load, 0
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %len = getelementptr inbounds %struct.nft_cmp_expr, ptr %priv, i32 0, i32 2
  %5 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %len, align 1
  %conv = zext i8 %6 to i32
  %len4 = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom, i32 1
  %7 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %len4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %conv)
  %cmp5 = icmp ult i32 %8, %conv
  br i1 %cmp5, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %flags = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom, i32 4
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 8
  %and = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %if.end
  %11 = zext i32 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %8, label %land.end.i [
    i32 2, label %sw.bb.i
    i32 4, label %sw.bb1.i
    i32 8, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %priv to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %priv, align 2
  %14 = ptrtoint ptr %_data to i32
  call void @__asan_store2_noabort(i32 %14)
  store i16 %13, ptr %_data, align 8
  br label %nft_payload_n2h.exit

sw.bb1.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %15 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %priv, align 4
  %17 = ptrtoint ptr %_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %_data, align 8
  br label %nft_payload_n2h.exit

sw.bb2.i:                                         ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %priv to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %priv, align 8
  %20 = ptrtoint ptr %_data to i32
  call void @__asan_store8_noabort(i32 %20)
  store i64 %19, ptr %_data, align 8
  br label %nft_payload_n2h.exit

land.end.i:                                       ; preds = %if.then7
  %.b41.i = load i1, ptr @nft_payload_n2h.__already_done, align 1
  br i1 %.b41.i, label %land.end.i.nft_payload_n2h.exit_crit_edge, label %if.then.i, !prof !24

land.end.i.nft_payload_n2h.exit_crit_edge:        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_payload_n2h.exit

if.then.i:                                        ; preds = %land.end.i
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nft_payload_n2h.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 137, i32 noundef 9, ptr noundef null) #6
  br label %nft_payload_n2h.exit

nft_payload_n2h.exit:                             ; preds = %if.then.i, %land.end.i.nft_payload_n2h.exit_crit_edge, %sw.bb2.i, %sw.bb1.i, %sw.bb.i
  %mask10 = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom, i32 7
  %21 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len4, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %22, label %land.end.i77 [
    i32 2, label %sw.bb.i73
    i32 4, label %sw.bb1.i74
    i32 8, label %sw.bb2.i75
  ]

sw.bb.i73:                                        ; preds = %nft_payload_n2h.exit
  call void @__sanitizer_cov_trace_pc() #8
  %24 = ptrtoint ptr %mask10 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %mask10, align 2
  %26 = ptrtoint ptr %_datamask to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %25, ptr %_datamask, align 8
  br label %if.end14

sw.bb1.i74:                                       ; preds = %nft_payload_n2h.exit
  call void @__sanitizer_cov_trace_pc() #8
  %27 = ptrtoint ptr %mask10 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mask10, align 4
  %29 = ptrtoint ptr %_datamask to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %_datamask, align 8
  br label %if.end14

sw.bb2.i75:                                       ; preds = %nft_payload_n2h.exit
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %mask10 to i32
  call void @__asan_load8_noabort(i32 %30)
  %31 = load i64, ptr %mask10, align 8
  %32 = ptrtoint ptr %_datamask to i32
  call void @__asan_store8_noabort(i32 %32)
  store i64 %31, ptr %_datamask, align 8
  br label %if.end14

land.end.i77:                                     ; preds = %nft_payload_n2h.exit
  %.b41.i76 = load i1, ptr @nft_payload_n2h.__already_done, align 1
  br i1 %.b41.i76, label %land.end.i77.if.end14_crit_edge, label %if.then.i78, !prof !24

land.end.i77.if.end14_crit_edge:                  ; preds = %land.end.i77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14

if.then.i78:                                      ; preds = %land.end.i77
  call void @__sanitizer_cov_trace_pc() #8
  store i1 true, ptr @nft_payload_n2h.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 137, i32 noundef 9, ptr noundef null) #6
  br label %if.end14

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %mask13 = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom, i32 7
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then.i78, %land.end.i77.if.end14_crit_edge, %sw.bb2.i75, %sw.bb1.i74, %sw.bb.i73
  %data.0 = phi ptr [ %priv, %if.else ], [ %_data, %sw.bb.i73 ], [ %_data, %sw.bb1.i74 ], [ %_data, %sw.bb2.i75 ], [ %_data, %land.end.i77.if.end14_crit_edge ], [ %_data, %if.then.i78 ]
  %datamask.0 = phi ptr [ %mask13, %if.else ], [ %_datamask, %sw.bb.i73 ], [ %_datamask, %sw.bb1.i74 ], [ %_datamask, %sw.bb2.i75 ], [ %_datamask, %land.end.i77.if.end14_crit_edge ], [ %_datamask, %if.then.i78 ]
  %offset = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom, i32 3
  %33 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %offset, align 4
  %add.ptr = getelementptr i8, ptr %key3, i32 %34
  %35 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %len4, align 4
  %37 = call ptr @memcpy(ptr %add.ptr, ptr %data.0, i32 %36)
  %38 = load i32, ptr %offset, align 4
  %add.ptr17 = getelementptr i8, ptr %mask1, i32 %38
  %39 = load i32, ptr %len4, align 4
  %40 = call ptr @memcpy(ptr %add.ptr17, ptr %datamask.0, i32 %39)
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 8
  %shl = shl nuw i32 1, %42
  %43 = ptrtoint ptr %match to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %match, align 4
  %or = or i32 %44, %shl
  store i32 %or, ptr %match, align 4
  %base_offset = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom, i32 2
  %45 = ptrtoint ptr %base_offset to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %base_offset, align 8
  %conv21 = trunc i32 %46 to i16
  %47 = load i32, ptr %arrayidx, align 8
  %arrayidx26 = getelementptr %struct.nft_flow_rule, ptr %flow, i32 0, i32 1, i32 0, i32 1, i32 %47
  %48 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv21, ptr %arrayidx26, align 2
  %49 = load i32, ptr %arrayidx, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 25, i32 %49)
  %cmp28 = icmp eq i32 %49, 25
  br i1 %cmp28, label %land.lhs.true, label %if.end14.if.end39_crit_edge

if.end14.if.end39_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true:                                    ; preds = %if.end14
  %50 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 76, i32 %51)
  %cmp31 = icmp eq i32 %51, 76
  br i1 %cmp31, label %land.lhs.true33, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

land.lhs.true33:                                  ; preds = %land.lhs.true
  %52 = ptrtoint ptr %priv to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %priv, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %53)
  %cmp36.not = icmp eq i16 %53, 1
  br i1 %cmp36.not, label %land.lhs.true33.if.end39_crit_edge, label %land.lhs.true33.cleanup_crit_edge

land.lhs.true33.cleanup_crit_edge:                ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

land.lhs.true33.if.end39_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.end39:                                         ; preds = %land.lhs.true33.if.end39_crit_edge, %land.lhs.true.if.end39_crit_edge, %if.end14.if.end39_crit_edge
  %54 = ptrtoint ptr %len4 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %len4, align 4
  tail call void @nft_offload_update_dependency(ptr noundef %ctx, ptr noundef %priv, i32 noundef %55) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end39, %land.lhs.true33.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end39 ], [ -95, %lor.lhs.false.cleanup_crit_edge ], [ -95, %entry.cleanup_crit_edge ], [ -95, %land.lhs.true33.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_datamask) #6
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_data) #6
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_offload_update_dependency(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_data_release(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_cmp_init(ptr nocapture noundef readnone %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #3 align 64 {
entry:
  %desc = alloca %struct.nft_data_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc) #6
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %desc, align 4, !annotation !22
  %1 = getelementptr inbounds %struct.nft_data_desc, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !22
  %arrayidx = getelementptr ptr, ptr %tb, i32 3
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call1 = call i32 @nft_data_init(ptr noundef null, ptr noundef %data.i, i32 noundef 16, ptr noundef nonnull %desc, ptr noundef %4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %cmp2.not = icmp eq i32 %6, 0
  br i1 %cmp2.not, label %if.end6, label %if.then3

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @nft_data_release(ptr noundef %data.i, i32 noundef %6) #6
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 1
  %7 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx7, align 4
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %1, align 4
  %call8 = call i32 @nft_parse_register_load(ptr noundef %8, ptr noundef %sreg, i32 noundef %10) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %cmp9 = icmp slt i32 %call8, 0
  br i1 %cmp9, label %if.end6.cleanup_crit_edge, label %if.end11

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx12 = getelementptr ptr, ptr %tb, i32 2
  %11 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx12, align 4
  %add.ptr.i.i = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i, align 4
  %op = getelementptr inbounds %struct.nft_cmp_expr, ptr %data.i, i32 0, i32 3
  %15 = trunc i32 %14 to i8
  %16 = ptrtoint ptr %op to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %15, ptr %op, align 2
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %1, align 4
  %conv = trunc i32 %18 to i8
  %len15 = getelementptr inbounds %struct.nft_cmp_expr, ptr %data.i, i32 0, i32 2
  %19 = ptrtoint ptr %len15 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %conv, ptr %len15, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end6.cleanup_crit_edge, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %if.then3 ], [ 0, %if.end11 ], [ %call1, %entry.cleanup_crit_edge ], [ %call8, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_cmp_dump(ptr noundef %skb, ptr noundef %expr) #3 align 64 {
entry:
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %0 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sreg, align 8
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %op = getelementptr inbounds %struct.nft_cmp_expr, ptr %data.i, i32 0, i32 3
  %2 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %op, align 2
  %bf.cast = zext i8 %bf.load to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #6
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bf.cast, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %if.end5, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

if.end5:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.nft_cmp_expr, ptr %data.i, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 1
  %conv6 = zext i8 %5 to i32
  %call7 = call i32 @nft_data_dump(ptr noundef %skb, i32 noundef 3, ptr noundef %data.i, i32 noundef 0, i32 noundef %conv6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %cmp = icmp slt i32 %call7, 0
  br i1 %cmp, label %if.end5.nla_put_failure_crit_edge, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end5.nla_put_failure_crit_edge:                ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #8
  br label %nla_put_failure

nla_put_failure:                                  ; preds = %if.end5.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %if.end5.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %if.end5.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_cmp_offload(ptr noundef %ctx, ptr nocapture noundef %flow, ptr noundef %expr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %call1 = tail call fastcc i32 @__nft_cmp_offload(ptr noundef %ctx, ptr noundef %flow, ptr noundef %data.i)
  ret i32 %call1
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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

attributes #0 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @nft_cmp_fast_ops, !1, !"nft_cmp_fast_ops", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_cmp.c", i32 266, i32 27}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_cmp.c", i32 319, i32 11}
!4 = !{ptr @nft_cmp_type, !5, !"nft_cmp_type", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_cmp.c", i32 318, i32 22}
!6 = distinct !{null, !7, !"__already_done", i1 false, i1 false}
!7 = !{!"../net/netfilter/nft_cmp.c", i32 137, i32 3}
!8 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @nft_cmp_ops, !10, !"nft_cmp_ops", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_cmp.c", i32 190, i32 34}
!11 = !{ptr @nft_cmp_policy, !12, !"nft_cmp_policy", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_cmp.c", i32 66, i32 32}
!13 = !{i32 1, !"wchar_size", i32 2}
!14 = !{i32 1, !"min_enum_size", i32 4}
!15 = !{i32 8, !"branch-target-enforcement", i32 0}
!16 = !{i32 8, !"sign-return-address", i32 0}
!17 = !{i32 8, !"sign-return-address-all", i32 0}
!18 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!19 = !{i32 7, !"uwtable", i32 1}
!20 = !{i32 7, !"frame-pointer", i32 2}
!21 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!22 = !{!"auto-init"}
!23 = !{i8 0, i8 2}
!24 = !{!"branch_weights", i32 2000, i32 1}
