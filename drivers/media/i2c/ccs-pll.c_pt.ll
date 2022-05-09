; ModuleID = '/llk/IR_all_yes/drivers/media/i2c/ccs-pll.c_pt.bc'
source_filename = "../drivers/media/i2c/ccs-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+ccs_pll_calculate\22, \22a\22\09"
module asm "\09.weak\09__crc_ccs_pll_calculate\09\09\09\09"
module asm "\09.long\09__crc_ccs_pll_calculate\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_ccs_pll_calculate:\09\09\09\09\09"
module asm "\09.asciz \09\22ccs_pll_calculate\22\09\09\09\09\09"
module asm "__kstrtabns_ccs_pll_calculate:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.ccs_pll = type { i8, i8, i8, %struct.anon.43, i8, i8, i8, i8, i8, i8, i16, i32, i32, %struct.ccs_pll_branch_fr, %struct.ccs_pll_branch_bk, %struct.ccs_pll_branch_fr, %struct.ccs_pll_branch_bk, i32, i32 }
%struct.anon.43 = type { i8 }
%struct.ccs_pll_branch_fr = type { i16, i16, i32, i32 }
%struct.ccs_pll_branch_bk = type { i16, i16, i32, i32 }
%struct.ccs_pll_limits = type { i32, i32, %struct.ccs_pll_branch_limits_fr, %struct.ccs_pll_branch_limits_bk, %struct.ccs_pll_branch_limits_fr, %struct.ccs_pll_branch_limits_bk, i32, i32 }
%struct.ccs_pll_branch_limits_fr = type { i16, i16, i32, i32, i16, i16, i32, i32 }
%struct.ccs_pll_branch_limits_bk = type { i16, i16, i32, i32, i16, i16, i32, i32 }
%struct.anon.45 = type { ptr, ptr, i32 }

@ccs_pll_calculate.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 0, i8 -66, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ccs_pll\00", [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ccs_pll_calculate\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/media/i2c/ccs-pll.c\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"op_pix_clk_div not an integer (bpp %u, op lanes %u, lanes %u, l %u)\0A\00", [59 x i8] zeroinitializer }, align 32
@ccs_pll_calculate.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 0, i8 -65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vt_lanes: %u\0A\00", [18 x i8] zeroinitializer }, align 32
@ccs_pll_calculate.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.5, i8 0, i8 -64, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"op_lanes: %u\0A\00", [18 x i8] zeroinitializer }, align 32
@ccs_pll_calculate.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, i8 0, i8 -64, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"binning: %ux%u\0A\00", [16 x i8] zeroinitializer }, align 32
@ccs_pll_calculate.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.7, i8 0, i8 -58, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"min / max op_pre_pll_clk_div: %u / %u\0A\00", [57 x i8] zeroinitializer }, align 32
@ccs_pll_calculate.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 0, i8 -56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"pre-pll check: min / max op_pre_pll_clk_div: %u / %u\0A\00", [42 x i8] zeroinitializer }, align 32
@ccs_pll_calculate.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 0, i8 -54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"mul %u / div %u\0A\00", [47 x i8] zeroinitializer }, align 32
@ccs_pll_calculate.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.10, i8 0, i8 -52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"pll_op check: min / max op_pre_pll_clk_div: %u / %u\0A\00", [43 x i8] zeroinitializer }, align 32
@ccs_pll_calculate.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.11, i8 0, i8 -41, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"unable to compute pre_pll divisor\0A\00", [61 x i8] zeroinitializer }, align 32
@__kstrtab_ccs_pll_calculate = external dso_local constant [0 x i8], align 1
@__kstrtabns_ccs_pll_calculate = external dso_local constant [0 x i8], align 1
@__ksymtab_ccs_pll_calculate = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @ccs_pll_calculate to i32), ptr @__kstrtab_ccs_pll_calculate, ptr @__kstrtabns_ccs_pll_calculate }, section "___ksymtab_gpl+ccs_pll_calculate", align 4
@__UNIQUE_ID_author265 = internal constant [59 x i8] c"ccs_pll.author=Sakari Ailus <sakari.ailus@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description266 = internal constant [64 x i8] c"ccs_pll.description=Generic MIPI CCS/SMIA/SMIA++ PLL calculator\00", section ".modinfo", align 1
@__UNIQUE_ID_file267 = internal constant [39 x i8] c"ccs_pll.file=drivers/media/i2c/ccs-pll\00", section ".modinfo", align 1
@__UNIQUE_ID_license268 = internal constant [20 x i8] c"ccs_pll.license=GPL\00", section ".modinfo", align 1
@ccs_pll_calculate_op.__UNIQUE_ID_ddebug228 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ccs_pll_calculate_op\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"op_pre_pll_clk_div %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_op.__UNIQUE_ID_ddebug229 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.14, i8 0, i8 -103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"more_mul_max: max_op_pll_multiplier check: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_op.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.15, i8 0, i8 -101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"more_mul_max: max_pll_op_clk_freq_hz check: %u\0A\00", [48 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_op.__UNIQUE_ID_ddebug235 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.16, i8 0, i8 -99, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"more_mul_max: max_op_sys_clk_div check: %u\0A\00", [52 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_op.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.17, i8 0, i8 -98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"more_mul_max: min_pll_multiplier check: %u\0A\00", [52 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_op.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.18, i8 0, i8 -96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"more_mul_min: min_op_pll_op_clk_freq_hz check: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_op.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.19, i8 0, i8 -95, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"more_mul_min: min_op_pll_multiplier check: %u\0A\00", [49 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_op.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.20, i8 0, i8 -94, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"unable to compute more_mul_min and more_mul_max\0A\00", [47 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_op.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.21, i8 0, i8 -93, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"more_mul_factor: %u\0A\00", [43 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_op.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.22, i8 0, i8 -92, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"more_mul_factor: min_op_sys_clk_div: %d\0A\00", [55 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_op.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.23, i8 0, i8 -91, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"final more_mul: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_op.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.24, i8 0, i8 -90, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"final more_mul is bad, max %u\0A\00", [33 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_op.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.25, i8 0, i8 -89, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"op_sys_clk_div: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_op.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.12, ptr @.str.2, ptr @.str.26, i8 0, i8 -82, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.26 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"op_pix_clk_div: %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pre_pll_clk_div\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pll_ip_clk_freq_hz\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll_multiplier\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"pll_op_clk_freq_hz\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"op\00", [29 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"vt\00", [29 x i8] zeroinitializer }, align 32
@bounds_check.__UNIQUE_ID_ddebug172 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.2, ptr @.str.34, i8 0, i8 14, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"bounds_check\00", [19 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s_%s out of bounds: %d (%d--%d)\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"op_sys_clk_div\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sys_clk_freq_hz\00", [16 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"sys_clk_div\00", [20 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pix_clk_freq_hz\00", [16 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_vt.__UNIQUE_ID_ddebug214 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.40, i8 0, i8 119, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ccs_pll_calculate_vt\00", [43 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"vt_op_binning_div: %u\0A\00", [41 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_vt.__UNIQUE_ID_ddebug215 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.41, i8 0, i8 122, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"scale_m: %u\0A\00", [19 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_vt.__UNIQUE_ID_ddebug216 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.42, i8 0, i8 125, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"min_vt_div: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_vt.__UNIQUE_ID_ddebug219 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.43, i8 0, i8 126, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"min_vt_div: max_vt_pix_clk_freq_hz: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_vt.__UNIQUE_ID_ddebug222 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.44, i8 0, i8 127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"min_vt_div: min_vt_clk_div: %u\0A\00", [32 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_vt.__UNIQUE_ID_ddebug223 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.45, i8 0, i8 -128, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"max_vt_div: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_vt.__UNIQUE_ID_ddebug226 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.46, i8 0, i8 -127, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"max_vt_div: min_vt_pix_clk_freq_hz: %u\0A\00", [56 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_vt.__UNIQUE_ID_ddebug227 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.39, ptr @.str.2, ptr @.str.47, i8 0, i8 -120, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"pix_div %u too small or too big (%u--%u)\0A\00", [54 x i8] zeroinitializer }, align 32
@ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ccs_pll_find_vt_sys_div\00", [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"min_sys_div: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug190 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.50, i8 0, i8 66, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"min_sys_div: max_vt_pix_clk_div: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug193 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.51, i8 0, i8 67, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"min_sys_div: max_pll_op_clk_freq_hz: %u\0A\00", [55 x i8] zeroinitializer }, align 32
@ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug194 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.52, i8 0, i8 67, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"min_sys_div: one or even: %u\0A\00", [34 x i8] zeroinitializer }, align 32
@ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug195 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.53, i8 0, i8 68, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"max_sys_div: %u\0A\00", [47 x i8] zeroinitializer }, align 32
@ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug198 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.54, i8 0, i8 69, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"max_sys_div: min_vt_pix_clk_div: %u\0A\00", [59 x i8] zeroinitializer }, align 32
@ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug201 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.48, ptr @.str.2, ptr @.str.55, i8 0, i8 70, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"max_sys_div: min_vt_pix_clk_freq_hz: %u\0A\00", [55 x i8] zeroinitializer }, align 32
@check_ext_bounds.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 0, i8 59, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"check_ext_bounds\00", [47 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"device does not support derating\0A\00", [62 x i8] zeroinitializer }, align 32
@check_ext_bounds.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.56, ptr @.str.2, ptr @.str.58, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"device does not support overrating\0A\00", [60 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug212 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 100, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ccs_pll_calculate_vt_tree\00", [38 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"vt min/max_pre_pll_clk_div: %u,%u\0A\00", [61 x i8] zeroinitializer }, align 32
@ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug213 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.2, ptr @.str.61, i8 0, i8 104, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"vt pre-div/mul/div: %u,%u,%u\0A\00", [34 x i8] zeroinitializer }, align 32
@__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug202 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.63, i8 0, i8 76, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"__ccs_pll_calculate_vt_tree\00", [36 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"vt_pll_ip_clk_freq_hz %u\0A\00", [38 x i8] zeroinitializer }, align 32
@__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug203 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.64, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"more_mul: %u\0A\00", [18 x i8] zeroinitializer }, align 32
@__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug204 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.65, i8 0, i8 78, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"more_mul2: %u\0A\00", [17 x i8] zeroinitializer }, align 32
@__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug205 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.66, i8 0, i8 82, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.66 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"vt min/max_sys_div: %u,%u\0A\00", [37 x i8] zeroinitializer }, align 32
@__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug206 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.47, i8 0, i8 86, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug207 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.2, ptr @.str.67, i8 0, i8 88, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sys/pix/best_pix: %u,%u,%u\0A\00", [36 x i8] zeroinitializer }, align 32
@print_pll.__UNIQUE_ID_ddebug173 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.69, i8 0, i8 22, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"print_pll\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ext_clk_freq_hz\09\09%u\0A\00", [43 x i8] zeroinitializer }, align 32
@print_pll.__UNIQUE_ID_ddebug174 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.70, i8 0, i8 24, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s_pre_pll_clk_div\09\09%u\0A\00", [40 x i8] zeroinitializer }, align 32
@print_pll.__UNIQUE_ID_ddebug175 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.71, i8 0, i8 25, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s_pll_multiplier\09\09%u\0A\00", [41 x i8] zeroinitializer }, align 32
@print_pll.__UNIQUE_ID_ddebug176 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.72, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s_pll_ip_clk_freq_hz\09%u\0A\00", [38 x i8] zeroinitializer }, align 32
@print_pll.__UNIQUE_ID_ddebug177 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.73, i8 0, i8 26, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s_pll_op_clk_freq_hz\09%u\0A\00", [38 x i8] zeroinitializer }, align 32
@print_pll.__UNIQUE_ID_ddebug178 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.74, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s_sys_clk_div\09\09%u\0A\00", [44 x i8] zeroinitializer }, align 32
@print_pll.__UNIQUE_ID_ddebug179 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.75, i8 0, i8 28, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s_pix_clk_div\09\09%u\0A\00", [44 x i8] zeroinitializer }, align 32
@print_pll.__UNIQUE_ID_ddebug180 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.76, i8 0, i8 29, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s_sys_clk_freq_hz\09%u\0A\00", [41 x i8] zeroinitializer }, align 32
@print_pll.__UNIQUE_ID_ddebug181 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.77, i8 0, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s_pix_clk_freq_hz\09%u\0A\00", [41 x i8] zeroinitializer }, align 32
@print_pll.__UNIQUE_ID_ddebug182 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.78, i8 0, i8 30, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.78 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"pixel rate in pixel array:\09%u\0A\00", [33 x i8] zeroinitializer }, align 32
@print_pll.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.79, i8 0, i8 31, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"pixel rate on CSI-2 bus:\09%u\0A\00", [35 x i8] zeroinitializer }, align 32
@print_pll.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.68, ptr @.str.2, ptr @.str.80, i8 0, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.80 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"flags%s%s%s%s%s%s%s%s%s\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" lane-speed\00", [20 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" link-decoupled\00", [16 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c" ext-ip-pll-divider\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c" flexible-op-pix-div\00", [43 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" fifo-derating\00", [17 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c" fifo-overrating\00", [47 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" dual-pll\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" op-sys-ddr\00", [20 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c" op-pix-ddr\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 762, i32 3 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 767, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 768, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 770, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 791, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 802, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 809, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 818, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 860, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 609, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 613, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 622, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 628, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 632, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 639, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 644, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 648, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 654, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 656, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 662, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 664, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 670, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 696, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 170, i32 40 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 176, i32 12 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 181, i32 12 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 186, i32 12 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 68, i32 10 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 70, i32 10 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 55, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 213, i32 36 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 218, i32 12 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 223, i32 12 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 228, i32 12 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 476, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 489, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 502, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 506, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 510, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 513, i32 2 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 517, i32 2 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 540, i32 5 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 261, i32 2 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 265, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 269, i32 2 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 271, i32 2 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 274, i32 2 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 278, i32 2 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 282, i32 2 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 237, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 243, i32 3 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 401, i32 2 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 416, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 305, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 310, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 312, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 330, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 351, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 90, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 97, i32 4 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 99, i32 4 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 102, i32 4 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 104, i32 4 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 110, i32 4 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 112, i32 4 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 115, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 117, i32 4 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 122, i32 2 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 124, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.362 = private constant [31 x i8] c"../drivers/media/i2c/ccs-pll.c\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.362, i32 127, i32 2 }
@llvm.compiler.used = appending global [96 x ptr] [ptr @__UNIQUE_ID_author265, ptr @__UNIQUE_ID_description266, ptr @__UNIQUE_ID_file267, ptr @__UNIQUE_ID_license268, ptr @__ksymtab_ccs_pll_calculate, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @ccs_pll_calculate(ptr noundef %dev, ptr nocapture noundef readonly %lim, ptr noundef %pll) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pll to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %pll, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %1)
  %cmp = icmp eq i8 %1, 1
  %cond = select i1 %cmp, i32 7, i32 16
  %op_bits_per_lane = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 9
  %2 = ptrtoint ptr %op_bits_per_lane to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %op_bits_per_lane, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool3.not = icmp eq i8 %3, 0
  br i1 %tobool3.not, label %entry.lor.end.thread_crit_edge, label %lor.end

entry.lor.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.thread

lor.end:                                          ; preds = %entry
  %bits_per_pixel = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 8
  %4 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bits_per_pixel, align 4
  call void @__sanitizer_cov_trace_cmp1(i8 %3, i8 %5)
  %cmp7.not = icmp ult i8 %3, %5
  br i1 %cmp7.not, label %lor.end._crit_edge, label %lor.end.lor.end.thread_crit_edge

lor.end.lor.end.thread_crit_edge:                 ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.end.thread

lor.end._crit_edge:                               ; preds = %lor.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %6

lor.end.thread:                                   ; preds = %lor.end.lor.end.thread_crit_edge, %entry.lor.end.thread_crit_edge
  br label %6

6:                                                ; preds = %lor.end.thread, %lor.end._crit_edge
  %7 = phi i32 [ 1, %lor.end.thread ], [ 2, %lor.end._crit_edge ]
  %flags = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 10
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %flags, align 2
  %10 = and i16 %9, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %10)
  %tobool11.not = icmp eq i16 %10, 0
  br i1 %tobool11.not, label %if.then, label %.if.end_crit_edge

.if.end_crit_edge:                                ; preds = %6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %6
  call void @__sanitizer_cov_trace_pc() #8
  %op_lanes = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 1
  %11 = ptrtoint ptr %op_lanes to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %op_lanes, align 1
  %vt_lanes = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 2
  %12 = ptrtoint ptr %vt_lanes to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %vt_lanes, align 2
  br label %if.end

if.end:                                           ; preds = %if.then, %.if.end_crit_edge
  %conv13 = zext i16 %9 to i32
  %and14 = and i32 %conv13, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %op_fr = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 4
  %op_bk = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 5
  %op_fr17 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 15
  %op_bk18 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 16
  br label %if.end32

if.else:                                          ; preds = %if.end
  %and21 = and i32 %conv13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  %vt_fr27 = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 2
  br i1 %tobool22.not, label %if.else26, label %if.then23

if.then23:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %vt_bk = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3
  %vt_fr24 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 13
  %vt_bk25 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 14
  br label %if.end32

if.else26:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %op_bk28 = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 5
  %vt_fr29 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 13
  %op_bk30 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 16
  br label %if.end32

if.end32:                                         ; preds = %if.else26, %if.then23, %if.then16
  %op_pll_bk.0 = phi ptr [ %op_bk18, %if.then16 ], [ %vt_bk25, %if.then23 ], [ %op_bk30, %if.else26 ]
  %op_pll_fr.0 = phi ptr [ %op_fr17, %if.then16 ], [ %vt_fr24, %if.then23 ], [ %vt_fr29, %if.else26 ]
  %op_lim_bk.0 = phi ptr [ %op_bk, %if.then16 ], [ %vt_bk, %if.then23 ], [ %op_bk28, %if.else26 ]
  %op_lim_fr.0 = phi ptr [ %op_fr, %if.then16 ], [ %vt_fr27, %if.then23 ], [ %vt_fr27, %if.else26 ]
  %op_lanes33 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 1
  %13 = ptrtoint ptr %op_lanes33 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %op_lanes33, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool34.not = icmp eq i8 %14, 0
  br i1 %tobool34.not, label %if.end32.cleanup_crit_edge, label %lor.lhs.false

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end32
  %vt_lanes35 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 2
  %15 = ptrtoint ptr %vt_lanes35 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %vt_lanes35, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool36.not = icmp eq i8 %16, 0
  br i1 %tobool36.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false37

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false37:                                  ; preds = %lor.lhs.false
  %bits_per_pixel38 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 8
  %17 = ptrtoint ptr %bits_per_pixel38 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %bits_per_pixel38, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool39.not = icmp eq i8 %18, 0
  br i1 %tobool39.not, label %lor.lhs.false37.cleanup_crit_edge, label %lor.lhs.false40

lor.lhs.false37.cleanup_crit_edge:                ; preds = %lor.lhs.false37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false40:                                  ; preds = %lor.lhs.false37
  %ext_clk_freq_hz = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 12
  %19 = ptrtoint ptr %ext_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ext_clk_freq_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool41.not = icmp eq i32 %20, 0
  br i1 %tobool41.not, label %lor.lhs.false40.cleanup_crit_edge, label %lor.lhs.false42

lor.lhs.false40.cleanup_crit_edge:                ; preds = %lor.lhs.false40
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false42:                                  ; preds = %lor.lhs.false40
  %link_freq = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 11
  %21 = ptrtoint ptr %link_freq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %link_freq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool43.not = icmp eq i32 %22, 0
  br i1 %tobool43.not, label %lor.lhs.false42.cleanup_crit_edge, label %lor.lhs.false44

lor.lhs.false42.cleanup_crit_edge:                ; preds = %lor.lhs.false42
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false44:                                  ; preds = %lor.lhs.false42
  %scale_m = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 6
  %23 = ptrtoint ptr %scale_m to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %scale_m, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool45.not = icmp eq i8 %24, 0
  br i1 %tobool45.not, label %lor.lhs.false44.cleanup_crit_edge, label %lor.lhs.false46

lor.lhs.false44.cleanup_crit_edge:                ; preds = %lor.lhs.false44
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false46:                                  ; preds = %lor.lhs.false44
  %min_pll_ip_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %op_lim_fr.0, i32 0, i32 2
  %25 = ptrtoint ptr %min_pll_ip_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %min_pll_ip_clk_freq_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %tobool47.not = icmp eq i32 %26, 0
  br i1 %tobool47.not, label %lor.lhs.false46.cleanup_crit_edge, label %lor.lhs.false48

lor.lhs.false46.cleanup_crit_edge:                ; preds = %lor.lhs.false46
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false48:                                  ; preds = %lor.lhs.false46
  %max_pll_ip_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %op_lim_fr.0, i32 0, i32 3
  %27 = ptrtoint ptr %max_pll_ip_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %max_pll_ip_clk_freq_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool49.not = icmp eq i32 %28, 0
  br i1 %tobool49.not, label %lor.lhs.false48.cleanup_crit_edge, label %lor.lhs.false50

lor.lhs.false48.cleanup_crit_edge:                ; preds = %lor.lhs.false48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false50:                                  ; preds = %lor.lhs.false48
  %min_pll_op_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %op_lim_fr.0, i32 0, i32 6
  %29 = ptrtoint ptr %min_pll_op_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %min_pll_op_clk_freq_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool51.not = icmp eq i32 %30, 0
  br i1 %tobool51.not, label %lor.lhs.false50.cleanup_crit_edge, label %lor.lhs.false52

lor.lhs.false50.cleanup_crit_edge:                ; preds = %lor.lhs.false50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false52:                                  ; preds = %lor.lhs.false50
  %max_pll_op_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %op_lim_fr.0, i32 0, i32 7
  %31 = ptrtoint ptr %max_pll_op_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %max_pll_op_clk_freq_hz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool53.not = icmp eq i32 %32, 0
  br i1 %tobool53.not, label %lor.lhs.false52.cleanup_crit_edge, label %lor.lhs.false54

lor.lhs.false52.cleanup_crit_edge:                ; preds = %lor.lhs.false52
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false54:                                  ; preds = %lor.lhs.false52
  %max_sys_clk_div = getelementptr inbounds %struct.ccs_pll_branch_limits_bk, ptr %op_lim_bk.0, i32 0, i32 1
  %33 = ptrtoint ptr %max_sys_clk_div to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %max_sys_clk_div, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %34)
  %tobool55.not = icmp eq i16 %34, 0
  br i1 %tobool55.not, label %lor.lhs.false54.cleanup_crit_edge, label %lor.lhs.false56

lor.lhs.false54.cleanup_crit_edge:                ; preds = %lor.lhs.false54
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false56:                                  ; preds = %lor.lhs.false54
  %max_pll_multiplier = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %op_lim_fr.0, i32 0, i32 5
  %35 = ptrtoint ptr %max_pll_multiplier to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %max_pll_multiplier, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool57.not = icmp eq i16 %36, 0
  br i1 %tobool57.not, label %lor.lhs.false56.cleanup_crit_edge, label %if.end59

lor.lhs.false56.cleanup_crit_edge:                ; preds = %lor.lhs.false56
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end59:                                         ; preds = %lor.lhs.false56
  %and62 = and i32 %conv13, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and62)
  %tobool63.not = icmp eq i32 %and62, 0
  br i1 %tobool63.not, label %land.lhs.true, label %if.end59.do.body90_crit_edge

if.end59.do.body90_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body90

land.lhs.true:                                    ; preds = %if.end59
  %conv65 = zext i8 %18 to i16
  %conv67 = zext i8 %14 to i16
  %mul68 = mul nuw i16 %conv65, %conv67
  %csi2 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 3
  %37 = ptrtoint ptr %csi2 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %csi2, align 1
  %conv69 = zext i8 %38 to i32
  %mul70 = mul nuw nsw i32 %7, %conv69
  %and.i = lshr i32 %conv13, 10
  %and.lobit.i = and i32 %and.i, 1
  %shl = shl nuw nsw i32 %mul70, %and.lobit.i
  %rem.rhs.trunc = trunc i32 %shl to i16
  %rem611 = urem i16 %mul68, %rem.rhs.trunc
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %rem611)
  %tobool73.not = icmp eq i16 %rem611, 0
  br i1 %tobool73.not, label %land.lhs.true.do.body90_crit_edge, label %do.body

