; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.mtk_clk_desc = type { ptr, i32 }
%struct.mtk_gate = type { i32, ptr, ptr, ptr, i32, ptr, i32 }
%struct.mtk_gate_regs = type { i32, i32, i32 }
%struct.clk_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_clk_mt8192_imp_iic_wrap__170_119_clk_mt8192_imp_iic_wrap_drv_init6 = internal global ptr @clk_mt8192_imp_iic_wrap_drv_init, section ".initcall6.init", align 4
@clk_mt8192_imp_iic_wrap_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_clk_simple_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_clk_mt8192_imp_iic_wrap, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"clk-mt8192-imp_iic_wrap\00", [40 x i8] zeroinitializer }, align 32
@of_match_clk_mt8192_imp_iic_wrap = internal constant { [7 x %struct.of_device_id], [324 x i8] } { [7 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-imp_iic_wrap_c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imp_iic_wrap_c_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-imp_iic_wrap_e\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imp_iic_wrap_e_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-imp_iic_wrap_n\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imp_iic_wrap_n_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-imp_iic_wrap_s\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imp_iic_wrap_s_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-imp_iic_wrap_w\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imp_iic_wrap_w_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-imp_iic_wrap_ws\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imp_iic_wrap_ws_desc }, %struct.of_device_id zeroinitializer], [324 x i8] zeroinitializer }, align 32
@imp_iic_wrap_c_desc = internal constant { %struct.mtk_clk_desc, [24 x i8] } { %struct.mtk_clk_desc { ptr @imp_iic_wrap_c_clks, i32 4 }, [24 x i8] zeroinitializer }, align 32
@imp_iic_wrap_e_desc = internal constant { %struct.mtk_clk_desc, [24 x i8] } { %struct.mtk_clk_desc { ptr @imp_iic_wrap_e_clks, i32 1 }, [24 x i8] zeroinitializer }, align 32
@imp_iic_wrap_n_desc = internal constant { %struct.mtk_clk_desc, [24 x i8] } { %struct.mtk_clk_desc { ptr @imp_iic_wrap_n_clks, i32 2 }, [24 x i8] zeroinitializer }, align 32
@imp_iic_wrap_s_desc = internal constant { %struct.mtk_clk_desc, [24 x i8] } { %struct.mtk_clk_desc { ptr @imp_iic_wrap_s_clks, i32 3 }, [24 x i8] zeroinitializer }, align 32
@imp_iic_wrap_w_desc = internal constant { %struct.mtk_clk_desc, [24 x i8] } { %struct.mtk_clk_desc { ptr @imp_iic_wrap_w_clks, i32 1 }, [24 x i8] zeroinitializer }, align 32
@imp_iic_wrap_ws_desc = internal constant { %struct.mtk_clk_desc, [24 x i8] } { %struct.mtk_clk_desc { ptr @imp_iic_wrap_ws_clks, i32 3 }, [24 x i8] zeroinitializer }, align 32
@imp_iic_wrap_c_clks = internal constant { [4 x %struct.mtk_gate], [48 x i8] } { [4 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.1, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 4096 }, %struct.mtk_gate { i32 1, ptr @.str.3, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 4096 }, %struct.mtk_gate { i32 2, ptr @.str.4, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 4096 }, %struct.mtk_gate { i32 3, ptr @.str.5, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 3, ptr @mtk_clk_gate_ops_setclr, i32 4096 }], [48 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imp_iic_wrap_c_i2c10\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"infra_i2c0\00", [21 x i8] zeroinitializer }, align 32
@imp_iic_wrap_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 3584, i32 3588, i32 3592 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_setclr = external dso_local constant %struct.clk_ops, align 4
@.str.3 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imp_iic_wrap_c_i2c11\00", [43 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imp_iic_wrap_c_i2c12\00", [43 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imp_iic_wrap_c_i2c13\00", [43 x i8] zeroinitializer }, align 32
@imp_iic_wrap_e_clks = internal constant { [1 x %struct.mtk_gate], [36 x i8] } { [1 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.6, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 4096 }], [36 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imp_iic_wrap_e_i2c3\00", [44 x i8] zeroinitializer }, align 32
@imp_iic_wrap_n_clks = internal constant { [2 x %struct.mtk_gate], [40 x i8] } { [2 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.7, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 4096 }, %struct.mtk_gate { i32 1, ptr @.str.8, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 4096 }], [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imp_iic_wrap_n_i2c0\00", [44 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imp_iic_wrap_n_i2c6\00", [44 x i8] zeroinitializer }, align 32
@imp_iic_wrap_s_clks = internal constant { [3 x %struct.mtk_gate], [44 x i8] } { [3 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.9, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 4096 }, %struct.mtk_gate { i32 1, ptr @.str.10, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 4096 }, %struct.mtk_gate { i32 2, ptr @.str.11, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 4096 }], [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imp_iic_wrap_s_i2c7\00", [44 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imp_iic_wrap_s_i2c8\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imp_iic_wrap_s_i2c9\00", [44 x i8] zeroinitializer }, align 32
@imp_iic_wrap_w_clks = internal constant { [1 x %struct.mtk_gate], [36 x i8] } { [1 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.12, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 4096 }], [36 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"imp_iic_wrap_w_i2c5\00", [44 x i8] zeroinitializer }, align 32
@imp_iic_wrap_ws_clks = internal constant { [3 x %struct.mtk_gate], [44 x i8] } { [3 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.13, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr, i32 4096 }, %struct.mtk_gate { i32 1, ptr @.str.14, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 1, ptr @mtk_clk_gate_ops_setclr, i32 4096 }, %struct.mtk_gate { i32 2, ptr @.str.15, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, i32 2, ptr @mtk_clk_gate_ops_setclr, i32 4096 }], [44 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imp_iic_wrap_ws_i2c1\00", [43 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imp_iic_wrap_ws_i2c2\00", [43 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imp_iic_wrap_ws_i2c4\00", [43 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [28 x i8] c"clk_mt8192_imp_iic_wrap_drv\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 111, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 114, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [33 x i8] c"of_match_clk_mt8192_imp_iic_wrap\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 87, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [20 x i8] c"imp_iic_wrap_c_desc\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 57, i32 34 }
@___asan_gen_.28 = private unnamed_addr constant [20 x i8] c"imp_iic_wrap_e_desc\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 62, i32 34 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"imp_iic_wrap_n_desc\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 67, i32 34 }
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"imp_iic_wrap_s_desc\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 72, i32 34 }
@___asan_gen_.37 = private unnamed_addr constant [20 x i8] c"imp_iic_wrap_w_desc\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 77, i32 34 }
@___asan_gen_.40 = private unnamed_addr constant [21 x i8] c"imp_iic_wrap_ws_desc\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 82, i32 34 }
@___asan_gen_.43 = private unnamed_addr constant [20 x i8] c"imp_iic_wrap_c_clks\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 25, i32 30 }
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 26, i32 2 }
@___asan_gen_.52 = private unnamed_addr constant [21 x i8] c"imp_iic_wrap_cg_regs\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 15, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 27, i32 2 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 28, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 29, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant [20 x i8] c"imp_iic_wrap_e_clks\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 32, i32 30 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 33, i32 2 }
@___asan_gen_.70 = private unnamed_addr constant [20 x i8] c"imp_iic_wrap_n_clks\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 36, i32 30 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 37, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 38, i32 2 }
@___asan_gen_.79 = private unnamed_addr constant [20 x i8] c"imp_iic_wrap_s_clks\00", align 1
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 41, i32 30 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 42, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 43, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 44, i32 2 }
@___asan_gen_.91 = private unnamed_addr constant [20 x i8] c"imp_iic_wrap_w_clks\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 47, i32 30 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 48, i32 2 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"imp_iic_wrap_ws_clks\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 51, i32 30 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 52, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 53, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.107 = private constant [50 x i8] c"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 54, i32 2 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @__initcall__kmod_clk_mt8192_imp_iic_wrap__170_119_clk_mt8192_imp_iic_wrap_drv_init6, ptr @clk_mt8192_imp_iic_wrap_drv, ptr @.str, ptr @of_match_clk_mt8192_imp_iic_wrap, ptr @imp_iic_wrap_c_desc, ptr @imp_iic_wrap_e_desc, ptr @imp_iic_wrap_n_desc, ptr @imp_iic_wrap_s_desc, ptr @imp_iic_wrap_w_desc, ptr @imp_iic_wrap_ws_desc, ptr @imp_iic_wrap_c_clks, ptr @.str.1, ptr @.str.2, ptr @imp_iic_wrap_cg_regs, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @imp_iic_wrap_e_clks, ptr @.str.6, ptr @imp_iic_wrap_n_clks, ptr @.str.7, ptr @.str.8, ptr @imp_iic_wrap_s_clks, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @imp_iic_wrap_w_clks, ptr @.str.12, ptr @imp_iic_wrap_ws_clks, ptr @.str.13, ptr @.str.14, ptr @.str.15], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt8192_imp_iic_wrap_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_match_clk_mt8192_imp_iic_wrap to i32), i32 1372, i32 1696, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_c_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_e_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_n_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_s_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_w_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_ws_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_c_clks to i32), i32 112, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_e_clks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_n_clks to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_s_clks to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_w_clks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imp_iic_wrap_ws_clks to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt8192_imp_iic_wrap_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt8192_imp_iic_wrap_drv, ptr noundef null) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_clk_simple_probe(ptr noundef) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61}
!llvm.module.flags = !{!63, !64, !65, !66, !67, !68, !69, !70}
!llvm.ident = !{!71}

