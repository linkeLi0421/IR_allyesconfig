; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/meson/meson_vclk.c_pt.bc'
source_filename = "../drivers/gpu/drm/meson/meson_vclk.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+meson_vclk_dmt_supported_freq\22, \22a\22\09"
module asm "\09.weak\09__crc_meson_vclk_dmt_supported_freq\09\09\09\09"
module asm "\09.long\09__crc_meson_vclk_dmt_supported_freq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_vclk_dmt_supported_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_vclk_dmt_supported_freq\22\09\09\09\09\09"
module asm "__kstrtabns_meson_vclk_dmt_supported_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+meson_vclk_vic_supported_freq\22, \22a\22\09"
module asm "\09.weak\09__crc_meson_vclk_vic_supported_freq\09\09\09\09"
module asm "\09.long\09__crc_meson_vclk_vic_supported_freq\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_vclk_vic_supported_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_vclk_vic_supported_freq\22\09\09\09\09\09"
module asm "__kstrtabns_meson_vclk_vic_supported_freq:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+meson_vclk_setup\22, \22a\22\09"
module asm "\09.weak\09__crc_meson_vclk_setup\09\09\09\09"
module asm "\09.long\09__crc_meson_vclk_setup\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_meson_vclk_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22meson_vclk_setup\22\09\09\09\09\09"
module asm "__kstrtabns_meson_vclk_setup:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.meson_vclk_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.meson_drm = type { ptr, i32, ptr, ptr, i32, ptr, i8, i8, i8, i8, ptr, ptr, ptr, ptr, ptr, %struct.anon.67, %struct.anon.68, %struct.anon.69, %struct.anon.70 }
%struct.anon.67 = type { i8, i8, i8, i8, i32, i32, [5 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.anon.68 = type { i32, i8, i8, i8 }
%struct.anon.69 = type { i32, ptr, i32 }
%struct.anon.70 = type { ptr, i64, i32 }

@params = dso_local global { [9 x %struct.meson_vclk_params], [88 x i8] } { [9 x %struct.meson_vclk_params] [%struct.meson_vclk_params { i32 4320000, i32 270000, i32 54000, i32 54000, i32 54000, i32 4, i32 4, i32 1, i32 7, i32 1 }, %struct.meson_vclk_params { i32 4320000, i32 270000, i32 54000, i32 54000, i32 27000, i32 4, i32 4, i32 1, i32 7, i32 1 }, %struct.meson_vclk_params { i32 2970000, i32 742500, i32 148500, i32 148500, i32 74250, i32 4, i32 1, i32 1, i32 7, i32 1 }, %struct.meson_vclk_params { i32 2970000, i32 742500, i32 74250, i32 74250, i32 74250, i32 2, i32 2, i32 2, i32 7, i32 1 }, %struct.meson_vclk_params { i32 2970000, i32 1485000, i32 148500, i32 148500, i32 148500, i32 1, i32 2, i32 2, i32 7, i32 1 }, %struct.meson_vclk_params { i32 5940000, i32 2970000, i32 297000, i32 297000, i32 297000, i32 2, i32 1, i32 1, i32 7, i32 2 }, %struct.meson_vclk_params { i32 5940000, i32 5940000, i32 594000, i32 594000, i32 594000, i32 1, i32 1, i32 2, i32 7, i32 1 }, %struct.meson_vclk_params { i32 5940000, i32 2970000, i32 594000, i32 594000, i32 297000, i32 2, i32 1, i32 1, i32 7, i32 1 }, %struct.meson_vclk_params zeroinitializer], [88 x i8] zeroinitializer }, align 32
@__kstrtab_meson_vclk_dmt_supported_freq = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_vclk_dmt_supported_freq = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_vclk_dmt_supported_freq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_vclk_dmt_supported_freq to i32), ptr @__kstrtab_meson_vclk_dmt_supported_freq, ptr @__kstrtabns_meson_vclk_dmt_supported_freq }, section "___ksymtab_gpl+meson_vclk_dmt_supported_freq", align 4
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"phy_freq = %d vclk_freq = %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"i = %d pixel_freq = %d alt = %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"i = %d phy_freq = %d alt = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@__kstrtab_meson_vclk_vic_supported_freq = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_vclk_vic_supported_freq = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_vclk_vic_supported_freq = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_vclk_vic_supported_freq to i32), ptr @__kstrtab_meson_vclk_vic_supported_freq, ptr @__kstrtabns_meson_vclk_vic_supported_freq }, section "___ksymtab_gpl+meson_vclk_vic_supported_freq", align 4
@meson_vclk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 1059, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013Fatal Error, invalid HDMI-TX freq %d\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"meson_vclk_setup\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/gpu/drm/meson/meson_vclk.c\00", [61 x i8] zeroinitializer }, align 32
@meson_vclk_setup._entry_ptr = internal global ptr @meson_vclk_setup._entry, section ".printk_index", align 4
@meson_vclk_setup._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.4, ptr @.str.5, i32 1067, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Fatal Error, invalid HDMI venc freq %d\0A\00", [54 x i8] zeroinitializer }, align 32
@meson_vclk_setup._entry_ptr.8 = internal global ptr @meson_vclk_setup._entry.6, section ".printk_index", align 4
@meson_vclk_setup._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.4, ptr @.str.5, i32 1101, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\013Fatal Error, invalid HDMI vclk freq %d\0A\00", [54 x i8] zeroinitializer }, align 32
@meson_vclk_setup._entry_ptr.11 = internal global ptr @meson_vclk_setup._entry.9, section ".printk_index", align 4
@__kstrtab_meson_vclk_setup = external dso_local constant [0 x i8], align 1
@__kstrtabns_meson_vclk_setup = external dso_local constant [0 x i8], align 1
@__ksymtab_meson_vclk_setup = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @meson_vclk_setup to i32), ptr @__kstrtab_meson_vclk_setup, ptr @__kstrtabns_meson_vclk_setup }, section "___ksymtab_gpl+meson_vclk_setup", align 4
@.str.12 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"PLL params for %dkHz: m=%x frac=%x od=%d\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"PLL params for %dkHz: m=%x frac=%x od=%d/%d/%d\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"Fatal, unable to find parameters for PLL freq %d\0A\00", [46 x i8] zeroinitializer }, align 32
@switch.table.meson_hdmi_pll_set_params = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 65536, i32 0, i32 131072, i32 0, i32 0, i32 0, i32 196608], [36 x i8] zeroinitializer }, align 32
@switch.table.meson_hdmi_pll_set_params.15 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 2097152, i32 0, i32 4194304, i32 0, i32 0, i32 0, i32 6291456], [36 x i8] zeroinitializer }, align 32
@switch.table.meson_hdmi_pll_set_params.16 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 65536, i32 0, i32 131072, i32 0, i32 0, i32 0, i32 196608], [36 x i8] zeroinitializer }, align 32
@switch.table.meson_hdmi_pll_set_params.17 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 4194304, i32 0, i32 8388608, i32 0, i32 0, i32 0, i32 12582912], [36 x i8] zeroinitializer }, align 32
@switch.table.meson_hdmi_pll_set_params.18 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 8388608, i32 0, i32 16777216, i32 0, i32 0, i32 0, i32 25165824], [36 x i8] zeroinitializer }, align 32
@switch.table.meson_hdmi_pll_set_params.19 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 262144, i32 0, i32 524288, i32 0, i32 0, i32 0, i32 786432], [36 x i8] zeroinitializer }, align 32
@switch.table.meson_hdmi_pll_set_params.20 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 262144, i32 0, i32 524288, i32 0, i32 0, i32 0, i32 786432], [36 x i8] zeroinitializer }, align 32
@switch.table.meson_hdmi_pll_set_params.21 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 524288, i32 0, i32 1048576, i32 0, i32 0, i32 0, i32 1572864], [36 x i8] zeroinitializer }, align 32
@switch.table.meson_hdmi_pll_set_params.22 = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 1048576, i32 0, i32 2097152, i32 0, i32 0, i32 0, i32 3145728], [36 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.24 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.25 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 2970000, i64 4320000, i64 5940000]
@__sancov_gen_cov_switch_values.27 = internal global [5 x i64] [i64 3, i64 32, i64 2970000, i64 4320000, i64 5940000]
@__sancov_gen_cov_switch_values.28 = internal global [5 x i64] [i64 3, i64 32, i64 2970000, i64 4320000, i64 5940000]
@__sancov_gen_cov_switch_values.29 = internal global [17 x i64] [i64 15, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@__sancov_gen_cov_switch_values.30 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 6, i64 12]
@__sancov_gen_cov_switch_values.31 = internal global [7 x i64] [i64 5, i64 32, i64 1, i64 2, i64 4, i64 6, i64 12]
@__sancov_gen_cov_switch_values.32 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.33 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.34 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.35 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"params\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 373, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 777, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 788, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 791, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1058, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1066, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 1101, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 709, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 759, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.79 = private constant [38 x i8] c"../drivers/gpu/drm/meson/meson_vclk.c\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.79, i32 767, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant [39 x i8] c"switch.table.meson_hdmi_pll_set_params\00", align 1
@___asan_gen_.82 = private unnamed_addr constant [42 x i8] c"switch.table.meson_hdmi_pll_set_params.15\00", align 1
@___asan_gen_.83 = private unnamed_addr constant [42 x i8] c"switch.table.meson_hdmi_pll_set_params.16\00", align 1
@___asan_gen_.84 = private unnamed_addr constant [42 x i8] c"switch.table.meson_hdmi_pll_set_params.17\00", align 1
@___asan_gen_.85 = private unnamed_addr constant [42 x i8] c"switch.table.meson_hdmi_pll_set_params.18\00", align 1
@___asan_gen_.86 = private unnamed_addr constant [42 x i8] c"switch.table.meson_hdmi_pll_set_params.19\00", align 1
@___asan_gen_.87 = private unnamed_addr constant [42 x i8] c"switch.table.meson_hdmi_pll_set_params.20\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [42 x i8] c"switch.table.meson_hdmi_pll_set_params.21\00", align 1
@___asan_gen_.89 = private unnamed_addr constant [42 x i8] c"switch.table.meson_hdmi_pll_set_params.22\00", align 1
@llvm.compiler.used = appending global [30 x ptr] [ptr @__ksymtab_meson_vclk_dmt_supported_freq, ptr @__ksymtab_meson_vclk_setup, ptr @__ksymtab_meson_vclk_vic_supported_freq, ptr @meson_vclk_setup._entry, ptr @meson_vclk_setup._entry.6, ptr @meson_vclk_setup._entry.9, ptr @meson_vclk_setup._entry_ptr, ptr @meson_vclk_setup._entry_ptr.11, ptr @meson_vclk_setup._entry_ptr.8, ptr @params, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @switch.table.meson_hdmi_pll_set_params, ptr @switch.table.meson_hdmi_pll_set_params.15, ptr @switch.table.meson_hdmi_pll_set_params.16, ptr @switch.table.meson_hdmi_pll_set_params.17, ptr @switch.table.meson_hdmi_pll_set_params.18, ptr @switch.table.meson_hdmi_pll_set_params.19, ptr @switch.table.meson_hdmi_pll_set_params.20, ptr @switch.table.meson_hdmi_pll_set_params.21, ptr @switch.table.meson_hdmi_pll_set_params.22], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @params to i32), i32 360, i32 448, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_vclk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_vclk_setup._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_vclk_setup._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.meson_hdmi_pll_set_params to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.meson_hdmi_pll_set_params.15 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.meson_hdmi_pll_set_params.16 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.meson_hdmi_pll_set_params.17 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.meson_hdmi_pll_set_params.18 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.meson_hdmi_pll_set_params.19 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.meson_hdmi_pll_set_params.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.meson_hdmi_pll_set_params.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.meson_hdmi_pll_set_params.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @meson_vclk_dmt_supported_freq(ptr nocapture noundef readonly %priv, i32 noundef %freq) #0 align 64 {
entry:
  %od = alloca i32, align 4
  %m = alloca i32, align 4
  %frac = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %od) #5
  %0 = ptrtoint ptr %od to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %od, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m) #5
  %1 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %m, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frac) #5
  %2 = ptrtoint ptr %frac to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %frac, align 4, !annotation !43
  %mul = mul i32 %freq, 10
  %limits = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 14
  %3 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %limits, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.not = icmp ne i32 %6, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %6)
  %cmp = icmp ugt i32 %mul, %6
  %or.cond = and i1 %tobool2.not, %cmp
  br i1 %or.cond, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %call = call fastcc zeroext i1 @meson_hdmi_pll_find_params(ptr noundef %priv, i32 noundef %mul, ptr noundef nonnull %m, ptr noundef nonnull %frac, ptr noundef nonnull %od)
  %. = select i1 %call, i32 0, i32 17
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 15, %if.then.cleanup_crit_edge ], [ %., %if.end6 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frac) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %od) #5
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @meson_hdmi_pll_find_params(ptr nocapture noundef readonly %priv, i32 noundef %freq, ptr nocapture noundef %m, ptr nocapture noundef %frac, ptr nocapture noundef %od) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %od to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %od, align 4
  %compat.i.i = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %storemerge27 = phi i32 [ 16, %entry ], [ %shr, %for.inc.for.body_crit_edge ]
  %mul = mul i32 %storemerge27, %freq
  %1 = ptrtoint ptr %compat.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %compat.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp.i.not.i = icmp eq i32 %2, 0
  %div3.i = zext i1 %cmp.i.not.i to i32
  %spec.select.i = lshr i32 %mul, %div3.i
  %div1.i = udiv i32 %spec.select.i, 24000
  %3 = ptrtoint ptr %m to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %div1.i, ptr %m, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24000, i32 %spec.select.i)
  %4 = icmp ult i32 %spec.select.i, 24000
  br i1 %4, label %for.body.for.inc_crit_edge, label %if.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end:                                           ; preds = %for.body
  %5 = ptrtoint ptr %od to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %od, align 4
  %mul1 = mul i32 %6, %freq
  %7 = ptrtoint ptr %compat.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %compat.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.i.not.i22 = icmp eq i32 %8, 0
  %spec.select.i23 = select i1 %cmp.i.not.i22, i32 48000, i32 24000
  %spec.select44.i = select i1 %cmp.i.not.i22, i32 4096, i32 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %8)
  %cmp.i46.not.i = icmp eq i32 %8, 3
  %frac_max.1.i = select i1 %cmp.i46.not.i, i32 131072, i32 %spec.select44.i
  %mul1.frozen = freeze i32 %mul1
  %div1.i.frozen = freeze i32 %div1.i
  %div.i = udiv i32 %mul1.frozen, %div1.i.frozen
  call void @__sanitizer_cov_trace_cmp4(i32 %div.i, i32 %spec.select.i23)
  %cmp.i = icmp eq i32 %div.i, %spec.select.i23
  br i1 %cmp.i, label %land.lhs.true.i, label %if.end.if.end7.i_crit_edge

