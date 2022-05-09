; ModuleID = '/llk/IR_all_yes/sound/soc/intel/common/soc-acpi-intel-kbl-match.c_pt.bc'
source_filename = "../sound/soc/intel/common/soc-acpi-intel-kbl-match.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_kbl_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_kbl_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_kbl_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_kbl_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_kbl_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_kbl_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.snd_soc_acpi_codecs = type { i32, [3 x [9 x i8]] }
%struct.skl_machine_pdata = type { i8 }
%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }

@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"kbl_alc286s_i2s\00", [16 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"intel/dsp_fw_kbl.bin\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"kbl_n88l25_s4567\00", [47 x i8] zeroinitializer }, align 32
@kbl_codecs = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"10508825\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@skl_dmic_data = internal global { %struct.skl_machine_pdata, [31 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kbl_n88l25_m98357a\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kbl_r5514_5663_max\00", [45 x i8] zeroinitializer }, align 32
@kbl_5663_5514_codecs = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 2, [3 x [9 x i8]] [[9 x i8] c"10EC5663\00", [9 x i8] c"10EC5514\00", [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"kbl_rt5663_m98927\00", [46 x i8] zeroinitializer }, align 32
@kbl_poppy_codecs = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"10EC5663\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kbl_rt5663\00", [21 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kbl_da7219_mx98357a\00", [44 x i8] zeroinitializer }, align 32
@kbl_7219_98357_codecs = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"MX98357A\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"kbl_da7219_max98927\00", [44 x i8] zeroinitializer }, align 32
@kbl_7219_98927_codecs = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"MX98927\00\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"kbl_rt5660\00", [21 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"kbl_da7219_mx98373\00", [45 x i8] zeroinitializer }, align 32
@kbl_7219_98373_codecs = internal constant { %struct.snd_soc_acpi_codecs, [32 x i8] } { %struct.snd_soc_acpi_codecs { i32 1, [3 x [9 x i8]] [[9 x i8] c"MX98373\00\00", [9 x i8] zeroinitializer, [9 x i8] zeroinitializer] }, [32 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"kbl_max98373\00", [19 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_kbl_machines = dso_local global { [13 x %struct.snd_soc_acpi_mach], [308 x i8] } { [13 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] c"INT343A\00\00", ptr null, i32 0, ptr null, ptr @.str, ptr @.str.1, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr null }, %struct.snd_soc_acpi_mach { [9 x i8] c"INT343B\00\00", ptr null, i32 0, ptr null, ptr @.str.2, ptr @.str.1, ptr null, ptr @snd_soc_acpi_codec_list, ptr @kbl_codecs, ptr @skl_dmic_data, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr null }, %struct.snd_soc_acpi_mach { [9 x i8] c"MX98357A\00", ptr null, i32 0, ptr null, ptr @.str.3, ptr @.str.1, ptr null, ptr @snd_soc_acpi_codec_list, ptr @kbl_codecs, ptr @skl_dmic_data, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr null }, %struct.snd_soc_acpi_mach { [9 x i8] c"MX98927\00\00", ptr null, i32 0, ptr null, ptr @.str.4, ptr @.str.1, ptr null, ptr @snd_soc_acpi_codec_list, ptr @kbl_5663_5514_codecs, ptr @skl_dmic_data, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr null }, %struct.snd_soc_acpi_mach { [9 x i8] c"MX98927\00\00", ptr null, i32 0, ptr null, ptr @.str.5, ptr @.str.1, ptr null, ptr @snd_soc_acpi_codec_list, ptr @kbl_poppy_codecs, ptr @skl_dmic_data, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr null }, %struct.snd_soc_acpi_mach { [9 x i8] c"10EC5663\00", ptr null, i32 0, ptr null, ptr @.str.6, ptr @.str.1, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr null }, %struct.snd_soc_acpi_mach { [9 x i8] c"DLGS7219\00", ptr null, i32 0, ptr null, ptr @.str.7, ptr @.str.1, ptr null, ptr @snd_soc_acpi_codec_list, ptr @kbl_7219_98357_codecs, ptr @skl_dmic_data, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr null }, %struct.snd_soc_acpi_mach { [9 x i8] c"DLGS7219\00", ptr null, i32 0, ptr null, ptr @.str.8, ptr @.str.1, ptr null, ptr @snd_soc_acpi_codec_list, ptr @kbl_7219_98927_codecs, ptr @skl_dmic_data, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr null }, %struct.snd_soc_acpi_mach { [9 x i8] c"10EC5660\00", ptr null, i32 0, ptr null, ptr @.str.9, ptr @.str.1, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr null }, %struct.snd_soc_acpi_mach { [9 x i8] c"10EC3277\00", ptr null, i32 0, ptr null, ptr @.str.9, ptr @.str.1, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr null }, %struct.snd_soc_acpi_mach { [9 x i8] c"DLGS7219\00", ptr null, i32 0, ptr null, ptr @.str.10, ptr @.str.1, ptr null, ptr @snd_soc_acpi_codec_list, ptr @kbl_7219_98373_codecs, ptr @skl_dmic_data, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr null }, %struct.snd_soc_acpi_mach { [9 x i8] c"MX98373\00\00", ptr null, i32 0, ptr null, ptr @.str.11, ptr @.str.1, ptr null, ptr null, ptr null, ptr @skl_dmic_data, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr null, ptr null }, %struct.snd_soc_acpi_mach zeroinitializer], [308 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_acpi_intel_kbl_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_kbl_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_kbl_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_kbl_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_kbl_machines, ptr @__kstrtabns_snd_soc_acpi_intel_kbl_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_kbl_machines", align 4
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 48, i32 15 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 49, i32 18 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 53, i32 15 }
@___asan_gen_.21 = private unnamed_addr constant [11 x i8] c"kbl_codecs\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 15, i32 41 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"skl_dmic_data\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 13, i32 33 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 61, i32 15 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 69, i32 15 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"kbl_5663_5514_codecs\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 25, i32 41 }
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 77, i32 15 }
@___asan_gen_.39 = private unnamed_addr constant [17 x i8] c"kbl_poppy_codecs\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 20, i32 41 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 85, i32 15 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 90, i32 15 }
@___asan_gen_.48 = private unnamed_addr constant [22 x i8] c"kbl_7219_98357_codecs\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 30, i32 41 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 98, i32 15 }
@___asan_gen_.54 = private unnamed_addr constant [22 x i8] c"kbl_7219_98927_codecs\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 35, i32 41 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 106, i32 15 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 116, i32 15 }
@___asan_gen_.63 = private unnamed_addr constant [22 x i8] c"kbl_7219_98373_codecs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 40, i32 41 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 124, i32 15 }
@___asan_gen_.69 = private unnamed_addr constant [32 x i8] c"snd_soc_acpi_intel_kbl_machines\00", align 1
@___asan_gen_.70 = private constant [53 x i8] c"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 45, i32 26 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__ksymtab_snd_soc_acpi_intel_kbl_machines, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @kbl_codecs, ptr @skl_dmic_data, ptr @.str.3, ptr @.str.4, ptr @kbl_5663_5514_codecs, ptr @.str.5, ptr @kbl_poppy_codecs, ptr @.str.6, ptr @.str.7, ptr @kbl_7219_98357_codecs, ptr @.str.8, ptr @kbl_7219_98927_codecs, ptr @.str.9, ptr @.str.10, ptr @kbl_7219_98373_codecs, ptr @.str.11, ptr @snd_soc_acpi_intel_kbl_machines], section "llvm.metadata"
@0 = internal global [20 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbl_codecs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skl_dmic_data to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbl_5663_5514_codecs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbl_poppy_codecs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbl_7219_98357_codecs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbl_7219_98927_codecs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kbl_7219_98373_codecs to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_kbl_machines to i32), i32 1196, i32 1504, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 0 }]
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #1 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 20)
  ret void
}

