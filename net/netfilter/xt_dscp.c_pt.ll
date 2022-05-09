; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_dscp.c_pt.bc'
source_filename = "../net/netfilter/xt_dscp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
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
%struct.xt_dscp_info = type { i8, i8 }
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }
%struct.nf_hook_state = type { i8, i8, ptr, ptr, ptr, ptr, ptr }
%struct.xt_tos_match_info = type { i8, i8, i8 }

@__UNIQUE_ID_author489 = internal constant [52 x i8] c"xt_dscp.author=Harald Welte <laforge@netfilter.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description490 = internal constant [50 x i8] c"xt_dscp.description=Xtables: DSCP/TOS field match\00", section ".modinfo", align 1
@__UNIQUE_ID_file491 = internal constant [35 x i8] c"xt_dscp.file=net/netfilter/xt_dscp\00", section ".modinfo", align 1
@__UNIQUE_ID_license492 = internal constant [20 x i8] c"xt_dscp.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias493 = internal constant [23 x i8] c"xt_dscp.alias=ipt_dscp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias494 = internal constant [24 x i8] c"xt_dscp.alias=ip6t_dscp\00", section ".modinfo", align 1
@__UNIQUE_ID_alias495 = internal constant [22 x i8] c"xt_dscp.alias=ipt_tos\00", section ".modinfo", align 1
@__UNIQUE_ID_alias496 = internal constant [23 x i8] c"xt_dscp.alias=ip6t_tos\00", section ".modinfo", align 1
@dscp_mt_reg = internal global [4 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"dscp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @dscp_mt, ptr @dscp_mt_check, ptr null, ptr null, ptr null, i32 2, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"dscp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @dscp_mt6, ptr @dscp_mt_check, ptr null, ptr null, ptr null, i32 2, i32 0, i32 0, i16 0, i16 10 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"tos\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @tos_mt, ptr null, ptr null, ptr null, ptr null, i32 3, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"tos\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 1, ptr @tos_mt, ptr null, ptr null, ptr null, ptr null, i32 3, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_dscp__497_109_dscp_mt_init6 = internal global ptr @dscp_mt_init, section ".initcall6.init", align 4
@__exitcall_dscp_mt_exit = internal global ptr @dscp_mt_exit, section ".exitcall.exit", align 4
@llvm.compiler.used = appending global [11 x ptr] [ptr @__UNIQUE_ID_alias493, ptr @__UNIQUE_ID_alias494, ptr @__UNIQUE_ID_alias495, ptr @__UNIQUE_ID_alias496, ptr @__UNIQUE_ID_author489, ptr @__UNIQUE_ID_description490, ptr @__UNIQUE_ID_file491, ptr @__UNIQUE_ID_license492, ptr @__exitcall_dscp_mt_exit, ptr @__initcall__kmod_xt_dscp__497_109_dscp_mt_init6, ptr @dscp_mt_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @dscp_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xt_unregister_matches(ptr noundef nonnull @dscp_mt_reg, i32 noundef 4) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @dscp_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @dscp_mt_reg, i32 noundef 4) #3
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dscp_mt(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  %cmp = icmp eq i8 %9, %11
  %invert = getelementptr inbounds %struct.xt_dscp_info, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %invert, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool = icmp ne i8 %13, 0
  %xor10 = xor i1 %cmp, %tobool
  ret i1 %xor10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dscp_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 63, i8 %3)
  %cmp = icmp ugt i8 %3, 63
  %. = select i1 %cmp, i32 -33, i32 0
  ret i32 %.
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @dscp_mt6(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
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
  %cmp = icmp eq i8 %10, %12
  %invert = getelementptr inbounds %struct.xt_dscp_info, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %invert to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %invert, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool = icmp ne i8 %14, 0
  %xor10 = xor i1 %tobool, %cmp
  ret i1 %xor10
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @tos_mt(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %state.i = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 2
  %3 = ptrtoint ptr %state.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %state.i, align 4
  %pf.i = getelementptr inbounds %struct.nf_hook_state, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %pf.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %pf.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %6)
  %cmp = icmp eq i8 %6, 2
  %head.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 18
  %7 = ptrtoint ptr %head.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %head.i.i, align 8
  %network_header.i.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 20
  %9 = ptrtoint ptr %network_header.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %network_header.i.i, align 4
  %conv.i.i = zext i16 %10 to i32
  %add.ptr.i.i = getelementptr i8, ptr %8, i32 %conv.i.i
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %tos = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %tos to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %tos, align 1
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %13 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i.i, align 2
  %15 = lshr i16 %14, 4
  %conv1.i = trunc i16 %15 to i8
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then
  %conv1.i.sink = phi i8 [ %conv1.i, %if.else ], [ %12, %if.then ]
  %16 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %2, align 1
  %and1535 = and i8 %17, %conv1.i.sink
  %tos_value16 = getelementptr inbounds %struct.xt_tos_match_info, ptr %2, i32 0, i32 1
  %18 = ptrtoint ptr %tos_value16 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %tos_value16, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %and1535, i8 %19)
  %cmp18 = icmp eq i8 %and1535, %19
  %invert20 = getelementptr inbounds %struct.xt_tos_match_info, ptr %2, i32 0, i32 2
  %20 = ptrtoint ptr %invert20 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %invert20, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool21 = icmp ne i8 %21, 0
  %xor2636 = xor i1 %cmp18, %tobool21
  ret i1 %xor2636
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19}
!llvm.module.flags = !{!21, !22, !23, !24, !25, !26, !27, !28}
!llvm.ident = !{!29}