if.end.if.end7.i_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

land.lhs.true.i:                                  ; preds = %if.end
  %9 = mul i32 %div.i, %div1.i.frozen
  %rem.i.decomposed = sub i32 %mul1.frozen, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i.decomposed)
  %cmp5.i = icmp eq i32 %rem.i.decomposed, 0
  br i1 %cmp5.i, label %land.lhs.true.i.meson_hdmi_pll_get_frac.exit_crit_edge, label %land.lhs.true.i.if.end7.i_crit_edge

land.lhs.true.i.if.end7.i_crit_edge:              ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7.i

land.lhs.true.i.meson_hdmi_pll_get_frac.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_hdmi_pll_get_frac.exit

if.end7.i:                                        ; preds = %land.lhs.true.i.if.end7.i_crit_edge, %if.end.if.end7.i_crit_edge
  %conv.i = zext i32 %mul1 to i64
  %conv8.i = zext i32 %frac_max.1.i to i64
  %mul9.i = mul nuw nsw i64 %conv8.i, %conv.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967296, i64 %mul9.i)
  %cmp164.i.i.i = icmp ult i64 %mul9.i, 4294967296
  br i1 %cmp164.i.i.i, label %if.then168.i.i.i, label %if.else174.i.i.i, !prof !44

if.then168.i.i.i:                                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %conv169.i.i.i = trunc i64 %mul9.i to i32
  %div172.i.i.i = udiv i32 %conv169.i.i.i, %spec.select.i23
  br label %div_u64.exit.i

if.else174.i.i.i:                                 ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #7
  %10 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %spec.select.i23, i64 %mul9.i) #8, !srcloc !45
  %asmresult1.i.i.i.i = extractvalue { i64, i64 } %10, 1
  %extract.t51.i = trunc i64 %asmresult1.i.i.i.i to i32
  br label %div_u64.exit.i

div_u64.exit.i:                                   ; preds = %if.else174.i.i.i, %if.then168.i.i.i
  %dividend.addr.0.i.i.off0.i = phi i32 [ %div172.i.i.i, %if.then168.i.i.i ], [ %extract.t51.i, %if.else174.i.i.i ]
  %mul12.i = mul i32 %frac_max.1.i, %div1.i
  call void @__sanitizer_cov_trace_cmp4(i32 %dividend.addr.0.i.i.off0.i, i32 %mul12.i)
  %cmp13.i = icmp ult i32 %dividend.addr.0.i.i.off0.i, %mul12.i
  br i1 %cmp13.i, label %div_u64.exit.i.meson_hdmi_pll_get_frac.exit_crit_edge, label %if.end16.i

div_u64.exit.i.meson_hdmi_pll_get_frac.exit_crit_edge: ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_hdmi_pll_get_frac.exit

if.end16.i:                                       ; preds = %div_u64.exit.i
  call void @__sanitizer_cov_trace_pc() #7
  %sub.i = sub i32 %dividend.addr.0.i.i.off0.i, %mul12.i
  %conv19.i = add nuw nsw i32 %frac_max.1.i, 65535
  %conv20.i = and i32 %sub.i, 65535
  %conv21.i = and i32 %conv19.i, 65535
  %11 = tail call i32 @llvm.umin.i32(i32 %conv20.i, i32 %conv21.i) #5
  br label %meson_hdmi_pll_get_frac.exit

meson_hdmi_pll_get_frac.exit:                     ; preds = %if.end16.i, %div_u64.exit.i.meson_hdmi_pll_get_frac.exit_crit_edge, %land.lhs.true.i.meson_hdmi_pll_get_frac.exit_crit_edge
  %retval.0.i = phi i32 [ %11, %if.end16.i ], [ 0, %land.lhs.true.i.meson_hdmi_pll_get_frac.exit_crit_edge ], [ %frac_max.1.i, %div_u64.exit.i.meson_hdmi_pll_get_frac.exit_crit_edge ]
  %12 = ptrtoint ptr %frac to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %retval.0.i, ptr %frac, align 4
  %13 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %m, align 4
  %15 = ptrtoint ptr %od to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %od, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.12, i32 noundef %freq, i32 noundef %14, i32 noundef %retval.0.i, i32 noundef %16) #5
  %17 = ptrtoint ptr %m to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %m, align 4
  %19 = ptrtoint ptr %frac to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %frac, align 4
  %21 = ptrtoint ptr %compat.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %compat.i.i, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %meson_hdmi_pll_get_frac.exit.return_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %meson_hdmi_pll_get_frac.exit.if.then11.i_crit_edge
    i32 1, label %meson_hdmi_pll_get_frac.exit.if.then11.i_crit_edge29
    i32 3, label %if.then23.i
  ]

meson_hdmi_pll_get_frac.exit.if.then11.i_crit_edge29: ; preds = %meson_hdmi_pll_get_frac.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

meson_hdmi_pll_get_frac.exit.if.then11.i_crit_edge: ; preds = %meson_hdmi_pll_get_frac.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then11.i

meson_hdmi_pll_get_frac.exit.return_crit_edge:    ; preds = %meson_hdmi_pll_get_frac.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then.i:                                        ; preds = %meson_hdmi_pll_get_frac.exit
  %24 = add i32 %18, -124
  call void @__sanitizer_cov_trace_const_cmp4(i32 -71, i32 %24)
  %25 = icmp ult i32 %24, -71
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %20)
  %cmp3.i = icmp ugt i32 %20, 4095
  %or.cond47.i = or i1 %25, %cmp3.i
  br i1 %or.cond47.i, label %if.then.i.for.inc_crit_edge, label %if.then.i.return_crit_edge

if.then.i.return_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then.i.for.inc_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then11.i:                                      ; preds = %meson_hdmi_pll_get_frac.exit.if.then11.i_crit_edge, %meson_hdmi_pll_get_frac.exit.if.then11.i_crit_edge29
  %26 = add i32 %18, -248
  call void @__sanitizer_cov_trace_const_cmp4(i32 -142, i32 %26)
  %27 = icmp ult i32 %26, -142
  call void @__sanitizer_cov_trace_const_cmp4(i32 1023, i32 %20)
  %cmp17.i = icmp ugt i32 %20, 1023
  %or.cond48.i = or i1 %27, %cmp17.i
  br i1 %or.cond48.i, label %if.then11.i.for.inc_crit_edge, label %if.then11.i.return_crit_edge

if.then11.i.return_crit_edge:                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then11.i.for.inc_crit_edge:                    ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.then23.i:                                      ; preds = %meson_hdmi_pll_get_frac.exit
  %28 = add i32 %18, -248
  call void @__sanitizer_cov_trace_const_cmp4(i32 -142, i32 %28)
  %29 = icmp ult i32 %28, -142
  call void @__sanitizer_cov_trace_const_cmp4(i32 131071, i32 %20)
  %cmp29.i = icmp ugt i32 %20, 131071
  %or.cond49.i = or i1 %29, %cmp29.i
  br i1 %or.cond49.i, label %if.then23.i.for.inc_crit_edge, label %if.then23.i.return_crit_edge

if.then23.i.return_crit_edge:                     ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

if.then23.i.for.inc_crit_edge:                    ; preds = %if.then23.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.then23.i.for.inc_crit_edge, %if.then11.i.for.inc_crit_edge, %if.then.i.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %30 = ptrtoint ptr %od to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %od, align 4
  %shr = lshr i32 %31, 1
  store i32 %shr, ptr %od, align 4
  %cmp = icmp ugt i32 %31, 3
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.return_crit_edge

for.inc.return_crit_edge:                         ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %return

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

return:                                           ; preds = %for.inc.return_crit_edge, %if.then23.i.return_crit_edge, %if.then11.i.return_crit_edge, %if.then.i.return_crit_edge, %meson_hdmi_pll_get_frac.exit.return_crit_edge
  %cmp.lcssa = phi i1 [ true, %if.then23.i.return_crit_edge ], [ true, %if.then11.i.return_crit_edge ], [ true, %if.then.i.return_crit_edge ], [ true, %meson_hdmi_pll_get_frac.exit.return_crit_edge ], [ false, %for.inc.return_crit_edge ]
  ret i1 %cmp.lcssa
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @meson_vclk_vic_supported_freq(ptr nocapture noundef readonly %priv, i32 noundef %phy_freq, i32 noundef %vclk_freq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str, i32 noundef %phy_freq, i32 noundef %vclk_freq) #5
  %limits = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %limits to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %limits, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end6_crit_edge, label %if.then

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp ne i32 %3, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %phy_freq)
  %cmp = icmp ult i32 %3, %phy_freq
  %or.cond = and i1 %tobool2.not, %cmp
  br i1 %or.cond, label %if.then.cleanup_crit_edge, label %if.then.if.end6_crit_edge

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end6

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.then.if.end6_crit_edge, %entry.if.end6_crit_edge
  %4 = load i32, ptr getelementptr inbounds ([9 x %struct.meson_vclk_params], ptr @params, i32 0, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool7.not84 = icmp eq i32 %4, 0
  br i1 %tobool7.not84, label %if.end6.cleanup_crit_edge, label %if.end6.for.body_crit_edge

if.end6.for.body_crit_edge:                       ; preds = %if.end6
  br label %for.body

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end6.for.body_crit_edge
  %5 = phi i32 [ %15, %for.inc.for.body_crit_edge ], [ %4, %if.end6.for.body_crit_edge ]
  %i.085 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end6.for.body_crit_edge ]
  %mul = mul i32 %5, 1000
  %add = add i32 %mul, 500
  %div12 = udiv i32 %add, 1001
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.1, i32 noundef %i.085, i32 noundef %5, i32 noundef %div12) #5
  %phy_freq14 = getelementptr [9 x %struct.meson_vclk_params], ptr @params, i32 0, i32 %i.085, i32 1
  %6 = ptrtoint ptr %phy_freq14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %phy_freq14, align 4
  %div18 = udiv i32 %7, 10
  %mul19 = mul i32 %div18, 1000
  %add23 = add i32 %mul19, 500
  %div24 = udiv i32 %add23, 1001
  %mul25 = mul nuw nsw i32 %div24, 10
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.2, i32 noundef %i.085, i32 noundef %7, i32 noundef %mul25) #5
  %8 = ptrtoint ptr %phy_freq14 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %phy_freq14, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %phy_freq)
  %cmp28 = icmp eq i32 %9, %phy_freq
  br i1 %cmp28, label %land.lhs.true29, label %for.body.if.end34_crit_edge

for.body.if.end34_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

land.lhs.true29:                                  ; preds = %for.body
  %vclk_freq31 = getelementptr [9 x %struct.meson_vclk_params], ptr @params, i32 0, i32 %i.085, i32 2
  %10 = ptrtoint ptr %vclk_freq31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %vclk_freq31, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %vclk_freq)
  %cmp32 = icmp eq i32 %11, %vclk_freq
  br i1 %cmp32, label %land.lhs.true29.cleanup_crit_edge, label %land.lhs.true29.if.end34_crit_edge

land.lhs.true29.if.end34_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end34

land.lhs.true29.cleanup_crit_edge:                ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end34:                                         ; preds = %land.lhs.true29.if.end34_crit_edge, %for.body.if.end34_crit_edge
  %div38 = udiv i32 %9, 10
  %mul39 = mul i32 %div38, 1000
  %add43 = add i32 %mul39, 500
  %div44 = udiv i32 %add43, 1001
  %mul45 = mul nuw nsw i32 %div44, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul45, i32 %phy_freq)
  %cmp46 = icmp eq i32 %mul45, %phy_freq
  br i1 %cmp46, label %land.lhs.true47, label %if.end34.for.inc_crit_edge

