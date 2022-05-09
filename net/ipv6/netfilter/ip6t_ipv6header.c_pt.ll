; ModuleID = '/llk/IR_all_yes/net/ipv6/netfilter/ip6t_ipv6header.c_pt.bc'
source_filename = "../net/ipv6/netfilter/ip6t_ipv6header.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.ipv6_opt_hdr = type { i8, i8 }
%struct.xt_action_param = type { %union.anon.185, %union.anon.186, ptr, i32, i16, i8 }
%union.anon.185 = type { ptr }
%union.anon.186 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.168, %union.anon.169, [48 x i8], %union.anon.170, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.172, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.168 = type { ptr }
%union.anon.169 = type { i64 }
%union.anon.170 = type { %struct.anon.171 }
%struct.anon.171 = type { i32, ptr }
%union.anon.172 = type { %struct.anon.173 }
%struct.anon.173 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.174, i32, i32, i32, i16, i16, %union.anon.176, i32, %union.anon.177, %union.anon.178, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.174 = type { i32 }
%union.anon.176 = type { i32 }
%union.anon.177 = type { i32 }
%union.anon.178 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.28 }
%union.anon.28 = type { [4 x i32] }
%struct.ip6t_ipv6header_info = type { i8, i8, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@__UNIQUE_ID_file618 = internal constant [56 x i8] c"ip6t_ipv6header.file=net/ipv6/netfilter/ip6t_ipv6header\00", section ".modinfo", align 1
@__UNIQUE_ID_license619 = internal constant [28 x i8] c"ip6t_ipv6header.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_description620 = internal constant [61 x i8] c"ip6t_ipv6header.description=Xtables: IPv6 header types match\00", section ".modinfo", align 1
@__UNIQUE_ID_author621 = internal constant [59 x i8] c"ip6t_ipv6header.author=Andras Kis-Szabo <kisza@sch.bme.hu>\00", section ".modinfo", align 1
@ipv6header_mt6_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"ipv6header\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ipv6header_mt6, ptr @ipv6header_mt6_check, ptr null, ptr null, ptr null, i32 3, i32 0, i32 0, i16 0, i16 10 }, section ".data..read_mostly", align 4
@__initcall__kmod_ip6t_ipv6header__622_152_ipv6header_mt6_init6 = internal global ptr @ipv6header_mt6_init, section ".initcall6.init", align 4
@__exitcall_ipv6header_mt6_exit = internal global ptr @ipv6header_mt6_exit, section ".exitcall.exit", align 4
@__sancov_gen_cov_switch_values = internal global [9 x i64] [i64 7, i64 8, i64 0, i64 43, i64 44, i64 50, i64 51, i64 59, i64 60]
@__sancov_gen_cov_switch_values.1 = internal global [4 x i64] [i64 2, i64 8, i64 44, i64 51]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 43, i64 60]
@__sancov_gen_cov_switch_values.3 = internal global [4 x i64] [i64 2, i64 8, i64 50, i64 59]
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_author621, ptr @__UNIQUE_ID_description620, ptr @__UNIQUE_ID_file618, ptr @__UNIQUE_ID_license619, ptr @__exitcall_ipv6header_mt6_exit, ptr @__initcall__kmod_ip6t_ipv6header__622_152_ipv6header_mt6_init6, ptr @ipv6header_mt6_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ipv6header_mt6_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_match(ptr noundef nonnull @ipv6header_mt6_reg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ipv6header_mt6_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @ipv6header_mt6_reg) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @ipv6header_mt6(ptr noundef %skb, ptr nocapture noundef %par) #2 align 64 {
entry:
  %_hdr = alloca %struct.ipv6_opt_hdr, align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %3 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %5 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %6 to i32
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 %conv.i.i
  %nexthdr1 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 3
  %7 = ptrtoint ptr %nexthdr1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %nexthdr1, align 2
  %len2 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %9 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %len2, align 4
  %sub = add i32 %10, -40
  %11 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %_hdr, i32 0, i32 1
  %data_len.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 7
  %tobool2.not.i.i = icmp eq ptr %skb, null
  %data.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  br label %while.cond

