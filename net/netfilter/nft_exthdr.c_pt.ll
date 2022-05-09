; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_exthdr.c_pt.bc'
source_filename = "../net/netfilter/nft_exthdr.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nla_policy = type { i8, i8, i16, %union.anon.30 }
%union.anon.30 = type { i32 }
%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nft_ctx = type { ptr, ptr, ptr, ptr, i32, i32, i16, i8, i8, i8 }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.sk_buff = type { %union.anon.3, %union.anon.182, %union.anon.183, [48 x i8], %union.anon.184, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.186, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.3 = type { %struct.anon.4 }
%struct.anon.4 = type { ptr, ptr, %union.anon.5 }
%union.anon.5 = type { ptr }
%union.anon.182 = type { ptr }
%union.anon.183 = type { i64 }
%union.anon.184 = type { %struct.anon.185 }
%struct.anon.185 = type { i32, ptr }
%union.anon.186 = type { %struct.anon.187 }
%struct.anon.187 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.188, i32, i32, i32, i16, i16, %union.anon.190, i32, %union.anon.191, %union.anon.192, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.188 = type { i32 }
%union.anon.190 = type { i32 }
%union.anon.191 = type { i32 }
%union.anon.192 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nft_exthdr = type { i8, i8, i8, i8, i8, i8, i8 }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.ip_options = type { i32, i32, i8, i8, i8, i8, i8, i8, i8, i8, [0 x i8] }
%struct.sctp_chunkhdr = type { i8, i8, i16 }

@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"exthdr\00", [25 x i8] zeroinitializer }, align 32
@nft_exthdr_policy = internal constant { [8 x %struct.nla_policy], [32 x i8] } { [8 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.30 zeroinitializer }, %struct.nla_policy { i8 1, i8 0, i16 0, %union.anon.30 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.30 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.30 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.30 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.30 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.30 zeroinitializer }], [32 x i8] zeroinitializer }, align 32
@nft_exthdr_type = dso_local global %struct.nft_expr_type { ptr @nft_exthdr_select_ops, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @.str, ptr null, ptr @nft_exthdr_policy, i32 7, i8 0, i8 0 }, section ".data..read_mostly", align 4
@nft_exthdr_ipv6_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_exthdr_ipv6_eval, ptr null, i32 16, ptr @nft_exthdr_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_exthdr_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_exthdr_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_exthdr_tcp_set_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_exthdr_tcp_set_eval, ptr null, i32 16, ptr @nft_exthdr_tcp_set_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_exthdr_dump_set, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_exthdr_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_exthdr_tcp_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_exthdr_tcp_eval, ptr null, i32 16, ptr @nft_exthdr_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_exthdr_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_exthdr_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_exthdr_ipv4_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_exthdr_ipv4_eval, ptr null, i32 16, ptr @nft_exthdr_ipv4_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_exthdr_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_exthdr_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_exthdr_sctp_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_exthdr_sctp_eval, ptr null, i32 16, ptr @nft_exthdr_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_exthdr_dump, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @nft_exthdr_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_exthdr_tcp_set_eval.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"net/netfilter/nft_exthdr.c\00", [37 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 8, i64 2, i64 4]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@__sancov_gen_cov_switch_values.4 = internal global [6 x i64] [i64 4, i64 8, i64 7, i64 131, i64 137, i64 148]
@__sancov_gen_cov_switch_values.5 = internal global [6 x i64] [i64 4, i64 8, i64 7, i64 131, i64 137, i64 148]
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 600, i32 11 }
@___asan_gen_.9 = private unnamed_addr constant [18 x i8] c"nft_exthdr_policy\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 353, i32 32 }
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"nft_exthdr_ipv6_ops\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 520, i32 34 }
@___asan_gen_.15 = private unnamed_addr constant [23 x i8] c"nft_exthdr_tcp_set_ops\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 544, i32 34 }
@___asan_gen_.18 = private unnamed_addr constant [19 x i8] c"nft_exthdr_tcp_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 536, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [20 x i8] c"nft_exthdr_ipv4_ops\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 528, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [20 x i8] c"nft_exthdr_sctp_ops\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 552, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.28 = private constant [30 x i8] c"../net/netfilter/nft_exthdr.c\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.28, i32 300, i32 4 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @.str, ptr @nft_exthdr_policy, ptr @nft_exthdr_ipv6_ops, ptr @nft_exthdr_tcp_set_ops, ptr @nft_exthdr_tcp_ops, ptr @nft_exthdr_ipv4_ops, ptr @nft_exthdr_sctp_ops, ptr @.str.1], section "llvm.metadata"
@0 = internal global [8 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_exthdr_policy to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_exthdr_ipv6_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_exthdr_tcp_set_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_exthdr_tcp_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_exthdr_ipv4_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_exthdr_sctp_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nft_exthdr_select_ops(ptr nocapture noundef readonly %ctx, ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 6
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 7
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %land.lhs.true

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

land.lhs.true:                                    ; preds = %if.end
  %arrayidx3 = getelementptr ptr, ptr %tb, i32 1
  %4 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx3, align 4
  %tobool4.not = icmp eq ptr %5, null
  br i1 %tobool4.not, label %land.lhs.true.if.end6_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end6

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %if.end.if.end6_crit_edge
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %7, label %if.end6.sw.epilog_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb17
    i32 2, label %sw.bb22
    i32 3, label %sw.bb30
  ]

if.end6.sw.epilog_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end6
  br i1 %tobool2.not, label %if.end12, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %sw.bb
  %arrayidx13 = getelementptr ptr, ptr %tb, i32 1
  %9 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx13, align 4
  %tobool14.not = icmp eq ptr %10, null
  br i1 %tobool14.not, label %if.end12.sw.epilog_crit_edge, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12.sw.epilog_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb17:                                          ; preds = %if.end6
  %arrayidx18 = getelementptr ptr, ptr %tb, i32 1
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %12, null
  br i1 %tobool19.not, label %sw.bb17.sw.epilog_crit_edge, label %sw.bb17.cleanup_crit_edge

sw.bb17.cleanup_crit_edge:                        ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb17.sw.epilog_crit_edge:                      ; preds = %sw.bb17
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end6
  %family = getelementptr inbounds %struct.nft_ctx, ptr %ctx, i32 0, i32 7
  %13 = ptrtoint ptr %family to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %family, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 10, i8 %14)
  %cmp.not = icmp eq i8 %14, 10
  br i1 %cmp.not, label %sw.bb22.sw.epilog_crit_edge, label %if.then24

sw.bb22.sw.epilog_crit_edge:                      ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.then24:                                        ; preds = %sw.bb22
  %arrayidx25 = getelementptr ptr, ptr %tb, i32 1
  %15 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %16, null
  br i1 %tobool26.not, label %if.then24.sw.epilog_crit_edge, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then24.sw.epilog_crit_edge:                    ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end6
  %arrayidx31 = getelementptr ptr, ptr %tb, i32 1
  %17 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %arrayidx31, align 4
  %tobool32.not = icmp eq ptr %18, null
  br i1 %tobool32.not, label %sw.bb30.sw.epilog_crit_edge, label %sw.bb30.cleanup_crit_edge

