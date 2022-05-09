; ModuleID = '/llk/IR_all_yes/drivers/clk/sunxi/clk-sunxi.c_pt.bc'
source_filename = "../drivers/clk/sunxi/clk-sunxi.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.factors_data = type { i32, i32, i32, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_factors_config = type { i8, i8, i8, i8, i8, i8, i8, i8, i8 }
%struct.mux_data = type { i8 }
%struct.div_data = type { i8, i8, i8, ptr }
%struct.clk_div_table = type { i32, i32 }
%struct.divs_data = type { ptr, i32, [4 x %struct.anon.41] }
%struct.anon.41 = type { i8, i8, ptr, i8, i8, i8, i8 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.factors_request = type { i32, i32, i8, i8, i8, i8, i8 }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }
%struct.clk_onecell_data = type { ptr, i32 }

@__of_table_sun4i_pll1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-pll1-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_pll1_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun6i_pll1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-pll1-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_pll1_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun8i_pll1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-pll1-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_pll1_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun7i_pll4 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-pll4-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_pll4_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun5i_ahb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun5i-a13-ahb-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun5i_ahb_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun6i_a31_ahb1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-ahb1-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_ahb1_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_apb1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-apb1-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_apb1_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun7i_out = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun7i-a20-out-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun7i_out_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_cpu = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-cpu-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_cpu_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun6i_ahb1_mux = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-ahb1-mux-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_ahb1_mux_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun8i_ahb2 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-ahb2-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_ahb2_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_ahb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-ahb-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_ahb_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_apb0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-apb0-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_apb0_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_axi = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-axi-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_axi_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun8i_axi = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-axi-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_axi_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_pll5 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-pll5-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_pll5_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun4i_pll6 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-pll6-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun4i_pll6_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun6i_pll6 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-pll6-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_pll6_clk_setup }, section "__clk_of_table", align 4
@__of_table_sun6i_display = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-display-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_display_setup }, section "__clk_of_table", align 4
@sun4i_pll1_data = internal constant %struct.factors_data { i32 31, i32 0, i32 0, ptr @sun4i_pll1_config, ptr @sun4i_get_pll1_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sunxi_factors_clk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 564, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"\013Could not get registers for factors-clk: %pOFn\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sunxi_factors_clk_setup\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/clk/sunxi/clk-sunxi.c\00", [34 x i8] zeroinitializer }, align 32
@sunxi_factors_clk_setup._entry_ptr = internal global ptr @sunxi_factors_clk_setup._entry, section ".printk_index", align 4
@clk_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.3, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_lock\00", [23 x i8] zeroinitializer }, align 32
@sun4i_pll1_config = internal constant { %struct.clk_factors_config, [23 x i8] } { %struct.clk_factors_config { i8 8, i8 5, i8 4, i8 2, i8 0, i8 2, i8 16, i8 2, i8 0 }, [23 x i8] zeroinitializer }, align 32
@sun6i_a31_pll1_data = internal constant %struct.factors_data { i32 31, i32 0, i32 0, ptr @sun6i_a31_pll1_config, ptr @sun6i_a31_get_pll1_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun6i_a31_pll1_config = internal constant { %struct.clk_factors_config, [23 x i8] } { %struct.clk_factors_config { i8 8, i8 5, i8 4, i8 2, i8 0, i8 2, i8 0, i8 0, i8 1 }, [23 x i8] zeroinitializer }, align 32
@sun8i_a23_pll1_data = internal constant %struct.factors_data { i32 31, i32 0, i32 0, ptr @sun8i_a23_pll1_config, ptr @sun8i_a23_get_pll1_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun8i_a23_pll1_config = internal constant { %struct.clk_factors_config, [23 x i8] } { %struct.clk_factors_config { i8 8, i8 5, i8 4, i8 2, i8 0, i8 2, i8 16, i8 2, i8 1 }, [23 x i8] zeroinitializer }, align 32
@sun7i_a20_pll4_data = internal constant %struct.factors_data { i32 31, i32 0, i32 0, ptr @sun4i_pll5_config, ptr @sun4i_get_pll5_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun4i_pll5_config = internal constant { %struct.clk_factors_config, [23 x i8] } { %struct.clk_factors_config { i8 8, i8 5, i8 4, i8 2, i8 0, i8 0, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@sun5i_a13_ahb_data = internal constant %struct.factors_data { i32 0, i32 6, i32 3, ptr @sun5i_a13_ahb_config, ptr @sun5i_a13_get_ahb_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun5i_a13_ahb_config = internal constant { %struct.clk_factors_config, [23 x i8] } { %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 2, i8 0 }, [23 x i8] zeroinitializer }, align 32
@sun6i_ahb1_data = internal constant %struct.factors_data { i32 0, i32 12, i32 3, ptr @sun6i_ahb1_config, ptr @sun6i_get_ahb1_factors, ptr @sun6i_ahb1_recalc, ptr null }, section ".init.rodata", align 4
@sun6i_ahb1_config = internal constant { %struct.clk_factors_config, [23 x i8] } { %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 6, i8 2, i8 4, i8 2, i8 0 }, [23 x i8] zeroinitializer }, align 32
@sun4i_apb1_data = internal constant %struct.factors_data { i32 0, i32 24, i32 3, ptr @sun4i_apb1_config, ptr @sun4i_get_apb1_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun4i_apb1_config = internal constant { %struct.clk_factors_config, [23 x i8] } { %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 0, i8 5, i8 16, i8 2, i8 0 }, [23 x i8] zeroinitializer }, align 32
@sun7i_a20_out_data = internal constant %struct.factors_data { i32 31, i32 24, i32 3, ptr @sun7i_a20_out_config, ptr @sun7i_a20_get_out_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun7i_a20_out_config = internal constant { %struct.clk_factors_config, [23 x i8] } { %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 8, i8 5, i8 20, i8 2, i8 0 }, [23 x i8] zeroinitializer }, align 32
@sun4i_cpu_mux_data = internal constant %struct.mux_data { i8 16 }, section ".init.rodata", align 1
@sunxi_mux_clk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 662, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"\013Could not map registers for mux-clk: %pOF\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sunxi_mux_clk_setup\00", [44 x i8] zeroinitializer }, align 32
@sunxi_mux_clk_setup._entry_ptr = internal global ptr @sunxi_mux_clk_setup._entry, section ".printk_index", align 4
@.str.6 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@sunxi_mux_clk_setup._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.5, ptr @.str.2, i32 669, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"\013%s: could not read clock-output-names from \22%pOF\22\0A\00", [43 x i8] zeroinitializer }, align 32
@sunxi_mux_clk_setup._entry_ptr.9 = internal global ptr @sunxi_mux_clk_setup._entry.7, section ".printk_index", align 4
@sunxi_mux_clk_setup._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.5, ptr @.str.2, i32 680, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013%s: failed to register mux clock %s: %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@sunxi_mux_clk_setup._entry_ptr.12 = internal global ptr @sunxi_mux_clk_setup._entry.10, section ".printk_index", align 4
@sunxi_mux_clk_setup._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.2, i32 686, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013%s: failed to add clock provider for %s\0A\00", [53 x i8] zeroinitializer }, align 32
@sunxi_mux_clk_setup._entry_ptr.15 = internal global ptr @sunxi_mux_clk_setup._entry.13, section ".printk_index", align 4
@sun6i_a31_ahb1_mux_data = internal constant %struct.mux_data { i8 12 }, section ".init.rodata", align 1
@sun8i_h3_ahb2_mux_data = internal constant %struct.mux_data zeroinitializer, section ".init.rodata", align 1
@sun4i_ahb_data = internal constant %struct.div_data { i8 4, i8 1, i8 2, ptr null }, section ".init.rodata", align 4
@sunxi_divider_clk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.16, ptr @.str.2, i32 785, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sunxi_divider_clk_setup\00", [40 x i8] zeroinitializer }, align 32
@sunxi_divider_clk_setup._entry_ptr = internal global ptr @sunxi_divider_clk_setup._entry, section ".printk_index", align 4
@sunxi_divider_clk_setup._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.16, ptr @.str.2, i32 793, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sunxi_divider_clk_setup._entry_ptr.18 = internal global ptr @sunxi_divider_clk_setup._entry.17, section ".printk_index", align 4
@sunxi_divider_clk_setup._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.16, ptr @.str.2, i32 803, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013%s: failed to register divider clock %s: %ld\0A\00", [48 x i8] zeroinitializer }, align 32
@sunxi_divider_clk_setup._entry_ptr.21 = internal global ptr @sunxi_divider_clk_setup._entry.19, section ".printk_index", align 4
@sunxi_divider_clk_setup._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.16, ptr @.str.2, i32 809, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sunxi_divider_clk_setup._entry_ptr.23 = internal global ptr @sunxi_divider_clk_setup._entry.22, section ".printk_index", align 4
@sun4i_apb0_data = internal constant %struct.div_data { i8 8, i8 1, i8 2, ptr @sun4i_apb0_table }, section ".init.rodata", align 4
@sun4i_apb0_table = internal constant [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 2 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 4 }, %struct.clk_div_table { i32 3, i32 8 }, %struct.clk_div_table zeroinitializer], section ".init.rodata", align 4
@sun4i_axi_data = internal constant %struct.div_data { i8 0, i8 0, i8 2, ptr null }, section ".init.rodata", align 4
@sun8i_a23_axi_data = internal constant %struct.div_data { i8 0, i8 0, i8 3, ptr @sun8i_a23_axi_table }, section ".init.rodata", align 4
@sun8i_a23_axi_table = internal constant [9 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 1 }, %struct.clk_div_table { i32 1, i32 2 }, %struct.clk_div_table { i32 2, i32 3 }, %struct.clk_div_table { i32 3, i32 4 }, %struct.clk_div_table { i32 4, i32 4 }, %struct.clk_div_table { i32 5, i32 4 }, %struct.clk_div_table { i32 6, i32 4 }, %struct.clk_div_table { i32 7, i32 4 }, %struct.clk_div_table zeroinitializer], section ".init.rodata", align 4
@pll5_divs_data = internal constant %struct.divs_data { ptr @sun4i_pll5_data, i32 2, [4 x %struct.anon.41] [%struct.anon.41 { i8 0, i8 0, ptr null, i8 0, i8 0, i8 0, i8 1 }, %struct.anon.41 { i8 0, i8 0, ptr null, i8 16, i8 1, i8 0, i8 0 }, %struct.anon.41 zeroinitializer, %struct.anon.41 zeroinitializer] }, section ".init.rodata", align 4
@sunxi_divs_clk_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 1001, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\013Could not map registers for divs-clk: %pOF\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sunxi_divs_clk_setup\00", [43 x i8] zeroinitializer }, align 32
@sunxi_divs_clk_setup._entry_ptr = internal global ptr @sunxi_divs_clk_setup._entry, section ".printk_index", align 4
@.str.26 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pll5\00", [27 x i8] zeroinitializer }, align 32
@clk_fixed_factor_ops = external dso_local constant %struct.clk_ops, align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@sunxi_divs_clk_setup._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.25, ptr @.str.2, i32 1094, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@sunxi_divs_clk_setup._entry_ptr.28 = internal global ptr @sunxi_divs_clk_setup._entry.27, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sun4i_pll5_data = internal constant %struct.factors_data { i32 31, i32 0, i32 0, ptr @sun4i_pll5_config, ptr @sun4i_get_pll5_factors, ptr null, ptr null }, section ".init.rodata", align 4
@pll6_divs_data = internal constant %struct.divs_data { ptr @sun4i_pll5_data, i32 4, [4 x %struct.anon.41] [%struct.anon.41 { i8 0, i8 0, ptr @pll6_sata_tbl, i8 0, i8 0, i8 14, i8 0 }, %struct.anon.41 { i8 0, i8 2, ptr null, i8 0, i8 0, i8 0, i8 0 }, %struct.anon.41 { i8 1, i8 0, ptr null, i8 0, i8 0, i8 0, i8 0 }, %struct.anon.41 { i8 0, i8 4, ptr null, i8 0, i8 0, i8 0, i8 0 }] }, section ".init.rodata", align 4
@pll6_sata_tbl = internal global { [5 x %struct.clk_div_table], [56 x i8] } { [5 x %struct.clk_div_table] [%struct.clk_div_table { i32 0, i32 6 }, %struct.clk_div_table { i32 1, i32 12 }, %struct.clk_div_table { i32 2, i32 18 }, %struct.clk_div_table { i32 3, i32 24 }, %struct.clk_div_table zeroinitializer], [56 x i8] zeroinitializer }, align 32
@sun6i_a31_pll6_divs_data = internal constant %struct.divs_data { ptr @sun6i_a31_pll6_data, i32 2, [4 x %struct.anon.41] [%struct.anon.41 { i8 0, i8 2, ptr null, i8 0, i8 0, i8 0, i8 0 }, %struct.anon.41 { i8 1, i8 0, ptr null, i8 0, i8 0, i8 0, i8 0 }, %struct.anon.41 zeroinitializer, %struct.anon.41 zeroinitializer] }, section ".init.rodata", align 4
@sun6i_a31_pll6_data = internal constant %struct.factors_data { i32 31, i32 0, i32 0, ptr @sun6i_a31_pll6_config, ptr @sun6i_a31_get_pll6_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun6i_a31_pll6_config = internal constant { %struct.clk_factors_config, [23 x i8] } { %struct.clk_factors_config { i8 8, i8 5, i8 4, i8 2, i8 0, i8 0, i8 0, i8 0, i8 1 }, [23 x i8] zeroinitializer }, align 32
@sun6i_display_data = internal constant %struct.factors_data { i32 31, i32 24, i32 7, ptr @sun6i_display_config, ptr @sun6i_display_factors, ptr null, ptr null }, section ".init.rodata", align 4
@sun6i_display_config = internal constant { %struct.clk_factors_config, [23 x i8] } { %struct.clk_factors_config { i8 0, i8 0, i8 0, i8 0, i8 0, i8 4, i8 0, i8 0, i8 0 }, [23 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2, i64 4]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 563, i32 3 }
@___asan_gen_.41 = private unnamed_addr constant [9 x i8] c"clk_lock\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 21, i32 8 }
@___asan_gen_.47 = private unnamed_addr constant [18 x i8] c"sun4i_pll1_config\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 415, i32 40 }
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"sun6i_a31_pll1_config\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 426, i32 40 }
@___asan_gen_.53 = private unnamed_addr constant [22 x i8] c"sun8i_a23_pll1_config\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 436, i32 40 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"sun4i_pll5_config\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 448, i32 40 }
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"sun5i_a13_ahb_config\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 463, i32 40 }
@___asan_gen_.62 = private unnamed_addr constant [18 x i8] c"sun6i_ahb1_config\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 468, i32 40 }
@___asan_gen_.65 = private unnamed_addr constant [18 x i8] c"sun4i_apb1_config\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 475, i32 40 }
@___asan_gen_.68 = private unnamed_addr constant [21 x i8] c"sun7i_a20_out_config\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 483, i32 40 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 662, i32 3 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 667, i32 36 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 668, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 679, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 685, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 785, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 792, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 802, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 808, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1001, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1017, i32 21 }
@___asan_gen_.131 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1093, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant [14 x i8] c"pll6_sata_tbl\00", align 1
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 893, i32 29 }
@___asan_gen_.137 = private unnamed_addr constant [22 x i8] c"sun6i_a31_pll6_config\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 455, i32 40 }
@___asan_gen_.140 = private unnamed_addr constant [21 x i8] c"sun6i_display_config\00", align 1
@___asan_gen_.141 = private constant [33 x i8] c"../drivers/clk/sunxi/clk-sunxi.c\00", align 1
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.141, i32 1149, i32 40 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__of_table_sun4i_ahb, ptr @__of_table_sun4i_apb0, ptr @__of_table_sun4i_apb1, ptr @__of_table_sun4i_axi, ptr @__of_table_sun4i_cpu, ptr @__of_table_sun4i_pll1, ptr @__of_table_sun4i_pll5, ptr @__of_table_sun4i_pll6, ptr @__of_table_sun5i_ahb, ptr @__of_table_sun6i_a31_ahb1, ptr @__of_table_sun6i_ahb1_mux, ptr @__of_table_sun6i_display, ptr @__of_table_sun6i_pll1, ptr @__of_table_sun6i_pll6, ptr @__of_table_sun7i_out, ptr @__of_table_sun7i_pll4, ptr @__of_table_sun8i_ahb2, ptr @__of_table_sun8i_axi, ptr @__of_table_sun8i_pll1, ptr @sunxi_divider_clk_setup._entry, ptr @sunxi_divider_clk_setup._entry.17, ptr @sunxi_divider_clk_setup._entry.19, ptr @sunxi_divider_clk_setup._entry.22, ptr @sunxi_divider_clk_setup._entry_ptr, ptr @sunxi_divider_clk_setup._entry_ptr.18, ptr @sunxi_divider_clk_setup._entry_ptr.21, ptr @sunxi_divider_clk_setup._entry_ptr.23, ptr @sunxi_divs_clk_setup._entry, ptr @sunxi_divs_clk_setup._entry.27, ptr @sunxi_divs_clk_setup._entry_ptr, ptr @sunxi_divs_clk_setup._entry_ptr.28, ptr @sunxi_factors_clk_setup._entry, ptr @sunxi_factors_clk_setup._entry_ptr, ptr @sunxi_mux_clk_setup._entry, ptr @sunxi_mux_clk_setup._entry.10, ptr @sunxi_mux_clk_setup._entry.13, ptr @sunxi_mux_clk_setup._entry.7, ptr @sunxi_mux_clk_setup._entry_ptr, ptr @sunxi_mux_clk_setup._entry_ptr.12, ptr @sunxi_mux_clk_setup._entry_ptr.15, ptr @sunxi_mux_clk_setup._entry_ptr.9, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @clk_lock, ptr @.str.3, ptr @sun4i_pll1_config, ptr @sun6i_a31_pll1_config, ptr @sun8i_a23_pll1_config, ptr @sun4i_pll5_config, ptr @sun5i_a13_ahb_config, ptr @sun6i_ahb1_config, ptr @sun4i_apb1_config, ptr @sun7i_a20_out_config, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.16, ptr @.str.20, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @pll6_sata_tbl, ptr @sun6i_a31_pll6_config, ptr @sun6i_display_config], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_factors_clk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_pll1_config to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_a31_pll1_config to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a23_pll1_config to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_pll5_config to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun5i_a13_ahb_config to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_ahb1_config to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_apb1_config to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun7i_a20_out_config to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mux_clk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mux_clk_setup._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mux_clk_setup._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_mux_clk_setup._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_divider_clk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_divider_clk_setup._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_divider_clk_setup._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_divider_clk_setup._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_divs_clk_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sunxi_divs_clk_setup._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pll6_sata_tbl to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_a31_pll6_config to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_display_config to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_pll1_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %node, ptr noundef nonnull @sun4i_pll1_data) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_pll1_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %node, ptr noundef nonnull @sun6i_a31_pll1_data) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_pll1_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %node, ptr noundef nonnull @sun8i_a23_pll1_data) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun7i_pll4_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %node, ptr noundef nonnull @sun7i_a20_pll4_data) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun5i_ahb_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %node, ptr noundef nonnull @sun5i_a13_ahb_data) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_ahb1_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %node, ptr noundef nonnull @sun6i_ahb1_data) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_apb1_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %node, ptr noundef nonnull @sun4i_apb1_data) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun7i_out_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %node, ptr noundef nonnull @sun7i_a20_out_data) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_cpu_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_mux_clk_setup(ptr noundef %node, ptr noundef nonnull @sun4i_cpu_mux_data, i32 noundef 2048) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_ahb1_mux_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_mux_clk_setup(ptr noundef %node, ptr noundef nonnull @sun6i_a31_ahb1_mux_data, i32 noundef 0) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_ahb2_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_mux_clk_setup(ptr noundef %node, ptr noundef nonnull @sun8i_h3_ahb2_mux_data, i32 noundef 0) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_ahb_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_divider_clk_setup(ptr noundef %node, ptr noundef nonnull @sun4i_ahb_data) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_apb0_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_divider_clk_setup(ptr noundef %node, ptr noundef nonnull @sun4i_apb0_data) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_axi_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_divider_clk_setup(ptr noundef %node, ptr noundef nonnull @sun4i_axi_data) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun8i_axi_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_divider_clk_setup(ptr noundef %node, ptr noundef nonnull @sun8i_a23_axi_data) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_pll5_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_divs_clk_setup(ptr noundef %node, ptr noundef nonnull @pll5_divs_data) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun4i_pll6_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_divs_clk_setup(ptr noundef %node, ptr noundef nonnull @pll6_divs_data) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_pll6_clk_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @sunxi_divs_clk_setup(ptr noundef %node, ptr noundef nonnull @sun6i_a31_pll6_divs_data) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_display_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %node, ptr noundef nonnull @sun6i_display_data) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @sunxi_factors_clk_setup(ptr noundef %node, ptr noundef %data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %node) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call2 = tail call ptr @sunxi_factors_register(ptr noundef %node, ptr noundef %data, ptr noundef nonnull @clk_lock, ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi ptr [ %call2, %if.end ], [ null, %do.end ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sunxi_factors_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun4i_get_pll1_factors(ptr nocapture noundef %req) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %div1 = udiv i32 %1, 6000000
  %conv2 = and i32 %div1, 255
  %mul = mul nuw nsw i32 %conv2, 6000000
  store i32 %mul, ptr %req, align 4
  %m = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 5
  %2 = ptrtoint ptr %m to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %m, align 1
  %mul.fr = freeze i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 767999999, i32 %mul.fr)
  %cmp = icmp ugt i32 %mul.fr, 767999999
  %trunc = trunc i32 %div1 to i8
  %3 = add i8 %trunc, -7
  %switch.and = and i8 %3, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and)
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %narrow = select i1 %cmp, i1 true, i1 %switch.selectcmp
  %.sink = zext i1 %narrow to i8
  %k13 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %k13 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink, ptr %k13, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %conv2)
  %cmp15 = icmp ult i32 %conv2, 10
  br i1 %cmp15, label %entry.if.end47_crit_edge, label %if.else18

