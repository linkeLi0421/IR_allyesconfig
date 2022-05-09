; ModuleID = '/llk/IR_all_yes/net/ipv6/ila/ila_common.c_pt.bc'
source_filename = "../net/ipv6/ila/ila_common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ila_params = type { %struct.ila_locator, %struct.ila_locator, i32, i8, i8 }
%struct.ila_locator = type { %union.anon }
%union.anon = type { i64 }
%struct.sk_buff = type { %union.anon.0, %union.anon.129, %union.anon.130, [48 x i8], %union.anon.131, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.133, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon.0 = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.1 }
%union.anon.1 = type { ptr }
%union.anon.129 = type { ptr }
%union.anon.130 = type { i64 }
%union.anon.131 = type { %struct.anon.132 }
%struct.anon.132 = type { i32, ptr }
%union.anon.133 = type { %struct.anon.134 }
%struct.anon.134 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.135, i32, i32, i32, i16, i16, %union.anon.137, i32, %union.anon.138, %union.anon.139, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.135 = type { i32 }
%union.anon.137 = type { i32 }
%union.anon.138 = type { i32 }
%union.anon.139 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.anon.151 = type { %struct.ila_locator, %struct.ila_identifier }
%struct.ila_identifier = type { %union.anon.152 }
%union.anon.152 = type { i64 }

@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"net/ipv6/ila/ila_common.c\00", [38 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 6, i64 17, i64 58]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [29 x i8] c"../net/ipv6/ila/ila_common.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 132, i32 8 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ila_init_saved_csum(ptr nocapture noundef %p) local_unnamed_addr #0 align 64 {
entry:
  %diff.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %locator_match = getelementptr inbounds %struct.ila_params, ptr %p, i32 0, i32 1
  %0 = ptrtoint ptr %locator_match to i32
  call void @__asan_load8_noabort(i32 %0)
  %1 = load i64, ptr %locator_match, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %1)
  %tobool.not = icmp eq i64 %1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %diff.i) #3
  %2 = getelementptr inbounds [4 x i32], ptr %diff.i, i32 0, i32 1
  %3 = getelementptr inbounds [4 x i32], ptr %diff.i, i32 0, i32 2
  %4 = getelementptr inbounds [4 x i32], ptr %diff.i, i32 0, i32 3
  %5 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %p, align 4
  %neg.i = xor i32 %6, -1
  %7 = ptrtoint ptr %diff.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %neg.i, ptr %diff.i, align 4
  %arrayidx1.i = getelementptr i32, ptr %p, i32 1
  %8 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx1.i, align 4
  %neg2.i = xor i32 %9, -1
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %neg2.i, ptr %2, align 4
  %11 = ptrtoint ptr %locator_match to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %locator_match, align 4
  %13 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %3, align 4
  %arrayidx6.i = getelementptr i32, ptr %locator_match, i32 1
  %14 = ptrtoint ptr %arrayidx6.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx6.i, align 4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %4, align 4
  %call.i = call i32 @csum_partial(ptr noundef nonnull %diff.i, i32 noundef 16, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %diff.i) #3
  %csum_diff = getelementptr inbounds %struct.ila_params, ptr %p, i32 0, i32 2
  %17 = ptrtoint ptr %csum_diff to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call.i, ptr %csum_diff, align 8
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @ila_update_ipv6_locator(ptr noundef %skb, ptr noundef readonly %p, i1 noundef zeroext %sir2ila) local_unnamed_addr #0 align 64 {
entry:
  %diff.i.i.i51 = alloca [4 x i32], align 4
  %diff.i.i.i = alloca [4 x i32], align 4
  %diff.i.i.i117.i = alloca [4 x i32], align 4
  %diff.i.i.i87.i = alloca [4 x i32], align 4
  %diff.i.i.i.i = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %0 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %2 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %3 to i32
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %conv.i.i
  %daddr = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6
  %csum_mode = getelementptr inbounds %struct.ila_params, ptr %p, i32 0, i32 3
  %4 = ptrtoint ptr %csum_mode to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %csum_mode, align 4
  %6 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i8 %5, label %entry.sw.epilog_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb2
    i8 3, label %sw.bb35
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %nexthdr.i = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %nexthdr.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nexthdr.i, align 2
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %8, label %sw.bb.sw.epilog_crit_edge [
    i8 6, label %sw.bb.i
    i8 17, label %sw.bb5.i
    i8 58, label %sw.bb32.i
  ]

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