land.lhs.true.do.body90_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body90

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate, %if.then80)) #6
          to label %cleanup [label %if.then80], !srcloc !241

if.then80:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %bits_per_pixel38 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bits_per_pixel38, align 4
  %conv82 = zext i8 %40 to i32
  %41 = ptrtoint ptr %op_lanes33 to i32
  call void @__asan_load1_noabort(i32 %41)
  %42 = load i8, ptr %op_lanes33, align 1
  %conv84 = zext i8 %42 to i32
  %43 = ptrtoint ptr %csi2 to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %csi2, align 1
  %conv87 = zext i8 %44 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate.__UNIQUE_ID_ddebug250, ptr noundef %dev, ptr noundef nonnull @.str.3, i32 noundef %conv82, i32 noundef %conv84, i32 noundef %conv87, i32 noundef %7) #6
  br label %cleanup

do.body90:                                        ; preds = %land.lhs.true.do.body90_crit_edge, %if.end59.do.body90_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate, %if.then102)) #6
          to label %do.body108 [label %if.then102], !srcloc !241

if.then102:                                       ; preds = %do.body90
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %vt_lanes35 to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %vt_lanes35, align 2
  %conv104 = zext i8 %46 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate.__UNIQUE_ID_ddebug251, ptr noundef %dev, ptr noundef nonnull @.str.4, i32 noundef %conv104) #6
  br label %do.body108

do.body108:                                       ; preds = %if.then102, %do.body90
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate, %if.then120)) #6
          to label %do.body126 [label %if.then120], !srcloc !241

if.then120:                                       ; preds = %do.body108
  call void @__sanitizer_cov_trace_pc() #8
  %47 = ptrtoint ptr %op_lanes33 to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %op_lanes33, align 1
  %conv122 = zext i8 %48 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate.__UNIQUE_ID_ddebug252, ptr noundef %dev, ptr noundef nonnull @.str.5, i32 noundef %conv122) #6
  br label %do.body126

do.body126:                                       ; preds = %if.then120, %do.body108
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate, %if.then138)) #6
          to label %do.end143 [label %if.then138], !srcloc !241

if.then138:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #8
  %binning_horizontal = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 4
  %49 = ptrtoint ptr %binning_horizontal to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %binning_horizontal, align 4
  %conv139 = zext i8 %50 to i32
  %binning_vertical = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 5
  %51 = ptrtoint ptr %binning_vertical to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %binning_vertical, align 1
  %conv140 = zext i8 %52 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate.__UNIQUE_ID_ddebug253, ptr noundef %dev, ptr noundef nonnull @.str.6, i32 noundef %conv139, i32 noundef %conv140) #6
  br label %do.end143

do.end143:                                        ; preds = %if.then138, %do.body126
  %53 = ptrtoint ptr %pll to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %pll, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %54)
  %switch = icmp ult i8 %54, 2
  br i1 %switch, label %sw.bb, label %do.end143.cleanup_crit_edge

do.end143.cleanup_crit_edge:                      ; preds = %do.end143
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb:                                            ; preds = %do.end143
  %55 = ptrtoint ptr %link_freq to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %link_freq, align 4
  %mul147 = shl i32 %56, 1
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %flags, align 2
  %59 = and i16 %58, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %59)
  %tobool151.not = icmp eq i16 %59, 0
  %csi2152 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 3
  %60 = ptrtoint ptr %csi2152 to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %csi2152, align 1
  %conv154 = zext i8 %61 to i32
  %mul156600 = select i1 %tobool151.not, i32 %conv154, i32 1
  %mul156602 = mul i32 %mul147, %mul156600
  %conv157603 = zext i32 %mul156602 to i64
  %62 = zext i8 %61 to i64
  %63 = select i1 %tobool151.not, i64 1, i64 %62
  %mul170 = mul nuw nsw i64 %63, %conv157603
  %mul171 = shl nuw nsw i64 %mul170, 4
  %64 = ptrtoint ptr %bits_per_pixel38 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %bits_per_pixel38, align 4
  %conv173 = zext i8 %65 to i32
  %mul174 = mul nuw nsw i32 %7, %cond
  %mul175 = mul nuw nsw i32 %mul174, %conv173
  call void @__sanitizer_cov_trace_const_cmp8(i64 268435456, i64 %mul170)
  %cmp164.i.i = icmp ult i64 %mul170, 268435456
  br i1 %cmp164.i.i, label %if.then168.i.i, label %if.else174.i.i, !prof !242

if.then168.i.i:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %conv169.i.i = trunc i64 %mul171 to i32
  %div172.i.i = udiv i32 %conv169.i.i, %mul175
  br label %div_u64.exit

if.else174.i.i:                                   ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  %66 = tail call { i64, i64 } asm ".ifnc $0,r0; .ifnc $0r0,fpr11; .ifnc $0r0,r11fp; .ifnc $0r0,ipr12; .ifnc $0r0,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $1,r2; .ifnc $1r2,fpr11; .ifnc $1r2,r11fp; .ifnc $1r2,ipr12; .ifnc $1r2,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09.ifnc $2,r4; .ifnc $2r4,fpr11; .ifnc $2r4,r11fp; .ifnc $2r4,ipr12; .ifnc $2r4,r12ip; .err; .endif; .endif; .endif; .endif; .endif\0A\09bl\09__do_div64", "={r0},={r2},{r4},{r0},~{r12},~{lr},~{cc}"(i32 %mul175, i64 %mul171) #9, !srcloc !243
  %asmresult1.i.i.i = extractvalue { i64, i64 } %66, 1
  %extract.t614 = trunc i64 %asmresult1.i.i.i to i32
  br label %div_u64.exit

div_u64.exit:                                     ; preds = %if.else174.i.i, %if.then168.i.i
  %dividend.addr.0.i.i.off0 = phi i32 [ %div172.i.i, %if.then168.i.i ], [ %extract.t614, %if.else174.i.i ]
  %pixel_rate_csi = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 17
  %67 = ptrtoint ptr %pixel_rate_csi to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %dividend.addr.0.i.i.off0, ptr %pixel_rate_csi, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate, %if.then190)) #6
          to label %do.end195 [label %if.then190], !srcloc !241

if.then190:                                       ; preds = %div_u64.exit
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %op_lim_fr.0 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %op_lim_fr.0, align 4
  %conv191 = zext i16 %69 to i32
  %max_pre_pll_clk_div = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %op_lim_fr.0, i32 0, i32 1
  %70 = ptrtoint ptr %max_pre_pll_clk_div to i32
  call void @__asan_load2_noabort(i32 %70)
  %71 = load i16, ptr %max_pre_pll_clk_div, align 2
  %conv192 = zext i16 %71 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate.__UNIQUE_ID_ddebug254, ptr noundef %dev, ptr noundef nonnull @.str.7, i32 noundef %conv191, i32 noundef %conv192) #6
  br label %do.end195

do.end195:                                        ; preds = %if.then190, %div_u64.exit
  %max_pre_pll_clk_div196 = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %op_lim_fr.0, i32 0, i32 1
  %72 = ptrtoint ptr %max_pre_pll_clk_div196 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %max_pre_pll_clk_div196, align 2
  %74 = ptrtoint ptr %ext_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ext_clk_freq_hz, align 4
  %76 = ptrtoint ptr %min_pll_ip_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %min_pll_ip_clk_freq_hz, align 4
  %div199 = udiv i32 %75, %77
  %conv203 = zext i16 %73 to i32
  %and.i583.op = and i32 %div199, 65534
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div199)
  %cmp.i.inv = icmp ugt i32 %div199, 1
  %conv204 = select i1 %cmp.i.inv, i32 %and.i583.op, i32 1
  %78 = tail call i32 @llvm.umin.i32(i32 %conv204, i32 %conv203)
  %79 = ptrtoint ptr %op_lim_fr.0 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %op_lim_fr.0, align 4
  %81 = ptrtoint ptr %max_pll_ip_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %max_pll_ip_clk_freq_hz, align 4
  %add = add i32 %75, -1
  %sub = add i32 %add, %82
  %div218 = udiv i32 %sub, %82
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div218)
  %cmp.i584 = icmp eq i32 %div218, 1
  %add.i = add i32 %div218, 1
  %and.i585 = and i32 %add.i, 65534
  %retval.0.i586 = select i1 %cmp.i584, i32 1, i32 %and.i585
  %conv222 = zext i16 %80 to i32
  %83 = tail call i32 @llvm.umax.i32(i32 %retval.0.i586, i32 %conv222)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate, %if.then245)) #6
          to label %do.end250 [label %if.then245], !srcloc !241

if.then245:                                       ; preds = %do.end195
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate.__UNIQUE_ID_ddebug259, ptr noundef %dev, ptr noundef nonnull @.str.8, i32 noundef %83, i32 noundef %78) #6
  br label %do.end250

do.end250:                                        ; preds = %if.then245, %do.end195
  %84 = ptrtoint ptr %ext_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %ext_clk_freq_hz, align 4
  %86 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %flags, align 2
  %88 = lshr i16 %87, 10
  %89 = and i16 %88, 1
  %and.lobit.i588 = zext i16 %89 to i32
  %shl255 = shl i32 %85, %and.lobit.i588
  %call256 = tail call i32 @gcd(i32 noundef %mul156602, i32 noundef %shl255) #10
  %div257 = udiv i32 %mul156602, %call256
  %div263 = udiv i32 %shl255, %call256
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate, %if.then276)) #6
          to label %do.end279 [label %if.then276], !srcloc !241

if.then276:                                       ; preds = %do.end250
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate.__UNIQUE_ID_ddebug260, ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef %div257, i32 noundef %div263) #6
  br label %do.end279

do.end279:                                        ; preds = %if.then276, %do.end250
  %90 = ptrtoint ptr %max_pll_op_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %max_pll_op_clk_freq_hz, align 4
  %92 = ptrtoint ptr %ext_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %ext_clk_freq_hz, align 4
  %add282 = add i32 %91, -1
  %sub283 = add i32 %add282, %93
  %div285 = udiv i32 %sub283, %93
  call void @__sanitizer_cov_trace_cmp4(i32 %93, i32 %sub283)
  %tobool.not.i = icmp ugt i32 %93, %sub283
  %..i = select i1 %tobool.not.i, i32 1, i32 %div285
  %div287 = udiv i32 %div257, %..i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div287)
  %cmp.i591 = icmp eq i32 %div287, 1
  %add.i592 = add i32 %div287, 1
  %and.i593 = and i32 %add.i592, 65534
  %retval.0.i594 = select i1 %cmp.i591, i32 1, i32 %and.i593
  %94 = tail call i32 @llvm.umax.i32(i32 %83, i32 %retval.0.i594)
  %conv301 = trunc i32 %94 to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate, %if.then314)) #6
          to label %do.end319 [label %if.then314], !srcloc !241

if.then314:                                       ; preds = %do.end279
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate.__UNIQUE_ID_ddebug263, ptr noundef %dev, ptr noundef nonnull @.str.10, i32 noundef %94, i32 noundef %78) #6
  br label %do.end319

do.end319:                                        ; preds = %if.then314, %do.end279
  %95 = ptrtoint ptr %op_pll_fr.0 to i32
  call void @__asan_store2_noabort(i32 %95)
  store i16 %conv301, ptr %op_pll_fr.0, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %78, i32 %94)
  %cmp323.not618 = icmp ult i32 %78, %94
  br i1 %cmp323.not618, label %do.end319.do.body376_crit_edge, label %for.body.preheader

do.end319.do.body376_crit_edge:                   ; preds = %do.end319
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body376

for.body.preheader:                               ; preds = %do.end319
  %96 = trunc i32 %78 to i16
  br label %for.body

for.body:                                         ; preds = %cond.end368.for.body_crit_edge, %for.body.preheader
  %call326 = tail call fastcc i32 @ccs_pll_calculate_op(ptr noundef %dev, ptr noundef %op_lim_fr.0, ptr noundef %op_lim_bk.0, ptr noundef %pll, ptr noundef %op_pll_fr.0, ptr noundef %op_pll_bk.0, i32 noundef %div257, i32 noundef %div263, i32 noundef %mul156602, i32 noundef %7, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call326)
  %tobool327.not = icmp eq i32 %call326, 0
  br i1 %tobool327.not, label %if.end329, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end329:                                        ; preds = %for.body
  %97 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %97)
  %98 = load i16, ptr %flags, align 2
  %99 = and i16 %98, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %99)
  %tobool333.not = icmp eq i16 %99, 0
  %cond334 = select i1 %tobool333.not, i32 2, i32 1
  %call335 = tail call fastcc i32 @check_fr_bounds(ptr noundef %dev, ptr noundef %lim, ptr noundef %pll, i32 noundef %cond334)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call335)
  %tobool336.not = icmp eq i32 %call335, 0
  br i1 %tobool336.not, label %if.end338, label %if.end329.for.inc_crit_edge

if.end329.for.inc_crit_edge:                      ; preds = %if.end329
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end338:                                        ; preds = %if.end329
  %call339 = tail call fastcc i32 @check_bk_bounds(ptr noundef %dev, ptr noundef %lim, ptr noundef %pll, i32 noundef 1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call339)
  %tobool340.not = icmp eq i32 %call339, 0
  br i1 %tobool340.not, label %if.end342, label %if.end338.for.inc_crit_edge

if.end338.for.inc_crit_edge:                      ; preds = %if.end338
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end342:                                        ; preds = %if.end338
  %100 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %flags, align 2
  %102 = and i16 %101, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %102)
  %tobool346.not = icmp eq i16 %102, 0
  br i1 %tobool346.not, label %if.end348, label %if.end342.if.end392_crit_edge

if.end342.if.end392_crit_edge:                    ; preds = %if.end342
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end392

