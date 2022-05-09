; ModuleID = '/llk/IR_all_yes/drivers/video/logo/logo.c_pt.bc'
source_filename = "../drivers/video/logo/logo.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+fb_find_logo\22, \22a\22\09"
module asm "\09.weak\09__crc_fb_find_logo\09\09\09\09"
module asm "\09.long\09__crc_fb_find_logo\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_fb_find_logo:\09\09\09\09\09"
module asm "\09.asciz \09\22fb_find_logo\22\09\09\09\09\09"
module asm "__kstrtabns_fb_find_logo:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.6 }
%union.anon.6 = type { ptr }
%struct.linux_logo = type { i32, i32, i32, i32, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@__param_str_nologo = internal constant [12 x i8] c"logo.nologo\00", align 1
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 4
@nologo = internal global { i8, [31 x i8] } zeroinitializer, align 32
@__param_nologo = internal constant %struct.kernel_param { ptr @__param_str_nologo, ptr null, ptr @param_ops_bool, i16 0, i8 -1, i8 0, %union.anon.6 { ptr @nologo } }, section "__param", align 4
@__UNIQUE_ID_nologotype106 = internal constant [26 x i8] c"logo.parmtype=nologo:bool\00", section ".modinfo", align 1
@__UNIQUE_ID_nologo107 = internal constant [39 x i8] c"logo.parm=nologo:Disables startup logo\00", section ".modinfo", align 1
@__initcall__kmod_logo__108_38_fb_logo_late_init7s = internal global ptr @fb_logo_late_init, section ".initcall7s.init", align 4
@logos_freed = internal global { i1, [31 x i8] } zeroinitializer, align 32
@logo_linux_mono = external dso_local constant %struct.linux_logo, align 4
@logo_linux_vga16 = external dso_local constant %struct.linux_logo, align 4
@logo_linux_clut224 = external dso_local constant %struct.linux_logo, align 4
@__kstrtab_fb_find_logo = external dso_local constant [0 x i8], align 1
@__kstrtabns_fb_find_logo = external dso_local constant [0 x i8], align 1
@__ksymtab_fb_find_logo = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @fb_find_logo to i32), ptr @__kstrtab_fb_find_logo, ptr @__kstrtabns_fb_find_logo }, section "___ksymtab_gpl+fb_find_logo", align 4
@___asan_gen_.1 = private unnamed_addr constant [7 x i8] c"nologo\00", align 1
@___asan_gen_.2 = private constant [29 x i8] c"../drivers/video/logo/logo.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 21, i32 13 }
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"logos_freed\00", align 1
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID_nologo107, ptr @__UNIQUE_ID_nologotype106, ptr @__initcall__kmod_logo__108_38_fb_logo_late_init7s, ptr @__ksymtab_fb_find_logo, ptr @__param_nologo, ptr @nologo, ptr @logos_freed], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @nologo to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @logos_freed to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @fb_logo_late_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  store i1 true, ptr @logos_freed, align 1
  ret i32 0
}

; Function Attrs: mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local ptr @fb_find_logo(i32 noundef %depth) #1 section ".ref.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load i8, ptr @nologo, align 1, !range !23
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not = icmp eq i8 %0, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %.b12 = load i1, ptr @logos_freed, align 1
  br i1 %.b12, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %depth)
  %cmp = icmp sgt i32 %depth, 0
  %spec.select = select i1 %cmp, ptr @logo_linux_mono, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %depth)
  %cmp4 = icmp sgt i32 %depth, 3
  %logo.1 = select i1 %cmp4, ptr @logo_linux_vga16, ptr %spec.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %depth)
  %cmp7 = icmp sgt i32 %depth, 7
  %logo.2 = select i1 %cmp7, ptr @logo_linux_clut224, ptr %logo.1
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %logo.2, %if.end ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind null_pointer_is_valid optsize sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree noinline norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13}
!llvm.module.flags = !{!14, !15, !16, !17, !18, !19, !20, !21}
!llvm.ident = !{!22}

!0 = !{ptr @__param_nologo, !1, !"__param_nologo", i1 false, i1 false}
!1 = !{!"../drivers/video/logo/logo.c", i32 22, i32 1}
!2 = !{ptr @__UNIQUE_ID_nologotype106, !1, !"__UNIQUE_ID_nologotype106", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_nologo107, !4, !"__UNIQUE_ID_nologo107", i1 false, i1 false}
!4 = !{!"../drivers/video/logo/logo.c", i32 23, i32 1}
!5 = !{ptr @__initcall__kmod_logo__108_38_fb_logo_late_init7s, !6, !"__initcall__kmod_logo__108_38_fb_logo_late_init7s", i1 false, i1 false}
!6 = !{!"../drivers/video/logo/logo.c", i32 38, i32 1}
!7 = !{ptr @__ksymtab_fb_find_logo, !8, !"__ksymtab_fb_find_logo", i1 false, i1 false}
!8 = !{!"../drivers/video/logo/logo.c", i32 106, i32 1}
!9 = !{ptr @nologo, !10, !"nologo", i1 false, i1 false}
!10 = !{!"../drivers/video/logo/logo.c", i32 21, i32 13}
!11 = distinct !{null, !12, !"logos_freed", i1 false, i1 false}
!12 = !{!"../drivers/video/logo/logo.c", i32 30, i32 13}
!13 = !{ptr @__param_str_nologo, !1, !"__param_str_nologo", i1 false, i1 false}
!14 = !{i32 1, !"wchar_size", i32 2}
!15 = !{i32 1, !"min_enum_size", i32 4}
!16 = !{i32 8, !"branch-target-enforcement", i32 0}
!17 = !{i32 8, !"sign-return-address", i32 0}
!18 = !{i32 8, !"sign-return-address-all", i32 0}
!19 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!20 = !{i32 7, !"uwtable", i32 1}
!21 = !{i32 7, !"frame-pointer", i32 2}
!22 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!23 = !{i8 0, i8 2}