sw.bb.i:                                          ; preds = %sw.bb
  %len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %10 = ptrtoint ptr %len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %len.i.i.i, align 4
  %data_len.i.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %12 = ptrtoint ptr %data_len.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %data_len.i.i.i, align 8
  %sub.i.i.i = sub i32 %11, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %sub.i.i.i)
  %cmp.not.i.i = icmp ult i32 %sub.i.i.i, 60
  br i1 %cmp.not.i.i, label %if.end.i.i, label %sw.bb.i.if.then.i_crit_edge, !prof !11

sw.bb.i.if.then.i_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

if.end.i.i:                                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %11)
  %cmp3.i.i = icmp ult i32 %11, 60
  br i1 %cmp3.i.i, label %if.end.i.i.sw.epilog_crit_edge, label %pskb_may_pull.exit.i, !prof !11

if.end.i.i.sw.epilog_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

pskb_may_pull.exit.i:                             ; preds = %if.end.i.i
  %sub.i.i = sub nuw nsw i32 60, %sub.i.i.i
  %call13.i.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i.i) #3
  %cmp14.i.not.i = icmp eq ptr %call13.i.i, null
  br i1 %cmp14.i.not.i, label %pskb_may_pull.exit.i.sw.epilog_crit_edge, label %pskb_may_pull.exit.i.if.then.i_crit_edge, !prof !11

pskb_may_pull.exit.i.if.then.i_crit_edge:         ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then.i

pskb_may_pull.exit.i.sw.epilog_crit_edge:         ; preds = %pskb_may_pull.exit.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then.i:                                        ; preds = %pskb_may_pull.exit.i.if.then.i_crit_edge, %sw.bb.i.if.then.i_crit_edge
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %16 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i47 = zext i16 %17 to i32
  %add.ptr.i.i48 = getelementptr i8, ptr %15, i32 %conv.i.i47
  %locator_match.i.i.i = getelementptr inbounds %struct.ila_params, ptr %p, i32 0, i32 1
  %18 = ptrtoint ptr %locator_match.i.i.i to i32
  call void @__asan_load8_noabort(i32 %18)
  %19 = load i64, ptr %locator_match.i.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %19)
  %tobool.not.i.i.i = icmp eq i64 %19, 0
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  %csum_diff.i.i.i = getelementptr inbounds %struct.ila_params, ptr %p, i32 0, i32 2
  %20 = ptrtoint ptr %csum_diff.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %csum_diff.i.i.i, align 8
  br label %get_csum_diff.exit.i

if.else.i.i.i:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %diff.i.i.i.i) #3
  %22 = getelementptr inbounds [4 x i32], ptr %diff.i.i.i.i, i32 0, i32 1
  %23 = getelementptr inbounds [4 x i32], ptr %diff.i.i.i.i, i32 0, i32 2
  %24 = getelementptr inbounds [4 x i32], ptr %diff.i.i.i.i, i32 0, i32 3
  %25 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %p, align 4
  %neg.i.i.i.i = xor i32 %26, -1
  %27 = ptrtoint ptr %diff.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %neg.i.i.i.i, ptr %diff.i.i.i.i, align 4
  %arrayidx1.i.i.i.i = getelementptr i32, ptr %p, i32 1
  %28 = ptrtoint ptr %arrayidx1.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx1.i.i.i.i, align 4
  %neg2.i.i.i.i = xor i32 %29, -1
  %30 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %neg2.i.i.i.i, ptr %22, align 4
  %31 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %daddr, align 4
  %33 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %23, align 4
  %arrayidx6.i.i.i.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx6.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx6.i.i.i.i, align 4
  %36 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %24, align 4
  %call.i.i.i.i = call i32 @csum_partial(ptr noundef nonnull %diff.i.i.i.i, i32 noundef 16, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %diff.i.i.i.i) #3
  br label %get_csum_diff.exit.i

