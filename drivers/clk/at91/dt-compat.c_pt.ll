; ModuleID = '/llk/IR_all_yes/drivers/clk/at91/dt-compat.c_pt.bc'
source_filename = "../drivers/clk/at91/dt-compat.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.clk_pcr_layout = type { i32, i32, i32, i32, i32 }
%struct.clk_master_layout = type { i32, i32, i8 }
%struct.clk_pll_layout = type { i32, i32, i32, i32, i32, i8, i8, i8, i8 }
%struct.clk_programmable_layout = type { i8, i8, i8, i8, i8 }
%struct.clk_range = type { i32, i32 }
%struct.clk_master_characteristics = type { %struct.clk_range, [5 x i32], i8 }
%struct.clk_pll_characteristics = type { %struct.clk_range, i32, ptr, ptr, ptr, i8 }

@__of_table_of_sama5d2_clk_audio_pll_frac_setup = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-clk-audio-pll-frac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d2_clk_audio_pll_frac_setup }, section "__clk_of_table", align 4
@__of_table_of_sama5d2_clk_audio_pll_pad_setup = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-clk-audio-pll-pad\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d2_clk_audio_pll_pad_setup }, section "__clk_of_table", align 4
@__of_table_of_sama5d2_clk_audio_pll_pmc_setup = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-clk-audio-pll-pmc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d2_clk_audio_pll_pmc_setup }, section "__clk_of_table", align 4
@__of_table_of_sama5d2_clk_generated_setup = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-clk-generated\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d2_clk_generated_setup }, section "__clk_of_table", align 4
@__of_table_of_sama5d4_clk_h32mx_setup = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-clk-h32mx\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d4_clk_h32mx_setup }, section "__clk_of_table", align 4
@__of_table_sama5d2_clk_i2s_mux = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d2-clk-i2s-mux\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d2_clk_i2s_mux_setup }, section "__clk_of_table", align 4
@__of_table_at91rm9200_clk_main_osc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-clk-main-osc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91rm9200_clk_main_osc_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_main_rc_osc = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-main-rc-osc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_main_rc_osc_setup }, section "__clk_of_table", align 4
@__of_table_at91rm9200_clk_main = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-clk-main\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91rm9200_clk_main_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_main = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-main\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_main_setup }, section "__clk_of_table", align 4
@__of_table_at91rm9200_clk_master = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-clk-master\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91rm9200_clk_master_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_master = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-master\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_master_setup }, section "__clk_of_table", align 4
@__of_table_at91rm9200_clk_periph = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-clk-peripheral\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91rm9200_clk_periph_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_periph = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-peripheral\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_periph_setup }, section "__clk_of_table", align 4
@__of_table_at91rm9200_clk_pll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-clk-pll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91rm9200_clk_pll_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9g45_clk_pll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-clk-pll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9g45_clk_pll_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9g20_clk_pllb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g20-clk-pllb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9g20_clk_pllb_setup }, section "__clk_of_table", align 4
@__of_table_sama5d3_clk_pll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d3-clk-pll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_sama5d3_clk_pll_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_plldiv = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-plldiv\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_plldiv_setup }, section "__clk_of_table", align 4
@__of_table_at91rm9200_clk_prog = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-clk-programmable\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91rm9200_clk_prog_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9g45_clk_prog = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9g45-clk-programmable\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9g45_clk_prog_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_prog = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-programmable\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_prog_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9260_clk_slow = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9260-clk-slow\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9260_clk_slow_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_smd = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-smd\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_smd_setup }, section "__clk_of_table", align 4
@__of_table_at91rm9200_clk_sys = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-clk-system\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91rm9200_clk_sys_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_usb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_usb_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9n12_clk_usb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9n12-clk-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9n12_clk_usb_setup }, section "__clk_of_table", align 4
@__of_table_at91rm9200_clk_usb = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91rm9200-clk-usb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91rm9200_clk_usb_setup }, section "__clk_of_table", align 4
@__of_table_at91sam9x5_clk_utmi = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,at91sam9x5-clk-utmi\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_at91sam9x5_clk_utmi_setup }, section "__clk_of_table", align 4
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"atmel,clk-output-range\00", [41 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"atmel,sama5d2-clk-generated\00", [36 x i8] zeroinitializer }, align 32
@pmc_pcr_lock = external dso_local global %struct.spinlock, align 4
@dt_pcr_layout = internal constant { %struct.clk_pcr_layout, [44 x i8] } { %struct.clk_pcr_layout { i32 268, i32 4096, i32 196608, i32 1792, i32 63 }, [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel,sama5d2-sfr\00", [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"atmel,osc-bypass\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clock-frequency\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clock-accuracy\00", [17 x i8] zeroinitializer }, align 32
@at91rm9200_master_layout = external dso_local constant %struct.clk_master_layout, align 4
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"masterck_pres\00", [18 x i8] zeroinitializer }, align 32
@mck_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.11, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"atmel,clk-divisors\00", [45 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"atmel,master-clk-have-div3-pres\00", [32 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mck_lock\00", [23 x i8] zeroinitializer }, align 32
@at91sam9x5_master_layout = external dso_local constant %struct.clk_master_layout, align 4
@at91rm9200_pll_layout = external dso_local constant %struct.clk_pll_layout, align 4
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"atmel,clk-input-range\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"#atmel,pll-clk-output-range-cells\00", [62 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"atmel,pll-clk-output-ranges\00", [36 x i8] zeroinitializer }, align 32
@at91sam9g45_pll_layout = external dso_local constant %struct.clk_pll_layout, align 4
@at91sam9g20_pllb_layout = external dso_local constant %struct.clk_pll_layout, align 4
@sama5d3_pll_layout = external dso_local constant %struct.clk_pll_layout, align 4
@at91rm9200_programmable_layout = external dso_local constant %struct.clk_programmable_layout, align 1
@at91sam9g45_programmable_layout = external dso_local constant %struct.clk_programmable_layout, align 1
@at91sam9x5_programmable_layout = external dso_local constant %struct.clk_programmable_layout, align 1
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"atmel,sama5d3-sfr\00", [46 x i8] zeroinitializer }, align 32
@switch.table.of_sama5d2_clk_generated_setup = internal constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 5, i32 5, i32 -2147483648, i32 -2147483648, i32 -2147483648, i32 5], [40 x i8] zeroinitializer }, align 32
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 144, i32 35 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 150, i32 35 }
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 153, i32 32 }
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 156, i32 35 }
@___asan_gen_.28 = private unnamed_addr constant [14 x i8] c"dt_pcr_layout\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 100, i32 36 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 212, i32 50 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 248, i32 37 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 273, i32 27 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 274, i32 27 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 393, i32 45 }
@___asan_gen_.46 = private unnamed_addr constant [9 x i8] c"mck_lock\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 353, i32 33 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 357, i32 29 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 27, i32 8 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 514, i32 32 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 517, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 524, i32 27 }
@___asan_gen_.67 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.68 = private constant [32 x i8] c"../drivers/clk/at91/dt-compat.c\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.68, i32 970, i32 50 }
@___asan_gen_.70 = private unnamed_addr constant [44 x i8] c"switch.table.of_sama5d2_clk_generated_setup\00", align 1
@llvm.compiler.used = appending global [48 x ptr] [ptr @__of_table_at91rm9200_clk_main, ptr @__of_table_at91rm9200_clk_main_osc, ptr @__of_table_at91rm9200_clk_master, ptr @__of_table_at91rm9200_clk_periph, ptr @__of_table_at91rm9200_clk_pll, ptr @__of_table_at91rm9200_clk_prog, ptr @__of_table_at91rm9200_clk_sys, ptr @__of_table_at91rm9200_clk_usb, ptr @__of_table_at91sam9260_clk_slow, ptr @__of_table_at91sam9g20_clk_pllb, ptr @__of_table_at91sam9g45_clk_pll, ptr @__of_table_at91sam9g45_clk_prog, ptr @__of_table_at91sam9n12_clk_usb, ptr @__of_table_at91sam9x5_clk_main, ptr @__of_table_at91sam9x5_clk_main_rc_osc, ptr @__of_table_at91sam9x5_clk_master, ptr @__of_table_at91sam9x5_clk_periph, ptr @__of_table_at91sam9x5_clk_plldiv, ptr @__of_table_at91sam9x5_clk_prog, ptr @__of_table_at91sam9x5_clk_smd, ptr @__of_table_at91sam9x5_clk_usb, ptr @__of_table_at91sam9x5_clk_utmi, ptr @__of_table_of_sama5d2_clk_audio_pll_frac_setup, ptr @__of_table_of_sama5d2_clk_audio_pll_pad_setup, ptr @__of_table_of_sama5d2_clk_audio_pll_pmc_setup, ptr @__of_table_of_sama5d2_clk_generated_setup, ptr @__of_table_of_sama5d4_clk_h32mx_setup, ptr @__of_table_sama5d2_clk_i2s_mux, ptr @__of_table_sama5d3_clk_pll, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @dt_pcr_layout, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mck_lock, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @switch.table.of_sama5d2_clk_generated_setup], section "llvm.metadata"
@0 = internal global [19 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dt_pcr_layout to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mck_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.of_sama5d2_clk_generated_setup to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_sama5d2_clk_audio_pll_frac_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %call = tail call ptr @of_get_parent(ptr noundef %np) #7
  %call2 = tail call ptr @syscon_node_to_regmap(ptr noundef %call) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %call5 = tail call ptr @at91_clk_register_audio_pll_frac(ptr noundef %call2, ptr noundef %1, ptr noundef %call4) #10
  %cmp.i18 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i18, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_sama5d2_clk_audio_pll_pad_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %call = tail call ptr @of_get_parent(ptr noundef %np) #7
  %call2 = tail call ptr @syscon_node_to_regmap(ptr noundef %call) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %call5 = tail call ptr @at91_clk_register_audio_pll_pad(ptr noundef %call2, ptr noundef %1, ptr noundef %call4) #10
  %cmp.i18 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i18, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_sama5d2_clk_audio_pll_pmc_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %call = tail call ptr @of_get_parent(ptr noundef %np) #7
  %call2 = tail call ptr @syscon_node_to_regmap(ptr noundef %call) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %call5 = tail call ptr @at91_clk_register_audio_pll_pmc(ptr noundef %call2, ptr noundef %1, ptr noundef %call4) #10
  %cmp.i18 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i18, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_sama5d2_clk_generated_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %id = alloca i32, align 4
  %name = alloca ptr, align 4
  %parent_names = alloca [6 x ptr], align 4
  %range = alloca %struct.clk_range, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %parent_names) #7
  %2 = call ptr @memset(ptr %parent_names, i32 255, i32 24)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %range) #7
  %3 = ptrtoint ptr %range to i32
  call void @__asan_store8_noabort(i32 %3)
  store i64 0, ptr %range, align 8
  %call = tail call i32 @of_clk_get_parent_count(ptr noundef %np) #7
  %4 = add i32 %call, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %4)
  %5 = icmp ult i32 %4, -6
  br i1 %5, label %entry.cleanup47_crit_edge, label %if.end

