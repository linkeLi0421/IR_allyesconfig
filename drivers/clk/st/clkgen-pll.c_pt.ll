; ModuleID = '/llk/IR_all_yes/drivers/clk/st/clkgen-pll.c_pt.bc'
source_filename = "../drivers/clk/st/clkgen-pll.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.clkgen_pll_data_clks = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.clkgen_pll_data = type { %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, %struct.clkgen_field, i32, [4 x %struct.clkgen_field], [4 x %struct.clkgen_field], i8, %struct.clkgen_field, ptr, ptr }
%struct.clkgen_field = type { i32, i32, i32 }
%struct.clkgen_clk_out = type { ptr, i32 }
%struct.clk_onecell_data = type { ptr, i32 }
%struct.clk_init_data = type { ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.clkgen_pll = type { %struct.clk_hw, ptr, ptr, ptr, i32, i32, i32 }
%struct.clk_hw = type { ptr, ptr, ptr }
%struct.clk_gate = type { %struct.clk_hw, ptr, i8, i8, ptr }
%struct.clk_divider = type { %struct.clk_hw, ptr, i8, i8, i8, ptr, ptr }

@.str = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clkgen_a9_lock\00", [17 x i8] zeroinitializer }, align 32
@clkgen_a9_lock = dso_local global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@__of_table_c32_pll0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,clkgen-pll0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_c32_pll0_setup }, section "__clk_of_table", align 4
@__of_table_c32_pll0_a0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,clkgen-pll0-a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_c32_pll0_a0_setup }, section "__clk_of_table", align 4
@__of_table_c32_pll0_c0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,clkgen-pll0-c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_c32_pll0_c0_setup }, section "__clk_of_table", align 4
@__of_table_c32_pll1 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,clkgen-pll1\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_c32_pll1_setup }, section "__clk_of_table", align 4
@__of_table_c32_pll1_c0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,clkgen-pll1-c0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_c32_pll1_c0_setup }, section "__clk_of_table", align 4
@__of_table_c32_plla9 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih407-clkgen-plla9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_c32_plla9_setup }, section "__clk_of_table", align 4
@__of_table_c28_plla9 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stih418-clkgen-plla9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @clkgen_c28_plla9_setup }, section "__clk_of_table", align 4
@st_pll3200c32_cx_0_legacy_data = internal constant { %struct.clkgen_pll_data_clks, [24 x i8] } { %struct.clkgen_pll_data_clks { ptr @st_pll3200c32_cx_0, ptr null }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clock-output-names\00", [45 x i8] zeroinitializer }, align 32
@clkgena_c32_odf_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon.1 { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.7, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@clkgen_pll_register.__UNIQUE_ID_ddebug186 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, i8 0, i8 -87, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"clkgen_pll\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clkgen_pll_register\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/clk/st/clkgen-pll.c\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: parent %s rate %lu\0A\00", [40 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@clk_divider_ops = external dso_local constant %struct.clk_ops, align 4
@clk_gate_ops = external dso_local constant %struct.clk_ops, align 4
@clkgen_odf_register.__UNIQUE_ID_ddebug187 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.6, ptr @.str.4, ptr @.str.5, i8 0, i8 -70, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clkgen_odf_register\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"clkgena_c32_odf_lock\00", [43 x i8] zeroinitializer }, align 32
@st_pll3200c32_cx_0 = internal constant { %struct.clkgen_pll_data, [56 x i8] } { %struct.clkgen_pll_data { %struct.clkgen_field { i32 672, i32 1, i32 8 }, %struct.clkgen_field { i32 672, i32 1, i32 8 }, %struct.clkgen_field { i32 672, i32 1, i32 24 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 676, i32 255, i32 16 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 676, i32 7, i32 0 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, i32 1, [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 692, i32 63, i32 0 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 692, i32 1, i32 6 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer], i8 0, %struct.clkgen_field zeroinitializer, ptr null, ptr @stm_pll3200c32_ops }, [56 x i8] zeroinitializer }, align 32
@stm_pll3200c32_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clkgen_pll_enable, ptr @clkgen_pll_disable, ptr @clkgen_pll_is_enabled, ptr null, ptr null, ptr null, ptr @recalc_stm_pll3200c32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@__clkgen_pll_enable.__UNIQUE_ID_ddebug175 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.8, ptr @.str.4, ptr @.str.9, i8 0, i8 65, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"__clkgen_pll_enable\00", [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s:%s enabled\0A\00", [17 x i8] zeroinitializer }, align 32
@__clkgen_pll_disable.__UNIQUE_ID_ddebug176 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.10, ptr @.str.4, ptr @.str.11, i8 0, i8 74, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__clkgen_pll_disable\00", [43 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s:%s disabled\0A\00", [16 x i8] zeroinitializer }, align 32
@recalc_stm_pll3200c32.__UNIQUE_ID_ddebug177 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.12, ptr @.str.4, ptr @.str.13, i8 0, i8 98, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"recalc_stm_pll3200c32\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s:%s rate %lu\0A\00", [16 x i8] zeroinitializer }, align 32
@st_pll3200c32_a0_data = internal constant { %struct.clkgen_pll_data_clks, [24 x i8] } { %struct.clkgen_pll_data_clks { ptr @st_pll3200c32_cx_0, ptr @st_pll3200c32_ax_0_clks }, [24 x i8] zeroinitializer }, align 32
@st_pll3200c32_ax_0_clks = internal constant { [1 x %struct.clkgen_clk_out], [24 x i8] } { [1 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.14, i32 0 }], [24 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"clk-s-a0-pll-odf-0\00", [45 x i8] zeroinitializer }, align 32
@st_pll3200c32_c0_data = internal constant { %struct.clkgen_pll_data_clks, [24 x i8] } { %struct.clkgen_pll_data_clks { ptr @st_pll3200c32_cx_0, ptr @st_pll3200c32_cx_0_clks }, [24 x i8] zeroinitializer }, align 32
@st_pll3200c32_cx_0_clks = internal constant { [1 x %struct.clkgen_clk_out], [24 x i8] } { [1 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.15, i32 0 }], [24 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk-s-c0-pll0-odf-0\00", [44 x i8] zeroinitializer }, align 32
@st_pll3200c32_cx_1_legacy_data = internal constant { %struct.clkgen_pll_data_clks, [24 x i8] } { %struct.clkgen_pll_data_clks { ptr @st_pll3200c32_cx_1, ptr null }, [24 x i8] zeroinitializer }, align 32
@st_pll3200c32_cx_1 = internal constant { %struct.clkgen_pll_data, [56 x i8] } { %struct.clkgen_pll_data { %struct.clkgen_field { i32 712, i32 1, i32 8 }, %struct.clkgen_field { i32 712, i32 1, i32 8 }, %struct.clkgen_field { i32 712, i32 1, i32 24 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 716, i32 255, i32 16 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 716, i32 7, i32 0 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, i32 1, [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 732, i32 63, i32 0 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 732, i32 1, i32 6 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer], i8 0, %struct.clkgen_field zeroinitializer, ptr null, ptr @stm_pll3200c32_ops }, [56 x i8] zeroinitializer }, align 32
@st_pll3200c32_c1_data = internal constant { %struct.clkgen_pll_data_clks, [24 x i8] } { %struct.clkgen_pll_data_clks { ptr @st_pll3200c32_cx_1, ptr @st_pll3200c32_cx_1_clks }, [24 x i8] zeroinitializer }, align 32
@st_pll3200c32_cx_1_clks = internal constant { [1 x %struct.clkgen_clk_out], [24 x i8] } { [1 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.16, i32 0 }], [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clk-s-c0-pll1-odf-0\00", [44 x i8] zeroinitializer }, align 32
@st_pll3200c32_407_a9_data = internal constant { %struct.clkgen_pll_data_clks, [24 x i8] } { %struct.clkgen_pll_data_clks { ptr @st_pll3200c32_407_a9, ptr @st_pll3200c32_407_a9_clks }, [24 x i8] zeroinitializer }, align 32
@st_pll3200c32_407_a9 = internal constant { %struct.clkgen_pll_data, [56 x i8] } { %struct.clkgen_pll_data { %struct.clkgen_field { i32 424, i32 1, i32 0 }, %struct.clkgen_field { i32 424, i32 1, i32 0 }, %struct.clkgen_field { i32 2172, i32 1, i32 0 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 432, i32 255, i32 0 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 424, i32 7, i32 25 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 424, i32 31, i32 1 }, i32 1, [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 432, i32 63, i32 8 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 428, i32 1, i32 28 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer], i8 1, %struct.clkgen_field { i32 420, i32 1, i32 1 }, ptr @clkgen_a9_lock, ptr @stm_pll3200c32_a9_ops }, [56 x i8] zeroinitializer }, align 32
@st_pll3200c32_407_a9_clks = internal constant { [1 x %struct.clkgen_clk_out], [24 x i8] } { [1 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.22, i32 0 }], [24 x i8] zeroinitializer }, align 32
@stm_pll3200c32_a9_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clkgen_pll_enable, ptr @clkgen_pll_disable, ptr @clkgen_pll_is_enabled, ptr null, ptr null, ptr null, ptr @recalc_stm_pll3200c32, ptr @round_rate_stm_pll3200c32, ptr null, ptr null, ptr null, ptr @set_rate_stm_pll3200c32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@round_rate_stm_pll3200c32.__UNIQUE_ID_ddebug178 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.17, ptr @.str.4, ptr @.str.18, i8 0, i8 101, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"round_rate_stm_pll3200c32\00", [38 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: %s rate %ld Invalid\0A\00", [39 x i8] zeroinitializer }, align 32
@round_rate_stm_pll3200c32.__UNIQUE_ID_ddebug179 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.17, ptr @.str.4, ptr @.str.19, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: %s new rate %ld [ndiv=%u] [idf=%u]\0A\00", [56 x i8] zeroinitializer }, align 32
@clk_pll3200c32_get_params.cp_table = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"08@HPX`hpx\80\88\90\98\A0\A8\B0\B8\C0", [45 x i8] zeroinitializer }, align 32
@set_rate_stm_pll3200c32.__UNIQUE_ID_ddebug180 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.20, ptr @.str.4, ptr @.str.21, i8 0, i8 109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set_rate_stm_pll3200c32\00", [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: %s new rate %ld [ndiv=0x%x] [idf=0x%x]\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"clockgen-a9-pll-odf\00", [44 x i8] zeroinitializer }, align 32
@st_pll4600c28_418_a9_data = internal constant { %struct.clkgen_pll_data_clks, [24 x i8] } { %struct.clkgen_pll_data_clks { ptr @st_pll4600c28_418_a9, ptr @st_pll4600c28_418_a9_clks }, [24 x i8] zeroinitializer }, align 32
@st_pll4600c28_418_a9 = internal global { %struct.clkgen_pll_data, [56 x i8] } { %struct.clkgen_pll_data { %struct.clkgen_field { i32 424, i32 1, i32 0 }, %struct.clkgen_field { i32 424, i32 1, i32 0 }, %struct.clkgen_field { i32 2172, i32 1, i32 0 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 432, i32 255, i32 0 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field { i32 424, i32 7, i32 25 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, i32 1, [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 432, i32 63, i32 8 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer], [4 x %struct.clkgen_field] [%struct.clkgen_field { i32 428, i32 1, i32 28 }, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer, %struct.clkgen_field zeroinitializer], i8 1, %struct.clkgen_field { i32 420, i32 1, i32 1 }, ptr @clkgen_a9_lock, ptr @stm_pll4600c28_ops }, [56 x i8] zeroinitializer }, align 32
@st_pll4600c28_418_a9_clks = internal constant { [1 x %struct.clkgen_clk_out], [24 x i8] } { [1 x %struct.clkgen_clk_out] [%struct.clkgen_clk_out { ptr @.str.22, i32 0 }], [24 x i8] zeroinitializer }, align 32
@stm_pll4600c28_ops = internal constant { %struct.clk_ops, [60 x i8] } { %struct.clk_ops { ptr null, ptr null, ptr null, ptr null, ptr @clkgen_pll_enable, ptr @clkgen_pll_disable, ptr @clkgen_pll_is_enabled, ptr null, ptr null, ptr null, ptr @recalc_stm_pll4600c28, ptr @round_rate_stm_pll4600c28, ptr null, ptr null, ptr null, ptr @set_rate_stm_pll4600c28, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [60 x i8] zeroinitializer }, align 32
@recalc_stm_pll4600c28.__UNIQUE_ID_ddebug181 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.23, ptr @.str.4, ptr @.str.13, i8 0, i8 -120, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"recalc_stm_pll4600c28\00", [42 x i8] zeroinitializer }, align 32
@round_rate_stm_pll4600c28.__UNIQUE_ID_ddebug182 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.24, ptr @.str.4, ptr @.str.18, i8 0, i8 -116, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"round_rate_stm_pll4600c28\00", [38 x i8] zeroinitializer }, align 32
@round_rate_stm_pll4600c28.__UNIQUE_ID_ddebug183 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.24, ptr @.str.4, ptr @.str.19, i8 0, i8 -114, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@set_rate_stm_pll4600c28.__UNIQUE_ID_ddebug184 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.25, ptr @.str.4, ptr @.str.18, i8 0, i8 -109, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"set_rate_stm_pll4600c28\00", [40 x i8] zeroinitializer }, align 32
@set_rate_stm_pll4600c28.__UNIQUE_ID_ddebug185 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.2, ptr @.str.25, ptr @.str.4, ptr @.str.21, i8 0, i8 -108, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"clkgen_a9_lock\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 21, i32 1 }
@___asan_gen_.32 = private unnamed_addr constant [31 x i8] c"st_pll3200c32_cx_0_legacy_data\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 88, i32 42 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 801, i32 10 }
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"clkgena_c32_odf_lock\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 675, i32 2 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 742, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 20, i32 8 }
@___asan_gen_.59 = private unnamed_addr constant [19 x i8] c"st_pll3200c32_cx_0\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 75, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant [19 x i8] c"stm_pll3200c32_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 619, i32 29 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 263, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 298, i32 2 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 393, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant [22 x i8] c"st_pll3200c32_a0_data\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 96, i32 42 }
@___asan_gen_.86 = private unnamed_addr constant [24 x i8] c"st_pll3200c32_ax_0_clks\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 92, i32 36 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 93, i32 12 }
@___asan_gen_.92 = private unnamed_addr constant [22 x i8] c"st_pll3200c32_c0_data\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 105, i32 42 }
@___asan_gen_.95 = private unnamed_addr constant [24 x i8] c"st_pll3200c32_cx_0_clks\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 101, i32 36 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 102, i32 12 }
@___asan_gen_.101 = private unnamed_addr constant [31 x i8] c"st_pll3200c32_cx_1_legacy_data\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 123, i32 42 }
@___asan_gen_.104 = private unnamed_addr constant [19 x i8] c"st_pll3200c32_cx_1\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 110, i32 37 }
@___asan_gen_.107 = private unnamed_addr constant [22 x i8] c"st_pll3200c32_c1_data\00", align 1
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 131, i32 42 }
@___asan_gen_.110 = private unnamed_addr constant [24 x i8] c"st_pll3200c32_cx_1_clks\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 127, i32 36 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 128, i32 12 }
@___asan_gen_.116 = private unnamed_addr constant [26 x i8] c"st_pll3200c32_407_a9_data\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 157, i32 42 }
@___asan_gen_.119 = private unnamed_addr constant [21 x i8] c"st_pll3200c32_407_a9\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 136, i32 37 }
@___asan_gen_.122 = private unnamed_addr constant [26 x i8] c"st_pll3200c32_407_a9_clks\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 153, i32 36 }
@___asan_gen_.125 = private unnamed_addr constant [22 x i8] c"stm_pll3200c32_a9_ops\00", align 1
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 626, i32 29 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 406, i32 3 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 411, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant [9 x i8] c"cp_table\00", align 1
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 323, i32 29 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 433, i32 2 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 154, i32 12 }
@___asan_gen_.149 = private unnamed_addr constant [26 x i8] c"st_pll4600c28_418_a9_data\00", align 1
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 182, i32 42 }
@___asan_gen_.152 = private unnamed_addr constant [21 x i8] c"st_pll4600c28_418_a9\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 162, i32 31 }
@___asan_gen_.155 = private unnamed_addr constant [26 x i8] c"st_pll4600c28_418_a9_clks\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 178, i32 36 }
@___asan_gen_.158 = private unnamed_addr constant [19 x i8] c"stm_pll4600c28_ops\00", align 1
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 635, i32 29 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 547, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 560, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.168 = private constant [31 x i8] c"../drivers/clk/st/clkgen-pll.c\00", align 1
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.168, i32 587, i32 3 }
@llvm.compiler.used = appending global [55 x ptr] [ptr @__of_table_c28_plla9, ptr @__of_table_c32_pll0, ptr @__of_table_c32_pll0_a0, ptr @__of_table_c32_pll0_c0, ptr @__of_table_c32_pll1, ptr @__of_table_c32_pll1_c0, ptr @__of_table_c32_plla9, ptr @.str, ptr @clkgen_a9_lock, ptr @st_pll3200c32_cx_0_legacy_data, ptr @.str.1, ptr @clkgena_c32_odf_lock, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @st_pll3200c32_cx_0, ptr @stm_pll3200c32_ops, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @st_pll3200c32_a0_data, ptr @st_pll3200c32_ax_0_clks, ptr @.str.14, ptr @st_pll3200c32_c0_data, ptr @st_pll3200c32_cx_0_clks, ptr @.str.15, ptr @st_pll3200c32_cx_1_legacy_data, ptr @st_pll3200c32_cx_1, ptr @st_pll3200c32_c1_data, ptr @st_pll3200c32_cx_1_clks, ptr @.str.16, ptr @st_pll3200c32_407_a9_data, ptr @st_pll3200c32_407_a9, ptr @st_pll3200c32_407_a9_clks, ptr @stm_pll3200c32_a9_ops, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @clk_pll3200c32_get_params.cp_table, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @st_pll4600c28_418_a9_data, ptr @st_pll4600c28_418_a9, ptr @st_pll4600c28_418_a9_clks, ptr @stm_pll4600c28_ops, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgen_a9_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pll3200c32_cx_0_legacy_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clkgena_c32_odf_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pll3200c32_cx_0 to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_pll3200c32_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pll3200c32_a0_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pll3200c32_ax_0_clks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pll3200c32_c0_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pll3200c32_cx_0_clks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pll3200c32_cx_1_legacy_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pll3200c32_cx_1 to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pll3200c32_c1_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pll3200c32_cx_1_clks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pll3200c32_407_a9_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pll3200c32_407_a9 to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pll3200c32_407_a9_clks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_pll3200c32_a9_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_pll3200c32_get_params.cp_table to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pll4600c28_418_a9_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pll4600c28_418_a9 to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @st_pll4600c28_418_a9_clks to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm_pll4600c28_ops to i32), i32 100, i32 160, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @clkgen_c32_pll0_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @clkgen_c32_pll_setup(ptr noundef %np, ptr noundef nonnull @st_pll3200c32_cx_0_legacy_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @clkgen_c32_pll0_a0_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @clkgen_c32_pll_setup(ptr noundef %np, ptr noundef nonnull @st_pll3200c32_a0_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @clkgen_c32_pll0_c0_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @clkgen_c32_pll_setup(ptr noundef %np, ptr noundef nonnull @st_pll3200c32_c0_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @clkgen_c32_pll1_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @clkgen_c32_pll_setup(ptr noundef %np, ptr noundef nonnull @st_pll3200c32_cx_1_legacy_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @clkgen_c32_pll1_c0_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @clkgen_c32_pll_setup(ptr noundef %np, ptr noundef nonnull @st_pll3200c32_c1_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @clkgen_c32_plla9_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @clkgen_c32_pll_setup(ptr noundef %np, ptr noundef nonnull @st_pll3200c32_407_a9_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @clkgen_c28_plla9_setup(ptr noundef %np) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @clkgen_c32_pll_setup(ptr noundef %np, ptr noundef nonnull @st_pll4600c28_418_a9_data) #10
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @clkgen_c32_pll_setup(ptr noundef %np, ptr nocapture noundef readonly %datac) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %pll_flags = alloca i32, align 4
  %clk_name = alloca ptr, align 4
  %odf_flags = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pll_flags) #7
  %0 = ptrtoint ptr %pll_flags to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %pll_flags, align 4
  %call = tail call ptr @of_clk_get_parent_name(ptr noundef %np, i32 noundef 0) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup48_crit_edge, label %if.end

entry.cleanup48_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup48

if.end:                                           ; preds = %entry
  %call1 = tail call fastcc ptr @clkgen_get_register_base(ptr noundef %np) #10
  %tobool2.not = icmp eq ptr %call1, null
  br i1 %tobool2.not, label %if.end.cleanup48_crit_edge, label %if.end4

if.end.cleanup48_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup48

if.end4:                                          ; preds = %if.end
  %call5 = call i32 @of_clk_detect_critical(ptr noundef %np, i32 noundef 0, ptr noundef nonnull %pll_flags) #7
  %1 = ptrtoint ptr %datac to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %datac, align 4
  %3 = ptrtoint ptr %pll_flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %pll_flags, align 4
  %5 = ptrtoint ptr %np to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %np, align 4
  %lock = getelementptr inbounds %struct.clkgen_pll_data, ptr %2, i32 0, i32 14
  %7 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %lock, align 4
  %call7 = call fastcc ptr @clkgen_pll_register(ptr noundef nonnull %call, ptr noundef %2, ptr noundef nonnull %call1, i32 noundef %4, ptr noundef %6, ptr noundef %8) #10
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end4.cleanup48_crit_edge, label %if.end10

if.end4.cleanup48_crit_edge:                      ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup48

if.end10:                                         ; preds = %if.end4
  %call11 = call ptr @__clk_get_name(ptr noundef %call7) #7
  %9 = ptrtoint ptr %datac to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %datac, align 4
  %num_odfs13 = getelementptr inbounds %struct.clkgen_pll_data, ptr %10, i32 0, i32 9
  %11 = ptrtoint ptr %num_odfs13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %num_odfs13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 8) #11
  %tobool15.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool15.not, label %if.end10.cleanup48_crit_edge, label %if.end17

if.end10.cleanup48_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup48

if.end17:                                         ; preds = %if.end10
  %clk_num = getelementptr inbounds %struct.clk_onecell_data, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %clk_num to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %12, ptr %clk_num, align 4
  %15 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %12, i32 4) #7
  %16 = extractvalue { i32, i1 } %15, 1
  br i1 %16, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !124

kcalloc.exit.thread:                              ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %call7.i.i, align 8
  br label %err

if.end7.i.i:                                      ; preds = %if.end17
  %18 = extractvalue { i32, i1 } %15, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #12
  %19 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call8.i.i, ptr %call7.i.i, align 8
  %tobool21.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool21.not, label %if.end7.i.i.err_crit_edge, label %for.cond.preheader

if.end7.i.i.err_crit_edge:                        ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err

for.cond.preheader:                               ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp98.not = icmp eq i32 %12, 0
  br i1 %cmp98.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %outputs = getelementptr inbounds %struct.clkgen_pll_data_clks, ptr %datac, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %odf.099 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clk_name) #7
  %20 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 -1 to ptr), ptr %clk_name, align 4, !annotation !125
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %odf_flags) #7
  %21 = ptrtoint ptr %odf_flags to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %odf_flags, align 4
  %22 = ptrtoint ptr %outputs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %outputs, align 4
  %tobool25.not = icmp eq ptr %23, null
  br i1 %tobool25.not, label %if.else, label %if.then26

