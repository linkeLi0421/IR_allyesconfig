; ModuleID = '/llk/IR_all_yes/drivers/clk/at91/clk-smd.c_pt.bc'
source_filename = "../drivers/clk/at91/clk-smd.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.at91sam9x5_clk_smd = type { %struct.clk_hw, ptr }

@at91sam9x5_smd_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @at91sam9x5_clk_smd_recalc_rate, ptr @at91sam9x5_clk_smd_round_rate, ptr null, ptr @at91sam9x5_clk_smd_set_parent, ptr @at91sam9x5_clk_smd_get_parent, ptr @at91sam9x5_clk_smd_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [19 x i8] c"at91sam9x5_smd_ops\00", align 1
@___asan_gen_.2 = private constant [30 x i8] c"../drivers/clk/at91/clk-smd.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 99, i32 29 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @at91sam9x5_smd_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at91sam9x5_smd_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local ptr @at91sam9x5_clk_register_smd(ptr noundef %regmap, ptr noundef %name, ptr noundef %parent_names, i8 noundef zeroext %num_parents) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #6
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %4 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @at91sam9x5_smd_ops, ptr %ops, align 4
  %parent_names3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %5 = ptrtoint ptr %parent_names3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %parent_names, ptr %parent_names3, align 4
  %num_parents4 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %6 = ptrtoint ptr %num_parents4 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %num_parents, ptr %num_parents4, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %flags, align 4
  %init6 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %init6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %init, ptr %init6, align 8
  %regmap7 = getelementptr inbounds %struct.at91sam9x5_clk_smd, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %regmap7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %regmap, ptr %regmap7, align 4
  %call10 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.then12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  call void @kfree(ptr noundef nonnull %call7.i.i) #6
  %10 = inttoptr i32 %call10 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %10, %if.then12 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #6
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91sam9x5_clk_smd_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #4 align 64 {
entry:
  %smdr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smdr) #6
  %0 = ptrtoint ptr %smdr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %smdr, align 4, !annotation !11
  %regmap = getelementptr inbounds %struct.at91sam9x5_clk_smd, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 60, ptr noundef nonnull %smdr) #6
  %3 = ptrtoint ptr %smdr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %smdr, align 4
  %and = lshr i32 %4, 8
  %conv = and i32 %and, 31
  %add = add nuw nsw i32 %conv, 1
  %div = udiv i32 %parent_rate, %add
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smdr) #6
  ret i32 %div
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @at91sam9x5_clk_smd_round_rate(ptr nocapture noundef readnone %hw, i32 noundef %rate, ptr nocapture noundef readonly %parent_rate) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %rate)
  %cmp.not = icmp ugt i32 %1, %rate
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %div1 = udiv i32 %1, %rate
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %div1)
  %cmp2 = icmp ugt i32 %div1, 15
  br i1 %cmp2, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %div426 = lshr i32 %1, 4
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %div6 = udiv i32 %1, %div1
  %add = add nuw nsw i32 %div1, 1
  %div7 = udiv i32 %1, %add
  %sub = sub i32 %div6, %rate
  %sub8 = sub i32 %rate, %div7
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %sub8)
  %cmp9 = icmp ugt i32 %sub, %sub8
  %spec.select = select i1 %cmp9, i32 %div7, i32 %div6
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %div426, %if.then3 ], [ %spec.select, %if.end5 ], [ %1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91sam9x5_clk_smd_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %index)
  %cmp = icmp ugt i8 %index, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.at91sam9x5_clk_smd, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %index)
  %tobool.not = icmp ne i8 %index, 0
  %cond = zext i1 %tobool.not to i32
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 60, i32 noundef 1, i32 noundef %cond, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @at91sam9x5_clk_smd_get_parent(ptr nocapture noundef readonly %hw) #4 align 64 {
entry:
  %smdr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %smdr) #6
  %0 = ptrtoint ptr %smdr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %smdr, align 4, !annotation !11
  %regmap = getelementptr inbounds %struct.at91sam9x5_clk_smd, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %call = call i32 @regmap_read(ptr noundef %2, i32 noundef 60, ptr noundef nonnull %smdr) #6
  %3 = ptrtoint ptr %smdr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %smdr, align 4
  %5 = trunc i32 %4 to i8
  %conv = and i8 %5, 1
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %smdr) #6
  ret i8 %conv
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at91sam9x5_clk_smd_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %div1 = udiv i32 %parent_rate, %rate
  %0 = mul i32 %div1, %rate
  %rem.decomposed = sub i32 %parent_rate, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool.not = icmp ne i32 %rem.decomposed, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %rate, i32 %parent_rate)
  %cmp = icmp ugt i32 %rate, %parent_rate
  %or.cond = or i1 %cmp, %tobool.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %div1)
  %cmp3 = icmp ugt i32 %div1, 16
  %or.cond9 = or i1 %cmp3, %or.cond
  br i1 %or.cond9, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %regmap = getelementptr inbounds %struct.at91sam9x5_clk_smd, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %sub = shl nuw nsw i32 %div1, 8
  %shl = add nsw i32 %sub, -256
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %2, i32 noundef 60, i32 noundef 7936, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0}
!llvm.module.flags = !{!2, !3, !4, !5, !6, !7, !8, !9}
!llvm.ident = !{!10}

!0 = !{ptr @at91sam9x5_smd_ops, !1, !"at91sam9x5_smd_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/at91/clk-smd.c", i32 99, i32 29}
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