if.end34.for.inc_crit_edge:                       ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true47:                                  ; preds = %if.end34
  %vclk_freq50 = getelementptr [9 x %struct.meson_vclk_params], ptr @params, i32 0, i32 %i.085, i32 2
  %12 = ptrtoint ptr %vclk_freq50 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vclk_freq50, align 4
  %mul51 = mul i32 %13, 1000
  %add55 = add i32 %mul51, 500
  %div56 = udiv i32 %add55, 1001
  call void @__sanitizer_cov_trace_cmp4(i32 %div56, i32 %vclk_freq)
  %cmp57 = icmp eq i32 %div56, %vclk_freq
  br i1 %cmp57, label %land.lhs.true47.cleanup_crit_edge, label %land.lhs.true47.for.inc_crit_edge

land.lhs.true47.for.inc_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

land.lhs.true47.cleanup_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc:                                          ; preds = %land.lhs.true47.for.inc_crit_edge, %if.end34.for.inc_crit_edge
  %inc = add i32 %i.085, 1
  %pixel_freq = getelementptr [9 x %struct.meson_vclk_params], ptr @params, i32 0, i32 %inc, i32 4
  %14 = ptrtoint ptr %pixel_freq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %pixel_freq, align 4
  %tobool7.not = icmp eq i32 %15, 0
  br i1 %tobool7.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %land.lhs.true47.cleanup_crit_edge, %land.lhs.true29.cleanup_crit_edge, %if.end6.cleanup_crit_edge, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 15, %if.then.cleanup_crit_edge ], [ 17, %if.end6.cleanup_crit_edge ], [ 0, %land.lhs.true29.cleanup_crit_edge ], [ 0, %land.lhs.true47.cleanup_crit_edge ], [ 17, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @meson_vclk_setup(ptr noundef %priv, i32 noundef %target, i32 noundef %phy_freq, i32 noundef %vclk_freq, i32 noundef %venc_freq, i32 noundef %dac_freq, i1 noundef zeroext %hdmi_use_enci) #0 align 64 {
entry:
  %val.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %target to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %target, label %if.end3 [
    i32 0, label %if.then
    i32 2, label %if.then2
  ]

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val.i) #5
  %1 = ptrtoint ptr %val.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %val.i, align 4, !annotation !43
  %compat.i.i = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 1
  %2 = ptrtoint ptr %compat.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %compat.i.i, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.24)
  switch i32 %3, label %if.then.meson_venci_cvbs_clock_config.exit_crit_edge [
    i32 0, label %if.then.i
    i32 2, label %if.then.if.then51.i_crit_edge
    i32 1, label %if.then.if.then51.i_crit_edge164
    i32 3, label %if.then127.i
  ]

if.then.if.then51.i_crit_edge164:                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51.i

if.then.if.then51.i_crit_edge:                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then51.i

if.then.meson_venci_cvbs_clock_config.exit_crit_edge: ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_venci_cvbs_clock_config.exit

if.then.i:                                        ; preds = %if.then
  %hhi.i = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %5 = ptrtoint ptr %hhi.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hhi.i, align 4
  %call1.i = tail call i32 @regmap_write(ptr noundef %6, i32 noundef 800, i32 noundef 1476395581) #5
  %7 = ptrtoint ptr %hhi.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %hhi.i, align 4
  %call3.i = tail call i32 @regmap_write(ptr noundef %8, i32 noundef 804, i32 noundef 4214272) #5
  %9 = ptrtoint ptr %hhi.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hhi.i, align 4
  %call5.i = tail call i32 @regmap_write(ptr noundef %10, i32 noundef 808, i32 noundef 224153745) #5
  %11 = ptrtoint ptr %hhi.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hhi.i, align 4
  %call7.i = tail call i32 @regmap_write(ptr noundef %12, i32 noundef 812, i32 noundef -2145540308) #5
  %13 = ptrtoint ptr %hhi.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hhi.i, align 4
  %call9.i = tail call i32 @regmap_write(ptr noundef %14, i32 noundef 816, i32 noundef 1900571008) #5
  %15 = ptrtoint ptr %hhi.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %hhi.i, align 4
  %call11.i = tail call i32 @regmap_write(ptr noundef %16, i32 noundef 820, i32 noundef 3669) #5
  %17 = ptrtoint ptr %hhi.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %hhi.i, align 4
  %call13.i = tail call i32 @regmap_write(ptr noundef %18, i32 noundef 800, i32 noundef 1207960125) #5
  %call14.i = tail call i64 @ktime_get() #5
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 256) #5
  %19 = ptrtoint ptr %hhi.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %hhi.i, align 4
  %call24334.i = call i32 @regmap_read(ptr noundef %20, i32 noundef 800, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24334.i)
  %tobool25.not335.i = icmp eq i32 %call24334.i, 0
  br i1 %tobool25.not335.i, label %if.then.i.lor.lhs.false.i_crit_edge, label %if.then.i.meson_venci_cvbs_clock_config.exit_crit_edge

if.then.i.meson_venci_cvbs_clock_config.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_venci_cvbs_clock_config.exit

if.then.i.lor.lhs.false.i_crit_edge:              ; preds = %if.then.i
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.then38.i.lor.lhs.false.i_crit_edge, %if.then.i.lor.lhs.false.i_crit_edge
  %21 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %22)
  %tobool26.not.i = icmp sgt i32 %22, -1
  br i1 %tobool26.not.i, label %if.then38.i, label %lor.lhs.false.i.meson_venci_cvbs_clock_config.exit_crit_edge

lor.lhs.false.i.meson_venci_cvbs_clock_config.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_venci_cvbs_clock_config.exit

if.then38.i:                                      ; preds = %lor.lhs.false.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %23 = ptrtoint ptr %hhi.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %hhi.i, align 4
  %call24.i = call i32 @regmap_read(ptr noundef %24, i32 noundef 800, ptr noundef nonnull %val.i) #5
  %tobool25.not.i = icmp eq i32 %call24.i, 0
  br i1 %tobool25.not.i, label %if.then38.i.lor.lhs.false.i_crit_edge, label %if.then38.i.meson_venci_cvbs_clock_config.exit_crit_edge

if.then38.i.meson_venci_cvbs_clock_config.exit_crit_edge: ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_venci_cvbs_clock_config.exit

if.then38.i.lor.lhs.false.i_crit_edge:            ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false.i

if.then51.i:                                      ; preds = %if.then.if.then51.i_crit_edge, %if.then.if.then51.i_crit_edge164
  %hhi52.i = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %25 = ptrtoint ptr %hhi52.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %hhi52.i, align 4
  %call53.i = tail call i32 @regmap_write(ptr noundef %26, i32 noundef 800, i32 noundef 1073742459) #5
  %27 = ptrtoint ptr %hhi52.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %hhi52.i, align 4
  %call55.i = tail call i32 @regmap_write(ptr noundef %28, i32 noundef 804, i32 noundef -2146651392) #5
  %29 = ptrtoint ptr %hhi52.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hhi52.i, align 4
  %call57.i = tail call i32 @regmap_write(ptr noundef %30, i32 noundef 808, i32 noundef -1507776444) #5
  %31 = ptrtoint ptr %hhi52.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hhi52.i, align 4
  %call59.i = tail call i32 @regmap_write(ptr noundef %32, i32 noundef 812, i32 noundef 206372876) #5
  %33 = ptrtoint ptr %hhi52.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hhi52.i, align 4
  %call61.i = tail call i32 @regmap_write(ptr noundef %34, i32 noundef 816, i32 noundef 2074409) #5
  %35 = ptrtoint ptr %hhi52.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hhi52.i, align 4
  %call63.i = tail call i32 @regmap_write(ptr noundef %36, i32 noundef 820, i32 noundef 27464960) #5
  %37 = ptrtoint ptr %hhi52.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hhi52.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 800, i32 noundef 268435456, i32 noundef 268435456, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %39 = ptrtoint ptr %hhi52.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hhi52.i, align 4
  %call.i308.i = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 800, i32 noundef 268435456, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call73.i = tail call i64 @ktime_get() #5
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 274) #5
  %41 = ptrtoint ptr %hhi52.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hhi52.i, align 4
  %call89332.i = call i32 @regmap_read(ptr noundef %42, i32 noundef 800, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89332.i)
  %tobool90.not333.i = icmp eq i32 %call89332.i, 0
  br i1 %tobool90.not333.i, label %if.then51.i.lor.lhs.false91.i_crit_edge, label %if.then51.i.meson_venci_cvbs_clock_config.exit_crit_edge

if.then51.i.meson_venci_cvbs_clock_config.exit_crit_edge: ; preds = %if.then51.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_venci_cvbs_clock_config.exit

if.then51.i.lor.lhs.false91.i_crit_edge:          ; preds = %if.then51.i
  br label %lor.lhs.false91.i

lor.lhs.false91.i:                                ; preds = %if.then106.i.lor.lhs.false91.i_crit_edge, %if.then51.i.lor.lhs.false91.i_crit_edge
  %43 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %44)
  %tobool93.not.i = icmp sgt i32 %44, -1
  br i1 %tobool93.not.i, label %if.then106.i, label %lor.lhs.false91.i.meson_venci_cvbs_clock_config.exit_crit_edge

lor.lhs.false91.i.meson_venci_cvbs_clock_config.exit_crit_edge: ; preds = %lor.lhs.false91.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_venci_cvbs_clock_config.exit

if.then106.i:                                     ; preds = %lor.lhs.false91.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %45 = ptrtoint ptr %hhi52.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hhi52.i, align 4
  %call89.i = call i32 @regmap_read(ptr noundef %46, i32 noundef 800, ptr noundef nonnull %val.i) #5
  %tobool90.not.i = icmp eq i32 %call89.i, 0
  br i1 %tobool90.not.i, label %if.then106.i.lor.lhs.false91.i_crit_edge, label %if.then106.i.meson_venci_cvbs_clock_config.exit_crit_edge

if.then106.i.meson_venci_cvbs_clock_config.exit_crit_edge: ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_venci_cvbs_clock_config.exit

if.then106.i.lor.lhs.false91.i_crit_edge:         ; preds = %if.then106.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false91.i

if.then127.i:                                     ; preds = %if.then
  %hhi128.i = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %47 = ptrtoint ptr %hhi128.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hhi128.i, align 4
  %call129.i = tail call i32 @regmap_write(ptr noundef %48, i32 noundef 800, i32 noundef 436536567) #5
  %49 = ptrtoint ptr %hhi128.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hhi128.i, align 4
  %call131.i = tail call i32 @regmap_write(ptr noundef %50, i32 noundef 804, i32 noundef 65536) #5
  %51 = ptrtoint ptr %hhi128.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hhi128.i, align 4
  %call133.i = tail call i32 @regmap_write(ptr noundef %52, i32 noundef 808, i32 noundef 0) #5
  %53 = ptrtoint ptr %hhi128.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %hhi128.i, align 4
  %call135.i = tail call i32 @regmap_write(ptr noundef %54, i32 noundef 812, i32 noundef 1781062656) #5
  %55 = ptrtoint ptr %hhi128.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %hhi128.i, align 4
  %call137.i = tail call i32 @regmap_write(ptr noundef %56, i32 noundef 816, i32 noundef 1702302352) #5
  %57 = ptrtoint ptr %hhi128.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %hhi128.i, align 4
  %call139.i = tail call i32 @regmap_write(ptr noundef %58, i32 noundef 820, i32 noundef 958865408) #5
  %59 = ptrtoint ptr %hhi128.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %hhi128.i, align 4
  %call141.i = tail call i32 @regmap_write(ptr noundef %60, i32 noundef 824, i32 noundef 1448345600) #5
  %61 = ptrtoint ptr %hhi128.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %hhi128.i, align 4
  %call143.i = tail call i32 @regmap_write(ptr noundef %62, i32 noundef 800, i32 noundef 973407479) #5
  %63 = ptrtoint ptr %hhi128.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %hhi128.i, align 4
  %call145.i = tail call i32 @regmap_write(ptr noundef %64, i32 noundef 800, i32 noundef 436536567) #5
  %call151.i = tail call i64 @ktime_get() #5
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 289) #5
  %65 = ptrtoint ptr %hhi128.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %hhi128.i, align 4
  %call167330.i = call i32 @regmap_read(ptr noundef %66, i32 noundef 800, ptr noundef nonnull %val.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call167330.i)
  %tobool168.not331.i = icmp eq i32 %call167330.i, 0
  br i1 %tobool168.not331.i, label %if.then127.i.lor.lhs.false169.i_crit_edge, label %if.then127.i.meson_venci_cvbs_clock_config.exit_crit_edge

if.then127.i.meson_venci_cvbs_clock_config.exit_crit_edge: ; preds = %if.then127.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_venci_cvbs_clock_config.exit

if.then127.i.lor.lhs.false169.i_crit_edge:        ; preds = %if.then127.i
  br label %lor.lhs.false169.i

lor.lhs.false169.i:                               ; preds = %if.then184.i.lor.lhs.false169.i_crit_edge, %if.then127.i.lor.lhs.false169.i_crit_edge
  %67 = ptrtoint ptr %val.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %val.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %68)
  %cmp171.i = icmp ugt i32 %68, -1073741825
  br i1 %cmp171.i, label %lor.lhs.false169.i.meson_venci_cvbs_clock_config.exit_crit_edge, label %if.then184.i

lor.lhs.false169.i.meson_venci_cvbs_clock_config.exit_crit_edge: ; preds = %lor.lhs.false169.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_venci_cvbs_clock_config.exit

