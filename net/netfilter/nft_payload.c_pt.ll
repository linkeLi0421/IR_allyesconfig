; ModuleID = '/llk/IR_all_yes/net/netfilter/nft_payload.c_pt.bc'
source_filename = "../net/netfilter/nft_payload.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nft_expr_type = type { ptr, ptr, ptr, %struct.list_head, ptr, ptr, ptr, i32, i8, i8 }
%struct.list_head = type { ptr, ptr }
%struct.nft_expr_ops = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.nla_policy = type { i8, i8, i16, %union.anon.94 }
%union.anon.94 = type { i32 }
%struct.skb_checksum_ops = type { ptr, ptr }
%struct.vlan_ethhdr = type { %union.anon.192, i16, i16, i16 }
%union.anon.192 = type { %struct.anon.193 }
%struct.anon.193 = type { [6 x i8], [6 x i8] }
%struct.nft_expr = type { ptr, [4 x i8], [0 x i8] }
%struct.nft_payload = type { i8, i8, i8, i8 }
%struct.sk_buff = type { %union.anon.85, %union.anon.120, %union.anon.121, [48 x i8], %union.anon.122, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.124, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.85 = type { %struct.anon.86 }
%struct.anon.86 = type { ptr, ptr, %union.anon.87 }
%union.anon.87 = type { ptr }
%union.anon.120 = type { ptr }
%union.anon.121 = type { i64 }
%union.anon.122 = type { %struct.anon.123 }
%struct.anon.123 = type { i32, ptr }
%union.anon.124 = type { %struct.anon.125 }
%struct.anon.125 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.126, i32, i32, i32, i16, i16, %union.anon.128, i32, %union.anon.129, %union.anon.130, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.126 = type { i32 }
%union.anon.128 = type { i32 }
%union.anon.129 = type { i32 }
%union.anon.130 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.nft_pktinfo = type { ptr, ptr, i8, i8, i16, i32, i32 }
%struct.tcphdr = type { i16, i16, i32, i32, i16, i16, i16, i16 }
%struct.anon.155 = type { ptr, ptr }
%struct.nft_data = type { %union.anon.154 }
%union.anon.154 = type { [4 x i32] }
%struct.nft_offload_ctx = type { %struct.anon.156, i32, ptr, [24 x %struct.nft_offload_reg] }
%struct.anon.156 = type { i32, i16, i8 }
%struct.nft_offload_reg = type { i32, i32, i32, i32, i32, [4 x i8], %struct.nft_data, %struct.nft_data }
%struct.udphdr = type { i16, i16, i16, i16 }
%struct.nft_payload_set = type { i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.sctphdr = type { i16, i16, i32, i32 }

@nft_payload_eval.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"net/netfilter/nft_payload.c\00", [36 x i8] zeroinitializer }, align 32
@nft_payload_type = dso_local global %struct.nft_expr_type { ptr @nft_payload_select_ops, ptr null, ptr null, %struct.list_head zeroinitializer, ptr @.str.1, ptr null, ptr @nft_payload_policy, i32 8, i8 0, i8 0 }, section ".data..read_mostly", align 4
@nft_payload_fast_ops = dso_local constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_payload_eval, ptr null, i32 16, ptr @nft_payload_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_payload_dump, ptr null, ptr @nft_payload_reduce, ptr null, ptr @nft_payload_offload, ptr null, ptr null, ptr @nft_payload_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"payload\00", [24 x i8] zeroinitializer }, align 32
@nft_payload_policy = internal constant { [9 x %struct.nla_policy], [56 x i8] } { [9 x %struct.nla_policy] [%struct.nla_policy zeroinitializer, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.94 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.94 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.94 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.94 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.94 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.94 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.94 zeroinitializer }, %struct.nla_policy { i8 3, i8 0, i16 0, %union.anon.94 zeroinitializer }], [56 x i8] zeroinitializer }, align 32
@nft_payload_set_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_payload_set_eval, ptr null, i32 16, ptr @nft_payload_set_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_payload_set_dump, ptr null, ptr @nft_payload_set_reduce, ptr null, ptr null, ptr null, ptr null, ptr @nft_payload_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_payload_ops = internal constant { %struct.nft_expr_ops, [60 x i8] } { %struct.nft_expr_ops { ptr @nft_payload_eval, ptr null, i32 16, ptr @nft_payload_init, ptr null, ptr null, ptr null, ptr null, ptr @nft_payload_dump, ptr null, ptr @nft_payload_reduce, ptr null, ptr @nft_payload_offload, ptr null, ptr null, ptr @nft_payload_type, ptr null }, [60 x i8] zeroinitializer }, align 32
@nft_payload_set_eval.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@sctp_csum_ops = internal constant { %struct.skb_checksum_ops, [24 x i8] } { %struct.skb_checksum_ops { ptr @sctp_csum_update, ptr @sctp_csum_combine }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.2 = internal global [4 x i64] [i64 2, i64 16, i64 33024, i64 34984]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.5 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 3, i64 6, i64 7, i64 8, i64 9, i64 10]
@__sancov_gen_cov_switch_values.6 = internal global [4 x i64] [i64 2, i64 16, i64 2048, i64 34525]
@__sancov_gen_cov_switch_values.7 = internal global [5 x i64] [i64 3, i64 8, i64 9, i64 12, i64 16]
@__sancov_gen_cov_switch_values.8 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 8, i64 24]
@__sancov_gen_cov_switch_values.9 = internal global [4 x i64] [i64 2, i64 8, i64 6, i64 17]
@__sancov_gen_cov_switch_values.10 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.11 = internal global [4 x i64] [i64 2, i64 8, i64 0, i64 2]
@__sancov_gen_cov_switch_values.12 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.13 = internal global [6 x i64] [i64 4, i64 8, i64 6, i64 17, i64 58, i64 136]
@__sancov_gen_cov_switch_values.14 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 160, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [21 x i8] c"nft_payload_fast_ops\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 548, i32 27 }
@___asan_gen_.21 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 877, i32 11 }
@___asan_gen_.24 = private unnamed_addr constant [19 x i8] c"nft_payload_policy\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 172, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"nft_payload_set_ops\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 825, i32 34 }
@___asan_gen_.30 = private unnamed_addr constant [16 x i8] c"nft_payload_ops\00", align 1
@___asan_gen_.31 = private constant [31 x i8] c"../net/netfilter/nft_payload.c\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.31, i32 538, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant [14 x i8] c"sctp_csum_ops\00", align 1
@___asan_gen_.34 = private unnamed_addr constant [31 x i8] c"../include/net/sctp/checksum.h\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 46, i32 38 }
@llvm.compiler.used = appending global [7 x ptr] [ptr @.str, ptr @nft_payload_fast_ops, ptr @.str.1, ptr @nft_payload_policy, ptr @nft_payload_set_ops, ptr @nft_payload_ops, ptr @sctp_csum_ops], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_payload_fast_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_payload_policy to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_payload_set_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nft_payload_ops to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sctp_csum_ops to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @nft_payload_eval(ptr nocapture noundef readonly %expr, ptr noundef %regs, ptr nocapture noundef %pkt) #0 align 64 {
entry:
  %veth.i = alloca %struct.vlan_ethhdr, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %dreg = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 3
  %2 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dreg, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %len = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %4 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len, align 2
  %conv = zext i8 %5 to i32
  %rem = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %div109 = lshr i32 %conv, 2
  %arrayidx4 = getelementptr i32, ptr %arrayidx, i32 %div109
  %6 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %arrayidx4, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %7 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %bf.load107 = load i8, ptr %data.i, align 4
  %8 = zext i8 %bf.load107 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i8 %bf.load107, label %land.end [
    i8 0, label %sw.bb
    i8 1, label %sw.bb20
    i8 2, label %sw.bb22
    i8 3, label %sw.bb30
  ]

sw.bb:                                            ; preds = %if.end
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 21
  %9 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %mac_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %10)
  %cmp.i.not = icmp eq i16 %10, -1
  br i1 %cmp.i.not, label %sw.bb.err_crit_edge, label %if.end8

sw.bb.err_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end8:                                          ; preds = %sw.bb
  %vlan_present = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 3
  %11 = ptrtoint ptr %vlan_present to i32
  call void @__asan_loadN_noabort(i32 %11, i32 4)
  %bf.load9 = load i32, ptr %vlan_present, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %bf.load9)
  %tobool11.not = icmp sgt i32 %bf.load9, -1
  br i1 %tobool11.not, label %if.end18, label %if.then12

if.then12:                                        ; preds = %if.end8
  %offset13 = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 1
  %12 = ptrtoint ptr %offset13 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %offset13, align 1
  %14 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %len, align 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %16 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %head.i.i, align 8
  %conv.i.i = zext i16 %10 to i32
  %add.ptr.i.i = getelementptr i8, ptr %17, i32 %conv.i.i
  %data.i110 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %18 = ptrtoint ptr %data.i110 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %data.i110, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %19 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %veth.i) #9
  %20 = getelementptr inbounds %struct.vlan_ethhdr, ptr %veth.i, i32 0, i32 1
  %21 = getelementptr inbounds %struct.vlan_ethhdr, ptr %veth.i, i32 0, i32 2
  %22 = getelementptr inbounds %struct.vlan_ethhdr, ptr %veth.i, i32 0, i32 3
  %protocol.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 18
  %23 = call ptr @memset(ptr %veth.i, i32 255, i32 18)
  %24 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %protocol.i, align 8
  %26 = zext i16 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.2)
  switch i16 %25, label %if.end.thread.i [
    i16 -30552, label %if.then12.if.end.i_crit_edge
    i16 -32512, label %if.then12.if.end.i_crit_edge123
  ]

if.then12.if.end.i_crit_edge123:                  ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then12.if.end.i_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then12.if.end.i_crit_edge, %if.then12.if.end.i_crit_edge123
  %27 = add i8 %13, -18
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %27)
  %28 = icmp ult i8 %27, 4
  %spec.select116.neg.i = select i1 %28, i8 -4, i8 0
  %conv15.i = zext i8 %13 to i32
  %add17.i = select i1 %28, i32 22, i32 18
  call void @__sanitizer_cov_trace_cmp4(i32 %add17.i, i32 %conv15.i)
  %cmp18.i = icmp ugt i32 %add17.i, %conv15.i
  br i1 %cmp18.i, label %if.then20.i, label %if.end.i.if.else66.i_crit_edge

if.end.i.if.else66.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else66.i

if.end.thread.i:                                  ; preds = %if.then12
  %conv15119.i = zext i8 %13 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 18, i8 %13)
  %cmp18121.i = icmp ult i8 %13, 18
  br i1 %cmp18121.i, label %if.end.thread.i.if.else.i_crit_edge, label %if.end.thread.i.if.else66.i_crit_edge

if.end.thread.i.if.else66.i_crit_edge:            ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else66.i

if.end.thread.i.if.else.i_crit_edge:              ; preds = %if.end.thread.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

if.then20.i:                                      ; preds = %if.end.i
  br i1 %28, label %land.lhs.true22.i, label %if.then20.i.if.else.i_crit_edge

if.then20.i.if.else.i_crit_edge:                  ; preds = %if.then20.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true22.i:                                ; preds = %if.then20.i
  %call23.i = call i32 @skb_copy_bits(ptr noundef %1, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull %veth.i, i32 noundef 18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23.i)
  %cmp24.i = icmp slt i32 %call23.i, 0
  br i1 %cmp24.i, label %land.lhs.true22.i.nft_payload_copy_vlan.exit.thread_crit_edge, label %land.lhs.true22.i.if.else.i_crit_edge

land.lhs.true22.i.if.else.i_crit_edge:            ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.else.i

land.lhs.true22.i.nft_payload_copy_vlan.exit.thread_crit_edge: ; preds = %land.lhs.true22.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_payload_copy_vlan.exit.thread

if.else.i:                                        ; preds = %land.lhs.true22.i.if.else.i_crit_edge, %if.then20.i.if.else.i_crit_edge, %if.end.thread.i.if.else.i_crit_edge
  %vlan_hlen.0123133.i = phi i32 [ 4, %land.lhs.true22.i.if.else.i_crit_edge ], [ 0, %if.then20.i.if.else.i_crit_edge ], [ 0, %if.end.thread.i.if.else.i_crit_edge ]
  %conv15125132.i = phi i32 [ %conv15.i, %land.lhs.true22.i.if.else.i_crit_edge ], [ %conv15.i, %if.then20.i.if.else.i_crit_edge ], [ %conv15119.i, %if.end.thread.i.if.else.i_crit_edge ]
  %add17126131.i = phi i32 [ 22, %land.lhs.true22.i.if.else.i_crit_edge ], [ 18, %if.then20.i.if.else.i_crit_edge ], [ 18, %if.end.thread.i.if.else.i_crit_edge ]
  %call.i.i = call i32 @skb_copy_bits(ptr noundef %1, i32 noundef %sub.ptr.sub.i, ptr noundef nonnull %veth.i, i32 noundef 14) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.end30.i, label %if.else.i.nft_payload_copy_vlan.exit.thread_crit_edge

if.else.i.nft_payload_copy_vlan.exit.thread_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_payload_copy_vlan.exit.thread

if.end30.i:                                       ; preds = %if.else.i
  %vlan_proto.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 9
  %29 = ptrtoint ptr %vlan_proto.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %vlan_proto.i.i, align 8
  %31 = ptrtoint ptr %20 to i32
  call void @__asan_store2_noabort(i32 %31)
  store i16 %30, ptr %20, align 2
  %vlan_tci.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 10
  %32 = ptrtoint ptr %vlan_tci.i.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %vlan_tci.i.i, align 2
  %34 = ptrtoint ptr %21 to i32
  call void @__asan_store2_noabort(i32 %34)
  store i16 %33, ptr %21, align 2
  %35 = ptrtoint ptr %protocol.i to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %protocol.i, align 8
  %37 = ptrtoint ptr %22 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %22, align 2
  %conv32.i = zext i8 %15 to i32
  %add33.i = add nuw nsw i32 %conv15125132.i, %conv32.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add33.i, i32 %add17126131.i)
  %cmp36.i = icmp ugt i32 %add33.i, %add17126131.i
  %sub.i = add nuw nsw i32 %vlan_hlen.0123133.i, 238
  %add43.i = add nuw nsw i32 %sub.i, %add33.i
  %38 = trunc i32 %add43.i to i8
  %conv46.i = select i1 %cmp36.i, i8 %38, i8 0
  %ethlen.0.i = sub i8 %15, %conv46.i
  %add.ptr.i = getelementptr i8, ptr %veth.i, i32 %conv15125132.i
  %idx.neg.i = sub nsw i32 0, %vlan_hlen.0123133.i
  %add.ptr50.i = getelementptr i8, ptr %add.ptr.i, i32 %idx.neg.i
  %conv51.i = zext i8 %ethlen.0.i to i32
  %39 = call ptr @memcpy(ptr %arrayidx, ptr %add.ptr50.i, i32 %conv51.i)
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv46.i)
  %cmp57.i = icmp eq i8 %conv46.i, 0
  br i1 %cmp57.i, label %nft_payload_copy_vlan.exit.thread121, label %cleanup.i

nft_payload_copy_vlan.exit.thread121:             ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %veth.i) #9
  br label %cleanup

cleanup.i:                                        ; preds = %if.end30.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr62.i = getelementptr i8, ptr %arrayidx, i32 %conv51.i
  %40 = trunc i32 %vlan_hlen.0123133.i to i8
  %conv65.i = add nuw nsw i8 %40, 14
  br label %nft_payload_copy_vlan.exit

if.else66.i:                                      ; preds = %if.end.thread.i.if.else66.i_crit_edge, %if.end.i.if.else66.i_crit_edge
  %vlan_hlen.0124.neg.i = phi i8 [ 0, %if.end.thread.i.if.else66.i_crit_edge ], [ %spec.select116.neg.i, %if.end.i.if.else66.i_crit_edge ]
  %.neg139.i = add i8 %13, -4
  %conv71.i = add i8 %.neg139.i, %vlan_hlen.0124.neg.i
  br label %nft_payload_copy_vlan.exit

nft_payload_copy_vlan.exit.thread:                ; preds = %if.else.i.nft_payload_copy_vlan.exit.thread_crit_edge, %land.lhs.true22.i.nft_payload_copy_vlan.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %veth.i) #9
  br label %err

nft_payload_copy_vlan.exit:                       ; preds = %if.else66.i, %cleanup.i
  %offset.addr.1.i = phi i8 [ %conv65.i, %cleanup.i ], [ %conv71.i, %if.else66.i ]
  %len.addr.1.i = phi i8 [ %38, %cleanup.i ], [ %15, %if.else66.i ]
  %dst_u8.1.i = phi ptr [ %add.ptr62.i, %cleanup.i ], [ %arrayidx, %if.else66.i ]
  %conv73.i = zext i8 %offset.addr.1.i to i32
  %add74.i = add i32 %sub.ptr.sub.i, %conv73.i
  %conv75.i = zext i8 %len.addr.1.i to i32
  %call76.i = call i32 @skb_copy_bits(ptr noundef %1, i32 noundef %add74.i, ptr noundef %dst_u8.1.i, i32 noundef %conv75.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call76.i)
  %cmp77.i = icmp eq i32 %call76.i, 0
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %veth.i) #9
  br i1 %cmp77.i, label %nft_payload_copy_vlan.exit.cleanup_crit_edge, label %nft_payload_copy_vlan.exit.err_crit_edge

nft_payload_copy_vlan.exit.err_crit_edge:         ; preds = %nft_payload_copy_vlan.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

nft_payload_copy_vlan.exit.cleanup_crit_edge:     ; preds = %nft_payload_copy_vlan.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end18:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #11
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %41 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i, align 8
  %conv.i = zext i16 %10 to i32
  %add.ptr.i112 = getelementptr i8, ptr %42, i32 %conv.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i112 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %44 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %sw.epilog

sw.bb20:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %head.i.i113 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %45 = ptrtoint ptr %head.i.i113 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %head.i.i113, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %47 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i114 = zext i16 %48 to i32
  %add.ptr.i.i115 = getelementptr i8, ptr %46, i32 %conv.i.i114
  %data.i116 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %49 = ptrtoint ptr %data.i116 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %data.i116, align 4
  %sub.ptr.lhs.cast.i117 = ptrtoint ptr %add.ptr.i.i115 to i32
  %sub.ptr.rhs.cast.i118 = ptrtoint ptr %50 to i32
  %sub.ptr.sub.i119 = sub i32 %sub.ptr.lhs.cast.i117, %sub.ptr.rhs.cast.i118
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 2
  %51 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %flags, align 4
  %53 = and i8 %52, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %53)
  %tobool24.not = icmp eq i8 %53, 0
  br i1 %tobool24.not, label %sw.bb22.err_crit_edge, label %lor.lhs.false

sw.bb22.err_crit_edge:                            ; preds = %sw.bb22
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

lor.lhs.false:                                    ; preds = %sw.bb22
  %fragoff = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %54 = ptrtoint ptr %fragoff to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %fragoff, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %55)
  %tobool26.not = icmp eq i16 %55, 0
  br i1 %tobool26.not, label %if.end28, label %lor.lhs.false.err_crit_edge

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end28:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %thoff.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %56 = ptrtoint ptr %thoff.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %thoff.i, align 4
  br label %sw.epilog