entry.if.end47_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.else18:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %conv2)
  %cmp20 = icmp ult i32 %conv2, 20
  br i1 %cmp20, label %if.else18.if.end47_crit_edge, label %lor.lhs.false22

if.else18.if.end47_crit_edge:                     ; preds = %if.else18
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

lor.lhs.false22:                                  ; preds = %if.else18
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %conv2)
  %cmp24 = icmp ugt i32 %conv2, 31
  %and = and i32 %div1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond86 = or i1 %cmp24, %tobool.not
  br i1 %or.cond86, label %if.else29, label %lor.lhs.false22.if.end47_crit_edge

lor.lhs.false22.if.end47_crit_edge:               ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

if.else29:                                        ; preds = %lor.lhs.false22
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %conv2)
  %cmp31 = icmp ult i32 %conv2, 40
  br i1 %cmp31, label %if.else29.if.end47_crit_edge, label %lor.lhs.false33

if.else29.if.end47_crit_edge:                     ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end47

lor.lhs.false33:                                  ; preds = %if.else29
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv2)
  %cmp35 = icmp ult i32 %conv2, 64
  %and39 = and i32 %div1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %tobool40.not = icmp ne i32 %and39, 0
  %not.or.cond87 = and i1 %cmp35, %tobool40.not
  %spec.select = zext i1 %not.or.cond87 to i8
  br label %if.end47

