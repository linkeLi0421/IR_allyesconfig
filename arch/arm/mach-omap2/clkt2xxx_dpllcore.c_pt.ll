; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/clkt2xxx_dpllcore.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clkt2xxx_dpllcore.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.prcm_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i16 }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.dpll_data = type { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, i32, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }

@dpll_core_ck = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"arch/arm/mach-omap2/clkt2xxx_dpllcore.c\00", [56 x i8] zeroinitializer }, align 32
@curr_prcm_set = external dso_local local_unnamed_addr global ptr, align 4
@omap_clk_ll_ops = external dso_local local_unnamed_addr global %struct.ti_clk_ll_ops, align 4
@.str.1 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"dpll_core_ck already set - should never happen\00", [49 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [13 x i8] c"dpll_core_ck\00", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 40, i32 28 }
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 56, i32 2 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [43 x i8] c"../arch/arm/mach-omap2/clkt2xxx_dpllcore.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 191, i32 2 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @dpll_core_ck, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll_core_ck to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2xxx_clk_get_core_rate() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dpll_core_ck, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %do.end, label %entry.if.end_crit_edge, !prof !15

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #3
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %1 = load ptr, ptr @dpll_core_ck, align 4
  %call = tail call i32 @omap2_get_dpll_rate(ptr noundef %1) #3
  %call21 = tail call i32 @omap2xxx_cm_get_core_clk_src() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %cmp = icmp eq i32 %call21, 0
  %mul = mul i32 %call21, %call
  %core_clk.0.off0 = select i1 %cmp, i32 32768, i32 %mul
  ret i32 %core_clk.0.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_get_dpll_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2xxx_cm_get_core_clk_src() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_dpllcore_recalc(ptr nocapture noundef readnone %hw, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dpll_core_ck, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.omap2xxx_clk_get_core_rate.exit_crit_edge, !prof !15

entry.omap2xxx_clk_get_core_rate.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %omap2xxx_clk_get_core_rate.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #3
  br label %omap2xxx_clk_get_core_rate.exit

omap2xxx_clk_get_core_rate.exit:                  ; preds = %do.end.i, %entry.omap2xxx_clk_get_core_rate.exit_crit_edge
  %1 = load ptr, ptr @dpll_core_ck, align 4
  %call.i = tail call i32 @omap2_get_dpll_rate(ptr noundef %1) #3
  %call21.i = tail call i32 @omap2xxx_cm_get_core_clk_src() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp.i = icmp eq i32 %call21.i, 0
  %mul.i = mul i32 %call21.i, %call.i
  %core_clk.0.off0.i = select i1 %cmp.i, i32 32768, i32 %mul.i
  ret i32 %core_clk.0.off0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_reprogram_dpllcore(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dpll_core_ck, align 4
  %tobool.not.i = icmp eq ptr %0, null
  br i1 %tobool.not.i, label %do.end.i, label %entry.omap2xxx_clk_get_core_rate.exit_crit_edge, !prof !15

entry.omap2xxx_clk_get_core_rate.exit_crit_edge:  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %omap2xxx_clk_get_core_rate.exit

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 56, i32 noundef 9, ptr noundef null) #3
  br label %omap2xxx_clk_get_core_rate.exit

omap2xxx_clk_get_core_rate.exit:                  ; preds = %do.end.i, %entry.omap2xxx_clk_get_core_rate.exit_crit_edge
  %1 = load ptr, ptr @dpll_core_ck, align 4
  %call.i = tail call i32 @omap2_get_dpll_rate(ptr noundef %1) #3
  %call21.i = tail call i32 @omap2xxx_cm_get_core_clk_src() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21.i)
  %cmp.i = icmp eq i32 %call21.i, 0
  %mul.i = mul i32 %call21.i, %call.i
  %core_clk.0.off0.i = select i1 %cmp.i, i32 32768, i32 %mul.i
  %call1 = tail call i32 @omap2xxx_cm_get_core_clk_src() #3
  %div2101 = lshr i32 %core_clk.0.off0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %div2101, i32 %rate)
  %cmp = icmp eq i32 %div2101, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call1)
  %cmp3 = icmp eq i32 %call1, 2
  %or.cond = select i1 %cmp, i1 %cmp3, i1 false
  br i1 %or.cond, label %if.then, label %if.else

if.then:                                          ; preds = %omap2xxx_clk_get_core_rate.exit
  call void @__sanitizer_cov_trace_pc() #5
  %call4 = tail call i32 @omap2xxx_sdrc_reprogram(i32 noundef 1, i32 noundef 1) #3
  br label %cleanup

if.else:                                          ; preds = %omap2xxx_clk_get_core_rate.exit
  %mul = shl i32 %core_clk.0.off0.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %rate)
  %cmp5 = icmp eq i32 %mul, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call1)
  %cmp7 = icmp eq i32 %call1, 1
  %or.cond104 = select i1 %cmp5, i1 %cmp7, i1 false
  br i1 %or.cond104, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #5
  %call9 = tail call i32 @omap2xxx_sdrc_reprogram(i32 noundef 2, i32 noundef 1) #3
  br label %cleanup

if.else10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_cmp4(i32 %core_clk.0.off0.i, i32 %rate)
  %cmp11.not = icmp eq i32 %core_clk.0.off0.i, %rate
  br i1 %cmp11.not, label %if.else10.cleanup_crit_edge, label %if.then12

