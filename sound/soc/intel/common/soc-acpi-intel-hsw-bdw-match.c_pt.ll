; ModuleID = '/llk/IR_all_yes/sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c_pt.bc'
source_filename = "../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_haswell_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_haswell_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_haswell_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_haswell_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_haswell_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_haswell_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_broadwell_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_broadwell_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_broadwell_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_broadwell_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_broadwell_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_broadwell_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"haswell-audio\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intel/IntcSST1.bin\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof-hsw.ri\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sof-hsw.tplg\00", [19 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_haswell_machines = dso_local global { [2 x %struct.snd_soc_acpi_mach], [40 x i8] } { [2 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] c"INT33CA\00\00", ptr null, i32 0, ptr null, ptr @.str, ptr @.str.1, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.2, ptr @.str.3 }, %struct.snd_soc_acpi_mach zeroinitializer], [40 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_acpi_intel_haswell_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_haswell_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_haswell_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_haswell_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_haswell_machines, ptr @__kstrtabns_snd_soc_acpi_intel_haswell_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_haswell_machines", align 4
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"broadwell-audio\00", [16 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"intel/IntcSST2.bin\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof-bdw.ri\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sof-bdw-rt286.tplg\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bdw-rt5650\00", [21 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof-bdw-rt5650.tplg\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"bdw-rt5677\00", [21 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof-bdw-rt5677.tplg\00", [44 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof-bdw-rt5640.tplg\00", [44 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_broadwell_machines = dso_local global { [5 x %struct.snd_soc_acpi_mach], [116 x i8] } { [5 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] c"INT343A\00\00", ptr null, i32 0, ptr null, ptr @.str.4, ptr @.str.5, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.6, ptr @.str.7 }, %struct.snd_soc_acpi_mach { [9 x i8] c"10EC5650\00", ptr null, i32 0, ptr null, ptr @.str.8, ptr @.str.5, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.6, ptr @.str.9 }, %struct.snd_soc_acpi_mach { [9 x i8] c"RT5677CE\00", ptr null, i32 0, ptr null, ptr @.str.10, ptr @.str.5, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.6, ptr @.str.11 }, %struct.snd_soc_acpi_mach { [9 x i8] c"INT33CA\00\00", ptr null, i32 0, ptr null, ptr @.str, ptr @.str.5, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.6, ptr @.str.12 }, %struct.snd_soc_acpi_mach zeroinitializer], [116 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_acpi_intel_broadwell_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_broadwell_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_broadwell_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_broadwell_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_broadwell_machines, ptr @__kstrtabns_snd_soc_acpi_intel_broadwell_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_broadwell_machines", align 4
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 15, i32 15 }
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 16, i32 18 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 17, i32 22 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 18, i32 24 }
@___asan_gen_.25 = private unnamed_addr constant [36 x i8] c"snd_soc_acpi_intel_haswell_machines\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 12, i32 26 }
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 27, i32 15 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 28, i32 19 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 29, i32 22 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 30, i32 24 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 34, i32 15 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 37, i32 24 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 41, i32 15 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 44, i32 24 }
@___asan_gen_.52 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 51, i32 24 }
@___asan_gen_.55 = private unnamed_addr constant [38 x i8] c"snd_soc_acpi_intel_broadwell_machines\00", align 1
@___asan_gen_.56 = private constant [57 x i8] c"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.56, i32 24, i32 26 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_snd_soc_acpi_intel_broadwell_machines, ptr @__ksymtab_snd_soc_acpi_intel_haswell_machines, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @snd_soc_acpi_intel_haswell_machines, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @snd_soc_acpi_intel_broadwell_machines], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_haswell_machines to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_broadwell_machines to i32), i32 460, i32 576, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c", i32 15, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c", i32 16, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c", i32 17, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c", i32 18, i32 24}
!8 = !{ptr @snd_soc_acpi_intel_haswell_machines, !9, !"snd_soc_acpi_intel_haswell_machines", i1 false, i1 false}
!9 = !{!"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c", i32 12, i32 26}
!10 = !{ptr @__ksymtab_snd_soc_acpi_intel_haswell_machines, !11, !"__ksymtab_snd_soc_acpi_intel_haswell_machines", i1 false, i1 false}
!11 = !{!"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c", i32 22, i32 1}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c", i32 27, i32 15}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c", i32 28, i32 19}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c", i32 29, i32 22}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c", i32 30, i32 24}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c", i32 34, i32 15}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c", i32 37, i32 24}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c", i32 41, i32 15}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c", i32 44, i32 24}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c", i32 51, i32 24}
!30 = !{ptr @snd_soc_acpi_intel_broadwell_machines, !31, !"snd_soc_acpi_intel_broadwell_machines", i1 false, i1 false}
!31 = !{!"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c", i32 24, i32 26}
!32 = !{ptr @__ksymtab_snd_soc_acpi_intel_broadwell_machines, !33, !"__ksymtab_snd_soc_acpi_intel_broadwell_machines", i1 false, i1 false}
!33 = !{!"../sound/soc/intel/common/soc-acpi-intel-hsw-bdw-match.c", i32 55, i32 1}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
