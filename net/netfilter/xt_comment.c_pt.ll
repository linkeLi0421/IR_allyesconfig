; ModuleID = '/llk/IR_all_yes/net/netfilter/xt_comment.c_pt.bc'
source_filename = "../net/netfilter/xt_comment.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.xt_match = type { %struct.list_head, [29 x i8], i8, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i16, i16 }
%struct.list_head = type { ptr, ptr }

@__UNIQUE_ID_author354 = internal constant [51 x i8] c"xt_comment.author=Brad Fisher <brad@info-link.net>\00", section ".modinfo", align 1
@__UNIQUE_ID_description355 = internal constant [79 x i8] c"xt_comment.description=Xtables: No-op match which can be tagged with a comment\00", section ".modinfo", align 1
@__UNIQUE_ID_file356 = internal constant [41 x i8] c"xt_comment.file=net/netfilter/xt_comment\00", section ".modinfo", align 1
@__UNIQUE_ID_license357 = internal constant [23 x i8] c"xt_comment.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias358 = internal constant [29 x i8] c"xt_comment.alias=ipt_comment\00", section ".modinfo", align 1
@__UNIQUE_ID_alias359 = internal constant [30 x i8] c"xt_comment.alias=ip6t_comment\00", section ".modinfo", align 1
@comment_mt_reg = internal global %struct.xt_match { %struct.list_head zeroinitializer, [29 x i8] c"comment\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8 0, ptr @comment_mt, ptr null, ptr null, ptr null, ptr null, i32 256, i32 0, i32 0, i16 0, i16 0 }, section ".data..read_mostly", align 4
@__initcall__kmod_xt_comment__360_45_comment_mt_init6 = internal global ptr @comment_mt_init, section ".initcall6.init", align 4
@__exitcall_comment_mt_exit = internal global ptr @comment_mt_exit, section ".exitcall.exit", align 4
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID_alias358, ptr @__UNIQUE_ID_alias359, ptr @__UNIQUE_ID_author354, ptr @__UNIQUE_ID_description355, ptr @__UNIQUE_ID_file356, ptr @__UNIQUE_ID_license357, ptr @__exitcall_comment_mt_exit, ptr @__initcall__kmod_xt_comment__360_45_comment_mt_init6, ptr @comment_mt_exit], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @comment_mt_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @xt_unregister_match(ptr noundef nonnull @comment_mt_reg) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @xt_unregister_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @comment_mt_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @xt_register_match(ptr noundef nonnull @comment_mt_reg) #3
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @comment_mt(ptr nocapture noundef readnone %skb, ptr nocapture noundef readnone %par) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i1 true
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @xt_register_match(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15}
!llvm.module.flags = !{!17, !18, !19, !20, !21, !22, !23, !24}
!llvm.ident = !{!25}

!0 = !{ptr @__UNIQUE_ID_author354, !1, !"__UNIQUE_ID_author354", i1 false, i1 false}
!1 = !{!"../net/netfilter/xt_comment.c", i32 13, i32 1}
!2 = !{ptr @__UNIQUE_ID_description355, !3, !"__UNIQUE_ID_description355", i1 false, i1 false}
!3 = !{!"../net/netfilter/xt_comment.c", i32 14, i32 1}
!4 = !{ptr @__UNIQUE_ID_file356, !5, !"__UNIQUE_ID_file356", i1 false, i1 false}
!5 = !{!"../net/netfilter/xt_comment.c", i32 15, i32 1}
!6 = !{ptr @__UNIQUE_ID_license357, !5, !"__UNIQUE_ID_license357", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_alias358, !8, !"__UNIQUE_ID_alias358", i1 false, i1 false}
!8 = !{!"../net/netfilter/xt_comment.c", i32 16, i32 1}
!9 = !{ptr @__UNIQUE_ID_alias359, !10, !"__UNIQUE_ID_alias359", i1 false, i1 false}
!10 = !{!"../net/netfilter/xt_comment.c", i32 17, i32 1}
!11 = !{ptr @__initcall__kmod_xt_comment__360_45_comment_mt_init6, !12, !"__initcall__kmod_xt_comment__360_45_comment_mt_init6", i1 false, i1 false}
!12 = !{!"../net/netfilter/xt_comment.c", i32 45, i32 1}
!13 = !{ptr @__exitcall_comment_mt_exit, !14, !"__exitcall_comment_mt_exit", i1 false, i1 false}
!14 = !{!"../net/netfilter/xt_comment.c", i32 46, i32 1}
!15 = !{ptr @comment_mt_reg, !16, !"comment_mt_reg", i1 false, i1 false}
!16 = !{!"../net/netfilter/xt_comment.c", i32 26, i32 24}
!17 = !{i32 1, !"wchar_size", i32 2}
!18 = !{i32 1, !"min_enum_size", i32 4}
!19 = !{i32 8, !"branch-target-enforcement", i32 0}
!20 = !{i32 8, !"sign-return-address", i32 0}
!21 = !{i32 8, !"sign-return-address-all", i32 0}
!22 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!23 = !{i32 7, !"uwtable", i32 1}
!24 = !{i32 7, !"frame-pointer", i32 2}
!25 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