get_csum_diff.exit.i:                             ; preds = %if.else.i.i.i, %if.then.i.i.i
  %retval.0.i.i.i = phi i32 [ %21, %if.then.i.i.i ], [ %call.i.i.i.i, %if.else.i.i.i ]
  %check.i = getelementptr i8, ptr %add.ptr.i.i48, i32 56
  call void @inet_proto_csum_replace_by_diff(ptr noundef %check.i, ptr noundef %skb, i32 noundef %retval.0.i.i.i, i1 noundef zeroext true) #3
  br label %sw.epilog

sw.bb5.i:                                         ; preds = %sw.bb
  %len.i.i71.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %37 = ptrtoint ptr %len.i.i71.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %len.i.i71.i, align 4
  %data_len.i.i72.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %39 = ptrtoint ptr %data_len.i.i72.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %data_len.i.i72.i, align 8
  %sub.i.i73.i = sub i32 %38, %40
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %sub.i.i73.i)
  %cmp.not.i74.i = icmp ult i32 %sub.i.i73.i, 48
  br i1 %cmp.not.i74.i, label %if.end.i76.i, label %sw.bb5.i.if.then14.i_crit_edge, !prof !11

sw.bb5.i.if.then14.i_crit_edge:                   ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then14.i

if.end.i76.i:                                     ; preds = %sw.bb5.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %38)
  %cmp3.i75.i = icmp ult i32 %38, 48
  br i1 %cmp3.i75.i, label %if.end.i76.i.sw.epilog_crit_edge, label %pskb_may_pull.exit82.i, !prof !11

if.end.i76.i.sw.epilog_crit_edge:                 ; preds = %if.end.i76.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

pskb_may_pull.exit82.i:                           ; preds = %if.end.i76.i
  %sub.i77.i = sub nuw nsw i32 48, %sub.i.i73.i
  %call13.i78.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i77.i) #3
  %cmp14.i79.not.i = icmp eq ptr %call13.i78.i, null
  br i1 %cmp14.i79.not.i, label %pskb_may_pull.exit82.i.sw.epilog_crit_edge, label %pskb_may_pull.exit82.i.if.then14.i_crit_edge, !prof !11

pskb_may_pull.exit82.i.if.then14.i_crit_edge:     ; preds = %pskb_may_pull.exit82.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then14.i

pskb_may_pull.exit82.i.sw.epilog_crit_edge:       ; preds = %pskb_may_pull.exit82.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then14.i:                                      ; preds = %pskb_may_pull.exit82.i.if.then14.i_crit_edge, %sw.bb5.i.if.then14.i_crit_edge
  %41 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %head.i.i, align 8
  %43 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %network_header.i.i, align 4
  %conv.i85.i = zext i16 %44 to i32
  %add.ptr.i86.i = getelementptr i8, ptr %42, i32 %conv.i85.i
  %check17.i = getelementptr i8, ptr %add.ptr.i86.i, i32 46
  %45 = ptrtoint ptr %check17.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %check17.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %46)
  %tobool19.not.i = icmp eq i16 %46, 0
  br i1 %tobool19.not.i, label %lor.lhs.false.i, label %if.then14.i.if.then22.i_crit_edge

if.then14.i.if.then22.i_crit_edge:                ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then22.i

lor.lhs.false.i:                                  ; preds = %if.then14.i
  %ip_summed.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15
  %47 = ptrtoint ptr %ip_summed.i to i32
  call void @__asan_load2_noabort(i32 %47)
  %bf.load.i = load i16, ptr %ip_summed.i, align 8
  %48 = and i16 %bf.load.i, 1536
  call void @__sanitizer_cov_trace_const_cmp2(i16 1536, i16 %48)
  %cmp.i = icmp eq i16 %48, 1536
  br i1 %cmp.i, label %lor.lhs.false.i.if.then22.i_crit_edge, label %lor.lhs.false.i.sw.epilog_crit_edge

lor.lhs.false.i.sw.epilog_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