if.end47:                                         ; preds = %lor.lhs.false33, %if.else29.if.end47_crit_edge, %lor.lhs.false22.if.end47_crit_edge, %if.else18.if.end47_crit_edge, %entry.if.end47_crit_edge
  %.sink89 = phi i8 [ 3, %entry.if.end47_crit_edge ], [ 2, %lor.lhs.false22.if.end47_crit_edge ], [ 2, %if.else18.if.end47_crit_edge ], [ 1, %if.else29.if.end47_crit_edge ], [ %spec.select, %lor.lhs.false33 ]
  %p28 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 6
  %5 = ptrtoint ptr %p28 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink89, ptr %p28, align 4
  %conv49 = zext i8 %.sink89 to i32
  %shl = shl i32 %div1, %conv49
  %k52 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %k52 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %k52, align 2
  %conv53 = zext i8 %7 to i16
  %add = add nuw nsw i16 %conv53, 1
  %8 = trunc i32 %shl to i16
  %div55.lhs.trunc = and i16 %8, 255
  %div5588 = udiv i16 %div55.lhs.trunc, %add
  %9 = lshr i16 %div5588, 2
  %conv59 = trunc i16 %9 to i8
  %n = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %n to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv59, ptr %n, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun6i_a31_get_pll1_factors(ptr nocapture noundef %req) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %div = udiv i32 %1, 1000000
  %parent_rate = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_rate, align 4
  %div1 = udiv i32 %3, 1000000
  %rem.lhs.trunc = trunc i32 %div to i16
  %rem102 = urem i16 %rem.lhs.trunc, 6
  %rem.zext = zext i16 %rem102 to i32
  %sub = sub nsw i32 %div, %rem.zext
  %and = and i32 %div, 8176
  %4 = tail call i32 @llvm.umax.i32(i32 %sub, i32 %and)
  %mul = mul i32 %4, 1000000
  %5 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %mul, ptr %req, align 4
  %rem3 = and i32 %4, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem3)
  %tobool.not = icmp eq i32 %rem3, 0
  br i1 %tobool.not, label %if.then4, label %if.else5

if.then4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %k = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %k to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 3, ptr %k, align 2
  br label %if.end19

if.else5:                                         ; preds = %entry
  %rem6 = urem i32 %4, 9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem6)
  %tobool7.not = icmp eq i32 %rem6, 0
  br i1 %tobool7.not, label %if.then8, label %if.else10

if.then8:                                         ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #12
  %k9 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 4
  %7 = ptrtoint ptr %k9 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 2, ptr %k9, align 2
  br label %if.end19

if.else10:                                        ; preds = %if.else5
  %rem11 = and i32 %4, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem11)
  %tobool12.not = icmp eq i32 %rem11, 0
  %k14 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 4
  br i1 %tobool12.not, label %if.then13, label %if.else15

if.then13:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %k14 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %k14, align 2
  br label %if.end19

if.else15:                                        ; preds = %if.else10
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %k14 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %k14, align 2
  br label %if.end19

if.end19:                                         ; preds = %if.else15, %if.then13, %if.then8, %if.then4
  %.frozen = freeze i32 %4
  %div26 = udiv i32 %.frozen, 6
  %10 = mul i32 %div26, 6
  %rem20.decomposed = sub i32 %.frozen, %10
  %11 = zext i32 %rem20.decomposed to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %rem20.decomposed, label %if.else25 [
    i32 2, label %if.end19.if.then24_crit_edge
    i32 4, label %if.end19.if.then24_crit_edge103
  ]

if.end19.if.then24_crit_edge103:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.end19.if.then24_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

if.then24:                                        ; preds = %if.end19.if.then24_crit_edge, %if.end19.if.then24_crit_edge103
  %m = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 5
  %12 = ptrtoint ptr %m to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 2, ptr %m, align 1
  br label %if.end34

if.else25:                                        ; preds = %if.end19
  %and27 = and i32 %div26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and27)
  %tobool28.not = icmp eq i32 %and27, 0
  %m32 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 5
  br i1 %tobool28.not, label %if.else31, label %if.then29

if.then29:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %m32 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 3, ptr %m32, align 1
  br label %if.end34

if.else31:                                        ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %m32 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %m32, align 1
  br label %if.end34

if.end34:                                         ; preds = %if.else31, %if.then29, %if.then24
  %m35 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 5
  %15 = ptrtoint ptr %m35 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %m35, align 1
  %conv = zext i8 %16 to i32
  %add = add nuw nsw i32 %conv, 1
  %mul36 = mul nsw i32 %add, %4
  %k37 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 4
  %17 = ptrtoint ptr %k37 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %k37, align 2
  %conv38 = zext i8 %18 to i32
  %add39 = add nuw nsw i32 %conv38, 1
  %mul40 = mul nuw nsw i32 %add39, %div1
  %div41 = udiv i32 %mul36, %mul40
  %19 = trunc i32 %div41 to i8
  %conv43 = add i8 %19, -1
  %n = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 3
  %20 = ptrtoint ptr %n to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %conv43, ptr %n, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 31, i8 %conv43)
  %cmp47 = icmp ult i8 %conv43, 31
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %cmp52.not = icmp eq i8 %16, 0
  %or.cond = select i1 %cmp47, i1 true, i1 %cmp52.not
  br i1 %or.cond, label %if.end34.if.end69_crit_edge, label %if.then54

if.end34.if.end69_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then54:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %conv45 = zext i8 %conv43 to i16
  %add46 = add nuw nsw i16 %conv45, 1
  %div58100 = lshr i16 %add46, 1
  %21 = trunc i16 %div58100 to i8
  %conv60 = add i8 %21, -1
  %22 = ptrtoint ptr %n to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 %conv60, ptr %n, align 1
  %conv63 = zext i8 %16 to i16
  %add64 = add nuw nsw i16 %conv63, 1
  %div65101 = lshr i16 %add64, 1
  %23 = trunc i16 %div65101 to i8
  %conv67 = add i8 %23, -1
  %24 = ptrtoint ptr %m35 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 %conv67, ptr %m35, align 1
  br label %if.end69

