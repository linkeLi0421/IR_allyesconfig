; ModuleID = '/llk/IR_all_yes/arch/arm/mach-imx/mm-imx3.c_pt.bc'
source_filename = "../arch/arm/mach-imx/mm-imx3.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.map_desc = type { i32, i32, i32, i32 }

@mx31_io_desc = internal global [5 x %struct.map_desc] [%struct.map_desc { i32 -171966464, i32 753664, i32 65536, i32 0 }, %struct.map_desc { i32 -176160768, i32 425984, i32 1048576, i32 1 }, %struct.map_desc { i32 -181403648, i32 278272, i32 1048576, i32 1 }, %struct.map_desc { i32 -177209344, i32 343808, i32 1048576, i32 1 }, %struct.map_desc { i32 -180355072, i32 327680, i32 1048576, i32 1 }], section ".init.data", align 4
@arch_ioremap_caller = external dso_local local_unnamed_addr global ptr, align 4
@arm_pm_idle = external dso_local local_unnamed_addr global ptr, align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,imx31-ccm\00", [18 x i8] zeroinitializer }, align 32
@mx3_ccm_base = dso_local global { ptr, [28 x i8] } zeroinitializer, align 32
@mx35_io_desc = internal global [5 x %struct.map_desc] [%struct.map_desc { i32 -171966464, i32 753664, i32 65536, i32 0 }, %struct.map_desc { i32 -176160768, i32 425984, i32 1048576, i32 1 }, %struct.map_desc { i32 -181403648, i32 278272, i32 1048576, i32 1 }, %struct.map_desc { i32 -177209344, i32 343808, i32 1048576, i32 1 }, %struct.map_desc { i32 -180355072, i32 327680, i32 1048576, i32 1 }], section ".init.data", align 4
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"fsl,imx35-ccm\00", [18 x i8] zeroinitializer }, align 32
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 108, i32 43 }
@___asan_gen_.5 = private unnamed_addr constant [13 x i8] c"mx3_ccm_base\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 25, i32 15 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.9 = private constant [31 x i8] c"../arch/arm/mach-imx/mm-imx3.c\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.9, i32 145, i32 43 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @.str, ptr @mx3_ccm_base, ptr @.str.1], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx3_ccm_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mx31_map_io() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iotable_init(ptr noundef nonnull @mx31_io_desc, i32 noundef 5) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @imx31_init_early() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mxc_set_cpu_type(i32 noundef 31) #3
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @arch_ioremap_caller to i32))
  store ptr @imx3_ioremap_caller, ptr @arch_ioremap_caller, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @arm_pm_idle to i32))
  store ptr @imx31_idle, ptr @arm_pm_idle, align 4
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str) #3
  %call1 = tail call ptr @of_iomap(ptr noundef %call, i32 noundef 0) #3
  store ptr %call1, ptr @mx3_ccm_base, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !19

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-imx/mm-imx3.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 110, 0\0A.popsection", ""() #3, !srcloc !20
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mxc_set_cpu_type(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @imx3_ioremap_caller(i32 noundef %phys_addr, i32 noundef %size, i32 noundef %mtype, ptr noundef %caller) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mtype)
  %cmp = icmp eq i32 %mtype, 0
  br i1 %cmp, label %if.then, label %entry.if.end4_crit_edge

entry.if.end4_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end4

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %phys_addr)
  %cmp1 = icmp sgt i32 %phys_addr, -1
  %0 = and i32 %phys_addr, -1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 805306368, i32 %0)
  %cmp2 = icmp ne i32 %0, 805306368
  %not.or.cond = and i1 %cmp1, %cmp2
  %spec.select = zext i1 %not.or.cond to i32
  br label %if.end4