sw.bb30.cleanup_crit_edge:                        ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb30.sw.epilog_crit_edge, %if.then24.sw.epilog_crit_edge, %sw.bb22.sw.epilog_crit_edge, %sw.bb17.sw.epilog_crit_edge, %if.end12.sw.epilog_crit_edge, %if.end6.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb30.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %sw.bb17.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -95 to ptr), %sw.epilog ], [ @nft_exthdr_ipv6_ops, %entry.cleanup_crit_edge ], [ @nft_exthdr_tcp_set_ops, %sw.bb.cleanup_crit_edge ], [ @nft_exthdr_tcp_ops, %if.end12.cleanup_crit_edge ], [ @nft_exthdr_ipv6_ops, %sw.bb17.cleanup_crit_edge ], [ @nft_exthdr_ipv4_ops, %if.then24.cleanup_crit_edge ], [ @nft_exthdr_sctp_ops, %sw.bb30.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_exthdr_ipv6_eval(ptr nocapture noundef readonly %expr, ptr noundef %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %offset = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #4
  %2 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %offset, align 4
  %3 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pkt, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %4, i32 0, i32 15, i32 0, i32 18
  %5 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 -31011, i16 %6)
  %cmp.not = icmp eq i16 %6, -31011
  br i1 %cmp.not, label %if.end, label %entry.err27_crit_edge

entry.err27_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err27

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %data.i, align 1
  %conv3 = zext i8 %8 to i32
  %call4 = call i32 @ipv6_find_hdr(ptr noundef %4, ptr noundef nonnull %offset, i32 noundef %conv3, ptr noundef null, ptr noundef null) #4
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 1
  %11 = and i8 %10, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call4.lobit = lshr i32 %call4, 31
  %12 = trunc i32 %call4.lobit to i8
  %.not = xor i8 %12, 1
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %arrayidx, align 4
  store i8 %.not, ptr %arrayidx, align 1
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp10 = icmp slt i32 %call4, 0
  br i1 %cmp10, label %if.else.err27_crit_edge, label %if.end14

if.else.err27_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %err27

if.end14:                                         ; preds = %if.else
  %offset15 = getelementptr inbounds %struct.nft_exthdr, ptr %data.i, i32 0, i32 1
  %14 = ptrtoint ptr %offset15 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %offset15, align 1
  %conv16 = zext i8 %15 to i32
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %add = add i32 %17, %conv16
  store i32 %add, ptr %offset, align 4
  %len = getelementptr inbounds %struct.nft_exthdr, ptr %data.i, i32 0, i32 2
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %len, align 1
  %20 = lshr i8 %19, 2
  %div = zext i8 %20 to i32
  %arrayidx18 = getelementptr i32, ptr %arrayidx, i32 %div
  %21 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %arrayidx18, align 4
  %22 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pkt, align 4
  %24 = load i8, ptr %len, align 1
  %conv21 = zext i8 %24 to i32
  %call22 = call i32 @skb_copy_bits(ptr noundef %23, i32 noundef %add, ptr noundef %arrayidx, i32 noundef %conv21) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.end14.err27_crit_edge, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14.err27_crit_edge:                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %err27

err27:                                            ; preds = %if.end14.err27_crit_edge, %if.else.err27_crit_edge, %entry.err27_crit_edge
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %err27, %if.end14.cleanup_crit_edge, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_exthdr_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  %offset = alloca i32, align 4
  %len = alloca i32, align 4
  %flags = alloca i32, align 4
  %op = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #4
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %offset, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #4
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %flags) #4
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %flags, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %op) #4
  %3 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %op, align 4
  %arrayidx = getelementptr ptr, ptr %tb, i32 1
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %6 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 3
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %9, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 4
  %10 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %11, null
  br i1 %tobool8.not, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %call10 = call i32 @nft_parse_u32_check(ptr noundef nonnull %9, i32 noundef 255, ptr noundef nonnull %offset) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp = icmp slt i32 %call10, 0
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx7, align 4
  %call14 = call i32 @nft_parse_u32_check(ptr noundef %13, i32 noundef 255, ptr noundef nonnull %len) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp15 = icmp slt i32 %call14, 0
  br i1 %cmp15, label %if.end12.cleanup_crit_edge, label %if.end17

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %arrayidx18 = getelementptr ptr, ptr %tb, i32 5
  %14 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %15, null
  br i1 %tobool19.not, label %if.end17.if.end29_crit_edge, label %if.then20

if.end17.if.end29_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.then20:                                        ; preds = %if.end17
  %call22 = call i32 @nft_parse_u32_check(ptr noundef nonnull %15, i32 noundef 255, ptr noundef nonnull %flags) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp23 = icmp slt i32 %call22, 0
  br i1 %cmp23, label %if.then20.cleanup_crit_edge, label %if.end25

if.then20.cleanup_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25:                                         ; preds = %if.then20
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %17)
  %tobool26.not = icmp ult i32 %17, 2
  br i1 %tobool26.not, label %if.end25.if.end29_crit_edge, label %if.end25.cleanup_crit_edge

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end25.if.end29_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end29

if.end29:                                         ; preds = %if.end25.if.end29_crit_edge, %if.end17.if.end29_crit_edge
  %arrayidx30 = getelementptr ptr, ptr %tb, i32 6
  %18 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx30, align 4
  %tobool31.not = icmp eq ptr %19, null
  br i1 %tobool31.not, label %if.end29.if.end38_crit_edge, label %if.then32

if.end29.if.end38_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then32:                                        ; preds = %if.end29
  %call34 = call i32 @nft_parse_u32_check(ptr noundef nonnull %19, i32 noundef 255, ptr noundef nonnull %op) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %if.then32.cleanup_crit_edge, label %if.then32.if.end38_crit_edge

if.then32.if.end38_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end38

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end38:                                         ; preds = %if.then32.if.end38_crit_edge, %if.end29.if.end38_crit_edge
  %20 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 4
  %22 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %add.ptr.i.i, align 1
  %24 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %23, ptr %data.i, align 1
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset, align 4
  %conv = trunc i32 %26 to i8
  %offset41 = getelementptr inbounds %struct.nft_exthdr, ptr %data.i, i32 0, i32 1
  %27 = ptrtoint ptr %offset41 to i32
  call void @__asan_store1_noabort(i32 %27)
  store i8 %conv, ptr %offset41, align 1
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len, align 4
  %conv42 = trunc i32 %29 to i8
  %len43 = getelementptr inbounds %struct.nft_exthdr, ptr %data.i, i32 0, i32 2
  %30 = ptrtoint ptr %len43 to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv42, ptr %len43, align 1
  %31 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %flags, align 4
  %conv44 = trunc i32 %32 to i8
  %flags45 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %33 = ptrtoint ptr %flags45 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv44, ptr %flags45, align 1
  %34 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %op, align 4
  %conv46 = trunc i32 %35 to i8
  %op47 = getelementptr inbounds %struct.nft_exthdr, ptr %data.i, i32 0, i32 3
  %36 = ptrtoint ptr %op47 to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %conv46, ptr %op47, align 1
  %37 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %arrayidx, align 4
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %conv50 = and i32 %29, 255
  %call51 = call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %38, ptr noundef %dreg, ptr noundef null, i32 noundef 0, i32 noundef %conv50) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end38, %if.then32.cleanup_crit_edge, %if.end25.cleanup_crit_edge, %if.then20.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call51, %if.end38 ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ %call10, %if.end.cleanup_crit_edge ], [ %call14, %if.end12.cleanup_crit_edge ], [ %call22, %if.then20.cleanup_crit_edge ], [ -22, %if.end25.cleanup_crit_edge ], [ %call34, %if.then32.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %op) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %flags) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_exthdr_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %call2 = tail call fastcc i32 @nft_exthdr_dump_common(ptr noundef %skb, ptr noundef %data.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ipv6_find_hdr(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_u32_check(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_store(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nft_exthdr_dump_common(ptr noundef %skb, ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  %tmp.i34 = alloca i32, align 4
  %tmp.i32 = alloca i32, align 4
  %tmp.i30 = alloca i32, align 4
  %tmp.i28 = alloca i32, align 4
  %tmp.i = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %priv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %priv, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %tmp.i) #4
  %2 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 %1, ptr %tmp.i, align 1
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %tmp.i) #4
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %tmp.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

if.end:                                           ; preds = %entry
  %offset = getelementptr inbounds %struct.nft_exthdr, ptr %priv, i32 0, i32 1
  %3 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %offset, align 1
  %conv = zext i8 %4 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i28) #4
  %5 = ptrtoint ptr %tmp.i28 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %conv, ptr %tmp.i28, align 4
  %call.i29 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i28) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i28) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool2.not = icmp eq i32 %call.i29, 0
  br i1 %tobool2.not, label %if.end4, label %if.end.nla_put_failure_crit_edge

if.end.nla_put_failure_crit_edge:                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

if.end4:                                          ; preds = %if.end
  %len = getelementptr inbounds %struct.nft_exthdr, ptr %priv, i32 0, i32 2
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %len, align 1
  %conv5 = zext i8 %7 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i30) #4
  %8 = ptrtoint ptr %tmp.i30 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %conv5, ptr %tmp.i30, align 4
  %call.i31 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i30) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i30) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i31)
  %tobool7.not = icmp eq i32 %call.i31, 0
  br i1 %tobool7.not, label %if.end9, label %if.end4.nla_put_failure_crit_edge

if.end4.nla_put_failure_crit_edge:                ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

