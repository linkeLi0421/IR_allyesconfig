; ModuleID = '/llk/IR_all_yes/drivers/clk/ti/dpll.c_pt.bc'
source_filename = "../drivers/clk/ti/dpll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clk_hw_omap_ops = type { ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.clk_omap_reg = type { ptr, i16, i8, i8 }
%struct.atomic_t = type { i32 }
%struct.dpll_data = type { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, i32, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clk_hw_omap = type { %struct.clk_hw, %struct.list_head, i32, i8, %struct.clk_omap_reg, i8, i32, %struct.clk_omap_reg, ptr, ptr, ptr, ptr, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.list_head = type { ptr, ptr }

@__of_table_ti_omap4_dpll_x2_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-dpll-x2-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap4_dpll_x2_setup }, section "__clk_of_table", align 4
@__of_table_ti_am3_dpll_x2_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-dpll-x2-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_am3_dpll_x2_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap3_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-dpll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap3_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap3_core_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-dpll-core-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap3_core_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap3_per_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-dpll-per-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap3_per_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap3_per_jtype_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3-dpll-per-j-type-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap3_per_jtype_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap4_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-dpll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap4_dpll_setup }, section "__clk_of_table", align 4
@__of_table_of_ti_omap5_mpu_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-mpu-dpll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap5_mpu_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap4_core_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-dpll-core-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap4_core_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap4_m4xen_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-dpll-m4xen-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap4_m4xen_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap4_jtype_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-dpll-j-type-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap4_jtype_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_am3_no_gate_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-dpll-no-gate-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_am3_no_gate_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_am3_jtype_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-dpll-j-type-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_am3_jtype_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_am3_no_gate_jtype_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-dpll-no-gate-j-type-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_am3_no_gate_jtype_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_am3_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-dpll-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_am3_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_am3_core_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3-dpll-core-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_am3_core_dpll_setup }, section "__clk_of_table", align 4
@__of_table_ti_omap2_core_dpll_clock = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2-dpll-core-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @of_ti_omap2_core_dpll_setup }, section "__clk_of_table", align 4
@dpll_x2_ck_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap3_clkoutx2_recalc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clkhwops_omap4_dpllmx = external dso_local constant %struct.clk_hw_omap_ops, align 4
@_register_dpll_x2._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 235, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\013%s: %pOFn must have parent\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"_register_dpll_x2\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/clk/ti/dpll.c\00", [42 x i8] zeroinitializer }, align 32
@_register_dpll_x2._entry_ptr = internal global ptr @_register_dpll_x2._entry, section ".printk_index", align 4
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"reg\00", [28 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__const.of_ti_omap3_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 0, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 7, i32 240, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 4
@.str.4 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,omap3630\00", [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ti,omap36xx\00", [20 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dpll5_ck\00", [23 x i8] zeroinitializer }, align 32
@omap3_dpll5_ck_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap3_noncore_dpll_enable, ptr @omap3_noncore_dpll_disable, ptr null, ptr null, ptr null, ptr null, ptr @omap3_dpll_recalc, ptr @omap2_dpll_round_rate, ptr @omap3_noncore_dpll_determine_rate, ptr @omap3_noncore_dpll_set_parent, ptr @omap2_init_dpll_parent, ptr @omap3_dpll5_set_rate, ptr @omap3_noncore_dpll_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@omap3_dpll_ck_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap3_noncore_dpll_enable, ptr @omap3_noncore_dpll_disable, ptr null, ptr null, ptr null, ptr null, ptr @omap3_dpll_recalc, ptr @omap2_dpll_round_rate, ptr @omap3_noncore_dpll_determine_rate, ptr @omap3_noncore_dpll_set_parent, ptr @omap2_init_dpll_parent, ptr @omap3_noncore_dpll_set_rate, ptr @omap3_noncore_dpll_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@clkhwops_omap3_dpll = external dso_local constant %struct.clk_hw_omap_ops, align 4
@of_ti_dpll_setup._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.2, i32 312, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\013%s: %pOFn must have parent(s)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"of_ti_dpll_setup\00", [47 x i8] zeroinitializer }, align 32
@of_ti_dpll_setup._entry_ptr = internal global ptr @of_ti_dpll_setup._entry, section ".printk_index", align 4
@clkhwops_omap2xxx_dpll = external dso_local constant %struct.clk_hw_omap_ops, align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,ssc-modfreq-hz\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ti,ssc-deltam\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,ssc-downspread\00", [46 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti,low-power-stop\00", [46 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti,low-power-bypass\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,lock\00", [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ti,min-div\00", [21 x i8] zeroinitializer }, align 32
@_register_dpll.__UNIQUE_ID_ddebug175 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 43, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"dpll\00", [27 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"_register_dpll\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"clk-ref missing for %pOFn, retry later\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: clk-ref missing for %pOFn, retry later\0A\00", [52 x i8] zeroinitializer }, align 32
@_register_dpll.__UNIQUE_ID_ddebug176 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.16, ptr @.str.17, ptr @.str.2, ptr @.str.20, i8 0, i8 46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"clk-bypass missing for %pOFn, retry later\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: clk-bypass missing for %pOFn, retry later\0A\00", [49 x i8] zeroinitializer }, align 32
@__const.of_ti_omap3_core_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 134152192, i32 32512, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 0, i8 0, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 7, i32 240, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 4
@omap3_dpll_core_ck_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap3_dpll_recalc, ptr @omap2_dpll_round_rate, ptr null, ptr null, ptr @omap2_init_dpll_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__const.of_ti_omap3_per_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 458752, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 0, i8 -126, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 56, i32 15728640, i32 2, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 4
@omap3_dpll_per_ck_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap3_noncore_dpll_enable, ptr @omap3_noncore_dpll_disable, ptr null, ptr null, ptr null, ptr null, ptr @omap3_dpll_recalc, ptr @omap2_dpll_round_rate, ptr @omap3_noncore_dpll_determine_rate, ptr @omap3_noncore_dpll_set_parent, ptr @omap2_init_dpll_parent, ptr @omap3_dpll4_set_rate, ptr @omap3_dpll4_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__const.of_ti_omap3_per_jtype_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 1048320, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 458752, i32 0, i16 0, i8 0, i8 0, i16 4095, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 0, i8 -126, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 56, i32 0, i32 2, i32 14680064, i32 -16777216, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 1, [2 x i8] zeroinitializer }, align 4
@dpll_ck_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap3_noncore_dpll_enable, ptr @omap3_noncore_dpll_disable, ptr null, ptr null, ptr @omap3_noncore_dpll_save_context, ptr @omap3_noncore_dpll_restore_context, ptr @omap3_dpll_recalc, ptr @omap2_dpll_round_rate, ptr @omap3_noncore_dpll_determine_rate, ptr @omap3_noncore_dpll_set_parent, ptr @omap2_init_dpll_parent, ptr @omap3_noncore_dpll_set_rate, ptr @omap3_noncore_dpll_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__const.of_ti_omap5_mpu_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 0, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i32 1, i32 0, i32 0, i32 4194304, i32 1400000000, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 4
@__const.of_ti_omap4_core_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 0, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 4
@dpll_core_ck_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap3_dpll_recalc, ptr null, ptr null, ptr null, ptr @omap2_init_dpll_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__const.of_ti_omap4_m4xen_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 0, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1024, i32 2048, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 4
@dpll_m4xen_ck_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @omap3_noncore_dpll_enable, ptr @omap3_noncore_dpll_disable, ptr null, ptr null, ptr @omap3_core_dpll_save_context, ptr @omap3_core_dpll_restore_context, ptr @omap4_dpll_regm4xen_recalc, ptr @omap4_dpll_regm4xen_round_rate, ptr @omap4_dpll_regm4xen_determine_rate, ptr @omap3_noncore_dpll_set_parent, ptr @omap2_init_dpll_parent, ptr @omap3_noncore_dpll_set_rate, ptr @omap3_noncore_dpll_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__const.of_ti_omap4_jtype_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 1048320, i32 255, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 4095, i8 0, i8 1, i16 256, [2 x i8] zeroinitializer, i32 0, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i32 1, i32 0, i32 -16777216, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 1, [2 x i8] zeroinitializer }, align 4
@dpll_no_gate_ck_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap3_noncore_dpll_save_context, ptr @omap3_noncore_dpll_restore_context, ptr @omap3_dpll_recalc, ptr @omap2_dpll_round_rate, ptr @omap3_noncore_dpll_determine_rate, ptr @omap3_noncore_dpll_set_parent, ptr @omap2_init_dpll_parent, ptr @omap3_noncore_dpll_set_rate, ptr @omap3_noncore_dpll_set_rate_and_parent, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__const.of_ti_am3_jtype_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 4095, i8 0, i8 2, i16 256, [2 x i8] zeroinitializer, i32 2000000000, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 1, [2 x i8] zeroinitializer }, align 4
@__const.of_ti_am3_no_gate_jtype_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 2000000000, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 1, [2 x i8] zeroinitializer }, align 4
@__const.of_ti_am3_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 1000000000, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 786432, i32 262143, i32 127, i32 1792, i32 4096, i32 16384, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 4
@__const.of_ti_am3_core_dpll_setup.dd = private unnamed_addr constant { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] } { %struct.clk_omap_reg zeroinitializer, i32 524032, i32 127, ptr null, ptr null, %struct.clk_omap_reg zeroinitializer, i32 7, i32 0, i16 0, i8 0, i8 0, i16 2047, i8 0, i8 1, i16 128, [2 x i8] zeroinitializer, i32 1000000000, i8 -96, [3 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, [1 x i8] zeroinitializer, %struct.clk_omap_reg zeroinitializer, %struct.clk_omap_reg zeroinitializer, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i8 0, i8 0, [2 x i8] zeroinitializer }, align 4
@omap2_dpll_core_ck_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap2_dpllcore_recalc, ptr @omap2_dpll_round_rate, ptr null, ptr null, ptr @omap2_init_dpll_parent, ptr @omap2_reprogram_dpllcore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"dpll_x2_ck_ops\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 148, i32 29 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 235, i32 3 }
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 257, i32 47 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 434, i32 32 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 435, i32 32 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 436, i32 29 }
@___asan_gen_.49 = private unnamed_addr constant [19 x i8] c"omap3_dpll5_ck_ops\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 123, i32 29 }
@___asan_gen_.52 = private unnamed_addr constant [18 x i8] c"omap3_dpll_ck_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 111, i32 29 }
@___asan_gen_.55 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 312, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 366, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 368, i32 30 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 370, i32 32 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 373, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 376, i32 34 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 379, i32 34 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 382, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 172, i32 3 }
@___asan_gen_.100 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 185, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant [23 x i8] c"omap3_dpll_core_ck_ops\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 101, i32 29 }
@___asan_gen_.106 = private unnamed_addr constant [22 x i8] c"omap3_dpll_per_ck_ops\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 135, i32 29 }
@___asan_gen_.109 = private unnamed_addr constant [12 x i8] c"dpll_ck_ops\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 57, i32 29 }
@___asan_gen_.112 = private unnamed_addr constant [17 x i8] c"dpll_core_ck_ops\00", align 1
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 52, i32 29 }
@___asan_gen_.115 = private unnamed_addr constant [18 x i8] c"dpll_m4xen_ck_ops\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 32, i32 29 }
@___asan_gen_.118 = private unnamed_addr constant [20 x i8] c"dpll_no_gate_ck_ops\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 71, i32 29 }
@___asan_gen_.121 = private unnamed_addr constant [23 x i8] c"omap2_dpll_core_ck_ops\00", align 1
@___asan_gen_.122 = private constant [25 x i8] c"../drivers/clk/ti/dpll.c\00", align 1
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.122, i32 90, i32 29 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__of_table_of_ti_omap5_mpu_dpll_clock, ptr @__of_table_ti_am3_core_dpll_clock, ptr @__of_table_ti_am3_dpll_clock, ptr @__of_table_ti_am3_dpll_x2_clock, ptr @__of_table_ti_am3_jtype_dpll_clock, ptr @__of_table_ti_am3_no_gate_dpll_clock, ptr @__of_table_ti_am3_no_gate_jtype_dpll_clock, ptr @__of_table_ti_omap2_core_dpll_clock, ptr @__of_table_ti_omap3_core_dpll_clock, ptr @__of_table_ti_omap3_dpll_clock, ptr @__of_table_ti_omap3_per_dpll_clock, ptr @__of_table_ti_omap3_per_jtype_dpll_clock, ptr @__of_table_ti_omap4_core_dpll_clock, ptr @__of_table_ti_omap4_dpll_clock, ptr @__of_table_ti_omap4_dpll_x2_clock, ptr @__of_table_ti_omap4_jtype_dpll_clock, ptr @__of_table_ti_omap4_m4xen_dpll_clock, ptr @_register_dpll_x2._entry, ptr @_register_dpll_x2._entry_ptr, ptr @of_ti_dpll_setup._entry, ptr @of_ti_dpll_setup._entry_ptr, ptr @dpll_x2_ck_ops, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @omap3_dpll5_ck_ops, ptr @omap3_dpll_ck_ops, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @omap3_dpll_core_ck_ops, ptr @omap3_dpll_per_ck_ops, ptr @dpll_ck_ops, ptr @dpll_core_ck_ops, ptr @dpll_m4xen_ck_ops, ptr @dpll_no_gate_ck_ops, ptr @omap2_dpll_core_ck_ops], section "llvm.metadata"
@0 = internal global [34 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll_x2_ck_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_register_dpll_x2._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_dpll5_ck_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_dpll_ck_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_ti_dpll_setup._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_dpll_core_ck_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3_dpll_per_ck_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll_ck_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll_core_ck_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll_m4xen_ck_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpll_no_gate_ck_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2_dpll_core_ck_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_omap4_dpll_x2_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_register_dpll_x2(ptr noundef %node, ptr noundef nonnull @clkhwops_omap4_dpllmx)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_am3_dpll_x2_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @_register_dpll_x2(ptr noundef %node, ptr noundef null)
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_omap3_dpll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %dd = alloca %struct.dpll_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %dd) #7
  %0 = call ptr @memcpy(ptr %dd, ptr @__const.of_ti_omap3_dpll_setup.dd, i32 168)
  %call = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %lor.lhs.false, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %call1 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %lor.lhs.false.if.else_crit_edge, label %lor.lhs.false.land.lhs.true_crit_edge

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

