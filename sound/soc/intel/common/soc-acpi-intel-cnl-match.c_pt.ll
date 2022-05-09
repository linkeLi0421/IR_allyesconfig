; ModuleID = '/llk/IR_all_yes/sound/soc/intel/common/soc-acpi-intel-cnl-match.c_pt.bc'
source_filename = "../sound/soc/intel/common/soc-acpi-intel-cnl-match.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_cnl_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_cnl_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_cnl_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_cnl_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_cnl_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_cnl_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_cnl_sdw_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_cnl_sdw_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_cnl_sdw_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_cnl_sdw_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_cnl_sdw_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_cnl_sdw_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.skl_machine_pdata = type { i8 }
%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_acpi_link_adr = type { i32, i32, ptr }
%struct.snd_soc_acpi_adr_device = type { i64, i8, ptr, ptr }
%struct.snd_soc_acpi_endpoint = type { i8, i8, i8, i8 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"cnl_rt274\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"intel/dsp_fw_cnl.bin\00", [43 x i8] zeroinitializer }, align 32
@cnl_pdata = internal global { %struct.skl_machine_pdata, [31 x i8] } { %struct.skl_machine_pdata { i8 1 }, [31 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof-cnl.ri\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sof-cnl-rt274.tplg\00", [45 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_cnl_machines = dso_local global { [2 x %struct.snd_soc_acpi_mach], [40 x i8] } { [2 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] c"INT34C2\00\00", ptr null, i32 0, ptr null, ptr @.str, ptr @.str.1, ptr null, ptr null, ptr null, ptr @cnl_pdata, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.2, ptr @.str.3 }, %struct.snd_soc_acpi_mach zeroinitializer], [40 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_acpi_intel_cnl_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_cnl_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_cnl_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_cnl_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_cnl_machines, ptr @__kstrtabns_snd_soc_acpi_intel_cnl_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_cnl_machines", align 4
@up_extreme_rt5682_2 = internal constant { [2 x %struct.snd_soc_acpi_link_adr], [40 x i8] } { [2 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 4, i32 1, ptr @rt5682_2_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sof_sdw\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sof-cnl-rt5682-sdw2.tplg\00", [39 x i8] zeroinitializer }, align 32
@sdw_mockup_headset_2amps_mic = external dso_local constant [0 x %struct.snd_soc_acpi_link_adr], align 4
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sof-cml-rt711-rt1308-rt715.tplg\00", [32 x i8] zeroinitializer }, align 32
@sdw_mockup_headset_1amp_mic = external dso_local constant [0 x %struct.snd_soc_acpi_link_adr], align 4
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sof-cml-rt711-rt1308-mono-rt715.tplg\00", [59 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_cnl_sdw_machines = dso_local global { [4 x %struct.snd_soc_acpi_mach], [80 x i8] } { [4 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 4, ptr @up_extreme_rt5682_2, ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.2, ptr @.str.5 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 15, ptr @sdw_mockup_headset_2amps_mic, ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.2, ptr @.str.6 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 11, ptr @sdw_mockup_headset_1amp_mic, ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.2, ptr @.str.7 }, %struct.snd_soc_acpi_mach zeroinitializer], [80 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_acpi_intel_cnl_sdw_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_cnl_sdw_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_cnl_sdw_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_cnl_sdw_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_cnl_sdw_machines, ptr @__kstrtabns_snd_soc_acpi_intel_cnl_sdw_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_cnl_sdw_machines", align 4
@rt5682_2_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 598144481395200, i8 1, ptr @single_endpoint, ptr @.str.8 }], [40 x i8] zeroinitializer }, align 32
@single_endpoint = internal constant { %struct.snd_soc_acpi_endpoint, [28 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt5682\00", [25 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 21, i32 15 }
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 22, i32 18 }
@___asan_gen_.15 = private unnamed_addr constant [10 x i8] c"cnl_pdata\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 14, i32 33 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 24, i32 22 }
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 25, i32 24 }
@___asan_gen_.24 = private unnamed_addr constant [32 x i8] c"snd_soc_acpi_intel_cnl_machines\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 18, i32 26 }
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"up_extreme_rt5682_2\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 47, i32 43 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 60, i32 15 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 62, i32 24 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 69, i32 24 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 76, i32 24 }
@___asan_gen_.42 = private unnamed_addr constant [36 x i8] c"snd_soc_acpi_intel_cnl_sdw_machines\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 56, i32 26 }
@___asan_gen_.45 = private unnamed_addr constant [13 x i8] c"rt5682_2_adr\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 38, i32 45 }
@___asan_gen_.48 = private unnamed_addr constant [16 x i8] c"single_endpoint\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 31, i32 43 }
@___asan_gen_.51 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.52 = private constant [53 x i8] c"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 43, i32 18 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__ksymtab_snd_soc_acpi_intel_cnl_machines, ptr @__ksymtab_snd_soc_acpi_intel_cnl_sdw_machines, ptr @.str, ptr @.str.1, ptr @cnl_pdata, ptr @.str.2, ptr @.str.3, ptr @snd_soc_acpi_intel_cnl_machines, ptr @up_extreme_rt5682_2, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @snd_soc_acpi_intel_cnl_sdw_machines, ptr @rt5682_2_adr, ptr @single_endpoint, ptr @.str.8], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cnl_pdata to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_cnl_machines to i32), i32 184, i32 224, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @up_extreme_rt5682_2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_cnl_sdw_machines to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_2_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @single_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }]
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
!1 = !{!"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c", i32 21, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c", i32 22, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c", i32 24, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c", i32 25, i32 24}
!8 = !{ptr @snd_soc_acpi_intel_cnl_machines, !9, !"snd_soc_acpi_intel_cnl_machines", i1 false, i1 false}
!9 = !{!"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c", i32 18, i32 26}
!10 = !{ptr @__ksymtab_snd_soc_acpi_intel_cnl_machines, !11, !"__ksymtab_snd_soc_acpi_intel_cnl_machines", i1 false, i1 false}
!11 = !{!"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c", i32 29, i32 1}
!12 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c", i32 60, i32 15}
!14 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c", i32 62, i32 24}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c", i32 69, i32 24}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c", i32 76, i32 24}
!20 = !{ptr @snd_soc_acpi_intel_cnl_sdw_machines, !21, !"snd_soc_acpi_intel_cnl_sdw_machines", i1 false, i1 false}
!21 = !{!"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c", i32 56, i32 26}
!22 = !{ptr @__ksymtab_snd_soc_acpi_intel_cnl_sdw_machines, !23, !"__ksymtab_snd_soc_acpi_intel_cnl_sdw_machines", i1 false, i1 false}
!23 = !{!"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c", i32 80, i32 1}
!24 = !{ptr @cnl_pdata, !25, !"cnl_pdata", i1 false, i1 false}
!25 = !{!"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c", i32 14, i32 33}
!26 = !{ptr @up_extreme_rt5682_2, !27, !"up_extreme_rt5682_2", i1 false, i1 false}
!27 = !{!"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c", i32 47, i32 43}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c", i32 43, i32 18}
!30 = !{ptr @rt5682_2_adr, !31, !"rt5682_2_adr", i1 false, i1 false}
!31 = !{!"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c", i32 38, i32 45}
!32 = !{ptr @single_endpoint, !33, !"single_endpoint", i1 false, i1 false}
!33 = !{!"../sound/soc/intel/common/soc-acpi-intel-cnl-match.c", i32 31, i32 43}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