if.end9:                                          ; preds = %if.end4
  %flags = getelementptr inbounds %struct.nft_exthdr, ptr %priv, i32 0, i32 6
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %flags, align 1
  %conv10 = zext i8 %10 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i32) #4
  %11 = ptrtoint ptr %tmp.i32 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %conv10, ptr %tmp.i32, align 4
  %call.i33 = call i32 @nla_put(ptr noundef %skb, i32 noundef 5, i32 noundef 4, ptr noundef nonnull %tmp.i32) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i32) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %tobool12.not = icmp eq i32 %call.i33, 0
  br i1 %tobool12.not, label %if.end14, label %if.end9.nla_put_failure_crit_edge

if.end9.nla_put_failure_crit_edge:                ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

if.end14:                                         ; preds = %if.end9
  %op = getelementptr inbounds %struct.nft_exthdr, ptr %priv, i32 0, i32 3
  %12 = ptrtoint ptr %op to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %op, align 1
  %conv15 = zext i8 %13 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i34) #4
  %14 = ptrtoint ptr %tmp.i34 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %conv15, ptr %tmp.i34, align 4
  %call.i35 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i34) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i34) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i35)
  %tobool17.not = icmp eq i32 %call.i35, 0
  br i1 %tobool17.not, label %if.end14.return_crit_edge, label %if.end14.nla_put_failure_crit_edge

if.end14.nla_put_failure_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %nla_put_failure

if.end14.return_crit_edge:                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

nla_put_failure:                                  ; preds = %if.end14.nla_put_failure_crit_edge, %if.end9.nla_put_failure_crit_edge, %if.end4.nla_put_failure_crit_edge, %if.end.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %return

return:                                           ; preds = %nla_put_failure, %if.end14.return_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %if.end14.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_exthdr_tcp_set_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %buff = alloca [60 x i8], align 1
  %tcphdr_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buff) #4
  %0 = call ptr @memset(ptr %buff, i32 255, i32 60)
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tcphdr_len) #4
  %1 = ptrtoint ptr %tcphdr_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tcphdr_len, align 4, !annotation !28
  %call1 = call fastcc ptr @nft_tcp_header_pointer(ptr noundef %pkt, ptr noundef nonnull %buff, ptr noundef nonnull %tcphdr_len)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %for.cond.preheader

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

for.cond.preheader:                               ; preds = %entry
  %2 = ptrtoint ptr %tcphdr_len to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %tcphdr_len, align 4
  %sub = add i32 %3, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub)
  %cmp212 = icmp ugt i32 %sub, 20
  br i1 %cmp212, label %for.body.lr.ph, label %for.cond.preheader.cleanup121_crit_edge

for.cond.preheader.cleanup121_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup121

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %data.i, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0213 = phi i32 [ 20, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call1, i32 %i.0213
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %7)
  %cmp.i = icmp ult i8 %7, 2
  br i1 %cmp.i, label %for.body.optlen.exit_crit_edge, label %lor.lhs.false.i

for.body.optlen.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %optlen.exit

lor.lhs.false.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %add.i = add nuw i32 %i.0213, 1
  %arrayidx2.i = getelementptr i8, ptr %call1, i32 %add.i
  %8 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %cmp4.i = icmp eq i8 %9, 0
  %narrow.i = select i1 %cmp4.i, i8 1, i8 %9
  %spec.select.i = zext i8 %narrow.i to i32
  br label %optlen.exit

optlen.exit:                                      ; preds = %lor.lhs.false.i, %for.body.optlen.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %for.body.optlen.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  call void @__sanitizer_cov_trace_cmp1(i8 %5, i8 %7)
  %cmp4.not = icmp eq i8 %5, %7
  %add = add i32 %retval.0.i, %i.0213
  br i1 %cmp4.not, label %if.end7, label %for.inc

if.end7:                                          ; preds = %optlen.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %3)
  %cmp8 = icmp ugt i32 %add, %3
  br i1 %cmp8, label %if.end7.err_crit_edge, label %lor.lhs.false

if.end7.err_crit_edge:                            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

lor.lhs.false:                                    ; preds = %if.end7
  %len = getelementptr inbounds %struct.nft_exthdr, ptr %data.i, i32 0, i32 2
  %10 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %len, align 1
  %conv10 = zext i8 %11 to i32
  %offset11 = getelementptr inbounds %struct.nft_exthdr, ptr %data.i, i32 0, i32 1
  %12 = ptrtoint ptr %offset11 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %offset11, align 1
  %conv12 = zext i8 %13 to i32
  %add13 = add nuw nsw i32 %conv12, %conv10
  call void @__sanitizer_cov_trace_cmp4(i32 %add13, i32 %retval.0.i)
  %cmp14 = icmp ugt i32 %add13, %retval.0.i
  br i1 %cmp14, label %lor.lhs.false.err_crit_edge, label %if.end17

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end17:                                         ; preds = %lor.lhs.false
  %14 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pkt, align 4
  %thoff.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %16 = ptrtoint ptr %thoff.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %thoff.i, align 4
  %add19 = add i32 %i.0213, %conv10
  %add22 = add i32 %add19, %17
  %call23 = call i32 @skb_ensure_writable(ptr noundef %15, i32 noundef %add22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end26, label %if.end17.err_crit_edge

if.end17.err_crit_edge:                           ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end26:                                         ; preds = %if.end17
  %call28 = call fastcc ptr @nft_tcp_header_pointer(ptr noundef %pkt, ptr noundef nonnull %buff, ptr noundef nonnull %tcphdr_len)
  %tobool29.not = icmp eq ptr %call28, null
  br i1 %tobool29.not, label %if.end26.err_crit_edge, label %if.end31

if.end26.err_crit_edge:                           ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end31:                                         ; preds = %if.end26
  %18 = ptrtoint ptr %offset11 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %offset11, align 1
  %conv33 = zext i8 %19 to i32
  %add34 = add i32 %i.0213, %conv33
  %20 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %len, align 1
  %22 = zext i8 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %21, label %land.end [
    i8 2, label %sw.bb
    i8 4, label %sw.bb58
  ]

sw.bb:                                            ; preds = %if.end31
  %add.ptr = getelementptr i8, ptr %call1, i32 %add34
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %23, i32 2)
  %24 = load i16, ptr %add.ptr, align 1
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %25 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %sreg, align 1
  %idxprom = zext i8 %26 to i32
  %arrayidx37 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %27 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %arrayidx37, align 2
  %29 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %30)
  %cond = icmp eq i8 %30, 2
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %28)
  %cmp44.not = icmp ule i16 %24, %28
  %or.cond = select i1 %cond, i1 %cmp44.not, i1 false
  call void @__sanitizer_cov_trace_cmp2(i16 %24, i16 %28)
  %cmp50 = icmp eq i16 %24, %28
  %or.cond205 = select i1 %or.cond, i1 true, i1 %cmp50
  br i1 %or.cond205, label %sw.bb.cleanup121_crit_edge, label %do.body

sw.bb.cleanup121_crit_edge:                       ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup121

do.body:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  %31 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %31, i32 2)
  store i16 %28, ptr %add.ptr, align 1
  %check = getelementptr inbounds %struct.tcphdr, ptr %call28, i32 0, i32 6
  %32 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pkt, align 4
  %conv.i = zext i16 %24 to i32
  %conv1.i = zext i16 %28 to i32
  call void @inet_proto_csum_replace4(ptr noundef %check, ptr noundef %33, i32 noundef %conv.i, i32 noundef %conv1.i, i1 noundef zeroext false) #4
  br label %cleanup121

sw.bb58:                                          ; preds = %if.end31
  %sreg59 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %34 = ptrtoint ptr %sreg59 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %sreg59, align 1
  %idxprom60 = zext i8 %35 to i32
  %arrayidx61 = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom60
  %36 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx61, align 4
  %add.ptr63 = getelementptr i8, ptr %call1, i32 %add34
  %38 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_loadN_noabort(i32 %38, i32 4)
  %39 = load i32, ptr %add.ptr63, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %37)
  %cmp66 = icmp eq i32 %39, %37
  br i1 %cmp66, label %sw.bb58.cleanup121_crit_edge, label %do.body70

sw.bb58.cleanup121_crit_edge:                     ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup121

do.body70:                                        ; preds = %sw.bb58
  call void @__sanitizer_cov_trace_pc() #6
  %40 = ptrtoint ptr %add.ptr63 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 4)
  store i32 %37, ptr %add.ptr63, align 1
  %check76 = getelementptr inbounds %struct.tcphdr, ptr %call28, i32 0, i32 6
  %41 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pkt, align 4
  call void @inet_proto_csum_replace4(ptr noundef %check76, ptr noundef %42, i32 noundef %39, i32 noundef %37, i1 noundef zeroext false) #4
  br label %cleanup121

