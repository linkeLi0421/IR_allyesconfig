; ModuleID = '/llk/IR_all_yes/drivers/clk/bcm/clk-cygnus.c_pt.bc'
source_filename = "../drivers/clk/bcm/clk-cygnus.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.iproc_pll_ctrl = type { i32, %struct.iproc_pll_aon_pwr_ctrl, %struct.iproc_asiu_gate, %struct.iproc_pll_reset_ctrl, %struct.iproc_pll_dig_filter_ctrl, %struct.iproc_pll_sw_ctrl, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op, %struct.iproc_pll_vco_ctrl, %struct.iproc_clk_reg_op, %struct.iproc_clk_reg_op }
%struct.iproc_pll_aon_pwr_ctrl = type { i32, i32, i32, i32 }
%struct.iproc_asiu_gate = type { i32, i32 }
%struct.iproc_pll_reset_ctrl = type { i32, i32, i32 }
%struct.iproc_pll_dig_filter_ctrl = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.iproc_pll_sw_ctrl = type { i32, i32 }
%struct.iproc_pll_vco_ctrl = type { i32, i32 }
%struct.iproc_clk_reg_op = type { i32, i32, i32 }
%struct.iproc_clk_ctrl = type { i32, i32, %struct.iproc_clk_enable_ctrl, %struct.iproc_clk_reg_op }
%struct.iproc_clk_enable_ctrl = type { i32, i32, i32, i32 }
%struct.iproc_pll_vco_param = type { i32, i32, i32, i32 }
%struct.iproc_asiu_div = type { i32, i32, i32, i32, i32, i32 }

