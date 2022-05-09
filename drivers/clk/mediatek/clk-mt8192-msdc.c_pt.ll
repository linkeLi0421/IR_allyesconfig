; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mt8192-msdc.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt8192-msdc.c"
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

@__initcall__kmod_clk_mt8192_msdc__170_85_clk_mt8192_msdc_drv_init6 = internal global ptr @clk_mt8192_msdc_drv_init, section ".initcall6.init", align 4
@clk_mt8192_msdc_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_clk_simple_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_clk_mt8192_msdc, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk-mt8192-msdc\00", [16 x i8] zeroinitializer }, align 32
@of_match_clk_mt8192_msdc = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-msdc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msdc_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-msdc_top\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @msdc_top_desc }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@msdc_desc = internal constant { %struct.mtk_clk_desc, [24 x i8] } { %struct.mtk_clk_desc { ptr @msdc_clks, i32 1 }, [24 x i8] zeroinitializer }, align 32
@msdc_top_desc = internal constant { %struct.mtk_clk_desc, [24 x i8] } { %struct.mtk_clk_desc { ptr @msdc_top_clks, i32 15 }, [24 x i8] zeroinitializer }, align 32
@msdc_clks = internal constant { [1 x %struct.mtk_gate], [36 x i8] } { [1 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.1, ptr @.str.2, ptr @msdc_cg_regs, i32 22, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }], [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"msdc_axi_wrap\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"axi_sel\00", [24 x i8] zeroinitializer }, align 32
@msdc_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 180, i32 180, i32 180 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_no_setclr_inv = external dso_local constant %struct.clk_ops, align 4
@msdc_top_clks = internal constant { [15 x %struct.mtk_gate], [124 x i8] } { [15 x %struct.mtk_gate] [%struct.mtk_gate { i32 0, ptr @.str.3, ptr @.str.4, ptr @msdc_top_cg_regs, i32 0, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 1, ptr @.str.5, ptr @.str.6, ptr @msdc_top_cg_regs, i32 1, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.7, ptr @.str.8, ptr @msdc_top_cg_regs, i32 2, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 3, ptr @.str.9, ptr @.str.10, ptr @msdc_top_cg_regs, i32 3, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.11, ptr @.str.2, ptr @msdc_top_cg_regs, i32 4, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 5, ptr @.str.12, ptr @.str.2, ptr @msdc_top_cg_regs, i32 5, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 6, ptr @.str.13, ptr @.str.2, ptr @msdc_top_cg_regs, i32 6, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 7, ptr @.str.14, ptr @.str.2, ptr @msdc_top_cg_regs, i32 7, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 8, ptr @.str.15, ptr @.str.2, ptr @msdc_top_cg_regs, i32 8, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 9, ptr @.str.16, ptr @.str.17, ptr @msdc_top_cg_regs, i32 9, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 10, ptr @.str.18, ptr @.str.19, ptr @msdc_top_cg_regs, i32 10, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 11, ptr @.str.20, ptr @.str.21, ptr @msdc_top_cg_regs, i32 11, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 12, ptr @.str.22, ptr @.str.23, ptr @msdc_top_cg_regs, i32 12, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 13, ptr @.str.24, ptr @.str.25, ptr @msdc_top_cg_regs, i32 13, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }, %struct.mtk_gate { i32 14, ptr @.str.26, ptr @.str.2, ptr @msdc_top_cg_regs, i32 14, ptr @mtk_clk_gate_ops_no_setclr_inv, i32 0 }], [124 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msdc_top_aes_0p\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aes_msdcfde_sel\00", [16 x i8] zeroinitializer }, align 32
@msdc_top_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msdc_top_src_0p\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_msdc0_src\00", [16 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msdc_top_src_1p\00", [16 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_msdc1_src\00", [16 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"msdc_top_src_2p\00", [16 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"infra_msdc2_src\00", [16 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msdc_top_p_msdc0\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msdc_top_p_msdc1\00", [47 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"msdc_top_p_msdc2\00", [47 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"msdc_top_p_cfg\00", [17 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc_top_axi\00", [19 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msdc_top_h_mst_0p\00", [46 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_msdc0\00", [20 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msdc_top_h_mst_1p\00", [46 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_msdc1\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"msdc_top_h_mst_2p\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"infra_msdc2\00", [20 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"msdc_top_mem_off_dly_26m\00", [39 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk26m\00", [25 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"msdc_top_32k\00", [19 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"clk32k\00", [25 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"msdc_top_ahb2axi_brg_axi\00", [39 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [20 x i8] c"clk_mt8192_msdc_drv\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 77, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 80, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [25 x i8] c"of_match_clk_mt8192_msdc\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 65, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [10 x i8] c"msdc_desc\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 55, i32 34 }
@___asan_gen_.39 = private unnamed_addr constant [14 x i8] c"msdc_top_desc\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 60, i32 34 }
@___asan_gen_.42 = private unnamed_addr constant [10 x i8] c"msdc_clks\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 33, i32 30 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 34, i32 2 }
@___asan_gen_.51 = private unnamed_addr constant [13 x i8] c"msdc_cg_regs\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 15, i32 35 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"msdc_top_clks\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 37, i32 30 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 38, i32 2 }
@___asan_gen_.63 = private unnamed_addr constant [17 x i8] c"msdc_top_cg_regs\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 21, i32 35 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 39, i32 2 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 40, i32 2 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 41, i32 2 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 42, i32 2 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 43, i32 2 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 44, i32 2 }
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 45, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 46, i32 2 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 47, i32 2 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 48, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 49, i32 2 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 50, i32 2 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 51, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.130 = private constant [42 x i8] c"../drivers/clk/mediatek/clk-mt8192-msdc.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 52, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__initcall__kmod_clk_mt8192_msdc__170_85_clk_mt8192_msdc_drv_init6, ptr @clk_mt8192_msdc_drv, ptr @.str, ptr @of_match_clk_mt8192_msdc, ptr @msdc_desc, ptr @msdc_top_desc, ptr @msdc_clks, ptr @.str.1, ptr @.str.2, ptr @msdc_cg_regs, ptr @msdc_top_clks, ptr @.str.3, ptr @.str.4, ptr @msdc_top_cg_regs, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [35 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt8192_msdc_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_match_clk_mt8192_msdc to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_top_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_clks to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_top_clks to i32), i32 420, i32 544, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @msdc_top_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt8192_msdc_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt8192_msdc_drv, ptr noundef null) #2
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 35)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !22, !24, !25, !27, !28, !30, !31, !33, !35, !37, !39, !41, !43, !44, !46, !47, !49, !50, !52, !53, !55, !56, !58, !60}
!llvm.module.flags = !{!62, !63, !64, !65, !66, !67, !68, !69}
!llvm.ident = !{!70}

!0 = !{ptr @__initcall__kmod_clk_mt8192_msdc__170_85_clk_mt8192_msdc_drv_init6, !1, !"__initcall__kmod_clk_mt8192_msdc__170_85_clk_mt8192_msdc_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 85, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 80, i32 11}
!4 = !{ptr @clk_mt8192_msdc_drv, !5, !"clk_mt8192_msdc_drv", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 77, i32 31}
!6 = !{ptr @of_match_clk_mt8192_msdc, !7, !"of_match_clk_mt8192_msdc", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 65, i32 34}
!8 = !{ptr @msdc_desc, !9, !"msdc_desc", i1 false, i1 false}
!9 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 55, i32 34}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 34, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @msdc_clks, !14, !"msdc_clks", i1 false, i1 false}
!14 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 33, i32 30}
!15 = !{ptr @msdc_cg_regs, !16, !"msdc_cg_regs", i1 false, i1 false}
!16 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 15, i32 35}
!17 = !{ptr @msdc_top_desc, !18, !"msdc_top_desc", i1 false, i1 false}
!18 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 60, i32 34}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 38, i32 2}
!21 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 39, i32 2}
!24 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 40, i32 2}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 41, i32 2}
!30 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.11, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 42, i32 2}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 43, i32 2}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 44, i32 2}
!37 = !{ptr @.str.14, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 45, i32 2}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 46, i32 2}
!41 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 47, i32 2}
!43 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 48, i32 2}
!46 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @.str.20, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 49, i32 2}
!49 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 50, i32 2}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 51, i32 2}
!55 = !{ptr @.str.25, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 52, i32 2}
!58 = !{ptr @msdc_top_clks, !59, !"msdc_top_clks", i1 false, i1 false}
!59 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 37, i32 30}
!60 = !{ptr @msdc_top_cg_regs, !61, !"msdc_top_cg_regs", i1 false, i1 false}
!61 = !{!"../drivers/clk/mediatek/clk-mt8192-msdc.c", i32 21, i32 35}
!62 = !{i32 1, !"wchar_size", i32 2}
!63 = !{i32 1, !"min_enum_size", i32 4}
!64 = !{i32 8, !"branch-target-enforcement", i32 0}
!65 = !{i32 8, !"sign-return-address", i32 0}
!66 = !{i32 8, !"sign-return-address-all", i32 0}
!67 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!68 = !{i32 7, !"uwtable", i32 1}
!69 = !{i32 7, !"frame-pointer", i32 2}
!70 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