lor.lhs.false.if.else_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true:                                    ; preds = %lor.lhs.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call3 = tail call zeroext i1 @of_node_name_eq(ptr noundef %node, ptr noundef nonnull @.str.6) #7
  br i1 %call3, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %lor.lhs.false.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %land.lhs.true.if.end_crit_edge
  %omap3_dpll_ck_ops.sink = phi ptr [ @omap3_dpll_ck_ops, %if.else ], [ @omap3_dpll5_ck_ops, %land.lhs.true.if.end_crit_edge ]
  call fastcc void @of_ti_dpll_setup(ptr noundef %node, ptr noundef nonnull %omap3_dpll_ck_ops.sink, ptr noundef nonnull %dd) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %dd) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_omap3_core_dpll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %dd = alloca %struct.dpll_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %dd) #7
  %0 = call ptr @memcpy(ptr %dd, ptr @__const.of_ti_omap3_core_dpll_setup.dd, i32 168)
  call fastcc void @of_ti_dpll_setup(ptr noundef %node, ptr noundef nonnull @omap3_dpll_core_ck_ops, ptr noundef nonnull %dd) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %dd) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_omap3_per_dpll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %dd = alloca %struct.dpll_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %dd) #7
  %0 = call ptr @memcpy(ptr %dd, ptr @__const.of_ti_omap3_per_dpll_setup.dd, i32 168)
  call fastcc void @of_ti_dpll_setup(ptr noundef %node, ptr noundef nonnull @omap3_dpll_per_ck_ops, ptr noundef nonnull %dd) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %dd) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_omap3_per_jtype_dpll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %dd = alloca %struct.dpll_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %dd) #7
  %0 = call ptr @memcpy(ptr %dd, ptr @__const.of_ti_omap3_per_jtype_dpll_setup.dd, i32 168)
  call fastcc void @of_ti_dpll_setup(ptr noundef %node, ptr noundef nonnull @omap3_dpll_per_ck_ops, ptr noundef nonnull %dd) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %dd) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_omap4_dpll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %dd = alloca %struct.dpll_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %dd) #7
  %0 = call ptr @memcpy(ptr %dd, ptr @__const.of_ti_omap4_core_dpll_setup.dd, i32 168)
  call fastcc void @of_ti_dpll_setup(ptr noundef %node, ptr noundef nonnull @dpll_ck_ops, ptr noundef nonnull %dd) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %dd) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_omap5_mpu_dpll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %dd = alloca %struct.dpll_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %dd) #7
  %0 = call ptr @memcpy(ptr %dd, ptr @__const.of_ti_omap5_mpu_dpll_setup.dd, i32 168)
  call fastcc void @of_ti_dpll_setup(ptr noundef %node, ptr noundef nonnull @dpll_ck_ops, ptr noundef nonnull %dd) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %dd) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_omap4_core_dpll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %dd = alloca %struct.dpll_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %dd) #7
  %0 = call ptr @memcpy(ptr %dd, ptr @__const.of_ti_omap4_core_dpll_setup.dd, i32 168)
  call fastcc void @of_ti_dpll_setup(ptr noundef %node, ptr noundef nonnull @dpll_core_ck_ops, ptr noundef nonnull %dd) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %dd) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_omap4_m4xen_dpll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %dd = alloca %struct.dpll_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %dd) #7
  %0 = call ptr @memcpy(ptr %dd, ptr @__const.of_ti_omap4_m4xen_dpll_setup.dd, i32 168)
  call fastcc void @of_ti_dpll_setup(ptr noundef %node, ptr noundef nonnull @dpll_m4xen_ck_ops, ptr noundef nonnull %dd) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %dd) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_omap4_jtype_dpll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %dd = alloca %struct.dpll_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %dd) #7
  %0 = call ptr @memcpy(ptr %dd, ptr @__const.of_ti_omap4_jtype_dpll_setup.dd, i32 168)
  call fastcc void @of_ti_dpll_setup(ptr noundef %node, ptr noundef nonnull @dpll_m4xen_ck_ops, ptr noundef nonnull %dd) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %dd) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_am3_no_gate_dpll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %dd = alloca %struct.dpll_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %dd) #7
  %0 = call ptr @memcpy(ptr %dd, ptr @__const.of_ti_am3_dpll_setup.dd, i32 168)
  call fastcc void @of_ti_dpll_setup(ptr noundef %node, ptr noundef nonnull @dpll_no_gate_ck_ops, ptr noundef nonnull %dd) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %dd) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_am3_jtype_dpll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %dd = alloca %struct.dpll_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %dd) #7
  %0 = call ptr @memcpy(ptr %dd, ptr @__const.of_ti_am3_jtype_dpll_setup.dd, i32 168)
  call fastcc void @of_ti_dpll_setup(ptr noundef %node, ptr noundef nonnull @dpll_ck_ops, ptr noundef nonnull %dd) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %dd) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_am3_no_gate_jtype_dpll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %dd = alloca %struct.dpll_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %dd) #7
  %0 = call ptr @memcpy(ptr %dd, ptr @__const.of_ti_am3_no_gate_jtype_dpll_setup.dd, i32 168)
  call fastcc void @of_ti_dpll_setup(ptr noundef %node, ptr noundef nonnull @dpll_no_gate_ck_ops, ptr noundef nonnull %dd) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %dd) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_am3_dpll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %dd = alloca %struct.dpll_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %dd) #7
  %0 = call ptr @memcpy(ptr %dd, ptr @__const.of_ti_am3_dpll_setup.dd, i32 168)
  call fastcc void @of_ti_dpll_setup(ptr noundef %node, ptr noundef nonnull @dpll_ck_ops, ptr noundef nonnull %dd) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %dd) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_am3_core_dpll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %dd = alloca %struct.dpll_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %dd) #7
  %0 = call ptr @memcpy(ptr %dd, ptr @__const.of_ti_am3_core_dpll_setup.dd, i32 168)
  call fastcc void @of_ti_dpll_setup(ptr noundef %node, ptr noundef nonnull @dpll_core_ck_ops, ptr noundef nonnull %dd) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %dd) #7
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @of_ti_omap2_core_dpll_setup(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  %dd = alloca %struct.dpll_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %dd) #7
  %0 = call ptr @memset(ptr %dd, i32 0, i32 168)
  %1 = getelementptr inbounds { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] }, ptr %dd, i32 0, i32 1
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4190208, ptr %1, align 4
  %3 = getelementptr inbounds { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] }, ptr %dd, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 3840, ptr %3, align 4
  %5 = getelementptr inbounds { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] }, ptr %dd, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3, ptr %5, align 4
  %7 = getelementptr inbounds { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] }, ptr %dd, i32 0, i32 13
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %7, align 1
  %9 = getelementptr inbounds { %struct.clk_omap_reg, i32, i32, ptr, ptr, %struct.clk_omap_reg, i32, i32, i16, i8, i8, i16, i8, i8, i16, [2 x i8], i32, i8, [3 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, i8, [1 x i8], %struct.clk_omap_reg, %struct.clk_omap_reg, i32, i32, i32, i32, i32, i32, i32, i32, i8, i8, [2 x i8] }, ptr %dd, i32 0, i32 14
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 16, ptr %9, align 4
  call fastcc void @of_ti_dpll_setup(ptr noundef %node, ptr noundef nonnull @omap2_dpll_core_ck_ops, ptr noundef nonnull %dd) #10
  call void @llvm.lifetime.end.p0(i64 168, ptr nonnull %dd) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_register_dpll_x2(ptr noundef %node, ptr noundef %hw_ops) unnamed_addr #1 align 64 {
entry:
  %init = alloca %struct.clk_init_data, align 4
  %parent_name = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %0 = getelementptr inbounds i8, ptr %init, i32 12
  %1 = call ptr @memset(ptr %0, i32 0, i32 16)
  %2 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %node, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %parent_name) #7
  %call = tail call ptr @of_clk_get_parent_name(ptr noundef %node, i32 noundef 0) #7
  %4 = ptrtoint ptr %parent_name to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call, ptr %parent_name, align 4
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef nonnull @.str.1, ptr noundef %node) #11
  br label %cleanup29

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %5 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %5, i32 noundef 3520, i32 noundef 76) #12
  %tobool4.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool4.not, label %if.end.cleanup29_crit_edge, label %if.end6