if.end348:                                        ; preds = %if.end342
  tail call fastcc void @ccs_pll_calculate_vt(ptr noundef %dev, ptr noundef %lim, ptr noundef %pll, ptr noundef %op_pll_fr.0, ptr noundef %op_pll_bk.0, i32 noundef %cond)
  %call350 = tail call fastcc i32 @check_bk_bounds(ptr noundef %dev, ptr noundef %lim, ptr noundef %pll, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call350)
  %tobool351.not = icmp eq i32 %call350, 0
  br i1 %tobool351.not, label %if.end353, label %if.end348.for.inc_crit_edge

if.end348.for.inc_crit_edge:                      ; preds = %if.end348
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end353:                                        ; preds = %if.end348
  %call354 = tail call fastcc i32 @check_ext_bounds(ptr noundef %dev, ptr noundef %pll)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call354)
  %tobool355.not = icmp eq i32 %call354, 0
  br i1 %tobool355.not, label %if.end353.if.end392_crit_edge, label %if.end353.for.inc_crit_edge

if.end353.for.inc_crit_edge:                      ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end353.if.end392_crit_edge:                    ; preds = %if.end353
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end392

for.inc:                                          ; preds = %if.end353.for.inc_crit_edge, %if.end348.for.inc_crit_edge, %if.end338.for.inc_crit_edge, %if.end329.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %rval.1 = phi i32 [ %call326, %for.body.for.inc_crit_edge ], [ %call335, %if.end329.for.inc_crit_edge ], [ %call339, %if.end338.for.inc_crit_edge ], [ %call350, %if.end348.for.inc_crit_edge ], [ %call354, %if.end353.for.inc_crit_edge ]
  %103 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %flags, align 2
  %105 = and i16 %104, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %105)
  %tobool361.not = icmp eq i16 %105, 0
  br i1 %tobool361.not, label %cond.false363, label %for.inc.cond.end368_crit_edge

for.inc.cond.end368_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end368

cond.false363:                                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %106 = ptrtoint ptr %op_pll_fr.0 to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %op_pll_fr.0, align 4
  %108 = and i16 %107, 1
  %narrow = sub nuw nsw i16 2, %108
  br label %cond.end368

cond.end368:                                      ; preds = %cond.false363, %for.inc.cond.end368_crit_edge
  %cond369 = phi i16 [ %narrow, %cond.false363 ], [ 1, %for.inc.cond.end368_crit_edge ]
  %109 = ptrtoint ptr %op_pll_fr.0 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %op_pll_fr.0, align 4
  %add372 = add i16 %110, %cond369
  store i16 %add372, ptr %op_pll_fr.0, align 4
  %cmp323.not = icmp ugt i16 %add372, %96
  br i1 %cmp323.not, label %cond.end368.do.body376_crit_edge, label %cond.end368.for.body_crit_edge

cond.end368.for.body_crit_edge:                   ; preds = %cond.end368
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cond.end368.do.body376_crit_edge:                 ; preds = %cond.end368
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body376

do.body376:                                       ; preds = %cond.end368.do.body376_crit_edge, %do.end319.do.body376_crit_edge
  %rval.0.lcssa = phi i32 [ -22, %do.end319.do.body376_crit_edge ], [ %rval.1, %cond.end368.do.body376_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate, %if.then388)) #6
          to label %cleanup [label %if.then388], !srcloc !241

if.then388:                                       ; preds = %do.body376
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate.__UNIQUE_ID_ddebug264, ptr noundef %dev, ptr noundef nonnull @.str.11) #6
  br label %cleanup

if.end392:                                        ; preds = %if.end353.if.end392_crit_edge, %if.end342.if.end392_crit_edge
  %111 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %111)
  %112 = load i16, ptr %flags, align 2
  %113 = and i16 %112, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %113)
  %tobool396.not = icmp eq i16 %113, 0
  br i1 %tobool396.not, label %if.end392.if.end402_crit_edge, label %if.then397

if.end392.if.end402_crit_edge:                    ; preds = %if.end392
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end402

if.then397:                                       ; preds = %if.end392
  %call398 = tail call fastcc i32 @ccs_pll_calculate_vt_tree(ptr noundef %dev, ptr noundef %lim, ptr noundef %pll)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call398)
  %tobool399.not = icmp eq i32 %call398, 0
  br i1 %tobool399.not, label %if.then397.if.end402_crit_edge, label %if.then397.cleanup_crit_edge

if.then397.cleanup_crit_edge:                     ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then397.if.end402_crit_edge:                   ; preds = %if.then397
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end402

if.end402:                                        ; preds = %if.then397.if.end402_crit_edge, %if.end392.if.end402_crit_edge
  tail call fastcc void @print_pll(ptr noundef %dev, ptr noundef %pll)
  br label %cleanup

cleanup:                                          ; preds = %if.end402, %if.then397.cleanup_crit_edge, %if.then388, %do.body376, %do.end143.cleanup_crit_edge, %if.then80, %do.body, %lor.lhs.false56.cleanup_crit_edge, %lor.lhs.false54.cleanup_crit_edge, %lor.lhs.false52.cleanup_crit_edge, %lor.lhs.false50.cleanup_crit_edge, %lor.lhs.false48.cleanup_crit_edge, %lor.lhs.false46.cleanup_crit_edge, %lor.lhs.false44.cleanup_crit_edge, %lor.lhs.false42.cleanup_crit_edge, %lor.lhs.false40.cleanup_crit_edge, %lor.lhs.false37.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end32.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end402 ], [ -22, %lor.lhs.false56.cleanup_crit_edge ], [ -22, %lor.lhs.false54.cleanup_crit_edge ], [ -22, %lor.lhs.false52.cleanup_crit_edge ], [ -22, %lor.lhs.false50.cleanup_crit_edge ], [ -22, %lor.lhs.false48.cleanup_crit_edge ], [ -22, %lor.lhs.false46.cleanup_crit_edge ], [ -22, %lor.lhs.false44.cleanup_crit_edge ], [ -22, %lor.lhs.false42.cleanup_crit_edge ], [ -22, %lor.lhs.false40.cleanup_crit_edge ], [ -22, %lor.lhs.false37.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end32.cleanup_crit_edge ], [ -22, %if.then80 ], [ -22, %do.end143.cleanup_crit_edge ], [ %rval.0.lcssa, %if.then388 ], [ %call398, %if.then397.cleanup_crit_edge ], [ -22, %do.body ], [ %rval.0.lcssa, %do.body376 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @gcd(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_pll_calculate_op(ptr noundef %dev, ptr nocapture noundef readonly %op_lim_fr, ptr nocapture noundef readonly %op_lim_bk, ptr nocapture noundef readonly %pll, ptr nocapture noundef %op_pll_fr, ptr nocapture noundef %op_pll_bk, i32 noundef %mul, i32 noundef %div, i32 noundef %op_sys_clk_freq_hz_sdr, i32 noundef %l, i32 noundef %phy_const) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug228, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_op, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %op_pll_fr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %op_pll_fr, align 4
  %conv = zext i16 %1 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_op.__UNIQUE_ID_ddebug228, ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %max_pll_multiplier = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %op_lim_fr, i32 0, i32 5
  %2 = ptrtoint ptr %max_pll_multiplier to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_pll_multiplier, align 2
  %conv4 = zext i16 %3 to i32
  %div5 = udiv i32 %conv4, %mul
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug229, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_op, %if.then18)) #6
          to label %do.end21 [label %if.then18], !srcloc !241

if.then18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_op.__UNIQUE_ID_ddebug229, ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %div5) #6
  br label %do.end21

do.end21:                                         ; preds = %if.then18, %do.end
  %max_pll_op_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %op_lim_fr, i32 0, i32 7
  %4 = ptrtoint ptr %max_pll_op_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_pll_op_clk_freq_hz, align 4
  %ext_clk_freq_hz = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 12
  %6 = ptrtoint ptr %ext_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ext_clk_freq_hz, align 4
  %8 = ptrtoint ptr %op_pll_fr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %op_pll_fr, align 4
  %conv23 = zext i16 %9 to i32
  %div24 = udiv i32 %7, %conv23
  %mul25 = mul i32 %div24, %mul
  %div26 = udiv i32 %5, %mul25
  %10 = tail call i32 @llvm.umin.i32(i32 %div5, i32 %div26)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_op, %if.then41)) #6
          to label %do.end44 [label %if.then41], !srcloc !241

if.then41:                                        ; preds = %do.end21
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_op.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.15, i32 noundef %10) #6
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.end21
  %max_sys_clk_div = getelementptr inbounds %struct.ccs_pll_branch_limits_bk, ptr %op_lim_bk, i32 0, i32 1
  %11 = ptrtoint ptr %max_sys_clk_div to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %max_sys_clk_div, align 2
  %conv45 = zext i16 %12 to i32
  %13 = ptrtoint ptr %op_pll_fr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %op_pll_fr, align 4
  %conv47 = zext i16 %14 to i32
  %mul48 = mul nuw i32 %conv47, %conv45
  %div49 = udiv i32 %mul48, %div
  %15 = tail call i32 @llvm.umin.i32(i32 %10, i32 %div49)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug235, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_op, %if.then69)) #6
          to label %do.end72 [label %if.then69], !srcloc !241

if.then69:                                        ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_op.__UNIQUE_ID_ddebug235, ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef %15) #6
  br label %do.end72

do.end72:                                         ; preds = %if.then69, %do.end44
  %16 = ptrtoint ptr %max_pll_multiplier to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %max_pll_multiplier, align 2
  %conv74 = zext i16 %17 to i32
  %div75 = udiv i32 %conv74, %mul
  %18 = tail call i32 @llvm.umin.i32(i32 %15, i32 %div75)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_op, %if.then95)) #6
          to label %do.end98 [label %if.then95], !srcloc !241

if.then95:                                        ; preds = %do.end72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_op.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %18) #6
  br label %do.end98

do.end98:                                         ; preds = %if.then95, %do.end72
  %min_pll_op_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %op_lim_fr, i32 0, i32 6
  %19 = ptrtoint ptr %min_pll_op_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %min_pll_op_clk_freq_hz, align 4
  %21 = ptrtoint ptr %ext_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ext_clk_freq_hz, align 4
  %23 = ptrtoint ptr %op_pll_fr to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %op_pll_fr, align 4
  %conv101 = zext i16 %24 to i32
  %div102 = udiv i32 %22, %conv101
  %mul103 = mul i32 %div102, %mul
  %add = add i32 %20, -1
  %sub = add i32 %add, %mul103
  %div109 = udiv i32 %sub, %mul103
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_op, %if.then122)) #6
          to label %do.end125 [label %if.then122], !srcloc !241

if.then122:                                       ; preds = %do.end98
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_op.__UNIQUE_ID_ddebug239, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %div109) #6
  br label %do.end125

do.end125:                                        ; preds = %if.then122, %do.end98
  %min_pll_multiplier = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %op_lim_fr, i32 0, i32 4
  %25 = ptrtoint ptr %min_pll_multiplier to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %min_pll_multiplier, align 4
  %conv126 = zext i16 %26 to i32
  %add127 = add i32 %mul, -1
  %sub128 = add i32 %add127, %conv126
  %div129 = udiv i32 %sub128, %mul
  %27 = tail call i32 @llvm.umax.i32(i32 %div109, i32 %div129)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_op, %if.then149)) #6
          to label %do.end152 [label %if.then149], !srcloc !241

if.then149:                                       ; preds = %do.end125
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_op.__UNIQUE_ID_ddebug242, ptr noundef %dev, ptr noundef nonnull @.str.19, i32 noundef %27) #6
  br label %do.end152

do.end152:                                        ; preds = %if.then149, %do.end125
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %18)
  %cmp153 = icmp ugt i32 %27, %18
  br i1 %cmp153, label %do.body156, label %if.end172

do.body156:                                       ; preds = %do.end152
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_op, %if.then168)) #6
          to label %cleanup [label %if.then168], !srcloc !241

if.then168:                                       ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_op.__UNIQUE_ID_ddebug243, ptr noundef %dev, ptr noundef nonnull @.str.20) #6
  br label %cleanup

if.end172:                                        ; preds = %do.end152
  %28 = ptrtoint ptr %op_pll_fr to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %op_pll_fr, align 4
  %conv174 = zext i16 %29 to i32
  %call175 = tail call i32 @lcm(i32 noundef %div, i32 noundef %conv174) #10
  %div176 = udiv i32 %call175, %div
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_op, %if.then189)) #6
          to label %do.end192 [label %if.then189], !srcloc !241

if.then189:                                       ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_op.__UNIQUE_ID_ddebug244, ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %div176) #6
  br label %do.end192

do.end192:                                        ; preds = %if.then189, %if.end172
  %30 = ptrtoint ptr %op_lim_bk to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %op_lim_bk, align 4
  %conv193 = zext i16 %31 to i32
  %call194 = tail call i32 @lcm(i32 noundef %div176, i32 noundef %conv193) #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_op, %if.then207)) #6
          to label %do.end210 [label %if.then207], !srcloc !241

if.then207:                                       ; preds = %do.end192
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_op.__UNIQUE_ID_ddebug245, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call194) #6
  br label %do.end210

do.end210:                                        ; preds = %if.then207, %do.end192
  %sub212 = add i32 %27, -1
  %add213 = add i32 %sub212, %call194
  %32 = urem i32 %add213, %call194
  %mul215 = sub i32 %add213, %32
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mul215)
  %cmp.i = icmp ne i32 %mul215, 1
  %and.i = and i32 %mul215, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool217.not68 = icmp ne i32 %and.i, 0
  %tobool217.not = and i1 %cmp.i, %tobool217.not68
  %shl = zext i1 %tobool217.not to i32
  %spec.select = shl i32 %mul215, %shl
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_op, %if.then232)) #6
          to label %do.end235 [label %if.then232], !srcloc !241

if.then232:                                       ; preds = %do.end210
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_op.__UNIQUE_ID_ddebug246, ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %spec.select) #6
  br label %do.end235

do.end235:                                        ; preds = %if.then232, %do.end210
  call void @__sanitizer_cov_trace_cmp4(i32 %spec.select, i32 %18)
  %cmp236 = icmp ugt i32 %spec.select, %18
  br i1 %cmp236, label %do.body239, label %if.end255

do.body239:                                       ; preds = %do.end235
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_op, %if.then251)) #6
          to label %cleanup [label %if.then251], !srcloc !241

if.then251:                                       ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_op.__UNIQUE_ID_ddebug247, ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %18) #6
  br label %cleanup

if.end255:                                        ; preds = %do.end235
  %mul256 = mul i32 %spec.select, %mul
  %conv257 = trunc i32 %mul256 to i16
  %pll_multiplier = getelementptr inbounds %struct.ccs_pll_branch_fr, ptr %op_pll_fr, i32 0, i32 1
  %33 = ptrtoint ptr %pll_multiplier to i32
  call void @__asan_store2_noabort(i32 %33)
  store i16 %conv257, ptr %pll_multiplier, align 2
  %mul258 = mul i32 %spec.select, %div
  %34 = ptrtoint ptr %op_pll_fr to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %op_pll_fr, align 4
  %conv260 = zext i16 %35 to i32
  %div261 = udiv i32 %mul258, %conv260
  %conv262 = trunc i32 %div261 to i16
  %36 = ptrtoint ptr %op_pll_bk to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv262, ptr %op_pll_bk, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_op, %if.then275)) #6
          to label %do.end280 [label %if.then275], !srcloc !241

if.then275:                                       ; preds = %if.end255
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %op_pll_bk to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %op_pll_bk, align 4
  %conv277 = zext i16 %38 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_op.__UNIQUE_ID_ddebug248, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %conv277) #6
  br label %do.end280

do.end280:                                        ; preds = %if.then275, %if.end255
  %39 = ptrtoint ptr %ext_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ext_clk_freq_hz, align 4
  %41 = ptrtoint ptr %op_pll_fr to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %op_pll_fr, align 4
  %conv283 = zext i16 %42 to i32
  %div284 = udiv i32 %40, %conv283
  %pll_ip_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_fr, ptr %op_pll_fr, i32 0, i32 2
  %43 = ptrtoint ptr %pll_ip_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %div284, ptr %pll_ip_clk_freq_hz, align 4
  %44 = ptrtoint ptr %pll_multiplier to i32
  call void @__asan_load2_noabort(i32 %44)
  %45 = load i16, ptr %pll_multiplier, align 2
  %conv287 = zext i16 %45 to i32
  %mul288 = mul i32 %div284, %conv287
  %pll_op_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_fr, ptr %op_pll_fr, i32 0, i32 3
  %46 = ptrtoint ptr %pll_op_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul288, ptr %pll_op_clk_freq_hz, align 4
  %flags = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 10
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %flags, align 2
  %conv289 = zext i16 %48 to i32
  %and = and i32 %conv289, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool290.not = icmp eq i32 %and, 0
  %bits_per_pixel308 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 8
  %49 = ptrtoint ptr %bits_per_pixel308 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %bits_per_pixel308, align 4
  %conv309 = zext i8 %50 to i32
  br i1 %tobool290.not, label %if.else, label %if.then291

if.then291:                                       ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #8
  %op_lanes = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 1
  %51 = ptrtoint ptr %op_lanes to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %op_lanes, align 1
  %conv293 = zext i8 %52 to i32
  %and.i43 = lshr i32 %conv289, 9
  %and.lobit.i = and i32 %and.i43, 1
  %shl298 = shl i32 %phy_const, %and.lobit.i
  %mul294 = mul i32 %shl298, %conv309
  %mul299 = mul i32 %mul294, %conv293
  %div3002 = lshr i32 %mul299, 4
  %csi2 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 3
  %53 = ptrtoint ptr %csi2 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %csi2, align 1
  %conv301 = zext i8 %54 to i32
  %div302 = udiv i32 %div3002, %conv301
  br label %if.end323

if.else:                                          ; preds = %do.end280
  call void @__sanitizer_cov_trace_pc() #8
  %and.i46 = lshr i32 %conv289, 9
  %and.lobit.i47 = and i32 %and.i46, 1
  %shl313 = shl i32 %phy_const, %and.lobit.i47
  %mul314 = mul i32 %shl313, %conv309
  %div3151 = lshr i32 %mul314, 4
  br label %if.end323

if.end323:                                        ; preds = %if.else, %if.then291
  %div3151.sink = phi i32 [ %div3151, %if.else ], [ %div302, %if.then291 ]
  %div316 = udiv i32 %div3151.sink, %l
  %and.i48 = lshr i32 %conv289, 10
  %and.lobit.i49 = and i32 %and.i48, 1
  %shr320 = lshr i32 %div316, %and.lobit.i49
  %conv307.sink = trunc i32 %shr320 to i16
  %55 = getelementptr inbounds %struct.ccs_pll_branch_bk, ptr %op_pll_bk, i32 0, i32 1
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv307.sink, ptr %55, align 2
  %57 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %flags, align 2
  %59 = lshr i16 %58, 10
  %60 = and i16 %59, 1
  %and.lobit.i51 = zext i16 %60 to i32
  %shr327 = lshr i32 %op_sys_clk_freq_hz_sdr, %and.lobit.i51
  %conv329 = and i32 %shr320, 65535
  %div330 = udiv i32 %shr327, %conv329
  %pix_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_bk, ptr %op_pll_bk, i32 0, i32 3
  %61 = ptrtoint ptr %pix_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div330, ptr %pix_clk_freq_hz, align 4
  %62 = load i16, ptr %flags, align 2
  %63 = lshr i16 %62, 9
  %64 = and i16 %63, 1
  %and.lobit.i53 = zext i16 %64 to i32
  %shr334 = lshr i32 %op_sys_clk_freq_hz_sdr, %and.lobit.i53
  %sys_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_bk, ptr %op_pll_bk, i32 0, i32 2
  %65 = ptrtoint ptr %sys_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %shr334, ptr %sys_clk_freq_hz, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_op, %if.then347)) #6
          to label %cleanup [label %if.then347], !srcloc !241