if.then26:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.clkgen_clk_out, ptr %23, i32 %odf.099
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx, align 4
  %26 = ptrtoint ptr %clk_name to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %clk_name, align 4
  %flags = getelementptr %struct.clkgen_clk_out, ptr %23, i32 %odf.099, i32 1
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %29 = ptrtoint ptr %odf_flags to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %odf_flags, align 4
  br label %if.end36

if.else:                                          ; preds = %for.body
  %call.i = call i32 @of_property_read_string_helper(ptr noundef %np, ptr noundef nonnull @.str.1, ptr noundef nonnull %clk_name, i32 noundef 1, i32 noundef %odf.099) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i)
  %tobool32.not = icmp sgt i32 %call.i, -1
  br i1 %tobool32.not, label %if.end34, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %odf_flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #7
  br label %cleanup48

if.end34:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %call35 = call i32 @of_clk_detect_critical(ptr noundef %np, i32 noundef %odf.099, ptr noundef nonnull %odf_flags) #7
  br label %if.end36

if.end36:                                         ; preds = %if.end34, %if.then26
  %30 = ptrtoint ptr %datac to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %datac, align 4
  %32 = ptrtoint ptr %odf_flags to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %odf_flags, align 4
  %34 = ptrtoint ptr %clk_name to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %clk_name, align 4
  %call38 = call fastcc ptr @clkgen_odf_register(ptr noundef %call11, ptr noundef nonnull %call1, ptr noundef %31, i32 noundef %33, i32 noundef %odf.099, ptr noundef %35) #10
  %cmp.i92 = icmp ugt ptr %call38, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i92, label %cleanup, label %for.inc

cleanup:                                          ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %odf_flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #7
  br label %err

for.inc:                                          ; preds = %if.end36
  %36 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %call7.i.i, align 8
  %arrayidx43 = getelementptr ptr, ptr %37, i32 %odf.099
  %38 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call38, ptr %arrayidx43, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %odf_flags) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clk_name) #7
  %inc = add nuw nsw i32 %odf.099, 1
  %exitcond.not = icmp eq i32 %inc, %12
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call46 = call i32 @of_clk_add_provider(ptr noundef %np, ptr noundef nonnull @of_clk_src_onecell_get, ptr noundef nonnull %call7.i.i) #7
  br label %cleanup48

err:                                              ; preds = %cleanup, %if.end7.i.i.err_crit_edge, %kcalloc.exit.thread
  call void @kfree(ptr noundef %call11) #7
  %39 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %call7.i.i, align 8
  call void @kfree(ptr noundef %40) #7
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup48

cleanup48:                                        ; preds = %err, %for.end, %cleanup.thread, %if.end10.cleanup48_crit_edge, %if.end4.cleanup48_crit_edge, %if.end.cleanup48_crit_edge, %entry.cleanup48_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pll_flags) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_get_parent_name(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @clkgen_get_register_base(ptr noundef %np) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @of_get_parent(ptr noundef %np) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call ptr @of_iomap(ptr noundef nonnull %call, i32 noundef 0) #7
  tail call void @of_node_put(ptr noundef nonnull %call) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call1, %if.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_detect_critical(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @clkgen_pll_register(ptr noundef %parent_name, ptr noundef %pll_data, ptr noundef %reg, i32 noundef %pll_flags, ptr noundef %clk_name, ptr noundef %lock) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  %init = alloca %struct.clk_init_data, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %init) #7
  %1 = getelementptr inbounds i8, ptr %init, i32 12
  %2 = call ptr @memset(ptr %1, i32 255, i32 12)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %3 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %3, i32 noundef 3520, i32 noundef 36) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %clk_name, ptr %init, align 4
  %ops = getelementptr inbounds %struct.clkgen_pll_data, ptr %pll_data, i32 0, i32 15
  %5 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ops, align 4
  %ops2 = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 1
  %7 = ptrtoint ptr %ops2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %ops2, align 4
  %or = or i32 %pll_flags, 64
  %flags = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 6
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %or, ptr %flags, align 4
  %parent_names = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 2
  %9 = ptrtoint ptr %parent_names to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %parent_name.addr, ptr %parent_names, align 4
  %num_parents = getelementptr inbounds %struct.clk_init_data, ptr %init, i32 0, i32 5
  %10 = ptrtoint ptr %num_parents to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %num_parents, align 4
  %data = getelementptr inbounds %struct.clkgen_pll, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %pll_data, ptr %data, align 4
  %regs_base = getelementptr inbounds %struct.clkgen_pll, ptr %call7.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %regs_base to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %reg, ptr %regs_base, align 8
  %init3 = getelementptr inbounds %struct.clk_hw, ptr %call7.i.i, i32 0, i32 2
  %13 = ptrtoint ptr %init3 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %init, ptr %init3, align 8
  %lock4 = getelementptr inbounds %struct.clkgen_pll, ptr %call7.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %lock4 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %lock, ptr %lock4, align 4
  %call6 = call ptr @clk_register(ptr noundef null, ptr noundef nonnull %call7.i.i) #7
  %cmp.i = icmp ugt ptr %call6, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then8, label %do.body

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clkgen_pll_register.__UNIQUE_ID_ddebug186, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clkgen_pll_register, %if.then14)) #7
          to label %cleanup [label %if.then14], !srcloc !126

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call15 = call ptr @__clk_get_name(ptr noundef %call6) #7
  %call16 = call ptr @clk_get_parent(ptr noundef %call6) #7
  %call17 = call ptr @__clk_get_name(ptr noundef %call16) #7
  %call18 = call i32 @clk_get_rate(ptr noundef %call6) #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clkgen_pll_register.__UNIQUE_ID_ddebug186, ptr noundef nonnull @.str.5, ptr noundef %call15, ptr noundef %call17, i32 noundef %call18) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then14, %do.body, %if.then8, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call6, %if.then8 ], [ %call6, %if.then14 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call6, %do.body ]
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %init) #7
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__clk_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @clkgen_odf_register(ptr noundef %parent_name, ptr noundef %reg, ptr nocapture noundef readonly %pll_data, i32 noundef %pll_flags, i32 noundef %odf, ptr noundef %odf_name) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %parent_name.addr = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %parent_name.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %parent_name, ptr %parent_name.addr, align 4
  %or1 = or i32 %pll_flags, 68
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 24) #11
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags3 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 3
  %2 = ptrtoint ptr %flags3 to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %flags3, align 1
  %arrayidx = getelementptr %struct.clkgen_pll_data, ptr %pll_data, i32 0, i32 11, i32 %odf
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %reg, i32 %4
  %reg4 = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %reg4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %add.ptr, ptr %reg4, align 4
  %shift = getelementptr %struct.clkgen_pll_data, ptr %pll_data, i32 0, i32 11, i32 %odf, i32 2
  %6 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %shift, align 4
  %conv = trunc i32 %7 to i8
  %bit_idx = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %bit_idx to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %conv, ptr %bit_idx, align 8
  %lock = getelementptr inbounds %struct.clk_gate, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %lock to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @clkgena_c32_odf_lock, ptr %lock, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %10 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i1 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %10, i32 noundef 3520, i32 noundef 28) #11
  %tobool8.not = icmp eq ptr %call7.i.i1, null
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %flags12 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i1, i32 0, i32 4
  %11 = ptrtoint ptr %flags12 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 5, ptr %flags12, align 2
  %arrayidx14 = getelementptr %struct.clkgen_pll_data, ptr %pll_data, i32 0, i32 10, i32 %odf
  %12 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx14, align 4
  %add.ptr16 = getelementptr i8, ptr %reg, i32 %13
  %reg17 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i1, i32 0, i32 1
  %14 = ptrtoint ptr %reg17 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr16, ptr %reg17, align 4
  %shift20 = getelementptr %struct.clkgen_pll_data, ptr %pll_data, i32 0, i32 10, i32 %odf, i32 2
  %15 = ptrtoint ptr %shift20 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %shift20, align 4
  %conv21 = trunc i32 %16 to i8
  %shift22 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i1, i32 0, i32 2
  %17 = ptrtoint ptr %shift22 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 %conv21, ptr %shift22, align 8
  %mask = getelementptr %struct.clkgen_pll_data, ptr %pll_data, i32 0, i32 10, i32 %odf, i32 1
  %18 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %tobool.not.i = icmp eq i32 %19, 0
  %20 = tail call i32 @llvm.ctlz.i32(i32 %19, i1 true) #7, !range !127
  %21 = trunc i32 %20 to i8
  %22 = sub nuw nsw i8 32, %21
  %conv26 = select i1 %tobool.not.i, i8 0, i8 %22
  %width = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i1, i32 0, i32 3
  %23 = ptrtoint ptr %width to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv26, ptr %width, align 1
  %lock27 = getelementptr inbounds %struct.clk_divider, ptr %call7.i.i1, i32 0, i32 6
  %24 = ptrtoint ptr %lock27 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @clkgena_c32_odf_lock, ptr %lock27, align 8
  %call29 = call ptr @clk_register_composite(ptr noundef null, ptr noundef %odf_name, ptr noundef nonnull %parent_name.addr, i32 noundef 1, ptr noundef null, ptr noundef null, ptr noundef nonnull %call7.i.i1, ptr noundef nonnull @clk_divider_ops, ptr noundef nonnull %call7.i.i, ptr noundef nonnull @clk_gate_ops, i32 noundef %or1) #7
  %cmp.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.end11.cleanup_crit_edge, label %do.body

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @clkgen_odf_register.__UNIQUE_ID_ddebug187, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@clkgen_odf_register, %if.then37)) #7
          to label %cleanup [label %if.then37], !srcloc !126