if.end.cleanup29_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup29

if.end6:                                          ; preds = %if.end
  %ops7 = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i, i32 0, i32 11
  %6 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %hw_ops, ptr %ops7, align 8
  %init8 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %7 = ptrtoint ptr %init8 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %init, ptr %init8, align 8
  %8 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %3, ptr %init, align 4
  %ops10 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %9 = ptrtoint ptr %ops10 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @dpll_x2_ck_ops, ptr %ops10, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %10 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %parent_name, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %11 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %num_parents, align 4
  %cmp = icmp eq ptr %hw_ops, @clkhwops_omap4_dpllmx
  br i1 %cmp, label %if.then11, label %if.end6.if.end21_crit_edge

if.end6.if.end21_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then11:                                        ; preds = %if.end6
  %call12 = call i32 @of_property_count_elems_of_size(ptr noundef %node, ptr noundef nonnull @.str.3, i32 noundef 1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 1
  br i1 %cmp13, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %ops7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %ops7, align 8
  br label %if.end21

if.else:                                          ; preds = %if.then11
  %clksel_reg = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i, i32 0, i32 7
  %call16 = call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef 0, ptr noundef %clksel_reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.else.if.end21_crit_edge, label %if.then18

if.else.if.end21_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then18:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup29

if.end21:                                         ; preds = %if.else.if.end21_crit_edge, %if.then14, %if.end6.if.end21_crit_edge
  %call23 = call ptr @ti_clk_register_omap_hw(ptr noundef null, ptr noundef nonnull %call7.i.i, ptr noundef %3) #7
  %cmp.i = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then25, label %if.else26

if.then25:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup29

if.else26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %call27 = call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call23) #7
  br label %cleanup29