sw.bb30:                                          ; preds = %if.end
  %call31 = tail call fastcc i32 @nft_payload_inner_offset(ptr noundef %pkt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %sw.bb30.err_crit_edge, label %sw.bb30.sw.epilog_crit_edge

sw.bb30.sw.epilog_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb30.err_crit_edge:                            ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

land.end:                                         ; preds = %if.end
  %.b108 = load i1, ptr @nft_payload_eval.__already_done, align 1
  br i1 %.b108, label %land.end.err_crit_edge, label %if.then41, !prof !28

land.end.err_crit_edge:                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then41:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nft_payload_eval.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 160, i32 noundef 9, ptr noundef null) #9
  br label %err

sw.epilog:                                        ; preds = %sw.bb30.sw.epilog_crit_edge, %if.end28, %sw.bb20, %if.end18
  %offset.0 = phi i32 [ %call31, %sw.bb30.sw.epilog_crit_edge ], [ %57, %if.end28 ], [ %sub.ptr.sub.i119, %sw.bb20 ], [ %sub.ptr.sub, %if.end18 ]
  %offset71 = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 1
  %58 = ptrtoint ptr %offset71 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %offset71, align 1
  %conv72 = zext i8 %59 to i32
  %add = add i32 %offset.0, %conv72
  %60 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %len, align 2
  %conv74 = zext i8 %61 to i32
  %call75 = tail call i32 @skb_copy_bits(ptr noundef %1, i32 noundef %add, ptr noundef %arrayidx, i32 noundef %conv74) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %cmp76 = icmp slt i32 %call75, 0
  br i1 %cmp76, label %sw.epilog.err_crit_edge, label %sw.epilog.cleanup_crit_edge

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog.err_crit_edge:                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

err:                                              ; preds = %sw.epilog.err_crit_edge, %if.then41, %land.end.err_crit_edge, %sw.bb30.err_crit_edge, %lor.lhs.false.err_crit_edge, %sw.bb22.err_crit_edge, %nft_payload_copy_vlan.exit.err_crit_edge, %nft_payload_copy_vlan.exit.thread, %sw.bb.err_crit_edge
  %62 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %sw.epilog.cleanup_crit_edge, %nft_payload_copy_vlan.exit.cleanup_crit_edge, %nft_payload_copy_vlan.exit.thread121
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nft_payload_inner_offset(ptr nocapture noundef %pkt) unnamed_addr #0 align 64 {
entry:
  %_tcph.i = alloca %struct.tcphdr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 2
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %flags, align 4
  %2 = and i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not = icmp eq i8 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %thoff.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %3 = ptrtoint ptr %thoff.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %thoff.i.i, align 4
  %5 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i, label %land.lhs.true.return_crit_edge, label %lor.lhs.false.i

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

lor.lhs.false.i:                                  ; preds = %land.lhs.true
  %fragoff.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %6 = ptrtoint ptr %fragoff.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %fragoff.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool2.not.i = icmp eq i16 %7, 0
  br i1 %tobool2.not.i, label %if.end.i, label %lor.lhs.false.i.return_crit_edge

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false.i
  %tprot.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %8 = ptrtoint ptr %tprot.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %tprot.i, align 1
  %10 = zext i8 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %9, label %if.end.i.return_crit_edge [
    i8 17, label %sw.bb.i
    i8 6, label %sw.bb4.i
  ]

if.end.i.return_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.i = add i32 %4, 8
  %inneroff.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 6
  %11 = ptrtoint ptr %inneroff.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %add.i, ptr %inneroff.i, align 4
  br label %__nft_payload_inner_offset.exit

sw.bb4.i:                                         ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %_tcph.i) #9
  %12 = call ptr @memset(ptr %_tcph.i, i32 255, i32 20)
  %13 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pkt, align 4
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 6
  %15 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 7
  %17 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i.i, align 8
  %19 = add i32 %4, %18
  %sub.i4.i.i = sub i32 %16, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %sub.i4.i.i)
  %cmp.not.i.i.i = icmp slt i32 %sub.i4.i.i, 20
  br i1 %cmp.not.i.i.i, label %if.end.i.i.i, label %skb_header_pointer.exit.i, !prof !29

if.end.i.i.i:                                     ; preds = %sw.bb4.i
  %tobool2.not.i.i.i = icmp eq ptr %14, null
  br i1 %tobool2.not.i.i.i, label %if.end.i.i.i.cleanup16.critedge.i_crit_edge, label %lor.lhs.false.i.i.i

if.end.i.i.i.cleanup16.critedge.i_crit_edge:      ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16.critedge.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i.i.i
  %call.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %14, i32 noundef %4, ptr noundef nonnull %_tcph.i, i32 noundef 20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp3.i.i.i = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp3.i.i.i, label %lor.lhs.false.i.i.i.cleanup16.critedge.i_crit_edge, label %lor.lhs.false.i.i.i.if.end8.i_crit_edge

lor.lhs.false.i.i.i.if.end8.i_crit_edge:          ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

lor.lhs.false.i.i.i.cleanup16.critedge.i_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16.critedge.i

skb_header_pointer.exit.i:                        ; preds = %sw.bb4.i
  %data.i.i = getelementptr inbounds %struct.sk_buff, ptr %14, i32 0, i32 19
  %20 = ptrtoint ptr %data.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %21, i32 %4
  %tobool6.not.i = icmp eq ptr %add.ptr.i.i.i, null
  br i1 %tobool6.not.i, label %skb_header_pointer.exit.i.cleanup16.critedge.i_crit_edge, label %skb_header_pointer.exit.i.if.end8.i_crit_edge

skb_header_pointer.exit.i.if.end8.i_crit_edge:    ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8.i

skb_header_pointer.exit.i.cleanup16.critedge.i_crit_edge: ; preds = %skb_header_pointer.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup16.critedge.i

if.end8.i:                                        ; preds = %skb_header_pointer.exit.i.if.end8.i_crit_edge, %lor.lhs.false.i.i.i.if.end8.i_crit_edge
  %retval.0.i.i32.i = phi ptr [ %add.ptr.i.i.i, %skb_header_pointer.exit.i.if.end8.i_crit_edge ], [ %_tcph.i, %lor.lhs.false.i.i.i.if.end8.i_crit_edge ]
  %doff.i.i = getelementptr inbounds %struct.tcphdr, ptr %retval.0.i.i32.i, i32 0, i32 4
  %22 = ptrtoint ptr %doff.i.i to i32
  call void @__asan_load2_noabort(i32 %22)
  %bf.load.i.i = load i16, ptr %doff.i.i, align 4
  %23 = lshr i16 %bf.load.i.i, 10
  %24 = and i16 %23, 60
  %mul.i.i = zext i16 %24 to i32
  %add10.i = add i32 %4, %mul.i.i
  %inneroff11.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 6
  %25 = ptrtoint ptr %inneroff11.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %add10.i, ptr %inneroff11.i, align 4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph.i) #9
  br label %__nft_payload_inner_offset.exit

cleanup16.critedge.i:                             ; preds = %skb_header_pointer.exit.i.cleanup16.critedge.i_crit_edge, %lor.lhs.false.i.i.i.cleanup16.critedge.i_crit_edge, %if.end.i.i.i.cleanup16.critedge.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %_tcph.i) #9
  br label %return

__nft_payload_inner_offset.exit:                  ; preds = %if.end8.i, %sw.bb.i
  %26 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %flags, align 4
  %28 = or i8 %27, 2
  store i8 %28, ptr %flags, align 4
  br label %if.end

if.end:                                           ; preds = %__nft_payload_inner_offset.exit, %entry.if.end_crit_edge
  %inneroff = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 6
  %29 = ptrtoint ptr %inneroff to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %inneroff, align 4
  br label %return

return:                                           ; preds = %if.end, %cleanup16.critedge.i, %if.end.i.return_crit_edge, %lor.lhs.false.i.return_crit_edge, %land.lhs.true.return_crit_edge
  %retval.0 = phi i32 [ %30, %if.end ], [ -1, %lor.lhs.false.i.return_crit_edge ], [ -1, %land.lhs.true.return_crit_edge ], [ -1, %cleanup16.critedge.i ], [ -1, %if.end.i.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_payload_init(ptr noundef %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %4 = trunc i32 %3 to i8
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %data.i, align 4
  %arrayidx2 = getelementptr ptr, ptr %tb, i32 3
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %add.ptr.i.i18 = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i18 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i18, align 4
  %conv = trunc i32 %9 to i8
  %offset = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %offset, align 1
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 4
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx4, align 4
  %add.ptr.i.i19 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i19 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i19, align 4
  %conv6 = trunc i32 %14 to i8
  %len = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv6, ptr %len, align 2
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 1
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7, align 4
  %dreg = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 3
  %conv9 = and i32 %14, 255
  %call10 = tail call i32 @nft_parse_register_store(ptr noundef %ctx, ptr noundef %17, ptr noundef %dreg, ptr noundef null, i32 noundef 0, i32 noundef %conv9) #9
  ret i32 %call10
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_payload_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #0 align 64 {
entry:
  %tmp.i20 = alloca i32, align 4
  %tmp.i18 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %dreg = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 3
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 1, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %data.i, align 4
  %bf.cast = zext i8 %bf.load to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bf.cast, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %offset = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %offset, align 1
  %conv5 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i18) #9
  %6 = ptrtoint ptr %tmp.i18 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv5, ptr %tmp.i18, align 4
  %call.i19 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i18) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i18) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i19)
  %tobool7.not = icmp eq i32 %call.i19, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false4.nla_put_failure_crit_edge

lor.lhs.false4.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %len = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len, align 2
  %conv9 = zext i8 %8 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i20) #9
  %9 = ptrtoint ptr %tmp.i20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv9, ptr %tmp.i20, align 4
  %call.i21 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i20) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i20) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i21)
  %tobool11.not = icmp eq i32 %call.i21, 0
  br i1 %tobool11.not, label %lor.lhs.false8.cleanup_crit_edge, label %lor.lhs.false8.nla_put_failure_crit_edge

lor.lhs.false8.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

nla_put_failure:                                  ; preds = %lor.lhs.false8.nla_put_failure_crit_edge, %lor.lhs.false4.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %lor.lhs.false8.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %lor.lhs.false8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nft_payload_reduce(ptr noundef %track, ptr noundef %expr) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %dreg = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 3
  %0 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dreg, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [20 x %struct.anon.155], ptr %track, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.then_crit_edge, label %lor.lhs.false

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

lor.lhs.false:                                    ; preds = %entry
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 8
  %6 = ptrtoint ptr %expr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %expr, align 8
  %cmp.not = icmp eq ptr %5, %7
  br i1 %cmp.not, label %if.end, label %lor.lhs.false.if.then_crit_edge

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %expr, ptr %arrayidx, align 4
  %9 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %dreg, align 1
  %idxprom14 = zext i8 %10 to i32
  %bitwise = getelementptr [20 x %struct.anon.155], ptr %track, i32 0, i32 %idxprom14, i32 1
  %11 = ptrtoint ptr %bitwise to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %bitwise, align 4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %data.i82 = getelementptr inbounds %struct.nft_expr, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %bf.load = load i8, ptr %data.i, align 4
  %13 = ptrtoint ptr %data.i82 to i32
  call void @__asan_load1_noabort(i32 %13)
  %bf.load22 = load i8, ptr %data.i82, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %bf.load, i8 %bf.load22)
  %cmp24.not = icmp eq i8 %bf.load, %bf.load22
  br i1 %cmp24.not, label %lor.lhs.false25, label %if.end.if.then36_crit_edge

if.end.if.then36_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

lor.lhs.false25:                                  ; preds = %if.end
  %offset = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 1
  %14 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %offset, align 1
  %offset26 = getelementptr inbounds %struct.nft_payload, ptr %data.i82, i32 0, i32 1
  %16 = ptrtoint ptr %offset26 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %offset26, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp28.not = icmp eq i8 %15, %17
  br i1 %cmp28.not, label %lor.lhs.false30, label %lor.lhs.false25.if.then36_crit_edge

lor.lhs.false25.if.then36_crit_edge:              ; preds = %lor.lhs.false25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

lor.lhs.false30:                                  ; preds = %lor.lhs.false25
  %len = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %18 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %len, align 2
  %len32 = getelementptr inbounds %struct.nft_payload, ptr %data.i82, i32 0, i32 2
  %20 = ptrtoint ptr %len32 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %len32, align 2
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp34.not = icmp eq i8 %19, %21
  br i1 %cmp34.not, label %if.end47, label %lor.lhs.false30.if.then36_crit_edge

lor.lhs.false30.if.then36_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36

if.then36:                                        ; preds = %lor.lhs.false30.if.then36_crit_edge, %lor.lhs.false25.if.then36_crit_edge, %if.end.if.then36_crit_edge
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %expr, ptr %arrayidx, align 4
  %23 = ptrtoint ptr %dreg to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %dreg, align 1
  %idxprom44 = zext i8 %24 to i32
  %bitwise46 = getelementptr [20 x %struct.anon.155], ptr %track, i32 0, i32 %idxprom44, i32 1
  %25 = ptrtoint ptr %bitwise46 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %bitwise46, align 4
  br label %cleanup

if.end47:                                         ; preds = %lor.lhs.false30
  %bitwise52 = getelementptr [20 x %struct.anon.155], ptr %track, i32 0, i32 %idxprom, i32 1
  %26 = ptrtoint ptr %bitwise52 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %bitwise52, align 4
  %tobool53.not = icmp eq ptr %27, null
  br i1 %tobool53.not, label %if.end47.cleanup_crit_edge, label %if.end55

if.end47.cleanup_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end55:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #11
  %call56 = tail call zeroext i1 @nft_expr_reduce_bitwise(ptr noundef %track, ptr noundef %expr) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end55, %if.end47.cleanup_crit_edge, %if.then36, %if.then
  %retval.0 = phi i1 [ false, %if.then ], [ false, %if.then36 ], [ %call56, %if.end55 ], [ true, %if.end47.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_payload_offload(ptr noundef %ctx, ptr noundef %flow, ptr noundef readonly %expr) #0 align 64 {
entry:
  %mask.i1.i1.i = alloca %struct.nft_data, align 8
  %mask.i.i2.i = alloca %struct.nft_data, align 8
  %mask.i1.i.i = alloca %struct.nft_data, align 8
  %mask.i.i.i17 = alloca %struct.nft_data, align 8
  %mask.i49.i7.i = alloca %struct.nft_data, align 8
  %mask.i.i8.i = alloca %struct.nft_data, align 8
  %mask.i49.i.i = alloca %struct.nft_data, align 8
  %mask.i.i.i = alloca %struct.nft_data, align 8
  %mask.i96.i = alloca %struct.nft_data, align 8
  %mask.i77.i = alloca %struct.nft_data, align 8
  %mask.i58.i = alloca %struct.nft_data, align 8
  %mask.i39.i = alloca %struct.nft_data, align 8
  %mask.i20.i = alloca %struct.nft_data, align 8
  %mask.i1.i = alloca %struct.nft_data, align 8
  %mask.i.i = alloca %struct.nft_data, align 8
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %bf.load13 = load i8, ptr %data.i, align 4
  %1 = zext i8 %bf.load13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.4)
  switch i8 %bf.load13, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
    i8 2, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %dreg.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 3
  %2 = ptrtoint ptr %dreg.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %dreg.i, align 1
  %idxprom.i = zext i8 %3 to i32
  %arrayidx.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i
  %offset.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 1
  %4 = ptrtoint ptr %offset.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %offset.i, align 1
  %conv.i = zext i8 %5 to i32
  %6 = tail call i32 @llvm.fshl.i32(i32 %conv.i, i32 %conv.i, i32 31) #9
  %7 = zext i32 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.5)
  switch i32 %6, label %sw.bb.sw.epilog_crit_edge [
    i32 3, label %sw.bb.i
    i32 0, label %sw.bb4.i
    i32 6, label %sw.bb15.i
    i32 7, label %sw.bb26.i
    i32 8, label %sw.bb37.i
    i32 9, label %sw.bb48.i
    i32 10, label %sw.bb59.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb
  %len.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %8 = ptrtoint ptr %len.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %len.i, align 2
  %conv1.i = zext i8 %9 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i.i) #9
  %10 = call ptr @memset(ptr %mask.i.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp.i.i = icmp eq i8 %9, 6
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 7
  %11 = call ptr @memset(ptr %mask1.i.i, i32 255, i32 6)
  br label %if.end.i

if.else.i.i:                                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %9)
  %cmp2.i.i = icmp ugt i8 %9, 6
  br i1 %cmp2.i.i, label %nft_payload_offload_mask.exit.i, label %if.end4.i.i

if.end4.i.i:                                      ; preds = %if.else.i.i
  %12 = call ptr @memset(ptr %mask.i.i, i32 255, i32 6)
  %rem.i.i = and i32 %conv1.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i)
  %tobool.not.i.i = icmp eq i32 %rem.i.i, 0
  br i1 %tobool.not.i.i, label %if.end4.i.i.if.end7.i.i_crit_edge, label %if.then5.i.i

if.end4.i.i.if.end7.i.i_crit_edge:                ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i

if.then5.i.i:                                     ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div23.i.i = lshr i32 %conv1.i, 2
  %.neg127.i = mul nsw i32 %conv1.i, -8
  %mul.i.i = add nsw i32 %.neg127.i, 48
  %notmask.i.i = shl nsw i32 -1, %mul.i.i
  %arrayidx.i.i = getelementptr [4 x i32], ptr %mask.i.i, i32 0, i32 %div23.i.i
  %13 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %notmask.i.i, ptr %arrayidx.i.i, align 4
  br label %if.end7.i.i

if.end7.i.i:                                      ; preds = %if.then5.i.i, %if.end4.i.i.if.end7.i.i_crit_edge
  %mask8.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 7
  %14 = call ptr @memcpy(ptr %mask8.i.i, ptr %mask.i.i, i32 6)
  br label %if.end.i

nft_payload_offload_mask.exit.i:                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i) #9
  br label %sw.epilog

if.end.i:                                         ; preds = %if.end7.i.i, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i) #9
  %base_offset.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 2
  %15 = ptrtoint ptr %base_offset.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 58, ptr %base_offset.i, align 8
  %offset2.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 3
  %16 = ptrtoint ptr %offset2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 64, ptr %offset2.i, align 4
  %len3.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 1
  %17 = ptrtoint ptr %len3.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 6, ptr %len3.i, align 4
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 7, ptr %arrayidx.i, align 8
  %flags.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 4
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %flags.i, align 8
  br label %sw.epilog

sw.bb4.i:                                         ; preds = %sw.bb
  %len5.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %20 = ptrtoint ptr %len5.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %len5.i, align 2
  %conv6.i = zext i8 %21 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i1.i) #9
  %22 = call ptr @memset(ptr %mask.i1.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %21)
  %cmp.i2.i = icmp eq i8 %21, 6
  br i1 %cmp.i2.i, label %if.then.i4.i, label %if.else.i6.i

if.then.i4.i:                                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i3.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 7
  %23 = call ptr @memset(ptr %mask1.i3.i, i32 255, i32 6)
  br label %if.end9.i