if.then37:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call38 = call ptr @__clk_get_name(ptr noundef %call29) #7
  %call39 = call ptr @clk_get_parent(ptr noundef %call29) #7
  %call40 = call ptr @__clk_get_name(ptr noundef %call39) #7
  %call41 = call i32 @clk_get_rate(ptr noundef %call29) #7
  call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @clkgen_odf_register.__UNIQUE_ID_ddebug187, ptr noundef nonnull @.str.5, ptr noundef %call38, ptr noundef %call40, i32 noundef %call41) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then37, %do.body, %if.end11.cleanup_crit_edge, %if.then9, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then9 ], [ %call29, %if.end11.cleanup_crit_edge ], [ %call29, %if.then37 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ], [ %call29, %do.body ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_clk_add_provider(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_clk_src_onecell_get(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_iomap(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get_parent(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_string_helper(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_register_composite(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clkgen_pll_enable(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  %call7 = tail call fastcc i32 @__clkgen_pll_enable(ptr noundef %hw)
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %tobool9.not = icmp eq ptr %3, null
  br i1 %tobool9.not, label %if.end.if.end12_crit_edge, label %if.then10

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %3, i32 noundef %flags.0) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %if.end.if.end12_crit_edge
  ret i32 %call7
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @clkgen_pll_disable(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 3
  %0 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %lock, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.body1

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.body1:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %1) #7
  br label %if.end

if.end:                                           ; preds = %do.body1, %entry.if.end_crit_edge
  %flags.0 = phi i32 [ %call4, %do.body1 ], [ 0, %entry.if.end_crit_edge ]
  tail call fastcc void @__clkgen_pll_disable(ptr noundef %hw)
  %2 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %lock, align 4
  %tobool8.not = icmp eq ptr %3, null
  br i1 %tobool8.not, label %if.end.if.end11_crit_edge, label %if.then9

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %3, i32 noundef %flags.0) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @clkgen_pll_is_enabled(ptr nocapture noundef readonly %hw) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %data = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !128
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %shift.i = getelementptr inbounds %struct.clkgen_field, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shift.i, align 4
  %shr.i = lshr i32 %7, %9
  %mask.i = getelementptr inbounds %struct.clkgen_field, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %shr.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not = icmp eq i32 %and.i, 0
  %lnot.ext = zext i1 %tobool.not to i32
  ret i32 %lnot.ext
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @recalc_stm_pll3200c32(ptr noundef %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base.i = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base.i, align 4
  %data.i = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !128
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %shift.i.i = getelementptr inbounds %struct.clkgen_field, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shift.i.i, align 4
  %shr.i.i = lshr i32 %7, %9
  %mask.i.i = getelementptr inbounds %struct.clkgen_field, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask.i.i, align 4
  %and.i.i = and i32 %shr.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %12 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs_base.i, align 4
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %locked_status.i = getelementptr inbounds %struct.clkgen_pll_data, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %locked_status.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %locked_status.i, align 4
  %add.ptr.i.i36 = getelementptr i8, ptr %13, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i36) #7, !srcloc !128
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %shift.i.i37 = getelementptr inbounds %struct.clkgen_pll_data, ptr %15, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %shift.i.i37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %shift.i.i37, align 4
  %shr.i.i38 = lshr i32 %19, %21
  %mask.i.i39 = getelementptr inbounds %struct.clkgen_pll_data, ptr %15, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %mask.i.i39 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask.i.i39, align 4
  %and.i.i40 = and i32 %shr.i.i38, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i40)
  %tobool.i.not = icmp eq i32 %and.i.i40, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %24 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs_base.i, align 4
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %ndiv3 = getelementptr inbounds %struct.clkgen_pll_data, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ndiv3 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ndiv3, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 %29
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !128
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %shift.i = getelementptr inbounds %struct.clkgen_pll_data, ptr %27, i32 0, i32 4, i32 2
  %31 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %shift.i, align 4
  %mask.i = getelementptr inbounds %struct.clkgen_pll_data, ptr %27, i32 0, i32 4, i32 1
  %33 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mask.i, align 4
  %35 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs_base.i, align 4
  %37 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data.i, align 4
  %idf7 = getelementptr inbounds %struct.clkgen_pll_data, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %idf7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %idf7, align 4
  %add.ptr.i42 = getelementptr i8, ptr %36, i32 %40
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #7, !srcloc !128
  %42 = tail call i32 @llvm.bswap.i32(i32 %41) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %shift.i43 = getelementptr inbounds %struct.clkgen_pll_data, ptr %38, i32 0, i32 6, i32 2
  %43 = ptrtoint ptr %shift.i43 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %shift.i43, align 4
  %shr.i44 = lshr i32 %42, %44
  %mask.i45 = getelementptr inbounds %struct.clkgen_pll_data, ptr %38, i32 0, i32 6, i32 1
  %45 = ptrtoint ptr %mask.i45 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mask.i45, align 4
  %and.i46 = and i32 %shr.i44, %46
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i46)
  %tobool9.not = icmp eq i32 %and.i46, 0
  br i1 %tobool9.not, label %if.end.do.body_crit_edge, label %if.then10

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %47 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  %shr.i = lshr i32 %47, %32
  %and.i = and i32 %shr.i, %34
  %div = udiv i32 %parent_rate, 1000
  %mul = shl nuw nsw i32 %div, 1
  %mul11 = mul i32 %mul, %and.i
  %div12 = udiv i32 %mul11, %and.i46
  %mul13 = mul i32 %div12, 1000
  br label %do.body

do.body:                                          ; preds = %if.then10, %if.end.do.body_crit_edge
  %rate.0 = phi i32 [ %mul13, %if.then10 ], [ 0, %if.end.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @recalc_stm_pll3200c32.__UNIQUE_ID_ddebug177, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@recalc_stm_pll3200c32, %if.then20)) #7
          to label %cleanup [label %if.then20], !srcloc !126

if.then20:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %call21 = tail call ptr @clk_hw_get_name(ptr noundef %hw) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @recalc_stm_pll3200c32.__UNIQUE_ID_ddebug177, ptr noundef nonnull @.str.13, ptr noundef %call21, ptr noundef nonnull @.str.12, i32 noundef %rate.0) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %do.body, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %rate.0, %if.then20 ], [ %rate.0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__clkgen_pll_enable(ptr nocapture noundef readonly %hw) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base, align 4
  %data = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %locked_status = getelementptr inbounds %struct.clkgen_pll_data, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !128
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %shift.i.i = getelementptr inbounds %struct.clkgen_field, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shift.i.i, align 4
  %shr.i.i = lshr i32 %7, %9
  %mask.i.i = getelementptr inbounds %struct.clkgen_field, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask.i.i, align 4
  %and.i.i = and i32 %shr.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs_base, align 4
  %14 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data, align 4
  %pdn_ctrl = getelementptr inbounds %struct.clkgen_pll_data, ptr %15, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %16 = ptrtoint ptr %pdn_ctrl to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %pdn_ctrl, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !128
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %mask.i = getelementptr inbounds %struct.clkgen_pll_data, ptr %15, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %mask.i, align 4
  %shift.i = getelementptr inbounds %struct.clkgen_pll_data, ptr %15, i32 0, i32 1, i32 2
  %22 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %21, %23
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %19, %neg.i
  %24 = tail call i32 @llvm.bswap.i32(i32 %and.i) #7
  %25 = ptrtoint ptr %pdn_ctrl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pdn_ctrl, align 4
  %add.ptr5.i = getelementptr i8, ptr %13, i32 %26
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %24) #7, !srcloc !132
  %call3 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call3, 10000000
  %shift = getelementptr inbounds %struct.clkgen_pll_data, ptr %3, i32 0, i32 2, i32 2
  %mask = getelementptr inbounds %struct.clkgen_pll_data, ptr %3, i32 0, i32 2, i32 1
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true.for.cond_crit_edge, %if.end
  %27 = ptrtoint ptr %locked_status to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %locked_status, align 4
  %add.ptr13 = getelementptr i8, ptr %1, i32 %28
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr13) #7, !srcloc !128
  %30 = tail call i32 @llvm.bswap.i32(i32 %29)
  %31 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %shift, align 4
  %shr = lshr i32 %30, %32
  %33 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mask, align 4
  %and = and i32 %shr, %34
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %land.lhs.true, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

land.lhs.true:                                    ; preds = %for.cond
  %call20 = tail call i64 @ktime_get() #7
  %cmp3.i = icmp sgt i64 %call20, %add.i
  br i1 %cmp3.i, label %if.then23, label %land.lhs.true.for.cond_crit_edge

land.lhs.true.for.cond_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then23:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %locked_status to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %locked_status, align 4
  %add.ptr26 = getelementptr i8, ptr %1, i32 %36
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #7, !srcloc !128
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  br label %for.end

for.end:                                          ; preds = %if.then23, %for.cond.for.end_crit_edge
  %reg.0 = phi i32 [ %38, %if.then23 ], [ %30, %for.cond.for.end_crit_edge ]
  %39 = ptrtoint ptr %shift to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %shift, align 4
  %shr36 = lshr i32 %reg.0, %40
  %41 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mask, align 4
  %and38 = and i32 %shr36, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %for.end.cleanup_crit_edge, label %if.then42

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then42:                                        ; preds = %for.end
  %43 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %data, align 4
  %switch2pll_en = getelementptr inbounds %struct.clkgen_pll_data, ptr %44, i32 0, i32 12
  %45 = ptrtoint ptr %switch2pll_en to i32
  call void @__asan_load1_noabort(i32 %45)
  %46 = load i8, ptr %switch2pll_en, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %46)
  %tobool44.not = icmp eq i8 %46, 0
  br i1 %tobool44.not, label %if.then42.do.body49_crit_edge, label %if.then45

if.then42.do.body49_crit_edge:                    ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body49

if.then45:                                        ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %regs_base, align 4
  %switch2pll = getelementptr inbounds %struct.clkgen_pll_data, ptr %44, i32 0, i32 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %49 = ptrtoint ptr %switch2pll to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %switch2pll, align 4
  %add.ptr.i87 = getelementptr i8, ptr %48, i32 %50
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i87) #7, !srcloc !128
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %mask.i88 = getelementptr inbounds %struct.clkgen_pll_data, ptr %44, i32 0, i32 13, i32 1
  %53 = ptrtoint ptr %mask.i88 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %mask.i88, align 4
  %shift.i89 = getelementptr inbounds %struct.clkgen_pll_data, ptr %44, i32 0, i32 13, i32 2
  %55 = ptrtoint ptr %shift.i89 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %shift.i89, align 4
  %shl.i90 = shl i32 %54, %56
  %neg.i91 = xor i32 %shl.i90, -1
  %and.i92 = and i32 %52, %neg.i91
  %57 = tail call i32 @llvm.bswap.i32(i32 %and.i92) #7
  %58 = ptrtoint ptr %switch2pll to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %switch2pll, align 4
  %add.ptr5.i93 = getelementptr i8, ptr %48, i32 %59
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i93, i32 %57) #7, !srcloc !132
  br label %do.body49

do.body49:                                        ; preds = %if.then45, %if.then42.do.body49_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__clkgen_pll_enable.__UNIQUE_ID_ddebug175, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__clkgen_pll_enable, %if.then56)) #7
          to label %cleanup [label %if.then56], !srcloc !126

if.then56:                                        ; preds = %do.body49
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %60 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %clk, align 4
  %call57 = tail call ptr @__clk_get_name(ptr noundef %61) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__clkgen_pll_enable.__UNIQUE_ID_ddebug175, ptr noundef nonnull @.str.9, ptr noundef %call57, ptr noundef nonnull @.str.8) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %do.body49, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then56 ], [ -110, %for.end.cleanup_crit_edge ], [ 0, %do.body49 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__clkgen_pll_disable(ptr nocapture noundef readonly %hw) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base.i = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base.i, align 4
  %data.i = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !128
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %shift.i.i = getelementptr inbounds %struct.clkgen_field, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shift.i.i, align 4
  %shr.i.i = lshr i32 %7, %9
  %mask.i.i = getelementptr inbounds %struct.clkgen_field, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask.i.i, align 4
  %and.i.i = and i32 %shr.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %data.i, align 4
  %switch2pll_en = getelementptr inbounds %struct.clkgen_pll_data, ptr %13, i32 0, i32 12
  %14 = ptrtoint ptr %switch2pll_en to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %switch2pll_en, align 4, !range !133
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool1.not = icmp eq i8 %15, 0
  br i1 %tobool1.not, label %if.end.if.end4_crit_edge, label %if.then2

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end4

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regs_base.i, align 4
  %switch2pll = getelementptr inbounds %struct.clkgen_pll_data, ptr %13, i32 0, i32 13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %18 = ptrtoint ptr %switch2pll to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %switch2pll, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 %19
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !128
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %mask.i = getelementptr inbounds %struct.clkgen_pll_data, ptr %13, i32 0, i32 13, i32 1
  %22 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask.i, align 4
  %shift.i = getelementptr inbounds %struct.clkgen_pll_data, ptr %13, i32 0, i32 13, i32 2
  %24 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %23, %25
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %21, %neg.i
  %shl3.i = shl nuw i32 1, %25
  %or.i = or i32 %and.i, %shl3.i
  %26 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %27 = ptrtoint ptr %switch2pll to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %switch2pll, align 4
  %add.ptr5.i = getelementptr i8, ptr %17, i32 %28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %26) #7, !srcloc !132
  br label %if.end4

if.end4:                                          ; preds = %if.then2, %if.end.if.end4_crit_edge
  %29 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs_base.i, align 4
  %31 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data.i, align 4
  %pdn_ctrl = getelementptr inbounds %struct.clkgen_pll_data, ptr %32, i32 0, i32 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %33 = ptrtoint ptr %pdn_ctrl to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %pdn_ctrl, align 4
  %add.ptr.i21 = getelementptr i8, ptr %30, i32 %34
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i21) #7, !srcloc !128
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %mask.i22 = getelementptr inbounds %struct.clkgen_pll_data, ptr %32, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %mask.i22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %mask.i22, align 4
  %shift.i23 = getelementptr inbounds %struct.clkgen_pll_data, ptr %32, i32 0, i32 1, i32 2
  %39 = ptrtoint ptr %shift.i23 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %shift.i23, align 4
  %shl.i24 = shl i32 %38, %40
  %neg.i25 = xor i32 %shl.i24, -1
  %and.i26 = and i32 %36, %neg.i25
  %shl3.i27 = shl nuw i32 1, %40
  %or.i28 = or i32 %and.i26, %shl3.i27
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i28) #7
  %42 = ptrtoint ptr %pdn_ctrl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %pdn_ctrl, align 4
  %add.ptr5.i29 = getelementptr i8, ptr %30, i32 %43
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i29, i32 %41) #7, !srcloc !132
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__clkgen_pll_disable.__UNIQUE_ID_ddebug176, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__clkgen_pll_disable, %if.then12)) #7
          to label %cleanup [label %if.then12], !srcloc !126

if.then12:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %44 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %clk, align 4
  %call13 = tail call ptr @__clk_get_name(ptr noundef %45) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__clkgen_pll_disable.__UNIQUE_ID_ddebug176, ptr noundef nonnull @.str.11, ptr noundef %call13, ptr noundef nonnull @.str.10) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then12, %if.end4, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_hw_get_name(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @round_rate_stm_pll3200c32(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %rate, -1600000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -800000001, i32 %0)
  %1 = icmp ult i32 %0, -800000001
  br i1 %1, label %entry.do.body_crit_edge, label %if.end.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %prate, align 4
  %div.i = udiv i32 %3, 1000
  %div2.i = udiv i32 %rate, 1000
  %mul4.i = shl nuw nsw i32 %div.i, 1
  %div5.i = udiv i32 %div2.i, %mul4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div5.i)
  %cmp6.i = icmp ult i32 %div5.i, 8
  br i1 %cmp6.i, label %if.end.i.for.inc.i_crit_edge, label %if.end8.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %div5.i)
  %cmp9.i = icmp ugt i32 %div5.i, 200
  br i1 %cmp9.i, label %if.end8.i.for.end.i_crit_edge, label %if.then20.i

if.end8.i.for.end.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.then20.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul13.i = mul i32 %div5.i, %mul4.i
  %sub.i = sub i32 %mul13.i, %div2.i
  %4 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then20.i, %if.end.i.for.inc.i_crit_edge
  %params.sroa.10.1 = phi i32 [ -1, %if.end.i.for.inc.i_crit_edge ], [ 1, %if.then20.i ]
  %params.sroa.3.1 = phi i32 [ -1, %if.end.i.for.inc.i_crit_edge ], [ %div5.i, %if.then20.i ]
  %deviation.1.i = phi i32 [ -1, %if.end.i.for.inc.i_crit_edge ], [ %4, %if.then20.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.1.i)
  %tobool.not.i = icmp eq i32 %deviation.1.i, 0
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.body.i.1

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.inc.i
  %mul.i.1 = shl nuw nsw i32 %div2.i, 1
  %div5.i.1 = udiv i32 %mul.i.1, %mul4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div5.i.1)
  %cmp6.i.1 = icmp ult i32 %div5.i.1, 8
  br i1 %cmp6.i.1, label %for.body.i.1.for.inc.i.1_crit_edge, label %if.end8.i.1

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.1

if.end8.i.1:                                      ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %div5.i.1)
  %cmp9.i.1 = icmp ugt i32 %div5.i.1, 200
  br i1 %cmp9.i.1, label %if.end8.i.1.for.end.i_crit_edge, label %if.end11.i.1

if.end8.i.1.for.end.i_crit_edge:                  ; preds = %if.end8.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end11.i.1:                                     ; preds = %if.end8.i.1
  %mul13.i.1 = mul i32 %div5.i.1, %mul4.i
  %div14.i.152 = lshr exact i32 %mul13.i.1, 1
  %sub.i.1 = sub nsw i32 %div14.i.152, %div2.i
  %5 = tail call i32 @llvm.abs.i32(i32 %sub.i.1, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.i.152, i32 %div2.i)
  %tobool17.not.i.1 = icmp eq i32 %div14.i.152, %div2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %deviation.1.i)
  %cmp19.i.1 = icmp ult i32 %5, %deviation.1.i
  %or.cond65.i.1 = select i1 %tobool17.not.i.1, i1 true, i1 %cmp19.i.1
  br i1 %or.cond65.i.1, label %if.then20.i.1, label %if.end11.i.1.for.inc.i.1_crit_edge

if.end11.i.1.for.inc.i.1_crit_edge:               ; preds = %if.end11.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.1

if.then20.i.1:                                    ; preds = %if.end11.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then20.i.1, %if.end11.i.1.for.inc.i.1_crit_edge, %for.body.i.1.for.inc.i.1_crit_edge
  %params.sroa.10.1.1 = phi i32 [ %params.sroa.10.1, %for.body.i.1.for.inc.i.1_crit_edge ], [ 2, %if.then20.i.1 ], [ %params.sroa.10.1, %if.end11.i.1.for.inc.i.1_crit_edge ]
  %params.sroa.3.1.1 = phi i32 [ %params.sroa.3.1, %for.body.i.1.for.inc.i.1_crit_edge ], [ %div5.i.1, %if.then20.i.1 ], [ %params.sroa.3.1, %if.end11.i.1.for.inc.i.1_crit_edge ]
  %deviation.1.i.1 = phi i32 [ %deviation.1.i, %for.body.i.1.for.inc.i.1_crit_edge ], [ %5, %if.then20.i.1 ], [ %deviation.1.i, %if.end11.i.1.for.inc.i.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.1.i.1)
  %tobool.not.i.1 = icmp eq i32 %deviation.1.i.1, 0
  br i1 %tobool.not.i.1, label %for.inc.i.1.for.end.i_crit_edge, label %for.body.i.2

for.inc.i.1.for.end.i_crit_edge:                  ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.inc.i.1
  %mul.i.2 = mul nuw nsw i32 %div2.i, 3
  %div5.i.2 = udiv i32 %mul.i.2, %mul4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div5.i.2)
  %cmp6.i.2 = icmp ult i32 %div5.i.2, 8
  br i1 %cmp6.i.2, label %for.body.i.2.for.inc.i.2_crit_edge, label %if.end8.i.2

for.body.i.2.for.inc.i.2_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.2

if.end8.i.2:                                      ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %div5.i.2)
  %cmp9.i.2 = icmp ugt i32 %div5.i.2, 200
  br i1 %cmp9.i.2, label %if.end8.i.2.for.end.i_crit_edge, label %if.end11.i.2

if.end8.i.2.for.end.i_crit_edge:                  ; preds = %if.end8.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end11.i.2:                                     ; preds = %if.end8.i.2
  %mul13.i.2 = mul i32 %div5.i.2, %mul4.i
  %div14.i.2 = udiv i32 %mul13.i.2, 3
  %sub.i.2 = sub nsw i32 %div14.i.2, %div2.i
  %6 = tail call i32 @llvm.abs.i32(i32 %sub.i.2, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.i.2, i32 %div2.i)
  %tobool17.not.i.2 = icmp eq i32 %div14.i.2, %div2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %deviation.1.i.1)
  %cmp19.i.2 = icmp ult i32 %6, %deviation.1.i.1
  %or.cond65.i.2 = select i1 %tobool17.not.i.2, i1 true, i1 %cmp19.i.2
  br i1 %or.cond65.i.2, label %if.then20.i.2, label %if.end11.i.2.for.inc.i.2_crit_edge

if.end11.i.2.for.inc.i.2_crit_edge:               ; preds = %if.end11.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.2

