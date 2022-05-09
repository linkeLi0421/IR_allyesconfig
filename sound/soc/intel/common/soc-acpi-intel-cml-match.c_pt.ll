; ModuleID = '/llk/IR_all_yes/sound/soc/intel/common/soc-acpi-intel-cml-match.c_pt.bc'
source_filename = "../sound/soc/intel/common/soc-acpi-intel-cml-match.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_cml_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_cml_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_cml_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_cml_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_cml_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_cml_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_cml_sdw_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_cml_sdw_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_cml_sdw_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_cml_sdw_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_cml_sdw_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_cml_sdw_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_acpi_codecs = type { i32, [3 x [9 x i8]] }
%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_acpi_link_adr = type { i32, i32, ptr }
%struct.snd_soc_acpi_adr_device = type { i64, i8, ptr, ptr }
%struct.snd_soc_acpi_endpoint = type { i8, i8, i8, i8 }

@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cml_rt1011_rt5682\00", [46 x i8] zeroinitializer }, align 32
@rt1011_spk_codecs = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"10EC1011\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof-cml.ri\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sof-cml-rt1011-rt5682.tplg\00", [37 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cml_rt1015_rt5682\00", [46 x i8] zeroinitializer }, align 32
@rt1015_spk_codecs = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"10EC1015\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof_rt5682\00", [21 x i8] zeroinitializer }, align 32
@max98357a_spk_codecs = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"MX98357A\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sof-cml-rt5682-max98357a.tplg\00", [34 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof-cml-rt5682.tplg\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cml_da7219_mx98357a\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sof-cml-da7219-max98357a.tplg\00", [34 x i8] zeroinitializer }, align 32
@max98390_spk_codecs = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"MX98390\00\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sof-cml-da7219-max98390.tplg\00", [35 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sof-essx8336\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof-cml-es8336.tplg\00", [44 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_cml_machines = dso_local global { [8 x %struct.snd_soc_acpi_mach], [160 x i8] } { [8 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] c"10EC5682\00", ptr null, i32 0, ptr null, ptr @.str, ptr null, ptr null, ptr @snd_soc_acpi_codec_list, ptr @rt1011_spk_codecs, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.2 }, %struct.snd_soc_acpi_mach { [9 x i8] c"10EC5682\00", ptr null, i32 0, ptr null, ptr @.str.3, ptr null, ptr null, ptr @snd_soc_acpi_codec_list, ptr @rt1015_spk_codecs, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.2 }, %struct.snd_soc_acpi_mach { [9 x i8] c"10EC5682\00", ptr null, i32 0, ptr null, ptr @.str.4, ptr null, ptr null, ptr @snd_soc_acpi_codec_list, ptr @max98357a_spk_codecs, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.5 }, %struct.snd_soc_acpi_mach { [9 x i8] c"10EC5682\00", ptr null, i32 0, ptr null, ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.6 }, %struct.snd_soc_acpi_mach { [9 x i8] c"DLGS7219\00", ptr null, i32 0, ptr null, ptr @.str.7, ptr null, ptr null, ptr @snd_soc_acpi_codec_list, ptr @max98357a_spk_codecs, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.8 }, %struct.snd_soc_acpi_mach { [9 x i8] c"DLGS7219\00", ptr null, i32 0, ptr null, ptr @.str.7, ptr null, ptr null, ptr @snd_soc_acpi_codec_list, ptr @max98390_spk_codecs, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.9 }, %struct.snd_soc_acpi_mach { [9 x i8] c"ESSX8336\00", ptr null, i32 0, ptr null, ptr @.str.10, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.11 }, %struct.snd_soc_acpi_mach zeroinitializer], [160 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_acpi_intel_cml_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_cml_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_cml_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_cml_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_cml_machines, ptr @__kstrtabns_snd_soc_acpi_intel_cml_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_cml_machines", align 4
@cml_3_in_1_default = internal constant { [5 x %struct.snd_soc_acpi_link_adr], [36 x i8] } { [5 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt711_0_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @rt1308_1_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 4, i32 1, ptr @rt1308_2_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 8, i32 1, ptr @rt715_3_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sof_sdw\00", [24 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sof-cml-rt711-rt1308-rt715.tplg\00", [32 x i8] zeroinitializer }, align 32
@cml_3_in_1_sdca = internal constant { [5 x %struct.snd_soc_acpi_link_adr], [36 x i8] } { [5 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt711_sdca_0_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @rt1316_1_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 4, i32 1, ptr @rt1316_2_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 8, i32 1, ptr @rt714_3_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sof-cml-rt711-rt1316-rt714.tplg\00", [32 x i8] zeroinitializer }, align 32
@cml_3_in_1_mono_amp = internal constant { [4 x %struct.snd_soc_acpi_link_adr], [48 x i8] } { [4 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt711_0_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @rt1308_1_single_adr }, %struct.snd_soc_acpi_link_adr { i32 8, i32 1, ptr @rt715_3_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sof-cml-rt711-rt1308-mono-rt715.tplg\00", [59 x i8] zeroinitializer }, align 32
@cml_rvp = internal constant { [2 x %struct.snd_soc_acpi_link_adr], [40 x i8] } { [2 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @rt700_1_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sof-cml-rt700.tplg\00", [45 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_cml_sdw_machines = dso_local global { [5 x %struct.snd_soc_acpi_mach], [116 x i8] } { [5 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 15, ptr @cml_3_in_1_default, ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.13 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 15, ptr @cml_3_in_1_sdca, ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.14 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 15, ptr @cml_3_in_1_mono_amp, ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.15 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 2, ptr @cml_rvp, ptr @.str.12, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.16 }, %struct.snd_soc_acpi_mach zeroinitializer], [116 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_acpi_intel_cml_sdw_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_cml_sdw_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_cml_sdw_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_cml_sdw_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_cml_sdw_machines, ptr @__kstrtabns_snd_soc_acpi_intel_cml_sdw_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_cml_sdw_machines", align 4
@rt711_0_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 35194522767616, i8 1, ptr @single_endpoint, ptr @.str.17 }], [40 x i8] zeroinitializer }, align 32
@rt1308_1_group1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 316669500262400, i8 1, ptr @spk_l_endpoint, ptr @.str.18 }], [40 x i8] zeroinitializer }, align 32
@rt1308_2_group1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 598144476973056, i8 1, ptr @spk_r_endpoint, ptr @.str.19 }], [40 x i8] zeroinitializer }, align 32
@rt715_3_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 879619452900608, i8 1, ptr @single_endpoint, ptr @.str.20 }], [40 x i8] zeroinitializer }, align 32
@single_endpoint = internal constant { %struct.snd_soc_acpi_endpoint, [28 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rt711\00", [26 x i8] zeroinitializer }, align 32
@spk_l_endpoint = internal constant { %struct.snd_soc_acpi_endpoint, [28 x i8] } { %struct.snd_soc_acpi_endpoint { i8 0, i8 1, i8 0, i8 1 }, [28 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rt1308-1\00", [23 x i8] zeroinitializer }, align 32
@spk_r_endpoint = internal constant { %struct.snd_soc_acpi_endpoint, [28 x i8] } { %struct.snd_soc_acpi_endpoint { i8 0, i8 1, i8 1, i8 1 }, [28 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rt1308-2\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rt715\00", [26 x i8] zeroinitializer }, align 32
@rt711_sdca_0_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 52786708812033, i8 1, ptr @single_endpoint, ptr @.str.17 }], [40 x i8] zeroinitializer }, align 32
@rt1316_1_group1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 335361197938177, i8 1, ptr @spk_l_endpoint, ptr @.str.21 }], [40 x i8] zeroinitializer }, align 32
@rt1316_2_group1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 615736663021057, i8 1, ptr @spk_r_endpoint, ptr @.str.22 }], [40 x i8] zeroinitializer }, align 32
@rt714_3_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 897211638944769, i8 1, ptr @single_endpoint, ptr @.str.23 }], [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rt1316-1\00", [23 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rt1316-2\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rt714\00", [26 x i8] zeroinitializer }, align 32
@rt1308_1_single_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 316669500262400, i8 1, ptr @single_endpoint, ptr @.str.18 }], [40 x i8] zeroinitializer }, align 32
@rt700_1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 299077313429504, i8 1, ptr @single_endpoint, ptr @.str.24 }], [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rt700\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 40, i32 15 }
@___asan_gen_.28 = private unnamed_addr constant [18 x i8] c"rt1011_spk_codecs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 12, i32 41 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 43, i32 22 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 44, i32 24 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 48, i32 15 }
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"rt1015_spk_codecs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 17, i32 41 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 56, i32 15 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"max98357a_spk_codecs\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 22, i32 41 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 60, i32 24 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 66, i32 24 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 70, i32 15 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 74, i32 24 }
@___asan_gen_.61 = private unnamed_addr constant [20 x i8] c"max98390_spk_codecs\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 27, i32 41 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 82, i32 24 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 86, i32 15 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 88, i32 24 }
@___asan_gen_.73 = private unnamed_addr constant [32 x i8] c"snd_soc_acpi_intel_cml_machines\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 37, i32 26 }
@___asan_gen_.76 = private unnamed_addr constant [19 x i8] c"cml_3_in_1_default\00", align 1
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 214, i32 43 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 285, i32 15 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 287, i32 24 }
@___asan_gen_.85 = private unnamed_addr constant [16 x i8] c"cml_3_in_1_sdca\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 257, i32 43 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 294, i32 24 }
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c"cml_3_in_1_mono_amp\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 238, i32 43 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 306, i32 24 }
@___asan_gen_.97 = private unnamed_addr constant [8 x i8] c"cml_rvp\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 124, i32 43 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 313, i32 24 }
@___asan_gen_.103 = private unnamed_addr constant [36 x i8] c"snd_soc_acpi_intel_cml_sdw_machines\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 281, i32 26 }
@___asan_gen_.106 = private unnamed_addr constant [12 x i8] c"rt711_0_adr\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 133, i32 45 }
@___asan_gen_.109 = private unnamed_addr constant [20 x i8] c"rt1308_1_group1_adr\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 151, i32 45 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"rt1308_2_group1_adr\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 160, i32 45 }
@___asan_gen_.115 = private unnamed_addr constant [12 x i8] c"rt715_3_adr\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 169, i32 45 }
@___asan_gen_.118 = private unnamed_addr constant [16 x i8] c"single_endpoint\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 94, i32 43 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 138, i32 18 }
@___asan_gen_.124 = private unnamed_addr constant [15 x i8] c"spk_l_endpoint\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 101, i32 43 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 156, i32 18 }
@___asan_gen_.130 = private unnamed_addr constant [15 x i8] c"spk_r_endpoint\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 108, i32 43 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 165, i32 18 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 174, i32 18 }
@___asan_gen_.139 = private unnamed_addr constant [17 x i8] c"rt711_sdca_0_adr\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 178, i32 45 }
@___asan_gen_.142 = private unnamed_addr constant [20 x i8] c"rt1316_1_group1_adr\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 187, i32 45 }
@___asan_gen_.145 = private unnamed_addr constant [20 x i8] c"rt1316_2_group1_adr\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 196, i32 45 }
@___asan_gen_.148 = private unnamed_addr constant [12 x i8] c"rt714_3_adr\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 205, i32 45 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 192, i32 18 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 201, i32 18 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 210, i32 18 }
@___asan_gen_.160 = private unnamed_addr constant [20 x i8] c"rt1308_1_single_adr\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 142, i32 45 }
@___asan_gen_.163 = private unnamed_addr constant [12 x i8] c"rt700_1_adr\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 115, i32 45 }
@___asan_gen_.166 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.167 = private constant [53 x i8] c"../sound/soc/intel/common/soc-acpi-intel-cml-match.c\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.167, i32 120, i32 18 }
@llvm.compiler.used = appending global [50 x ptr] [ptr @__ksymtab_snd_soc_acpi_intel_cml_machines, ptr @__ksymtab_snd_soc_acpi_intel_cml_sdw_machines, ptr @.str, ptr @rt1011_spk_codecs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @rt1015_spk_codecs, ptr @.str.4, ptr @max98357a_spk_codecs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @max98390_spk_codecs, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @snd_soc_acpi_intel_cml_machines, ptr @cml_3_in_1_default, ptr @.str.12, ptr @.str.13, ptr @cml_3_in_1_sdca, ptr @.str.14, ptr @cml_3_in_1_mono_amp, ptr @.str.15, ptr @cml_rvp, ptr @.str.16, ptr @snd_soc_acpi_intel_cml_sdw_machines, ptr @rt711_0_adr, ptr @rt1308_1_group1_adr, ptr @rt1308_2_group1_adr, ptr @rt715_3_adr, ptr @single_endpoint, ptr @.str.17, ptr @spk_l_endpoint, ptr @.str.18, ptr @spk_r_endpoint, ptr @.str.19, ptr @.str.20, ptr @rt711_sdca_0_adr, ptr @rt1316_1_group1_adr, ptr @rt1316_2_group1_adr, ptr @rt714_3_adr, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @rt1308_1_single_adr, ptr @rt700_1_adr, ptr @.str.24], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1011_spk_codecs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1015_spk_codecs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98357a_spk_codecs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @max98390_spk_codecs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_cml_machines to i32), i32 736, i32 896, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cml_3_in_1_default to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cml_3_in_1_sdca to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cml_3_in_1_mono_amp to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cml_rvp to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_cml_sdw_machines to i32), i32 460, i32 576, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_0_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1308_1_group1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1308_2_group1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_3_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @single_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_l_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_r_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_0_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1316_1_group1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1316_2_group1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt714_3_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1308_1_single_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }]
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #2 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98}
!llvm.module.flags = !{!100, !101, !102, !103, !104, !105, !106, !107}
!llvm.ident = !{!108}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 40, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 43, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 44, i32 24}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 48, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 56, i32 15}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 60, i32 24}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 66, i32 24}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 70, i32 15}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 74, i32 24}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 82, i32 24}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 86, i32 15}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 88, i32 24}
!24 = !{ptr @snd_soc_acpi_intel_cml_machines, !25, !"snd_soc_acpi_intel_cml_machines", i1 false, i1 false}
!25 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 37, i32 26}
!26 = !{ptr @__ksymtab_snd_soc_acpi_intel_cml_machines, !27, !"__ksymtab_snd_soc_acpi_intel_cml_machines", i1 false, i1 false}
!27 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 92, i32 1}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 285, i32 15}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 287, i32 24}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 294, i32 24}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 306, i32 24}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 313, i32 24}
!38 = !{ptr @snd_soc_acpi_intel_cml_sdw_machines, !39, !"snd_soc_acpi_intel_cml_sdw_machines", i1 false, i1 false}
!39 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 281, i32 26}
!40 = !{ptr @__ksymtab_snd_soc_acpi_intel_cml_sdw_machines, !41, !"__ksymtab_snd_soc_acpi_intel_cml_sdw_machines", i1 false, i1 false}
!41 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 317, i32 1}
!42 = !{ptr @rt1011_spk_codecs, !43, !"rt1011_spk_codecs", i1 false, i1 false}
!43 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 12, i32 41}
!44 = !{ptr @rt1015_spk_codecs, !45, !"rt1015_spk_codecs", i1 false, i1 false}
!45 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 17, i32 41}
!46 = !{ptr @max98357a_spk_codecs, !47, !"max98357a_spk_codecs", i1 false, i1 false}
!47 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 22, i32 41}
!48 = !{ptr @max98390_spk_codecs, !49, !"max98390_spk_codecs", i1 false, i1 false}
!49 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 27, i32 41}
!50 = !{ptr @cml_3_in_1_default, !51, !"cml_3_in_1_default", i1 false, i1 false}
!51 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 214, i32 43}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 138, i32 18}
!54 = !{ptr @rt711_0_adr, !55, !"rt711_0_adr", i1 false, i1 false}
!55 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 133, i32 45}
!56 = !{ptr @single_endpoint, !57, !"single_endpoint", i1 false, i1 false}
!57 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 94, i32 43}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 156, i32 18}
!60 = !{ptr @rt1308_1_group1_adr, !61, !"rt1308_1_group1_adr", i1 false, i1 false}
!61 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 151, i32 45}
!62 = !{ptr @spk_l_endpoint, !63, !"spk_l_endpoint", i1 false, i1 false}
!63 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 101, i32 43}
!64 = !{ptr @.str.19, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 165, i32 18}
!66 = !{ptr @rt1308_2_group1_adr, !67, !"rt1308_2_group1_adr", i1 false, i1 false}
!67 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 160, i32 45}
!68 = !{ptr @spk_r_endpoint, !69, !"spk_r_endpoint", i1 false, i1 false}
!69 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 108, i32 43}
!70 = !{ptr @.str.20, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 174, i32 18}
!72 = !{ptr @rt715_3_adr, !73, !"rt715_3_adr", i1 false, i1 false}
!73 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 169, i32 45}
!74 = !{ptr @cml_3_in_1_sdca, !75, !"cml_3_in_1_sdca", i1 false, i1 false}
!75 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 257, i32 43}
!76 = !{ptr @rt711_sdca_0_adr, !77, !"rt711_sdca_0_adr", i1 false, i1 false}
!77 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 178, i32 45}
!78 = !{ptr @.str.21, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 192, i32 18}
!80 = !{ptr @rt1316_1_group1_adr, !81, !"rt1316_1_group1_adr", i1 false, i1 false}
!81 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 187, i32 45}
!82 = !{ptr @.str.22, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 201, i32 18}
!84 = !{ptr @rt1316_2_group1_adr, !85, !"rt1316_2_group1_adr", i1 false, i1 false}
!85 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 196, i32 45}
!86 = !{ptr @.str.23, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 210, i32 18}
!88 = !{ptr @rt714_3_adr, !89, !"rt714_3_adr", i1 false, i1 false}
!89 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 205, i32 45}
!90 = !{ptr @cml_3_in_1_mono_amp, !91, !"cml_3_in_1_mono_amp", i1 false, i1 false}
!91 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 238, i32 43}
!92 = !{ptr @rt1308_1_single_adr, !93, !"rt1308_1_single_adr", i1 false, i1 false}
!93 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 142, i32 45}
!94 = !{ptr @cml_rvp, !95, !"cml_rvp", i1 false, i1 false}
!95 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 124, i32 43}
!96 = !{ptr @.str.24, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 120, i32 18}
!98 = !{ptr @rt700_1_adr, !99, !"rt700_1_adr", i1 false, i1 false}
!99 = !{!"../sound/soc/intel/common/soc-acpi-intel-cml-match.c", i32 115, i32 45}
!100 = !{i32 1, !"wchar_size", i32 2}
!101 = !{i32 1, !"min_enum_size", i32 4}
!102 = !{i32 8, !"branch-target-enforcement", i32 0}
!103 = !{i32 8, !"sign-return-address", i32 0}
!104 = !{i32 8, !"sign-return-address-all", i32 0}
!105 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!106 = !{i32 7, !"uwtable", i32 1}
!107 = !{i32 7, !"frame-pointer", i32 2}
!108 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
