; ModuleID = '/llk/IR_all_yes/drivers/clk/actions/owl-divider.c_pt.bc'
source_filename = "../drivers/clk/actions/owl-divider.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.owl_clk_common = type { ptr, %struct.clk_hw }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.owl_divider_hw = type { i32, i8, i8, i8, ptr }

@owl_divider_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @owl_divider_recalc_rate, ptr @owl_divider_round_rate, ptr null, ptr null, ptr null, ptr @owl_divider_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"owl_divider_ops\00", align 1
@___asan_gen_.2 = private constant [37 x i8] c"../drivers/clk/actions/owl-divider.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 90, i32 22 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @owl_divider_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_divider_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @owl_divider_helper_round_rate(ptr noundef %common, ptr nocapture noundef readonly %div_hw, i32 noundef %rate, ptr noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %hw = getelementptr inbounds %struct.owl_clk_common, ptr %common, i32 0, i32 1
  %table = getelementptr inbounds %struct.owl_divider_hw, ptr %div_hw, i32 0, i32 4
  %0 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table, align 4
  %width = getelementptr inbounds %struct.owl_divider_hw, ptr %div_hw, i32 0, i32 2
  %2 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %width, align 1
  %div_flags = getelementptr inbounds %struct.owl_divider_hw, ptr %div_hw, i32 0, i32 3
  %4 = ptrtoint ptr %div_flags to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %div_flags, align 2
  %conv = zext i8 %5 to i32
  %call.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #3
  %call1.i = tail call i32 @divider_round_rate_parent(ptr noundef %hw, ptr noundef %call.i, i32 noundef %rate, ptr noundef %parent_rate, ptr noundef %1, i8 noundef zeroext %3, i32 noundef %conv) #3
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @owl_divider_helper_recalc_rate(ptr noundef %common, ptr nocapture noundef readonly %div_hw, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !11
  %1 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %common, align 4
  %3 = ptrtoint ptr %div_hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %div_hw, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %reg) #3
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %shift = getelementptr inbounds %struct.owl_divider_hw, ptr %div_hw, i32 0, i32 1
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift, align 4
  %conv = zext i8 %8 to i32
  %shr = lshr i32 %6, %conv
  %width = getelementptr inbounds %struct.owl_divider_hw, ptr %div_hw, i32 0, i32 2
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %width, align 1
  %conv2 = zext i8 %10 to i32
  %notmask = shl nsw i32 -1, %conv2
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %hw = getelementptr inbounds %struct.owl_clk_common, ptr %common, i32 0, i32 1
  %table = getelementptr inbounds %struct.owl_divider_hw, ptr %div_hw, i32 0, i32 4
  %11 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %table, align 4
  %div_flags = getelementptr inbounds %struct.owl_divider_hw, ptr %div_hw, i32 0, i32 3
  %13 = ptrtoint ptr %div_flags to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %div_flags, align 2
  %conv3 = zext i8 %14 to i32
  %call6 = call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef %and, ptr noundef %12, i32 noundef %conv3, i32 noundef %conv2) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %call6
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_recalc_rate(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @owl_divider_helper_set_rate(ptr nocapture noundef readonly %common, ptr nocapture noundef readonly %div_hw, i32 noundef %rate, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %0 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg, align 4, !annotation !11
  %table = getelementptr inbounds %struct.owl_divider_hw, ptr %div_hw, i32 0, i32 4
  %1 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %table, align 4
  %width = getelementptr inbounds %struct.owl_divider_hw, ptr %div_hw, i32 0, i32 2
  %3 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %width, align 1
  %call = tail call i32 @divider_get_val(i32 noundef %rate, i32 noundef %parent_rate, ptr noundef %2, i8 noundef zeroext %4, i32 noundef 0) #3
  %5 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %common, align 4
  %7 = ptrtoint ptr %div_hw to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %div_hw, align 4
  %call2 = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %reg) #3
  %shift = getelementptr inbounds %struct.owl_divider_hw, ptr %div_hw, i32 0, i32 1
  %9 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift, align 4
  %conv = zext i8 %10 to i32
  %shl.neg = shl nsw i32 -1, %conv
  %11 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %width, align 1
  %conv4 = zext i8 %12 to i32
  %13 = add nuw nsw i32 %conv, %conv4
  %sub9 = sub nsw i32 32, %13
  %shr = lshr i32 -1, %sub9
  %and = and i32 %shr, %shl.neg
  %neg = xor i32 %and, -1
  %14 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg, align 4
  %and11 = and i32 %15, %neg
  store i32 %and11, ptr %reg, align 4
  %16 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %common, align 4
  %18 = ptrtoint ptr %div_hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %div_hw, align 4
  %shl16 = shl i32 %call, %conv
  %or = or i32 %and11, %shl16
  %call17 = call i32 @regmap_write(ptr noundef %17, i32 noundef %19, i32 noundef %or) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_get_val(i32 noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -16
  %common = getelementptr i8, ptr %hw, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i, align 4, !annotation !11
  %1 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %common, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %reg.i) #3
  %5 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg.i, align 4
  %shift.i = getelementptr i8, ptr %hw, i32 -12
  %7 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift.i, align 4
  %conv.i = zext i8 %8 to i32
  %shr.i = lshr i32 %6, %conv.i
  %width.i = getelementptr i8, ptr %hw, i32 -11
  %9 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %width.i, align 1
  %conv2.i = zext i8 %10 to i32
  %notmask.i = shl nsw i32 -1, %conv2.i
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %shr.i, %sub.i
  %table.i = getelementptr i8, ptr %hw, i32 -8
  %11 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %table.i, align 4
  %div_flags.i = getelementptr i8, ptr %hw, i32 -10
  %13 = ptrtoint ptr %div_flags.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %div_flags.i, align 2
  %conv3.i = zext i8 %14 to i32
  %call6.i = call i32 @divider_recalc_rate(ptr noundef %hw, i32 noundef %parent_rate, i32 noundef %and.i, ptr noundef %12, i32 noundef %conv3.i, i32 noundef %conv2.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  ret i32 %call6.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_divider_round_rate(ptr noundef %hw, i32 noundef %rate, ptr noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %table.i = getelementptr i8, ptr %hw, i32 -8
  %0 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %table.i, align 4
  %width.i = getelementptr i8, ptr %hw, i32 -11
  %2 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %width.i, align 1
  %div_flags.i = getelementptr i8, ptr %hw, i32 -10
  %4 = ptrtoint ptr %div_flags.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %div_flags.i, align 2
  %conv.i = zext i8 %5 to i32
  %call.i.i = tail call ptr @clk_hw_get_parent(ptr noundef %hw) #3
  %call1.i.i = tail call i32 @divider_round_rate_parent(ptr noundef %hw, ptr noundef %call.i.i, i32 noundef %rate, ptr noundef %parent_rate, ptr noundef %1, i8 noundef zeroext %3, i32 noundef %conv.i) #3
  ret i32 %call1.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_divider_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -16
  %common = getelementptr i8, ptr %hw, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i, align 4, !annotation !11
  %table.i = getelementptr i8, ptr %hw, i32 -8
  %1 = ptrtoint ptr %table.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %table.i, align 4
  %width.i = getelementptr i8, ptr %hw, i32 -11
  %3 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %width.i, align 1
  %call.i = tail call i32 @divider_get_val(i32 noundef %rate, i32 noundef %parent_rate, ptr noundef %2, i8 noundef zeroext %4, i32 noundef 0) #3
  %5 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %common, align 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 4
  %call2.i = call i32 @regmap_read(ptr noundef %6, i32 noundef %8, ptr noundef nonnull %reg.i) #3
  %shift.i = getelementptr i8, ptr %hw, i32 -12
  %9 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %shift.i, align 4
  %conv.i = zext i8 %10 to i32
  %shl.neg.i = shl nsw i32 -1, %conv.i
  %11 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %width.i, align 1
  %conv4.i = zext i8 %12 to i32
  %13 = add nuw nsw i32 %conv.i, %conv4.i
  %sub9.i = sub nsw i32 32, %13
  %shr.i = lshr i32 -1, %sub9.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %neg.i = xor i32 %and.i, -1
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %reg.i, align 4
  %and11.i = and i32 %15, %neg.i
  store i32 %and11.i, ptr %reg.i, align 4
  %16 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %common, align 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  %shl16.i = shl i32 %call.i, %conv.i
  %or.i = or i32 %and11.i, %shl16.i
  %call17.i = call i32 @regmap_write(ptr noundef %17, i32 noundef %19, i32 noundef %or.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @divider_round_rate_parent(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_parent(ptr noundef) local_unnamed_addr #2

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

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @owl_divider_ops, !1, !"owl_divider_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/actions/owl-divider.c", i32 90, i32 22}
!2 = !{i32 1, !"wchar_size", i32 2}
!3 = !{i32 1, !"min_enum_size", i32 4}
!4 = !{i32 8, !"branch-target-enforcement", i32 0}
!5 = !{i32 8, !"sign-return-address", i32 0}
!6 = !{i32 8, !"sign-return-address-all", i32 0}
!7 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!8 = !{i32 7, !"uwtable", i32 1}
!9 = !{i32 7, !"frame-pointer", i32 2}
!10 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!11 = !{!"auto-init"}