lor.lhs.false.i.if.then22.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then22.i

if.then22.i:                                      ; preds = %lor.lhs.false.i.if.then22.i_crit_edge, %if.then14.i.if.then22.i_crit_edge
  %locator_match.i.i88.i = getelementptr inbounds %struct.ila_params, ptr %p, i32 0, i32 1
  %49 = ptrtoint ptr %locator_match.i.i88.i to i32
  call void @__asan_load8_noabort(i32 %49)
  %50 = load i64, ptr %locator_match.i.i88.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %50)
  %tobool.not.i.i89.i = icmp eq i64 %50, 0
  br i1 %tobool.not.i.i89.i, label %if.else.i.i98.i, label %if.then.i.i91.i

if.then.i.i91.i:                                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #5
  %csum_diff.i.i90.i = getelementptr inbounds %struct.ila_params, ptr %p, i32 0, i32 2
  %51 = ptrtoint ptr %csum_diff.i.i90.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %csum_diff.i.i90.i, align 8
  br label %get_csum_diff.exit100.i

if.else.i.i98.i:                                  ; preds = %if.then22.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %diff.i.i.i87.i) #3
  %53 = getelementptr inbounds [4 x i32], ptr %diff.i.i.i87.i, i32 0, i32 1
  %54 = getelementptr inbounds [4 x i32], ptr %diff.i.i.i87.i, i32 0, i32 2
  %55 = getelementptr inbounds [4 x i32], ptr %diff.i.i.i87.i, i32 0, i32 3
  %56 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %p, align 4
  %neg.i.i.i93.i = xor i32 %57, -1
  %58 = ptrtoint ptr %diff.i.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %neg.i.i.i93.i, ptr %diff.i.i.i87.i, align 4
  %arrayidx1.i.i.i94.i = getelementptr i32, ptr %p, i32 1
  %59 = ptrtoint ptr %arrayidx1.i.i.i94.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx1.i.i.i94.i, align 4
  %neg2.i.i.i95.i = xor i32 %60, -1
  %61 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %neg2.i.i.i95.i, ptr %53, align 4
  %62 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %daddr, align 4
  %64 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %54, align 4
  %arrayidx6.i.i.i96.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %65 = ptrtoint ptr %arrayidx6.i.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx6.i.i.i96.i, align 4
  %67 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %55, align 4
  %call.i.i.i97.i = call i32 @csum_partial(ptr noundef nonnull %diff.i.i.i87.i, i32 noundef 16, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %diff.i.i.i87.i) #3
  br label %get_csum_diff.exit100.i

get_csum_diff.exit100.i:                          ; preds = %if.else.i.i98.i, %if.then.i.i91.i
  %retval.0.i.i99.i = phi i32 [ %52, %if.then.i.i91.i ], [ %call.i.i.i97.i, %if.else.i.i98.i ]
  call void @inet_proto_csum_replace_by_diff(ptr noundef %check17.i, ptr noundef %skb, i32 noundef %retval.0.i.i99.i, i1 noundef zeroext true) #3
  %68 = ptrtoint ptr %check17.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %check17.i, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %69)
  %tobool26.not.i = icmp eq i16 %69, 0
  br i1 %tobool26.not.i, label %if.then27.i, label %get_csum_diff.exit100.i.sw.epilog_crit_edge

get_csum_diff.exit100.i.sw.epilog_crit_edge:      ; preds = %get_csum_diff.exit100.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then27.i:                                      ; preds = %get_csum_diff.exit100.i
  call void @__sanitizer_cov_trace_pc() #5
  %70 = ptrtoint ptr %check17.i to i32
  call void @__asan_store2_noabort(i32 %70)
  store i16 -1, ptr %check17.i, align 2
  br label %sw.epilog

sw.bb32.i:                                        ; preds = %sw.bb
  %len.i.i101.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %71 = ptrtoint ptr %len.i.i101.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %len.i.i101.i, align 4
  %data_len.i.i102.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %73 = ptrtoint ptr %data_len.i.i102.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %data_len.i.i102.i, align 8
  %sub.i.i103.i = sub i32 %72, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %sub.i.i103.i)
  %cmp.not.i104.i = icmp ult i32 %sub.i.i103.i, 48
  br i1 %cmp.not.i104.i, label %if.end.i106.i, label %sw.bb32.i.if.then41.i_crit_edge, !prof !11

