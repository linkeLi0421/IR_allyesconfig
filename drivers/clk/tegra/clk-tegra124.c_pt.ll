; ModuleID = '/llk/IR_all_yes/drivers/clk/tegra/clk-tegra124.c_pt.bc'
source_filename = "../drivers/clk/tegra/clk-tegra124.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.tegra_audio_clk_info = type { ptr, ptr, i32, ptr }
%struct.tegra_clk = type { i32, i8 }
%struct.tegra_clk_pll_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [6 x i32], i32, i32, i32, i32, i32, i32, i32, i8, ptr, ptr, ptr, i32, i16, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.tegra_devclk = type { i32, ptr, ptr }
%struct.tegra_cpu_car_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__of_table_tegra124 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra124_clock_init }, section "__clk_of_table", align 4
@__of_table_tegra132 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra132-car\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra132_clock_init }, section "__clk_of_table", align 4
@tegra_clk_apply_init_table = external dso_local local_unnamed_addr global ptr, align 4
@clk_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tegra124_132_clock_init_pre._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 1462, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013ioremap tegra124/tegra132 CAR failed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"tegra124_132_clock_init_pre\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/clk/tegra/clk-tegra124.c\00", [63 x i8] zeroinitializer }, align 32
@tegra124_132_clock_init_pre._entry_ptr = internal global ptr @tegra124_132_clock_init_pre._entry, section ".printk_index", align 4
@pmc_match = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra124-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], section ".init.rodata", align 4
@tegra124_132_clock_init_pre._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 1468, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Failed to find pmc node\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra124_132_clock_init_pre._entry_ptr.5 = internal global ptr @tegra124_132_clock_init_pre._entry.3, section ".printk_index", align 4
@pmc_base = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tegra124_132_clock_init_pre._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.1, ptr @.str.2, i32 1475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\013Can't map pmc registers\0A\00", [37 x i8] zeroinitializer }, align 32
@tegra124_132_clock_init_pre._entry_ptr.8 = internal global ptr @tegra124_132_clock_init_pre._entry.6, section ".printk_index", align 4
@clks = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tegra124_input_freq = internal global { [13 x i32], [44 x i8] } { [13 x i32] [i32 13000000, i32 16800000, i32 0, i32 0, i32 19200000, i32 38400000, i32 0, i32 0, i32 12000000, i32 48000000, i32 0, i32 0, i32 26000000], [44 x i8] zeroinitializer }, align 32
@osc_freq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@pll_ref_freq = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tegra124_audio_plls = internal global { [1 x %struct.tegra_audio_clk_info], [16 x i8] } { [1 x %struct.tegra_audio_clk_info] [%struct.tegra_audio_clk_info { ptr @.str.62, ptr @pll_a_params, i32 137, ptr @.str.63 }], [16 x i8] zeroinitializer }, align 32
@tegra124_clks = internal global <{ [297 x %struct.tegra_clk], [16 x %struct.tegra_clk] }> <{ [297 x %struct.tegra_clk] [%struct.tegra_clk { i32 119, i8 1 }, %struct.tegra_clk { i32 154, i8 1 }, %struct.tegra_clk { i32 180, i8 1 }, %struct.tegra_clk { i32 72, i8 1 }, %struct.tegra_clk { i32 153, i8 1 }, %struct.tegra_clk { i32 185, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 34, i8 1 }, %struct.tegra_clk { i32 107, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 239, i8 1 }, %struct.tegra_clk { i32 113, i8 1 }, %struct.tegra_clk { i32 300, i8 1 }, %struct.tegra_clk { i32 240, i8 1 }, %struct.tegra_clk { i32 114, i8 1 }, %struct.tegra_clk { i32 301, i8 1 }, %struct.tegra_clk { i32 241, i8 1 }, %struct.tegra_clk { i32 115, i8 1 }, %struct.tegra_clk { i32 302, i8 1 }, %struct.tegra_clk { i32 242, i8 1 }, %struct.tegra_clk { i32 116, i8 1 }, %struct.tegra_clk { i32 303, i8 1 }, %struct.tegra_clk { i32 243, i8 1 }, %struct.tegra_clk { i32 117, i8 1 }, %struct.tegra_clk { i32 304, i8 1 }, %struct.tegra_clk { i32 62, i8 1 }, %struct.tegra_clk { i32 63, i8 1 }, %struct.tegra_clk { i32 262, i8 1 }, %struct.tegra_clk { i32 263, i8 1 }, %struct.tegra_clk { i32 144, i8 1 }, %struct.tegra_clk { i32 145, i8 1 }, %struct.tegra_clk { i32 146, i8 1 }, %struct.tegra_clk { i32 200, i8 1 }, %struct.tegra_clk { i32 177, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 201, i8 1 }, %struct.tegra_clk { i32 249, i8 1 }, %struct.tegra_clk { i32 202, i8 1 }, %struct.tegra_clk { i32 203, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 52, i8 1 }, %struct.tegra_clk { i32 73, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 92, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 108, i8 1 }, %struct.tegra_clk { i32 109, i8 1 }, %struct.tegra_clk { i32 110, i8 1 }, %struct.tegra_clk { i32 106, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 150, i8 1 }, %struct.tegra_clk { i32 264, i8 1 }, %struct.tegra_clk { i32 265, i8 1 }, %struct.tegra_clk { i32 27, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 26, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 152, i8 1 }, %struct.tegra_clk { i32 181, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 147, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 148, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 79, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 149, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 120, i8 1 }, %struct.tegra_clk { i32 121, i8 1 }, %struct.tegra_clk { i32 122, i8 1 }, %struct.tegra_clk { i32 198, i8 1 }, %struct.tegra_clk { i32 199, i8 1 }, %struct.tegra_clk { i32 184, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 260, i8 1 }, %struct.tegra_clk { i32 125, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 111, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 128, i8 1 }, %struct.tegra_clk { i32 51, i8 1 }, %struct.tegra_clk { i32 176, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 28, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 12, i8 1 }, %struct.tegra_clk { i32 54, i8 1 }, %struct.tegra_clk { i32 67, i8 1 }, %struct.tegra_clk { i32 103, i8 1 }, %struct.tegra_clk { i32 47, i8 1 }, %struct.tegra_clk { i32 166, i8 1 }, %struct.tegra_clk { i32 81, i8 1 }, %struct.tegra_clk { i32 30, i8 1 }, %struct.tegra_clk { i32 233, i8 1 }, %struct.tegra_clk { i32 11, i8 1 }, %struct.tegra_clk { i32 234, i8 1 }, %struct.tegra_clk { i32 18, i8 1 }, %struct.tegra_clk { i32 235, i8 1 }, %struct.tegra_clk { i32 101, i8 1 }, %struct.tegra_clk { i32 236, i8 1 }, %struct.tegra_clk { i32 102, i8 1 }, %struct.tegra_clk { i32 237, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 23, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 3, i8 1 }, %struct.tegra_clk { i32 36, i8 1 }, %struct.tegra_clk { i32 40, i8 1 }, %struct.tegra_clk { i32 76, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 50, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 56, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 99, i8 1 }, %struct.tegra_clk { i32 91, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 42, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 71, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 70, i8 1 }, %struct.tegra_clk { i32 261, i8 1 }, %struct.tegra_clk { i32 216, i8 1 }, %struct.tegra_clk { i32 217, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 205, i8 1 }, %struct.tegra_clk { i32 207, i8 1 }, %struct.tegra_clk { i32 208, i8 1 }, %struct.tegra_clk { i32 270, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 206, i8 1 }, %struct.tegra_clk { i32 218, i8 1 }, %struct.tegra_clk { i32 220, i8 1 }, %struct.tegra_clk { i32 221, i8 1 }, %struct.tegra_clk { i32 219, i8 1 }, %struct.tegra_clk { i32 271, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 209, i8 1 }, %struct.tegra_clk { i32 210, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 211, i8 1 }, %struct.tegra_clk { i32 212, i8 1 }, %struct.tegra_clk { i32 213, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 214, i8 1 }, %struct.tegra_clk { i32 215, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 267, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 204, i8 1 }, %struct.tegra_clk { i32 230, i8 1 }, %struct.tegra_clk { i32 229, i8 1 }, %struct.tegra_clk { i32 222, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 226, i8 1 }, %struct.tegra_clk { i32 223, i8 1 }, %struct.tegra_clk { i32 225, i8 1 }, %struct.tegra_clk { i32 224, i8 1 }, %struct.tegra_clk { i32 227, i8 1 }, %struct.tegra_clk { i32 228, i8 1 }, %struct.tegra_clk { i32 17, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 4, i8 1 }, %struct.tegra_clk { i32 124, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 129, i8 1 }, %struct.tegra_clk { i32 123, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 41, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 44, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 46, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 68, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 104, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 105, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 259, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 14, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 9, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 69, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 15, i8 1 }, %struct.tegra_clk { i32 127, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 78, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 182, i8 1 }, %struct.tegra_clk { i32 311, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 244, i8 1 }, %struct.tegra_clk { i32 118, i8 1 }, %struct.tegra_clk { i32 194, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 232, i8 1 }, %struct.tegra_clk { i32 305, i8 1 }, %struct.tegra_clk { i32 195, i8 1 }, %struct.tegra_clk { i32 5, i8 1 }, %struct.tegra_clk { i32 77, i8 1 }, %struct.tegra_clk { i32 83, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 100, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 6, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 192, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 55, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 65, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 58, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 59, i8 1 }, %struct.tegra_clk { i32 22, i8 1 }, %struct.tegra_clk { i32 29, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 61, i8 1 }, %struct.tegra_clk { i32 193, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 196, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 178, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 171, i8 1 }, %struct.tegra_clk { i32 238, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 197, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 266, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 257, i8 1 }, %struct.tegra_clk { i32 256, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 253, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 254, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 89, i8 1 }, %struct.tegra_clk { i32 252, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 258, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 156, i8 1 }, %struct.tegra_clk { i32 255, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 312, i8 1 }, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk zeroinitializer, %struct.tegra_clk { i32 136, i8 1 }], [16 x %struct.tegra_clk] zeroinitializer }>, section ".init.data", align 4
@.str.10 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_c\00", [26 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"pll_ref\00", [24 x i8] zeroinitializer }, align 32
@pll_c_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 800000000, i32 12000000, i32 19200000, i32 600000000, i32 1400000000, i32 128, i32 140, i32 0, i32 134217728, i32 24, i32 140, i32 26, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 136, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1025, i32 17, i32 9, i32 300, i32 6, i8 0, ptr @pllxc_p, ptr @pllxc_nmp, ptr @pll_c_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll_c_out1_div\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_c_out1\00", [21 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll_c_ud\00", [23 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_c2\00", [25 x i8] zeroinitializer }, align 32
@pll_c2_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 48000000, i32 12000000, i32 19200000, i32 600000000, i32 1200000000, i32 1256, i32 1260, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] [i32 1264, i32 1268, i32 1272, i32 0, i32 0, i32 0], i32 0, i32 0, i32 1, i32 0, i32 0, i32 300, i32 7, i8 0, ptr @pllc_p, ptr @pllcx_nmp, ptr @pll_cx_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_c3\00", [25 x i8] zeroinitializer }, align 32
@pll_c3_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 48000000, i32 12000000, i32 19200000, i32 600000000, i32 1200000000, i32 1276, i32 1280, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] [i32 1284, i32 1288, i32 1292, i32 0, i32 0, i32 0], i32 0, i32 0, i32 1, i32 0, i32 0, i32 300, i32 7, i8 0, ptr @pllc_p, ptr @pllcx_nmp, ptr @pll_cx_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_m\00", [26 x i8] zeroinitializer }, align 32
@pll_m_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 500000000, i32 12000000, i32 19200000, i32 400000000, i32 1066000000, i32 144, i32 156, i32 0, i32 134217728, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 476, i32 688, i32 1, i32 0, i32 0, i32 300, i32 5, i8 0, ptr @pllm_p, ptr @pllm_nmp, ptr @pll_m_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pll_m_out1_div\00", [17 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_m_out1\00", [21 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"pll_m_ud\00", [23 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_u\00", [26 x i8] zeroinitializer }, align 32
@pll_u_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 480000000, i32 960000000, i32 192, i32 204, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1047, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr @pllu_p, ptr @pllu_nmp, ptr @pll_u_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pll_u_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.35, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_u_480M\00", [21 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll_u_60M\00", [22 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll_u_48M\00", [22 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"pll_u_12M\00", [22 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_d\00", [26 x i8] zeroinitializer }, align 32
@pll_d_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 2000000, i32 40000000, i32 1000000, i32 6000000, i32 500000000, i32 1000000000, i32 208, i32 220, i32 0, i32 134217728, i32 22, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1031, i32 0, i32 0, i32 1000, i32 0, i8 0, ptr null, ptr @plld_nmp, ptr @pll_d_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pll_d_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.36, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_d_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_re_vco\00", [21 x i8] zeroinitializer }, align 32
@pll_re_vco_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 1000000000, i32 12000000, i32 19200000, i32 300000000, i32 600000000, i32 1220, i32 1224, i32 0, i32 16777216, i32 30, i32 1224, i32 16, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1281, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr @pllre_nmp, ptr null, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@pll_re_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.37, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_re_out\00", [21 x i8] zeroinitializer }, align 32
@pll_re_div_table = internal constant { [7 x %struct.clk_div_table], [40 x i8] } { [7 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 5 }, %struct.clk_div_table { i32 5, i32 6 }, %struct.clk_div_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_e\00", [26 x i8] zeroinitializer }, align 32
@pll_e_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 1000000000, i32 12000000, i32 75000000, i32 1600000000, i32 -1894967296, i32 232, i32 236, i32 0, i32 2048, i32 9, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1164, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1088, i32 0, i32 0, i32 300, i32 0, i8 0, ptr @plle_p, ptr @plle_nmp, ptr @pll_e_freq_table, i32 100000000, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_c4\00", [25 x i8] zeroinitializer }, align 32
@pll_c4_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 1000000000, i32 12000000, i32 19200000, i32 600000000, i32 1200000000, i32 1444, i32 1448, i32 0, i32 134217728, i32 30, i32 1444, i32 19, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] [i32 1452, i32 1456, i32 1460, i32 0, i32 0, i32 0], i32 0, i32 0, i32 1025, i32 0, i32 0, i32 300, i32 0, i8 0, ptr @pll12g_ssd_esd_p, ptr @pllss_nmp, ptr @pll_c4_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_dp\00", [25 x i8] zeroinitializer }, align 32
@pll_dp_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 1000000000, i32 12000000, i32 19200000, i32 600000000, i32 1200000000, i32 1424, i32 1428, i32 0, i32 134217728, i32 30, i32 1424, i32 19, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] [i32 1432, i32 1436, i32 1440, i32 0, i32 0, i32 0], i32 0, i32 0, i32 1025, i32 0, i32 0, i32 300, i32 5, i8 0, ptr @pll12g_ssd_esd_p, ptr @pllss_nmp, ptr @pll_dp_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"pll_d2\00", [25 x i8] zeroinitializer }, align 32
@tegra124_pll_d2_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 1000000000, i32 12000000, i32 19200000, i32 600000000, i32 1200000000, i32 1208, i32 1212, i32 0, i32 134217728, i32 30, i32 1208, i32 19, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] [i32 1392, i32 1396, i32 1400, i32 0, i32 0, i32 0], i32 0, i32 0, i32 1025, i32 0, i32 0, i32 300, i32 15, i8 0, ptr @pll12g_ssd_esd_p, ptr @pllss_nmp, ptr @tegra124_pll_d2_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_d2_out0\00", [20 x i8] zeroinitializer }, align 32
@pllxc_p = internal constant { [16 x %struct.pdiv_map], [32 x i8] } { [16 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 0 }, %struct.pdiv_map { i8 2, i8 1 }, %struct.pdiv_map { i8 3, i8 2 }, %struct.pdiv_map { i8 4, i8 3 }, %struct.pdiv_map { i8 5, i8 4 }, %struct.pdiv_map { i8 6, i8 5 }, %struct.pdiv_map { i8 8, i8 6 }, %struct.pdiv_map { i8 10, i8 7 }, %struct.pdiv_map { i8 12, i8 8 }, %struct.pdiv_map { i8 16, i8 9 }, %struct.pdiv_map { i8 12, i8 10 }, %struct.pdiv_map { i8 16, i8 11 }, %struct.pdiv_map { i8 20, i8 12 }, %struct.pdiv_map { i8 24, i8 13 }, %struct.pdiv_map { i8 32, i8 14 }, %struct.pdiv_map zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pllxc_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 8, i8 0, i8 8, i8 20, i8 4, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@pll_c_freq_table = internal global { [7 x %struct.tegra_clk_pll_freq_table], [52 x i8] } { [7 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 624000000, i32 104, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 600000000, i32 100, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 600000000, i32 92, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 600000000, i32 71, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 600000000, i32 62, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 600000000, i32 92, i32 2, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [52 x i8] zeroinitializer }, align 32
@pllc_p = internal constant { [9 x %struct.pdiv_map], [46 x i8] } { [9 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 0 }, %struct.pdiv_map { i8 2, i8 1 }, %struct.pdiv_map { i8 3, i8 2 }, %struct.pdiv_map { i8 4, i8 3 }, %struct.pdiv_map { i8 6, i8 4 }, %struct.pdiv_map { i8 8, i8 5 }, %struct.pdiv_map { i8 12, i8 6 }, %struct.pdiv_map { i8 16, i8 7 }, %struct.pdiv_map zeroinitializer], [46 x i8] zeroinitializer }, align 32
@pllcx_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 8, i8 0, i8 2, i8 20, i8 3, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@pll_cx_freq_table = internal global { [6 x %struct.tegra_clk_pll_freq_table], [40 x i8] } { [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 600000000, i32 100, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 600000000, i32 92, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 600000000, i32 71, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 600000000, i32 62, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 600000000, i32 92, i32 2, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@pllm_p = internal constant { [16 x %struct.pdiv_map], [32 x i8] } { [16 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 0 }, %struct.pdiv_map { i8 2, i8 1 }, %struct.pdiv_map { i8 3, i8 2 }, %struct.pdiv_map { i8 4, i8 3 }, %struct.pdiv_map { i8 5, i8 4 }, %struct.pdiv_map { i8 6, i8 5 }, %struct.pdiv_map { i8 8, i8 6 }, %struct.pdiv_map { i8 10, i8 7 }, %struct.pdiv_map { i8 12, i8 8 }, %struct.pdiv_map { i8 16, i8 9 }, %struct.pdiv_map { i8 12, i8 10 }, %struct.pdiv_map { i8 16, i8 11 }, %struct.pdiv_map { i8 20, i8 12 }, %struct.pdiv_map { i8 24, i8 13 }, %struct.pdiv_map { i8 32, i8 14 }, %struct.pdiv_map zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pllm_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 8, i8 0, i8 8, i8 20, i8 1, i8 8, i8 0, i8 27 }, [23 x i8] zeroinitializer }, align 32
@pll_m_freq_table = internal global { [6 x %struct.tegra_clk_pll_freq_table], [40 x i8] } { [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 800000000, i32 66, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 800000000, i32 61, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 800000000, i32 47, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 800000000, i32 41, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 800000000, i32 61, i32 2, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@pllu_p = internal constant { [3 x %struct.pdiv_map], [26 x i8] } { [3 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 1 }, %struct.pdiv_map { i8 2, i8 0 }, %struct.pdiv_map zeroinitializer], [26 x i8] zeroinitializer }, align 32
@pllu_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 10, i8 0, i8 5, i8 20, i8 1, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@pll_u_freq_table = internal global { [6 x %struct.tegra_clk_pll_freq_table], [40 x i8] } { [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 480000000, i32 960, i32 12, i8 2, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 480000000, i32 960, i32 13, i8 2, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 480000000, i32 400, i32 7, i8 2, i8 5, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 480000000, i32 200, i32 4, i8 2, i8 3, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 480000000, i32 960, i32 26, i8 2, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_u_lock\00", [21 x i8] zeroinitializer }, align 32
@plld_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 11, i8 0, i8 5, i8 20, i8 3, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@pll_d_freq_table = internal global { [15 x %struct.tegra_clk_pll_freq_table], [84 x i8] } { [15 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 216000000, i32 864, i32 12, i8 4, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 216000000, i32 864, i32 13, i8 4, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 216000000, i32 720, i32 14, i8 4, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 216000000, i32 720, i32 16, i8 4, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 216000000, i32 864, i32 26, i8 4, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 594000000, i32 594, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 594000000, i32 594, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 594000000, i32 495, i32 14, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 594000000, i32 495, i32 16, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 594000000, i32 594, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 1000000000, i32 1000, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1000000000, i32 1000, i32 13, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1000000000, i32 625, i32 12, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1000000000, i32 1000, i32 26, i8 1, i8 12, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [84 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_d_lock\00", [21 x i8] zeroinitializer }, align 32
@pllre_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 8, i8 0, i8 8, i8 16, i8 4, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pll_re_lock\00", [20 x i8] zeroinitializer }, align 32
@plle_p = internal constant { [16 x %struct.pdiv_map], [32 x i8] } { [16 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 0 }, %struct.pdiv_map { i8 2, i8 1 }, %struct.pdiv_map { i8 3, i8 2 }, %struct.pdiv_map { i8 4, i8 3 }, %struct.pdiv_map { i8 5, i8 4 }, %struct.pdiv_map { i8 6, i8 5 }, %struct.pdiv_map { i8 8, i8 6 }, %struct.pdiv_map { i8 10, i8 7 }, %struct.pdiv_map { i8 12, i8 8 }, %struct.pdiv_map { i8 16, i8 9 }, %struct.pdiv_map { i8 12, i8 10 }, %struct.pdiv_map { i8 16, i8 11 }, %struct.pdiv_map { i8 20, i8 12 }, %struct.pdiv_map { i8 24, i8 13 }, %struct.pdiv_map { i8 32, i8 14 }, %struct.pdiv_map { i8 1, i8 0 }], [32 x i8] zeroinitializer }, align 32
@plle_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 8, i8 0, i8 8, i8 24, i8 4, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@pll_e_freq_table = internal global { [5 x %struct.tegra_clk_pll_freq_table], [60 x i8] } { [5 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 336000000, i32 100000000, i32 100, i32 21, i8 16, i8 11, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 312000000, i32 100000000, i32 200, i32 26, i8 24, i8 13, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 100000000, i32 200, i32 1, i8 26, i8 13, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 12000000, i32 100000000, i32 200, i32 1, i8 24, i8 13, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [60 x i8] zeroinitializer }, align 32
@pll12g_ssd_esd_p = internal constant { [16 x %struct.pdiv_map], [32 x i8] } { [16 x %struct.pdiv_map] [%struct.pdiv_map { i8 1, i8 0 }, %struct.pdiv_map { i8 2, i8 1 }, %struct.pdiv_map { i8 3, i8 2 }, %struct.pdiv_map { i8 4, i8 3 }, %struct.pdiv_map { i8 5, i8 4 }, %struct.pdiv_map { i8 6, i8 5 }, %struct.pdiv_map { i8 8, i8 6 }, %struct.pdiv_map { i8 10, i8 7 }, %struct.pdiv_map { i8 12, i8 8 }, %struct.pdiv_map { i8 16, i8 9 }, %struct.pdiv_map { i8 12, i8 10 }, %struct.pdiv_map { i8 16, i8 11 }, %struct.pdiv_map { i8 20, i8 12 }, %struct.pdiv_map { i8 24, i8 13 }, %struct.pdiv_map { i8 32, i8 14 }, %struct.pdiv_map zeroinitializer], [32 x i8] zeroinitializer }, align 32
@pllss_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 8, i8 0, i8 8, i8 20, i8 4, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@pll_c4_freq_table = internal global { [6 x %struct.tegra_clk_pll_freq_table], [40 x i8] } { [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 600000000, i32 100, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 600000000, i32 92, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 600000000, i32 71, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 600000000, i32 62, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 600000000, i32 92, i32 2, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@pll_dp_freq_table = internal global { [6 x %struct.tegra_clk_pll_freq_table], [40 x i8] } { [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 600000000, i32 100, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 600000000, i32 92, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 600000000, i32 71, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 600000000, i32 62, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 600000000, i32 92, i32 2, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@tegra124_pll_d2_freq_table = internal global { [6 x %struct.tegra_clk_pll_freq_table], [40 x i8] } { [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 594000000, i32 99, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 594000000, i32 91, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 594000000, i32 71, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 594000000, i32 62, i32 1, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 594000000, i32 91, i32 2, i8 2, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"xusb_ss_div2\00", [19 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"xusb_ss_src\00", [20 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"dpaux\00", [26 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_p\00", [26 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pll_d_dsi_out\00", [18 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dsia\00", [27 x i8] zeroinitializer }, align 32
@periph_clk_enb_refcnt = external dso_local local_unnamed_addr global ptr, align 4
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dsib\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"mc\00", [29 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"emc\00", [28 x i8] zeroinitializer }, align 32
@emc_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.51, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cml0\00", [27 x i8] zeroinitializer }, align 32
@pll_e_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.52, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"cml1\00", [27 x i8] zeroinitializer }, align 32
@tegra124_periph = internal global { [2 x %struct.tegra_periph_init_data], [80 x i8] } { [2 x %struct.tegra_periph_init_data] [%struct.tegra_periph_init_data { ptr @.str.53, i32 224, %union.anon.41 { ptr @sor0_parents }, i32 7, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 7, i8 29, i8 0, ptr @sor0_lock }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 0, i8 0, i8 0, i8 0, ptr @sor0_lock }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 0, i32 182, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 1044, ptr null, ptr null, i32 0 }, %struct.tegra_periph_init_data { ptr @.str.54, i32 225, %union.anon.41 { ptr @sor0_out_parents }, i32 2, %struct.tegra_clk_periph { i32 0, %struct.clk_hw zeroinitializer, %struct.clk_mux { %struct.clk_hw zeroinitializer, ptr null, ptr null, i32 1, i8 14, i8 0, ptr @sor0_lock }, %struct.tegra_clk_frac_div { %struct.clk_hw zeroinitializer, ptr null, i8 0, i8 0, i8 0, i8 0, ptr @sor0_lock }, %struct.tegra_clk_periph_gate { i32 0, %struct.clk_hw zeroinitializer, ptr null, i8 32, i32 0, ptr null, ptr null }, ptr @clk_mux_ops, ptr @tegra_clk_frac_div_ops, ptr @tegra_clk_periph_gate_ops }, i32 1044, ptr null, ptr null, i32 0 }], [80 x i8] zeroinitializer }, align 32
@tegra124_periph_clk_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.2, i32 1075, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"\014clock %u not found\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra124_periph_clk_init\00", [39 x i8] zeroinitializer }, align 32
@tegra124_periph_clk_init._entry_ptr = internal global ptr @tegra124_periph_clk_init._entry, section ".printk_index", align 4
@pll_p_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 200000000, i32 700000000, i32 160, i32 172, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1089, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr @pllp_nmp, ptr @pll_p_freq_table, i32 408000000, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"emc_lock\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_e_lock\00", [21 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sor0\00", [27 x i8] zeroinitializer }, align 32
@sor0_parents = internal constant { [7 x ptr], [36 x i8] } { [7 x ptr] [ptr @.str.55, ptr @.str.56, ptr @.str.27, ptr @.str.57, ptr @.str.58, ptr @.str.34, ptr @.str.59], [36 x i8] zeroinitializer }, align 32
@sor0_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.60, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@clk_mux_ops = external dso_local constant %struct.clk_ops, align 4
@tegra_clk_frac_div_ops = external dso_local constant %struct.clk_ops, align 4
@tegra_clk_periph_gate_ops = external dso_local constant %struct.clk_ops, align 4
@.str.54 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sor0_out\00", [23 x i8] zeroinitializer }, align 32
@sor0_out_parents = internal constant { [2 x ptr], [24 x i8] } { [2 x ptr] [ptr @.str.59, ptr @.str.61], [24 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_m_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_a_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_c_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"clk_m\00", [26 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sor0_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sor0_pad_clkout\00", [16 x i8] zeroinitializer }, align 32
@pllp_nmp = internal global { %struct.div_nmp, [23 x i8] } { %struct.div_nmp { i8 8, i8 10, i8 0, i8 5, i8 20, i8 3, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@pll_p_freq_table = internal global { [6 x %struct.tegra_clk_pll_freq_table], [40 x i8] } { [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 408000000, i32 408, i32 12, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 408000000, i32 408, i32 13, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 408000000, i32 340, i32 14, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 408000000, i32 340, i32 16, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 408000000, i32 408, i32 26, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_a\00", [26 x i8] zeroinitializer }, align 32
@pll_a_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 2000000, i32 31000000, i32 1000000, i32 6000000, i32 200000000, i32 700000000, i32 176, i32 188, i32 0, i32 134217728, i32 18, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1027, i32 0, i32 0, i32 300, i32 0, i8 0, ptr null, ptr @pllp_nmp, ptr @pll_a_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out1\00", [21 x i8] zeroinitializer }, align 32
@pll_a_freq_table = internal global { [7 x %struct.tegra_clk_pll_freq_table], [52 x i8] } { [7 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 9600000, i32 282240000, i32 147, i32 5, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 9600000, i32 368640000, i32 192, i32 5, i8 1, i8 4, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 9600000, i32 240000000, i32 200, i32 8, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 282240000, i32 245, i32 25, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 368640000, i32 320, i32 25, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 28800000, i32 240000000, i32 200, i32 24, i8 1, i8 8, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [52 x i8] zeroinitializer }, align 32
@common_init_table = internal global [43 x %struct.tegra_clk_init_table] [%struct.tegra_clk_init_table { i32 6, i32 211, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 192, i32 211, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 55, i32 211, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 65, i32 211, i32 408000000, i32 0 }, %struct.tegra_clk_init_table { i32 216, i32 315, i32 282240000, i32 0 }, %struct.tegra_clk_init_table { i32 217, i32 315, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 30, i32 217, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 11, i32 217, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 18, i32 217, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 101, i32 217, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 102, i32 217, i32 11289600, i32 0 }, %struct.tegra_clk_init_table { i32 61, i32 208, i32 600000000, i32 0 }, %struct.tegra_clk_init_table { i32 28, i32 211, i32 136000000, i32 1 }, %struct.tegra_clk_init_table { i32 147, i32 211, i32 68000000, i32 0 }, %struct.tegra_clk_init_table { i32 148, i32 211, i32 68000000, i32 0 }, %struct.tegra_clk_init_table { i32 259, i32 213, i32 102000000, i32 0 }, %struct.tegra_clk_init_table { i32 265, i32 211, i32 51000000, i32 1 }, %struct.tegra_clk_init_table { i32 264, i32 211, i32 51000000, i32 1 }, %struct.tegra_clk_init_table { i32 205, i32 315, i32 768000000, i32 0 }, %struct.tegra_clk_init_table { i32 206, i32 315, i32 100000000, i32 0 }, %struct.tegra_clk_init_table { i32 68, i32 211, i32 12000000, i32 1 }, %struct.tegra_clk_init_table { i32 83, i32 208, i32 0, i32 0 }, %struct.tegra_clk_init_table { i32 91, i32 208, i32 0, i32 0 }, %struct.tegra_clk_init_table { i32 229, i32 315, i32 672000000, i32 0 }, %struct.tegra_clk_init_table { i32 255, i32 223, i32 120000000, i32 0 }, %struct.tegra_clk_init_table { i32 254, i32 225, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 258, i32 224, i32 60000000, i32 0 }, %struct.tegra_clk_init_table { i32 253, i32 230, i32 224000000, i32 0 }, %struct.tegra_clk_init_table { i32 252, i32 230, i32 112000000, i32 0 }, %struct.tegra_clk_init_table { i32 124, i32 211, i32 104000000, i32 0 }, %struct.tegra_clk_init_table { i32 123, i32 211, i32 204000000, i32 0 }, %struct.tegra_clk_init_table { i32 99, i32 315, i32 0, i32 1 }, %struct.tegra_clk_init_table { i32 73, i32 315, i32 0, i32 1 }, %struct.tegra_clk_init_table { i32 100, i32 201, i32 400000, i32 0 }, %struct.tegra_clk_init_table { i32 178, i32 208, i32 0, i32 0 }, %struct.tegra_clk_init_table { i32 232, i32 315, i32 24576000, i32 0 }, %struct.tegra_clk_init_table { i32 233, i32 315, i32 24576000, i32 0 }, %struct.tegra_clk_init_table { i32 234, i32 315, i32 24576000, i32 0 }, %struct.tegra_clk_init_table { i32 235, i32 315, i32 24576000, i32 0 }, %struct.tegra_clk_init_table { i32 236, i32 315, i32 24576000, i32 0 }, %struct.tegra_clk_init_table { i32 237, i32 315, i32 24576000, i32 0 }, %struct.tegra_clk_init_table { i32 238, i32 315, i32 24576000, i32 0 }, %struct.tegra_clk_init_table { i32 315, i32 315, i32 0, i32 0 }], section ".init.data", align 4
@tegra124_init_table = internal global [5 x %struct.tegra_clk_init_table] [%struct.tegra_clk_init_table { i32 78, i32 211, i32 51000000, i32 0 }, %struct.tegra_clk_init_table { i32 262, i32 315, i32 0, i32 1 }, %struct.tegra_clk_init_table { i32 125, i32 211, i32 102000000, i32 0 }, %struct.tegra_clk_init_table { i32 111, i32 211, i32 48000000, i32 0 }, %struct.tegra_clk_init_table { i32 315, i32 315, i32 0, i32 0 }], section ".init.data", align 4
@pll_x_params = internal global { %struct.tegra_clk_pll_params, [56 x i8] } { %struct.tegra_clk_pll_params { i32 12000000, i32 800000000, i32 12000000, i32 19200000, i32 700000000, i32 -1294967296, i32 224, i32 228, i32 0, i32 134217728, i32 18, i32 1304, i32 3, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1300, [6 x i32] zeroinitializer, i32 0, i32 0, i32 1025, i32 16, i32 24, i32 300, i32 6, i8 0, ptr @pllxc_p, ptr @pllxc_nmp, ptr @pll_x_freq_table, i32 0, i16 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [56 x i8] zeroinitializer }, align 32
@devclks = internal global [65 x %struct.tegra_devclk] [%struct.tegra_devclk { i32 201, ptr null, ptr @.str.59 }, %struct.tegra_devclk { i32 204, ptr null, ptr @.str.11 }, %struct.tegra_devclk { i32 200, ptr null, ptr @.str.64 }, %struct.tegra_devclk { i32 249, ptr null, ptr @.str.65 }, %struct.tegra_devclk { i32 202, ptr null, ptr @.str.66 }, %struct.tegra_devclk { i32 203, ptr null, ptr @.str.67 }, %struct.tegra_devclk { i32 205, ptr null, ptr @.str.10 }, %struct.tegra_devclk { i32 206, ptr null, ptr @.str.13 }, %struct.tegra_devclk { i32 207, ptr null, ptr @.str.15 }, %struct.tegra_devclk { i32 208, ptr null, ptr @.str.16 }, %struct.tegra_devclk { i32 211, ptr null, ptr @.str.41 }, %struct.tegra_devclk { i32 212, ptr null, ptr @.str.63 }, %struct.tegra_devclk { i32 213, ptr null, ptr @.str.68 }, %struct.tegra_devclk { i32 214, ptr null, ptr @.str.69 }, %struct.tegra_devclk { i32 215, ptr null, ptr @.str.70 }, %struct.tegra_devclk { i32 209, ptr null, ptr @.str.17 }, %struct.tegra_devclk { i32 210, ptr null, ptr @.str.19 }, %struct.tegra_devclk { i32 227, ptr null, ptr @.str.71 }, %struct.tegra_devclk { i32 228, ptr null, ptr @.str.72 }, %struct.tegra_devclk { i32 222, ptr null, ptr @.str.21 }, %struct.tegra_devclk { i32 223, ptr null, ptr @.str.22 }, %struct.tegra_devclk { i32 224, ptr null, ptr @.str.23 }, %struct.tegra_devclk { i32 225, ptr null, ptr @.str.24 }, %struct.tegra_devclk { i32 226, ptr null, ptr @.str.25 }, %struct.tegra_devclk { i32 218, ptr null, ptr @.str.26 }, %struct.tegra_devclk { i32 219, ptr null, ptr @.str.27 }, %struct.tegra_devclk { i32 220, ptr null, ptr @.str.33 }, %struct.tegra_devclk { i32 221, ptr null, ptr @.str.34 }, %struct.tegra_devclk { i32 216, ptr null, ptr @.str.62 }, %struct.tegra_devclk { i32 217, ptr null, ptr @.str.57 }, %struct.tegra_devclk { i32 229, ptr null, ptr @.str.28 }, %struct.tegra_devclk { i32 230, ptr null, ptr @.str.29 }, %struct.tegra_devclk { i32 232, ptr null, ptr @.str.73 }, %struct.tegra_devclk { i32 233, ptr null, ptr @.str.74 }, %struct.tegra_devclk { i32 234, ptr null, ptr @.str.75 }, %struct.tegra_devclk { i32 235, ptr null, ptr @.str.76 }, %struct.tegra_devclk { i32 236, ptr null, ptr @.str.77 }, %struct.tegra_devclk { i32 237, ptr null, ptr @.str.78 }, %struct.tegra_devclk { i32 238, ptr null, ptr @.str.79 }, %struct.tegra_devclk { i32 239, ptr null, ptr @.str.80 }, %struct.tegra_devclk { i32 240, ptr null, ptr @.str.81 }, %struct.tegra_devclk { i32 241, ptr null, ptr @.str.82 }, %struct.tegra_devclk { i32 242, ptr null, ptr @.str.83 }, %struct.tegra_devclk { i32 243, ptr null, ptr @.str.84 }, %struct.tegra_devclk { i32 244, ptr null, ptr @.str.85 }, %struct.tegra_devclk { i32 113, ptr null, ptr @.str.86 }, %struct.tegra_devclk { i32 114, ptr null, ptr @.str.87 }, %struct.tegra_devclk { i32 115, ptr null, ptr @.str.88 }, %struct.tegra_devclk { i32 116, ptr null, ptr @.str.89 }, %struct.tegra_devclk { i32 117, ptr null, ptr @.str.90 }, %struct.tegra_devclk { i32 118, ptr null, ptr @.str.91 }, %struct.tegra_devclk { i32 120, ptr null, ptr @.str.92 }, %struct.tegra_devclk { i32 121, ptr null, ptr @.str.93 }, %struct.tegra_devclk { i32 122, ptr null, ptr @.str.94 }, %struct.tegra_devclk { i32 262, ptr null, ptr @.str.95 }, %struct.tegra_devclk { i32 263, ptr null, ptr @.str.96 }, %struct.tegra_devclk { i32 259, ptr null, ptr @.str.97 }, %struct.tegra_devclk { i32 260, ptr null, ptr @.str.98 }, %struct.tegra_devclk { i32 261, ptr null, ptr @.str.99 }, %struct.tegra_devclk { i32 198, ptr null, ptr @.str.100 }, %struct.tegra_devclk { i32 4, ptr @.str.101, ptr null }, %struct.tegra_devclk { i32 5, ptr @.str.102, ptr null }, %struct.tegra_devclk { i32 125, ptr null, ptr @.str.103 }, %struct.tegra_devclk { i32 111, ptr null, ptr @.str.104 }, %struct.tegra_devclk { i32 128, ptr null, ptr @.str.105 }], section ".init.data", align 4
@tegra124_cpu_car_ops = internal global { %struct.tegra_cpu_car_ops, [32 x i8] } { %struct.tegra_cpu_car_ops { ptr @tegra124_wait_cpu_in_reset, ptr null, ptr null, ptr null, ptr @tegra124_disable_cpu_clock, ptr null, ptr @tegra124_cpu_clock_suspend, ptr @tegra124_cpu_clock_resume }, [32 x i8] zeroinitializer }, align 32
@tegra_cpu_car_ops = external dso_local local_unnamed_addr global ptr, align 4
@pll_x_freq_table = internal global { [6 x %struct.tegra_clk_pll_freq_table], [40 x i8] } { [6 x %struct.tegra_clk_pll_freq_table] [%struct.tegra_clk_pll_freq_table { i32 12000000, i32 1000000000, i32 83, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 13000000, i32 1000000000, i32 76, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 16800000, i32 1000000000, i32 59, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 19200000, i32 1000000000, i32 52, i32 1, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table { i32 26000000, i32 1000000000, i32 76, i32 2, i8 1, i8 0, i16 0 }, %struct.tegra_clk_pll_freq_table zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"clk_32k\00", [24 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"osc\00", [28 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"osc_div2\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"osc_div4\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out2\00", [21 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out3\00", [21 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_p_out4\00", [21 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"pll_x\00", [26 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pll_x_out0\00", [21 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"spdif_in_sync\00", [18 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s0_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s1_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s2_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s3_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"i2s4_sync\00", [22 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vimclk_sync\00", [20 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio0\00", [25 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio1\00", [25 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio2\00", [25 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio3\00", [25 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"audio4\00", [25 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"spdif\00", [26 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio0_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio1_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio2_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio3_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"audio4_2x\00", [22 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"spdif_2x\00", [23 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"extern1\00", [24 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"extern2\00", [24 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"extern3\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"cclk_g\00", [25 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"cclk_lp\00", [24 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sclk\00", [27 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"hclk\00", [27 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pclk\00", [27 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"fuse\00", [27 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rtc-tegra\00", [22 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"timer\00", [26 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"hda\00", [28 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"hda2codec_2x\00", [19 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"hda2hdmi\00", [23 x i8] zeroinitializer }, align 32
@tegra124_cpu_clk_sctx.0 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tegra124_cpu_clk_sctx.1 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tegra124_cpu_clk_sctx.2 = internal global { i32, [28 x i8] } zeroinitializer, align 32
@tegra132_init_table = internal global [2 x %struct.tegra_clk_init_table] [%struct.tegra_clk_init_table { i32 78, i32 211, i32 51000000, i32 1 }, %struct.tegra_clk_init_table { i32 315, i32 315, i32 0, i32 0 }], section ".init.data", align 4
@___asan_gen_.106 = private unnamed_addr constant [9 x i8] c"clk_base\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 119, i32 22 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1462, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1468, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant [9 x i8] c"pmc_base\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 120, i32 22 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1475, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant [5 x i8] c"clks\00", align 1
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1022, i32 21 }
@___asan_gen_.139 = private unnamed_addr constant [20 x i8] c"tegra124_input_freq\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 133, i32 22 }
@___asan_gen_.142 = private unnamed_addr constant [9 x i8] c"osc_freq\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 122, i32 22 }
@___asan_gen_.145 = private unnamed_addr constant [13 x i8] c"pll_ref_freq\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 123, i32 22 }
@___asan_gen_.148 = private unnamed_addr constant [20 x i8] c"tegra124_audio_plls\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1353, i32 36 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1092, i32 33 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1092, i32 42 }
@___asan_gen_.157 = private unnamed_addr constant [13 x i8] c"pll_c_params\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 215, i32 36 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1098, i32 35 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1101, i32 35 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1108, i32 40 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1114, i32 32 }
@___asan_gen_.172 = private unnamed_addr constant [14 x i8] c"pll_c2_params\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 269, i32 36 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1120, i32 32 }
@___asan_gen_.178 = private unnamed_addr constant [14 x i8] c"pll_c3_params\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 291, i32 36 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1126, i32 32 }
@___asan_gen_.184 = private unnamed_addr constant [13 x i8] c"pll_m_params\00", align 1
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 413, i32 36 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1132, i32 35 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1135, i32 35 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1142, i32 40 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1148, i32 41 }
@___asan_gen_.199 = private unnamed_addr constant [13 x i8] c"pll_u_params\00", align 1
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 728, i32 36 }
@___asan_gen_.202 = private unnamed_addr constant [11 x i8] c"pll_u_lock\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1154, i32 32 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1161, i32 40 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1167, i32 40 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1173, i32 40 }
@___asan_gen_.219 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1179, i32 31 }
@___asan_gen_.220 = private unnamed_addr constant [13 x i8] c"pll_d_params\00", align 1
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 620, i32 36 }
@___asan_gen_.223 = private unnamed_addr constant [11 x i8] c"pll_d_lock\00", align 1
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1185, i32 40 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1191, i32 33 }
@___asan_gen_.232 = private unnamed_addr constant [18 x i8] c"pll_re_vco_params\00", align 1
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 509, i32 36 }
@___asan_gen_.235 = private unnamed_addr constant [12 x i8] c"pll_re_lock\00", align 1
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1196, i32 41 }
@___asan_gen_.241 = private unnamed_addr constant [17 x i8] c"pll_re_div_table\00", align 1
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 490, i32 35 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1203, i32 41 }
@___asan_gen_.247 = private unnamed_addr constant [13 x i8] c"pll_e_params\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 470, i32 36 }
@___asan_gen_.252 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1209, i32 33 }
@___asan_gen_.253 = private unnamed_addr constant [14 x i8] c"pll_c4_params\00", align 1
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 350, i32 36 }
@___asan_gen_.258 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1215, i32 33 }
@___asan_gen_.259 = private unnamed_addr constant [14 x i8] c"pll_dp_params\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 680, i32 36 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1221, i32 33 }
@___asan_gen_.265 = private unnamed_addr constant [23 x i8] c"tegra124_pll_d2_params\00", align 1
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 647, i32 36 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1227, i32 40 }
@___asan_gen_.271 = private unnamed_addr constant [8 x i8] c"pllxc_p\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 152, i32 30 }
@___asan_gen_.274 = private unnamed_addr constant [10 x i8] c"pllxc_nmp\00", align 1
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 143, i32 23 }
@___asan_gen_.277 = private unnamed_addr constant [17 x i8] c"pll_c_freq_table\00", align 1
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 205, i32 40 }
@___asan_gen_.280 = private unnamed_addr constant [7 x i8] c"pllc_p\00", align 1
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 248, i32 30 }
@___asan_gen_.283 = private unnamed_addr constant [10 x i8] c"pllcx_nmp\00", align 1
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 239, i32 23 }
@___asan_gen_.286 = private unnamed_addr constant [18 x i8] c"pll_cx_freq_table\00", align 1
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 260, i32 40 }
@___asan_gen_.289 = private unnamed_addr constant [7 x i8] c"pllm_p\00", align 1
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 373, i32 30 }
@___asan_gen_.292 = private unnamed_addr constant [9 x i8] c"pllm_nmp\00", align 1
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 401, i32 23 }
@___asan_gen_.295 = private unnamed_addr constant [17 x i8] c"pll_m_freq_table\00", align 1
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 392, i32 40 }
@___asan_gen_.298 = private unnamed_addr constant [7 x i8] c"pllu_p\00", align 1
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 704, i32 30 }
@___asan_gen_.301 = private unnamed_addr constant [9 x i8] c"pllu_nmp\00", align 1
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 710, i32 23 }
@___asan_gen_.304 = private unnamed_addr constant [17 x i8] c"pll_u_freq_table\00", align 1
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 719, i32 40 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 128, i32 8 }
@___asan_gen_.310 = private unnamed_addr constant [9 x i8] c"plld_nmp\00", align 1
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 593, i32 23 }
@___asan_gen_.313 = private unnamed_addr constant [17 x i8] c"pll_d_freq_table\00", align 1
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 602, i32 40 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 125, i32 8 }
@___asan_gen_.319 = private unnamed_addr constant [10 x i8] c"pllre_nmp\00", align 1
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 500, i32 23 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 127, i32 8 }
@___asan_gen_.325 = private unnamed_addr constant [7 x i8] c"plle_p\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 442, i32 30 }
@___asan_gen_.328 = private unnamed_addr constant [9 x i8] c"plle_nmp\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 461, i32 23 }
@___asan_gen_.331 = private unnamed_addr constant [17 x i8] c"pll_e_freq_table\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 433, i32 40 }
@___asan_gen_.334 = private unnamed_addr constant [17 x i8] c"pll12g_ssd_esd_p\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 322, i32 30 }
@___asan_gen_.337 = private unnamed_addr constant [10 x i8] c"pllss_nmp\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 313, i32 23 }
@___asan_gen_.340 = private unnamed_addr constant [18 x i8] c"pll_c4_freq_table\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 341, i32 40 }
@___asan_gen_.343 = private unnamed_addr constant [18 x i8] c"pll_dp_freq_table\00", align 1
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 671, i32 40 }
@___asan_gen_.346 = private unnamed_addr constant [27 x i8] c"tegra124_pll_d2_freq_table\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 638, i32 40 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1031, i32 40 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1031, i32 56 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1035, i32 40 }
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1035, i32 49 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1039, i32 32 }
@___asan_gen_.366 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1043, i32 39 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1048, i32 39 }
@___asan_gen_.372 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1053, i32 30 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1053, i32 36 }
@___asan_gen_.376 = private unnamed_addr constant [9 x i8] c"emc_lock\00", align 1
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1058, i32 32 }
@___asan_gen_.382 = private unnamed_addr constant [11 x i8] c"pll_e_lock\00", align 1
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1064, i32 32 }
@___asan_gen_.388 = private unnamed_addr constant [16 x i8] c"tegra124_periph\00", align 1
@___asan_gen_.390 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1011, i32 38 }
@___asan_gen_.391 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1075, i32 4 }
@___asan_gen_.400 = private unnamed_addr constant [13 x i8] c"pll_p_params\00", align 1
@___asan_gen_.402 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 546, i32 36 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 129, i32 8 }
@___asan_gen_.408 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 126, i32 8 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1012, i32 2 }
@___asan_gen_.412 = private unnamed_addr constant [13 x i8] c"sor0_parents\00", align 1
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1002, i32 27 }
@___asan_gen_.415 = private unnamed_addr constant [10 x i8] c"sor0_lock\00", align 1
@___asan_gen_.420 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1016, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant [17 x i8] c"sor0_out_parents\00", align 1
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1007, i32 27 }
@___asan_gen_.426 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1003, i32 2 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1003, i32 16 }
@___asan_gen_.432 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1003, i32 44 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1003, i32 58 }
@___asan_gen_.438 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1004, i32 17 }
@___asan_gen_.441 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 130, i32 8 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1008, i32 11 }
@___asan_gen_.445 = private unnamed_addr constant [9 x i8] c"pllp_nmp\00", align 1
@___asan_gen_.447 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 528, i32 23 }
@___asan_gen_.448 = private unnamed_addr constant [17 x i8] c"pll_p_freq_table\00", align 1
@___asan_gen_.450 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 537, i32 40 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1354, i32 4 }
@___asan_gen_.454 = private unnamed_addr constant [13 x i8] c"pll_a_params\00", align 1
@___asan_gen_.456 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 575, i32 36 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1354, i32 45 }
@___asan_gen_.460 = private unnamed_addr constant [17 x i8] c"pll_a_freq_table\00", align 1
@___asan_gen_.462 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 565, i32 40 }
@___asan_gen_.463 = private unnamed_addr constant [13 x i8] c"pll_x_params\00", align 1
@___asan_gen_.465 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 181, i32 36 }
@___asan_gen_.466 = private unnamed_addr constant [21 x i8] c"tegra124_cpu_car_ops\00", align 1
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 1276, i32 33 }
@___asan_gen_.469 = private unnamed_addr constant [17 x i8] c"pll_x_freq_table\00", align 1
@___asan_gen_.471 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 171, i32 40 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 937, i32 14 }
@___asan_gen_.477 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 938, i32 14 }
@___asan_gen_.480 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 939, i32 14 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 940, i32 14 }
@___asan_gen_.486 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 947, i32 14 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 948, i32 14 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 949, i32 14 }
@___asan_gen_.495 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 952, i32 14 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 953, i32 14 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 967, i32 14 }
@___asan_gen_.504 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 968, i32 14 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 969, i32 14 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 970, i32 14 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 971, i32 14 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 972, i32 14 }
@___asan_gen_.519 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 973, i32 14 }
@___asan_gen_.522 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 974, i32 14 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 975, i32 14 }
@___asan_gen_.528 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 976, i32 14 }
@___asan_gen_.531 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 977, i32 14 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 978, i32 14 }
@___asan_gen_.537 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 979, i32 14 }
@___asan_gen_.540 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 980, i32 14 }
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 981, i32 14 }
@___asan_gen_.546 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 982, i32 14 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 983, i32 14 }
@___asan_gen_.552 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 984, i32 14 }
@___asan_gen_.555 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 985, i32 14 }
@___asan_gen_.558 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 986, i32 14 }
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 987, i32 14 }
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 988, i32 14 }
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 989, i32 14 }
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 990, i32 14 }
@___asan_gen_.573 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 991, i32 14 }
@___asan_gen_.576 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 992, i32 14 }
@___asan_gen_.579 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 993, i32 14 }
@___asan_gen_.582 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 994, i32 14 }
@___asan_gen_.585 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 995, i32 14 }
@___asan_gen_.588 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 996, i32 14 }
@___asan_gen_.591 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 997, i32 14 }
@___asan_gen_.594 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 998, i32 14 }
@___asan_gen_.595 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.596 = private constant [36 x i8] c"../drivers/clk/tegra/clk-tegra124.c\00", align 1
@___asan_gen_.597 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.596, i32 999, i32 14 }
@___asan_gen_.598 = private unnamed_addr constant [24 x i8] c"tegra124_cpu_clk_sctx.0\00", align 1
@___asan_gen_.599 = private unnamed_addr constant [24 x i8] c"tegra124_cpu_clk_sctx.1\00", align 1
@___asan_gen_.600 = private unnamed_addr constant [24 x i8] c"tegra124_cpu_clk_sctx.2\00", align 1
@llvm.compiler.used = appending global [173 x ptr] [ptr @__of_table_tegra124, ptr @__of_table_tegra132, ptr @tegra124_132_clock_init_pre._entry, ptr @tegra124_132_clock_init_pre._entry.3, ptr @tegra124_132_clock_init_pre._entry.6, ptr @tegra124_132_clock_init_pre._entry_ptr, ptr @tegra124_132_clock_init_pre._entry_ptr.5, ptr @tegra124_132_clock_init_pre._entry_ptr.8, ptr @tegra124_periph_clk_init._entry, ptr @tegra124_periph_clk_init._entry_ptr, ptr @clk_base, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @pmc_base, ptr @.str.7, ptr @clks, ptr @tegra124_input_freq, ptr @osc_freq, ptr @pll_ref_freq, ptr @tegra124_audio_plls, ptr @.str.10, ptr @.str.11, ptr @pll_c_params, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @pll_c2_params, ptr @.str.16, ptr @pll_c3_params, ptr @.str.17, ptr @pll_m_params, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @pll_u_params, ptr @pll_u_lock, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pll_d_params, ptr @pll_d_lock, ptr @.str.27, ptr @.str.28, ptr @pll_re_vco_params, ptr @pll_re_lock, ptr @.str.29, ptr @pll_re_div_table, ptr @.str.30, ptr @pll_e_params, ptr @.str.31, ptr @pll_c4_params, ptr @.str.32, ptr @pll_dp_params, ptr @.str.33, ptr @tegra124_pll_d2_params, ptr @.str.34, ptr @pllxc_p, ptr @pllxc_nmp, ptr @pll_c_freq_table, ptr @pllc_p, ptr @pllcx_nmp, ptr @pll_cx_freq_table, ptr @pllm_p, ptr @pllm_nmp, ptr @pll_m_freq_table, ptr @pllu_p, ptr @pllu_nmp, ptr @pll_u_freq_table, ptr @.str.35, ptr @plld_nmp, ptr @pll_d_freq_table, ptr @.str.36, ptr @pllre_nmp, ptr @.str.37, ptr @plle_p, ptr @plle_nmp, ptr @pll_e_freq_table, ptr @pll12g_ssd_esd_p, ptr @pllss_nmp, ptr @pll_c4_freq_table, ptr @pll_dp_freq_table, ptr @tegra124_pll_d2_freq_table, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @emc_lock, ptr @.str.47, ptr @pll_e_lock, ptr @.str.48, ptr @tegra124_periph, ptr @.str.49, ptr @.str.50, ptr @pll_p_params, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @sor0_parents, ptr @sor0_lock, ptr @.str.54, ptr @sor0_out_parents, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @pllp_nmp, ptr @pll_p_freq_table, ptr @.str.62, ptr @pll_a_params, ptr @.str.63, ptr @pll_a_freq_table, ptr @pll_x_params, ptr @tegra124_cpu_car_ops, ptr @pll_x_freq_table, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @tegra124_cpu_clk_sctx.0, ptr @tegra124_cpu_clk_sctx.1, ptr @tegra124_cpu_clk_sctx.2], section "llvm.metadata"
@0 = internal global [167 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_132_clock_init_pre._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_132_clock_init_pre._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pmc_base to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_132_clock_init_pre._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clks to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_input_freq to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @osc_freq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_ref_freq to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_audio_plls to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_c_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_c2_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_c3_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_m_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_u_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_u_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_d_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_d_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_re_vco_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_re_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_re_div_table to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_e_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.252 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_c4_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_dp_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_pll_d2_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllxc_p to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllxc_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_c_freq_table to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllc_p to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllcx_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_cx_freq_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllm_p to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllm_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_m_freq_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllu_p to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllu_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_u_freq_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plld_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_d_freq_table to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllre_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plle_p to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @plle_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_e_freq_table to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll12g_ssd_esd_p to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllss_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_c4_freq_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_dp_freq_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_pll_d2_freq_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.366 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.372 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @emc_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_e_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_periph to i32), i32 304, i32 384, i32 ptrtoint (ptr @___asan_gen_.388 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.390 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_periph_clk_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_p_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.402 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.408 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sor0_parents to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sor0_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.420 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sor0_out_parents to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.426 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.432 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.438 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.441 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pllp_nmp to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.447 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_p_freq_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.450 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_a_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.454 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.456 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_a_freq_table to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.460 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.462 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_x_params to i32), i32 200, i32 256, i32 ptrtoint (ptr @___asan_gen_.463 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.465 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_cpu_car_ops to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll_x_freq_table to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.471 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.477 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.480 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.486 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.495 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.504 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.519 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.522 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.528 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.531 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.537 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.540 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.546 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.552 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.555 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.558 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.573 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.576 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.579 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.582 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.585 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.588 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.591 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.594 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.595 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.597 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_cpu_clk_sctx.0 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_cpu_clk_sctx.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra124_cpu_clk_sctx.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.600 to i32), i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra124_clock_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @tegra124_132_clock_init_pre(ptr noundef %np) #9
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tegra_clk_apply_init_table to i32))
  store ptr @tegra124_clock_apply_init_table, ptr @tegra_clk_apply_init_table, align 4
  tail call fastcc void @tegra124_132_clock_init_post(ptr noundef %np) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra132_clock_init(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @tegra124_132_clock_init_pre(ptr noundef %np) #9
  store i8 0, ptr getelementptr inbounds (<{ [297 x %struct.tegra_clk], [16 x %struct.tegra_clk] }>, ptr @tegra124_clks, i32 0, i32 0, i32 28, i32 1), align 4
  store i8 0, ptr getelementptr inbounds (<{ [297 x %struct.tegra_clk], [16 x %struct.tegra_clk] }>, ptr @tegra124_clks, i32 0, i32 0, i32 29, i32 1), align 4
  store i8 0, ptr getelementptr inbounds (<{ [297 x %struct.tegra_clk], [16 x %struct.tegra_clk] }>, ptr @tegra124_clks, i32 0, i32 0, i32 182, i32 1), align 4
  store i8 0, ptr getelementptr inbounds (<{ [297 x %struct.tegra_clk], [16 x %struct.tegra_clk] }>, ptr @tegra124_clks, i32 0, i32 0, i32 183, i32 1), align 4
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tegra_clk_apply_init_table to i32))
  store ptr @tegra132_clock_apply_init_table, ptr @tegra_clk_apply_init_table, align 4
  tail call fastcc void @tegra124_132_clock_init_post(ptr noundef %np) #9
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra124_132_clock_init_pre(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %np, i32 noundef 0) #6
  store ptr %call, ptr @clk_base, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @of_find_matching_node_and_match(ptr noundef null, ptr noundef nonnull @pmc_match, ptr noundef null) #6
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %do.end7, label %if.end31

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1469, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end31:                                         ; preds = %if.end
  %call32 = tail call ptr @of_iomap(ptr noundef nonnull %call.i, i32 noundef 0) #6
  store ptr %call32, ptr @pmc_base, align 4
  %tobool33.not = icmp eq ptr %call32, null
  br i1 %tobool33.not, label %do.end37, label %if.end66