if.end69:                                         ; preds = %if.then54, %if.end34.if.end69_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun8i_a23_get_pll1_factors(ptr nocapture noundef %req) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %div1 = udiv i32 %1, 6000000
  %conv2 = and i32 %div1, 255
  %mul = mul nuw nsw i32 %conv2, 6000000
  store i32 %mul, ptr %req, align 4
  %m = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 5
  %2 = ptrtoint ptr %m to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %m, align 1
  %mul.fr = freeze i32 %mul
  call void @__sanitizer_cov_trace_const_cmp4(i32 767999999, i32 %mul.fr)
  %cmp = icmp ugt i32 %mul.fr, 767999999
  %trunc = trunc i32 %div1 to i8
  %3 = add i8 %trunc, -7
  %switch.and = and i8 %3, -3
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %switch.and)
  %switch.selectcmp = icmp eq i8 %switch.and, 0
  %narrow = select i1 %cmp, i1 true, i1 %switch.selectcmp
  %.sink = zext i1 %narrow to i8
  %k13 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %k13 to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %.sink, ptr %k13, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %conv2)
  %cmp15 = icmp ult i32 %conv2, 20
  br i1 %cmp15, label %entry.if.end40_crit_edge, label %lor.lhs.false17

entry.if.end40_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

lor.lhs.false17:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %conv2)
  %cmp19 = icmp ugt i32 %conv2, 31
  %and = and i32 %div1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %or.cond77 = or i1 %cmp19, %tobool.not
  br i1 %or.cond77, label %if.else23, label %lor.lhs.false17.if.end40_crit_edge

lor.lhs.false17.if.end40_crit_edge:               ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.else23:                                        ; preds = %lor.lhs.false17
  call void @__sanitizer_cov_trace_const_cmp4(i32 40, i32 %conv2)
  %cmp25 = icmp ult i32 %conv2, 40
  br i1 %cmp25, label %if.else23.if.end40_crit_edge, label %lor.lhs.false27

if.else23.if.end40_crit_edge:                     ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

lor.lhs.false27:                                  ; preds = %if.else23
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv2)
  %cmp29 = icmp ult i32 %conv2, 64
  %and33 = and i32 %div1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and33)
  %tobool34.not = icmp ne i32 %and33, 0
  %not.or.cond78 = and i1 %cmp29, %tobool34.not
  %spec.select = zext i1 %not.or.cond78 to i8
  br label %if.end40

if.end40:                                         ; preds = %lor.lhs.false27, %if.else23.if.end40_crit_edge, %lor.lhs.false17.if.end40_crit_edge, %entry.if.end40_crit_edge
  %.sink80 = phi i8 [ 2, %lor.lhs.false17.if.end40_crit_edge ], [ 2, %entry.if.end40_crit_edge ], [ 1, %if.else23.if.end40_crit_edge ], [ %spec.select, %lor.lhs.false27 ]
  %p36 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 6
  %5 = ptrtoint ptr %p36 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %.sink80, ptr %p36, align 4
  %conv42 = zext i8 %.sink80 to i32
  %shl = shl i32 %div1, %conv42
  %k45 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 4
  %6 = ptrtoint ptr %k45 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %k45, align 2
  %conv46 = zext i8 %7 to i16
  %add = add nuw nsw i16 %conv46, 1
  %8 = trunc i32 %shl to i16
  %div48.lhs.trunc = and i16 %8, 255
  %div4879 = udiv i16 %div48.lhs.trunc, %add
  %9 = lshr i16 %div4879, 2
  %10 = trunc i16 %9 to i8
  %conv52 = add nsw i8 %10, -1
  %n = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %n to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv52, ptr %n, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun4i_get_pll5_factors(ptr nocapture noundef %req) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %parent_rate = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_rate, align 4
  %div1 = udiv i32 %1, %3
  %conv3 = and i32 %div1, 255
  %mul = mul i32 %conv3, %3
  store i32 %mul, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %conv3)
  %cmp = icmp ult i32 %conv3, 31
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %k = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %k to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %k, align 2
  br label %if.end23

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %conv3)
  %cmp9 = icmp ult i32 %conv3, 62
  br i1 %cmp9, label %if.then11, label %if.else13

if.then11:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %k12 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 4
  %5 = ptrtoint ptr %k12 to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 1, ptr %k12, align 2
  br label %if.end23

if.else13:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp4(i32 93, i32 %conv3)
  %cmp16 = icmp ult i32 %conv3, 93
  %k19 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 4
  br i1 %cmp16, label %if.then18, label %if.else20

if.then18:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %k19 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 2, ptr %k19, align 2
  br label %if.end23

if.else20:                                        ; preds = %if.else13
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %k19 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 3, ptr %k19, align 2
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.then18, %if.then11, %if.then
  %k25 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 4
  %8 = ptrtoint ptr %k25 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %k25, align 2
  %conv26 = zext i8 %9 to i32
  %sub = add nuw nsw i32 %conv3, %conv26
  %div31.lhs.trunc = trunc i32 %sub to i16
  %10 = zext i8 %9 to i16
  %div31.rhs.trunc = add nuw nsw i16 %10, 1
  %div3148 = udiv i16 %div31.lhs.trunc, %div31.rhs.trunc
  %conv32 = trunc i16 %div3148 to i8
  %n = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 3
  %11 = ptrtoint ptr %n to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv32, ptr %n, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun5i_a13_get_ahb_factors(ptr nocapture noundef %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_rate = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %req, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = phi i32 [ %1, %if.then ], [ %3, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 8000, i32 %5)
  %cmp4 = icmp ult i32 %5, 8000
  br i1 %cmp4, label %if.end.if.end12.sink.split_crit_edge, label %if.end7

if.end.if.end12.sink.split_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.sink.split

if.end7:                                          ; preds = %if.end
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pr = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 300000000, i32 %.pr)
  %cmp9 = icmp ugt i32 %.pr, 300000000
  br i1 %cmp9, label %if.end7.if.end12.sink.split_crit_edge, label %if.end7.if.end12_crit_edge

if.end7.if.end12_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.end7.if.end12.sink.split_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12.sink.split

if.end12.sink.split:                              ; preds = %if.end7.if.end12.sink.split_crit_edge, %if.end.if.end12.sink.split_crit_edge
  %.sink = phi i32 [ 8000, %if.end.if.end12.sink.split_crit_edge ], [ 300000000, %if.end7.if.end12.sink.split_crit_edge ]
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %.sink, ptr %req, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.end12.sink.split, %if.end7.if.end12_crit_edge
  %8 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %req, align 4
  %add = add i32 %1, -1
  %sub = add i32 %add, %9
  %div16 = udiv i32 %sub, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %div16)
  %cmp.i = icmp ugt i32 %div16, 1
  %sub.i124 = add i32 %div16, -1
  %10 = tail call i32 @llvm.ctlz.i32(i32 %sub.i124, i1 true) #10, !range !167
  %add.i = sub nuw nsw i32 32, %10
  %11 = call i32 @llvm.umin.i32(i32 %add.i, i32 3)
  %12 = select i1 %cmp.i, i32 %11, i32 0
  %shr = lshr i32 %1, %12
  %13 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr, ptr %req, align 4
  %conv87 = trunc i32 %12 to i8
  %p = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 6
  %14 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv87, ptr %p, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun6i_get_ahb1_factors(ptr nocapture noundef %req) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_rate = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp = icmp ugt i32 %3, %1
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %req, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 4
  %add = add i32 %1, -1
  %sub = add i32 %add, %6
  %div7 = udiv i32 %sub, %6
  %parent_index = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 2
  %7 = ptrtoint ptr %parent_index to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %parent_index, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %8)
  %cmp9 = icmp eq i8 %8, 3
  %conv12 = and i32 %div7, 255
  br i1 %cmp9, label %if.then11, label %if.else39

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %conv12)
  %cmp13 = icmp ult i32 %conv12, 4
  br i1 %cmp13, label %if.then11.if.end30_crit_edge, label %if.else

if.then11.if.end30_crit_edge:                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.else:                                          ; preds = %if.then11
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %conv12)
  %cmp18 = icmp ult i32 %conv12, 8
  br i1 %cmp18, label %if.else.if.end30_crit_edge, label %if.else21

if.else.if.end30_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end30

if.else21:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %conv12)
  %cmp24 = icmp ult i32 %conv12, 16
  %. = select i1 %cmp24, i8 2, i8 3
  br label %if.end30

if.end30:                                         ; preds = %if.else21, %if.else.if.end30_crit_edge, %if.then11.if.end30_crit_edge
  %calcp.0 = phi i8 [ 0, %if.then11.if.end30_crit_edge ], [ 1, %if.else.if.end30_crit_edge ], [ %., %if.else21 ]
  %conv32 = zext i8 %calcp.0 to i32
  %shl = shl nuw nsw i32 1, %conv32
  %add33 = add nuw nsw i32 %shl, %conv12
  %9 = trunc i32 %add33 to i16
  %div3781.lhs.trunc = add nsw i16 %9, -1
  %div3781.rhs.trunc = trunc i32 %shl to i16
  %div378182 = udiv i16 %div3781.lhs.trunc, %div3781.rhs.trunc
  %10 = and i16 %div378182, 255
  %phi.cast78 = zext i16 %10 to i32
  br label %if.end47

if.else39:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = add nsw i32 %conv12, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool.not.i.i.i = icmp eq i32 %sub.i, 0
  %11 = tail call i32 @llvm.ctlz.i32(i32 %sub.i, i1 true) #10, !range !167
  %sub.i.i.i = sub nuw nsw i32 32, %11
  %sub.i.i.op.i = shl nuw i32 1, %sub.i.i.i
  %shl.i = select i1 %tobool.not.i.i.i, i32 1, i32 %sub.i.i.op.i
  %conv42 = and i32 %shl.i, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv42)
  %cmp43.not = icmp eq i32 %conv42, 0
  %phi.cast = trunc i32 %shl.i to i8
  %spec.select = select i1 %cmp43.not, i8 %phi.cast, i8 3
  %.pre = zext i8 %spec.select to i32
  br label %if.end47