if.then347:                                       ; preds = %if.end323
  call void @__sanitizer_cov_trace_pc() #8
  %66 = ptrtoint ptr %55 to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %55, align 2
  %conv349 = zext i16 %67 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_op.__UNIQUE_ID_ddebug249, ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %conv349) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then347, %if.end323, %if.then251, %do.body239, %if.then168, %do.body156
  %retval.0 = phi i32 [ -22, %if.then168 ], [ -22, %if.then251 ], [ 0, %if.then347 ], [ -22, %do.body156 ], [ -22, %do.body239 ], [ 0, %if.end323 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_fr_bounds(ptr noundef %dev, ptr nocapture noundef readonly %lim, ptr nocapture noundef readonly %pll, i32 noundef %which) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %which)
  %switch.selectcmp.i = icmp eq i32 %which, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.32, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %which)
  %switch.selectcmp2.i = icmp eq i32 %which, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.31, ptr %switch.select.i
  %op_fr = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 4
  %op_fr1 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 15
  %vt_fr = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 2
  %vt_fr2 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 13
  %lim_fr.0 = select i1 %switch.selectcmp2.i, ptr %op_fr, ptr %vt_fr
  %pll_fr.0 = select i1 %switch.selectcmp2.i, ptr %op_fr1, ptr %vt_fr2
  %0 = ptrtoint ptr %pll_fr.0 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %pll_fr.0, align 4
  %conv = zext i16 %1 to i32
  %2 = ptrtoint ptr %lim_fr.0 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %lim_fr.0, align 4
  %conv3 = zext i16 %3 to i32
  %max_pre_pll_clk_div = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %lim_fr.0, i32 0, i32 1
  %4 = ptrtoint ptr %max_pre_pll_clk_div to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %max_pre_pll_clk_div, align 2
  %conv4 = zext i16 %5 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %3)
  %cmp.not.i = icmp ult i16 %1, %3
  call void @__sanitizer_cov_trace_cmp2(i16 %1, i16 %5)
  %cmp1.not.i = icmp ugt i16 %1, %5
  %or.cond.i = or i1 %cmp.not.i, %cmp1.not.i
  br i1 %or.cond.i, label %do.body.i, label %if.then6

do.body.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bounds_check.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_fr_bounds, %if.then4.i)) #6
          to label %if.end19 [label %if.then4.i], !srcloc !241

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bounds_check.__UNIQUE_ID_ddebug172, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef %switch.select3.i, ptr noundef nonnull @.str.27, i32 noundef %conv, i32 noundef %conv3, i32 noundef %conv4) #6
  br label %if.end19

if.then6:                                         ; preds = %entry
  %pll_ip_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_fr, ptr %pll_fr.0, i32 0, i32 2
  %6 = ptrtoint ptr %pll_ip_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pll_ip_clk_freq_hz, align 4
  %min_pll_ip_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %lim_fr.0, i32 0, i32 2
  %8 = ptrtoint ptr %min_pll_ip_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %min_pll_ip_clk_freq_hz, align 4
  %max_pll_ip_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %lim_fr.0, i32 0, i32 3
  %10 = ptrtoint ptr %max_pll_ip_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %max_pll_ip_clk_freq_hz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp.not.i42 = icmp ult i32 %7, %9
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp1.not.i43 = icmp ugt i32 %7, %11
  %or.cond.i44 = or i1 %cmp.not.i42, %cmp1.not.i43
  br i1 %or.cond.i44, label %do.body.i45, label %if.then10

do.body.i45:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bounds_check.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_fr_bounds, %if.then4.i46)) #6
          to label %if.end19 [label %if.then4.i46], !srcloc !241

if.then4.i46:                                     ; preds = %do.body.i45
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bounds_check.__UNIQUE_ID_ddebug172, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef %switch.select3.i, ptr noundef nonnull @.str.28, i32 noundef %7, i32 noundef %9, i32 noundef %11) #6
  br label %if.end19

if.then10:                                        ; preds = %if.then6
  %pll_multiplier = getelementptr inbounds %struct.ccs_pll_branch_fr, ptr %pll_fr.0, i32 0, i32 1
  %12 = ptrtoint ptr %pll_multiplier to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %pll_multiplier, align 2
  %conv11 = zext i16 %13 to i32
  %min_pll_multiplier = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %lim_fr.0, i32 0, i32 4
  %14 = ptrtoint ptr %min_pll_multiplier to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %min_pll_multiplier, align 4
  %conv12 = zext i16 %15 to i32
  %max_pll_multiplier = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %lim_fr.0, i32 0, i32 5
  %16 = ptrtoint ptr %max_pll_multiplier to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %max_pll_multiplier, align 2
  %conv13 = zext i16 %17 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %15)
  %cmp.not.i49 = icmp ult i16 %13, %15
  call void @__sanitizer_cov_trace_cmp2(i16 %13, i16 %17)
  %cmp1.not.i50 = icmp ugt i16 %13, %17
  %or.cond.i51 = or i1 %cmp.not.i49, %cmp1.not.i50
  br i1 %or.cond.i51, label %do.body.i52, label %if.then17

do.body.i52:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bounds_check.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_fr_bounds, %if.then4.i53)) #6
          to label %if.end19 [label %if.then4.i53], !srcloc !241

if.then4.i53:                                     ; preds = %do.body.i52
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bounds_check.__UNIQUE_ID_ddebug172, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef %switch.select3.i, ptr noundef nonnull @.str.29, i32 noundef %conv11, i32 noundef %conv12, i32 noundef %conv13) #6
  br label %if.end19

if.then17:                                        ; preds = %if.then10
  %pll_op_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_fr, ptr %pll_fr.0, i32 0, i32 3
  %18 = ptrtoint ptr %pll_op_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %pll_op_clk_freq_hz, align 4
  %min_pll_op_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %lim_fr.0, i32 0, i32 6
  %20 = ptrtoint ptr %min_pll_op_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %min_pll_op_clk_freq_hz, align 4
  %max_pll_op_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_limits_fr, ptr %lim_fr.0, i32 0, i32 7
  %22 = ptrtoint ptr %max_pll_op_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %max_pll_op_clk_freq_hz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %21)
  %cmp.not.i56 = icmp ult i32 %19, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %19, i32 %23)
  %cmp1.not.i57 = icmp ugt i32 %19, %23
  %or.cond.i58 = or i1 %cmp.not.i56, %cmp1.not.i57
  br i1 %or.cond.i58, label %do.body.i59, label %if.then17.if.end19_crit_edge

if.then17.if.end19_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.body.i59:                                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bounds_check.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_fr_bounds, %if.then4.i60)) #6
          to label %if.end19 [label %if.then4.i60], !srcloc !241

if.then4.i60:                                     ; preds = %do.body.i59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bounds_check.__UNIQUE_ID_ddebug172, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef %switch.select3.i, ptr noundef nonnull @.str.30, i32 noundef %19, i32 noundef %21, i32 noundef %23) #6
  br label %if.end19

if.end19:                                         ; preds = %if.then4.i60, %do.body.i59, %if.then17.if.end19_crit_edge, %if.then4.i53, %do.body.i52, %if.then4.i46, %do.body.i45, %if.then4.i, %do.body.i
  %rval.2 = phi i32 [ -22, %do.body.i ], [ -22, %do.body.i45 ], [ -22, %do.body.i52 ], [ 0, %if.then17.if.end19_crit_edge ], [ -22, %if.then4.i60 ], [ -22, %do.body.i59 ], [ -22, %if.then4.i53 ], [ -22, %if.then4.i ], [ -22, %if.then4.i46 ]
  ret i32 %rval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_bk_bounds(ptr noundef %dev, ptr nocapture noundef readonly %lim, ptr nocapture noundef readonly %pll, i32 noundef %which) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %which)
  %switch.selectcmp.i = icmp eq i32 %which, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.32, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %which)
  %switch.selectcmp2.i = icmp eq i32 %which, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.31, ptr %switch.select.i
  br i1 %switch.selectcmp2.i, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 10
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %if.end, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %op_bk = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 5
  %op_bk2 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 16
  br label %if.end4

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %vt_bk = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3
  %vt_bk3 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 14
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  %lim_bk.0 = phi ptr [ %op_bk, %if.end ], [ %vt_bk, %if.else ]
  %pll_bk.0 = phi ptr [ %op_bk2, %if.end ], [ %vt_bk3, %if.else ]
  %3 = ptrtoint ptr %pll_bk.0 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %pll_bk.0, align 4
  %conv5 = zext i16 %4 to i32
  %5 = ptrtoint ptr %lim_bk.0 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %lim_bk.0, align 4
  %conv6 = zext i16 %6 to i32
  %max_sys_clk_div = getelementptr inbounds %struct.ccs_pll_branch_limits_bk, ptr %lim_bk.0, i32 0, i32 1
  %7 = ptrtoint ptr %max_sys_clk_div to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %max_sys_clk_div, align 2
  %conv7 = zext i16 %8 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %6)
  %cmp.not.i = icmp ult i16 %4, %6
  call void @__sanitizer_cov_trace_cmp2(i16 %4, i16 %8)
  %cmp1.not.i = icmp ugt i16 %4, %8
  %or.cond.i = or i1 %cmp.not.i, %cmp1.not.i
  br i1 %or.cond.i, label %do.body.i, label %if.then10

do.body.i:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bounds_check.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_bk_bounds, %if.then4.i)) #6
          to label %cleanup [label %if.then4.i], !srcloc !241

if.then4.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bounds_check.__UNIQUE_ID_ddebug172, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef %switch.select3.i, ptr noundef nonnull @.str.35, i32 noundef %conv5, i32 noundef %conv6, i32 noundef %conv7) #6
  br label %cleanup

if.then10:                                        ; preds = %if.end4
  %sys_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_bk, ptr %pll_bk.0, i32 0, i32 2
  %9 = ptrtoint ptr %sys_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sys_clk_freq_hz, align 4
  %min_sys_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_limits_bk, ptr %lim_bk.0, i32 0, i32 2
  %11 = ptrtoint ptr %min_sys_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %min_sys_clk_freq_hz, align 4
  %max_sys_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_limits_bk, ptr %lim_bk.0, i32 0, i32 3
  %13 = ptrtoint ptr %max_sys_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_sys_clk_freq_hz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp.not.i53 = icmp ult i32 %10, %12
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %14)
  %cmp1.not.i54 = icmp ugt i32 %10, %14
  %or.cond.i55 = or i1 %cmp.not.i53, %cmp1.not.i54
  br i1 %or.cond.i55, label %do.body.i56, label %if.then14

do.body.i56:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bounds_check.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_bk_bounds, %if.then4.i57)) #6
          to label %cleanup [label %if.then4.i57], !srcloc !241

if.then4.i57:                                     ; preds = %do.body.i56
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bounds_check.__UNIQUE_ID_ddebug172, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef %switch.select3.i, ptr noundef nonnull @.str.36, i32 noundef %10, i32 noundef %12, i32 noundef %14) #6
  br label %cleanup

if.then14:                                        ; preds = %if.then10
  %15 = ptrtoint ptr %pll_bk.0 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %pll_bk.0, align 4
  %conv16 = zext i16 %16 to i32
  %17 = ptrtoint ptr %lim_bk.0 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %lim_bk.0, align 4
  %conv18 = zext i16 %18 to i32
  %19 = ptrtoint ptr %max_sys_clk_div to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %max_sys_clk_div, align 2
  %conv20 = zext i16 %20 to i32
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %18)
  %cmp.not.i60 = icmp ult i16 %16, %18
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %20)
  %cmp1.not.i61 = icmp ugt i16 %16, %20
  %or.cond.i62 = or i1 %cmp.not.i60, %cmp1.not.i61
  br i1 %or.cond.i62, label %do.body.i63, label %if.then24

do.body.i63:                                      ; preds = %if.then14
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bounds_check.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_bk_bounds, %if.then4.i64)) #6
          to label %cleanup [label %if.then4.i64], !srcloc !241

if.then4.i64:                                     ; preds = %do.body.i63
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bounds_check.__UNIQUE_ID_ddebug172, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef %switch.select3.i, ptr noundef nonnull @.str.37, i32 noundef %conv16, i32 noundef %conv18, i32 noundef %conv20) #6
  br label %cleanup

if.then24:                                        ; preds = %if.then14
  %pix_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_bk, ptr %pll_bk.0, i32 0, i32 3
  %21 = ptrtoint ptr %pix_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pix_clk_freq_hz, align 4
  %min_pix_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_limits_bk, ptr %lim_bk.0, i32 0, i32 6
  %23 = ptrtoint ptr %min_pix_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %min_pix_clk_freq_hz, align 4
  %max_pix_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_limits_bk, ptr %lim_bk.0, i32 0, i32 7
  %25 = ptrtoint ptr %max_pix_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %max_pix_clk_freq_hz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %24)
  %cmp.not.i67 = icmp ult i32 %22, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %22, i32 %26)
  %cmp1.not.i68 = icmp ugt i32 %22, %26
  %or.cond.i69 = or i1 %cmp.not.i67, %cmp1.not.i68
  br i1 %or.cond.i69, label %do.body.i70, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body.i70:                                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @bounds_check.__UNIQUE_ID_ddebug172, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_bk_bounds, %if.then4.i71)) #6
          to label %cleanup [label %if.then4.i71], !srcloc !241

if.then4.i71:                                     ; preds = %do.body.i70
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @bounds_check.__UNIQUE_ID_ddebug172, ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef %switch.select3.i, ptr noundef nonnull @.str.38, i32 noundef %22, i32 noundef %24, i32 noundef %26) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then4.i71, %do.body.i70, %if.then24.cleanup_crit_edge, %if.then4.i64, %do.body.i63, %if.then4.i57, %do.body.i56, %if.then4.i, %do.body.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.then.cleanup_crit_edge ], [ -22, %do.body.i ], [ -22, %do.body.i56 ], [ -22, %do.body.i63 ], [ 0, %if.then24.cleanup_crit_edge ], [ -22, %if.then4.i71 ], [ -22, %do.body.i70 ], [ -22, %if.then4.i64 ], [ -22, %if.then4.i ], [ -22, %if.then4.i57 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccs_pll_calculate_vt(ptr noundef %dev, ptr nocapture noundef readonly %lim, ptr nocapture noundef %pll, ptr nocapture noundef readonly %pll_fr, ptr nocapture noundef readonly %op_pll_bk, i32 noundef %phy_const) unnamed_addr #0 align 64 {
entry:
  %min_sys_div = alloca i16, align 2
  %max_sys_div = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %min_sys_div) #6
  %0 = ptrtoint ptr %min_sys_div to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %min_sys_div, align 2, !annotation !244
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_sys_div) #6
  %1 = ptrtoint ptr %max_sys_div to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %max_sys_div, align 2, !annotation !244
  %flags = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 10
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %flags, align 2
  %conv = zext i16 %3 to i32
  %and = and i32 %conv, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.out_calc_pixel_rate_crit_edge

entry.out_calc_pixel_rate_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out_calc_pixel_rate

if.end:                                           ; preds = %entry
  %and3 = and i32 %conv, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool4.not = icmp eq i32 %and3, 0
  br i1 %tobool4.not, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %4 = ptrtoint ptr %op_pll_bk to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %op_pll_bk, align 4
  %conv6 = zext i16 %5 to i32
  %pix_clk_div = getelementptr inbounds %struct.ccs_pll_branch_bk, ptr %op_pll_bk, i32 0, i32 1
  %6 = ptrtoint ptr %pix_clk_div to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %pix_clk_div, align 2
  %conv7 = zext i16 %7 to i32
  %vt_lanes = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 2
  %8 = ptrtoint ptr %vt_lanes to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vt_lanes, align 2
  %conv8 = zext i8 %9 to i32
  %mul = mul i32 %conv6, %phy_const
  %mul9 = mul i32 %mul, %conv7
  %mul10 = mul i32 %mul9, %conv8
  %op_lanes = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 1
  %10 = ptrtoint ptr %op_lanes to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %op_lanes, align 1
  %conv11 = zext i8 %11 to i32
  %div = udiv i32 %mul10, %conv11
  %and.i = lshr i32 %conv, 10
  %and.lobit.i = and i32 %and.i, 1
  %12 = or i32 %and.lobit.i, 4
  %div141 = lshr i32 %div, %12
  br label %do.body98

if.else:                                          ; preds = %if.end
  %min_line_length_pck_bin = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 6
  %13 = ptrtoint ptr %min_line_length_pck_bin to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %min_line_length_pck_bin, align 4
  %min_line_length_pck = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 7
  %15 = ptrtoint ptr %min_line_length_pck to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %min_line_length_pck, align 4
  %binning_horizontal = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 4
  %17 = ptrtoint ptr %binning_horizontal to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %binning_horizontal, align 4
  %conv16 = zext i8 %18 to i32
  %div17 = udiv i32 %16, %conv16
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %div17)
  %cmp = icmp ugt i32 %14, %div17
  %conv21 = zext i8 %18 to i16
  %vt_op_binning_div.0 = select i1 %cmp, i16 %conv21, i16 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug214, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_vt, %if.then29)) #6
          to label %do.body32 [label %if.then29], !srcloc !241

if.then29:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %conv30 = zext i16 %vt_op_binning_div.0 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug214, ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %conv30) #6
  br label %do.body32

do.body32:                                        ; preds = %if.then29, %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug215, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_vt, %if.then44)) #6
          to label %do.end48 [label %if.then44], !srcloc !241

if.then44:                                        ; preds = %do.body32
  call void @__sanitizer_cov_trace_pc() #8
  %scale_m = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 6
  %19 = ptrtoint ptr %scale_m to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %scale_m, align 2
  %conv45 = zext i8 %20 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug215, ptr noundef %dev, ptr noundef nonnull @.str.41, i32 noundef %conv45) #6
  br label %do.end48

do.end48:                                         ; preds = %if.then44, %do.body32
  %bits_per_pixel = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 8
  %21 = ptrtoint ptr %bits_per_pixel to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %bits_per_pixel, align 4
  %conv49 = zext i8 %22 to i32
  %23 = ptrtoint ptr %op_pll_bk to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %op_pll_bk, align 4
  %conv51 = zext i16 %24 to i32
  %scale_n = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 7
  %25 = ptrtoint ptr %scale_n to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %scale_n, align 1
  %conv53 = zext i8 %26 to i32
  %vt_lanes55 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 2
  %27 = ptrtoint ptr %vt_lanes55 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %vt_lanes55, align 2
  %conv56 = zext i8 %28 to i32
  %mul52 = mul i32 %conv49, %phy_const
  %mul54 = mul i32 %mul52, %conv51
  %mul57 = mul i32 %mul54, %conv53
  %mul58 = mul i32 %mul57, %conv56
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %flags, align 2
  %31 = and i16 %30, 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %31)
  %tobool62.not = icmp eq i16 %31, 0
  br i1 %tobool62.not, label %do.end48.cond.end_crit_edge, label %cond.true