land.end:                                         ; preds = %if.end31
  %.b204 = load i1, ptr @nft_exthdr_tcp_set_eval.__already_done, align 1
  br i1 %.b204, label %land.end.cleanup121_crit_edge, label %if.then84, !prof !29

land.end.cleanup121_crit_edge:                    ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup121

if.then84:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #6
  store i1 true, ptr @nft_exthdr_tcp_set_eval.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.1, i32 noundef 300, i32 noundef 9, ptr noundef null) #4
  br label %cleanup121

for.inc:                                          ; preds = %optlen.exit
  %cmp = icmp ult i32 %add, %sub
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup121_crit_edge

for.inc.cleanup121_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup121

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

err:                                              ; preds = %if.end26.err_crit_edge, %if.end17.err_crit_edge, %lor.lhs.false.err_crit_edge, %if.end7.err_crit_edge, %entry.err_crit_edge
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -2, ptr %regs, align 4
  br label %cleanup121

cleanup121:                                       ; preds = %err, %for.inc.cleanup121_crit_edge, %if.then84, %land.end.cleanup121_crit_edge, %do.body70, %sw.bb58.cleanup121_crit_edge, %do.body, %sw.bb.cleanup121_crit_edge, %for.cond.preheader.cleanup121_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tcphdr_len) #4
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buff) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_exthdr_tcp_set_init(ptr nocapture noundef readnone %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  %offset = alloca i32, align 4
  %len = alloca i32, align 4
  %op = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %offset) #4
  %0 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %offset, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %len) #4
  %1 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %len, align 4, !annotation !28
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %op) #4
  %2 = ptrtoint ptr %op to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %op, align 4
  %arrayidx = getelementptr ptr, ptr %tb, i32 7
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 2
  %5 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx1, align 4
  %tobool2.not = icmp eq ptr %6, null
  br i1 %tobool2.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 3
  %7 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx4, align 4
  %tobool5.not = icmp eq ptr %8, null
  br i1 %tobool5.not, label %lor.lhs.false3.cleanup_crit_edge, label %lor.lhs.false6

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false6:                                   ; preds = %lor.lhs.false3
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 4
  %9 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx7, align 4
  %tobool8.not = icmp eq ptr %10, null
  br i1 %tobool8.not, label %lor.lhs.false6.cleanup_crit_edge, label %if.end

lor.lhs.false6.cleanup_crit_edge:                 ; preds = %lor.lhs.false6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false6
  %arrayidx9 = getelementptr ptr, ptr %tb, i32 1
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx9, align 4
  %tobool10.not = icmp eq ptr %12, null
  br i1 %tobool10.not, label %lor.lhs.false11, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false11:                                  ; preds = %if.end
  %arrayidx12 = getelementptr ptr, ptr %tb, i32 5
  %13 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %arrayidx12, align 4
  %tobool13.not = icmp eq ptr %14, null
  br i1 %tobool13.not, label %if.end15, label %lor.lhs.false11.cleanup_crit_edge

lor.lhs.false11.cleanup_crit_edge:                ; preds = %lor.lhs.false11
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15:                                         ; preds = %lor.lhs.false11
  %call17 = call i32 @nft_parse_u32_check(ptr noundef nonnull %8, i32 noundef 255, ptr noundef nonnull %offset) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.end15.cleanup_crit_edge, label %if.end19

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %15 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx7, align 4
  %call21 = call i32 @nft_parse_u32_check(ptr noundef %16, i32 noundef 255, ptr noundef nonnull %len) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp22 = icmp slt i32 %call21, 0
  br i1 %cmp22, label %if.end19.cleanup_crit_edge, label %if.end24

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end24:                                         ; preds = %if.end19
  %17 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp25 = icmp ult i32 %18, 2
  br i1 %cmp25, label %if.end24.cleanup_crit_edge, label %if.end27

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %19 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %len, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %20, label %if.end27.cleanup_crit_edge [
    i32 2, label %if.end27.sw.epilog_crit_edge
    i32 4, label %if.end27.sw.epilog_crit_edge72
  ]

if.end27.sw.epilog_crit_edge72:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %if.end27.sw.epilog_crit_edge, %if.end27.sw.epilog_crit_edge72
  %arrayidx28 = getelementptr ptr, ptr %tb, i32 6
  %22 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx28, align 4
  %call29 = call i32 @nft_parse_u32_check(ptr noundef %23, i32 noundef 255, ptr noundef nonnull %op) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29)
  %cmp30 = icmp slt i32 %call29, 0
  br i1 %cmp30, label %sw.epilog.cleanup_crit_edge, label %if.end32

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end32:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #6
  %24 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx1, align 4
  %add.ptr.i.i = getelementptr i8, ptr %25, i32 4
  %26 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %add.ptr.i.i, align 1
  %28 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %27, ptr %data.i, align 1
  %29 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset, align 4
  %conv = trunc i32 %30 to i8
  %offset35 = getelementptr inbounds %struct.nft_exthdr, ptr %data.i, i32 0, i32 1
  %31 = ptrtoint ptr %offset35 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv, ptr %offset35, align 1
  %32 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len, align 4
  %conv36 = trunc i32 %33 to i8
  %len37 = getelementptr inbounds %struct.nft_exthdr, ptr %data.i, i32 0, i32 2
  %34 = ptrtoint ptr %len37 to i32
  call void @__asan_store1_noabort(i32 %34)
  store i8 %conv36, ptr %len37, align 1
  %flags39 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %35 = ptrtoint ptr %flags39 to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %flags39, align 1
  %36 = ptrtoint ptr %op to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %op, align 4
  %conv40 = trunc i32 %37 to i8
  %op41 = getelementptr inbounds %struct.nft_exthdr, ptr %data.i, i32 0, i32 3
  %38 = ptrtoint ptr %op41 to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 %conv40, ptr %op41, align 1
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %arrayidx, align 4
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %conv44 = and i32 %33, 255
  %call45 = call i32 @nft_parse_register_load(ptr noundef %40, ptr noundef %sreg, i32 noundef %conv44) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %sw.epilog.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %lor.lhs.false11.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false6.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call45, %if.end32 ], [ -22, %lor.lhs.false6.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false11.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ %call17, %if.end15.cleanup_crit_edge ], [ %call21, %if.end19.cleanup_crit_edge ], [ -95, %if.end24.cleanup_crit_edge ], [ -95, %if.end27.cleanup_crit_edge ], [ %call29, %sw.epilog.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %op) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %len) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %offset) #4
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_exthdr_dump_set(ptr noundef %skb, ptr nocapture noundef readonly %expr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %sreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %0 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sreg, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 7, i32 noundef %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %call2 = tail call fastcc i32 @nft_exthdr_dump_common(ptr noundef %skb, ptr noundef %data.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @nft_tcp_header_pointer(ptr nocapture noundef readonly %pkt, ptr noundef %buffer, ptr nocapture noundef %tcphdr_len) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %tprot = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %0 = ptrtoint ptr %tprot to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %tprot, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %1)
  %cmp.not = icmp eq i8 %1, 6
  br i1 %cmp.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %fragoff = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %2 = ptrtoint ptr %fragoff to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %fragoff, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %3)
  %tobool.not = icmp eq i16 %3, 0
  br i1 %tobool.not, label %if.end, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %4 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pkt, align 4
  %thoff.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %6 = ptrtoint ptr %thoff.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %thoff.i, align 4
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 6
  %8 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 7
  %10 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_len.i.i, align 8
  %12 = add i32 %7, %11
  %sub.i4.i = sub i32 %9, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 20
  br i1 %cmp.not.i.i, label %if.end.i.i, label %if.then.i.i, !prof !30

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %5, i32 0, i32 19
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %14, i32 %7
  br label %skb_header_pointer.exit