if.end47:                                         ; preds = %if.else39, %if.end30
  %conv51.pre-phi = phi i32 [ %.pre, %if.else39 ], [ %conv32, %if.end30 ]
  %calcp.1 = phi i8 [ %spec.select, %if.else39 ], [ %calcp.0, %if.end30 ]
  %calcm.0 = phi i32 [ 1, %if.else39 ], [ %phi.cast78, %if.end30 ]
  %div50 = udiv i32 %1, %calcm.0
  %shr = lshr i32 %div50, %conv51.pre-phi
  %12 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %shr, ptr %req, align 4
  %p = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 6
  %13 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 %calcp.1, ptr %p, align 4
  %14 = trunc i32 %calcm.0 to i8
  %conv55 = add i8 %14, -1
  %m = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 5
  %15 = ptrtoint ptr %m to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv55, ptr %m, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun6i_ahb1_recalc(ptr nocapture noundef %req) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_rate = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %req, align 4
  %parent_index = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 2
  %3 = ptrtoint ptr %parent_index to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %parent_index, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %4)
  %cmp = icmp eq i8 %4, 3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %m = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 5
  %5 = ptrtoint ptr %m to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %m, align 1
  %conv2 = zext i8 %6 to i32
  %add = add nuw nsw i32 %conv2, 1
  %div = udiv i32 %1, %add
  %7 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %div, ptr %req, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %p = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 6
  %8 = ptrtoint ptr %p to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %p, align 4
  %conv4 = zext i8 %9 to i32
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %req, align 4
  %shr = lshr i32 %11, %conv4
  store i32 %shr, ptr %req, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun4i_get_apb1_factors(ptr nocapture noundef %req) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %parent_rate = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %parent_rate, align 4
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ult i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %1, ptr %req, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 4
  %add = add i32 %1, -1
  %sub = add i32 %add, %6
  %div6 = udiv i32 %sub, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %div6)
  %cmp7 = icmp sgt i32 %div6, 32
  br i1 %cmp7, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %div6)
  %cmp10 = icmp slt i32 %div6, 5
  br i1 %cmp10, label %if.end9.if.end20_crit_edge, label %if.else

if.end9.if.end20_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %div6)
  %cmp12 = icmp ult i32 %div6, 9
  br i1 %cmp12, label %if.else.if.end20_crit_edge, label %if.else14

if.else.if.end20_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end20

if.else14:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %div6)
  %cmp15 = icmp ult i32 %div6, 17
  %. = select i1 %cmp15, i8 2, i8 3
  br label %if.end20

if.end20:                                         ; preds = %if.else14, %if.else.if.end20_crit_edge, %if.end9.if.end20_crit_edge
  %calcp.0 = phi i8 [ 0, %if.end9.if.end20_crit_edge ], [ 1, %if.else.if.end20_crit_edge ], [ %., %if.else14 ]
  %conv = zext i8 %calcp.0 to i32
  %shr = ashr i32 %div6, %conv
  %7 = trunc i32 %shr to i8
  %conv22 = add i8 %7, -1
  %shr25 = lshr i32 %1, %conv
  %conv26 = zext i8 %conv22 to i32
  %add27 = add nuw nsw i32 %conv26, 1
  %div28 = udiv i32 %shr25, %add27
  %8 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div28, ptr %req, align 4
  %m = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 5
  %9 = ptrtoint ptr %m to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv22, ptr %m, align 1
  %p = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 6
  %10 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %calcp.0, ptr %p, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun7i_a20_get_out_factors(ptr nocapture noundef %req) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %parent_rate = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %req, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 4
  %add = add i32 %3, -1
  %sub = add i32 %add, %6
  %div6 = udiv i32 %sub, %6
  %conv7 = and i32 %div6, 255
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %conv7)
  %cmp8 = icmp ult i32 %conv7, 32
  br i1 %cmp8, label %if.end.if.end25_crit_edge, label %if.else

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %conv7)
  %cmp13 = icmp ult i32 %conv7, 64
  br i1 %cmp13, label %if.else.if.end25_crit_edge, label %if.else16

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end25

if.else16:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 128, i32 %conv7)
  %cmp19 = icmp ult i32 %conv7, 128
  %. = select i1 %cmp19, i8 2, i8 3
  br label %if.end25

if.end25:                                         ; preds = %if.else16, %if.else.if.end25_crit_edge, %if.end.if.end25_crit_edge
  %calcp.0 = phi i8 [ 0, %if.end.if.end25_crit_edge ], [ 1, %if.else.if.end25_crit_edge ], [ %., %if.else16 ]
  %conv27 = zext i8 %calcp.0 to i32
  %shl = shl nuw nsw i32 1, %conv27
  %add28 = add nuw nsw i32 %shl, %conv7
  %7 = trunc i32 %add28 to i16
  %div3261.lhs.trunc = add nsw i16 %7, -1
  %div3261.rhs.trunc = trunc i32 %shl to i16
  %div326162 = udiv i16 %div3261.lhs.trunc, %div3261.rhs.trunc
  %shr = lshr i32 %3, %conv27
  %8 = and i16 %div326162, 255
  %conv36 = zext i16 %8 to i32
  %div37 = udiv i32 %shr, %conv36
  %9 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %div37, ptr %req, align 4
  %10 = trunc i16 %div326162 to i8
  %conv41 = add i8 %10, -1
  %m = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 5
  %11 = ptrtoint ptr %m to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %conv41, ptr %m, align 1
  %p = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 6
  %12 = ptrtoint ptr %p to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %calcp.0, ptr %p, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_mux_clk_setup(ptr noundef %node, ptr nocapture noundef readonly %data, i32 noundef %flags) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %clk_name = alloca ptr, align 4
  %parents = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #10
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %2 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk_name, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %parents) #10
  %3 = call ptr @memset(ptr %parents, i32 255, i32 20)
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %node) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @of_clk_parent_fill(ptr noundef %node, ptr noundef nonnull %parents, i32 noundef 5) #10
  %call3 = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.6, ptr noundef nonnull %clk_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.5, ptr noundef %node) #14
  br label %out_unmap

if.end11:                                         ; preds = %if.end
  %4 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk_name, align 4
  %conv = trunc i32 %call2 to i8
  %or = or i32 %flags, 4
  %6 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %data, align 1
  %call13 = call ptr @clk_register_mux_table(ptr noundef null, ptr noundef %5, ptr noundef nonnull %parents, i8 noundef zeroext %conv, i32 noundef %or, ptr noundef nonnull %call, i8 noundef zeroext %7, i32 noundef 3, i8 noundef zeroext 0, ptr noundef null, ptr noundef nonnull @clk_lock) #10
  %cmp.i = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end18, label %if.end22

do.end18:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %8 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk_name, align 4
  %10 = ptrtoint ptr %call13 to i32
  %call21 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.5, ptr noundef %9, i32 noundef %10) #14
  br label %out_unmap

if.end22:                                         ; preds = %if.end11
  %call23 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call13) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call23)
  %tobool24.not = icmp eq i32 %call23, 0
  br i1 %tobool24.not, label %if.end22.cleanup_crit_edge, label %do.end28

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end28:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #12
  %11 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_name, align 4
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.5, ptr noundef %12) #14
  call void @clk_unregister_divider(ptr noundef %call13) #10
  br label %out_unmap

out_unmap:                                        ; preds = %do.end28, %do.end18, %do.end8
  call void @iounmap(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %out_unmap, %if.end22.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %parents) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_mux_table(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i32 noundef, ptr noundef, i8 noundef zeroext, i32 noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unregister_divider(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_divider_clk_setup(ptr noundef %node, ptr nocapture noundef readonly %data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %clk_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #10
  %0 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %node, align 4
  %2 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %clk_name, align 4
  %call = tail call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #10
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %node) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #10
  %call3 = call i32 @of_property_read_string(ptr noundef %node, ptr noundef nonnull @.str.6, ptr noundef nonnull %clk_name) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool4.not = icmp eq i32 %call3, 0
  br i1 %tobool4.not, label %if.end11, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.8, ptr noundef nonnull @.str.16, ptr noundef %node) #14
  br label %out_unmap

if.end11:                                         ; preds = %if.end
  %3 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %clk_name, align 4
  %5 = ptrtoint ptr %data to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %data, align 4
  %width = getelementptr inbounds %struct.div_data, ptr %data, i32 0, i32 2
  %7 = ptrtoint ptr %width to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %width, align 2
  %pow = getelementptr inbounds %struct.div_data, ptr %data, i32 0, i32 1
  %9 = ptrtoint ptr %pow to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %pow, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool12.not = icmp eq i8 %10, 0
  %conv13 = select i1 %tobool12.not, i8 0, i8 2
  %table = getelementptr inbounds %struct.div_data, ptr %data, i32 0, i32 3
  %11 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %table, align 4
  %call14 = call ptr @clk_register_divider_table(ptr noundef null, ptr noundef %4, ptr noundef %call2, i32 noundef 0, ptr noundef nonnull %call, i8 noundef zeroext %6, i8 noundef zeroext %8, i8 noundef zeroext %conv13, ptr noundef %12, ptr noundef nonnull @clk_lock) #10
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end19, label %if.end23

do.end19:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %13 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_name, align 4
  %15 = ptrtoint ptr %call14 to i32
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, ptr noundef nonnull @.str.16, ptr noundef %14, i32 noundef %15) #14
  br label %out_unmap

if.end23:                                         ; preds = %if.end11
  %call24 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  %16 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %clk_name, align 4
  br i1 %tobool25.not, label %if.end32, label %do.end29

do.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.16, ptr noundef %17) #14
  br label %out_unregister

if.end32:                                         ; preds = %if.end23
  %call33 = call i32 @clk_register_clkdev(ptr noundef %call14, ptr noundef %17, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end32.cleanup_crit_edge, label %if.then35

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  call void @of_clk_del_provider(ptr noundef %node) #10
  br label %out_unregister

out_unregister:                                   ; preds = %if.then35, %do.end29
  call void @clk_unregister_divider(ptr noundef %call14) #10
  br label %out_unmap

out_unmap:                                        ; preds = %out_unregister, %do.end19, %do.end8
  call void @iounmap(ptr noundef nonnull %call) #10
  br label %cleanup

cleanup:                                          ; preds = %out_unmap, %if.end32.cleanup_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_divider_table(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_register_clkdev(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_clk_del_provider(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sunxi_divs_clk_setup(ptr noundef %node, ptr nocapture noundef readonly %data) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent = alloca ptr, align 4
  %clk_name = alloca ptr, align 4
  %factors = alloca %struct.factors_data, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent) #10
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #10
  %0 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name, align 4, !annotation !168
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %factors) #10
  %1 = getelementptr inbounds %struct.factors_data, ptr %factors, i32 0, i32 6
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = call ptr @memcpy(ptr %factors, ptr %3, i32 28)
  %ndivs2 = getelementptr inbounds %struct.divs_data, ptr %data, i32 0, i32 1
  %5 = ptrtoint ptr %ndivs2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ndivs2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  %spec.select = select i1 %tobool.not, i32 4, i32 %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %spec.select)
  %cmp24 = icmp sgt i32 %spec.select, 0
  br i1 %cmp24, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.divs_data, ptr %data, i32 0, i32 2, i32 %i.025
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool4.not = icmp eq i8 %8, 0
  br i1 %tobool4.not, label %for.inc, label %if.then5

if.then5:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.6, ptr noundef %1, i32 noundef 1, i32 noundef %i.025) #10
  br label %for.end

