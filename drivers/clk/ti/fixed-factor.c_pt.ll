; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/fixed-factor.c_pt.bc'
source_filename = "../drivers/clk/ti/fixed-factor.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@__of_table_ti_fixed_factor_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,fixed-factor-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_fixed_factor_clk_setup }, section "__clk_of_table", align 4
@.str = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"ti,clock-div\00", [19 x i8] zeroinitializer }, align 32
@of_ti_fixed_factor_clk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 45, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: %pOFn must have a clock-div property\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"of_ti_fixed_factor_clk_setup\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/ti/fixed-factor.c\00", [34 x i8] zeroinitializer }, align 32
@of_ti_fixed_factor_clk_setup._entry_ptr = internal global ptr @of_ti_fixed_factor_clk_setup._entry, section ".printk_index", align 4
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,clock-mult\00", [18 x i8] zeroinitializer }, align 32
@of_ti_fixed_factor_clk_setup._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.2, ptr @.str.3, i32 50, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013%s: %pOFn must have a clock-mult property\0A\00", [51 x i8] zeroinitializer }, align 32
@of_ti_fixed_factor_clk_setup._entry_ptr.7 = internal global ptr @of_ti_fixed_factor_clk_setup._entry.5, section ".printk_index", align 4
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti,set-rate-parent\00", [45 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 44, i32 33 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 45, i32 3 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 49, i32 33 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 50, i32 3 }
@___asan_gen_.33 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.34 = private constant [33 x i8] c"../drivers/clk/ti/fixed-factor.c\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.34, i32 54, i32 34 }
@llvm.compiler.used = appending global [12 x ptr] [ptr @__of_table_ti_fixed_factor_clk, ptr @of_ti_fixed_factor_clk_setup._entry, ptr @of_ti_fixed_factor_clk_setup._entry.5, ptr @of_ti_fixed_factor_clk_setup._entry_ptr, ptr @of_ti_fixed_factor_clk_setup._entry_ptr.7, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8], section "llvm.metadata"
@0 = internal global [9 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ti_fixed_factor_clk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ti_fixed_factor_clk_setup._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_fixed_factor_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %div = alloca i32, align 4
  %mult = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %div) #4
  %2 = ptrtoint ptr %div to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %div, align 4, !annotation !27
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mult) #4
  %3 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %mult, align 4, !annotation !27
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str, ptr noundef nonnull %div, i32 noundef 1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef %node) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i39 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.4, ptr noundef nonnull %mult, i32 noundef 1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i39)
  %tobool3.not = icmp sgt i32 %call.i.i39, -1
  br i1 %tobool3.not, label %if.end10, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.2, ptr noundef %node) #7
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %call.i = call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.8, ptr noundef null) #4
  %tobool.i.not = icmp eq ptr %call.i, null
  %spec.select = select i1 %tobool.i.not, i32 0, i32 4
  %call14 = call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #4
  %4 = ptrtoint ptr %mult to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mult, align 4
  %6 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %div, align 4
  %call15 = call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef %1, ptr noundef %call14, i32 noundef %spec.select, i32 noundef %5, i32 noundef %7) #4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end10.cleanup_crit_edge, label %if.then17

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then17:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #6
  %call18 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call15) #4
  %call19 = call i32 @of_ti_clk_autoidle_setup(ptr noundef %node) #4
  %call20 = call i32 @ti_clk_add_alias(ptr noundef null, ptr noundef %call15, ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %if.then17, %if.end10.cleanup_crit_edge, %do.end7, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mult) #4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %div) #4
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_ti_clk_autoidle_setup(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_add_alias(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 9)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !14, !15, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @__of_table_ti_fixed_factor_clk, !1, !"__of_table_ti_fixed_factor_clk", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/fixed-factor.c", i32 68, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/fixed-factor.c", i32 44, i32 33}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/fixed-factor.c", i32 45, i32 3}
!6 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @of_ti_fixed_factor_clk_setup._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @of_ti_fixed_factor_clk_setup._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/ti/fixed-factor.c", i32 49, i32 33}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/ti/fixed-factor.c", i32 50, i32 3}
!14 = !{ptr @of_ti_fixed_factor_clk_setup._entry.5, !13, !"_entry", i1 false, i1 false}
!15 = !{ptr @of_ti_fixed_factor_clk_setup._entry_ptr.7, !13, !"_entry_ptr", i1 false, i1 false}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/ti/fixed-factor.c", i32 54, i32 34}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{!"auto-init"}