if.end.i.i:                                       ; preds = %if.end
  %tobool2.not.i.i = icmp eq ptr %5, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.cleanup_crit_edge:                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = tail call i32 @skb_copy_bits(ptr noundef nonnull %5, i32 noundef %7, ptr noundef %buffer, i32 noundef 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.cleanup_crit_edge, label %lor.lhs.false.i.i.skb_header_pointer.exit_crit_edge

lor.lhs.false.i.i.skb_header_pointer.exit_crit_edge: ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %skb_header_pointer.exit

lor.lhs.false.i.i.cleanup_crit_edge:              ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

skb_header_pointer.exit:                          ; preds = %lor.lhs.false.i.i.skb_header_pointer.exit_crit_edge, %if.then.i.i
  %retval.0.i.i = phi ptr [ %add.ptr.i.i, %if.then.i.i ], [ %buffer, %lor.lhs.false.i.i.skb_header_pointer.exit_crit_edge ]
  %tobool4.not = icmp eq ptr %retval.0.i.i, null
  br i1 %tobool4.not, label %skb_header_pointer.exit.cleanup_crit_edge, label %if.end6

skb_header_pointer.exit.cleanup_crit_edge:        ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %skb_header_pointer.exit
  %doff.i = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %doff.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %bf.load.i = load i16, ptr %doff.i, align 4
  %16 = lshr i16 %bf.load.i, 10
  %17 = and i16 %16, 60
  %mul.i = zext i16 %17 to i32
  %18 = ptrtoint ptr %tcphdr_len to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %mul.i, ptr %tcphdr_len, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 20, i16 %17)
  %cmp8 = icmp ult i16 %17, 20
  br i1 %cmp8, label %if.end6.cleanup_crit_edge, label %if.end14

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end14:                                         ; preds = %if.end6
  %19 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %pkt, align 4
  %21 = ptrtoint ptr %thoff.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %thoff.i, align 4
  %len.i.i2 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 6
  %23 = ptrtoint ptr %len.i.i2 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len.i.i2, align 4
  %data_len.i.i3 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 7
  %25 = ptrtoint ptr %data_len.i.i3 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %data_len.i.i3, align 8
  %27 = add i32 %22, %26
  %sub.i4.i4 = sub i32 %24, %27
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i4.i4, i32 %mul.i)
  %cmp.not.i.i5 = icmp slt i32 %sub.i4.i4, %mul.i
  br i1 %cmp.not.i.i5, label %if.end.i.i10, label %if.then.i.i8, !prof !30

if.then.i.i8:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #6
  %data.i6 = getelementptr inbounds %struct.sk_buff, ptr %20, i32 0, i32 19
  %28 = ptrtoint ptr %data.i6 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %data.i6, align 4
  %add.ptr.i.i7 = getelementptr i8, ptr %29, i32 %22
  br label %cleanup

if.end.i.i10:                                     ; preds = %if.end14
  %tobool2.not.i.i9 = icmp eq ptr %20, null
  br i1 %tobool2.not.i.i9, label %if.end.i.i10.cleanup_crit_edge, label %lor.lhs.false.i.i14

if.end.i.i10.cleanup_crit_edge:                   ; preds = %if.end.i.i10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

lor.lhs.false.i.i14:                              ; preds = %if.end.i.i10
  call void @__sanitizer_cov_trace_pc() #6
  %call.i.i11 = tail call i32 @skb_copy_bits(ptr noundef nonnull %20, i32 noundef %22, ptr noundef %buffer, i32 noundef %mul.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i11)
  %cmp3.i.i12 = icmp slt i32 %call.i.i11, 0
  %spec.select.i.i13 = select i1 %cmp3.i.i12, ptr null, ptr %buffer, !prof !30
  br label %cleanup

cleanup:                                          ; preds = %lor.lhs.false.i.i14, %if.end.i.i10.cleanup_crit_edge, %if.then.i.i8, %if.end6.cleanup_crit_edge, %skb_header_pointer.exit.cleanup_crit_edge, %lor.lhs.false.i.i.cleanup_crit_edge, %if.end.i.i.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %skb_header_pointer.exit.cleanup_crit_edge ], [ null, %if.end6.cleanup_crit_edge ], [ %add.ptr.i.i7, %if.then.i.i8 ], [ null, %if.end.i.i10.cleanup_crit_edge ], [ %spec.select.i.i13, %lor.lhs.false.i.i14 ], [ null, %if.end.i.i.cleanup_crit_edge ], [ null, %lor.lhs.false.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_proto_csum_replace4(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_load(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_exthdr_tcp_eval(ptr nocapture noundef readonly %expr, ptr nocapture noundef writeonly %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %buff = alloca [60 x i8], align 1
  %tcphdr_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %buff) #4
  %0 = call ptr @memset(ptr %buff, i32 255, i32 60)
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tcphdr_len) #4
  %1 = ptrtoint ptr %tcphdr_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %tcphdr_len, align 4, !annotation !28
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %2 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dreg, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %call1 = call fastcc ptr @nft_tcp_header_pointer(ptr noundef %pkt, ptr noundef nonnull %buff, ptr noundef nonnull %tcphdr_len)
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.err_crit_edge, label %for.cond.preheader

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

for.cond.preheader:                               ; preds = %entry
  %4 = ptrtoint ptr %tcphdr_len to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %tcphdr_len, align 4
  %sub = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub)
  %cmp72 = icmp ugt i32 %sub, 20
  br i1 %cmp72, label %for.body.lr.ph, label %for.cond.preheader.err_crit_edge

for.cond.preheader.err_crit_edge:                 ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %6 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data.i, align 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.073 = phi i32 [ 20, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %arrayidx.i = getelementptr i8, ptr %call1, i32 %i.073
  %8 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %arrayidx.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp.i = icmp ult i8 %9, 2
  br i1 %cmp.i, label %for.body.optlen.exit_crit_edge, label %lor.lhs.false.i

for.body.optlen.exit_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %optlen.exit

lor.lhs.false.i:                                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %add.i = add nuw i32 %i.073, 1
  %arrayidx2.i = getelementptr i8, ptr %call1, i32 %add.i
  %10 = ptrtoint ptr %arrayidx2.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %arrayidx2.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %cmp4.i = icmp eq i8 %11, 0
  %narrow.i = select i1 %cmp4.i, i8 1, i8 %11
  %spec.select.i = zext i8 %narrow.i to i32
  br label %optlen.exit

optlen.exit:                                      ; preds = %lor.lhs.false.i, %for.body.optlen.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %for.body.optlen.exit_crit_edge ], [ %spec.select.i, %lor.lhs.false.i ]
  call void @__sanitizer_cov_trace_cmp1(i8 %7, i8 %9)
  %cmp5.not = icmp eq i8 %7, %9
  %add = add i32 %retval.0.i, %i.073
  br i1 %cmp5.not, label %if.end8, label %for.inc

if.end8:                                          ; preds = %optlen.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %5)
  %cmp9 = icmp ugt i32 %add, %5
  br i1 %cmp9, label %if.end8.err_crit_edge, label %lor.lhs.false

if.end8.err_crit_edge:                            ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

lor.lhs.false:                                    ; preds = %if.end8
  %len = getelementptr inbounds %struct.nft_exthdr, ptr %data.i, i32 0, i32 2
  %12 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %len, align 1
  %conv11 = zext i8 %13 to i32
  %offset12 = getelementptr inbounds %struct.nft_exthdr, ptr %data.i, i32 0, i32 1
  %14 = ptrtoint ptr %offset12 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %offset12, align 1
  %conv13 = zext i8 %15 to i32
  %add14 = add nuw nsw i32 %conv13, %conv11
  call void @__sanitizer_cov_trace_cmp4(i32 %add14, i32 %retval.0.i)
  %cmp15 = icmp ugt i32 %add14, %retval.0.i
  br i1 %cmp15, label %lor.lhs.false.err_crit_edge, label %if.end18

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end18:                                         ; preds = %lor.lhs.false
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %16 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %flags, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool23.not = icmp eq i8 %18, 0
  br i1 %tobool23.not, label %if.else, label %if.then24

if.then24:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %19 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %arrayidx, align 4
  br label %cleanup

if.else:                                          ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %add21 = add i32 %i.073, %conv13
  %div69 = lshr i32 %conv11, 2
  %arrayidx27 = getelementptr i32, ptr %arrayidx, i32 %div69
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %arrayidx27, align 4
  %add.ptr = getelementptr i8, ptr %call1, i32 %add21
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %len, align 1
  %conv29 = zext i8 %22 to i32
  %23 = call ptr @memcpy(ptr %arrayidx, ptr %add.ptr, i32 %conv29)
  br label %cleanup

for.inc:                                          ; preds = %optlen.exit
  %cmp = icmp ult i32 %add, %sub
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.err_crit_edge

for.inc.err_crit_edge:                            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

