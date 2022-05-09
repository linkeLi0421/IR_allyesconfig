; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_hl.c_pt.bc'
source_filename = "../net/netfilter/xt_hl.c"
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
%struct.ipt_ttl_info = type { i8, i8 }
%struct.ipv6hdr = type { i8, [3 x i8], i16, i8, i8, %struct.in6_addr, %struct.in6_addr }
%struct.in6_addr = type { %union.anon.26 }
%union.anon.26 = type { [4 x i32] }
%struct.ip6t_hl_info = type { i8, i8 }

@__UNIQUE_ID_author489 = internal constant [55 x i8] c"xt_hl.author=Maciej Soltysiak <solt@dns.toxicfilms.tv>\00", section ".modinfo", align 1
@__UNIQUE_ID_description490 = internal constant [52 x i8] c"xt_hl.description=Xtables: Hoplimit/TTL field match\00", section ".modinfo", align 1
@__UNIQUE_ID_file491 = internal constant [31 x i8] c"xt_hl.file=net/netfilter/xt_hl\00", section ".modinfo", align 1
@__UNIQUE_ID_license492 = internal constant [18 x i8] c"xt_hl.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias493 = internal constant [20 x i8] c"xt_hl.alias=ipt_ttl\00", section ".modinfo", align 1
@__UNIQUE_ID_alias494 = internal constant [20 x i8] c"xt_hl.alias=ip6t_hl\00", section ".modinfo", align 1
@hl_mt_reg = internal global [2 x %struct.xt_match] [%struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"ttl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ttl_mt, ptr null, ptr null, ptr null, ptr null, i32 2, i32 0, i32 0, i16 0, i16 2 }, %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"hl\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @hl_mt6, ptr null, ptr null, ptr null, ptr null, i32 2, i32 0, i32 0, i16 0, i16 10 }], section ".data..read_mostly", align 4
@__initcall__kmod_xt_hl__495_92_hl_mt_init6 = internal global ptr @hl_mt_init, section ".initcall6.init", align 4
@__exitcall_hl_mt_exit = internal global ptr @hl_mt_exit, section ".exitcall.exit", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.1 = internal global [6 x i64] [i64 4, i64 8, i64 0, i64 1, i64 2, i64 3]
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias493, ptr @__UNIQUE_ID_alias494, ptr @__UNIQUE_ID_author489, ptr @__UNIQUE_ID_description490, ptr @__UNIQUE_ID_file491, ptr @__UNIQUE_ID_license492, ptr @__exitcall_hl_mt_exit, ptr @__initcall__kmod_xt_hl__495_92_hl_mt_init6, ptr @hl_mt_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @hl_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xt_unregister_matches(ptr noundef nonnull @hl_mt_reg, i32 noundef 2) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @hl_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_matches(ptr noundef nonnull @hl_mt_reg, i32 noundef 2) #3
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ttl_mt(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
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
  %ttl1 = getelementptr inbounds %struct.iphdr, ptr %add.ptr.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %ttl1 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ttl1, align 4
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %2, align 1
  %11 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i8 %10, label %entry.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb6
    i8 2, label %sw.bb12
    i8 3, label %sw.bb18
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ttl3 = getelementptr inbounds %struct.ipt_ttl_info, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %ttl3 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %ttl3, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %13)
  %cmp = icmp eq i8 %8, %13
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ttl8 = getelementptr inbounds %struct.ipt_ttl_info, ptr %2, i32 0, i32 1
  %14 = ptrtoint ptr %ttl8 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %ttl8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %15)
  %cmp10 = icmp ne i8 %8, %15
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ttl14 = getelementptr inbounds %struct.ipt_ttl_info, ptr %2, i32 0, i32 1
  %16 = ptrtoint ptr %ttl14 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %ttl14, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %17)
  %cmp16 = icmp ult i8 %8, %17
  br label %cleanup