if.else.i6.i:                                     ; preds = %sw.bb4.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 6, i8 %21)
  %cmp2.i5.i = icmp ugt i8 %21, 6
  br i1 %cmp2.i5.i, label %nft_payload_offload_mask.exit19.i, label %if.end4.i9.i

if.end4.i9.i:                                     ; preds = %if.else.i6.i
  %24 = call ptr @memset(ptr %mask.i1.i, i32 255, i32 6)
  %rem.i7.i = and i32 %conv6.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i7.i)
  %tobool.not.i8.i = icmp eq i32 %rem.i7.i, 0
  br i1 %tobool.not.i8.i, label %if.end4.i9.i.if.end7.i17.i_crit_edge, label %if.then5.i15.i

if.end4.i9.i.if.end7.i17.i_crit_edge:             ; preds = %if.end4.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i17.i

if.then5.i15.i:                                   ; preds = %if.end4.i9.i
  call void @__sanitizer_cov_trace_pc() #11
  %div23.i10.i = lshr i32 %conv6.i, 2
  %.neg126.i = mul nsw i32 %conv6.i, -8
  %mul.i12.i = add nsw i32 %.neg126.i, 48
  %notmask.i13.i = shl nsw i32 -1, %mul.i12.i
  %arrayidx.i14.i = getelementptr [4 x i32], ptr %mask.i1.i, i32 0, i32 %div23.i10.i
  %25 = ptrtoint ptr %arrayidx.i14.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %notmask.i13.i, ptr %arrayidx.i14.i, align 4
  br label %if.end7.i17.i

if.end7.i17.i:                                    ; preds = %if.then5.i15.i, %if.end4.i9.i.if.end7.i17.i_crit_edge
  %mask8.i16.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 7
  %26 = call ptr @memcpy(ptr %mask8.i16.i, ptr %mask.i1.i, i32 6)
  br label %if.end9.i

nft_payload_offload_mask.exit19.i:                ; preds = %if.else.i6.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i1.i) #9
  br label %sw.epilog

if.end9.i:                                        ; preds = %if.end7.i17.i, %if.then.i4.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i1.i) #9
  %base_offset10.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 2
  %27 = ptrtoint ptr %base_offset10.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 58, ptr %base_offset10.i, align 8
  %offset11.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 3
  %28 = ptrtoint ptr %offset11.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 58, ptr %offset11.i, align 4
  %len12.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 1
  %29 = ptrtoint ptr %len12.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 6, ptr %len12.i, align 4
  %30 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 7, ptr %arrayidx.i, align 8
  %flags14.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 4
  %31 = ptrtoint ptr %flags14.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %flags14.i, align 8
  br label %sw.epilog

sw.bb15.i:                                        ; preds = %sw.bb
  %len16.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %32 = ptrtoint ptr %len16.i to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %len16.i, align 2
  %conv17.i = zext i8 %33 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i20.i) #9
  %34 = call ptr @memset(ptr %mask.i20.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp.i21.i = icmp eq i8 %33, 2
  br i1 %cmp.i21.i, label %if.then.i23.i, label %if.else.i25.i

if.then.i23.i:                                    ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i22.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 7
  %35 = ptrtoint ptr %mask1.i22.i to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 -1, ptr %mask1.i22.i, align 8
  br label %if.end20.i

if.else.i25.i:                                    ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %33)
  %cmp2.i24.i = icmp ugt i8 %33, 2
  br i1 %cmp2.i24.i, label %nft_payload_offload_mask.exit38.i, label %if.end4.i28.i

if.end4.i28.i:                                    ; preds = %if.else.i25.i
  %36 = ptrtoint ptr %mask.i20.i to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 -1, ptr %mask.i20.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i27.i = icmp eq i8 %33, 0
  br i1 %tobool.not.i27.i, label %if.end4.i28.i.if.end7.i36.i_crit_edge, label %if.then5.i34.i

if.end4.i28.i.if.end7.i36.i_crit_edge:            ; preds = %if.end4.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i36.i

if.then5.i34.i:                                   ; preds = %if.end4.i28.i
  call void @__sanitizer_cov_trace_pc() #11
  %div23.i29.i = lshr i32 %conv17.i, 2
  %.neg125.i = mul nsw i32 %conv17.i, -8
  %mul.i31.i = add nsw i32 %.neg125.i, 16
  %notmask.i32.i = shl nsw i32 -1, %mul.i31.i
  %arrayidx.i33.i = getelementptr [4 x i32], ptr %mask.i20.i, i32 0, i32 %div23.i29.i
  %37 = ptrtoint ptr %arrayidx.i33.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %notmask.i32.i, ptr %arrayidx.i33.i, align 4
  br label %if.end7.i36.i

if.end7.i36.i:                                    ; preds = %if.then5.i34.i, %if.end4.i28.i.if.end7.i36.i_crit_edge
  %mask8.i35.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 7
  %38 = ptrtoint ptr %mask.i20.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %mask.i20.i, align 8
  %40 = ptrtoint ptr %mask8.i35.i to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %39, ptr %mask8.i35.i, align 8
  br label %if.end20.i

nft_payload_offload_mask.exit38.i:                ; preds = %if.else.i25.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i20.i) #9
  br label %sw.epilog

if.end20.i:                                       ; preds = %if.end7.i36.i, %if.then.i23.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i20.i) #9
  %base_offset21.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 2
  %41 = ptrtoint ptr %base_offset21.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %base_offset21.i, align 8
  %offset22.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 3
  %42 = ptrtoint ptr %offset22.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %offset22.i, align 4
  %len23.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 1
  %43 = ptrtoint ptr %len23.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 2, ptr %len23.i, align 4
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %arrayidx.i, align 8
  %flags25.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 4
  %45 = ptrtoint ptr %flags25.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 0, ptr %flags25.i, align 8
  tail call void @nft_offload_set_dependency(ptr noundef %ctx, i32 noundef 1) #9
  br label %sw.epilog

sw.bb26.i:                                        ; preds = %sw.bb
  %len27.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %46 = ptrtoint ptr %len27.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %len27.i, align 2
  %conv28.i = zext i8 %47 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i39.i) #9
  %48 = call ptr @memset(ptr %mask.i39.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %47)
  %cmp.i40.i = icmp eq i8 %47, 2
  br i1 %cmp.i40.i, label %if.then.i42.i, label %if.else.i44.i

if.then.i42.i:                                    ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i41.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 7
  %49 = ptrtoint ptr %mask1.i41.i to i32
  call void @__asan_store2_noabort(i32 %49)
  store i16 -1, ptr %mask1.i41.i, align 8
  br label %if.end31.i

if.else.i44.i:                                    ; preds = %sw.bb26.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %47)
  %cmp2.i43.i = icmp ugt i8 %47, 2
  br i1 %cmp2.i43.i, label %nft_payload_offload_mask.exit57.i, label %if.end4.i47.i

if.end4.i47.i:                                    ; preds = %if.else.i44.i
  %50 = ptrtoint ptr %mask.i39.i to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 -1, ptr %mask.i39.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i46.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i46.i, label %if.end4.i47.i.if.end7.i55.i_crit_edge, label %if.then5.i53.i

if.end4.i47.i.if.end7.i55.i_crit_edge:            ; preds = %if.end4.i47.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i55.i

if.then5.i53.i:                                   ; preds = %if.end4.i47.i
  call void @__sanitizer_cov_trace_pc() #11
  %div23.i48.i = lshr i32 %conv28.i, 2
  %.neg124.i = mul nsw i32 %conv28.i, -8
  %mul.i50.i = add nsw i32 %.neg124.i, 16
  %notmask.i51.i = shl nsw i32 -1, %mul.i50.i
  %arrayidx.i52.i = getelementptr [4 x i32], ptr %mask.i39.i, i32 0, i32 %div23.i48.i
  %51 = ptrtoint ptr %arrayidx.i52.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %notmask.i51.i, ptr %arrayidx.i52.i, align 4
  br label %if.end7.i55.i

if.end7.i55.i:                                    ; preds = %if.then5.i53.i, %if.end4.i47.i.if.end7.i55.i_crit_edge
  %mask8.i54.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 7
  %52 = ptrtoint ptr %mask.i39.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %mask.i39.i, align 8
  %54 = ptrtoint ptr %mask8.i54.i to i32
  call void @__asan_store2_noabort(i32 %54)
  store i16 %53, ptr %mask8.i54.i, align 8
  br label %if.end31.i

nft_payload_offload_mask.exit57.i:                ; preds = %if.else.i44.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i39.i) #9
  br label %sw.epilog

if.end31.i:                                       ; preds = %if.end7.i55.i, %if.then.i42.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i39.i) #9
  %base_offset32.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 2
  %55 = ptrtoint ptr %base_offset32.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 50, ptr %base_offset32.i, align 8
  %offset33.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 3
  %56 = ptrtoint ptr %offset33.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 50, ptr %offset33.i, align 4
  %len34.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 1
  %57 = ptrtoint ptr %len34.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 2, ptr %len34.i, align 4
  %58 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 10, ptr %arrayidx.i, align 8
  %flags36.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 4
  %59 = ptrtoint ptr %flags36.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %flags36.i, align 8
  br label %sw.epilog

sw.bb37.i:                                        ; preds = %sw.bb
  %len38.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %60 = ptrtoint ptr %len38.i to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %len38.i, align 2
  %conv39.i = zext i8 %61 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i58.i) #9
  %62 = call ptr @memset(ptr %mask.i58.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp.i59.i = icmp eq i8 %61, 2
  br i1 %cmp.i59.i, label %if.then.i61.i, label %if.else.i63.i

if.then.i61.i:                                    ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i60.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 7
  %63 = ptrtoint ptr %mask1.i60.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 -1, ptr %mask1.i60.i, align 8
  br label %if.end42.i

if.else.i63.i:                                    ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %61)
  %cmp2.i62.i = icmp ugt i8 %61, 2
  br i1 %cmp2.i62.i, label %nft_payload_offload_mask.exit76.i, label %if.end4.i66.i

if.end4.i66.i:                                    ; preds = %if.else.i63.i
  %64 = ptrtoint ptr %mask.i58.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -1, ptr %mask.i58.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool.not.i65.i = icmp eq i8 %61, 0
  br i1 %tobool.not.i65.i, label %if.end4.i66.i.if.end7.i74.i_crit_edge, label %if.then5.i72.i

if.end4.i66.i.if.end7.i74.i_crit_edge:            ; preds = %if.end4.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i74.i

if.then5.i72.i:                                   ; preds = %if.end4.i66.i
  call void @__sanitizer_cov_trace_pc() #11
  %div23.i67.i = lshr i32 %conv39.i, 2
  %.neg123.i = mul nsw i32 %conv39.i, -8
  %mul.i69.i = add nsw i32 %.neg123.i, 16
  %notmask.i70.i = shl nsw i32 -1, %mul.i69.i
  %arrayidx.i71.i = getelementptr [4 x i32], ptr %mask.i58.i, i32 0, i32 %div23.i67.i
  %65 = ptrtoint ptr %arrayidx.i71.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %notmask.i70.i, ptr %arrayidx.i71.i, align 4
  br label %if.end7.i74.i

if.end7.i74.i:                                    ; preds = %if.then5.i72.i, %if.end4.i66.i.if.end7.i74.i_crit_edge
  %mask8.i73.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 7
  %66 = ptrtoint ptr %mask.i58.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %mask.i58.i, align 8
  %68 = ptrtoint ptr %mask8.i73.i to i32
  call void @__asan_store2_noabort(i32 %68)
  store i16 %67, ptr %mask8.i73.i, align 8
  br label %if.end42.i

nft_payload_offload_mask.exit76.i:                ; preds = %if.else.i63.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i58.i) #9
  br label %sw.epilog

if.end42.i:                                       ; preds = %if.end7.i74.i, %if.then.i61.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i58.i) #9
  %base_offset43.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 2
  %69 = ptrtoint ptr %base_offset43.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 50, ptr %base_offset43.i, align 8
  %offset44.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 3
  %70 = ptrtoint ptr %offset44.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 52, ptr %offset44.i, align 4
  %len45.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 1
  %71 = ptrtoint ptr %len45.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 2, ptr %len45.i, align 4
  %72 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 10, ptr %arrayidx.i, align 8
  %flags47.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 4
  %73 = ptrtoint ptr %flags47.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 0, ptr %flags47.i, align 8
  tail call void @nft_offload_set_dependency(ptr noundef %ctx, i32 noundef 1) #9
  br label %sw.epilog

sw.bb48.i:                                        ; preds = %sw.bb
  %len49.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %74 = ptrtoint ptr %len49.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %len49.i, align 2
  %conv50.i = zext i8 %75 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i77.i) #9
  %76 = call ptr @memset(ptr %mask.i77.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %75)
  %cmp.i78.i = icmp eq i8 %75, 2
  br i1 %cmp.i78.i, label %if.then.i80.i, label %if.else.i82.i

if.then.i80.i:                                    ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i79.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 7
  %77 = ptrtoint ptr %mask1.i79.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 -1, ptr %mask1.i79.i, align 8
  br label %if.end53.i

if.else.i82.i:                                    ; preds = %sw.bb48.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %75)
  %cmp2.i81.i = icmp ugt i8 %75, 2
  br i1 %cmp2.i81.i, label %nft_payload_offload_mask.exit95.i, label %if.end4.i85.i

if.end4.i85.i:                                    ; preds = %if.else.i82.i
  %78 = ptrtoint ptr %mask.i77.i to i32
  call void @__asan_store2_noabort(i32 %78)
  store i16 -1, ptr %mask.i77.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool.not.i84.i = icmp eq i8 %75, 0
  br i1 %tobool.not.i84.i, label %if.end4.i85.i.if.end7.i93.i_crit_edge, label %if.then5.i91.i

if.end4.i85.i.if.end7.i93.i_crit_edge:            ; preds = %if.end4.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i93.i

if.then5.i91.i:                                   ; preds = %if.end4.i85.i
  call void @__sanitizer_cov_trace_pc() #11
  %div23.i86.i = lshr i32 %conv50.i, 2
  %.neg122.i = mul nsw i32 %conv50.i, -8
  %mul.i88.i = add nsw i32 %.neg122.i, 16
  %notmask.i89.i = shl nsw i32 -1, %mul.i88.i
  %arrayidx.i90.i = getelementptr [4 x i32], ptr %mask.i77.i, i32 0, i32 %div23.i86.i
  %79 = ptrtoint ptr %arrayidx.i90.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %notmask.i89.i, ptr %arrayidx.i90.i, align 4
  br label %if.end7.i93.i

if.end7.i93.i:                                    ; preds = %if.then5.i91.i, %if.end4.i85.i.if.end7.i93.i_crit_edge
  %mask8.i92.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 7
  %80 = ptrtoint ptr %mask.i77.i to i32
  call void @__asan_load2_noabort(i32 %80)
  %81 = load i16, ptr %mask.i77.i, align 8
  %82 = ptrtoint ptr %mask8.i92.i to i32
  call void @__asan_store2_noabort(i32 %82)
  store i16 %81, ptr %mask8.i92.i, align 8
  br label %if.end53.i

nft_payload_offload_mask.exit95.i:                ; preds = %if.else.i82.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i77.i) #9
  br label %sw.epilog

if.end53.i:                                       ; preds = %if.end7.i93.i, %if.then.i80.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i77.i) #9
  %base_offset54.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 2
  %83 = ptrtoint ptr %base_offset54.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 54, ptr %base_offset54.i, align 8
  %offset55.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 3
  %84 = ptrtoint ptr %offset55.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 54, ptr %offset55.i, align 4
  %len56.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 1
  %85 = ptrtoint ptr %len56.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 2, ptr %len56.i, align 4
  %86 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 22, ptr %arrayidx.i, align 8
  %flags58.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 4
  %87 = ptrtoint ptr %flags58.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 1, ptr %flags58.i, align 8
  br label %sw.epilog

sw.bb59.i:                                        ; preds = %sw.bb
  %len60.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %88 = ptrtoint ptr %len60.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %len60.i, align 2
  %conv61.i = zext i8 %89 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i96.i) #9
  %90 = call ptr @memset(ptr %mask.i96.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %89)
  %cmp.i97.i = icmp eq i8 %89, 2
  br i1 %cmp.i97.i, label %if.then.i99.i, label %if.else.i101.i

if.then.i99.i:                                    ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i98.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 7
  %91 = ptrtoint ptr %mask1.i98.i to i32
  call void @__asan_store2_noabort(i32 %91)
  store i16 -1, ptr %mask1.i98.i, align 8
  br label %if.end64.i

if.else.i101.i:                                   ; preds = %sw.bb59.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %89)
  %cmp2.i100.i = icmp ugt i8 %89, 2
  br i1 %cmp2.i100.i, label %nft_payload_offload_mask.exit114.i, label %if.end4.i104.i

if.end4.i104.i:                                   ; preds = %if.else.i101.i
  %92 = ptrtoint ptr %mask.i96.i to i32
  call void @__asan_store2_noabort(i32 %92)
  store i16 -1, ptr %mask.i96.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i103.i = icmp eq i8 %89, 0
  br i1 %tobool.not.i103.i, label %if.end4.i104.i.if.end7.i112.i_crit_edge, label %if.then5.i110.i

if.end4.i104.i.if.end7.i112.i_crit_edge:          ; preds = %if.end4.i104.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i112.i

if.then5.i110.i:                                  ; preds = %if.end4.i104.i
  call void @__sanitizer_cov_trace_pc() #11
  %div23.i105.i = lshr i32 %conv61.i, 2
  %.neg.i = mul nsw i32 %conv61.i, -8
  %mul.i107.i = add nsw i32 %.neg.i, 16
  %notmask.i108.i = shl nsw i32 -1, %mul.i107.i
  %arrayidx.i109.i = getelementptr [4 x i32], ptr %mask.i96.i, i32 0, i32 %div23.i105.i
  %93 = ptrtoint ptr %arrayidx.i109.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %notmask.i108.i, ptr %arrayidx.i109.i, align 4
  br label %if.end7.i112.i

if.end7.i112.i:                                   ; preds = %if.then5.i110.i, %if.end4.i104.i.if.end7.i112.i_crit_edge
  %mask8.i111.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 7
  %94 = ptrtoint ptr %mask.i96.i to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %mask.i96.i, align 8
  %96 = ptrtoint ptr %mask8.i111.i to i32
  call void @__asan_store2_noabort(i32 %96)
  store i16 %95, ptr %mask8.i111.i, align 8
  br label %if.end64.i

nft_payload_offload_mask.exit114.i:               ; preds = %if.else.i101.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i96.i) #9
  br label %sw.epilog

if.end64.i:                                       ; preds = %if.end7.i112.i, %if.then.i99.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i96.i) #9
  %base_offset65.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 2
  %97 = ptrtoint ptr %base_offset65.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 54, ptr %base_offset65.i, align 8
  %offset66.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 3
  %98 = ptrtoint ptr %offset66.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 56, ptr %offset66.i, align 4
  %len67.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 1
  %99 = ptrtoint ptr %len67.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 2, ptr %len67.i, align 4
  %100 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 22, ptr %arrayidx.i, align 8
  %flags69.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i, i32 4
  %101 = ptrtoint ptr %flags69.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %flags69.i, align 8
  tail call void @nft_offload_set_dependency(ptr noundef %ctx, i32 noundef 1) #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %l3num.i = getelementptr inbounds %struct.anon.156, ptr %ctx, i32 0, i32 1
  %102 = ptrtoint ptr %l3num.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %l3num.i, align 4
  %104 = zext i16 %103 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values.6)
  switch i16 %103, label %sw.bb2.sw.epilog_crit_edge [
    i16 2048, label %sw.bb.i15
    i16 -31011, label %sw.bb1.i
  ]

