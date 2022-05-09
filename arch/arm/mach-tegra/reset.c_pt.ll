; ModuleID = '/llk/IR_all_yes/arch/arm/mach-tegra/reset.c_pt.bc'
source_filename = "../arch/arm/mach-tegra/reset.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.cpumask = type { [1 x i32] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.firmware_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__tegra_cpu_reset_handler_data = external dso_local local_unnamed_addr global [7 x i32], align 4
@__cpu_possible_mask = external dso_local local_unnamed_addr global %struct.cpumask, align 4
@is_enabled = internal global { i1, [31 x i8] } zeroinitializer, align 32
@firmware_ops = external dso_local local_unnamed_addr global ptr, align 4
@tegra_cpu_reset_handler_enable._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 78, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\012Cannot set CPU reset handler: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"tegra_cpu_reset_handler_enable\00", [33 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"arch/arm/mach-tegra/reset.c\00", [36 x i8] zeroinitializer }, align 32
@tegra_cpu_reset_handler_enable._entry_ptr = internal global ptr @tegra_cpu_reset_handler_enable._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967258]
@___asan_gen_.3 = private unnamed_addr constant [11 x i8] c"is_enabled\00", align 1
@___asan_gen_.4 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.13 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private constant [31 x i8] c"../arch/arm/mach-tegra/reset.c\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.14, i32 78, i32 3 }
@llvm.compiler.used = appending global [6 x ptr] [ptr @tegra_cpu_reset_handler_enable._entry, ptr @tegra_cpu_reset_handler_enable._entry_ptr, ptr @is_enabled, ptr @.str, ptr @.str.1, ptr @.str.2], section "llvm.metadata"
@0 = internal global [5 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @is_enabled to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_cpu_reset_handler_enable._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra_cpu_reset_handler_init() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call zeroext i1 @trusted_foundations_registered() #4
  %conv = zext i1 %call to i32
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 6) to i32))
  store i32 %conv, ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 6), align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__cpu_possible_mask to i32))
  %0 = load i32, ptr @__cpu_possible_mask, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @__tegra_cpu_reset_handler_data to i32))
  store i32 %0, ptr @__tegra_cpu_reset_handler_data, align 4
  %call1 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @secondary_startup to i32)) #4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 3) to i32))
  store i32 %call1, ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 3), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 5) to i32))
  store i32 1073745920, ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 5), align 4
  %call5 = tail call i32 @__phys_addr_symbol(i32 noundef ptrtoint (ptr @tegra_resume to i32)) #4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 4) to i32))
  store i32 %call5, ptr getelementptr inbounds ([7 x i32], ptr @__tegra_cpu_reset_handler_data, i32 0, i32 4), align 4
  tail call fastcc void @tegra_cpu_reset_handler_enable() #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @trusted_foundations_registered() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__phys_addr_symbol(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @secondary_startup() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_resume() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_cpu_reset_handler_enable() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %.b37 = load i1, ptr @is_enabled, align 1
  br i1 %.b37, label %do.body3, label %do.body9, !prof !17

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/reset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 63, 0\0A.popsection", ""() #4, !srcloc !18
  unreachable

do.body9:                                         ; preds = %entry
  br i1 icmp sgt (i32 sub (i32 ptrtoint (ptr @__tegra_cpu_reset_handler_end to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1024), label %do.body13, label %do.end21, !prof !17

do.body13:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #6
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/reset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 64, 0\0A.popsection", ""() #4, !srcloc !19
  unreachable

do.end21:                                         ; preds = %do.body9
  %0 = call ptr @memcpy(ptr inttoptr (i32 -29360128 to ptr), ptr @__tegra_cpu_reset_handler_start, i32 sub (i32 ptrtoint (ptr @__tegra_cpu_reset_handler_end to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)))
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @firmware_ops to i32))
  %1 = load ptr, ptr @firmware_ops, align 4
  %set_cpu_boot_addr = getelementptr inbounds %struct.firmware_ops, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %set_cpu_boot_addr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %set_cpu_boot_addr, align 4
  %tobool22.not = icmp eq ptr %3, null
  br i1 %tobool22.not, label %do.end21.sw.bb_crit_edge, label %cond.end

do.end21.sw.bb_crit_edge:                         ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

cond.end:                                         ; preds = %do.end21
  %call = tail call i32 %3(i32 noundef 0, i32 noundef add (i32 sub (i32 ptrtoint (ptr @__tegra_cpu_reset_handler to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824)) #4
  %4 = zext i32 %call to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call, label %do.end27 [
    i32 -38, label %cond.end.sw.bb_crit_edge
    i32 0, label %cond.end.sw.bb24_crit_edge
  ]

cond.end.sw.bb24_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb24

cond.end.sw.bb_crit_edge:                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.bb

sw.bb:                                            ; preds = %cond.end.sw.bb_crit_edge, %do.end21.sw.bb_crit_edge
  tail call fastcc void @tegra_cpu_reset_handler_set() #7
  br label %sw.bb24

sw.bb24:                                          ; preds = %sw.bb, %cond.end.sw.bb24_crit_edge
  store i1 true, ptr @is_enabled, align 1
  ret void

do.end27:                                         ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #6
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, i32 noundef %call) #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-tegra/reset.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 79, 0\0A.popsection", ""() #4, !srcloc !20
  unreachable
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tegra_cpu_reset_handler() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tegra_cpu_reset_handler_start() #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tegra_cpu_reset_handler_end() #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra_cpu_reset_handler_set() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !21
  tail call void @arm_heavy_mb() #4
  %0 = tail call i32 @llvm.bswap.i32(i32 add (i32 sub (i32 ptrtoint (ptr @__tegra_cpu_reset_handler to i32), i32 ptrtoint (ptr @__tegra_cpu_reset_handler_start to i32)), i32 1073741824))
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -31395584 to ptr), i32 %0) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !23
  tail call void @arm_heavy_mb() #4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -31395584 to ptr)) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !25
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -31407616 to ptr)) #4, !srcloc !24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !26
  %3 = or i32 %2, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !27
  tail call void @arm_heavy_mb() #4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr nonnull elementtype(i32) inttoptr (i32 -31407616 to ptr), i32 %3) #4, !srcloc !22
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #4, !srcloc !28
  tail call void @arm_heavy_mb() #4
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

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
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-tegra/reset.c", i32 78, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @tegra_cpu_reset_handler_enable._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @tegra_cpu_reset_handler_enable._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = distinct !{null, !7, !"is_enabled", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-tegra/reset.c", i32 29, i32 13}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{!"branch_weights", i32 1, i32 2000}
!18 = !{i64 2153944011, i64 2153944502, i64 2153944048, i64 2153944104, i64 2153944138, i64 2153944162, i64 2153944203, i64 2153944224, i64 2153944252, i64 2153944286}
!19 = !{i64 2153945842, i64 2153946333, i64 2153945879, i64 2153945935, i64 2153945969, i64 2153945993, i64 2153946034, i64 2153946055, i64 2153946083, i64 2153946117}
!20 = !{i64 2153949175, i64 2153949666, i64 2153949212, i64 2153949268, i64 2153949302, i64 2153949326, i64 2153949367, i64 2153949388, i64 2153949416, i64 2153949450}
!21 = !{i64 2153939511}
!22 = !{i64 1348681}
!23 = !{i64 2153939860}
!24 = !{i64 1349099}
!25 = !{i64 2153940330}
!26 = !{i64 2153940776}
!27 = !{i64 2153940980}
!28 = !{i64 2153941293}