entry.cleanup47_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

if.end:                                           ; preds = %entry
  %call2 = call i32 @of_clk_parent_fill(ptr noundef %np, ptr noundef nonnull %parent_names, i32 noundef %call) #7
  %call.i = call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %if.end.cleanup47_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup47_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not = icmp eq i32 %inc.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc.i)
  %cmp5 = icmp sgt i32 %inc.i, 64
  %or.cond77 = or i1 %tobool.not, %cmp5
  br i1 %or.cond77, label %of_get_child_count.exit.cleanup47_crit_edge, label %if.end7

of_get_child_count.exit.cleanup47_crit_edge:      ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

if.end7:                                          ; preds = %of_get_child_count.exit
  %call8 = call ptr @of_get_parent(ptr noundef %np) #7
  %call9 = call ptr @syscon_node_to_regmap(ptr noundef %call8) #7
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end7.cleanup47_crit_edge, label %if.end12

if.end7.cleanup47_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

if.end12:                                         ; preds = %if.end7
  %call13 = call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp14.not84 = icmp eq ptr %call13, null
  br i1 %cmp14.not84, label %if.end12.cleanup47_crit_edge, label %for.body.lr.ph

if.end12.cleanup47_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

for.body.lr.ph:                                   ; preds = %if.end12
  %conv = trunc i32 %call to i8
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %gcknp.085 = phi ptr [ %call13, %for.body.lr.ph ], [ %call46, %cleanup.for.body_crit_edge ]
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %gcknp.085, ptr noundef nonnull @.str, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool16.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool16.not, label %if.end18, label %for.body.cleanup_crit_edge

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %for.body
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %8 = add i32 %7, -64
  call void @__sanitizer_cov_trace_const_cmp4(i32 -62, i32 %8)
  %9 = icmp ult i32 %8, -62
  br i1 %9, label %if.end18.cleanup_crit_edge, label %if.end23

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end23:                                         ; preds = %if.end18
  %call24 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.end23.if.end28_crit_edge, label %if.then26

if.end23.if.end28_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %gcknp.085 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gcknp.085, align 4
  %12 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %name, align 4
  br label %if.end28

if.end28:                                         ; preds = %if.then26, %if.end23.if.end28_crit_edge
  %call29 = call i32 @of_at91_get_clk_range(ptr noundef nonnull %gcknp.085, ptr noundef nonnull @.str.2, ptr noundef nonnull %range) #7
  %call30 = call i32 @of_device_is_compatible(ptr noundef %np, ptr noundef nonnull @.str.3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end28.if.end38_crit_edge, label %land.lhs.true

if.end28.if.end38_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end28
  %13 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %id, align 4
  %switch.tableidx = add i32 %14, -54
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %switch.tableidx)
  %15 = icmp ult i32 %switch.tableidx, 6
  br i1 %15, label %switch.lookup, label %land.lhs.true.if.end38_crit_edge

land.lhs.true.if.end38_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

switch.lookup:                                    ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %switch.gep = getelementptr inbounds [6 x i32], ptr @switch.table.of_sama5d2_clk_generated_setup, i32 0, i32 %switch.tableidx
  %16 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %16)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %if.end38

if.end38:                                         ; preds = %switch.lookup, %land.lhs.true.if.end38_crit_edge, %if.end28.if.end38_crit_edge
  %chg_pid.0 = phi i32 [ -2147483648, %if.end28.if.end38_crit_edge ], [ -2147483648, %land.lhs.true.if.end38_crit_edge ], [ %switch.load, %switch.lookup ]
  %17 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %name, align 4
  %19 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %id, align 4
  %conv40 = trunc i32 %20 to i8
  %call41 = call ptr @at91_clk_register_generated(ptr noundef %call9, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @dt_pcr_layout, ptr noundef %18, ptr noundef nonnull %parent_names, ptr noundef null, i8 noundef zeroext %conv, i8 noundef zeroext %conv40, ptr noundef nonnull %range, i32 noundef %chg_pid.0) #10
  %cmp.i79 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.end38.cleanup_crit_edge, label %if.end44

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end44:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #9
  %call45 = call i32 @of_clk_add_hw_provider(ptr noundef nonnull %gcknp.085, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call41) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end44, %if.end38.cleanup_crit_edge, %if.end18.cleanup_crit_edge, %for.body.cleanup_crit_edge
  %call46 = call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %gcknp.085) #7
  %cmp14.not = icmp eq ptr %call46, null
  br i1 %cmp14.not, label %cleanup.cleanup47_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.cleanup47_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

