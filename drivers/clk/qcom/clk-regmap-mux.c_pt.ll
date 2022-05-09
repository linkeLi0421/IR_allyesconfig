; ModuleID = '/llk/IR_all_yes/drivers/clk/qcom/clk-regmap-mux.c_pt.bc'
source_filename = "../drivers/clk/qcom/clk-regmap-mux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+clk_regmap_mux_closest_ops\22, \22a\22\09"
module asm "\09.weak\09__crc_clk_regmap_mux_closest_ops\09\09\09\09"
module asm "\09.long\09__crc_clk_regmap_mux_closest_ops\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_clk_regmap_mux_closest_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22clk_regmap_mux_closest_ops\22\09\09\09\09\09"
module asm "__kstrtabns_clk_regmap_mux_closest_ops:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.parent_map = type { i8, i8 }
%struct.clk_regmap = type { %struct.clk_hw, ptr, i32, i32, i8 }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_regmap_mux_closest_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate_closest, ptr @mux_set_parent, ptr @mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_clk_regmap_mux_closest_ops = external dso_local constant [0 x i8], align 1
@__kstrtabns_clk_regmap_mux_closest_ops = external dso_local constant [0 x i8], align 1
@__ksymtab_clk_regmap_mux_closest_ops = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @clk_regmap_mux_closest_ops to i32), ptr @__kstrtab_clk_regmap_mux_closest_ops, ptr @__kstrtabns_clk_regmap_mux_closest_ops }, section "___ksymtab_gpl+clk_regmap_mux_closest_ops", align 4
@___asan_gen_.1 = private unnamed_addr constant [27 x i8] c"clk_regmap_mux_closest_ops\00", align 1
@___asan_gen_.2 = private constant [37 x i8] c"../drivers/clk/qcom/clk-regmap-mux.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 52, i32 22 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_clk_regmap_mux_closest_ops, ptr @clk_regmap_mux_closest_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_regmap_mux_closest_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate_closest(ptr noundef, ptr noundef) #0

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mux_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shift = getelementptr i8, ptr %hw, i32 -12
  %0 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %shift, align 4
  %width = getelementptr i8, ptr %hw, i32 -8
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %width, align 4
  %parent_map = getelementptr i8, ptr %hw, i32 -4
  %4 = ptrtoint ptr %parent_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent_map, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %idxprom = zext i8 %index to i32
  %cfg = getelementptr %struct.parent_map, ptr %5, i32 %idxprom, i32 1
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %cfg, align 1
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %index.addr.0 = phi i8 [ %7, %if.then ], [ %index, %entry.if.end_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -16
  %shl.neg = shl nsw i32 -1, %1
  %8 = add i32 %1, %3
  %sub5 = sub i32 32, %8
  %shr = lshr i32 -1, %sub5
  %and = and i32 %shr, %shl.neg
  %conv = zext i8 %index.addr.0 to i32
  %shl9 = shl i32 %conv, %1
  %regmap = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %11 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %10, i32 noundef %12, i32 noundef %and, i32 noundef %shl9, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #3
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @mux_get_parent(ptr noundef %hw) #1 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -16
  %width = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %width, align 4
  %sub2 = sub i32 32, %1
  %shr = lshr i32 -1, %sub2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !13
  %regmap = getelementptr inbounds %struct.clk_regmap, ptr %hw, i32 0, i32 1
  %3 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap, align 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %call3 = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %val) #3
  %shift = getelementptr i8, ptr %hw, i32 -12
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %shift, align 4
  %9 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %val, align 4
  %shr4 = lshr i32 %10, %8
  %and5 = and i32 %shr4, %shr
  store i32 %and5, ptr %val, align 4
  %parent_map = getelementptr i8, ptr %hw, i32 -4
  %11 = ptrtoint ptr %parent_map to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %parent_map, align 4
  %tobool.not = icmp eq ptr %12, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = trunc i32 %and5 to i8
  %call7 = call i32 @qcom_find_cfg_index(ptr noundef %hw, ptr noundef nonnull %12, i8 noundef zeroext %conv) #3
  br label %cleanup

cleanup:                                          ; preds = %if.then, %entry.cleanup_crit_edge
  %retval.0.in = phi i32 [ %call7, %if.then ], [ %and5, %entry.cleanup_crit_edge ]
  %retval.0 = trunc i32 %retval.0.in to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i8 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @qcom_find_cfg_index(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #0

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @clk_regmap_mux_closest_ops, !1, !"clk_regmap_mux_closest_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/qcom/clk-regmap-mux.c", i32 52, i32 22}
!2 = !{ptr @__ksymtab_clk_regmap_mux_closest_ops, !3, !"__ksymtab_clk_regmap_mux_closest_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/qcom/clk-regmap-mux.c", i32 57, i32 1}
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
