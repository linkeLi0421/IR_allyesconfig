; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_HL.c_pt.bc'
source_filename = "../net/netfilter/xt_HL.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_target = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.xt_action_param = type { %union.anon.141, %union.anon.142, ptr, i32, i16, i8 }
%union.anon.141 = type { ptr }
%union.anon.142 = type { ptr }
%struct.sk_buff = type { %union.anon, %union.anon.124, %union.anon.125, [48 x i8], %union.anon.126, i32, i32, i32, i16, i16, i16, [0 x i8], i8, i8, [4 x i8], %union.anon.128, ptr, ptr, ptr, ptr, i32, %struct.refcount_struct, ptr }
%union.anon = type { %struct.anon }
%struct.anon = type { ptr, ptr, %union.anon.0 }
%union.anon.0 = type { ptr }
%union.anon.124 = type { ptr }
%union.anon.125 = type { i64 }
%union.anon.126 = type { %struct.anon.127 }
%struct.anon.127 = type { i32, ptr }
%union.anon.128 = type { %struct.anon.129 }
%struct.anon.129 = type <{ [0 x i8], i16, [0 x i8], i24, i16, %union.anon.130, i32, i32, i32, i16, i16, %union.anon.132, i32, %union.anon.133, %union.anon.134, i16, i16, i16, i16, i16, i16, i16, i64 }>
%union.anon.130 = type { i32 }
%union.anon.132 = type { i32 }
%union.anon.133 = type { i32 }
%union.anon.134 = type { i16 }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.ipt_TTL_info = type { i8, i8 }
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.ip6t_HL_info = type { i8, i8 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }

@__UNIQUE_ID_author489 = internal constant [50 x i8] c"xt_HL.author=Harald Welte <laforge@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_author490 = internal constant [55 x i8] c"xt_HL.author=Maciej Soltysiak <solt@dns.toxicfilms.tv>\00", section ".modinfo", align 1
@__UNIQUE_ID_description491 = internal constant [72 x i8] c"xt_HL.description=Xtables: Hoplimit/TTL Limit field modification target\00", section ".modinfo", align 1
@__UNIQUE_ID_file492 = internal constant [31 x i8] c"xt_HL.file=net/netfilter/xt_HL\00", section ".modinfo", align 1
@__UNIQUE_ID_license493 = internal constant [18 x i8] c"xt_HL.license=GPL\00", section ".modinfo", align 1
@hl_tg_reg = internal global [2 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"TTL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ttl_tg, ptr @ttl_tg_check, ptr null, ptr null, ptr @.str, i32 2, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"HL\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @hl_tg6, ptr @hl_tg6_check, ptr null, ptr null, ptr @.str, i32 2, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_HL__494_156_hl_tg_init6 = internal global ptr @hl_tg_init, section ".initcall6.init", align 4
@__exitcall_hl_tg_exit = internal global ptr @hl_tg_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias495 = internal constant [20 x i8] c"xt_HL.alias=ipt_TTL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias496 = internal constant [20 x i8] c"xt_HL.alias=ip6t_HL\00", section ".modinfo", align 1
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mangle\00", [25 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 8, i64 0, i64 1, i64 2]
@___asan_gen_.2 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.3 = private constant [25 x i8] c"../net/netfilter/xt_HL.c\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.3, i32 130, i32 17 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias495, ptr @__UNIQUE_ID_alias496, ptr @__UNIQUE_ID_author489, ptr @__UNIQUE_ID_author490, ptr @__UNIQUE_ID_description491, ptr @__UNIQUE_ID_file492, ptr @__UNIQUE_ID_license493, ptr @__exitcall_hl_tg_exit, ptr @__initcall__kmod_xt_HL__494_156_hl_tg_init6, ptr @hl_tg_exit, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hl_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @xt_unregister_targets(ptr noundef nonnull @hl_tg_reg, i32 noundef 2) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_targets(ptr noundef nonnull @hl_tg_reg, i32 noundef 2) #5
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ttl_tg(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef 20) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
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
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %2, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i8 %8, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb3
    i8 2, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ttl = getelementptr inbounds %struct.ipt_TTL_info, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %ttl, align 1
  %conv2 = zext i8 %11 to i32
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ttl4 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %12 = ptrtoint ptr %ttl4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ttl4, align 4
  %conv5 = zext i8 %13 to i32
  %ttl6 = getelementptr inbounds %struct.ipt_TTL_info, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %ttl6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ttl6, align 1
  %conv7 = zext i8 %15 to i32
  %add = add nuw nsw i32 %conv7, %conv5
  %16 = tail call i32 @llvm.umin.i32(i32 %add, i32 255)
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ttl12 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %17 = ptrtoint ptr %ttl12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %ttl12, align 4
  %conv13 = zext i8 %18 to i32
  %ttl14 = getelementptr inbounds %struct.ipt_TTL_info, ptr %2, i32 0, i32 1
  %19 = ptrtoint ptr %ttl14 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %ttl14, align 1
  %conv15 = zext i8 %20 to i32
  %sub = sub nsw i32 %conv13, %conv15
  %21 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %ttl20 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %ttl20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %ttl20, align 4
  %conv21 = zext i8 %23 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb3, %sw.bb
  %new_ttl.0 = phi i32 [ %conv21, %sw.default ], [ %21, %sw.bb11 ], [ %16, %sw.bb3 ], [ %conv2, %sw.bb ]
  %ttl22 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %24 = ptrtoint ptr %ttl22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %ttl22, align 4
  %conv23 = zext i8 %25 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %new_ttl.0, i32 %conv23)
  %cmp24.not = icmp eq i32 %new_ttl.0, %conv23
  br i1 %cmp24.not, label %sw.epilog.cleanup_crit_edge, label %if.then26

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then26:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #7
  %check = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 7
  %conv23.tr = zext i8 %25 to i16
  %conv29 = shl nuw i16 %conv23.tr, 8
  %new_ttl.0.tr = trunc i32 %new_ttl.0 to i16
  %conv31 = shl nuw i16 %new_ttl.0.tr, 8
  %26 = ptrtoint ptr %check to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %check, align 2
  %neg.i = xor i16 %27, -1
  %neg.i.i = xor i16 %conv29, -1
  %add.i.i.i = add i16 %neg.i, %neg.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i.i, i16 %neg.i.i)
  %cmp.i.i.i = icmp ult i16 %add.i.i.i, %neg.i.i
  %conv6.i.i.i = zext i1 %cmp.i.i.i to i16
  %add7.i.i.i = add i16 %add.i.i.i, %conv31
  %add.i.i = add i16 %add7.i.i.i, %conv6.i.i.i
  call void @__sanitizer_cov_trace_cmp2(i16 %add.i.i, i16 %conv31)
  %cmp.i.i = icmp ult i16 %add.i.i, %conv31
  %conv6.i.i = zext i1 %cmp.i.i to i16
  %add7.i.i = add i16 %add.i.i, %conv6.i.i
  %neg4.i = xor i16 %add7.i.i, -1
  %28 = ptrtoint ptr %check to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 %neg4.i, ptr %check, align 2
  %conv32 = trunc i32 %new_ttl.0 to i8
  %29 = ptrtoint ptr %ttl22 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv32, ptr %ttl22, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then26, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ -1, %if.then26 ], [ -1, %sw.epilog.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ttl_tg_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ugt i8 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp4.not = icmp eq i8 %3, 0
  br i1 %cmp4.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %ttl = getelementptr inbounds %struct.ipt_TTL_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %ttl to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %ttl, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp7 = icmp eq i8 %5, 0
  br i1 %cmp7, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_tg6(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %call = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef 40) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
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
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %2, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %8, label %sw.default [
    i8 0, label %sw.bb
    i8 1, label %sw.bb3
    i8 2, label %sw.bb11
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %hop_limit = getelementptr inbounds %struct.ip6t_HL_info, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hop_limit, align 1
  %conv2 = zext i8 %11 to i32
  br label %sw.epilog

sw.bb3:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %hop_limit4 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %hop_limit4 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hop_limit4, align 1
  %conv5 = zext i8 %13 to i32
  %hop_limit6 = getelementptr inbounds %struct.ip6t_HL_info, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %hop_limit6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hop_limit6, align 1
  %conv7 = zext i8 %15 to i32
  %add = add nuw nsw i32 %conv7, %conv5
  %16 = tail call i32 @llvm.umin.i32(i32 %add, i32 255)
  br label %sw.epilog

sw.bb11:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %hop_limit12 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %17 = ptrtoint ptr %hop_limit12 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %hop_limit12, align 1
  %conv13 = zext i8 %18 to i32
  %hop_limit14 = getelementptr inbounds %struct.ip6t_HL_info, ptr %2, i32 0, i32 1
  %19 = ptrtoint ptr %hop_limit14 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %hop_limit14, align 1
  %conv15 = zext i8 %20 to i32
  %sub = sub nsw i32 %conv13, %conv15
  %21 = tail call i32 @llvm.smax.i32(i32 %sub, i32 0)
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %hop_limit20 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %hop_limit20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hop_limit20, align 1
  %conv21 = zext i8 %23 to i32
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb11, %sw.bb3, %sw.bb
  %new_hl.0 = phi i32 [ %conv21, %sw.default ], [ %21, %sw.bb11 ], [ %16, %sw.bb3 ], [ %conv2, %sw.bb ]
  %conv22 = trunc i32 %new_hl.0 to i8
  %hop_limit23 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %hop_limit23 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv22, ptr %hop_limit23, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -1, %sw.epilog ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @hl_tg6_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %3)
  %cmp = icmp ugt i8 %3, 2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %cmp4.not = icmp eq i8 %3, 0
  br i1 %cmp4.not, label %if.end.if.end10_crit_edge, label %land.lhs.true

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

land.lhs.true:                                    ; preds = %if.end
  %hop_limit = getelementptr inbounds %struct.ip6t_HL_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %hop_limit, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %cmp7 = icmp eq i8 %5, 0
  br i1 %cmp7, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end10_crit_edge

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.if.end10_crit_edge, %if.end.if.end10_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__UNIQUE_ID_author489, !1, !"__UNIQUE_ID_author489", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_HL.c", i32 20, i32 1}
!2 = !{ptr @__UNIQUE_ID_author490, !3, !"__UNIQUE_ID_author490", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_HL.c", i32 21, i32 1}
!4 = !{ptr @__UNIQUE_ID_description491, !5, !"__UNIQUE_ID_description491", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_HL.c", i32 22, i32 1}
!6 = !{ptr @__UNIQUE_ID_file492, !7, !"__UNIQUE_ID_file492", i1 false, i1 false}
!7 = !{!"../net/netfilter/xt_HL.c", i32 23, i32 1}
!8 = !{ptr @__UNIQUE_ID_license493, !7, !"__UNIQUE_ID_license493", i1 false, i1 false}
!9 = !{ptr @__initcall__kmod_xt_HL__494_156_hl_tg_init6, !10, !"__initcall__kmod_xt_HL__494_156_hl_tg_init6", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_HL.c", i32 156, i32 1}
!11 = !{ptr @__exitcall_hl_tg_exit, !12, !"__exitcall_hl_tg_exit", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_HL.c", i32 157, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias495, !14, !"__UNIQUE_ID_alias495", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_HL.c", i32 158, i32 1}
!15 = !{ptr @__UNIQUE_ID_alias496, !16, !"__UNIQUE_ID_alias496", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_HL.c", i32 159, i32 1}
!17 = !{ptr @.str, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_HL.c", i32 130, i32 17}
!19 = !{ptr @hl_tg_reg, !20, !"hl_tg_reg", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_HL.c", i32 123, i32 25}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