sw.bb2.sw.epilog_crit_edge:                       ; preds = %sw.bb2
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.i15:                                        ; preds = %sw.bb2
  %dreg.i.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 3
  %105 = ptrtoint ptr %dreg.i.i to i32
  call void @__asan_load1_noabort(i32 %105)
  %106 = load i8, ptr %dreg.i.i, align 1
  %idxprom.i.i = zext i8 %106 to i32
  %arrayidx.i.i14 = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i
  %offset.i.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 1
  %107 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_load1_noabort(i32 %107)
  %108 = load i8, ptr %offset.i.i, align 1
  %109 = zext i8 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.7)
  switch i8 %108, label %sw.bb.i15.sw.epilog_crit_edge [
    i8 12, label %sw.bb.i.i
    i8 16, label %sw.bb4.i.i
    i8 9, label %sw.bb15.i.i
  ]

sw.bb.i15.sw.epilog_crit_edge:                    ; preds = %sw.bb.i15
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.i.i:                                        ; preds = %sw.bb.i15
  %len.i.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %110 = ptrtoint ptr %len.i.i to i32
  call void @__asan_load1_noabort(i32 %110)
  %111 = load i8, ptr %len.i.i, align 2
  %conv1.i.i = zext i8 %111 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i.i.i) #9
  %112 = call ptr @memset(ptr %mask.i.i.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %111)
  %cmp.i.i.i = icmp eq i8 %111, 4
  br i1 %cmp.i.i.i, label %if.then.i.i.i, label %if.else.i.i.i

if.then.i.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i, i32 7
  %113 = ptrtoint ptr %mask1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 -1, ptr %mask1.i.i.i, align 8
  br label %if.end.i.i

if.else.i.i.i:                                    ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %111)
  %cmp2.i.i.i = icmp ugt i8 %111, 4
  br i1 %cmp2.i.i.i, label %nft_payload_offload_mask.exit.i.i, label %if.end4.i.i.i

if.end4.i.i.i:                                    ; preds = %if.else.i.i.i
  %114 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 -1, ptr %mask.i.i.i, align 8
  %rem.i.i.i = and i32 %conv1.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %rem.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.end4.i.i.i.if.end7.i.i.i_crit_edge, label %if.then5.i.i.i

if.end4.i.i.i.if.end7.i.i.i_crit_edge:            ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i.i

if.then5.i.i.i:                                   ; preds = %if.end4.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div23.i.i.i = lshr i32 %conv1.i.i, 2
  %.neg90.i.i = mul nsw i32 %conv1.i.i, -8
  %mul.i.i.i = add nsw i32 %.neg90.i.i, 32
  %notmask.i.i.i = shl nsw i32 -1, %mul.i.i.i
  %arrayidx.i.i.i = getelementptr [4 x i32], ptr %mask.i.i.i, i32 0, i32 %div23.i.i.i
  %115 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %notmask.i.i.i, ptr %arrayidx.i.i.i, align 4
  br label %if.end7.i.i.i

if.end7.i.i.i:                                    ; preds = %if.then5.i.i.i, %if.end4.i.i.i.if.end7.i.i.i_crit_edge
  %mask8.i.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i, i32 7
  %116 = ptrtoint ptr %mask.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %mask.i.i.i, align 8
  %118 = ptrtoint ptr %mask8.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %mask8.i.i.i, align 8
  br label %if.end.i.i

nft_payload_offload_mask.exit.i.i:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i.i) #9
  br label %sw.epilog

if.end.i.i:                                       ; preds = %if.end7.i.i.i, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i.i) #9
  %base_offset.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i, i32 2
  %119 = ptrtoint ptr %base_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 12, ptr %base_offset.i.i, align 8
  %offset2.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i, i32 3
  %120 = ptrtoint ptr %offset2.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 12, ptr %offset2.i.i, align 4
  %len3.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i, i32 1
  %121 = ptrtoint ptr %len3.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 4, ptr %len3.i.i, align 4
  %122 = ptrtoint ptr %arrayidx.i.i14 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 2, ptr %arrayidx.i.i14, align 8
  %flags.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i, i32 4
  %123 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 0, ptr %flags.i.i, align 8
  tail call void @nft_flow_rule_set_addr_type(ptr noundef %flow, i32 noundef 2) #9
  br label %sw.epilog

sw.bb4.i.i:                                       ; preds = %sw.bb.i15
  %len5.i.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %124 = ptrtoint ptr %len5.i.i to i32
  call void @__asan_load1_noabort(i32 %124)
  %125 = load i8, ptr %len5.i.i, align 2
  %conv6.i.i = zext i8 %125 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i49.i.i) #9
  %126 = call ptr @memset(ptr %mask.i49.i.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %125)
  %cmp.i50.i.i = icmp eq i8 %125, 4
  br i1 %cmp.i50.i.i, label %if.then.i52.i.i, label %if.else.i54.i.i

if.then.i52.i.i:                                  ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i51.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i, i32 7
  %127 = ptrtoint ptr %mask1.i51.i.i to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 -1, ptr %mask1.i51.i.i, align 8
  br label %if.end9.i.i

if.else.i54.i.i:                                  ; preds = %sw.bb4.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %125)
  %cmp2.i53.i.i = icmp ugt i8 %125, 4
  br i1 %cmp2.i53.i.i, label %nft_payload_offload_mask.exit67.i.i, label %if.end4.i57.i.i

if.end4.i57.i.i:                                  ; preds = %if.else.i54.i.i
  %128 = ptrtoint ptr %mask.i49.i.i to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 -1, ptr %mask.i49.i.i, align 8
  %rem.i55.i.i = and i32 %conv6.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i55.i.i)
  %tobool.not.i56.i.i = icmp eq i32 %rem.i55.i.i, 0
  br i1 %tobool.not.i56.i.i, label %if.end4.i57.i.i.if.end7.i65.i.i_crit_edge, label %if.then5.i63.i.i

if.end4.i57.i.i.if.end7.i65.i.i_crit_edge:        ; preds = %if.end4.i57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i65.i.i

if.then5.i63.i.i:                                 ; preds = %if.end4.i57.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div23.i58.i.i = lshr i32 %conv6.i.i, 2
  %.neg.i.i = mul nsw i32 %conv6.i.i, -8
  %mul.i60.i.i = add nsw i32 %.neg.i.i, 32
  %notmask.i61.i.i = shl nsw i32 -1, %mul.i60.i.i
  %arrayidx.i62.i.i = getelementptr [4 x i32], ptr %mask.i49.i.i, i32 0, i32 %div23.i58.i.i
  %129 = ptrtoint ptr %arrayidx.i62.i.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %notmask.i61.i.i, ptr %arrayidx.i62.i.i, align 4
  br label %if.end7.i65.i.i

if.end7.i65.i.i:                                  ; preds = %if.then5.i63.i.i, %if.end4.i57.i.i.if.end7.i65.i.i_crit_edge
  %mask8.i64.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i, i32 7
  %130 = ptrtoint ptr %mask.i49.i.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %mask.i49.i.i, align 8
  %132 = ptrtoint ptr %mask8.i64.i.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %mask8.i64.i.i, align 8
  br label %if.end9.i.i

nft_payload_offload_mask.exit67.i.i:              ; preds = %if.else.i54.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i49.i.i) #9
  br label %sw.epilog

if.end9.i.i:                                      ; preds = %if.end7.i65.i.i, %if.then.i52.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i49.i.i) #9
  %base_offset10.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i, i32 2
  %133 = ptrtoint ptr %base_offset10.i.i to i32
  call void @__asan_store4_noabort(i32 %133)
  store i32 12, ptr %base_offset10.i.i, align 8
  %offset11.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i, i32 3
  %134 = ptrtoint ptr %offset11.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 16, ptr %offset11.i.i, align 4
  %len12.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i, i32 1
  %135 = ptrtoint ptr %len12.i.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 4, ptr %len12.i.i, align 4
  %136 = ptrtoint ptr %arrayidx.i.i14 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 2, ptr %arrayidx.i.i14, align 8
  %flags14.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i, i32 4
  %137 = ptrtoint ptr %flags14.i.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %flags14.i.i, align 8
  tail call void @nft_flow_rule_set_addr_type(ptr noundef %flow, i32 noundef 2) #9
  br label %sw.epilog

sw.bb15.i.i:                                      ; preds = %sw.bb.i15
  %len16.i.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %138 = ptrtoint ptr %len16.i.i to i32
  call void @__asan_load1_noabort(i32 %138)
  %139 = load i8, ptr %len16.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %139)
  %switch.i.i = icmp ult i8 %139, 2
  br i1 %switch.i.i, label %if.end20.i.i, label %sw.bb15.i.i.sw.epilog_crit_edge

sw.bb15.i.i.sw.epilog_crit_edge:                  ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end20.i.i:                                     ; preds = %sw.bb15.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i70.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i, i32 7
  %140 = ptrtoint ptr %mask1.i70.i.i to i32
  call void @__asan_store1_noabort(i32 %140)
  store i8 -1, ptr %mask1.i70.i.i, align 8
  %base_offset21.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i, i32 2
  %141 = ptrtoint ptr %base_offset21.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 0, ptr %base_offset21.i.i, align 8
  %offset22.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i, i32 3
  %142 = ptrtoint ptr %offset22.i.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 2, ptr %offset22.i.i, align 4
  %len23.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i, i32 1
  %143 = ptrtoint ptr %len23.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 1, ptr %len23.i.i, align 4
  %144 = ptrtoint ptr %arrayidx.i.i14 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 1, ptr %arrayidx.i.i14, align 8
  %flags25.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i, i32 4
  %145 = ptrtoint ptr %flags25.i.i to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 0, ptr %flags25.i.i, align 8
  tail call void @nft_offload_set_dependency(ptr noundef %ctx, i32 noundef 2) #9
  br label %sw.epilog

sw.bb1.i:                                         ; preds = %sw.bb2
  %dreg.i9.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 3
  %146 = ptrtoint ptr %dreg.i9.i to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %dreg.i9.i, align 1
  %idxprom.i10.i = zext i8 %147 to i32
  %arrayidx.i11.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i
  %offset.i12.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 1
  %148 = ptrtoint ptr %offset.i12.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %offset.i12.i, align 1
  %150 = zext i8 %149 to i64
  call void @__sanitizer_cov_trace_switch(i64 %150, ptr @__sancov_gen_cov_switch_values.8)
  switch i8 %149, label %sw.bb1.i.sw.epilog_crit_edge [
    i8 8, label %sw.bb.i16.i
    i8 24, label %sw.bb4.i41.i
    i8 6, label %sw.bb15.i65.i
  ]

sw.bb1.i.sw.epilog_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.i16.i:                                      ; preds = %sw.bb1.i
  %len.i13.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %151 = ptrtoint ptr %len.i13.i to i32
  call void @__asan_load1_noabort(i32 %151)
  %152 = load i8, ptr %len.i13.i, align 2
  %conv1.i14.i = zext i8 %152 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i.i8.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %152)
  %cmp.i.i15.i = icmp eq i8 %152, 16
  br i1 %cmp.i.i15.i, label %if.then.i.i18.i, label %if.else.i.i20.i

if.then.i.i18.i:                                  ; preds = %sw.bb.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i.i17.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i, i32 7
  %153 = call ptr @memset(ptr %mask1.i.i17.i, i32 255, i32 16)
  br label %if.end.i37.i

if.else.i.i20.i:                                  ; preds = %sw.bb.i16.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %152)
  %cmp2.i.i19.i = icmp ugt i8 %152, 16
  br i1 %cmp2.i.i19.i, label %nft_payload_offload_mask.exit.i32.i, label %if.end4.i.i23.i

if.end4.i.i23.i:                                  ; preds = %if.else.i.i20.i
  %154 = call ptr @memset(ptr %mask.i.i8.i, i32 255, i32 16)
  %rem.i.i21.i = and i32 %conv1.i14.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.i21.i)
  %tobool.not.i.i22.i = icmp eq i32 %rem.i.i21.i, 0
  br i1 %tobool.not.i.i22.i, label %if.end4.i.i23.i.if.end7.i.i31.i_crit_edge, label %if.then5.i.i29.i

if.end4.i.i23.i.if.end7.i.i31.i_crit_edge:        ; preds = %if.end4.i.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i31.i

if.then5.i.i29.i:                                 ; preds = %if.end4.i.i23.i
  call void @__sanitizer_cov_trace_pc() #11
  %div23.i.i24.i = lshr i32 %conv1.i14.i, 2
  %.neg90.i25.i = mul nsw i32 %conv1.i14.i, -8
  %mul.i.i26.i = add nsw i32 %.neg90.i25.i, 128
  %notmask.i.i27.i = shl nsw i32 -1, %mul.i.i26.i
  %arrayidx.i.i28.i = getelementptr [4 x i32], ptr %mask.i.i8.i, i32 0, i32 %div23.i.i24.i
  %155 = ptrtoint ptr %arrayidx.i.i28.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %notmask.i.i27.i, ptr %arrayidx.i.i28.i, align 4
  br label %if.end7.i.i31.i

if.end7.i.i31.i:                                  ; preds = %if.then5.i.i29.i, %if.end4.i.i23.i.if.end7.i.i31.i_crit_edge
  %mask8.i.i30.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i, i32 7
  %156 = call ptr @memcpy(ptr %mask8.i.i30.i, ptr %mask.i.i8.i, i32 16)
  br label %if.end.i37.i

nft_payload_offload_mask.exit.i32.i:              ; preds = %if.else.i.i20.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i8.i) #9
  br label %sw.epilog

if.end.i37.i:                                     ; preds = %if.end7.i.i31.i, %if.then.i.i18.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i8.i) #9
  %base_offset.i33.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i, i32 2
  %157 = ptrtoint ptr %base_offset.i33.i to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 12, ptr %base_offset.i33.i, align 8
  %offset2.i34.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i, i32 3
  %158 = ptrtoint ptr %offset2.i34.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 12, ptr %offset2.i34.i, align 4
  %len3.i35.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i, i32 1
  %159 = ptrtoint ptr %len3.i35.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 16, ptr %len3.i35.i, align 4
  %160 = ptrtoint ptr %arrayidx.i11.i to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 3, ptr %arrayidx.i11.i, align 8
  %flags.i36.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i, i32 4
  %161 = ptrtoint ptr %flags.i36.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %flags.i36.i, align 8
  tail call void @nft_flow_rule_set_addr_type(ptr noundef %flow, i32 noundef 3) #9
  br label %sw.epilog

sw.bb4.i41.i:                                     ; preds = %sw.bb1.i
  %len5.i38.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %162 = ptrtoint ptr %len5.i38.i to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %len5.i38.i, align 2
  %conv6.i39.i = zext i8 %163 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i49.i7.i) #9
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %163)
  %cmp.i50.i40.i = icmp eq i8 %163, 16
  br i1 %cmp.i50.i40.i, label %if.then.i52.i43.i, label %if.else.i54.i45.i

if.then.i52.i43.i:                                ; preds = %sw.bb4.i41.i
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i51.i42.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i, i32 7
  %164 = call ptr @memset(ptr %mask1.i51.i42.i, i32 255, i32 16)
  br label %if.end9.i62.i

if.else.i54.i45.i:                                ; preds = %sw.bb4.i41.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %163)
  %cmp2.i53.i44.i = icmp ugt i8 %163, 16
  br i1 %cmp2.i53.i44.i, label %nft_payload_offload_mask.exit67.i57.i, label %if.end4.i57.i48.i

if.end4.i57.i48.i:                                ; preds = %if.else.i54.i45.i
  %165 = call ptr @memset(ptr %mask.i49.i7.i, i32 255, i32 16)
  %rem.i55.i46.i = and i32 %conv6.i39.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i55.i46.i)
  %tobool.not.i56.i47.i = icmp eq i32 %rem.i55.i46.i, 0
  br i1 %tobool.not.i56.i47.i, label %if.end4.i57.i48.i.if.end7.i65.i56.i_crit_edge, label %if.then5.i63.i54.i

if.end4.i57.i48.i.if.end7.i65.i56.i_crit_edge:    ; preds = %if.end4.i57.i48.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i65.i56.i

if.then5.i63.i54.i:                               ; preds = %if.end4.i57.i48.i
  call void @__sanitizer_cov_trace_pc() #11
  %div23.i58.i49.i = lshr i32 %conv6.i39.i, 2
  %.neg.i50.i = mul nsw i32 %conv6.i39.i, -8
  %mul.i60.i51.i = add nsw i32 %.neg.i50.i, 128
  %notmask.i61.i52.i = shl nsw i32 -1, %mul.i60.i51.i
  %arrayidx.i62.i53.i = getelementptr [4 x i32], ptr %mask.i49.i7.i, i32 0, i32 %div23.i58.i49.i
  %166 = ptrtoint ptr %arrayidx.i62.i53.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %notmask.i61.i52.i, ptr %arrayidx.i62.i53.i, align 4
  br label %if.end7.i65.i56.i

if.end7.i65.i56.i:                                ; preds = %if.then5.i63.i54.i, %if.end4.i57.i48.i.if.end7.i65.i56.i_crit_edge
  %mask8.i64.i55.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i, i32 7
  %167 = call ptr @memcpy(ptr %mask8.i64.i55.i, ptr %mask.i49.i7.i, i32 16)
  br label %if.end9.i62.i

nft_payload_offload_mask.exit67.i57.i:            ; preds = %if.else.i54.i45.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i49.i7.i) #9
  br label %sw.epilog

if.end9.i62.i:                                    ; preds = %if.end7.i65.i56.i, %if.then.i52.i43.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i49.i7.i) #9
  %base_offset10.i58.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i, i32 2
  %168 = ptrtoint ptr %base_offset10.i58.i to i32
  call void @__asan_store4_noabort(i32 %168)
  store i32 12, ptr %base_offset10.i58.i, align 8
  %offset11.i59.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i, i32 3
  %169 = ptrtoint ptr %offset11.i59.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 28, ptr %offset11.i59.i, align 4
  %len12.i60.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i, i32 1
  %170 = ptrtoint ptr %len12.i60.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 16, ptr %len12.i60.i, align 4
  %171 = ptrtoint ptr %arrayidx.i11.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 3, ptr %arrayidx.i11.i, align 8
  %flags14.i61.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i, i32 4
  %172 = ptrtoint ptr %flags14.i61.i to i32
  call void @__asan_store4_noabort(i32 %172)
  store i32 0, ptr %flags14.i61.i, align 8
  tail call void @nft_flow_rule_set_addr_type(ptr noundef %flow, i32 noundef 3) #9
  br label %sw.epilog