while.cond:                                       ; preds = %cleanup, %entry
  %temp.0 = phi i32 [ 0, %entry ], [ %or45, %cleanup ]
  %len.0 = phi i32 [ %sub, %entry ], [ %sub47, %cleanup ]
  %nexthdr.0 = phi i8 [ %8, %entry ], [ %30, %cleanup ]
  %ptr.0 = phi i32 [ 40, %entry ], [ %add48, %cleanup ]
  %12 = zext i8 %nexthdr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values)
  switch i8 %nexthdr.0, label %while.cond.while.end_crit_edge [
    i8 0, label %while.cond.while.body_crit_edge
    i8 43, label %while.cond.while.body_crit_edge220
    i8 44, label %while.cond.while.body_crit_edge221
    i8 50, label %while.cond.while.body_crit_edge222
    i8 51, label %while.cond.while.body_crit_edge223
    i8 59, label %while.cond.while.body_crit_edge224
    i8 60, label %while.cond.while.body_crit_edge225
  ]

while.cond.while.body_crit_edge225:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.body_crit_edge224:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.body_crit_edge223:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.body_crit_edge222:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.body_crit_edge221:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.body_crit_edge220:               ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.body_crit_edge:                  ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.body

while.cond.while.end_crit_edge:                   ; preds = %while.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %while.end

while.body:                                       ; preds = %while.cond.while.body_crit_edge, %while.cond.while.body_crit_edge220, %while.cond.while.body_crit_edge221, %while.cond.while.body_crit_edge222, %while.cond.while.body_crit_edge223, %while.cond.while.body_crit_edge224, %while.cond.while.body_crit_edge225
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %_hdr) #5
  %13 = ptrtoint ptr %_hdr to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 -1, ptr %_hdr, align 1, !annotation !22
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 -1, ptr %11, align 1, !annotation !22
  call void @__sanitizer_cov_trace_const_cmp1(i8 59, i8 %nexthdr.0)
  %cmp = icmp eq i8 %nexthdr.0, 59
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #7
  %or = or i32 %temp.0, 2
  br label %cleanup.thread153

if.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %len.0)
  %cmp5 = icmp slt i32 %len.0, 2
  br i1 %cmp5, label %if.end.cleanup.thread_crit_edge, label %if.end8

if.end.cleanup.thread_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp1(i8 50, i8 %nexthdr.0)
  %cmp10 = icmp eq i8 %nexthdr.0, 50
  br i1 %cmp10, label %if.then12, label %if.end14

if.then12:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %or13 = or i32 %temp.0, 4
  br label %cleanup.thread153

if.end14:                                         ; preds = %if.end8
  %15 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %len2, align 4
  %17 = ptrtoint ptr %data_len.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %data_len.i.i, align 8
  %19 = add i32 %ptr.0, %18
  %sub.i1.i = sub i32 %16, %19
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sub.i1.i)
  %cmp.i.i = icmp sgt i32 %sub.i1.i, 1
  br i1 %cmp.i.i, label %skb_header_pointer.exit, label %if.end.i.i, !prof !23

if.end.i.i:                                       ; preds = %if.end14
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.then17_crit_edge, label %lor.lhs.false.i.i

if.end.i.i.if.then17_crit_edge:                   ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

lor.lhs.false.i.i:                                ; preds = %if.end.i.i
  %call.i.i = call i32 @skb_copy_bits(ptr noundef nonnull %skb, i32 noundef %ptr.0, ptr noundef nonnull %_hdr, i32 noundef 2) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp3.i.i = icmp slt i32 %call.i.i, 0
  br i1 %cmp3.i.i, label %lor.lhs.false.i.i.if.then17_crit_edge, label %lor.lhs.false.i.i.if.end18_crit_edge

lor.lhs.false.i.i.if.end18_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

lor.lhs.false.i.i.if.then17_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

skb_header_pointer.exit:                          ; preds = %if.end14
  %20 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data.i, align 4
  %add.ptr.i.i126 = getelementptr i8, ptr %21, i32 %ptr.0
  %tobool16.not = icmp eq ptr %add.ptr.i.i126, null
  br i1 %tobool16.not, label %skb_header_pointer.exit.if.then17_crit_edge, label %skb_header_pointer.exit.if.end18_crit_edge

skb_header_pointer.exit.if.end18_crit_edge:       ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18

skb_header_pointer.exit.if.then17_crit_edge:      ; preds = %skb_header_pointer.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then17

if.then17:                                        ; preds = %skb_header_pointer.exit.if.then17_crit_edge, %lor.lhs.false.i.i.if.then17_crit_edge, %if.end.i.i.if.then17_crit_edge
  %hotdrop = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 5
  %22 = ptrtoint ptr %hotdrop to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 1, ptr %hotdrop, align 2
  br label %cleanup.thread