sw.bb32.i.if.then41.i_crit_edge:                  ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then41.i

if.end.i106.i:                                    ; preds = %sw.bb32.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %72)
  %cmp3.i105.i = icmp ult i32 %72, 48
  br i1 %cmp3.i105.i, label %if.end.i106.i.sw.epilog_crit_edge, label %pskb_may_pull.exit112.i, !prof !11

if.end.i106.i.sw.epilog_crit_edge:                ; preds = %if.end.i106.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

pskb_may_pull.exit112.i:                          ; preds = %if.end.i106.i
  %sub.i107.i = sub nuw nsw i32 48, %sub.i.i103.i
  %call13.i108.i = tail call ptr @__pskb_pull_tail(ptr noundef %skb, i32 noundef %sub.i107.i) #3
  %cmp14.i109.not.i = icmp eq ptr %call13.i108.i, null
  br i1 %cmp14.i109.not.i, label %pskb_may_pull.exit112.i.sw.epilog_crit_edge, label %pskb_may_pull.exit112.i.if.then41.i_crit_edge, !prof !11

pskb_may_pull.exit112.i.if.then41.i_crit_edge:    ; preds = %pskb_may_pull.exit112.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then41.i

pskb_may_pull.exit112.i.sw.epilog_crit_edge:      ; preds = %pskb_may_pull.exit112.i
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.then41.i:                                      ; preds = %pskb_may_pull.exit112.i.if.then41.i_crit_edge, %sw.bb32.i.if.then41.i_crit_edge
  %75 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %head.i.i, align 8
  %77 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %network_header.i.i, align 4
  %conv.i115.i = zext i16 %78 to i32
  %add.ptr.i116.i = getelementptr i8, ptr %76, i32 %conv.i115.i
  %locator_match.i.i118.i = getelementptr inbounds %struct.ila_params, ptr %p, i32 0, i32 1
  %79 = ptrtoint ptr %locator_match.i.i118.i to i32
  call void @__asan_load8_noabort(i32 %79)
  %80 = load i64, ptr %locator_match.i.i118.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %80)
  %tobool.not.i.i119.i = icmp eq i64 %80, 0
  br i1 %tobool.not.i.i119.i, label %if.else.i.i128.i, label %if.then.i.i121.i

if.then.i.i121.i:                                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #5
  %csum_diff.i.i120.i = getelementptr inbounds %struct.ila_params, ptr %p, i32 0, i32 2
  %81 = ptrtoint ptr %csum_diff.i.i120.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %csum_diff.i.i120.i, align 8
  br label %get_csum_diff.exit130.i

if.else.i.i128.i:                                 ; preds = %if.then41.i
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %diff.i.i.i117.i) #3
  %83 = getelementptr inbounds [4 x i32], ptr %diff.i.i.i117.i, i32 0, i32 1
  %84 = getelementptr inbounds [4 x i32], ptr %diff.i.i.i117.i, i32 0, i32 2
  %85 = getelementptr inbounds [4 x i32], ptr %diff.i.i.i117.i, i32 0, i32 3
  %86 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %p, align 4
  %neg.i.i.i123.i = xor i32 %87, -1
  %88 = ptrtoint ptr %diff.i.i.i117.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %neg.i.i.i123.i, ptr %diff.i.i.i117.i, align 4
  %arrayidx1.i.i.i124.i = getelementptr i32, ptr %p, i32 1
  %89 = ptrtoint ptr %arrayidx1.i.i.i124.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx1.i.i.i124.i, align 4
  %neg2.i.i.i125.i = xor i32 %90, -1
  %91 = ptrtoint ptr %83 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %neg2.i.i.i125.i, ptr %83, align 4
  %92 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %daddr, align 4
  %94 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %93, ptr %84, align 4
  %arrayidx6.i.i.i126.i = getelementptr %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 6, i32 0, i32 0, i32 1
  %95 = ptrtoint ptr %arrayidx6.i.i.i126.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %arrayidx6.i.i.i126.i, align 4
  %97 = ptrtoint ptr %85 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %85, align 4
  %call.i.i.i127.i = call i32 @csum_partial(ptr noundef nonnull %diff.i.i.i117.i, i32 noundef 16, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %diff.i.i.i117.i) #3
  br label %get_csum_diff.exit130.i

