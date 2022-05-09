; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_DSCP.c_pt.bc'
source_filename = "../net/netfilter/xt_DSCP.c"
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
%struct.iphdr = type { i8, i8, i16, i16, i16, i8, i8, i16, i32, i32 }
%struct.xt_tgchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.xt_tos_target_info = type { i8, i8 }

@__UNIQUE_ID_author489 = internal constant [52 x i8] c"xt_DSCP.author=Harald Welte <laforge@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description490 = internal constant [57 x i8] c"xt_DSCP.description=Xtables: DSCP/TOS field modification\00", section ".modinfo", align 1
@__UNIQUE_ID_file491 = internal constant [35 x i8] c"xt_DSCP.file=net/netfilter/xt_DSCP\00", section ".modinfo", align 1
@__UNIQUE_ID_license492 = internal constant [20 x i8] c"xt_DSCP.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias493 = internal constant [23 x i8] c"xt_DSCP.alias=ipt_DSCP\00", section ".modinfo", align 1
@__UNIQUE_ID_alias494 = internal constant [24 x i8] c"xt_DSCP.alias=ip6t_DSCP\00", section ".modinfo", align 1
@__UNIQUE_ID_alias495 = internal constant [22 x i8] c"xt_DSCP.alias=ipt_TOS\00", section ".modinfo", align 1
@__UNIQUE_ID_alias496 = internal constant [23 x i8] c"xt_DSCP.alias=ip6t_TOS\00", section ".modinfo", align 1
@dscp_tg_reg = internal global [4 x %struct.xt_target] [%struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"DSCP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @dscp_tg, ptr @dscp_tg_check, ptr null, ptr null, ptr @.str, i32 1, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"DSCP\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @dscp_tg6, ptr @dscp_tg_check, ptr null, ptr null, ptr @.str, i32 1, i32 0, i32 0, i16 0, i16 10 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"TOS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @tos_tg, ptr null, ptr null, ptr null, ptr @.str, i32 2, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_target { %struct.list_head zeroinitializer, [29 x i8] c"TOS\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @tos_tg6, ptr null, ptr null, ptr null, ptr @.str, i32 2, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_DSCP__497_160_dscp_tg_init6 = internal global ptr @dscp_tg_init, section ".initcall6.init", align 4
@__exitcall_dscp_tg_exit = internal global ptr @dscp_tg_exit, section ".exitcall.exit", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"mangle\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.2 = private constant [27 x i8] c"../net/netfilter/xt_DSCP.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 118, i32 13 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__UNIQUE_ID_alias493, ptr @__UNIQUE_ID_alias494, ptr @__UNIQUE_ID_alias495, ptr @__UNIQUE_ID_alias496, ptr @__UNIQUE_ID_author489, ptr @__UNIQUE_ID_description490, ptr @__UNIQUE_ID_file491, ptr @__UNIQUE_ID_license492, ptr @__exitcall_dscp_tg_exit, ptr @__initcall__kmod_xt_DSCP__497_160_dscp_tg_init6, ptr @dscp_tg_exit, ptr @.str], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dscp_tg_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @xt_unregister_targets(ptr noundef nonnull @dscp_tg_reg, i32 noundef 4) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dscp_tg_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_targets(ptr noundef nonnull @dscp_tg_reg, i32 noundef 4) #4
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dscp_tg(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tos.i, align 1
  %9 = lshr i8 %8, 2
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %9, i8 %11)
  %cmp.not = icmp eq i8 %9, %11
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %call7 = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %head.i.i, align 8
  %14 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i20 = zext i16 %15 to i32
  %add.ptr.i.i21 = getelementptr i8, ptr %13, i32 %conv.i.i20
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %2, align 1
  %shl = shl i8 %17, 2
  %check1.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i21, i32 0, i32 7
  %18 = ptrtoint ptr %check1.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %check1.i, align 2
  %conv.i = zext i16 %19 to i32
  %tos.i22 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i21, i32 0, i32 1
  %20 = ptrtoint ptr %tos.i22 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %tos.i22, align 1
  %conv2.i = zext i8 %21 to i32
  %add.i = add nuw nsw i32 %conv2.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i)
  %tobool.not.i = icmp ult i32 %add.i, 65535
  %add8.i = add nuw nsw i32 %add.i, 1
  %and10.i = and i32 %add8.i, 65535
  %check.0.i = select i1 %tobool.not.i, i32 %add.i, i32 %and10.i
  %and28.i = and i8 %21, 3
  %or29.i = or i8 %and28.i, %shl
  %conv11.i = zext i8 %or29.i to i32
  %sub.i = sub nsw i32 %check.0.i, %conv11.i
  %shr12.i = lshr i32 %sub.i, 16
  %add13.i = add nsw i32 %shr12.i, %sub.i
  %conv14.i = trunc i32 %add13.i to i16
  %22 = ptrtoint ptr %check1.i to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %conv14.i, ptr %check1.i, align 2
  %23 = ptrtoint ptr %tos.i22 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %or29.i, ptr %tos.i22, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ -1, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dscp_tg_check(ptr nocapture noundef readonly %par) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %targinfo = getelementptr inbounds %struct.xt_tgchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %targinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %targinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %3)
  %cmp = icmp ugt i8 %3, 63
  %. = select i1 %cmp, i32 -33, i32 0
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dscp_tg6(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %sum.shift = lshr i16 %8, 6
  %9 = trunc i16 %sum.shift to i8
  %10 = and i8 %9, 63
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %12)
  %cmp.not = icmp eq i8 %10, %12
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %call7 = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef 40) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool.not = icmp eq i32 %call7, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i, align 8
  %15 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i20 = zext i16 %16 to i32
  %add.ptr.i.i21 = getelementptr i8, ptr %14, i32 %conv.i.i20
  %17 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %2, align 1
  %shl = shl i8 %18, 2
  %19 = ptrtoint ptr %add.ptr.i.i21 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i21, align 2
  %and.i = and i16 %20, -4033
  %conv6.i = zext i8 %shl to i16
  %shl7.i = shl nuw nsw i16 %conv6.i, 4
  %or10.i = or i16 %shl7.i, %and.i
  store i16 %or10.i, ptr %add.ptr.i.i21, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ -1, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tos_tg(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %tos.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %7 = ptrtoint ptr %tos.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %tos.i, align 1
  %tos_mask = getelementptr inbounds %struct.xt_tos_target_info, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %tos_mask to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tos_mask, align 1
  %neg = xor i8 %10, -1
  %and = and i8 %8, %neg
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %2, align 1
  %xor = xor i8 %and, %12
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %xor)
  %cmp.not = icmp eq i8 %8, %xor
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %call8 = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %13 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %head.i.i, align 8
  %15 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i23 = zext i16 %16 to i32
  %add.ptr.i.i24 = getelementptr i8, ptr %14, i32 %conv.i.i23
  %check1.i = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i24, i32 0, i32 7
  %17 = ptrtoint ptr %check1.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %check1.i, align 2
  %conv.i = zext i16 %18 to i32
  %tos.i25 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i24, i32 0, i32 1
  %19 = ptrtoint ptr %tos.i25 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %tos.i25, align 1
  %conv2.i = zext i8 %20 to i32
  %add.i = add nuw nsw i32 %conv2.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %add.i)
  %tobool.not.i = icmp ult i32 %add.i, 65535
  %add8.i = add nuw nsw i32 %add.i, 1
  %and10.i = and i32 %add8.i, 65535
  %check.0.i = select i1 %tobool.not.i, i32 %add.i, i32 %and10.i
  %conv11.i = zext i8 %xor to i32
  %sub.i = sub nsw i32 %check.0.i, %conv11.i
  %shr12.i = lshr i32 %sub.i, 16
  %add13.i = add nsw i32 %shr12.i, %sub.i
  %conv14.i = trunc i32 %add13.i to i16
  %21 = ptrtoint ptr %check1.i to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %conv14.i, ptr %check1.i, align 2
  %22 = ptrtoint ptr %tos.i25 to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %xor, ptr %tos.i25, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ -1, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tos_tg6(ptr noundef %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
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
  %7 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %add.ptr.i.i, align 2
  %9 = lshr i16 %8, 4
  %conv1.i = trunc i16 %9 to i8
  %tos_mask = getelementptr inbounds %struct.xt_tos_target_info, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %tos_mask to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %tos_mask, align 1
  %neg = xor i8 %11, -1
  %and = and i8 %conv1.i, %neg
  %12 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %2, align 1
  %xor = xor i8 %and, %13
  call void @__sanitizer_cov_trace_cmp1(i8 %xor, i8 %conv1.i)
  %cmp.not = icmp eq i8 %xor, %conv1.i
  br i1 %cmp.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then:                                          ; preds = %entry
  %call8 = tail call i32 @skb_ensure_writable(ptr noundef %skb, i32 noundef 20) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %head.i.i, align 8
  %16 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i23 = zext i16 %17 to i32
  %add.ptr.i.i24 = getelementptr i8, ptr %15, i32 %conv.i.i23
  %18 = ptrtoint ptr %add.ptr.i.i24 to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i.i24, align 2
  %and.i = and i16 %19, -4081
  %conv6.i = zext i8 %xor to i16
  %shl7.i = shl nuw nsw i16 %conv6.i, 4
  %or10.i = or i16 %and.i, %shl7.i
  store i16 %or10.i, ptr %add.ptr.i.i24, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ -1, %if.end ], [ -1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @skb_ensure_writable(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_targets(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21}
!llvm.module.flags = !{!23, !24, !25, !26, !27, !28, !29, !30}
!llvm.ident = !{!31}

!0 = !{ptr @__UNIQUE_ID_author489, !1, !"__UNIQUE_ID_author489", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_DSCP.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_description490, !3, !"__UNIQUE_ID_description490", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_DSCP.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_file491, !5, !"__UNIQUE_ID_file491", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_DSCP.c", i32 21, i32 1}
!6 = !{ptr @__UNIQUE_ID_license492, !5, !"__UNIQUE_ID_license492", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias493, !8, !"__UNIQUE_ID_alias493", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_DSCP.c", i32 22, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias494, !10, !"__UNIQUE_ID_alias494", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_DSCP.c", i32 23, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias495, !12, !"__UNIQUE_ID_alias495", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_DSCP.c", i32 24, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias496, !14, !"__UNIQUE_ID_alias496", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_DSCP.c", i32 25, i32 1}
!15 = !{ptr @__initcall__kmod_xt_DSCP__497_160_dscp_tg_init6, !16, !"__initcall__kmod_xt_DSCP__497_160_dscp_tg_init6", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_DSCP.c", i32 160, i32 1}
!17 = !{ptr @__exitcall_dscp_tg_exit, !18, !"__exitcall_dscp_tg_exit", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_DSCP.c", i32 161, i32 1}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_DSCP.c", i32 118, i32 13}
!21 = !{ptr @dscp_tg_reg, !22, !"dscp_tg_reg", i1 false, i1 false}
!22 = !{!"../net/netfilter/xt_DSCP.c", i32 111, i32 25}
!23 = !{i32 1, !"wchar_size", i32 2}
!24 = !{i32 1, !"min_enum_size", i32 4}
!25 = !{i32 8, !"branch-target-enforcement", i32 0}
!26 = !{i32 8, !"sign-return-address", i32 0}
!27 = !{i32 8, !"sign-return-address-all", i32 0}
!28 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!29 = !{i32 7, !"uwtable", i32 1}
!30 = !{i32 7, !"frame-pointer", i32 2}
!31 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
