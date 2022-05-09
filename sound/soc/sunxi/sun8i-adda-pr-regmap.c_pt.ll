; ModuleID = '/llk/IR_all_yes/sound/soc/sunxi/sun8i-adda-pr-regmap.c_pt.bc'
source_filename = "../sound/soc/sunxi/sun8i-adda-pr-regmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+sun8i_adda_pr_regmap_init\22, \22a\22\09"
module asm "\09.weak\09__crc_sun8i_adda_pr_regmap_init\09\09\09\09"
module asm "\09.long\09__crc_sun8i_adda_pr_regmap_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_sun8i_adda_pr_regmap_init:\09\09\09\09\09"
module asm "\09.asciz \09\22sun8i_adda_pr_regmap_init\22\09\09\09\09\09"
module asm "__kstrtabns_sun8i_adda_pr_regmap_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.kernel_symbol = type { i32, ptr, ptr }

@sun8i_adda_pr_regmap_init._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@adda_pr_regmap_cfg = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr @.str.1, i32 5, i32 1, i32 0, i32 8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr @adda_reg_read, ptr @adda_reg_write, ptr null, i8 1, i32 31, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"sun8i_adda_pr_regmap:95:(&adda_pr_regmap_cfg)->lock\00", [44 x i8] zeroinitializer }, align 32
@__kstrtab_sun8i_adda_pr_regmap_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_sun8i_adda_pr_regmap_init = external dso_local constant [0 x i8], align 1
@__ksymtab_sun8i_adda_pr_regmap_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @sun8i_adda_pr_regmap_init to i32), ptr @__kstrtab_sun8i_adda_pr_regmap_init, ptr @__kstrtabns_sun8i_adda_pr_regmap_init }, section "___ksymtab_gpl+sun8i_adda_pr_regmap_init", align 4
@__UNIQUE_ID_description160 = internal constant [76 x i8] c"sun8i_adda_pr_regmap.description=Allwinner analog audio codec regmap driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author161 = internal constant [67 x i8] c"sun8i_adda_pr_regmap.author=Vasily Khoruzhick <anarsoul@gmail.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file162 = internal constant [63 x i8] c"sun8i_adda_pr_regmap.file=sound/soc/sunxi/sun8i-adda-pr-regmap\00", section ".modinfo", align 1
@__UNIQUE_ID_license163 = internal constant [33 x i8] c"sun8i_adda_pr_regmap.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias164 = internal constant [50 x i8] c"sun8i_adda_pr_regmap.alias=platform:sunxi-adda-pr\00", section ".modinfo", align 1
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"adda-pr\00", [24 x i8] zeroinitializer }, align 32
@___asan_gen_.2 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.5 = private unnamed_addr constant [19 x i8] c"adda_pr_regmap_cfg\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 81, i32 35 }
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 95, i32 9 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.12 = private constant [42 x i8] c"../sound/soc/sunxi/sun8i-adda-pr-regmap.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 82, i32 11 }
@llvm.compiler.used = appending global [10 x ptr] [ptr @__UNIQUE_ID_alias164, ptr @__UNIQUE_ID_author161, ptr @__UNIQUE_ID_description160, ptr @__UNIQUE_ID_file162, ptr @__UNIQUE_ID_license163, ptr @__ksymtab_sun8i_adda_pr_regmap_init, ptr @sun8i_adda_pr_regmap_init._key, ptr @adda_pr_regmap_cfg, ptr @.str, ptr @.str.1], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_adda_pr_regmap_init._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adda_pr_regmap_cfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @sun8i_adda_pr_regmap_init(ptr noundef %dev, ptr noundef %base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @__devm_regmap_init(ptr noundef %dev, ptr noundef null, ptr noundef %base, ptr noundef nonnull @adda_pr_regmap_cfg, ptr noundef nonnull @sun8i_adda_pr_regmap_init._key, ptr noundef nonnull @.str) #3
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adda_reg_read(ptr noundef %context, i32 noundef %reg, ptr nocapture noundef writeonly %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !27
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %context) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !29
  %1 = or i32 %0, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %context, i32 %1) #3, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !31
  tail call void @arm_heavy_mb() #3
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %context) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !32
  %3 = and i32 %2, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %context, i32 %3) #3, !srcloc !30
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %context) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !33
  %5 = and i32 %4, -7937
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %and17 = shl i32 %reg, 16
  %shl = and i32 %and17, 2031616
  %or18 = or i32 %6, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !34
  tail call void @arm_heavy_mb() #3
  %7 = tail call i32 @llvm.bswap.i32(i32 %or18)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %context, i32 %7) #3, !srcloc !30
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %context) #3, !srcloc !28
  %9 = lshr i32 %8, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !35
  %10 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %val, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @adda_reg_write(ptr noundef %context, i32 noundef %reg, i32 noundef %val) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !36
  tail call void @arm_heavy_mb() #3
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %context) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !37
  %1 = or i32 %0, 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %context, i32 %1) #3, !srcloc !30
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %context) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !38
  %3 = and i32 %2, -7937
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %and8 = shl i32 %reg, 16
  %shl = and i32 %and8, 2031616
  %or9 = or i32 %4, %shl
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !39
  tail call void @arm_heavy_mb() #3
  %5 = tail call i32 @llvm.bswap.i32(i32 %or9)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %context, i32 %5) #3, !srcloc !30
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %context) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !40
  %7 = and i32 %6, -16711681
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %and19 = shl i32 %val, 8
  %shl20 = and i32 %and19, 65280
  %or21 = or i32 %8, %shl20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !41
  tail call void @arm_heavy_mb() #3
  %9 = tail call i32 @llvm.bswap.i32(i32 %or21)
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %context, i32 %9) #3, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !42
  tail call void @arm_heavy_mb() #3
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %context) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !43
  %11 = or i32 %10, 1
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %context, i32 %11) #3, !srcloc !30
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !44
  tail call void @arm_heavy_mb() #3
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %context) #3, !srcloc !28
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #3, !srcloc !45
  %13 = and i32 %12, -2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %context, i32 %13) #3, !srcloc !30
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16}
!llvm.module.flags = !{!18, !19, !20, !21, !22, !23, !24, !25}
!llvm.ident = !{!26}

