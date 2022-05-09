; ModuleID = '/llk/IR_all_yes/drivers/clk/uniphier/clk-uniphier-mux.c_pt.bc'
source_filename = "../drivers/clk/uniphier/clk-uniphier-mux.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.uniphier_clk_mux_data = type { [8 x ptr], i32, i32, [8 x i32], [8 x i32] }
%struct.uniphier_clk_mux = type { %struct.clk_hw, ptr, i32, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@uniphier_clk_mux_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @__clk_mux_determine_rate, ptr @uniphier_clk_mux_set_parent, ptr @uniphier_clk_mux_get_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [21 x i8] c"uniphier_clk_mux_ops\00", align 1
@___asan_gen_.2 = private constant [43 x i8] c"../drivers/clk/uniphier/clk-uniphier-mux.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 50, i32 29 }
@llvm.compiler.used = appending global [1 x ptr] [ptr @uniphier_clk_mux_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @uniphier_clk_mux_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @uniphier_clk_register_mux(ptr noundef %dev, ptr noundef %regmap, ptr noundef %name, ptr noundef %data) local_unnamed_addr #0 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #3
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 255, i32 12)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #3
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %2 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %3 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @uniphier_clk_mux_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 4, ptr %flags, align 4
  %parent_names3 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %5 = ptrtoint ptr %parent_names3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %data, ptr %parent_names3, align 4
  %num_parents = getelementptr inbounds %struct.uniphier_clk_mux_data, ptr %data, i32 0, i32 1
  %6 = ptrtoint ptr %num_parents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_parents, align 4
  %conv = trunc i32 %7 to i8
  %num_parents4 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %8 = ptrtoint ptr %num_parents4 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %num_parents4, align 4
  %regmap5 = getelementptr inbounds %struct.uniphier_clk_mux, ptr %call.i, i32 0, i32 1
  %9 = ptrtoint ptr %regmap5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %regmap, ptr %regmap5, align 4
  %reg = getelementptr inbounds %struct.uniphier_clk_mux_data, ptr %data, i32 0, i32 2
  %10 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %reg, align 4
  %reg6 = getelementptr inbounds %struct.uniphier_clk_mux, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %reg6 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %reg6, align 4
  %masks = getelementptr inbounds %struct.uniphier_clk_mux_data, ptr %data, i32 0, i32 3
  %masks8 = getelementptr inbounds %struct.uniphier_clk_mux, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %masks8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %masks, ptr %masks8, align 4
  %vals = getelementptr inbounds %struct.uniphier_clk_mux_data, ptr %data, i32 0, i32 4
  %vals10 = getelementptr inbounds %struct.uniphier_clk_mux, ptr %call.i, i32 0, i32 4
  %14 = ptrtoint ptr %vals10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %vals, ptr %vals10, align 4
  %init11 = getelementptr inbounds %struct.clk_hw, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %init11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %init, ptr %init11, align 4
  %call13 = call i32 @devm_clk_hw_register(ptr noundef %dev, ptr noundef nonnull %call.i) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  %16 = inttoptr i32 %call13 to ptr
  %spec.select = select i1 %tobool14.not, ptr %call.i, ptr %16
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %spec.select, %if.end ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #3
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_clk_hw_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__clk_mux_determine_rate(ptr noundef, ptr noundef) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @uniphier_clk_mux_set_parent(ptr nocapture noundef readonly %hw, i8 noundef zeroext %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap = getelementptr inbounds %struct.uniphier_clk_mux, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.uniphier_clk_mux, ptr %hw, i32 0, i32 2
  %2 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %reg, align 4
  %masks = getelementptr inbounds %struct.uniphier_clk_mux, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %masks, align 4
  %idxprom = zext i8 %index to i32
  %arrayidx = getelementptr i32, ptr %5, i32 %idxprom
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %vals = getelementptr inbounds %struct.uniphier_clk_mux, ptr %hw, i32 0, i32 4
  %8 = ptrtoint ptr %vals to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vals, align 4
  %arrayidx2 = getelementptr i32, ptr %9, i32 %idxprom
  %10 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx2, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef %3, i32 noundef %7, i32 noundef %11, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext true) #3
  ret i32 %call.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i8 @uniphier_clk_mux_get_parent(ptr noundef %hw) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @clk_hw_get_num_parents(ptr noundef %hw) #3
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #3
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !11
  %regmap = getelementptr inbounds %struct.uniphier_clk_mux, ptr %hw, i32 0, i32 1
  %1 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %regmap, align 4
  %reg = getelementptr inbounds %struct.uniphier_clk_mux, ptr %hw, i32 0, i32 2
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %reg, align 4
  %call1 = call i32 @regmap_read(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %val) #3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %for.cond.preheader, label %if.then

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp23.not = icmp eq i32 %call, 0
  br i1 %cmp23.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %masks = getelementptr inbounds %struct.uniphier_clk_mux, ptr %hw, i32 0, i32 3
  %5 = ptrtoint ptr %masks to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %masks, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %val, align 4
  %vals = getelementptr inbounds %struct.uniphier_clk_mux, ptr %hw, i32 0, i32 4
  %9 = ptrtoint ptr %vals to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %vals, align 4
  br label %for.body

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %conv = trunc i32 %call1 to i8
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.024 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %6, i32 %i.024
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %and = and i32 %8, %12
  %arrayidx3 = getelementptr i32, ptr %10, i32 %i.024
  %13 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %14)
  %cmp4 = icmp eq i32 %and, %14
  br i1 %cmp4, label %if.then6, label %for.inc

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #5
  %conv7 = trunc i32 %i.024 to i8
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.024, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.then6, %if.then, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i8 [ %conv, %if.then ], [ %conv7, %if.then6 ], [ -22, %for.cond.preheader.cleanup_crit_edge ], [ -22, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #3
  ret i8 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_hw_get_num_parents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

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

!0 = !{ptr @uniphier_clk_mux_ops, !1, !"uniphier_clk_mux_ops", i1 false, i1 false}
!1 = !{!"../drivers/clk/uniphier/clk-uniphier-mux.c", i32 50, i32 29}
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