cleanup29:                                        ; preds = %if.else26, %if.then25, %if.then18, %if.end.cleanup29_crit_edge, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %parent_name) #7
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_count_elems_of_size(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_get_reg_addr(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ti_clk_register_omap_hw(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_simple_get(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_clkoutx2_recalc(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_node_name_eq(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @of_ti_dpll_setup(ptr noundef %node, ptr noundef %ops, ptr noundef %ddt) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %min_div = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %min_div) #7
  %0 = ptrtoint ptr %min_div to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %min_div, align 4, !annotation !106
  %call = tail call ptr @kmemdup(ptr noundef %ddt, i32 noundef 168, i32 noundef 3264) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 76) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i177 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3520, i32 noundef 28) #12
  %tobool.not = icmp eq ptr %call, null
  %tobool3.not = icmp eq ptr %call7.i.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  %tobool5.not = icmp eq ptr %call7.i.i177, null
  %or.cond176 = select i1 %or.cond, i1 true, i1 %tobool5.not
  br i1 %or.cond176, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i, i32 0, i32 8
  %3 = ptrtoint ptr %dpll_data to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call, ptr %dpll_data, align 4
  %ops6 = getelementptr inbounds %struct.clk_hw_omap, ptr %call7.i.i, i32 0, i32 11
  %4 = ptrtoint ptr %ops6 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @clkhwops_omap3_dpll, ptr %ops6, align 8
  %init7 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %5 = ptrtoint ptr %init7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call7.i.i177, ptr %init7, align 8
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %8 = ptrtoint ptr %call7.i.i177 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %7, ptr %call7.i.i177, align 8
  %ops9 = getelementptr inbounds %struct.clk_init_data, ptr %call7.i.i177, i32 0, i32 1
  %9 = ptrtoint ptr %ops9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %ops, ptr %ops9, align 4
  %call10 = tail call i32 @of_clk_get_parent_count(ptr noundef %node) #7
  %conv = trunc i32 %call10 to i8
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %call7.i.i177, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %conv, ptr %num_parents, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %conv)
  %tobool12.not = icmp eq i8 %conv, 0
  br i1 %tobool12.not, label %do.end, label %if.end7.i.i

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.8, ptr noundef %node) #11
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end
  %conv17 = shl i32 %call10, 2
  %11 = and i32 %conv17, 1020
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #13
  %tobool19.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool19.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end21

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %if.end7.i.i
  %12 = ptrtoint ptr %num_parents to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %num_parents, align 4
  %conv23 = zext i8 %13 to i32
  %call24 = tail call i32 @of_clk_parent_fill(ptr noundef %node, ptr noundef nonnull %call8.i.i, i32 noundef %conv23) #7
  %parent_names25 = getelementptr inbounds %struct.clk_init_data, ptr %call7.i.i177, i32 0, i32 2
  %14 = ptrtoint ptr %parent_names25 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call8.i.i, ptr %parent_names25, align 8
  %control_reg = getelementptr inbounds %struct.dpll_data, ptr %call, i32 0, i32 5
  %call26 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef 0, ptr noundef %control_reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.end29, label %if.end21.cleanup_crit_edge

if.end21.cleanup_crit_edge:                       ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end29:                                         ; preds = %if.end21
  %idlest_mask = getelementptr inbounds %struct.dpll_data, ptr %call, i32 0, i32 21
  %15 = ptrtoint ptr %idlest_mask to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %idlest_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool30.not = icmp eq i32 %16, 0
  br i1 %tobool30.not, label %if.then31, label %if.else

if.then31:                                        ; preds = %if.end29
  %call32 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef 1, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call32)
  %tobool33.not = icmp eq i32 %call32, 0
  br i1 %tobool33.not, label %if.end35, label %if.then31.cleanup_crit_edge

