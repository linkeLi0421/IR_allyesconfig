; ModuleID = '/llk/IR_all_yes/drivers/clk/actions/owl-gate.c_pt.bc'
source_filename = "../drivers/clk/actions/owl-gate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.owl_gate_hw = type { i32, i8, i8 }

@owl_gate_ops = dso_local constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @owl_gate_enable, ptr @owl_gate_disable, ptr @owl_gate_is_enabled, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [13 x i8] c"owl_gate_ops\00", align 1
@___asan_gen_.2 = private constant [34 x i8] c"../drivers/clk/actions/owl-gate.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 73, i32 22 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @owl_gate_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @owl_gate_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @owl_gate_set(ptr nocapture noundef readonly %common, ptr nocapture noundef readonly %gate_hw, i1 noundef zeroext %enable) local_unnamed_addr #0 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %gate_flags = getelementptr inbounds %struct.owl_gate_hw, ptr %gate_hw, i32 0, i32 2
  %0 = ptrtoint ptr %gate_flags to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gate_flags, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #3
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg, align 4, !annotation !11
  %3 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %common, align 4
  %5 = ptrtoint ptr %gate_hw to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %gate_hw, align 4
  %call = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %reg) #3
  %7 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %8 = icmp eq i8 %7, 0
  %tobool4.not = xor i1 %8, %enable
  %bit_idx6 = getelementptr inbounds %struct.owl_gate_hw, ptr %gate_hw, i32 0, i32 1
  %9 = ptrtoint ptr %bit_idx6 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bit_idx6, align 4
  %conv7 = zext i8 %10 to i32
  %shl8 = shl nuw i32 1, %conv7
  br i1 %tobool4.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg, align 4
  %or = or i32 %shl8, %12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %neg = xor i32 %shl8, -1
  %13 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg, align 4
  %and9 = and i32 %14, %neg
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %storemerge = phi i32 [ %and9, %if.else ], [ %or, %if.then ]
  %15 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge, ptr %reg, align 4
  %16 = ptrtoint ptr %common to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %common, align 4
  %18 = ptrtoint ptr %gate_hw to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %gate_hw, align 4
  %call12 = call i32 @regmap_write(ptr noundef %17, i32 noundef %19, i32 noundef %storemerge) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @owl_gate_clk_is_enabled(ptr nocapture noundef readonly %common, ptr nocapture noundef readonly %gate_hw) local_unnamed_addr #0 align 64 {
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
  %3 = ptrtoint ptr %gate_hw to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %gate_hw, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %reg) #3
  %gate_flags = getelementptr inbounds %struct.owl_gate_hw, ptr %gate_hw, i32 0, i32 2
  %5 = ptrtoint ptr %gate_flags to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %gate_flags, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bit_idx = getelementptr inbounds %struct.owl_gate_hw, ptr %gate_hw, i32 0, i32 1
  %8 = ptrtoint ptr %bit_idx to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bit_idx, align 4
  %conv2 = zext i8 %9 to i32
  %shl = shl nuw i32 1, %conv2
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %xor = xor i32 %shl, %11
  store i32 %xor, ptr %reg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %12 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg, align 4
  %bit_idx3 = getelementptr inbounds %struct.owl_gate_hw, ptr %gate_hw, i32 0, i32 1
  %14 = ptrtoint ptr %bit_idx3 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bit_idx3, align 4
  %conv4 = zext i8 %15 to i32
  %16 = lshr i32 %13, %conv4
  %17 = and i32 %16, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #3
  ret i32 %17
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_gate_enable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -12
  %common1 = getelementptr i8, ptr %hw, i32 -4
  %gate_flags.i = getelementptr i8, ptr %hw, i32 -7
  %0 = ptrtoint ptr %gate_flags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gate_flags.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i, align 4, !annotation !11
  %3 = ptrtoint ptr %common1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %common1, align 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %reg.i) #3
  %7 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %.not = icmp eq i8 %7, 0
  %bit_idx6.i = getelementptr i8, ptr %hw, i32 -8
  %8 = ptrtoint ptr %bit_idx6.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bit_idx6.i, align 4
  %conv7.i = zext i8 %9 to i32
  %shl8.i = shl nuw i32 1, %conv7.i
  br i1 %.not, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg.i, align 4
  %or.i = or i32 %11, %shl8.i
  br label %owl_gate_set.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %neg.i = xor i32 %shl8.i, -1
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg.i, align 4
  %and9.i = and i32 %13, %neg.i
  br label %owl_gate_set.exit

