; ModuleID = '/llk/IR_all_yes/drivers/clk/actions/owl-mux.c_pt.bc'
source_filename = "../drivers/clk/actions/owl-mux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.owl_mux_hw = type { i32, i8, i8 }

@owl_mux_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @owl_mux_set_parent, ptr @owl_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"owl_mux_ops\00", align 1
@___asan_gen_.2 = private constant [33 x i8] c"../drivers/clk/actions/owl-mux.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 56, i32 22 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @owl_mux_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local zeroext i8 @owl_mux_helper_get_parent(ptr nocapture noundef readonly %common, ptr nocapture noundef readonly %mux_hw) local_unnamed_addr #0 align 64 {
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
  %3 = ptrtoint ptr %mux_hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mux_hw, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %reg) #3
  %5 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %reg, align 4
  %shift = getelementptr inbounds %struct.owl_mux_hw, ptr %mux_hw, i32 0, i32 1
  %7 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift, align 4
  %conv = zext i8 %8 to i32
  %shr = lshr i32 %6, %conv
  %width = getelementptr inbounds %struct.owl_mux_hw, ptr %mux_hw, i32 0, i32 2
  %9 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %width, align 1
  %conv3 = zext i8 %10 to i32
  %notmask = shl nsw i32 -1, %conv3
  %sub = xor i32 %notmask, -1
  %and = and i32 %shr, %sub
  %conv5 = trunc i32 %and to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i8 %conv5
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @owl_mux_helper_set_parent(ptr nocapture noundef readonly %common, ptr nocapture noundef readonly %mux_hw, i8 noundef zeroext %index) local_unnamed_addr #0 align 64 {
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
  %3 = ptrtoint ptr %mux_hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %mux_hw, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %reg) #3
  %shift = getelementptr inbounds %struct.owl_mux_hw, ptr %mux_hw, i32 0, i32 1
  %5 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shift, align 4
  %conv = zext i8 %6 to i32
  %shl.neg = shl nsw i32 -1, %conv
  %width = getelementptr inbounds %struct.owl_mux_hw, ptr %mux_hw, i32 0, i32 2
  %7 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %width, align 1
  %conv2 = zext i8 %8 to i32
  %9 = add nuw nsw i32 %conv, %conv2
  %sub7 = sub nsw i32 32, %9
  %shr = lshr i32 -1, %sub7
  %and = and i32 %shr, %shl.neg
  %neg = xor i32 %and, -1
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %and9 = and i32 %11, %neg
  store i32 %and9, ptr %reg, align 4
  %12 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %common, align 4
  %14 = ptrtoint ptr %mux_hw to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mux_hw, align 4
  %conv12 = zext i8 %index to i32
  %shl15 = shl i32 %conv12, %conv
  %or = or i32 %and9, %shl15
  %call16 = call i32 @regmap_write(ptr noundef %13, i32 noundef %15, i32 noundef %or) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_mux_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -12
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
  %shift.i = getelementptr i8, ptr %hw, i32 -8
  %5 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %shift.i, align 4
  %conv.i = zext i8 %6 to i32
  %shl.neg.i = shl nsw i32 -1, %conv.i
  %width.i = getelementptr i8, ptr %hw, i32 -7
  %7 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %width.i, align 1
  %conv2.i = zext i8 %8 to i32
  %9 = add nuw nsw i32 %conv.i, %conv2.i
  %sub7.i = sub nsw i32 32, %9
  %shr.i = lshr i32 -1, %sub7.i
  %and.i = and i32 %shr.i, %shl.neg.i
  %neg.i = xor i32 %and.i, -1
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg.i, align 4
  %and9.i = and i32 %11, %neg.i
  store i32 %and9.i, ptr %reg.i, align 4
  %12 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %common, align 4
  %14 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %add.ptr.i, align 4
  %conv12.i = zext i8 %index to i32
  %shl15.i = shl i32 %conv12.i, %conv.i
  %or.i = or i32 %and9.i, %shl15.i
  %call16.i = call i32 @regmap_write(ptr noundef %13, i32 noundef %15, i32 noundef %or.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @owl_mux_get_parent(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -12
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
  %shift.i = getelementptr i8, ptr %hw, i32 -8
  %7 = ptrtoint ptr %shift.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %shift.i, align 4
  %conv.i = zext i8 %8 to i32
  %shr.i = lshr i32 %6, %conv.i
  %width.i = getelementptr i8, ptr %hw, i32 -7
  %9 = ptrtoint ptr %width.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %width.i, align 1
  %conv3.i = zext i8 %10 to i32
  %notmask.i = shl nsw i32 -1, %conv3.i
  %sub.i = xor i32 %notmask.i, -1
  %and.i = and i32 %shr.i, %sub.i
  %conv5.i = trunc i32 %and.i to i8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  ret i8 %conv5.i
}

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

!0 = !{ptr @owl_mux_ops, !1, !"owl_mux_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/actions/owl-mux.c", i32 56, i32 22}
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
