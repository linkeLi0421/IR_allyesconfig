; ModuleID = '/llk/IR_all_yes/drivers/clk/visconti/pll-tmpv770x.c_pt.bc'
source_filename = "../drivers/clk/visconti/pll-tmpv770x.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.visconti_pll_info = type { i32, ptr, ptr, i32, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.visconti_pll_rate_table = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.visconti_pll_provider = type { ptr, ptr, %struct.clk_hw_onecell_data, ptr }
%struct.clk_hw_onecell_data = type { i32, [0 x ptr] }

@__of_table_tmpv770x_plls = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"toshiba,tmpv7708-pipllct\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tmpv770x_setup_plls }, section "__clk_of_table", align 4
@.str = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pipll1\00", [25 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pidnnpll\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pietherpll\00", [21 x i8] zeroinitializer }, align 32
@pll_info = internal constant [4 x %struct.visconti_pll_info] [%struct.visconti_pll_info { i32 0, ptr @.str.3, ptr @.str.4, i32 0, ptr @pipll0_rates }, %struct.visconti_pll_info { i32 4, ptr @.str.5, ptr @.str.4, i32 1280, ptr @piddrcpll_rates }, %struct.visconti_pll_info { i32 5, ptr @.str.6, ptr @.str.4, i32 1536, ptr @pivoifpll_rates }, %struct.visconti_pll_info { i32 6, ptr @.str.7, ptr @.str.4, i32 1792, ptr @piimgerpll_rates }], section ".init.rodata", align 4
@tmpv770x_pll_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pipll0\00", [25 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"osc2-clk\00", [23 x i8] zeroinitializer }, align 32
@pipll0_rates = internal constant [4 x %struct.visconti_pll_rate_table] [%struct.visconti_pll_rate_table { i32 840000000, i32 1, i32 0, i32 1, i32 84, i32 0, i32 2, i32 1 }, %struct.visconti_pll_rate_table { i32 780000000, i32 1, i32 0, i32 1, i32 78, i32 0, i32 2, i32 1 }, %struct.visconti_pll_rate_table { i32 600000000, i32 1, i32 0, i32 1, i32 60, i32 0, i32 2, i32 1 }, %struct.visconti_pll_rate_table zeroinitializer], section ".init.rodata", align 4
@.str.5 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"piddrcpll\00", [22 x i8] zeroinitializer }, align 32
@piddrcpll_rates = internal constant [3 x %struct.visconti_pll_rate_table] [%struct.visconti_pll_rate_table { i32 780000000, i32 1, i32 0, i32 1, i32 78, i32 0, i32 2, i32 1 }, %struct.visconti_pll_rate_table { i32 760000000, i32 1, i32 0, i32 1, i32 76, i32 0, i32 2, i32 1 }, %struct.visconti_pll_rate_table zeroinitializer], section ".init.rodata", align 4
@.str.6 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pivoifpll\00", [22 x i8] zeroinitializer }, align 32
@pivoifpll_rates = internal constant [8 x %struct.visconti_pll_rate_table] [%struct.visconti_pll_rate_table { i32 165000000, i32 1, i32 0, i32 1, i32 66, i32 0, i32 4, i32 2 }, %struct.visconti_pll_rate_table { i32 148500000, i32 1, i32 1, i32 1, i32 59, i32 6710886, i32 4, i32 2 }, %struct.visconti_pll_rate_table { i32 96000000, i32 1, i32 0, i32 1, i32 48, i32 0, i32 5, i32 2 }, %struct.visconti_pll_rate_table { i32 74250000, i32 1, i32 1, i32 1, i32 59, i32 6710886, i32 4, i32 4 }, %struct.visconti_pll_rate_table { i32 54000000, i32 1, i32 0, i32 1, i32 54, i32 0, i32 5, i32 4 }, %struct.visconti_pll_rate_table { i32 48000000, i32 1, i32 0, i32 1, i32 48, i32 0, i32 5, i32 4 }, %struct.visconti_pll_rate_table { i32 35750000, i32 1, i32 1, i32 1, i32 50, i32 838860, i32 7, i32 4 }, %struct.visconti_pll_rate_table zeroinitializer], section ".init.rodata", align 4
@.str.7 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"piimgerpll\00", [21 x i8] zeroinitializer }, align 32
@piimgerpll_rates = internal constant [5 x %struct.visconti_pll_rate_table] [%struct.visconti_pll_rate_table { i32 165000000, i32 1, i32 0, i32 1, i32 66, i32 0, i32 4, i32 2 }, %struct.visconti_pll_rate_table { i32 96000000, i32 1, i32 0, i32 1, i32 48, i32 0, i32 5, i32 2 }, %struct.visconti_pll_rate_table { i32 54000000, i32 1, i32 0, i32 1, i32 54, i32 0, i32 5, i32 4 }, %struct.visconti_pll_rate_table { i32 48000000, i32 1, i32 0, i32 1, i32 48, i32 0, i32 5, i32 4 }, %struct.visconti_pll_rate_table zeroinitializer], section ".init.rodata", align 4
@.str.8 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tmpv770x_pll_lock\00", [46 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 76, i32 3 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 78, i32 3 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 80, i32 3 }
@___asan_gen_.18 = private unnamed_addr constant [18 x i8] c"tmpv770x_pll_lock\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 54, i32 25 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 54, i32 35 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 55, i32 28 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 56, i32 28 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 57, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.37 = private constant [39 x i8] c"../drivers/clk/visconti/pll-tmpv770x.c\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.37, i32 19, i32 8 }
@llvm.compiler.used = appending global [11 x ptr] [ptr @__of_table_tmpv770x_plls, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @tmpv770x_pll_lock, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8], section "llvm.metadata"
@0 = internal global [10 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tmpv770x_pll_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tmpv770x_setup_plls(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #3
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @visconti_init_pll(ptr noundef %np, ptr noundef nonnull %call, i32 noundef 7) #6
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end4

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  tail call void @iounmap(ptr noundef nonnull %call) #3
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #5
  %call5 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 600000000, i32 noundef 0, i32 noundef 0) #3
  %arrayidx = getelementptr %struct.visconti_pll_provider, ptr %call1, i32 1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call5, ptr %arrayidx, align 4
  %call6 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 500000000, i32 noundef 0, i32 noundef 0) #3
  %arrayidx9 = getelementptr %struct.visconti_pll_provider, ptr %call1, i32 1, i32 1
  %1 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call6, ptr %arrayidx9, align 4
  %call10 = tail call ptr @__clk_hw_register_fixed_rate(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.2, ptr noundef null, ptr noundef null, ptr noundef null, i32 noundef 0, i32 noundef 500000000, i32 noundef 0, i32 noundef 0) #3
  %arrayidx13 = getelementptr %struct.visconti_pll_provider, ptr %call1, i32 1, i32 2
  %2 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call10, ptr %arrayidx13, align 4
  tail call void @visconti_register_plls(ptr noundef %call1, ptr noundef nonnull @pll_info, i32 noundef 4, ptr noundef nonnull @tmpv770x_pll_lock) #3
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.then3, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @visconti_init_pll(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_hw_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @visconti_register_plls(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 10)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }
attributes #6 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__of_table_tmpv770x_plls, !1, !"__of_table_tmpv770x_plls", i1 false, i1 false}
!1 = !{!"../drivers/clk/visconti/pll-tmpv770x.c", i32 85, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/visconti/pll-tmpv770x.c", i32 76, i32 3}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/visconti/pll-tmpv770x.c", i32 78, i32 3}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/visconti/pll-tmpv770x.c", i32 80, i32 3}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/visconti/pll-tmpv770x.c", i32 54, i32 25}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/visconti/pll-tmpv770x.c", i32 54, i32 35}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/clk/visconti/pll-tmpv770x.c", i32 55, i32 28}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/visconti/pll-tmpv770x.c", i32 56, i32 28}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/clk/visconti/pll-tmpv770x.c", i32 57, i32 29}
!18 = !{ptr @pll_info, !19, !"pll_info", i1 false, i1 false}
!19 = !{!"../drivers/clk/visconti/pll-tmpv770x.c", i32 53, i32 39}
!20 = !{ptr @pipll0_rates, !21, !"pipll0_rates", i1 false, i1 false}
!21 = !{!"../drivers/clk/visconti/pll-tmpv770x.c", i32 21, i32 45}
!22 = !{ptr @piddrcpll_rates, !23, !"piddrcpll_rates", i1 false, i1 false}
!23 = !{!"../drivers/clk/visconti/pll-tmpv770x.c", i32 28, i32 45}
!24 = !{ptr @pivoifpll_rates, !25, !"pivoifpll_rates", i1 false, i1 false}
!25 = !{!"../drivers/clk/visconti/pll-tmpv770x.c", i32 34, i32 45}
!26 = !{ptr @piimgerpll_rates, !27, !"piimgerpll_rates", i1 false, i1 false}
!27 = !{!"../drivers/clk/visconti/pll-tmpv770x.c", i32 45, i32 45}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/visconti/pll-tmpv770x.c", i32 19, i32 8}
!30 = !{ptr @tmpv770x_pll_lock, !29, !"tmpv770x_pll_lock", i1 false, i1 false}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
