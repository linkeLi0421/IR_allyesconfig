; ModuleID = '/llk/IR_all_yes/arch/arm/mach-omap2/clock.c_pt.bc'
source_filename = "../arch/arm/mach-omap2/clock.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.ti_clk_ll_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ti_clk_features = type { i32, i32, i32, i32, i32, i8, i8 }

@omap_clk_ll_ops = dso_local global { %struct.ti_clk_ll_ops, [32 x i8] } { %struct.ti_clk_ll_ops { ptr null, ptr null, ptr null, ptr @clkdm_clk_enable, ptr @clkdm_clk_disable, ptr @clkdm_lookup, ptr @omap_cm_wait_module_ready, ptr @cm_split_idlest_reg }, [32 x i8] zeroinitializer }, align 32
@cpu_mask = dso_local global { i16, [30 x i8] } zeroinitializer, align 32
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"omap_clk_ll_ops\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 54, i32 22 }
@___asan_gen_.4 = private unnamed_addr constant [9 x i8] c"cpu_mask\00", align 1
@___asan_gen_.5 = private constant [31 x i8] c"../arch/arm/mach-omap2/clock.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 39, i32 5 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @omap_clk_ll_ops, ptr @cpu_mask], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_clk_ll_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpu_mask to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_clk_enable(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clkdm_clk_disable(ptr noundef, ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clkdm_lookup(ptr noundef) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_cm_wait_module_ready(i8 noundef zeroext, i16 noundef signext, i16 noundef zeroext, i8 noundef zeroext) #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cm_split_idlest_reg(ptr noundef, ptr noundef, ptr noundef) #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local i32 @omap2_clk_setup_ll_ops() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @ti_clk_setup_ll_ops(ptr noundef nonnull @omap_clk_ll_ops) #3
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_setup_ll_ops(ptr noundef) local_unnamed_addr #0

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @ti_clk_init_features() local_unnamed_addr #1 section ".init.text" align 64 {
entry:
  %features = alloca %struct.ti_clk_features, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %features) #3
  %0 = call ptr @memset(ptr %features, i32 0, i32 24)
  %call.i = tail call i32 @omap_rev() #3
  %shr.mask.i = and i32 %call.i, -65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 875560960, i32 %shr.mask.i)
  %cmp.i.not = icmp eq i32 %shr.mask.i, 875560960
  br i1 %cmp.i.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %fint_band1_max = getelementptr inbounds %struct.ti_clk_features, ptr %features, i32 0, i32 3
  %1 = ptrtoint ptr %fint_band1_max to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 2100000, ptr %fint_band1_max, align 4
  %fint_band2_min = getelementptr inbounds %struct.ti_clk_features, ptr %features, i32 0, i32 4
  %2 = ptrtoint ptr %fint_band2_min to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 7500000, ptr %fint_band2_min, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %.sink121 = phi i32 [ 750000, %if.then ], [ 32000, %entry.if.end_crit_edge ]
  %.sink = phi i32 [ 21000000, %if.then ], [ 52000000, %entry.if.end_crit_edge ]
  %3 = getelementptr inbounds %struct.ti_clk_features, ptr %features, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %.sink121, ptr %3, align 4
  %5 = getelementptr inbounds %struct.ti_clk_features, ptr %features, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %.sink, ptr %5, align 4
  %call.i74 = tail call i32 @omap_rev() #3
  %and.i = and i32 %call.i74, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %and.i)
  %cmp.i75.not = icmp eq i32 %and.i, 36
  br i1 %cmp.i75.not, label %if.end.if.end36.sink.split_crit_edge, label %if.else7

if.end.if.end36.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36.sink.split

if.else7:                                         ; preds = %if.end
  %call.i77 = tail call i32 @omap_rev() #3
  %and.i78 = and i32 %call.i77, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i78)
  %cmp.i79.not = icmp eq i32 %and.i78, 52
  br i1 %cmp.i79.not, label %if.else7.if.end36.sink.split_crit_edge, label %if.else15

if.else7.if.end36.sink.split_crit_edge:           ; preds = %if.else7
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36.sink.split

if.else15:                                        ; preds = %if.else7
  %call.i81 = tail call i32 @omap_rev() #3
  %shr.mask.i82 = and i32 %call.i81, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 855638016, i32 %shr.mask.i82)
  %cmp.i83.not = icmp eq i32 %shr.mask.i82, 855638016
  br i1 %cmp.i83.not, label %if.else15.if.end36.sink.split_crit_edge, label %lor.lhs.false