get_csum_diff.exit130.i:                          ; preds = %if.else.i.i128.i, %if.then.i.i121.i
  %retval.0.i.i129.i = phi i32 [ %82, %if.then.i.i121.i ], [ %call.i.i.i127.i, %if.else.i.i128.i ]
  %icmp6_cksum.i = getelementptr i8, ptr %add.ptr.i116.i, i32 42
  call void @inet_proto_csum_replace_by_diff(ptr noundef %icmp6_cksum.i, ptr noundef %skb, i32 noundef %retval.0.i.i129.i, i1 noundef zeroext true) #3
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  %ident = getelementptr inbounds %struct.anon.151, ptr %daddr, i32 0, i32 1
  %98 = ptrtoint ptr %ident to i32
  call void @__asan_load8_noabort(i32 %98)
  %.unpack46 = load i64, ptr %ident, align 8
  %99 = and i64 %.unpack46, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %99)
  %tobool.i.not = icmp eq i64 %99, 0
  br i1 %sir2ila, label %if.then, label %if.else

if.then:                                          ; preds = %sw.bb2
  br i1 %tobool.i.not, label %if.then.if.end34_crit_edge, label %do.end, !prof !12

if.then.if.end34_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 132, i32 noundef 9, ptr noundef null) #3
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb2
  br i1 %tobool.i.not, label %if.else.sw.epilog_crit_edge, label %if.else.if.end34_crit_edge

if.else.if.end34_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end34

if.else.sw.epilog_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  br label %sw.epilog

if.end34:                                         ; preds = %if.else.if.end34_crit_edge, %if.then.if.end34_crit_edge
  %locator_match.i.i = getelementptr inbounds %struct.ila_params, ptr %p, i32 0, i32 1
  %100 = ptrtoint ptr %locator_match.i.i to i32
  call void @__asan_load8_noabort(i32 %100)
  %101 = load i64, ptr %locator_match.i.i, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %101)
  %tobool.not.i.i = icmp eq i64 %101, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  %csum_diff.i.i = getelementptr inbounds %struct.ila_params, ptr %p, i32 0, i32 2
  %102 = ptrtoint ptr %csum_diff.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %csum_diff.i.i, align 8
  br label %ila_csum_do_neutral_fmt.exit

if.else.i.i:                                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %diff.i.i.i) #3
  %104 = getelementptr inbounds [4 x i32], ptr %diff.i.i.i, i32 0, i32 1
  %105 = getelementptr inbounds [4 x i32], ptr %diff.i.i.i, i32 0, i32 2
  %106 = getelementptr inbounds [4 x i32], ptr %diff.i.i.i, i32 0, i32 3
  %107 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %p, align 4
  %neg.i.i.i = xor i32 %108, -1
  %109 = ptrtoint ptr %diff.i.i.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %neg.i.i.i, ptr %diff.i.i.i, align 4
  %arrayidx1.i.i.i = getelementptr i32, ptr %p, i32 1
  %110 = ptrtoint ptr %arrayidx1.i.i.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %arrayidx1.i.i.i, align 4
  %neg2.i.i.i = xor i32 %111, -1
  %112 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %neg2.i.i.i, ptr %104, align 4
  %113 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %daddr, align 4
  %115 = ptrtoint ptr %105 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %114, ptr %105, align 4
  %arrayidx6.i.i.i = getelementptr i32, ptr %daddr, i32 1
  %116 = ptrtoint ptr %arrayidx6.i.i.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %arrayidx6.i.i.i, align 4
  %118 = ptrtoint ptr %106 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %117, ptr %106, align 4
  %call.i.i.i = call i32 @csum_partial(ptr noundef nonnull %diff.i.i.i, i32 noundef 16, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %diff.i.i.i) #3
  br label %ila_csum_do_neutral_fmt.exit