do.end48.cond.end_crit_edge:                      ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.true:                                        ; preds = %do.end48
  call void @__sanitizer_cov_trace_pc() #8
  %csi2 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 3
  %32 = ptrtoint ptr %csi2 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %csi2, align 1
  %conv63 = zext i8 %33 to i32
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %do.end48.cond.end_crit_edge
  %cond = phi i32 [ %conv63, %cond.true ], [ 1, %do.end48.cond.end_crit_edge ]
  %conv64 = zext i16 %vt_op_binning_div.0 to i32
  %scale_m66 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 6
  %34 = ptrtoint ptr %scale_m66 to i32
  call void @__asan_load1_noabort(i32 %34)
  %35 = load i8, ptr %scale_m66, align 2
  %conv67 = zext i8 %35 to i32
  %mul65 = mul nuw nsw i32 %conv67, %conv64
  %mul68 = shl nuw nsw i32 %mul65, 4
  %mul69 = mul nuw nsw i32 %mul68, %cond
  %36 = lshr i16 %30, 10
  %37 = and i16 %36, 1
  %and.lobit.i25 = zext i16 %37 to i32
  %shl73 = shl nuw nsw i32 %mul69, %and.lobit.i25
  %add = add i32 %mul58, -1
  %sub = add i32 %add, %shl73
  br i1 %tobool62.not, label %cond.end.cond.end83_crit_edge, label %cond.true78

cond.end.cond.end83_crit_edge:                    ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end83

cond.true78:                                      ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %csi279 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 3
  %38 = ptrtoint ptr %csi279 to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %csi279, align 1
  %conv81 = zext i8 %39 to i32
  br label %cond.end83

cond.end83:                                       ; preds = %cond.true78, %cond.end.cond.end83_crit_edge
  %cond84 = phi i32 [ %conv81, %cond.true78 ], [ 1, %cond.end.cond.end83_crit_edge ]
  %mul90 = mul nuw nsw i32 %mul68, %cond84
  %shl94 = shl nuw nsw i32 %mul90, %and.lobit.i25
  %div95 = udiv i32 %sub, %shl94
  br label %do.body98

do.body98:                                        ; preds = %cond.end83, %if.then5
  %min_vt_div.0.in = phi i32 [ %div95, %cond.end83 ], [ %div141, %if.then5 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug216, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_vt, %if.then110)) #6
          to label %do.end114 [label %if.then110], !srcloc !241

if.then110:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #8
  %conv111 = and i32 %min_vt_div.0.in, 65535
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug216, ptr noundef %dev, ptr noundef nonnull @.str.42, i32 noundef %conv111) #6
  br label %do.end114

do.end114:                                        ; preds = %if.then110, %do.body98
  %pll_op_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_fr, ptr %pll_fr, i32 0, i32 3
  %40 = ptrtoint ptr %pll_op_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %pll_op_clk_freq_hz, align 4
  %vt_bk = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3
  %max_pix_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 7
  %42 = ptrtoint ptr %max_pix_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %max_pix_clk_freq_hz, align 4
  %add115 = add i32 %41, -1
  %sub116 = add i32 %add115, %43
  %div119 = udiv i32 %sub116, %43
  %conv122 = and i32 %min_vt_div.0.in, 65535
  %conv123 = and i32 %div119, 65535
  %44 = tail call i32 @llvm.umax.i32(i32 %conv122, i32 %conv123)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug219, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_vt, %if.then145)) #6
          to label %do.end149 [label %if.then145], !srcloc !241

if.then145:                                       ; preds = %do.end114
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug219, ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %44) #6
  br label %do.end149

do.end149:                                        ; preds = %if.then145, %do.end114
  %min_pix_clk_div = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 4
  %45 = ptrtoint ptr %min_pix_clk_div to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %min_pix_clk_div, align 4
  %47 = ptrtoint ptr %vt_bk to i32
  call void @__asan_load2_noabort(i32 %47)
  %48 = load i16, ptr %vt_bk, align 4
  %mul154 = mul i16 %48, %46
  %conv158 = zext i16 %mul154 to i32
  %49 = tail call i32 @llvm.umax.i32(i32 %44, i32 %conv158)
  %conv167 = trunc i32 %49 to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug222, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_vt, %if.then180)) #6
          to label %do.end184 [label %if.then180], !srcloc !241

if.then180:                                       ; preds = %do.end149
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug222, ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %49) #6
  br label %do.end184

do.end184:                                        ; preds = %if.then180, %do.end149
  %max_sys_clk_div = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 1
  %50 = ptrtoint ptr %max_sys_clk_div to i32
  call void @__asan_load2_noabort(i32 %50)
  %51 = load i16, ptr %max_sys_clk_div, align 2
  %max_pix_clk_div = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 5
  %52 = ptrtoint ptr %max_pix_clk_div to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %max_pix_clk_div, align 2
  %mul189 = mul i16 %53, %51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug223, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_vt, %if.then203)) #6
          to label %do.end207 [label %if.then203], !srcloc !241

if.then203:                                       ; preds = %do.end184
  call void @__sanitizer_cov_trace_pc() #8
  %conv204 = zext i16 %mul189 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug223, ptr noundef %dev, ptr noundef nonnull @.str.45, i32 noundef %conv204) #6
  br label %do.end207

do.end207:                                        ; preds = %if.then203, %do.end184
  %54 = ptrtoint ptr %pll_op_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %pll_op_clk_freq_hz, align 4
  %min_pix_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 6
  %56 = ptrtoint ptr %min_pix_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %min_pix_clk_freq_hz, align 4
  %add210 = add i32 %55, -1
  %sub211 = add i32 %add210, %57
  %div214 = udiv i32 %sub211, %57
  %conv217 = zext i16 %mul189 to i32
  %conv218 = and i32 %div214, 65535
  %58 = tail call i32 @llvm.umin.i32(i32 %conv218, i32 %conv217)
  %conv227 = trunc i32 %58 to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug226, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_vt, %if.then240)) #6
          to label %do.end244 [label %if.then240], !srcloc !241

if.then240:                                       ; preds = %do.end207
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug226, ptr noundef %dev, ptr noundef nonnull @.str.46, i32 noundef %58) #6
  br label %do.end244

do.end244:                                        ; preds = %if.then240, %do.end207
  call fastcc void @ccs_pll_find_vt_sys_div(ptr noundef %dev, ptr noundef %lim, ptr noundef %pll_fr, i16 noundef zeroext %conv167, i16 noundef zeroext %conv227, ptr noundef nonnull %min_sys_div, ptr noundef nonnull %max_sys_div)
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %49)
  %cmp247.not48 = icmp ult i32 %58, %49
  br i1 %cmp247.not48, label %do.end244.for.end348_crit_edge, label %for.body.lr.ph

do.end244.for.end348_crit_edge:                   ; preds = %do.end244
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end348

for.body.lr.ph:                                   ; preds = %do.end244
  %59 = ptrtoint ptr %min_sys_div to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %min_sys_div, align 2
  br label %for.body

for.cond:                                         ; preds = %for.end.for.cond_crit_edge, %cond.end255.for.cond_crit_edge
  %best_pix_div.462 = phi i16 [ %best_pix_div.4, %for.end.for.cond_crit_edge ], [ %best_pix_div.050, %cond.end255.for.cond_crit_edge ]
  %inc = add i16 %vt_div.049, 1
  %conv245 = zext i16 %inc to i32
  %cmp247.not = icmp ugt i16 %inc, %conv227
  br i1 %cmp247.not, label %for.cond.for.end348_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.for.end348_crit_edge:                    ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end348

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %conv24551 = phi i32 [ %49, %for.body.lr.ph ], [ %conv245, %for.cond.for.body_crit_edge ]
  %best_pix_div.050 = phi i16 [ 16383, %for.body.lr.ph ], [ %best_pix_div.462, %for.cond.for.body_crit_edge ]
  %vt_div.049 = phi i16 [ %conv167, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %and250 = and i32 %conv24551, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  br i1 %tobool251.not, label %cond.false253, label %for.body.cond.end255_crit_edge

for.body.cond.end255_crit_edge:                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end255

cond.false253:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %61 = ptrtoint ptr %max_sys_div to i32
  call void @__asan_load2_noabort(i32 %61)
  %62 = load i16, ptr %max_sys_div, align 2
  br label %cond.end255

cond.end255:                                      ; preds = %cond.false253, %for.body.cond.end255_crit_edge
  %cond256 = phi i16 [ %62, %cond.false253 ], [ 1, %for.body.cond.end255_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %60, i16 %cond256)
  %cmp261.not42 = icmp ugt i16 %60, %cond256
  br i1 %cmp261.not42, label %cond.end255.for.cond_crit_edge, label %for.body263.lr.ph

cond.end255.for.cond_crit_edge:                   ; preds = %cond.end255
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.body263.lr.ph:                                ; preds = %cond.end255
  %add266 = add nsw i32 %conv24551, -1
  br label %for.body263

for.body263:                                      ; preds = %for.inc.for.body263_crit_edge, %for.body263.lr.ph
  %sys_div.044 = phi i16 [ %60, %for.body263.lr.ph ], [ %add337, %for.inc.for.body263_crit_edge ]
  %best_pix_div.143 = phi i16 [ %best_pix_div.050, %for.body263.lr.ph ], [ %best_pix_div.340, %for.inc.for.body263_crit_edge ]
  %conv25945 = zext i16 %sys_div.044 to i32
  %sub267 = add nsw i32 %add266, %conv25945
  %div269 = sdiv i32 %sub267, %conv25945
  %conv270 = trunc i32 %div269 to i16
  %conv271 = and i32 %div269, 65535
  %63 = ptrtoint ptr %min_pix_clk_div to i32
  call void @__asan_load2_noabort(i32 %63)
  %64 = load i16, ptr %min_pix_clk_div, align 4
  %conv274 = zext i16 %64 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv271, i32 %conv274)
  %cmp275 = icmp ult i32 %conv271, %conv274
  br i1 %cmp275, label %for.body263.do.body284_crit_edge, label %lor.lhs.false

for.body263.do.body284_crit_edge:                 ; preds = %for.body263
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body284

lor.lhs.false:                                    ; preds = %for.body263
  %65 = ptrtoint ptr %max_pix_clk_div to i32
  call void @__asan_load2_noabort(i32 %65)
  %66 = load i16, ptr %max_pix_clk_div, align 2
  %conv280 = zext i16 %66 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %conv271, i32 %conv280)
  %cmp281 = icmp ugt i32 %conv271, %conv280
  br i1 %cmp281, label %lor.lhs.false.do.body284_crit_edge, label %if.end307

lor.lhs.false.do.body284_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body284

do.body284:                                       ; preds = %lor.lhs.false.do.body284_crit_edge, %for.body263.do.body284_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug227, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_vt, %cleanup.thread)) #6
          to label %for.inc [label %cleanup.thread], !srcloc !241

cleanup.thread:                                   ; preds = %do.body284
  call void @__sanitizer_cov_trace_pc() #8
  %67 = ptrtoint ptr %min_pix_clk_div to i32
  call void @__asan_load2_noabort(i32 %67)
  %68 = load i16, ptr %min_pix_clk_div, align 4
  %conv300 = zext i16 %68 to i32
  %69 = ptrtoint ptr %max_pix_clk_div to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %max_pix_clk_div, align 2
  %conv303 = zext i16 %70 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug227, ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %conv271, i32 noundef %conv300, i32 noundef %conv303) #6
  br label %for.inc

if.end307:                                        ; preds = %lor.lhs.false
  %conv310 = zext i16 %best_pix_div.143 to i32
  %add312 = add nsw i32 %add266, %conv310
  %71 = srem i32 %add312, %conv310
  %mul316 = sub nsw i32 %add312, %71
  %mul320 = mul nuw i32 %conv271, %conv25945
  %conv321 = and i32 %mul316, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %mul320, i32 %conv321)
  %cmp322.not = icmp sgt i32 %mul320, %conv321
  %spec.select = select i1 %cmp322.not, i16 %best_pix_div.143, i16 %conv270
  call void @__sanitizer_cov_trace_cmp4(i32 %conv321, i32 %conv24551)
  %cmp328 = icmp eq i32 %conv321, %conv24551
  br i1 %cmp328, label %if.end307.for.end_crit_edge, label %if.end307.for.inc_crit_edge

if.end307.for.inc_crit_edge:                      ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end307.for.end_crit_edge:                      ; preds = %if.end307
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.inc:                                          ; preds = %if.end307.for.inc_crit_edge, %cleanup.thread, %do.body284
  %best_pix_div.340 = phi i16 [ %best_pix_div.143, %cleanup.thread ], [ %spec.select, %if.end307.for.inc_crit_edge ], [ %best_pix_div.143, %do.body284 ]
  %sub335 = add i16 %sys_div.044, 2
  %add337 = and i16 %sub335, -2
  %cmp261.not = icmp ugt i16 %add337, %cond256
  br i1 %cmp261.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body263_crit_edge

for.inc.for.body263_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body263

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end307.for.end_crit_edge
  %best_pix_div.4 = phi i16 [ %best_pix_div.340, %for.inc.for.end_crit_edge ], [ %spec.select, %if.end307.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %best_pix_div.4)
  %cmp340 = icmp ult i16 %best_pix_div.4, 16383
  br i1 %cmp340, label %for.end.for.end348_crit_edge, label %for.end.for.cond_crit_edge

for.end.for.cond_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.cond

for.end.for.end348_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end348

for.end348:                                       ; preds = %for.end.for.end348_crit_edge, %for.cond.for.end348_crit_edge, %do.end244.for.end348_crit_edge
  %conv245.lcssa = phi i32 [ %49, %do.end244.for.end348_crit_edge ], [ %conv24551, %for.end.for.end348_crit_edge ], [ %conv245, %for.cond.for.end348_crit_edge ]
  %best_pix_div.5 = phi i16 [ 16383, %do.end244.for.end348_crit_edge ], [ %best_pix_div.4, %for.end.for.end348_crit_edge ], [ %best_pix_div.462, %for.cond.for.end348_crit_edge ]
  %conv350 = zext i16 %best_pix_div.5 to i32
  %add351 = add nsw i32 %conv245.lcssa, -1
  %sub352 = add nsw i32 %add351, %conv350
  %div354 = sdiv i32 %sub352, %conv350
  %conv355 = trunc i32 %div354 to i16
  %vt_bk356 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 14
  %72 = ptrtoint ptr %vt_bk356 to i32
  call void @__asan_store2_noabort(i32 %72)
  store i16 %conv355, ptr %vt_bk356, align 4
  %pix_clk_div359 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 14, i32 1
  %73 = ptrtoint ptr %pix_clk_div359 to i32
  call void @__asan_store2_noabort(i32 %73)
  store i16 %best_pix_div.5, ptr %pix_clk_div359, align 2
  %74 = ptrtoint ptr %pll_op_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pll_op_clk_freq_hz, align 4
  %conv363 = and i32 %div354, 65535
  %div364 = udiv i32 %75, %conv363
  %sys_clk_freq_hz = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 14, i32 2
  %76 = ptrtoint ptr %sys_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %div364, ptr %sys_clk_freq_hz, align 4
  %div371 = udiv i32 %div364, %conv350
  %pix_clk_freq_hz = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 14, i32 3
  %77 = ptrtoint ptr %pix_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %div371, ptr %pix_clk_freq_hz, align 4
  br label %out_calc_pixel_rate

out_calc_pixel_rate:                              ; preds = %for.end348, %entry.out_calc_pixel_rate_crit_edge
  %pix_clk_freq_hz374 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 14, i32 3
  %78 = ptrtoint ptr %pix_clk_freq_hz374 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %pix_clk_freq_hz374, align 4
  %vt_lanes375 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 2
  %80 = ptrtoint ptr %vt_lanes375 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %vt_lanes375, align 2
  %conv376 = zext i8 %81 to i32
  %mul377 = mul i32 %79, %conv376
  %pixel_rate_pixel_array = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 18
  %82 = ptrtoint ptr %pixel_rate_pixel_array to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %mul377, ptr %pixel_rate_pixel_array, align 4
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_sys_div) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %min_sys_div) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @check_ext_bounds(ptr noundef %dev, ptr nocapture noundef readonly %pll) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flags = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 10
  %0 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %flags, align 2
  %2 = and i16 %1, 64
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %2)
  %tobool.not = icmp eq i16 %2, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end6_crit_edge

entry.if.end6_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

land.lhs.true:                                    ; preds = %entry
  %pixel_rate_pixel_array = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 18
  %3 = ptrtoint ptr %pixel_rate_pixel_array to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pixel_rate_pixel_array, align 4
  %pixel_rate_csi = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 17
  %5 = ptrtoint ptr %pixel_rate_csi to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %pixel_rate_csi, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp = icmp ugt i32 %4, %6
  br i1 %cmp, label %do.body, label %land.lhs.true.if.end6_crit_edge

land.lhs.true.if.end6_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end6

do.body:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_ext_bounds.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_ext_bounds, %if.then5)) #6
          to label %return [label %if.then5], !srcloc !241

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_ext_bounds.__UNIQUE_ID_ddebug185, ptr noundef %dev, ptr noundef nonnull @.str.57) #6
  br label %return

if.end6:                                          ; preds = %land.lhs.true.if.end6_crit_edge, %entry.if.end6_crit_edge
  %7 = and i16 %1, 128
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %7)
  %tobool10.not = icmp eq i16 %7, 0
  br i1 %tobool10.not, label %land.lhs.true11, label %if.end6.return_crit_edge

if.end6.return_crit_edge:                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

land.lhs.true11:                                  ; preds = %if.end6
  %pixel_rate_pixel_array12 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 18
  %8 = ptrtoint ptr %pixel_rate_pixel_array12 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %pixel_rate_pixel_array12, align 4
  %pixel_rate_csi13 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 17
  %10 = ptrtoint ptr %pixel_rate_csi13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %pixel_rate_csi13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp14 = icmp ult i32 %9, %11
  br i1 %cmp14, label %do.body17, label %land.lhs.true11.return_crit_edge

land.lhs.true11.return_crit_edge:                 ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

do.body17:                                        ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @check_ext_bounds.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@check_ext_bounds, %if.then29)) #6
          to label %return [label %if.then29], !srcloc !241

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @check_ext_bounds.__UNIQUE_ID_ddebug186, ptr noundef %dev, ptr noundef nonnull @.str.58) #6
  br label %return

