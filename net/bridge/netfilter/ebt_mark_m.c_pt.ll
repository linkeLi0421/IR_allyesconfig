; ModuleID = '/llk/IR_all_yes/net/bridge/netfilter/ebt_mark_m.c_pt.bc'
source_filename = "../net/bridge/netfilter/ebt_mark_m.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }
%struct.xt_action_param = type { %union.anon.141, %union.anon.142, ptr, i32, i16, i8 }
%union.anon.141 = type { ptr }
%union.anon.142 = type { ptr }
%struct.ebt_mark_m_info = type { i32, i32, i8, i8 }
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
%struct.xt_mtchk_param = type { ptr, ptr, ptr, ptr, ptr, i32, i8, i8 }

@ebt_mark_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"mark_m\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @ebt_mark_mt, ptr @ebt_mark_mt_check, ptr null, ptr null, ptr null, i32 12, i32 0, i32 0, i16 0, i16 7 }, section ".data..read_mostly", align 4
@__initcall__kmod_ebt_mark_m__476_96_ebt_mark_m_init6 = internal global ptr @ebt_mark_m_init, section ".initcall6.init", align 4
@__exitcall_ebt_mark_m_fini = internal global ptr @ebt_mark_m_fini, section ".exitcall.exit", align 4
@__UNIQUE_ID_description477 = internal constant [51 x i8] c"ebt_mark_m.description=Ebtables: Packet mark match\00", section ".modinfo", align 1
@__UNIQUE_ID_file478 = internal constant [48 x i8] c"ebt_mark_m.file=net/bridge/netfilter/ebt_mark_m\00", section ".modinfo", align 1
@__UNIQUE_ID_license479 = internal constant [23 x i8] c"ebt_mark_m.license=GPL\00", section ".modinfo", align 1
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID_description477, ptr @__UNIQUE_ID_file478, ptr @__UNIQUE_ID_license479, ptr @__exitcall_ebt_mark_m_fini, ptr @__initcall__kmod_ebt_mark_m__476_96_ebt_mark_m_init6, ptr @ebt_mark_m_fini], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @ebt_mark_m_fini() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xt_unregister_match(ptr noundef nonnull @ebt_mark_mt_reg) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ebt_mark_m_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @ebt_mark_mt_reg) #3
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @ebt_mark_mt(ptr nocapture noundef readonly %skb, ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = getelementptr inbounds %struct.xt_action_param, ptr %par, i32 0, i32 1
  %1 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %0, align 4
  %bitmask = getelementptr inbounds %struct.ebt_mark_m_info, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %bitmask, align 1
  %5 = and i8 %4, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %6 = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 15, i32 0, i32 13
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %6, align 4
  %mask6 = getelementptr inbounds %struct.ebt_mark_m_info, ptr %2, i32 0, i32 1
  %9 = ptrtoint ptr %mask6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask6, align 4
  %and7 = and i32 %10, %8
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool2 = icmp ne i32 %and7, 0
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and7, i32 %12)
  %cmp = icmp eq i32 %and7, %12
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then
  %cmp.sink = phi i1 [ %cmp, %if.end ], [ %tobool2, %if.then ]
  %invert9 = getelementptr inbounds %struct.ebt_mark_m_info, ptr %2, i32 0, i32 2
  %13 = ptrtoint ptr %invert9 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %invert9, align 4
  %15 = zext i1 %cmp.sink to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %15)
  %tobool12 = icmp ne i8 %14, %15
  ret i1 %tobool12
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ebt_mark_mt_check(ptr nocapture noundef readonly %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %matchinfo = getelementptr inbounds %struct.xt_mtchk_param, ptr %par, i32 0, i32 4
  %0 = ptrtoint ptr %matchinfo to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %matchinfo, align 4
  %bitmask = getelementptr inbounds %struct.ebt_mark_m_info, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %bitmask to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bitmask, align 1
  %conv = zext i8 %3 to i32
  %and = and i32 %conv, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp ne i32 %and, 0
  %4 = and i32 %conv, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %4)
  %.not = icmp eq i32 %4, 3
  %or.cond = or i1 %tobool.not, %.not
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool12.not = icmp eq i8 %3, 0
  %5 = select i1 %or.cond, i1 true, i1 %tobool12.not
  %retval.0 = select i1 %5, i32 -22, i32 0
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9}
!llvm.module.flags = !{!11, !12, !13, !14, !15, !16, !17, !18}
!llvm.ident = !{!19}

!0 = !{ptr @__initcall__kmod_ebt_mark_m__476_96_ebt_mark_m_init6, !1, !"__initcall__kmod_ebt_mark_m__476_96_ebt_mark_m_init6", i1 false, i1 false}
!1 = !{!"../net/bridge/netfilter/ebt_mark_m.c", i32 96, i32 1}
!2 = !{ptr @__exitcall_ebt_mark_m_fini, !3, !"__exitcall_ebt_mark_m_fini", i1 false, i1 false}
!3 = !{!"../net/bridge/netfilter/ebt_mark_m.c", i32 97, i32 1}
!4 = !{ptr @__UNIQUE_ID_description477, !5, !"__UNIQUE_ID_description477", i1 false, i1 false}
!5 = !{!"../net/bridge/netfilter/ebt_mark_m.c", i32 98, i32 1}
!6 = !{ptr @__UNIQUE_ID_file478, !7, !"__UNIQUE_ID_file478", i1 false, i1 false}
!7 = !{!"../net/bridge/netfilter/ebt_mark_m.c", i32 99, i32 1}
!8 = !{ptr @__UNIQUE_ID_license479, !7, !"__UNIQUE_ID_license479", i1 false, i1 false}
!9 = !{ptr @ebt_mark_mt_reg, !10, !"ebt_mark_mt_reg", i1 false, i1 false}
!10 = !{!"../net/bridge/netfilter/ebt_mark_m.c", i32 71, i32 24}
!11 = !{i32 1, !"wchar_size", i32 2}
!12 = !{i32 1, !"min_enum_size", i32 4}
!13 = !{i32 8, !"branch-target-enforcement", i32 0}
!14 = !{i32 8, !"sign-return-address", i32 0}
!15 = !{i32 8, !"sign-return-address-all", i32 0}
!16 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!17 = !{i32 7, !"uwtable", i32 1}
!18 = !{i32 7, !"frame-pointer", i32 2}
!19 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
