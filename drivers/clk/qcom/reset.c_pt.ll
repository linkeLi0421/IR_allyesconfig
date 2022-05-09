; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/reset.c_pt.bc'
source_filename = "../drivers/clk/qcom/reset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+qcom_reset_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_qcom_reset_ops\09\09\09\09"
module asm "\09.long\09__crc_qcom_reset_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_qcom_reset_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22qcom_reset_ops\22\09\09\09\09\09"
module asm "__kstrtabns_qcom_reset_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.reset_control_ops = type { ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.qcom_reset_map = type { i32, i8 }

@qcom_reset_ops = dso_local constant { %struct.reset_control_ops, [16 x i8] } { %struct.reset_control_ops { ptr @qcom_reset, ptr @qcom_reset_assert, ptr @qcom_reset_deassert, ptr null }, [16 x i8] zeroinitializer }, align 32
@__kstrtab_qcom_reset_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_qcom_reset_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_qcom_reset_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @qcom_reset_ops to i32), ptr @__kstrtab_qcom_reset_ops, ptr @__kstrtabns_qcom_reset_ops }, section "___ksymtab_gpl+qcom_reset_ops", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"qcom_reset_ops\00", align 1
@___asan_gen_.2 = private constant [28 x i8] c"../drivers/clk/qcom/reset.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 50, i32 32 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_qcom_reset_ops, ptr @qcom_reset_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @qcom_reset_ops to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_reset(ptr noundef %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rcdev to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %rcdev, align 4
  %assert = getelementptr inbounds %struct.reset_control_ops, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %assert to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %assert, align 4
  %call = tail call i32 %3(ptr noundef %rcdev, i32 noundef %id) #2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 214748) #2
  %5 = ptrtoint ptr %rcdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %rcdev, align 4
  %deassert = getelementptr inbounds %struct.reset_control_ops, ptr %6, i32 0, i32 2
  %7 = ptrtoint ptr %deassert to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %deassert, align 4
  %call2 = tail call i32 %8(ptr noundef %rcdev, i32 noundef %id) #2
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_reset_assert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %arrayidx = getelementptr %struct.qcom_reset_map, ptr %1, i32 %id
  %bit = getelementptr %struct.qcom_reset_map, ptr %1, i32 %id, i32 1
  %2 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bit, align 4
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %regmap = getelementptr i8, ptr %rcdev, i32 -4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %shl, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #2
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @qcom_reset_deassert(ptr nocapture noundef readonly %rcdev, i32 noundef %id) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %rcdev, i32 -8
  %0 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %add.ptr, align 4
  %arrayidx = getelementptr %struct.qcom_reset_map, ptr %1, i32 %id
  %bit = getelementptr %struct.qcom_reset_map, ptr %1, i32 %id, i32 1
  %2 = ptrtoint ptr %bit to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %bit, align 4
  %conv = zext i8 %3 to i32
  %shl = shl nuw i32 1, %conv
  %regmap = getelementptr i8, ptr %rcdev, i32 -4
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap, align 4
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef %7, i32 noundef %shl, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #2
  ret i32 %call.i
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @qcom_reset_ops, !1, !"qcom_reset_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/reset.c", i32 50, i32 32}
!2 = !{ptr @__ksymtab_qcom_reset_ops, !3, !"__ksymtab_qcom_reset_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/reset.c", i32 55, i32 1}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
