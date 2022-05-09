; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_immediate.c_pt.bc'
source_filename = "../net/netfilter/nft_immediate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.40 }
%union.anon.40 = type { i32 }
%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_immediate_expr = type { %struct.nft_data, i8, i8, [6 x i8] }
%struct.nft_data = type { %union.anon.118 }
%union.anon.118 = type { [4 x i32] }
%struct.nft_data_desc = type { i32, i32 }
%struct.nft_chain = type { ptr, ptr, %struct.list_head, %struct.list_head, %struct.rhlist_head, ptr, i64, i32, i8, ptr, i16, ptr, ptr }
%struct.rhlist_head = type { %struct.rhash_head, ptr }
%struct.rhash_head = type { ptr }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
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
%struct.flow_rule = type { %struct.flow_match, %struct.flow_action }
%struct.flow_match = type { ptr, ptr, ptr }
%struct.flow_action = type { i32, [0 x %struct.flow_action_entry] }
%struct.flow_action_entry = type { i32, i32, i32, ptr, ptr, %union.anon.126, ptr }
%union.anon.126 = type { %struct.anon.131 }
%struct.anon.131 = type { i32, i64, i64, i64, i32 }
%struct.nft_offload_ctx = type { %struct.anon.120, i32, ptr, [24 x %struct.nft_offload_reg] }
%struct.anon.120 = type { i32, i16, i8 }
%struct.nft_offload_reg = type { i32, i32, i32, i32, i32, [4 x i8], %struct.nft_data, %struct.nft_data }

@nft_imm_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_immediate_eval, ptr null, i32 32, ptr @nft_immediate_init, ptr @nft_immediate_activate, ptr @nft_immediate_deactivate, ptr @nft_immediate_destroy, ptr null, ptr @nft_immediate_dump, ptr @nft_immediate_validate, ptr null, ptr null, ptr @nft_immediate_offload, ptr @nft_immediate_offload_action, ptr null, ptr @nft_imm_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"immediate\00", [22 x i8] zeroinitializer }, align 32
@nft_immediate_policy = internal constant { [3 x %struct.nla_policy], [40 x i8] } { [3 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.40 zeroinitializer }, %struct.nla_policy { i8 8, i8 0, i16 0, %union.anon.40 zeroinitializer }], [40 x i8] zeroinitializer }, align 32
@nft_imm_type = dso_local global %struct.nft_expr_type { ptr null, ptr null, ptr @nft_imm_ops, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_immediate_policy, i32 2, i8 0, i8 0 }, section ".data..read_mostly", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"nft_imm_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 226, i32 34 }
@___asan_gen_.4 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 241, i32 11 }
@___asan_gen_.7 = private unnamed_addr constant [21 x i8] c"nft_immediate_policy\00", align 1
@___asan_gen_.8 = private constant [33 x i8] c"../net/netfilter/nft_immediate.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 27, i32 32 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @nft_imm_ops, ptr @.str, ptr @nft_immediate_policy], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_imm_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_immediate_policy to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @nft_immediate_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture readnone %pkt) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 8
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %dlen = getelementptr inbounds %struct.nft_immediate_expr, ptr %data.i, i32 0, i32 2
  %2 = ptrtoint ptr %dlen to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dlen, align 1
  %conv = zext i8 %3 to i32
  %rem.i = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %entry.nft_data_copy.exit_crit_edge, label %if.then.i

entry.nft_data_copy.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %nft_data_copy.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %div4.i = lshr i32 %conv, 2
  %arrayidx.i = getelementptr i32, ptr %arrayidx, i32 %div4.i
  %4 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %arrayidx.i, align 4
  br label %nft_data_copy.exit

nft_data_copy.exit:                               ; preds = %if.then.i, %entry.nft_data_copy.exit_crit_edge
  %5 = call ptr @memcpy(ptr %arrayidx, ptr %data.i, i32 %conv)
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_immediate_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  %desc = alloca %struct.nft_data_desc, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %desc) #6
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %desc, align 4, !annotation !17
  %1 = getelementptr inbounds %struct.nft_data_desc, ptr %desc, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !17
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %4, null
  br i1 %cmp, label %entry.cleanup30_crit_edge, label %lor.lhs.false

entry.cleanup30_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx1, align 4
  %cmp2 = icmp eq ptr %6, null
  br i1 %cmp2, label %lor.lhs.false.cleanup30_crit_edge, label %if.end

lor.lhs.false.cleanup30_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30

if.end:                                           ; preds = %lor.lhs.false
  %call4 = call i32 @nft_data_init(ptr noundef %ctx, ptr noundef %data.i, i32 noundef 16, ptr noundef nonnull %desc, ptr noundef nonnull %6) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp5 = icmp slt i32 %call4, 0
  br i1 %cmp5, label %if.end.cleanup30_crit_edge, label %if.end7