!0 = !{ptr @__UNIQUE_ID_author489, !1, !"__UNIQUE_ID_author489", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_dscp.c", i32 16, i32 1}
!2 = !{ptr @__UNIQUE_ID_description490, !3, !"__UNIQUE_ID_description490", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_dscp.c", i32 17, i32 1}
!4 = !{ptr @__UNIQUE_ID_file491, !5, !"__UNIQUE_ID_file491", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_dscp.c", i32 18, i32 1}
!6 = !{ptr @__UNIQUE_ID_license492, !5, !"__UNIQUE_ID_license492", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias493, !8, !"__UNIQUE_ID_alias493", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_dscp.c", i32 19, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias494, !10, !"__UNIQUE_ID_alias494", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_dscp.c", i32 20, i32 1}
!11 = !{ptr @__UNIQUE_ID_alias495, !12, !"__UNIQUE_ID_alias495", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_dscp.c", i32 21, i32 1}
!13 = !{ptr @__UNIQUE_ID_alias496, !14, !"__UNIQUE_ID_alias496", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_dscp.c", i32 22, i32 1}
!15 = !{ptr @__initcall__kmod_xt_dscp__497_109_dscp_mt_init6, !16, !"__initcall__kmod_xt_dscp__497_109_dscp_mt_init6", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_dscp.c", i32 109, i32 1}
!17 = !{ptr @__exitcall_dscp_mt_exit, !18, !"__exitcall_dscp_mt_exit", i1 false, i1 false}
!18 = !{!"../net/netfilter/xt_dscp.c", i32 110, i32 1}
!19 = !{ptr @dscp_mt_reg, !20, !"dscp_mt_reg", i1 false, i1 false}
!20 = !{!"../net/netfilter/xt_dscp.c", i32 64, i32 24}
!21 = !{i32 1, !"wchar_size", i32 2}
!22 = !{i32 1, !"min_enum_size", i32 4}
!23 = !{i32 8, !"branch-target-enforcement", i32 0}
!24 = !{i32 8, !"sign-return-address", i32 0}
!25 = !{i32 8, !"sign-return-address-all", i32 0}
!26 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!27 = !{i32 7, !"uwtable", i32 1}
!28 = !{i32 7, !"frame-pointer", i32 2}
!29 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