attributes #0 = { inlinehint mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #2 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 48, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 49, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 53, i32 15}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 61, i32 15}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 69, i32 15}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 77, i32 15}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 85, i32 15}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 90, i32 15}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 98, i32 15}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 106, i32 15}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 116, i32 15}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 124, i32 15}
!24 = !{ptr @snd_soc_acpi_intel_kbl_machines, !25, !"snd_soc_acpi_intel_kbl_machines", i1 false, i1 false}
!25 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 45, i32 26}
!26 = !{ptr @__ksymtab_snd_soc_acpi_intel_kbl_machines, !27, !"__ksymtab_snd_soc_acpi_intel_kbl_machines", i1 false, i1 false}
!27 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 130, i32 1}
!28 = !{ptr @skl_dmic_data, !29, !"skl_dmic_data", i1 false, i1 false}
!29 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 13, i32 33}
!30 = !{ptr @kbl_codecs, !31, !"kbl_codecs", i1 false, i1 false}
!31 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 15, i32 41}
!32 = !{ptr @kbl_5663_5514_codecs, !33, !"kbl_5663_5514_codecs", i1 false, i1 false}
!33 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 25, i32 41}
!34 = !{ptr @kbl_poppy_codecs, !35, !"kbl_poppy_codecs", i1 false, i1 false}
!35 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 20, i32 41}
!36 = !{ptr @kbl_7219_98357_codecs, !37, !"kbl_7219_98357_codecs", i1 false, i1 false}
!37 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 30, i32 41}
!38 = !{ptr @kbl_7219_98927_codecs, !39, !"kbl_7219_98927_codecs", i1 false, i1 false}
!39 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 35, i32 41}
!40 = !{ptr @kbl_7219_98373_codecs, !41, !"kbl_7219_98373_codecs", i1 false, i1 false}
!41 = !{!"../sound/soc/intel/common/soc-acpi-intel-kbl-match.c", i32 40, i32 41}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
