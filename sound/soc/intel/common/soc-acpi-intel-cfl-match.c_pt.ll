; ModuleID = '/llk/IR_all_yes/sound/soc/intel/common/soc-acpi-intel-cfl-match.c_pt.bc'
source_filename = "../sound/soc/intel/common/soc-acpi-intel-cfl-match.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_cfl_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_cfl_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_cfl_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_cfl_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_cfl_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_cfl_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_cfl_sdw_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_cfl_sdw_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_cfl_sdw_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_cfl_sdw_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_cfl_sdw_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_cfl_sdw_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@snd_soc_acpi_intel_cfl_machines = dso_local global { [1 x %struct.snd_soc_acpi_mach], [36 x i8] } zeroinitializer, align 32
@__kstrtab_snd_soc_acpi_intel_cfl_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_cfl_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_cfl_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_cfl_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_cfl_machines, ptr @__kstrtabns_snd_soc_acpi_intel_cfl_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_cfl_machines", align 4
@snd_soc_acpi_intel_cfl_sdw_machines = dso_local global { [1 x %struct.snd_soc_acpi_mach], [36 x i8] } zeroinitializer, align 32
@__kstrtab_snd_soc_acpi_intel_cfl_sdw_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_cfl_sdw_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_cfl_sdw_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_cfl_sdw_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_cfl_sdw_machines, ptr @__kstrtabns_snd_soc_acpi_intel_cfl_sdw_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_cfl_sdw_machines", align 4
@___asan_gen_.1 = private unnamed_addr constant [32 x i8] c"snd_soc_acpi_intel_cfl_machines\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 12, i32 26 }
@___asan_gen_.4 = private unnamed_addr constant [36 x i8] c"snd_soc_acpi_intel_cfl_sdw_machines\00", align 1
@___asan_gen_.5 = private constant [53 x i8] c"../sound/soc/intel/common/soc-acpi-intel-cfl-match.c\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.5, i32 17, i32 26 }
@llvm.compiler.used = appending global [4 x ptr] [ptr @__ksymtab_snd_soc_acpi_intel_cfl_machines, ptr @__ksymtab_snd_soc_acpi_intel_cfl_sdw_machines, ptr @snd_soc_acpi_intel_cfl_machines, ptr @snd_soc_acpi_intel_cfl_sdw_machines], section "llvm.metadata"
@0 = internal global [2 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_cfl_machines to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_cfl_sdw_machines to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 2)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6}
!llvm.module.flags = !{!8, !9, !10, !11, !12, !13, !14, !15}
!llvm.ident = !{!16}

!0 = !{ptr @snd_soc_acpi_intel_cfl_machines, !1, !"snd_soc_acpi_intel_cfl_machines", i1 false, i1 false}
!1 = !{!"../sound/soc/intel/common/soc-acpi-intel-cfl-match.c", i32 12, i32 26}
!2 = !{ptr @__ksymtab_snd_soc_acpi_intel_cfl_machines, !3, !"__ksymtab_snd_soc_acpi_intel_cfl_machines", i1 false, i1 false}
!3 = !{!"../sound/soc/intel/common/soc-acpi-intel-cfl-match.c", i32 15, i32 1}
!4 = !{ptr @snd_soc_acpi_intel_cfl_sdw_machines, !5, !"snd_soc_acpi_intel_cfl_sdw_machines", i1 false, i1 false}
!5 = !{!"../sound/soc/intel/common/soc-acpi-intel-cfl-match.c", i32 17, i32 26}
!6 = !{ptr @__ksymtab_snd_soc_acpi_intel_cfl_sdw_machines, !7, !"__ksymtab_snd_soc_acpi_intel_cfl_sdw_machines", i1 false, i1 false}
!7 = !{!"../sound/soc/intel/common/soc-acpi-intel-cfl-match.c", i32 20, i32 1}
!8 = !{i32 1, !"wchar_size", i32 2}
!9 = !{i32 1, !"min_enum_size", i32 4}
!10 = !{i32 8, !"branch-target-enforcement", i32 0}
!11 = !{i32 8, !"sign-return-address", i32 0}
!12 = !{i32 8, !"sign-return-address-all", i32 0}
!13 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!14 = !{i32 7, !"uwtable", i32 1}
!15 = !{i32 7, !"frame-pointer", i32 2}
!16 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