if.then31.cleanup_crit_edge:                      ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %ops6 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @clkhwops_omap2xxx_dpll, ptr %ops6, align 8
  tail call void @omap2xxx_clkt_dpllcore_init(ptr noundef nonnull %call7.i.i) #7
  br label %if.end47

if.else:                                          ; preds = %if.end29
  %idlest_reg = getelementptr inbounds %struct.dpll_data, ptr %call, i32 0, i32 18
  %call38 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef 1, ptr noundef %idlest_reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %if.end41, label %if.else.cleanup_crit_edge

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41:                                         ; preds = %if.else
  %call43 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef 2, ptr noundef nonnull %call) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end41.if.end47_crit_edge, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end41.if.end47_crit_edge:                      ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47

if.end47:                                         ; preds = %if.end41.if.end47_crit_edge, %if.end35
  %autoidle_mask = getelementptr inbounds %struct.dpll_data, ptr %call, i32 0, i32 19
  %18 = ptrtoint ptr %autoidle_mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %autoidle_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool48.not = icmp eq i32 %19, 0
  br i1 %tobool48.not, label %if.end47.if.end55_crit_edge, label %if.then49

if.end47.if.end55_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.then49:                                        ; preds = %if.end47
  %autoidle_reg = getelementptr inbounds %struct.dpll_data, ptr %call, i32 0, i32 17
  %call50 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef 3, ptr noundef %autoidle_reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call50)
  %tobool51.not = icmp eq i32 %call50, 0
  br i1 %tobool51.not, label %if.then49.if.end55_crit_edge, label %if.then49.cleanup_crit_edge

if.then49.cleanup_crit_edge:                      ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then49.if.end55_crit_edge:                     ; preds = %if.then49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end55

if.end55:                                         ; preds = %if.then49.if.end55_crit_edge, %if.end47.if.end55_crit_edge
  %ssc_clk_index.0 = phi i32 [ 4, %if.then49.if.end55_crit_edge ], [ 3, %if.end47.if.end55_crit_edge ]
  %ssc_deltam_int_mask = getelementptr inbounds %struct.dpll_data, ptr %call, i32 0, i32 33
  %20 = ptrtoint ptr %ssc_deltam_int_mask to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ssc_deltam_int_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool56.not = icmp eq i32 %21, 0
  br i1 %tobool56.not, label %if.end55.if.end75_crit_edge, label %land.lhs.true

if.end55.if.end75_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

land.lhs.true:                                    ; preds = %if.end55
  %ssc_deltam_frac_mask = getelementptr inbounds %struct.dpll_data, ptr %call, i32 0, i32 34
  %22 = ptrtoint ptr %ssc_deltam_frac_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ssc_deltam_frac_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool57.not = icmp eq i32 %23, 0
  br i1 %tobool57.not, label %land.lhs.true.if.end75_crit_edge, label %land.lhs.true58

land.lhs.true.if.end75_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

land.lhs.true58:                                  ; preds = %land.lhs.true
  %ssc_modfreq_mant_mask = getelementptr inbounds %struct.dpll_data, ptr %call, i32 0, i32 35
  %24 = ptrtoint ptr %ssc_modfreq_mant_mask to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ssc_modfreq_mant_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool59.not = icmp eq i32 %25, 0
  br i1 %tobool59.not, label %land.lhs.true58.if.end75_crit_edge, label %land.lhs.true60

land.lhs.true58.if.end75_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

land.lhs.true60:                                  ; preds = %land.lhs.true58
  %ssc_modfreq_exp_mask = getelementptr inbounds %struct.dpll_data, ptr %call, i32 0, i32 36
  %26 = ptrtoint ptr %ssc_modfreq_exp_mask to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ssc_modfreq_exp_mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool61.not = icmp eq i32 %27, 0
  br i1 %tobool61.not, label %land.lhs.true60.if.end75_crit_edge, label %if.then62

land.lhs.true60.if.end75_crit_edge:               ; preds = %land.lhs.true60
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end75

if.then62:                                        ; preds = %land.lhs.true60
  %ssc_deltam_reg = getelementptr inbounds %struct.dpll_data, ptr %call, i32 0, i32 31
  %call63 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef %ssc_clk_index.0, ptr noundef %ssc_deltam_reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.then62.cleanup_crit_edge

if.then62.cleanup_crit_edge:                      ; preds = %if.then62
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end66:                                         ; preds = %if.then62
  %inc = add nuw nsw i32 %ssc_clk_index.0, 1
  %ssc_modfreq_reg = getelementptr inbounds %struct.dpll_data, ptr %call, i32 0, i32 32
  %call68 = tail call i32 @ti_clk_get_reg_addr(ptr noundef %node, i32 noundef %inc, ptr noundef %ssc_modfreq_reg) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.end71, label %if.end66.cleanup_crit_edge