if.else15.if.end36.sink.split_crit_edge:          ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36.sink.split

lor.lhs.false:                                    ; preds = %if.else15
  %call.i85 = tail call i32 @omap_rev() #3
  %and.i86 = and i32 %call.i85, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 68, i32 %and.i86)
  %cmp.i87.not = icmp eq i32 %and.i86, 68
  br i1 %cmp.i87.not, label %lor.lhs.false.if.end36.sink.split_crit_edge, label %lor.lhs.false20

lor.lhs.false.if.end36.sink.split_crit_edge:      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36.sink.split

lor.lhs.false20:                                  ; preds = %lor.lhs.false
  %call.i89 = tail call i32 @omap_rev() #3
  %shr.mask.i90 = and i32 %call.i89, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 1124073472, i32 %shr.mask.i90)
  %cmp.i91.not = icmp eq i32 %shr.mask.i90, 1124073472
  br i1 %cmp.i91.not, label %lor.lhs.false20.if.end36.sink.split_crit_edge, label %lor.lhs.false23

lor.lhs.false20.if.end36.sink.split_crit_edge:    ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36.sink.split

lor.lhs.false23:                                  ; preds = %lor.lhs.false20
  %call.i93 = tail call i32 @omap_rev() #3
  %and.i94 = and i32 %call.i93, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i94)
  %cmp.i95.not = icmp eq i32 %and.i94, 84
  br i1 %cmp.i95.not, label %lor.lhs.false23.if.end36.sink.split_crit_edge, label %lor.lhs.false26

lor.lhs.false23.if.end36.sink.split_crit_edge:    ; preds = %lor.lhs.false23
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36.sink.split

lor.lhs.false26:                                  ; preds = %lor.lhs.false23
  %call.i97 = tail call i32 @omap_rev() #3
  %shr.mask.i98 = and i32 %call.i97, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %shr.mask.i98)
  %cmp.i99.not = icmp eq i32 %shr.mask.i98, 117440512
  br i1 %cmp.i99.not, label %lor.lhs.false26.if.end36.sink.split_crit_edge, label %lor.lhs.false26.if.end36_crit_edge

lor.lhs.false26.if.end36_crit_edge:               ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36

lor.lhs.false26.if.end36.sink.split_crit_edge:    ; preds = %lor.lhs.false26
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end36.sink.split

if.end36.sink.split:                              ; preds = %lor.lhs.false26.if.end36.sink.split_crit_edge, %lor.lhs.false23.if.end36.sink.split_crit_edge, %lor.lhs.false20.if.end36.sink.split_crit_edge, %lor.lhs.false.if.end36.sink.split_crit_edge, %if.else15.if.end36.sink.split_crit_edge, %if.else7.if.end36.sink.split_crit_edge, %if.end.if.end36.sink.split_crit_edge
  %.sink124 = phi i8 [ 6, %if.end.if.end36.sink.split_crit_edge ], [ 96, %if.else7.if.end36.sink.split_crit_edge ], [ 112, %lor.lhs.false26.if.end36.sink.split_crit_edge ], [ 112, %lor.lhs.false23.if.end36.sink.split_crit_edge ], [ 112, %lor.lhs.false20.if.end36.sink.split_crit_edge ], [ 112, %lor.lhs.false.if.end36.sink.split_crit_edge ], [ 112, %if.else15.if.end36.sink.split_crit_edge ]
  %dpll_bypass_vals = getelementptr inbounds %struct.ti_clk_features, ptr %features, i32 0, i32 5
  %7 = ptrtoint ptr %dpll_bypass_vals to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %dpll_bypass_vals, align 4
  %9 = or i8 %8, %.sink124
  store i8 %9, ptr %dpll_bypass_vals, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.end36.sink.split, %lor.lhs.false26.if.end36_crit_edge
  %call.i101 = tail call i32 @omap_rev() #3
  %shr.mask.i102 = and i32 %call.i101, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 875560960, i32 %shr.mask.i102)
  %cmp.i103.not = icmp eq i32 %shr.mask.i102, 875560960
  br i1 %cmp.i103.not, label %if.then39, label %if.end36.if.end41_crit_edge

if.end36.if.end41_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end41

if.then39:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %features, align 4
  %or40 = or i32 %11, 1
  store i32 %or40, ptr %features, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.then39, %if.end36.if.end41_crit_edge
  %call42 = tail call i32 @omap_type() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call42)
  %cmp = icmp eq i32 %call42, 3
  br i1 %cmp, label %if.then44, label %if.end41.if.end47_crit_edge

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end47