cleanup47:                                        ; preds = %cleanup.cleanup47_crit_edge, %if.end12.cleanup47_crit_edge, %if.end7.cleanup47_crit_edge, %of_get_child_count.exit.cleanup47_crit_edge, %if.end.cleanup47_crit_edge, %entry.cleanup47_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %range) #7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %parent_names) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_sama5d4_clk_h32mx_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %call = tail call ptr @of_get_parent(ptr noundef %np) #7
  %call2 = tail call ptr @syscon_node_to_regmap(ptr noundef %call) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call4 = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %call5 = tail call ptr @at91_clk_register_h32mx(ptr noundef %call2, ptr noundef %1, ptr noundef %call4) #10
  %cmp.i18 = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i18, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = tail call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call5) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_sama5d2_clk_i2s_mux_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %bus_id = alloca i8, align 1
  %parent_names = alloca [2 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %bus_id) #7
  %0 = ptrtoint ptr %bus_id to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 -1, ptr %bus_id, align 1, !annotation !102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent_names) #7
  %1 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_names, align 4, !annotation !102
  %2 = getelementptr inbounds [2 x ptr], ptr %parent_names, i32 0, i32 1
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr inttoptr (i32 -1 to ptr), ptr %2, align 4, !annotation !102
  %call = tail call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.4) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp.not36 = icmp eq ptr %call2, null
  br i1 %cmp.not36, label %if.end.cleanup_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i2s_mux_np.037 = phi ptr [ %call21, %for.inc.for.body_crit_edge ], [ %call2, %if.end.for.body_crit_edge ]
  %call.i.i = call i32 @of_property_read_variable_u8_array(ptr noundef nonnull %i2s_mux_np.037, ptr noundef nonnull @.str, ptr noundef nonnull %bus_id, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end5, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end5:                                          ; preds = %for.body
  %4 = ptrtoint ptr %bus_id to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bus_id, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp6 = icmp ugt i8 %5, 2
  br i1 %cmp6, label %if.end5.for.inc_crit_edge, label %if.end9

if.end5.for.inc_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end9:                                          ; preds = %if.end5
  %call10 = call i32 @of_clk_parent_fill(ptr noundef nonnull %i2s_mux_np.037, ptr noundef nonnull %parent_names, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call10)
  %cmp11.not = icmp eq i32 %call10, 2
  br i1 %cmp11.not, label %if.end14, label %if.end9.for.inc_crit_edge

if.end9.for.inc_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end14:                                         ; preds = %if.end9
  %6 = ptrtoint ptr %i2s_mux_np.037 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %i2s_mux_np.037, align 4
  %8 = ptrtoint ptr %bus_id to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %bus_id, align 1
  %call16 = call ptr @at91_clk_i2s_mux_register(ptr noundef %call, ptr noundef %7, ptr noundef nonnull %parent_names, i32 noundef 2, i8 noundef zeroext %9) #10
  %cmp.i35 = icmp ugt ptr %call16, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i35, label %if.end14.for.inc_crit_edge, label %if.end19

if.end14.for.inc_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end19:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %call20 = call i32 @of_clk_add_hw_provider(ptr noundef nonnull %i2s_mux_np.037, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call16) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end19, %if.end14.for.inc_crit_edge, %if.end9.for.inc_crit_edge, %if.end5.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call21 = call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %i2s_mux_np.037) #7
  %cmp.not = icmp eq ptr %call21, null
  br i1 %cmp.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_names) #7
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %bus_id) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91rm9200_clk_main_osc_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %name, align 4
  %call = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #7
  %call.i = call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.5, ptr noundef null) #7
  %call3 = call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %call4 = call ptr @of_get_parent(ptr noundef %np) #7
  %call5 = call ptr @syscon_node_to_regmap(ptr noundef %call4) #7
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool.i = icmp ne ptr %call.i, null
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %call7 = call ptr @at91_clk_register_main_osc(ptr noundef %call5, ptr noundef %4, ptr noundef %call3, i1 noundef zeroext %tobool.i) #10
  %cmp.i23 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i23, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_main_rc_osc_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %frequency = alloca i32, align 4
  %accuracy = alloca i32, align 4
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %frequency) #7
  %0 = ptrtoint ptr %frequency to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %frequency, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %accuracy) #7
  %1 = ptrtoint ptr %accuracy to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %accuracy, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %2 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %np, align 4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %name, align 4
  %call = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #7
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.6, ptr noundef nonnull %frequency, i32 noundef 1, i32 noundef 0) #7
  %call.i.i23 = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.7, ptr noundef nonnull %accuracy, i32 noundef 1, i32 noundef 0) #7
  %call4 = call ptr @of_get_parent(ptr noundef %np) #7
  %call5 = call ptr @syscon_node_to_regmap(ptr noundef %call4) #7
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %7 = ptrtoint ptr %frequency to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %frequency, align 4
  %9 = ptrtoint ptr %accuracy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %accuracy, align 4
  %call7 = call ptr @at91_clk_register_main_rc_osc(ptr noundef %call5, ptr noundef %6, i32 noundef %8, i32 noundef %10) #10
  %cmp.i24 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i24, label %if.end.cleanup_crit_edge, label %if.end10

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call7) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %accuracy) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %frequency) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91rm9200_clk_main_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %name, align 4
  %call = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %call2 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #7
  %call3 = call ptr @of_get_parent(ptr noundef %np) #7
  %call4 = call ptr @syscon_node_to_regmap(ptr noundef %call3) #7
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %call6 = call ptr @at91_clk_register_rm9200_main(ptr noundef %call4, ptr noundef %4, ptr noundef %call) #10
  %cmp.i20 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_main_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %parent_names = alloca [2 x ptr], align 4
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent_names) #7
  %0 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_names, align 4, !annotation !102
  %1 = getelementptr inbounds [2 x ptr], ptr %parent_names, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %3 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %np, align 4
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %name, align 4
  %call = tail call i32 @of_clk_get_parent_count(ptr noundef %np) #7
  %6 = add i32 %call, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %6)
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @of_clk_parent_fill(ptr noundef %np, ptr noundef nonnull %parent_names, i32 noundef %call) #7
  %call4 = call ptr @of_get_parent(ptr noundef %np) #7
  %call5 = call ptr @syscon_node_to_regmap(ptr noundef %call4) #7
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #7
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %call11 = call ptr @at91_clk_register_sam9x5_main(ptr noundef %call5, ptr noundef %9, ptr noundef nonnull %parent_names, i32 noundef %call) #10
  %cmp.i30 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.end8.cleanup_crit_edge, label %if.end14

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_names) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91rm9200_clk_master_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @of_at91_clk_master_setup(ptr noundef %np, ptr noundef nonnull @at91rm9200_master_layout) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_master_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @of_at91_clk_master_setup(ptr noundef %np, ptr noundef nonnull @at91sam9x5_master_layout) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91rm9200_clk_periph_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @of_at91_clk_periph_setup(ptr noundef %np, i8 noundef zeroext 0) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_periph_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @of_at91_clk_periph_setup(ptr noundef %np, i8 noundef zeroext 1) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91rm9200_clk_pll_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @of_at91_clk_pll_setup(ptr noundef %np, ptr noundef nonnull @at91rm9200_pll_layout) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91sam9g45_clk_pll_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @of_at91_clk_pll_setup(ptr noundef %np, ptr noundef nonnull @at91sam9g45_pll_layout) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91sam9g20_clk_pllb_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @of_at91_clk_pll_setup(ptr noundef %np, ptr noundef nonnull @at91sam9g20_pllb_layout) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_sama5d3_clk_pll_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @of_at91_clk_pll_setup(ptr noundef %np, ptr noundef nonnull @sama5d3_pll_layout) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_plldiv_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %name, align 4
  %call = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %call2 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #7
  %call3 = call ptr @of_get_parent(ptr noundef %np) #7
  %call4 = call ptr @syscon_node_to_regmap(ptr noundef %call3) #7
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %call6 = call ptr @at91_clk_register_plldiv(ptr noundef %call4, ptr noundef %4, ptr noundef %call) #10
  %cmp.i20 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i20, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call6) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91rm9200_clk_prog_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @of_at91_clk_prog_setup(ptr noundef %np, ptr noundef nonnull @at91rm9200_programmable_layout) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91sam9g45_clk_prog_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @of_at91_clk_prog_setup(ptr noundef %np, ptr noundef nonnull @at91sam9g45_programmable_layout) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_prog_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @of_at91_clk_prog_setup(ptr noundef %np, ptr noundef nonnull @at91sam9x5_programmable_layout) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91sam9260_clk_slow_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %parent_names = alloca [2 x ptr], align 4
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent_names) #7
  %0 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_names, align 4, !annotation !102
  %1 = getelementptr inbounds [2 x ptr], ptr %parent_names, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %3 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %np, align 4
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %name, align 4
  %call = tail call i32 @of_clk_get_parent_count(ptr noundef %np) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call)
  %cmp.not = icmp eq i32 %call, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @of_clk_parent_fill(ptr noundef %np, ptr noundef nonnull %parent_names, i32 noundef 2) #7
  %call3 = call ptr @of_get_parent(ptr noundef %np) #7
  %call4 = call ptr @syscon_node_to_regmap(ptr noundef %call3) #7
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #7
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call10 = call ptr @at91_clk_register_sam9260_slow(ptr noundef %call4, ptr noundef %7, ptr noundef nonnull %parent_names, i32 noundef 2) #10
  %cmp.i28 = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i28, label %if.end7.cleanup_crit_edge, label %if.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_names) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_smd_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %parent_names = alloca [2 x ptr], align 4
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent_names) #7
  %0 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_names, align 4, !annotation !102
  %1 = getelementptr inbounds [2 x ptr], ptr %parent_names, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %3 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %np, align 4
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %name, align 4
  %call = tail call i32 @of_clk_get_parent_count(ptr noundef %np) #7
  %6 = add i32 %call, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %6)
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @of_clk_parent_fill(ptr noundef %np, ptr noundef nonnull %parent_names, i32 noundef %call) #7
  %call4 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #7
  %call5 = call ptr @of_get_parent(ptr noundef %np) #7
  %call6 = call ptr @syscon_node_to_regmap(ptr noundef %call5) #7
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %conv = trunc i32 %call to i8
  %call11 = call ptr @at91sam9x5_clk_register_smd(ptr noundef %call6, ptr noundef %9, ptr noundef nonnull %parent_names, i8 noundef zeroext %conv) #10
  %cmp.i30 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_names) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91rm9200_clk_sys_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %id = alloca i32, align 4
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !102
  %call.i = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %entry.if.end_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %entry.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %inc.i)
  %cmp = icmp sgt i32 %inc.i, 32
  br i1 %cmp, label %of_get_child_count.exit.cleanup_crit_edge, label %of_get_child_count.exit.if.end_crit_edge