!0 = !{ptr @sun8i_adda_pr_regmap_init._key, !1, !"_key", i1 false, i1 false}
!1 = !{!"../sound/soc/sunxi/sun8i-adda-pr-regmap.c", i32 95, i32 9}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @__ksymtab_sun8i_adda_pr_regmap_init, !4, !"__ksymtab_sun8i_adda_pr_regmap_init", i1 false, i1 false}
!4 = !{!"../sound/soc/sunxi/sun8i-adda-pr-regmap.c", i32 97, i32 1}
!5 = !{ptr @__UNIQUE_ID_description160, !6, !"__UNIQUE_ID_description160", i1 false, i1 false}
!6 = !{!"../sound/soc/sunxi/sun8i-adda-pr-regmap.c", i32 99, i32 1}
!7 = !{ptr @__UNIQUE_ID_author161, !8, !"__UNIQUE_ID_author161", i1 false, i1 false}
!8 = !{!"../sound/soc/sunxi/sun8i-adda-pr-regmap.c", i32 100, i32 1}
!9 = !{ptr @__UNIQUE_ID_file162, !10, !"__UNIQUE_ID_file162", i1 false, i1 false}
!10 = !{!"../sound/soc/sunxi/sun8i-adda-pr-regmap.c", i32 101, i32 1}
!11 = !{ptr @__UNIQUE_ID_license163, !10, !"__UNIQUE_ID_license163", i1 false, i1 false}
!12 = !{ptr @__UNIQUE_ID_alias164, !13, !"__UNIQUE_ID_alias164", i1 false, i1 false}
!13 = !{!"../sound/soc/sunxi/sun8i-adda-pr-regmap.c", i32 102, i32 1}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/sunxi/sun8i-adda-pr-regmap.c", i32 82, i32 11}
!16 = !{ptr @adda_pr_regmap_cfg, !17, !"adda_pr_regmap_cfg", i1 false, i1 false}
!17 = !{!"../sound/soc/sunxi/sun8i-adda-pr-regmap.c", i32 81, i32 35}
!18 = !{i32 1, !"wchar_size", i32 2}
!19 = !{i32 1, !"min_enum_size", i32 4}
!20 = !{i32 8, !"branch-target-enforcement", i32 0}
!21 = !{i32 8, !"sign-return-address", i32 0}
!22 = !{i32 8, !"sign-return-address-all", i32 0}
!23 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!24 = !{i32 7, !"uwtable", i32 1}
!25 = !{i32 7, !"frame-pointer", i32 2}
!26 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!27 = !{i64 2152179897}
!28 = !{i64 686333}
!29 = !{i64 2152180802}
!30 = !{i64 685915}
!31 = !{i64 2152181828}
!32 = !{i64 2152182737}
!33 = !{i64 2152183216}
!34 = !{i64 2152184771}
!35 = !{i64 2152185367}
!36 = !{i64 2152187022}
!37 = !{i64 2152187927}
!38 = !{i64 2152188404}
!39 = !{i64 2152189959}
!40 = !{i64 2152190555}
!41 = !{i64 2152192108}
!42 = !{i64 2152193251}
!43 = !{i64 2152194156}
!44 = !{i64 2152195182}
!45 = !{i64 2152196091}
