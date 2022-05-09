; ModuleID = '/llk/IR_all_yes/drivers/clk/actions/owl-composite.c_pt.bc'
source_filename = "../drivers/clk/actions/owl-composite.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@owl_comp_div_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @owl_comp_enable, ptr @owl_comp_disable, ptr @owl_comp_is_enabled, ptr null, ptr null, ptr null, ptr @owl_comp_div_recalc_rate, ptr @owl_comp_div_round_rate, ptr null, ptr @owl_comp_set_parent, ptr @owl_comp_get_parent, ptr @owl_comp_div_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@owl_comp_fact_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @owl_comp_enable, ptr @owl_comp_disable, ptr @owl_comp_is_enabled, ptr null, ptr null, ptr null, ptr @owl_comp_fact_recalc_rate, ptr @owl_comp_fact_round_rate, ptr null, ptr @owl_comp_set_parent, ptr @owl_comp_get_parent, ptr @owl_comp_fact_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@owl_comp_fix_fact_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @owl_comp_enable, ptr @owl_comp_disable, ptr @owl_comp_is_enabled, ptr null, ptr null, ptr null, ptr @owl_comp_fix_fact_recalc_rate, ptr @owl_comp_fix_fact_round_rate, ptr null, ptr null, ptr null, ptr @owl_comp_fix_fact_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@owl_comp_pass_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @owl_comp_enable, ptr @owl_comp_disable, ptr @owl_comp_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @owl_comp_set_parent, ptr @owl_comp_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"owl_comp_div_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 144, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [18 x i8] c"owl_comp_fact_ops\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 161, i32 22 }
@___asan_gen_.7 = private unnamed_addr constant [22 x i8] c"owl_comp_fix_fact_ops\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 177, i32 22 }
@___asan_gen_.10 = private unnamed_addr constant [18 x i8] c"owl_comp_pass_ops\00", align 1
@___asan_gen_.11 = private constant [39 x i8] c"../drivers/clk/actions/owl-composite.c\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.11, i32 190, i32 22 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @owl_comp_div_ops, ptr @owl_comp_fact_ops, ptr @owl_comp_fix_fact_ops, ptr @owl_comp_pass_ops], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_comp_div_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_comp_fact_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_comp_fix_fact_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_comp_pass_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_comp_enable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common1 = getelementptr i8, ptr %hw, i32 -4
  %gate_hw = getelementptr i8, ptr %hw, i32 -36
  tail call void @owl_gate_set(ptr noundef %common1, ptr noundef %gate_hw, i1 noundef zeroext true) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_comp_disable(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common1 = getelementptr i8, ptr %hw, i32 -4
  %gate_hw = getelementptr i8, ptr %hw, i32 -36
  tail call void @owl_gate_set(ptr noundef %common1, ptr noundef %gate_hw, i1 noundef zeroext false) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_comp_is_enabled(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common1 = getelementptr i8, ptr %hw, i32 -4
  %gate_hw = getelementptr i8, ptr %hw, i32 -36
  %call2 = tail call i32 @owl_gate_clk_is_enabled(ptr noundef %common1, ptr noundef %gate_hw) #3
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_comp_div_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -4
  %rate = getelementptr i8, ptr %hw, i32 -28
  %call1 = tail call i32 @owl_divider_helper_recalc_rate(ptr noundef %common, ptr noundef %rate, i32 noundef %parent_rate) #3
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_comp_div_round_rate(ptr noundef %hw, i32 noundef %rate, ptr noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -4
  %rate1 = getelementptr i8, ptr %hw, i32 -28
  %call2 = tail call i32 @owl_divider_helper_round_rate(ptr noundef %common, ptr noundef %rate1, i32 noundef %rate, ptr noundef %parent_rate) #3
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_comp_set_parent(ptr noundef %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -44
  %common = getelementptr i8, ptr %hw, i32 -4
  %call1 = tail call i32 @owl_mux_helper_set_parent(ptr noundef %common, ptr noundef %add.ptr.i, i8 noundef zeroext %index) #3
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @owl_comp_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -44
  %common = getelementptr i8, ptr %hw, i32 -4
  %call1 = tail call zeroext i8 @owl_mux_helper_get_parent(ptr noundef %common, ptr noundef %add.ptr.i) #3
  ret i8 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_comp_div_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -4
  %rate1 = getelementptr i8, ptr %hw, i32 -28
  %call2 = tail call i32 @owl_divider_helper_set_rate(ptr noundef %common, ptr noundef %rate1, i32 noundef %rate, i32 noundef %parent_rate) #3
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_comp_fact_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -4
  %rate = getelementptr i8, ptr %hw, i32 -28
  %call1 = tail call i32 @owl_factor_helper_recalc_rate(ptr noundef %common, ptr noundef %rate, i32 noundef %parent_rate) #3
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_comp_fact_round_rate(ptr noundef %hw, i32 noundef %rate, ptr noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -4
  %rate1 = getelementptr i8, ptr %hw, i32 -28
  %call2 = tail call i32 @owl_factor_helper_round_rate(ptr noundef %common, ptr noundef %rate1, i32 noundef %rate, ptr noundef %parent_rate) #3
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_comp_fact_set_rate(ptr noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %common = getelementptr i8, ptr %hw, i32 -4
  %rate1 = getelementptr i8, ptr %hw, i32 -28
  %call2 = tail call i32 @owl_factor_helper_set_rate(ptr noundef %common, ptr noundef %rate1, i32 noundef %rate, i32 noundef %parent_rate) #3
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_comp_fix_fact_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rate = getelementptr i8, ptr %hw, i32 -28
  %fix_fact_ops = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %fix_fact_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fix_fact_ops, align 4
  %recalc_rate = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %recalc_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %recalc_rate, align 4
  %call2 = tail call i32 %3(ptr noundef %rate, i32 noundef %parent_rate) #3
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_comp_fix_fact_round_rate(ptr noundef %hw, i32 noundef %rate, ptr noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %rate1 = getelementptr i8, ptr %hw, i32 -28
  %fix_fact_ops = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %fix_fact_ops to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fix_fact_ops, align 4
  %round_rate = getelementptr inbounds %struct.clk_ops, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %round_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %round_rate, align 4
  %call3 = tail call i32 %3(ptr noundef %rate1, i32 noundef %rate, ptr noundef %parent_rate) #3
  ret i32 %call3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @owl_comp_fix_fact_set_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, i32 noundef %parent_rate) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @owl_gate_set(ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_gate_clk_is_enabled(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_divider_helper_recalc_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_divider_helper_round_rate(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_mux_helper_set_parent(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @owl_mux_helper_get_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_divider_helper_set_rate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_factor_helper_recalc_rate(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_factor_helper_round_rate(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @owl_factor_helper_set_rate(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @owl_comp_div_ops, !1, !"owl_comp_div_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/actions/owl-composite.c", i32 144, i32 22}
!2 = !{ptr @owl_comp_fact_ops, !3, !"owl_comp_fact_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/actions/owl-composite.c", i32 161, i32 22}
!4 = !{ptr @owl_comp_fix_fact_ops, !5, !"owl_comp_fix_fact_ops", i1 false, i1 false}
!5 = !{!"../drivers/clk/actions/owl-composite.c", i32 177, i32 22}
!6 = !{ptr @owl_comp_pass_ops, !7, !"owl_comp_pass_ops", i1 false, i1 false}
!7 = !{!"../drivers/clk/actions/owl-composite.c", i32 190, i32 22}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
