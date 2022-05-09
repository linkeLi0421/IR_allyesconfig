; ModuleID = '/llk/IR_all_yes/drivers/net/can/dev/length.c_pt.bc'
source_filename = "../drivers/net/can/dev/length.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+can_fd_dlc2len\22, \22a\22\09"
module asm "\09.weak\09__crc_can_fd_dlc2len\09\09\09\09"
module asm "\09.long\09__crc_can_fd_dlc2len\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_fd_dlc2len:\09\09\09\09\09"
module asm "\09.asciz \09\22can_fd_dlc2len\22\09\09\09\09\09"
module asm "__kstrtabns_can_fd_dlc2len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+can_fd_len2dlc\22, \22a\22\09"
module asm "\09.weak\09__crc_can_fd_len2dlc\09\09\09\09"
module asm "\09.long\09__crc_can_fd_len2dlc\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_fd_len2dlc:\09\09\09\09\09"
module asm "\09.asciz \09\22can_fd_len2dlc\22\09\09\09\09\09"
module asm "__kstrtabns_can_fd_len2dlc:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+can_skb_get_frame_len\22, \22a\22\09"
module asm "\09.weak\09__crc_can_skb_get_frame_len\09\09\09\09"
module asm "\09.long\09__crc_can_skb_get_frame_len\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_can_skb_get_frame_len:\09\09\09\09\09"
module asm "\09.asciz \09\22can_skb_get_frame_len\22\09\09\09\09\09"
module asm "__kstrtabns_can_skb_get_frame_len:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
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
%struct.canfd_frame = type { i32, i8, i8, i8, i8, [64 x i8] }

@dlc2len = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\00\01\02\03\04\05\06\07\08\0C\10\14\18 0@", [16 x i8] zeroinitializer }, align 32
@__kstrtab_can_fd_dlc2len = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_fd_dlc2len = external dso_local constant [0 x i8], align 1
@__ksymtab_can_fd_dlc2len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_fd_dlc2len to i32), ptr @__kstrtab_can_fd_dlc2len, ptr @__kstrtabns_can_fd_dlc2len }, section "___ksymtab_gpl+can_fd_dlc2len", align 4
@len2dlc = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\00\01\02\03\04\05\06\07\08\09\09\09\09\0A\0A\0A\0A\0B\0B\0B\0B\0C\0C\0C\0C\0D\0D\0D\0D\0D\0D\0D\0D\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0E\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F\0F", [63 x i8] zeroinitializer }, align 32
@__kstrtab_can_fd_len2dlc = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_fd_len2dlc = external dso_local constant [0 x i8], align 1
@__ksymtab_can_fd_len2dlc = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_fd_len2dlc to i32), ptr @__kstrtab_can_fd_len2dlc, ptr @__kstrtabns_can_fd_len2dlc }, section "___ksymtab_gpl+can_fd_len2dlc", align 4
@__kstrtab_can_skb_get_frame_len = external dso_local constant [0 x i8], align 1
@__kstrtabns_can_skb_get_frame_len = external dso_local constant [0 x i8], align 1
@__ksymtab_can_skb_get_frame_len = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @can_skb_get_frame_len to i32), ptr @__kstrtab_can_skb_get_frame_len, ptr @__kstrtabns_can_skb_get_frame_len }, section "___ksymtab_gpl+can_skb_get_frame_len", align 4
@___asan_gen_.1 = private unnamed_addr constant [8 x i8] c"dlc2len\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 9, i32 17 }
@___asan_gen_.4 = private unnamed_addr constant [8 x i8] c"len2dlc\00", align 1
@___asan_gen_.5 = private constant [32 x i8] c"../drivers/net/can/dev/length.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 21, i32 17 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_can_fd_dlc2len, ptr @__ksymtab_can_fd_len2dlc, ptr @__ksymtab_can_skb_get_frame_len, ptr @dlc2len, ptr @len2dlc], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dlc2len to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @len2dlc to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @can_fd_dlc2len(i8 noundef zeroext %dlc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %dlc, 15
  %and = zext i8 %0 to i32
  %arrayidx = getelementptr [16 x i8], ptr @dlc2len, i32 0, i32 %and
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %arrayidx, align 1
  ret i8 %2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i8 @can_fd_len2dlc(i8 noundef zeroext %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %len)
  %cmp = icmp ugt i8 %len, 64
  br i1 %cmp, label %entry.return_crit_edge, label %if.end, !prof !19

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  %conv = zext i8 %len to i32
  %arrayidx = getelementptr [65 x i8], ptr @len2dlc, i32 0, i32 %conv
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i8 [ %1, %if.end ], [ 15, %entry.return_crit_edge ]
  ret i8 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @can_skb_get_frame_len(ptr nocapture noundef readonly %skb) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %data = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 19
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %len.i = getelementptr inbounds %struct.sk_buff, ptr %skb, i32 0, i32 6
  %2 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 72, i32 %3)
  %cmp.i = icmp eq i32 %3, 72
  br i1 %cmp.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %len1 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %len1 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %len1, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 64, i8 %5)
  %cmp.i.i = icmp ugt i8 %5, 64
  br i1 %cmp.i.i, label %if.then.if.then8_crit_edge, label %if.end.i.i, !prof !19