if.then44:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #5
  %12 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %features, align 4
  %or46 = or i32 %13, 32
  store i32 %or46, ptr %features, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then44, %if.end41.if.end47_crit_edge
  %call.i105 = tail call i32 @omap_rev() #3
  %and.i106 = and i32 %call.i105, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %and.i106)
  %cmp.i107.not = icmp eq i32 %and.i106, 36
  br i1 %cmp.i107.not, label %if.end47.if.end57.sink.split_crit_edge, label %if.else51

if.end47.if.end57.sink.split_crit_edge:           ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57.sink.split

if.else51:                                        ; preds = %if.end47
  %call.i109 = tail call i32 @omap_rev() #3
  %and.i110 = and i32 %call.i109, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 52, i32 %and.i110)
  %cmp.i111.not = icmp eq i32 %and.i110, 52
  br i1 %cmp.i111.not, label %if.else51.if.end57.sink.split_crit_edge, label %if.else51.if.end57_crit_edge

if.else51.if.end57_crit_edge:                     ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57

if.else51.if.end57.sink.split_crit_edge:          ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end57.sink.split

if.end57.sink.split:                              ; preds = %if.else51.if.end57.sink.split_crit_edge, %if.end47.if.end57.sink.split_crit_edge
  %.sink126 = phi i8 [ 0, %if.end47.if.end57.sink.split_crit_edge ], [ 1, %if.else51.if.end57.sink.split_crit_edge ]
  %cm_idlest_val55 = getelementptr inbounds %struct.ti_clk_features, ptr %features, i32 0, i32 6
  %14 = ptrtoint ptr %cm_idlest_val55 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %.sink126, ptr %cm_idlest_val55, align 1
  br label %if.end57

if.end57:                                         ; preds = %if.end57.sink.split, %if.else51.if.end57_crit_edge
  %call58 = tail call i32 @omap_rev() #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 875561012, i32 %call58)
  %cmp59 = icmp eq i32 %call58, 875561012
  br i1 %cmp59, label %if.then61, label %if.end57.if.end64_crit_edge

if.end57.if.end64_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end64

if.then61:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #5
  %15 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %features, align 4
  %or63 = or i32 %16, 2
  store i32 %or63, ptr %features, align 4
  br label %if.end64

if.end64:                                         ; preds = %if.then61, %if.end57.if.end64_crit_edge
  %call.i113 = tail call i32 @omap_rev() #3
  %and.i114 = and i32 %call.i113, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 84, i32 %and.i114)
  %cmp.i115.not = icmp eq i32 %and.i114, 84
  br i1 %cmp.i115.not, label %if.end64.if.then70_crit_edge, label %lor.lhs.false67

if.end64.if.then70_crit_edge:                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then70

lor.lhs.false67:                                  ; preds = %if.end64
  %call.i117 = tail call i32 @omap_rev() #3
  %shr.mask.i118 = and i32 %call.i117, -16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 117440512, i32 %shr.mask.i118)
  %cmp.i119.not = icmp eq i32 %shr.mask.i118, 117440512
  br i1 %cmp.i119.not, label %lor.lhs.false67.if.then70_crit_edge, label %lor.lhs.false67.if.end73_crit_edge

lor.lhs.false67.if.end73_crit_edge:               ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end73

lor.lhs.false67.if.then70_crit_edge:              ; preds = %lor.lhs.false67
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.then70

if.then70:                                        ; preds = %lor.lhs.false67.if.then70_crit_edge, %if.end64.if.then70_crit_edge
  %17 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %features, align 4
  %or72 = or i32 %18, 8
  store i32 %or72, ptr %features, align 4
  br label %if.end73

if.end73:                                         ; preds = %if.then70, %lor.lhs.false67.if.end73_crit_edge
  call void @ti_clk_setup_features(ptr noundef nonnull %features) #3
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %features) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_type() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_rev() local_unnamed_addr #0

; Function Attrs: null_pointer_is_valid
declare dso_local void @ti_clk_setup_features(ptr noundef) local_unnamed_addr #0

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

attributes #0 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @omap_clk_ll_ops, !1, !"omap_clk_ll_ops", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-omap2/clock.c", i32 54, i32 22}
!2 = !{ptr @cpu_mask, !3, !"cpu_mask", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-omap2/clock.c", i32 39, i32 5}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