if.end18:                                         ; preds = %skb_header_pointer.exit.if.end18_crit_edge, %lor.lhs.false.i.i.if.end18_crit_edge
  %retval.0.i.i134 = phi ptr [ %add.ptr.i.i126, %skb_header_pointer.exit.if.end18_crit_edge ], [ %_hdr, %lor.lhs.false.i.i.if.end18_crit_edge ]
  %23 = zext i8 %nexthdr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %nexthdr.0, label %if.end35 [
    i8 44, label %if.end18.sw.epilog_crit_edge
    i8 51, label %if.end35.thread141
  ]

if.end18.sw.epilog_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end35.thread141:                               ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %hdrlen27 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %retval.0.i.i134, i32 0, i32 1
  %24 = ptrtoint ptr %hdrlen27 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hdrlen27, align 1
  %conv28 = zext i8 %25 to i32
  %add = shl nuw nsw i32 %conv28, 2
  %shl = add nuw nsw i32 %add, 8
  br label %sw.epilog

if.end35:                                         ; preds = %if.end18
  %hdrlen30 = getelementptr inbounds %struct.ipv6_opt_hdr, ptr %retval.0.i.i134, i32 0, i32 1
  %26 = ptrtoint ptr %hdrlen30 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %hdrlen30, align 1
  %conv31 = zext i8 %27 to i32
  %add32 = shl nuw nsw i32 %conv31, 3
  %shl33 = add nuw nsw i32 %add32, 8
  %28 = zext i8 %nexthdr.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.2)
  switch i8 %nexthdr.0, label %if.end35.cleanup.thread_crit_edge [
    i8 0, label %if.end35.sw.epilog_crit_edge
    i8 43, label %sw.bb38
    i8 60, label %sw.bb44
  ]

if.end35.sw.epilog_crit_edge:                     ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

if.end35.cleanup.thread_crit_edge:                ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread

sw.bb38:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb44:                                          ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb44, %sw.bb38, %if.end35.sw.epilog_crit_edge, %if.end35.thread141, %if.end18.sw.epilog_crit_edge
  %.sink = phi i32 [ 64, %sw.bb44 ], [ 8, %if.end35.thread141 ], [ 32, %sw.bb38 ], [ 128, %if.end35.sw.epilog_crit_edge ], [ 16, %if.end18.sw.epilog_crit_edge ]
  %hdrlen.0139 = phi i32 [ %shl33, %sw.bb44 ], [ %shl, %if.end35.thread141 ], [ %shl33, %sw.bb38 ], [ %shl33, %if.end35.sw.epilog_crit_edge ], [ 8, %if.end18.sw.epilog_crit_edge ]
  %or45 = or i32 %temp.0, %.sink
  %29 = ptrtoint ptr %retval.0.i.i134 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %retval.0.i.i134, align 1
  %add48 = add i32 %hdrlen.0139, %ptr.0
  %31 = ptrtoint ptr %len2 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len2, align 4
  %cmp50 = icmp ugt i32 %add48, %32
  br i1 %cmp50, label %sw.epilog.cleanup.thread153_crit_edge, label %cleanup

sw.epilog.cleanup.thread153_crit_edge:            ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.thread153

cleanup.thread:                                   ; preds = %if.end35.cleanup.thread_crit_edge, %if.then17, %if.end.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr) #5
  br label %cleanup86

cleanup.thread153:                                ; preds = %sw.epilog.cleanup.thread153_crit_edge, %if.then12, %if.then
  %temp.2.ph = phi i32 [ %or13, %if.then12 ], [ %or, %if.then ], [ %or45, %sw.epilog.cleanup.thread153_crit_edge ]
  %nexthdr.1.ph = phi i8 [ 50, %if.then12 ], [ 59, %if.then ], [ %30, %sw.epilog.cleanup.thread153_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr) #5
  br label %while.end

cleanup:                                          ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %sub47 = sub nsw i32 %len.0, %hdrlen.0139
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %_hdr) #5
  br label %while.cond

while.end:                                        ; preds = %cleanup.thread153, %while.cond.while.end_crit_edge
  %temp.3 = phi i32 [ %temp.2.ph, %cleanup.thread153 ], [ %temp.0, %while.cond.while.end_crit_edge ]
  %nexthdr.2 = phi i8 [ %nexthdr.1.ph, %cleanup.thread153 ], [ %nexthdr.0, %while.cond.while.end_crit_edge ]
  %33 = zext i8 %nexthdr.2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values.3)
  switch i8 %nexthdr.2, label %if.then62 [
    i8 59, label %while.end.if.end64_crit_edge
    i8 50, label %while.end.if.end64_crit_edge226
  ]

while.end.if.end64_crit_edge226:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

while.end.if.end64_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end64

if.then62:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #7
  %or63 = or i32 %temp.3, 1
  br label %if.end64