if.then.if.then8_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then8

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %conv.i.i = zext i8 %5 to i32
  %arrayidx.i.i = getelementptr [65 x i8], ptr @len2dlc, i32 0, i32 %conv.i.i
  %6 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %arrayidx.i.i, align 1
  %phi.bo.i = and i8 %7, 15
  %phi.cast.i = zext i8 %phi.bo.i to i32
  br label %if.then8

if.else:                                          ; preds = %entry
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 8
  %and = and i32 %9, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else4, label %if.else.if.else19_crit_edge

if.else.if.else19_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.else19

if.else4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #4
  %len5 = getelementptr inbounds %struct.canfd_frame, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %len5 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %len5, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pr = load i32, ptr %1, align 8
  br label %if.else19

if.then8:                                         ; preds = %if.end.i.i, %if.then.if.then8_crit_edge
  %retval.0.i.i = phi i32 [ %phi.cast.i, %if.end.i.i ], [ 15, %if.then.if.then8_crit_edge ]
  %arrayidx.i2.i = getelementptr [16 x i8], ptr @dlc2len, i32 0, i32 %retval.0.i.i
  %13 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx.i2.i, align 1
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %16)
  %tobool11.not = icmp sgt i32 %16, -1
  br i1 %tobool11.not, label %if.else14, label %if.then12

if.then12:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #4
  %add = add i8 %14, 10
  br label %if.end32

if.else14:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #4
  %add16 = add i8 %14, 8
  br label %if.end32

if.else19:                                        ; preds = %if.else4, %if.else.if.else19_crit_edge
  %17 = phi i32 [ %9, %if.else.if.else19_crit_edge ], [ %.pr, %if.else4 ]
  %len.0.ph = phi i8 [ 0, %if.else.if.else19_crit_edge ], [ %11, %if.else4 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %17)
  %tobool22.not = icmp sgt i32 %17, -1
  br i1 %tobool22.not, label %if.else27, label %if.then23

if.then23:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #4
  %add25 = add i8 %len.0.ph, 9
  br label %if.end32

if.else27:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #4
  %add29 = add i8 %len.0.ph, 6
  br label %if.end32

if.end32:                                         ; preds = %if.else27, %if.then23, %if.else14, %if.then12
  %len.1 = phi i8 [ %add, %if.then12 ], [ %add16, %if.else14 ], [ %add25, %if.then23 ], [ %add29, %if.else27 ]
  %conv33 = zext i8 %len.1 to i32
  ret i32 %conv33
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @__ksymtab_can_fd_dlc2len, !1, !"__ksymtab_can_fd_dlc2len", i1 false, i1 false}
!1 = !{!"../drivers/net/can/dev/length.c", i32 19, i32 1}
!2 = !{ptr @__ksymtab_can_fd_len2dlc, !3, !"__ksymtab_can_fd_len2dlc", i1 false, i1 false}
!3 = !{!"../drivers/net/can/dev/length.c", i32 45, i32 1}
!4 = !{ptr @__ksymtab_can_skb_get_frame_len, !5, !"__ksymtab_can_skb_get_frame_len", i1 false, i1 false}
!5 = !{!"../drivers/net/can/dev/length.c", i32 95, i32 1}
!6 = !{ptr @dlc2len, !7, !"dlc2len", i1 false, i1 false}
!7 = !{!"../drivers/net/can/dev/length.c", i32 9, i32 17}
!8 = !{ptr @len2dlc, !9, !"len2dlc", i1 false, i1 false}
!9 = !{!"../drivers/net/can/dev/length.c", i32 21, i32 17}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 1, i32 2000}