ila_csum_do_neutral_fmt.exit:                     ; preds = %if.else.i.i, %if.then.i.i
  %retval.0.i.i = phi i32 [ %103, %if.then.i.i ], [ %call.i.i.i, %if.else.i.i ]
  %ident.i = getelementptr inbounds %struct.anon.151, ptr %daddr, i32 0, i32 1
  %arrayidx.i = getelementptr [4 x i16], ptr %ident.i, i32 0, i32 3
  %119 = ptrtoint ptr %ident.i to i32
  call void @__asan_load8_noabort(i32 %119)
  %.unpack.i = load i64, ptr %ident.i, align 8
  %120 = and i64 %.unpack.i, 1152921504606846976
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %120)
  %tobool.i.not.i = icmp eq i64 %120, 0
  %cond.i = select i1 %tobool.i.not.i, i32 -268435457, i32 268435456
  %add.i.i = add i32 %cond.i, %retval.0.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i, i32 %cond.i)
  %cmp.i.i = icmp ult i32 %add.i.i, %cond.i
  %conv.i.i50 = zext i1 %cmp.i.i to i32
  %121 = trunc i64 %.unpack.i to i32
  %conv.i19.i = and i32 %121, 65535
  %add1.i.i = add i32 %add.i.i, %conv.i19.i
  %add.i20.i = add i32 %add1.i.i, %conv.i.i50
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i20.i, i32 %conv.i19.i)
  %cmp.i21.i = icmp ult i32 %add.i20.i, %conv.i19.i
  %conv.i22.i = zext i1 %cmp.i21.i to i32
  %add1.i23.i = add i32 %add.i20.i, %conv.i22.i
  %122 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i23.i) #6, !srcloc !13
  %neg.i.i = xor i32 %122, -1
  %shr.i.i = lshr i32 %neg.i.i, 16
  %conv.i24.i = trunc i32 %shr.i.i to i16
  %neg.i = xor i16 %conv.i24.i, -1
  %123 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store2_noabort(i32 %123)
  store i16 %neg.i, ptr %arrayidx.i, align 2
  %124 = lshr i64 %.unpack.i, 56
  %125 = trunc i64 %124 to i8
  %bf.set.i = xor i8 %125, 16
  %126 = ptrtoint ptr %ident.i to i32
  call void @__asan_store1_noabort(i32 %126)
  store i8 %bf.set.i, ptr %ident.i, align 8
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  %locator_match.i.i52 = getelementptr inbounds %struct.ila_params, ptr %p, i32 0, i32 1
  %127 = ptrtoint ptr %locator_match.i.i52 to i32
  call void @__asan_load8_noabort(i32 %127)
  %128 = load i64, ptr %locator_match.i.i52, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %128)
  %tobool.not.i.i53 = icmp eq i64 %128, 0
  br i1 %tobool.not.i.i53, label %if.else.i.i61, label %if.then.i.i55

if.then.i.i55:                                    ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #5
  %csum_diff.i.i54 = getelementptr inbounds %struct.ila_params, ptr %p, i32 0, i32 2
  %129 = ptrtoint ptr %csum_diff.i.i54 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %csum_diff.i.i54, align 8
  br label %ila_csum_do_neutral_nofmt.exit

