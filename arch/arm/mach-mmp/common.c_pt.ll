; ModuleID = '/llk/IR_all_yes/arch/arm/mach-mmp/common.c_pt.bc'
source_filename = "../arch/arm/mach-mmp/common.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mmp_chip_id\22, \22a\22\09"
module asm "\09.weak\09__crc_mmp_chip_id\09\09\09\09"
module asm "\09.long\09__crc_mmp_chip_id\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mmp_chip_id:\09\09\09\09\09"
module asm "\09.asciz \09\22mmp_chip_id\22\09\09\09\09\09"
module asm "__kstrtabns_mmp_chip_id:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.map_desc = type { i32, i32, i32, i32 }

@mmp_chip_id = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_mmp_chip_id = external dso_local constant [0 x i8], align 1
@__kstrtabns_mmp_chip_id = external dso_local constant [0 x i8], align 1
@__ksymtab_mmp_chip_id = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mmp_chip_id to i32), ptr @__kstrtab_mmp_chip_id, ptr @__kstrtabns_mmp_chip_id }, section "___ksymtab+mmp_chip_id", align 4
@standard_io_desc = internal global [2 x %struct.map_desc] [%struct.map_desc { i32 -33554432, i32 868352, i32 2097152, i32 0 }, %struct.map_desc { i32 -31457280, i32 868864, i32 2097152, i32 0 }], section ".init.data", align 4
@mmp2_io_desc = internal global [1 x %struct.map_desc] [%struct.map_desc { i32 -29360128, i32 917504, i32 1048576, i32 0 }], section ".init.data", align 4
@___asan_gen_.1 = private unnamed_addr constant [12 x i8] c"mmp_chip_id\00", align 1
@___asan_gen_.2 = private constant [30 x i8] c"../arch/arm/mach-mmp/common.c\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.2, i32 22, i32 14 }
@llvm.compiler.used = appending global [2 x ptr] [ptr @__ksymtab_mmp_chip_id, ptr @mmp_chip_id], section "llvm.metadata"
@0 = internal global [1 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_chip_id to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.2 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp_map_io() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iotable_init(ptr noundef nonnull @standard_io_desc, i32 noundef 2) #3
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -30921728 to ptr)) #3, !srcloc !17
  store i32 %0, ptr @mmp_chip_id, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iotable_init(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp2_map_io() local_unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iotable_init(ptr noundef nonnull @standard_io_desc, i32 noundef 2) #3
  %0 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr nonnull elementtype(i32) inttoptr (i32 -30921728 to ptr)) #3, !srcloc !17
  store i32 %0, ptr @mmp_chip_id, align 4
  tail call void @iotable_init(ptr noundef nonnull @mmp2_io_desc, i32 noundef 1) #3
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mmp_restart(i32 noundef %mode, ptr nocapture noundef readnone %cmd) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @soft_restart(i32 noundef 0) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @soft_restart(i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_pc()

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

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @__ksymtab_mmp_chip_id, !1, !"__ksymtab_mmp_chip_id", i1 false, i1 false}
!1 = !{!"../arch/arm/mach-mmp/common.c", i32 23, i32 1}
!2 = !{ptr @mmp_chip_id, !3, !"mmp_chip_id", i1 false, i1 false}
!3 = !{!"../arch/arm/mach-mmp/common.c", i32 22, i32 14}
!4 = !{ptr @standard_io_desc, !5, !"standard_io_desc", i1 false, i1 false}
!5 = !{!"../arch/arm/mach-mmp/common.c", i32 25, i32 24}
!6 = !{ptr @mmp2_io_desc, !7, !"mmp2_io_desc", i1 false, i1 false}
!7 = !{!"../arch/arm/mach-mmp/common.c", i32 39, i32 24}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!17 = !{i64 4031595}