if.then184.i:                                     ; preds = %lor.lhs.false169.i
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %69 = ptrtoint ptr %hhi128.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hhi128.i, align 4
  %call167.i = call i32 @regmap_read(ptr noundef %70, i32 noundef 800, ptr noundef nonnull %val.i) #5
  %tobool168.not.i = icmp eq i32 %call167.i, 0
  br i1 %tobool168.not.i, label %if.then184.i.lor.lhs.false169.i_crit_edge, label %if.then184.i.meson_venci_cvbs_clock_config.exit_crit_edge

if.then184.i.meson_venci_cvbs_clock_config.exit_crit_edge: ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %meson_venci_cvbs_clock_config.exit

if.then184.i.lor.lhs.false169.i_crit_edge:        ; preds = %if.then184.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false169.i

meson_venci_cvbs_clock_config.exit:               ; preds = %if.then184.i.meson_venci_cvbs_clock_config.exit_crit_edge, %lor.lhs.false169.i.meson_venci_cvbs_clock_config.exit_crit_edge, %if.then127.i.meson_venci_cvbs_clock_config.exit_crit_edge, %if.then106.i.meson_venci_cvbs_clock_config.exit_crit_edge, %lor.lhs.false91.i.meson_venci_cvbs_clock_config.exit_crit_edge, %if.then51.i.meson_venci_cvbs_clock_config.exit_crit_edge, %if.then38.i.meson_venci_cvbs_clock_config.exit_crit_edge, %lor.lhs.false.i.meson_venci_cvbs_clock_config.exit_crit_edge, %if.then.i.meson_venci_cvbs_clock_config.exit_crit_edge, %if.then.meson_venci_cvbs_clock_config.exit_crit_edge
  %hhi205.i = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %71 = ptrtoint ptr %hhi205.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hhi205.i, align 4
  %call.i312.i = call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 300, i32 noundef 524288, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %73 = ptrtoint ptr %hhi205.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hhi205.i, align 4
  %call.i.i.i = call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 416, i32 noundef 524288, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %75 = ptrtoint ptr %hhi205.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hhi205.i, align 4
  %call.i48.i.i = call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 416, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %77 = ptrtoint ptr %hhi205.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hhi205.i, align 4
  %call.i49.i.i = call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 416, i32 noundef 262144, i32 noundef 262144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %79 = ptrtoint ptr %hhi205.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hhi205.i, align 4
  %call.i58.i.i = call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 416, i32 noundef 524288, i32 noundef 524288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %81 = ptrtoint ptr %hhi205.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hhi205.i, align 4
  %call.i313.i = call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 296, i32 noundef 255, i32 noundef 54, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %83 = ptrtoint ptr %compat.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %compat.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %84)
  %cmp.i315.not.i = icmp eq i32 %84, 3
  %85 = ptrtoint ptr %hhi205.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hhi205.i, align 4
  %..i = select i1 %cmp.i315.not.i, i32 0, i32 262144
  %call.i318.i = call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 300, i32 noundef 458752, i32 noundef %..i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %87 = ptrtoint ptr %hhi205.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hhi205.i, align 4
  %call.i319.i = call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 300, i32 noundef 524288, i32 noundef 524288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %89 = ptrtoint ptr %hhi205.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hhi205.i, align 4
  %call.i320.i = call i32 @regmap_update_bits_base(ptr noundef %90, i32 noundef 356, i32 noundef -268435456, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %91 = ptrtoint ptr %hhi205.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hhi205.i, align 4
  %call.i321.i = call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef 296, i32 noundef -268435456, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %93 = ptrtoint ptr %hhi205.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hhi205.i, align 4
  %call.i322.i = call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef 296, i32 noundef 196608, i32 noundef 65536, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %95 = ptrtoint ptr %hhi205.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hhi205.i, align 4
  %call.i323.i = call i32 @regmap_update_bits_base(ptr noundef %96, i32 noundef 300, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %97 = ptrtoint ptr %hhi205.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %hhi205.i, align 4
  %call.i324.i = call i32 @regmap_update_bits_base(ptr noundef %98, i32 noundef 300, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %99 = ptrtoint ptr %hhi205.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hhi205.i, align 4
  %call.i325.i = call i32 @regmap_update_bits_base(ptr noundef %100, i32 noundef 300, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %101 = ptrtoint ptr %hhi205.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %hhi205.i, align 4
  %call.i326.i = call i32 @regmap_update_bits_base(ptr noundef %102, i32 noundef 404, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %103 = ptrtoint ptr %hhi205.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hhi205.i, align 4
  %call.i327.i = call i32 @regmap_update_bits_base(ptr noundef %104, i32 noundef 404, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val.i) #5
  br label %cleanup

if.then2:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @meson_vclk_set(ptr noundef %priv, i32 noundef %phy_freq, i32 noundef 0, i32 noundef 0, i32 noundef 0, i32 noundef 7, i32 noundef 2, i32 noundef 1, i32 noundef 1, i1 noundef zeroext false, i1 noundef zeroext false)
  br label %cleanup

if.end3:                                          ; preds = %entry
  %div = udiv i32 %vclk_freq, %dac_freq
  call void @__sanitizer_cov_trace_cmp4(i32 %dac_freq, i32 %vclk_freq)
  %cmp4 = icmp ugt i32 %dac_freq, %vclk_freq
  br i1 %cmp4, label %do.end, label %if.end6

do.end:                                           ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.3, i32 noundef %dac_freq) #9
  br label %cleanup

if.end6:                                          ; preds = %if.end3
  %div7 = udiv i32 %vclk_freq, %venc_freq
  call void @__sanitizer_cov_trace_cmp4(i32 %venc_freq, i32 %vclk_freq)
  %cmp8 = icmp ugt i32 %venc_freq, %vclk_freq
  br i1 %cmp8, label %do.end12, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end6
  %105 = load i32, ptr getelementptr inbounds ([9 x %struct.meson_vclk_params], ptr @params, i32 0, i32 0, i32 4), align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool.not148 = icmp eq i32 %105, 0
  br i1 %tobool.not148, label %for.cond.preheader.do.end75_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.end75_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end75

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_cmp4(i32 %dac_freq, i32 %vclk_freq)
  %cmp60 = icmp eq i32 %dac_freq, %vclk_freq
  br label %for.body

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, i32 noundef %venc_freq) #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %freq.0149 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %phy_freq17 = getelementptr [9 x %struct.meson_vclk_params], ptr @params, i32 0, i32 %freq.0149, i32 1
  %106 = ptrtoint ptr %phy_freq17 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %phy_freq17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %phy_freq)
  %cmp18 = icmp eq i32 %107, %phy_freq
  br i1 %cmp18, label %for.body.land.lhs.true_crit_edge, label %lor.lhs.false

for.body.land.lhs.true_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %for.body
  %div21 = udiv i32 %107, 10
  %mul = mul i32 %div21, 1000
  %add = add i32 %mul, 500
  %div24 = udiv i32 %add, 1001
  %mul25 = mul nuw nsw i32 %div24, 10
  call void @__sanitizer_cov_trace_cmp4(i32 %mul25, i32 %phy_freq)
  %cmp26 = icmp eq i32 %mul25, %phy_freq
  br i1 %cmp26, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %for.body.land.lhs.true_crit_edge
  %vclk_freq28 = getelementptr [9 x %struct.meson_vclk_params], ptr @params, i32 0, i32 %freq.0149, i32 2
  %108 = ptrtoint ptr %vclk_freq28 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %vclk_freq28, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %vclk_freq)
  %cmp29 = icmp eq i32 %109, %vclk_freq
  br i1 %cmp29, label %land.lhs.true.if.then41_crit_edge, label %lor.lhs.false30

land.lhs.true.if.then41_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

lor.lhs.false30:                                  ; preds = %land.lhs.true
  %mul34 = mul i32 %109, 1000
  %add38 = add i32 %mul34, 500
  %div39 = udiv i32 %add38, 1001
  call void @__sanitizer_cov_trace_cmp4(i32 %div39, i32 %vclk_freq)
  %cmp40 = icmp eq i32 %div39, %vclk_freq
  br i1 %cmp40, label %lor.lhs.false30.if.then41_crit_edge, label %lor.lhs.false30.for.inc_crit_edge

lor.lhs.false30.for.inc_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

lor.lhs.false30.if.then41_crit_edge:              ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then41

if.then41:                                        ; preds = %lor.lhs.false30.if.then41_crit_edge, %land.lhs.true.if.then41_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %freq.0149)
  %cmp48 = icmp ne i32 %freq.0149, 0
  %brmerge = or i1 %cmp48, %hdmi_use_enci
  %brmerge.not = xor i1 %brmerge, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %freq.0149)
  %cmp53 = icmp eq i32 %freq.0149, 1
  %110 = and i1 %cmp53, %hdmi_use_enci
  %or.cond143 = select i1 %brmerge.not, i1 true, i1 %110
  br i1 %or.cond143, label %if.then41.for.inc_crit_edge, label %if.end57

if.then41.for.inc_crit_edge:                      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

if.end57:                                         ; preds = %if.then41
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %freq.0149)
  %cmp58 = icmp eq i32 %freq.0149, 2
  %or.cond = and i1 %cmp60, %cmp58
  %or.cond.not = xor i1 %or.cond, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %freq.0149)
  %cmp63 = icmp ne i32 %freq.0149, 4
  %or.cond140 = or i1 %cmp60, %cmp63
  %or.cond142 = select i1 %or.cond.not, i1 %or.cond140, i1 false
  br i1 %or.cond142, label %if.end78, label %if.end57.for.inc_crit_edge

if.end57.for.inc_crit_edge:                       ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc

for.inc:                                          ; preds = %if.end57.for.inc_crit_edge, %if.then41.for.inc_crit_edge, %lor.lhs.false30.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge
  %inc = add i32 %freq.0149, 1
  %pixel_freq = getelementptr [9 x %struct.meson_vclk_params], ptr @params, i32 0, i32 %inc, i32 4
  %111 = ptrtoint ptr %pixel_freq to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %pixel_freq, align 4
  %tobool.not = icmp eq i32 %112, 0
  br i1 %tobool.not, label %for.inc.do.end75_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc.do.end75_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end75

do.end75:                                         ; preds = %for.inc.do.end75_crit_edge, %for.cond.preheader.do.end75_crit_edge
  %call77 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10, i32 noundef %vclk_freq) #9
  br label %cleanup

if.end78:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %arrayidx.le = getelementptr [9 x %struct.meson_vclk_params], ptr @params, i32 0, i32 %freq.0149
  call void @__sanitizer_cov_trace_cmp4(i32 %109, i32 %vclk_freq)
  %cmp44.le = icmp ne i32 %109, %vclk_freq
  %113 = ptrtoint ptr %arrayidx.le to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %arrayidx.le, align 4
  %pll_od1 = getelementptr [9 x %struct.meson_vclk_params], ptr @params, i32 0, i32 %freq.0149, i32 5
  %115 = ptrtoint ptr %pll_od1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %pll_od1, align 4
  %pll_od2 = getelementptr [9 x %struct.meson_vclk_params], ptr @params, i32 0, i32 %freq.0149, i32 6
  %117 = ptrtoint ptr %pll_od2 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %pll_od2, align 4
  %pll_od3 = getelementptr [9 x %struct.meson_vclk_params], ptr @params, i32 0, i32 %freq.0149, i32 7
  %119 = ptrtoint ptr %pll_od3 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %pll_od3, align 4
  %vid_pll_div = getelementptr [9 x %struct.meson_vclk_params], ptr @params, i32 0, i32 %freq.0149, i32 8
  %121 = ptrtoint ptr %vid_pll_div to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %vid_pll_div, align 4
  %vclk_div = getelementptr [9 x %struct.meson_vclk_params], ptr @params, i32 0, i32 %freq.0149, i32 9
  %123 = ptrtoint ptr %vclk_div to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %vclk_div, align 4
  tail call fastcc void @meson_vclk_set(ptr noundef %priv, i32 noundef %114, i32 noundef %116, i32 noundef %118, i32 noundef %120, i32 noundef %122, i32 noundef %124, i32 noundef %div, i32 noundef %div7, i1 noundef zeroext %hdmi_use_enci, i1 noundef zeroext %cmp44.le)
  br label %cleanup

cleanup:                                          ; preds = %if.end78, %do.end75, %do.end12, %do.end, %if.then2, %meson_venci_cvbs_clock_config.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_vclk_set(ptr noundef %priv, i32 noundef %pll_base_freq, i32 noundef %od1, i32 noundef %od2, i32 noundef %od3, i32 noundef %vid_pll_div, i32 noundef %vclk_div, i32 noundef %hdmi_tx_div, i32 noundef %venc_div, i1 noundef zeroext %hdmi_use_enci, i1 noundef zeroext %vic_alternate_clock) unnamed_addr #0 align 64 {
entry:
  %od.i = alloca i32, align 4
  %m.i = alloca i32, align 4
  %frac.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %hhi = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %0 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hhi, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 460, i32 noundef 3584, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %2 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hhi, align 4
  %call.i239 = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 460, i32 noundef 127, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %4 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hhi, align 4
  %call.i240 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 460, i32 noundef 256, i32 noundef 256, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %6 = or i32 %od2, %od1
  %7 = or i32 %6, %od3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %od.i) #5
  %9 = ptrtoint ptr %od.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %od.i, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %m.i) #5
  %10 = ptrtoint ptr %m.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %m.i, align 4, !annotation !43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frac.i) #5
  %11 = ptrtoint ptr %frac.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -1, ptr %frac.i, align 4, !annotation !43
  %call.i241 = call fastcc zeroext i1 @meson_hdmi_pll_find_params(ptr noundef %priv, i32 noundef %pll_base_freq, ptr noundef nonnull %m.i, ptr noundef nonnull %frac.i, ptr noundef nonnull %od.i) #5
  br i1 %call.i241, label %if.then.i, label %if.end3.i