of_get_child_count.exit.if.end_crit_edge:         ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

of_get_child_count.exit.cleanup_crit_edge:        ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %of_get_child_count.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %call1 = tail call ptr @of_get_parent(ptr noundef %np) #7
  %call2 = tail call ptr @syscon_node_to_regmap(ptr noundef %call1) #7
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp7.not43 = icmp eq ptr %call6, null
  br i1 %cmp7.not43, label %if.end5.cleanup_crit_edge, label %if.end5.for.body_crit_edge

if.end5.for.body_crit_edge:                       ; preds = %if.end5
  br label %for.body

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end5.for.body_crit_edge
  %sysclknp.044 = phi ptr [ %call22, %for.inc.for.body_crit_edge ], [ %call6, %if.end5.for.body_crit_edge ]
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %sysclknp.044, ptr noundef nonnull @.str, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %call11 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %tobool12.not = icmp eq i32 %call11, 0
  br i1 %tobool12.not, label %if.end10.if.end15_crit_edge, label %if.then13

if.end10.if.end15_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end15

if.then13:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %sysclknp.044 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sysclknp.044, align 4
  %4 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %name, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then13, %if.end10.if.end15_crit_edge
  %call16 = call ptr @of_clk_get_parent_name(ptr noundef nonnull %sysclknp.044, i32 noundef 0) #7
  %5 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %name, align 4
  %7 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %id, align 4
  %conv = trunc i32 %8 to i8
  %call17 = call ptr @at91_clk_register_system(ptr noundef %call2, ptr noundef %6, ptr noundef %call16, i8 noundef zeroext %conv) #10
  %cmp.i40 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i40, label %if.end15.for.inc_crit_edge, label %if.end20

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end20:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = call i32 @of_clk_add_hw_provider(ptr noundef nonnull %sysclknp.044, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call17) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end20, %if.end15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call22 = call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %sysclknp.044) #7
  %cmp7.not = icmp eq ptr %call22, null
  br i1 %cmp7.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %of_get_child_count.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_usb_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %parent_names = alloca [2 x ptr], align 4
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %parent_names) #7
  %0 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %parent_names, align 4, !annotation !102
  %1 = getelementptr inbounds [2 x ptr], ptr %parent_names, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %1, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %3 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %np, align 4
  %5 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %name, align 4
  %call = tail call i32 @of_clk_get_parent_count(ptr noundef %np) #7
  %6 = add i32 %call, -3
  call void @__sanitizer_cov_trace_const_cmp4(i32 -2, i32 %6)
  %7 = icmp ult i32 %6, -2
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @of_clk_parent_fill(ptr noundef %np, ptr noundef nonnull %parent_names, i32 noundef %call) #7
  %call4 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #7
  %call5 = call ptr @of_get_parent(ptr noundef %np) #7
  %call6 = call ptr @syscon_node_to_regmap(ptr noundef %call5) #7
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %conv = trunc i32 %call to i8
  %call11 = call ptr @at91sam9x5_clk_register_usb(ptr noundef %call6, ptr noundef %9, ptr noundef nonnull %parent_names, i8 noundef zeroext %conv) #10
  %cmp.i30 = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.end9.cleanup_crit_edge, label %if.end14

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end14, %if.end9.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %parent_names) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91sam9n12_clk_usb_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %name, align 4
  %call = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #7
  %call3 = call ptr @of_get_parent(ptr noundef %np) #7
  %call4 = call ptr @syscon_node_to_regmap(ptr noundef %call3) #7
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %call8 = call ptr @at91sam9n12_clk_register_usb(ptr noundef %call4, ptr noundef %4, ptr noundef nonnull %call) #10
  %cmp.i23 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i23, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %call12 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91rm9200_clk_usb_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %name = alloca ptr, align 4
  %divisors = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %name, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %divisors) #7
  %3 = call ptr @memset(ptr %divisors, i32 0, i32 16)
  %call = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.9, ptr noundef nonnull %divisors, i32 noundef 4, i32 noundef 0) #7
  %4 = ptrtoint ptr %divisors to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %divisors, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not = icmp eq i32 %5, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %call6 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #7
  %call7 = call ptr @of_get_parent(ptr noundef %np) #7
  %call8 = call ptr @syscon_node_to_regmap(ptr noundef %call7) #7
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call13 = call ptr @at91rm9200_clk_register_usb(ptr noundef %call8, ptr noundef %7, ptr noundef nonnull %call, ptr noundef nonnull %divisors) #10
  %cmp.i30 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i30, label %if.end11.cleanup_crit_edge, label %if.end16

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call13) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %if.end11.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %divisors) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_at91sam9x5_clk_utmi_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %0 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %np, align 4
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %1, ptr %name, align 4
  %call = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %call2 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #7
  %call3 = call ptr @of_get_parent(ptr noundef %np) #7
  %call4 = call ptr @syscon_node_to_regmap(ptr noundef %call3) #7
  %cmp.i = icmp ugt ptr %call4, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call6 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.15) #7
  %cmp.i31 = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i31, label %if.then8, label %if.end.if.end13_crit_edge

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call9 = call ptr @syscon_regmap_lookup_by_compatible(ptr noundef nonnull @.str.4) #7
  %cmp.i32 = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  %spec.select = select i1 %cmp.i32, ptr null, ptr %call9
  br label %if.end13

if.end13:                                         ; preds = %if.then8, %if.end.if.end13_crit_edge
  %regmap_sfr.0 = phi ptr [ %call6, %if.end.if.end13_crit_edge ], [ %spec.select, %if.then8 ]
  %3 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %name, align 4
  %call14 = call ptr @at91_clk_register_utmi(ptr noundef %call4, ptr noundef %regmap_sfr.0, ptr noundef %4, ptr noundef %call) #10
  %cmp.i33 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %if.end13.cleanup_crit_edge, label %if.end17