for.inc:                                          ; preds = %for.body
  %inc = add nuw nsw i32 %i.025, 1
  %exitcond.not = icmp eq i32 %inc, %spec.select
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then5, %entry.for.end_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %cmp8 = icmp eq ptr %10, null
  br i1 %cmp8, label %if.then9, label %for.end.if.end21_crit_edge

for.end.if.end21_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

if.then9:                                         ; preds = %for.end
  %call.i1 = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.6, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef 0) #10
  %11 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk_name, align 4
  %call11 = call ptr @strchr(ptr noundef %12, i32 noundef 95)
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %if.then9.cleanup.thread_crit_edge, label %if.then13

if.then9.cleanup.thread_crit_edge:                ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then13:                                        ; preds = %if.then9
  %sub.ptr.lhs.cast = ptrtoint ptr %call11 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %12 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %call14 = call ptr @kstrndup(ptr noundef %12, i32 noundef %sub.ptr.sub, i32 noundef 3264) #10
  %tobool15.not = icmp eq ptr %call14, null
  br i1 %tobool15.not, label %if.then13.cleanup155_crit_edge, label %if.then13.cleanup.thread_crit_edge

if.then13.cleanup.thread_crit_edge:               ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

if.then13.cleanup155_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup155

cleanup.thread:                                   ; preds = %if.then13.cleanup.thread_crit_edge, %if.then9.cleanup.thread_crit_edge
  %storemerge = phi ptr [ %call14, %if.then13.cleanup.thread_crit_edge ], [ %12, %if.then9.cleanup.thread_crit_edge ]
  %derived_name.0 = phi ptr [ %call14, %if.then13.cleanup.thread_crit_edge ], [ null, %if.then9.cleanup.thread_crit_edge ]
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %storemerge, ptr %1, align 4
  br label %if.end21

if.end21:                                         ; preds = %cleanup.thread, %for.end.if.end21_crit_edge
  %derived_name.2 = phi ptr [ null, %for.end.if.end21_crit_edge ], [ %derived_name.0, %cleanup.thread ]
  %call22 = call fastcc ptr @sunxi_factors_clk_setup(ptr noundef %node, ptr noundef nonnull %factors) #13
  %tobool23.not = icmp eq ptr %call22, null
  br i1 %tobool23.not, label %if.end21.cleanup155_crit_edge, label %if.end25

if.end21.cleanup155_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup155

if.end25:                                         ; preds = %if.end21
  %call26 = call ptr @__clk_get_name(ptr noundef nonnull %call22) #10
  %14 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call26, ptr %parent, align 4
  call void @kfree(ptr noundef %derived_name.2) #10
  %call27 = call ptr @of_iomap(ptr noundef %node, i32 noundef 0) #10
  %tobool28.not = icmp eq ptr %call27, null
  br i1 %tobool28.not, label %do.end, label %if.end31

do.end:                                           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %call30 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, ptr noundef %node) #14
  br label %cleanup155

if.end31:                                         ; preds = %if.end25
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3264, i32 noundef 8) #15
  %tobool33.not = icmp eq ptr %call7.i, null
  br i1 %tobool33.not, label %if.end31.out_unmap_crit_edge, label %if.end35

if.end31.out_unmap_crit_edge:                     ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %out_unmap

if.end35:                                         ; preds = %if.end31
  %16 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %spec.select, i32 4) #10
  %17 = extractvalue { i32, i1 } %16, 1
  br i1 %17, label %if.end35.free_clkdata_crit_edge, label %if.end7.i.i, !prof !169

if.end35.free_clkdata_crit_edge:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_clkdata

if.end7.i.i:                                      ; preds = %if.end35
  %18 = extractvalue { i32, i1 } %16, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #16
  %tobool37.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool37.not, label %if.end7.i.i.free_clkdata_crit_edge, label %if.end39

if.end7.i.i.free_clkdata_crit_edge:               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_clkdata

if.end39:                                         ; preds = %if.end7.i.i
  %19 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i.i, ptr %call7.i, align 8
  %20 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent, align 4
  %call41 = call i32 @strcmp(ptr noundef nonnull dereferenceable(5) @.str.26, ptr noundef %21) #17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41)
  %tobool42.not = icmp eq i32 %call41, 0
  %cond = select i1 %tobool42.not, i32 0, i32 4
  br i1 %cmp24, label %if.end39.for.body45_crit_edge, label %if.end39.for.end145_crit_edge

if.end39.for.end145_crit_edge:                    ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end145

if.end39.for.body45_crit_edge:                    ; preds = %if.end39
  br label %for.body45

for.body45:                                       ; preds = %for.inc143.for.body45_crit_edge, %if.end39.for.body45_crit_edge
  %i.128 = phi i32 [ %inc144, %for.inc143.for.body45_crit_edge ], [ 0, %if.end39.for.body45_crit_edge ]
  %gate.027 = phi ptr [ %gate.2, %for.inc143.for.body45_crit_edge ], [ null, %if.end39.for.body45_crit_edge ]
  %call.i2 = call i32 @of_property_read_string_helper(ptr noundef %node, ptr noundef nonnull @.str.6, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef %i.128) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i2)
  %cmp47.not = icmp sgt i32 %call.i2, -1
  br i1 %cmp47.not, label %if.end49, label %for.body45.for.end145_crit_edge

for.body45.for.end145_crit_edge:                  ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end145

if.end49:                                         ; preds = %for.body45
  %arrayidx51 = getelementptr %struct.divs_data, ptr %data, i32 0, i32 2, i32 %i.128
  %22 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %arrayidx51, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool53.not = icmp eq i8 %23, 0
  br i1 %tobool53.not, label %if.end57, label %if.then54

if.then54:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %call7.i, align 8
  %arrayidx56 = getelementptr ptr, ptr %25, i32 %i.128
  %26 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call22, ptr %arrayidx56, align 4
  br label %for.inc143

if.end57:                                         ; preds = %if.end49
  %gate60 = getelementptr %struct.divs_data, ptr %data, i32 0, i32 2, i32 %i.128, i32 5
  %27 = ptrtoint ptr %gate60 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %gate60, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool61.not = icmp eq i8 %28, 0
  br i1 %tobool61.not, label %if.end57.if.end71_crit_edge, label %if.then62

if.end57.if.end71_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then62:                                        ; preds = %if.end57
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %29 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %29, i32 noundef 3520, i32 noundef 24) #15
  %tobool64.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool64.not, label %if.then62.free_clks_crit_edge, label %if.end66

if.then62.free_clks_crit_edge:                    ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_clks

if.end66:                                         ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #12
  %reg67 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 1
  %30 = ptrtoint ptr %reg67 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call27, ptr %reg67, align 4
  %31 = ptrtoint ptr %gate60 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %gate60, align 2
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 2
  %33 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %bit_idx, align 8
  %lock = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @clk_lock, ptr %lock, align 4
  br label %if.end71

if.end71:                                         ; preds = %if.end66, %if.end57.if.end71_crit_edge
  %gate_hw.0 = phi ptr [ %call7.i.i, %if.end66 ], [ null, %if.end57.if.end71_crit_edge ]
  %gate.1 = phi ptr [ %call7.i.i, %if.end66 ], [ %gate.027, %if.end57.if.end71_crit_edge ]
  %fixed = getelementptr %struct.divs_data, ptr %data, i32 0, i32 2, i32 %i.128, i32 1
  %35 = ptrtoint ptr %fixed to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %fixed, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool74.not = icmp eq i8 %36, 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %37 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  br i1 %tobool74.not, label %if.else85, label %if.then75

if.then75:                                        ; preds = %if.end71
  %call7.i.i7 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 20) #15
  %tobool77.not = icmp eq ptr %call7.i.i7, null
  br i1 %tobool77.not, label %if.then75.free_gate_crit_edge, label %if.end79

if.then75.free_gate_crit_edge:                    ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_gate

if.end79:                                         ; preds = %if.then75
  call void @__sanitizer_cov_trace_pc() #12
  %mult = getelementptr inbounds %struct.clk_fixed_factor, ptr %call7.i.i7, i32 0, i32 1
  %38 = ptrtoint ptr %mult to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 1, ptr %mult, align 4
  %39 = ptrtoint ptr %fixed to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %fixed, align 1
  %conv = zext i8 %40 to i32
  %div83 = getelementptr inbounds %struct.clk_fixed_factor, ptr %call7.i.i7, i32 0, i32 2
  %41 = ptrtoint ptr %div83 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %conv, ptr %div83, align 8
  br label %if.end106

if.else85:                                        ; preds = %if.end71
  %call7.i.i10 = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %37, i32 noundef 3520, i32 noundef 28) #15
  %tobool87.not = icmp eq ptr %call7.i.i10, null
  br i1 %tobool87.not, label %if.else85.free_gate_crit_edge, label %if.end89

if.else85.free_gate_crit_edge:                    ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #12
  br label %free_gate