if.end.cleanup30_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30

if.end7:                                          ; preds = %if.end
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %1, align 4
  %conv = trunc i32 %8 to i8
  %dlen = getelementptr inbounds %struct.nft_immediate_expr, ptr %data.i, i32 0, i32 2
  %9 = ptrtoint ptr %dlen to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %dlen, align 1
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %desc, align 4
  %call11 = call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %11, ptr noundef %dreg, ptr noundef %data.i, i32 noundef %13, i32 noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp12 = icmp slt i32 %call11, 0
  br i1 %cmp12, label %if.end7.err1_crit_edge, label %if.end15

if.end7.err1_crit_edge:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %err1

if.end15:                                         ; preds = %if.end7
  %14 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %dreg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %cmp18 = icmp eq i8 %15, 0
  br i1 %cmp18, label %if.then20, label %if.end15.cleanup30_crit_edge

if.end15.cleanup30_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30

if.then20:                                        ; preds = %if.end15
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data.i, align 8
  %18 = and i32 %17, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %18)
  %switch = icmp eq i32 %18, -4
  br i1 %switch, label %sw.bb, label %if.then20.cleanup30_crit_edge

if.then20.cleanup30_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup30

sw.bb:                                            ; preds = %if.then20
  %chain22 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %19 = ptrtoint ptr %chain22 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chain22, align 4
  %flags.i = getelementptr inbounds %struct.nft_chain, ptr %20, i32 0, i32 8
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %bf.load.i = load i8, ptr %flags.i, align 4
  %22 = and i8 %bf.load.i, 36
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %22)
  %23 = icmp eq i8 %22, 36
  br i1 %23, label %sw.bb.err1_crit_edge, label %if.end26

sw.bb.err1_crit_edge:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %err1

if.end26:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %bf.set = or i8 %bf.load.i, 4
  %24 = ptrtoint ptr %flags.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %bf.set, ptr %flags.i, align 4
  br label %cleanup30

err1:                                             ; preds = %sw.bb.err1_crit_edge, %if.end7.err1_crit_edge
  %err.1 = phi i32 [ %call11, %if.end7.err1_crit_edge ], [ -16, %sw.bb.err1_crit_edge ]
  %25 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %desc, align 4
  call void @nft_data_release(ptr noundef %data.i, i32 noundef %26) #6
  br label %cleanup30