return:                                           ; preds = %if.then29, %do.body17, %land.lhs.true11.return_crit_edge, %if.end6.return_crit_edge, %if.then5, %do.body
  %retval.0 = phi i32 [ -22, %if.then5 ], [ -22, %if.then29 ], [ 0, %land.lhs.true11.return_crit_edge ], [ 0, %if.end6.return_crit_edge ], [ -22, %do.body ], [ -22, %do.body17 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @ccs_pll_calculate_vt_tree(ptr noundef %dev, ptr nocapture noundef readonly %lim, ptr nocapture noundef %pll) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vt_fr = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 2
  %vt_fr1 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 13
  %0 = ptrtoint ptr %vt_fr to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vt_fr, align 4
  %max_pre_pll_clk_div3 = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %max_pre_pll_clk_div3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %max_pre_pll_clk_div3, align 2
  %pixel_rate_csi = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 17
  %4 = ptrtoint ptr %pixel_rate_csi to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %pixel_rate_csi, align 4
  %ext_clk_freq_hz = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 12
  %6 = ptrtoint ptr %ext_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ext_clk_freq_hz, align 4
  %vt_lanes = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 2
  %8 = ptrtoint ptr %vt_lanes to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %vt_lanes, align 2
  %conv = zext i8 %9 to i32
  %mul = mul i32 %7, %conv
  %call = tail call i32 @gcd(i32 noundef %5, i32 noundef %mul) #10
  %div = udiv i32 %5, %call
  %div9 = udiv i32 %mul, %call
  %min_pll_ip_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 2, i32 2
  %10 = ptrtoint ptr %min_pll_ip_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %min_pll_ip_clk_freq_hz, align 4
  %add = add i32 %7, -1
  %sub = add i32 %add, %11
  %div12 = udiv i32 %sub, %11
  %conv14 = zext i16 %3 to i32
  %conv15 = and i32 %div12, 65535
  %12 = tail call i32 @llvm.umin.i32(i32 %conv15, i32 %conv14)
  %max_pll_ip_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 2, i32 3
  %13 = ptrtoint ptr %max_pll_ip_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %max_pll_ip_clk_freq_hz, align 4
  %div21 = udiv i32 %7, %14
  %conv24 = zext i16 %1 to i32
  %conv25 = and i32 %div21, 65535
  %15 = tail call i32 @llvm.umax.i32(i32 %conv25, i32 %conv24)
  %conv34 = trunc i32 %15 to i16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug212, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_vt_tree, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug212, ptr noundef %dev, ptr noundef nonnull @.str.60, i32 noundef %15, i32 noundef %12) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %16 = ptrtoint ptr %vt_fr1 to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %conv34, ptr %vt_fr1, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %15)
  %cmp44.not164 = icmp ult i32 %12, %15
  br i1 %cmp44.not164, label %do.end.cleanup103_crit_edge, label %for.body.lr.ph

do.end.cleanup103_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

for.body.lr.ph:                                   ; preds = %do.end
  %flags = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %cond.end97.for.body_crit_edge, %for.body.lr.ph
  %conv42165 = phi i32 [ %15, %for.body.lr.ph ], [ %conv42, %cond.end97.for.body_crit_edge ]
  %mul50 = mul i32 %conv42165, %div
  %call51 = tail call i32 @gcd(i32 noundef %mul50, i32 noundef %div9) #10
  %div55 = udiv i32 %mul50, %call51
  %div56 = udiv i32 %div9, %call51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug213, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_calculate_vt_tree, %if.then69)) #6
          to label %do.end74 [label %if.then69], !srcloc !241

if.then69:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %vt_fr1 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %vt_fr1, align 4
  %conv71 = zext i16 %18 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug213, ptr noundef %dev, ptr noundef nonnull @.str.61, i32 noundef %conv71, i32 noundef %div55, i32 noundef %div56) #6
  br label %do.end74

do.end74:                                         ; preds = %if.then69, %for.body
  %call75 = tail call fastcc i32 @__ccs_pll_calculate_vt_tree(ptr noundef %dev, ptr noundef %lim, ptr noundef %pll, i32 noundef %div55, i32 noundef %div56)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call75)
  %tobool76.not = icmp eq i32 %call75, 0
  br i1 %tobool76.not, label %if.end78, label %do.end74.for.inc_crit_edge

do.end74.for.inc_crit_edge:                       ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end78:                                         ; preds = %do.end74
  %call79 = tail call fastcc i32 @check_fr_bounds(ptr noundef %dev, ptr noundef %lim, ptr noundef %pll, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %tobool80.not = icmp eq i32 %call79, 0
  br i1 %tobool80.not, label %if.end82, label %if.end78.for.inc_crit_edge

if.end78.for.inc_crit_edge:                       ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end82:                                         ; preds = %if.end78
  %call83 = tail call fastcc i32 @check_bk_bounds(ptr noundef %dev, ptr noundef %lim, ptr noundef %pll, i32 noundef 2)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call83)
  %tobool84.not.not = icmp eq i32 %call83, 0
  br i1 %tobool84.not.not, label %if.end82.cleanup103_crit_edge, label %if.end82.for.inc_crit_edge

if.end82.for.inc_crit_edge:                       ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end82.cleanup103_crit_edge:                    ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

for.inc:                                          ; preds = %if.end82.for.inc_crit_edge, %if.end78.for.inc_crit_edge, %do.end74.for.inc_crit_edge
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %flags, align 2
  %21 = and i16 %20, 16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %21)
  %tobool90.not = icmp eq i16 %21, 0
  br i1 %tobool90.not, label %cond.false92, label %for.inc.cond.end97_crit_edge

for.inc.cond.end97_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end97

cond.false92:                                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %vt_fr1 to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %vt_fr1, align 4
  %24 = and i16 %23, 1
  %narrow = sub nuw nsw i16 2, %24
  br label %cond.end97

cond.end97:                                       ; preds = %cond.false92, %for.inc.cond.end97_crit_edge
  %cond98 = phi i16 [ %narrow, %cond.false92 ], [ 1, %for.inc.cond.end97_crit_edge ]
  %25 = ptrtoint ptr %vt_fr1 to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %vt_fr1, align 4
  %add101 = add i16 %26, %cond98
  store i16 %add101, ptr %vt_fr1, align 4
  %conv42 = zext i16 %add101 to i32
  %cmp44.not = icmp ult i32 %12, %conv42
  br i1 %cmp44.not, label %cond.end97.cleanup103_crit_edge, label %cond.end97.for.body_crit_edge

cond.end97.for.body_crit_edge:                    ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cond.end97.cleanup103_crit_edge:                  ; preds = %cond.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup103

cleanup103:                                       ; preds = %cond.end97.cleanup103_crit_edge, %if.end82.cleanup103_crit_edge, %do.end.cleanup103_crit_edge
  %retval.2 = phi i32 [ -22, %do.end.cleanup103_crit_edge ], [ -22, %cond.end97.cleanup103_crit_edge ], [ 0, %if.end82.cleanup103_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @print_pll(ptr noundef %dev, ptr noundef %pll) unnamed_addr #0 align 64 {
entry:
  %branches = alloca [2 x %struct.anon.45], align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %branches) #6
  %0 = getelementptr inbounds %struct.anon.45, ptr %branches, i32 0, i32 1
  %1 = getelementptr inbounds %struct.anon.45, ptr %branches, i32 0, i32 2
  %2 = getelementptr inbounds [2 x %struct.anon.45], ptr %branches, i32 0, i32 1
  %3 = getelementptr inbounds [2 x %struct.anon.45], ptr %branches, i32 0, i32 1, i32 1
  %4 = getelementptr inbounds [2 x %struct.anon.45], ptr %branches, i32 0, i32 1, i32 2
  %vt_fr = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 13
  %5 = ptrtoint ptr %branches to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %vt_fr, ptr %branches, align 4
  %vt_bk = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 14
  %6 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %vt_bk, ptr %0, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %1, align 4
  %op_fr = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 15
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %op_fr, ptr %2, align 4
  %op_bk = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 16
  %9 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %op_bk, ptr %3, align 4
  %10 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_pll.__UNIQUE_ID_ddebug173, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_pll, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ext_clk_freq_hz = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 12
  %11 = ptrtoint ptr %ext_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ext_clk_freq_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_pll.__UNIQUE_ID_ddebug173, ptr noundef %dev, ptr noundef nonnull @.str.69, i32 noundef %12) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flags = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end163.for.body_crit_edge, %do.end
  %br.0349 = phi ptr [ %branches, %do.end ], [ %incdec.ptr, %if.end163.for.body_crit_edge ]
  %cmp = phi i1 [ true, %do.end ], [ false, %if.end163.for.body_crit_edge ]
  %which6 = getelementptr inbounds %struct.anon.45, ptr %br.0349, i32 0, i32 2
  %13 = ptrtoint ptr %which6 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %which6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %14)
  %switch.selectcmp.i = icmp eq i32 %14, 2
  %switch.select.i = select i1 %switch.selectcmp.i, ptr @.str.32, ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %14)
  %switch.selectcmp2.i = icmp eq i32 %14, 1
  %switch.select3.i = select i1 %switch.selectcmp2.i, ptr @.str.31, ptr %switch.select.i
  %15 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %flags, align 2
  %17 = and i16 %16, 256
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %17)
  %tobool8.not = icmp ne i16 %17, 0
  %brmerge = select i1 %tobool8.not, i1 true, i1 %switch.selectcmp.i
  br i1 %brmerge, label %do.body13, label %for.body.if.end83_crit_edge

for.body.if.end83_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

do.body13:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_pll.__UNIQUE_ID_ddebug174, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_pll, %if.then25)) #6
          to label %do.body31 [label %if.then25], !srcloc !241

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %br.0349 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %br.0349, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %19, align 4
  %conv27 = zext i16 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_pll.__UNIQUE_ID_ddebug174, ptr noundef %dev, ptr noundef nonnull @.str.70, ptr noundef %switch.select3.i, i32 noundef %conv27) #6
  br label %do.body31

do.body31:                                        ; preds = %if.then25, %do.body13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_pll.__UNIQUE_ID_ddebug175, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_pll, %if.then43)) #6
          to label %do.body49 [label %if.then43], !srcloc !241

if.then43:                                        ; preds = %do.body31
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %br.0349 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %br.0349, align 4
  %pll_multiplier = getelementptr inbounds %struct.ccs_pll_branch_fr, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %pll_multiplier to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %pll_multiplier, align 2
  %conv45 = zext i16 %25 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_pll.__UNIQUE_ID_ddebug175, ptr noundef %dev, ptr noundef nonnull @.str.71, ptr noundef %switch.select3.i, i32 noundef %conv45) #6
  br label %do.body49

do.body49:                                        ; preds = %if.then43, %do.body31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_pll.__UNIQUE_ID_ddebug176, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_pll, %if.then61)) #6
          to label %do.body66 [label %if.then61], !srcloc !241

if.then61:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %br.0349 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %br.0349, align 4
  %pll_ip_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_fr, ptr %27, i32 0, i32 2
  %28 = ptrtoint ptr %pll_ip_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %pll_ip_clk_freq_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_pll.__UNIQUE_ID_ddebug176, ptr noundef %dev, ptr noundef nonnull @.str.72, ptr noundef %switch.select3.i, i32 noundef %29) #6
  br label %do.body66

do.body66:                                        ; preds = %if.then61, %do.body49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_pll.__UNIQUE_ID_ddebug177, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_pll, %if.then78)) #6
          to label %if.end83 [label %if.then78], !srcloc !241

if.then78:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %br.0349 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %br.0349, align 4
  %pll_op_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_fr, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %pll_op_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %pll_op_clk_freq_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_pll.__UNIQUE_ID_ddebug177, ptr noundef %dev, ptr noundef nonnull @.str.73, ptr noundef %switch.select3.i, i32 noundef %33) #6
  br label %if.end83

if.end83:                                         ; preds = %if.then78, %do.body66, %for.body.if.end83_crit_edge
  %34 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %flags, align 2
  %36 = and i16 %35, 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %36)
  %tobool87.not = icmp eq i16 %36, 0
  br i1 %tobool87.not, label %if.end83.do.body93_crit_edge, label %lor.lhs.false88

if.end83.do.body93_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body93

lor.lhs.false88:                                  ; preds = %if.end83
  %37 = ptrtoint ptr %which6 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %which6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %38)
  %cmp90 = icmp eq i32 %38, 2
  br i1 %cmp90, label %lor.lhs.false88.do.body93_crit_edge, label %lor.lhs.false88.if.end163_crit_edge

lor.lhs.false88.if.end163_crit_edge:              ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end163

lor.lhs.false88.do.body93_crit_edge:              ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body93

do.body93:                                        ; preds = %lor.lhs.false88.do.body93_crit_edge, %if.end83.do.body93_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_pll.__UNIQUE_ID_ddebug178, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_pll, %if.then105)) #6
          to label %do.body111 [label %if.then105], !srcloc !241

if.then105:                                       ; preds = %do.body93
  call void @__sanitizer_cov_trace_pc() #8
  %bk106 = getelementptr inbounds %struct.anon.45, ptr %br.0349, i32 0, i32 1
  %39 = ptrtoint ptr %bk106 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %bk106, align 4
  %41 = ptrtoint ptr %40 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %40, align 4
  %conv107 = zext i16 %42 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_pll.__UNIQUE_ID_ddebug178, ptr noundef %dev, ptr noundef nonnull @.str.74, ptr noundef %switch.select3.i, i32 noundef %conv107) #6
  br label %do.body111

do.body111:                                       ; preds = %if.then105, %do.body93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_pll.__UNIQUE_ID_ddebug179, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_pll, %if.then123)) #6
          to label %do.body129 [label %if.then123], !srcloc !241

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #8
  %bk124 = getelementptr inbounds %struct.anon.45, ptr %br.0349, i32 0, i32 1
  %43 = ptrtoint ptr %bk124 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %bk124, align 4
  %pix_clk_div = getelementptr inbounds %struct.ccs_pll_branch_bk, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %pix_clk_div to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %pix_clk_div, align 2
  %conv125 = zext i16 %46 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_pll.__UNIQUE_ID_ddebug179, ptr noundef %dev, ptr noundef nonnull @.str.75, ptr noundef %switch.select3.i, i32 noundef %conv125) #6
  br label %do.body129

do.body129:                                       ; preds = %if.then123, %do.body111
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_pll.__UNIQUE_ID_ddebug180, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_pll, %if.then141)) #6
          to label %do.body146 [label %if.then141], !srcloc !241

if.then141:                                       ; preds = %do.body129
  call void @__sanitizer_cov_trace_pc() #8
  %bk142 = getelementptr inbounds %struct.anon.45, ptr %br.0349, i32 0, i32 1
  %47 = ptrtoint ptr %bk142 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %bk142, align 4
  %sys_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_bk, ptr %48, i32 0, i32 2
  %49 = ptrtoint ptr %sys_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %sys_clk_freq_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_pll.__UNIQUE_ID_ddebug180, ptr noundef %dev, ptr noundef nonnull @.str.76, ptr noundef %switch.select3.i, i32 noundef %50) #6
  br label %do.body146

do.body146:                                       ; preds = %if.then141, %do.body129
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_pll.__UNIQUE_ID_ddebug181, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_pll, %if.then158)) #6
          to label %if.end163 [label %if.then158], !srcloc !241

if.then158:                                       ; preds = %do.body146
  call void @__sanitizer_cov_trace_pc() #8
  %bk159 = getelementptr inbounds %struct.anon.45, ptr %br.0349, i32 0, i32 1
  %51 = ptrtoint ptr %bk159 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %bk159, align 4
  %pix_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_bk, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %pix_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %pix_clk_freq_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_pll.__UNIQUE_ID_ddebug181, ptr noundef %dev, ptr noundef nonnull @.str.77, ptr noundef %switch.select3.i, i32 noundef %54) #6
  br label %if.end163

if.end163:                                        ; preds = %if.then158, %do.body146, %lor.lhs.false88.if.end163_crit_edge
  %incdec.ptr = getelementptr %struct.anon.45, ptr %br.0349, i32 1
  br i1 %cmp, label %if.end163.for.body_crit_edge, label %do.body164

if.end163.for.body_crit_edge:                     ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

do.body164:                                       ; preds = %if.end163
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_pll.__UNIQUE_ID_ddebug182, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_pll, %if.then176)) #6
          to label %do.body180 [label %if.then176], !srcloc !241

if.then176:                                       ; preds = %do.body164
  call void @__sanitizer_cov_trace_pc() #8
  %pixel_rate_pixel_array = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 18
  %55 = ptrtoint ptr %pixel_rate_pixel_array to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %pixel_rate_pixel_array, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_pll.__UNIQUE_ID_ddebug182, ptr noundef %dev, ptr noundef nonnull @.str.78, i32 noundef %56) #6
  br label %do.body180

do.body180:                                       ; preds = %if.then176, %do.body164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_pll.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_pll, %if.then192)) #6
          to label %do.body196 [label %if.then192], !srcloc !241

if.then192:                                       ; preds = %do.body180
  call void @__sanitizer_cov_trace_pc() #8
  %pixel_rate_csi = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 17
  %57 = ptrtoint ptr %pixel_rate_csi to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %pixel_rate_csi, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_pll.__UNIQUE_ID_ddebug183, ptr noundef %dev, ptr noundef nonnull @.str.79, i32 noundef %58) #6
  br label %do.body196

do.body196:                                       ; preds = %if.then192, %do.body180
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @print_pll.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@print_pll, %if.then208)) #6
          to label %do.end255 [label %if.then208], !srcloc !241

if.then208:                                       ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #8
  %59 = ptrtoint ptr %flags to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %flags, align 2
  %conv210 = zext i16 %60 to i32
  %and211 = and i32 %conv210, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and211)
  %tobool212.not = icmp eq i32 %and211, 0
  %cond = select i1 %tobool212.not, ptr @.str.82, ptr @.str.81
  %and215 = and i32 %conv210, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and215)
  %tobool216.not = icmp eq i32 %and215, 0
  %cond217 = select i1 %tobool216.not, ptr @.str.82, ptr @.str.83
  %and220 = and i32 %conv210, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and220)
  %tobool221.not = icmp eq i32 %and220, 0
  %cond222 = select i1 %tobool221.not, ptr @.str.82, ptr @.str.84
  %and225 = and i32 %conv210, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and225)
  %tobool226.not = icmp eq i32 %and225, 0
  %cond227 = select i1 %tobool226.not, ptr @.str.82, ptr @.str.85
  %and230 = and i32 %conv210, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and230)
  %tobool231.not = icmp eq i32 %and230, 0
  %cond232 = select i1 %tobool231.not, ptr @.str.82, ptr @.str.86
  %and235 = and i32 %conv210, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and235)
  %tobool236.not = icmp eq i32 %and235, 0
  %cond237 = select i1 %tobool236.not, ptr @.str.82, ptr @.str.87
  %and240 = and i32 %conv210, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and240)
  %tobool241.not = icmp eq i32 %and240, 0
  %cond242 = select i1 %tobool241.not, ptr @.str.82, ptr @.str.88
  %and245 = and i32 %conv210, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and245)
  %tobool246.not = icmp eq i32 %and245, 0
  %cond247 = select i1 %tobool246.not, ptr @.str.82, ptr @.str.89
  %and250 = and i32 %conv210, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and250)
  %tobool251.not = icmp eq i32 %and250, 0
  %cond252 = select i1 %tobool251.not, ptr @.str.82, ptr @.str.90
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @print_pll.__UNIQUE_ID_ddebug184, ptr noundef %dev, ptr noundef nonnull @.str.80, ptr noundef nonnull %cond, ptr noundef nonnull %cond217, ptr noundef nonnull %cond222, ptr noundef nonnull %cond227, ptr noundef nonnull %cond232, ptr noundef nonnull %cond237, ptr noundef nonnull %cond242, ptr noundef nonnull %cond247, ptr noundef nonnull %cond252) #6
  br label %do.end255