if.then.i:                                        ; preds = %if.then
  %12 = ptrtoint ptr %od.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %od.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %13)
  %cmp.i = icmp ult i32 %13, 4
  br i1 %cmp.i, label %if.then.i.if.end.i_crit_edge, label %if.else.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.else.i:                                        ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %div16.i = lshr i32 %13, 2
  %div2.i = udiv i32 %13, %div16.i
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i.if.end.i_crit_edge
  %od1.0.i = phi i32 [ %div2.i, %if.else.i ], [ 2, %if.then.i.if.end.i_crit_edge ]
  %od2.0.i = phi i32 [ %div16.i, %if.else.i ], [ 1, %if.then.i.if.end.i_crit_edge ]
  %14 = ptrtoint ptr %m.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %m.i, align 4
  %16 = ptrtoint ptr %frac.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frac.i, align 4
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.13, i32 noundef %pll_base_freq, i32 noundef %15, i32 noundef %17, i32 noundef %od1.0.i, i32 noundef %od2.0.i, i32 noundef 1) #5
  tail call fastcc void @meson_hdmi_pll_set_params(ptr noundef %priv, i32 noundef %15, i32 noundef %17, i32 noundef %od1.0.i, i32 noundef %od2.0.i, i32 noundef 1) #5
  br label %meson_hdmi_pll_generic_set.exit

if.end3.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str.14, i32 noundef %pll_base_freq) #5
  br label %meson_hdmi_pll_generic_set.exit

meson_hdmi_pll_generic_set.exit:                  ; preds = %if.end3.i, %if.end.i
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frac.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %m.i) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %od.i) #5
  br label %if.end57

if.else:                                          ; preds = %entry
  %compat.i = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 1
  %18 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %compat.i, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.25)
  switch i32 %19, label %if.else.if.end57_crit_edge [
    i32 0, label %if.then11
    i32 2, label %if.else.if.then26_crit_edge
    i32 1, label %if.else.if.then26_crit_edge287
    i32 3, label %if.then42
  ]

if.else.if.then26_crit_edge287:                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

if.else.if.then26_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then26

if.else.if.end57_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end57

if.then11:                                        ; preds = %if.else
  %21 = zext i32 %pll_base_freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %pll_base_freq, label %if.then11.sw.epilog_crit_edge [
    i32 2970000, label %sw.bb
    i32 4320000, label %sw.bb13
    i32 5940000, label %sw.bb18
  ]

if.then11.sw.epilog_crit_edge:                    ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog

sw.bb:                                            ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %cond = select i1 %vic_alternate_clock, i32 3330, i32 3584
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %cond15 = select i1 %vic_alternate_clock, i32 89, i32 90
  %cond17 = select i1 %vic_alternate_clock, i32 3727, i32 0
  br label %sw.epilog

sw.bb18:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #7
  %cond20 = select i1 %vic_alternate_clock, i32 2565, i32 3072
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb18, %sw.bb13, %sw.bb, %if.then11.sw.epilog_crit_edge
  %m.0 = phi i32 [ 0, %if.then11.sw.epilog_crit_edge ], [ 123, %sw.bb18 ], [ %cond15, %sw.bb13 ], [ 61, %sw.bb ]
  %frac.0 = phi i32 [ 0, %if.then11.sw.epilog_crit_edge ], [ %cond20, %sw.bb18 ], [ %cond17, %sw.bb13 ], [ %cond, %sw.bb ]
  tail call fastcc void @meson_hdmi_pll_set_params(ptr noundef %priv, i32 noundef %m.0, i32 noundef %frac.0, i32 noundef %od1, i32 noundef %od2, i32 noundef %od3)
  br label %if.end57

if.then26:                                        ; preds = %if.else.if.then26_crit_edge, %if.else.if.then26_crit_edge287
  %22 = zext i32 %pll_base_freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.27)
  switch i32 %pll_base_freq, label %if.then26.sw.epilog38_crit_edge [
    i32 2970000, label %sw.bb27
    i32 4320000, label %sw.bb30
    i32 5940000, label %sw.bb35
  ]

if.then26.sw.epilog38_crit_edge:                  ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog38

sw.bb27:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %cond29 = select i1 %vic_alternate_clock, i32 641, i32 768
  br label %sw.epilog38

sw.bb30:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %cond32 = select i1 %vic_alternate_clock, i32 179, i32 180
  %cond34 = select i1 %vic_alternate_clock, i32 839, i32 0
  br label %sw.epilog38

sw.bb35:                                          ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #7
  %cond37 = select i1 %vic_alternate_clock, i32 258, i32 512
  br label %sw.epilog38

sw.epilog38:                                      ; preds = %sw.bb35, %sw.bb30, %sw.bb27, %if.then26.sw.epilog38_crit_edge
  %m.1 = phi i32 [ 0, %if.then26.sw.epilog38_crit_edge ], [ 247, %sw.bb35 ], [ %cond32, %sw.bb30 ], [ 123, %sw.bb27 ]
  %frac.1 = phi i32 [ 0, %if.then26.sw.epilog38_crit_edge ], [ %cond37, %sw.bb35 ], [ %cond34, %sw.bb30 ], [ %cond29, %sw.bb27 ]
  tail call fastcc void @meson_hdmi_pll_set_params(ptr noundef %priv, i32 noundef %m.1, i32 noundef %frac.1, i32 noundef %od1, i32 noundef %od2, i32 noundef %od3)
  br label %if.end57

if.then42:                                        ; preds = %if.else
  %23 = zext i32 %pll_base_freq to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.28)
  switch i32 %pll_base_freq, label %if.then42.sw.epilog54_crit_edge [
    i32 2970000, label %sw.bb43
    i32 4320000, label %sw.bb46
    i32 5940000, label %sw.bb51
  ]

if.then42.sw.epilog54_crit_edge:                  ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog54

sw.bb43:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  %cond45 = select i1 %vic_alternate_clock, i32 82100, i32 98304
  br label %sw.epilog54

sw.bb46:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  %cond48 = select i1 %vic_alternate_clock, i32 179, i32 180
  %cond50 = select i1 %vic_alternate_clock, i32 107502, i32 0
  br label %sw.epilog54

sw.bb51:                                          ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #7
  %cond53 = select i1 %vic_alternate_clock, i32 33096, i32 65536
  br label %sw.epilog54

sw.epilog54:                                      ; preds = %sw.bb51, %sw.bb46, %sw.bb43, %if.then42.sw.epilog54_crit_edge
  %m.2 = phi i32 [ 0, %if.then42.sw.epilog54_crit_edge ], [ 247, %sw.bb51 ], [ %cond48, %sw.bb46 ], [ 123, %sw.bb43 ]
  %frac.2 = phi i32 [ 0, %if.then42.sw.epilog54_crit_edge ], [ %cond53, %sw.bb51 ], [ %cond50, %sw.bb46 ], [ %cond45, %sw.bb43 ]
  tail call fastcc void @meson_hdmi_pll_set_params(ptr noundef %priv, i32 noundef %m.2, i32 noundef %frac.2, i32 noundef %od1, i32 noundef %od2, i32 noundef %od3)
  br label %if.end57

if.end57:                                         ; preds = %sw.epilog54, %sw.epilog38, %sw.epilog, %if.else.if.end57_crit_edge, %meson_hdmi_pll_generic_set.exit
  %24 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hhi, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %25, i32 noundef 416, i32 noundef 524288, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %26 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hhi, align 4
  %call.i48.i = tail call i32 @regmap_update_bits_base(ptr noundef %27, i32 noundef 416, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %28 = zext i32 %vid_pll_div to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.29)
  switch i32 %vid_pll_div, label %if.else.fold.split.i [
    i32 1, label %if.end57.if.else.i253_crit_edge
    i32 2, label %sw.bb3.i
    i32 3, label %sw.bb4.i
    i32 4, label %sw.bb5.i
    i32 5, label %sw.bb6.i
    i32 6, label %sw.bb7.i
    i32 7, label %sw.bb8.i
    i32 8, label %sw.bb9.i
    i32 9, label %sw.bb10.i
    i32 10, label %sw.bb11.i
    i32 11, label %sw.bb12.i
    i32 12, label %sw.bb13.i
    i32 13, label %sw.bb14.i
    i32 14, label %sw.bb15.i
    i32 0, label %if.then.i252
  ]

if.end57.if.else.i253_crit_edge:                  ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i253

sw.bb3.i:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i253

sw.bb4.i:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i253

sw.bb5.i:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i253

sw.bb6.i:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i253

sw.bb7.i:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i253

sw.bb8.i:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i253

sw.bb9.i:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i253

sw.bb10.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i253

sw.bb11.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i253

sw.bb12.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i253

sw.bb13.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i253

sw.bb14.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i253

sw.bb15.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i253

