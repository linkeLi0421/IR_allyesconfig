; ModuleID = '/llk/IR_all_yes/sound/soc/intel/common/soc-acpi-intel-hda-match.c_pt.bc'
source_filename = "../sound/soc/intel/common/soc-acpi-intel-hda-match.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_hda_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_hda_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_hda_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_hda_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_hda_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_hda_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.skl_machine_pdata = type { i8 }
%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"skl_hda_dsp_generic\00", [44 x i8] zeroinitializer }, align 32
@hda_pdata = internal global { %struct.skl_machine_pdata, [31 x i8] } { %struct.skl_machine_pdata { i8 1 }, [31 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sof-hda-generic.tplg\00", [43 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_hda_machines = dso_local global { [2 x %struct.snd_soc_acpi_mach], [40 x i8] } { [2 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 0, ptr null, ptr @.str, ptr null, ptr null, ptr null, ptr null, ptr @hda_pdata, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.1 }, %struct.snd_soc_acpi_mach zeroinitializer], [40 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_acpi_intel_hda_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_hda_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_hda_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_hda_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_hda_machines, ptr @__kstrtabns_snd_soc_acpi_intel_hda_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_hda_machines", align 4
@__UNIQUE_ID_file239 = internal constant [78 x i8] c"snd_soc_acpi_intel_match.file=sound/soc/intel/common/snd-soc-acpi-intel-match\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [40 x i8] c"snd_soc_acpi_intel_match.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [68 x i8] c"snd_soc_acpi_intel_match.description=Intel Common ACPI Match module\00", section ".modinfo", align 1
@___asan_gen_.4 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 20, i32 15 }
@___asan_gen_.5 = private unnamed_addr constant [10 x i8] c"hda_pdata\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 13, i32 33 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 26, i32 24 }
@___asan_gen_.11 = private unnamed_addr constant [32 x i8] c"snd_soc_acpi_intel_hda_machines\00", align 1
@___asan_gen_.12 = private constant [53 x i8] c"../sound/soc/intel/common/soc-acpi-intel-hda-match.c\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.12, i32 17, i32 26 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__ksymtab_snd_soc_acpi_intel_hda_machines, ptr @.str, ptr @hda_pdata, ptr @.str.1, ptr @snd_soc_acpi_intel_hda_machines], section "llvm.metadata"
@0 = internal global [4 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @hda_pdata to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_hda_machines to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 0 }]
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

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13}
!llvm.module.flags = !{!15, !16, !17, !18, !19, !20, !21, !22}
!llvm.ident = !{!23}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/intel/common/soc-acpi-intel-hda-match.c", i32 20, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/intel/common/soc-acpi-intel-hda-match.c", i32 26, i32 24}
!4 = !{ptr @snd_soc_acpi_intel_hda_machines, !5, !"snd_soc_acpi_intel_hda_machines", i1 false, i1 false}
!5 = !{!"../sound/soc/intel/common/soc-acpi-intel-hda-match.c", i32 17, i32 26}
!6 = !{ptr @__ksymtab_snd_soc_acpi_intel_hda_machines, !7, !"__ksymtab_snd_soc_acpi_intel_hda_machines", i1 false, i1 false}
!7 = !{!"../sound/soc/intel/common/soc-acpi-intel-hda-match.c", i32 37, i32 1}
!8 = !{ptr @__UNIQUE_ID_file239, !9, !"__UNIQUE_ID_file239", i1 false, i1 false}
!9 = !{!"../sound/soc/intel/common/soc-acpi-intel-hda-match.c", i32 39, i32 1}
!10 = !{ptr @__UNIQUE_ID_license240, !9, !"__UNIQUE_ID_license240", i1 false, i1 false}
!11 = !{ptr @__UNIQUE_ID_description241, !12, !"__UNIQUE_ID_description241", i1 false, i1 false}
!12 = !{!"../sound/soc/intel/common/soc-acpi-intel-hda-match.c", i32 40, i32 1}
!13 = !{ptr @hda_pdata, !14, !"hda_pdata", i1 false, i1 false}
!14 = !{!"../sound/soc/intel/common/soc-acpi-intel-hda-match.c", i32 13, i32 33}
!15 = !{i32 1, !"wchar_size", i32 2}
!16 = !{i32 1, !"min_enum_size", i32 4}
!17 = !{i32 8, !"branch-target-enforcement", i32 0}
!18 = !{i32 8, !"sign-return-address", i32 0}
!19 = !{i32 8, !"sign-return-address-all", i32 0}
!20 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!21 = !{i32 7, !"uwtable", i32 1}
!22 = !{i32 7, !"frame-pointer", i32 2}
!23 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
