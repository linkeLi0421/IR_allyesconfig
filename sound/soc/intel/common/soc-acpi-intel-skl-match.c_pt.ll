; ModuleID = '/llk/IR_all_yes/sound/soc/intel/common/soc-acpi-intel-skl-match.c_pt.bc'
source_filename = "../sound/soc/intel/common/soc-acpi-intel-skl-match.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_skl_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_skl_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_skl_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_skl_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_skl_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_skl_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_acpi_codecs = type { i32, [3 x [9 x i8]] }
%struct.skl_machine_pdata = type { i8 }
%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"skl_alc286s_i2s\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"intel/dsp_fw_release.bin\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"skl_n88l25_s4567\00", [47 x i8] zeroinitializer }, align 32
@skl_codecs = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"10508825\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@skl_dmic_data = internal global { %struct.skl_machine_pdata, [31 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"skl_n88l25_m98357a\00", [45 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_skl_machines = dso_local global { [4 x %struct.snd_soc_acpi_mach], [80 x i8] } { [4 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] c"INT343A\00\00", ptr null, i32 0, ptr null, ptr @.str, ptr @.str.1, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr null }, %struct.snd_soc_acpi_mach { [9 x i8] c"INT343B\00\00", ptr null, i32 0, ptr null, ptr @.str.2, ptr @.str.1, ptr null, ptr @snd_soc_acpi_codec_list, ptr @skl_codecs, ptr @skl_dmic_data, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr null }, %struct.snd_soc_acpi_mach { [9 x i8] c"MX98357A\00", ptr null, i32 0, ptr null, ptr @.str.3, ptr @.str.1, ptr null, ptr @snd_soc_acpi_codec_list, ptr @skl_codecs, ptr @skl_dmic_data, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr null }, %struct.snd_soc_acpi_mach zeroinitializer], [80 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_acpi_intel_skl_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_skl_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_skl_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_skl_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_skl_machines, ptr @__kstrtabns_snd_soc_acpi_intel_skl_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_skl_machines", align 4
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 23, i32 15 }
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 24, i32 18 }
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 28, i32 15 }
@___asan_gen_.13 = private unnamed_addr constant [11 x i8] c"skl_codecs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 15, i32 41 }
@___asan_gen_.16 = private unnamed_addr constant [14 x i8] c"skl_dmic_data\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 13, i32 33 }
@___asan_gen_.19 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 36, i32 15 }
@___asan_gen_.22 = private unnamed_addr constant [32 x i8] c"snd_soc_acpi_intel_skl_machines\00", align 1
@___asan_gen_.23 = private constant [53 x i8] c"../sound/soc/intel/common/soc-acpi-intel-skl-match.c\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.23, i32 20, i32 26 }
@llvm.compiler.used = appending global [8 x ptr] [ptr @__ksymtab_snd_soc_acpi_intel_skl_machines, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @skl_codecs, ptr @skl_dmic_data, ptr @.str.3, ptr @snd_soc_acpi_intel_skl_machines], section "llvm.metadata"
@0 = internal global [7 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skl_codecs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skl_dmic_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_skl_machines to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @snd_soc_acpi_codec_list(ptr nocapture noundef readnone %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #2
  ret ptr null
}

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #1 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 7)
  ret void
}

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #2 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14}
!llvm.module.flags = !{!16, !17, !18, !19, !20, !21, !22, !23}
!llvm.ident = !{!24}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/intel/common/soc-acpi-intel-skl-match.c", i32 23, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/intel/common/soc-acpi-intel-skl-match.c", i32 24, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/intel/common/soc-acpi-intel-skl-match.c", i32 28, i32 15}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/intel/common/soc-acpi-intel-skl-match.c", i32 36, i32 15}
!8 = !{ptr @snd_soc_acpi_intel_skl_machines, !9, !"snd_soc_acpi_intel_skl_machines", i1 false, i1 false}
!9 = !{!"../sound/soc/intel/common/soc-acpi-intel-skl-match.c", i32 20, i32 26}
!10 = !{ptr @__ksymtab_snd_soc_acpi_intel_skl_machines, !11, !"__ksymtab_snd_soc_acpi_intel_skl_machines", i1 false, i1 false}
!11 = !{!"../sound/soc/intel/common/soc-acpi-intel-skl-match.c", i32 44, i32 1}
!12 = !{ptr @skl_dmic_data, !13, !"skl_dmic_data", i1 false, i1 false}
!13 = !{!"../sound/soc/intel/common/soc-acpi-intel-skl-match.c", i32 13, i32 33}
!14 = !{ptr @skl_codecs, !15, !"skl_codecs", i1 false, i1 false}
!15 = !{!"../sound/soc/intel/common/soc-acpi-intel-skl-match.c", i32 15, i32 41}
!16 = !{i32 1, !"wchar_size", i32 2}
!17 = !{i32 1, !"min_enum_size", i32 4}
!18 = !{i32 8, !"branch-target-enforcement", i32 0}
!19 = !{i32 8, !"sign-return-address", i32 0}
!20 = !{i32 8, !"sign-return-address-all", i32 0}
!21 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!22 = !{i32 7, !"uwtable", i32 1}
!23 = !{i32 7, !"frame-pointer", i32 2}
!24 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
