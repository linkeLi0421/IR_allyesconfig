; ModuleID = '/llk/IR_all_yes/sound/soc/amd/acp-config.c_pt.bc'
source_filename = "../sound/soc/amd/acp-config.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+snd_amd_acp_find_config\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_amd_acp_find_config\09\09\09\09"
module asm "\09.long\09__crc_snd_amd_acp_find_config\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_amd_acp_find_config:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_amd_acp_find_config\22\09\09\09\09\09"
module asm "__kstrtabns_snd_amd_acp_find_config:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+snd_soc_acpi_amd_sof_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_amd_sof_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_amd_sof_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_amd_sof_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_amd_sof_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_amd_sof_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_acpi_codecs = type { i32, [3 x [9 x i8]] }
%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }

@acp_quirk_data = internal global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_snd_amd_acp_find_config = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_amd_acp_find_config = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_amd_acp_find_config = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_amd_acp_find_config to i32), ptr @__kstrtab_snd_amd_acp_find_config, ptr @__kstrtabns_snd_amd_acp_find_config }, section "___ksymtab+snd_amd_acp_find_config", align 4
@.str = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"rt5682-rt1019\00", [18 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sof-rn.ri\00", [22 x i8] zeroinitializer }, align 32
@amp_rt1019 = internal global { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"10EC1019\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sof-rn-rt5682-rt1019.tplg\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"rt5682-max\00", [21 x i8] zeroinitializer }, align 32
@amp_max = internal global { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"MX98360A\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sof-rn-rt5682-max98360.tplg\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"rt5682s-max\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"renoir-dsp\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sof-acp.tplg\00", [19 x i8] zeroinitializer }, align 32
@snd_soc_acpi_amd_sof_machines = dso_local global { [5 x %struct.snd_soc_acpi_mach], [116 x i8] } { [5 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] c"10EC5682\00", ptr null, i32 0, ptr null, ptr @.str, ptr @.str.1, ptr null, ptr @snd_soc_acpi_codec_list, ptr @amp_rt1019, ptr @acp_quirk_data, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.2 }, %struct.snd_soc_acpi_mach { [9 x i8] c"10EC5682\00", ptr null, i32 0, ptr null, ptr @.str.3, ptr @.str.1, ptr null, ptr @snd_soc_acpi_codec_list, ptr @amp_max, ptr @acp_quirk_data, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.4 }, %struct.snd_soc_acpi_mach { [9 x i8] c"RTL5682\00\00", ptr null, i32 0, ptr null, ptr @.str.5, ptr @.str.1, ptr null, ptr @snd_soc_acpi_codec_list, ptr @amp_max, ptr @acp_quirk_data, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.4 }, %struct.snd_soc_acpi_mach { [9 x i8] c"AMDI1019\00", ptr null, i32 0, ptr null, ptr @.str.6, ptr @.str.1, ptr null, ptr null, ptr null, ptr @acp_quirk_data, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.7 }, %struct.snd_soc_acpi_mach zeroinitializer], [116 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_acpi_amd_sof_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_amd_sof_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_amd_sof_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_amd_sof_machines to i32), ptr @__kstrtab_snd_soc_acpi_amd_sof_machines, ptr @__kstrtabns_snd_soc_acpi_amd_sof_machines }, section "___ksymtab+snd_soc_acpi_amd_sof_machines", align 4
@__UNIQUE_ID_file244 = internal constant [49 x i8] c"snd_acp_config.file=sound/soc/amd/snd-acp-config\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [36 x i8] c"snd_acp_config.license=Dual BSD/GPL\00", section ".modinfo", align 1
@___asan_gen_.9 = private unnamed_addr constant [15 x i8] c"acp_quirk_data\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 22, i32 12 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 88, i32 15 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 92, i32 18 }
@___asan_gen_.18 = private unnamed_addr constant [11 x i8] c"amp_rt1019\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 75, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 93, i32 24 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 97, i32 15 }
@___asan_gen_.27 = private unnamed_addr constant [8 x i8] c"amp_max\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 80, i32 35 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 102, i32 24 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 106, i32 15 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 115, i32 15 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 118, i32 24 }
@___asan_gen_.42 = private unnamed_addr constant [30 x i8] c"snd_soc_acpi_amd_sof_machines\00", align 1
@___asan_gen_.43 = private constant [30 x i8] c"../sound/soc/amd/acp-config.c\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.43, i32 85, i32 26 }
@llvm.compiler.used = appending global [16 x ptr] [ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__ksymtab_snd_amd_acp_find_config, ptr @__ksymtab_snd_soc_acpi_amd_sof_machines, ptr @acp_quirk_data, ptr @.str, ptr @.str.1, ptr @amp_rt1019, ptr @.str.2, ptr @.str.3, ptr @amp_max, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @snd_soc_acpi_amd_sof_machines], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @acp_quirk_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amp_rt1019 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @amp_max to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_amd_sof_machines to i32), i32 460, i32 576, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @snd_amd_acp_find_config(ptr nocapture noundef readonly %pci) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal noalias ptr @snd_soc_acpi_codec_list(ptr nocapture noundef readnone %arg) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  ret ptr null
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !25, !27, !29, !31}
!llvm.module.flags = !{!33, !34, !35, !36, !37, !38, !39, !40}
!llvm.ident = !{!41}