if.then20.i.2:                                    ; preds = %if.end11.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then20.i.2, %if.end11.i.2.for.inc.i.2_crit_edge, %for.body.i.2.for.inc.i.2_crit_edge
  %params.sroa.10.1.2 = phi i32 [ %params.sroa.10.1.1, %for.body.i.2.for.inc.i.2_crit_edge ], [ 3, %if.then20.i.2 ], [ %params.sroa.10.1.1, %if.end11.i.2.for.inc.i.2_crit_edge ]
  %params.sroa.3.1.2 = phi i32 [ %params.sroa.3.1.1, %for.body.i.2.for.inc.i.2_crit_edge ], [ %div5.i.2, %if.then20.i.2 ], [ %params.sroa.3.1.1, %if.end11.i.2.for.inc.i.2_crit_edge ]
  %deviation.1.i.2 = phi i32 [ %deviation.1.i.1, %for.body.i.2.for.inc.i.2_crit_edge ], [ %6, %if.then20.i.2 ], [ %deviation.1.i.1, %if.end11.i.2.for.inc.i.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.1.i.2)
  %tobool.not.i.2 = icmp eq i32 %deviation.1.i.2, 0
  br i1 %tobool.not.i.2, label %for.inc.i.2.for.end.i_crit_edge, label %for.body.i.3

for.inc.i.2.for.end.i_crit_edge:                  ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.3:                                     ; preds = %for.inc.i.2
  %mul.i.3 = shl nuw nsw i32 %div2.i, 2
  %div5.i.3 = udiv i32 %mul.i.3, %mul4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div5.i.3)
  %cmp6.i.3 = icmp ult i32 %div5.i.3, 8
  br i1 %cmp6.i.3, label %for.body.i.3.for.inc.i.3_crit_edge, label %if.end8.i.3

for.body.i.3.for.inc.i.3_crit_edge:               ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.3

if.end8.i.3:                                      ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %div5.i.3)
  %cmp9.i.3 = icmp ugt i32 %div5.i.3, 200
  br i1 %cmp9.i.3, label %if.end8.i.3.for.end.i_crit_edge, label %if.end11.i.3

if.end8.i.3.for.end.i_crit_edge:                  ; preds = %if.end8.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end11.i.3:                                     ; preds = %if.end8.i.3
  %mul13.i.3 = mul i32 %div5.i.3, %mul4.i
  %div14.i.353 = lshr i32 %mul13.i.3, 2
  %sub.i.3 = sub nsw i32 %div14.i.353, %div2.i
  %7 = tail call i32 @llvm.abs.i32(i32 %sub.i.3, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.i.353, i32 %div2.i)
  %tobool17.not.i.3 = icmp eq i32 %div14.i.353, %div2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %deviation.1.i.2)
  %cmp19.i.3 = icmp ult i32 %7, %deviation.1.i.2
  %or.cond65.i.3 = select i1 %tobool17.not.i.3, i1 true, i1 %cmp19.i.3
  br i1 %or.cond65.i.3, label %if.then20.i.3, label %if.end11.i.3.for.inc.i.3_crit_edge

if.end11.i.3.for.inc.i.3_crit_edge:               ; preds = %if.end11.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.3

if.then20.i.3:                                    ; preds = %if.end11.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.then20.i.3, %if.end11.i.3.for.inc.i.3_crit_edge, %for.body.i.3.for.inc.i.3_crit_edge
  %params.sroa.10.1.3 = phi i32 [ %params.sroa.10.1.2, %for.body.i.3.for.inc.i.3_crit_edge ], [ 4, %if.then20.i.3 ], [ %params.sroa.10.1.2, %if.end11.i.3.for.inc.i.3_crit_edge ]
  %params.sroa.3.1.3 = phi i32 [ %params.sroa.3.1.2, %for.body.i.3.for.inc.i.3_crit_edge ], [ %div5.i.3, %if.then20.i.3 ], [ %params.sroa.3.1.2, %if.end11.i.3.for.inc.i.3_crit_edge ]
  %deviation.1.i.3 = phi i32 [ %deviation.1.i.2, %for.body.i.3.for.inc.i.3_crit_edge ], [ %7, %if.then20.i.3 ], [ %deviation.1.i.2, %if.end11.i.3.for.inc.i.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.1.i.3)
  %tobool.not.i.3 = icmp eq i32 %deviation.1.i.3, 0
  br i1 %tobool.not.i.3, label %for.inc.i.3.for.end.i_crit_edge, label %for.body.i.4

for.inc.i.3.for.end.i_crit_edge:                  ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.4:                                     ; preds = %for.inc.i.3
  %mul.i.4 = mul nuw nsw i32 %div2.i, 5
  %div5.i.4 = udiv i32 %mul.i.4, %mul4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div5.i.4)
  %cmp6.i.4 = icmp ult i32 %div5.i.4, 8
  br i1 %cmp6.i.4, label %for.body.i.4.for.inc.i.4_crit_edge, label %if.end8.i.4

for.body.i.4.for.inc.i.4_crit_edge:               ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.4

if.end8.i.4:                                      ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %div5.i.4)
  %cmp9.i.4 = icmp ugt i32 %div5.i.4, 200
  br i1 %cmp9.i.4, label %if.end8.i.4.for.end.i_crit_edge, label %if.end11.i.4

if.end8.i.4.for.end.i_crit_edge:                  ; preds = %if.end8.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end11.i.4:                                     ; preds = %if.end8.i.4
  %mul13.i.4 = mul i32 %div5.i.4, %mul4.i
  %div14.i.4 = udiv i32 %mul13.i.4, 5
  %sub.i.4 = sub nsw i32 %div14.i.4, %div2.i
  %8 = tail call i32 @llvm.abs.i32(i32 %sub.i.4, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.i.4, i32 %div2.i)
  %tobool17.not.i.4 = icmp eq i32 %div14.i.4, %div2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %deviation.1.i.3)
  %cmp19.i.4 = icmp ult i32 %8, %deviation.1.i.3
  %or.cond65.i.4 = select i1 %tobool17.not.i.4, i1 true, i1 %cmp19.i.4
  br i1 %or.cond65.i.4, label %if.then20.i.4, label %if.end11.i.4.for.inc.i.4_crit_edge

if.end11.i.4.for.inc.i.4_crit_edge:               ; preds = %if.end11.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.4

if.then20.i.4:                                    ; preds = %if.end11.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.4

for.inc.i.4:                                      ; preds = %if.then20.i.4, %if.end11.i.4.for.inc.i.4_crit_edge, %for.body.i.4.for.inc.i.4_crit_edge
  %params.sroa.10.1.4 = phi i32 [ %params.sroa.10.1.3, %for.body.i.4.for.inc.i.4_crit_edge ], [ 5, %if.then20.i.4 ], [ %params.sroa.10.1.3, %if.end11.i.4.for.inc.i.4_crit_edge ]
  %params.sroa.3.1.4 = phi i32 [ %params.sroa.3.1.3, %for.body.i.4.for.inc.i.4_crit_edge ], [ %div5.i.4, %if.then20.i.4 ], [ %params.sroa.3.1.3, %if.end11.i.4.for.inc.i.4_crit_edge ]
  %deviation.1.i.4 = phi i32 [ %deviation.1.i.3, %for.body.i.4.for.inc.i.4_crit_edge ], [ %8, %if.then20.i.4 ], [ %deviation.1.i.3, %if.end11.i.4.for.inc.i.4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.1.i.4)
  %tobool.not.i.4 = icmp eq i32 %deviation.1.i.4, 0
  br i1 %tobool.not.i.4, label %for.inc.i.4.for.end.i_crit_edge, label %for.body.i.5

for.inc.i.4.for.end.i_crit_edge:                  ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.5:                                     ; preds = %for.inc.i.4
  %mul.i.5 = mul nuw nsw i32 %div2.i, 6
  %div5.i.5 = udiv i32 %mul.i.5, %mul4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div5.i.5)
  %cmp6.i.5 = icmp ult i32 %div5.i.5, 8
  br i1 %cmp6.i.5, label %for.body.i.5.for.inc.i.5_crit_edge, label %if.end8.i.5

for.body.i.5.for.inc.i.5_crit_edge:               ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.5

if.end8.i.5:                                      ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %div5.i.5)
  %cmp9.i.5 = icmp ugt i32 %div5.i.5, 200
  br i1 %cmp9.i.5, label %if.end8.i.5.for.end.i_crit_edge, label %if.end11.i.5

if.end8.i.5.for.end.i_crit_edge:                  ; preds = %if.end8.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end11.i.5:                                     ; preds = %if.end8.i.5
  %mul13.i.5 = mul i32 %div5.i.5, %mul4.i
  %div14.i.5 = udiv i32 %mul13.i.5, 6
  %sub.i.5 = sub nsw i32 %div14.i.5, %div2.i
  %9 = tail call i32 @llvm.abs.i32(i32 %sub.i.5, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.i.5, i32 %div2.i)
  %tobool17.not.i.5 = icmp eq i32 %div14.i.5, %div2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %deviation.1.i.4)
  %cmp19.i.5 = icmp ult i32 %9, %deviation.1.i.4
  %or.cond65.i.5 = select i1 %tobool17.not.i.5, i1 true, i1 %cmp19.i.5
  br i1 %or.cond65.i.5, label %if.then20.i.5, label %if.end11.i.5.for.inc.i.5_crit_edge

if.end11.i.5.for.inc.i.5_crit_edge:               ; preds = %if.end11.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.5

if.then20.i.5:                                    ; preds = %if.end11.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.5

for.inc.i.5:                                      ; preds = %if.then20.i.5, %if.end11.i.5.for.inc.i.5_crit_edge, %for.body.i.5.for.inc.i.5_crit_edge
  %params.sroa.10.1.5 = phi i32 [ %params.sroa.10.1.4, %for.body.i.5.for.inc.i.5_crit_edge ], [ 6, %if.then20.i.5 ], [ %params.sroa.10.1.4, %if.end11.i.5.for.inc.i.5_crit_edge ]
  %params.sroa.3.1.5 = phi i32 [ %params.sroa.3.1.4, %for.body.i.5.for.inc.i.5_crit_edge ], [ %div5.i.5, %if.then20.i.5 ], [ %params.sroa.3.1.4, %if.end11.i.5.for.inc.i.5_crit_edge ]
  %deviation.1.i.5 = phi i32 [ %deviation.1.i.4, %for.body.i.5.for.inc.i.5_crit_edge ], [ %9, %if.then20.i.5 ], [ %deviation.1.i.4, %if.end11.i.5.for.inc.i.5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.1.i.5)
  %tobool.not.i.5 = icmp eq i32 %deviation.1.i.5, 0
  br i1 %tobool.not.i.5, label %for.inc.i.5.for.end.i_crit_edge, label %for.body.i.6

for.inc.i.5.for.end.i_crit_edge:                  ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.6:                                     ; preds = %for.inc.i.5
  %mul.i.6 = mul nuw nsw i32 %div2.i, 7
  %div5.i.6 = udiv i32 %mul.i.6, %mul4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div5.i.6)
  %cmp6.i.6 = icmp ult i32 %div5.i.6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %div5.i.6)
  %cmp9.i.6 = icmp ugt i32 %div5.i.6, 200
  %or.cond = or i1 %cmp6.i.6, %cmp9.i.6
  br i1 %or.cond, label %for.body.i.6.for.end.i_crit_edge, label %if.end11.i.6

for.body.i.6.for.end.i_crit_edge:                 ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end11.i.6:                                     ; preds = %for.body.i.6
  %mul13.i.6 = mul i32 %div5.i.6, %mul4.i
  %div14.i.6 = udiv i32 %mul13.i.6, 7
  %sub.i.6 = sub nsw i32 %div14.i.6, %div2.i
  %10 = tail call i32 @llvm.abs.i32(i32 %sub.i.6, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.i.6, i32 %div2.i)
  %tobool17.not.i.6 = icmp eq i32 %div14.i.6, %div2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %deviation.1.i.5)
  %cmp19.i.6 = icmp ult i32 %10, %deviation.1.i.5
  %or.cond65.i.6 = select i1 %tobool17.not.i.6, i1 true, i1 %cmp19.i.6
  br i1 %or.cond65.i.6, label %if.then20.i.6, label %if.end11.i.6.for.end.i_crit_edge

if.end11.i.6.for.end.i_crit_edge:                 ; preds = %if.end11.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.then20.i.6:                                    ; preds = %if.end11.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %if.then20.i.6, %if.end11.i.6.for.end.i_crit_edge, %for.body.i.6.for.end.i_crit_edge, %for.inc.i.5.for.end.i_crit_edge, %if.end8.i.5.for.end.i_crit_edge, %for.inc.i.4.for.end.i_crit_edge, %if.end8.i.4.for.end.i_crit_edge, %for.inc.i.3.for.end.i_crit_edge, %if.end8.i.3.for.end.i_crit_edge, %for.inc.i.2.for.end.i_crit_edge, %if.end8.i.2.for.end.i_crit_edge, %for.inc.i.1.for.end.i_crit_edge, %if.end8.i.1.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %if.end8.i.for.end.i_crit_edge
  %params.sroa.10.2 = phi i32 [ %params.sroa.10.1, %for.inc.i.for.end.i_crit_edge ], [ -1, %if.end8.i.for.end.i_crit_edge ], [ %params.sroa.10.1, %if.end8.i.1.for.end.i_crit_edge ], [ %params.sroa.10.1.1, %for.inc.i.1.for.end.i_crit_edge ], [ %params.sroa.10.1.1, %if.end8.i.2.for.end.i_crit_edge ], [ %params.sroa.10.1.2, %for.inc.i.2.for.end.i_crit_edge ], [ %params.sroa.10.1.2, %if.end8.i.3.for.end.i_crit_edge ], [ %params.sroa.10.1.3, %for.inc.i.3.for.end.i_crit_edge ], [ %params.sroa.10.1.3, %if.end8.i.4.for.end.i_crit_edge ], [ %params.sroa.10.1.4, %for.inc.i.4.for.end.i_crit_edge ], [ %params.sroa.10.1.4, %if.end8.i.5.for.end.i_crit_edge ], [ %params.sroa.10.1.5, %for.inc.i.5.for.end.i_crit_edge ], [ %params.sroa.10.1.5, %for.body.i.6.for.end.i_crit_edge ], [ 7, %if.then20.i.6 ], [ %params.sroa.10.1.5, %if.end11.i.6.for.end.i_crit_edge ]
  %params.sroa.3.2 = phi i32 [ %params.sroa.3.1, %for.inc.i.for.end.i_crit_edge ], [ -1, %if.end8.i.for.end.i_crit_edge ], [ %params.sroa.3.1, %if.end8.i.1.for.end.i_crit_edge ], [ %params.sroa.3.1.1, %for.inc.i.1.for.end.i_crit_edge ], [ %params.sroa.3.1.1, %if.end8.i.2.for.end.i_crit_edge ], [ %params.sroa.3.1.2, %for.inc.i.2.for.end.i_crit_edge ], [ %params.sroa.3.1.2, %if.end8.i.3.for.end.i_crit_edge ], [ %params.sroa.3.1.3, %for.inc.i.3.for.end.i_crit_edge ], [ %params.sroa.3.1.3, %if.end8.i.4.for.end.i_crit_edge ], [ %params.sroa.3.1.4, %for.inc.i.4.for.end.i_crit_edge ], [ %params.sroa.3.1.4, %if.end8.i.5.for.end.i_crit_edge ], [ %params.sroa.3.1.5, %for.inc.i.5.for.end.i_crit_edge ], [ %params.sroa.3.1.5, %for.body.i.6.for.end.i_crit_edge ], [ %div5.i.6, %if.then20.i.6 ], [ %params.sroa.3.1.5, %if.end11.i.6.for.end.i_crit_edge ]
  %deviation.0.lcssa.i = phi i32 [ %deviation.1.i, %for.inc.i.for.end.i_crit_edge ], [ -1, %if.end8.i.for.end.i_crit_edge ], [ %deviation.1.i, %if.end8.i.1.for.end.i_crit_edge ], [ %deviation.1.i.1, %for.inc.i.1.for.end.i_crit_edge ], [ %deviation.1.i.1, %if.end8.i.2.for.end.i_crit_edge ], [ %deviation.1.i.2, %for.inc.i.2.for.end.i_crit_edge ], [ %deviation.1.i.2, %if.end8.i.3.for.end.i_crit_edge ], [ %deviation.1.i.3, %for.inc.i.3.for.end.i_crit_edge ], [ %deviation.1.i.3, %if.end8.i.4.for.end.i_crit_edge ], [ %deviation.1.i.4, %for.inc.i.4.for.end.i_crit_edge ], [ %deviation.1.i.4, %if.end8.i.5.for.end.i_crit_edge ], [ %deviation.1.i.5, %for.inc.i.5.for.end.i_crit_edge ], [ %deviation.1.i.5, %for.body.i.6.for.end.i_crit_edge ], [ %10, %if.then20.i.6 ], [ %deviation.1.i.5, %if.end11.i.6.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %deviation.0.lcssa.i)
  %cmp22.i = icmp eq i32 %deviation.0.lcssa.i, -1
  br i1 %cmp22.i, label %for.end.i.do.body_crit_edge, label %for.end.i.for.cond25.i_crit_edge

for.end.i.for.cond25.i_crit_edge:                 ; preds = %for.end.i
  br label %for.cond25.i

for.end.i.do.body_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond25.i:                                     ; preds = %for.cond25.i.for.cond25.i_crit_edge, %for.end.i.for.cond25.i_crit_edge
  %storemerge.i = phi i32 [ %inc34.i, %for.cond25.i.for.cond25.i_crit_edge ], [ 6, %for.end.i.for.cond25.i_crit_edge ]
  %sub28.i = add i32 %storemerge.i, -6
  %arrayidx.i = getelementptr [19 x i8], ptr @clk_pll3200c32_get_params.cp_table, i32 0, i32 %sub28.i
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %12 to i32
  %cmp29.i = icmp ugt i32 %params.sroa.3.2, %conv.i
  %inc34.i = add i32 %storemerge.i, 1
  br i1 %cmp29.i, label %for.cond25.i.for.cond25.i_crit_edge, label %if.then

for.cond25.i.for.cond25.i_crit_edge:              ; preds = %for.cond25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond25.i

if.then:                                          ; preds = %for.cond25.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.sroa.10.2)
  %tobool.not.i34 = icmp eq i32 %params.sroa.10.2, 0
  %spec.select = select i1 %tobool.not.i34, i32 1, i32 %params.sroa.10.2
  %mul2.i = mul i32 %mul4.i, %params.sroa.3.2
  %div4.i = udiv i32 %mul2.i, %spec.select
  %mul5.i = mul i32 %div4.i, 1000
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @round_rate_stm_pll3200c32.__UNIQUE_ID_ddebug179, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@round_rate_stm_pll3200c32, %if.then21)) #7
          to label %cleanup [label %if.then21], !srcloc !126