do.end255:                                        ; preds = %if.then208, %do.body196
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %branches) #6
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn
declare dso_local i32 @lcm(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ccs_pll_find_vt_sys_div(ptr noundef %dev, ptr nocapture noundef readonly %lim, ptr nocapture noundef readonly %pll_fr, i16 noundef zeroext %min_vt_div, i16 noundef zeroext %max_vt_div, ptr nocapture noundef %min_sys_div, ptr nocapture noundef %max_sys_div) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %vt_bk = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3
  %0 = ptrtoint ptr %vt_bk to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %vt_bk, align 4
  %2 = ptrtoint ptr %min_sys_div to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %1, ptr %min_sys_div, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_find_vt_sys_div, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %3 = ptrtoint ptr %min_sys_div to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %min_sys_div, align 2
  %conv = zext i16 %4 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug187, ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %conv) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %5 = ptrtoint ptr %min_sys_div to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %min_sys_div, align 2
  %conv3 = zext i16 %min_vt_div to i32
  %max_pix_clk_div = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 5
  %7 = ptrtoint ptr %max_pix_clk_div to i32
  call void @__asan_load2_noabort(i32 %7)
  %8 = load i16, ptr %max_pix_clk_div, align 2
  %conv5 = zext i16 %8 to i32
  %add = add nsw i32 %conv3, -1
  %sub = add nsw i32 %add, %conv5
  %div = sdiv i32 %sub, %conv5
  %conv11 = zext i16 %6 to i32
  %conv12 = and i32 %div, 65535
  %9 = tail call i32 @llvm.umax.i32(i32 %conv12, i32 %conv11)
  %conv16 = trunc i32 %9 to i16
  %10 = ptrtoint ptr %min_sys_div to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv16, ptr %min_sys_div, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug190, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_find_vt_sys_div, %if.then29)) #6
          to label %do.end32 [label %if.then29], !srcloc !241

if.then29:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %min_sys_div to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %min_sys_div, align 2
  %conv30 = zext i16 %12 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug190, ptr noundef %dev, ptr noundef nonnull @.str.50, i32 noundef %conv30) #6
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.end
  %13 = ptrtoint ptr %min_sys_div to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %min_sys_div, align 2
  %pll_op_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_branch_fr, ptr %pll_fr, i32 0, i32 3
  %15 = ptrtoint ptr %pll_op_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pll_op_clk_freq_hz, align 4
  %max_sys_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 3
  %17 = ptrtoint ptr %max_sys_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %max_sys_clk_freq_hz, align 4
  %div34 = udiv i32 %16, %18
  %conv37 = zext i16 %14 to i32
  %conv38 = and i32 %div34, 65535
  %19 = tail call i32 @llvm.umax.i32(i32 %conv38, i32 %conv37)
  %conv47 = trunc i32 %19 to i16
  %20 = ptrtoint ptr %min_sys_div to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 %conv47, ptr %min_sys_div, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug193, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_find_vt_sys_div, %if.then60)) #6
          to label %do.end63 [label %if.then60], !srcloc !241

if.then60:                                        ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %min_sys_div to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %min_sys_div, align 2
  %conv61 = zext i16 %22 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug193, ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %conv61) #6
  br label %do.end63

do.end63:                                         ; preds = %if.then60, %do.end32
  %23 = ptrtoint ptr %min_sys_div to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %min_sys_div, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %24)
  %cmp.i = icmp eq i16 %24, 1
  %add.i = add i16 %24, 1
  %and.i = and i16 %add.i, -2
  %conv66 = select i1 %cmp.i, i16 1, i16 %and.i
  %25 = ptrtoint ptr %min_sys_div to i32
  call void @__asan_store2_noabort(i32 %25)
  store i16 %conv66, ptr %min_sys_div, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug194, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_find_vt_sys_div, %if.then79)) #6
          to label %do.end82 [label %if.then79], !srcloc !241

if.then79:                                        ; preds = %do.end63
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %min_sys_div to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %min_sys_div, align 2
  %conv80 = zext i16 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug194, ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %conv80) #6
  br label %do.end82

do.end82:                                         ; preds = %if.then79, %do.end63
  %max_sys_clk_div = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %max_sys_clk_div to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %max_sys_clk_div, align 2
  %30 = ptrtoint ptr %max_sys_div to i32
  call void @__asan_store2_noabort(i32 %30)
  store i16 %29, ptr %max_sys_div, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug195, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_find_vt_sys_div, %if.then96)) #6
          to label %do.end99 [label %if.then96], !srcloc !241

if.then96:                                        ; preds = %do.end82
  call void @__sanitizer_cov_trace_pc() #8
  %31 = ptrtoint ptr %max_sys_div to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %max_sys_div, align 2
  %conv97 = zext i16 %32 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug195, ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %conv97) #6
  br label %do.end99

do.end99:                                         ; preds = %if.then96, %do.end82
  %33 = ptrtoint ptr %max_sys_div to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %max_sys_div, align 2
  %conv100 = zext i16 %max_vt_div to i32
  %min_pix_clk_div = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 4
  %35 = ptrtoint ptr %min_pix_clk_div to i32
  call void @__asan_load2_noabort(i32 %35)
  %36 = load i16, ptr %min_pix_clk_div, align 4
  %conv102 = zext i16 %36 to i32
  %add103 = add nsw i32 %conv100, -1
  %sub104 = add nsw i32 %add103, %conv102
  %div108 = sdiv i32 %sub104, %conv102
  %conv111 = zext i16 %34 to i32
  %conv112 = and i32 %div108, 65535
  %37 = tail call i32 @llvm.umin.i32(i32 %conv112, i32 %conv111)
  %conv121 = trunc i32 %37 to i16
  %38 = ptrtoint ptr %max_sys_div to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv121, ptr %max_sys_div, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug198, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_find_vt_sys_div, %if.then134)) #6
          to label %do.end137 [label %if.then134], !srcloc !241

if.then134:                                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #8
  %39 = ptrtoint ptr %max_sys_div to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %max_sys_div, align 2
  %conv135 = zext i16 %40 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug198, ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %conv135) #6
  br label %do.end137

do.end137:                                        ; preds = %if.then134, %do.end99
  %41 = ptrtoint ptr %max_sys_div to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %max_sys_div, align 2
  %43 = ptrtoint ptr %pll_op_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %pll_op_clk_freq_hz, align 4
  %min_pix_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 6
  %45 = ptrtoint ptr %min_pix_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %min_pix_clk_freq_hz, align 4
  %add140 = add i32 %44, -1
  %sub141 = add i32 %add140, %46
  %div144 = udiv i32 %sub141, %46
  %conv147 = zext i16 %42 to i32
  %conv148 = and i32 %div144, 65535
  %47 = tail call i32 @llvm.umin.i32(i32 %conv148, i32 %conv147)
  %conv157 = trunc i32 %47 to i16
  %48 = ptrtoint ptr %max_sys_div to i32
  call void @__asan_store2_noabort(i32 %48)
  store i16 %conv157, ptr %max_sys_div, align 2
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug201, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@ccs_pll_find_vt_sys_div, %if.then170)) #6
          to label %do.end173 [label %if.then170], !srcloc !241

if.then170:                                       ; preds = %do.end137
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %max_sys_div to i32
  call void @__asan_load2_noabort(i32 %49)
  %50 = load i16, ptr %max_sys_div, align 2
  %conv171 = zext i16 %50 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug201, ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %conv171) #6
  br label %do.end173

do.end173:                                        ; preds = %if.then170, %do.end137
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__ccs_pll_calculate_vt_tree(ptr noundef %dev, ptr nocapture noundef readonly %lim, ptr nocapture noundef %pll, i32 noundef %mul, i32 noundef %div) unnamed_addr #4 align 64 {
entry:
  %min_sys_div = alloca i16, align 2
  %max_sys_div = alloca i16, align 2
  call void @__sanitizer_cov_trace_pc() #8
  %vt_fr1 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 13
  %vt_bk2 = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 14
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %min_sys_div) #6
  %0 = ptrtoint ptr %min_sys_div to i32
  call void @__asan_store2_noabort(i32 %0)
  store i16 -1, ptr %min_sys_div, align 2, !annotation !244
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %max_sys_div) #6
  %1 = ptrtoint ptr %max_sys_div to i32
  call void @__asan_store2_noabort(i32 %1)
  store i16 -1, ptr %max_sys_div, align 2, !annotation !244
  %ext_clk_freq_hz = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 12
  %2 = ptrtoint ptr %ext_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ext_clk_freq_hz, align 4
  %4 = ptrtoint ptr %vt_fr1 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %vt_fr1, align 4
  %conv = zext i16 %5 to i32
  %div3 = udiv i32 %3, %conv
  %pll_ip_clk_freq_hz = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 13, i32 2
  %6 = ptrtoint ptr %pll_ip_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %div3, ptr %pll_ip_clk_freq_hz, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug202, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ccs_pll_calculate_vt_tree, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !241

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %pll_ip_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %pll_ip_clk_freq_hz, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug202, ptr noundef %dev, ptr noundef nonnull @.str.63, i32 noundef %8) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %min_pll_op_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 2, i32 6
  %9 = ptrtoint ptr %min_pll_op_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %min_pll_op_clk_freq_hz, align 4
  %11 = ptrtoint ptr %pll_ip_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pll_ip_clk_freq_hz, align 4
  %mul8 = mul i32 %12, %mul
  %add = add i32 %10, -1
  %sub = add i32 %add, %mul8
  %div11 = udiv i32 %sub, %mul8
  call void @__sanitizer_cov_trace_cmp4(i32 %mul8, i32 %sub)
  %tobool.not.i = icmp ugt i32 %mul8, %sub
  %..i = select i1 %tobool.not.i, i32 1, i32 %div11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug203, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ccs_pll_calculate_vt_tree, %if.then25)) #6
          to label %do.end28 [label %if.then25], !srcloc !241

if.then25:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug203, ptr noundef %dev, ptr noundef nonnull @.str.64, i32 noundef %..i) #6
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.end
  %min_pll_multiplier = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %min_pll_multiplier to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %min_pll_multiplier, align 4
  %conv29 = zext i16 %14 to i32
  %mul30 = mul i32 %..i, %mul
  %add31 = add i32 %mul30, -1
  %sub32 = add i32 %add31, %conv29
  %div34 = udiv i32 %sub32, %mul30
  %mul35 = mul i32 %div34, %..i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug204, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ccs_pll_calculate_vt_tree, %if.then48)) #6
          to label %do.end51 [label %if.then48], !srcloc !241

if.then48:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug204, ptr noundef %dev, ptr noundef nonnull @.str.65, i32 noundef %mul35) #6
  br label %do.end51

do.end51:                                         ; preds = %if.then48, %do.end28
  %mul52 = mul i32 %mul35, %mul
  %conv53 = trunc i32 %mul52 to i16
  %pll_multiplier = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 13, i32 1
  %15 = ptrtoint ptr %pll_multiplier to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 %conv53, ptr %pll_multiplier, align 2
  %conv55 = and i32 %mul52, 65535
  %16 = ptrtoint ptr %pll_ip_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pll_ip_clk_freq_hz, align 4
  %mul57 = mul i32 %17, %conv55
  %max_pll_op_clk_freq_hz = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 2, i32 7
  %18 = ptrtoint ptr %max_pll_op_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %max_pll_op_clk_freq_hz, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %mul57, i32 %19)
  %cmp = icmp ugt i32 %mul57, %19
  br i1 %cmp, label %do.end51.cleanup190_crit_edge, label %if.end60

do.end51.cleanup190_crit_edge:                    ; preds = %do.end51
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup190

if.end60:                                         ; preds = %do.end51
  %pll_op_clk_freq_hz = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 13, i32 3
  %20 = ptrtoint ptr %pll_op_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %mul57, ptr %pll_op_clk_freq_hz, align 4
  %mul65 = mul i32 %mul35, %div
  %conv66 = trunc i32 %mul65 to i16
  call fastcc void @ccs_pll_find_vt_sys_div(ptr noundef %dev, ptr noundef %lim, ptr noundef %vt_fr1, i16 noundef zeroext %conv66, i16 noundef zeroext %conv66, ptr noundef nonnull %min_sys_div, ptr noundef nonnull %max_sys_div)
  %conv67 = and i32 %mul65, 65535
  %and = and i32 %mul65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool68.not = icmp eq i32 %and, 0
  br i1 %tobool68.not, label %cond.false, label %if.end60.cond.end_crit_edge

if.end60.cond.end_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end

cond.false:                                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %max_sys_div to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %max_sys_div, align 2
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end60.cond.end_crit_edge
  %cond = phi i16 [ %22, %cond.false ], [ 1, %if.end60.cond.end_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug205, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ccs_pll_calculate_vt_tree, %if.then83)) #6
          to label %do.end88 [label %if.then83], !srcloc !241

if.then83:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %min_sys_div to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %min_sys_div, align 2
  %conv84 = zext i16 %24 to i32
  %conv85 = zext i16 %cond to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug205, ptr noundef %dev, ptr noundef nonnull @.str.66, i32 noundef %conv84, i32 noundef %conv85) #6
  br label %do.end88

do.end88:                                         ; preds = %if.then83, %cond.end
  %25 = ptrtoint ptr %min_sys_div to i32
  call void @__asan_load2_noabort(i32 %25)
  %26 = load i16, ptr %min_sys_div, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %26, i16 %cond)
  %cmp91.not292 = icmp ugt i16 %26, %cond
  br i1 %cmp91.not292, label %do.end88.cleanup190_crit_edge, label %for.body.lr.ph

do.end88.cleanup190_crit_edge:                    ; preds = %do.end88
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup190

for.body.lr.ph:                                   ; preds = %do.end88
  %min_pix_clk_div = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 4
  %max_pix_clk_div = getelementptr inbounds %struct.ccs_pll_limits, ptr %lim, i32 0, i32 3, i32 5
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %best_pix_div.0295 = phi i16 [ 16383, %for.body.lr.ph ], [ %best_pix_div.2, %cleanup.for.body_crit_edge ]
  %best_div.0294 = phi i16 [ -1, %for.body.lr.ph ], [ %best_div.2, %cleanup.for.body_crit_edge ]
  %sys_div.0293 = phi i16 [ %26, %for.body.lr.ph ], [ %add168, %cleanup.for.body_crit_edge ]
  %conv89296 = zext i16 %sys_div.0293 to i32
  %conv67.frozen = freeze i32 %conv67
  %conv89296.frozen = freeze i32 %conv89296
  %div100 = udiv i32 %conv67.frozen, %conv89296.frozen
  %27 = mul i32 %div100, %conv89296.frozen
  %rem.decomposed = sub i32 %conv67.frozen, %27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool95.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool95.not, label %if.end97, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end97:                                         ; preds = %for.body
  %conv101 = trunc i32 %div100 to i16
  %28 = ptrtoint ptr %min_pix_clk_div to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %min_pix_clk_div, align 4
  %conv103 = zext i16 %29 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div100, i32 %conv103)
  %cmp104 = icmp ult i32 %div100, %conv103
  br i1 %cmp104, label %if.end97.do.body111_crit_edge, label %lor.lhs.false

if.end97.do.body111_crit_edge:                    ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body111

lor.lhs.false:                                    ; preds = %if.end97
  %30 = ptrtoint ptr %max_pix_clk_div to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %max_pix_clk_div, align 2
  %conv107 = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div100, i32 %conv107)
  %cmp108 = icmp ugt i32 %div100, %conv107
  br i1 %cmp108, label %lor.lhs.false.do.body111_crit_edge, label %do.body133

lor.lhs.false.do.body111_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body111

do.body111:                                       ; preds = %lor.lhs.false.do.body111_crit_edge, %if.end97.do.body111_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug206, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ccs_pll_calculate_vt_tree, %if.then123)) #6
          to label %cleanup [label %if.then123], !srcloc !241

if.then123:                                       ; preds = %do.body111
  call void @__sanitizer_cov_trace_pc() #8
  %32 = ptrtoint ptr %min_pix_clk_div to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %min_pix_clk_div, align 4
  %conv126 = zext i16 %33 to i32
  %34 = ptrtoint ptr %max_pix_clk_div to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %max_pix_clk_div, align 2
  %conv128 = zext i16 %35 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug206, ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %div100, i32 noundef %conv126, i32 noundef %conv128) #6
  br label %cleanup

do.body133:                                       ; preds = %lor.lhs.false
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug207, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__ccs_pll_calculate_vt_tree, %if.then145)) #6
          to label %do.end151 [label %if.then145], !srcloc !241

if.then145:                                       ; preds = %do.body133
  call void @__sanitizer_cov_trace_pc() #8
  %conv148 = zext i16 %best_pix_div.0295 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug207, ptr noundef %dev, ptr noundef nonnull @.str.67, i32 noundef %conv89296, i32 noundef %div100, i32 noundef %conv148) #6
  br label %do.end151

do.end151:                                        ; preds = %if.then145, %do.body133
  %mul154 = mul nuw i32 %div100, %conv89296
  %conv155 = zext i16 %best_pix_div.0295 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %mul154, i32 %conv155)
  %cmp156.not = icmp sgt i32 %mul154, %conv155
  %conv162 = trunc i32 %mul154 to i16
  %spec.select = select i1 %cmp156.not, i16 %best_div.0294, i16 %conv162
  %spec.select269 = select i1 %cmp156.not, i16 %best_pix_div.0295, i16 %conv101
  br label %cleanup

cleanup:                                          ; preds = %do.end151, %if.then123, %do.body111, %for.body.cleanup_crit_edge
  %best_div.2 = phi i16 [ %spec.select, %do.end151 ], [ %best_div.0294, %for.body.cleanup_crit_edge ], [ %best_div.0294, %if.then123 ], [ %best_div.0294, %do.body111 ]
  %best_pix_div.2 = phi i16 [ %spec.select269, %do.end151 ], [ %best_pix_div.0295, %for.body.cleanup_crit_edge ], [ %best_pix_div.0295, %if.then123 ], [ %best_pix_div.0295, %do.body111 ]
  %sub166 = add i16 %sys_div.0293, 2
  %add168 = and i16 %sub166, -2
  %cmp91.not = icmp ugt i16 %add168, %cond
  br i1 %cmp91.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_const_cmp2(i16 16383, i16 %best_pix_div.2)
  %cmp171 = icmp eq i16 %best_pix_div.2, 16383
  br i1 %cmp171, label %for.end.cleanup190_crit_edge, label %if.end174

for.end.cleanup190_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup190