@__of_table_cygnus_armpll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-armpll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cygnus_armpll_init }, section "__clk_of_table", align 4
@__of_table_cygnus_genpll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-genpll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cygnus_genpll_clk_init }, section "__clk_of_table", align 4
@__of_table_cygnus_lcpll0 = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-lcpll0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cygnus_lcpll0_clk_init }, section "__clk_of_table", align 4
@__of_table_cygnus_mipipll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-mipipll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cygnus_mipipll_clk_init }, section "__clk_of_table", align 4
@__of_table_cygnus_asiu_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-asiu-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cygnus_asiu_init }, section "__clk_of_table", align 4
@__of_table_cygnus_audiopll = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,cygnus-audiopll\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @cygnus_audiopll_clk_init }, section "__clk_of_table", align 4
@genpll = internal constant { %struct.iproc_pll_ctrl, [48 x i8] } { %struct.iproc_pll_ctrl { i32 21, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 2, i32 1, i32 0 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 11, i32 10 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 4, i32 3, i32 0, i32 4, i32 7, i32 3 }, %struct.iproc_pll_sw_ctrl { i32 16, i32 31 }, %struct.iproc_clk_reg_op { i32 16, i32 20, i32 10 }, %struct.iproc_clk_reg_op { i32 16, i32 0, i32 20 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 4 }, %struct.iproc_pll_vco_ctrl { i32 24, i32 28 }, %struct.iproc_clk_reg_op { i32 40, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@genpll_clk = internal constant { [7 x %struct.iproc_clk_ctrl], [36 x i8] } { [7 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 6, i32 0, i32 12 }, %struct.iproc_clk_reg_op { i32 32, i32 0, i32 8 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 7, i32 1, i32 13 }, %struct.iproc_clk_reg_op { i32 32, i32 10, i32 8 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 8, i32 2, i32 14 }, %struct.iproc_clk_reg_op { i32 32, i32 20, i32 8 } }, %struct.iproc_clk_ctrl { i32 4, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 9, i32 3, i32 15 }, %struct.iproc_clk_reg_op { i32 36, i32 0, i32 8 } }, %struct.iproc_clk_ctrl { i32 5, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 10, i32 4, i32 16 }, %struct.iproc_clk_reg_op { i32 36, i32 10, i32 8 } }, %struct.iproc_clk_ctrl { i32 6, i32 1, %struct.iproc_clk_enable_ctrl { i32 4, i32 11, i32 5, i32 17 }, %struct.iproc_clk_reg_op { i32 36, i32 20, i32 8 } }], [36 x i8] zeroinitializer }, align 32
@lcpll0 = internal constant { %struct.iproc_pll_ctrl, [48 x i8] } { %struct.iproc_pll_ctrl { i32 17, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 2, i32 5, i32 4 }, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 0, i32 31, i32 30 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 27, i32 3, i32 23, i32 4, i32 19, i32 4 }, %struct.iproc_pll_sw_ctrl { i32 4, i32 31 }, %struct.iproc_clk_reg_op { i32 4, i32 16, i32 10 }, %struct.iproc_clk_reg_op zeroinitializer, %struct.iproc_clk_reg_op { i32 4, i32 26, i32 4 }, %struct.iproc_pll_vco_ctrl { i32 16, i32 20 }, %struct.iproc_clk_reg_op { i32 24, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@lcpll0_clk = internal constant { [7 x %struct.iproc_clk_ctrl], [36 x i8] } { [7 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 7, i32 1, i32 13 }, %struct.iproc_clk_reg_op { i32 8, i32 0, i32 8 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 8, i32 2, i32 14 }, %struct.iproc_clk_reg_op { i32 8, i32 10, i32 8 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 9, i32 3, i32 15 }, %struct.iproc_clk_reg_op { i32 8, i32 20, i32 8 } }, %struct.iproc_clk_ctrl { i32 4, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 10, i32 4, i32 16 }, %struct.iproc_clk_reg_op { i32 12, i32 0, i32 8 } }, %struct.iproc_clk_ctrl { i32 5, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 11, i32 5, i32 17 }, %struct.iproc_clk_reg_op { i32 12, i32 10, i32 8 } }, %struct.iproc_clk_ctrl { i32 6, i32 1, %struct.iproc_clk_enable_ctrl { i32 0, i32 12, i32 6, i32 18 }, %struct.iproc_clk_reg_op { i32 12, i32 20, i32 8 } }], [36 x i8] zeroinitializer }, align 32
@mipipll = internal constant { %struct.iproc_pll_ctrl, [48 x i8] } { %struct.iproc_pll_ctrl { i32 14, %struct.iproc_pll_aon_pwr_ctrl { i32 0, i32 4, i32 17, i32 16 }, %struct.iproc_asiu_gate { i32 0, i32 3 }, %struct.iproc_pll_reset_ctrl { i32 0, i32 11, i32 10 }, %struct.iproc_pll_dig_filter_ctrl { i32 0, i32 4, i32 3, i32 0, i32 4, i32 7, i32 4 }, %struct.iproc_pll_sw_ctrl zeroinitializer, %struct.iproc_clk_reg_op { i32 16, i32 20, i32 10 }, %struct.iproc_clk_reg_op { i32 16, i32 0, i32 20 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 4 }, %struct.iproc_pll_vco_ctrl { i32 24, i32 28 }, %struct.iproc_clk_reg_op { i32 40, i32 12, i32 1 }, %struct.iproc_clk_reg_op zeroinitializer }, [48 x i8] zeroinitializer }, align 32
@mipipll_vco_params = internal constant { [11 x %struct.iproc_pll_vco_param], [48 x i8] } { [11 x %struct.iproc_pll_vco_param] [%struct.iproc_pll_vco_param { i32 750000000, i32 30, i32 0, i32 1 }, %struct.iproc_pll_vco_param { i32 1000000000, i32 40, i32 0, i32 1 }, %struct.iproc_pll_vco_param { i32 1350000000, i32 54, i32 0, i32 1 }, %struct.iproc_pll_vco_param { i32 2000000000, i32 80, i32 0, i32 1 }, %struct.iproc_pll_vco_param { i32 2100000000, i32 84, i32 0, i32 1 }, %struct.iproc_pll_vco_param { i32 -2044967296, i32 90, i32 0, i32 1 }, %struct.iproc_pll_vco_param { i32 -1794967296, i32 100, i32 0, i32 1 }, %struct.iproc_pll_vco_param { i32 -1594967296, i32 54, i32 0, i32 0 }, %struct.iproc_pll_vco_param { i32 -1319967296, i32 119, i32 0, i32 1 }, %struct.iproc_pll_vco_param { i32 -1194967296, i32 124, i32 0, i32 1 }, %struct.iproc_pll_vco_param { i32 -1144967296, i32 126, i32 0, i32 1 }], [48 x i8] zeroinitializer }, align 32
@mipipll_clk = internal constant { [7 x %struct.iproc_clk_ctrl], [36 x i8] } { [7 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 8, %struct.iproc_clk_enable_ctrl { i32 4, i32 12, i32 6, i32 18 }, %struct.iproc_clk_reg_op { i32 32, i32 0, i32 8 } }, %struct.iproc_clk_ctrl { i32 2, i32 8, %struct.iproc_clk_enable_ctrl { i32 4, i32 13, i32 7, i32 19 }, %struct.iproc_clk_reg_op { i32 32, i32 10, i32 8 } }, %struct.iproc_clk_ctrl { i32 3, i32 8, %struct.iproc_clk_enable_ctrl { i32 4, i32 14, i32 8, i32 20 }, %struct.iproc_clk_reg_op { i32 32, i32 20, i32 8 } }, %struct.iproc_clk_ctrl { i32 4, i32 8, %struct.iproc_clk_enable_ctrl { i32 4, i32 15, i32 9, i32 21 }, %struct.iproc_clk_reg_op { i32 36, i32 0, i32 8 } }, %struct.iproc_clk_ctrl { i32 5, i32 8, %struct.iproc_clk_enable_ctrl { i32 4, i32 16, i32 10, i32 22 }, %struct.iproc_clk_reg_op { i32 36, i32 10, i32 8 } }, %struct.iproc_clk_ctrl { i32 6, i32 8, %struct.iproc_clk_enable_ctrl { i32 4, i32 17, i32 11, i32 23 }, %struct.iproc_clk_reg_op { i32 36, i32 20, i32 8 } }], [36 x i8] zeroinitializer }, align 32
@asiu_div = internal constant { [3 x %struct.iproc_asiu_div], [56 x i8] } { [3 x %struct.iproc_asiu_div] [%struct.iproc_asiu_div { i32 0, i32 31, i32 16, i32 10, i32 0, i32 10 }, %struct.iproc_asiu_div { i32 4, i32 31, i32 16, i32 10, i32 0, i32 10 }, %struct.iproc_asiu_div { i32 8, i32 31, i32 16, i32 10, i32 0, i32 10 }], [56 x i8] zeroinitializer }, align 32
@asiu_gate = internal constant { [3 x %struct.iproc_asiu_gate], [40 x i8] } { [3 x %struct.iproc_asiu_gate] [%struct.iproc_asiu_gate { i32 0, i32 7 }, %struct.iproc_asiu_gate { i32 0, i32 9 }, %struct.iproc_asiu_gate { i32 -1, i32 0 }], [40 x i8] zeroinitializer }, align 32
@audiopll = internal constant { %struct.iproc_pll_ctrl, [48 x i8] } { %struct.iproc_pll_ctrl { i32 1812, %struct.iproc_pll_aon_pwr_ctrl zeroinitializer, %struct.iproc_asiu_gate zeroinitializer, %struct.iproc_pll_reset_ctrl { i32 92, i32 0, i32 1 }, %struct.iproc_pll_dig_filter_ctrl { i32 72, i32 0, i32 3, i32 6, i32 4, i32 3, i32 3 }, %struct.iproc_pll_sw_ctrl { i32 4, i32 0 }, %struct.iproc_clk_reg_op { i32 8, i32 0, i32 10 }, %struct.iproc_clk_reg_op { i32 8, i32 10, i32 20 }, %struct.iproc_clk_reg_op { i32 68, i32 0, i32 4 }, %struct.iproc_pll_vco_ctrl { i32 12, i32 16 }, %struct.iproc_clk_reg_op { i32 84, i32 0, i32 1 }, %struct.iproc_clk_reg_op { i32 0, i32 0, i32 3 } }, [48 x i8] zeroinitializer }, align 32
@audiopll_clk = internal constant { [4 x %struct.iproc_clk_ctrl], [48 x i8] } { [4 x %struct.iproc_clk_ctrl] [%struct.iproc_clk_ctrl zeroinitializer, %struct.iproc_clk_ctrl { i32 1, i32 129, %struct.iproc_clk_enable_ctrl { i32 20, i32 8, i32 10, i32 9 }, %struct.iproc_clk_reg_op { i32 20, i32 0, i32 8 } }, %struct.iproc_clk_ctrl { i32 2, i32 1, %struct.iproc_clk_enable_ctrl { i32 24, i32 8, i32 10, i32 9 }, %struct.iproc_clk_reg_op { i32 24, i32 0, i32 8 } }, %struct.iproc_clk_ctrl { i32 3, i32 1, %struct.iproc_clk_enable_ctrl { i32 28, i32 8, i32 10, i32 9 }, %struct.iproc_clk_reg_op { i32 28, i32 0, i32 8 } }], [48 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [7 x i8] c"genpll\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 57, i32 36 }
@___asan_gen_.4 = private unnamed_addr constant [11 x i8] c"genpll_clk\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 71, i32 36 }
@___asan_gen_.7 = private unnamed_addr constant [7 x i8] c"lcpll0\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 117, i32 36 }
@___asan_gen_.10 = private unnamed_addr constant [11 x i8] c"lcpll0_clk\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 129, i32 36 }
@___asan_gen_.13 = private unnamed_addr constant [8 x i8] c"mipipll\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 193, i32 36 }
@___asan_gen_.16 = private unnamed_addr constant [19 x i8] c"mipipll_vco_params\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 178, i32 41 }
@___asan_gen_.19 = private unnamed_addr constant [12 x i8] c"mipipll_clk\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 207, i32 36 }
@___asan_gen_.22 = private unnamed_addr constant [9 x i8] c"asiu_div\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 254, i32 36 }
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"asiu_gate\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 260, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant [9 x i8] c"audiopll\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 272, i32 36 }
@___asan_gen_.31 = private unnamed_addr constant [13 x i8] c"audiopll_clk\00", align 1
@___asan_gen_.32 = private constant [32 x i8] c"../drivers/clk/bcm/clk-cygnus.c\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.32, i32 287, i32 36 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__of_table_cygnus_armpll, ptr @__of_table_cygnus_asiu_clk, ptr @__of_table_cygnus_audiopll, ptr @__of_table_cygnus_genpll, ptr @__of_table_cygnus_lcpll0, ptr @__of_table_cygnus_mipipll, ptr @genpll, ptr @genpll_clk, ptr @lcpll0, ptr @lcpll0_clk, ptr @mipipll, ptr @mipipll_vco_params, ptr @mipipll_clk, ptr @asiu_div, ptr @asiu_gate, ptr @audiopll, ptr @audiopll_clk], section "llvm.metadata"
@0 = internal global [11 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genpll to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @genpll_clk to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcpll0 to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lcpll0_clk to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipipll to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipipll_vco_params to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mipipll_clk to i32), i32 252, i32 288, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asiu_div to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @asiu_gate to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audiopll to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @audiopll_clk to i32), i32 144, i32 192, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cygnus_armpll_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iproc_armpll_setup(ptr noundef %node) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cygnus_genpll_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iproc_pll_clk_setup(ptr noundef %node, ptr noundef nonnull @genpll, ptr noundef null, i32 noundef 0, ptr noundef nonnull @genpll_clk, i32 noundef 7) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cygnus_lcpll0_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iproc_pll_clk_setup(ptr noundef %node, ptr noundef nonnull @lcpll0, ptr noundef null, i32 noundef 0, ptr noundef nonnull @lcpll0_clk, i32 noundef 7) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cygnus_mipipll_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iproc_pll_clk_setup(ptr noundef %node, ptr noundef nonnull @mipipll, ptr noundef nonnull @mipipll_vco_params, i32 noundef 11, ptr noundef nonnull @mipipll_clk, i32 noundef 7) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cygnus_asiu_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iproc_asiu_setup(ptr noundef %node, ptr noundef nonnull @asiu_div, ptr noundef nonnull @asiu_gate, i32 noundef 3) #2
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cygnus_audiopll_clk_init(ptr noundef %node) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @iproc_pll_clk_setup(ptr noundef %node, ptr noundef nonnull @audiopll, ptr noundef null, i32 noundef 0, ptr noundef nonnull @audiopll_clk, i32 noundef 4) #2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @iproc_armpll_setup(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iproc_pll_clk_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iproc_asiu_setup(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 11)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @__of_table_cygnus_armpll, !1, !"__of_table_cygnus_armpll", i1 false, i1 false}
!1 = !{!"../drivers/clk/bcm/clk-cygnus.c", i32 55, i32 1}
!2 = !{ptr @__of_table_cygnus_genpll, !3, !"__of_table_cygnus_genpll", i1 false, i1 false}
!3 = !{!"../drivers/clk/bcm/clk-cygnus.c", i32 115, i32 1}
!4 = !{ptr @__of_table_cygnus_lcpll0, !5, !"__of_table_cygnus_lcpll0", i1 false, i1 false}
!5 = !{!"../drivers/clk/bcm/clk-cygnus.c", i32 173, i32 1}
!6 = !{ptr @__of_table_cygnus_mipipll, !7, !"__of_table_cygnus_mipipll", i1 false, i1 false}
!7 = !{!"../drivers/clk/bcm/clk-cygnus.c", i32 252, i32 1}
!8 = !{ptr @__of_table_cygnus_asiu_clk, !9, !"__of_table_cygnus_asiu_clk", i1 false, i1 false}
!9 = !{!"../drivers/clk/bcm/clk-cygnus.c", i32 270, i32 1}
!10 = !{ptr @__of_table_cygnus_audiopll, !11, !"__of_table_cygnus_audiopll", i1 false, i1 false}
!11 = !{!"../drivers/clk/bcm/clk-cygnus.c", i32 313, i32 1}
!12 = !{ptr @genpll, !13, !"genpll", i1 false, i1 false}
!13 = !{!"../drivers/clk/bcm/clk-cygnus.c", i32 57, i32 36}
!14 = !{ptr @genpll_clk, !15, !"genpll_clk", i1 false, i1 false}
!15 = !{!"../drivers/clk/bcm/clk-cygnus.c", i32 71, i32 36}
!16 = !{ptr @lcpll0, !17, !"lcpll0", i1 false, i1 false}
!17 = !{!"../drivers/clk/bcm/clk-cygnus.c", i32 117, i32 36}
!18 = !{ptr @lcpll0_clk, !19, !"lcpll0_clk", i1 false, i1 false}
!19 = !{!"../drivers/clk/bcm/clk-cygnus.c", i32 129, i32 36}
!20 = !{ptr @mipipll, !21, !"mipipll", i1 false, i1 false}
!21 = !{!"../drivers/clk/bcm/clk-cygnus.c", i32 193, i32 36}
!22 = !{ptr @mipipll_vco_params, !23, !"mipipll_vco_params", i1 false, i1 false}
!23 = !{!"../drivers/clk/bcm/clk-cygnus.c", i32 178, i32 41}
!24 = !{ptr @mipipll_clk, !25, !"mipipll_clk", i1 false, i1 false}
!25 = !{!"../drivers/clk/bcm/clk-cygnus.c", i32 207, i32 36}
!26 = !{ptr @asiu_div, !27, !"asiu_div", i1 false, i1 false}
!27 = !{!"../drivers/clk/bcm/clk-cygnus.c", i32 254, i32 36}
!28 = !{ptr @asiu_gate, !29, !"asiu_gate", i1 false, i1 false}
!29 = !{!"../drivers/clk/bcm/clk-cygnus.c", i32 260, i32 37}
!30 = !{ptr @audiopll, !31, !"audiopll", i1 false, i1 false}
!31 = !{!"../drivers/clk/bcm/clk-cygnus.c", i32 272, i32 36}
!32 = !{ptr @audiopll_clk, !33, !"audiopll_clk", i1 false, i1 false}
!33 = !{!"../drivers/clk/bcm/clk-cygnus.c", i32 287, i32 36}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