do.end37:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #8
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1476, i32 noundef 9, ptr noundef null) #6
  br label %cleanup

if.end66:                                         ; preds = %if.end31
  %0 = load ptr, ptr @clk_base, align 4
  %call67 = tail call ptr @tegra_clk_init(ptr noundef %0, i32 noundef 315, i32 noundef 6) #6
  store ptr %call67, ptr @clks, align 4
  %tobool68.not = icmp eq ptr %call67, null
  br i1 %tobool68.not, label %if.end66.cleanup_crit_edge, label %if.end70

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end70:                                         ; preds = %if.end66
  %1 = load ptr, ptr @clk_base, align 4
  %call71 = tail call i32 @tegra_osc_clk_init(ptr noundef %1, ptr noundef nonnull @tegra124_clks, ptr noundef nonnull @tegra124_input_freq, i32 noundef 13, i32 noundef 1, ptr noundef nonnull @osc_freq, ptr noundef nonnull @pll_ref_freq) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call71)
  %cmp = icmp slt i32 %call71, 0
  br i1 %cmp, label %if.end70.cleanup_crit_edge, label %if.end73

if.end70.cleanup_crit_edge:                       ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end73:                                         ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tegra_fixed_clk_init(ptr noundef nonnull @tegra124_clks) #6
  %2 = load ptr, ptr @clk_base, align 4
  %3 = load ptr, ptr @pmc_base, align 4
  tail call fastcc void @tegra124_pll_init(ptr noundef %2, ptr noundef %3) #9
  %4 = load ptr, ptr @clk_base, align 4
  %5 = load ptr, ptr @pmc_base, align 4
  tail call fastcc void @tegra124_periph_clk_init(ptr noundef %4, ptr noundef %5) #9
  %6 = load ptr, ptr @clk_base, align 4
  %7 = load ptr, ptr @pmc_base, align 4
  tail call void @tegra_audio_clk_init(ptr noundef %6, ptr noundef %7, ptr noundef nonnull @tegra124_clks, ptr noundef nonnull @tegra124_audio_plls, i32 noundef 1, i32 noundef 24576000) #6
  %8 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 208
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !346
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !347
  %10 = and i32 %9, -3
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !348
  tail call void @arm_heavy_mb() #6
  %11 = load ptr, ptr @clk_base, align 4
  %add.ptr80 = getelementptr i8, ptr %11, i32 208
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr80, i32 %10) #6, !srcloc !349
  br label %cleanup