if.end66.cleanup_crit_edge:                       ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end71:                                         ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %ssc_modfreq = getelementptr inbounds %struct.dpll_data, ptr %call, i32 0, i32 39
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.9, ptr noundef %ssc_modfreq, i32 noundef 1, i32 noundef 0) #7
  %ssc_deltam = getelementptr inbounds %struct.dpll_data, ptr %call, i32 0, i32 40
  %call.i.i178 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.10, ptr noundef %ssc_deltam, i32 noundef 1, i32 noundef 0) #7
  %call.i = tail call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.11, ptr noundef null) #7
  %tobool.i = icmp ne ptr %call.i, null
  %ssc_downspread = getelementptr inbounds %struct.dpll_data, ptr %call, i32 0, i32 41
  %frombool = zext i1 %tobool.i to i8
  %28 = ptrtoint ptr %ssc_downspread to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 %frombool, ptr %ssc_downspread, align 4
  br label %if.end75

if.end75:                                         ; preds = %if.end71, %land.lhs.true60.if.end75_crit_edge, %land.lhs.true58.if.end75_crit_edge, %land.lhs.true.if.end75_crit_edge, %if.end55.if.end75_crit_edge
  %call.i179 = tail call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.12, ptr noundef null) #7
  %tobool.i180.not = icmp eq ptr %call.i179, null
  %spec.select = select i1 %tobool.i180.not, i8 0, i8 2
  %call.i181 = tail call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.13, ptr noundef null) #7
  %tobool.i182.not = icmp eq ptr %call.i181, null
  %29 = or i8 %spec.select, 32
  %dpll_mode.1 = select i1 %tobool.i182.not, i8 %spec.select, i8 %29
  %call.i183 = tail call ptr @of_find_property(ptr noundef %node, ptr noundef nonnull @.str.14, ptr noundef null) #7
  %tobool.i184.not = icmp eq ptr %call.i183, null
  %30 = or i8 %dpll_mode.1, -128
  %dpll_mode.2 = select i1 %tobool.i184.not, i8 %dpll_mode.1, i8 %30
  %call.i.i185 = call i32 @of_property_read_variable_u32_array(ptr noundef %node, ptr noundef nonnull @.str.15, ptr noundef nonnull %min_div, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i185)
  %tobool94.not = icmp sgt i32 %call.i.i185, -1
  br i1 %tobool94.not, label %land.lhs.true95, label %if.end75.if.end101_crit_edge

if.end75.if.end101_crit_edge:                     ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

land.lhs.true95:                                  ; preds = %if.end75
  %31 = ptrtoint ptr %min_div to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %min_div, align 4
  %min_divider = getelementptr inbounds %struct.dpll_data, ptr %call, i32 0, i32 13
  %33 = ptrtoint ptr %min_divider to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %min_divider, align 1
  %conv96 = zext i8 %34 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %32, i32 %conv96)
  %cmp = icmp ugt i32 %32, %conv96
  br i1 %cmp, label %if.then98, label %land.lhs.true95.if.end101_crit_edge

land.lhs.true95.if.end101_crit_edge:              ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end101

if.then98:                                        ; preds = %land.lhs.true95
  call void @__sanitizer_cov_trace_pc() #9
  %conv99 = trunc i32 %32 to i8
  %35 = ptrtoint ptr %min_divider to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 %conv99, ptr %min_divider, align 1
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %land.lhs.true95.if.end101_crit_edge, %if.end75.if.end101_crit_edge
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %dpll_mode.2)
  %tobool102.not = icmp eq i8 %dpll_mode.2, 0
  br i1 %tobool102.not, label %if.end101.if.end104_crit_edge, label %if.then103

if.end101.if.end104_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end104

if.then103:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #9
  %modes = getelementptr inbounds %struct.dpll_data, ptr %call, i32 0, i32 16
  %36 = ptrtoint ptr %modes to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %dpll_mode.2, ptr %modes, align 4
  br label %if.end104

if.end104:                                        ; preds = %if.then103, %if.end101.if.end104_crit_edge
  call void @_register_dpll(ptr noundef nonnull %call7.i.i, ptr noundef %node) #10
  br label %cleanup106

cleanup:                                          ; preds = %if.end66.cleanup_crit_edge, %if.then62.cleanup_crit_edge, %if.then49.cleanup_crit_edge, %if.end41.cleanup_crit_edge, %if.else.cleanup_crit_edge, %if.then31.cleanup_crit_edge, %if.end21.cleanup_crit_edge, %if.end7.i.i.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %parent_names.0 = phi ptr [ %call8.i.i, %if.end21.cleanup_crit_edge ], [ %call8.i.i, %if.else.cleanup_crit_edge ], [ %call8.i.i, %if.end41.cleanup_crit_edge ], [ %call8.i.i, %if.then49.cleanup_crit_edge ], [ %call8.i.i, %if.then62.cleanup_crit_edge ], [ %call8.i.i, %if.end66.cleanup_crit_edge ], [ %call8.i.i, %if.then31.cleanup_crit_edge ], [ null, %if.end7.i.i.cleanup_crit_edge ], [ null, %do.end ], [ null, %entry.cleanup_crit_edge ]
  tail call void @kfree(ptr noundef %call) #7
  tail call void @kfree(ptr noundef %parent_names.0) #7
  tail call void @kfree(ptr noundef %call7.i.i177) #7
  tail call void @kfree(ptr noundef %call7.i.i) #7
  br label %cleanup106

cleanup106:                                       ; preds = %cleanup, %if.end104
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %min_div) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_get_parent_count(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_parent_fill(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap2xxx_clkt_dpllcore_init(ptr noundef) local_unnamed_addr #3

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @_register_dpll(ptr noundef %user, ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dpll_data = getelementptr inbounds %struct.clk_hw_omap, ptr %user, i32 0, i32 8
  %0 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dpll_data, align 4
  %init1 = getelementptr inbounds %struct.clk_hw, ptr %user, i32 0, i32 2
  %2 = ptrtoint ptr %init1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %init1, align 4
  %call = tail call ptr @of_clk_get(ptr noundef %node, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.body, label %if.end12

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_register_dpll.__UNIQUE_ID_ddebug175, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_register_dpll, %if.then7)) #7
          to label %do.end [label %if.then7], !srcloc !107

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_register_dpll.__UNIQUE_ID_ddebug175, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, ptr noundef %node) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %call8 = tail call i32 @ti_clk_retry_init(ptr noundef %node, ptr noundef %user, ptr noundef nonnull @_register_dpll) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.end.cleanup47_crit_edge, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end.cleanup47_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

if.end12:                                         ; preds = %entry
  %call13 = tail call ptr @__clk_get_hw(ptr noundef %call) #7
  %clk_ref = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %clk_ref to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call13, ptr %clk_ref, align 4
  %call14 = tail call ptr @of_clk_get(ptr noundef %node, i32 noundef 1) #7
  %cmp.i77 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %do.body17, label %if.end37

do.body17:                                        ; preds = %if.end12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @_register_dpll.__UNIQUE_ID_ddebug176, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_register_dpll, %if.then29)) #7
          to label %do.end32 [label %if.then29], !srcloc !107

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @_register_dpll.__UNIQUE_ID_ddebug176, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.17, ptr noundef %node) #7
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body17
  %call33 = tail call i32 @ti_clk_retry_init(ptr noundef %node, ptr noundef %user, ptr noundef nonnull @_register_dpll) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %do.end32.cleanup47_crit_edge, label %do.end32.cleanup_crit_edge