!0 = !{ptr @__initcall__kmod_clk_mt8192_imp_iic_wrap__170_119_clk_mt8192_imp_iic_wrap_drv_init6, !1, !"__initcall__kmod_clk_mt8192_imp_iic_wrap__170_119_clk_mt8192_imp_iic_wrap_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 119, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 114, i32 11}
!4 = !{ptr @clk_mt8192_imp_iic_wrap_drv, !5, !"clk_mt8192_imp_iic_wrap_drv", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 111, i32 31}
!6 = !{ptr @of_match_clk_mt8192_imp_iic_wrap, !7, !"of_match_clk_mt8192_imp_iic_wrap", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 87, i32 34}
!8 = !{ptr @imp_iic_wrap_c_desc, !9, !"imp_iic_wrap_c_desc", i1 false, i1 false}
!9 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 57, i32 34}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 26, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 27, i32 2}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 28, i32 2}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 29, i32 2}
!19 = !{ptr @imp_iic_wrap_c_clks, !20, !"imp_iic_wrap_c_clks", i1 false, i1 false}
!20 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 25, i32 30}
!21 = !{ptr @imp_iic_wrap_cg_regs, !22, !"imp_iic_wrap_cg_regs", i1 false, i1 false}
!22 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 15, i32 35}
!23 = !{ptr @imp_iic_wrap_e_desc, !24, !"imp_iic_wrap_e_desc", i1 false, i1 false}
!24 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 62, i32 34}
!25 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 33, i32 2}
!27 = !{ptr @imp_iic_wrap_e_clks, !28, !"imp_iic_wrap_e_clks", i1 false, i1 false}
!28 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 32, i32 30}
!29 = !{ptr @imp_iic_wrap_n_desc, !30, !"imp_iic_wrap_n_desc", i1 false, i1 false}
!30 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 67, i32 34}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 37, i32 2}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 38, i32 2}
!35 = !{ptr @imp_iic_wrap_n_clks, !36, !"imp_iic_wrap_n_clks", i1 false, i1 false}
!36 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 36, i32 30}
!37 = !{ptr @imp_iic_wrap_s_desc, !38, !"imp_iic_wrap_s_desc", i1 false, i1 false}
!38 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 72, i32 34}
!39 = !{ptr @.str.9, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 42, i32 2}
!41 = !{ptr @.str.10, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 43, i32 2}
!43 = !{ptr @.str.11, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 44, i32 2}
!45 = !{ptr @imp_iic_wrap_s_clks, !46, !"imp_iic_wrap_s_clks", i1 false, i1 false}
!46 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 41, i32 30}
!47 = !{ptr @imp_iic_wrap_w_desc, !48, !"imp_iic_wrap_w_desc", i1 false, i1 false}
!48 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 77, i32 34}
!49 = !{ptr @.str.12, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 48, i32 2}
!51 = !{ptr @imp_iic_wrap_w_clks, !52, !"imp_iic_wrap_w_clks", i1 false, i1 false}
!52 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 47, i32 30}
!53 = !{ptr @imp_iic_wrap_ws_desc, !54, !"imp_iic_wrap_ws_desc", i1 false, i1 false}
!54 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 82, i32 34}
!55 = !{ptr @.str.13, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 52, i32 2}
!57 = !{ptr @.str.14, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 53, i32 2}
!59 = !{ptr @.str.15, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 54, i32 2}
!61 = !{ptr @imp_iic_wrap_ws_clks, !62, !"imp_iic_wrap_ws_clks", i1 false, i1 false}
!62 = !{!"../drivers/clk/mediatek/clk-mt8192-imp_iic_wrap.c", i32 51, i32 30}
!63 = !{i32 1, !"wchar_size", i32 2}
!64 = !{i32 1, !"min_enum_size", i32 4}
!65 = !{i32 8, !"branch-target-enforcement", i32 0}
!66 = !{i32 8, !"sign-return-address", i32 0}
!67 = !{i32 8, !"sign-return-address-all", i32 0}
!68 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!69 = !{i32 7, !"uwtable", i32 1}
!70 = !{i32 7, !"frame-pointer", i32 2}
!71 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
