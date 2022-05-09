; ModuleID = '/llk/IR_all_yes/sound/soc/intel/common/soc-acpi-intel-adl-match.c_pt.bc'
source_filename = "../sound/soc/intel/common/soc-acpi-intel-adl-match.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_adl_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_adl_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_adl_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_adl_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_adl_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_adl_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_adl_sdw_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_adl_sdw_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_adl_sdw_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_adl_sdw_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_adl_sdw_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_adl_sdw_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_acpi_codecs = type { i32, [3 x [9 x i8]] }
%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_acpi_link_adr = type { i32, i32, ptr }
%struct.snd_soc_acpi_adr_device = type { i64, i8, ptr, ptr }
%struct.snd_soc_acpi_endpoint = type { i8, i8, i8, i8 }

@adl_rt5682_rt5682s_hp = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 2, [3 x [9 x i8]] [[9 x i8] c"10EC5682\00", [9 x i8] c"RTL5682\00\00", [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adl_mx98373_rt5682\00", [45 x i8] zeroinitializer }, align 32
@adl_max98373_amp = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"MX98373\00\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof-adl.ri\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sof-adl-max98373-rt5682.tplg\00", [35 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adl_mx98357_rt5682\00", [45 x i8] zeroinitializer }, align 32
@adl_max98357a_amp = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"MX98357A\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sof-adl-max98357a-rt5682.tplg\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"adl_mx98360_rt5682\00", [45 x i8] zeroinitializer }, align 32
@adl_max98360a_amp = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"MX98360A\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sof-adl-max98360a-rt5682.tplg\00", [34 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adl_rt1019p_nau8825\00", [44 x i8] zeroinitializer }, align 32
@adl_rt1019p_amp = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"RTL1019\00\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sof-adl-rt1019-nau8825.tplg\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adl_max98373_nau8825\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sof-adl-max98373-nau8825.tplg\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"adl_mx98360a_nau8825\00", [43 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sof-adl-mx98360a-nau8825.tplg\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sof_nau8825\00", [20 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sof-adl-nau8825.tplg\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adl_max98390_rt5682\00", [44 x i8] zeroinitializer }, align 32
@adl_max98390_amp = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"MX98390\00\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sof-adl-max98390-rt5682.tplg\00", [35 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_adl_machines = dso_local global { [9 x %struct.snd_soc_acpi_mach], [196 x i8] } { [9 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr @adl_rt5682_rt5682s_hp, i32 0, ptr null, ptr @.str, ptr null, ptr null, ptr @snd_soc_acpi_codec_list, ptr @adl_max98373_amp, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.2 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr @adl_rt5682_rt5682s_hp, i32 0, ptr null, ptr @.str.3, ptr null, ptr null, ptr @snd_soc_acpi_codec_list, ptr @adl_max98357a_amp, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.4 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr @adl_rt5682_rt5682s_hp, i32 0, ptr null, ptr @.str.5, ptr null, ptr null, ptr @snd_soc_acpi_codec_list, ptr @adl_max98360a_amp, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.6 }, %struct.snd_soc_acpi_mach { [9 x i8] c"10508825\00", ptr null, i32 0, ptr null, ptr @.str.7, ptr null, ptr null, ptr @snd_soc_acpi_codec_list, ptr @adl_rt1019p_amp, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.8 }, %struct.snd_soc_acpi_mach { [9 x i8] c"10508825\00", ptr null, i32 0, ptr null, ptr @.str.9, ptr null, ptr null, ptr @snd_soc_acpi_codec_list, ptr @adl_max98373_amp, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.10 }, %struct.snd_soc_acpi_mach { [9 x i8] c"10508825\00", ptr null, i32 0, ptr null, ptr @.str.11, ptr null, ptr null, ptr @snd_soc_acpi_codec_list, ptr @adl_max98360a_amp, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.12 }, %struct.snd_soc_acpi_mach { [9 x i8] c"10508825\00", ptr null, i32 0, ptr null, ptr @.str.13, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.14 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr @adl_rt5682_rt5682s_hp, i32 0, ptr null, ptr @.str.15, ptr null, ptr null, ptr @snd_soc_acpi_codec_list, ptr @adl_max98390_amp, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.16 }, %struct.snd_soc_acpi_mach zeroinitializer], [196 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_acpi_intel_adl_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_adl_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_adl_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_adl_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_adl_machines, ptr @__kstrtabns_snd_soc_acpi_intel_adl_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_adl_machines", align 4
@adl_default = internal constant { [5 x %struct.snd_soc_acpi_link_adr], [36 x i8] } { [5 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt711_0_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @rt1308_1_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 4, i32 1, ptr @rt1308_2_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 8, i32 1, ptr @rt715_3_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sof_sdw\00", [24 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sof-adl-rt711-l0-rt1308-l12-rt715-l3.tplg\00", [54 x i8] zeroinitializer }, align 32
@adl_sdca_default = internal constant { [5 x %struct.snd_soc_acpi_link_adr], [36 x i8] } { [5 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt711_sdca_0_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @rt1316_1_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 4, i32 1, ptr @rt1316_2_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 8, i32 1, ptr @rt714_3_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sof-adl-rt711-l0-rt1316-l12-rt714-l3.tplg\00", [54 x i8] zeroinitializer }, align 32
@adl_sdca_3_in_1 = internal constant { [5 x %struct.snd_soc_acpi_link_adr], [36 x i8] } { [5 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt711_sdca_0_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @rt1316_1_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 4, i32 1, ptr @rt714_2_adr }, %struct.snd_soc_acpi_link_adr { i32 8, i32 1, ptr @rt1316_3_group1_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sof-adl-rt711-l0-rt1316-l13-rt714-l2.tplg\00", [54 x i8] zeroinitializer }, align 32
@adl_sdw_rt711_link2_rt1316_link01_rt714_link3 = internal constant { [5 x %struct.snd_soc_acpi_link_adr], [36 x i8] } { [5 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 4, i32 1, ptr @rt711_sdca_2_adr }, %struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt1316_0_group2_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @rt1316_1_group2_adr }, %struct.snd_soc_acpi_link_adr { i32 8, i32 1, ptr @rt714_3_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"sof-adl-rt711-l2-rt1316-l01-rt714-l3.tplg\00", [54 x i8] zeroinitializer }, align 32
@adl_sdw_rt1316_link2_rt714_link3 = internal constant { [3 x %struct.snd_soc_acpi_link_adr], [60 x i8] } { [3 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 4, i32 1, ptr @rt1316_2_single_adr }, %struct.snd_soc_acpi_link_adr { i32 8, i32 1, ptr @rt714_3_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sof-adl-rt1316-l2-mono-rt714-l3.tplg\00", [59 x i8] zeroinitializer }, align 32
@adl_sdw_rt1316_link12_rt714_link0 = internal constant { [4 x %struct.snd_soc_acpi_link_adr], [48 x i8] } { [4 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @rt1316_1_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 4, i32 1, ptr @rt1316_2_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt714_0_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sof-adl-rt1316-l12-rt714-l0.tplg\00", [63 x i8] zeroinitializer }, align 32
@adl_sdw_rt1316_link2_rt714_link0 = internal constant { [3 x %struct.snd_soc_acpi_link_adr], [60 x i8] } { [3 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 4, i32 1, ptr @rt1316_2_single_adr }, %struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt714_0_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sof-adl-rt1316-l2-mono-rt714-l0.tplg\00", [59 x i8] zeroinitializer }, align 32
@adl_rvp = internal constant { [2 x %struct.snd_soc_acpi_link_adr], [40 x i8] } { [2 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt711_0_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sof-adl-rt711.tplg\00", [45 x i8] zeroinitializer }, align 32
@adl_chromebook_base = internal constant { [3 x %struct.snd_soc_acpi_link_adr], [60 x i8] } { [3 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt5682_0_adr }, %struct.snd_soc_acpi_link_adr { i32 4, i32 2, ptr @mx8373_2_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sof-adl-sdw-max98373-rt5682.tplg\00", [63 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_adl_sdw_machines = dso_local global { [10 x %struct.snd_soc_acpi_mach], [232 x i8] } { [10 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 15, ptr @adl_default, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.18 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 15, ptr @adl_sdca_default, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.19 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 15, ptr @adl_sdca_3_in_1, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.20 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 15, ptr @adl_sdw_rt711_link2_rt1316_link01_rt714_link3, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.21 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 12, ptr @adl_sdw_rt1316_link2_rt714_link3, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.22 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 7, ptr @adl_sdw_rt1316_link12_rt714_link0, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.23 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 5, ptr @adl_sdw_rt1316_link2_rt714_link0, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.24 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 1, ptr @adl_rvp, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.25 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 5, ptr @adl_chromebook_base, ptr @.str.17, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.26 }, %struct.snd_soc_acpi_mach zeroinitializer], [232 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_acpi_intel_adl_sdw_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_adl_sdw_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_adl_sdw_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_adl_sdw_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_adl_sdw_machines, ptr @__kstrtabns_snd_soc_acpi_intel_adl_sdw_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_adl_sdw_machines", align 4
@rt711_0_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 35194522767616, i8 1, ptr @single_endpoint, ptr @.str.27 }], [40 x i8] zeroinitializer }, align 32
@rt1308_1_group1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 316669500262400, i8 1, ptr @spk_l_endpoint, ptr @.str.28 }], [40 x i8] zeroinitializer }, align 32
@rt1308_2_group1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 598144476973056, i8 1, ptr @spk_r_endpoint, ptr @.str.29 }], [40 x i8] zeroinitializer }, align 32
@rt715_3_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 879619452900608, i8 1, ptr @single_endpoint, ptr @.str.30 }], [40 x i8] zeroinitializer }, align 32
@single_endpoint = internal constant { %struct.snd_soc_acpi_endpoint, [28 x i8] } zeroinitializer, align 32
@.str.27 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rt711\00", [26 x i8] zeroinitializer }, align 32
@spk_l_endpoint = internal constant { %struct.snd_soc_acpi_endpoint, [28 x i8] } { %struct.snd_soc_acpi_endpoint { i8 0, i8 1, i8 0, i8 1 }, [28 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rt1308-1\00", [23 x i8] zeroinitializer }, align 32
@spk_r_endpoint = internal constant { %struct.snd_soc_acpi_endpoint, [28 x i8] } { %struct.snd_soc_acpi_endpoint { i8 0, i8 1, i8 1, i8 1 }, [28 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rt1308-2\00", [23 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rt715\00", [26 x i8] zeroinitializer }, align 32
@rt711_sdca_0_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 52786708812033, i8 1, ptr @single_endpoint, ptr @.str.27 }], [40 x i8] zeroinitializer }, align 32
@rt1316_1_group1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 335361197938177, i8 1, ptr @spk_l_endpoint, ptr @.str.31 }], [40 x i8] zeroinitializer }, align 32
@rt1316_2_group1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 615736663021057, i8 1, ptr @spk_r_endpoint, ptr @.str.32 }], [40 x i8] zeroinitializer }, align 32
@rt714_3_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 897211638944769, i8 1, ptr @single_endpoint, ptr @.str.33 }], [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rt1316-1\00", [23 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rt1316-2\00", [23 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rt714\00", [26 x i8] zeroinitializer }, align 32
@rt714_2_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 615736662234113, i8 1, ptr @single_endpoint, ptr @.str.33 }], [40 x i8] zeroinitializer }, align 32
@rt1316_3_group1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 897211639731713, i8 1, ptr @spk_r_endpoint, ptr @.str.32 }], [40 x i8] zeroinitializer }, align 32
@rt711_sdca_2_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 615736662233345, i8 1, ptr @single_endpoint, ptr @.str.27 }], [40 x i8] zeroinitializer }, align 32
@rt1316_0_group2_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 53886221227521, i8 1, ptr @spk_l_endpoint, ptr @.str.31 }], [40 x i8] zeroinitializer }, align 32
@rt1316_1_group2_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 334261686310401, i8 1, ptr @spk_r_endpoint, ptr @.str.32 }], [40 x i8] zeroinitializer }, align 32
@rt1316_2_single_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 615736663021057, i8 1, ptr @single_endpoint, ptr @.str.31 }], [40 x i8] zeroinitializer }, align 32
@rt714_0_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 52786708812801, i8 1, ptr @single_endpoint, ptr @.str.33 }], [40 x i8] zeroinitializer }, align 32
@rt5682_0_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 36294039601664, i8 1, ptr @single_endpoint, ptr @.str.34 }], [40 x i8] zeroinitializer }, align 32
@mx8373_2_adr = internal constant { [2 x %struct.snd_soc_acpi_adr_device], [48 x i8] } { [2 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 601439831552768, i8 1, ptr @spk_l_endpoint, ptr @.str.35 }, %struct.snd_soc_acpi_adr_device { i64 605837878063872, i8 1, ptr @spk_r_endpoint, ptr @.str.36 }], [48 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt5682\00", [25 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant [22 x i8] c"adl_rt5682_rt5682s_hp\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 372, i32 41 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 390, i32 15 }
@___asan_gen_.43 = private unnamed_addr constant [17 x i8] c"adl_max98373_amp\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 357, i32 41 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 393, i32 22 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 394, i32 24 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 398, i32 15 }
@___asan_gen_.55 = private unnamed_addr constant [18 x i8] c"adl_max98357a_amp\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 362, i32 41 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 402, i32 24 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 406, i32 15 }
@___asan_gen_.64 = private unnamed_addr constant [18 x i8] c"adl_max98360a_amp\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 367, i32 41 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 410, i32 24 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 414, i32 15 }
@___asan_gen_.73 = private unnamed_addr constant [16 x i8] c"adl_rt1019p_amp\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 377, i32 41 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 418, i32 24 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 422, i32 15 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 426, i32 24 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 430, i32 15 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 434, i32 24 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 438, i32 15 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 440, i32 24 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 444, i32 15 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"adl_max98390_amp\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 382, i32 41 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 448, i32 24 }
@___asan_gen_.106 = private unnamed_addr constant [32 x i8] c"snd_soc_acpi_intel_adl_machines\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 387, i32 26 }
@___asan_gen_.109 = private unnamed_addr constant [12 x i8] c"adl_default\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 167, i32 43 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 459, i32 15 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 460, i32 24 }
@___asan_gen_.118 = private unnamed_addr constant [17 x i8] c"adl_sdca_default\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 191, i32 43 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 466, i32 24 }
@___asan_gen_.124 = private unnamed_addr constant [16 x i8] c"adl_sdca_3_in_1\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 215, i32 43 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 472, i32 24 }
@___asan_gen_.130 = private unnamed_addr constant [46 x i8] c"adl_sdw_rt711_link2_rt1316_link01_rt714_link3\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 239, i32 43 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 479, i32 24 }
@___asan_gen_.136 = private unnamed_addr constant [33 x i8] c"adl_sdw_rt1316_link2_rt714_link3\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 282, i32 43 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 486, i32 24 }
@___asan_gen_.142 = private unnamed_addr constant [34 x i8] c"adl_sdw_rt1316_link12_rt714_link0\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 263, i32 43 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 493, i32 24 }
@___asan_gen_.148 = private unnamed_addr constant [33 x i8] c"adl_sdw_rt1316_link2_rt714_link0\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 296, i32 43 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 499, i32 24 }
@___asan_gen_.154 = private unnamed_addr constant [8 x i8] c"adl_rvp\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 334, i32 43 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 505, i32 24 }
@___asan_gen_.160 = private unnamed_addr constant [20 x i8] c"adl_chromebook_base\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 343, i32 43 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 512, i32 24 }
@___asan_gen_.166 = private unnamed_addr constant [36 x i8] c"snd_soc_acpi_intel_adl_sdw_machines\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 455, i32 26 }
@___asan_gen_.169 = private unnamed_addr constant [12 x i8] c"rt711_0_adr\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 32, i32 45 }
@___asan_gen_.172 = private unnamed_addr constant [20 x i8] c"rt1308_1_group1_adr\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 41, i32 45 }
@___asan_gen_.175 = private unnamed_addr constant [20 x i8] c"rt1308_2_group1_adr\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 50, i32 45 }
@___asan_gen_.178 = private unnamed_addr constant [12 x i8] c"rt715_3_adr\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 59, i32 45 }
@___asan_gen_.181 = private unnamed_addr constant [16 x i8] c"single_endpoint\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 11, i32 43 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 37, i32 18 }
@___asan_gen_.187 = private unnamed_addr constant [15 x i8] c"spk_l_endpoint\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 18, i32 43 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 46, i32 18 }
@___asan_gen_.193 = private unnamed_addr constant [15 x i8] c"spk_r_endpoint\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 25, i32 43 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 55, i32 18 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 64, i32 18 }
@___asan_gen_.202 = private unnamed_addr constant [17 x i8] c"rt711_sdca_0_adr\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 68, i32 45 }
@___asan_gen_.205 = private unnamed_addr constant [20 x i8] c"rt1316_1_group1_adr\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 86, i32 45 }
@___asan_gen_.208 = private unnamed_addr constant [20 x i8] c"rt1316_2_group1_adr\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 95, i32 45 }
@___asan_gen_.211 = private unnamed_addr constant [12 x i8] c"rt714_3_adr\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 158, i32 45 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 91, i32 18 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 100, i32 18 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 163, i32 18 }
@___asan_gen_.223 = private unnamed_addr constant [12 x i8] c"rt714_2_adr\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 149, i32 45 }
@___asan_gen_.226 = private unnamed_addr constant [20 x i8] c"rt1316_3_group1_adr\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 104, i32 45 }
@___asan_gen_.229 = private unnamed_addr constant [17 x i8] c"rt711_sdca_2_adr\00", align 1
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 77, i32 45 }
@___asan_gen_.232 = private unnamed_addr constant [20 x i8] c"rt1316_0_group2_adr\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 113, i32 45 }
@___asan_gen_.235 = private unnamed_addr constant [20 x i8] c"rt1316_1_group2_adr\00", align 1
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 122, i32 45 }
@___asan_gen_.238 = private unnamed_addr constant [20 x i8] c"rt1316_2_single_adr\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 131, i32 45 }
@___asan_gen_.241 = private unnamed_addr constant [12 x i8] c"rt714_0_adr\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 140, i32 45 }
@___asan_gen_.244 = private unnamed_addr constant [13 x i8] c"rt5682_0_adr\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 325, i32 45 }
@___asan_gen_.247 = private unnamed_addr constant [13 x i8] c"mx8373_2_adr\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 310, i32 45 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 330, i32 18 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 315, i32 18 }
@___asan_gen_.256 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.257 = private constant [53 x i8] c"../sound/soc/intel/common/soc-acpi-intel-adl-match.c\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.257, i32 321, i32 18 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__ksymtab_snd_soc_acpi_intel_adl_machines, ptr @__ksymtab_snd_soc_acpi_intel_adl_sdw_machines, ptr @adl_rt5682_rt5682s_hp, ptr @.str, ptr @adl_max98373_amp, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @adl_max98357a_amp, ptr @.str.4, ptr @.str.5, ptr @adl_max98360a_amp, ptr @.str.6, ptr @.str.7, ptr @adl_rt1019p_amp, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @adl_max98390_amp, ptr @.str.16, ptr @snd_soc_acpi_intel_adl_machines, ptr @adl_default, ptr @.str.17, ptr @.str.18, ptr @adl_sdca_default, ptr @.str.19, ptr @adl_sdca_3_in_1, ptr @.str.20, ptr @adl_sdw_rt711_link2_rt1316_link01_rt714_link3, ptr @.str.21, ptr @adl_sdw_rt1316_link2_rt714_link3, ptr @.str.22, ptr @adl_sdw_rt1316_link12_rt714_link0, ptr @.str.23, ptr @adl_sdw_rt1316_link2_rt714_link0, ptr @.str.24, ptr @adl_rvp, ptr @.str.25, ptr @adl_chromebook_base, ptr @.str.26, ptr @snd_soc_acpi_intel_adl_sdw_machines, ptr @rt711_0_adr, ptr @rt1308_1_group1_adr, ptr @rt1308_2_group1_adr, ptr @rt715_3_adr, ptr @single_endpoint, ptr @.str.27, ptr @spk_l_endpoint, ptr @.str.28, ptr @spk_r_endpoint, ptr @.str.29, ptr @.str.30, ptr @rt711_sdca_0_adr, ptr @rt1316_1_group1_adr, ptr @rt1316_2_group1_adr, ptr @rt714_3_adr, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @rt714_2_adr, ptr @rt1316_3_group1_adr, ptr @rt711_sdca_2_adr, ptr @rt1316_0_group2_adr, ptr @rt1316_1_group2_adr, ptr @rt1316_2_single_adr, ptr @rt714_0_adr, ptr @rt5682_0_adr, ptr @mx8373_2_adr, ptr @.str.34, ptr @.str.35, ptr @.str.36], section "llvm.metadata"
@0 = internal global [74 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_rt5682_rt5682s_hp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_max98373_amp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_max98357a_amp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_max98360a_amp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_rt1019p_amp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_max98390_amp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_adl_machines to i32), i32 828, i32 1024, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_default to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_sdca_default to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_sdca_3_in_1 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_sdw_rt711_link2_rt1316_link01_rt714_link3 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_sdw_rt1316_link2_rt714_link3 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_sdw_rt1316_link12_rt714_link0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_sdw_rt1316_link2_rt714_link0 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_rvp to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adl_chromebook_base to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_adl_sdw_machines to i32), i32 920, i32 1152, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_0_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1308_1_group1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1308_2_group1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_3_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @single_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_l_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_r_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_0_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1316_1_group1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1316_2_group1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt714_3_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt714_2_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1316_3_group1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_2_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1316_0_group2_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1316_1_group2_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1316_2_single_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt714_0_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_0_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx8373_2_adr to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }]
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 74)
  ret void
}

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #2 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150}
!llvm.module.flags = !{!152, !153, !154, !155, !156, !157, !158, !159}
!llvm.ident = !{!160}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 390, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 393, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 394, i32 24}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 398, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 402, i32 24}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 406, i32 15}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 410, i32 24}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 414, i32 15}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 418, i32 24}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 422, i32 15}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 426, i32 24}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 430, i32 15}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 434, i32 24}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 438, i32 15}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 440, i32 24}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 444, i32 15}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 448, i32 24}
!34 = !{ptr @snd_soc_acpi_intel_adl_machines, !35, !"snd_soc_acpi_intel_adl_machines", i1 false, i1 false}
!35 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 387, i32 26}
!36 = !{ptr @__ksymtab_snd_soc_acpi_intel_adl_machines, !37, !"__ksymtab_snd_soc_acpi_intel_adl_machines", i1 false, i1 false}
!37 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 452, i32 1}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 459, i32 15}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 460, i32 24}
!42 = !{ptr @.str.19, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 466, i32 24}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 472, i32 24}
!46 = !{ptr @.str.21, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 479, i32 24}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 486, i32 24}
!50 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 493, i32 24}
!52 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 499, i32 24}
!54 = !{ptr @.str.25, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 505, i32 24}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 512, i32 24}
!58 = !{ptr @snd_soc_acpi_intel_adl_sdw_machines, !59, !"snd_soc_acpi_intel_adl_sdw_machines", i1 false, i1 false}
!59 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 455, i32 26}
!60 = !{ptr @__ksymtab_snd_soc_acpi_intel_adl_sdw_machines, !61, !"__ksymtab_snd_soc_acpi_intel_adl_sdw_machines", i1 false, i1 false}
!61 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 516, i32 1}
!62 = !{ptr @adl_rt5682_rt5682s_hp, !63, !"adl_rt5682_rt5682s_hp", i1 false, i1 false}
!63 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 372, i32 41}
!64 = !{ptr @adl_max98373_amp, !65, !"adl_max98373_amp", i1 false, i1 false}
!65 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 357, i32 41}
!66 = !{ptr @adl_max98357a_amp, !67, !"adl_max98357a_amp", i1 false, i1 false}
!67 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 362, i32 41}
!68 = !{ptr @adl_max98360a_amp, !69, !"adl_max98360a_amp", i1 false, i1 false}
!69 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 367, i32 41}
!70 = !{ptr @adl_rt1019p_amp, !71, !"adl_rt1019p_amp", i1 false, i1 false}
!71 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 377, i32 41}
!72 = !{ptr @adl_max98390_amp, !73, !"adl_max98390_amp", i1 false, i1 false}
!73 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 382, i32 41}
!74 = !{ptr @adl_default, !75, !"adl_default", i1 false, i1 false}
!75 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 167, i32 43}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 37, i32 18}
!78 = !{ptr @rt711_0_adr, !79, !"rt711_0_adr", i1 false, i1 false}
!79 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 32, i32 45}
!80 = !{ptr @single_endpoint, !81, !"single_endpoint", i1 false, i1 false}
!81 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 11, i32 43}
!82 = !{ptr @.str.28, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 46, i32 18}
!84 = !{ptr @rt1308_1_group1_adr, !85, !"rt1308_1_group1_adr", i1 false, i1 false}
!85 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 41, i32 45}
!86 = !{ptr @spk_l_endpoint, !87, !"spk_l_endpoint", i1 false, i1 false}
!87 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 18, i32 43}
!88 = !{ptr @.str.29, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 55, i32 18}
!90 = !{ptr @rt1308_2_group1_adr, !91, !"rt1308_2_group1_adr", i1 false, i1 false}
!91 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 50, i32 45}
!92 = !{ptr @spk_r_endpoint, !93, !"spk_r_endpoint", i1 false, i1 false}
!93 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 25, i32 43}
!94 = !{ptr @.str.30, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 64, i32 18}
!96 = !{ptr @rt715_3_adr, !97, !"rt715_3_adr", i1 false, i1 false}
!97 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 59, i32 45}
!98 = !{ptr @adl_sdca_default, !99, !"adl_sdca_default", i1 false, i1 false}
!99 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 191, i32 43}
!100 = !{ptr @rt711_sdca_0_adr, !101, !"rt711_sdca_0_adr", i1 false, i1 false}
!101 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 68, i32 45}
!102 = !{ptr @.str.31, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 91, i32 18}
!104 = !{ptr @rt1316_1_group1_adr, !105, !"rt1316_1_group1_adr", i1 false, i1 false}
!105 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 86, i32 45}
!106 = !{ptr @.str.32, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 100, i32 18}
!108 = !{ptr @rt1316_2_group1_adr, !109, !"rt1316_2_group1_adr", i1 false, i1 false}
!109 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 95, i32 45}
!110 = !{ptr @.str.33, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 163, i32 18}
!112 = !{ptr @rt714_3_adr, !113, !"rt714_3_adr", i1 false, i1 false}
!113 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 158, i32 45}
!114 = !{ptr @adl_sdca_3_in_1, !115, !"adl_sdca_3_in_1", i1 false, i1 false}
!115 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 215, i32 43}
!116 = !{ptr @rt714_2_adr, !117, !"rt714_2_adr", i1 false, i1 false}
!117 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 149, i32 45}
!118 = !{ptr @rt1316_3_group1_adr, !119, !"rt1316_3_group1_adr", i1 false, i1 false}
!119 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 104, i32 45}
!120 = !{ptr @adl_sdw_rt711_link2_rt1316_link01_rt714_link3, !121, !"adl_sdw_rt711_link2_rt1316_link01_rt714_link3", i1 false, i1 false}
!121 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 239, i32 43}
!122 = !{ptr @rt711_sdca_2_adr, !123, !"rt711_sdca_2_adr", i1 false, i1 false}
!123 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 77, i32 45}
!124 = !{ptr @rt1316_0_group2_adr, !125, !"rt1316_0_group2_adr", i1 false, i1 false}
!125 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 113, i32 45}
!126 = !{ptr @rt1316_1_group2_adr, !127, !"rt1316_1_group2_adr", i1 false, i1 false}
!127 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 122, i32 45}
!128 = !{ptr @adl_sdw_rt1316_link2_rt714_link3, !129, !"adl_sdw_rt1316_link2_rt714_link3", i1 false, i1 false}
!129 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 282, i32 43}
!130 = !{ptr @rt1316_2_single_adr, !131, !"rt1316_2_single_adr", i1 false, i1 false}
!131 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 131, i32 45}
!132 = !{ptr @adl_sdw_rt1316_link12_rt714_link0, !133, !"adl_sdw_rt1316_link12_rt714_link0", i1 false, i1 false}
!133 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 263, i32 43}
!134 = !{ptr @rt714_0_adr, !135, !"rt714_0_adr", i1 false, i1 false}
!135 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 140, i32 45}
!136 = !{ptr @adl_sdw_rt1316_link2_rt714_link0, !137, !"adl_sdw_rt1316_link2_rt714_link0", i1 false, i1 false}
!137 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 296, i32 43}
!138 = !{ptr @adl_rvp, !139, !"adl_rvp", i1 false, i1 false}
!139 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 334, i32 43}
!140 = !{ptr @adl_chromebook_base, !141, !"adl_chromebook_base", i1 false, i1 false}
!141 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 343, i32 43}
!142 = !{ptr @.str.34, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 330, i32 18}
!144 = !{ptr @rt5682_0_adr, !145, !"rt5682_0_adr", i1 false, i1 false}
!145 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 325, i32 45}
!146 = !{ptr @.str.35, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 315, i32 18}
!148 = !{ptr @.str.36, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 321, i32 18}
!150 = !{ptr @mx8373_2_adr, !151, !"mx8373_2_adr", i1 false, i1 false}
!151 = !{!"../sound/soc/intel/common/soc-acpi-intel-adl-match.c", i32 310, i32 45}
!152 = !{i32 1, !"wchar_size", i32 2}
!153 = !{i32 1, !"min_enum_size", i32 4}
!154 = !{i32 8, !"branch-target-enforcement", i32 0}
!155 = !{i32 8, !"sign-return-address", i32 0}
!156 = !{i32 8, !"sign-return-address-all", i32 0}
!157 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!158 = !{i32 7, !"uwtable", i32 1}
!159 = !{i32 7, !"frame-pointer", i32 2}
!160 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