if.end13.cleanup_crit_edge:                       ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end17:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  %call18 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call14) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end17, %if.end13.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_node_to_regmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_audio_pll_frac(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_hw_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_hw_simple_get(ptr noundef, ptr noundef) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_audio_pll_pad(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_audio_pll_pmc(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_at91_get_clk_range(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_device_is_compatible(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_generated(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_h32mx(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @syscon_regmap_lookup_by_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_i2s_mux_register(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u8_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_main_osc(ptr noundef, ptr noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_main_rc_osc(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_rm9200_main(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_sam9x5_main(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @of_at91_clk_master_setup(ptr noundef %np, ptr noundef %layout) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_names = alloca [4 x ptr], align 4
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %parent_names) #7
  %0 = call ptr @memset(ptr %parent_names, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %1 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %np, align 4
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %name, align 4
  %call = tail call i32 @of_clk_get_parent_count(ptr noundef %np) #7
  %4 = add i32 %call, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -4, i32 %4)
  %5 = icmp ult i32 %4, -4
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = call i32 @of_clk_parent_fill(ptr noundef %np, ptr noundef nonnull %parent_names, i32 noundef %call) #7
  %call4 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #7
  %call5 = call fastcc ptr @of_at91_clk_master_get_characteristics(ptr noundef %np) #11
  %tobool.not = icmp eq ptr %call5, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = call ptr @of_get_parent(ptr noundef %np) #7
  %call9 = call ptr @syscon_node_to_regmap(ptr noundef %call8) #7
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call14 = call ptr @at91_clk_register_master_pres(ptr noundef %call9, ptr noundef nonnull @.str.8, i32 noundef %call, ptr noundef nonnull %parent_names, ptr noundef %layout, ptr noundef nonnull %call5, ptr noundef nonnull @mck_lock, i32 noundef 1, i32 noundef -2147483648) #10
  %cmp.i45 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i45, label %if.end12.out_free_characteristics_crit_edge, label %if.end17

if.end12.out_free_characteristics_crit_edge:      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_characteristics

if.end17:                                         ; preds = %if.end12
  %6 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %name, align 4
  %call18 = call ptr @at91_clk_register_master_div(ptr noundef %call9, ptr noundef %7, ptr noundef nonnull @.str.8, ptr noundef %layout, ptr noundef nonnull %call5, ptr noundef nonnull @mck_lock, i32 noundef 1, i32 noundef 0) #10
  %cmp.i46 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i46, label %if.end17.out_free_characteristics_crit_edge, label %if.end21

if.end17.out_free_characteristics_crit_edge:      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_characteristics

if.end21:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call18) #7
  br label %cleanup

out_free_characteristics:                         ; preds = %if.end17.out_free_characteristics_crit_edge, %if.end12.out_free_characteristics_crit_edge
  call void @kfree(ptr noundef nonnull %call5) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free_characteristics, %if.end21, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %parent_names) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @of_at91_clk_master_get_characteristics(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 32) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @of_at91_get_clk_range(ptr noundef %np, ptr noundef nonnull @.str.2, ptr noundef nonnull %call7.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end4, label %out_free_characteristics

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %divisors = getelementptr inbounds %struct.clk_master_characteristics, ptr %call7.i.i, i32 0, i32 1
  %call.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.9, ptr noundef %divisors, i32 noundef 4, i32 noundef 0) #7
  %call.i14 = tail call ptr @of_find_property(ptr noundef %np, ptr noundef nonnull @.str.10, ptr noundef null) #7
  %tobool.i = icmp ne ptr %call.i14, null
  %conv = zext i1 %tobool.i to i8
  %have_div3_pres = getelementptr inbounds %struct.clk_master_characteristics, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %have_div3_pres to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv, ptr %have_div3_pres, align 4
  br label %cleanup

out_free_characteristics:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free_characteristics, %if.end4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_free_characteristics ], [ %call7.i.i, %if.end4 ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_master_pres(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_master_div(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @of_at91_clk_periph_setup(ptr noundef %np, i8 noundef zeroext %type) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %id = alloca i32, align 4
  %name = alloca ptr, align 4
  %range = alloca %struct.clk_range, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %1 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !102
  %call = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool2.not = icmp eq i32 %inc.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %inc.i)
  %cmp = icmp sgt i32 %inc.i, 64
  %or.cond = or i1 %tobool2.not, %cmp
  br i1 %or.cond, label %of_get_child_count.exit.cleanup_crit_edge, label %if.end4

of_get_child_count.exit.cleanup_crit_edge:        ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %of_get_child_count.exit
  %call5 = tail call ptr @of_get_parent(ptr noundef %np) #7
  %call6 = tail call ptr @syscon_node_to_regmap(ptr noundef %call5) #7
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %call10 = tail call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp11.not63 = icmp eq ptr %call10, null
  br i1 %cmp11.not63, label %if.end9.cleanup_crit_edge, label %for.body.lr.ph

if.end9.cleanup_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %type)
  %cmp24 = icmp eq i8 %type, 0
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %periphclknp.064 = phi ptr [ %call10, %for.body.lr.ph ], [ %call35, %for.inc.for.body_crit_edge ]
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %periphclknp.064, ptr noundef nonnull @.str, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool13.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool13.not, label %if.end15, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end15:                                         ; preds = %for.body
  %2 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %3)
  %cmp16 = icmp ugt i32 %3, 63
  br i1 %cmp16, label %if.end15.for.inc_crit_edge, label %if.end18

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end18:                                         ; preds = %if.end15
  %call19 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.if.end23_crit_edge, label %if.then21

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %periphclknp.064 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %periphclknp.064, align 4
  %6 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %name, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18.if.end23_crit_edge
  br i1 %cmp24, label %if.then26, label %if.else

if.then26:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %name, align 4
  %9 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %id, align 4
  %call27 = call ptr @at91_clk_register_peripheral(ptr noundef %call6, ptr noundef %8, ptr noundef nonnull %call, i32 noundef %10) #10
  br label %if.end30

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %range) #7
  %11 = ptrtoint ptr %range to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %range, align 8
  %call28 = call i32 @of_at91_get_clk_range(ptr noundef nonnull %periphclknp.064, ptr noundef nonnull @.str.2, ptr noundef nonnull %range) #7
  %12 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %name, align 4
  %14 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %id, align 4
  %call29 = call ptr @at91_clk_register_sam9x5_peripheral(ptr noundef %call6, ptr noundef nonnull @pmc_pcr_lock, ptr noundef nonnull @dt_pcr_layout, ptr noundef %13, ptr noundef nonnull %call, i32 noundef %15, ptr noundef nonnull %range, i32 noundef -2147483648) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %range) #7
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then26
  %hw.0 = phi ptr [ %call27, %if.then26 ], [ %call29, %if.else ]
  %cmp.i58 = icmp ugt ptr %hw.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i58, label %if.end30.for.inc_crit_edge, label %if.end33

if.end30.for.inc_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end33:                                         ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %call34 = call i32 @of_clk_add_hw_provider(ptr noundef nonnull %periphclknp.064, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %hw.0) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end33, %if.end30.for.inc_crit_edge, %if.end15.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call35 = call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %periphclknp.064) #7
  %cmp11.not = icmp eq ptr %call35, null
  br i1 %cmp11.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end9.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %of_get_child_count.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_peripheral(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_sam9x5_peripheral(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @of_at91_clk_pll_setup(ptr noundef %np, ptr noundef %layout) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %id = alloca i32, align 4
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %1 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %np, align 4
  %3 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %name, align 4
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %call3 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #7
  %call4 = call ptr @of_get_parent(ptr noundef %np) #7
  %call5 = call ptr @syscon_node_to_regmap(ptr noundef %call4) #7
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %call9 = call fastcc ptr @of_at91_clk_pll_get_characteristics(ptr noundef %np) #11
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.end12

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end8
  %4 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %name, align 4
  %6 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %id, align 4
  %conv = trunc i32 %7 to i8
  %call13 = call ptr @at91_clk_register_pll(ptr noundef %call5, ptr noundef %5, ptr noundef %call2, i8 noundef zeroext %conv, ptr noundef %layout, ptr noundef nonnull %call9) #10
  %cmp.i33 = icmp ugt ptr %call13, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i33, label %out_free_characteristics, label %if.end16

if.end16:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = call i32 @of_clk_add_hw_provider(ptr noundef %np, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call13) #7
  br label %cleanup

out_free_characteristics:                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call9) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free_characteristics, %if.end16, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @of_at91_clk_pll_get_characteristics(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %tmp = alloca i32, align 4
  %num_cells = alloca i32, align 4
  %input = alloca %struct.clk_range, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #7
  %0 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %tmp, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %num_cells) #7
  %1 = ptrtoint ptr %num_cells to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %num_cells, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %input) #7
  %2 = ptrtoint ptr %input to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %input, align 8, !annotation !102
  %3 = getelementptr inbounds %struct.clk_range, ptr %input, i32 0, i32 1
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %3, align 4, !annotation !102
  %call = call i32 @of_at91_get_clk_range(ptr noundef %np, ptr noundef nonnull @.str.12, ptr noundef nonnull %input) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %np, ptr noundef nonnull @.str.13, ptr noundef nonnull %num_cells, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool2.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %5 = ptrtoint ptr %num_cells to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %num_cells, align 4
  %7 = add i32 %6, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -3, i32 %7)
  %8 = icmp ult i32 %7, -3
  br i1 %8, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %call8 = call ptr @of_get_property(ptr noundef %np, ptr noundef nonnull @.str.14, ptr noundef nonnull %tmp) #7
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %if.end7.cleanup_crit_edge, label %if.end11

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end11:                                         ; preds = %if.end7
  %9 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %tmp, align 4
  %11 = ptrtoint ptr %num_cells to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_cells, align 4
  %mul = shl i32 %12, 2
  %div = udiv i32 %10, %mul
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 28) #12
  %tobool13.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool13.not, label %if.end11.cleanup_crit_edge, label %if.end15

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %14 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div, i32 8) #7
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %if.end15.out_free_characteristics_crit_edge, label %if.end7.i.i, !prof !103

if.end15.out_free_characteristics_crit_edge:      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_characteristics

if.end7.i.i:                                      ; preds = %if.end15
  %16 = extractvalue { i32, i1 } %14, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %16, i32 noundef 3520) #13
  %tobool17.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool17.not, label %if.end7.i.i.out_free_characteristics_crit_edge, label %if.end19

if.end7.i.i.out_free_characteristics_crit_edge:   ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_characteristics

if.end19:                                         ; preds = %if.end7.i.i
  %17 = ptrtoint ptr %num_cells to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %num_cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %18)
  %cmp20 = icmp ugt i32 %18, 2
  br i1 %cmp20, label %if.end7.i.i145, label %if.end19.if.end33_crit_edge