sw.bb15.i65.i:                                    ; preds = %sw.bb1.i
  %len16.i63.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %173 = ptrtoint ptr %len16.i63.i to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %len16.i63.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %174)
  %switch.i64.i = icmp ult i8 %174, 2
  br i1 %switch.i64.i, label %if.end20.i71.i, label %sw.bb15.i65.i.sw.epilog_crit_edge

sw.bb15.i65.i.sw.epilog_crit_edge:                ; preds = %sw.bb15.i65.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end20.i71.i:                                   ; preds = %sw.bb15.i65.i
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i70.i66.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i, i32 7
  %175 = ptrtoint ptr %mask1.i70.i66.i to i32
  call void @__asan_store1_noabort(i32 %175)
  store i8 -1, ptr %mask1.i70.i66.i, align 8
  %base_offset21.i67.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i, i32 2
  %176 = ptrtoint ptr %base_offset21.i67.i to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 0, ptr %base_offset21.i67.i, align 8
  %offset22.i68.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i, i32 3
  %177 = ptrtoint ptr %offset22.i68.i to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 2, ptr %offset22.i68.i, align 4
  %len23.i69.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i, i32 1
  %178 = ptrtoint ptr %len23.i69.i to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 1, ptr %len23.i69.i, align 4
  %179 = ptrtoint ptr %arrayidx.i11.i to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 1, ptr %arrayidx.i11.i, align 8
  %flags25.i70.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i10.i, i32 4
  %180 = ptrtoint ptr %flags25.i70.i to i32
  call void @__asan_store4_noabort(i32 %180)
  store i32 0, ptr %flags25.i70.i, align 8
  tail call void @nft_offload_set_dependency(ptr noundef %ctx, i32 noundef 2) #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  %protonum.i = getelementptr inbounds %struct.anon.156, ptr %ctx, i32 0, i32 2
  %181 = ptrtoint ptr %protonum.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %protonum.i, align 2
  %183 = zext i8 %182 to i64
  call void @__sanitizer_cov_trace_switch(i64 %183, ptr @__sancov_gen_cov_switch_values.9)
  switch i8 %182, label %sw.bb4.sw.epilog_crit_edge [
    i8 6, label %sw.bb.i22
    i8 17, label %sw.bb1.i55
  ]

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.i22:                                        ; preds = %sw.bb4
  %dreg.i.i18 = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 3
  %184 = ptrtoint ptr %dreg.i.i18 to i32
  call void @__asan_load1_noabort(i32 %184)
  %185 = load i8, ptr %dreg.i.i18, align 1
  %idxprom.i.i19 = zext i8 %185 to i32
  %arrayidx.i.i20 = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i19
  %offset.i.i21 = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 1
  %186 = ptrtoint ptr %offset.i.i21 to i32
  call void @__asan_load1_noabort(i32 %186)
  %187 = load i8, ptr %offset.i.i21, align 1
  %188 = zext i8 %187 to i64
  call void @__sanitizer_cov_trace_switch(i64 %188, ptr @__sancov_gen_cov_switch_values.10)
  switch i8 %187, label %sw.bb.i22.sw.epilog_crit_edge [
    i8 0, label %sw.bb.i.i26
    i8 2, label %sw.bb4.i.i48
  ]

sw.bb.i22.sw.epilog_crit_edge:                    ; preds = %sw.bb.i22
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.i.i26:                                      ; preds = %sw.bb.i22
  %len.i.i23 = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %189 = ptrtoint ptr %len.i.i23 to i32
  call void @__asan_load1_noabort(i32 %189)
  %190 = load i8, ptr %len.i.i23, align 2
  %conv1.i.i24 = zext i8 %190 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i.i.i17) #9
  %191 = call ptr @memset(ptr %mask.i.i.i17, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %190)
  %cmp.i.i.i25 = icmp eq i8 %190, 2
  br i1 %cmp.i.i.i25, label %if.then.i.i.i28, label %if.else.i.i.i30

if.then.i.i.i28:                                  ; preds = %sw.bb.i.i26
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i.i.i27 = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i19, i32 7
  %192 = ptrtoint ptr %mask1.i.i.i27 to i32
  call void @__asan_store2_noabort(i32 %192)
  store i16 -1, ptr %mask1.i.i.i27, align 8
  br label %if.end.i.i45

if.else.i.i.i30:                                  ; preds = %sw.bb.i.i26
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %190)
  %cmp2.i.i.i29 = icmp ugt i8 %190, 2
  br i1 %cmp2.i.i.i29, label %nft_payload_offload_mask.exit.i.i40, label %if.end4.i.i.i32

if.end4.i.i.i32:                                  ; preds = %if.else.i.i.i30
  %193 = ptrtoint ptr %mask.i.i.i17 to i32
  call void @__asan_store2_noabort(i32 %193)
  store i16 -1, ptr %mask.i.i.i17, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %190)
  %tobool.not.i.i.i31 = icmp eq i8 %190, 0
  br i1 %tobool.not.i.i.i31, label %if.end4.i.i.i32.if.end7.i.i.i39_crit_edge, label %if.then5.i.i.i37

if.end4.i.i.i32.if.end7.i.i.i39_crit_edge:        ; preds = %if.end4.i.i.i32
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i.i39

if.then5.i.i.i37:                                 ; preds = %if.end4.i.i.i32
  call void @__sanitizer_cov_trace_pc() #11
  %div23.i.i.i33 = lshr i32 %conv1.i.i24, 2
  %.neg22.i.i = mul nsw i32 %conv1.i.i24, -8
  %mul.i.i.i34 = add nsw i32 %.neg22.i.i, 16
  %notmask.i.i.i35 = shl nsw i32 -1, %mul.i.i.i34
  %arrayidx.i.i.i36 = getelementptr [4 x i32], ptr %mask.i.i.i17, i32 0, i32 %div23.i.i.i33
  %194 = ptrtoint ptr %arrayidx.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 %notmask.i.i.i35, ptr %arrayidx.i.i.i36, align 4
  br label %if.end7.i.i.i39

if.end7.i.i.i39:                                  ; preds = %if.then5.i.i.i37, %if.end4.i.i.i32.if.end7.i.i.i39_crit_edge
  %mask8.i.i.i38 = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i19, i32 7
  %195 = ptrtoint ptr %mask.i.i.i17 to i32
  call void @__asan_load2_noabort(i32 %195)
  %196 = load i16, ptr %mask.i.i.i17, align 8
  %197 = ptrtoint ptr %mask8.i.i.i38 to i32
  call void @__asan_store2_noabort(i32 %197)
  store i16 %196, ptr %mask8.i.i.i38, align 8
  br label %if.end.i.i45

nft_payload_offload_mask.exit.i.i40:              ; preds = %if.else.i.i.i30
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i.i17) #9
  br label %sw.epilog

if.end.i.i45:                                     ; preds = %if.end7.i.i.i39, %if.then.i.i.i28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i.i17) #9
  %base_offset.i.i41 = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i19, i32 2
  %198 = ptrtoint ptr %base_offset.i.i41 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 44, ptr %base_offset.i.i41, align 8
  %offset2.i.i42 = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i19, i32 3
  %199 = ptrtoint ptr %offset2.i.i42 to i32
  call void @__asan_store4_noabort(i32 %199)
  store i32 44, ptr %offset2.i.i42, align 4
  %len3.i.i43 = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i19, i32 1
  %200 = ptrtoint ptr %len3.i.i43 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 2, ptr %len3.i.i43, align 4
  %201 = ptrtoint ptr %arrayidx.i.i20 to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 4, ptr %arrayidx.i.i20, align 8
  %flags.i.i44 = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i19, i32 4
  %202 = ptrtoint ptr %flags.i.i44 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 0, ptr %flags.i.i44, align 8
  br label %sw.epilog

sw.bb4.i.i48:                                     ; preds = %sw.bb.i22
  %len5.i.i46 = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %203 = ptrtoint ptr %len5.i.i46 to i32
  call void @__asan_load1_noabort(i32 %203)
  %204 = load i8, ptr %len5.i.i46, align 2
  %conv6.i.i47 = zext i8 %204 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i1.i.i) #9
  %205 = call ptr @memset(ptr %mask.i1.i.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %204)
  %cmp.i2.i.i = icmp eq i8 %204, 2
  br i1 %cmp.i2.i.i, label %if.then.i4.i.i, label %if.else.i6.i.i

if.then.i4.i.i:                                   ; preds = %sw.bb4.i.i48
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i3.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i19, i32 7
  %206 = ptrtoint ptr %mask1.i3.i.i to i32
  call void @__asan_store2_noabort(i32 %206)
  store i16 -1, ptr %mask1.i3.i.i, align 8
  br label %if.end9.i.i54

if.else.i6.i.i:                                   ; preds = %sw.bb4.i.i48
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %204)
  %cmp2.i5.i.i = icmp ugt i8 %204, 2
  br i1 %cmp2.i5.i.i, label %nft_payload_offload_mask.exit19.i.i, label %if.end4.i9.i.i

if.end4.i9.i.i:                                   ; preds = %if.else.i6.i.i
  %207 = ptrtoint ptr %mask.i1.i.i to i32
  call void @__asan_store2_noabort(i32 %207)
  store i16 -1, ptr %mask.i1.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %204)
  %tobool.not.i8.i.i = icmp eq i8 %204, 0
  br i1 %tobool.not.i8.i.i, label %if.end4.i9.i.i.if.end7.i17.i.i_crit_edge, label %if.then5.i15.i.i

if.end4.i9.i.i.if.end7.i17.i.i_crit_edge:         ; preds = %if.end4.i9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i17.i.i

if.then5.i15.i.i:                                 ; preds = %if.end4.i9.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %div23.i10.i.i = lshr i32 %conv6.i.i47, 2
  %.neg.i.i49 = mul nsw i32 %conv6.i.i47, -8
  %mul.i12.i.i = add nsw i32 %.neg.i.i49, 16
  %notmask.i13.i.i = shl nsw i32 -1, %mul.i12.i.i
  %arrayidx.i14.i.i = getelementptr [4 x i32], ptr %mask.i1.i.i, i32 0, i32 %div23.i10.i.i
  %208 = ptrtoint ptr %arrayidx.i14.i.i to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %notmask.i13.i.i, ptr %arrayidx.i14.i.i, align 4
  br label %if.end7.i17.i.i

if.end7.i17.i.i:                                  ; preds = %if.then5.i15.i.i, %if.end4.i9.i.i.if.end7.i17.i.i_crit_edge
  %mask8.i16.i.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i19, i32 7
  %209 = ptrtoint ptr %mask.i1.i.i to i32
  call void @__asan_load2_noabort(i32 %209)
  %210 = load i16, ptr %mask.i1.i.i, align 8
  %211 = ptrtoint ptr %mask8.i16.i.i to i32
  call void @__asan_store2_noabort(i32 %211)
  store i16 %210, ptr %mask8.i16.i.i, align 8
  br label %if.end9.i.i54

nft_payload_offload_mask.exit19.i.i:              ; preds = %if.else.i6.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i1.i.i) #9
  br label %sw.epilog

if.end9.i.i54:                                    ; preds = %if.end7.i17.i.i, %if.then.i4.i.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i1.i.i) #9
  %base_offset10.i.i50 = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i19, i32 2
  %212 = ptrtoint ptr %base_offset10.i.i50 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 44, ptr %base_offset10.i.i50, align 8
  %offset11.i.i51 = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i19, i32 3
  %213 = ptrtoint ptr %offset11.i.i51 to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 46, ptr %offset11.i.i51, align 4
  %len12.i.i52 = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i19, i32 1
  %214 = ptrtoint ptr %len12.i.i52 to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 2, ptr %len12.i.i52, align 4
  %215 = ptrtoint ptr %arrayidx.i.i20 to i32
  call void @__asan_store4_noabort(i32 %215)
  store i32 4, ptr %arrayidx.i.i20, align 8
  %flags14.i.i53 = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i.i19, i32 4
  %216 = ptrtoint ptr %flags14.i.i53 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %flags14.i.i53, align 8
  br label %sw.epilog

sw.bb1.i55:                                       ; preds = %sw.bb4
  %dreg.i3.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 3
  %217 = ptrtoint ptr %dreg.i3.i to i32
  call void @__asan_load1_noabort(i32 %217)
  %218 = load i8, ptr %dreg.i3.i, align 1
  %idxprom.i4.i = zext i8 %218 to i32
  %arrayidx.i5.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i4.i
  %offset.i6.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 1
  %219 = ptrtoint ptr %offset.i6.i to i32
  call void @__asan_load1_noabort(i32 %219)
  %220 = load i8, ptr %offset.i6.i, align 1
  %221 = zext i8 %220 to i64
  call void @__sanitizer_cov_trace_switch(i64 %221, ptr @__sancov_gen_cov_switch_values.11)
  switch i8 %220, label %sw.bb1.i55.sw.epilog_crit_edge [
    i8 0, label %sw.bb.i10.i
    i8 2, label %sw.bb4.i34.i
  ]

sw.bb1.i55.sw.epilog_crit_edge:                   ; preds = %sw.bb1.i55
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb.i10.i:                                      ; preds = %sw.bb1.i55
  %len.i7.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %222 = ptrtoint ptr %len.i7.i to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %len.i7.i, align 2
  %conv1.i8.i = zext i8 %223 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i.i2.i) #9
  %224 = call ptr @memset(ptr %mask.i.i2.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %223)
  %cmp.i.i9.i = icmp eq i8 %223, 2
  br i1 %cmp.i.i9.i, label %if.then.i.i12.i, label %if.else.i.i14.i

if.then.i.i12.i:                                  ; preds = %sw.bb.i10.i
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i.i11.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i4.i, i32 7
  %225 = ptrtoint ptr %mask1.i.i11.i to i32
  call void @__asan_store2_noabort(i32 %225)
  store i16 -1, ptr %mask1.i.i11.i, align 8
  br label %if.end.i30.i

if.else.i.i14.i:                                  ; preds = %sw.bb.i10.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %223)
  %cmp2.i.i13.i = icmp ugt i8 %223, 2
  br i1 %cmp2.i.i13.i, label %nft_payload_offload_mask.exit.i25.i, label %if.end4.i.i16.i

if.end4.i.i16.i:                                  ; preds = %if.else.i.i14.i
  %226 = ptrtoint ptr %mask.i.i2.i to i32
  call void @__asan_store2_noabort(i32 %226)
  store i16 -1, ptr %mask.i.i2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %223)
  %tobool.not.i.i15.i = icmp eq i8 %223, 0
  br i1 %tobool.not.i.i15.i, label %if.end4.i.i16.i.if.end7.i.i24.i_crit_edge, label %if.then5.i.i22.i

if.end4.i.i16.i.if.end7.i.i24.i_crit_edge:        ; preds = %if.end4.i.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i.i24.i

if.then5.i.i22.i:                                 ; preds = %if.end4.i.i16.i
  call void @__sanitizer_cov_trace_pc() #11
  %div23.i.i17.i = lshr i32 %conv1.i8.i, 2
  %.neg22.i18.i = mul nsw i32 %conv1.i8.i, -8
  %mul.i.i19.i = add nsw i32 %.neg22.i18.i, 16
  %notmask.i.i20.i = shl nsw i32 -1, %mul.i.i19.i
  %arrayidx.i.i21.i = getelementptr [4 x i32], ptr %mask.i.i2.i, i32 0, i32 %div23.i.i17.i
  %227 = ptrtoint ptr %arrayidx.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %227)
  store i32 %notmask.i.i20.i, ptr %arrayidx.i.i21.i, align 4
  br label %if.end7.i.i24.i

if.end7.i.i24.i:                                  ; preds = %if.then5.i.i22.i, %if.end4.i.i16.i.if.end7.i.i24.i_crit_edge
  %mask8.i.i23.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i4.i, i32 7
  %228 = ptrtoint ptr %mask.i.i2.i to i32
  call void @__asan_load2_noabort(i32 %228)
  %229 = load i16, ptr %mask.i.i2.i, align 8
  %230 = ptrtoint ptr %mask8.i.i23.i to i32
  call void @__asan_store2_noabort(i32 %230)
  store i16 %229, ptr %mask8.i.i23.i, align 8
  br label %if.end.i30.i

nft_payload_offload_mask.exit.i25.i:              ; preds = %if.else.i.i14.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i2.i) #9
  br label %sw.epilog

if.end.i30.i:                                     ; preds = %if.end7.i.i24.i, %if.then.i.i12.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i.i2.i) #9
  %base_offset.i26.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i4.i, i32 2
  %231 = ptrtoint ptr %base_offset.i26.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 44, ptr %base_offset.i26.i, align 8
  %offset2.i27.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i4.i, i32 3
  %232 = ptrtoint ptr %offset2.i27.i to i32
  call void @__asan_store4_noabort(i32 %232)
  store i32 44, ptr %offset2.i27.i, align 4
  %len3.i28.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i4.i, i32 1
  %233 = ptrtoint ptr %len3.i28.i to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 2, ptr %len3.i28.i, align 4
  %234 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 4, ptr %arrayidx.i5.i, align 8
  %flags.i29.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i4.i, i32 4
  %235 = ptrtoint ptr %flags.i29.i to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 0, ptr %flags.i29.i, align 8
  br label %sw.epilog

sw.bb4.i34.i:                                     ; preds = %sw.bb1.i55
  %len5.i31.i = getelementptr inbounds %struct.nft_payload, ptr %data.i, i32 0, i32 2
  %236 = ptrtoint ptr %len5.i31.i to i32
  call void @__asan_load1_noabort(i32 %236)
  %237 = load i8, ptr %len5.i31.i, align 2
  %conv6.i32.i = zext i8 %237 to i32
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %mask.i1.i1.i) #9
  %238 = call ptr @memset(ptr %mask.i1.i1.i, i32 0, i32 16)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %237)
  %cmp.i2.i33.i = icmp eq i8 %237, 2
  br i1 %cmp.i2.i33.i, label %if.then.i4.i36.i, label %if.else.i6.i38.i

if.then.i4.i36.i:                                 ; preds = %sw.bb4.i34.i
  call void @__sanitizer_cov_trace_pc() #11
  %mask1.i3.i35.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i4.i, i32 7
  %239 = ptrtoint ptr %mask1.i3.i35.i to i32
  call void @__asan_store2_noabort(i32 %239)
  store i16 -1, ptr %mask1.i3.i35.i, align 8
  br label %if.end9.i54.i

if.else.i6.i38.i:                                 ; preds = %sw.bb4.i34.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %237)
  %cmp2.i5.i37.i = icmp ugt i8 %237, 2
  br i1 %cmp2.i5.i37.i, label %nft_payload_offload_mask.exit19.i49.i, label %if.end4.i9.i40.i

if.end4.i9.i40.i:                                 ; preds = %if.else.i6.i38.i
  %240 = ptrtoint ptr %mask.i1.i1.i to i32
  call void @__asan_store2_noabort(i32 %240)
  store i16 -1, ptr %mask.i1.i1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %237)
  %tobool.not.i8.i39.i = icmp eq i8 %237, 0
  br i1 %tobool.not.i8.i39.i, label %if.end4.i9.i40.i.if.end7.i17.i48.i_crit_edge, label %if.then5.i15.i46.i

if.end4.i9.i40.i.if.end7.i17.i48.i_crit_edge:     ; preds = %if.end4.i9.i40.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end7.i17.i48.i

