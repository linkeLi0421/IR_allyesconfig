; ModuleID = '/llk/IR_all_yes/sound/soc/intel/common/soc-acpi-intel-icl-match.c_pt.bc'
source_filename = "../sound/soc/intel/common/soc-acpi-intel-icl-match.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_icl_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_icl_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_icl_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_icl_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_icl_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_icl_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+snd_soc_acpi_intel_icl_sdw_machines\22, \22a\22\09"
module asm "\09.weak\09__crc_snd_soc_acpi_intel_icl_sdw_machines\09\09\09\09"
module asm "\09.long\09__crc_snd_soc_acpi_intel_icl_sdw_machines\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_snd_soc_acpi_intel_icl_sdw_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22snd_soc_acpi_intel_icl_sdw_machines\22\09\09\09\09\09"
module asm "__kstrtabns_snd_soc_acpi_intel_icl_sdw_machines:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.skl_machine_pdata = type { i8 }
%struct.snd_soc_acpi_mach = type { [9 x i8], ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.snd_soc_acpi_mach_params, ptr, ptr }
%struct.snd_soc_acpi_mach_params = type { i32, ptr, i32, i32, i8, i32, ptr, i32, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.snd_soc_acpi_link_adr = type { i32, i32, ptr }
%struct.snd_soc_acpi_adr_device = type { i64, i8, ptr, ptr }
%struct.snd_soc_acpi_endpoint = type { i8, i8, i8, i8 }

@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"icl_rt274\00", [22 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"intel/dsp_fw_icl.bin\00", [43 x i8] zeroinitializer }, align 32
@icl_pdata = internal global { %struct.skl_machine_pdata, [31 x i8] } { %struct.skl_machine_pdata { i8 1 }, [31 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof-icl.ri\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sof-icl-rt274.tplg\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"sof_rt5682\00", [21 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sof-icl-rt5682.tplg\00", [44 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_icl_machines = dso_local global { [3 x %struct.snd_soc_acpi_mach], [76 x i8] } { [3 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] c"INT34C2\00\00", ptr null, i32 0, ptr null, ptr @.str, ptr @.str.1, ptr null, ptr null, ptr null, ptr @icl_pdata, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.2, ptr @.str.3 }, %struct.snd_soc_acpi_mach { [9 x i8] c"10EC5682\00", ptr null, i32 0, ptr null, ptr @.str.4, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.2, ptr @.str.5 }, %struct.snd_soc_acpi_mach zeroinitializer], [76 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_acpi_intel_icl_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_icl_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_icl_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_icl_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_icl_machines, ptr @__kstrtabns_snd_soc_acpi_intel_icl_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_icl_machines", align 4
@icl_3_in_1_default = internal constant { [5 x %struct.snd_soc_acpi_link_adr], [36 x i8] } { [5 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt711_0_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @rt1308_1_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 4, i32 1, ptr @rt1308_2_group1_adr }, %struct.snd_soc_acpi_link_adr { i32 8, i32 1, ptr @rt715_3_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"sof_sdw\00", [24 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"sof-icl-rt711-rt1308-rt715.tplg\00", [32 x i8] zeroinitializer }, align 32
@icl_3_in_1_mono_amp = internal constant { [4 x %struct.snd_soc_acpi_link_adr], [48 x i8] } { [4 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt711_0_adr }, %struct.snd_soc_acpi_link_adr { i32 2, i32 1, ptr @rt1308_1_adr }, %struct.snd_soc_acpi_link_adr { i32 8, i32 1, ptr @rt715_3_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"sof-icl-rt711-rt1308-rt715-mono.tplg\00", [59 x i8] zeroinitializer }, align 32
@icl_rvp = internal constant { [2 x %struct.snd_soc_acpi_link_adr], [40 x i8] } { [2 x %struct.snd_soc_acpi_link_adr] [%struct.snd_soc_acpi_link_adr { i32 1, i32 1, ptr @rt700_0_adr }, %struct.snd_soc_acpi_link_adr zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sof-icl-rt700.tplg\00", [45 x i8] zeroinitializer }, align 32
@snd_soc_acpi_intel_icl_sdw_machines = dso_local global { [4 x %struct.snd_soc_acpi_mach], [80 x i8] } { [4 x %struct.snd_soc_acpi_mach] [%struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 15, ptr @icl_3_in_1_default, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.2, ptr @.str.7 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 11, ptr @icl_3_in_1_mono_amp, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.2, ptr @.str.8 }, %struct.snd_soc_acpi_mach { [9 x i8] zeroinitializer, ptr null, i32 1, ptr @icl_rvp, ptr @.str.6, ptr null, ptr null, ptr null, ptr null, ptr null, %struct.snd_soc_acpi_mach_params zeroinitializer, ptr @.str.2, ptr @.str.9 }, %struct.snd_soc_acpi_mach zeroinitializer], [80 x i8] zeroinitializer }, align 32
@__kstrtab_snd_soc_acpi_intel_icl_sdw_machines = external dso_local constant [0 x i8], align 1
@__kstrtabns_snd_soc_acpi_intel_icl_sdw_machines = external dso_local constant [0 x i8], align 1
@__ksymtab_snd_soc_acpi_intel_icl_sdw_machines = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @snd_soc_acpi_intel_icl_sdw_machines to i32), ptr @__kstrtab_snd_soc_acpi_intel_icl_sdw_machines, ptr @__kstrtabns_snd_soc_acpi_intel_icl_sdw_machines }, section "___ksymtab_gpl+snd_soc_acpi_intel_icl_sdw_machines", align 4
@rt711_0_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 35194522767616, i8 1, ptr @single_endpoint, ptr @.str.10 }], [40 x i8] zeroinitializer }, align 32
@rt1308_1_group1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 316669500262400, i8 1, ptr @spk_l_endpoint, ptr @.str.11 }], [40 x i8] zeroinitializer }, align 32
@rt1308_2_group1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 598144476973056, i8 1, ptr @spk_r_endpoint, ptr @.str.12 }], [40 x i8] zeroinitializer }, align 32
@rt715_3_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 879619452900608, i8 1, ptr @single_endpoint, ptr @.str.13 }], [40 x i8] zeroinitializer }, align 32
@single_endpoint = internal constant { %struct.snd_soc_acpi_endpoint, [28 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rt711\00", [26 x i8] zeroinitializer }, align 32
@spk_l_endpoint = internal constant { %struct.snd_soc_acpi_endpoint, [28 x i8] } { %struct.snd_soc_acpi_endpoint { i8 0, i8 1, i8 0, i8 1 }, [28 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rt1308-1\00", [23 x i8] zeroinitializer }, align 32
@spk_r_endpoint = internal constant { %struct.snd_soc_acpi_endpoint, [28 x i8] } { %struct.snd_soc_acpi_endpoint { i8 0, i8 1, i8 1, i8 1 }, [28 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rt1308-2\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rt715\00", [26 x i8] zeroinitializer }, align 32
@rt1308_1_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 316669500262400, i8 1, ptr @single_endpoint, ptr @.str.11 }], [40 x i8] zeroinitializer }, align 32
@rt700_0_adr = internal constant { [1 x %struct.snd_soc_acpi_adr_device], [40 x i8] } { [1 x %struct.snd_soc_acpi_adr_device] [%struct.snd_soc_acpi_adr_device { i64 17602336718848, i8 1, ptr @single_endpoint, ptr @.str.14 }], [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"rt700\00", [26 x i8] zeroinitializer }, align 32
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 20, i32 15 }
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 21, i32 18 }
@___asan_gen_.21 = private unnamed_addr constant [10 x i8] c"icl_pdata\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 13, i32 33 }
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 23, i32 22 }
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 24, i32 24 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 28, i32 15 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 30, i32 24 }
@___asan_gen_.36 = private unnamed_addr constant [32 x i8] c"snd_soc_acpi_intel_icl_machines\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 17, i32 26 }
@___asan_gen_.39 = private unnamed_addr constant [19 x i8] c"icl_3_in_1_default\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 120, i32 43 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 167, i32 15 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 169, i32 24 }
@___asan_gen_.48 = private unnamed_addr constant [20 x i8] c"icl_3_in_1_mono_amp\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 144, i32 43 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 176, i32 24 }
@___asan_gen_.54 = private unnamed_addr constant [8 x i8] c"icl_rvp\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 66, i32 43 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 183, i32 24 }
@___asan_gen_.60 = private unnamed_addr constant [36 x i8] c"snd_soc_acpi_intel_icl_sdw_machines\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 163, i32 26 }
@___asan_gen_.63 = private unnamed_addr constant [12 x i8] c"rt711_0_adr\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 75, i32 45 }
@___asan_gen_.66 = private unnamed_addr constant [20 x i8] c"rt1308_1_group1_adr\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 93, i32 45 }
@___asan_gen_.69 = private unnamed_addr constant [20 x i8] c"rt1308_2_group1_adr\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 102, i32 45 }
@___asan_gen_.72 = private unnamed_addr constant [12 x i8] c"rt715_3_adr\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 111, i32 45 }
@___asan_gen_.75 = private unnamed_addr constant [16 x i8] c"single_endpoint\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 36, i32 43 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 80, i32 18 }
@___asan_gen_.81 = private unnamed_addr constant [15 x i8] c"spk_l_endpoint\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 43, i32 43 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 98, i32 18 }
@___asan_gen_.87 = private unnamed_addr constant [15 x i8] c"spk_r_endpoint\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 50, i32 43 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 107, i32 18 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 116, i32 18 }
@___asan_gen_.96 = private unnamed_addr constant [13 x i8] c"rt1308_1_adr\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 84, i32 45 }
@___asan_gen_.99 = private unnamed_addr constant [12 x i8] c"rt700_0_adr\00", align 1
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 57, i32 45 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private constant [53 x i8] c"../sound/soc/intel/common/soc-acpi-intel-icl-match.c\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 62, i32 18 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__ksymtab_snd_soc_acpi_intel_icl_machines, ptr @__ksymtab_snd_soc_acpi_intel_icl_sdw_machines, ptr @.str, ptr @.str.1, ptr @icl_pdata, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @snd_soc_acpi_intel_icl_machines, ptr @icl_3_in_1_default, ptr @.str.6, ptr @.str.7, ptr @icl_3_in_1_mono_amp, ptr @.str.8, ptr @icl_rvp, ptr @.str.9, ptr @snd_soc_acpi_intel_icl_sdw_machines, ptr @rt711_0_adr, ptr @rt1308_1_group1_adr, ptr @rt1308_2_group1_adr, ptr @rt715_3_adr, ptr @single_endpoint, ptr @.str.10, ptr @spk_l_endpoint, ptr @.str.11, ptr @spk_r_endpoint, ptr @.str.12, ptr @.str.13, ptr @rt1308_1_adr, ptr @rt700_0_adr, ptr @.str.14], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icl_pdata to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_icl_machines to i32), i32 276, i32 352, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icl_3_in_1_default to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icl_3_in_1_mono_amp to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @icl_rvp to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @snd_soc_acpi_intel_icl_sdw_machines to i32), i32 368, i32 448, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt711_0_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1308_1_group1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1308_2_group1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt715_3_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @single_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_l_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @spk_r_endpoint to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt1308_1_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rt700_0_adr to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 20, i32 15}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 21, i32 18}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 23, i32 22}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 24, i32 24}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 28, i32 15}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 30, i32 24}
!12 = !{ptr @snd_soc_acpi_intel_icl_machines, !13, !"snd_soc_acpi_intel_icl_machines", i1 false, i1 false}
!13 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 17, i32 26}
!14 = !{ptr @__ksymtab_snd_soc_acpi_intel_icl_machines, !15, !"__ksymtab_snd_soc_acpi_intel_icl_machines", i1 false, i1 false}
!15 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 34, i32 1}
!16 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 167, i32 15}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 169, i32 24}
!20 = !{ptr @.str.8, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 176, i32 24}
!22 = !{ptr @.str.9, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 183, i32 24}
!24 = !{ptr @snd_soc_acpi_intel_icl_sdw_machines, !25, !"snd_soc_acpi_intel_icl_sdw_machines", i1 false, i1 false}
!25 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 163, i32 26}
!26 = !{ptr @__ksymtab_snd_soc_acpi_intel_icl_sdw_machines, !27, !"__ksymtab_snd_soc_acpi_intel_icl_sdw_machines", i1 false, i1 false}
!27 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 187, i32 1}
!28 = !{ptr @icl_pdata, !29, !"icl_pdata", i1 false, i1 false}
!29 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 13, i32 33}
!30 = !{ptr @icl_3_in_1_default, !31, !"icl_3_in_1_default", i1 false, i1 false}
!31 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 120, i32 43}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 80, i32 18}
!34 = !{ptr @rt711_0_adr, !35, !"rt711_0_adr", i1 false, i1 false}
!35 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 75, i32 45}
!36 = !{ptr @single_endpoint, !37, !"single_endpoint", i1 false, i1 false}
!37 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 36, i32 43}
!38 = !{ptr @.str.11, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 98, i32 18}
!40 = !{ptr @rt1308_1_group1_adr, !41, !"rt1308_1_group1_adr", i1 false, i1 false}
!41 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 93, i32 45}
!42 = !{ptr @spk_l_endpoint, !43, !"spk_l_endpoint", i1 false, i1 false}
!43 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 43, i32 43}
!44 = !{ptr @.str.12, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 107, i32 18}
!46 = !{ptr @rt1308_2_group1_adr, !47, !"rt1308_2_group1_adr", i1 false, i1 false}
!47 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 102, i32 45}
!48 = !{ptr @spk_r_endpoint, !49, !"spk_r_endpoint", i1 false, i1 false}
!49 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 50, i32 43}
!50 = !{ptr @.str.13, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 116, i32 18}
!52 = !{ptr @rt715_3_adr, !53, !"rt715_3_adr", i1 false, i1 false}
!53 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 111, i32 45}
!54 = !{ptr @icl_3_in_1_mono_amp, !55, !"icl_3_in_1_mono_amp", i1 false, i1 false}
!55 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 144, i32 43}
!56 = !{ptr @rt1308_1_adr, !57, !"rt1308_1_adr", i1 false, i1 false}
!57 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 84, i32 45}
!58 = !{ptr @icl_rvp, !59, !"icl_rvp", i1 false, i1 false}
!59 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 66, i32 43}
!60 = !{ptr @.str.14, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 62, i32 18}
!62 = !{ptr @rt700_0_adr, !63, !"rt700_0_adr", i1 false, i1 false}
!63 = !{!"../sound/soc/intel/common/soc-acpi-intel-icl-match.c", i32 57, i32 45}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
