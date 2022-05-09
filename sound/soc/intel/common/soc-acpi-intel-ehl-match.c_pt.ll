; ModuleID = '/llk/IR_all_yes/sound/soc/intel/common/soc-acpi-intel-ehl-match.c_pt.bc'
source_filename = "../sound/soc/intel/common/soc-acpi-intel-ehl-match.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_ehl_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_ehl_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_ehl_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_ehl_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_ehl_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_ehl_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ehl_rt5660\00", [21 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof-ehl.ri\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof-ehl-rt5660.tplg\00", [44 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_ehl_machines = dso_local global { [2 x %struct.snd_soc_acpi_mach], [40 x i8] } { [2 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] c"10EC5660\00", ptr null, i32 0, ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.2 }, %struct.snd_soc_acpi_mach zeroinitializer], [40 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_acpi_intel_ehl_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_ehl_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_ehl_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_ehl_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_ehl_machines, ptr @__kstrtabns_snd_soc_acpi_intel_ehl_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_ehl_machines", align 4
@___asan_gen_.5 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 16, i32 15 }
@___asan_gen_.8 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 17, i32 22 }
@___asan_gen_.9 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 18, i32 24 }
@___asan_gen_.12 = private unnamed_addr constant [32 x i8] c"snd_soc_acpi_intel_ehl_machines\00", align 1
@___asan_gen_.13 = private constant [53 x i8] c"../sound/soc/intel/common/soc-acpi-intel-ehl-match.c\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.13, i32 13, i32 26 }
@llvm.compiler.used = appending global [5 x ptr] [ptr @__ksymtab_snd_soc_acpi_intel_ehl_machines, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @snd_soc_acpi_intel_ehl_machines], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_ehl_machines to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 4)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8}
!llvm.module.flags = !{!10, !11, !12, !13, !14, !15, !16, !17}
!llvm.ident = !{!18}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/intel/common/soc-acpi-intel-ehl-match.c", i32 16, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/intel/common/soc-acpi-intel-ehl-match.c", i32 17, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/intel/common/soc-acpi-intel-ehl-match.c", i32 18, i32 24}
!6 = !{ptr @snd_soc_acpi_intel_ehl_machines, !7, !"snd_soc_acpi_intel_ehl_machines", i1 false, i1 false}
!7 = !{!"../sound/soc/intel/common/soc-acpi-intel-ehl-match.c", i32 13, i32 26}
!8 = !{ptr @__ksymtab_snd_soc_acpi_intel_ehl_machines, !9, !"__ksymtab_snd_soc_acpi_intel_ehl_machines", i1 false, i1 false}
!9 = !{!"../sound/soc/intel/common/soc-acpi-intel-ehl-match.c", i32 22, i32 1}
!10 = !{i32 1, !"wchar_size", i32 2}
!11 = !{i32 1, !"min_enum_size", i32 4}
!12 = !{i32 8, !"branch-target-enforcement", i32 0}
!13 = !{i32 8, !"sign-return-address", i32 0}
!14 = !{i32 8, !"sign-return-address-all", i32 0}
!15 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!16 = !{i32 7, !"uwtable", i32 1}
!17 = !{i32 7, !"frame-pointer", i32 2}
!18 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