if.then5.i15.i46.i:                               ; preds = %if.end4.i9.i40.i
  call void @__sanitizer_cov_trace_pc() #11
  %div23.i10.i41.i = lshr i32 %conv6.i32.i, 2
  %.neg.i42.i = mul nsw i32 %conv6.i32.i, -8
  %mul.i12.i43.i = add nsw i32 %.neg.i42.i, 16
  %notmask.i13.i44.i = shl nsw i32 -1, %mul.i12.i43.i
  %arrayidx.i14.i45.i = getelementptr [4 x i32], ptr %mask.i1.i1.i, i32 0, i32 %div23.i10.i41.i
  %241 = ptrtoint ptr %arrayidx.i14.i45.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %notmask.i13.i44.i, ptr %arrayidx.i14.i45.i, align 4
  br label %if.end7.i17.i48.i

if.end7.i17.i48.i:                                ; preds = %if.then5.i15.i46.i, %if.end4.i9.i40.i.if.end7.i17.i48.i_crit_edge
  %mask8.i16.i47.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i4.i, i32 7
  %242 = ptrtoint ptr %mask.i1.i1.i to i32
  call void @__asan_load2_noabort(i32 %242)
  %243 = load i16, ptr %mask.i1.i1.i, align 8
  %244 = ptrtoint ptr %mask8.i16.i47.i to i32
  call void @__asan_store2_noabort(i32 %244)
  store i16 %243, ptr %mask8.i16.i47.i, align 8
  br label %if.end9.i54.i

nft_payload_offload_mask.exit19.i49.i:            ; preds = %if.else.i6.i38.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i1.i1.i) #9
  br label %sw.epilog

if.end9.i54.i:                                    ; preds = %if.end7.i17.i48.i, %if.then.i4.i36.i
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %mask.i1.i1.i) #9
  %base_offset10.i50.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i4.i, i32 2
  %245 = ptrtoint ptr %base_offset10.i50.i to i32
  call void @__asan_store4_noabort(i32 %245)
  store i32 44, ptr %base_offset10.i50.i, align 8
  %offset11.i51.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i4.i, i32 3
  %246 = ptrtoint ptr %offset11.i51.i to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 46, ptr %offset11.i51.i, align 4
  %len12.i52.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i4.i, i32 1
  %247 = ptrtoint ptr %len12.i52.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 2, ptr %len12.i52.i, align 4
  %248 = ptrtoint ptr %arrayidx.i5.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 4, ptr %arrayidx.i5.i, align 8
  %flags14.i53.i = getelementptr %struct.nft_offload_ctx, ptr %ctx, i32 0, i32 3, i32 %idxprom.i4.i, i32 4
  %249 = ptrtoint ptr %flags14.i53.i to i32
  call void @__asan_store4_noabort(i32 %249)
  store i32 0, ptr %flags14.i53.i, align 8
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end9.i54.i, %nft_payload_offload_mask.exit19.i49.i, %if.end.i30.i, %nft_payload_offload_mask.exit.i25.i, %sw.bb1.i55.sw.epilog_crit_edge, %if.end9.i.i54, %nft_payload_offload_mask.exit19.i.i, %if.end.i.i45, %nft_payload_offload_mask.exit.i.i40, %sw.bb.i22.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %if.end20.i71.i, %sw.bb15.i65.i.sw.epilog_crit_edge, %if.end9.i62.i, %nft_payload_offload_mask.exit67.i57.i, %if.end.i37.i, %nft_payload_offload_mask.exit.i32.i, %sw.bb1.i.sw.epilog_crit_edge, %if.end20.i.i, %sw.bb15.i.i.sw.epilog_crit_edge, %if.end9.i.i, %nft_payload_offload_mask.exit67.i.i, %if.end.i.i, %nft_payload_offload_mask.exit.i.i, %sw.bb.i15.sw.epilog_crit_edge, %sw.bb2.sw.epilog_crit_edge, %if.end64.i, %nft_payload_offload_mask.exit114.i, %if.end53.i, %nft_payload_offload_mask.exit95.i, %if.end42.i, %nft_payload_offload_mask.exit76.i, %if.end31.i, %nft_payload_offload_mask.exit57.i, %if.end20.i, %nft_payload_offload_mask.exit38.i, %if.end9.i, %nft_payload_offload_mask.exit19.i, %if.end.i, %nft_payload_offload_mask.exit.i, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %err.0 = phi i32 [ -95, %entry.sw.epilog_crit_edge ], [ -95, %nft_payload_offload_mask.exit.i ], [ -95, %nft_payload_offload_mask.exit19.i ], [ -95, %nft_payload_offload_mask.exit38.i ], [ -95, %nft_payload_offload_mask.exit57.i ], [ -95, %nft_payload_offload_mask.exit76.i ], [ -95, %nft_payload_offload_mask.exit95.i ], [ -95, %nft_payload_offload_mask.exit114.i ], [ -95, %sw.bb.sw.epilog_crit_edge ], [ 0, %if.end64.i ], [ 0, %if.end53.i ], [ 0, %if.end42.i ], [ 0, %if.end31.i ], [ 0, %if.end20.i ], [ 0, %if.end9.i ], [ 0, %if.end.i ], [ -95, %sw.bb2.sw.epilog_crit_edge ], [ -95, %nft_payload_offload_mask.exit.i.i ], [ -95, %nft_payload_offload_mask.exit67.i.i ], [ -95, %sw.bb.i15.sw.epilog_crit_edge ], [ 0, %if.end20.i.i ], [ 0, %if.end9.i.i ], [ 0, %if.end.i.i ], [ -95, %sw.bb15.i.i.sw.epilog_crit_edge ], [ -95, %nft_payload_offload_mask.exit.i32.i ], [ -95, %nft_payload_offload_mask.exit67.i57.i ], [ -95, %sw.bb1.i.sw.epilog_crit_edge ], [ 0, %if.end20.i71.i ], [ 0, %if.end9.i62.i ], [ 0, %if.end.i37.i ], [ -95, %sw.bb15.i65.i.sw.epilog_crit_edge ], [ -95, %sw.bb4.sw.epilog_crit_edge ], [ -95, %nft_payload_offload_mask.exit.i.i40 ], [ -95, %nft_payload_offload_mask.exit19.i.i ], [ -95, %sw.bb.i22.sw.epilog_crit_edge ], [ 0, %if.end9.i.i54 ], [ 0, %if.end.i.i45 ], [ -95, %nft_payload_offload_mask.exit.i25.i ], [ -95, %nft_payload_offload_mask.exit19.i49.i ], [ -95, %sw.bb1.i55.sw.epilog_crit_edge ], [ 0, %if.end9.i54.i ], [ 0, %if.end.i30.i ]
  ret i32 %err.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal nonnull ptr @nft_payload_select_ops(ptr nocapture noundef readnone %ctx, ptr nocapture noundef readonly %tb) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %cmp = icmp eq ptr %1, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %arrayidx1 = getelementptr ptr, ptr %tb, i32 3
  %2 = ptrtoint ptr %arrayidx1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx1, align 4
  %cmp2 = icmp eq ptr %3, null
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 4
  %4 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx4, align 4
  %cmp5 = icmp eq ptr %5, null
  br i1 %cmp5, label %lor.lhs.false3.cleanup_crit_edge, label %if.end

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false3
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %6 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %switch = icmp ult i32 %7, 4
  br i1 %switch, label %sw.epilog, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

sw.epilog:                                        ; preds = %if.end
  %arrayidx9 = getelementptr ptr, ptr %tb, i32 5
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx9, align 4
  %cmp10.not = icmp eq ptr %9, null
  %arrayidx18 = getelementptr ptr, ptr %tb, i32 1
  %10 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx18, align 4
  %cmp19 = icmp eq ptr %11, null
  br i1 %cmp10.not, label %if.end17, label %if.then11

if.then11:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select = select i1 %cmp19, ptr @nft_payload_set_ops, ptr inttoptr (i32 -22 to ptr)
  br label %cleanup

if.end17:                                         ; preds = %sw.epilog
  br i1 %cmp19, label %if.end17.cleanup_crit_edge, label %if.end22

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end22:                                         ; preds = %if.end17
  %add.ptr.i.i52 = getelementptr i8, ptr %5, i32 4
  %12 = ptrtoint ptr %add.ptr.i.i52 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i.i52, align 4
  %14 = add i32 %13, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %14)
  %15 = icmp ult i32 %14, 4
  %16 = tail call i32 @llvm.ctpop.i32(i32 %13) #9, !range !30
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %16)
  %cmp1.i = icmp ult i32 %16, 2
  %or.cond53 = and i1 %15, %cmp1.i
  br i1 %or.cond53, label %land.lhs.true29, label %if.end22.cleanup_crit_edge

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true29:                                  ; preds = %if.end22
  %add.ptr.i.i51 = getelementptr i8, ptr %3, i32 4
  %17 = ptrtoint ptr %add.ptr.i.i51 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i.i51, align 4
  %and = and i32 %18, %14
  %and.fr = freeze i32 %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.fr)
  %cmp30.not = icmp eq i32 %and.fr, 0
  br i1 %cmp30.not, label %switch.early.test, label %land.lhs.true29.cleanup_crit_edge

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

switch.early.test:                                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %switch.selectcmp.case1 = icmp eq i32 %7, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %switch.selectcmp.case2 = icmp eq i32 %7, 0
  %switch.selectcmp = or i1 %switch.selectcmp.case1, %switch.selectcmp.case2
  %19 = select i1 %switch.selectcmp, ptr @nft_payload_ops, ptr @nft_payload_fast_ops
  br label %cleanup

cleanup:                                          ; preds = %switch.early.test, %land.lhs.true29.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then11, %if.end.cleanup_crit_edge, %lor.lhs.false3.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %19, %switch.early.test ], [ @nft_payload_ops, %land.lhs.true29.cleanup_crit_edge ], [ @nft_payload_ops, %if.end22.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false3.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %lor.lhs.false.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -95 to ptr), %if.end.cleanup_crit_edge ], [ inttoptr (i32 -22 to ptr), %if.end17.cleanup_crit_edge ], [ %spec.select, %if.then11 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_store(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_dump_register(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nla_put(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @nft_expr_reduce_bitwise(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_offload_set_dependency(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @nft_flow_rule_set_addr_type(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @nft_payload_set_eval(ptr nocapture noundef readonly %expr, ptr noundef %regs, ptr nocapture noundef %pkt) #0 align 64 {
entry:
  %_uh.i.i.i = alloca %struct.udphdr, align 8
  %sum.i208 = alloca i16, align 2
  %sum.i = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %0 = ptrtoint ptr %pkt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pkt, align 4
  %sreg = getelementptr inbounds %struct.nft_payload_set, ptr %data.i, i32 0, i32 3
  %2 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %sreg, align 1
  %idxprom = zext i8 %3 to i32
  %arrayidx = getelementptr [20 x i32], ptr %regs, i32 0, i32 %idxprom
  %4 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load203 = load i8, ptr %data.i, align 4
  %5 = zext i8 %bf.load203 to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.12)
  switch i8 %bf.load203, label %land.end [
    i8 0, label %sw.bb
    i8 1, label %sw.bb4
    i8 2, label %sw.bb6
    i8 3, label %sw.bb13
  ]

sw.bb:                                            ; preds = %entry
  %mac_header.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 21
  %6 = ptrtoint ptr %mac_header.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %mac_header.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %7)
  %cmp.i.not = icmp eq i16 %7, -1
  br i1 %cmp.i.not, label %sw.bb.err_crit_edge, label %if.end

sw.bb.err_crit_edge:                              ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %head.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %head.i, align 8
  %conv.i = zext i16 %7 to i32
  %add.ptr.i = getelementptr i8, ptr %9, i32 %conv.i
  %data = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %10 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %data, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr.i to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %11 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 18
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 20
  %14 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %15 to i32
  %add.ptr.i.i = getelementptr i8, ptr %13, i32 %conv.i.i
  %data.i206 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %16 = ptrtoint ptr %data.i206 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i206, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %17 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 2
  %18 = ptrtoint ptr %flags to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %flags, align 4
  %20 = and i8 %19, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool7.not = icmp eq i8 %20, 0
  br i1 %tobool7.not, label %sw.bb6.err_crit_edge, label %lor.lhs.false

sw.bb6.err_crit_edge:                             ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

lor.lhs.false:                                    ; preds = %sw.bb6
  %fragoff = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %21 = ptrtoint ptr %fragoff to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %fragoff, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %22)
  %tobool9.not = icmp eq i16 %22, 0
  br i1 %tobool9.not, label %if.end11, label %lor.lhs.false.err_crit_edge

lor.lhs.false.err_crit_edge:                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end11:                                         ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %thoff.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %23 = ptrtoint ptr %thoff.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %thoff.i, align 4
  br label %sw.epilog

sw.bb13:                                          ; preds = %entry
  %call14 = tail call fastcc i32 @nft_payload_inner_offset(ptr noundef %pkt)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %sw.bb13.err_crit_edge, label %sw.bb13.sw.epilog_crit_edge

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb13.err_crit_edge:                            ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

land.end:                                         ; preds = %entry
  %.b204 = load i1, ptr @nft_payload_set_eval.__already_done, align 1
  br i1 %.b204, label %land.end.err_crit_edge, label %if.then24, !prof !28

land.end.err_crit_edge:                           ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.then24:                                        ; preds = %land.end
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @nft_payload_set_eval.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 701, i32 noundef 9, ptr noundef null) #9
  br label %err

sw.epilog:                                        ; preds = %sw.bb13.sw.epilog_crit_edge, %if.end11, %sw.bb4, %if.end
  %offset.0 = phi i32 [ %call14, %sw.bb13.sw.epilog_crit_edge ], [ %24, %if.end11 ], [ %sub.ptr.sub.i, %sw.bb4 ], [ %sub.ptr.sub, %if.end ]
  %csum_offset54 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %25 = ptrtoint ptr %csum_offset54 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %csum_offset54, align 1
  %conv55 = zext i8 %26 to i32
  %add = add i32 %offset.0, %conv55
  %offset56 = getelementptr inbounds %struct.nft_payload_set, ptr %data.i, i32 0, i32 1
  %27 = ptrtoint ptr %offset56 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %offset56, align 1
  %conv57 = zext i8 %28 to i32
  %add58 = add i32 %offset.0, %conv57
  %csum_type = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %29 = ptrtoint ptr %csum_type to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %csum_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %30)
  %cmp60 = icmp eq i8 %30, 1
  br i1 %cmp60, label %sw.epilog.land.lhs.true_crit_edge, label %lor.lhs.false62

sw.epilog.land.lhs.true_crit_edge:                ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false62:                                  ; preds = %sw.epilog
  %csum_flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %31 = ptrtoint ptr %csum_flags to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %csum_flags, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %32)
  %tobool64.not = icmp eq i8 %32, 0
  br i1 %tobool64.not, label %lor.lhs.false62.if.end104_crit_edge, label %lor.lhs.false62.land.lhs.true_crit_edge

lor.lhs.false62.land.lhs.true_crit_edge:          ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

lor.lhs.false62.if.end104_crit_edge:              ; preds = %lor.lhs.false62
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

land.lhs.true:                                    ; preds = %lor.lhs.false62.land.lhs.true_crit_edge, %sw.epilog.land.lhs.true_crit_edge
  %33 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %bf.load65 = load i8, ptr %data.i, align 4
  %34 = and i8 %bf.load65, -2
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %34)
  %switch = icmp eq i8 %34, 2
  br i1 %switch, label %lor.lhs.false74, label %land.lhs.true.if.then80_crit_edge

land.lhs.true.if.then80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

lor.lhs.false74:                                  ; preds = %land.lhs.true
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %35 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %35)
  %bf.load75 = load i16, ptr %ip_summed, align 8
  %36 = and i16 %bf.load75, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %36)
  %cmp78.not = icmp eq i16 %36, 1536
  br i1 %cmp78.not, label %lor.lhs.false74.if.end104_crit_edge, label %lor.lhs.false74.if.then80_crit_edge

lor.lhs.false74.if.then80_crit_edge:              ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then80

lor.lhs.false74.if.end104_crit_edge:              ; preds = %lor.lhs.false74
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

if.then80:                                        ; preds = %lor.lhs.false74.if.then80_crit_edge, %land.lhs.true.if.then80_crit_edge
  %len = getelementptr inbounds %struct.nft_payload_set, ptr %data.i, i32 0, i32 2
  %37 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %len, align 2
  %conv81 = zext i8 %38 to i32
  %call82 = tail call i32 @skb_checksum(ptr noundef %1, i32 noundef %add58, i32 noundef %conv81, i32 noundef 0) #9
  %39 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %len, align 2
  %conv84 = zext i8 %40 to i32
  %call85 = tail call i32 @csum_partial(ptr noundef %arrayidx, i32 noundef %conv84, i32 noundef 0) #9
  %41 = ptrtoint ptr %csum_type to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %csum_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %42)
  %cmp88 = icmp eq i8 %42, 1
  br i1 %cmp88, label %land.lhs.true90, label %if.then80.if.end94_crit_edge

if.then80.if.end94_crit_edge:                     ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

land.lhs.true90:                                  ; preds = %if.then80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sum.i) #9
  %43 = ptrtoint ptr %sum.i to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 -1, ptr %sum.i, align 2, !annotation !31
  %call.i = call i32 @skb_copy_bits(ptr noundef %1, i32 noundef %add, ptr noundef nonnull %sum.i, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i207 = icmp slt i32 %call.i, 0
  br i1 %cmp.i207, label %land.lhs.true90.nft_payload_csum_inet.exit.thread_crit_edge, label %if.end.i

land.lhs.true90.nft_payload_csum_inet.exit.thread_crit_edge: ; preds = %land.lhs.true90
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_payload_csum_inet.exit.thread

if.end.i:                                         ; preds = %land.lhs.true90
  %44 = ptrtoint ptr %sum.i to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %sum.i, align 2
  %conv.i.i.i = zext i16 %45 to i32
  %neg.i.i = xor i32 %conv.i.i.i, -1
  %neg.i.i.i = xor i32 %call82, -1
  %add.i.i.i.i = add i32 %neg.i.i, %neg.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i, i32 %neg.i.i.i)
  %cmp.i.i.i.i = icmp ult i32 %add.i.i.i.i, %neg.i.i.i
  %conv.i.i.i.i = zext i1 %cmp.i.i.i.i to i32
  %add1.i.i.i.i = add i32 %add.i.i.i.i, %call85
  %add.i.i.i = add i32 %add1.i.i.i.i, %conv.i.i.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i, i32 %call85)
  %cmp.i.i.i = icmp ult i32 %add.i.i.i, %call85
  %conv.i8.i.i = zext i1 %cmp.i.i.i to i32
  %add1.i.i.i = add i32 %add.i.i.i, %conv.i8.i.i
  %46 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i.i) #12, !srcloc !32
  %neg.i9.i.i = xor i32 %46, -1
  %shr.i.i.i = lshr i32 %neg.i9.i.i, 16
  %conv.i10.i.i = trunc i32 %shr.i.i.i to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i10.i.i)
  %cmp.i.i = icmp eq i16 %conv.i10.i.i, 0
  %spec.select.i.i = select i1 %cmp.i.i, i16 -1, i16 %conv.i10.i.i
  %47 = ptrtoint ptr %sum.i to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 %spec.select.i.i, ptr %sum.i, align 2
  %add.i = add i32 %add, 2
  %call1.i = call i32 @skb_ensure_writable(ptr noundef %1, i32 noundef %add.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool.not.i, label %nft_payload_csum_inet.exit, label %if.end.i.nft_payload_csum_inet.exit.thread_crit_edge

if.end.i.nft_payload_csum_inet.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_payload_csum_inet.exit.thread

nft_payload_csum_inet.exit.thread:                ; preds = %if.end.i.nft_payload_csum_inet.exit.thread_crit_edge, %land.lhs.true90.nft_payload_csum_inet.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sum.i) #9
  br label %err

