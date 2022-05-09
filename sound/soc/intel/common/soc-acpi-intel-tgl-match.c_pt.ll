; ModuleID = '/llk/IR_all_yes/sound/soc/intel/common/soc-acpi-intel-tgl-match.c_pt.bc'
source_filename = "../sound/soc/intel/common/soc-acpi-intel-tgl-match.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_tgl_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_tgl_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_tgl_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_tgl_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_tgl_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_tgl_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_tgl_sdw_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_tgl_sdw_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_tgl_sdw_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_tgl_sdw_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_tgl_sdw_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_tgl_sdw_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_acpi_codecs = type { i32, [3 x [9 x i8]] }
%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_acpi_link_adr = type { i32, i32, ptr }
%struct.snd_soc_acpi_adr_device = type { i64, i8, ptr, ptr }
%struct.snd_soc_acpi_endpoint = type { i8, i8, i8, i8 }

@tgl_rt5682_rt5682s_hp = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 2, [3 x [9 x i8]] [[9 x i8] c"10EC5682\00", [9 x i8] c"RTL5682\00\00", [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tgl_mx98357_rt5682\00", [45 x i8] zeroinitializer }, align 32
@tgl_codecs = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"MX98357A\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof-tgl.ri\00", [21 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sof-tgl-max98357a-rt5682.tplg\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tgl_mx98373_rt5682\00", [45 x i8] zeroinitializer }, align 32
@tgl_max98373_amp = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"MX98373\00\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sof-tgl-max98373-rt5682.tplg\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"tgl_rt1011_rt5682\00", [46 x i8] zeroinitializer }, align 32
@tgl_rt1011_amp = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"10EC1011\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"sof-tgl-rt1011-rt5682.tplg\00", [37 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sof-essx8336\00", [19 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof-tgl-es8336.tplg\00", [44 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_tgl_machines = dso_local global { [5 x %struct.snd_soc_acpi_mach], [116 x i8] } { [5 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr @tgl_rt5682_rt5682s_hp, i32 0, ptr null, ptr @.str, ptr null, ptr null, ptr @snd_soc_acpi_codec_list, ptr @tgl_codecs, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.2 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr @tgl_rt5682_rt5682s_hp, i32 0, ptr null, ptr @.str.3, ptr null, ptr null, ptr @snd_soc_acpi_codec_list, ptr @tgl_max98373_amp, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.4 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr @tgl_rt5682_rt5682s_hp, i32 0, ptr null, ptr @.str.5, ptr null, ptr null, ptr @snd_soc_acpi_codec_list, ptr @tgl_rt1011_amp, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.6 }, %struct.snd_soc_acpi_mach { [9 x i8] c"ESSX8336\00", ptr null, i32 0, ptr null, ptr @.str.7, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.8 }, %struct.snd_soc_acpi_mach zeroinitializer], [116 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_acpi_intel_tgl_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_tgl_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_tgl_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_tgl_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_tgl_machines, ptr @__kstrtabns_snd_soc_acpi_intel_tgl_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_tgl_machines", align 4
@sdw_mockup_headset_2amps_mic = external dso_local constant [0 x %struct.snd_soc_acpi_link_adr], align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sof_sdw\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sof-tgl-rt711-rt1308-rt715.tplg\00", [32 x i8] zeroinitializer }, align 32
@sdw_mockup_headset_1amp_mic = external dso_local constant [0 x %struct.snd_soc_acpi_link_adr], align 4
@.str.11 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sof-tgl-rt711-rt1308-mono-rt715.tplg\00", [59 x i8] zeroinitializer }, align 32
@sdw_mockup_mic_headset_1amp = external dso_local constant [0 x %struct.snd_soc_acpi_link_adr], align 4
@.str.12 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sof-tgl-rt715-rt711-rt1308-mono.tplg\00", [59 x i8] zeroinitializer }, align 32
@tgl_sdw_rt711_link1_rt1308_link2_rt715_link0 = internal constant { [4 x %struct.snd_soc_acpi_link_adr], [48 x i8] } { [4 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @rt711_1_adr }, %struct.snd_soc_acpi_link_adr { i32 4, i32 1, ptr @rt1308_2_single_adr }, %struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt715_0_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tgl_3_in_1_default = internal constant { [5 x %struct.snd_soc_acpi_link_adr], [36 x i8] } { [5 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt711_0_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @rt1308_1_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 4, i32 1, ptr @rt1308_2_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 8, i32 1, ptr @rt715_3_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [36 x i8] zeroinitializer }, align 32
@tgl_3_in_1_mono_amp = internal constant { [4 x %struct.snd_soc_acpi_link_adr], [48 x i8] } { [4 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt711_0_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @rt1308_1_single_adr }, %struct.snd_soc_acpi_link_adr { i32 8, i32 1, ptr @rt715_3_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [48 x i8] zeroinitializer }, align 32
@tgl_3_in_1_sdca = internal constant { [5 x %struct.snd_soc_acpi_link_adr], [36 x i8] } { [5 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt711_sdca_0_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @rt1316_1_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 4, i32 1, ptr @rt1316_2_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 8, i32 1, ptr @rt714_3_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sof-tgl-rt711-rt1316-rt714.tplg\00", [32 x i8] zeroinitializer }, align 32
@tgl_3_in_1_sdca_mono = internal constant { [4 x %struct.snd_soc_acpi_link_adr], [48 x i8] } { [4 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt711_sdca_0_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @rt1316_1_single_adr }, %struct.snd_soc_acpi_link_adr { i32 8, i32 1, ptr @rt714_3_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"sof-tgl-rt711-l0-rt1316-l1-mono-rt714-l3.tplg\00", [50 x i8] zeroinitializer }, align 32
@tgl_hp = internal constant { [3 x %struct.snd_soc_acpi_link_adr], [60 x i8] } { [3 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt711_0_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @rt1308_1_single_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sof-tgl-rt711-rt1308.tplg\00", [38 x i8] zeroinitializer }, align 32
@tgl_rvp = internal constant { [3 x %struct.snd_soc_acpi_link_adr], [60 x i8] } { [3 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt711_0_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 2, ptr @rt1308_1_dual_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [60 x i8] zeroinitializer }, align 32
@tgl_chromebook_base = internal constant { [3 x %struct.snd_soc_acpi_link_adr], [60 x i8] } { [3 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt5682_0_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 2, ptr @mx8373_1_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [60 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sof-tgl-sdw-max98373-rt5682.tplg\00", [63 x i8] zeroinitializer }, align 32
@tgl_rvp_headset_only = internal constant { [2 x %struct.snd_soc_acpi_link_adr], [40 x i8] } { [2 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt711_0_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sof-tgl-rt711.tplg\00", [45 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_tgl_sdw_machines = dso_local global { [13 x %struct.snd_soc_acpi_mach], [308 x i8] } { [13 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 15, ptr @sdw_mockup_headset_2amps_mic, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.10 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 11, ptr @sdw_mockup_headset_1amp_mic, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.11 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 7, ptr @sdw_mockup_mic_headset_1amp, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.1, ptr @.str.12 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 7, ptr @tgl_sdw_rt711_link1_rt1308_link2_rt715_link0, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.12 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 15, ptr @tgl_3_in_1_default, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.10 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 15, ptr @tgl_3_in_1_mono_amp, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.11 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 15, ptr @tgl_3_in_1_sdca, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.13 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 15, ptr @tgl_3_in_1_sdca_mono, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.14 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 3, ptr @tgl_hp, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.15 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 3, ptr @tgl_rvp, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.15 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 3, ptr @tgl_chromebook_base, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.16 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 1, ptr @tgl_rvp_headset_only, ptr @.str.9, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr @.str.17 }, %struct.snd_soc_acpi_mach zeroinitializer], [308 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_acpi_intel_tgl_sdw_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_tgl_sdw_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_tgl_sdw_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_tgl_sdw_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_tgl_sdw_machines, ptr @__kstrtabns_snd_soc_acpi_intel_tgl_sdw_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_tgl_sdw_machines", align 4
@rt711_1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 316669499478272, i8 1, ptr @single_endpoint, ptr @.str.18 }], [40 x i8] zeroinitializer }, align 32
@rt1308_2_single_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 598144476973056, i8 1, ptr @single_endpoint, ptr @.str.19 }], [40 x i8] zeroinitializer }, align 32
@rt715_0_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 36294034396416, i8 1, ptr @single_endpoint, ptr @.str.20 }], [40 x i8] zeroinitializer }, align 32
@single_endpoint = internal constant { %struct.snd_soc_acpi_endpoint, [28 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rt711\00", [26 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rt1308-1\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rt715\00", [26 x i8] zeroinitializer }, align 32
@rt711_0_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 35194522767616, i8 1, ptr @single_endpoint, ptr @.str.18 }], [40 x i8] zeroinitializer }, align 32
@rt1308_1_group1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 316669500262400, i8 1, ptr @spk_l_endpoint, ptr @.str.19 }], [40 x i8] zeroinitializer }, align 32
@rt1308_2_group1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 598144476973056, i8 1, ptr @spk_r_endpoint, ptr @.str.21 }], [40 x i8] zeroinitializer }, align 32
@rt715_3_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 879619452900608, i8 1, ptr @single_endpoint, ptr @.str.20 }], [40 x i8] zeroinitializer }, align 32
@spk_l_endpoint = internal constant { %struct.snd_soc_acpi_endpoint, [28 x i8] } { %struct.snd_soc_acpi_endpoint { i8 0, i8 1, i8 0, i8 1 }, [28 x i8] zeroinitializer }, align 32
@spk_r_endpoint = internal constant { %struct.snd_soc_acpi_endpoint, [28 x i8] } { %struct.snd_soc_acpi_endpoint { i8 0, i8 1, i8 1, i8 1 }, [28 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rt1308-2\00", [23 x i8] zeroinitializer }, align 32
@rt1308_1_single_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 316669500262400, i8 1, ptr @single_endpoint, ptr @.str.19 }], [40 x i8] zeroinitializer }, align 32
@rt711_sdca_0_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 52786708812033, i8 1, ptr @single_endpoint, ptr @.str.18 }], [40 x i8] zeroinitializer }, align 32
@rt1316_1_group1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 335361197938177, i8 1, ptr @spk_l_endpoint, ptr @.str.22 }], [40 x i8] zeroinitializer }, align 32
@rt1316_2_group1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 615736663021057, i8 1, ptr @spk_r_endpoint, ptr @.str.23 }], [40 x i8] zeroinitializer }, align 32
@rt714_3_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 897211638944769, i8 1, ptr @single_endpoint, ptr @.str.24 }], [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rt1316-1\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rt1316-2\00", [23 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rt714\00", [26 x i8] zeroinitializer }, align 32
@rt1316_1_single_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 335361197938177, i8 1, ptr @single_endpoint, ptr @.str.22 }], [40 x i8] zeroinitializer }, align 32
@rt1308_1_dual_adr = internal constant { [2 x %struct.snd_soc_acpi_adr_device], [48 x i8] } { [2 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 316669500262400, i8 1, ptr @spk_l_endpoint, ptr @.str.19 }, %struct.snd_soc_acpi_adr_device { i64 318868523517952, i8 1, ptr @spk_r_endpoint, ptr @.str.21 }], [48 x i8] zeroinitializer }, align 32
@rt5682_0_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 36294039601664, i8 1, ptr @single_endpoint, ptr @.str.25 }], [40 x i8] zeroinitializer }, align 32
@mx8373_1_adr = internal constant { [2 x %struct.snd_soc_acpi_adr_device], [48 x i8] } { [2 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 319964854842112, i8 1, ptr @spk_l_endpoint, ptr @.str.26 }, %struct.snd_soc_acpi_adr_device { i64 324362901353216, i8 1, ptr @spk_r_endpoint, ptr @.str.27 }], [48 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"rt5682\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Right\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"Left\00", [27 x i8] zeroinitializer }, align 32
@___asan_gen_.28 = private unnamed_addr constant [22 x i8] c"tgl_rt5682_rt5682s_hp\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 361, i32 41 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 369, i32 15 }
@___asan_gen_.34 = private unnamed_addr constant [11 x i8] c"tgl_codecs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 13, i32 41 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 372, i32 22 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 373, i32 24 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 377, i32 15 }
@___asan_gen_.46 = private unnamed_addr constant [17 x i8] c"tgl_max98373_amp\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 351, i32 41 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 381, i32 24 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 385, i32 15 }
@___asan_gen_.55 = private unnamed_addr constant [15 x i8] c"tgl_rt1011_amp\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 356, i32 41 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 389, i32 24 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 393, i32 15 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 395, i32 24 }
@___asan_gen_.67 = private unnamed_addr constant [32 x i8] c"snd_soc_acpi_intel_tgl_machines\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 366, i32 26 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 407, i32 15 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 409, i32 24 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 416, i32 24 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 423, i32 24 }
@___asan_gen_.82 = private unnamed_addr constant [45 x i8] c"tgl_sdw_rt711_link1_rt1308_link2_rt715_link0\00", align 1
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 289, i32 43 }
@___asan_gen_.85 = private unnamed_addr constant [19 x i8] c"tgl_3_in_1_default\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 246, i32 43 }
@___asan_gen_.88 = private unnamed_addr constant [20 x i8] c"tgl_3_in_1_mono_amp\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 270, i32 43 }
@___asan_gen_.91 = private unnamed_addr constant [16 x i8] c"tgl_3_in_1_sdca\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 308, i32 43 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 452, i32 24 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"tgl_3_in_1_sdca_mono\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 332, i32 43 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 464, i32 24 }
@___asan_gen_.103 = private unnamed_addr constant [7 x i8] c"tgl_hp\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 218, i32 43 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 471, i32 24 }
@___asan_gen_.109 = private unnamed_addr constant [8 x i8] c"tgl_rvp\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 195, i32 43 }
@___asan_gen_.112 = private unnamed_addr constant [20 x i8] c"tgl_chromebook_base\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 232, i32 43 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 483, i32 24 }
@___asan_gen_.118 = private unnamed_addr constant [21 x i8] c"tgl_rvp_headset_only\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 209, i32 43 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 489, i32 24 }
@___asan_gen_.124 = private unnamed_addr constant [36 x i8] c"snd_soc_acpi_intel_tgl_sdw_machines\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 402, i32 26 }
@___asan_gen_.127 = private unnamed_addr constant [12 x i8] c"rt711_1_adr\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 48, i32 45 }
@___asan_gen_.130 = private unnamed_addr constant [20 x i8] c"rt1308_2_single_adr\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 81, i32 45 }
@___asan_gen_.133 = private unnamed_addr constant [12 x i8] c"rt715_0_adr\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 108, i32 45 }
@___asan_gen_.136 = private unnamed_addr constant [16 x i8] c"single_endpoint\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 18, i32 43 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 53, i32 18 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 86, i32 18 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 113, i32 18 }
@___asan_gen_.148 = private unnamed_addr constant [12 x i8] c"rt711_0_adr\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 39, i32 45 }
@___asan_gen_.151 = private unnamed_addr constant [20 x i8] c"rt1308_1_group1_adr\00", align 1
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 90, i32 45 }
@___asan_gen_.154 = private unnamed_addr constant [20 x i8] c"rt1308_2_group1_adr\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 99, i32 45 }
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"rt715_3_adr\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 117, i32 45 }
@___asan_gen_.160 = private unnamed_addr constant [15 x i8] c"spk_l_endpoint\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 25, i32 43 }
@___asan_gen_.163 = private unnamed_addr constant [15 x i8] c"spk_r_endpoint\00", align 1
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 32, i32 43 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 104, i32 18 }
@___asan_gen_.169 = private unnamed_addr constant [20 x i8] c"rt1308_1_single_adr\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 72, i32 45 }
@___asan_gen_.172 = private unnamed_addr constant [17 x i8] c"rt711_sdca_0_adr\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 150, i32 45 }
@___asan_gen_.175 = private unnamed_addr constant [20 x i8] c"rt1316_1_group1_adr\00", align 1
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 168, i32 45 }
@___asan_gen_.178 = private unnamed_addr constant [20 x i8] c"rt1316_2_group1_adr\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 177, i32 45 }
@___asan_gen_.181 = private unnamed_addr constant [12 x i8] c"rt714_3_adr\00", align 1
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 186, i32 45 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 173, i32 18 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 182, i32 18 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 191, i32 18 }
@___asan_gen_.193 = private unnamed_addr constant [20 x i8] c"rt1316_1_single_adr\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 159, i32 45 }
@___asan_gen_.196 = private unnamed_addr constant [18 x i8] c"rt1308_1_dual_adr\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 57, i32 45 }
@___asan_gen_.199 = private unnamed_addr constant [13 x i8] c"rt5682_0_adr\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 141, i32 45 }
@___asan_gen_.202 = private unnamed_addr constant [13 x i8] c"mx8373_1_adr\00", align 1
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 126, i32 45 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 146, i32 18 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 131, i32 18 }
@___asan_gen_.211 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.212 = private constant [53 x i8] c"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 137, i32 18 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__ksymtab_snd_soc_acpi_intel_tgl_machines, ptr @__ksymtab_snd_soc_acpi_intel_tgl_sdw_machines, ptr @tgl_rt5682_rt5682s_hp, ptr @.str, ptr @tgl_codecs, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @tgl_max98373_amp, ptr @.str.4, ptr @.str.5, ptr @tgl_rt1011_amp, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @snd_soc_acpi_intel_tgl_machines, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @tgl_sdw_rt711_link1_rt1308_link2_rt715_link0, ptr @tgl_3_in_1_default, ptr @tgl_3_in_1_mono_amp, ptr @tgl_3_in_1_sdca, ptr @.str.13, ptr @tgl_3_in_1_sdca_mono, ptr @.str.14, ptr @tgl_hp, ptr @.str.15, ptr @tgl_rvp, ptr @tgl_chromebook_base, ptr @.str.16, ptr @tgl_rvp_headset_only, ptr @.str.17, ptr @snd_soc_acpi_intel_tgl_sdw_machines, ptr @rt711_1_adr, ptr @rt1308_2_single_adr, ptr @rt715_0_adr, ptr @single_endpoint, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @rt711_0_adr, ptr @rt1308_1_group1_adr, ptr @rt1308_2_group1_adr, ptr @rt715_3_adr, ptr @spk_l_endpoint, ptr @spk_r_endpoint, ptr @.str.21, ptr @rt1308_1_single_adr, ptr @rt711_sdca_0_adr, ptr @rt1316_1_group1_adr, ptr @rt1316_2_group1_adr, ptr @rt714_3_adr, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @rt1316_1_single_adr, ptr @rt1308_1_dual_adr, ptr @rt5682_0_adr, ptr @mx8373_1_adr, ptr @.str.25, ptr @.str.26, ptr @.str.27], section "llvm.metadata"
@0 = internal global [62 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgl_rt5682_rt5682s_hp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgl_codecs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgl_max98373_amp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgl_rt1011_amp to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_tgl_machines to i32), i32 460, i32 576, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgl_sdw_rt711_link1_rt1308_link2_rt715_link0 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgl_3_in_1_default to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgl_3_in_1_mono_amp to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgl_3_in_1_sdca to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgl_3_in_1_sdca_mono to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgl_hp to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgl_rvp to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgl_chromebook_base to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tgl_rvp_headset_only to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_tgl_sdw_machines to i32), i32 1196, i32 1504, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1308_2_single_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_0_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @single_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_0_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1308_1_group1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1308_2_group1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_3_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_l_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_r_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1308_1_single_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_sdca_0_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1316_1_group1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1316_2_group1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt714_3_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1316_1_single_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1308_1_dual_adr to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt5682_0_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mx8373_1_adr to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }]
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 62)
  ret void
}

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #2 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126}
!llvm.module.flags = !{!128, !129, !130, !131, !132, !133, !134, !135}
!llvm.ident = !{!136}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 369, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 372, i32 22}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 373, i32 24}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 377, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 381, i32 24}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 385, i32 15}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 389, i32 24}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 393, i32 15}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 395, i32 24}
!18 = !{ptr @snd_soc_acpi_intel_tgl_machines, !19, !"snd_soc_acpi_intel_tgl_machines", i1 false, i1 false}
!19 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 366, i32 26}
!20 = !{ptr @__ksymtab_snd_soc_acpi_intel_tgl_machines, !21, !"__ksymtab_snd_soc_acpi_intel_tgl_machines", i1 false, i1 false}
!21 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 399, i32 1}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 407, i32 15}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 409, i32 24}
!26 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 416, i32 24}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 423, i32 24}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 452, i32 24}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 464, i32 24}
!34 = !{ptr @.str.15, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 471, i32 24}
!36 = !{ptr @.str.16, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 483, i32 24}
!38 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 489, i32 24}
!40 = !{ptr @snd_soc_acpi_intel_tgl_sdw_machines, !41, !"snd_soc_acpi_intel_tgl_sdw_machines", i1 false, i1 false}
!41 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 402, i32 26}
!42 = !{ptr @__ksymtab_snd_soc_acpi_intel_tgl_sdw_machines, !43, !"__ksymtab_snd_soc_acpi_intel_tgl_sdw_machines", i1 false, i1 false}
!43 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 493, i32 1}
!44 = !{ptr @tgl_rt5682_rt5682s_hp, !45, !"tgl_rt5682_rt5682s_hp", i1 false, i1 false}
!45 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 361, i32 41}
!46 = !{ptr @tgl_codecs, !47, !"tgl_codecs", i1 false, i1 false}
!47 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 13, i32 41}
!48 = !{ptr @tgl_max98373_amp, !49, !"tgl_max98373_amp", i1 false, i1 false}
!49 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 351, i32 41}
!50 = !{ptr @tgl_rt1011_amp, !51, !"tgl_rt1011_amp", i1 false, i1 false}
!51 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 356, i32 41}
!52 = !{ptr @tgl_sdw_rt711_link1_rt1308_link2_rt715_link0, !53, !"tgl_sdw_rt711_link1_rt1308_link2_rt715_link0", i1 false, i1 false}
!53 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 289, i32 43}
!54 = !{ptr @.str.18, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 53, i32 18}
!56 = !{ptr @rt711_1_adr, !57, !"rt711_1_adr", i1 false, i1 false}
!57 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 48, i32 45}
!58 = !{ptr @single_endpoint, !59, !"single_endpoint", i1 false, i1 false}
!59 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 18, i32 43}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 86, i32 18}
!62 = !{ptr @rt1308_2_single_adr, !63, !"rt1308_2_single_adr", i1 false, i1 false}
!63 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 81, i32 45}
!64 = !{ptr @.str.20, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 113, i32 18}
!66 = !{ptr @rt715_0_adr, !67, !"rt715_0_adr", i1 false, i1 false}
!67 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 108, i32 45}
!68 = !{ptr @tgl_3_in_1_default, !69, !"tgl_3_in_1_default", i1 false, i1 false}
!69 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 246, i32 43}
!70 = !{ptr @rt711_0_adr, !71, !"rt711_0_adr", i1 false, i1 false}
!71 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 39, i32 45}
!72 = !{ptr @rt1308_1_group1_adr, !73, !"rt1308_1_group1_adr", i1 false, i1 false}
!73 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 90, i32 45}
!74 = !{ptr @spk_l_endpoint, !75, !"spk_l_endpoint", i1 false, i1 false}
!75 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 25, i32 43}
!76 = !{ptr @.str.21, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 104, i32 18}
!78 = !{ptr @rt1308_2_group1_adr, !79, !"rt1308_2_group1_adr", i1 false, i1 false}
!79 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 99, i32 45}
!80 = !{ptr @spk_r_endpoint, !81, !"spk_r_endpoint", i1 false, i1 false}
!81 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 32, i32 43}
!82 = !{ptr @rt715_3_adr, !83, !"rt715_3_adr", i1 false, i1 false}
!83 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 117, i32 45}
!84 = !{ptr @tgl_3_in_1_mono_amp, !85, !"tgl_3_in_1_mono_amp", i1 false, i1 false}
!85 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 270, i32 43}
!86 = !{ptr @rt1308_1_single_adr, !87, !"rt1308_1_single_adr", i1 false, i1 false}
!87 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 72, i32 45}
!88 = !{ptr @tgl_3_in_1_sdca, !89, !"tgl_3_in_1_sdca", i1 false, i1 false}
!89 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 308, i32 43}
!90 = !{ptr @rt711_sdca_0_adr, !91, !"rt711_sdca_0_adr", i1 false, i1 false}
!91 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 150, i32 45}
!92 = !{ptr @.str.22, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 173, i32 18}
!94 = !{ptr @rt1316_1_group1_adr, !95, !"rt1316_1_group1_adr", i1 false, i1 false}
!95 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 168, i32 45}
!96 = !{ptr @.str.23, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 182, i32 18}
!98 = !{ptr @rt1316_2_group1_adr, !99, !"rt1316_2_group1_adr", i1 false, i1 false}
!99 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 177, i32 45}
!100 = !{ptr @.str.24, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 191, i32 18}
!102 = !{ptr @rt714_3_adr, !103, !"rt714_3_adr", i1 false, i1 false}
!103 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 186, i32 45}
!104 = !{ptr @tgl_3_in_1_sdca_mono, !105, !"tgl_3_in_1_sdca_mono", i1 false, i1 false}
!105 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 332, i32 43}
!106 = !{ptr @rt1316_1_single_adr, !107, !"rt1316_1_single_adr", i1 false, i1 false}
!107 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 159, i32 45}
!108 = !{ptr @tgl_hp, !109, !"tgl_hp", i1 false, i1 false}
!109 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 218, i32 43}
!110 = !{ptr @tgl_rvp, !111, !"tgl_rvp", i1 false, i1 false}
!111 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 195, i32 43}
!112 = !{ptr @rt1308_1_dual_adr, !113, !"rt1308_1_dual_adr", i1 false, i1 false}
!113 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 57, i32 45}
!114 = !{ptr @tgl_chromebook_base, !115, !"tgl_chromebook_base", i1 false, i1 false}
!115 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 232, i32 43}
!116 = !{ptr @.str.25, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 146, i32 18}
!118 = !{ptr @rt5682_0_adr, !119, !"rt5682_0_adr", i1 false, i1 false}
!119 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 141, i32 45}
!120 = !{ptr @.str.26, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 131, i32 18}
!122 = !{ptr @.str.27, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 137, i32 18}
!124 = !{ptr @mx8373_1_adr, !125, !"mx8373_1_adr", i1 false, i1 false}
!125 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 126, i32 45}
!126 = !{ptr @tgl_rvp_headset_only, !127, !"tgl_rvp_headset_only", i1 false, i1 false}
!127 = !{!"../sound/soc/intel/common/soc-acpi-intel-tgl-match.c", i32 209, i32 43}
!128 = !{i32 1, !"wchar_size", i32 2}
!129 = !{i32 1, !"min_enum_size", i32 4}
!130 = !{i32 8, !"branch-target-enforcement", i32 0}
!131 = !{i32 8, !"sign-return-address", i32 0}
!132 = !{i32 8, !"sign-return-address-all", i32 0}
!133 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!134 = !{i32 7, !"uwtable", i32 1}
!135 = !{i32 7, !"frame-pointer", i32 2}
!136 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