err:                                              ; preds = %for.inc.err_crit_edge, %lor.lhs.false.err_crit_edge, %if.end8.err_crit_edge, %for.cond.preheader.err_crit_edge, %entry.err_crit_edge
  %flags32 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %24 = ptrtoint ptr %flags32 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %flags32, align 1
  %26 = and i8 %25, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool35.not = icmp eq i8 %26, 0
  br i1 %tobool35.not, label %if.else37, label %if.then36

if.then36:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #6
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %arrayidx, align 4
  br label %cleanup

if.else37:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #6
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else37, %if.then36, %if.else, %if.then24
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tcphdr_len) #4
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %buff) #4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_exthdr_ipv4_eval(ptr nocapture noundef readonly %expr, ptr noundef %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %optbuf.i = alloca [56 x i8], align 1
  %_iph.i = alloca %struct.iphdr, align 4
  %info.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pkt, align 4
  %protocol = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 15, i32 0, i32 18
  %4 = ptrtoint ptr %protocol to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %protocol, align 8
  call void @__sanitizer_cov_trace_const_cmp2(i16 2048, i16 %5)
  %cmp.not = icmp eq i16 %5, 2048
  br i1 %cmp.not, label %if.end, label %entry.err28_crit_edge

entry.err28_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err28

if.end:                                           ; preds = %entry
  %state.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 1
  %6 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %state.i, align 4
  %net.i = getelementptr inbounds %struct.nf_hook_state, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %net.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %net.i, align 4
  %10 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %data.i, align 1
  %conv4 = zext i8 %11 to i32
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %optbuf.i) #4
  %12 = getelementptr inbounds i8, ptr %optbuf.i, i32 16
  %13 = call ptr @memset(ptr %12, i32 255, i32 40)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_iph.i) #4
  %14 = call ptr @memset(ptr %_iph.i, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %info.i) #4
  %15 = ptrtoint ptr %info.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %info.i, align 4, !annotation !28
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 6
  %16 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 7
  %18 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i4.i.i = sub i32 %17, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, 20
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_header_pointer.exit.i, !prof !30

if.end.i.i.i:                                     ; preds = %if.end
  %tobool2.not.i.i.i = icmp eq ptr %3, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.ipv4_find_option.exit_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.ipv4_find_option.exit_crit_edge:     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipv4_find_option.exit

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %3, i32 noundef 0, ptr noundef nonnull %_iph.i, i32 noundef 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.ipv4_find_option.exit_crit_edge, label %lor.lhs.false.i.i.i.if.end.i_crit_edge

lor.lhs.false.i.i.i.if.end.i_crit_edge:           ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

lor.lhs.false.i.i.i.ipv4_find_option.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipv4_find_option.exit

skb_header_pointer.exit.i:                        ; preds = %if.end
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %3, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %skb_header_pointer.exit.i.ipv4_find_option.exit_crit_edge, label %skb_header_pointer.exit.i.if.end.i_crit_edge

skb_header_pointer.exit.i.if.end.i_crit_edge:     ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end.i

skb_header_pointer.exit.i.ipv4_find_option.exit_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipv4_find_option.exit

if.end.i:                                         ; preds = %skb_header_pointer.exit.i.if.end.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i_crit_edge
  %retval.0.i.i88.i = phi ptr [ %21, %skb_header_pointer.exit.i.if.end.i_crit_edge ], [ %_iph.i, %lor.lhs.false.i.i.i.if.end.i_crit_edge ]
  %22 = ptrtoint ptr %retval.0.i.i88.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %bf.load.i = load i8, ptr %retval.0.i.i88.i, align 4
  %bf.clear.i = shl i8 %bf.load.i, 2
  %23 = and i8 %bf.clear.i, 60
  %mul.i = zext i8 %23 to i32
  %sub.i = add nsw i32 %mul.i, -20
  call void @__sanitizer_cov_trace_const_cmp1(i8 21, i8 %23)
  %cmp.i = icmp ult i8 %23, 21
  br i1 %cmp.i, label %if.end.i.ipv4_find_option.exit_crit_edge, label %if.end3.i

if.end.i.ipv4_find_option.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipv4_find_option.exit

if.end3.i:                                        ; preds = %if.end.i
  %24 = call ptr @memset(ptr %optbuf.i, i32 0, i32 16)
  %call5.i = call i32 @skb_copy_bits(ptr noundef %3, i32 noundef 20, ptr noundef %12, i32 noundef %sub.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end3.i.ipv4_find_option.exit_crit_edge

if.end3.i.ipv4_find_option.exit_crit_edge:        ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipv4_find_option.exit

if.end8.i:                                        ; preds = %if.end3.i
  %conv9.i = trunc i32 %sub.i to i8
  %optlen10.i = getelementptr inbounds %struct.ip_options, ptr %optbuf.i, i32 0, i32 2
  %25 = ptrtoint ptr %optlen10.i to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv9.i, ptr %optlen10.i, align 4
  %call11.i = call i32 @__ip_options_compile(ptr noundef %9, ptr noundef nonnull %optbuf.i, ptr noundef null, ptr noundef nonnull %info.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11.i)
  %tobool12.not.i = icmp eq i32 %call11.i, 0
  br i1 %tobool12.not.i, label %if.end14.i, label %if.end8.i.ipv4_find_option.exit_crit_edge

if.end8.i.ipv4_find_option.exit_crit_edge:        ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipv4_find_option.exit

if.end14.i:                                       ; preds = %if.end8.i
  %26 = zext i8 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %11, label %if.end14.i.ipv4_find_option.exit_crit_edge [
    i8 -119, label %if.end14.i.sw.bb.i_crit_edge
    i8 -125, label %if.end14.i.sw.bb.i_crit_edge46
    i8 7, label %sw.bb32.i
    i8 -108, label %sw.bb39.i
  ]

if.end14.i.sw.bb.i_crit_edge46:                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end14.i.sw.bb.i_crit_edge:                     ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb.i

if.end14.i.ipv4_find_option.exit_crit_edge:       ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipv4_find_option.exit

sw.bb.i:                                          ; preds = %if.end14.i.sw.bb.i_crit_edge, %if.end14.i.sw.bb.i_crit_edge46
  %srr.i = getelementptr inbounds %struct.ip_options, ptr %optbuf.i, i32 0, i32 3
  %27 = ptrtoint ptr %srr.i to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %srr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool15.not.i = icmp eq i8 %28, 0
  br i1 %tobool15.not.i, label %sw.bb.i.ipv4_find_option.exit_crit_edge, label %if.end17.i

sw.bb.i.ipv4_find_option.exit_crit_edge:          ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipv4_find_option.exit

if.end17.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 -119, i8 %11)
  %cmp18.i = icmp ne i8 %11, -119
  %is_strictroute.i = getelementptr inbounds %struct.ip_options, ptr %optbuf.i, i32 0, i32 6
  %29 = ptrtoint ptr %is_strictroute.i to i32
  call void @__asan_load1_noabort(i32 %29)
  %bf.load20.i = load i8, ptr %is_strictroute.i, align 4
  %30 = sext i1 %cmp18.i to i8
  %cond.in.in.i = xor i8 %bf.load20.i, %30
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %cond.in.in.i)
  %tobool26.i = icmp slt i8 %cond.in.in.i, 0
  br i1 %tobool26.i, label %if.end17.i.cleanup.sink.split.i_crit_edge, label %if.end17.i.ipv4_find_option.exit_crit_edge

if.end17.i.ipv4_find_option.exit_crit_edge:       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipv4_find_option.exit

if.end17.i.cleanup.sink.split.i_crit_edge:        ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

sw.bb32.i:                                        ; preds = %if.end14.i
  %rr.i = getelementptr inbounds %struct.ip_options, ptr %optbuf.i, i32 0, i32 4
  %31 = ptrtoint ptr %rr.i to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %rr.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool33.not.i = icmp eq i8 %32, 0
  br i1 %tobool33.not.i, label %sw.bb32.i.ipv4_find_option.exit_crit_edge, label %sw.bb32.i.cleanup.sink.split.i_crit_edge

sw.bb32.i.cleanup.sink.split.i_crit_edge:         ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

sw.bb32.i.ipv4_find_option.exit_crit_edge:        ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipv4_find_option.exit

sw.bb39.i:                                        ; preds = %if.end14.i
  %router_alert.i = getelementptr inbounds %struct.ip_options, ptr %optbuf.i, i32 0, i32 7
  %33 = ptrtoint ptr %router_alert.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %router_alert.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool40.not.i = icmp eq i8 %34, 0
  br i1 %tobool40.not.i, label %sw.bb39.i.ipv4_find_option.exit_crit_edge, label %sw.bb39.i.cleanup.sink.split.i_crit_edge