if.end64:                                         ; preds = %if.then62, %while.end.if.end64_crit_edge, %while.end.if.end64_crit_edge226
  %temp.4 = phi i32 [ %or63, %if.then62 ], [ %temp.3, %while.end.if.end64_crit_edge ], [ %temp.3, %while.end.if.end64_crit_edge226 ]
  %modeflag = getelementptr inbounds %struct.ip6t_ipv6header_info, ptr %2, i32 0, i32 2
  %34 = ptrtoint ptr %modeflag to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %modeflag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool65.not = icmp eq i8 %35, 0
  br i1 %tobool65.not, label %if.else73, label %if.then66

if.then66:                                        ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #7
  %36 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %2, align 1
  %conv67 = zext i8 %37 to i32
  %xor = xor i32 %temp.4, %conv67
  %invflags = getelementptr inbounds %struct.ip6t_ipv6header_info, ptr %2, i32 0, i32 1
  %38 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %invflags, align 1
  %conv68 = zext i8 %39 to i32
  %xor69 = xor i32 %xor, %conv68
  %and = and i32 %xor69, %conv67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool72.not = icmp eq i32 %and, 0
  br label %cleanup86

if.else73:                                        ; preds = %if.end64
  %invflags74 = getelementptr inbounds %struct.ip6t_ipv6header_info, ptr %2, i32 0, i32 1
  %40 = ptrtoint ptr %invflags74 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %invflags74, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool75.not = icmp eq i8 %41, 0
  %42 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %2, align 1
  %conv83 = zext i8 %43 to i32
  br i1 %tobool75.not, label %if.else81, label %if.then76

if.then76:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %temp.4, i32 %conv83)
  %cmp79 = icmp ne i32 %temp.4, %conv83
  br label %cleanup86

if.else81:                                        ; preds = %if.else73
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_cmp4(i32 %temp.4, i32 %conv83)
  %cmp84 = icmp eq i32 %temp.4, %conv83
  br label %cleanup86

cleanup86:                                        ; preds = %if.else81, %if.then76, %if.then66, %cleanup.thread
  %retval.2 = phi i1 [ %tobool72.not, %if.then66 ], [ %cmp79, %if.then76 ], [ %cmp84, %if.else81 ], [ false, %cleanup.thread ]
  ret i1 %retval.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ipv6header_mt6_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %modeflag = getelementptr inbounds %struct.ip6t_ipv6header_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %modeflag to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %modeflag, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %invflags = getelementptr inbounds %struct.ip6t_ipv6header_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %invflags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %invflags, align 1
  %6 = add i8 %5, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %switch.selectcmp = icmp ult i8 %6, 2
  %7 = select i1 %switch.selectcmp, i32 0, i32 -22
  br label %cleanup

cleanup:                                          ; preds = %land.lhs.true, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %land.lhs.true ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_copy_bits(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11}
!llvm.module.flags = !{!13, !14, !15, !16, !17, !18, !19, !20}
!llvm.ident = !{!21}

!0 = !{ptr @__UNIQUE_ID_file618, !1, !"__UNIQUE_ID_file618", i1 false, i1 false}
!1 = !{!"../net/ipv6/netfilter/ip6t_ipv6header.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_license619, !1, !"__UNIQUE_ID_license619", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description620, !4, !"__UNIQUE_ID_description620", i1 false, i1 false}
!4 = !{!"../net/ipv6/netfilter/ip6t_ipv6header.c", i32 23, i32 1}
!5 = !{ptr @__UNIQUE_ID_author621, !6, !"__UNIQUE_ID_author621", i1 false, i1 false}
!6 = !{!"../net/ipv6/netfilter/ip6t_ipv6header.c", i32 24, i32 1}
!7 = !{ptr @__initcall__kmod_ip6t_ipv6header__622_152_ipv6header_mt6_init6, !8, !"__initcall__kmod_ip6t_ipv6header__622_152_ipv6header_mt6_init6", i1 false, i1 false}
!8 = !{!"../net/ipv6/netfilter/ip6t_ipv6header.c", i32 152, i32 1}
!9 = !{ptr @__exitcall_ipv6header_mt6_exit, !10, !"__exitcall_ipv6header_mt6_exit", i1 false, i1 false}
!10 = !{!"../net/ipv6/netfilter/ip6t_ipv6header.c", i32 153, i32 1}
!11 = !{ptr @ipv6header_mt6_reg, !12, !"ipv6header_mt6_reg", i1 false, i1 false}
!12 = !{!"../net/ipv6/netfilter/ip6t_ipv6header.c", i32 132, i32 24}
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
!23 = !{!"branch_weights", i32 2000, i32 1}
