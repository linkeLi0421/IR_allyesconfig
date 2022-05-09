; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/clk-regmap-divider.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-regmap-divider.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+clk_regmap_div_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_regmap_div_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_regmap_div_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_div_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_div_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_div_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+clk_regmap_div_ro_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_regmap_div_ro_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_regmap_div_ro_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_div_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_div_ro_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_div_ro_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@clk_regmap_div_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @div_recalc_rate, ptr @div_round_rate, ptr null, ptr null, ptr null, ptr @div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_regmap_div_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_div_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_div_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_div_ops to i32), ptr @__kstrtab_clk_regmap_div_ops, ptr @__kstrtabns_clk_regmap_div_ops }, section "___ksymtab_gpl+clk_regmap_div_ops", align 4
@clk_regmap_div_ro_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @div_recalc_rate, ptr @div_round_ro_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_regmap_div_ro_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_div_ro_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_div_ro_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_div_ro_ops to i32), ptr @__kstrtab_clk_regmap_div_ro_ops, ptr @__kstrtabns_clk_regmap_div_ro_ops }, section "___ksymtab_gpl+clk_regmap_div_ro_ops", align 4
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"clk_regmap_div_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 72, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [22 x i8] c"clk_regmap_div_ro_ops\00", align 1
@___asan_gen_.5 = private constant [41 x i8] c"../drivers/clk/qcom/clk-regmap-divider.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 79, i32 22 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_clk_regmap_div_ops, ptr @__ksymtab_clk_regmap_div_ro_ops, ptr @clk_regmap_div_ops, ptr @clk_regmap_div_ro_ops], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_regmap_div_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_regmap_div_ro_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @div_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div) #3
  %0 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %div, align 4, !annotation !17
  %regmap = getelementptr i8, ptr %hw, i32 12
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %call2 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %div) #3
  %shift = getelementptr i8, ptr %hw, i32 -8
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shift, align 4
  %7 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %div, align 4
  %shr = lshr i32 %8, %6
  %width = getelementptr i8, ptr %hw, i32 -4
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %notmask = shl nsw i32 -1, %10
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  store i32 %and, ptr %div, align 4
  %call4 = call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef %and, ptr noundef null, i32 noundef 16, i32 noundef %10) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div) #3
  ret i32 %call4
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @div_round_rate(ptr noundef %hw, i32 noundef %rate, ptr noundef %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %width = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %conv = trunc i32 %1 to i8
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #3
  %call1.i = tail call i32 @divider_round_rate_parent(ptr noundef %hw, ptr noundef %call.i, i32 noundef %rate, ptr noundef %prate, ptr noundef null, i8 noundef zeroext %conv, i32 noundef 16) #3
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @div_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -12
  %width = getelementptr i8, ptr %hw, i32 -4
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %conv = trunc i32 %1 to i8
  %call2 = tail call i32 @divider_get_val(i32 noundef %rate, i32 noundef %parent_rate, ptr noundef null, i8 noundef zeroext %conv, i32 noundef 16) #3
  %regmap = getelementptr i8, ptr %hw, i32 12
  %2 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap, align 4
  %4 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i, align 4
  %6 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %width, align 4
  %notmask = shl nsw i32 -1, %7
  %sub = xor i32 %notmask, -1
  %shift = getelementptr i8, ptr %hw, i32 -8
  %8 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shift, align 4
  %shl4 = shl i32 %sub, %9
  %shl6 = shl i32 %call2, %9
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef %5, i32 noundef %shl4, i32 noundef %shl6, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @div_round_ro_rate(ptr noundef %hw, i32 noundef %rate, ptr noundef %prate) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -12
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !17
  %regmap = getelementptr i8, ptr %hw, i32 12
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %call2 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #3
  %shift = getelementptr i8, ptr %hw, i32 -8
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %shift, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %shr = lshr i32 %8, %6
  %width = getelementptr i8, ptr %hw, i32 -4
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %width, align 4
  %notmask = shl nsw i32 -1, %10
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  store i32 %and, ptr %val, align 4
  %conv = trunc i32 %10 to i8
  %call.i = call ptr @clk_hw_get_parent(ptr noundef %hw) #3
  %call1.i = call i32 @divider_ro_round_rate_parent(ptr noundef %hw, ptr noundef %call.i, i32 noundef %rate, ptr noundef %prate, ptr noundef null, i8 noundef zeroext %conv, i32 noundef 16, i32 noundef %and) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i32 %call1.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_ro_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @clk_regmap_div_ops, !1, !"clk_regmap_div_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/clk-regmap-divider.c", i32 72, i32 22}
!2 = !{ptr @__ksymtab_clk_regmap_div_ops, !3, !"__ksymtab_clk_regmap_div_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/clk-regmap-divider.c", i32 77, i32 1}
!4 = !{ptr @clk_regmap_div_ro_ops, !5, !"clk_regmap_div_ro_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/qcom/clk-regmap-divider.c", i32 79, i32 22}
!6 = !{ptr @__ksymtab_clk_regmap_div_ro_ops, !7, !"__ksymtab_clk_regmap_div_ro_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/qcom/clk-regmap-divider.c", i32 83, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"auto-init"}