if.then.i252:                                     ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hhi, align 4
  %call.i49.i = tail call i32 @regmap_update_bits_base(ptr noundef %30, i32 noundef 416, i32 noundef 262144, i32 noundef 262144, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %meson_vid_pll_set.exit

if.else.fold.split.i:                             ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else.i253

if.else.i253:                                     ; preds = %if.else.fold.split.i, %sw.bb15.i, %sw.bb14.i, %sw.bb13.i, %sw.bb12.i, %sw.bb11.i, %sw.bb10.i, %sw.bb9.i, %sw.bb8.i, %sw.bb7.i, %sw.bb6.i, %sw.bb5.i, %sw.bb4.i, %sw.bb3.i, %if.end57.if.else.i253_crit_edge
  %shift_sel.063.i = phi i32 [ 131072, %sw.bb3.i ], [ 0, %sw.bb4.i ], [ 65536, %sw.bb5.i ], [ 131072, %sw.bb6.i ], [ 0, %sw.bb7.i ], [ 131072, %sw.bb8.i ], [ 0, %sw.bb9.i ], [ 196608, %sw.bb10.i ], [ 65536, %sw.bb11.i ], [ 131072, %sw.bb12.i ], [ 0, %sw.bb13.i ], [ 65536, %sw.bb14.i ], [ 131072, %sw.bb15.i ], [ 0, %if.end57.if.else.i253_crit_edge ], [ 0, %if.else.fold.split.i ]
  %shift_val.062.i = phi i32 [ 21140, %sw.bb3.i ], [ 3510, %sw.bb4.i ], [ 14028, %sw.bb5.i ], [ 26214, %sw.bb6.i ], [ 3276, %sw.bb7.i ], [ 29596, %sw.bb8.i ], [ 3640, %sw.bb9.i ], [ 0, %sw.bb10.i ], [ 15480, %sw.bb11.i ], [ 30960, %sw.bb12.i ], [ 4032, %sw.bb13.i ], [ 16256, %sw.bb14.i ], [ 32640, %sw.bb15.i ], [ 2730, %if.end57.if.else.i253_crit_edge ], [ 0, %if.else.fold.split.i ]
  %31 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %hhi, align 4
  %call.i50.i = tail call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 416, i32 noundef 262144, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %33 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hhi, align 4
  %call.i51.i = tail call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 416, i32 noundef 196608, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %35 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %hhi, align 4
  %call.i52.i = tail call i32 @regmap_update_bits_base(ptr noundef %36, i32 noundef 416, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %37 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %hhi, align 4
  %call.i53.i = tail call i32 @regmap_update_bits_base(ptr noundef %38, i32 noundef 416, i32 noundef 32767, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %39 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %hhi, align 4
  %call.i54.i = tail call i32 @regmap_update_bits_base(ptr noundef %40, i32 noundef 416, i32 noundef 196608, i32 noundef %shift_sel.063.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %41 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %hhi, align 4
  %call.i55.i = tail call i32 @regmap_update_bits_base(ptr noundef %42, i32 noundef 416, i32 noundef 32768, i32 noundef 32768, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %43 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %hhi, align 4
  %call.i56.i = tail call i32 @regmap_update_bits_base(ptr noundef %44, i32 noundef 416, i32 noundef 32767, i32 noundef %shift_val.062.i, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %45 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hhi, align 4
  %call.i57.i = tail call i32 @regmap_update_bits_base(ptr noundef %46, i32 noundef 416, i32 noundef 32768, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %meson_vid_pll_set.exit

meson_vid_pll_set.exit:                           ; preds = %if.else.i253, %if.then.i252
  %47 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %hhi, align 4
  %call.i58.i = tail call i32 @regmap_update_bits_base(ptr noundef %48, i32 noundef 416, i32 noundef 524288, i32 noundef 524288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %49 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %hhi, align 4
  %call.i255 = tail call i32 @regmap_update_bits_base(ptr noundef %50, i32 noundef 380, i32 noundef 458752, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %51 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %hhi, align 4
  %sub = add i32 %vclk_div, -1
  %call.i256 = tail call i32 @regmap_update_bits_base(ptr noundef %52, i32 noundef 356, i32 noundef 255, i32 noundef %sub, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %53 = zext i32 %hdmi_tx_div to i64
  call void @__sanitizer_cov_trace_switch(i64 %53, ptr @__sancov_gen_cov_switch_values.30)
  switch i32 %hdmi_tx_div, label %meson_vid_pll_set.exit.sw.epilog87_crit_edge [
    i32 1, label %sw.bb62
    i32 2, label %sw.bb67
    i32 4, label %sw.bb72
    i32 6, label %sw.bb77
    i32 12, label %sw.bb82
  ]

meson_vid_pll_set.exit.sw.epilog87_crit_edge:     ; preds = %meson_vid_pll_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog87

sw.bb62:                                          ; preds = %meson_vid_pll_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %54 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hhi, align 4
  %call.i257 = tail call i32 @regmap_update_bits_base(ptr noundef %55, i32 noundef 380, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sw.epilog87.sink.split

sw.bb67:                                          ; preds = %meson_vid_pll_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hhi, align 4
  %call.i259 = tail call i32 @regmap_update_bits_base(ptr noundef %57, i32 noundef 380, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sw.epilog87.sink.split

sw.bb72:                                          ; preds = %meson_vid_pll_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hhi, align 4
  %call.i261 = tail call i32 @regmap_update_bits_base(ptr noundef %59, i32 noundef 380, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sw.epilog87.sink.split

sw.bb77:                                          ; preds = %meson_vid_pll_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hhi, align 4
  %call.i263 = tail call i32 @regmap_update_bits_base(ptr noundef %61, i32 noundef 380, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sw.epilog87.sink.split

sw.bb82:                                          ; preds = %meson_vid_pll_set.exit
  call void @__sanitizer_cov_trace_pc() #7
  %62 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hhi, align 4
  %call.i265 = tail call i32 @regmap_update_bits_base(ptr noundef %63, i32 noundef 380, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sw.epilog87.sink.split

sw.epilog87.sink.split:                           ; preds = %sw.bb82, %sw.bb77, %sw.bb72, %sw.bb67, %sw.bb62
  %.sink286 = phi i32 [ 262144, %sw.bb82 ], [ 196608, %sw.bb77 ], [ 131072, %sw.bb72 ], [ 65536, %sw.bb67 ], [ 0, %sw.bb62 ]
  %64 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hhi, align 4
  %call.i266 = tail call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 460, i32 noundef 983040, i32 noundef %.sink286, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %sw.epilog87

sw.epilog87:                                      ; preds = %sw.epilog87.sink.split, %meson_vid_pll_set.exit.sw.epilog87_crit_edge
  %66 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hhi, align 4
  %call.i267 = tail call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 404, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %68 = zext i32 %venc_div to i64
  call void @__sanitizer_cov_trace_switch(i64 %68, ptr @__sancov_gen_cov_switch_values.31)
  switch i32 %venc_div, label %sw.epilog145 [
    i32 1, label %sw.bb90
    i32 2, label %sw.bb101
    i32 4, label %sw.bb112
    i32 6, label %sw.bb123
    i32 12, label %sw.bb134
  ]

sw.bb90:                                          ; preds = %sw.epilog87
  %69 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %hhi, align 4
  %call.i268 = tail call i32 @regmap_update_bits_base(ptr noundef %70, i32 noundef 380, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %71 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %hhi, align 4
  br i1 %hdmi_use_enci, label %if.then94, label %if.else97

if.then94:                                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #7
  %call.i269 = tail call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 356, i32 noundef -268435456, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.then147

if.else97:                                        ; preds = %sw.bb90
  call void @__sanitizer_cov_trace_pc() #7
  %call.i270 = tail call i32 @regmap_update_bits_base(ptr noundef %72, i32 noundef 356, i32 noundef 251658240, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.else150

sw.bb101:                                         ; preds = %sw.epilog87
  %73 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %hhi, align 4
  %call.i271 = tail call i32 @regmap_update_bits_base(ptr noundef %74, i32 noundef 380, i32 noundef 2, i32 noundef 2, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %75 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %hhi, align 4
  br i1 %hdmi_use_enci, label %if.then105, label %if.else108

if.then105:                                       ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #7
  %call.i272 = tail call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 356, i32 noundef -268435456, i32 noundef 268435456, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.then147

if.else108:                                       ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #7
  %call.i273 = tail call i32 @regmap_update_bits_base(ptr noundef %76, i32 noundef 356, i32 noundef 251658240, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.else150

sw.bb112:                                         ; preds = %sw.epilog87
  %77 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %hhi, align 4
  %call.i274 = tail call i32 @regmap_update_bits_base(ptr noundef %78, i32 noundef 380, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %79 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %hhi, align 4
  br i1 %hdmi_use_enci, label %if.then116, label %if.else119

if.then116:                                       ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #7
  %call.i275 = tail call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 356, i32 noundef -268435456, i32 noundef 536870912, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.then147

if.else119:                                       ; preds = %sw.bb112
  call void @__sanitizer_cov_trace_pc() #7
  %call.i276 = tail call i32 @regmap_update_bits_base(ptr noundef %80, i32 noundef 356, i32 noundef 251658240, i32 noundef 33554432, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.else150

sw.bb123:                                         ; preds = %sw.epilog87
  %81 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %hhi, align 4
  %call.i277 = tail call i32 @regmap_update_bits_base(ptr noundef %82, i32 noundef 380, i32 noundef 8, i32 noundef 8, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %83 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %hhi, align 4
  br i1 %hdmi_use_enci, label %if.then127, label %if.else130

if.then127:                                       ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #7
  %call.i278 = tail call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 356, i32 noundef -268435456, i32 noundef 805306368, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.then147

if.else130:                                       ; preds = %sw.bb123
  call void @__sanitizer_cov_trace_pc() #7
  %call.i279 = tail call i32 @regmap_update_bits_base(ptr noundef %84, i32 noundef 356, i32 noundef 251658240, i32 noundef 50331648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.else150

sw.bb134:                                         ; preds = %sw.epilog87
  %85 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %hhi, align 4
  %call.i280 = tail call i32 @regmap_update_bits_base(ptr noundef %86, i32 noundef 380, i32 noundef 16, i32 noundef 16, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %87 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %hhi, align 4
  br i1 %hdmi_use_enci, label %if.then138, label %if.else141

if.then138:                                       ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #7
  %call.i281 = tail call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 356, i32 noundef -268435456, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.then147

if.else141:                                       ; preds = %sw.bb134
  call void @__sanitizer_cov_trace_pc() #7
  %call.i282 = tail call i32 @regmap_update_bits_base(ptr noundef %88, i32 noundef 356, i32 noundef 251658240, i32 noundef 67108864, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.else150

sw.epilog145:                                     ; preds = %sw.epilog87
  br i1 %hdmi_use_enci, label %sw.epilog145.if.then147_crit_edge, label %sw.epilog145.if.else150_crit_edge

sw.epilog145.if.else150_crit_edge:                ; preds = %sw.epilog145
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else150

sw.epilog145.if.then147_crit_edge:                ; preds = %sw.epilog145
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then147

if.then147:                                       ; preds = %sw.epilog145.if.then147_crit_edge, %if.then138, %if.then127, %if.then116, %if.then105, %if.then94
  %89 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %hhi, align 4
  %call.i283 = tail call i32 @regmap_update_bits_base(ptr noundef %90, i32 noundef 404, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end153

if.else150:                                       ; preds = %sw.epilog145.if.else150_crit_edge, %if.else141, %if.else130, %if.else119, %if.else108, %if.else97
  %91 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %hhi, align 4
  %call.i284 = tail call i32 @regmap_update_bits_base(ptr noundef %92, i32 noundef 404, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end153

if.end153:                                        ; preds = %if.else150, %if.then147
  %93 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %hhi, align 4
  %call.i285 = tail call i32 @regmap_update_bits_base(ptr noundef %94, i32 noundef 380, i32 noundef 524288, i32 noundef 524288, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @meson_hdmi_pll_set_params(ptr noundef readonly %priv, i32 noundef %m, i32 noundef %frac, i32 noundef %od1, i32 noundef %od2, i32 noundef %od3) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !43
  %compat.i = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 1
  %1 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %compat.i, align 4
  %3 = zext i32 %2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %3, ptr @__sancov_gen_cov_switch_values.32)
  switch i32 %2, label %entry.if.end242_crit_edge [
    i32 0, label %if.then
    i32 2, label %entry.if.then58_crit_edge
    i32 1, label %entry.if.then58_crit_edge616
    i32 3, label %if.then136
  ]

entry.if.then58_crit_edge616:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then58

entry.if.then58_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then58

entry.if.end242_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end242

if.then:                                          ; preds = %entry
  %hhi = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %4 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %hhi, align 4
  %or = or i32 %m, 1476395520
  %call1 = tail call i32 @regmap_write(ptr noundef %5, i32 noundef 800, i32 noundef %or) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %frac)
  %tobool2.not = icmp eq i32 %frac, 0
  %6 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hhi, align 4
  %or5 = or i32 %frac, 16384
  %.sink = select i1 %tobool2.not, i32 0, i32 %or5
  %call8 = tail call i32 @regmap_write(ptr noundef %7, i32 noundef 804, i32 noundef %.sink) #5
  %8 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hhi, align 4
  %call10 = tail call i32 @regmap_write(ptr noundef %9, i32 noundef 808, i32 noundef 224153745) #5
  %10 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %hhi, align 4
  %call12 = tail call i32 @regmap_write(ptr noundef %11, i32 noundef 812, i32 noundef -2145540308) #5
  %12 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %hhi, align 4
  %call14 = tail call i32 @regmap_write(ptr noundef %13, i32 noundef 816, i32 noundef 1900571008) #5
  %14 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hhi, align 4
  %call16 = tail call i32 @regmap_write(ptr noundef %15, i32 noundef 820, i32 noundef 3669) #5
  %16 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %hhi, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 800, i32 noundef 1879048192, i32 noundef 1073741824, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call19 = tail call i64 @ktime_get() #5
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 515) #5
  %18 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hhi, align 4
  %call30551 = call i32 @regmap_read(ptr noundef %19, i32 noundef 800, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30551)
  %tobool31.not552 = icmp eq i32 %call30551, 0
  br i1 %tobool31.not552, label %if.then.lor.lhs.false_crit_edge, label %if.then.if.end242thread-pre-split_crit_edge

if.then.if.end242thread-pre-split_crit_edge:      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end242thread-pre-split

if.then.lor.lhs.false_crit_edge:                  ; preds = %if.then
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then44.lor.lhs.false_crit_edge, %if.then.lor.lhs.false_crit_edge
  %20 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %21)
  %tobool32.not = icmp sgt i32 %21, -1
  br i1 %tobool32.not, label %if.then44, label %lor.lhs.false.if.end242thread-pre-split_crit_edge

lor.lhs.false.if.end242thread-pre-split_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end242thread-pre-split

if.then44:                                        ; preds = %lor.lhs.false
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %22 = ptrtoint ptr %hhi to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hhi, align 4
  %call30 = call i32 @regmap_read(ptr noundef %23, i32 noundef 800, ptr noundef nonnull %val) #5
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.then44.lor.lhs.false_crit_edge, label %if.then44.if.end242thread-pre-split_crit_edge

if.then44.if.end242thread-pre-split_crit_edge:    ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end242thread-pre-split

if.then44.lor.lhs.false_crit_edge:                ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

if.then58:                                        ; preds = %entry.if.then58_crit_edge, %entry.if.then58_crit_edge616
  %hhi59 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %24 = ptrtoint ptr %hhi59 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %hhi59, align 4
  %or60 = or i32 %m, 1073742336
  %call61 = tail call i32 @regmap_write(ptr noundef %25, i32 noundef 800, i32 noundef %or60) #5
  %26 = ptrtoint ptr %hhi59 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %hhi59, align 4
  %or63 = or i32 %frac, -2146652160
  %call64 = tail call i32 @regmap_write(ptr noundef %27, i32 noundef 804, i32 noundef %or63) #5
  %28 = ptrtoint ptr %hhi59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %hhi59, align 4
  %call66 = tail call i32 @regmap_write(ptr noundef %29, i32 noundef 808, i32 noundef -2045824828) #5
  %30 = ptrtoint ptr %hhi59 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %hhi59, align 4
  %call68 = tail call i32 @regmap_write(ptr noundef %31, i32 noundef 812, i32 noundef 210632704) #5
  %32 = ptrtoint ptr %hhi59 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %hhi59, align 4
  %call70 = tail call i32 @regmap_write(ptr noundef %33, i32 noundef 816, i32 noundef 2074409) #5
  %34 = ptrtoint ptr %hhi59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %hhi59, align 4
  %call72 = tail call i32 @regmap_write(ptr noundef %35, i32 noundef 820, i32 noundef 27464960) #5
  %36 = ptrtoint ptr %hhi59 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %hhi59, align 4
  %call.i428 = tail call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 800, i32 noundef 268435456, i32 noundef 268435456, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %38 = ptrtoint ptr %hhi59 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %hhi59, align 4
  %call.i429 = tail call i32 @regmap_update_bits_base(ptr noundef %39, i32 noundef 800, i32 noundef 268435456, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call82 = tail call i64 @ktime_get() #5
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 533) #5
  %40 = ptrtoint ptr %hhi59 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %hhi59, align 4
  %call98549 = call i32 @regmap_read(ptr noundef %41, i32 noundef 800, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98549)
  %tobool99.not550 = icmp eq i32 %call98549, 0
  br i1 %tobool99.not550, label %if.then58.lor.lhs.false100_crit_edge, label %if.then58.if.end242thread-pre-split_crit_edge

if.then58.if.end242thread-pre-split_crit_edge:    ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end242thread-pre-split

if.then58.lor.lhs.false100_crit_edge:             ; preds = %if.then58
  br label %lor.lhs.false100

lor.lhs.false100:                                 ; preds = %if.then115.lor.lhs.false100_crit_edge, %if.then58.lor.lhs.false100_crit_edge
  %42 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %43)
  %tobool102.not = icmp sgt i32 %43, -1
  br i1 %tobool102.not, label %if.then115, label %lor.lhs.false100.if.end242thread-pre-split_crit_edge

lor.lhs.false100.if.end242thread-pre-split_crit_edge: ; preds = %lor.lhs.false100
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end242thread-pre-split

if.then115:                                       ; preds = %lor.lhs.false100
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %44 = ptrtoint ptr %hhi59 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %hhi59, align 4
  %call98 = call i32 @regmap_read(ptr noundef %45, i32 noundef 800, ptr noundef nonnull %val) #5
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.then115.lor.lhs.false100_crit_edge, label %if.then115.if.end242thread-pre-split_crit_edge

if.then115.if.end242thread-pre-split_crit_edge:   ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end242thread-pre-split

if.then115.lor.lhs.false100_crit_edge:            ; preds = %if.then115
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false100

if.then136:                                       ; preds = %entry
  %hhi137 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %46 = ptrtoint ptr %hhi137 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %hhi137, align 4
  %or138 = or i32 %m, 188351488
  %call139 = tail call i32 @regmap_write(ptr noundef %47, i32 noundef 800, i32 noundef %or138) #5
  %48 = ptrtoint ptr %hhi137 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %hhi137, align 4
  %call.i433 = tail call i32 @regmap_update_bits_base(ptr noundef %49, i32 noundef 800, i32 noundef 805306368, i32 noundef 805306368, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %50 = ptrtoint ptr %hhi137 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %hhi137, align 4
  %call143 = tail call i32 @regmap_write(ptr noundef %51, i32 noundef 804, i32 noundef %frac) #5
  %52 = ptrtoint ptr %hhi137 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %hhi137, align 4
  %call145 = tail call i32 @regmap_write(ptr noundef %53, i32 noundef 808, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 246, i32 %m)
  %cmp146 = icmp ugt i32 %m, 246
  br i1 %cmp146, label %if.then147, label %if.else164

if.then147:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %frac)
  %cmp148 = icmp ult i32 %frac, 65536
  %54 = ptrtoint ptr %hhi137 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %hhi137, align 4
  %. = select i1 %cmp148, i32 1785224192, i32 -362226688
  %.577 = select i1 %cmp148, i32 290787987, i32 1702302352
  %call156 = tail call i32 @regmap_write(ptr noundef %55, i32 noundef 812, i32 noundef %.) #5
  br label %if.end173

if.else164:                                       ; preds = %if.then136
  call void @__sanitizer_cov_trace_pc() #7
  %56 = ptrtoint ptr %hhi137 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %hhi137, align 4
  %call166 = tail call i32 @regmap_write(ptr noundef %57, i32 noundef 812, i32 noundef 174660608) #5
  br label %if.end173

if.end173:                                        ; preds = %if.else164, %if.then147
  %.sink576 = phi i32 [ 863441552, %if.else164 ], [ %.577, %if.then147 ]
  %.sink574 = phi i32 [ 958857216, %if.else164 ], [ 958865408, %if.then147 ]
  %.sink572 = phi i32 [ 1347682304, %if.else164 ], [ 1431568384, %if.then147 ]
  %58 = ptrtoint ptr %hhi137 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %hhi137, align 4
  %call168 = tail call i32 @regmap_write(ptr noundef %59, i32 noundef 816, i32 noundef %.sink576) #5
  %60 = ptrtoint ptr %hhi137 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %hhi137, align 4
  %call170 = tail call i32 @regmap_write(ptr noundef %61, i32 noundef 820, i32 noundef %.sink574) #5
  %62 = ptrtoint ptr %hhi137 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %hhi137, align 4
  %call172 = tail call i32 @regmap_write(ptr noundef %63, i32 noundef 824, i32 noundef %.sink572) #5
  br label %do.body174

do.body174:                                       ; preds = %do.body174.backedge, %if.end173
  %64 = ptrtoint ptr %hhi137 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %hhi137, align 4
  %call.i434 = call i32 @regmap_update_bits_base(ptr noundef %65, i32 noundef 800, i32 noundef 536870912, i32 noundef 536870912, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %66 = ptrtoint ptr %hhi137 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %hhi137, align 4
  %call.i435 = call i32 @regmap_update_bits_base(ptr noundef %67, i32 noundef 800, i32 noundef 536870912, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  %call184 = call i64 @ktime_get() #5
  %add.i = add i64 %call184, 100000
  call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 581) #5
  %68 = ptrtoint ptr %hhi137 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %hhi137, align 4
  %call200544 = call i32 @regmap_read(ptr noundef %69, i32 noundef 800, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call200544)
  %tobool201.not545 = icmp eq i32 %call200544, 0
  br i1 %tobool201.not545, label %do.body174.lor.lhs.false202_crit_edge, label %do.body174.do.body174.backedge_crit_edge

do.body174.do.body174.backedge_crit_edge:         ; preds = %do.body174
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body174.backedge

do.body174.lor.lhs.false202_crit_edge:            ; preds = %do.body174
  br label %lor.lhs.false202

do.body174.backedge:                              ; preds = %lor.end227.do.body174.backedge_crit_edge, %for.end221.do.body174.backedge_crit_edge, %if.then217.do.body174.backedge_crit_edge, %do.body174.do.body174.backedge_crit_edge
  br label %do.body174

lor.lhs.false202:                                 ; preds = %if.then217.lor.lhs.false202_crit_edge, %do.body174.lor.lhs.false202_crit_edge
  %70 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %71)
  %cmp204 = icmp ugt i32 %71, -1073741825
  br i1 %cmp204, label %lor.lhs.false202.if.end242thread-pre-split_crit_edge, label %land.lhs.true208

lor.lhs.false202.if.end242thread-pre-split_crit_edge: ; preds = %lor.lhs.false202
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end242thread-pre-split

land.lhs.true208:                                 ; preds = %lor.lhs.false202
  %call209 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call209, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call209, %add.i
  br i1 %cmp3.i, label %for.end221, label %if.then217

if.then217:                                       ; preds = %land.lhs.true208
  call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %72 = ptrtoint ptr %hhi137 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %hhi137, align 4
  %call200 = call i32 @regmap_read(ptr noundef %73, i32 noundef 800, ptr noundef nonnull %val) #5
  %tobool201.not = icmp eq i32 %call200, 0
  br i1 %tobool201.not, label %if.then217.lor.lhs.false202_crit_edge, label %if.then217.do.body174.backedge_crit_edge

if.then217.do.body174.backedge_crit_edge:         ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body174.backedge

if.then217.lor.lhs.false202_crit_edge:            ; preds = %if.then217
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false202

for.end221:                                       ; preds = %land.lhs.true208
  %74 = ptrtoint ptr %hhi137 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %hhi137, align 4
  %call214 = call i32 @regmap_read(ptr noundef %75, i32 noundef 800, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool223.not = icmp eq i32 %call214, 0
  br i1 %tobool223.not, label %lor.end227, label %for.end221.do.body174.backedge_crit_edge

for.end221.do.body174.backedge_crit_edge:         ; preds = %for.end221
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body174.backedge

lor.end227:                                       ; preds = %for.end221
  %76 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pr = load i32, ptr %val, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741825, i32 %.pr)
  %cmp226 = icmp ugt i32 %.pr, -1073741825
  br i1 %cmp226, label %lor.end227.if.end242thread-pre-split_crit_edge, label %lor.end227.do.body174.backedge_crit_edge

lor.end227.do.body174.backedge_crit_edge:         ; preds = %lor.end227
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.body174.backedge

lor.end227.if.end242thread-pre-split_crit_edge:   ; preds = %lor.end227
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end242thread-pre-split

if.end242thread-pre-split:                        ; preds = %lor.end227.if.end242thread-pre-split_crit_edge, %lor.lhs.false202.if.end242thread-pre-split_crit_edge, %if.then115.if.end242thread-pre-split_crit_edge, %lor.lhs.false100.if.end242thread-pre-split_crit_edge, %if.then58.if.end242thread-pre-split_crit_edge, %if.then44.if.end242thread-pre-split_crit_edge, %lor.lhs.false.if.end242thread-pre-split_crit_edge, %if.then.if.end242thread-pre-split_crit_edge
  %77 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %.pr563 = load i32, ptr %compat.i, align 4
  br label %if.end242

if.end242:                                        ; preds = %if.end242thread-pre-split, %entry.if.end242_crit_edge
  %78 = phi i32 [ %.pr563, %if.end242thread-pre-split ], [ %2, %entry.if.end242_crit_edge ]
  %79 = zext i32 %78 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %78, label %if.end242.if.end270_crit_edge [
    i32 0, label %if.then245
    i32 2, label %if.end242.if.then255_crit_edge
    i32 1, label %if.end242.if.then255_crit_edge617
    i32 3, label %if.then263
  ]

if.end242.if.then255_crit_edge617:                ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then255

if.end242.if.then255_crit_edge:                   ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then255

if.end242.if.end270_crit_edge:                    ; preds = %if.end242
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end270

if.then245:                                       ; preds = %if.end242
  %hhi246 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %80 = ptrtoint ptr %hhi246 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %hhi246, align 4
  %switch.tableidx = add i32 %od1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx)
  %82 = icmp ult i32 %switch.tableidx, 7
  br i1 %82, label %switch.lookup, label %if.then245.pll_od_to_reg.exit_crit_edge

if.then245.pll_od_to_reg.exit_crit_edge:          ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #7
  br label %pll_od_to_reg.exit

switch.lookup:                                    ; preds = %if.then245
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep = getelementptr inbounds [7 x i32], ptr @switch.table.meson_hdmi_pll_set_params, i32 0, i32 %switch.tableidx
  %83 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %83)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %pll_od_to_reg.exit

pll_od_to_reg.exit:                               ; preds = %switch.lookup, %if.then245.pll_od_to_reg.exit_crit_edge
  %retval.0.i440 = phi i32 [ 0, %if.then245.pll_od_to_reg.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  %call.i441 = call i32 @regmap_update_bits_base(ptr noundef %81, i32 noundef 804, i32 noundef 196608, i32 noundef %retval.0.i440, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end270

if.then255:                                       ; preds = %if.end242.if.then255_crit_edge, %if.end242.if.then255_crit_edge617
  %hhi256 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %84 = ptrtoint ptr %hhi256 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %hhi256, align 4
  %switch.tableidx582 = add i32 %od1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx582)
  %86 = icmp ult i32 %switch.tableidx582, 7
  br i1 %86, label %switch.lookup581, label %if.then255.pll_od_to_reg.exit452_crit_edge

if.then255.pll_od_to_reg.exit452_crit_edge:       ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #7
  br label %pll_od_to_reg.exit452

switch.lookup581:                                 ; preds = %if.then255
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep583 = getelementptr inbounds [7 x i32], ptr @switch.table.meson_hdmi_pll_set_params.15, i32 0, i32 %switch.tableidx582
  %87 = ptrtoint ptr %switch.gep583 to i32
  call void @__asan_load4_noabort(i32 %87)
  %switch.load584 = load i32, ptr %switch.gep583, align 4
  br label %pll_od_to_reg.exit452

pll_od_to_reg.exit452:                            ; preds = %switch.lookup581, %if.then255.pll_od_to_reg.exit452_crit_edge
  %retval.0.i451 = phi i32 [ 0, %if.then255.pll_od_to_reg.exit452_crit_edge ], [ %switch.load584, %switch.lookup581 ]
  %call.i453 = call i32 @regmap_update_bits_base(ptr noundef %85, i32 noundef 808, i32 noundef 6291456, i32 noundef %retval.0.i451, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end270

if.then263:                                       ; preds = %if.end242
  %hhi264 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %88 = ptrtoint ptr %hhi264 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %hhi264, align 4
  %switch.tableidx586 = add i32 %od1, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx586)
  %90 = icmp ult i32 %switch.tableidx586, 7
  br i1 %90, label %switch.lookup585, label %if.then263.pll_od_to_reg.exit461_crit_edge

if.then263.pll_od_to_reg.exit461_crit_edge:       ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #7
  br label %pll_od_to_reg.exit461

switch.lookup585:                                 ; preds = %if.then263
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep587 = getelementptr inbounds [7 x i32], ptr @switch.table.meson_hdmi_pll_set_params.16, i32 0, i32 %switch.tableidx586
  %91 = ptrtoint ptr %switch.gep587 to i32
  call void @__asan_load4_noabort(i32 %91)
  %switch.load588 = load i32, ptr %switch.gep587, align 4
  br label %pll_od_to_reg.exit461

pll_od_to_reg.exit461:                            ; preds = %switch.lookup585, %if.then263.pll_od_to_reg.exit461_crit_edge
  %retval.0.i460 = phi i32 [ 0, %if.then263.pll_od_to_reg.exit461_crit_edge ], [ %switch.load588, %switch.lookup585 ]
  %call.i462 = call i32 @regmap_update_bits_base(ptr noundef %89, i32 noundef 800, i32 noundef 196608, i32 noundef %retval.0.i460, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end270

if.end270:                                        ; preds = %pll_od_to_reg.exit461, %pll_od_to_reg.exit452, %pll_od_to_reg.exit, %if.end242.if.end270_crit_edge
  %92 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %compat.i, align 4
  %94 = zext i32 %93 to i64
  call void @__sanitizer_cov_trace_switch(i64 %94, ptr @__sancov_gen_cov_switch_values.34)
  switch i32 %93, label %if.end270.if.end299_crit_edge [
    i32 0, label %if.then273
    i32 2, label %if.end270.if.then284_crit_edge
    i32 1, label %if.end270.if.then284_crit_edge618
    i32 3, label %if.then292
  ]

if.end270.if.then284_crit_edge618:                ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then284

if.end270.if.then284_crit_edge:                   ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then284

if.end270.if.end299_crit_edge:                    ; preds = %if.end270
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end299

if.then273:                                       ; preds = %if.end270
  %hhi274 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %95 = ptrtoint ptr %hhi274 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %hhi274, align 4
  %switch.tableidx590 = add i32 %od2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx590)
  %97 = icmp ult i32 %switch.tableidx590, 7
  br i1 %97, label %switch.lookup589, label %if.then273.pll_od_to_reg.exit470_crit_edge

if.then273.pll_od_to_reg.exit470_crit_edge:       ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #7
  br label %pll_od_to_reg.exit470

switch.lookup589:                                 ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep591 = getelementptr inbounds [7 x i32], ptr @switch.table.meson_hdmi_pll_set_params.17, i32 0, i32 %switch.tableidx590
  %98 = ptrtoint ptr %switch.gep591 to i32
  call void @__asan_load4_noabort(i32 %98)
  %switch.load592 = load i32, ptr %switch.gep591, align 4
  br label %pll_od_to_reg.exit470

pll_od_to_reg.exit470:                            ; preds = %switch.lookup589, %if.then273.pll_od_to_reg.exit470_crit_edge
  %retval.0.i469 = phi i32 [ 0, %if.then273.pll_od_to_reg.exit470_crit_edge ], [ %switch.load592, %switch.lookup589 ]
  %call.i471 = call i32 @regmap_update_bits_base(ptr noundef %96, i32 noundef 804, i32 noundef 12582912, i32 noundef %retval.0.i469, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end299thread-pre-split

if.then284:                                       ; preds = %if.end270.if.then284_crit_edge, %if.end270.if.then284_crit_edge618
  %hhi285 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %99 = ptrtoint ptr %hhi285 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %hhi285, align 4
  %switch.tableidx594 = add i32 %od2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx594)
  %101 = icmp ult i32 %switch.tableidx594, 7
  br i1 %101, label %switch.lookup593, label %if.then284.pll_od_to_reg.exit482_crit_edge

if.then284.pll_od_to_reg.exit482_crit_edge:       ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #7
  br label %pll_od_to_reg.exit482

switch.lookup593:                                 ; preds = %if.then284
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep595 = getelementptr inbounds [7 x i32], ptr @switch.table.meson_hdmi_pll_set_params.18, i32 0, i32 %switch.tableidx594
  %102 = ptrtoint ptr %switch.gep595 to i32
  call void @__asan_load4_noabort(i32 %102)
  %switch.load596 = load i32, ptr %switch.gep595, align 4
  br label %pll_od_to_reg.exit482

pll_od_to_reg.exit482:                            ; preds = %switch.lookup593, %if.then284.pll_od_to_reg.exit482_crit_edge
  %retval.0.i481 = phi i32 [ 0, %if.then284.pll_od_to_reg.exit482_crit_edge ], [ %switch.load596, %switch.lookup593 ]
  %call.i483 = call i32 @regmap_update_bits_base(ptr noundef %100, i32 noundef 808, i32 noundef 25165824, i32 noundef %retval.0.i481, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end299thread-pre-split

if.then292:                                       ; preds = %if.end270
  %hhi293 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %103 = ptrtoint ptr %hhi293 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %hhi293, align 4
  %switch.tableidx598 = add i32 %od2, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx598)
  %105 = icmp ult i32 %switch.tableidx598, 7
  br i1 %105, label %switch.lookup597, label %if.then292.pll_od_to_reg.exit491_crit_edge

if.then292.pll_od_to_reg.exit491_crit_edge:       ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #7
  br label %pll_od_to_reg.exit491

switch.lookup597:                                 ; preds = %if.then292
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep599 = getelementptr inbounds [7 x i32], ptr @switch.table.meson_hdmi_pll_set_params.19, i32 0, i32 %switch.tableidx598
  %106 = ptrtoint ptr %switch.gep599 to i32
  call void @__asan_load4_noabort(i32 %106)
  %switch.load600 = load i32, ptr %switch.gep599, align 4
  br label %pll_od_to_reg.exit491

pll_od_to_reg.exit491:                            ; preds = %switch.lookup597, %if.then292.pll_od_to_reg.exit491_crit_edge
  %retval.0.i490 = phi i32 [ 0, %if.then292.pll_od_to_reg.exit491_crit_edge ], [ %switch.load600, %switch.lookup597 ]
  %call.i492 = call i32 @regmap_update_bits_base(ptr noundef %104, i32 noundef 800, i32 noundef 786432, i32 noundef %retval.0.i490, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end299thread-pre-split

if.end299thread-pre-split:                        ; preds = %pll_od_to_reg.exit491, %pll_od_to_reg.exit482, %pll_od_to_reg.exit470
  %107 = ptrtoint ptr %compat.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %.pr564 = load i32, ptr %compat.i, align 4
  br label %if.end299

if.end299:                                        ; preds = %if.end299thread-pre-split, %if.end270.if.end299_crit_edge
  %108 = phi i32 [ %.pr564, %if.end299thread-pre-split ], [ %93, %if.end270.if.end299_crit_edge ]
  %109 = zext i32 %108 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %108, label %if.end299.if.end328_crit_edge [
    i32 0, label %if.then302
    i32 2, label %if.end299.if.then313_crit_edge
    i32 1, label %if.end299.if.then313_crit_edge619
    i32 3, label %if.then321
  ]

if.end299.if.then313_crit_edge619:                ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then313

if.end299.if.then313_crit_edge:                   ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then313

if.end299.if.end328_crit_edge:                    ; preds = %if.end299
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end328

if.then302:                                       ; preds = %if.end299
  %hhi303 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %110 = ptrtoint ptr %hhi303 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %hhi303, align 4
  %switch.tableidx602 = add i32 %od3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx602)
  %112 = icmp ult i32 %switch.tableidx602, 7
  br i1 %112, label %switch.lookup601, label %if.then302.pll_od_to_reg.exit500_crit_edge

if.then302.pll_od_to_reg.exit500_crit_edge:       ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #7
  br label %pll_od_to_reg.exit500

switch.lookup601:                                 ; preds = %if.then302
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep603 = getelementptr inbounds [7 x i32], ptr @switch.table.meson_hdmi_pll_set_params.20, i32 0, i32 %switch.tableidx602
  %113 = ptrtoint ptr %switch.gep603 to i32
  call void @__asan_load4_noabort(i32 %113)
  %switch.load604 = load i32, ptr %switch.gep603, align 4
  br label %pll_od_to_reg.exit500

pll_od_to_reg.exit500:                            ; preds = %switch.lookup601, %if.then302.pll_od_to_reg.exit500_crit_edge
  %retval.0.i499 = phi i32 [ 0, %if.then302.pll_od_to_reg.exit500_crit_edge ], [ %switch.load604, %switch.lookup601 ]
  %call.i501 = call i32 @regmap_update_bits_base(ptr noundef %111, i32 noundef 804, i32 noundef 786432, i32 noundef %retval.0.i499, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end328

if.then313:                                       ; preds = %if.end299.if.then313_crit_edge, %if.end299.if.then313_crit_edge619
  %hhi314 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %114 = ptrtoint ptr %hhi314 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %hhi314, align 4
  %switch.tableidx606 = add i32 %od3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx606)
  %116 = icmp ult i32 %switch.tableidx606, 7
  br i1 %116, label %switch.lookup605, label %if.then313.pll_od_to_reg.exit512_crit_edge

if.then313.pll_od_to_reg.exit512_crit_edge:       ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #7
  br label %pll_od_to_reg.exit512

switch.lookup605:                                 ; preds = %if.then313
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep607 = getelementptr inbounds [7 x i32], ptr @switch.table.meson_hdmi_pll_set_params.21, i32 0, i32 %switch.tableidx606
  %117 = ptrtoint ptr %switch.gep607 to i32
  call void @__asan_load4_noabort(i32 %117)
  %switch.load608 = load i32, ptr %switch.gep607, align 4
  br label %pll_od_to_reg.exit512

pll_od_to_reg.exit512:                            ; preds = %switch.lookup605, %if.then313.pll_od_to_reg.exit512_crit_edge
  %retval.0.i511 = phi i32 [ 0, %if.then313.pll_od_to_reg.exit512_crit_edge ], [ %switch.load608, %switch.lookup605 ]
  %call.i513 = call i32 @regmap_update_bits_base(ptr noundef %115, i32 noundef 808, i32 noundef 1572864, i32 noundef %retval.0.i511, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end328

if.then321:                                       ; preds = %if.end299
  %hhi322 = getelementptr inbounds %struct.meson_drm, ptr %priv, i32 0, i32 3
  %118 = ptrtoint ptr %hhi322 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %hhi322, align 4
  %switch.tableidx610 = add i32 %od3, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %switch.tableidx610)
  %120 = icmp ult i32 %switch.tableidx610, 7
  br i1 %120, label %switch.lookup609, label %if.then321.pll_od_to_reg.exit521_crit_edge

if.then321.pll_od_to_reg.exit521_crit_edge:       ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #7
  br label %pll_od_to_reg.exit521

switch.lookup609:                                 ; preds = %if.then321
  call void @__sanitizer_cov_trace_pc() #7
  %switch.gep611 = getelementptr inbounds [7 x i32], ptr @switch.table.meson_hdmi_pll_set_params.22, i32 0, i32 %switch.tableidx610
  %121 = ptrtoint ptr %switch.gep611 to i32
  call void @__asan_load4_noabort(i32 %121)
  %switch.load612 = load i32, ptr %switch.gep611, align 4
  br label %pll_od_to_reg.exit521

pll_od_to_reg.exit521:                            ; preds = %switch.lookup609, %if.then321.pll_od_to_reg.exit521_crit_edge
  %retval.0.i520 = phi i32 [ 0, %if.then321.pll_od_to_reg.exit521_crit_edge ], [ %switch.load612, %switch.lookup609 ]
  %call.i522 = call i32 @regmap_update_bits_base(ptr noundef %119, i32 noundef 800, i32 noundef 3145728, i32 noundef %retval.0.i520, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  br label %if.end328

if.end328:                                        ; preds = %pll_od_to_reg.exit521, %pll_od_to_reg.exit512, %pll_od_to_reg.exit500, %if.end299.if.end328_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind readnone }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @params, !1, !"params", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/meson/meson_vclk.c", i32 373, i32 3}
!2 = !{ptr @__ksymtab_meson_vclk_dmt_supported_freq, !3, !"__ksymtab_meson_vclk_dmt_supported_freq", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/meson/meson_vclk.c", i32 740, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/meson/meson_vclk.c", i32 777, i32 2}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/meson/meson_vclk.c", i32 788, i32 3}
!8 = !{ptr @.str.2, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/meson/meson_vclk.c", i32 791, i32 3}
!10 = !{ptr @__ksymtab_meson_vclk_vic_supported_freq, !11, !"__ksymtab_meson_vclk_vic_supported_freq", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/meson/meson_vclk.c", i32 806, i32 1}
!12 = !{ptr @.str.3, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/meson/meson_vclk.c", i32 1058, i32 3}
!14 = !{ptr @.str.4, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @meson_vclk_setup._entry, !13, !"_entry", i1 false, i1 false}
!17 = !{ptr @meson_vclk_setup._entry_ptr, !13, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.7, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/meson/meson_vclk.c", i32 1066, i32 3}
!20 = !{ptr @meson_vclk_setup._entry.6, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @meson_vclk_setup._entry_ptr.8, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/meson/meson_vclk.c", i32 1101, i32 3}
!24 = !{ptr @meson_vclk_setup._entry.9, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @meson_vclk_setup._entry_ptr.11, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @__ksymtab_meson_vclk_setup, !27, !"__ksymtab_meson_vclk_setup", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/meson/meson_vclk.c", i32 1111, i32 1}
!28 = !{ptr @.str.12, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/meson/meson_vclk.c", i32 709, i32 3}
!30 = !{ptr @.str.13, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/meson/meson_vclk.c", i32 759, i32 3}
!32 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/meson/meson_vclk.c", i32 767, i32 2}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!43 = !{!"auto-init"}
!44 = !{!"branch_weights", i32 2000, i32 1}
!45 = !{i64 2148279817, i64 2148280097, i64 2148280431, i64 2148280765}
