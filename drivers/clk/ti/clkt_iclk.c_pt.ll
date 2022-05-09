; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/clkt_iclk.c_pt.bc'
source_filename = "../drivers/clk/ti/clkt_iclk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@ti_clk_ll_ops = external dso_local local_unnamed_addr global ptr, align 4
@clkhwops_iclk = dso_local constant { %struct.clk_hw_omap_ops, [16 x i8] } { %struct.clk_hw_omap_ops { ptr null, ptr null, ptr @omap2_clkt_iclk_allow_idle, ptr @omap2_clkt_iclk_deny_idle }, [16 x i8] zeroinitializer }, align 32
@clkhwops_iclk_wait = dso_local constant { %struct.clk_hw_omap_ops, [16 x i8] } { %struct.clk_hw_omap_ops { ptr @omap2_clk_dflt_find_idlest, ptr @omap2_clk_dflt_find_companion, ptr @omap2_clkt_iclk_allow_idle, ptr @omap2_clkt_iclk_deny_idle }, [16 x i8] zeroinitializer }, align 32
@clkhwops_omap2430_i2chs_wait = dso_local constant { %struct.clk_hw_omap_ops, [16 x i8] } { %struct.clk_hw_omap_ops { ptr @omap2430_clk_i2chs_find_idlest, ptr @omap2_clk_dflt_find_companion, ptr null, ptr null }, [16 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [14 x i8] c"clkhwops_iclk\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 81, i32 30 }
@___asan_gen_.4 = private unnamed_addr constant [19 x i8] c"clkhwops_iclk_wait\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 86, i32 30 }
@___asan_gen_.7 = private unnamed_addr constant [29 x i8] c"clkhwops_omap2430_i2chs_wait\00", align 1
@___asan_gen_.8 = private constant [30 x i8] c"../drivers/clk/ti/clkt_iclk.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 94, i32 30 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @clkhwops_iclk, ptr @clkhwops_iclk_wait, ptr @clkhwops_omap2430_i2chs_wait], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkhwops_iclk to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkhwops_iclk_wait to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkhwops_omap2430_i2chs_wait to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2_clkt_iclk_allow_idle(ptr nocapture noundef readonly %clk) #0 align 64 {
entry:
  %r = alloca %struct.clk_omap_reg, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %r) #4
  %0 = getelementptr inbounds %struct.clk_omap_reg, ptr %r, i32 0, i32 1
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 4
  %1 = ptrtoint ptr %enable_reg to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %enable_reg, align 4
  %3 = ptrtoint ptr %r to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %r, align 8
  %4 = lshr i64 %2, 16
  %5 = trunc i64 %4 to i16
  %6 = xor i16 %5, 32
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %8 = load ptr, ptr @ti_clk_ll_ops, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call = call i32 %10(ptr noundef nonnull %r) #4
  %enable_bit = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 5
  %11 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable_bit, align 4
  %conv2 = zext i8 %12 to i32
  %shl = shl nuw i32 1, %conv2
  %or = or i32 %shl, %call
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %13 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_writel, align 4
  call void %15(i32 noundef %or, ptr noundef nonnull %r) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %r) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2_clkt_iclk_deny_idle(ptr nocapture noundef readonly %clk) #0 align 64 {
entry:
  %r = alloca %struct.clk_omap_reg, align 8
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %r) #4
  %0 = getelementptr inbounds %struct.clk_omap_reg, ptr %r, i32 0, i32 1
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 4
  %1 = ptrtoint ptr %enable_reg to i32
  call void @__asan_loadN_noabort(i32 %1, i32 8)
  %2 = load i64, ptr %enable_reg, align 4
  %3 = ptrtoint ptr %r to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 %2, ptr %r, align 8
  %4 = lshr i64 %2, 16
  %5 = trunc i64 %4 to i16
  %6 = xor i16 %5, 32
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store2_noabort(i32 %7)
  store i16 %6, ptr %0, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %8 = load ptr, ptr @ti_clk_ll_ops, align 4
  %9 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %8, align 4
  %call = call i32 %10(ptr noundef nonnull %r) #4
  %enable_bit = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 5
  %11 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %enable_bit, align 4
  %conv2 = zext i8 %12 to i32
  %shl = shl nuw i32 1, %conv2
  %neg = xor i32 %shl, -1
  %and = and i32 %call, %neg
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @ti_clk_ll_ops to i32))
  %13 = load ptr, ptr @ti_clk_ll_ops, align 4
  %clk_writel = getelementptr inbounds %struct.ti_clk_ll_ops, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %clk_writel to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk_writel, align 4
  call void %15(i32 noundef %and, ptr noundef nonnull %r) #4
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %r) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_dflt_find_idlest(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2_clk_dflt_find_companion(ptr noundef, ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @omap2430_clk_i2chs_find_idlest(ptr nocapture noundef readonly %clk, ptr nocapture noundef %idlest_reg, ptr nocapture noundef writeonly %idlest_bit, ptr nocapture noundef writeonly %idlest_val) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %enable_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 4
  %0 = ptrtoint ptr %enable_reg to i32
  call void @__asan_loadN_noabort(i32 %0, i32 8)
  %1 = load i64, ptr %enable_reg, align 4
  %2 = ptrtoint ptr %idlest_reg to i32
  call void @__asan_storeN_noabort(i32 %2, i32 8)
  store i64 %1, ptr %idlest_reg, align 4
  %offset = getelementptr inbounds %struct.clk_omap_reg, ptr %idlest_reg, i32 0, i32 1
  %3 = lshr i64 %1, 16
  %4 = trunc i64 %3 to i16
  %5 = xor i16 %4, 36
  %6 = ptrtoint ptr %offset to i32
  call void @__asan_store2_noabort(i32 %6)
  store i16 %5, ptr %offset, align 4
  %enable_bit = getelementptr inbounds %struct.clk_hw_omap, ptr %clk, i32 0, i32 5
  %7 = ptrtoint ptr %enable_bit to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %enable_bit, align 4
  %9 = ptrtoint ptr %idlest_bit to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %8, ptr %idlest_bit, align 1
  %10 = ptrtoint ptr %idlest_val to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 0, ptr %idlest_val, align 1
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @clkhwops_iclk, !1, !"clkhwops_iclk", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/clkt_iclk.c", i32 81, i32 30}
!2 = !{ptr @clkhwops_iclk_wait, !3, !"clkhwops_iclk_wait", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/clkt_iclk.c", i32 86, i32 30}
!4 = !{ptr @clkhwops_omap2430_i2chs_wait, !5, !"clkhwops_omap2430_i2chs_wait", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/clkt_iclk.c", i32 94, i32 30}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