if.end19.if.end33_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end7.i.i145:                                   ; preds = %if.end19
  %call8.i.i144 = call noalias align 128 ptr @__kmalloc(i32 noundef %div, i32 noundef 3520) #13
  %tobool23.not = icmp eq ptr %call8.i.i144, null
  br i1 %tobool23.not, label %if.end7.i.i145.out_free_output_crit_edge, label %if.end26

if.end7.i.i145.out_free_output_crit_edge:         ; preds = %if.end7.i.i145
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_output

if.end26:                                         ; preds = %if.end7.i.i145
  %19 = ptrtoint ptr %num_cells to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pr = load i32, ptr %num_cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %.pr)
  %cmp27 = icmp ugt i32 %.pr, 3
  br i1 %cmp27, label %if.end7.i.i178, label %if.end26.if.end33_crit_edge

if.end26.if.end33_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end7.i.i178:                                   ; preds = %if.end26
  %20 = shl nuw nsw i32 %div, 1
  %call8.i.i177 = call noalias align 128 ptr @__kmalloc(i32 noundef %20, i32 noundef 3520) #13
  %tobool30.not = icmp eq ptr %call8.i.i177, null
  br i1 %tobool30.not, label %if.end7.i.i178.out_free_output_crit_edge, label %if.end7.i.i178.if.end33_crit_edge

if.end7.i.i178.if.end33_crit_edge:                ; preds = %if.end7.i.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

if.end7.i.i178.out_free_output_crit_edge:         ; preds = %if.end7.i.i178
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_output

if.end33:                                         ; preds = %if.end7.i.i178.if.end33_crit_edge, %if.end26.if.end33_crit_edge, %if.end19.if.end33_crit_edge
  %out.0195 = phi ptr [ %call8.i.i144, %if.end7.i.i178.if.end33_crit_edge ], [ %call8.i.i144, %if.end26.if.end33_crit_edge ], [ null, %if.end19.if.end33_crit_edge ]
  %icpll.0 = phi ptr [ %call8.i.i177, %if.end7.i.i178.if.end33_crit_edge ], [ null, %if.end26.if.end33_crit_edge ], [ null, %if.end19.if.end33_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %10)
  %cmp34201.not = icmp ugt i32 %mul, %10
  br i1 %cmp34201.not, label %if.end33.for.end_crit_edge, label %if.end33.for.body_crit_edge

if.end33.for.body_crit_edge:                      ; preds = %if.end33
  br label %for.body

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end33.for.body_crit_edge
  %i.0202 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end33.for.body_crit_edge ]
  %21 = ptrtoint ptr %num_cells to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %num_cells, align 4
  %mul35 = mul i32 %22, %i.0202
  %call36 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.14, i32 noundef %mul35, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %for.body.out_free_output_crit_edge

for.body.out_free_output_crit_edge:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_output

if.end39:                                         ; preds = %for.body
  %23 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %tmp, align 4
  %arrayidx = getelementptr %struct.clk_range, ptr %call8.i.i, i32 %i.0202
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx, align 8
  %add = add i32 %mul35, 1
  %call40 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.14, i32 noundef %add, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call40)
  %tobool41.not = icmp eq i32 %call40, 0
  br i1 %tobool41.not, label %if.end43, label %if.end39.out_free_output_crit_edge

if.end39.out_free_output_crit_edge:               ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_output

if.end43:                                         ; preds = %if.end39
  %26 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tmp, align 4
  %max = getelementptr %struct.clk_range, ptr %call8.i.i, i32 %i.0202, i32 1
  %28 = ptrtoint ptr %max to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %max, align 4
  %29 = ptrtoint ptr %num_cells to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %num_cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %30)
  %cmp45 = icmp eq i32 %30, 2
  br i1 %cmp45, label %if.end43.for.inc_crit_edge, label %if.end47

if.end43.for.inc_crit_edge:                       ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end47:                                         ; preds = %if.end43
  %add48 = add i32 %mul35, 2
  %call49 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.14, i32 noundef %add48, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %if.end52, label %if.end47.out_free_output_crit_edge

if.end47.out_free_output_crit_edge:               ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_output

if.end52:                                         ; preds = %if.end47
  %31 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %tmp, align 4
  %conv = trunc i32 %32 to i8
  %arrayidx53 = getelementptr i8, ptr %out.0195, i32 %i.0202
  %33 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %conv, ptr %arrayidx53, align 1
  %34 = ptrtoint ptr %num_cells to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_cells, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp54 = icmp eq i32 %35, 3
  br i1 %cmp54, label %if.end52.for.inc_crit_edge, label %if.end57