do.end32.cleanup_crit_edge:                       ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end32.cleanup47_crit_edge:                     ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup47

if.end37:                                         ; preds = %if.end12
  %call38 = tail call ptr @__clk_get_hw(ptr noundef %call14) #7
  %clk_bypass = getelementptr inbounds %struct.dpll_data, ptr %1, i32 0, i32 3
  %5 = ptrtoint ptr %clk_bypass to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call38, ptr %clk_bypass, align 4
  %6 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %node, align 4
  %call40 = tail call ptr @ti_clk_register_omap_hw(ptr noundef null, ptr noundef %user, ptr noundef %7) #7
  %cmp.i78 = icmp ugt ptr %call40, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %if.end37.cleanup_crit_edge, label %if.then42

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %call43 = tail call i32 @of_clk_add_provider(ptr noundef %node, ptr noundef nonnull @of_clk_src_simple_get, ptr noundef %call40) #7
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %parent_names to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %parent_names, align 4
  br label %cleanup47.sink.split

cleanup:                                          ; preds = %if.end37.cleanup_crit_edge, %do.end32.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %10 = ptrtoint ptr %dpll_data to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dpll_data, align 4
  tail call void @kfree(ptr noundef %11) #7
  %parent_names46 = getelementptr inbounds %struct.clk_init_data, ptr %3, i32 0, i32 2
  %12 = ptrtoint ptr %parent_names46 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %parent_names46, align 4
  tail call void @kfree(ptr noundef %13) #7
  br label %cleanup47.sink.split

cleanup47.sink.split:                             ; preds = %cleanup, %if.then42
  %.sink = phi ptr [ %3, %cleanup ], [ %9, %if.then42 ]
  %user.sink = phi ptr [ %user, %cleanup ], [ %3, %if.then42 ]
  tail call void @kfree(ptr noundef %.sink) #7
  tail call void @kfree(ptr noundef %user.sink) #7
  br label %cleanup47

