; ModuleID = '/llk/IR_all_yes/drivers/clk/imx/clk-cpu.c_pt.bc'
source_filename = "../drivers/clk/imx/clk-cpu.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+imx_clk_hw_cpu\22, \22a\22\09"
module asm "\09.weak\09__crc_imx_clk_hw_cpu\09\09\09\09"
module asm "\09.long\09__crc_imx_clk_hw_cpu\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_imx_clk_hw_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22imx_clk_hw_cpu\22\09\09\09\09\09"
module asm "__kstrtabns_imx_clk_hw_cpu:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_cpu = type { %struct.clk_hw, ptr, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }

@clk_cpu_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @clk_cpu_recalc_rate, ptr @clk_cpu_round_rate, ptr null, ptr null, ptr null, ptr @clk_cpu_set_rate, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__kstrtab_imx_clk_hw_cpu = external dso_local constant [0 x i8], align 1
@__kstrtabns_imx_clk_hw_cpu = external dso_local constant [0 x i8], align 1
@__ksymtab_imx_clk_hw_cpu = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @imx_clk_hw_cpu to i32), ptr @__kstrtab_imx_clk_hw_cpu, ptr @__kstrtabns_imx_clk_hw_cpu }, section "___ksymtab_gpl+imx_clk_hw_cpu", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"clk_cpu_ops\00", align 1
@___asan_gen_.2 = private constant [29 x i8] c"../drivers/clk/imx/clk-cpu.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 67, i32 29 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_imx_clk_hw_cpu, ptr @clk_cpu_ops], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_cpu_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @imx_clk_hw_cpu(ptr noundef %name, ptr noundef %parent_name, ptr noundef %div, ptr noundef %mux, ptr noundef %pll, ptr noundef %step) #0 align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #4
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 28) #7
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %div2 = getelementptr inbounds %struct.clk_cpu, ptr %call7.i.i, i32 0, i32 1
  %4 = ptrtoint ptr %div2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %div, ptr %div2, align 4
  %mux3 = getelementptr inbounds %struct.clk_cpu, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %mux3 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %mux, ptr %mux3, align 8
  %pll4 = getelementptr inbounds %struct.clk_cpu, ptr %call7.i.i, i32 0, i32 3
  %6 = ptrtoint ptr %pll4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %pll, ptr %pll4, align 4
  %step5 = getelementptr inbounds %struct.clk_cpu, ptr %call7.i.i, i32 0, i32 4
  %7 = ptrtoint ptr %step5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %step, ptr %step5, align 8
  %8 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %9 = ptrtoint ptr %ops to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @clk_cpu_ops, ptr %ops, align 4
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2048, ptr %flags, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %11 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %12 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %num_parents, align 4
  %init8 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %init8 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %init, ptr %init8, align 8
  %call10 = call i32 @clk_hw_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %tobool11.not = icmp eq i32 %call10, 0
  br i1 %tobool11.not, label %if.end.cleanup_crit_edge, label %if.then12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  call void @kfree(ptr noundef nonnull %call7.i.i) #4
  %14 = inttoptr i32 %call10 to ptr
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %14, %if.then12 ], [ %call7.i.i, %if.end.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #4
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
define internal i32 @clk_cpu_recalc_rate(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %div = getelementptr inbounds %struct.clk_cpu, ptr %hw, i32 0, i32 1
  %0 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %div, align 4
  %call1 = tail call i32 @clk_get_rate(ptr noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_cpu_round_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readnone %prate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %pll = getelementptr inbounds %struct.clk_cpu, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pll, align 4
  %call1 = tail call i32 @clk_round_rate(ptr noundef %1, i32 noundef %rate) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_cpu_set_rate(ptr nocapture noundef readonly %hw, i32 noundef %rate, i32 noundef %parent_rate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %mux = getelementptr inbounds %struct.clk_cpu, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mux, align 4
  %step = getelementptr inbounds %struct.clk_cpu, ptr %hw, i32 0, i32 4
  %2 = ptrtoint ptr %step to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %step, align 4
  %call1 = tail call i32 @clk_set_parent(ptr noundef %1, ptr noundef %3) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %pll = getelementptr inbounds %struct.clk_cpu, ptr %hw, i32 0, i32 3
  %4 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pll, align 4
  %call2 = tail call i32 @clk_set_rate(ptr noundef %5, i32 noundef %rate) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  %6 = ptrtoint ptr %mux to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %mux, align 4
  %8 = ptrtoint ptr %pll to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pll, align 4
  %call11 = tail call i32 @clk_set_parent(ptr noundef %7, ptr noundef %9) #4
  br i1 %tobool3.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %div = getelementptr inbounds %struct.clk_cpu, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %div to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %div, align 4
  %call12 = tail call i32 @clk_set_rate(ptr noundef %11, i32 noundef %rate) #4
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ %call1, %entry.cleanup_crit_edge ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_round_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_parent(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_set_rate(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 1)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2}
!llvm.module.flags = !{!4, !5, !6, !7, !8, !9, !10, !11}
!llvm.ident = !{!12}

!0 = !{ptr @__ksymtab_imx_clk_hw_cpu, !1, !"__ksymtab_imx_clk_hw_cpu", i1 false, i1 false}
!1 = !{!"../drivers/clk/imx/clk-cpu.c", i32 108, i32 1}
!2 = !{ptr @clk_cpu_ops, !3, !"clk_cpu_ops", i1 false, i1 false}
!3 = !{!"../drivers/clk/imx/clk-cpu.c", i32 67, i32 29}
!4 = !{i32 1, !"wchar_size", i32 2}
!5 = !{i32 1, !"min_enum_size", i32 4}
!6 = !{i32 8, !"branch-target-enforcement", i32 0}
!7 = !{i32 8, !"sign-return-address", i32 0}
!8 = !{i32 8, !"sign-return-address-all", i32 0}
!9 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!10 = !{i32 7, !"uwtable", i32 1}
!11 = !{i32 7, !"frame-pointer", i32 2}
!12 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