sw.bb39.i.cleanup.sink.split.i_crit_edge:         ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup.sink.split.i

sw.bb39.i.ipv4_find_option.exit_crit_edge:        ; preds = %sw.bb39.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %ipv4_find_option.exit

cleanup.sink.split.i:                             ; preds = %sw.bb39.i.cleanup.sink.split.i_crit_edge, %sw.bb32.i.cleanup.sink.split.i_crit_edge, %if.end17.i.cleanup.sink.split.i_crit_edge
  %.sink.i = phi i8 [ %28, %if.end17.i.cleanup.sink.split.i_crit_edge ], [ %32, %sw.bb32.i.cleanup.sink.split.i_crit_edge ], [ %34, %sw.bb39.i.cleanup.sink.split.i_crit_edge ]
  %conv37.i = zext i8 %.sink.i to i32
  %add38.i = add nuw nsw i32 %conv37.i, 20
  br label %ipv4_find_option.exit

ipv4_find_option.exit:                            ; preds = %cleanup.sink.split.i, %sw.bb39.i.ipv4_find_option.exit_crit_edge, %sw.bb32.i.ipv4_find_option.exit_crit_edge, %if.end17.i.ipv4_find_option.exit_crit_edge, %sw.bb.i.ipv4_find_option.exit_crit_edge, %if.end14.i.ipv4_find_option.exit_crit_edge, %if.end8.i.ipv4_find_option.exit_crit_edge, %if.end3.i.ipv4_find_option.exit_crit_edge, %if.end.i.ipv4_find_option.exit_crit_edge, %skb_header_pointer.exit.i.ipv4_find_option.exit_crit_edge, %lor.lhs.false.i.i.i.ipv4_find_option.exit_crit_edge, %if.end.i.i.i.ipv4_find_option.exit_crit_edge
  %offset.0 = phi i32 [ -1, %if.end.i.i.i.ipv4_find_option.exit_crit_edge ], [ -1, %lor.lhs.false.i.i.i.ipv4_find_option.exit_crit_edge ], [ -1, %if.end.i.ipv4_find_option.exit_crit_edge ], [ -1, %if.end14.i.ipv4_find_option.exit_crit_edge ], [ -1, %sw.bb39.i.ipv4_find_option.exit_crit_edge ], [ %add38.i, %cleanup.sink.split.i ], [ -1, %sw.bb32.i.ipv4_find_option.exit_crit_edge ], [ -1, %sw.bb.i.ipv4_find_option.exit_crit_edge ], [ -1, %if.end17.i.ipv4_find_option.exit_crit_edge ], [ -1, %if.end8.i.ipv4_find_option.exit_crit_edge ], [ -1, %if.end3.i.ipv4_find_option.exit_crit_edge ], [ -1, %skb_header_pointer.exit.i.ipv4_find_option.exit_crit_edge ]
  %retval.0.i = phi i32 [ -74, %if.end.i.i.i.ipv4_find_option.exit_crit_edge ], [ -74, %lor.lhs.false.i.i.i.ipv4_find_option.exit_crit_edge ], [ -2, %if.end.i.ipv4_find_option.exit_crit_edge ], [ -95, %if.end14.i.ipv4_find_option.exit_crit_edge ], [ -2, %sw.bb39.i.ipv4_find_option.exit_crit_edge ], [ %conv4, %cleanup.sink.split.i ], [ -2, %sw.bb32.i.ipv4_find_option.exit_crit_edge ], [ -2, %sw.bb.i.ipv4_find_option.exit_crit_edge ], [ -2, %if.end17.i.ipv4_find_option.exit_crit_edge ], [ -74, %if.end8.i.ipv4_find_option.exit_crit_edge ], [ -74, %if.end3.i.ipv4_find_option.exit_crit_edge ], [ -74, %skb_header_pointer.exit.i.ipv4_find_option.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %info.i) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_iph.i) #4
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %optbuf.i) #4
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %flags, align 1
  %37 = and i8 %36, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not = icmp eq i8 %37, 0
  br i1 %tobool.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %ipv4_find_option.exit
  call void @__sanitizer_cov_trace_pc() #6
  %call5.lobit = lshr i32 %retval.0.i, 31
  %38 = trunc i32 %call5.lobit to i8
  %.not = xor i8 %38, 1
  %39 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %arrayidx, align 4
  store i8 %.not, ptr %arrayidx, align 1
  br label %cleanup

if.else:                                          ; preds = %ipv4_find_option.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %cmp11 = icmp slt i32 %retval.0.i, 0
  br i1 %cmp11, label %if.else.err28_crit_edge, label %if.end15

if.else.err28_crit_edge:                          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  br label %err28

if.end15:                                         ; preds = %if.else
  %offset16 = getelementptr inbounds %struct.nft_exthdr, ptr %data.i, i32 0, i32 1
  %40 = ptrtoint ptr %offset16 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %offset16, align 1
  %conv17 = zext i8 %41 to i32
  %add = add nsw i32 %offset.0, %conv17
  %len = getelementptr inbounds %struct.nft_exthdr, ptr %data.i, i32 0, i32 2
  %42 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %len, align 1
  %44 = lshr i8 %43, 2
  %div = zext i8 %44 to i32
  %arrayidx19 = getelementptr i32, ptr %arrayidx, i32 %div
  %45 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %arrayidx19, align 4
  %46 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pkt, align 4
  %48 = load i8, ptr %len, align 1
  %conv22 = zext i8 %48 to i32
  %call23 = call i32 @skb_copy_bits(ptr noundef %47, i32 noundef %add, ptr noundef %arrayidx, i32 noundef %conv22) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %cmp24 = icmp slt i32 %call23, 0
  br i1 %cmp24, label %if.end15.err28_crit_edge, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end15.err28_crit_edge:                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #6
  br label %err28

err28:                                            ; preds = %if.end15.err28_crit_edge, %if.else.err28_crit_edge, %entry.err28_crit_edge
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %err28, %if.end15.cleanup_crit_edge, %if.then7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_exthdr_ipv4_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @nft_exthdr_init(ptr noundef %ctx, ptr noundef %expr, ptr noundef %tb)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %data.i, align 1
  %2 = zext i8 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.5)
  switch i8 %1, label %if.end.cleanup_crit_edge [
    i8 -119, label %if.end.sw.epilog_crit_edge
    i8 -125, label %if.end.sw.epilog_crit_edge5
    i8 7, label %if.end.sw.epilog_crit_edge6
    i8 -108, label %if.end.sw.epilog_crit_edge7
  ]

if.end.sw.epilog_crit_edge7:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge6:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge5:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

sw.epilog:                                        ; preds = %if.end.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge5, %if.end.sw.epilog_crit_edge6, %if.end.sw.epilog_crit_edge7
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ %call1, %entry.cleanup_crit_edge ], [ -95, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__ip_options_compile(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_exthdr_sctp_eval(ptr nocapture noundef readonly %expr, ptr noundef %regs, ptr nocapture noundef readonly %pkt) #2 align 64 {
entry:
  %_sch = alloca %struct.sctp_chunkhdr, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %thoff.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %0 = ptrtoint ptr %thoff.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %thoff.i, align 4
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %dreg = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %2 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dreg, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %_sch) #4
  %tprot = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %4 = ptrtoint ptr %_sch to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %_sch, align 4
  %5 = ptrtoint ptr %tprot to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %tprot, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %6)
  %cmp.not = icmp eq i8 %6, -124
  br i1 %cmp.not, label %do.bodythread-pre-split, label %entry.err_crit_edge

entry.err_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

do.bodythread-pre-split:                          ; preds = %entry
  %add = add i32 %1, 12
  %7 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %7)
  %.pr = load ptr, ptr %pkt, align 4
  br label %do.body

do.body:                                          ; preds = %if.end49.do.body_crit_edge, %do.bodythread-pre-split
  %8 = phi ptr [ %.pr, %do.bodythread-pre-split ], [ %42, %if.end49.do.body_crit_edge ]
  %offset.0 = phi i32 [ %add, %do.bodythread-pre-split ], [ %add54, %if.end49.do.body_crit_edge ]
  %len.i.i = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len.i.i, align 4
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 7
  %11 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %data_len.i.i, align 8
  %13 = add i32 %offset.0, %12
  %sub.i4.i = sub i32 %10, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub.i4.i)
  %cmp.not.i.i = icmp slt i32 %sub.i4.i, 4
  br i1 %cmp.not.i.i, label %if.end.i.i, label %skb_header_pointer.exit, !prof !30