if.end89:                                         ; preds = %if.else85
  call void @__sanitizer_cov_trace_pc() #12
  %pow = getelementptr %struct.divs_data, ptr %data, i32 0, i32 2, i32 %i.128, i32 4
  %42 = ptrtoint ptr %pow to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %pow, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool93.not = icmp eq i8 %43, 0
  %reg95 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i10, i32 0, i32 1
  %44 = ptrtoint ptr %reg95 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call27, ptr %reg95, align 4
  %shift = getelementptr %struct.divs_data, ptr %data, i32 0, i32 2, i32 %i.128, i32 3
  %45 = ptrtoint ptr %shift to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %shift, align 4
  %shift98 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i10, i32 0, i32 2
  %47 = ptrtoint ptr %shift98 to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 %46, ptr %shift98, align 8
  %width = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i10, i32 0, i32 3
  %48 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 2, ptr %width, align 1
  %conv99 = select i1 %tobool93.not, i8 0, i8 2
  %flags100 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i10, i32 0, i32 4
  %49 = ptrtoint ptr %flags100 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %conv99, ptr %flags100, align 2
  %lock101 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i10, i32 0, i32 6
  %50 = ptrtoint ptr %lock101 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @clk_lock, ptr %lock101, align 8
  %table = getelementptr %struct.divs_data, ptr %data, i32 0, i32 2, i32 %i.128, i32 2
  %51 = ptrtoint ptr %table to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %table, align 4
  %table104 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i10, i32 0, i32 5
  %53 = ptrtoint ptr %table104 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %table104, align 4
  br label %if.end106

if.end106:                                        ; preds = %if.end89, %if.end79
  %rate_hw.0 = phi ptr [ %call7.i.i7, %if.end79 ], [ %call7.i.i10, %if.end89 ]
  %rate_ops.0 = phi ptr [ @clk_fixed_factor_ops, %if.end79 ], [ @clk_divider_ops, %if.end89 ]
  %54 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %clk_name, align 4
  %critical = getelementptr %struct.divs_data, ptr %data, i32 0, i32 2, i32 %i.128, i32 6
  %56 = ptrtoint ptr %critical to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %critical, align 1, !range !170
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool109.not = icmp eq i8 %57, 0
  %cond111 = select i1 %tobool109.not, i32 0, i32 2048
  %or = or i32 %cond111, %cond
  %call112 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %55, ptr noundef nonnull %parent, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %rate_hw.0, ptr noundef nonnull %rate_ops.0, ptr noundef %gate_hw.0, ptr noundef nonnull @clk_gate_ops, i32 noundef %or) #10
  %arrayidx113 = getelementptr ptr, ptr %call8.i.i, i32 %i.128
  %58 = ptrtoint ptr %arrayidx113 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %call112, ptr %arrayidx113, align 4
  %59 = ptrtoint ptr %call7.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %call7.i, align 8
  %arrayidx115 = getelementptr ptr, ptr %60, i32 %i.128
  %61 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx115, align 4
  %cmp.i = icmp ugt ptr %62, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end129, label %if.end106.for.inc143_crit_edge, !prof !169

if.end106.for.inc143_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc143

do.end129:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.2, i32 noundef 1086, i32 noundef 9, ptr noundef null) #10
  br label %for.inc143

for.inc143:                                       ; preds = %do.end129, %if.end106.for.inc143_crit_edge, %if.then54
  %gate.2 = phi ptr [ %gate.027, %if.then54 ], [ %gate.1, %do.end129 ], [ %gate.1, %if.end106.for.inc143_crit_edge ]
  %inc144 = add nuw nsw i32 %i.128, 1
  %exitcond34.not = icmp eq i32 %inc144, %spec.select
  br i1 %exitcond34.not, label %for.inc143.for.end145_crit_edge, label %for.inc143.for.body45_crit_edge

for.inc143.for.body45_crit_edge:                  ; preds = %for.inc143
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body45

for.inc143.for.end145_crit_edge:                  ; preds = %for.inc143
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end145

for.end145:                                       ; preds = %for.inc143.for.end145_crit_edge, %for.body45.for.end145_crit_edge, %if.end39.for.end145_crit_edge
  %gate.0.lcssa = phi ptr [ null, %if.end39.for.end145_crit_edge ], [ %gate.027, %for.body45.for.end145_crit_edge ], [ %gate.2, %for.inc143.for.end145_crit_edge ]
  %i.1.lcssa = phi i32 [ 0, %if.end39.for.end145_crit_edge ], [ %i.128, %for.body45.for.end145_crit_edge ], [ %spec.select, %for.inc143.for.end145_crit_edge ]
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i, i32 0, i32 1
  %63 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %i.1.lcssa, ptr %clk_num, align 4
  %call146 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call7.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call146)
  %tobool147.not = icmp eq i32 %call146, 0
  br i1 %tobool147.not, label %for.end145.cleanup155_crit_edge, label %do.end151

for.end145.cleanup155_crit_edge:                  ; preds = %for.end145
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup155

do.end151:                                        ; preds = %for.end145
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk_name, align 4
  %call153 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.25, ptr noundef %65) #14
  br label %free_gate

free_gate:                                        ; preds = %do.end151, %if.else85.free_gate_crit_edge, %if.then75.free_gate_crit_edge
  %gate.3 = phi ptr [ %gate.0.lcssa, %do.end151 ], [ %gate.1, %if.then75.free_gate_crit_edge ], [ %gate.1, %if.else85.free_gate_crit_edge ]
  call void @kfree(ptr noundef %gate.3) #10
  br label %free_clks

free_clks:                                        ; preds = %free_gate, %if.then62.free_clks_crit_edge
  call void @kfree(ptr noundef nonnull %call8.i.i) #10
  br label %free_clkdata

free_clkdata:                                     ; preds = %free_clks, %if.end7.i.i.free_clkdata_crit_edge, %if.end35.free_clkdata_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i) #10
  br label %out_unmap

out_unmap:                                        ; preds = %free_clkdata, %if.end31.out_unmap_crit_edge
  call void @iounmap(ptr noundef nonnull %call27) #10
  br label %cleanup155

cleanup155:                                       ; preds = %out_unmap, %for.end145.cleanup155_crit_edge, %do.end, %if.end21.cleanup155_crit_edge, %if.then13.cleanup155_crit_edge
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %factors) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent) #10
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kstrndup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun6i_a31_get_pll6_factors(ptr nocapture noundef %req) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %parent_rate = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_rate, align 4
  %div1 = udiv i32 %1, %3
  %conv3 = and i32 %div1, 255
  %mul = mul i32 %conv3, %3
  store i32 %mul, ptr %req, align 4
  %div633 = lshr i32 %conv3, 5
  %conv7 = trunc i32 %div633 to i8
  call void @__sanitizer_cov_trace_const_cmp4(i32 127, i32 %conv3)
  %cmp = icmp ugt i32 %conv3, 127
  %spec.select = select i1 %cmp, i8 3, i8 %conv7
  %k = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %k to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 %spec.select, ptr %k, align 2
  %conv14 = zext i8 %spec.select to i32
  %sub = add nuw nsw i32 %conv3, %conv14
  %div19.lhs.trunc = trunc i32 %sub to i16
  %narrow = add nuw nsw i8 %spec.select, 1
  %div19.rhs.trunc = zext i8 %narrow to i16
  %div1934 = udiv i16 %div19.lhs.trunc, %div19.rhs.trunc
  %5 = trunc i16 %div1934 to i8
  %conv21 = add i8 %5, -1
  %n = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %n to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv21, ptr %n, align 1
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun6i_display_factors(ptr nocapture noundef %req) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 4
  %parent_rate = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %parent_rate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %parent_rate, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp = icmp ugt i32 %1, %3
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %req to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %req, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %5 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %req, align 4
  %add = add i32 %3, -1
  %sub = add i32 %add, %6
  %div = udiv i32 %sub, %6
  %conv7 = and i32 %div, 255
  %div8 = udiv i32 %3, %conv7
  store i32 %div8, ptr %req, align 4
  %7 = trunc i32 %div to i8
  %conv12 = add i8 %7, -1
  %m13 = getelementptr inbounds %struct.factors_request, ptr %req, i32 0, i32 5
  %8 = ptrtoint ptr %m13 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv12, ptr %m13, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !41, !42, !43, !44, !46, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !82, !83, !84, !86, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !102, !104, !106, !107, !108, !110, !111, !113, !114, !115, !117, !118, !120, !122, !124, !126, !128, !130, !132, !133, !134, !135, !137, !139, !140, !142, !144, !146, !148, !150, !152, !154, !156}
!llvm.module.flags = !{!158, !159, !160, !161, !162, !163, !164, !165}
!llvm.ident = !{!166}