cleanup47:                                        ; preds = %cleanup47.sink.split, %do.end32.cleanup47_crit_edge, %do.end.cleanup47_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @ti_clk_retry_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_hw(ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_noncore_dpll_enable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_noncore_dpll_disable(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_dpll_recalc(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_dpll_round_rate(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_noncore_dpll_determine_rate(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_noncore_dpll_set_parent(ptr noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @omap2_init_dpll_parent(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_dpll5_set_rate(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_noncore_dpll_set_rate_and_parent(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_noncore_dpll_set_rate(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_dpll4_set_rate(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_dpll4_set_rate_and_parent(ptr noundef, i32 noundef, i32 noundef, i8 noundef zeroext) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_noncore_dpll_save_context(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_noncore_dpll_restore_context(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap3_core_dpll_save_context(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap3_core_dpll_restore_context(ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_dpll_regm4xen_recalc(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_dpll_regm4xen_round_rate(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap4_dpll_regm4xen_determine_rate(ptr noundef, ptr noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_dpllcore_recalc(ptr noundef, i32 noundef) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap2_reprogram_dpllcore(ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 34)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }
attributes #13 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !37, !38, !39, !40, !42, !44, !46, !48, !50, !52, !53, !54, !55, !57, !59, !61, !63, !65, !67, !69, !71, !72, !73, !74, !75, !77, !78, !79, !81, !83, !85, !87, !89, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @__of_table_ti_omap4_dpll_x2_clock, !1, !"__of_table_ti_omap4_dpll_x2_clock", i1 false, i1 false}
!1 = !{!"../drivers/clk/ti/dpll.c", i32 405, i32 1}
!2 = !{ptr @__of_table_ti_am3_dpll_x2_clock, !3, !"__of_table_ti_am3_dpll_x2_clock", i1 false, i1 false}
!3 = !{!"../drivers/clk/ti/dpll.c", i32 414, i32 1}
!4 = !{ptr @__of_table_ti_omap3_dpll_clock, !5, !"__of_table_ti_omap3_dpll_clock", i1 false, i1 false}
!5 = !{!"../drivers/clk/ti/dpll.c", i32 441, i32 1}
!6 = !{ptr @__of_table_ti_omap3_core_dpll_clock, !7, !"__of_table_ti_omap3_core_dpll_clock", i1 false, i1 false}
!7 = !{!"../drivers/clk/ti/dpll.c", i32 460, i32 1}
!8 = !{ptr @__of_table_ti_omap3_per_dpll_clock, !9, !"__of_table_ti_omap3_per_dpll_clock", i1 false, i1 false}
!9 = !{!"../drivers/clk/ti/dpll.c", i32 480, i32 1}
!10 = !{ptr @__of_table_ti_omap3_per_jtype_dpll_clock, !11, !"__of_table_ti_omap3_per_jtype_dpll_clock", i1 false, i1 false}
!11 = !{!"../drivers/clk/ti/dpll.c", i32 502, i32 1}
!12 = !{ptr @__of_table_ti_omap4_dpll_clock, !13, !"__of_table_ti_omap4_dpll_clock", i1 false, i1 false}
!13 = !{!"../drivers/clk/ti/dpll.c", i32 522, i32 1}
!14 = !{ptr @__of_table_of_ti_omap5_mpu_dpll_clock, !15, !"__of_table_of_ti_omap5_mpu_dpll_clock", i1 false, i1 false}
!15 = !{!"../drivers/clk/ti/dpll.c", i32 543, i32 1}
!16 = !{ptr @__of_table_ti_omap4_core_dpll_clock, !17, !"__of_table_ti_omap4_core_dpll_clock", i1 false, i1 false}
!17 = !{!"../drivers/clk/ti/dpll.c", i32 562, i32 1}
!18 = !{ptr @__of_table_ti_omap4_m4xen_dpll_clock, !19, !"__of_table_ti_omap4_m4xen_dpll_clock", i1 false, i1 false}
!19 = !{!"../drivers/clk/ti/dpll.c", i32 585, i32 1}
!20 = !{ptr @__of_table_ti_omap4_jtype_dpll_clock, !21, !"__of_table_ti_omap4_jtype_dpll_clock", i1 false, i1 false}
!21 = !{!"../drivers/clk/ti/dpll.c", i32 606, i32 1}
!22 = !{ptr @__of_table_ti_am3_no_gate_dpll_clock, !23, !"__of_table_ti_am3_no_gate_dpll_clock", i1 false, i1 false}
!23 = !{!"../drivers/clk/ti/dpll.c", i32 632, i32 1}
!24 = !{ptr @__of_table_ti_am3_jtype_dpll_clock, !25, !"__of_table_ti_am3_jtype_dpll_clock", i1 false, i1 false}
!25 = !{!"../drivers/clk/ti/dpll.c", i32 652, i32 1}
!26 = !{ptr @__of_table_ti_am3_no_gate_jtype_dpll_clock, !27, !"__of_table_ti_am3_no_gate_jtype_dpll_clock", i1 false, i1 false}
!27 = !{!"../drivers/clk/ti/dpll.c", i32 672, i32 1}
!28 = !{ptr @__of_table_ti_am3_dpll_clock, !29, !"__of_table_ti_am3_dpll_clock", i1 false, i1 false}
!29 = !{!"../drivers/clk/ti/dpll.c", i32 698, i32 1}
!30 = !{ptr @__of_table_ti_am3_core_dpll_clock, !31, !"__of_table_ti_am3_core_dpll_clock", i1 false, i1 false}
!31 = !{!"../drivers/clk/ti/dpll.c", i32 716, i32 1}
!32 = !{ptr @__of_table_ti_omap2_core_dpll_clock, !33, !"__of_table_ti_omap2_core_dpll_clock", i1 false, i1 false}
!33 = !{!"../drivers/clk/ti/dpll.c", i32 731, i32 1}
!34 = !{ptr @.str, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/clk/ti/dpll.c", i32 235, i32 3}
!36 = !{ptr @.str.1, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.2, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @_register_dpll_x2._entry, !35, !"_entry", i1 false, i1 false}
!39 = !{ptr @_register_dpll_x2._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.3, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/clk/ti/dpll.c", i32 257, i32 47}
!42 = !{ptr @dpll_x2_ck_ops, !43, !"dpll_x2_ck_ops", i1 false, i1 false}
!43 = !{!"../drivers/clk/ti/dpll.c", i32 148, i32 29}
!44 = !{ptr @.str.4, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/ti/dpll.c", i32 434, i32 32}
!46 = !{ptr @.str.5, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/clk/ti/dpll.c", i32 435, i32 32}
!48 = !{ptr @.str.6, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/clk/ti/dpll.c", i32 436, i32 29}
!50 = !{ptr @.str.7, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/ti/dpll.c", i32 312, i32 3}
!52 = !{ptr @.str.8, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @of_ti_dpll_setup._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @of_ti_dpll_setup._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.9, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/ti/dpll.c", i32 366, i32 30}
!57 = !{ptr @.str.10, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/ti/dpll.c", i32 368, i32 30}
!59 = !{ptr @.str.11, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/ti/dpll.c", i32 370, i32 32}
!61 = !{ptr @.str.12, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/clk/ti/dpll.c", i32 373, i32 34}
!63 = !{ptr @.str.13, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/clk/ti/dpll.c", i32 376, i32 34}
!65 = !{ptr @.str.14, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/clk/ti/dpll.c", i32 379, i32 34}
!67 = !{ptr @.str.15, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/ti/dpll.c", i32 382, i32 34}
!69 = !{ptr @.str.16, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/clk/ti/dpll.c", i32 172, i32 3}
!71 = !{ptr @.str.17, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @.str.18, !70, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @_register_dpll.__UNIQUE_ID_ddebug175, !70, !"__UNIQUE_ID_ddebug175", i1 false, i1 false}
!74 = !{ptr @.str.19, !70, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.20, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/clk/ti/dpll.c", i32 185, i32 3}
!77 = !{ptr @_register_dpll.__UNIQUE_ID_ddebug176, !76, !"__UNIQUE_ID_ddebug176", i1 false, i1 false}
!78 = !{ptr @.str.21, !76, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @omap3_dpll5_ck_ops, !80, !"omap3_dpll5_ck_ops", i1 false, i1 false}
!80 = !{!"../drivers/clk/ti/dpll.c", i32 123, i32 29}
!81 = !{ptr @omap3_dpll_ck_ops, !82, !"omap3_dpll_ck_ops", i1 false, i1 false}
!82 = !{!"../drivers/clk/ti/dpll.c", i32 111, i32 29}
!83 = !{ptr @omap3_dpll_core_ck_ops, !84, !"omap3_dpll_core_ck_ops", i1 false, i1 false}
!84 = !{!"../drivers/clk/ti/dpll.c", i32 101, i32 29}
!85 = !{ptr @omap3_dpll_per_ck_ops, !86, !"omap3_dpll_per_ck_ops", i1 false, i1 false}
!86 = !{!"../drivers/clk/ti/dpll.c", i32 135, i32 29}
!87 = !{ptr @dpll_ck_ops, !88, !"dpll_ck_ops", i1 false, i1 false}
!88 = !{!"../drivers/clk/ti/dpll.c", i32 57, i32 29}
!89 = !{ptr @dpll_core_ck_ops, !90, !"dpll_core_ck_ops", i1 false, i1 false}
!90 = !{!"../drivers/clk/ti/dpll.c", i32 52, i32 29}
!91 = !{ptr @dpll_m4xen_ck_ops, !92, !"dpll_m4xen_ck_ops", i1 false, i1 false}
!92 = !{!"../drivers/clk/ti/dpll.c", i32 32, i32 29}
!93 = !{ptr @dpll_no_gate_ck_ops, !94, !"dpll_no_gate_ck_ops", i1 false, i1 false}
!94 = !{!"../drivers/clk/ti/dpll.c", i32 71, i32 29}
!95 = !{ptr @omap2_dpll_core_ck_ops, !96, !"omap2_dpll_core_ck_ops", i1 false, i1 false}
!96 = !{!"../drivers/clk/ti/dpll.c", i32 90, i32 29}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{!"auto-init"}
!107 = !{i64 2148740532, i64 2148740537, i64 2148740550, i64 2148740594, i64 2148740628, i64 2148740649}