if.end.i.i:                                       ; preds = %do.body
  %tobool2.not.i.i = icmp eq ptr %8, null
  br i1 %tobool2.not.i.i, label %if.end.i.i.err_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.err_crit_edge:                         ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %8, i32 noundef %offset.0, ptr noundef nonnull %_sch, i32 noundef 4) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.err_crit_edge, label %lor.lhs.false.i.i.lor.lhs.false_crit_edge

lor.lhs.false.i.i.lor.lhs.false_crit_edge:        ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

lor.lhs.false.i.i.err_crit_edge:                  ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

skb_header_pointer.exit:                          ; preds = %do.body
  %data.i96 = getelementptr inbounds %struct.sk_buff, ptr %8, i32 0, i32 19
  %14 = ptrtoint ptr %data.i96 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i96, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 %offset.0
  %tobool.not = icmp eq ptr %add.ptr.i.i, null
  br i1 %tobool.not, label %skb_header_pointer.exit.err_crit_edge, label %skb_header_pointer.exit.lor.lhs.false_crit_edge

skb_header_pointer.exit.lor.lhs.false_crit_edge:  ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %lor.lhs.false

skb_header_pointer.exit.err_crit_edge:            ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

lor.lhs.false:                                    ; preds = %skb_header_pointer.exit.lor.lhs.false_crit_edge, %lor.lhs.false.i.i.lor.lhs.false_crit_edge
  %retval.0.i.i102 = phi ptr [ %add.ptr.i.i, %skb_header_pointer.exit.lor.lhs.false_crit_edge ], [ %_sch, %lor.lhs.false.i.i.lor.lhs.false_crit_edge ]
  %length = getelementptr inbounds %struct.sctp_chunkhdr, ptr %retval.0.i.i102, i32 0, i32 2
  %16 = ptrtoint ptr %length to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %length, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool4.not = icmp eq i16 %17, 0
  br i1 %tobool4.not, label %lor.lhs.false.err_crit_edge, label %if.end6

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end6:                                          ; preds = %lor.lhs.false
  %18 = ptrtoint ptr %retval.0.i.i102 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %retval.0.i.i102, align 2
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %data.i, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp10 = icmp eq i8 %19, %21
  br i1 %cmp10, label %if.then12, label %if.end49

if.then12:                                        ; preds = %if.end6
  %flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %22 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %flags, align 1
  %24 = and i8 %23, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool14.not = icmp eq i8 %24, 0
  br i1 %tobool14.not, label %if.end16, label %if.then15

if.then15:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #6
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 16777216, ptr %arrayidx, align 4
  br label %cleanup

if.end16:                                         ; preds = %if.then12
  %offset17 = getelementptr inbounds %struct.nft_exthdr, ptr %data.i, i32 0, i32 1
  %26 = ptrtoint ptr %offset17 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %offset17, align 1
  %conv18 = zext i8 %27 to i32
  %len = getelementptr inbounds %struct.nft_exthdr, ptr %data.i, i32 0, i32 2
  %28 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %len, align 1
  %conv19 = zext i8 %29 to i32
  %add20 = add nuw nsw i32 %conv19, %conv18
  %conv22 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add20, i32 %conv22)
  %cmp23 = icmp ugt i32 %add20, %conv22
  br i1 %cmp23, label %if.end16.err_crit_edge, label %lor.lhs.false25

if.end16.err_crit_edge:                           ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

lor.lhs.false25:                                  ; preds = %if.end16
  %add28 = add i32 %offset.0, %conv22
  %30 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %pkt, align 4
  %len30 = getelementptr inbounds %struct.sk_buff, ptr %31, i32 0, i32 6
  %32 = ptrtoint ptr %len30 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %len30, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add28, i32 %33)
  %cmp31 = icmp ugt i32 %add28, %33
  br i1 %cmp31, label %lor.lhs.false25.err_crit_edge, label %if.end34

lor.lhs.false25.err_crit_edge:                    ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end34:                                         ; preds = %lor.lhs.false25
  %div95 = lshr i32 %conv19, 2
  %arrayidx37 = getelementptr i32, ptr %arrayidx, i32 %div95
  %34 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %arrayidx37, align 4
  %35 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pkt, align 4
  %37 = ptrtoint ptr %offset17 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %offset17, align 1
  %conv40 = zext i8 %38 to i32
  %add41 = add i32 %offset.0, %conv40
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %len, align 1
  %conv43 = zext i8 %40 to i32
  %call44 = call i32 @skb_copy_bits(ptr noundef %36, i32 noundef %add41, ptr noundef %arrayidx, i32 noundef %conv43) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call44)
  %cmp45 = icmp slt i32 %call44, 0
  br i1 %cmp45, label %if.end34.err_crit_edge, label %if.end34.cleanup_crit_edge

if.end34.cleanup_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end34.err_crit_edge:                           ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end49:                                         ; preds = %if.end6
  %conv51 = zext i16 %17 to i32
  %add52 = add nuw nsw i32 %conv51, 3
  %and53 = and i32 %add52, 131068
  %add54 = add i32 %and53, %offset.0
  %41 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pkt, align 4
  %len56 = getelementptr inbounds %struct.sk_buff, ptr %42, i32 0, i32 6
  %43 = ptrtoint ptr %len56 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len56, align 4
  %cmp57 = icmp ult i32 %add54, %44
  br i1 %cmp57, label %if.end49.do.body_crit_edge, label %if.end49.err_crit_edge

if.end49.err_crit_edge:                           ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end49.do.body_crit_edge:                       ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

err:                                              ; preds = %if.end49.err_crit_edge, %if.end34.err_crit_edge, %lor.lhs.false25.err_crit_edge, %if.end16.err_crit_edge, %lor.lhs.false.err_crit_edge, %skb_header_pointer.exit.err_crit_edge, %lor.lhs.false.i.i.err_crit_edge, %if.end.i.i.err_crit_edge, %entry.err_crit_edge
  %flags59 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %45 = ptrtoint ptr %flags59 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %flags59, align 1
  %47 = and i8 %46, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool62.not = icmp eq i8 %47, 0
  br i1 %tobool62.not, label %if.else, label %if.then63

if.then63:                                        ; preds = %err
  call void @__sanitizer_cov_trace_pc() #6
  %48 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %arrayidx, align 4
  br label %cleanup

if.else:                                          ; preds = %err
  call void @__sanitizer_cov_trace_pc() #6
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then63, %if.end34.cleanup_crit_edge, %if.then15
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %_sch) #4
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 8)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_exthdr.c", i32 600, i32 11}
!2 = !{ptr @nft_exthdr_type, !3, !"nft_exthdr_type", i1 false, i1 false}
!3 = !{!"../net/netfilter/nft_exthdr.c", i32 599, i32 22}
!4 = !{ptr @nft_exthdr_ipv6_ops, !5, !"nft_exthdr_ipv6_ops", i1 false, i1 false}
!5 = !{!"../net/netfilter/nft_exthdr.c", i32 520, i32 34}
!6 = !{ptr @nft_exthdr_tcp_set_ops, !7, !"nft_exthdr_tcp_set_ops", i1 false, i1 false}
!7 = !{!"../net/netfilter/nft_exthdr.c", i32 544, i32 34}
!8 = distinct !{null, !9, !"__already_done", i1 false, i1 false}
!9 = !{!"../net/netfilter/nft_exthdr.c", i32 300, i32 4}
!10 = !{ptr @.str.1, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @nft_exthdr_tcp_ops, !12, !"nft_exthdr_tcp_ops", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_exthdr.c", i32 536, i32 34}
!13 = !{ptr @nft_exthdr_ipv4_ops, !14, !"nft_exthdr_ipv4_ops", i1 false, i1 false}
!14 = !{!"../net/netfilter/nft_exthdr.c", i32 528, i32 34}
!15 = !{ptr @nft_exthdr_sctp_ops, !16, !"nft_exthdr_sctp_ops", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_exthdr.c", i32 552, i32 34}
!17 = !{ptr @nft_exthdr_policy, !18, !"nft_exthdr_policy", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_exthdr.c", i32 353, i32 32}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"auto-init"}
!29 = !{!"branch_weights", i32 2000, i32 1}
!30 = !{!"branch_weights", i32 1, i32 2000}