!0 = !{ptr @__ksymtab_snd_amd_acp_find_config, !1, !"__ksymtab_snd_amd_acp_find_config", i1 false, i1 false}
!1 = !{!"../sound/soc/amd/acp-config.c", i32 73, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/amd/acp-config.c", i32 88, i32 15}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/amd/acp-config.c", i32 92, i32 18}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/amd/acp-config.c", i32 93, i32 24}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/amd/acp-config.c", i32 97, i32 15}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/amd/acp-config.c", i32 102, i32 24}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/amd/acp-config.c", i32 106, i32 15}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/amd/acp-config.c", i32 115, i32 15}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/amd/acp-config.c", i32 118, i32 24}
!18 = !{ptr @snd_soc_acpi_amd_sof_machines, !19, !"snd_soc_acpi_amd_sof_machines", i1 false, i1 false}
!19 = !{!"../sound/soc/amd/acp-config.c", i32 85, i32 26}
!20 = !{ptr @__ksymtab_snd_soc_acpi_amd_sof_machines, !21, !"__ksymtab_snd_soc_acpi_amd_sof_machines", i1 false, i1 false}
!21 = !{!"../sound/soc/amd/acp-config.c", i32 122, i32 1}
!22 = !{ptr @__UNIQUE_ID_file244, !23, !"__UNIQUE_ID_file244", i1 false, i1 false}
!23 = !{!"../sound/soc/amd/acp-config.c", i32 124, i32 1}
!24 = !{ptr @__UNIQUE_ID_license245, !23, !"__UNIQUE_ID_license245", i1 false, i1 false}
!25 = !{ptr @acp_quirk_data, !26, !"acp_quirk_data", i1 false, i1 false}
!26 = !{!"../sound/soc/amd/acp-config.c", i32 22, i32 12}
!27 = distinct !{null, !28, !"config_table", i1 false, i1 false}
!28 = !{!"../sound/soc/amd/acp-config.c", i32 24, i32 34}
!29 = !{ptr @amp_rt1019, !30, !"amp_rt1019", i1 false, i1 false}
!30 = !{!"../sound/soc/amd/acp-config.c", i32 75, i32 35}
!31 = !{ptr @amp_max, !32, !"amp_max", i1 false, i1 false}
!32 = !{!"../sound/soc/amd/acp-config.c", i32 80, i32 35}
!33 = !{i32 1, !"wchar_size", i32 2}
!34 = !{i32 1, !"min_enum_size", i32 4}
!35 = !{i32 8, !"branch-target-enforcement", i32 0}
!36 = !{i32 8, !"sign-return-address", i32 0}
!37 = !{i32 8, !"sign-return-address-all", i32 0}
!38 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!39 = !{i32 7, !"uwtable", i32 1}
!40 = !{i32 7, !"frame-pointer", i32 2}
!41 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