if.end4:                                          ; preds = %if.then, %entry.if.end4_crit_edge
  %mtype.addr.0 = phi i32 [ %mtype, %entry.if.end4_crit_edge ], [ %spec.select, %if.then ]
  %call = tail call ptr @__arm_ioremap_caller(i32 noundef %phys_addr, i32 noundef %size, i32 noundef %mtype.addr.0, ptr noundef %caller) #3
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx31_idle() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mx3_ccm_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #3, !srcloc !21
  %2 = and i32 %1, -12582913
  %3 = load ptr, ptr @mx3_ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %2) #3, !srcloc !22
  %4 = tail call i32 asm sideeffect "mrc p15, 0, $0, c1, c0, 0\0Abic $0, $0, #0x00001000\0Abic $0, $0, #0x00000004\0Amcr p15, 0, $0, c1, c0, 0\0Amov $0, #0\0Amcr p15, 0, $0, c7, c5, 0\0Amov $0, #0\0Amcr p15, 0, $0, c7, c14, 0\0Amov $0, #0\0Amcr p15, 0, $0, c7, c0, 4\0Anop\0Anop\0Anop\0Anop\0Anop\0Anop\0Anop\0Amrc p15, 0, $0, c1, c0, 0\0Aorr $0, $0, #0x00001000\0Aorr $0, $0, #0x00000004\0Amcr p15, 0, $0, c1, c0, 0\0A", "=r"() #3, !srcloc !23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_compatible_node(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mx35_map_io() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iotable_init(ptr noundef nonnull @mx35_io_desc, i32 noundef 5) #3
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @imx35_init_early() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mxc_set_cpu_type(i32 noundef 35) #3
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @arm_pm_idle to i32))
  store ptr @imx35_idle, ptr @arm_pm_idle, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @arch_ioremap_caller to i32))
  store ptr @imx3_ioremap_caller, ptr @arch_ioremap_caller, align 4
  %call = tail call ptr @of_find_compatible_node(ptr noundef null, ptr noundef null, ptr noundef nonnull @.str.1) #3
  %call1 = tail call ptr @of_iomap(ptr noundef %call, i32 noundef 0) #3
  store ptr %call1, ptr @mx3_ccm_base, align 4
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %do.body5, label %do.end10, !prof !19

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22arch/arm/mach-imx/mm-imx3.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 147, 0\0A.popsection", ""() #3, !srcloc !24
  unreachable

do.end10:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imx35_idle() #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @mx3_ccm_base, align 4
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %0) #3, !srcloc !21
  %2 = and i32 %1, -12582913
  %3 = or i32 %2, 4194304
  %4 = load ptr, ptr @mx3_ccm_base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %3) #3, !srcloc !22
  %5 = tail call i32 asm sideeffect "mrc p15, 0, $0, c1, c0, 0\0Abic $0, $0, #0x00001000\0Abic $0, $0, #0x00000004\0Amcr p15, 0, $0, c1, c0, 0\0Amov $0, #0\0Amcr p15, 0, $0, c7, c5, 0\0Amov $0, #0\0Amcr p15, 0, $0, c7, c14, 0\0Amov $0, #0\0Amcr p15, 0, $0, c7, c0, 4\0Anop\0Anop\0Anop\0Anop\0Anop\0Anop\0Anop\0Amrc p15, 0, $0, c1, c0, 0\0Aorr $0, $0, #0x00001000\0Aorr $0, $0, #0x00000004\0Amcr p15, 0, $0, c1, c0, 0\0A", "=r"() #3, !srcloc !23
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__arm_ioremap_caller(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-imx/mm-imx3.c", i32 108, i32 43}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-imx/mm-imx3.c", i32 145, i32 43}
!4 = !{ptr @mx3_ccm_base, !5, !"mx3_ccm_base", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-imx/mm-imx3.c", i32 25, i32 15}
!6 = !{ptr @mx31_io_desc, !7, !"mx31_io_desc", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-imx/mm-imx3.c", i32 74, i32 24}
!8 = !{ptr @mx35_io_desc, !9, !"mx35_io_desc", i1 false, i1 false}
!9 = !{!"../arch/arm/mach-imx/mm-imx3.c", i32 115, i32 24}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!19 = !{!"branch_weights", i32 1, i32 2000}
!20 = !{i64 2153586656, i64 2153587148, i64 2153586693, i64 2153586749, i64 2153586783, i64 2153586807, i64 2153586848, i64 2153586869, i64 2153586897, i64 2153586931}
!21 = !{i64 5773662}
!22 = !{i64 5773244}
!23 = !{i64 765, i64 798, i64 828, i64 858, i64 917, i64 934, i64 1003, i64 1020, i64 1065, i64 1082, i64 1114, i64 1122, i64 1130, i64 1138, i64 1148, i64 1156, i64 1164, i64 1203, i64 1235, i64 1265, i64 1295}
!24 = !{i64 2153592987, i64 2153593479, i64 2153593024, i64 2153593080, i64 2153593114, i64 2153593138, i64 2153593179, i64 2153593200, i64 2153593228, i64 2153593262}