if.else10.cleanup_crit_edge:                      ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.then12:                                        ; preds = %if.else10
  %call.i105 = tail call i32 @omap2xxx_cm_get_core_clk_src() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call.i105)
  %cmp.i106 = icmp eq i32 %call.i105, 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @curr_prcm_set to i32))
  %2 = load ptr, ptr @curr_prcm_set, align 4
  %dpll_speed.i = getelementptr inbounds %struct.prcm_config, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %dpll_speed.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dpll_speed.i, align 4
  %mul.i107 = zext i1 %cmp.i106 to i32
  %high.0.i = shl i32 %4, %mul.i107
  %not.cmp.i = xor i1 %cmp.i106, true
  %div10.i = zext i1 %not.cmp.i to i32
  %low.0.i = lshr i32 %4, %div10.i
  call void @__sanitizer_cov_trace_cmp4(i32 %low.0.i, i32 %rate)
  %cmp4.i = icmp ult i32 %low.0.i, %rate
  %high.0.low.0.i = select i1 %cmp4.i, i32 %high.0.i, i32 %low.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %high.0.low.0.i, i32 %rate)
  %cmp14.not = icmp eq i32 %high.0.low.0.i, %rate
  br i1 %cmp14.not, label %if.end, label %if.then12.cleanup_crit_edge

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %if.then12
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %hw, i32 0, i32 8
  %5 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dpll_data, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end23

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end23:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %not.cmp7 = xor i1 %cmp7, true
  %div20102 = zext i1 %not.cmp7 to i32
  %spec.select = lshr i32 %4, %div20102
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @omap_clk_ll_ops to i32))
  %7 = load ptr, ptr @omap_clk_ll_ops, align 4
  %call24 = tail call i32 %7(ptr noundef nonnull %6) #3
  %mult_mask = getelementptr inbounds %struct.dpll_data, ptr %6, i32 0, i32 1
  %8 = ptrtoint ptr %mult_mask to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mult_mask, align 4
  %div1_mask = getelementptr inbounds %struct.dpll_data, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %div1_mask to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %div1_mask, align 4
  %or = or i32 %11, %9
  %neg = xor i32 %or, -1
  %and = and i32 %call24, %neg
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @curr_prcm_set to i32))
  %12 = load ptr, ptr @curr_prcm_set, align 4
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %12, align 4
  %div26 = udiv i32 %14, 1000000
  %sub = add nsw i32 %div26, -1
  %call27 = tail call i32 @omap2xxx_cm_get_core_pll_config() #3
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %rate)
  %cmp30 = icmp ult i32 %spec.select, %rate
  %div34103 = zext i1 %cmp30 to i32
  %mult.0.in = lshr i32 %rate, %div34103
  %done_rate.0 = select i1 %cmp30, i32 2, i32 1
  %mult.0 = udiv i32 %mult.0.in, 1000000
  %15 = ptrtoint ptr %mult_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %mult_mask, align 4
  %17 = tail call i32 @llvm.cttz.i32(i32 %16, i1 false) #3, !range !16
  %shl = shl i32 %sub, %17
  %or44 = or i32 %shl, %and
  %18 = ptrtoint ptr %div1_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %div1_mask, align 4
  %20 = tail call i32 @llvm.cttz.i32(i32 %19, i1 false) #3, !range !16
  %shl47 = shl i32 %mult.0, %20
  %or49 = or i32 %or44, %shl47
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @curr_prcm_set to i32))
  %21 = load ptr, ptr @curr_prcm_set, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %23, i32 %rate)
  %cmp51 = icmp eq i32 %23, %rate
  %bypass.0 = zext i1 %cmp51 to i32
  %call54 = tail call i32 @omap2xxx_sdrc_reprogram(i32 noundef 2, i32 noundef 1) #3
  %call57 = tail call i32 @omap2_set_prcm(i32 noundef %or49, i32 noundef 20481, i32 noundef %bypass.0) #3
  %call58 = tail call i32 @omap2xxx_sdrc_dll_is_unlocked() #3
  tail call void @omap2xxx_sdrc_init_params(i32 noundef %call58) #3
  %call59 = tail call i32 @omap2xxx_sdrc_reprogram(i32 noundef %done_rate.0, i32 noundef 0) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %if.end.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.else10.cleanup_crit_edge, %if.then8, %if.then
  %retval.0 = phi i32 [ -22, %if.then12.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end23 ], [ 0, %if.else10.cleanup_crit_edge ], [ 0, %if.then ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2xxx_sdrc_reprogram(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2xxx_cm_get_core_pll_config() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_set_prcm(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2xxx_sdrc_init_params(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2xxx_sdrc_dll_is_unlocked() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @omap2xxx_clkt_dpllcore_init(ptr noundef %hw) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @dpll_core_ck, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !17

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 191, i32 noundef 9, ptr noundef nonnull @.str.1) #3
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  store ptr %hw, ptr @dpll_core_ck, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/clkt2xxx_dpllcore.c", i32 56, i32 2}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/clkt2xxx_dpllcore.c", i32 191, i32 2}
!4 = !{ptr @dpll_core_ck, !5, !"dpll_core_ck", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-omap2/clkt2xxx_dpllcore.c", i32 40, i32 28}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!15 = !{!"branch_weights", i32 1, i32 2000}
!16 = !{i32 0, i32 33}
!17 = !{!"branch_weights", i32 2000, i32 1}