do.body:                                          ; preds = %for.end.i.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @round_rate_stm_pll3200c32.__UNIQUE_ID_ddebug178, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@round_rate_stm_pll3200c32, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !126

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %call7 = tail call ptr @__clk_get_name(ptr noundef %14) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @round_rate_stm_pll3200c32.__UNIQUE_ID_ddebug178, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef %call7, i32 noundef %rate) #7
  br label %cleanup

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %clk22 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %15 = ptrtoint ptr %clk22 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk22, align 4
  %call23 = tail call ptr @__clk_get_name(ptr noundef %16) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @round_rate_stm_pll3200c32.__UNIQUE_ID_ddebug179, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.17, ptr noundef %call23, i32 noundef %mul5.i, i32 noundef %params.sroa.3.2, i32 noundef %spec.select) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.then6, %do.body, %if.then
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %do.body ], [ %mul5.i, %if.then ], [ %mul5.i, %if.then21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_rate_stm_pll3200c32(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %tobool1.not = icmp eq i32 %parent_rate, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = add i32 %rate, -1600000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -800000001, i32 %0)
  %1 = icmp ult i32 %0, -800000001
  br i1 %1, label %if.end.do.body_crit_edge, label %if.end.i

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i:                                         ; preds = %if.end
  %div.i = udiv i32 %parent_rate, 1000
  %div2.i = udiv i32 %rate, 1000
  %mul4.i = shl nuw nsw i32 %div.i, 1
  %div5.i = udiv i32 %div2.i, %mul4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div5.i)
  %cmp6.i = icmp ult i32 %div5.i, 8
  br i1 %cmp6.i, label %if.end.i.for.inc.i_crit_edge, label %if.end8.i

if.end.i.for.inc.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %div5.i)
  %cmp9.i = icmp ugt i32 %div5.i, 200
  br i1 %cmp9.i, label %if.end8.i.for.end.i_crit_edge, label %if.then20.i

if.end8.i.for.end.i_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.then20.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #9
  %mul13.i = mul i32 %div5.i, %mul4.i
  %sub.i = sub i32 %mul13.i, %div2.i
  %2 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #7
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then20.i, %if.end.i.for.inc.i_crit_edge
  %params.sroa.11.1 = phi i32 [ -1, %if.end.i.for.inc.i_crit_edge ], [ 1, %if.then20.i ]
  %params.sroa.3.1 = phi i32 [ -1, %if.end.i.for.inc.i_crit_edge ], [ %div5.i, %if.then20.i ]
  %deviation.1.i = phi i32 [ -1, %if.end.i.for.inc.i_crit_edge ], [ %2, %if.then20.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.1.i)
  %tobool.not.i = icmp eq i32 %deviation.1.i, 0
  br i1 %tobool.not.i, label %for.inc.i.for.end.i_crit_edge, label %for.body.i.1

for.inc.i.for.end.i_crit_edge:                    ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.1:                                     ; preds = %for.inc.i
  %mul.i.1 = shl nuw nsw i32 %div2.i, 1
  %div5.i.1 = udiv i32 %mul.i.1, %mul4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div5.i.1)
  %cmp6.i.1 = icmp ult i32 %div5.i.1, 8
  br i1 %cmp6.i.1, label %for.body.i.1.for.inc.i.1_crit_edge, label %if.end8.i.1

for.body.i.1.for.inc.i.1_crit_edge:               ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.1

if.end8.i.1:                                      ; preds = %for.body.i.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %div5.i.1)
  %cmp9.i.1 = icmp ugt i32 %div5.i.1, 200
  br i1 %cmp9.i.1, label %if.end8.i.1.for.end.i_crit_edge, label %if.end11.i.1

if.end8.i.1.for.end.i_crit_edge:                  ; preds = %if.end8.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end11.i.1:                                     ; preds = %if.end8.i.1
  %mul13.i.1 = mul i32 %div5.i.1, %mul4.i
  %div14.i.1116 = lshr exact i32 %mul13.i.1, 1
  %sub.i.1 = sub nsw i32 %div14.i.1116, %div2.i
  %3 = tail call i32 @llvm.abs.i32(i32 %sub.i.1, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.i.1116, i32 %div2.i)
  %tobool17.not.i.1 = icmp eq i32 %div14.i.1116, %div2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %deviation.1.i)
  %cmp19.i.1 = icmp ult i32 %3, %deviation.1.i
  %or.cond65.i.1 = select i1 %tobool17.not.i.1, i1 true, i1 %cmp19.i.1
  br i1 %or.cond65.i.1, label %if.then20.i.1, label %if.end11.i.1.for.inc.i.1_crit_edge

if.end11.i.1.for.inc.i.1_crit_edge:               ; preds = %if.end11.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.1

if.then20.i.1:                                    ; preds = %if.end11.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.1

for.inc.i.1:                                      ; preds = %if.then20.i.1, %if.end11.i.1.for.inc.i.1_crit_edge, %for.body.i.1.for.inc.i.1_crit_edge
  %params.sroa.11.1.1 = phi i32 [ %params.sroa.11.1, %for.body.i.1.for.inc.i.1_crit_edge ], [ 2, %if.then20.i.1 ], [ %params.sroa.11.1, %if.end11.i.1.for.inc.i.1_crit_edge ]
  %params.sroa.3.1.1 = phi i32 [ %params.sroa.3.1, %for.body.i.1.for.inc.i.1_crit_edge ], [ %div5.i.1, %if.then20.i.1 ], [ %params.sroa.3.1, %if.end11.i.1.for.inc.i.1_crit_edge ]
  %deviation.1.i.1 = phi i32 [ %deviation.1.i, %for.body.i.1.for.inc.i.1_crit_edge ], [ %3, %if.then20.i.1 ], [ %deviation.1.i, %if.end11.i.1.for.inc.i.1_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.1.i.1)
  %tobool.not.i.1 = icmp eq i32 %deviation.1.i.1, 0
  br i1 %tobool.not.i.1, label %for.inc.i.1.for.end.i_crit_edge, label %for.body.i.2

for.inc.i.1.for.end.i_crit_edge:                  ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.2:                                     ; preds = %for.inc.i.1
  %mul.i.2 = mul nuw nsw i32 %div2.i, 3
  %div5.i.2 = udiv i32 %mul.i.2, %mul4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div5.i.2)
  %cmp6.i.2 = icmp ult i32 %div5.i.2, 8
  br i1 %cmp6.i.2, label %for.body.i.2.for.inc.i.2_crit_edge, label %if.end8.i.2

for.body.i.2.for.inc.i.2_crit_edge:               ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.2

if.end8.i.2:                                      ; preds = %for.body.i.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %div5.i.2)
  %cmp9.i.2 = icmp ugt i32 %div5.i.2, 200
  br i1 %cmp9.i.2, label %if.end8.i.2.for.end.i_crit_edge, label %if.end11.i.2

if.end8.i.2.for.end.i_crit_edge:                  ; preds = %if.end8.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end11.i.2:                                     ; preds = %if.end8.i.2
  %mul13.i.2 = mul i32 %div5.i.2, %mul4.i
  %div14.i.2 = udiv i32 %mul13.i.2, 3
  %sub.i.2 = sub nsw i32 %div14.i.2, %div2.i
  %4 = tail call i32 @llvm.abs.i32(i32 %sub.i.2, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.i.2, i32 %div2.i)
  %tobool17.not.i.2 = icmp eq i32 %div14.i.2, %div2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %deviation.1.i.1)
  %cmp19.i.2 = icmp ult i32 %4, %deviation.1.i.1
  %or.cond65.i.2 = select i1 %tobool17.not.i.2, i1 true, i1 %cmp19.i.2
  br i1 %or.cond65.i.2, label %if.then20.i.2, label %if.end11.i.2.for.inc.i.2_crit_edge

if.end11.i.2.for.inc.i.2_crit_edge:               ; preds = %if.end11.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.2

if.then20.i.2:                                    ; preds = %if.end11.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.2

for.inc.i.2:                                      ; preds = %if.then20.i.2, %if.end11.i.2.for.inc.i.2_crit_edge, %for.body.i.2.for.inc.i.2_crit_edge
  %params.sroa.11.1.2 = phi i32 [ %params.sroa.11.1.1, %for.body.i.2.for.inc.i.2_crit_edge ], [ 3, %if.then20.i.2 ], [ %params.sroa.11.1.1, %if.end11.i.2.for.inc.i.2_crit_edge ]
  %params.sroa.3.1.2 = phi i32 [ %params.sroa.3.1.1, %for.body.i.2.for.inc.i.2_crit_edge ], [ %div5.i.2, %if.then20.i.2 ], [ %params.sroa.3.1.1, %if.end11.i.2.for.inc.i.2_crit_edge ]
  %deviation.1.i.2 = phi i32 [ %deviation.1.i.1, %for.body.i.2.for.inc.i.2_crit_edge ], [ %4, %if.then20.i.2 ], [ %deviation.1.i.1, %if.end11.i.2.for.inc.i.2_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.1.i.2)
  %tobool.not.i.2 = icmp eq i32 %deviation.1.i.2, 0
  br i1 %tobool.not.i.2, label %for.inc.i.2.for.end.i_crit_edge, label %for.body.i.3

for.inc.i.2.for.end.i_crit_edge:                  ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.3:                                     ; preds = %for.inc.i.2
  %mul.i.3 = shl nuw nsw i32 %div2.i, 2
  %div5.i.3 = udiv i32 %mul.i.3, %mul4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div5.i.3)
  %cmp6.i.3 = icmp ult i32 %div5.i.3, 8
  br i1 %cmp6.i.3, label %for.body.i.3.for.inc.i.3_crit_edge, label %if.end8.i.3

for.body.i.3.for.inc.i.3_crit_edge:               ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.3

if.end8.i.3:                                      ; preds = %for.body.i.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %div5.i.3)
  %cmp9.i.3 = icmp ugt i32 %div5.i.3, 200
  br i1 %cmp9.i.3, label %if.end8.i.3.for.end.i_crit_edge, label %if.end11.i.3

if.end8.i.3.for.end.i_crit_edge:                  ; preds = %if.end8.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end11.i.3:                                     ; preds = %if.end8.i.3
  %mul13.i.3 = mul i32 %div5.i.3, %mul4.i
  %div14.i.3117 = lshr i32 %mul13.i.3, 2
  %sub.i.3 = sub nsw i32 %div14.i.3117, %div2.i
  %5 = tail call i32 @llvm.abs.i32(i32 %sub.i.3, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.i.3117, i32 %div2.i)
  %tobool17.not.i.3 = icmp eq i32 %div14.i.3117, %div2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %deviation.1.i.2)
  %cmp19.i.3 = icmp ult i32 %5, %deviation.1.i.2
  %or.cond65.i.3 = select i1 %tobool17.not.i.3, i1 true, i1 %cmp19.i.3
  br i1 %or.cond65.i.3, label %if.then20.i.3, label %if.end11.i.3.for.inc.i.3_crit_edge

if.end11.i.3.for.inc.i.3_crit_edge:               ; preds = %if.end11.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.3

if.then20.i.3:                                    ; preds = %if.end11.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.3

for.inc.i.3:                                      ; preds = %if.then20.i.3, %if.end11.i.3.for.inc.i.3_crit_edge, %for.body.i.3.for.inc.i.3_crit_edge
  %params.sroa.11.1.3 = phi i32 [ %params.sroa.11.1.2, %for.body.i.3.for.inc.i.3_crit_edge ], [ 4, %if.then20.i.3 ], [ %params.sroa.11.1.2, %if.end11.i.3.for.inc.i.3_crit_edge ]
  %params.sroa.3.1.3 = phi i32 [ %params.sroa.3.1.2, %for.body.i.3.for.inc.i.3_crit_edge ], [ %div5.i.3, %if.then20.i.3 ], [ %params.sroa.3.1.2, %if.end11.i.3.for.inc.i.3_crit_edge ]
  %deviation.1.i.3 = phi i32 [ %deviation.1.i.2, %for.body.i.3.for.inc.i.3_crit_edge ], [ %5, %if.then20.i.3 ], [ %deviation.1.i.2, %if.end11.i.3.for.inc.i.3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.1.i.3)
  %tobool.not.i.3 = icmp eq i32 %deviation.1.i.3, 0
  br i1 %tobool.not.i.3, label %for.inc.i.3.for.end.i_crit_edge, label %for.body.i.4

for.inc.i.3.for.end.i_crit_edge:                  ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.4:                                     ; preds = %for.inc.i.3
  %mul.i.4 = mul nuw nsw i32 %div2.i, 5
  %div5.i.4 = udiv i32 %mul.i.4, %mul4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div5.i.4)
  %cmp6.i.4 = icmp ult i32 %div5.i.4, 8
  br i1 %cmp6.i.4, label %for.body.i.4.for.inc.i.4_crit_edge, label %if.end8.i.4

for.body.i.4.for.inc.i.4_crit_edge:               ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.4

if.end8.i.4:                                      ; preds = %for.body.i.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %div5.i.4)
  %cmp9.i.4 = icmp ugt i32 %div5.i.4, 200
  br i1 %cmp9.i.4, label %if.end8.i.4.for.end.i_crit_edge, label %if.end11.i.4

if.end8.i.4.for.end.i_crit_edge:                  ; preds = %if.end8.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end11.i.4:                                     ; preds = %if.end8.i.4
  %mul13.i.4 = mul i32 %div5.i.4, %mul4.i
  %div14.i.4 = udiv i32 %mul13.i.4, 5
  %sub.i.4 = sub nsw i32 %div14.i.4, %div2.i
  %6 = tail call i32 @llvm.abs.i32(i32 %sub.i.4, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.i.4, i32 %div2.i)
  %tobool17.not.i.4 = icmp eq i32 %div14.i.4, %div2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %deviation.1.i.3)
  %cmp19.i.4 = icmp ult i32 %6, %deviation.1.i.3
  %or.cond65.i.4 = select i1 %tobool17.not.i.4, i1 true, i1 %cmp19.i.4
  br i1 %or.cond65.i.4, label %if.then20.i.4, label %if.end11.i.4.for.inc.i.4_crit_edge

if.end11.i.4.for.inc.i.4_crit_edge:               ; preds = %if.end11.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.4

if.then20.i.4:                                    ; preds = %if.end11.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.4

for.inc.i.4:                                      ; preds = %if.then20.i.4, %if.end11.i.4.for.inc.i.4_crit_edge, %for.body.i.4.for.inc.i.4_crit_edge
  %params.sroa.11.1.4 = phi i32 [ %params.sroa.11.1.3, %for.body.i.4.for.inc.i.4_crit_edge ], [ 5, %if.then20.i.4 ], [ %params.sroa.11.1.3, %if.end11.i.4.for.inc.i.4_crit_edge ]
  %params.sroa.3.1.4 = phi i32 [ %params.sroa.3.1.3, %for.body.i.4.for.inc.i.4_crit_edge ], [ %div5.i.4, %if.then20.i.4 ], [ %params.sroa.3.1.3, %if.end11.i.4.for.inc.i.4_crit_edge ]
  %deviation.1.i.4 = phi i32 [ %deviation.1.i.3, %for.body.i.4.for.inc.i.4_crit_edge ], [ %6, %if.then20.i.4 ], [ %deviation.1.i.3, %if.end11.i.4.for.inc.i.4_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.1.i.4)
  %tobool.not.i.4 = icmp eq i32 %deviation.1.i.4, 0
  br i1 %tobool.not.i.4, label %for.inc.i.4.for.end.i_crit_edge, label %for.body.i.5

for.inc.i.4.for.end.i_crit_edge:                  ; preds = %for.inc.i.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.5:                                     ; preds = %for.inc.i.4
  %mul.i.5 = mul nuw nsw i32 %div2.i, 6
  %div5.i.5 = udiv i32 %mul.i.5, %mul4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div5.i.5)
  %cmp6.i.5 = icmp ult i32 %div5.i.5, 8
  br i1 %cmp6.i.5, label %for.body.i.5.for.inc.i.5_crit_edge, label %if.end8.i.5

for.body.i.5.for.inc.i.5_crit_edge:               ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.5

if.end8.i.5:                                      ; preds = %for.body.i.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %div5.i.5)
  %cmp9.i.5 = icmp ugt i32 %div5.i.5, 200
  br i1 %cmp9.i.5, label %if.end8.i.5.for.end.i_crit_edge, label %if.end11.i.5

if.end8.i.5.for.end.i_crit_edge:                  ; preds = %if.end8.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end11.i.5:                                     ; preds = %if.end8.i.5
  %mul13.i.5 = mul i32 %div5.i.5, %mul4.i
  %div14.i.5 = udiv i32 %mul13.i.5, 6
  %sub.i.5 = sub nsw i32 %div14.i.5, %div2.i
  %7 = tail call i32 @llvm.abs.i32(i32 %sub.i.5, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.i.5, i32 %div2.i)
  %tobool17.not.i.5 = icmp eq i32 %div14.i.5, %div2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %deviation.1.i.4)
  %cmp19.i.5 = icmp ult i32 %7, %deviation.1.i.4
  %or.cond65.i.5 = select i1 %tobool17.not.i.5, i1 true, i1 %cmp19.i.5
  br i1 %or.cond65.i.5, label %if.then20.i.5, label %if.end11.i.5.for.inc.i.5_crit_edge

if.end11.i.5.for.inc.i.5_crit_edge:               ; preds = %if.end11.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.5

if.then20.i.5:                                    ; preds = %if.end11.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.5

for.inc.i.5:                                      ; preds = %if.then20.i.5, %if.end11.i.5.for.inc.i.5_crit_edge, %for.body.i.5.for.inc.i.5_crit_edge
  %params.sroa.11.1.5 = phi i32 [ %params.sroa.11.1.4, %for.body.i.5.for.inc.i.5_crit_edge ], [ 6, %if.then20.i.5 ], [ %params.sroa.11.1.4, %if.end11.i.5.for.inc.i.5_crit_edge ]
  %params.sroa.3.1.5 = phi i32 [ %params.sroa.3.1.4, %for.body.i.5.for.inc.i.5_crit_edge ], [ %div5.i.5, %if.then20.i.5 ], [ %params.sroa.3.1.4, %if.end11.i.5.for.inc.i.5_crit_edge ]
  %deviation.1.i.5 = phi i32 [ %deviation.1.i.4, %for.body.i.5.for.inc.i.5_crit_edge ], [ %7, %if.then20.i.5 ], [ %deviation.1.i.4, %if.end11.i.5.for.inc.i.5_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.1.i.5)
  %tobool.not.i.5 = icmp eq i32 %deviation.1.i.5, 0
  br i1 %tobool.not.i.5, label %for.inc.i.5.for.end.i_crit_edge, label %for.body.i.6