!0 = !{ptr @__of_table_sun4i_pll1, !1, !"__of_table_sun4i_pll1", i1 false, i1 false}
!1 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 575, i32 1}
!2 = !{ptr @__of_table_sun6i_pll1, !3, !"__of_table_sun6i_pll1", i1 false, i1 false}
!3 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 582, i32 1}
!4 = !{ptr @__of_table_sun8i_pll1, !5, !"__of_table_sun8i_pll1", i1 false, i1 false}
!5 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 589, i32 1}
!6 = !{ptr @__of_table_sun7i_pll4, !7, !"__of_table_sun7i_pll4", i1 false, i1 false}
!7 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 596, i32 1}
!8 = !{ptr @__of_table_sun5i_ahb, !9, !"__of_table_sun5i_ahb", i1 false, i1 false}
!9 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 603, i32 1}
!10 = !{ptr @__of_table_sun6i_a31_ahb1, !11, !"__of_table_sun6i_a31_ahb1", i1 false, i1 false}
!11 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 610, i32 1}
!12 = !{ptr @__of_table_sun4i_apb1, !13, !"__of_table_sun4i_apb1", i1 false, i1 false}
!13 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 617, i32 1}
!14 = !{ptr @__of_table_sun7i_out, !15, !"__of_table_sun7i_out", i1 false, i1 false}
!15 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 624, i32 1}
!16 = !{ptr @__of_table_sun4i_cpu, !17, !"__of_table_sun4i_cpu", i1 false, i1 false}
!17 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 702, i32 1}
!18 = !{ptr @__of_table_sun6i_ahb1_mux, !19, !"__of_table_sun6i_ahb1_mux", i1 false, i1 false}
!19 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 709, i32 1}
!20 = !{ptr @__of_table_sun8i_ahb2, !21, !"__of_table_sun8i_ahb2", i1 false, i1 false}
!21 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 716, i32 1}
!22 = !{ptr @__of_table_sun4i_ahb, !23, !"__of_table_sun4i_ahb", i1 false, i1 false}
!23 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 830, i32 1}
!24 = !{ptr @__of_table_sun4i_apb0, !25, !"__of_table_sun4i_apb0", i1 false, i1 false}
!25 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 837, i32 1}
!26 = !{ptr @__of_table_sun4i_axi, !27, !"__of_table_sun4i_axi", i1 false, i1 false}
!27 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 844, i32 1}
!28 = !{ptr @__of_table_sun8i_axi, !29, !"__of_table_sun8i_axi", i1 false, i1 false}
!29 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 851, i32 1}
!30 = !{ptr @__of_table_sun4i_pll5, !31, !"__of_table_sun4i_pll5", i1 false, i1 false}
!31 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 1114, i32 1}
!32 = !{ptr @__of_table_sun4i_pll6, !33, !"__of_table_sun4i_pll6", i1 false, i1 false}
!33 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 1121, i32 1}
!34 = !{ptr @__of_table_sun6i_pll6, !35, !"__of_table_sun6i_pll6", i1 false, i1 false}
!35 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 1128, i32 1}
!36 = !{ptr @__of_table_sun6i_display, !37, !"__of_table_sun6i_display", i1 false, i1 false}
!37 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 1166, i32 1}
!38 = !{ptr @.str, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 563, i32 3}
!40 = !{ptr @.str.1, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.2, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @sunxi_factors_clk_setup._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @sunxi_factors_clk_setup._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.3, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 21, i32 8}
!46 = !{ptr @clk_lock, !45, !"clk_lock", i1 false, i1 false}
!47 = !{ptr @sun4i_pll1_data, !48, !"sun4i_pll1_data", i1 false, i1 false}
!48 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 490, i32 34}
!49 = !{ptr @sun4i_pll1_config, !50, !"sun4i_pll1_config", i1 false, i1 false}
!50 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 415, i32 40}
!51 = !{ptr @sun6i_a31_pll1_data, !52, !"sun6i_a31_pll1_data", i1 false, i1 false}
!52 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 496, i32 34}
!53 = !{ptr @sun6i_a31_pll1_config, !54, !"sun6i_a31_pll1_config", i1 false, i1 false}
!54 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 426, i32 40}
!55 = !{ptr @sun8i_a23_pll1_data, !56, !"sun8i_a23_pll1_data", i1 false, i1 false}
!56 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 502, i32 34}
!57 = !{ptr @sun8i_a23_pll1_config, !58, !"sun8i_a23_pll1_config", i1 false, i1 false}
!58 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 436, i32 40}
!59 = !{ptr @sun7i_a20_pll4_data, !60, !"sun7i_a20_pll4_data", i1 false, i1 false}
!60 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 508, i32 34}
!61 = !{ptr @sun4i_pll5_config, !62, !"sun4i_pll5_config", i1 false, i1 false}
!62 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 448, i32 40}
!63 = !{ptr @sun5i_a13_ahb_data, !64, !"sun5i_a13_ahb_data", i1 false, i1 false}
!64 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 526, i32 34}
!65 = !{ptr @sun5i_a13_ahb_config, !66, !"sun5i_a13_ahb_config", i1 false, i1 false}
!66 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 463, i32 40}
!67 = !{ptr @sun6i_ahb1_data, !68, !"sun6i_ahb1_data", i1 false, i1 false}
!68 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 533, i32 34}
!69 = !{ptr @sun6i_ahb1_config, !70, !"sun6i_ahb1_config", i1 false, i1 false}
!70 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 468, i32 40}
!71 = !{ptr @sun4i_apb1_data, !72, !"sun4i_apb1_data", i1 false, i1 false}
!72 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 541, i32 34}
!73 = !{ptr @sun4i_apb1_config, !74, !"sun4i_apb1_config", i1 false, i1 false}
!74 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 475, i32 40}
!75 = !{ptr @sun7i_a20_out_data, !76, !"sun7i_a20_out_data", i1 false, i1 false}
!76 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 548, i32 34}
!77 = !{ptr @sun7i_a20_out_config, !78, !"sun7i_a20_out_config", i1 false, i1 false}
!78 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 483, i32 40}
!79 = !{ptr @.str.4, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 662, i32 3}
!81 = !{ptr @.str.5, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @sunxi_mux_clk_setup._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @sunxi_mux_clk_setup._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.6, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 667, i32 36}
!86 = !{ptr @.str.8, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 668, i32 3}
!88 = !{ptr @sunxi_mux_clk_setup._entry.7, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @sunxi_mux_clk_setup._entry_ptr.9, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.11, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 679, i32 3}
!92 = !{ptr @sunxi_mux_clk_setup._entry.10, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @sunxi_mux_clk_setup._entry_ptr.12, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.14, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 685, i32 3}
!96 = !{ptr @sunxi_mux_clk_setup._entry.13, !95, !"_entry", i1 false, i1 false}
!97 = !{ptr @sunxi_mux_clk_setup._entry_ptr.15, !95, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @sun4i_cpu_mux_data, !99, !"sun4i_cpu_mux_data", i1 false, i1 false}
!99 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 638, i32 30}
!100 = !{ptr @sun6i_a31_ahb1_mux_data, !101, !"sun6i_a31_ahb1_mux_data", i1 false, i1 false}
!101 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 642, i32 30}
!102 = !{ptr @sun8i_h3_ahb2_mux_data, !103, !"sun8i_h3_ahb2_mux_data", i1 false, i1 false}
!103 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 646, i32 30}
!104 = !{ptr @.str.16, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 785, i32 3}
!106 = !{ptr @sunxi_divider_clk_setup._entry, !105, !"_entry", i1 false, i1 false}
!107 = !{ptr @sunxi_divider_clk_setup._entry_ptr, !105, !"_entry_ptr", i1 false, i1 false}
!108 = !{ptr @sunxi_divider_clk_setup._entry.17, !109, !"_entry", i1 false, i1 false}
!109 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 792, i32 3}
!110 = !{ptr @sunxi_divider_clk_setup._entry_ptr.18, !109, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.20, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 802, i32 3}
!113 = !{ptr @sunxi_divider_clk_setup._entry.19, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @sunxi_divider_clk_setup._entry_ptr.21, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @sunxi_divider_clk_setup._entry.22, !116, !"_entry", i1 false, i1 false}
!116 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 808, i32 3}
!117 = !{ptr @sunxi_divider_clk_setup._entry_ptr.23, !116, !"_entry_ptr", i1 false, i1 false}
!118 = !{ptr @sun4i_ahb_data, !119, !"sun4i_ahb_data", i1 false, i1 false}
!119 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 754, i32 30}
!120 = !{ptr @sun4i_apb0_data, !121, !"sun4i_apb0_data", i1 false, i1 false}
!121 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 768, i32 30}
!122 = !{ptr @sun4i_apb0_table, !123, !"sun4i_apb0_table", i1 false, i1 false}
!123 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 760, i32 35}
!124 = !{ptr @sun4i_axi_data, !125, !"sun4i_axi_data", i1 false, i1 false}
!125 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 731, i32 30}
!126 = !{ptr @sun8i_a23_axi_data, !127, !"sun8i_a23_axi_data", i1 false, i1 false}
!127 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 749, i32 30}
!128 = !{ptr @sun8i_a23_axi_table, !129, !"sun8i_a23_axi_table", i1 false, i1 false}
!129 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 737, i32 35}
!130 = !{ptr @.str.24, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 1001, i32 3}
!132 = !{ptr @.str.25, !131, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @sunxi_divs_clk_setup._entry, !131, !"_entry", i1 false, i1 false}
!134 = !{ptr @sunxi_divs_clk_setup._entry_ptr, !131, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.26, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 1017, i32 21}
!137 = !{ptr @sunxi_divs_clk_setup._entry.27, !138, !"_entry", i1 false, i1 false}
!138 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 1093, i32 3}
!139 = !{ptr @sunxi_divs_clk_setup._entry_ptr.28, !138, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @pll5_divs_data, !141, !"pll5_divs_data", i1 false, i1 false}
!141 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 901, i32 31}
!142 = !{ptr @sun4i_pll5_data, !143, !"sun4i_pll5_data", i1 false, i1 false}
!143 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 514, i32 34}
!144 = !{ptr @pll6_divs_data, !145, !"pll6_divs_data", i1 false, i1 false}
!145 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 912, i32 31}
!146 = !{ptr @pll6_sata_tbl, !147, !"pll6_sata_tbl", i1 false, i1 false}
!147 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 893, i32 29}
!148 = !{ptr @sun6i_a31_pll6_divs_data, !149, !"sun6i_a31_pll6_divs_data", i1 false, i1 false}
!149 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 923, i32 31}
!150 = !{ptr @sun6i_a31_pll6_data, !151, !"sun6i_a31_pll6_data", i1 false, i1 false}
!151 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 520, i32 34}
!152 = !{ptr @sun6i_a31_pll6_config, !153, !"sun6i_a31_pll6_config", i1 false, i1 false}
!153 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 455, i32 40}
!154 = !{ptr @sun6i_display_data, !155, !"sun6i_display_data", i1 false, i1 false}
!155 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 1154, i32 34}
!156 = !{ptr @sun6i_display_config, !157, !"sun6i_display_config", i1 false, i1 false}
!157 = !{!"../drivers/clk/sunxi/clk-sunxi.c", i32 1149, i32 40}
!158 = !{i32 1, !"wchar_size", i32 2}
!159 = !{i32 1, !"min_enum_size", i32 4}
!160 = !{i32 8, !"branch-target-enforcement", i32 0}
!161 = !{i32 8, !"sign-return-address", i32 0}
!162 = !{i32 8, !"sign-return-address-all", i32 0}
!163 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!164 = !{i32 7, !"uwtable", i32 1}
!165 = !{i32 7, !"frame-pointer", i32 2}
!166 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!167 = !{i32 0, i32 33}
!168 = !{!"auto-init"}
!169 = !{!"branch_weights", i32 1, i32 2000}
!170 = !{i8 0, i8 2}