if.end52.for.inc_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end57:                                         ; preds = %if.end52
  %add58 = add i32 %mul35, 3
  %call59 = call i32 @of_property_read_u32_index(ptr noundef %np, ptr noundef nonnull @.str.14, i32 noundef %add58, ptr noundef nonnull %tmp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end62, label %if.end57.out_free_output_crit_edge

if.end57.out_free_output_crit_edge:               ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %out_free_output

if.end62:                                         ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %tmp to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %tmp, align 4
  %conv63 = trunc i32 %37 to i16
  %arrayidx64 = getelementptr i16, ptr %icpll.0, i32 %i.0202
  %38 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_store2_noabort(i32 %38)
  store i16 %conv63, ptr %arrayidx64, align 2
  br label %for.inc

for.inc:                                          ; preds = %if.end62, %if.end52.for.inc_crit_edge, %if.end43.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0202, 1
  %exitcond.not = icmp eq i32 %inc, %div
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end33.for.end_crit_edge
  %39 = ptrtoint ptr %input to i32
  call void @__asan_load8_noabort(i32 %39)
  %40 = load i64, ptr %input, align 8
  %41 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store8_noabort(i32 %41)
  store i64 %40, ptr %call7.i.i, align 8
  %num_output66 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %call7.i.i, i32 0, i32 1
  %42 = ptrtoint ptr %num_output66 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %div, ptr %num_output66, align 8
  %output67 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %call7.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %output67 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call8.i.i, ptr %output67, align 4
  %out68 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %call7.i.i, i32 0, i32 4
  %44 = ptrtoint ptr %out68 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %out.0195, ptr %out68, align 4
  %icpll69 = getelementptr inbounds %struct.clk_pll_characteristics, ptr %call7.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %icpll69 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %icpll.0, ptr %icpll69, align 8
  br label %cleanup

out_free_output:                                  ; preds = %if.end57.out_free_output_crit_edge, %if.end47.out_free_output_crit_edge, %if.end39.out_free_output_crit_edge, %for.body.out_free_output_crit_edge, %if.end7.i.i178.out_free_output_crit_edge, %if.end7.i.i145.out_free_output_crit_edge
  %out.1 = phi ptr [ %call8.i.i144, %if.end7.i.i178.out_free_output_crit_edge ], [ null, %if.end7.i.i145.out_free_output_crit_edge ], [ %out.0195, %for.body.out_free_output_crit_edge ], [ %out.0195, %if.end39.out_free_output_crit_edge ], [ %out.0195, %if.end47.out_free_output_crit_edge ], [ %out.0195, %if.end57.out_free_output_crit_edge ]
  %icpll.1 = phi ptr [ null, %if.end7.i.i178.out_free_output_crit_edge ], [ null, %if.end7.i.i145.out_free_output_crit_edge ], [ %icpll.0, %for.body.out_free_output_crit_edge ], [ %icpll.0, %if.end39.out_free_output_crit_edge ], [ %icpll.0, %if.end47.out_free_output_crit_edge ], [ %icpll.0, %if.end57.out_free_output_crit_edge ]
  call void @kfree(ptr noundef %icpll.1) #7
  call void @kfree(ptr noundef %out.1) #7
  call void @kfree(ptr noundef nonnull %call8.i.i) #7
  br label %out_free_characteristics

out_free_characteristics:                         ; preds = %out_free_output, %if.end7.i.i.out_free_characteristics_crit_edge, %if.end15.out_free_characteristics_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %out_free_characteristics, %for.end, %if.end11.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %out_free_characteristics ], [ %call7.i.i, %for.end ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end4.cleanup_crit_edge ], [ null, %if.end7.cleanup_crit_edge ], [ null, %if.end11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %input) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %num_cells) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #7
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_pll(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_u32_index(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_plldiv(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @of_at91_clk_prog_setup(ptr noundef %np, ptr noundef %layout) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %id = alloca i32, align 4
  %parent_names = alloca [5 x ptr], align 4
  %name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %id) #7
  %0 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %id, align 4, !annotation !102
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %parent_names) #7
  %1 = call ptr @memset(ptr %parent_names, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name) #7
  %2 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr inttoptr (i32 -1 to ptr), ptr %name, align 4, !annotation !102
  %call = tail call i32 @of_clk_get_parent_count(ptr noundef %np) #7
  %3 = add i32 %call, -6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -5, i32 %3)
  %4 = icmp ult i32 %3, -5
  br i1 %4, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = call i32 @of_clk_parent_fill(ptr noundef %np, ptr noundef nonnull %parent_names, i32 noundef %call) #7
  %call.i = call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp.not5.i = icmp eq ptr %call.i, null
  br i1 %cmp.not5.i, label %if.end.cleanup_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %num.07.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end.for.body.i_crit_edge ]
  %child.06.i = phi ptr [ %call1.i, %for.body.i.for.body.i_crit_edge ], [ %call.i, %if.end.for.body.i_crit_edge ]
  %inc.i = add i32 %num.07.i, 1
  %call1.i = call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %child.06.i) #7
  %cmp.not.i = icmp eq ptr %call1.i, null
  br i1 %cmp.not.i, label %of_get_child_count.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

of_get_child_count.exit:                          ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %inc.i)
  %tobool.not = icmp eq i32 %inc.i, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %inc.i)
  %cmp5 = icmp sgt i32 %inc.i, 8
  %or.cond1 = or i1 %tobool.not, %cmp5
  br i1 %or.cond1, label %of_get_child_count.exit.cleanup_crit_edge, label %if.end7

of_get_child_count.exit.cleanup_crit_edge:        ; preds = %of_get_child_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %of_get_child_count.exit
  %call8 = call ptr @of_get_parent(ptr noundef %np) #7
  %call9 = call ptr @syscon_node_to_regmap(ptr noundef %call8) #7
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end7.cleanup_crit_edge, label %if.end12

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %call13 = call ptr @of_get_next_child(ptr noundef %np, ptr noundef null) #7
  %cmp14.not7 = icmp eq ptr %call13, null
  br i1 %cmp14.not7, label %if.end12.cleanup_crit_edge, label %for.body.lr.ph

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %if.end12
  %conv = trunc i32 %call to i8
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %progclknp.08 = phi ptr [ %call13, %for.body.lr.ph ], [ %call31, %for.inc.for.body_crit_edge ]
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %progclknp.08, ptr noundef nonnull @.str, ptr noundef nonnull %id, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool16.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool16.not, label %if.end18, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end18:                                         ; preds = %for.body
  %call19 = call i32 @of_property_read_string(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %name) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.end18.if.end23_crit_edge, label %if.then21

if.end18.if.end23_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %progclknp.08 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %progclknp.08, align 4
  %7 = ptrtoint ptr %name to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %name, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end18.if.end23_crit_edge
  %8 = ptrtoint ptr %name to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %name, align 4
  %10 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %id, align 4
  %conv25 = trunc i32 %11 to i8
  %call26 = call ptr @at91_clk_register_programmable(ptr noundef %call9, ptr noundef %9, ptr noundef nonnull %parent_names, i8 noundef zeroext %conv, i8 noundef zeroext %conv25, ptr noundef %layout, ptr noundef null) #10
  %cmp.i2 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i2, label %if.end23.for.inc_crit_edge, label %if.end29

if.end23.for.inc_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end29:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %call30 = call i32 @of_clk_add_hw_provider(ptr noundef nonnull %progclknp.08, ptr noundef nonnull @of_clk_hw_simple_get, ptr noundef %call26) #7
  br label %for.inc