for.inc.i.5.for.end.i_crit_edge:                  ; preds = %for.inc.i.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i.6:                                     ; preds = %for.inc.i.5
  %mul.i.6 = mul nuw nsw i32 %div2.i, 7
  %div5.i.6 = udiv i32 %mul.i.6, %mul4.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div5.i.6)
  %cmp6.i.6 = icmp ult i32 %div5.i.6, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 200, i32 %div5.i.6)
  %cmp9.i.6 = icmp ugt i32 %div5.i.6, 200
  %or.cond118 = or i1 %cmp6.i.6, %cmp9.i.6
  br i1 %or.cond118, label %for.body.i.6.for.end.i_crit_edge, label %if.end11.i.6

for.body.i.6.for.end.i_crit_edge:                 ; preds = %for.body.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.end11.i.6:                                     ; preds = %for.body.i.6
  %mul13.i.6 = mul i32 %div5.i.6, %mul4.i
  %div14.i.6 = udiv i32 %mul13.i.6, 7
  %sub.i.6 = sub nsw i32 %div14.i.6, %div2.i
  %8 = tail call i32 @llvm.abs.i32(i32 %sub.i.6, i1 false) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %div14.i.6, i32 %div2.i)
  %tobool17.not.i.6 = icmp eq i32 %div14.i.6, %div2.i
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %deviation.1.i.5)
  %cmp19.i.6 = icmp ult i32 %8, %deviation.1.i.5
  %or.cond65.i.6 = select i1 %tobool17.not.i.6, i1 true, i1 %cmp19.i.6
  br i1 %or.cond65.i.6, label %if.then20.i.6, label %if.end11.i.6.for.end.i_crit_edge

if.end11.i.6.for.end.i_crit_edge:                 ; preds = %if.end11.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

if.then20.i.6:                                    ; preds = %if.end11.i.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.end.i:                                        ; preds = %if.then20.i.6, %if.end11.i.6.for.end.i_crit_edge, %for.body.i.6.for.end.i_crit_edge, %for.inc.i.5.for.end.i_crit_edge, %if.end8.i.5.for.end.i_crit_edge, %for.inc.i.4.for.end.i_crit_edge, %if.end8.i.4.for.end.i_crit_edge, %for.inc.i.3.for.end.i_crit_edge, %if.end8.i.3.for.end.i_crit_edge, %for.inc.i.2.for.end.i_crit_edge, %if.end8.i.2.for.end.i_crit_edge, %for.inc.i.1.for.end.i_crit_edge, %if.end8.i.1.for.end.i_crit_edge, %for.inc.i.for.end.i_crit_edge, %if.end8.i.for.end.i_crit_edge
  %params.sroa.11.2 = phi i32 [ %params.sroa.11.1, %for.inc.i.for.end.i_crit_edge ], [ -1, %if.end8.i.for.end.i_crit_edge ], [ %params.sroa.11.1, %if.end8.i.1.for.end.i_crit_edge ], [ %params.sroa.11.1.1, %for.inc.i.1.for.end.i_crit_edge ], [ %params.sroa.11.1.1, %if.end8.i.2.for.end.i_crit_edge ], [ %params.sroa.11.1.2, %for.inc.i.2.for.end.i_crit_edge ], [ %params.sroa.11.1.2, %if.end8.i.3.for.end.i_crit_edge ], [ %params.sroa.11.1.3, %for.inc.i.3.for.end.i_crit_edge ], [ %params.sroa.11.1.3, %if.end8.i.4.for.end.i_crit_edge ], [ %params.sroa.11.1.4, %for.inc.i.4.for.end.i_crit_edge ], [ %params.sroa.11.1.4, %if.end8.i.5.for.end.i_crit_edge ], [ %params.sroa.11.1.5, %for.inc.i.5.for.end.i_crit_edge ], [ %params.sroa.11.1.5, %for.body.i.6.for.end.i_crit_edge ], [ 7, %if.then20.i.6 ], [ %params.sroa.11.1.5, %if.end11.i.6.for.end.i_crit_edge ]
  %params.sroa.3.2 = phi i32 [ %params.sroa.3.1, %for.inc.i.for.end.i_crit_edge ], [ -1, %if.end8.i.for.end.i_crit_edge ], [ %params.sroa.3.1, %if.end8.i.1.for.end.i_crit_edge ], [ %params.sroa.3.1.1, %for.inc.i.1.for.end.i_crit_edge ], [ %params.sroa.3.1.1, %if.end8.i.2.for.end.i_crit_edge ], [ %params.sroa.3.1.2, %for.inc.i.2.for.end.i_crit_edge ], [ %params.sroa.3.1.2, %if.end8.i.3.for.end.i_crit_edge ], [ %params.sroa.3.1.3, %for.inc.i.3.for.end.i_crit_edge ], [ %params.sroa.3.1.3, %if.end8.i.4.for.end.i_crit_edge ], [ %params.sroa.3.1.4, %for.inc.i.4.for.end.i_crit_edge ], [ %params.sroa.3.1.4, %if.end8.i.5.for.end.i_crit_edge ], [ %params.sroa.3.1.5, %for.inc.i.5.for.end.i_crit_edge ], [ %params.sroa.3.1.5, %for.body.i.6.for.end.i_crit_edge ], [ %div5.i.6, %if.then20.i.6 ], [ %params.sroa.3.1.5, %if.end11.i.6.for.end.i_crit_edge ]
  %deviation.0.lcssa.i = phi i32 [ %deviation.1.i, %for.inc.i.for.end.i_crit_edge ], [ -1, %if.end8.i.for.end.i_crit_edge ], [ %deviation.1.i, %if.end8.i.1.for.end.i_crit_edge ], [ %deviation.1.i.1, %for.inc.i.1.for.end.i_crit_edge ], [ %deviation.1.i.1, %if.end8.i.2.for.end.i_crit_edge ], [ %deviation.1.i.2, %for.inc.i.2.for.end.i_crit_edge ], [ %deviation.1.i.2, %if.end8.i.3.for.end.i_crit_edge ], [ %deviation.1.i.3, %for.inc.i.3.for.end.i_crit_edge ], [ %deviation.1.i.3, %if.end8.i.4.for.end.i_crit_edge ], [ %deviation.1.i.4, %for.inc.i.4.for.end.i_crit_edge ], [ %deviation.1.i.4, %if.end8.i.5.for.end.i_crit_edge ], [ %deviation.1.i.5, %for.inc.i.5.for.end.i_crit_edge ], [ %deviation.1.i.5, %for.body.i.6.for.end.i_crit_edge ], [ %8, %if.then20.i.6 ], [ %deviation.1.i.5, %if.end11.i.6.for.end.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %deviation.0.lcssa.i)
  %cmp22.i = icmp eq i32 %deviation.0.lcssa.i, -1
  br i1 %cmp22.i, label %for.end.i.do.body_crit_edge, label %for.end.i.for.cond25.i_crit_edge

for.end.i.for.cond25.i_crit_edge:                 ; preds = %for.end.i
  br label %for.cond25.i

for.end.i.do.body_crit_edge:                      ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.cond25.i:                                     ; preds = %for.cond25.i.for.cond25.i_crit_edge, %for.end.i.for.cond25.i_crit_edge
  %storemerge.i = phi i32 [ %inc34.i, %for.cond25.i.for.cond25.i_crit_edge ], [ 6, %for.end.i.for.cond25.i_crit_edge ]
  %sub28.i = add i32 %storemerge.i, -6
  %arrayidx.i = getelementptr [19 x i8], ptr @clk_pll3200c32_get_params.cp_table, i32 0, i32 %sub28.i
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %10 to i32
  %cmp29.i = icmp ugt i32 %params.sroa.3.2, %conv.i
  %inc34.i = add i32 %storemerge.i, 1
  br i1 %cmp29.i, label %for.cond25.i.for.cond25.i_crit_edge, label %if.then3

for.cond25.i.for.cond25.i_crit_edge:              ; preds = %for.cond25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond25.i

if.then3:                                         ; preds = %for.cond25.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.sroa.11.2)
  %tobool.not.i77 = icmp eq i32 %params.sroa.11.2, 0
  %spec.select = select i1 %tobool.not.i77, i32 1, i32 %params.sroa.11.2
  %mul2.i = mul i32 %mul4.i, %params.sroa.3.2
  %div4.i = udiv i32 %mul2.i, %spec.select
  %mul5.i = mul i32 %div4.i, 1000
  br label %do.body

do.body:                                          ; preds = %if.then3, %for.end.i.do.body_crit_edge, %if.end.do.body_crit_edge
  %params.sroa.19.0114 = phi i32 [ %storemerge.i, %if.then3 ], [ -1, %if.end.do.body_crit_edge ], [ -1, %for.end.i.do.body_crit_edge ]
  %params.sroa.3.3112 = phi i32 [ %params.sroa.3.2, %if.then3 ], [ -1, %if.end.do.body_crit_edge ], [ %params.sroa.3.2, %for.end.i.do.body_crit_edge ]
  %params.sroa.11.5 = phi i32 [ %spec.select, %if.then3 ], [ -1, %if.end.do.body_crit_edge ], [ %params.sroa.11.2, %for.end.i.do.body_crit_edge ]
  %hwrate.0 = phi i32 [ %mul5.i, %if.then3 ], [ 0, %if.end.do.body_crit_edge ], [ 0, %for.end.i.do.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_rate_stm_pll3200c32.__UNIQUE_ID_ddebug180, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_rate_stm_pll3200c32, %if.then11)) #7
          to label %do.end [label %if.then11], !srcloc !126

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %11 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %clk, align 4
  %call12 = tail call ptr @__clk_get_name(ptr noundef %12) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_rate_stm_pll3200c32.__UNIQUE_ID_ddebug180, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.20, ptr noundef %call12, i32 noundef %hwrate.0, i32 noundef %params.sroa.3.3112, i32 noundef %params.sroa.11.5) #7
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %hwrate.0)
  %tobool14.not = icmp eq i32 %hwrate.0, 0
  br i1 %tobool14.not, label %do.end.cleanup_crit_edge, label %if.end16

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %do.end
  %ndiv18 = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 4
  %13 = ptrtoint ptr %ndiv18 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %params.sroa.3.3112, ptr %ndiv18, align 4
  %idf20 = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 5
  %14 = ptrtoint ptr %idf20 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %params.sroa.11.5, ptr %idf20, align 4
  %cp21 = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 6
  %15 = ptrtoint ptr %cp21 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %params.sroa.19.0114, ptr %cp21, align 4
  tail call fastcc void @__clkgen_pll_disable(ptr noundef %hw)
  %lock = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 3
  %16 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %lock, align 4
  %tobool22.not = icmp eq ptr %17, null
  br i1 %tobool22.not, label %if.end16.if.end34_crit_edge, label %do.body25

if.end16.if.end34_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

do.body25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %call29 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %17) #7
  br label %if.end34

if.end34:                                         ; preds = %do.body25, %if.end16.if.end34_crit_edge
  %flags.0 = phi i32 [ %call29, %do.body25 ], [ 0, %if.end16.if.end34_crit_edge ]
  %regs_base = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 2
  %18 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %regs_base, align 4
  %data = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 1
  %20 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %data, align 4
  %ndiv35 = getelementptr inbounds %struct.clkgen_pll_data, ptr %21, i32 0, i32 4
  %22 = ptrtoint ptr %ndiv18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ndiv18, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %24 = ptrtoint ptr %ndiv35 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ndiv35, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 %25
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !128
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %mask.i = getelementptr inbounds %struct.clkgen_pll_data, ptr %21, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %mask.i, align 4
  %shift.i = getelementptr inbounds %struct.clkgen_pll_data, ptr %21, i32 0, i32 4, i32 2
  %30 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %29, %31
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %27, %neg.i
  %shl3.i = shl i32 %23, %31
  %or.i = or i32 %and.i, %shl3.i
  %32 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %33 = ptrtoint ptr %ndiv35 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %ndiv35, align 4
  %add.ptr5.i = getelementptr i8, ptr %19, i32 %34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %32) #7, !srcloc !132
  %35 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs_base, align 4
  %37 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %data, align 4
  %idf39 = getelementptr inbounds %struct.clkgen_pll_data, ptr %38, i32 0, i32 6
  %39 = ptrtoint ptr %idf20 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %idf20, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %idf39 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %idf39, align 4
  %add.ptr.i82 = getelementptr i8, ptr %36, i32 %42
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i82) #7, !srcloc !128
  %44 = tail call i32 @llvm.bswap.i32(i32 %43) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %mask.i83 = getelementptr inbounds %struct.clkgen_pll_data, ptr %38, i32 0, i32 6, i32 1
  %45 = ptrtoint ptr %mask.i83 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mask.i83, align 4
  %shift.i84 = getelementptr inbounds %struct.clkgen_pll_data, ptr %38, i32 0, i32 6, i32 2
  %47 = ptrtoint ptr %shift.i84 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %shift.i84, align 4
  %shl.i85 = shl i32 %46, %48
  %neg.i86 = xor i32 %shl.i85, -1
  %and.i87 = and i32 %44, %neg.i86
  %shl3.i88 = shl i32 %40, %48
  %or.i89 = or i32 %and.i87, %shl3.i88
  %49 = tail call i32 @llvm.bswap.i32(i32 %or.i89) #7
  %50 = ptrtoint ptr %idf39 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %idf39, align 4
  %add.ptr5.i90 = getelementptr i8, ptr %36, i32 %51
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i90, i32 %49) #7, !srcloc !132
  %52 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %regs_base, align 4
  %54 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %data, align 4
  %cp43 = getelementptr inbounds %struct.clkgen_pll_data, ptr %55, i32 0, i32 8
  %56 = ptrtoint ptr %cp21 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cp21, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %58 = ptrtoint ptr %cp43 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cp43, align 4
  %add.ptr.i91 = getelementptr i8, ptr %53, i32 %59
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i91) #7, !srcloc !128
  %61 = tail call i32 @llvm.bswap.i32(i32 %60) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %mask.i92 = getelementptr inbounds %struct.clkgen_pll_data, ptr %55, i32 0, i32 8, i32 1
  %62 = ptrtoint ptr %mask.i92 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mask.i92, align 4
  %shift.i93 = getelementptr inbounds %struct.clkgen_pll_data, ptr %55, i32 0, i32 8, i32 2
  %64 = ptrtoint ptr %shift.i93 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %shift.i93, align 4
  %shl.i94 = shl i32 %63, %65
  %neg.i95 = xor i32 %shl.i94, -1
  %and.i96 = and i32 %61, %neg.i95
  %shl3.i97 = shl i32 %57, %65
  %or.i98 = or i32 %and.i96, %shl3.i97
  %66 = tail call i32 @llvm.bswap.i32(i32 %or.i98) #7
  %67 = ptrtoint ptr %cp43 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %cp43, align 4
  %add.ptr5.i99 = getelementptr i8, ptr %53, i32 %68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i99, i32 %66) #7, !srcloc !132
  %69 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %lock, align 4
  %tobool46.not = icmp eq ptr %70, null
  br i1 %tobool46.not, label %if.end34.if.end49_crit_edge, label %if.then47

if.end34.if.end49_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then47:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %70, i32 noundef %flags.0) #7
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end34.if.end49_crit_edge
  %call50 = tail call fastcc i32 @__clkgen_pll_enable(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end49 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @recalc_stm_pll4600c28(ptr nocapture noundef readonly %hw, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs_base.i = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 2
  %0 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs_base.i, align 4
  %data.i = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 1
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 %5
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !128
  %7 = tail call i32 @llvm.bswap.i32(i32 %6) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %shift.i.i = getelementptr inbounds %struct.clkgen_field, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %shift.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %shift.i.i, align 4
  %shr.i.i = lshr i32 %7, %9
  %mask.i.i = getelementptr inbounds %struct.clkgen_field, ptr %3, i32 0, i32 1
  %10 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %mask.i.i, align 4
  %and.i.i = and i32 %shr.i.i, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.not, label %lor.lhs.false, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %12 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs_base.i, align 4
  %14 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %data.i, align 4
  %locked_status.i = getelementptr inbounds %struct.clkgen_pll_data, ptr %15, i32 0, i32 2
  %16 = ptrtoint ptr %locked_status.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %locked_status.i, align 4
  %add.ptr.i.i28 = getelementptr i8, ptr %13, i32 %17
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i28) #7, !srcloc !128
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %shift.i.i29 = getelementptr inbounds %struct.clkgen_pll_data, ptr %15, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %shift.i.i29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %shift.i.i29, align 4
  %shr.i.i30 = lshr i32 %19, %21
  %mask.i.i31 = getelementptr inbounds %struct.clkgen_pll_data, ptr %15, i32 0, i32 2, i32 1
  %22 = ptrtoint ptr %mask.i.i31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mask.i.i31, align 4
  %and.i.i32 = and i32 %shr.i.i30, %23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i32)
  %tobool.i.not = icmp eq i32 %and.i.i32, 0
  br i1 %tobool.i.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs_base.i, align 4
  %26 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %data.i, align 4
  %ndiv = getelementptr inbounds %struct.clkgen_pll_data, ptr %27, i32 0, i32 4
  %28 = ptrtoint ptr %ndiv to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ndiv, align 4
  %add.ptr.i = getelementptr i8, ptr %25, i32 %29
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !128
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %shift.i = getelementptr inbounds %struct.clkgen_pll_data, ptr %27, i32 0, i32 4, i32 2
  %32 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %shift.i, align 4
  %shr.i = lshr i32 %31, %33
  %mask.i = getelementptr inbounds %struct.clkgen_pll_data, ptr %27, i32 0, i32 4, i32 1
  %34 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %shr.i, %35
  %36 = ptrtoint ptr %regs_base.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regs_base.i, align 4
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  %idf = getelementptr inbounds %struct.clkgen_pll_data, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %idf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %idf, align 4
  %add.ptr.i34 = getelementptr i8, ptr %37, i32 %41
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i34) #7, !srcloc !128
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  %shift.i35 = getelementptr inbounds %struct.clkgen_pll_data, ptr %39, i32 0, i32 6, i32 2
  %44 = ptrtoint ptr %shift.i35 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %shift.i35, align 4
  %shr.i36 = lshr i32 %43, %45
  %mask.i37 = getelementptr inbounds %struct.clkgen_pll_data, ptr %39, i32 0, i32 6, i32 1
  %46 = ptrtoint ptr %mask.i37 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %mask.i37, align 4
  %and.i38 = and i32 %shr.i36, %47
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool.not.i39 = icmp eq i32 %and.i38, 0
  %spec.select = select i1 %tobool.not.i39, i32 1, i32 %and.i38
  %div.i = udiv i32 %parent_rate, %spec.select
  %mul.i = shl i32 %div.i, 1
  %mul3.i = mul i32 %mul.i, %and.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @recalc_stm_pll4600c28.__UNIQUE_ID_ddebug181, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@recalc_stm_pll4600c28, %if.then15)) #7
          to label %cleanup [label %if.then15], !srcloc !126