if.end174:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  %36 = udiv i16 %best_div.2, %best_pix_div.2
  %37 = ptrtoint ptr %vt_bk2 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %36, ptr %vt_bk2, align 4
  %pix_clk_div = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 14, i32 1
  %38 = ptrtoint ptr %pix_clk_div to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %best_pix_div.2, ptr %pix_clk_div, align 2
  %39 = ptrtoint ptr %pll_op_clk_freq_hz to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %pll_op_clk_freq_hz, align 4
  %conv181 = zext i16 %36 to i32
  %div182 = udiv i32 %40, %conv181
  %sys_clk_freq_hz = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 14, i32 2
  %41 = ptrtoint ptr %sys_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %div182, ptr %sys_clk_freq_hz, align 4
  %conv185 = zext i16 %best_pix_div.2 to i32
  %div186 = udiv i32 %div182, %conv185
  %pix_clk_freq_hz = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 14, i32 3
  %42 = ptrtoint ptr %pix_clk_freq_hz to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div186, ptr %pix_clk_freq_hz, align 4
  %vt_lanes = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 2
  %43 = ptrtoint ptr %vt_lanes to i32
  call void @__asan_load1_noabort(i32 %43)
  %44 = load i8, ptr %vt_lanes, align 2
  %conv188 = zext i8 %44 to i32
  %mul189 = mul i32 %div186, %conv188
  %pixel_rate_pixel_array = getelementptr inbounds %struct.ccs_pll, ptr %pll, i32 0, i32 18
  %45 = ptrtoint ptr %pixel_rate_pixel_array to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mul189, ptr %pixel_rate_pixel_array, align 4
  br label %cleanup190

cleanup190:                                       ; preds = %if.end174, %for.end.cleanup190_crit_edge, %do.end88.cleanup190_crit_edge, %do.end51.cleanup190_crit_edge
  %retval.0 = phi i32 [ 0, %if.end174 ], [ -22, %do.end51.cleanup190_crit_edge ], [ -22, %for.end.cleanup190_crit_edge ], [ -22, %do.end88.cleanup190_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %max_sys_div) #6
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %min_sys_div) #6
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind readnone }
attributes #10 = { nounwind readnone willreturn }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !14, !15, !17, !18, !20, !21, !23, !24, !26, !27, !29, !30, !32, !34, !36, !38, !39, !41, !42, !43, !45, !46, !48, !49, !51, !52, !54, !55, !57, !58, !60, !61, !63, !64, !66, !67, !69, !70, !72, !73, !75, !76, !78, !79, !81, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !100, !102, !104, !106, !108, !109, !110, !112, !113, !115, !116, !118, !119, !121, !122, !124, !125, !127, !128, !130, !131, !133, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !157, !159, !160, !162, !163, !164, !166, !167, !169, !170, !171, !173, !174, !176, !177, !179, !180, !182, !184, !185, !187, !188, !189, !191, !192, !194, !195, !197, !198, !200, !201, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !218, !219, !221, !222, !223, !224, !225, !226, !227, !228, !229, !230, !231}
!llvm.module.flags = !{!232, !233, !234, !235, !236, !237, !238, !239}
!llvm.ident = !{!240}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/media/i2c/ccs-pll.c", i32 762, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug250, !1, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/media/i2c/ccs-pll.c", i32 767, i32 2}
!8 = !{ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug251, !7, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/media/i2c/ccs-pll.c", i32 768, i32 2}
!11 = !{ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug252, !10, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/media/i2c/ccs-pll.c", i32 770, i32 2}
!14 = !{ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug253, !13, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/media/i2c/ccs-pll.c", i32 791, i32 2}
!17 = !{ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug254, !16, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/i2c/ccs-pll.c", i32 802, i32 2}
!20 = !{ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug259, !19, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!21 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/media/i2c/ccs-pll.c", i32 809, i32 2}
!23 = !{ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug260, !22, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!24 = !{ptr @.str.10, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/media/i2c/ccs-pll.c", i32 818, i32 2}
!26 = !{ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug263, !25, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/media/i2c/ccs-pll.c", i32 860, i32 3}
!29 = !{ptr @ccs_pll_calculate.__UNIQUE_ID_ddebug264, !28, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!30 = !{ptr @__ksymtab_ccs_pll_calculate, !31, !"__ksymtab_ccs_pll_calculate", i1 false, i1 false}
!31 = !{!"../drivers/media/i2c/ccs-pll.c", i32 876, i32 1}
!32 = !{ptr @__UNIQUE_ID_author265, !33, !"__UNIQUE_ID_author265", i1 false, i1 false}
!33 = !{!"../drivers/media/i2c/ccs-pll.c", i32 878, i32 1}
!34 = !{ptr @__UNIQUE_ID_description266, !35, !"__UNIQUE_ID_description266", i1 false, i1 false}
!35 = !{!"../drivers/media/i2c/ccs-pll.c", i32 879, i32 1}
!36 = !{ptr @__UNIQUE_ID_file267, !37, !"__UNIQUE_ID_file267", i1 false, i1 false}
!37 = !{!"../drivers/media/i2c/ccs-pll.c", i32 880, i32 1}
!38 = !{ptr @__UNIQUE_ID_license268, !37, !"__UNIQUE_ID_license268", i1 false, i1 false}
!39 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/media/i2c/ccs-pll.c", i32 609, i32 2}
!41 = !{ptr @.str.13, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug228, !40, !"__UNIQUE_ID_ddebug228", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/i2c/ccs-pll.c", i32 613, i32 2}
!45 = !{ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug229, !44, !"__UNIQUE_ID_ddebug229", i1 false, i1 false}
!46 = !{ptr @.str.15, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/media/i2c/ccs-pll.c", i32 622, i32 2}
!48 = !{ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug232, !47, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!49 = !{ptr @.str.16, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/i2c/ccs-pll.c", i32 628, i32 2}
!51 = !{ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug235, !50, !"__UNIQUE_ID_ddebug235", i1 false, i1 false}
!52 = !{ptr @.str.17, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/media/i2c/ccs-pll.c", i32 632, i32 2}
!54 = !{ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug238, !53, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!55 = !{ptr @.str.18, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/media/i2c/ccs-pll.c", i32 639, i32 2}
!57 = !{ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug239, !56, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!58 = !{ptr @.str.19, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/media/i2c/ccs-pll.c", i32 644, i32 2}
!60 = !{ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug242, !59, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!61 = !{ptr @.str.20, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/media/i2c/ccs-pll.c", i32 648, i32 3}
!63 = !{ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug243, !62, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/i2c/ccs-pll.c", i32 654, i32 2}
!66 = !{ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug244, !65, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!67 = !{ptr @.str.22, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/media/i2c/ccs-pll.c", i32 656, i32 2}
!69 = !{ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug245, !68, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!70 = !{ptr @.str.23, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/media/i2c/ccs-pll.c", i32 662, i32 2}
!72 = !{ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug246, !71, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!73 = !{ptr @.str.24, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/media/i2c/ccs-pll.c", i32 664, i32 3}
!75 = !{ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug247, !74, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!76 = !{ptr @.str.25, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/i2c/ccs-pll.c", i32 670, i32 2}
!78 = !{ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug248, !77, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!79 = !{ptr @.str.26, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/media/i2c/ccs-pll.c", i32 696, i32 2}
!81 = !{ptr @ccs_pll_calculate_op.__UNIQUE_ID_ddebug249, !80, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!82 = !{ptr @.str.27, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/media/i2c/ccs-pll.c", i32 170, i32 40}
!84 = !{ptr @.str.28, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/media/i2c/ccs-pll.c", i32 176, i32 12}
!86 = !{ptr @.str.29, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/media/i2c/ccs-pll.c", i32 181, i32 12}
!88 = !{ptr @.str.30, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/media/i2c/ccs-pll.c", i32 186, i32 12}
!90 = !{ptr @.str.31, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/media/i2c/ccs-pll.c", i32 68, i32 10}
!92 = !{ptr @.str.32, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/media/i2c/ccs-pll.c", i32 70, i32 10}
!94 = !{ptr @.str.33, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/media/i2c/ccs-pll.c", i32 55, i32 2}
!96 = !{ptr @.str.34, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @bounds_check.__UNIQUE_ID_ddebug172, !95, !"__UNIQUE_ID_ddebug172", i1 false, i1 false}
!98 = !{ptr @.str.35, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/media/i2c/ccs-pll.c", i32 213, i32 36}
!100 = !{ptr @.str.36, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/media/i2c/ccs-pll.c", i32 218, i32 12}
!102 = !{ptr @.str.37, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/media/i2c/ccs-pll.c", i32 223, i32 12}
!104 = !{ptr @.str.38, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/media/i2c/ccs-pll.c", i32 228, i32 12}
!106 = !{ptr @.str.39, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/media/i2c/ccs-pll.c", i32 476, i32 3}
!108 = !{ptr @.str.40, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug214, !107, !"__UNIQUE_ID_ddebug214", i1 false, i1 false}
!110 = !{ptr @.str.41, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/media/i2c/ccs-pll.c", i32 489, i32 3}
!112 = !{ptr @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug215, !111, !"__UNIQUE_ID_ddebug215", i1 false, i1 false}
!113 = !{ptr @.str.42, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/media/i2c/ccs-pll.c", i32 502, i32 2}
!115 = !{ptr @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug216, !114, !"__UNIQUE_ID_ddebug216", i1 false, i1 false}
!116 = !{ptr @.str.43, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/media/i2c/ccs-pll.c", i32 506, i32 2}
!118 = !{ptr @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug219, !117, !"__UNIQUE_ID_ddebug219", i1 false, i1 false}
!119 = !{ptr @.str.44, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/media/i2c/ccs-pll.c", i32 510, i32 2}
!121 = !{ptr @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug222, !120, !"__UNIQUE_ID_ddebug222", i1 false, i1 false}
!122 = !{ptr @.str.45, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/media/i2c/ccs-pll.c", i32 513, i32 2}
!124 = !{ptr @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug223, !123, !"__UNIQUE_ID_ddebug223", i1 false, i1 false}
!125 = !{ptr @.str.46, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/media/i2c/ccs-pll.c", i32 517, i32 2}
!127 = !{ptr @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug226, !126, !"__UNIQUE_ID_ddebug226", i1 false, i1 false}
!128 = !{ptr @.str.47, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/media/i2c/ccs-pll.c", i32 540, i32 5}
!130 = !{ptr @ccs_pll_calculate_vt.__UNIQUE_ID_ddebug227, !129, !"__UNIQUE_ID_ddebug227", i1 false, i1 false}
!131 = !{ptr @.str.48, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/media/i2c/ccs-pll.c", i32 261, i32 2}
!133 = !{ptr @.str.49, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug187, !132, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!135 = !{ptr @.str.50, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/media/i2c/ccs-pll.c", i32 265, i32 2}
!137 = !{ptr @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug190, !136, !"__UNIQUE_ID_ddebug190", i1 false, i1 false}
!138 = !{ptr @.str.51, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/media/i2c/ccs-pll.c", i32 269, i32 2}
!140 = !{ptr @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug193, !139, !"__UNIQUE_ID_ddebug193", i1 false, i1 false}
!141 = !{ptr @.str.52, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/media/i2c/ccs-pll.c", i32 271, i32 2}
!143 = !{ptr @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug194, !142, !"__UNIQUE_ID_ddebug194", i1 false, i1 false}
!144 = !{ptr @.str.53, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/media/i2c/ccs-pll.c", i32 274, i32 2}
!146 = !{ptr @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug195, !145, !"__UNIQUE_ID_ddebug195", i1 false, i1 false}
!147 = !{ptr @.str.54, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/media/i2c/ccs-pll.c", i32 278, i32 2}
!149 = !{ptr @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug198, !148, !"__UNIQUE_ID_ddebug198", i1 false, i1 false}
!150 = !{ptr @.str.55, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/media/i2c/ccs-pll.c", i32 282, i32 2}
!152 = !{ptr @ccs_pll_find_vt_sys_div.__UNIQUE_ID_ddebug201, !151, !"__UNIQUE_ID_ddebug201", i1 false, i1 false}
!153 = !{ptr @.str.56, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/media/i2c/ccs-pll.c", i32 237, i32 3}
!155 = !{ptr @.str.57, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @check_ext_bounds.__UNIQUE_ID_ddebug185, !154, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!157 = !{ptr @.str.58, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/media/i2c/ccs-pll.c", i32 243, i32 3}
!159 = !{ptr @check_ext_bounds.__UNIQUE_ID_ddebug186, !158, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!160 = !{ptr @.str.59, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/media/i2c/ccs-pll.c", i32 401, i32 2}
!162 = !{ptr @.str.60, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug212, !161, !"__UNIQUE_ID_ddebug212", i1 false, i1 false}
!164 = !{ptr @.str.61, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/media/i2c/ccs-pll.c", i32 416, i32 3}
!166 = !{ptr @ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug213, !165, !"__UNIQUE_ID_ddebug213", i1 false, i1 false}
!167 = !{ptr @.str.62, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/media/i2c/ccs-pll.c", i32 305, i32 2}
!169 = !{ptr @.str.63, !168, !"<string literal>", i1 false, i1 false}
!170 = !{ptr @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug202, !168, !"__UNIQUE_ID_ddebug202", i1 false, i1 false}
!171 = !{ptr @.str.64, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/media/i2c/ccs-pll.c", i32 310, i32 2}
!173 = !{ptr @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug203, !172, !"__UNIQUE_ID_ddebug203", i1 false, i1 false}
!174 = !{ptr @.str.65, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/media/i2c/ccs-pll.c", i32 312, i32 2}
!176 = !{ptr @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug204, !175, !"__UNIQUE_ID_ddebug204", i1 false, i1 false}
!177 = !{ptr @.str.66, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/media/i2c/ccs-pll.c", i32 330, i32 2}
!179 = !{ptr @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug205, !178, !"__UNIQUE_ID_ddebug205", i1 false, i1 false}
!180 = !{ptr @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug206, !181, !"__UNIQUE_ID_ddebug206", i1 false, i1 false}
!181 = !{!"../drivers/media/i2c/ccs-pll.c", i32 343, i32 4}
!182 = !{ptr @.str.67, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/media/i2c/ccs-pll.c", i32 351, i32 3}
!184 = !{ptr @__ccs_pll_calculate_vt_tree.__UNIQUE_ID_ddebug207, !183, !"__UNIQUE_ID_ddebug207", i1 false, i1 false}
!185 = !{ptr @.str.68, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/media/i2c/ccs-pll.c", i32 90, i32 2}
!187 = !{ptr @.str.69, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @print_pll.__UNIQUE_ID_ddebug173, !186, !"__UNIQUE_ID_ddebug173", i1 false, i1 false}
!189 = !{ptr @.str.70, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/media/i2c/ccs-pll.c", i32 97, i32 4}
!191 = !{ptr @print_pll.__UNIQUE_ID_ddebug174, !190, !"__UNIQUE_ID_ddebug174", i1 false, i1 false}
!192 = !{ptr @.str.71, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/media/i2c/ccs-pll.c", i32 99, i32 4}
!194 = !{ptr @print_pll.__UNIQUE_ID_ddebug175, !193, !"__UNIQUE_ID_ddebug175", i1 false, i1 false}
!195 = !{ptr @.str.72, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/media/i2c/ccs-pll.c", i32 102, i32 4}
!197 = !{ptr @print_pll.__UNIQUE_ID_ddebug176, !196, !"__UNIQUE_ID_ddebug176", i1 false, i1 false}
!198 = !{ptr @.str.73, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/media/i2c/ccs-pll.c", i32 104, i32 4}
!200 = !{ptr @print_pll.__UNIQUE_ID_ddebug177, !199, !"__UNIQUE_ID_ddebug177", i1 false, i1 false}
!201 = !{ptr @.str.74, !202, !"<string literal>", i1 false, i1 false}
!202 = !{!"../drivers/media/i2c/ccs-pll.c", i32 110, i32 4}
!203 = !{ptr @print_pll.__UNIQUE_ID_ddebug178, !202, !"__UNIQUE_ID_ddebug178", i1 false, i1 false}
!204 = !{ptr @.str.75, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/media/i2c/ccs-pll.c", i32 112, i32 4}
!206 = !{ptr @print_pll.__UNIQUE_ID_ddebug179, !205, !"__UNIQUE_ID_ddebug179", i1 false, i1 false}
!207 = !{ptr @.str.76, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/media/i2c/ccs-pll.c", i32 115, i32 4}
!209 = !{ptr @print_pll.__UNIQUE_ID_ddebug180, !208, !"__UNIQUE_ID_ddebug180", i1 false, i1 false}
!210 = !{ptr @.str.77, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/media/i2c/ccs-pll.c", i32 117, i32 4}
!212 = !{ptr @print_pll.__UNIQUE_ID_ddebug181, !211, !"__UNIQUE_ID_ddebug181", i1 false, i1 false}
!213 = !{ptr @.str.78, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/media/i2c/ccs-pll.c", i32 122, i32 2}
!215 = !{ptr @print_pll.__UNIQUE_ID_ddebug182, !214, !"__UNIQUE_ID_ddebug182", i1 false, i1 false}
!216 = !{ptr @.str.79, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/media/i2c/ccs-pll.c", i32 124, i32 2}
!218 = !{ptr @print_pll.__UNIQUE_ID_ddebug183, !217, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!219 = !{ptr @.str.80, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/media/i2c/ccs-pll.c", i32 127, i32 2}
!221 = !{ptr @print_pll.__UNIQUE_ID_ddebug184, !220, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!222 = !{ptr @.str.81, !220, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @.str.82, !220, !"<string literal>", i1 false, i1 false}
!224 = !{ptr @.str.83, !220, !"<string literal>", i1 false, i1 false}
!225 = !{ptr @.str.84, !220, !"<string literal>", i1 false, i1 false}
!226 = !{ptr @.str.85, !220, !"<string literal>", i1 false, i1 false}
!227 = !{ptr @.str.86, !220, !"<string literal>", i1 false, i1 false}
!228 = !{ptr @.str.87, !220, !"<string literal>", i1 false, i1 false}
!229 = !{ptr @.str.88, !220, !"<string literal>", i1 false, i1 false}
!230 = !{ptr @.str.89, !220, !"<string literal>", i1 false, i1 false}
!231 = !{ptr @.str.90, !220, !"<string literal>", i1 false, i1 false}
!232 = !{i32 1, !"wchar_size", i32 2}
!233 = !{i32 1, !"min_enum_size", i32 4}
!234 = !{i32 8, !"branch-target-enforcement", i32 0}
!235 = !{i32 8, !"sign-return-address", i32 0}
!236 = !{i32 8, !"sign-return-address-all", i32 0}
!237 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!238 = !{i32 7, !"uwtable", i32 1}
!239 = !{i32 7, !"frame-pointer", i32 2}
!240 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!241 = !{i64 2148301478, i64 2148301483, i64 2148301496, i64 2148301540, i64 2148301574, i64 2148301595}
!242 = !{!"branch_weights", i32 2000, i32 1}
!243 = !{i64 2148326665, i64 2148326945, i64 2148327279, i64 2148327613}
!244 = !{!"auto-init"}