cleanup:                                          ; preds = %if.end73, %if.end70.cleanup_crit_edge, %if.end66.cleanup_crit_edge, %do.end37, %do.end7, %do.end
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra124_clock_apply_init_table() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clks, align 4
  tail call void @tegra_init_from_table(ptr noundef nonnull @common_init_table, ptr noundef %0, i32 noundef 315) #6
  %1 = load ptr, ptr @clks, align 4
  tail call void @tegra_init_from_table(ptr noundef nonnull @tegra124_init_table, ptr noundef %1, i32 noundef 315) #6
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra124_132_clock_init_post(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %1 = load ptr, ptr @pmc_base, align 4
  tail call void @tegra_super_clk_gen4_init(ptr noundef %0, ptr noundef %1, ptr noundef nonnull @tegra124_clks, ptr noundef nonnull @pll_x_params) #6
  tail call void @tegra_init_special_resets(i32 noundef 1, ptr noundef nonnull @tegra124_reset_assert, ptr noundef nonnull @tegra124_reset_deassert) #6
  tail call void @tegra_add_of_provider(ptr noundef %np, ptr noundef nonnull @tegra124_clk_src_onecell_get) #6
  %2 = load ptr, ptr @clk_base, align 4
  %call = tail call ptr @tegra124_clk_register_emc(ptr noundef %2, ptr noundef %np, ptr noundef nonnull @emc_lock) #6
  %3 = load ptr, ptr @clks, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 57
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %arrayidx, align 4
  tail call void @tegra_register_devclks(ptr noundef nonnull @devclks, i32 noundef 65) #6
  call void @__asan_store4_noabort(i32 ptrtoint (ptr @tegra_cpu_car_ops to i32))
  store ptr @tegra124_cpu_car_ops, ptr @tegra_cpu_car_ops, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @tegra_osc_clk_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_fixed_clk_init(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra124_pll_init(ptr noundef %clk_base, ptr noundef %pmc) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @tegra_clk_register_pllxc(ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.11, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef 0, ptr noundef nonnull @pll_c_params, ptr noundef null) #6
  %call1 = tail call i32 @clk_register_clkdev(ptr noundef %call, ptr noundef nonnull @.str.10, ptr noundef null) #6
  %0 = load ptr, ptr @clks, align 4
  %arrayidx = getelementptr ptr, ptr %0, i32 205
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %clk_base, i32 132
  %call2 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.10, ptr noundef %add.ptr, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #6
  %call4 = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, ptr noundef %add.ptr, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 4, i8 noundef zeroext 0, ptr noundef null) #6
  %call5 = tail call i32 @clk_register_clkdev(ptr noundef %call4, ptr noundef nonnull @.str.13, ptr noundef null) #6
  %2 = load ptr, ptr @clks, align 4
  %arrayidx6 = getelementptr ptr, ptr %2, i32 206
  %3 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call4, ptr %arrayidx6, align 4
  %call7 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.10, i32 noundef 4, i32 noundef 1, i32 noundef 1) #6
  %call8 = tail call i32 @clk_register_clkdev(ptr noundef %call7, ptr noundef nonnull @.str.14, ptr noundef null) #6
  %4 = load ptr, ptr @clks, align 4
  %arrayidx9 = getelementptr ptr, ptr %4, i32 314
  %5 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7, ptr %arrayidx9, align 4
  %call10 = tail call ptr @tegra_clk_register_pllc(ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.11, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef 0, ptr noundef nonnull @pll_c2_params, ptr noundef null) #6
  %call11 = tail call i32 @clk_register_clkdev(ptr noundef %call10, ptr noundef nonnull @.str.15, ptr noundef null) #6
  %6 = load ptr, ptr @clks, align 4
  %arrayidx12 = getelementptr ptr, ptr %6, i32 207
  %7 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call10, ptr %arrayidx12, align 4
  %call13 = tail call ptr @tegra_clk_register_pllc(ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.11, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef 0, ptr noundef nonnull @pll_c3_params, ptr noundef null) #6
  %call14 = tail call i32 @clk_register_clkdev(ptr noundef %call13, ptr noundef nonnull @.str.16, ptr noundef null) #6
  %8 = load ptr, ptr @clks, align 4
  %arrayidx15 = getelementptr ptr, ptr %8, i32 208
  %9 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call13, ptr %arrayidx15, align 4
  %call16 = tail call ptr @tegra_clk_register_pllm(ptr noundef nonnull @.str.17, ptr noundef nonnull @.str.11, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef 1, ptr noundef nonnull @pll_m_params, ptr noundef null) #6
  %call17 = tail call i32 @clk_register_clkdev(ptr noundef %call16, ptr noundef nonnull @.str.17, ptr noundef null) #6
  %10 = load ptr, ptr @clks, align 4
  %arrayidx18 = getelementptr ptr, ptr %10, i32 209
  %11 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call16, ptr %arrayidx18, align 4
  %add.ptr19 = getelementptr i8, ptr %clk_base, i32 148
  %call20 = tail call ptr @tegra_clk_register_divider(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef %add.ptr19, i32 noundef 0, i8 noundef zeroext 1, i8 noundef zeroext 8, i8 noundef zeroext 8, i8 noundef zeroext 1, ptr noundef null) #6
  %call22 = tail call ptr @tegra_clk_register_pll_out(ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.18, ptr noundef %add.ptr19, i8 noundef zeroext 1, i8 noundef zeroext 0, i32 noundef 4, i8 noundef zeroext 0, ptr noundef null) #6
  %call23 = tail call i32 @clk_register_clkdev(ptr noundef %call22, ptr noundef nonnull @.str.19, ptr noundef null) #6
  %12 = load ptr, ptr @clks, align 4
  %arrayidx24 = getelementptr ptr, ptr %12, i32 210
  %13 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call22, ptr %arrayidx24, align 4
  %call25 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.17, i32 noundef 4, i32 noundef 1, i32 noundef 1) #6
  %call26 = tail call i32 @clk_register_clkdev(ptr noundef %call25, ptr noundef nonnull @.str.20, ptr noundef null) #6
  %14 = load ptr, ptr @clks, align 4
  %arrayidx27 = getelementptr ptr, ptr %14, i32 313
  %15 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call25, ptr %arrayidx27, align 4
  %call28 = tail call ptr @tegra_clk_register_pllu_tegra114(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.11, ptr noundef %clk_base, i32 noundef 0, ptr noundef nonnull @pll_u_params, ptr noundef nonnull @pll_u_lock) #6
  %call29 = tail call i32 @clk_register_clkdev(ptr noundef %call28, ptr noundef nonnull @.str.21, ptr noundef null) #6
  %16 = load ptr, ptr @clks, align 4
  %arrayidx30 = getelementptr ptr, ptr %16, i32 222
  %17 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call28, ptr %arrayidx30, align 4
  %add.ptr31 = getelementptr i8, ptr %clk_base, i32 192
  %call32 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.22, ptr noundef nonnull @.str.21, i32 noundef 4, ptr noundef %add.ptr31, i8 noundef zeroext 22, i8 noundef zeroext 0, ptr noundef nonnull @pll_u_lock) #6
  %call33 = tail call i32 @clk_register_clkdev(ptr noundef %call32, ptr noundef nonnull @.str.22, ptr noundef null) #6
  %18 = load ptr, ptr @clks, align 4
  %arrayidx34 = getelementptr ptr, ptr %18, i32 223
  %19 = ptrtoint ptr %arrayidx34 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call32, ptr %arrayidx34, align 4
  %call35 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.21, i32 noundef 4, i32 noundef 1, i32 noundef 8) #6
  %call36 = tail call i32 @clk_register_clkdev(ptr noundef %call35, ptr noundef nonnull @.str.23, ptr noundef null) #6
  %20 = load ptr, ptr @clks, align 4
  %arrayidx37 = getelementptr ptr, ptr %20, i32 224
  %21 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call35, ptr %arrayidx37, align 4
  %call38 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.21, i32 noundef 4, i32 noundef 1, i32 noundef 10) #6
  %call39 = tail call i32 @clk_register_clkdev(ptr noundef %call38, ptr noundef nonnull @.str.24, ptr noundef null) #6
  %22 = load ptr, ptr @clks, align 4
  %arrayidx40 = getelementptr ptr, ptr %22, i32 225
  %23 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call38, ptr %arrayidx40, align 4
  %call41 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.21, i32 noundef 4, i32 noundef 1, i32 noundef 40) #6
  %call42 = tail call i32 @clk_register_clkdev(ptr noundef %call41, ptr noundef nonnull @.str.25, ptr noundef null) #6
  %24 = load ptr, ptr @clks, align 4
  %arrayidx43 = getelementptr ptr, ptr %24, i32 226
  %25 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call41, ptr %arrayidx43, align 4
  %call44 = tail call ptr @tegra_clk_register_pll(ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.11, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef 0, ptr noundef nonnull @pll_d_params, ptr noundef nonnull @pll_d_lock) #6
  %call45 = tail call i32 @clk_register_clkdev(ptr noundef %call44, ptr noundef nonnull @.str.26, ptr noundef null) #6
  %26 = load ptr, ptr @clks, align 4
  %arrayidx46 = getelementptr ptr, ptr %26, i32 218
  %27 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call44, ptr %arrayidx46, align 4
  %call47 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef 4, i32 noundef 1, i32 noundef 2) #6
  %call48 = tail call i32 @clk_register_clkdev(ptr noundef %call47, ptr noundef nonnull @.str.27, ptr noundef null) #6
  %28 = load ptr, ptr @clks, align 4
  %arrayidx49 = getelementptr ptr, ptr %28, i32 219
  %29 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call47, ptr %arrayidx49, align 4
  %30 = load i32, ptr @pll_ref_freq, align 4
  %call50 = tail call ptr @tegra_clk_register_pllre(ptr noundef nonnull @.str.28, ptr noundef nonnull @.str.11, ptr noundef %clk_base, ptr noundef %pmc, i32 noundef 0, ptr noundef nonnull @pll_re_vco_params, ptr noundef nonnull @pll_re_lock, i32 noundef %30) #6
  %call51 = tail call i32 @clk_register_clkdev(ptr noundef %call50, ptr noundef nonnull @.str.28, ptr noundef null) #6
  %31 = load ptr, ptr @clks, align 4
  %arrayidx52 = getelementptr ptr, ptr %31, i32 229
  %32 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call50, ptr %arrayidx52, align 4
  %add.ptr53 = getelementptr i8, ptr %clk_base, i32 1220
  %call54 = tail call ptr @clk_register_divider_table(ptr noundef null, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef 0, ptr noundef %add.ptr53, i8 noundef zeroext 16, i8 noundef zeroext 4, i8 noundef zeroext 0, ptr noundef nonnull @pll_re_div_table, ptr noundef nonnull @pll_re_lock) #6
  %call55 = tail call i32 @clk_register_clkdev(ptr noundef %call54, ptr noundef nonnull @.str.29, ptr noundef null) #6
  %33 = load ptr, ptr @clks, align 4
  %arrayidx56 = getelementptr ptr, ptr %33, i32 230
  %34 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call54, ptr %arrayidx56, align 4
  %call57 = tail call ptr @tegra_clk_register_plle_tegra114(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.11, ptr noundef %clk_base, i32 noundef 0, ptr noundef nonnull @pll_e_params, ptr noundef null) #6
  %call58 = tail call i32 @clk_register_clkdev(ptr noundef %call57, ptr noundef nonnull @.str.30, ptr noundef null) #6
  %35 = load ptr, ptr @clks, align 4
  %arrayidx59 = getelementptr ptr, ptr %35, i32 231
  %36 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call57, ptr %arrayidx59, align 4
  %call60 = tail call ptr @tegra_clk_register_pllss(ptr noundef nonnull @.str.31, ptr noundef nonnull @.str.11, ptr noundef %clk_base, i32 noundef 0, ptr noundef nonnull @pll_c4_params, ptr noundef null) #6
  %call61 = tail call i32 @clk_register_clkdev(ptr noundef %call60, ptr noundef nonnull @.str.31, ptr noundef null) #6
  %37 = load ptr, ptr @clks, align 4
  %arrayidx62 = getelementptr ptr, ptr %37, i32 270
  %38 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call60, ptr %arrayidx62, align 4
  %call63 = tail call ptr @tegra_clk_register_pllss(ptr noundef nonnull @.str.32, ptr noundef nonnull @.str.11, ptr noundef %clk_base, i32 noundef 0, ptr noundef nonnull @pll_dp_params, ptr noundef null) #6
  %call64 = tail call i32 @clk_register_clkdev(ptr noundef %call63, ptr noundef nonnull @.str.32, ptr noundef null) #6
  %39 = load ptr, ptr @clks, align 4
  %arrayidx65 = getelementptr ptr, ptr %39, i32 271
  %40 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call63, ptr %arrayidx65, align 4
  %call66 = tail call ptr @tegra_clk_register_pllss(ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.11, ptr noundef %clk_base, i32 noundef 0, ptr noundef nonnull @tegra124_pll_d2_params, ptr noundef null) #6
  %call67 = tail call i32 @clk_register_clkdev(ptr noundef %call66, ptr noundef nonnull @.str.33, ptr noundef null) #6
  %41 = load ptr, ptr @clks, align 4
  %arrayidx68 = getelementptr ptr, ptr %41, i32 220
  %42 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call66, ptr %arrayidx68, align 4
  %call69 = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef 4, i32 noundef 1, i32 noundef 1) #6
  %call70 = tail call i32 @clk_register_clkdev(ptr noundef %call69, ptr noundef nonnull @.str.34, ptr noundef null) #6
  %43 = load ptr, ptr @clks, align 4
  %arrayidx71 = getelementptr ptr, ptr %43, i32 221
  %44 = ptrtoint ptr %arrayidx71 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call69, ptr %arrayidx71, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tegra124_periph_clk_init(ptr noundef %clk_base, ptr noundef %pmc_base) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @clk_register_fixed_factor(ptr noundef null, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39, i32 noundef 0, i32 noundef 1, i32 noundef 2) #6
  %0 = load ptr, ptr @clks, align 4
  %arrayidx = getelementptr ptr, ptr %0, i32 312
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call, ptr %arrayidx, align 4
  %call1 = tail call ptr @tegra_clk_register_periph_fixed(ptr noundef nonnull @.str.40, ptr noundef nonnull @.str.41, i32 noundef 0, ptr noundef %clk_base, i32 noundef 1, i32 noundef 17, i32 noundef 181) #6
  %2 = load ptr, ptr @clks, align 4
  %arrayidx2 = getelementptr ptr, ptr %2, i32 181
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %arrayidx2, align 4
  %add.ptr = getelementptr i8, ptr %clk_base, i32 220
  %call3 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.27, i32 noundef 0, ptr noundef %add.ptr, i8 noundef zeroext 30, i8 noundef zeroext 0, ptr noundef nonnull @pll_d_lock) #6
  %4 = load ptr, ptr @clks, align 4
  %arrayidx4 = getelementptr ptr, ptr %4, i32 273
  %5 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call3, ptr %arrayidx4, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %6 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %call5 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.42, i8 noundef zeroext 0, ptr noundef %clk_base, i32 noundef 0, i32 noundef 48, ptr noundef %6) #6
  %7 = load ptr, ptr @clks, align 4
  %arrayidx6 = getelementptr ptr, ptr %7, i32 48
  %8 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call5, ptr %arrayidx6, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @periph_clk_enb_refcnt to i32))
  %9 = load ptr, ptr @periph_clk_enb_refcnt, align 4
  %call7 = tail call ptr @tegra_clk_register_periph_gate(ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.42, i8 noundef zeroext 0, ptr noundef %clk_base, i32 noundef 0, i32 noundef 82, ptr noundef %9) #6
  %10 = load ptr, ptr @clks, align 4
  %arrayidx8 = getelementptr ptr, ptr %10, i32 82
  %11 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call7, ptr %arrayidx8, align 4
  %add.ptr9 = getelementptr i8, ptr %clk_base, i32 412
  %call10 = tail call ptr @tegra_clk_register_mc(ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.46, ptr noundef %add.ptr9, ptr noundef nonnull @emc_lock) #6
  %12 = load ptr, ptr @clks, align 4
  %arrayidx11 = getelementptr ptr, ptr %12, i32 32
  %13 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call10, ptr %arrayidx11, align 4
  %add.ptr12 = getelementptr i8, ptr %clk_base, i32 1164
  %call13 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef %add.ptr12, i8 noundef zeroext 0, i8 noundef zeroext 0, ptr noundef nonnull @pll_e_lock) #6
  %call14 = tail call i32 @clk_register_clkdev(ptr noundef %call13, ptr noundef nonnull @.str.47, ptr noundef null) #6
  %14 = load ptr, ptr @clks, align 4
  %arrayidx15 = getelementptr ptr, ptr %14, i32 268
  %15 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call13, ptr %arrayidx15, align 4
  %call17 = tail call ptr @clk_register_gate(ptr noundef null, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.30, i32 noundef 0, ptr noundef %add.ptr12, i8 noundef zeroext 1, i8 noundef zeroext 0, ptr noundef nonnull @pll_e_lock) #6
  %call18 = tail call i32 @clk_register_clkdev(ptr noundef %call17, ptr noundef nonnull @.str.48, ptr noundef null) #6
  %16 = load ptr, ptr @clks, align 4
  %arrayidx19 = getelementptr ptr, ptr %16, i32 269
  %17 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call17, ptr %arrayidx19, align 4
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %cleanup.for.body_crit_edge ]
  %i.049 = phi i32 [ 0, %entry ], [ 1, %cleanup.for.body_crit_edge ]
  %clk_id = getelementptr [2 x %struct.tegra_periph_init_data], ptr @tegra124_periph, i32 0, i32 %i.049, i32 1
  %18 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %clk_id, align 4
  %call21 = tail call ptr @tegra_lookup_dt_id(i32 noundef %19, ptr noundef nonnull @tegra124_clks) #6
  %tobool.not = icmp eq ptr %call21, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %clk_id to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %clk_id, align 4
  %call23 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.49, i32 noundef %21) #10
  br label %cleanup

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx20 = getelementptr [2 x %struct.tegra_periph_init_data], ptr @tegra124_periph, i32 0, i32 %i.049
  %call24 = tail call ptr @tegra_clk_register_periph_data(ptr noundef %clk_base, ptr noundef %arrayidx20) #6
  %22 = ptrtoint ptr %call21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call24, ptr %call21, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @tegra_periph_clk_init(ptr noundef %clk_base, ptr noundef %pmc_base, ptr noundef nonnull @tegra124_clks, ptr noundef nonnull @pll_p_params) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_audio_clk_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_matching_node_and_match(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllxc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_divider(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll_out(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_fixed_factor(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllc(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllm(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllu_tegra114(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_gate(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pll(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllre(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_plle_tegra114(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_pllss(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_fixed(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_gate(ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_mc(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_lookup_dt_id(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra_clk_register_periph_data(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_periph_clk_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_init_from_table(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_super_clk_gen4_init(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_init_special_resets(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_reset_assert(i32 noundef %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %id)
  %cmp = icmp eq i32 %id, 192
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 756
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !346
  %2 = or i32 %1, 16777216
  %3 = load ptr, ptr @clk_base, align 4
  %add.ptr1.i = getelementptr i8, ptr %3, i32 756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %2) #6, !srcloc !349
  %4 = load ptr, ptr @clk_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 756
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !346
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra124_reset_deassert(i32 noundef %id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 192, i32 %id)
  %cmp = icmp eq i32 %id, 192
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr.i = getelementptr i8, ptr %0, i32 756
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #6, !srcloc !346
  %2 = and i32 %1, -16777217
  %3 = load ptr, ptr @clk_base, align 4
  %add.ptr1.i = getelementptr i8, ptr %3, i32 756
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i, i32 %2) #6, !srcloc !349
  %4 = load ptr, ptr @clk_base, align 4
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 756
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #6, !srcloc !346
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %if.then ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_add_of_provider(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra124_clk_src_onecell_get(ptr noundef %clkspec, ptr noundef %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_clk_src_onecell_get(ptr noundef %clkspec, ptr noundef %data) #6
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @__clk_get_hw(ptr noundef %call) #6
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %clkspec, i32 0, i32 2
  %0 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 57, i32 %1)
  %cmp = icmp eq i32 %1, 57
  br i1 %cmp, label %if.then3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %call4 = tail call zeroext i1 @tegra124_clk_emc_driver_available(ptr noundef %call2) #6
  %spec.select = select i1 %call4, ptr %call, ptr inttoptr (i32 -517 to ptr)
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %entry.cleanup_crit_edge ], [ %call, %if.end.cleanup_crit_edge ], [ %spec.select, %if.then3 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @tegra124_clk_register_emc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tegra_register_devclks(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @tegra124_clk_emc_driver_available(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra124_wait_cpu_in_reset(i32 noundef %cpu) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %shl = shl nuw i32 1, %cpu
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %entry
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 1136
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !346
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !350
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !351
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #6, !srcloc !352
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
define internal void @tegra124_disable_cpu_clock(i32 noundef %cpu) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra124_cpu_clock_suspend() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %0, i32 468
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #6, !srcloc !346
  %2 = tail call i32 @llvm.bswap.i32(i32 %1)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !353
  store i32 %2, ptr @tegra124_cpu_clk_sctx.0, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !354
  tail call void @arm_heavy_mb() #6
  %3 = load ptr, ptr @clk_base, align 4
  %add.ptr2 = getelementptr i8, ptr %3, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 192) #6, !srcloc !349
  %4 = load ptr, ptr @clk_base, align 4
  %add.ptr5 = getelementptr i8, ptr %4, i32 872
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #6, !srcloc !346
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !355
  store i32 %6, ptr @tegra124_cpu_clk_sctx.1, align 4
  %7 = load ptr, ptr @clk_base, align 4
  %add.ptr12 = getelementptr i8, ptr %7, i32 876
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #6, !srcloc !346
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !356
  store i32 %9, ptr @tegra124_cpu_clk_sctx.2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra124_cpu_clock_resume() #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !357
  tail call void @arm_heavy_mb() #6
  %0 = load i32, ptr @tegra124_cpu_clk_sctx.0, align 4
  %1 = tail call i32 @llvm.bswap.i32(i32 %0)
  %2 = load ptr, ptr @clk_base, align 4
  %add.ptr = getelementptr i8, ptr %2, i32 468
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %1) #6, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !358
  tail call void @arm_heavy_mb() #6
  %3 = load i32, ptr @tegra124_cpu_clk_sctx.1, align 4
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %5 = load ptr, ptr @clk_base, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 872
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 %4) #6, !srcloc !349
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !359
  tail call void @arm_heavy_mb() #6
  %6 = load i32, ptr @tegra124_cpu_clk_sctx.2, align 4
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %8 = load ptr, ptr @clk_base, align 4
  %add.ptr7 = getelementptr i8, ptr %8, i32 876
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %7) #6, !srcloc !349
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra132_clock_apply_init_table() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @clks, align 4
  tail call void @tegra_init_from_table(ptr noundef nonnull @common_init_table, ptr noundef %0, i32 noundef 315) #6
  %1 = load ptr, ptr @clks, align 4
  tail call void @tegra_init_from_table(ptr noundef nonnull @tegra132_init_table, ptr noundef %1, i32 noundef 315) #6
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 167)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !12, !13, !14, !16, !17, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !121, !123, !125, !127, !129, !130, !132, !134, !136, !137, !139, !141, !143, !145, !147, !149, !151, !153, !155, !157, !159, !161, !163, !165, !167, !169, !171, !173, !175, !177, !179, !181, !183, !185, !187, !188, !189, !190, !192, !193, !195, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !217, !219, !221, !223, !225, !227, !229, !231, !233, !235, !237, !239, !241, !243, !245, !247, !249, !251, !253, !255, !257, !259, !261, !263, !265, !267, !269, !271, !273, !275, !277, !279, !281, !283, !285, !287, !289, !291, !293, !295, !297, !299, !301, !303, !305, !307, !309, !311, !313, !315, !317, !319, !321, !323, !325, !327, !329, !331, !333, !335}
!llvm.module.flags = !{!337, !338, !339, !340, !341, !342, !343, !344}
!llvm.ident = !{!345}

!0 = !{ptr @__of_table_tegra124, !1, !"__of_table_tegra124", i1 false, i1 false}
!1 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1594, i32 1}
!2 = !{ptr @__of_table_tegra132, !3, !"__of_table_tegra132", i1 false, i1 false}
!3 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1595, i32 1}
!4 = !{ptr @.str, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1462, i32 3}
!6 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @tegra124_132_clock_init_pre._entry, !5, !"_entry", i1 false, i1 false}
!9 = !{ptr @tegra124_132_clock_init_pre._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1468, i32 3}
!12 = !{ptr @tegra124_132_clock_init_pre._entry.3, !11, !"_entry", i1 false, i1 false}
!13 = !{ptr @tegra124_132_clock_init_pre._entry_ptr.5, !11, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1475, i32 3}
!16 = !{ptr @tegra124_132_clock_init_pre._entry.6, !15, !"_entry", i1 false, i1 false}
!17 = !{ptr @tegra124_132_clock_init_pre._entry_ptr.8, !15, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @clk_base, !19, !"clk_base", i1 false, i1 false}
!19 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 119, i32 22}
!20 = !{ptr @pmc_match, !21, !"pmc_match", i1 false, i1 false}
!21 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1285, i32 34}
!22 = !{ptr @pmc_base, !23, !"pmc_base", i1 false, i1 false}
!23 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 120, i32 22}
!24 = !{ptr @clks, !25, !"clks", i1 false, i1 false}
!25 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1022, i32 21}
!26 = !{ptr @tegra124_clks, !27, !"tegra124_clks", i1 false, i1 false}
!27 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 747, i32 25}
!28 = !{ptr @tegra124_input_freq, !29, !"tegra124_input_freq", i1 false, i1 false}
!29 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 133, i32 22}
!30 = !{ptr @osc_freq, !31, !"osc_freq", i1 false, i1 false}
!31 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 122, i32 22}
!32 = !{ptr @pll_ref_freq, !33, !"pll_ref_freq", i1 false, i1 false}
!33 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 123, i32 22}
!34 = !{ptr @.str.10, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1092, i32 33}
!36 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1092, i32 42}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1098, i32 35}
!40 = !{ptr @.str.13, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1101, i32 35}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1108, i32 40}
!44 = !{ptr @.str.15, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1114, i32 32}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1120, i32 32}
!48 = !{ptr @.str.17, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1126, i32 32}
!50 = !{ptr @.str.18, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1132, i32 35}
!52 = !{ptr @.str.19, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1135, i32 35}
!54 = !{ptr @.str.20, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1142, i32 40}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1148, i32 41}
!58 = !{ptr @.str.22, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1154, i32 32}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1161, i32 40}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1167, i32 40}
!64 = !{ptr @.str.25, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1173, i32 40}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1179, i32 31}
!68 = !{ptr @.str.27, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1185, i32 40}
!70 = !{ptr @.str.28, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1191, i32 33}
!72 = !{ptr @.str.29, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1196, i32 41}
!74 = !{ptr @.str.30, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1203, i32 41}
!76 = !{ptr @.str.31, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1209, i32 33}
!78 = !{ptr @.str.32, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1215, i32 33}
!80 = !{ptr @.str.33, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1221, i32 33}
!82 = !{ptr @.str.34, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1227, i32 40}
!84 = !{ptr @pll_c_params, !85, !"pll_c_params", i1 false, i1 false}
!85 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 215, i32 36}
!86 = !{ptr @pllxc_p, !87, !"pllxc_p", i1 false, i1 false}
!87 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 152, i32 30}
!88 = !{ptr @pllxc_nmp, !89, !"pllxc_nmp", i1 false, i1 false}
!89 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 143, i32 23}
!90 = !{ptr @pll_c_freq_table, !91, !"pll_c_freq_table", i1 false, i1 false}
!91 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 205, i32 40}
!92 = !{ptr @pll_c2_params, !93, !"pll_c2_params", i1 false, i1 false}
!93 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 269, i32 36}
!94 = !{ptr @pllc_p, !95, !"pllc_p", i1 false, i1 false}
!95 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 248, i32 30}
!96 = !{ptr @pllcx_nmp, !97, !"pllcx_nmp", i1 false, i1 false}
!97 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 239, i32 23}
!98 = !{ptr @pll_cx_freq_table, !99, !"pll_cx_freq_table", i1 false, i1 false}
!99 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 260, i32 40}
!100 = !{ptr @pll_c3_params, !101, !"pll_c3_params", i1 false, i1 false}
!101 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 291, i32 36}
!102 = !{ptr @pll_m_params, !103, !"pll_m_params", i1 false, i1 false}
!103 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 413, i32 36}
!104 = !{ptr @pllm_p, !105, !"pllm_p", i1 false, i1 false}
!105 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 373, i32 30}
!106 = !{ptr @pllm_nmp, !107, !"pllm_nmp", i1 false, i1 false}
!107 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 401, i32 23}
!108 = !{ptr @pll_m_freq_table, !109, !"pll_m_freq_table", i1 false, i1 false}
!109 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 392, i32 40}
!110 = !{ptr @pll_u_params, !111, !"pll_u_params", i1 false, i1 false}
!111 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 728, i32 36}
!112 = !{ptr @pllu_p, !113, !"pllu_p", i1 false, i1 false}
!113 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 704, i32 30}
!114 = !{ptr @pllu_nmp, !115, !"pllu_nmp", i1 false, i1 false}
!115 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 710, i32 23}
!116 = !{ptr @pll_u_freq_table, !117, !"pll_u_freq_table", i1 false, i1 false}
!117 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 719, i32 40}
!118 = !{ptr @.str.35, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 128, i32 8}
!120 = !{ptr @pll_u_lock, !119, !"pll_u_lock", i1 false, i1 false}
!121 = !{ptr @pll_d_params, !122, !"pll_d_params", i1 false, i1 false}
!122 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 620, i32 36}
!123 = !{ptr @plld_nmp, !124, !"plld_nmp", i1 false, i1 false}
!124 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 593, i32 23}
!125 = !{ptr @pll_d_freq_table, !126, !"pll_d_freq_table", i1 false, i1 false}
!126 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 602, i32 40}
!127 = !{ptr @.str.36, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 125, i32 8}
!129 = !{ptr @pll_d_lock, !128, !"pll_d_lock", i1 false, i1 false}
!130 = !{ptr @pll_re_vco_params, !131, !"pll_re_vco_params", i1 false, i1 false}
!131 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 509, i32 36}
!132 = !{ptr @pllre_nmp, !133, !"pllre_nmp", i1 false, i1 false}
!133 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 500, i32 23}
!134 = !{ptr @.str.37, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 127, i32 8}
!136 = !{ptr @pll_re_lock, !135, !"pll_re_lock", i1 false, i1 false}
!137 = !{ptr @pll_re_div_table, !138, !"pll_re_div_table", i1 false, i1 false}
!138 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 490, i32 35}
!139 = !{ptr @pll_e_params, !140, !"pll_e_params", i1 false, i1 false}
!140 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 470, i32 36}
!141 = !{ptr @plle_p, !142, !"plle_p", i1 false, i1 false}
!142 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 442, i32 30}
!143 = !{ptr @plle_nmp, !144, !"plle_nmp", i1 false, i1 false}
!144 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 461, i32 23}
!145 = !{ptr @pll_e_freq_table, !146, !"pll_e_freq_table", i1 false, i1 false}
!146 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 433, i32 40}
!147 = !{ptr @pll_c4_params, !148, !"pll_c4_params", i1 false, i1 false}
!148 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 350, i32 36}
!149 = !{ptr @pll12g_ssd_esd_p, !150, !"pll12g_ssd_esd_p", i1 false, i1 false}
!150 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 322, i32 30}
!151 = !{ptr @pllss_nmp, !152, !"pllss_nmp", i1 false, i1 false}
!152 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 313, i32 23}
!153 = !{ptr @pll_c4_freq_table, !154, !"pll_c4_freq_table", i1 false, i1 false}
!154 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 341, i32 40}
!155 = !{ptr @pll_dp_params, !156, !"pll_dp_params", i1 false, i1 false}
!156 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 680, i32 36}
!157 = !{ptr @pll_dp_freq_table, !158, !"pll_dp_freq_table", i1 false, i1 false}
!158 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 671, i32 40}
!159 = !{ptr @tegra124_pll_d2_params, !160, !"tegra124_pll_d2_params", i1 false, i1 false}
!160 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 647, i32 36}
!161 = !{ptr @tegra124_pll_d2_freq_table, !162, !"tegra124_pll_d2_freq_table", i1 false, i1 false}
!162 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 638, i32 40}
!163 = !{ptr @.str.38, !164, !"<string literal>", i1 false, i1 false}
!164 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1031, i32 40}
!165 = !{ptr @.str.39, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1031, i32 56}
!167 = !{ptr @.str.40, !168, !"<string literal>", i1 false, i1 false}
!168 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1035, i32 40}
!169 = !{ptr @.str.41, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1035, i32 49}
!171 = !{ptr @.str.42, !172, !"<string literal>", i1 false, i1 false}
!172 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1039, i32 32}
!173 = !{ptr @.str.43, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1043, i32 39}
!175 = !{ptr @.str.44, !176, !"<string literal>", i1 false, i1 false}
!176 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1048, i32 39}
!177 = !{ptr @.str.45, !178, !"<string literal>", i1 false, i1 false}
!178 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1053, i32 30}
!179 = !{ptr @.str.46, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1053, i32 36}
!181 = !{ptr @.str.47, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1058, i32 32}
!183 = !{ptr @.str.48, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1064, i32 32}
!185 = !{ptr @.str.49, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1075, i32 4}
!187 = !{ptr @.str.50, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @tegra124_periph_clk_init._entry, !186, !"_entry", i1 false, i1 false}
!189 = !{ptr @tegra124_periph_clk_init._entry_ptr, !186, !"_entry_ptr", i1 false, i1 false}
!190 = !{ptr @.str.51, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 129, i32 8}
!192 = !{ptr @emc_lock, !191, !"emc_lock", i1 false, i1 false}
!193 = !{ptr @.str.52, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 126, i32 8}
!195 = !{ptr @pll_e_lock, !194, !"pll_e_lock", i1 false, i1 false}
!196 = !{ptr @.str.53, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1012, i32 2}
!198 = !{ptr @.str.54, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1016, i32 2}
!200 = !{ptr @tegra124_periph, !201, !"tegra124_periph", i1 false, i1 false}
!201 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1011, i32 38}
!202 = !{ptr @.str.55, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1003, i32 2}
!204 = !{ptr @.str.56, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1003, i32 16}
!206 = !{ptr @.str.57, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1003, i32 44}
!208 = !{ptr @.str.58, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1003, i32 58}
!210 = !{ptr @.str.59, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1004, i32 17}
!212 = !{ptr @sor0_parents, !213, !"sor0_parents", i1 false, i1 false}
!213 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1002, i32 27}
!214 = !{ptr @.str.60, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 130, i32 8}
!216 = !{ptr @sor0_lock, !215, !"sor0_lock", i1 false, i1 false}
!217 = !{ptr @.str.61, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1008, i32 11}
!219 = !{ptr @sor0_out_parents, !220, !"sor0_out_parents", i1 false, i1 false}
!220 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1007, i32 27}
!221 = !{ptr @pll_p_params, !222, !"pll_p_params", i1 false, i1 false}
!222 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 546, i32 36}
!223 = !{ptr @pllp_nmp, !224, !"pllp_nmp", i1 false, i1 false}
!224 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 528, i32 23}
!225 = !{ptr @pll_p_freq_table, !226, !"pll_p_freq_table", i1 false, i1 false}
!226 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 537, i32 40}
!227 = !{ptr @.str.62, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1354, i32 4}
!229 = !{ptr @.str.63, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1354, i32 45}
!231 = !{ptr @tegra124_audio_plls, !232, !"tegra124_audio_plls", i1 false, i1 false}
!232 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1353, i32 36}
!233 = !{ptr @pll_a_params, !234, !"pll_a_params", i1 false, i1 false}
!234 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 575, i32 36}
!235 = !{ptr @pll_a_freq_table, !236, !"pll_a_freq_table", i1 false, i1 false}
!236 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 565, i32 40}
!237 = !{ptr @common_init_table, !238, !"common_init_table", i1 false, i1 false}
!238 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1290, i32 36}
!239 = !{ptr @tegra124_init_table, !240, !"tegra124_init_table", i1 false, i1 false}
!240 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1337, i32 36}
!241 = !{ptr @pll_x_params, !242, !"pll_x_params", i1 false, i1 false}
!242 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 181, i32 36}
!243 = !{ptr @pll_x_freq_table, !244, !"pll_x_freq_table", i1 false, i1 false}
!244 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 171, i32 40}
!245 = !{ptr @.str.64, !246, !"<string literal>", i1 false, i1 false}
!246 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 937, i32 14}
!247 = !{ptr @.str.65, !248, !"<string literal>", i1 false, i1 false}
!248 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 938, i32 14}
!249 = !{ptr @.str.66, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 939, i32 14}
!251 = !{ptr @.str.67, !252, !"<string literal>", i1 false, i1 false}
!252 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 940, i32 14}
!253 = !{ptr @.str.68, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 947, i32 14}
!255 = !{ptr @.str.69, !256, !"<string literal>", i1 false, i1 false}
!256 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 948, i32 14}
!257 = !{ptr @.str.70, !258, !"<string literal>", i1 false, i1 false}
!258 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 949, i32 14}
!259 = !{ptr @.str.71, !260, !"<string literal>", i1 false, i1 false}
!260 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 952, i32 14}
!261 = !{ptr @.str.72, !262, !"<string literal>", i1 false, i1 false}
!262 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 953, i32 14}
!263 = !{ptr @.str.73, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 967, i32 14}
!265 = !{ptr @.str.74, !266, !"<string literal>", i1 false, i1 false}
!266 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 968, i32 14}
!267 = !{ptr @.str.75, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 969, i32 14}
!269 = !{ptr @.str.76, !270, !"<string literal>", i1 false, i1 false}
!270 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 970, i32 14}
!271 = !{ptr @.str.77, !272, !"<string literal>", i1 false, i1 false}
!272 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 971, i32 14}
!273 = !{ptr @.str.78, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 972, i32 14}
!275 = !{ptr @.str.79, !276, !"<string literal>", i1 false, i1 false}
!276 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 973, i32 14}
!277 = !{ptr @.str.80, !278, !"<string literal>", i1 false, i1 false}
!278 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 974, i32 14}
!279 = !{ptr @.str.81, !280, !"<string literal>", i1 false, i1 false}
!280 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 975, i32 14}
!281 = !{ptr @.str.82, !282, !"<string literal>", i1 false, i1 false}
!282 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 976, i32 14}
!283 = !{ptr @.str.83, !284, !"<string literal>", i1 false, i1 false}
!284 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 977, i32 14}
!285 = !{ptr @.str.84, !286, !"<string literal>", i1 false, i1 false}
!286 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 978, i32 14}
!287 = !{ptr @.str.85, !288, !"<string literal>", i1 false, i1 false}
!288 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 979, i32 14}
!289 = !{ptr @.str.86, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 980, i32 14}
!291 = !{ptr @.str.87, !292, !"<string literal>", i1 false, i1 false}
!292 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 981, i32 14}
!293 = !{ptr @.str.88, !294, !"<string literal>", i1 false, i1 false}
!294 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 982, i32 14}
!295 = !{ptr @.str.89, !296, !"<string literal>", i1 false, i1 false}
!296 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 983, i32 14}
!297 = !{ptr @.str.90, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 984, i32 14}
!299 = !{ptr @.str.91, !300, !"<string literal>", i1 false, i1 false}
!300 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 985, i32 14}
!301 = !{ptr @.str.92, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 986, i32 14}
!303 = !{ptr @.str.93, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 987, i32 14}
!305 = !{ptr @.str.94, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 988, i32 14}
!307 = !{ptr @.str.95, !308, !"<string literal>", i1 false, i1 false}
!308 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 989, i32 14}
!309 = !{ptr @.str.96, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 990, i32 14}
!311 = !{ptr @.str.97, !312, !"<string literal>", i1 false, i1 false}
!312 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 991, i32 14}
!313 = !{ptr @.str.98, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 992, i32 14}
!315 = !{ptr @.str.99, !316, !"<string literal>", i1 false, i1 false}
!316 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 993, i32 14}
!317 = !{ptr @.str.100, !318, !"<string literal>", i1 false, i1 false}
!318 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 994, i32 14}
!319 = !{ptr @.str.101, !320, !"<string literal>", i1 false, i1 false}
!320 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 995, i32 14}
!321 = !{ptr @.str.102, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 996, i32 14}
!323 = !{ptr @.str.103, !324, !"<string literal>", i1 false, i1 false}
!324 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 997, i32 14}
!325 = !{ptr @.str.104, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 998, i32 14}
!327 = !{ptr @.str.105, !328, !"<string literal>", i1 false, i1 false}
!328 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 999, i32 14}
!329 = !{ptr @devclks, !330, !"devclks", i1 false, i1 false}
!330 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 934, i32 28}
!331 = !{ptr @tegra124_cpu_car_ops, !332, !"tegra124_cpu_car_ops", i1 false, i1 false}
!332 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1276, i32 33}
!333 = distinct !{null, !334, !"tegra124_cpu_clk_sctx", i1 false, i1 false}
!334 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 116, i32 3}
!335 = !{ptr @tegra132_init_table, !336, !"tegra132_init_table", i1 false, i1 false}
!336 = !{!"../drivers/clk/tegra/clk-tegra124.c", i32 1347, i32 36}
!337 = !{i32 1, !"wchar_size", i32 2}
!338 = !{i32 1, !"min_enum_size", i32 4}
!339 = !{i32 8, !"branch-target-enforcement", i32 0}
!340 = !{i32 8, !"sign-return-address", i32 0}
!341 = !{i32 8, !"sign-return-address-all", i32 0}
!342 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!343 = !{i32 7, !"uwtable", i32 1}
!344 = !{i32 7, !"frame-pointer", i32 2}
!345 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!346 = !{i64 741683}
!347 = !{i64 2152677841}
!348 = !{i64 2152678140}
!349 = !{i64 741265}
!350 = !{i64 2152664351}
!351 = !{i64 2152664626}
!352 = !{i64 2152664468}
!353 = !{i64 2152665114}
!354 = !{i64 2152665337}
!355 = !{i64 2152666011}
!356 = !{i64 2152666515}
!357 = !{i64 2152666766}
!358 = !{i64 2152667285}
!359 = !{i64 2152667804}
