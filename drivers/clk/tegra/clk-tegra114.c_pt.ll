; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-tegra114.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra114.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+tegra114_clock_tune_cpu_trimmers_high\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra114_clock_tune_cpu_trimmers_high\09\09\09\09"
module asm "\09.long\09__crc_tegra114_clock_tune_cpu_trimmers_high\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra114_clock_tune_cpu_trimmers_high:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra114_clock_tune_cpu_trimmers_high\22\09\09\09\09\09"
module asm "__kstrtabns_tegra114_clock_tune_cpu_trimmers_high:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tegra114_clock_tune_cpu_trimmers_low\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra114_clock_tune_cpu_trimmers_low\09\09\09\09"
module asm "\09.long\09__crc_tegra114_clock_tune_cpu_trimmers_low\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra114_clock_tune_cpu_trimmers_low:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra114_clock_tune_cpu_trimmers_low\22\09\09\09\09\09"
module asm "__kstrtabns_tegra114_clock_tune_cpu_trimmers_low:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tegra114_clock_tune_cpu_trimmers_init\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra114_clock_tune_cpu_trimmers_init\09\09\09\09"
module asm "\09.long\09__crc_tegra114_clock_tune_cpu_trimmers_init\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra114_clock_tune_cpu_trimmers_init:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra114_clock_tune_cpu_trimmers_init\22\09\09\09\09\09"
module asm "__kstrtabns_tegra114_clock_tune_cpu_trimmers_init:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tegra114_clock_assert_dfll_dvco_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra114_clock_assert_dfll_dvco_reset\09\09\09\09"
module asm "\09.long\09__crc_tegra114_clock_assert_dfll_dvco_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra114_clock_assert_dfll_dvco_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra114_clock_assert_dfll_dvco_reset\22\09\09\09\09\09"
module asm "__kstrtabns_tegra114_clock_assert_dfll_dvco_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab+tegra114_clock_deassert_dfll_dvco_reset\22, \22a\22\09"
module asm "\09.weak\09__crc_tegra114_clock_deassert_dfll_dvco_reset\09\09\09\09"
module asm "\09.long\09__crc_tegra114_clock_deassert_dfll_dvco_reset\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_tegra114_clock_deassert_dfll_dvco_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22tegra114_clock_deassert_dfll_dvco_reset\22\09\09\09\09\09"
module asm "__kstrtabns_tegra114_clock_deassert_dfll_dvco_reset:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_audio_clk_info = type { ptr, ptr, i32, ptr }
%struct.tegra_clk_pll_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_devclk = type { i32, ptr, ptr }
%struct.tegra_cpu_car_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_clk = type { i32, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_div_table = type { i32, i32 }
%struct.pdiv_map = type { i8, i8 }
%struct.div_nmp = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.tegra_clk_pll_freq_table = type { i32, i32, i32, i32, i8, i8, i16 }
%struct.tegra_periph_init_data = type { ptr, i32, %union.anon.41, i32, %struct.tegra_clk_periph, i32, ptr, ptr, i32 }
%union.anon.41 = type { ptr }
%struct.tegra_clk_periph = type { i32, %struct.clk_hw, %struct.clk_mux, %struct.tegra_clk_frac_div, %struct.tegra_clk_periph_gate, ptr, ptr, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_mux = type { %struct.clk_hw, ptr, ptr, i32, i8, i8, ptr }
%struct.tegra_clk_frac_div = type { %struct.clk_hw, ptr, i8, i8, i8, i8, ptr }
%struct.tegra_clk_periph_gate = type { i32, %struct.clk_hw, ptr, i8, i32, ptr, ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tegra_clk_init_table = type { i32, i32, i32, i32 }

@clk_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@__kstrtab_tegra114_clock_tune_cpu_trimmers_high = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra114_clock_tune_cpu_trimmers_high = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra114_clock_tune_cpu_trimmers_high = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra114_clock_tune_cpu_trimmers_high to i32), ptr @__kstrtab_tegra114_clock_tune_cpu_trimmers_high, ptr @__kstrtabns_tegra114_clock_tune_cpu_trimmers_high }, section "___ksymtab+tegra114_clock_tune_cpu_trimmers_high", align 4
@__kstrtab_tegra114_clock_tune_cpu_trimmers_low = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra114_clock_tune_cpu_trimmers_low = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra114_clock_tune_cpu_trimmers_low = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra114_clock_tune_cpu_trimmers_low to i32), ptr @__kstrtab_tegra114_clock_tune_cpu_trimmers_low, ptr @__kstrtabns_tegra114_clock_tune_cpu_trimmers_low }, section "___ksymtab+tegra114_clock_tune_cpu_trimmers_low", align 4
@__kstrtab_tegra114_clock_tune_cpu_trimmers_init = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra114_clock_tune_cpu_trimmers_init = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra114_clock_tune_cpu_trimmers_init = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra114_clock_tune_cpu_trimmers_init to i32), ptr @__kstrtab_tegra114_clock_tune_cpu_trimmers_init, ptr @__kstrtabns_tegra114_clock_tune_cpu_trimmers_init }, section "___ksymtab+tegra114_clock_tune_cpu_trimmers_init", align 4
@__kstrtab_tegra114_clock_assert_dfll_dvco_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra114_clock_assert_dfll_dvco_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra114_clock_assert_dfll_dvco_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra114_clock_assert_dfll_dvco_reset to i32), ptr @__kstrtab_tegra114_clock_assert_dfll_dvco_reset, ptr @__kstrtabns_tegra114_clock_assert_dfll_dvco_reset }, section "___ksymtab+tegra114_clock_assert_dfll_dvco_reset", align 4
@__kstrtab_tegra114_clock_deassert_dfll_dvco_reset = external dso_local constant [0 x i8], align 1
@__kstrtabns_tegra114_clock_deassert_dfll_dvco_reset = external dso_local constant [0 x i8], align 1
@__ksymtab_tegra114_clock_deassert_dfll_dvco_reset = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @tegra114_clock_deassert_dfll_dvco_reset to i32), ptr @__kstrtab_tegra114_clock_deassert_dfll_dvco_reset, ptr @__kstrtabns_tegra114_clock_deassert_dfll_dvco_reset }, section "___ksymtab+tegra114_clock_deassert_dfll_dvco_reset", align 4
@__of_table_tegra114 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra114_clock_init }, section "__clk_of_table", align 4
@tegra114_clock_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1308, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\013ioremap tegra114 CAR failed\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"tegra114_clock_init\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/tegra/clk-tegra114.c\00", [63 x i8] zeroinitializer }, align 32
@tegra114_clock_init._entry_ptr = internal global ptr @tegra114_clock_init._entry, section ".printk_index", align 4
@pmc_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra114-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@tegra114_clock_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1314, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Failed to find pmc node\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra114_clock_init._entry_ptr.5 = internal global ptr @tegra114_clock_init._entry.3, section ".printk_index", align 4
@pmc_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tegra114_clock_init._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1321, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Can't map pmc registers\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra114_clock_init._entry_ptr.8 = internal global ptr @tegra114_clock_init._entry.6, section ".printk_index", align 4
@clks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tegra114_input_freq = internal global { [13 x i32], [44 x i8] } { [13 x i32] [i32 13000000, i32 16800000, i32 0, i32 0, i32 19200000, i32 38400000, i32 0, i32 0, i32 12000000, i32 48000000, i32 0, i32 0, i32 26000000], [44 x i8] zeroinitializer }, align 32
@osc_freq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pll_ref_freq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tegra114_audio_plls = internal global { [1 x %struct.tegra_audio_clk_info], [16 x i8] } { [1 x %struct.tegra_audio_clk_info] [%struct.tegra_audio_clk_info { ptr @.str.54, ptr @pll_a_params, i32 137, ptr @.str.55 }], [16 x i8] zeroinitializer }, align 32
@pll_x_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 800000000, i32 12000000, i32 19200000, i32 700000000, i32 -1894967296, i32 224, i32 228, i32 0, i32 134217728, i32 18, i32 1304, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1300, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1025, i32 16, i32 24, i32 300, i32 6, i8 0, ptr @pllxc_p, ptr @pllxc_nmp, ptr @pll_x_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@devclks = internal global [63 x %struct.tegra_devclk] [%struct.tegra_devclk { i32 201, ptr null, ptr @.str.46 }, %struct.tegra_devclk { i32 204, ptr null, ptr @.str.12 }, %struct.tegra_devclk { i32 200, ptr null, ptr @.str.10 }, %struct.tegra_devclk { i32 249, ptr null, ptr @.str.56 }, %struct.tegra_devclk { i32 202, ptr null, ptr @.str.57 }, %struct.tegra_devclk { i32 203, ptr null, ptr @.str.58 }, %struct.tegra_devclk { i32 205, ptr null, ptr @.str.11 }, %struct.tegra_devclk { i32 206, ptr null, ptr @.str.14 }, %struct.tegra_devclk { i32 207, ptr null, ptr @.str.15 }, %struct.tegra_devclk { i32 208, ptr null, ptr @.str.16 }, %struct.tegra_devclk { i32 211, ptr null, ptr @.str.52 }, %struct.tegra_devclk { i32 212, ptr null, ptr @.str.55 }, %struct.tegra_devclk { i32 213, ptr null, ptr @.str.59 }, %struct.tegra_devclk { i32 214, ptr null, ptr @.str.60 }, %struct.tegra_devclk { i32 215, ptr null, ptr @.str.61 }, %struct.tegra_devclk { i32 209, ptr null, ptr @.str.17 }, %struct.tegra_devclk { i32 210, ptr null, ptr @.str.19 }, %struct.tegra_devclk { i32 227, ptr null, ptr @.str.62 }, %struct.tegra_devclk { i32 228, ptr null, ptr @.str.63 }, %struct.tegra_devclk { i32 222, ptr null, ptr @.str.21 }, %struct.tegra_devclk { i32 223, ptr null, ptr @.str.22 }, %struct.tegra_devclk { i32 224, ptr null, ptr @.str.23 }, %struct.tegra_devclk { i32 225, ptr null, ptr @.str.24 }, %struct.tegra_devclk { i32 226, ptr null, ptr @.str.25 }, %struct.tegra_devclk { i32 218, ptr null, ptr @.str.26 }, %struct.tegra_devclk { i32 219, ptr null, ptr @.str.27 }, %struct.tegra_devclk { i32 220, ptr null, ptr @.str.28 }, %struct.tegra_devclk { i32 221, ptr null, ptr @.str.29 }, %struct.tegra_devclk { i32 216, ptr null, ptr @.str.54 }, %struct.tegra_devclk { i32 217, ptr null, ptr @.str.53 }, %struct.tegra_devclk { i32 229, ptr null, ptr @.str.30 }, %struct.tegra_devclk { i32 230, ptr null, ptr @.str.31 }, %struct.tegra_devclk { i32 231, ptr null, ptr @.str.32 }, %struct.tegra_devclk { i32 232, ptr null, ptr @.str.64 }, %struct.tegra_devclk { i32 233, ptr null, ptr @.str.65 }, %struct.tegra_devclk { i32 234, ptr null, ptr @.str.66 }, %struct.tegra_devclk { i32 235, ptr null, ptr @.str.67 }, %struct.tegra_devclk { i32 236, ptr null, ptr @.str.68 }, %struct.tegra_devclk { i32 237, ptr null, ptr @.str.69 }, %struct.tegra_devclk { i32 238, ptr null, ptr @.str.70 }, %struct.tegra_devclk { i32 239, ptr null, ptr @.str.71 }, %struct.tegra_devclk { i32 240, ptr null, ptr @.str.72 }, %struct.tegra_devclk { i32 241, ptr null, ptr @.str.73 }, %struct.tegra_devclk { i32 242, ptr null, ptr @.str.74 }, %struct.tegra_devclk { i32 243, ptr null, ptr @.str.75 }, %struct.tegra_devclk { i32 244, ptr null, ptr @.str.76 }, %struct.tegra_devclk { i32 113, ptr null, ptr @.str.77 }, %struct.tegra_devclk { i32 114, ptr null, ptr @.str.78 }, %struct.tegra_devclk { i32 115, ptr null, ptr @.str.79 }, %struct.tegra_devclk { i32 116, ptr null, ptr @.str.80 }, %struct.tegra_devclk { i32 117, ptr null, ptr @.str.81 }, %struct.tegra_devclk { i32 118, ptr null, ptr @.str.82 }, %struct.tegra_devclk { i32 120, ptr null, ptr @.str.83 }, %struct.tegra_devclk { i32 121, ptr null, ptr @.str.84 }, %struct.tegra_devclk { i32 122, ptr null, ptr @.str.85 }, %struct.tegra_devclk { i32 262, ptr null, ptr @.str.86 }, %struct.tegra_devclk { i32 263, ptr null, ptr @.str.87 }, %struct.tegra_devclk { i32 259, ptr null, ptr @.str.88 }, %struct.tegra_devclk { i32 260, ptr null, ptr @.str.89 }, %struct.tegra_devclk { i32 261, ptr null, ptr @.str.90 }, %struct.tegra_devclk { i32 198, ptr null, ptr @.str.91 }, %struct.tegra_devclk { i32 4, ptr @.str.92, ptr null }, %struct.tegra_devclk { i32 5, ptr @.str.93, ptr null }], section ".init.data", align 4
@tegra_clk_apply_init_table = external dso_local local_unnamed_addr global ptr, align 4
@tegra114_cpu_car_ops = internal global { %struct.tegra_cpu_car_ops, [32 x i8] } { %struct.tegra_cpu_car_ops { ptr @tegra114_wait_cpu_in_reset, ptr null, ptr null, ptr null, ptr @tegra114_disable_cpu_clock, ptr null, ptr @tegra114_cpu_clock_suspend, ptr @tegra114_cpu_clock_resume }, [32 x i8] zeroinitializer }, align 32
@tegra_cpu_car_ops = external dso_local local_unnamed_addr global ptr, align 4
@tegra114_clks = internal global <{ [297 x %struct.tegra_clk], [16 x %struct.tegra_clk] }> <{ [297 x %struct.tegra_clk] [%struct.tegra_clk { i32 119, i8 1 }, %struct.tegra_clk { i32 154, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 153, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 34, i8 1 }, %struct.tegra_clk { i32 107, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 239, i8 1 }, %struct.tegra_clk { i32 113, i8 1 }, %struct.tegra_clk { i32 300, i8 1 }, %struct.tegra_clk { i32 240, i8 1 }, %struct.tegra_clk { i32 114, i8 1 }, %struct.tegra_clk { i32 301, i8 1 }, %struct.tegra_clk { i32 241, i8 1 }, %struct.tegra_clk { i32 115, i8 1 }, %struct.tegra_clk { i32 302, i8 1 }, %struct.tegra_clk { i32 242, i8 1 }, %struct.tegra_clk { i32 116, i8 1 }, %struct.tegra_clk { i32 303, i8 1 }, %struct.tegra_clk { i32 243, i8 1 }, %struct.tegra_clk { i32 117, i8 1 }, %struct.tegra_clk { i32 304, i8 1 }, %struct.tegra_clk { i32 62, i8 1 }, %struct.tegra_clk { i32 63, i8 1 }, %struct.tegra_clk { i32 262, i8 1 }, %struct.tegra_clk { i32 263, i8 1 }, %struct.tegra_clk { i32 144, i8 1 }, %struct.tegra_clk { i32 145, i8 1 }, %struct.tegra_clk { i32 146, i8 1 }, %struct.tegra_clk { i32 200, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 201, i8 1 }, %struct.tegra_clk { i32 249, i8 1 }, %struct.tegra_clk { i32 202, i8 1 }, %struct.tegra_clk { i32 203, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 52, i8 1 }, %struct.tegra_clk { i32 73, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 92, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 108, i8 1 }, %struct.tegra_clk { i32 109, i8 1 }, %struct.tegra_clk { i32 110, i8 1 }, %struct.tegra_clk { i32 106, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 150, i8 1 }, %struct.tegra_clk { i32 264, i8 1 }, %struct.tegra_clk { i32 265, i8 1 }, %struct.tegra_clk { i32 27, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 26, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 152, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 147, i8 1 }, %struct.tegra_clk { i32 309, i8 1 }, %struct.tegra_clk { i32 148, i8 1 }, %struct.tegra_clk { i32 310, i8 1 }, %struct.tegra_clk { i32 79, i8 1 }, %struct.tegra_clk { i32 57, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 19, i8 1 }, %struct.tegra_clk { i32 120, i8 1 }, %struct.tegra_clk { i32 121, i8 1 }, %struct.tegra_clk { i32 122, i8 1 }, %struct.tegra_clk { i32 198, i8 1 }, %struct.tegra_clk { i32 199, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 21, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 24, i8 1 }, %struct.tegra_clk { i32 260, i8 1 }, %struct.tegra_clk { i32 125, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 111, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 128, i8 1 }, %struct.tegra_clk { i32 51, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 28, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 12, i8 1 }, %struct.tegra_clk { i32 54, i8 1 }, %struct.tegra_clk { i32 67, i8 1 }, %struct.tegra_clk { i32 103, i8 1 }, %struct.tegra_clk { i32 47, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 81, i8 1 }, %struct.tegra_clk { i32 30, i8 1 }, %struct.tegra_clk { i32 233, i8 1 }, %struct.tegra_clk { i32 11, i8 1 }, %struct.tegra_clk { i32 234, i8 1 }, %struct.tegra_clk { i32 18, i8 1 }, %struct.tegra_clk { i32 235, i8 1 }, %struct.tegra_clk { i32 101, i8 1 }, %struct.tegra_clk { i32 236, i8 1 }, %struct.tegra_clk { i32 102, i8 1 }, %struct.tegra_clk { i32 237, i8 1 }, %struct.tegra_clk { i32 23, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 36, i8 1 }, %struct.tegra_clk { i32 40, i8 1 }, %struct.tegra_clk { i32 76, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 50, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 99, i8 1 }, %struct.tegra_clk { i32 91, i8 1 }, %struct.tegra_clk { i32 13, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 80, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 42, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 71, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 261, i8 1 }, %struct.tegra_clk { i32 216, i8 1 }, %struct.tegra_clk { i32 217, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 205, i8 1 }, %struct.tegra_clk { i32 207, i8 1 }, %struct.tegra_clk { i32 208, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 206, i8 1 }, %struct.tegra_clk { i32 218, i8 1 }, %struct.tegra_clk { i32 220, i8 1 }, %struct.tegra_clk { i32 221, i8 1 }, %struct.tegra_clk { i32 219, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 231, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 209, i8 1 }, %struct.tegra_clk { i32 210, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 211, i8 1 }, %struct.tegra_clk { i32 212, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 213, i8 1 }, %struct.tegra_clk { i32 214, i8 1 }, %struct.tegra_clk { i32 215, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 204, i8 1 }, %struct.tegra_clk { i32 230, i8 1 }, %struct.tegra_clk { i32 229, i8 1 }, %struct.tegra_clk { i32 222, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 226, i8 1 }, %struct.tegra_clk { i32 223, i8 1 }, %struct.tegra_clk { i32 225, i8 1 }, %struct.tegra_clk { i32 224, i8 1 }, %struct.tegra_clk { i32 227, i8 1 }, %struct.tegra_clk { i32 228, i8 1 }, %struct.tegra_clk { i32 17, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 4, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 41, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 44, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 46, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 68, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 104, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 105, i8 1 }, %struct.tegra_clk { i32 259, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 14, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 9, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 69, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 15, i8 1 }, %struct.tegra_clk { i32 127, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 78, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 244, i8 1 }, %struct.tegra_clk { i32 118, i8 1 }, %struct.tegra_clk { i32 194, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 232, i8 1 }, %struct.tegra_clk { i32 305, i8 1 }, %struct.tegra_clk { i32 195, i8 1 }, %struct.tegra_clk { i32 5, i8 1 }, %struct.tegra_clk { i32 77, i8 1 }, %struct.tegra_clk { i32 83, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 100, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 6, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 192, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 55, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 65, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 58, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 59, i8 1 }, %struct.tegra_clk { i32 22, i8 1 }, %struct.tegra_clk { i32 29, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 61, i8 1 }, %struct.tegra_clk { i32 193, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 196, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 238, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 257, i8 1 }, %struct.tegra_clk { i32 256, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 253, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 254, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 89, i8 1 }, %struct.tegra_clk { i32 252, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 258, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 156, i8 1 }, %struct.tegra_clk { i32 255, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 311, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 136, i8 1 }], [16 x %struct.tegra_clk] zeroinitializer }>, section ".init.data", align 4
@.str.10 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_32k\00", [24 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_c\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll_ref\00", [24 x i8] zeroinitializer }, align 32
@pll_c_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 800000000, i32 12000000, i32 19200000, i32 600000000, i32 1400000000, i32 128, i32 140, i32 0, i32 134217728, i32 24, i32 140, i32 26, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 136, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1025, i32 17, i32 9, i32 300, i32 6, i8 0, ptr @pllxc_p, ptr @pllxc_nmp, ptr @pll_c_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll_c_out1_div\00", [17 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_c_out1\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_c2\00", [25 x i8] zeroinitializer }, align 32
@pll_c2_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 48000000, i32 12000000, i32 19200000, i32 600000000, i32 1200000000, i32 1256, i32 1260, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] [i32 1264, i32 1268, i32 1272, i32 0, i32 0, i32 0], i32 0, i32 0, i32 1, i32 0, i32 0, i32 300, i32 7, i8 0, ptr @pllc_p, ptr @pllcx_nmp, ptr @pll_cx_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_c3\00", [25 x i8] zeroinitializer }, align 32
@pll_c3_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 48000000, i32 12000000, i32 19200000, i32 600000000, i32 1200000000, i32 1276, i32 1280, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] [i32 1284, i32 1288, i32 1292, i32 0, i32 0, i32 0], i32 0, i32 0, i32 1, i32 0, i32 0, i32 300, i32 7, i8 0, ptr @pllc_p, ptr @pllcx_nmp, ptr @pll_cx_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_m\00", [26 x i8] zeroinitializer }, align 32
@pll_m_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 500000000, i32 12000000, i32 19200000, i32 400000000, i32 1066000000, i32 144, i32 156, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 476, i32 688, i32 1089, i32 0, i32 0, i32 300, i32 2, i8 0, ptr @pllm_p, ptr @pllm_nmp, ptr @pll_m_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll_m_out1_div\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_m_out1\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll_m_ud\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_u\00", [26 x i8] zeroinitializer }, align 32
@pll_u_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 480000000, i32 960000000, i32 192, i32 204, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1047, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr @pllu_p, ptr @pllu_nmp, ptr @pll_u_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pll_u_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_u_480M\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll_u_60M\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll_u_48M\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll_u_12M\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_d\00", [26 x i8] zeroinitializer }, align 32
@pll_d_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 500000000, i32 1000000000, i32 208, i32 220, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1030, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr null, ptr @pllp_nmp, ptr @pll_d_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pll_d_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_d_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_d2\00", [25 x i8] zeroinitializer }, align 32
@pll_d2_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 500000000, i32 1000000000, i32 1208, i32 1212, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1030, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr null, ptr @pllp_nmp, ptr @pll_d_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pll_d2_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_d2_out0\00", [20 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_re_vco\00", [21 x i8] zeroinitializer }, align 32
@pll_re_vco_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 1000000000, i32 12000000, i32 19200000, i32 300000000, i32 600000000, i32 1220, i32 1224, i32 0, i32 16777216, i32 30, i32 1224, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1281, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr @pllre_nmp, ptr null, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pll_re_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_re_out\00", [21 x i8] zeroinitializer }, align 32
@pll_re_div_table = internal constant { [7 x %struct.clk_div_table], [40 x i8] } { [7 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 5 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_e_out0\00", [21 x i8] zeroinitializer }, align 32
@pll_e_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 1000000000, i32 12000000, i32 75000000, i32 1600000000, i32 -1894967296, i32 232, i32 236, i32 0, i32 2048, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1164, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1088, i32 0, i32 0, i32 300, i32 0, i8 0, ptr @plle_p, ptr @plle_nmp, ptr @pll_e_freq_table, i32 100000000, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pllxc_p = internal constant { [16 x %struct.pdiv_map], [32 x i8] } { [16 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 0 }, %struct.pdiv_map { i8 2, i8 1 }, %struct.pdiv_map { i8 3, i8 2 }, %struct.pdiv_map { i8 4, i8 3 }, %struct.pdiv_map { i8 5, i8 4 }, %struct.pdiv_map { i8 6, i8 5 }, %struct.pdiv_map { i8 8, i8 6 }, %struct.pdiv_map { i8 10, i8 7 }, %struct.pdiv_map { i8 12, i8 8 }, %struct.pdiv_map { i8 16, i8 9 }, %struct.pdiv_map { i8 12, i8 10 }, %struct.pdiv_map { i8 16, i8 11 }, %struct.pdiv_map { i8 20, i8 12 }, %struct.pdiv_map { i8 24, i8 13 }, %struct.pdiv_map { i8 32, i8 14 }, %struct.pdiv_map zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pllxc_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 8, i8 0, i8 8, i8 20, i8 4, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@pll_c_freq_table = internal global { [7 x %struct.tegra_clk_pll_freq_table], [52 x i8] } { [7 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 624000000, i32 104, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 600000000, i32 100, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 600000000, i32 92, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 600000000, i32 71, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 600000000, i32 62, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 600000000, i32 92, i32 2, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [52 x i8] zeroinitializer }, align 32
@pllc_p = internal constant { [6 x %struct.pdiv_map], [20 x i8] } { [6 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 0 }, %struct.pdiv_map { i8 2, i8 1 }, %struct.pdiv_map { i8 4, i8 3 }, %struct.pdiv_map { i8 8, i8 5 }, %struct.pdiv_map { i8 16, i8 7 }, %struct.pdiv_map zeroinitializer], [20 x i8] zeroinitializer }, align 32
@pllcx_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 8, i8 0, i8 2, i8 20, i8 3, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@pll_cx_freq_table = internal global { [6 x %struct.tegra_clk_pll_freq_table], [40 x i8] } { [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 600000000, i32 100, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 600000000, i32 92, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 600000000, i32 71, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 600000000, i32 62, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 600000000, i32 92, i32 2, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@pllm_p = internal constant { [3 x %struct.pdiv_map], [26 x i8] } { [3 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 0 }, %struct.pdiv_map { i8 2, i8 1 }, %struct.pdiv_map zeroinitializer], [26 x i8] zeroinitializer }, align 32
@pllm_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 8, i8 0, i8 8, i8 20, i8 1, i8 8, i8 0, i8 27 }, [23 x i8] zeroinitializer }, align 32
@pll_m_freq_table = internal global { [6 x %struct.tegra_clk_pll_freq_table], [40 x i8] } { [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 800000000, i32 66, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 800000000, i32 61, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 800000000, i32 47, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 800000000, i32 41, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 800000000, i32 61, i32 2, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@pllu_p = internal constant { [3 x %struct.pdiv_map], [26 x i8] } { [3 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 1 }, %struct.pdiv_map { i8 2, i8 0 }, %struct.pdiv_map zeroinitializer], [26 x i8] zeroinitializer }, align 32
@pllu_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 10, i8 0, i8 5, i8 20, i8 1, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@pll_u_freq_table = internal global { [6 x %struct.tegra_clk_pll_freq_table], [40 x i8] } { [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 480000000, i32 960, i32 12, i8 2, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 480000000, i32 960, i32 13, i8 2, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 480000000, i32 400, i32 7, i8 2, i8 5, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 480000000, i32 200, i32 4, i8 2, i8 3, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 480000000, i32 960, i32 26, i8 2, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_u_lock\00", [21 x i8] zeroinitializer }, align 32
@pllp_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 10, i8 0, i8 5, i8 20, i8 3, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@pll_d_freq_table = internal global { [15 x %struct.tegra_clk_pll_freq_table], [84 x i8] } { [15 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 216000000, i32 864, i32 12, i8 4, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 216000000, i32 864, i32 13, i8 4, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 216000000, i32 720, i32 14, i8 4, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 216000000, i32 720, i32 16, i8 4, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 216000000, i32 864, i32 26, i8 4, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 594000000, i32 594, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 594000000, i32 594, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 594000000, i32 495, i32 14, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 594000000, i32 495, i32 16, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 594000000, i32 594, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1000000000, i32 1000, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1000000000, i32 1000, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1000000000, i32 625, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1000000000, i32 1000, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [84 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_d_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_d2_lock\00", [20 x i8] zeroinitializer }, align 32
@pllre_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 8, i8 0, i8 8, i8 16, i8 4, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_re_lock\00", [20 x i8] zeroinitializer }, align 32
@plle_p = internal constant { [16 x %struct.pdiv_map], [32 x i8] } { [16 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 0 }, %struct.pdiv_map { i8 2, i8 1 }, %struct.pdiv_map { i8 3, i8 2 }, %struct.pdiv_map { i8 4, i8 3 }, %struct.pdiv_map { i8 5, i8 4 }, %struct.pdiv_map { i8 6, i8 5 }, %struct.pdiv_map { i8 8, i8 6 }, %struct.pdiv_map { i8 10, i8 7 }, %struct.pdiv_map { i8 12, i8 8 }, %struct.pdiv_map { i8 16, i8 9 }, %struct.pdiv_map { i8 12, i8 10 }, %struct.pdiv_map { i8 16, i8 11 }, %struct.pdiv_map { i8 20, i8 12 }, %struct.pdiv_map { i8 24, i8 13 }, %struct.pdiv_map { i8 32, i8 14 }, %struct.pdiv_map zeroinitializer], [32 x i8] zeroinitializer }, align 32
@plle_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 8, i8 0, i8 8, i8 24, i8 4, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@pll_e_freq_table = internal global { [4 x %struct.tegra_clk_pll_freq_table], [48 x i8] } { [4 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 336000000, i32 100000000, i32 100, i32 21, i8 16, i8 11, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 312000000, i32 100000000, i32 200, i32 26, i8 24, i8 13, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 100000000, i32 200, i32 1, i8 24, i8 13, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xusb_ss_div2\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xusb_ss_src\00", [20 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsia_mux\00", [23 x i8] zeroinitializer }, align 32
@mux_plld_out0_plld2_out0 = internal global { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.27, ptr @.str.29], [24 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dsib_mux\00", [23 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dsia\00", [27 x i8] zeroinitializer }, align 32
@periph_clk_enb_refcnt = external dso_local local_unnamed_addr global ptr, align 4
@.str.42 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dsib\00", [27 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"emc_mux\00", [24 x i8] zeroinitializer }, align 32
@mux_pllmcp_clkm = internal global { [5 x ptr], [44 x i8] } { [5 x ptr] [ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.46, ptr @.str.20], [44 x i8] zeroinitializer }, align 32
@emc_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.50, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mc\00", [29 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mipi-cal\00", [23 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk_m\00", [26 x i8] zeroinitializer }, align 32
@tegra_periph_clk_list = internal global { [1 x %struct.tegra_periph_init_data], [40 x i8] } { [1 x %struct.tegra_periph_init_data] [%struct.tegra_periph_init_data { ptr @.str.51, i32 197, %union.anon.41 { ptr @mux_pllm_pllc2_c_c3_pllp_plla }, i32 6, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr @mux_pllm_pllc2_c_c3_pllp_plla_idx, i32 7, i8 29, i8 0, ptr null }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 1, i8 0, i8 8, i8 1, ptr null }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 1, i32 20, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 424, ptr null, ptr null, i32 0 }], [40 x i8] zeroinitializer }, align 32
@pll_p_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 200000000, i32 700000000, i32 160, i32 172, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1089, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr @pllp_nmp, ptr @pll_p_freq_table, i32 408000000, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_m_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_c_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emc_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vi_sensor\00", [22 x i8] zeroinitializer }, align 32
@mux_pllm_pllc2_c_c3_pllp_plla = internal global { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.17, ptr @.str.15, ptr @.str.11, ptr @.str.16, ptr @.str.52, ptr @.str.53], [40 x i8] zeroinitializer }, align 32
@mux_pllm_pllc2_c_c3_pllp_plla_idx = internal global { [6 x i32], [40 x i8] } { [6 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 6], [40 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@tegra_clk_frac_div_ops = external dso_local constant %struct.clk_ops, align 4
@tegra_clk_periph_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.52 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_p\00", [26 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_a_out0\00", [21 x i8] zeroinitializer }, align 32
@pll_p_freq_table = internal global { [6 x %struct.tegra_clk_pll_freq_table], [40 x i8] } { [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 216000000, i32 432, i32 12, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 216000000, i32 432, i32 13, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 216000000, i32 360, i32 14, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 216000000, i32 360, i32 16, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 216000000, i32 432, i32 26, i8 2, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_a\00", [26 x i8] zeroinitializer }, align 32
@pll_a_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 200000000, i32 700000000, i32 176, i32 188, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1027, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr @pllp_nmp, ptr @pll_a_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out1\00", [21 x i8] zeroinitializer }, align 32
@pll_a_freq_table = internal global { [7 x %struct.tegra_clk_pll_freq_table], [52 x i8] } { [7 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 9600000, i32 282240000, i32 147, i32 5, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 9600000, i32 368640000, i32 192, i32 5, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 9600000, i32 240000000, i32 200, i32 8, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 282240000, i32 245, i32 25, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 368640000, i32 320, i32 25, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 240000000, i32 200, i32 24, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [52 x i8] zeroinitializer }, align 32
@pll_x_freq_table = internal global { [6 x %struct.tegra_clk_pll_freq_table], [40 x i8] } { [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 1000000000, i32 83, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1000000000, i32 76, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1000000000, i32 59, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1000000000, i32 52, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1000000000, i32 76, i32 2, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osc\00", [28 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"osc_div2\00", [23 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"osc_div4\00", [23 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out2\00", [21 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out3\00", [21 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out4\00", [21 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_x\00", [26 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_x_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spdif_in_sync\00", [18 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s0_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s1_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s2_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s3_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s4_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vimclk_sync\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio0\00", [25 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio1\00", [25 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio2\00", [25 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio3\00", [25 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio4\00", [25 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio0_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio1_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio2_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio3_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio4_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spdif_2x\00", [23 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"extern1\00", [24 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"extern2\00", [24 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"extern3\00", [24 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cclk_g\00", [25 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cclk_lp\00", [24 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sclk\00", [27 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fuse\00", [27 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc-tegra\00", [22 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@init_table = internal global [35 x %struct.tegra_clk_init_table] [%struct.tegra_clk_init_table { i32 6, i32 211, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 192, i32 211, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 55, i32 211, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 65, i32 211, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 216, i32 312, i32 564480000, i32 0 }, %struct.tegra_clk_init_table { i32 217, i32 312, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 30, i32 217, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 11, i32 217, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 18, i32 217, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 101, i32 217, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 102, i32 217, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 28, i32 211, i32 136000000, i32 0 }, %struct.tegra_clk_init_table { i32 265, i32 211, i32 51000000, i32 1 }, %struct.tegra_clk_init_table { i32 264, i32 211, i32 51000000, i32 1 }, %struct.tegra_clk_init_table { i32 27, i32 211, i32 0, i32 0 }, %struct.tegra_clk_init_table { i32 26, i32 211, i32 0, i32 0 }, %struct.tegra_clk_init_table { i32 21, i32 207, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 24, i32 207, i32 300000000, i32 0 }, %struct.tegra_clk_init_table { i32 147, i32 211, i32 68000000, i32 0 }, %struct.tegra_clk_init_table { i32 148, i32 211, i32 68000000, i32 0 }, %struct.tegra_clk_init_table { i32 229, i32 312, i32 612000000, i32 0 }, %struct.tegra_clk_init_table { i32 255, i32 230, i32 122400000, i32 0 }, %struct.tegra_clk_init_table { i32 254, i32 225, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 258, i32 311, i32 61200000, i32 0 }, %struct.tegra_clk_init_table { i32 253, i32 211, i32 204000000, i32 0 }, %struct.tegra_clk_init_table { i32 252, i32 211, i32 102000000, i32 0 }, %struct.tegra_clk_init_table { i32 61, i32 211, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 232, i32 312, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 233, i32 312, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 234, i32 312, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 235, i32 312, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 236, i32 312, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 237, i32 312, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 238, i32 312, i32 24000000, i32 0 }, %struct.tegra_clk_init_table { i32 312, i32 312, i32 0, i32 0 }], section ".init.data", align 4
@tegra114_cpu_clk_sctx.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tegra114_cpu_clk_sctx.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tegra114_cpu_clk_sctx.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@___asan_gen_.94 = private unnamed_addr constant [9 x i8] c"clk_base\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 130, i32 22 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1308, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1314, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [9 x i8] c"pmc_base\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 131, i32 22 }
@___asan_gen_.118 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1321, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant [5 x i8] c"clks\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 885, i32 21 }
@___asan_gen_.127 = private unnamed_addr constant [20 x i8] c"tegra114_input_freq\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 603, i32 22 }
@___asan_gen_.130 = private unnamed_addr constant [9 x i8] c"osc_freq\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 887, i32 22 }
@___asan_gen_.133 = private unnamed_addr constant [13 x i8] c"pll_ref_freq\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 888, i32 22 }
@___asan_gen_.136 = private unnamed_addr constant [20 x i8] c"tegra114_audio_plls\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 881, i32 36 }
@___asan_gen_.139 = private unnamed_addr constant [13 x i8] c"pll_x_params\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 494, i32 36 }
@___asan_gen_.142 = private unnamed_addr constant [21 x i8] c"tegra114_cpu_car_ops\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1116, i32 33 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 895, i32 38 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 905, i32 33 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 905, i32 42 }
@___asan_gen_.154 = private unnamed_addr constant [13 x i8] c"pll_c_params\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 177, i32 36 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 910, i32 35 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 913, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 919, i32 32 }
@___asan_gen_.166 = private unnamed_addr constant [14 x i8] c"pll_c2_params\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 228, i32 36 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 924, i32 32 }
@___asan_gen_.172 = private unnamed_addr constant [14 x i8] c"pll_c3_params\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 250, i32 36 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 929, i32 32 }
@___asan_gen_.178 = private unnamed_addr constant [13 x i8] c"pll_m_params\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 299, i32 36 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 934, i32 35 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 937, i32 35 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 943, i32 40 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 947, i32 41 }
@___asan_gen_.193 = private unnamed_addr constant [13 x i8] c"pll_u_params\00", align 1
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 465, i32 36 }
@___asan_gen_.196 = private unnamed_addr constant [11 x i8] c"pll_u_lock\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 952, i32 32 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 958, i32 40 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 963, i32 40 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 968, i32 40 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 973, i32 31 }
@___asan_gen_.214 = private unnamed_addr constant [13 x i8] c"pll_d_params\00", align 1
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 405, i32 36 }
@___asan_gen_.217 = private unnamed_addr constant [11 x i8] c"pll_d_lock\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 978, i32 40 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 983, i32 31 }
@___asan_gen_.226 = private unnamed_addr constant [14 x i8] c"pll_d2_params\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 423, i32 36 }
@___asan_gen_.229 = private unnamed_addr constant [12 x i8] c"pll_d2_lock\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 988, i32 40 }
@___asan_gen_.237 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 993, i32 33 }
@___asan_gen_.238 = private unnamed_addr constant [18 x i8] c"pll_re_vco_params\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 583, i32 36 }
@___asan_gen_.241 = private unnamed_addr constant [12 x i8] c"pll_re_lock\00", align 1
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 997, i32 41 }
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"pll_re_div_table\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 626, i32 35 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1003, i32 41 }
@___asan_gen_.253 = private unnamed_addr constant [13 x i8] c"pll_e_params\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 554, i32 36 }
@___asan_gen_.256 = private unnamed_addr constant [8 x i8] c"pllxc_p\00", align 1
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 148, i32 30 }
@___asan_gen_.259 = private unnamed_addr constant [10 x i8] c"pllxc_nmp\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 139, i32 23 }
@___asan_gen_.262 = private unnamed_addr constant [17 x i8] c"pll_c_freq_table\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 167, i32 40 }
@___asan_gen_.265 = private unnamed_addr constant [7 x i8] c"pllc_p\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 210, i32 30 }
@___asan_gen_.268 = private unnamed_addr constant [10 x i8] c"pllcx_nmp\00", align 1
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 201, i32 23 }
@___asan_gen_.271 = private unnamed_addr constant [18 x i8] c"pll_cx_freq_table\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 219, i32 40 }
@___asan_gen_.274 = private unnamed_addr constant [7 x i8] c"pllm_p\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 284, i32 30 }
@___asan_gen_.277 = private unnamed_addr constant [9 x i8] c"pllm_nmp\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 272, i32 23 }
@___asan_gen_.280 = private unnamed_addr constant [17 x i8] c"pll_m_freq_table\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 290, i32 40 }
@___asan_gen_.283 = private unnamed_addr constant [7 x i8] c"pllu_p\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 441, i32 30 }
@___asan_gen_.286 = private unnamed_addr constant [9 x i8] c"pllu_nmp\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 447, i32 23 }
@___asan_gen_.289 = private unnamed_addr constant [17 x i8] c"pll_u_freq_table\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 456, i32 40 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 135, i32 8 }
@___asan_gen_.295 = private unnamed_addr constant [9 x i8] c"pllp_nmp\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 321, i32 23 }
@___asan_gen_.298 = private unnamed_addr constant [17 x i8] c"pll_d_freq_table\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 387, i32 40 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 133, i32 8 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 134, i32 8 }
@___asan_gen_.307 = private unnamed_addr constant [10 x i8] c"pllre_nmp\00", align 1
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 574, i32 23 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 136, i32 8 }
@___asan_gen_.313 = private unnamed_addr constant [7 x i8] c"plle_p\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 526, i32 30 }
@___asan_gen_.316 = private unnamed_addr constant [9 x i8] c"plle_nmp\00", align 1
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 545, i32 23 }
@___asan_gen_.319 = private unnamed_addr constant [17 x i8] c"pll_e_freq_table\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 518, i32 40 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1022, i32 40 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1022, i32 56 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1027, i32 8 }
@___asan_gen_.331 = private unnamed_addr constant [25 x i8] c"mux_plld_out0_plld2_out0\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 617, i32 20 }
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1034, i32 8 }
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1040, i32 39 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1044, i32 39 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1049, i32 8 }
@___asan_gen_.346 = private unnamed_addr constant [16 x i8] c"mux_pllmcp_clkm\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 622, i32 20 }
@___asan_gen_.349 = private unnamed_addr constant [9 x i8] c"emc_lock\00", align 1
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1055, i32 30 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1059, i32 39 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1059, i32 51 }
@___asan_gen_.361 = private unnamed_addr constant [22 x i8] c"tegra_periph_clk_list\00", align 1
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1010, i32 38 }
@___asan_gen_.364 = private unnamed_addr constant [13 x i8] c"pll_p_params\00", align 1
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 339, i32 36 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 623, i32 2 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 623, i32 16 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 623, i32 30 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 137, i32 8 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 1011, i32 2 }
@___asan_gen_.382 = private unnamed_addr constant [30 x i8] c"mux_pllm_pllc2_c_c3_pllp_plla\00", align 1
@___asan_gen_.384 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 874, i32 20 }
@___asan_gen_.385 = private unnamed_addr constant [34 x i8] c"mux_pllm_pllc2_c_c3_pllp_plla_idx\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 877, i32 12 }
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 875, i32 40 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 875, i32 49 }
@___asan_gen_.394 = private unnamed_addr constant [17 x i8] c"pll_p_freq_table\00", align 1
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 330, i32 40 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 882, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant [13 x i8] c"pll_a_params\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 369, i32 36 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 882, i32 45 }
@___asan_gen_.406 = private unnamed_addr constant [17 x i8] c"pll_a_freq_table\00", align 1
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 358, i32 40 }
@___asan_gen_.409 = private unnamed_addr constant [17 x i8] c"pll_x_freq_table\00", align 1
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 484, i32 40 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 812, i32 14 }
@___asan_gen_.417 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 813, i32 14 }
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 814, i32 14 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 821, i32 14 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 822, i32 14 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 823, i32 14 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 826, i32 14 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 827, i32 14 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 842, i32 14 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 843, i32 14 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 844, i32 14 }
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 845, i32 14 }
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 846, i32 14 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 847, i32 14 }
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 848, i32 14 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 849, i32 14 }
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 850, i32 14 }
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 851, i32 14 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 852, i32 14 }
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 853, i32 14 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 854, i32 14 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 855, i32 14 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 856, i32 14 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 857, i32 14 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 858, i32 14 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 859, i32 14 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 860, i32 14 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 861, i32 14 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 862, i32 14 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 863, i32 14 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 864, i32 14 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 865, i32 14 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 866, i32 14 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 867, i32 14 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 868, i32 14 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 869, i32 14 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 870, i32 14 }
@___asan_gen_.523 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.524 = private constant [36 x i8] c"../drivers/clk/tegra/clk-tegra114.c\00", align 1
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.524, i32 871, i32 14 }
@___asan_gen_.526 = private unnamed_addr constant [24 x i8] c"tegra114_cpu_clk_sctx.0\00", align 1
@___asan_gen_.527 = private unnamed_addr constant [24 x i8] c"tegra114_cpu_clk_sctx.1\00", align 1
@___asan_gen_.528 = private unnamed_addr constant [24 x i8] c"tegra114_cpu_clk_sctx.2\00", align 1
@llvm.compiler.used = appending global [156 x ptr] [ptr @__ksymtab_tegra114_clock_assert_dfll_dvco_reset, ptr @__ksymtab_tegra114_clock_deassert_dfll_dvco_reset, ptr @__ksymtab_tegra114_clock_tune_cpu_trimmers_high, ptr @__ksymtab_tegra114_clock_tune_cpu_trimmers_init, ptr @__ksymtab_tegra114_clock_tune_cpu_trimmers_low, ptr @__of_table_tegra114, ptr @tegra114_clock_init._entry, ptr @tegra114_clock_init._entry.3, ptr @tegra114_clock_init._entry.6, ptr @tegra114_clock_init._entry_ptr, ptr @tegra114_clock_init._entry_ptr.5, ptr @tegra114_clock_init._entry_ptr.8, ptr @clk_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @pmc_base, ptr @.str.7, ptr @clks, ptr @tegra114_input_freq, ptr @osc_freq, ptr @pll_ref_freq, ptr @tegra114_audio_plls, ptr @pll_x_params, ptr @tegra114_cpu_car_ops, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @pll_c_params, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @pll_c2_params, ptr @.str.16, ptr @pll_c3_params, ptr @.str.17, ptr @pll_m_params, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @pll_u_params, ptr @pll_u_lock, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pll_d_params, ptr @pll_d_lock, ptr @.str.27, ptr @.str.28, ptr @pll_d2_params, ptr @pll_d2_lock, ptr @.str.29, ptr @.str.30, ptr @pll_re_vco_params, ptr @pll_re_lock, ptr @.str.31, ptr @pll_re_div_table, ptr @.str.32, ptr @pll_e_params, ptr @pllxc_p, ptr @pllxc_nmp, ptr @pll_c_freq_table, ptr @pllc_p, ptr @pllcx_nmp, ptr @pll_cx_freq_table, ptr @pllm_p, ptr @pllm_nmp, ptr @pll_m_freq_table, ptr @pllu_p, ptr @pllu_nmp, ptr @pll_u_freq_table, ptr @.str.33, ptr @pllp_nmp, ptr @pll_d_freq_table, ptr @.str.34, ptr @.str.35, ptr @pllre_nmp, ptr @.str.36, ptr @plle_p, ptr @plle_nmp, ptr @pll_e_freq_table, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @mux_plld_out0_plld2_out0, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @mux_pllmcp_clkm, ptr @emc_lock, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @tegra_periph_clk_list, ptr @pll_p_params, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @mux_pllm_pllc2_c_c3_pllp_plla, ptr @mux_pllm_pllc2_c_c3_pllp_plla_idx, ptr @.str.52, ptr @.str.53, ptr @pll_p_freq_table, ptr @.str.54, ptr @pll_a_params, ptr @.str.55, ptr @pll_a_freq_table, ptr @pll_x_freq_table, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @tegra114_cpu_clk_sctx.0, ptr @tegra114_cpu_clk_sctx.1, ptr @tegra114_cpu_clk_sctx.2], section "llvm.metadata"
@0 = internal global [147 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_clock_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_clock_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_clock_init._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_input_freq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osc_freq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_ref_freq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_audio_plls to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_x_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_cpu_car_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_c_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_c2_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_c3_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_m_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_u_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_u_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_d_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_d_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_d2_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_d2_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_re_vco_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_re_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_re_div_table to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_e_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllxc_p to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllxc_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_c_freq_table to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllc_p to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllcx_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_cx_freq_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllm_p to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllm_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_m_freq_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllu_p to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllu_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_u_freq_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllp_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_d_freq_table to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllre_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plle_p to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plle_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_e_freq_table to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_plld_out0_plld2_out0 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_pllmcp_clkm to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_periph_clk_list to i32), i32 152, i32 192, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_p_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_pllm_pllc2_c_c3_pllp_plla to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.384 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mux_pllm_pllc2_c_c3_pllp_plla_idx to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_p_freq_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_a_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_a_freq_table to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_x_freq_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.417 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_cpu_clk_sctx.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_cpu_clk_sctx.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra114_cpu_clk_sctx.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra114_clock_tune_cpu_trimmers_high() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 1236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1056964609) #6, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !313
  tail call void @arm_heavy_mb() #6
  %1 = load ptr, ptr @clk_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1236
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !314
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra114_clock_tune_cpu_trimmers_low() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 1236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 1056964608) #6, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !313
  tail call void @arm_heavy_mb() #6
  %1 = load ptr, ptr @clk_base, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 1236
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !314
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra114_clock_tune_cpu_trimmers_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 1252
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -15794176) #6, !srcloc !312
  %1 = load ptr, ptr @clk_base, align 4
  %add.ptr2 = getelementptr i8, ptr %1, i32 1240
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 1056964608) #6, !srcloc !312
  %2 = load ptr, ptr @clk_base, align 4
  %add.ptr.i = getelementptr i8, ptr %2, i32 1236
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1056964608) #6, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !313
  tail call void @arm_heavy_mb() #6
  %3 = load ptr, ptr @clk_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 1236
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !314
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra114_clock_assert_dfll_dvco_reset() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 756
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !314
  %2 = or i32 %1, 16777216
  %3 = load ptr, ptr @clk_base, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #6, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !313
  tail call void @arm_heavy_mb() #6
  %4 = load ptr, ptr @clk_base, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 1236
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !314
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tegra114_clock_deassert_dfll_dvco_reset() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 756
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !314
  %2 = and i32 %1, -16777217
  %3 = load ptr, ptr @clk_base, align 4
  %add.ptr1 = getelementptr i8, ptr %3, i32 756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %2) #6, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !313
  tail call void @arm_heavy_mb() #6
  %4 = load ptr, ptr @clk_base, align 4
  %add.ptr.i = getelementptr i8, ptr %4, i32 1236
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !314
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra114_clock_init(ptr noundef %np) #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #6
  store ptr %call, ptr @clk_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @pmc_match, ptr noundef null) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %do.end7, label %if.end31

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1315, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %call32 = tail call ptr @of_iomap(ptr noundef nonnull %call.i, i32 noundef 0) #6
  store ptr %call32, ptr @pmc_base, align 4
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.end37, label %if.end66

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #9
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1322, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end66:                                         ; preds = %if.end31
  %0 = load ptr, ptr @clk_base, align 4
  %call67 = tail call ptr @tegra_clk_init(ptr noundef %0, i32 noundef 312, i32 noundef 5) #6
  store ptr %call67, ptr @clks, align 4
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.end66.cleanup_crit_edge, label %if.end70

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  %1 = load ptr, ptr @clk_base, align 4
  %call71 = tail call i32 @tegra_osc_clk_init(ptr noundef %1, ptr noundef nonnull @tegra114_clks, ptr noundef nonnull @tegra114_input_freq, i32 noundef 13, i32 noundef 1, ptr noundef nonnull @osc_freq, ptr noundef nonnull @pll_ref_freq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp = icmp slt i32 %call71, 0
  br i1 %cmp, label %if.end70.cleanup_crit_edge, label %if.end73

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end73:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  %call.i78 = tail call ptr @clk_register_fixed_rate(ptr noundef null, ptr noundef nonnull @.str.10, ptr noundef null, i32 noundef 0, i32 noundef 32768) #6
  %2 = load ptr, ptr @clks, align 4
  %arrayidx.i = getelementptr ptr, ptr %2, i32 200
  %3 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call.i78, ptr %arrayidx.i, align 4
  %4 = load ptr, ptr @clk_base, align 4
  %5 = load ptr, ptr @pmc_base, align 4
  tail call fastcc void @tegra114_pll_init(ptr noundef %4, ptr noundef %5) #10
  %6 = load ptr, ptr @clk_base, align 4
  %7 = load ptr, ptr @pmc_base, align 4
  tail call fastcc void @tegra114_periph_clk_init(ptr noundef %6, ptr noundef %7) #10
  %8 = load ptr, ptr @clk_base, align 4
  %9 = load ptr, ptr @pmc_base, align 4
  tail call void @tegra_audio_clk_init(ptr noundef %8, ptr noundef %9, ptr noundef nonnull @tegra114_clks, ptr noundef nonnull @tegra114_audio_plls, i32 noundef 1, i32 noundef 24000000) #6
  %10 = load ptr, ptr @clk_base, align 4
  %11 = load ptr, ptr @pmc_base, align 4
  tail call void @tegra_super_clk_gen4_init(ptr noundef %10, ptr noundef %11, ptr noundef nonnull @tegra114_clks, ptr noundef nonnull @pll_x_params) #6
  tail call void @tegra_add_of_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get) #6
  tail call void @tegra_register_devclks(ptr noundef nonnull @devclks, i32 noundef 63) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tegra_clk_apply_init_table to i32))
  store ptr @tegra114_clock_apply_init_table, ptr @tegra_clk_apply_init_table, align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  store ptr @tegra114_cpu_car_ops, ptr @tegra_cpu_car_ops, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.end70.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %do.end37, %do.end7, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_osc_clk_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra114_pll_init(ptr noundef %clk_base, ptr noundef %pmc) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tegra_clk_register_pllxc(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.12, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef 0, ptr noundef nonnull @pll_c_params, ptr noundef null) #6
  %0 = load ptr, ptr @clks, align 4
  %arrayidx = getelementptr ptr, ptr %0, i32 205
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %clk_base, i32 132
  %call1 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.11, ptr noundef %add.ptr, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #6
  %call3 = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.13, ptr noundef %add.ptr, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 4, i8 noundef zeroext 0, ptr noundef null) #6
  %2 = load ptr, ptr @clks, align 4
  %arrayidx4 = getelementptr ptr, ptr %2, i32 206
  %3 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call3, ptr %arrayidx4, align 4
  %call5 = tail call ptr @tegra_clk_register_pllc(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.12, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef 0, ptr noundef nonnull @pll_c2_params, ptr noundef null) #6
  %4 = load ptr, ptr @clks, align 4
  %arrayidx6 = getelementptr ptr, ptr %4, i32 207
  %5 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call5, ptr %arrayidx6, align 4
  %call7 = tail call ptr @tegra_clk_register_pllc(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.12, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef 0, ptr noundef nonnull @pll_c3_params, ptr noundef null) #6
  %6 = load ptr, ptr @clks, align 4
  %arrayidx8 = getelementptr ptr, ptr %6, i32 208
  %7 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call7, ptr %arrayidx8, align 4
  %call9 = tail call ptr @tegra_clk_register_pllm(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.12, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef 1, ptr noundef nonnull @pll_m_params, ptr noundef null) #6
  %8 = load ptr, ptr @clks, align 4
  %arrayidx10 = getelementptr ptr, ptr %8, i32 209
  %9 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %arrayidx10, align 4
  %add.ptr11 = getelementptr i8, ptr %clk_base, i32 148
  %call12 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef %add.ptr11, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #6
  %call14 = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef %add.ptr11, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 12, i8 noundef zeroext 0, ptr noundef null) #6
  %10 = load ptr, ptr @clks, align 4
  %arrayidx15 = getelementptr ptr, ptr %10, i32 210
  %11 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call14, ptr %arrayidx15, align 4
  %call16 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17, i32 noundef 4, i32 noundef 1, i32 noundef 1) #6
  %call17 = tail call ptr @tegra_clk_register_pllu_tegra114(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.12, ptr noundef %clk_base, i32 noundef 0, ptr noundef nonnull @pll_u_params, ptr noundef nonnull @pll_u_lock) #6
  %12 = load ptr, ptr @clks, align 4
  %arrayidx18 = getelementptr ptr, ptr %12, i32 222
  %13 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %arrayidx18, align 4
  %add.ptr19 = getelementptr i8, ptr %clk_base, i32 192
  %call20 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %add.ptr19, i8 noundef zeroext 22, i8 noundef zeroext 0, ptr noundef nonnull @pll_u_lock) #6
  %14 = load ptr, ptr @clks, align 4
  %arrayidx21 = getelementptr ptr, ptr %14, i32 223
  %15 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call20, ptr %arrayidx21, align 4
  %call22 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef 4, i32 noundef 1, i32 noundef 8) #6
  %16 = load ptr, ptr @clks, align 4
  %arrayidx23 = getelementptr ptr, ptr %16, i32 224
  %17 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call22, ptr %arrayidx23, align 4
  %call24 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21, i32 noundef 4, i32 noundef 1, i32 noundef 10) #6
  %18 = load ptr, ptr @clks, align 4
  %arrayidx25 = getelementptr ptr, ptr %18, i32 225
  %19 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call24, ptr %arrayidx25, align 4
  %call26 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.21, i32 noundef 4, i32 noundef 1, i32 noundef 40) #6
  %20 = load ptr, ptr @clks, align 4
  %arrayidx27 = getelementptr ptr, ptr %20, i32 226
  %21 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call26, ptr %arrayidx27, align 4
  %call28 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.12, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef 0, ptr noundef nonnull @pll_d_params, ptr noundef nonnull @pll_d_lock) #6
  %22 = load ptr, ptr @clks, align 4
  %arrayidx29 = getelementptr ptr, ptr %22, i32 218
  %23 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call28, ptr %arrayidx29, align 4
  %call30 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef 4, i32 noundef 1, i32 noundef 2) #6
  %24 = load ptr, ptr @clks, align 4
  %arrayidx31 = getelementptr ptr, ptr %24, i32 219
  %25 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call30, ptr %arrayidx31, align 4
  %call32 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.12, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef 0, ptr noundef nonnull @pll_d2_params, ptr noundef nonnull @pll_d2_lock) #6
  %26 = load ptr, ptr @clks, align 4
  %arrayidx33 = getelementptr ptr, ptr %26, i32 220
  %27 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call32, ptr %arrayidx33, align 4
  %call34 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef 4, i32 noundef 1, i32 noundef 2) #6
  %28 = load ptr, ptr @clks, align 4
  %arrayidx35 = getelementptr ptr, ptr %28, i32 221
  %29 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call34, ptr %arrayidx35, align 4
  %30 = load i32, ptr @pll_ref_freq, align 4
  %call36 = tail call ptr @tegra_clk_register_pllre(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.12, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef 0, ptr noundef nonnull @pll_re_vco_params, ptr noundef nonnull @pll_re_lock, i32 noundef %30) #6
  %31 = load ptr, ptr @clks, align 4
  %arrayidx37 = getelementptr ptr, ptr %31, i32 229
  %32 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call36, ptr %arrayidx37, align 4
  %add.ptr38 = getelementptr i8, ptr %clk_base, i32 1220
  %call39 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef %add.ptr38, i8 noundef zeroext 16, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull @pll_re_div_table, ptr noundef nonnull @pll_re_lock) #6
  %33 = load ptr, ptr @clks, align 4
  %arrayidx40 = getelementptr ptr, ptr %33, i32 230
  %34 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call39, ptr %arrayidx40, align 4
  %call41 = tail call ptr @tegra_clk_register_plle_tegra114(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.12, ptr noundef %clk_base, i32 noundef 0, ptr noundef nonnull @pll_e_params, ptr noundef null) #6
  %35 = load ptr, ptr @clks, align 4
  %arrayidx42 = getelementptr ptr, ptr %35, i32 231
  %36 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call41, ptr %arrayidx42, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra114_periph_clk_init(ptr noundef %clk_base, ptr noundef %pmc_base) unnamed_addr #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.37, ptr noundef nonnull @.str.38, i32 noundef 0, i32 noundef 1, i32 noundef 2) #6
  %0 = load ptr, ptr @clks, align 4
  %arrayidx = getelementptr ptr, ptr %0, i32 311
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %clk_base, i32 208
  %call1 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.39, ptr noundef nonnull @mux_plld_out0_plld2_out0, i8 noundef zeroext 2, i32 noundef 128, ptr noundef %add.ptr, i8 noundef zeroext 25, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @pll_d_lock) #6
  %2 = load ptr, ptr @clks, align 4
  %arrayidx2 = getelementptr ptr, ptr %2, i32 309
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %arrayidx2, align 4
  %add.ptr3 = getelementptr i8, ptr %clk_base, i32 1208
  %call4 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.40, ptr noundef nonnull @mux_plld_out0_plld2_out0, i8 noundef zeroext 2, i32 noundef 128, ptr noundef %add.ptr3, i8 noundef zeroext 25, i32 noundef 1, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @pll_d2_lock) #6
  %4 = load ptr, ptr @clks, align 4
  %arrayidx5 = getelementptr ptr, ptr %4, i32 310
  %5 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call4, ptr %arrayidx5, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %6 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %call6 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.41, ptr noundef nonnull @.str.39, i8 noundef zeroext 0, ptr noundef %clk_base, i32 noundef 0, i32 noundef 48, ptr noundef %6) #6
  %7 = load ptr, ptr @clks, align 4
  %arrayidx7 = getelementptr ptr, ptr %7, i32 48
  %8 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call6, ptr %arrayidx7, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %9 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %call8 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.40, i8 noundef zeroext 0, ptr noundef %clk_base, i32 noundef 0, i32 noundef 82, ptr noundef %9) #6
  %10 = load ptr, ptr @clks, align 4
  %arrayidx9 = getelementptr ptr, ptr %10, i32 82
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call8, ptr %arrayidx9, align 4
  %add.ptr10 = getelementptr i8, ptr %clk_base, i32 412
  %call11 = tail call ptr @clk_register_mux_table(ptr noundef null, ptr noundef nonnull @.str.43, ptr noundef nonnull @mux_pllmcp_clkm, i8 noundef zeroext 5, i32 noundef 128, ptr noundef %add.ptr10, i8 noundef zeroext 29, i32 noundef 7, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @emc_lock) #6
  %call13 = tail call ptr @tegra_clk_register_mc(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43, ptr noundef %add.ptr10, ptr noundef nonnull @emc_lock) #6
  %12 = load ptr, ptr @clks, align 4
  %arrayidx14 = getelementptr ptr, ptr %12, i32 32
  %13 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call13, ptr %arrayidx14, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %14 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %call15 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, i8 noundef zeroext 0, ptr noundef %clk_base, i32 noundef 4, i32 noundef 56, ptr noundef %14) #6
  %15 = load ptr, ptr @clks, align 4
  %arrayidx16 = getelementptr ptr, ptr %15, i32 56
  %16 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call15, ptr %arrayidx16, align 4
  %call18 = tail call ptr @tegra_clk_register_periph_data(ptr noundef %clk_base, ptr noundef nonnull @tegra_periph_clk_list) #6
  %17 = load ptr, ptr @clks, align 4
  %18 = load i32, ptr getelementptr inbounds ([1 x %struct.tegra_periph_init_data], ptr @tegra_periph_clk_list, i32 0, i32 0, i32 1), align 4
  %arrayidx19 = getelementptr ptr, ptr %17, i32 %18
  %19 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call18, ptr %arrayidx19, align 4
  tail call void @tegra_periph_clk_init(ptr noundef %clk_base, ptr noundef %pmc_base, ptr noundef nonnull @tegra114_clks, ptr noundef nonnull @pll_p_params) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_audio_clk_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_super_clk_gen4_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_add_of_provider(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_register_devclks(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra114_clock_apply_init_table() #2 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clks, align 4
  tail call void @tegra_init_from_table(ptr noundef nonnull @init_table, ptr noundef %0, i32 noundef 312) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_rate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllxc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_divider(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll_out(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllu_tegra114(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllre(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_plle_tegra114(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_gate(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_mc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_data(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_periph_clk_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_init_from_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra114_wait_cpu_in_reset(i32 noundef %cpu) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %cpu
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 1136
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !314
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !315
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !316
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !317
  %and = and i32 %2, %shl
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.do.body_crit_edge, label %do.end10

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body

do.end10:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal void @tegra114_disable_cpu_clock(i32 noundef %cpu) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra114_cpu_clock_suspend() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 468
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !314
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !318
  store i32 %2, ptr @tegra114_cpu_clk_sctx.0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !319
  tail call void @arm_heavy_mb() #6
  %3 = load ptr, ptr @clk_base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 192) #6, !srcloc !312
  %4 = load ptr, ptr @clk_base, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 872
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !314
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !320
  store i32 %6, ptr @tegra114_cpu_clk_sctx.1, align 4
  %7 = load ptr, ptr @clk_base, align 4
  %add.ptr12 = getelementptr i8, ptr %7, i32 876
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #6, !srcloc !314
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !321
  store i32 %9, ptr @tegra114_cpu_clk_sctx.2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra114_cpu_clock_resume() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !322
  tail call void @arm_heavy_mb() #6
  %0 = load i32, ptr @tegra114_cpu_clk_sctx.0, align 4
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %2 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #6, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !323
  tail call void @arm_heavy_mb() #6
  %3 = load i32, ptr @tegra114_cpu_clk_sctx.1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = load ptr, ptr @clk_base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #6, !srcloc !312
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !324
  tail call void @arm_heavy_mb() #6
  %6 = load i32, ptr @tegra114_cpu_clk_sctx.2, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = load ptr, ptr @clk_base, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %7) #6, !srcloc !312
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 147)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { cold }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !17, !18, !19, !20, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !125, !127, !129, !131, !133, !134, !136, !138, !139, !141, !143, !145, !146, !148, !150, !152, !154, !156, !158, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !189, !191, !193, !195, !197, !199, !201, !203, !205, !207, !209, !211, !213, !215, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301}
!llvm.module.flags = !{!303, !304, !305, !306, !307, !308, !309, !310}
!llvm.ident = !{!311}

!0 = !{ptr @__ksymtab_tegra114_clock_tune_cpu_trimmers_high, !1, !"__ksymtab_tegra114_clock_tune_cpu_trimmers_high", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1209, i32 1}
!2 = !{ptr @__ksymtab_tegra114_clock_tune_cpu_trimmers_low, !3, !"__ksymtab_tegra114_clock_tune_cpu_trimmers_low", i1 false, i1 false}
!3 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1236, i32 1}
!4 = !{ptr @__ksymtab_tegra114_clock_tune_cpu_trimmers_init, !5, !"__ksymtab_tegra114_clock_tune_cpu_trimmers_init", i1 false, i1 false}
!5 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1267, i32 1}
!6 = !{ptr @__ksymtab_tegra114_clock_assert_dfll_dvco_reset, !7, !"__ksymtab_tegra114_clock_assert_dfll_dvco_reset", i1 false, i1 false}
!7 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1283, i32 1}
!8 = !{ptr @__ksymtab_tegra114_clock_deassert_dfll_dvco_reset, !9, !"__ksymtab_tegra114_clock_deassert_dfll_dvco_reset", i1 false, i1 false}
!9 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1300, i32 1}
!10 = !{ptr @__of_table_tegra114, !11, !"__of_table_tegra114", i1 false, i1 false}
!11 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1352, i32 1}
!12 = !{ptr @clk_base, !13, !"clk_base", i1 false, i1 false}
!13 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 130, i32 22}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1308, i32 3}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @tegra114_clock_init._entry, !15, !"_entry", i1 false, i1 false}
!19 = !{ptr @tegra114_clock_init._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1314, i32 3}
!22 = !{ptr @tegra114_clock_init._entry.3, !21, !"_entry", i1 false, i1 false}
!23 = !{ptr @tegra114_clock_init._entry_ptr.5, !21, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1321, i32 3}
!26 = !{ptr @tegra114_clock_init._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @tegra114_clock_init._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @pmc_match, !29, !"pmc_match", i1 false, i1 false}
!29 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1125, i32 34}
!30 = !{ptr @pmc_base, !31, !"pmc_base", i1 false, i1 false}
!31 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 131, i32 22}
!32 = !{ptr @clks, !33, !"clks", i1 false, i1 false}
!33 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 885, i32 21}
!34 = !{ptr @tegra114_clks, !35, !"tegra114_clks", i1 false, i1 false}
!35 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 636, i32 25}
!36 = !{ptr @tegra114_input_freq, !37, !"tegra114_input_freq", i1 false, i1 false}
!37 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 603, i32 22}
!38 = !{ptr @osc_freq, !39, !"osc_freq", i1 false, i1 false}
!39 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 887, i32 22}
!40 = !{ptr @pll_ref_freq, !41, !"pll_ref_freq", i1 false, i1 false}
!41 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 888, i32 22}
!42 = !{ptr @.str.10, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 895, i32 38}
!44 = !{ptr @.str.11, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 905, i32 33}
!46 = !{ptr @.str.12, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 905, i32 42}
!48 = !{ptr @.str.13, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 910, i32 35}
!50 = !{ptr @.str.14, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 913, i32 35}
!52 = !{ptr @.str.15, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 919, i32 32}
!54 = !{ptr @.str.16, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 924, i32 32}
!56 = !{ptr @.str.17, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 929, i32 32}
!58 = !{ptr @.str.18, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 934, i32 35}
!60 = !{ptr @.str.19, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 937, i32 35}
!62 = !{ptr @.str.20, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 943, i32 40}
!64 = !{ptr @.str.21, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 947, i32 41}
!66 = !{ptr @.str.22, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 952, i32 32}
!68 = !{ptr @.str.23, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 958, i32 40}
!70 = !{ptr @.str.24, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 963, i32 40}
!72 = !{ptr @.str.25, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 968, i32 40}
!74 = !{ptr @.str.26, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 973, i32 31}
!76 = !{ptr @.str.27, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 978, i32 40}
!78 = !{ptr @.str.28, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 983, i32 31}
!80 = !{ptr @.str.29, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 988, i32 40}
!82 = !{ptr @.str.30, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 993, i32 33}
!84 = !{ptr @.str.31, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 997, i32 41}
!86 = !{ptr @.str.32, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1003, i32 41}
!88 = !{ptr @pll_c_params, !89, !"pll_c_params", i1 false, i1 false}
!89 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 177, i32 36}
!90 = !{ptr @pllxc_p, !91, !"pllxc_p", i1 false, i1 false}
!91 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 148, i32 30}
!92 = !{ptr @pllxc_nmp, !93, !"pllxc_nmp", i1 false, i1 false}
!93 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 139, i32 23}
!94 = !{ptr @pll_c_freq_table, !95, !"pll_c_freq_table", i1 false, i1 false}
!95 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 167, i32 40}
!96 = !{ptr @pll_c2_params, !97, !"pll_c2_params", i1 false, i1 false}
!97 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 228, i32 36}
!98 = !{ptr @pllc_p, !99, !"pllc_p", i1 false, i1 false}
!99 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 210, i32 30}
!100 = !{ptr @pllcx_nmp, !101, !"pllcx_nmp", i1 false, i1 false}
!101 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 201, i32 23}
!102 = !{ptr @pll_cx_freq_table, !103, !"pll_cx_freq_table", i1 false, i1 false}
!103 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 219, i32 40}
!104 = !{ptr @pll_c3_params, !105, !"pll_c3_params", i1 false, i1 false}
!105 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 250, i32 36}
!106 = !{ptr @pll_m_params, !107, !"pll_m_params", i1 false, i1 false}
!107 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 299, i32 36}
!108 = !{ptr @pllm_p, !109, !"pllm_p", i1 false, i1 false}
!109 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 284, i32 30}
!110 = !{ptr @pllm_nmp, !111, !"pllm_nmp", i1 false, i1 false}
!111 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 272, i32 23}
!112 = !{ptr @pll_m_freq_table, !113, !"pll_m_freq_table", i1 false, i1 false}
!113 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 290, i32 40}
!114 = !{ptr @pll_u_params, !115, !"pll_u_params", i1 false, i1 false}
!115 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 465, i32 36}
!116 = !{ptr @pllu_p, !117, !"pllu_p", i1 false, i1 false}
!117 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 441, i32 30}
!118 = !{ptr @pllu_nmp, !119, !"pllu_nmp", i1 false, i1 false}
!119 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 447, i32 23}
!120 = !{ptr @pll_u_freq_table, !121, !"pll_u_freq_table", i1 false, i1 false}
!121 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 456, i32 40}
!122 = !{ptr @.str.33, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 135, i32 8}
!124 = !{ptr @pll_u_lock, !123, !"pll_u_lock", i1 false, i1 false}
!125 = !{ptr @pll_d_params, !126, !"pll_d_params", i1 false, i1 false}
!126 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 405, i32 36}
!127 = !{ptr @pllp_nmp, !128, !"pllp_nmp", i1 false, i1 false}
!128 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 321, i32 23}
!129 = !{ptr @pll_d_freq_table, !130, !"pll_d_freq_table", i1 false, i1 false}
!130 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 387, i32 40}
!131 = !{ptr @.str.34, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 133, i32 8}
!133 = !{ptr @pll_d_lock, !132, !"pll_d_lock", i1 false, i1 false}
!134 = !{ptr @pll_d2_params, !135, !"pll_d2_params", i1 false, i1 false}
!135 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 423, i32 36}
!136 = !{ptr @.str.35, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 134, i32 8}
!138 = !{ptr @pll_d2_lock, !137, !"pll_d2_lock", i1 false, i1 false}
!139 = !{ptr @pll_re_vco_params, !140, !"pll_re_vco_params", i1 false, i1 false}
!140 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 583, i32 36}
!141 = !{ptr @pllre_nmp, !142, !"pllre_nmp", i1 false, i1 false}
!142 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 574, i32 23}
!143 = !{ptr @.str.36, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 136, i32 8}
!145 = !{ptr @pll_re_lock, !144, !"pll_re_lock", i1 false, i1 false}
!146 = !{ptr @pll_re_div_table, !147, !"pll_re_div_table", i1 false, i1 false}
!147 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 626, i32 35}
!148 = !{ptr @pll_e_params, !149, !"pll_e_params", i1 false, i1 false}
!149 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 554, i32 36}
!150 = !{ptr @plle_p, !151, !"plle_p", i1 false, i1 false}
!151 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 526, i32 30}
!152 = !{ptr @plle_nmp, !153, !"plle_nmp", i1 false, i1 false}
!153 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 545, i32 23}
!154 = !{ptr @pll_e_freq_table, !155, !"pll_e_freq_table", i1 false, i1 false}
!155 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 518, i32 40}
!156 = !{ptr @.str.37, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1022, i32 40}
!158 = !{ptr @.str.38, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1022, i32 56}
!160 = !{ptr @.str.39, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1027, i32 8}
!162 = !{ptr @.str.40, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1034, i32 8}
!164 = !{ptr @.str.41, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1040, i32 39}
!166 = !{ptr @.str.42, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1044, i32 39}
!168 = !{ptr @.str.43, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1049, i32 8}
!170 = !{ptr @.str.44, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1055, i32 30}
!172 = !{ptr @.str.45, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1059, i32 39}
!174 = !{ptr @.str.46, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1059, i32 51}
!176 = !{ptr @mux_plld_out0_plld2_out0, !177, !"mux_plld_out0_plld2_out0", i1 false, i1 false}
!177 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 617, i32 20}
!178 = !{ptr @.str.47, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 623, i32 2}
!180 = !{ptr @.str.48, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 623, i32 16}
!182 = !{ptr @.str.49, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 623, i32 30}
!184 = !{ptr @mux_pllmcp_clkm, !185, !"mux_pllmcp_clkm", i1 false, i1 false}
!185 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 622, i32 20}
!186 = !{ptr @.str.50, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 137, i32 8}
!188 = !{ptr @emc_lock, !187, !"emc_lock", i1 false, i1 false}
!189 = !{ptr @.str.51, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1011, i32 2}
!191 = !{ptr @tegra_periph_clk_list, !192, !"tegra_periph_clk_list", i1 false, i1 false}
!192 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1010, i32 38}
!193 = !{ptr @.str.52, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 875, i32 40}
!195 = !{ptr @.str.53, !196, !"<string literal>", i1 false, i1 false}
!196 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 875, i32 49}
!197 = !{ptr @mux_pllm_pllc2_c_c3_pllp_plla, !198, !"mux_pllm_pllc2_c_c3_pllp_plla", i1 false, i1 false}
!198 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 874, i32 20}
!199 = !{ptr @mux_pllm_pllc2_c_c3_pllp_plla_idx, !200, !"mux_pllm_pllc2_c_c3_pllp_plla_idx", i1 false, i1 false}
!200 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 877, i32 12}
!201 = !{ptr @pll_p_params, !202, !"pll_p_params", i1 false, i1 false}
!202 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 339, i32 36}
!203 = !{ptr @pll_p_freq_table, !204, !"pll_p_freq_table", i1 false, i1 false}
!204 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 330, i32 40}
!205 = !{ptr @.str.54, !206, !"<string literal>", i1 false, i1 false}
!206 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 882, i32 4}
!207 = !{ptr @.str.55, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 882, i32 45}
!209 = !{ptr @tegra114_audio_plls, !210, !"tegra114_audio_plls", i1 false, i1 false}
!210 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 881, i32 36}
!211 = !{ptr @pll_a_params, !212, !"pll_a_params", i1 false, i1 false}
!212 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 369, i32 36}
!213 = !{ptr @pll_a_freq_table, !214, !"pll_a_freq_table", i1 false, i1 false}
!214 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 358, i32 40}
!215 = !{ptr @pll_x_params, !216, !"pll_x_params", i1 false, i1 false}
!216 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 494, i32 36}
!217 = !{ptr @pll_x_freq_table, !218, !"pll_x_freq_table", i1 false, i1 false}
!218 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 484, i32 40}
!219 = !{ptr @.str.56, !220, !"<string literal>", i1 false, i1 false}
!220 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 812, i32 14}
!221 = !{ptr @.str.57, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 813, i32 14}
!223 = !{ptr @.str.58, !224, !"<string literal>", i1 false, i1 false}
!224 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 814, i32 14}
!225 = !{ptr @.str.59, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 821, i32 14}
!227 = !{ptr @.str.60, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 822, i32 14}
!229 = !{ptr @.str.61, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 823, i32 14}
!231 = !{ptr @.str.62, !232, !"<string literal>", i1 false, i1 false}
!232 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 826, i32 14}
!233 = !{ptr @.str.63, !234, !"<string literal>", i1 false, i1 false}
!234 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 827, i32 14}
!235 = !{ptr @.str.64, !236, !"<string literal>", i1 false, i1 false}
!236 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 842, i32 14}
!237 = !{ptr @.str.65, !238, !"<string literal>", i1 false, i1 false}
!238 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 843, i32 14}
!239 = !{ptr @.str.66, !240, !"<string literal>", i1 false, i1 false}
!240 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 844, i32 14}
!241 = !{ptr @.str.67, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 845, i32 14}
!243 = !{ptr @.str.68, !244, !"<string literal>", i1 false, i1 false}
!244 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 846, i32 14}
!245 = !{ptr @.str.69, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 847, i32 14}
!247 = !{ptr @.str.70, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 848, i32 14}
!249 = !{ptr @.str.71, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 849, i32 14}
!251 = !{ptr @.str.72, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 850, i32 14}
!253 = !{ptr @.str.73, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 851, i32 14}
!255 = !{ptr @.str.74, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 852, i32 14}
!257 = !{ptr @.str.75, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 853, i32 14}
!259 = !{ptr @.str.76, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 854, i32 14}
!261 = !{ptr @.str.77, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 855, i32 14}
!263 = !{ptr @.str.78, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 856, i32 14}
!265 = !{ptr @.str.79, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 857, i32 14}
!267 = !{ptr @.str.80, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 858, i32 14}
!269 = !{ptr @.str.81, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 859, i32 14}
!271 = !{ptr @.str.82, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 860, i32 14}
!273 = !{ptr @.str.83, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 861, i32 14}
!275 = !{ptr @.str.84, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 862, i32 14}
!277 = !{ptr @.str.85, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 863, i32 14}
!279 = !{ptr @.str.86, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 864, i32 14}
!281 = !{ptr @.str.87, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 865, i32 14}
!283 = !{ptr @.str.88, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 866, i32 14}
!285 = !{ptr @.str.89, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 867, i32 14}
!287 = !{ptr @.str.90, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 868, i32 14}
!289 = !{ptr @.str.91, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 869, i32 14}
!291 = !{ptr @.str.92, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 870, i32 14}
!293 = !{ptr @.str.93, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 871, i32 14}
!295 = !{ptr @devclks, !296, !"devclks", i1 false, i1 false}
!296 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 808, i32 28}
!297 = !{ptr @init_table, !298, !"init_table", i1 false, i1 false}
!298 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1134, i32 36}
!299 = !{ptr @tegra114_cpu_car_ops, !300, !"tegra114_cpu_car_ops", i1 false, i1 false}
!300 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 1116, i32 33}
!301 = distinct !{null, !302, !"tegra114_cpu_clk_sctx", i1 false, i1 false}
!302 = !{!"../drivers/clk/tegra/clk-tegra114.c", i32 127, i32 3}
!303 = !{i32 1, !"wchar_size", i32 2}
!304 = !{i32 1, !"min_enum_size", i32 4}
!305 = !{i32 8, !"branch-target-enforcement", i32 0}
!306 = !{i32 8, !"sign-return-address", i32 0}
!307 = !{i32 8, !"sign-return-address-all", i32 0}
!308 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!309 = !{i32 7, !"uwtable", i32 1}
!310 = !{i32 7, !"frame-pointer", i32 2}
!311 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!312 = !{i64 732622}
!313 = !{i64 2152658968}
!314 = !{i64 733040}
!315 = !{i64 2152654476}
!316 = !{i64 2152654751}
!317 = !{i64 2152654593}
!318 = !{i64 2152655239}
!319 = !{i64 2152655462}
!320 = !{i64 2152656136}
!321 = !{i64 2152656640}
!322 = !{i64 2152656891}
!323 = !{i64 2152657410}
!324 = !{i64 2152657929}