if.then15:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %48 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %clk, align 4
  %call16 = tail call ptr @__clk_get_name(ptr noundef %49) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @recalc_stm_pll4600c28.__UNIQUE_ID_ddebug181, ptr noundef nonnull @.str.13, ptr noundef %call16, ptr noundef nonnull @.str.23, i32 noundef %mul3.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then15, %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ], [ %mul3.i, %if.end ], [ %mul3.i, %if.then15 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @round_rate_stm_pll4600c28(ptr nocapture noundef readonly %hw, i32 noundef %rate, ptr nocapture noundef readonly %prate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %prate to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %prate, align 4
  %2 = add i32 %rate, 1294967295
  call void @__sanitizer_cov_trace_const_cmp4(i32 1313967295, i32 %2)
  %3 = icmp ult i32 %2, 1313967295
  br i1 %3, label %entry.do.body_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.i:                                       ; preds = %for.inc33.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %params.sroa.9.0 = phi i32 [ %params.sroa.9.3, %for.inc33.i.for.body.i_crit_edge ], [ -1, %entry.for.body.i_crit_edge ]
  %params.sroa.3.0 = phi i32 [ %params.sroa.3.3, %for.inc33.i.for.body.i_crit_edge ], [ -1, %entry.for.body.i_crit_edge ]
  %deviation.079.i = phi i32 [ %deviation.3.i, %for.inc33.i.for.body.i_crit_edge ], [ -1, %entry.for.body.i_crit_edge ]
  %i.078.i = phi i32 [ %inc34.i, %for.inc33.i.for.body.i_crit_edge ], [ 1, %entry.for.body.i_crit_edge ]
  %div.i = udiv i32 %1, %i.078.i
  %4 = add i32 %div.i, -50000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -46000001, i32 %4)
  %5 = icmp ult i32 %4, -46000001
  br i1 %5, label %for.body.i.for.inc33.i_crit_edge, label %if.end7.i

for.body.i.for.inc33.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33.i

if.end7.i:                                        ; preds = %for.body.i
  %mul.i = shl nuw nsw i32 %div.i, 1
  %div8.i = udiv i32 %rate, %mul.i
  %6 = add nsw i32 %div8.i, -247
  call void @__sanitizer_cov_trace_const_cmp4(i32 -239, i32 %6)
  %7 = icmp ult i32 %6, -239
  br i1 %7, label %if.end7.i.for.inc33.i_crit_edge, label %if.end13.i

if.end7.i.for.inc33.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33.i

if.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 246, i32 %div8.i)
  %cmp14.not.i = icmp eq i32 %div8.i, 246
  %inc.i = add nuw nsw i32 %div8.i, 1
  %spec.select.i = select i1 %cmp14.not.i, i32 246, i32 %inc.i
  br label %land.rhs19.i

land.rhs19.i:                                     ; preds = %if.end27.i.land.rhs19.i_crit_edge, %if.end13.i
  %params.sroa.9.1 = phi i32 [ %params.sroa.9.0, %if.end13.i ], [ %params.sroa.9.2, %if.end27.i.land.rhs19.i_crit_edge ]
  %params.sroa.3.1 = phi i32 [ %params.sroa.3.0, %if.end13.i ], [ %params.sroa.3.2, %if.end27.i.land.rhs19.i_crit_edge ]
  %deviation.175.i = phi i32 [ %deviation.079.i, %if.end13.i ], [ %deviation.2.i, %if.end27.i.land.rhs19.i_crit_edge ]
  %n.173.i = phi i32 [ %spec.select.i, %if.end13.i ], [ %dec.i, %if.end27.i.land.rhs19.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.175.i)
  %tobool20.not.i = icmp eq i32 %deviation.175.i, 0
  br i1 %tobool20.not.i, label %land.rhs19.i.if.then_crit_edge, label %for.body22.i

land.rhs19.i.if.then_crit_edge:                   ; preds = %land.rhs19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.body22.i:                                     ; preds = %land.rhs19.i
  %mul24.i = mul i32 %n.173.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul24.i, i32 %rate)
  %cmp25.i = icmp ult i32 %mul24.i, %rate
  br i1 %cmp25.i, label %for.body22.i.for.inc33.i_crit_edge, label %if.end27.i

for.body22.i.for.inc33.i_crit_edge:               ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33.i

if.end27.i:                                       ; preds = %for.body22.i
  %sub.i = sub i32 %mul24.i, %rate
  call void @__sanitizer_cov_trace_cmp4(i32 %mul24.i, i32 %rate)
  %tobool28.not.i = icmp eq i32 %mul24.i, %rate
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %deviation.175.i)
  %cmp30.i = icmp ult i32 %sub.i, %deviation.175.i
  %or.cond71.i = select i1 %tobool28.not.i, i1 true, i1 %cmp30.i
  %params.sroa.9.2 = select i1 %or.cond71.i, i32 %i.078.i, i32 %params.sroa.9.1
  %params.sroa.3.2 = select i1 %or.cond71.i, i32 %n.173.i, i32 %params.sroa.3.1
  %deviation.2.i = select i1 %or.cond71.i, i32 %sub.i, i32 %deviation.175.i
  %dec.i = add i32 %n.173.i, -1
  %cmp18.i = icmp ugt i32 %dec.i, 7
  br i1 %cmp18.i, label %if.end27.i.land.rhs19.i_crit_edge, label %if.end27.i.for.inc33.i_crit_edge

if.end27.i.for.inc33.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33.i

if.end27.i.land.rhs19.i_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs19.i

for.inc33.i:                                      ; preds = %if.end27.i.for.inc33.i_crit_edge, %for.body22.i.for.inc33.i_crit_edge, %if.end7.i.for.inc33.i_crit_edge, %for.body.i.for.inc33.i_crit_edge
  %params.sroa.9.3 = phi i32 [ %params.sroa.9.0, %for.body.i.for.inc33.i_crit_edge ], [ %params.sroa.9.0, %if.end7.i.for.inc33.i_crit_edge ], [ %params.sroa.9.2, %if.end27.i.for.inc33.i_crit_edge ], [ %params.sroa.9.1, %for.body22.i.for.inc33.i_crit_edge ]
  %params.sroa.3.3 = phi i32 [ %params.sroa.3.0, %for.body.i.for.inc33.i_crit_edge ], [ %params.sroa.3.0, %if.end7.i.for.inc33.i_crit_edge ], [ %params.sroa.3.2, %if.end27.i.for.inc33.i_crit_edge ], [ %params.sroa.3.1, %for.body22.i.for.inc33.i_crit_edge ]
  %deviation.3.i = phi i32 [ %deviation.079.i, %for.body.i.for.inc33.i_crit_edge ], [ %deviation.079.i, %if.end7.i.for.inc33.i_crit_edge ], [ %deviation.2.i, %if.end27.i.for.inc33.i_crit_edge ], [ %deviation.175.i, %for.body22.i.for.inc33.i_crit_edge ]
  %inc34.i = add nuw nsw i32 %i.078.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.078.i)
  %cmp2.i = icmp ugt i32 %i.078.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.3.i)
  %tobool.not.i = icmp eq i32 %deviation.3.i, 0
  %or.cond68.i = select i1 %cmp2.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond68.i, label %for.end35.i, label %for.inc33.i.for.body.i_crit_edge

for.inc33.i.for.body.i_crit_edge:                 ; preds = %for.inc33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end35.i:                                      ; preds = %for.inc33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %deviation.3.i)
  %cmp36.i = icmp eq i32 %deviation.3.i, -1
  br i1 %cmp36.i, label %for.end35.i.do.body_crit_edge, label %for.end35.i.if.then_crit_edge

for.end35.i.if.then_crit_edge:                    ; preds = %for.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

for.end35.i.do.body_crit_edge:                    ; preds = %for.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then:                                          ; preds = %for.end35.i.if.then_crit_edge, %land.rhs19.i.if.then_crit_edge
  %params.sroa.9.4.ph = phi i32 [ %params.sroa.9.3, %for.end35.i.if.then_crit_edge ], [ %params.sroa.9.1, %land.rhs19.i.if.then_crit_edge ]
  %params.sroa.3.4.ph = phi i32 [ %params.sroa.3.3, %for.end35.i.if.then_crit_edge ], [ %params.sroa.3.1, %land.rhs19.i.if.then_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.sroa.9.4.ph)
  %tobool.not.i34 = icmp eq i32 %params.sroa.9.4.ph, 0
  %spec.select = select i1 %tobool.not.i34, i32 1, i32 %params.sroa.9.4.ph
  %div.i35 = udiv i32 %1, %spec.select
  %mul.i36 = shl i32 %div.i35, 1
  %mul3.i = mul i32 %mul.i36, %params.sroa.3.4.ph
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @round_rate_stm_pll4600c28.__UNIQUE_ID_ddebug183, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@round_rate_stm_pll4600c28, %if.then21)) #7
          to label %cleanup [label %if.then21], !srcloc !126

do.body:                                          ; preds = %for.end35.i.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @round_rate_stm_pll4600c28.__UNIQUE_ID_ddebug182, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@round_rate_stm_pll4600c28, %if.then6)) #7
          to label %cleanup [label %if.then6], !srcloc !126

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %call7 = tail call ptr @__clk_get_name(ptr noundef %9) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @round_rate_stm_pll4600c28.__UNIQUE_ID_ddebug182, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.24, ptr noundef %call7, i32 noundef %rate) #7
  br label %cleanup

if.then21:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %clk22 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %10 = ptrtoint ptr %clk22 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %clk22, align 4
  %call23 = tail call ptr @__clk_get_name(ptr noundef %11) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @round_rate_stm_pll4600c28.__UNIQUE_ID_ddebug183, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.24, ptr noundef %call23, i32 noundef %mul3.i, i32 noundef %params.sroa.3.4.ph, i32 noundef %spec.select) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then21, %if.then6, %do.body, %if.then
  %retval.0 = phi i32 [ 0, %if.then6 ], [ 0, %do.body ], [ %mul3.i, %if.then ], [ %mul3.i, %if.then21 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @set_rate_stm_pll4600c28(ptr nocapture noundef %hw, i32 noundef %rate, i32 noundef %parent_rate) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rate)
  %tobool.not = icmp eq i32 %rate, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %parent_rate)
  %tobool1.not = icmp eq i32 %parent_rate, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = add i32 %rate, 1294967295
  call void @__sanitizer_cov_trace_const_cmp4(i32 1313967295, i32 %0)
  %1 = icmp ult i32 %0, 1313967295
  br i1 %1, label %if.end.do.body_crit_edge, label %if.end.for.body.i_crit_edge

if.end.for.body.i_crit_edge:                      ; preds = %if.end
  br label %for.body.i

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body.i:                                       ; preds = %for.inc33.i.for.body.i_crit_edge, %if.end.for.body.i_crit_edge
  %params.sroa.3.0 = phi i32 [ %params.sroa.3.3, %for.inc33.i.for.body.i_crit_edge ], [ -1, %if.end.for.body.i_crit_edge ]
  %params.sroa.10.0 = phi i32 [ %params.sroa.10.3, %for.inc33.i.for.body.i_crit_edge ], [ -1, %if.end.for.body.i_crit_edge ]
  %deviation.079.i = phi i32 [ %deviation.3.i, %for.inc33.i.for.body.i_crit_edge ], [ -1, %if.end.for.body.i_crit_edge ]
  %i.078.i = phi i32 [ %inc34.i, %for.inc33.i.for.body.i_crit_edge ], [ 1, %if.end.for.body.i_crit_edge ]
  %div.i = udiv i32 %parent_rate, %i.078.i
  %2 = add i32 %div.i, -50000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 -46000001, i32 %2)
  %3 = icmp ult i32 %2, -46000001
  br i1 %3, label %for.body.i.for.inc33.i_crit_edge, label %if.end7.i

for.body.i.for.inc33.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33.i

if.end7.i:                                        ; preds = %for.body.i
  %mul.i = shl nuw nsw i32 %div.i, 1
  %div8.i = udiv i32 %rate, %mul.i
  %4 = add nsw i32 %div8.i, -247
  call void @__sanitizer_cov_trace_const_cmp4(i32 -239, i32 %4)
  %5 = icmp ult i32 %4, -239
  br i1 %5, label %if.end7.i.for.inc33.i_crit_edge, label %if.end13.i

if.end7.i.for.inc33.i_crit_edge:                  ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33.i

if.end13.i:                                       ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 246, i32 %div8.i)
  %cmp14.not.i = icmp eq i32 %div8.i, 246
  %inc.i = add nuw nsw i32 %div8.i, 1
  %spec.select.i = select i1 %cmp14.not.i, i32 246, i32 %inc.i
  br label %land.rhs19.i

land.rhs19.i:                                     ; preds = %if.end27.i.land.rhs19.i_crit_edge, %if.end13.i
  %params.sroa.3.1 = phi i32 [ %params.sroa.3.0, %if.end13.i ], [ %params.sroa.3.2, %if.end27.i.land.rhs19.i_crit_edge ]
  %params.sroa.10.1 = phi i32 [ %params.sroa.10.0, %if.end13.i ], [ %params.sroa.10.2, %if.end27.i.land.rhs19.i_crit_edge ]
  %deviation.175.i = phi i32 [ %deviation.079.i, %if.end13.i ], [ %deviation.2.i, %if.end27.i.land.rhs19.i_crit_edge ]
  %n.173.i = phi i32 [ %spec.select.i, %if.end13.i ], [ %dec.i, %if.end27.i.land.rhs19.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.175.i)
  %tobool20.not.i = icmp eq i32 %deviation.175.i, 0
  br i1 %tobool20.not.i, label %land.rhs19.i.if.then3_crit_edge, label %for.body22.i

land.rhs19.i.if.then3_crit_edge:                  ; preds = %land.rhs19.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.body22.i:                                     ; preds = %land.rhs19.i
  %mul24.i = mul i32 %n.173.i, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul24.i, i32 %rate)
  %cmp25.i = icmp ult i32 %mul24.i, %rate
  br i1 %cmp25.i, label %for.body22.i.for.inc33.i_crit_edge, label %if.end27.i

for.body22.i.for.inc33.i_crit_edge:               ; preds = %for.body22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33.i

if.end27.i:                                       ; preds = %for.body22.i
  %sub.i = sub i32 %mul24.i, %rate
  call void @__sanitizer_cov_trace_cmp4(i32 %mul24.i, i32 %rate)
  %tobool28.not.i = icmp eq i32 %mul24.i, %rate
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %deviation.175.i)
  %cmp30.i = icmp ult i32 %sub.i, %deviation.175.i
  %or.cond71.i = select i1 %tobool28.not.i, i1 true, i1 %cmp30.i
  %params.sroa.3.2 = select i1 %or.cond71.i, i32 %n.173.i, i32 %params.sroa.3.1
  %params.sroa.10.2 = select i1 %or.cond71.i, i32 %i.078.i, i32 %params.sroa.10.1
  %deviation.2.i = select i1 %or.cond71.i, i32 %sub.i, i32 %deviation.175.i
  %dec.i = add i32 %n.173.i, -1
  %cmp18.i = icmp ugt i32 %dec.i, 7
  br i1 %cmp18.i, label %if.end27.i.land.rhs19.i_crit_edge, label %if.end27.i.for.inc33.i_crit_edge

if.end27.i.for.inc33.i_crit_edge:                 ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc33.i

if.end27.i.land.rhs19.i_crit_edge:                ; preds = %if.end27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs19.i

for.inc33.i:                                      ; preds = %if.end27.i.for.inc33.i_crit_edge, %for.body22.i.for.inc33.i_crit_edge, %if.end7.i.for.inc33.i_crit_edge, %for.body.i.for.inc33.i_crit_edge
  %params.sroa.3.3 = phi i32 [ %params.sroa.3.0, %for.body.i.for.inc33.i_crit_edge ], [ %params.sroa.3.0, %if.end7.i.for.inc33.i_crit_edge ], [ %params.sroa.3.2, %if.end27.i.for.inc33.i_crit_edge ], [ %params.sroa.3.1, %for.body22.i.for.inc33.i_crit_edge ]
  %params.sroa.10.3 = phi i32 [ %params.sroa.10.0, %for.body.i.for.inc33.i_crit_edge ], [ %params.sroa.10.0, %if.end7.i.for.inc33.i_crit_edge ], [ %params.sroa.10.2, %if.end27.i.for.inc33.i_crit_edge ], [ %params.sroa.10.1, %for.body22.i.for.inc33.i_crit_edge ]
  %deviation.3.i = phi i32 [ %deviation.079.i, %for.body.i.for.inc33.i_crit_edge ], [ %deviation.079.i, %if.end7.i.for.inc33.i_crit_edge ], [ %deviation.2.i, %if.end27.i.for.inc33.i_crit_edge ], [ %deviation.175.i, %for.body22.i.for.inc33.i_crit_edge ]
  %inc34.i = add nuw nsw i32 %i.078.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %i.078.i)
  %cmp2.i = icmp ugt i32 %i.078.i, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %deviation.3.i)
  %tobool.not.i = icmp eq i32 %deviation.3.i, 0
  %or.cond68.i = select i1 %cmp2.i, i1 true, i1 %tobool.not.i
  br i1 %or.cond68.i, label %for.end35.i, label %for.inc33.i.for.body.i_crit_edge

for.inc33.i.for.body.i_crit_edge:                 ; preds = %for.inc33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.end35.i:                                      ; preds = %for.inc33.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %deviation.3.i)
  %cmp36.i = icmp eq i32 %deviation.3.i, -1
  br i1 %cmp36.i, label %for.end35.i.do.body_crit_edge, label %for.end35.i.if.then3_crit_edge