sw.bb18:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %ttl20 = getelementptr inbounds %struct.ipt_ttl_info, ptr %2, i32 0, i32 1
  %18 = ptrtoint ptr %ttl20 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %ttl20, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %8, i8 %19)
  %cmp22 = icmp ugt i8 %8, %19
  br label %cleanup

cleanup:                                          ; preds = %sw.bb18, %sw.bb12, %sw.bb6, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp22, %sw.bb18 ], [ %cmp16, %sw.bb12 ], [ %cmp10, %sw.bb6 ], [ %cmp, %sw.bb ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @hl_mt6(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
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
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %2, align 1
  %9 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.1)
  switch i8 %8, label %entry.cleanup_crit_edge [
    i8 0, label %sw.bb
    i8 1, label %sw.bb5
    i8 2, label %sw.bb12
    i8 3, label %sw.bb19
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %hop_limit = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %10 = ptrtoint ptr %hop_limit to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %hop_limit, align 1
  %hop_limit2 = getelementptr inbounds %struct.ip6t_hl_info, ptr %2, i32 0, i32 1
  %12 = ptrtoint ptr %hop_limit2 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %hop_limit2, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %11, i8 %13)
  %cmp = icmp eq i8 %11, %13
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %hop_limit6 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %14 = ptrtoint ptr %hop_limit6 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %hop_limit6, align 1
  %hop_limit8 = getelementptr inbounds %struct.ip6t_hl_info, ptr %2, i32 0, i32 1
  %16 = ptrtoint ptr %hop_limit8 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %hop_limit8, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %15, i8 %17)
  %cmp10 = icmp ne i8 %15, %17
  br label %cleanup

sw.bb12:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %hop_limit13 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %hop_limit13 to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %hop_limit13, align 1
  %hop_limit15 = getelementptr inbounds %struct.ip6t_hl_info, ptr %2, i32 0, i32 1
  %20 = ptrtoint ptr %hop_limit15 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %hop_limit15, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %19, i8 %21)
  %cmp17 = icmp ult i8 %19, %21
  br label %cleanup

sw.bb19:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %hop_limit20 = getelementptr inbounds %struct.ipv6hdr, ptr %add.ptr.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %hop_limit20 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %hop_limit20, align 1
  %hop_limit22 = getelementptr inbounds %struct.ip6t_hl_info, ptr %2, i32 0, i32 1
  %24 = ptrtoint ptr %hop_limit22 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %hop_limit22, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %23, i8 %25)
  %cmp24 = icmp ugt i8 %23, %25
  br label %cleanup

cleanup:                                          ; preds = %sw.bb19, %sw.bb12, %sw.bb5, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %cmp24, %sw.bb19 ], [ %cmp17, %sw.bb12 ], [ %cmp10, %sw.bb5 ], [ %cmp, %sw.bb ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_matches(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__UNIQUE_ID_author489, !1, !"__UNIQUE_ID_author489", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_hl.c", i32 19, i32 1}
!2 = !{ptr @__UNIQUE_ID_description490, !3, !"__UNIQUE_ID_description490", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_hl.c", i32 20, i32 1}
!4 = !{ptr @__UNIQUE_ID_file491, !5, !"__UNIQUE_ID_file491", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_hl.c", i32 21, i32 1}
!6 = !{ptr @__UNIQUE_ID_license492, !5, !"__UNIQUE_ID_license492", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias493, !8, !"__UNIQUE_ID_alias493", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_hl.c", i32 22, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias494, !10, !"__UNIQUE_ID_alias494", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_hl.c", i32 23, i32 1}
!11 = !{ptr @__initcall__kmod_xt_hl__495_92_hl_mt_init6, !12, !"__initcall__kmod_xt_hl__495_92_hl_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_hl.c", i32 92, i32 1}
!13 = !{ptr @__exitcall_hl_mt_exit, !14, !"__exitcall_hl_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_hl.c", i32 93, i32 1}
!15 = !{ptr @hl_mt_reg, !16, !"hl_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_hl.c", i32 63, i32 24}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
