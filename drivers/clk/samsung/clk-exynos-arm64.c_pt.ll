; ModuleID = '/llk/IR_all_yes/drivers/clk/samsung/clk-exynos-arm64.c_pt.bc'
source_filename = "../drivers/clk/samsung/clk-exynos-arm64.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.samsung_cmu_info = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, i32, ptr, i32, ptr, i32, ptr, i32, ptr }

@exynos_arm64_register_cmu._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 86, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013%s: could not find bus clock %s; err = %ld\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"exynos_arm64_register_cmu\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/clk/samsung/clk-exynos-arm64.c\00", [57 x i8] zeroinitializer }, align 32
@exynos_arm64_register_cmu._entry_ptr = internal global ptr @exynos_arm64_register_cmu._entry, section ".printk_index", align 4
@.str.3 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: failed to map registers\0A\00", [35 x i8] zeroinitializer }, align 32
@__func__.exynos_arm64_init_clocks = private unnamed_addr constant [25 x i8] c"exynos_arm64_init_clocks\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 85, i32 4 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.17 = private constant [42 x i8] c"../drivers/clk/samsung/clk-exynos-arm64.c\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.17, i32 40, i32 9 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @exynos_arm64_register_cmu._entry, ptr @exynos_arm64_register_cmu._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @exynos_arm64_register_cmu._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @exynos_arm64_register_cmu(ptr noundef %dev, ptr noundef %np, ptr noundef %cmu) local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %clk_name = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 19
  %0 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %clk_name, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end14_crit_edge, label %if.then

entry.if.end14_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then:                                          ; preds = %entry
  %tobool1.not = icmp eq ptr %dev, null
  br i1 %tobool1.not, label %if.else, label %if.then2

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call ptr @clk_get(ptr noundef nonnull %dev, ptr noundef nonnull %1) #4
  br label %if.end

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #6
  %call5 = tail call ptr @of_clk_get_by_name(ptr noundef %np, ptr noundef nonnull %1) #4
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  %parent_clk.0 = phi ptr [ %call, %if.then2 ], [ %call5, %if.else ]
  %cmp.i = icmp ugt ptr %parent_clk.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.else11

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk_name, align 4
  %4 = ptrtoint ptr %parent_clk.0 to i32
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %3, i32 noundef %4) #7
  br label %if.end14

if.else11:                                        ; preds = %if.end
  %call.i = tail call i32 @clk_prepare(ptr noundef %parent_clk.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.else11.if.end14_crit_edge

if.else11.if.end14_crit_edge:                     ; preds = %if.else11
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.end.i:                                         ; preds = %if.else11
  %call1.i = tail call i32 @clk_enable(ptr noundef %parent_clk.0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end14_crit_edge, label %if.then3.i

if.end.i.if.end14_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end14

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @clk_unprepare(ptr noundef %parent_clk.0) #4
  br label %if.end14

if.end14:                                         ; preds = %if.then3.i, %if.end.i.if.end14_crit_edge, %if.else11.if.end14_crit_edge, %do.end, %entry.if.end14_crit_edge
  %clk_regs = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 15
  %5 = ptrtoint ptr %clk_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk_regs, align 4
  %nr_clk_regs = getelementptr inbounds %struct.samsung_cmu_info, ptr %cmu, i32 0, i32 16
  %7 = ptrtoint ptr %nr_clk_regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_clk_regs, align 4
  tail call fastcc void @exynos_arm64_init_clocks(ptr noundef %np, ptr noundef %6, i32 noundef %8) #8
  %call15 = tail call ptr @samsung_cmu_register_one(ptr noundef %np, ptr noundef %cmu) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_by_name(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @exynos_arm64_init_clocks(ptr noundef %np, ptr nocapture noundef readonly %reg_offs, i32 noundef %reg_offs_len) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.then, label %for.cond.preheader

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %reg_offs_len)
  %cmp21.not = icmp eq i32 %reg_offs_len, 0
  br i1 %cmp21.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void @__asan_handle_no_return()
  tail call void (ptr, ...) @panic(ptr noundef nonnull @.str.3, ptr noundef nonnull @__func__.exynos_arm64_init_clocks) #9
  unreachable

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.022 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %reg_offs, i32 %i.022
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %2 = add i32 %1, -12288
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4096, i32 %2)
  %3 = icmp ult i32 %2, -4096
  br i1 %3, label %for.body.cleanup_crit_edge, label %if.end6

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end6:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %add.ptr = getelementptr i8, ptr %call, i32 %1
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #4, !srcloc !19
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !20
  %5 = and i32 %4, -4113
  %6 = or i32 %5, 4096
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #4, !srcloc !22
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %for.body.cleanup_crit_edge
  %inc = add nuw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, %reg_offs_len
  br i1 %exitcond.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  tail call void @iounmap(ptr noundef nonnull %call) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @samsung_cmu_register_one(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold noreturn null_pointer_is_valid
declare dso_local void @panic(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_handle_no_return()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 5)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noreturn null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }
attributes #8 = { cold }
attributes #9 = { cold noreturn nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/samsung/clk-exynos-arm64.c", i32 85, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @exynos_arm64_register_cmu._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @exynos_arm64_register_cmu._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/clk/samsung/clk-exynos-arm64.c", i32 40, i32 9}
!8 = !{ptr @__func__.exynos_arm64_init_clocks, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/clk/samsung/clk-exynos-arm64.c", i32 40, i32 42}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{i64 4022880}
!20 = !{i64 2151658318}
!21 = !{i64 2151658686}
!22 = !{i64 4022462}