for.end35.i.if.then3_crit_edge:                   ; preds = %for.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then3

for.end35.i.do.body_crit_edge:                    ; preds = %for.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then3:                                         ; preds = %for.end35.i.if.then3_crit_edge, %land.rhs19.i.if.then3_crit_edge
  %params.sroa.3.4.ph = phi i32 [ %params.sroa.3.3, %for.end35.i.if.then3_crit_edge ], [ %params.sroa.3.1, %land.rhs19.i.if.then3_crit_edge ]
  %params.sroa.10.4.ph = phi i32 [ %params.sroa.10.3, %for.end35.i.if.then3_crit_edge ], [ %params.sroa.10.1, %land.rhs19.i.if.then3_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %params.sroa.10.4.ph)
  %tobool.not.i91 = icmp eq i32 %params.sroa.10.4.ph, 0
  %spec.select = select i1 %tobool.not.i91, i32 1, i32 %params.sroa.10.4.ph
  %div.i92 = udiv i32 %parent_rate, %spec.select
  %mul.i93 = shl i32 %div.i92, 1
  %mul3.i = mul i32 %mul.i93, %params.sroa.3.4.ph
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_rate_stm_pll4600c28.__UNIQUE_ID_ddebug185, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_rate_stm_pll4600c28, %if.then26)) #7
          to label %do.end31 [label %if.then26], !srcloc !126

do.body:                                          ; preds = %for.end35.i.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @set_rate_stm_pll4600c28.__UNIQUE_ID_ddebug184, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@set_rate_stm_pll4600c28, %if.then10)) #7
          to label %cleanup [label %if.then10], !srcloc !126

if.then10:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %clk = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %clk, align 4
  %call11 = tail call ptr @__clk_get_name(ptr noundef %7) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_rate_stm_pll4600c28.__UNIQUE_ID_ddebug184, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.25, ptr noundef %call11, i32 noundef %rate) #7
  br label %cleanup

if.then26:                                        ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %clk27 = getelementptr inbounds %struct.clk_hw, ptr %hw, i32 0, i32 1
  %8 = ptrtoint ptr %clk27 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk27, align 4
  %call28 = tail call ptr @__clk_get_name(ptr noundef %9) #7
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @set_rate_stm_pll4600c28.__UNIQUE_ID_ddebug185, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.25, ptr noundef %call28, i32 noundef %mul3.i, i32 noundef %params.sroa.3.4.ph, i32 noundef %spec.select) #7
  br label %do.end31

do.end31:                                         ; preds = %if.then26, %if.then3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul3.i)
  %tobool32.not = icmp eq i32 %mul3.i, 0
  br i1 %tobool32.not, label %do.end31.cleanup_crit_edge, label %if.end34

do.end31.cleanup_crit_edge:                       ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end34:                                         ; preds = %do.end31
  %ndiv36 = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 4
  %10 = ptrtoint ptr %ndiv36 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %params.sroa.3.4.ph, ptr %ndiv36, align 4
  %idf38 = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 5
  %11 = ptrtoint ptr %idf38 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %spec.select, ptr %idf38, align 4
  tail call fastcc void @__clkgen_pll_disable(ptr noundef %hw)
  %lock = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 3
  %12 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lock, align 4
  %tobool39.not = icmp eq ptr %13, null
  br i1 %tobool39.not, label %if.end34.if.end51_crit_edge, label %do.body42

if.end34.if.end51_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end51

do.body42:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %call46 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull %13) #7
  br label %if.end51

if.end51:                                         ; preds = %do.body42, %if.end34.if.end51_crit_edge
  %flags.0 = phi i32 [ %call46, %do.body42 ], [ 0, %if.end34.if.end51_crit_edge ]
  %regs_base = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 2
  %14 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs_base, align 4
  %data = getelementptr inbounds %struct.clkgen_pll, ptr %hw, i32 0, i32 1
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %ndiv52 = getelementptr inbounds %struct.clkgen_pll_data, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %ndiv36 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ndiv36, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %20 = ptrtoint ptr %ndiv52 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ndiv52, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %21
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !128
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %mask.i = getelementptr inbounds %struct.clkgen_pll_data, ptr %17, i32 0, i32 4, i32 1
  %24 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mask.i, align 4
  %shift.i = getelementptr inbounds %struct.clkgen_pll_data, ptr %17, i32 0, i32 4, i32 2
  %26 = ptrtoint ptr %shift.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %shift.i, align 4
  %shl.i = shl i32 %25, %27
  %neg.i = xor i32 %shl.i, -1
  %and.i = and i32 %23, %neg.i
  %shl3.i = shl i32 %19, %27
  %or.i = or i32 %and.i, %shl3.i
  %28 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %29 = ptrtoint ptr %ndiv52 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %ndiv52, align 4
  %add.ptr5.i = getelementptr i8, ptr %15, i32 %30
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %28) #7, !srcloc !132
  %31 = ptrtoint ptr %regs_base to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %regs_base, align 4
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %idf56 = getelementptr inbounds %struct.clkgen_pll_data, ptr %34, i32 0, i32 6
  %35 = ptrtoint ptr %idf38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %idf38, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  %37 = ptrtoint ptr %idf56 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %idf56, align 4
  %add.ptr.i95 = getelementptr i8, ptr %32, i32 %38
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #7, !srcloc !128
  %40 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !131
  %mask.i96 = getelementptr inbounds %struct.clkgen_pll_data, ptr %34, i32 0, i32 6, i32 1
  %41 = ptrtoint ptr %mask.i96 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mask.i96, align 4
  %shift.i97 = getelementptr inbounds %struct.clkgen_pll_data, ptr %34, i32 0, i32 6, i32 2
  %43 = ptrtoint ptr %shift.i97 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %shift.i97, align 4
  %shl.i98 = shl i32 %42, %44
  %neg.i99 = xor i32 %shl.i98, -1
  %and.i100 = and i32 %40, %neg.i99
  %shl3.i101 = shl i32 %36, %44
  %or.i102 = or i32 %and.i100, %shl3.i101
  %45 = tail call i32 @llvm.bswap.i32(i32 %or.i102) #7
  %46 = ptrtoint ptr %idf56 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %idf56, align 4
  %add.ptr5.i103 = getelementptr i8, ptr %32, i32 %47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i103, i32 %45) #7, !srcloc !132
  %48 = ptrtoint ptr %lock to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %lock, align 4
  %tobool59.not = icmp eq ptr %49, null
  br i1 %tobool59.not, label %if.end51.if.end62_crit_edge, label %if.then60

if.end51.if.end62_crit_edge:                      ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end62

if.then60:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull %49, i32 noundef %flags.0) #7
  br label %if.end62

if.end62:                                         ; preds = %if.then60, %if.end51.if.end62_crit_edge
  %call63 = tail call fastcc i32 @__clkgen_pll_enable(ptr noundef %hw)
  br label %cleanup

cleanup:                                          ; preds = %if.end62, %do.end31.cleanup_crit_edge, %if.then10, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end62 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.then10 ], [ -22, %do.end31.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !17, !19, !21, !22, !23, !24, !25, !27, !28, !30, !31, !33, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !80, !81, !83, !84, !86, !88, !89, !90, !92, !94, !96, !98, !100, !102, !103, !105, !106, !108, !110, !111, !113}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/clk/st/clkgen-pll.c", i32 21, i32 1}
!2 = !{ptr @clkgen_a9_lock, !1, !"clkgen_a9_lock", i1 false, i1 false}
!3 = !{ptr @__of_table_c32_pll0, !4, !"__of_table_c32_pll0", i1 false, i1 false}
!4 = !{!"../drivers/clk/st/clkgen-pll.c", i32 830, i32 1}
!5 = !{ptr @__of_table_c32_pll0_a0, !6, !"__of_table_c32_pll0_a0", i1 false, i1 false}
!6 = !{!"../drivers/clk/st/clkgen-pll.c", i32 837, i32 1}
!7 = !{ptr @__of_table_c32_pll0_c0, !8, !"__of_table_c32_pll0_c0", i1 false, i1 false}
!8 = !{!"../drivers/clk/st/clkgen-pll.c", i32 844, i32 1}
!9 = !{ptr @__of_table_c32_pll1, !10, !"__of_table_c32_pll1", i1 false, i1 false}
!10 = !{!"../drivers/clk/st/clkgen-pll.c", i32 851, i32 1}
!11 = !{ptr @__of_table_c32_pll1_c0, !12, !"__of_table_c32_pll1_c0", i1 false, i1 false}
!12 = !{!"../drivers/clk/st/clkgen-pll.c", i32 858, i32 1}
!13 = !{ptr @__of_table_c32_plla9, !14, !"__of_table_c32_plla9", i1 false, i1 false}
!14 = !{!"../drivers/clk/st/clkgen-pll.c", i32 865, i32 1}
!15 = !{ptr @__of_table_c28_plla9, !16, !"__of_table_c28_plla9", i1 false, i1 false}
!16 = !{!"../drivers/clk/st/clkgen-pll.c", i32 872, i32 1}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/st/clkgen-pll.c", i32 801, i32 10}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/st/clkgen-pll.c", i32 675, i32 2}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @clkgen_pll_register.__UNIQUE_ID_ddebug186, !20, !"__UNIQUE_ID_ddebug186", i1 false, i1 false}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/st/clkgen-pll.c", i32 742, i32 2}
!27 = !{ptr @clkgen_odf_register.__UNIQUE_ID_ddebug187, !26, !"__UNIQUE_ID_ddebug187", i1 false, i1 false}
!28 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/st/clkgen-pll.c", i32 20, i32 8}
!30 = !{ptr @clkgena_c32_odf_lock, !29, !"clkgena_c32_odf_lock", i1 false, i1 false}
!31 = !{ptr @st_pll3200c32_cx_0_legacy_data, !32, !"st_pll3200c32_cx_0_legacy_data", i1 false, i1 false}
!32 = !{!"../drivers/clk/st/clkgen-pll.c", i32 88, i32 42}
!33 = !{ptr @st_pll3200c32_cx_0, !34, !"st_pll3200c32_cx_0", i1 false, i1 false}
!34 = !{!"../drivers/clk/st/clkgen-pll.c", i32 75, i32 37}
!35 = !{ptr @stm_pll3200c32_ops, !36, !"stm_pll3200c32_ops", i1 false, i1 false}
!36 = !{!"../drivers/clk/st/clkgen-pll.c", i32 619, i32 29}
!37 = !{ptr @.str.8, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/st/clkgen-pll.c", i32 263, i32 3}
!39 = !{ptr @.str.9, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @__clkgen_pll_enable.__UNIQUE_ID_ddebug175, !38, !"__UNIQUE_ID_ddebug175", i1 false, i1 false}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/st/clkgen-pll.c", i32 298, i32 2}
!43 = !{ptr @.str.11, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @__clkgen_pll_disable.__UNIQUE_ID_ddebug176, !42, !"__UNIQUE_ID_ddebug176", i1 false, i1 false}
!45 = !{ptr @.str.12, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/clk/st/clkgen-pll.c", i32 393, i32 2}
!47 = !{ptr @.str.13, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @recalc_stm_pll3200c32.__UNIQUE_ID_ddebug177, !46, !"__UNIQUE_ID_ddebug177", i1 false, i1 false}
!49 = !{ptr @st_pll3200c32_a0_data, !50, !"st_pll3200c32_a0_data", i1 false, i1 false}
!50 = !{!"../drivers/clk/st/clkgen-pll.c", i32 96, i32 42}
!51 = !{ptr @.str.14, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/clk/st/clkgen-pll.c", i32 93, i32 12}
!53 = !{ptr @st_pll3200c32_ax_0_clks, !54, !"st_pll3200c32_ax_0_clks", i1 false, i1 false}
!54 = !{!"../drivers/clk/st/clkgen-pll.c", i32 92, i32 36}
!55 = !{ptr @st_pll3200c32_c0_data, !56, !"st_pll3200c32_c0_data", i1 false, i1 false}
!56 = !{!"../drivers/clk/st/clkgen-pll.c", i32 105, i32 42}
!57 = !{ptr @.str.15, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/st/clkgen-pll.c", i32 102, i32 12}
!59 = !{ptr @st_pll3200c32_cx_0_clks, !60, !"st_pll3200c32_cx_0_clks", i1 false, i1 false}
!60 = !{!"../drivers/clk/st/clkgen-pll.c", i32 101, i32 36}
!61 = !{ptr @st_pll3200c32_cx_1_legacy_data, !62, !"st_pll3200c32_cx_1_legacy_data", i1 false, i1 false}
!62 = !{!"../drivers/clk/st/clkgen-pll.c", i32 123, i32 42}
!63 = !{ptr @st_pll3200c32_cx_1, !64, !"st_pll3200c32_cx_1", i1 false, i1 false}
!64 = !{!"../drivers/clk/st/clkgen-pll.c", i32 110, i32 37}
!65 = !{ptr @st_pll3200c32_c1_data, !66, !"st_pll3200c32_c1_data", i1 false, i1 false}
!66 = !{!"../drivers/clk/st/clkgen-pll.c", i32 131, i32 42}
!67 = !{ptr @.str.16, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/clk/st/clkgen-pll.c", i32 128, i32 12}
!69 = !{ptr @st_pll3200c32_cx_1_clks, !70, !"st_pll3200c32_cx_1_clks", i1 false, i1 false}
!70 = !{!"../drivers/clk/st/clkgen-pll.c", i32 127, i32 36}
!71 = !{ptr @st_pll3200c32_407_a9_data, !72, !"st_pll3200c32_407_a9_data", i1 false, i1 false}
!72 = !{!"../drivers/clk/st/clkgen-pll.c", i32 157, i32 42}
!73 = !{ptr @st_pll3200c32_407_a9, !74, !"st_pll3200c32_407_a9", i1 false, i1 false}
!74 = !{!"../drivers/clk/st/clkgen-pll.c", i32 136, i32 37}
!75 = !{ptr @stm_pll3200c32_a9_ops, !76, !"stm_pll3200c32_a9_ops", i1 false, i1 false}
!76 = !{!"../drivers/clk/st/clkgen-pll.c", i32 626, i32 29}
!77 = !{ptr @.str.17, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/clk/st/clkgen-pll.c", i32 406, i32 3}
!79 = !{ptr @.str.18, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @round_rate_stm_pll3200c32.__UNIQUE_ID_ddebug178, !78, !"__UNIQUE_ID_ddebug178", i1 false, i1 false}
!81 = !{ptr @.str.19, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/clk/st/clkgen-pll.c", i32 411, i32 2}
!83 = !{ptr @round_rate_stm_pll3200c32.__UNIQUE_ID_ddebug179, !82, !"__UNIQUE_ID_ddebug179", i1 false, i1 false}
!84 = !{ptr @clk_pll3200c32_get_params.cp_table, !85, !"cp_table", i1 false, i1 false}
!85 = !{!"../drivers/clk/st/clkgen-pll.c", i32 323, i32 29}
!86 = !{ptr @.str.20, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/clk/st/clkgen-pll.c", i32 433, i32 2}
!88 = !{ptr @.str.21, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @set_rate_stm_pll3200c32.__UNIQUE_ID_ddebug180, !87, !"__UNIQUE_ID_ddebug180", i1 false, i1 false}
!90 = !{ptr @.str.22, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/clk/st/clkgen-pll.c", i32 154, i32 12}
!92 = !{ptr @st_pll3200c32_407_a9_clks, !93, !"st_pll3200c32_407_a9_clks", i1 false, i1 false}
!93 = !{!"../drivers/clk/st/clkgen-pll.c", i32 153, i32 36}
!94 = !{ptr @st_pll4600c28_418_a9_data, !95, !"st_pll4600c28_418_a9_data", i1 false, i1 false}
!95 = !{!"../drivers/clk/st/clkgen-pll.c", i32 182, i32 42}
!96 = !{ptr @st_pll4600c28_418_a9, !97, !"st_pll4600c28_418_a9", i1 false, i1 false}
!97 = !{!"../drivers/clk/st/clkgen-pll.c", i32 162, i32 31}
!98 = !{ptr @stm_pll4600c28_ops, !99, !"stm_pll4600c28_ops", i1 false, i1 false}
!99 = !{!"../drivers/clk/st/clkgen-pll.c", i32 635, i32 29}
!100 = !{ptr @.str.23, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/clk/st/clkgen-pll.c", i32 547, i32 2}
!102 = !{ptr @recalc_stm_pll4600c28.__UNIQUE_ID_ddebug181, !101, !"__UNIQUE_ID_ddebug181", i1 false, i1 false}
!103 = !{ptr @.str.24, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/clk/st/clkgen-pll.c", i32 560, i32 3}
!105 = !{ptr @round_rate_stm_pll4600c28.__UNIQUE_ID_ddebug182, !104, !"__UNIQUE_ID_ddebug182", i1 false, i1 false}
!106 = !{ptr @round_rate_stm_pll4600c28.__UNIQUE_ID_ddebug183, !107, !"__UNIQUE_ID_ddebug183", i1 false, i1 false}
!107 = !{!"../drivers/clk/st/clkgen-pll.c", i32 565, i32 2}
!108 = !{ptr @.str.25, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/clk/st/clkgen-pll.c", i32 587, i32 3}
!110 = !{ptr @set_rate_stm_pll4600c28.__UNIQUE_ID_ddebug184, !109, !"__UNIQUE_ID_ddebug184", i1 false, i1 false}
!111 = !{ptr @set_rate_stm_pll4600c28.__UNIQUE_ID_ddebug185, !112, !"__UNIQUE_ID_ddebug185", i1 false, i1 false}
!112 = !{!"../drivers/clk/st/clkgen-pll.c", i32 592, i32 2}
!113 = !{ptr @st_pll4600c28_418_a9_clks, !114, !"st_pll4600c28_418_a9_clks", i1 false, i1 false}
!114 = !{!"../drivers/clk/st/clkgen-pll.c", i32 178, i32 36}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"branch_weights", i32 1, i32 2000}
!125 = !{!"auto-init"}
!126 = !{i64 2148220926, i64 2148220931, i64 2148220944, i64 2148220988, i64 2148221022, i64 2148221043}
!127 = !{i32 0, i32 33}
!128 = !{i64 4930610}
!129 = !{i64 2152590200}
!130 = !{i64 2152591399}
!131 = !{i64 2152592444}
!132 = !{i64 4930192}
!133 = !{i8 0, i8 2}