cleanup30:                                        ; preds = %err1, %if.end26, %if.then20.cleanup30_crit_edge, %if.end15.cleanup30_crit_edge, %if.end.cleanup30_crit_edge, %lor.lhs.false.cleanup30_crit_edge, %entry.cleanup30_crit_edge
  %retval.0 = phi i32 [ %err.1, %err1 ], [ -22, %lor.lhs.false.cleanup30_crit_edge ], [ -22, %entry.cleanup30_crit_edge ], [ %call4, %if.end.cleanup30_crit_edge ], [ 0, %if.end15.cleanup30_crit_edge ], [ 0, %if.then20.cleanup30_crit_edge ], [ 0, %if.end26 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %desc) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_immediate_activate(ptr nocapture noundef readnone %ctx, ptr noundef %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp eq i8 %1, 0
  %cond.i = select i1 %cmp.i, i32 -256, i32 0
  tail call void @nft_data_hold(ptr noundef %data.i, i32 noundef %cond.i) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_immediate_deactivate(ptr nocapture noundef readnone %ctx, ptr noundef %expr, i32 noundef %phase) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %phase)
  %cmp = icmp eq i32 %phase, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.i = icmp eq i8 %1, 0
  %cond.i = select i1 %cmp.i, i32 -256, i32 0
  tail call void @nft_data_release(ptr noundef %data.i, i32 noundef %cond.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_immediate_destroy(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  %chain_ctx = alloca %struct.nft_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %chain_ctx) #6
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data.i, align 8
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %4)
  %switch = icmp eq i32 %4, -4
  br i1 %switch, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %chain3 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %5 = ptrtoint ptr %chain3 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chain3, align 4
  %flags.i = getelementptr inbounds %struct.nft_chain, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load.i = load i8, ptr %flags.i, align 4
  %8 = and i8 %bf.load.i, 36
  call void @__sanitizer_cov_trace_const_cmp1(i8 36, i8 %8)
  %9 = icmp eq i8 %8, 36
  br i1 %9, label %if.end6, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %sw.bb
  %10 = call ptr @memcpy(ptr %chain_ctx, ptr %ctx, i32 32)
  %chain7 = getelementptr inbounds %struct.nft_ctx, ptr %chain_ctx, i32 0, i32 2
  %11 = ptrtoint ptr %chain7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %6, ptr %chain7, align 4
  %rules = getelementptr inbounds %struct.nft_chain, ptr %6, i32 0, i32 2
  %12 = ptrtoint ptr %rules to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %rules, align 8
  %cmp14.not34 = icmp eq ptr %13, %rules
  br i1 %cmp14.not34, label %if.end6.for.end_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end6.for.body_crit_edge
  %rule.035 = phi ptr [ %n.0, %for.body.for.body_crit_edge ], [ %13, %if.end6.for.body_crit_edge ]
  %14 = ptrtoint ptr %rule.035 to i32
  call void @__asan_load4_noabort(i32 %14)
  %n.0 = load ptr, ptr %rule.035, align 8
  call void @nf_tables_rule_release(ptr noundef nonnull %chain_ctx, ptr noundef %rule.035) #6
  %cmp14.not = icmp eq ptr %n.0, %rules
  br i1 %cmp14.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  call void @nf_tables_chain_destroy(ptr noundef nonnull %chain_ctx) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %chain_ctx) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_immediate_dump(ptr noundef %skb, ptr noundef %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 8
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %2 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dreg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp.i = icmp eq i8 %3, 0
  %cond.i = select i1 %cmp.i, i32 -256, i32 0
  %dlen = getelementptr inbounds %struct.nft_immediate_expr, ptr %data.i, i32 0, i32 2
  %4 = ptrtoint ptr %dlen to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %dlen, align 1
  %conv5 = zext i8 %5 to i32
  %call6 = tail call i32 @nft_data_dump(ptr noundef %skb, i32 noundef 2, ptr noundef %data.i, i32 noundef %cond.i, i32 noundef %conv5) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_immediate_validate(ptr noundef %ctx, ptr nocapture noundef readonly %expr, ptr nocapture noundef readnone %d) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp.not = icmp eq i8 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %data.i, align 8
  %4 = and i32 %3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %4)
  %switch = icmp eq i32 %4, -4
  br i1 %switch, label %sw.bb, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  %level = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 8
  %5 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %level, align 1
  %inc = add i8 %6, 1
  store i8 %inc, ptr %level, align 1
  %chain = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %7 = ptrtoint ptr %chain to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chain, align 4
  %call3 = tail call i32 @nft_chain_validate(ptr noundef %ctx, ptr noundef %8) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp slt i32 %call3, 0
  br i1 %cmp4, label %sw.bb.cleanup_crit_edge, label %if.end7

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %level to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %level, align 1
  %dec = add i8 %10, -1
  store i8 %dec, ptr %level, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %sw.bb.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call3, %sw.bb.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %if.end7 ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @nft_immediate_offload(ptr nocapture noundef %ctx, ptr nocapture noundef readonly %flow, ptr nocapture noundef readonly %expr) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %rule.i = getelementptr inbounds %struct.nft_flow_rule, ptr %flow, i32 0, i32 2
  %2 = ptrtoint ptr %rule.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %rule.i, align 4
  %entries.i = getelementptr inbounds %struct.flow_rule, ptr %3, i32 1
  %num_actions.i = getelementptr inbounds %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %num_actions.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_actions.i, align 8
  %inc.i = add i32 %5, 1
  store i32 %inc.i, ptr %num_actions.i, align 8
  %arrayidx.i = getelementptr [0 x %struct.flow_action_entry], ptr %entries.i, i32 0, i32 %5
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data.i, align 8
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.then.cleanup_crit_edge [
    i32 1, label %if.then.sw.epilog.i_crit_edge
    i32 0, label %sw.bb3.i
  ]

if.then.sw.epilog.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb3.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb3.i, %if.then.sw.epilog.i_crit_edge
  %storemerge.i = phi i32 [ 1, %sw.bb3.i ], [ 0, %if.then.sw.epilog.i_crit_edge ]
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %storemerge.i, ptr %arrayidx.i, align 8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %conv = zext i8 %1 to i32
  %data = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %conv, i32 6
  %10 = call ptr @memcpy(ptr %data, ptr %data.i, i32 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %sw.epilog.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %sw.epilog.i ], [ -95, %if.then.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @nft_immediate_offload_action(ptr nocapture noundef readonly %expr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 3
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_data_init(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_store(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_data_release(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_data_hold(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_tables_rule_release(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @nf_tables_chain_destroy(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_data_dump(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_chain_validate(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_immediate.c", i32 241, i32 11}
!2 = !{ptr @nft_imm_type, !3, !"nft_imm_type", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_immediate.c", i32 240, i32 22}
!4 = !{ptr @nft_imm_ops, !5, !"nft_imm_ops", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_immediate.c", i32 226, i32 34}
!6 = !{ptr @nft_immediate_policy, !7, !"nft_immediate_policy", i1 false, i1 false}
!7 = !{!"../net/netfilter/nft_immediate.c", i32 27, i32 32}
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