nft_payload_csum_inet.exit:                       ; preds = %if.end.i
  %call2.i = call i32 @skb_store_bits(ptr noundef %1, i32 noundef %add, ptr noundef nonnull %sum.i, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sum.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call2.i)
  %tobool92.not = icmp sgt i32 %call2.i, -1
  br i1 %tobool92.not, label %nft_payload_csum_inet.exit.if.end94_crit_edge, label %nft_payload_csum_inet.exit.err_crit_edge

nft_payload_csum_inet.exit.err_crit_edge:         ; preds = %nft_payload_csum_inet.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

nft_payload_csum_inet.exit.if.end94_crit_edge:    ; preds = %nft_payload_csum_inet.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end94

if.end94:                                         ; preds = %nft_payload_csum_inet.exit.if.end94_crit_edge, %if.then80.if.end94_crit_edge
  %csum_flags95 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %48 = ptrtoint ptr %csum_flags95 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %csum_flags95, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool97.not = icmp eq i8 %49, 0
  br i1 %tobool97.not, label %if.end94.if.end104_crit_edge, label %land.lhs.true98

if.end94.if.end104_crit_edge:                     ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

land.lhs.true98:                                  ; preds = %if.end94
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %sum.i208) #9
  %50 = ptrtoint ptr %sum.i208 to i32
  call void @__asan_store2_noabort(i32 %50)
  store i16 -1, ptr %sum.i208, align 2, !annotation !31
  %fragoff.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %51 = ptrtoint ptr %fragoff.i.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %fragoff.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %52)
  %tobool.not.i.i = icmp eq i16 %52, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %land.lhs.true98.nft_payload_l4csum_update.exit.thread_crit_edge

land.lhs.true98.nft_payload_l4csum_update.exit.thread_crit_edge: ; preds = %land.lhs.true98
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_payload_l4csum_update.exit.thread

if.end.i.i:                                       ; preds = %land.lhs.true98
  %tprot.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %53 = ptrtoint ptr %tprot.i.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %tprot.i.i, align 1
  %55 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %55, ptr @__sancov_gen_cov_switch_values.13)
  switch i8 %54, label %if.end.i.i.nft_payload_l4csum_update.exit.thread_crit_edge [
    i8 6, label %if.end.i.i.if.end.i210_crit_edge
    i8 17, label %sw.bb1.i.i
    i8 -120, label %if.end.i.i.sw.bb5.i.i_crit_edge
    i8 58, label %sw.bb6.i.i
  ]

if.end.i.i.sw.bb5.i.i_crit_edge:                  ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i.i

if.end.i.i.if.end.i210_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i210

if.end.i.i.nft_payload_l4csum_update.exit.thread_crit_edge: ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_payload_l4csum_update.exit.thread

sw.bb1.i.i:                                       ; preds = %if.end.i.i
  %thoff.i.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %56 = ptrtoint ptr %thoff.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %thoff.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %_uh.i.i.i) #9
  %len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 6
  %58 = ptrtoint ptr %_uh.i.i.i to i32
  call void @__asan_store8_noabort(i32 %58)
  store i64 -1, ptr %_uh.i.i.i, align 8
  %59 = ptrtoint ptr %len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %len.i.i.i.i.i, align 4
  %data_len.i.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 7
  %61 = ptrtoint ptr %data_len.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %data_len.i.i.i.i.i, align 8
  %63 = add i32 %57, %62
  %sub.i4.i.i.i.i = sub i32 %60, %63
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %sub.i4.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp slt i32 %sub.i4.i.i.i.i, 8
  br i1 %cmp.not.i.i.i.i.i, label %if.end.i.i.i.i.i, label %skb_header_pointer.exit.i.i.i, !prof !29

if.end.i.i.i.i.i:                                 ; preds = %sw.bb1.i.i
  %tobool2.not.i.i.i.i.i = icmp eq ptr %1, null
  br i1 %tobool2.not.i.i.i.i.i, label %if.end.i.i.i.i.i.nft_payload_udp_checksum.exit.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i

if.end.i.i.i.i.i.nft_payload_udp_checksum.exit.thread.i.i_crit_edge: ; preds = %if.end.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_payload_udp_checksum.exit.thread.i.i

lor.lhs.false.i.i.i.i.i:                          ; preds = %if.end.i.i.i.i.i
  %call.i.i.i.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %1, i32 noundef %57, ptr noundef nonnull %_uh.i.i.i, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i.i.i)
  %cmp3.i.i.i.i.i = icmp slt i32 %call.i.i.i.i.i, 0
  br i1 %cmp3.i.i.i.i.i, label %lor.lhs.false.i.i.i.i.i.nft_payload_udp_checksum.exit.thread.i.i_crit_edge, label %lor.lhs.false.i.i.i.i.i.nft_payload_udp_checksum.exit.i.i_crit_edge

lor.lhs.false.i.i.i.i.i.nft_payload_udp_checksum.exit.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_payload_udp_checksum.exit.i.i

lor.lhs.false.i.i.i.i.i.nft_payload_udp_checksum.exit.thread.i.i_crit_edge: ; preds = %lor.lhs.false.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_payload_udp_checksum.exit.thread.i.i

skb_header_pointer.exit.i.i.i:                    ; preds = %sw.bb1.i.i
  %data.i.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 19
  %64 = ptrtoint ptr %data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %data.i.i.i.i, align 4
  %add.ptr.i.i.i.i.i = getelementptr i8, ptr %65, i32 %57
  %tobool.not.i.i.i = icmp eq ptr %add.ptr.i.i.i.i.i, null
  br i1 %tobool.not.i.i.i, label %skb_header_pointer.exit.i.i.i.nft_payload_udp_checksum.exit.thread.i.i_crit_edge, label %skb_header_pointer.exit.i.i.i.nft_payload_udp_checksum.exit.i.i_crit_edge

skb_header_pointer.exit.i.i.i.nft_payload_udp_checksum.exit.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_payload_udp_checksum.exit.i.i

skb_header_pointer.exit.i.i.i.nft_payload_udp_checksum.exit.thread.i.i_crit_edge: ; preds = %skb_header_pointer.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_payload_udp_checksum.exit.thread.i.i

nft_payload_udp_checksum.exit.thread.i.i:         ; preds = %skb_header_pointer.exit.i.i.i.nft_payload_udp_checksum.exit.thread.i.i_crit_edge, %lor.lhs.false.i.i.i.i.i.nft_payload_udp_checksum.exit.thread.i.i_crit_edge, %if.end.i.i.i.i.i.nft_payload_udp_checksum.exit.thread.i.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_uh.i.i.i) #9
  br label %nft_payload_l4csum_update.exit.thread

nft_payload_udp_checksum.exit.i.i:                ; preds = %skb_header_pointer.exit.i.i.i.nft_payload_udp_checksum.exit.i.i_crit_edge, %lor.lhs.false.i.i.i.i.i.nft_payload_udp_checksum.exit.i.i_crit_edge
  %retval.0.i.i9.i.i.i = phi ptr [ %add.ptr.i.i.i.i.i, %skb_header_pointer.exit.i.i.i.nft_payload_udp_checksum.exit.i.i_crit_edge ], [ %_uh.i.i.i, %lor.lhs.false.i.i.i.i.i.nft_payload_udp_checksum.exit.i.i_crit_edge ]
  %check.i.i.i = getelementptr inbounds %struct.udphdr, ptr %retval.0.i.i9.i.i.i, i32 0, i32 3
  %66 = ptrtoint ptr %check.i.i.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %check.i.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %67)
  %tobool1.i.not.i.i = icmp eq i16 %67, 0
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %_uh.i.i.i) #9
  br i1 %tobool1.i.not.i.i, label %nft_payload_udp_checksum.exit.i.i.nft_payload_l4csum_update.exit.thread_crit_edge, label %nft_payload_udp_checksum.exit.i.i.sw.bb5.i.i_crit_edge

nft_payload_udp_checksum.exit.i.i.sw.bb5.i.i_crit_edge: ; preds = %nft_payload_udp_checksum.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.bb5.i.i

nft_payload_udp_checksum.exit.i.i.nft_payload_l4csum_update.exit.thread_crit_edge: ; preds = %nft_payload_udp_checksum.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_payload_l4csum_update.exit.thread

sw.bb5.i.i:                                       ; preds = %nft_payload_udp_checksum.exit.i.i.sw.bb5.i.i_crit_edge, %if.end.i.i.sw.bb5.i.i_crit_edge
  br label %if.end.i210

sw.bb6.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i210

if.end.i210:                                      ; preds = %sw.bb6.i.i, %sw.bb5.i.i, %if.end.i.i.if.end.i210_crit_edge
  %.sink.i.i = phi i32 [ 2, %sw.bb6.i.i ], [ 6, %sw.bb5.i.i ], [ 16, %if.end.i.i.if.end.i210_crit_edge ]
  %thoff.i14.i.i = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %68 = ptrtoint ptr %thoff.i14.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %thoff.i14.i.i, align 4
  %add.i57.i = add i32 %69, %.sink.i.i
  %call1.i209 = call i32 @skb_copy_bits(ptr noundef %1, i32 noundef %add.i57.i, ptr noundef nonnull %sum.i208, i32 noundef 2) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i209)
  %cmp2.i = icmp slt i32 %call1.i209, 0
  br i1 %cmp2.i, label %if.end.i210.nft_payload_l4csum_update.exit.thread237_crit_edge, label %if.end4.i

if.end.i210.nft_payload_l4csum_update.exit.thread237_crit_edge: ; preds = %if.end.i210
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_payload_l4csum_update.exit.thread237

if.end4.i:                                        ; preds = %if.end.i210
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %70 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %70)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %71 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %71)
  %cmp5.not.i = icmp eq i16 %71, 1536
  %72 = ptrtoint ptr %sum.i208 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %sum.i208, align 2
  %conv.i47.i = zext i16 %73 to i32
  br i1 %cmp5.not.i, label %if.else.i, label %if.then7.i

if.then7.i:                                       ; preds = %if.end4.i
  %neg.i59.i = xor i32 %conv.i47.i, -1
  %neg.i.i.i211 = xor i32 %call82, -1
  %add.i.i.i.i212 = add i32 %neg.i59.i, %neg.i.i.i211
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i.i212, i32 %neg.i.i.i211)
  %cmp.i.i.i.i213 = icmp ult i32 %add.i.i.i.i212, %neg.i.i.i211
  %conv.i.i.i.i214 = zext i1 %cmp.i.i.i.i213 to i32
  %add1.i.i.i.i215 = add i32 %add.i.i.i.i212, %call85
  %add.i.i60.i = add i32 %add1.i.i.i.i215, %conv.i.i.i.i214
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i60.i, i32 %call85)
  %cmp.i.i61.i = icmp ult i32 %add.i.i60.i, %call85
  %conv.i8.i.i216 = zext i1 %cmp.i.i61.i to i32
  %add1.i.i62.i = add i32 %add.i.i60.i, %conv.i8.i.i216
  %74 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i62.i) #12, !srcloc !32
  %neg.i9.i.i217 = xor i32 %74, -1
  %shr.i.i.i218 = lshr i32 %neg.i9.i.i217, 16
  %conv.i10.i.i219 = trunc i32 %shr.i.i.i218 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv.i10.i.i219)
  %cmp.i63.i = icmp eq i16 %conv.i10.i.i219, 0
  %spec.select.i.i220 = select i1 %cmp.i63.i, i16 -1, i16 %conv.i10.i.i219
  %75 = ptrtoint ptr %sum.i208 to i32
  call void @__asan_store2_noabort(i32 %75)
  store i16 %spec.select.i.i220, ptr %sum.i208, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1024, i16 %71)
  %cmp14.i = icmp eq i16 %71, 1024
  br i1 %cmp14.i, label %if.then16.i, label %if.then7.i.if.end28.i_crit_edge

if.then7.i.if.end28.i_crit_edge:                  ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28.i

if.then16.i:                                      ; preds = %if.then7.i
  call void @__sanitizer_cov_trace_pc() #11
  %76 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15, i32 0, i32 5
  %77 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %76, align 8
  %neg.i = xor i32 %78, -1
  %add.i.i.i221 = add i32 %neg.i, %neg.i.i.i211
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i.i221, i32 %neg.i.i.i211)
  %cmp.i.i.i222 = icmp ult i32 %add.i.i.i221, %neg.i.i.i211
  %conv.i.i.i223 = zext i1 %cmp.i.i.i222 to i32
  %add1.i.i.i224 = add i32 %add.i.i.i221, %call85
  %add.i.i = add i32 %add1.i.i.i224, %conv.i.i.i223
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %call85)
  %cmp.i.i225 = icmp ult i32 %add.i.i, %call85
  %conv.i.i226 = zext i1 %cmp.i.i225 to i32
  %add1.i.i = add i32 %add.i.i, %conv.i.i226
  %neg19.i = xor i32 %add1.i.i, -1
  %79 = ptrtoint ptr %76 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %neg19.i, ptr %76, align 8
  br label %if.end28.i

if.else.i:                                        ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  %neg.i48.i = xor i32 %call82, -1
  %add.i.i49.i = add i32 %conv.i47.i, %neg.i48.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i49.i, i32 %neg.i48.i)
  %cmp.i.i50.i = icmp ult i32 %add.i.i49.i, %neg.i48.i
  %conv.i.i51.i = zext i1 %cmp.i.i50.i to i32
  %add1.i.i52.i = add i32 %add.i.i49.i, %call85
  %add.i53.i = add i32 %add1.i.i52.i, %conv.i.i51.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i53.i, i32 %call85)
  %cmp.i54.i = icmp ult i32 %add.i53.i, %call85
  %conv.i55.i = zext i1 %cmp.i54.i to i32
  %add1.i56.i = add i32 %add.i53.i, %conv.i55.i
  %80 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i56.i) #12, !srcloc !32
  %neg.i64.i = xor i32 %80, -1
  %shr.i.i = lshr i32 %neg.i64.i, 16
  %conv.i65.i = trunc i32 %shr.i.i to i16
  %neg26.i = xor i16 %conv.i65.i, -1
  %81 = ptrtoint ptr %sum.i208 to i32
  call void @__asan_store2_noabort(i32 %81)
  store i16 %neg26.i, ptr %sum.i208, align 2
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.else.i, %if.then16.i, %if.then7.i.if.end28.i_crit_edge
  %add.i227 = add i32 %add.i57.i, 2
  %call29.i = call i32 @skb_ensure_writable(ptr noundef %1, i32 noundef %add.i227) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool.not.i228 = icmp eq i32 %call29.i, 0
  br i1 %tobool.not.i228, label %nft_payload_l4csum_update.exit, label %if.end28.i.nft_payload_l4csum_update.exit.thread237_crit_edge

if.end28.i.nft_payload_l4csum_update.exit.thread237_crit_edge: ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %nft_payload_l4csum_update.exit.thread237

nft_payload_l4csum_update.exit.thread:            ; preds = %nft_payload_udp_checksum.exit.i.i.nft_payload_l4csum_update.exit.thread_crit_edge, %nft_payload_udp_checksum.exit.thread.i.i, %if.end.i.i.nft_payload_l4csum_update.exit.thread_crit_edge, %land.lhs.true98.nft_payload_l4csum_update.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sum.i208) #9
  br label %if.end104

nft_payload_l4csum_update.exit.thread237:         ; preds = %if.end28.i.nft_payload_l4csum_update.exit.thread237_crit_edge, %if.end.i210.nft_payload_l4csum_update.exit.thread237_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sum.i208) #9
  br label %err

nft_payload_l4csum_update.exit:                   ; preds = %if.end28.i
  %call30.i = call i32 @skb_store_bits(ptr noundef %1, i32 noundef %add.i57.i, ptr noundef nonnull %sum.i208, i32 noundef 2) #9
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %sum.i208) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i)
  %cmp100 = icmp slt i32 %call30.i, 0
  br i1 %cmp100, label %nft_payload_l4csum_update.exit.err_crit_edge, label %nft_payload_l4csum_update.exit.if.end104_crit_edge

nft_payload_l4csum_update.exit.if.end104_crit_edge: ; preds = %nft_payload_l4csum_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end104

nft_payload_l4csum_update.exit.err_crit_edge:     ; preds = %nft_payload_l4csum_update.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end104:                                        ; preds = %nft_payload_l4csum_update.exit.if.end104_crit_edge, %nft_payload_l4csum_update.exit.thread, %if.end94.if.end104_crit_edge, %lor.lhs.false74.if.end104_crit_edge, %lor.lhs.false62.if.end104_crit_edge
  %len105 = getelementptr inbounds %struct.nft_payload_set, ptr %data.i, i32 0, i32 2
  %82 = ptrtoint ptr %len105 to i32
  call void @__asan_load1_noabort(i32 %82)
  %83 = load i8, ptr %len105, align 2
  %conv106 = zext i8 %83 to i32
  %add107 = add i32 %add58, %conv106
  %84 = call i32 @llvm.smax.i32(i32 %add107, i32 0)
  %call111 = call i32 @skb_ensure_writable(ptr noundef %1, i32 noundef %84) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %tobool112.not = icmp eq i32 %call111, 0
  br i1 %tobool112.not, label %lor.lhs.false113, label %if.end104.err_crit_edge

if.end104.err_crit_edge:                          ; preds = %if.end104
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

lor.lhs.false113:                                 ; preds = %if.end104
  %85 = ptrtoint ptr %len105 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %len105, align 2
  %conv115 = zext i8 %86 to i32
  %call116 = call i32 @skb_store_bits(ptr noundef %1, i32 noundef %add58, ptr noundef %arrayidx, i32 noundef %conv115) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call116)
  %cmp117 = icmp slt i32 %call116, 0
  br i1 %cmp117, label %lor.lhs.false113.err_crit_edge, label %if.end120

lor.lhs.false113.err_crit_edge:                   ; preds = %lor.lhs.false113
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

if.end120:                                        ; preds = %lor.lhs.false113
  %87 = ptrtoint ptr %csum_type to i32
  call void @__asan_load1_noabort(i32 %87)
  %88 = load i8, ptr %csum_type, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %88)
  %cmp123 = icmp eq i8 %88, 2
  br i1 %cmp123, label %land.lhs.true125, label %if.end120.cleanup_crit_edge

if.end120.cleanup_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true125:                                 ; preds = %if.end120
  %tprot = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 3
  %89 = ptrtoint ptr %tprot to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %tprot, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -124, i8 %90)
  %cmp127 = icmp eq i8 %90, -124
  br i1 %cmp127, label %land.lhs.true129, label %land.lhs.true125.cleanup_crit_edge