for.inc:                                          ; preds = %if.end29, %if.end23.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %call31 = call ptr @of_get_next_child(ptr noundef %np, ptr noundef nonnull %progclknp.08) #7
  %cmp14.not = icmp eq ptr %call31, null
  br i1 %cmp14.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end12.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %of_get_child_count.exit.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name) #7
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %parent_names) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %id) #7
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_programmable(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext, i8 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_sam9260_slow(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91sam9x5_clk_register_smd(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_system(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91sam9x5_clk_register_usb(ptr noundef, ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91sam9n12_clk_register_usb(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91rm9200_clk_register_usb(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: cold null_pointer_is_valid
declare dso_local ptr @at91_clk_register_utmi(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3 section ".init.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 19)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !85, !87, !89, !91}
!llvm.module.flags = !{!93, !94, !95, !96, !97, !98, !99, !100}
!llvm.ident = !{!101}

!0 = !{ptr @__of_table_of_sama5d2_clk_audio_pll_frac_setup, !1, !"__of_table_of_sama5d2_clk_audio_pll_frac_setup", i1 false, i1 false}
!1 = !{!"../drivers/clk/at91/dt-compat.c", i32 49, i32 1}
!2 = !{ptr @__of_table_of_sama5d2_clk_audio_pll_pad_setup, !3, !"__of_table_of_sama5d2_clk_audio_pll_pad_setup", i1 false, i1 false}
!3 = !{!"../drivers/clk/at91/dt-compat.c", i32 72, i32 1}
!4 = !{ptr @__of_table_of_sama5d2_clk_audio_pll_pmc_setup, !5, !"__of_table_of_sama5d2_clk_audio_pll_pmc_setup", i1 false, i1 false}
!5 = !{!"../drivers/clk/at91/dt-compat.c", i32 95, i32 1}
!6 = !{ptr @__of_table_of_sama5d2_clk_generated_setup, !7, !"__of_table_of_sama5d2_clk_generated_setup", i1 false, i1 false}
!7 = !{!"../drivers/clk/at91/dt-compat.c", i32 172, i32 1}
!8 = !{ptr @__of_table_of_sama5d4_clk_h32mx_setup, !9, !"__of_table_of_sama5d4_clk_h32mx_setup", i1 false, i1 false}
!9 = !{!"../drivers/clk/at91/dt-compat.c", i32 196, i32 1}
!10 = !{ptr @__of_table_sama5d2_clk_i2s_mux, !11, !"__of_table_sama5d2_clk_i2s_mux", i1 false, i1 false}
!11 = !{!"../drivers/clk/at91/dt-compat.c", i32 235, i32 1}
!12 = !{ptr @__of_table_at91rm9200_clk_main_osc, !13, !"__of_table_at91rm9200_clk_main_osc", i1 false, i1 false}
!13 = !{!"../drivers/clk/at91/dt-compat.c", i32 261, i32 1}
!14 = !{ptr @__of_table_at91sam9x5_clk_main_rc_osc, !15, !"__of_table_at91sam9x5_clk_main_rc_osc", i1 false, i1 false}
!15 = !{!"../drivers/clk/at91/dt-compat.c", i32 286, i32 1}
!16 = !{ptr @__of_table_at91rm9200_clk_main, !17, !"__of_table_at91rm9200_clk_main", i1 false, i1 false}
!17 = !{!"../drivers/clk/at91/dt-compat.c", i32 309, i32 1}
!18 = !{ptr @__of_table_at91sam9x5_clk_main, !19, !"__of_table_at91sam9x5_clk_main", i1 false, i1 false}
!19 = !{!"../drivers/clk/at91/dt-compat.c", i32 338, i32 1}
!20 = !{ptr @__of_table_at91rm9200_clk_master, !21, !"__of_table_at91rm9200_clk_master", i1 false, i1 false}
!21 = !{!"../drivers/clk/at91/dt-compat.c", i32 417, i32 1}
!22 = !{ptr @__of_table_at91sam9x5_clk_master, !23, !"__of_table_at91sam9x5_clk_master", i1 false, i1 false}
!23 = !{!"../drivers/clk/at91/dt-compat.c", i32 424, i32 1}
!24 = !{ptr @__of_table_at91rm9200_clk_periph, !25, !"__of_table_at91rm9200_clk_periph", i1 false, i1 false}
!25 = !{!"../drivers/clk/at91/dt-compat.c", i32 490, i32 1}
!26 = !{ptr @__of_table_at91sam9x5_clk_periph, !27, !"__of_table_at91sam9x5_clk_periph", i1 false, i1 false}
!27 = !{!"../drivers/clk/at91/dt-compat.c", i32 497, i32 1}
!28 = !{ptr @__of_table_at91rm9200_clk_pll, !29, !"__of_table_at91rm9200_clk_pll", i1 false, i1 false}
!29 = !{!"../drivers/clk/at91/dt-compat.c", i32 638, i32 1}
!30 = !{ptr @__of_table_at91sam9g45_clk_pll, !31, !"__of_table_at91sam9g45_clk_pll", i1 false, i1 false}
!31 = !{!"../drivers/clk/at91/dt-compat.c", i32 645, i32 1}
!32 = !{ptr @__of_table_at91sam9g20_clk_pllb, !33, !"__of_table_at91sam9g20_clk_pllb", i1 false, i1 false}
!33 = !{!"../drivers/clk/at91/dt-compat.c", i32 652, i32 1}
!34 = !{ptr @__of_table_sama5d3_clk_pll, !35, !"__of_table_sama5d3_clk_pll", i1 false, i1 false}
!35 = !{!"../drivers/clk/at91/dt-compat.c", i32 659, i32 1}
!36 = !{ptr @__of_table_at91sam9x5_clk_plldiv, !37, !"__of_table_at91sam9x5_clk_plldiv", i1 false, i1 false}
!37 = !{!"../drivers/clk/at91/dt-compat.c", i32 684, i32 1}
!38 = !{ptr @__of_table_at91rm9200_clk_prog, !39, !"__of_table_at91rm9200_clk_prog", i1 false, i1 false}
!39 = !{!"../drivers/clk/at91/dt-compat.c", i32 736, i32 1}
!40 = !{ptr @__of_table_at91sam9g45_clk_prog, !41, !"__of_table_at91sam9g45_clk_prog", i1 false, i1 false}
!41 = !{!"../drivers/clk/at91/dt-compat.c", i32 743, i32 1}
!42 = !{ptr @__of_table_at91sam9x5_clk_prog, !43, !"__of_table_at91sam9x5_clk_prog", i1 false, i1 false}
!43 = !{!"../drivers/clk/at91/dt-compat.c", i32 750, i32 1}
!44 = !{ptr @__of_table_at91sam9260_clk_slow, !45, !"__of_table_at91sam9260_clk_slow", i1 false, i1 false}
!45 = !{!"../drivers/clk/at91/dt-compat.c", i32 779, i32 1}
!46 = !{ptr @__of_table_at91sam9x5_clk_smd, !47, !"__of_table_at91sam9x5_clk_smd", i1 false, i1 false}
!47 = !{!"../drivers/clk/at91/dt-compat.c", i32 812, i32 1}
!48 = !{ptr @__of_table_at91rm9200_clk_sys, !49, !"__of_table_at91rm9200_clk_sys", i1 false, i1 false}
!49 = !{!"../drivers/clk/at91/dt-compat.c", i32 850, i32 1}
!50 = !{ptr @__of_table_at91sam9x5_clk_usb, !51, !"__of_table_at91sam9x5_clk_usb", i1 false, i1 false}
!51 = !{!"../drivers/clk/at91/dt-compat.c", i32 883, i32 1}
!52 = !{ptr @__of_table_at91sam9n12_clk_usb, !53, !"__of_table_at91sam9n12_clk_usb", i1 false, i1 false}
!53 = !{!"../drivers/clk/at91/dt-compat.c", i32 909, i32 1}
!54 = !{ptr @__of_table_at91rm9200_clk_usb, !55, !"__of_table_at91rm9200_clk_usb", i1 false, i1 false}
!55 = !{!"../drivers/clk/at91/dt-compat.c", i32 939, i32 1}
!56 = !{ptr @__of_table_at91sam9x5_clk_utmi, !57, !"__of_table_at91sam9x5_clk_utmi", i1 false, i1 false}
!57 = !{!"../drivers/clk/at91/dt-compat.c", i32 983, i32 1}
!58 = !{ptr @.str, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/clk/at91/dt-compat.c", i32 144, i32 35}
!60 = !{ptr @.str.1, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/clk/at91/dt-compat.c", i32 150, i32 35}
!62 = !{ptr @.str.2, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/clk/at91/dt-compat.c", i32 153, i32 32}
!64 = !{ptr @.str.3, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/clk/at91/dt-compat.c", i32 156, i32 35}
!66 = !{ptr @dt_pcr_layout, !67, !"dt_pcr_layout", i1 false, i1 false}
!67 = !{!"../drivers/clk/at91/dt-compat.c", i32 100, i32 36}
!68 = !{ptr @.str.4, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/clk/at91/dt-compat.c", i32 212, i32 50}
!70 = !{ptr @.str.5, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/clk/at91/dt-compat.c", i32 248, i32 37}
!72 = !{ptr @.str.6, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/clk/at91/dt-compat.c", i32 273, i32 27}
!74 = !{ptr @.str.7, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/clk/at91/dt-compat.c", i32 274, i32 27}
!76 = !{ptr @.str.8, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/clk/at91/dt-compat.c", i32 393, i32 45}
!78 = !{ptr @.str.9, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/clk/at91/dt-compat.c", i32 353, i32 33}
!80 = !{ptr @.str.10, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/clk/at91/dt-compat.c", i32 357, i32 29}
!82 = !{ptr @.str.11, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/clk/at91/dt-compat.c", i32 27, i32 8}
!84 = !{ptr @mck_lock, !83, !"mck_lock", i1 false, i1 false}
!85 = !{ptr @.str.12, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/clk/at91/dt-compat.c", i32 514, i32 32}
!87 = !{ptr @.str.13, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/clk/at91/dt-compat.c", i32 517, i32 31}
!89 = !{ptr @.str.14, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/clk/at91/dt-compat.c", i32 524, i32 27}
!91 = !{ptr @.str.15, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/clk/at91/dt-compat.c", i32 970, i32 50}
!93 = !{i32 1, !"wchar_size", i32 2}
!94 = !{i32 1, !"min_enum_size", i32 4}
!95 = !{i32 8, !"branch-target-enforcement", i32 0}
!96 = !{i32 8, !"sign-return-address", i32 0}
!97 = !{i32 8, !"sign-return-address-all", i32 0}
!98 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!99 = !{i32 7, !"uwtable", i32 1}
!100 = !{i32 7, !"frame-pointer", i32 2}
!101 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!102 = !{!"auto-init"}
!103 = !{!"branch_weights", i32 1, i32 2000}