if.else.i.i61:                                    ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %diff.i.i.i51) #3
  %131 = getelementptr inbounds [4 x i32], ptr %diff.i.i.i51, i32 0, i32 1
  %132 = getelementptr inbounds [4 x i32], ptr %diff.i.i.i51, i32 0, i32 2
  %133 = getelementptr inbounds [4 x i32], ptr %diff.i.i.i51, i32 0, i32 3
  %134 = ptrtoint ptr %p to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %p, align 4
  %neg.i.i.i56 = xor i32 %135, -1
  %136 = ptrtoint ptr %diff.i.i.i51 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %neg.i.i.i56, ptr %diff.i.i.i51, align 4
  %arrayidx1.i.i.i57 = getelementptr i32, ptr %p, i32 1
  %137 = ptrtoint ptr %arrayidx1.i.i.i57 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %arrayidx1.i.i.i57, align 4
  %neg2.i.i.i58 = xor i32 %138, -1
  %139 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %neg2.i.i.i58, ptr %131, align 4
  %140 = ptrtoint ptr %daddr to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %daddr, align 4
  %142 = ptrtoint ptr %132 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 %141, ptr %132, align 4
  %arrayidx6.i.i.i59 = getelementptr i32, ptr %daddr, i32 1
  %143 = ptrtoint ptr %arrayidx6.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %arrayidx6.i.i.i59, align 4
  %145 = ptrtoint ptr %133 to i32
  call void @__asan_store4_noabort(i32 %145)
  store i32 %144, ptr %133, align 4
  %call.i.i.i60 = call i32 @csum_partial(ptr noundef nonnull %diff.i.i.i51, i32 noundef 16, i32 noundef 0) #3
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %diff.i.i.i51) #3
  br label %ila_csum_do_neutral_nofmt.exit

ila_csum_do_neutral_nofmt.exit:                   ; preds = %if.else.i.i61, %if.then.i.i55
  %retval.0.i.i62 = phi i32 [ %130, %if.then.i.i55 ], [ %call.i.i.i60, %if.else.i.i61 ]
  %ident.i63 = getelementptr inbounds %struct.anon.151, ptr %daddr, i32 0, i32 1
  %arrayidx.i64 = getelementptr [4 x i16], ptr %ident.i63, i32 0, i32 3
  %146 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %arrayidx.i64, align 2
  %conv.i.i65 = zext i16 %147 to i32
  %add.i.i66 = add i32 %retval.0.i.i62, %conv.i.i65
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i.i66, i32 %conv.i.i65)
  %cmp.i.i67 = icmp ult i32 %add.i.i66, %conv.i.i65
  %conv.i7.i = zext i1 %cmp.i.i67 to i32
  %add1.i.i68 = add i32 %add.i.i66, %conv.i7.i
  %148 = call i32 asm "add\09$0, $1, $1, ror #16\09@ csum_fold", "=r,r,~{cc}"(i32 %add1.i.i68) #6, !srcloc !13
  %neg.i.i69 = xor i32 %148, -1
  %shr.i.i70 = lshr i32 %neg.i.i69, 16
  %conv.i8.i = trunc i32 %shr.i.i70 to i16
  %neg.i71 = xor i16 %conv.i8.i, -1
  %149 = ptrtoint ptr %arrayidx.i64 to i32
  call void @__asan_store2_noabort(i32 %149)
  store i16 %neg.i71, ptr %arrayidx.i64, align 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %ila_csum_do_neutral_nofmt.exit, %ila_csum_do_neutral_fmt.exit, %if.else.sw.epilog_crit_edge, %do.end, %get_csum_diff.exit130.i, %pskb_may_pull.exit112.i.sw.epilog_crit_edge, %if.end.i106.i.sw.epilog_crit_edge, %if.then27.i, %get_csum_diff.exit100.i.sw.epilog_crit_edge, %lor.lhs.false.i.sw.epilog_crit_edge, %pskb_may_pull.exit82.i.sw.epilog_crit_edge, %if.end.i76.i.sw.epilog_crit_edge, %get_csum_diff.exit.i, %pskb_may_pull.exit.i.sw.epilog_crit_edge, %if.end.i.i.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  %150 = ptrtoint ptr %p to i32
  call void @__asan_load8_noabort(i32 %150)
  %151 = load i64, ptr %p, align 8
  %152 = ptrtoint ptr %daddr to i32
  call void @__asan_store8_noabort(i32 %152)
  store i64 %151, ptr %daddr, align 8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @csum_partial(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @inet_proto_csum_replace_by_diff(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__pskb_pull_tail(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { nounwind readnone }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../net/ipv6/ila/ila_common.c", i32 132, i32 8}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"branch_weights", i32 1, i32 2000}
!12 = !{!"branch_weights", i32 2000, i32 1}
!13 = !{i64 6452587}
