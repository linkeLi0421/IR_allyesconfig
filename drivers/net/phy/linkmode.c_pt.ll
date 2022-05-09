; ModuleID = '/llk/IR_all_yes/drivers/net/phy/linkmode.c_pt.bc'
source_filename = "../drivers/net/phy/linkmode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+linkmode_resolve_pause\22, \22a\22\09"
module asm "\09.weak\09__crc_linkmode_resolve_pause\09\09\09\09"
module asm "\09.long\09__crc_linkmode_resolve_pause\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_linkmode_resolve_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22linkmode_resolve_pause\22\09\09\09\09\09"
module asm "__kstrtabns_linkmode_resolve_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+linkmode_set_pause\22, \22a\22\09"
module asm "\09.weak\09__crc_linkmode_set_pause\09\09\09\09"
module asm "\09.long\09__crc_linkmode_set_pause\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_linkmode_set_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22linkmode_set_pause\22\09\09\09\09\09"
module asm "__kstrtabns_linkmode_set_pause:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }

@__kstrtab_linkmode_resolve_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_linkmode_resolve_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_linkmode_resolve_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @linkmode_resolve_pause to i32), ptr @__kstrtab_linkmode_resolve_pause, ptr @__kstrtabns_linkmode_resolve_pause }, section "___ksymtab_gpl+linkmode_resolve_pause", align 4
@__kstrtab_linkmode_set_pause = external dso_local constant [0 x i8], align 1
@__kstrtabns_linkmode_set_pause = external dso_local constant [0 x i8], align 1
@__ksymtab_linkmode_set_pause = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @linkmode_set_pause to i32), ptr @__kstrtab_linkmode_set_pause, ptr @__kstrtabns_linkmode_set_pause }, section "___ksymtab_gpl+linkmode_set_pause", align 4
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_linkmode_resolve_pause, ptr @__ksymtab_linkmode_set_pause], section "llvm.metadata"
@llvm.used = appending global [1 x ptr] [ptr @asan.module_ctor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @linkmode_resolve_pause(ptr noundef %local_adv, ptr noundef %partner_adv, ptr nocapture noundef writeonly %tx_pause, ptr nocapture noundef writeonly %rx_pause) #0 align 64 {
entry:
  %m = alloca [3 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %m) #4
  %0 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %m, align 4, !annotation !13
  %1 = getelementptr inbounds [3 x i32], ptr %m, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %1, align 4, !annotation !13
  %3 = getelementptr inbounds [3 x i32], ptr %m, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !13
  %call.i.i = call i32 @__bitmap_and(ptr noundef nonnull %m, ptr noundef %local_adv, ptr noundef %partner_adv, i32 noundef 92) #4
  %5 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %m, align 4
  %7 = and i32 %6, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %8 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %tx_pause, align 1
  br label %if.end12

if.else:                                          ; preds = %entry
  %9 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile i32, ptr %m, align 4
  %11 = and i32 %10, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool4.not = icmp eq i32 %11, 0
  br i1 %tobool4.not, label %if.else11, label %if.then5

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %partner_adv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %partner_adv, align 4
  %14 = lshr i32 %13, 13
  %15 = trunc i32 %14 to i8
  %16 = and i8 %15, 1
  %17 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %16, ptr %tx_pause, align 1
  %18 = ptrtoint ptr %local_adv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile i32, ptr %local_adv, align 4
  %20 = lshr i32 %19, 13
  %21 = trunc i32 %20 to i8
  %22 = and i8 %21, 1
  br label %if.end12

if.else11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #6
  %23 = ptrtoint ptr %tx_pause to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 0, ptr %tx_pause, align 1
  br label %if.end12

if.end12:                                         ; preds = %if.else11, %if.then5, %if.then
  %.sink = phi i8 [ %22, %if.then5 ], [ 0, %if.else11 ], [ 1, %if.then ]
  %24 = ptrtoint ptr %rx_pause to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %.sink, ptr %rx_pause, align 1
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %m) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @linkmode_set_pause(ptr nocapture noundef %advertisement, i1 noundef zeroext %tx, i1 noundef zeroext %rx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %advertisement to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %advertisement, align 4
  %and.i.i.i = and i32 %1, -24577
  %masksel16 = select i1 %rx, i32 8192, i32 0
  %storemerge.i = or i32 %and.i.i.i, %masksel16
  %xor8 = xor i1 %tx, %rx
  %masksel = select i1 %xor8, i32 16384, i32 0
  %storemerge.i14 = or i32 %storemerge.i, %masksel
  store i32 %storemerge.i14, ptr %advertisement, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_and(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_linkmode_resolve_pause, !1, !"__ksymtab_linkmode_resolve_pause", i1 false, i1 false}
!1 = !{!"../drivers/net/phy/linkmode.c", i32 44, i32 1}
!2 = !{ptr @__ksymtab_linkmode_set_pause, !3, !"__ksymtab_linkmode_set_pause", i1 false, i1 false}
!3 = !{!"../drivers/net/phy/linkmode.c", i32 95, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!13 = !{!"auto-init"}