land.lhs.true125.cleanup_crit_edge:               ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true129:                                 ; preds = %land.lhs.true125
  %ip_summed130 = getelementptr inbounds %struct.sk_buff, ptr %1, i32 0, i32 15
  %91 = ptrtoint ptr %ip_summed130 to i32
  call void @__asan_load2_noabort(i32 %91)
  %bf.load131 = load i16, ptr %ip_summed130, align 8
  %92 = and i16 %bf.load131, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %92)
  %cmp136.not = icmp eq i16 %92, 1536
  br i1 %cmp136.not, label %land.lhs.true129.cleanup_crit_edge, label %if.then138

land.lhs.true129.cleanup_crit_edge:               ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then138:                                       ; preds = %land.lhs.true129
  %fragoff139 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 4
  %93 = ptrtoint ptr %fragoff139 to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %fragoff139, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %94)
  %cmp141 = icmp eq i16 %94, 0
  br i1 %cmp141, label %land.lhs.true143, label %if.then138.cleanup_crit_edge

if.then138.cleanup_crit_edge:                     ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true143:                                 ; preds = %if.then138
  %thoff.i231 = getelementptr inbounds %struct.nft_pktinfo, ptr %pkt, i32 0, i32 5
  %95 = ptrtoint ptr %thoff.i231 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %thoff.i231, align 4
  %call145 = call fastcc i32 @nft_payload_csum_sctp(ptr noundef %1, i32 noundef %96)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call145)
  %tobool146.not = icmp eq i32 %call145, 0
  br i1 %tobool146.not, label %land.lhs.true143.cleanup_crit_edge, label %land.lhs.true143.err_crit_edge

land.lhs.true143.err_crit_edge:                   ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #11
  br label %err

land.lhs.true143.cleanup_crit_edge:               ; preds = %land.lhs.true143
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

err:                                              ; preds = %land.lhs.true143.err_crit_edge, %lor.lhs.false113.err_crit_edge, %if.end104.err_crit_edge, %nft_payload_l4csum_update.exit.err_crit_edge, %nft_payload_l4csum_update.exit.thread237, %nft_payload_csum_inet.exit.err_crit_edge, %nft_payload_csum_inet.exit.thread, %if.then24, %land.end.err_crit_edge, %sw.bb13.err_crit_edge, %lor.lhs.false.err_crit_edge, %sw.bb6.err_crit_edge, %sw.bb.err_crit_edge
  %97 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 -2, ptr %regs, align 4
  br label %cleanup

cleanup:                                          ; preds = %err, %land.lhs.true143.cleanup_crit_edge, %if.then138.cleanup_crit_edge, %land.lhs.true129.cleanup_crit_edge, %land.lhs.true125.cleanup_crit_edge, %if.end120.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_payload_set_init(ptr nocapture noundef readnone %ctx, ptr noundef %expr, ptr nocapture noundef readonly %tb) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %arrayidx = getelementptr ptr, ptr %tb, i32 2
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 4
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr.i.i, align 4
  %4 = trunc i32 %3 to i8
  %5 = ptrtoint ptr %data.i to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %4, ptr %data.i, align 4
  %arrayidx2 = getelementptr ptr, ptr %tb, i32 3
  %6 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx2, align 4
  %add.ptr.i.i67 = getelementptr i8, ptr %7, i32 4
  %8 = ptrtoint ptr %add.ptr.i.i67 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %add.ptr.i.i67, align 4
  %conv = trunc i32 %9 to i8
  %offset = getelementptr inbounds %struct.nft_payload_set, ptr %data.i, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %offset, align 1
  %arrayidx4 = getelementptr ptr, ptr %tb, i32 4
  %11 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx4, align 4
  %add.ptr.i.i68 = getelementptr i8, ptr %12, i32 4
  %13 = ptrtoint ptr %add.ptr.i.i68 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr.i.i68, align 4
  %conv6 = trunc i32 %14 to i8
  %len = getelementptr inbounds %struct.nft_payload_set, ptr %data.i, i32 0, i32 2
  %15 = ptrtoint ptr %len to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv6, ptr %len, align 2
  %arrayidx7 = getelementptr ptr, ptr %tb, i32 6
  %16 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx7, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i69 = getelementptr i8, ptr %17, i32 4
  %18 = ptrtoint ptr %add.ptr.i.i69 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i.i69, align 4
  %conv10 = trunc i32 %19 to i8
  %csum_type = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %20 = ptrtoint ptr %csum_type to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv10, ptr %csum_type, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %arrayidx11 = getelementptr ptr, ptr %tb, i32 7
  %21 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %arrayidx11, align 4
  %tobool12.not = icmp eq ptr %22, null
  br i1 %tobool12.not, label %if.end.if.end17_crit_edge, label %if.then13

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end17

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i.i70 = getelementptr i8, ptr %22, i32 4
  %23 = ptrtoint ptr %add.ptr.i.i70 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i.i70, align 4
  %conv16 = trunc i32 %24 to i8
  %csum_offset = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %25 = ptrtoint ptr %csum_offset to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv16, ptr %csum_offset, align 1
  br label %if.end17

if.end17:                                         ; preds = %if.then13, %if.end.if.end17_crit_edge
  %arrayidx18 = getelementptr ptr, ptr %tb, i32 8
  %26 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %27, null
  br i1 %tobool19.not, label %if.end17.if.end27_crit_edge, label %if.then20

if.end17.if.end27_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then20:                                        ; preds = %if.end17
  %add.ptr.i.i71 = getelementptr i8, ptr %27, i32 4
  %28 = ptrtoint ptr %add.ptr.i.i71 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %add.ptr.i.i71, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %29)
  %tobool23.not = icmp ult i32 %29, 2
  br i1 %tobool23.not, label %if.end25, label %if.then20.cleanup44_crit_edge

if.then20.cleanup44_crit_edge:                    ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

if.end25:                                         ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #11
  %conv26 = trunc i32 %29 to i8
  %csum_flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %30 = ptrtoint ptr %csum_flags to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv26, ptr %csum_flags, align 2
  br label %if.end27

if.end27:                                         ; preds = %if.end25, %if.end17.if.end27_crit_edge
  %csum_type28 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %31 = ptrtoint ptr %csum_type28 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %csum_type28, align 4
  %33 = zext i8 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.14)
  switch i8 %32, label %if.end27.cleanup44_crit_edge [
    i8 0, label %if.end27.sw.epilog_crit_edge
    i8 1, label %if.end27.sw.epilog_crit_edge72
    i8 2, label %sw.bb30
  ]

if.end27.sw.epilog_crit_edge72:                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

if.end27.cleanup44_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

sw.bb30:                                          ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %4)
  %cmp.not = icmp eq i8 %4, 2
  br i1 %cmp.not, label %if.end33, label %sw.bb30.cleanup44_crit_edge

sw.bb30.cleanup44_crit_edge:                      ; preds = %sw.bb30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

if.end33:                                         ; preds = %sw.bb30
  %csum_offset34 = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %34 = ptrtoint ptr %csum_offset34 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %csum_offset34, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 8, i8 %35)
  %cmp36.not = icmp eq i8 %35, 8
  br i1 %cmp36.not, label %if.end33.sw.epilog_crit_edge, label %if.end33.cleanup44_crit_edge

if.end33.cleanup44_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup44

if.end33.sw.epilog_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end33.sw.epilog_crit_edge, %if.end27.sw.epilog_crit_edge, %if.end27.sw.epilog_crit_edge72
  %arrayidx40 = getelementptr ptr, ptr %tb, i32 5
  %36 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx40, align 4
  %sreg = getelementptr inbounds %struct.nft_payload_set, ptr %data.i, i32 0, i32 3
  %conv42 = and i32 %14, 255
  %call43 = tail call i32 @nft_parse_register_load(ptr noundef %37, ptr noundef %sreg, i32 noundef %conv42) #9
  br label %cleanup44

cleanup44:                                        ; preds = %sw.epilog, %if.end33.cleanup44_crit_edge, %sw.bb30.cleanup44_crit_edge, %if.end27.cleanup44_crit_edge, %if.then20.cleanup44_crit_edge
  %retval.1 = phi i32 [ %call43, %sw.epilog ], [ -22, %sw.bb30.cleanup44_crit_edge ], [ -22, %if.end33.cleanup44_crit_edge ], [ -95, %if.end27.cleanup44_crit_edge ], [ -22, %if.then20.cleanup44_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @nft_payload_set_dump(ptr noundef %skb, ptr nocapture noundef readonly %expr) #0 align 64 {
entry:
  %tmp.i44 = alloca i32, align 4
  %tmp.i42 = alloca i32, align 4
  %tmp.i40 = alloca i32, align 4
  %tmp.i38 = alloca i32, align 4
  %tmp.i36 = alloca i32, align 4
  %tmp.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %data.i = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 0, i32 2
  %sreg = getelementptr inbounds %struct.nft_payload_set, ptr %data.i, i32 0, i32 3
  %0 = ptrtoint ptr %sreg to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %sreg, align 1
  %conv = zext i8 %1 to i32
  %call1 = tail call i32 @nft_dump_register(ptr noundef %skb, i32 noundef 5, i32 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.nla_put_failure_crit_edge

entry.nla_put_failure_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false:                                    ; preds = %entry
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %data.i, align 4
  %bf.cast = zext i8 %bf.load to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i) #9
  %3 = ptrtoint ptr %tmp.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %bf.cast, ptr %tmp.i, align 4
  %call.i = call i32 @nla_put(ptr noundef %skb, i32 noundef 2, i32 noundef 4, ptr noundef nonnull %tmp.i) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool3.not = icmp eq i32 %call.i, 0
  br i1 %tobool3.not, label %lor.lhs.false4, label %lor.lhs.false.nla_put_failure_crit_edge

lor.lhs.false.nla_put_failure_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %offset = getelementptr inbounds %struct.nft_payload_set, ptr %data.i, i32 0, i32 1
  %4 = ptrtoint ptr %offset to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %offset, align 1
  %conv5 = zext i8 %5 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i36) #9
  %6 = ptrtoint ptr %tmp.i36 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %conv5, ptr %tmp.i36, align 4
  %call.i37 = call i32 @nla_put(ptr noundef %skb, i32 noundef 3, i32 noundef 4, ptr noundef nonnull %tmp.i36) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i36) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i37)
  %tobool7.not = icmp eq i32 %call.i37, 0
  br i1 %tobool7.not, label %lor.lhs.false8, label %lor.lhs.false4.nla_put_failure_crit_edge

lor.lhs.false4.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false8:                                   ; preds = %lor.lhs.false4
  %len = getelementptr inbounds %struct.nft_payload_set, ptr %data.i, i32 0, i32 2
  %7 = ptrtoint ptr %len to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %len, align 2
  %conv9 = zext i8 %8 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i38) #9
  %9 = ptrtoint ptr %tmp.i38 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %conv9, ptr %tmp.i38, align 4
  %call.i39 = call i32 @nla_put(ptr noundef %skb, i32 noundef 4, i32 noundef 4, ptr noundef nonnull %tmp.i38) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i38) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i39)
  %tobool11.not = icmp eq i32 %call.i39, 0
  br i1 %tobool11.not, label %lor.lhs.false12, label %lor.lhs.false8.nla_put_failure_crit_edge

lor.lhs.false8.nla_put_failure_crit_edge:         ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false12:                                  ; preds = %lor.lhs.false8
  %csum_type = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1
  %10 = ptrtoint ptr %csum_type to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %csum_type, align 4
  %conv13 = zext i8 %11 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i40) #9
  %12 = ptrtoint ptr %tmp.i40 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %conv13, ptr %tmp.i40, align 4
  %call.i41 = call i32 @nla_put(ptr noundef %skb, i32 noundef 6, i32 noundef 4, ptr noundef nonnull %tmp.i40) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i41)
  %tobool15.not = icmp eq i32 %call.i41, 0
  br i1 %tobool15.not, label %lor.lhs.false16, label %lor.lhs.false12.nla_put_failure_crit_edge

lor.lhs.false12.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false16:                                  ; preds = %lor.lhs.false12
  %csum_offset = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 1
  %13 = ptrtoint ptr %csum_offset to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %csum_offset, align 1
  %conv17 = zext i8 %14 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i42) #9
  %15 = ptrtoint ptr %tmp.i42 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %conv17, ptr %tmp.i42, align 4
  %call.i43 = call i32 @nla_put(ptr noundef %skb, i32 noundef 7, i32 noundef 4, ptr noundef nonnull %tmp.i42) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i42) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43)
  %tobool19.not = icmp eq i32 %call.i43, 0
  br i1 %tobool19.not, label %lor.lhs.false20, label %lor.lhs.false16.nla_put_failure_crit_edge

lor.lhs.false16.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false20:                                  ; preds = %lor.lhs.false16
  %csum_flags = getelementptr inbounds %struct.nft_expr, ptr %expr, i32 1, i32 1, i32 2
  %16 = ptrtoint ptr %csum_flags to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %csum_flags, align 2
  %conv21 = zext i8 %17 to i32
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp.i44) #9
  %18 = ptrtoint ptr %tmp.i44 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %conv21, ptr %tmp.i44, align 4
  %call.i45 = call i32 @nla_put(ptr noundef %skb, i32 noundef 8, i32 noundef 4, ptr noundef nonnull %tmp.i44) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp.i44) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i45)
  %tobool23.not = icmp eq i32 %call.i45, 0
  br i1 %tobool23.not, label %lor.lhs.false20.cleanup_crit_edge, label %lor.lhs.false20.nla_put_failure_crit_edge

lor.lhs.false20.nla_put_failure_crit_edge:        ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %nla_put_failure

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

nla_put_failure:                                  ; preds = %lor.lhs.false20.nla_put_failure_crit_edge, %lor.lhs.false16.nla_put_failure_crit_edge, %lor.lhs.false12.nla_put_failure_crit_edge, %lor.lhs.false8.nla_put_failure_crit_edge, %lor.lhs.false4.nla_put_failure_crit_edge, %lor.lhs.false.nla_put_failure_crit_edge, %entry.nla_put_failure_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %nla_put_failure, %lor.lhs.false20.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %nla_put_failure ], [ 0, %lor.lhs.false20.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @nft_payload_set_reduce(ptr nocapture noundef %track, ptr nocapture noundef readnone %expr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.028 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [20 x %struct.anon.155], ptr %track, i32 0, i32 %i.028
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 8
  %cmp4.not = icmp eq ptr %3, @nft_payload_ops
  %cmp9.not = icmp eq ptr %3, @nft_payload_fast_ops
  %or.cond = or i1 %cmp4.not, %cmp9.not
  br i1 %or.cond, label %if.end11, label %if.end.for.inc_crit_edge

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %arrayidx, align 4
  %bitwise = getelementptr [20 x %struct.anon.155], ptr %track, i32 0, i32 %i.028, i32 1
  %5 = ptrtoint ptr %bitwise to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %bitwise, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end11, %if.end.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.028, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  ret i1 false
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_store_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @nft_payload_csum_sctp(ptr noundef %skb, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add = add i32 %offset, 12
  %call = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef %add) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %offset
  %checksum.i = getelementptr inbounds %struct.sctphdr, ptr %add.ptr, i32 0, i32 3
  %2 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %checksum.i, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %3 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %len.i, align 4
  %sub.i = sub i32 %4, %offset
  %call.i = tail call i32 @__skb_checksum(ptr noundef %skb, i32 noundef %offset, i32 noundef %sub.i, i32 noundef -1, ptr noundef nonnull @sctp_csum_ops) #9
  %neg.i = xor i32 %call.i, -1
  %5 = tail call i32 @llvm.bswap.i32(i32 %neg.i) #9
  %6 = ptrtoint ptr %checksum.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %checksum.i, align 4
  %ip_summed = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %7 = ptrtoint ptr %ip_summed to i32
  call void @__asan_load2_noabort(i32 %7)
  %bf.load = load i16, ptr %ip_summed, align 8
  %bf.clear = and i16 %bf.load, -1537
  %bf.set = or i16 %bf.clear, 512
  store i16 %bf.set, ptr %ip_summed, align 8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__skb_checksum(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sctp_csum_update(ptr noundef %buff, i32 noundef %len, i32 noundef %sum) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call = tail call i32 @crc32c(i32 noundef %sum, ptr noundef %buff, i32 noundef %len) #9
  ret i32 %call
}

; Function Attrs: inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sctp_csum_combine(i32 noundef %csum, i32 noundef %csum2, i32 noundef %offset, i32 noundef %len) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 @__crc32c_le_shift(i32 noundef %csum, i32 noundef %len) #13
  %xor.i = xor i32 %call.i, %csum2
  ret i32 %xor.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crc32c(i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @__crc32c_le_shift(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nft_parse_register_load(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctpop.i32(i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { inlinehint mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind readnone }
attributes #13 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17}
!llvm.module.flags = !{!19, !20, !21, !22, !23, !24, !25, !26}
!llvm.ident = !{!27}

!0 = distinct !{null, !1, !"__already_done", i1 false, i1 false}
!1 = !{!"../net/netfilter/nft_payload.c", i32 160, i32 3}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @nft_payload_fast_ops, !4, !"nft_payload_fast_ops", i1 false, i1 false}
!4 = !{!"../net/netfilter/nft_payload.c", i32 548, i32 27}
!5 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../net/netfilter/nft_payload.c", i32 877, i32 11}
!7 = !{ptr @nft_payload_type, !8, !"nft_payload_type", i1 false, i1 false}
!8 = !{!"../net/netfilter/nft_payload.c", i32 876, i32 22}
!9 = !{ptr @nft_payload_set_ops, !10, !"nft_payload_set_ops", i1 false, i1 false}
!10 = !{!"../net/netfilter/nft_payload.c", i32 825, i32 34}
!11 = distinct !{null, !12, !"__already_done", i1 false, i1 false}
!12 = !{!"../net/netfilter/nft_payload.c", i32 701, i32 3}
!13 = !{ptr @sctp_csum_ops, !14, !"sctp_csum_ops", i1 false, i1 false}
!14 = !{!"../include/net/sctp/checksum.h", i32 46, i32 38}
!15 = !{ptr @nft_payload_ops, !16, !"nft_payload_ops", i1 false, i1 false}
!16 = !{!"../net/netfilter/nft_payload.c", i32 538, i32 34}
!17 = !{ptr @nft_payload_policy, !18, !"nft_payload_policy", i1 false, i1 false}
!18 = !{!"../net/netfilter/nft_payload.c", i32 172, i32 32}
!19 = !{i32 1, !"wchar_size", i32 2}
!20 = !{i32 1, !"min_enum_size", i32 4}
!21 = !{i32 8, !"branch-target-enforcement", i32 0}
!22 = !{i32 8, !"sign-return-address", i32 0}
!23 = !{i32 8, !"sign-return-address-all", i32 0}
!24 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!25 = !{i32 7, !"uwtable", i32 1}
!26 = !{i32 7, !"frame-pointer", i32 2}
!27 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!28 = !{!"branch_weights", i32 2000, i32 1}
!29 = !{!"branch_weights", i32 1, i32 2000}
!30 = !{i32 0, i32 33}
!31 = !{!"auto-init"}
!32 = !{i64 6927627}