owl_gate_set.exit:                                ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %and9.i, %if.else.i ], [ %or.i, %if.then.i ]
  %14 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %storemerge.i, ptr %reg.i, align 4
  %15 = ptrtoint ptr %common1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %common1, align 4
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %add.ptr.i, align 4
  %call12.i = call i32 @regmap_write(ptr noundef %16, i32 noundef %18, i32 noundef %storemerge.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @owl_gate_disable(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -12
  %common1 = getelementptr i8, ptr %hw, i32 -4
  %gate_flags.i = getelementptr i8, ptr %hw, i32 -7
  %0 = ptrtoint ptr %gate_flags.i to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %gate_flags.i, align 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %2 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %reg.i, align 4, !annotation !11
  %3 = ptrtoint ptr %common1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %common1, align 4
  %5 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %4, i32 noundef %6, ptr noundef nonnull %reg.i) #3
  %7 = and i8 %1, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %8 = icmp eq i8 %7, 0
  %bit_idx6.i = getelementptr i8, ptr %hw, i32 -8
  %9 = ptrtoint ptr %bit_idx6.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %bit_idx6.i, align 4
  %conv7.i = zext i8 %10 to i32
  %shl8.i = shl nuw i32 1, %conv7.i
  br i1 %8, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %11 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %reg.i, align 4
  %or.i = or i32 %12, %shl8.i
  br label %owl_gate_set.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %neg.i = xor i32 %shl8.i, -1
  %13 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %reg.i, align 4
  %and9.i = and i32 %14, %neg.i
  br label %owl_gate_set.exit

owl_gate_set.exit:                                ; preds = %if.else.i, %if.then.i
  %storemerge.i = phi i32 [ %and9.i, %if.else.i ], [ %or.i, %if.then.i ]
  %15 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %storemerge.i, ptr %reg.i, align 4
  %16 = ptrtoint ptr %common1 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %common1, align 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  %call12.i = call i32 @regmap_write(ptr noundef %17, i32 noundef %19, i32 noundef %storemerge.i) #3
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @owl_gate_is_enabled(ptr nocapture noundef readonly %hw) #0 align 64 {
entry:
  %reg.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %hw, i32 -12
  %common1 = getelementptr i8, ptr %hw, i32 -4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg.i) #3
  %0 = ptrtoint ptr %reg.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %reg.i, align 4, !annotation !11
  %1 = ptrtoint ptr %common1 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %common1, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr.i, align 4
  %call.i = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %reg.i) #3
  %gate_flags.i = getelementptr i8, ptr %hw, i32 -7
  %5 = ptrtoint ptr %gate_flags.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %gate_flags.i, align 1
  %7 = and i8 %6, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %entry.owl_gate_clk_is_enabled.exit_crit_edge, label %if.then.i

entry.owl_gate_clk_is_enabled.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %owl_gate_clk_is_enabled.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %bit_idx.i = getelementptr i8, ptr %hw, i32 -8
  %8 = ptrtoint ptr %bit_idx.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bit_idx.i, align 4
  %conv2.i = zext i8 %9 to i32
  %shl.i = shl nuw i32 1, %conv2.i
  %10 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg.i, align 4
  %xor.i = xor i32 %shl.i, %11
  store i32 %xor.i, ptr %reg.i, align 4
  br label %owl_gate_clk_is_enabled.exit

owl_gate_clk_is_enabled.exit:                     ; preds = %if.then.i, %entry.owl_gate_clk_is_enabled.exit_crit_edge
  %12 = ptrtoint ptr %reg.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %reg.i, align 4
  %bit_idx3.i = getelementptr i8, ptr %hw, i32 -8
  %14 = ptrtoint ptr %bit_idx3.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %bit_idx3.i, align 4
  %conv4.i = zext i8 %15 to i32
  %16 = lshr i32 %13, %conv4.i
  %17 = and i32 %16, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg.i) #3
  ret i32 %17
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

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

!0 = !{ptr @owl_gate_ops, !1, !"owl_gate_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/actions/owl-gate.c", i32 73, i32 22}
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
