; ModuleID = '/llk/IR_all_yes/drivers/clk/mediatek/clk-mt8192-vdec.c_pt.bc'
source_filename = "../drivers/clk/mediatek/clk-mt8192-vdec.c"
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

@__initcall__kmod_clk_mt8192_vdec__170_94_clk_mt8192_vdec_drv_init6 = internal global ptr @clk_mt8192_vdec_drv_init, section ".initcall6.init", align 4
@clk_mt8192_vdec_drv = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_clk_simple_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @of_match_clk_mt8192_vdec, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"clk-mt8192-vdec\00", [16 x i8] zeroinitializer }, align 32
@of_match_clk_mt8192_vdec = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-vdecsys\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vdec_desc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8192-vdecsys_soc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vdec_soc_desc }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@vdec_desc = internal constant { %struct.mtk_clk_desc, [24 x i8] } { %struct.mtk_clk_desc { ptr @vdec_clks, i32 5 }, [24 x i8] zeroinitializer }, align 32
@vdec_soc_desc = internal constant { %struct.mtk_clk_desc, [24 x i8] } { %struct.mtk_clk_desc { ptr @vdec_soc_clks, i32 5 }, [24 x i8] zeroinitializer }, align 32
@vdec_clks = internal constant { [5 x %struct.mtk_gate], [52 x i8] } { [5 x %struct.mtk_gate] [%struct.mtk_gate { i32 3, ptr @.str.1, ptr @.str.2, ptr @vdec0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.3, ptr @.str.2, ptr @vdec0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 1, ptr @.str.4, ptr @.str.2, ptr @vdec1_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.5, ptr @.str.2, ptr @vdec1_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 0, ptr @.str.6, ptr @.str.2, ptr @vdec2_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }], [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"vdec_vdec\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdec_sel\00", [23 x i8] zeroinitializer }, align 32
@vdec0_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 0, i32 4, i32 0 }, [20 x i8] zeroinitializer }, align 32
@mtk_clk_gate_ops_setclr_inv = external dso_local constant %struct.clk_ops, align 4
@.str.3 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"vdec_active\00", [20 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"vdec_lat\00", [23 x i8] zeroinitializer }, align 32
@vdec1_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 512, i32 516, i32 512 }, [20 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"vdec_lat_active\00", [16 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"vdec_larb1\00", [21 x i8] zeroinitializer }, align 32
@vdec2_cg_regs = internal constant { %struct.mtk_gate_regs, [20 x i8] } { %struct.mtk_gate_regs { i32 8, i32 12, i32 8 }, [20 x i8] zeroinitializer }, align 32
@vdec_soc_clks = internal constant { [5 x %struct.mtk_gate], [52 x i8] } { [5 x %struct.mtk_gate] [%struct.mtk_gate { i32 3, ptr @.str.7, ptr @.str.2, ptr @vdec0_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 4, ptr @.str.8, ptr @.str.2, ptr @vdec0_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 1, ptr @.str.9, ptr @.str.2, ptr @vdec1_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 2, ptr @.str.10, ptr @.str.2, ptr @vdec1_cg_regs, i32 4, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }, %struct.mtk_gate { i32 0, ptr @.str.11, ptr @.str.2, ptr @vdec2_cg_regs, i32 0, ptr @mtk_clk_gate_ops_setclr_inv, i32 0 }], [52 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"vdec_soc_vdec\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"vdec_soc_vdec_active\00", [43 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"vdec_soc_lat\00", [19 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"vdec_soc_lat_active\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"vdec_soc_larb1\00", [17 x i8] zeroinitializer }, align 32
@___asan_gen_.12 = private unnamed_addr constant [20 x i8] c"clk_mt8192_vdec_drv\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 86, i32 31 }
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 89, i32 11 }
@___asan_gen_.18 = private unnamed_addr constant [25 x i8] c"of_match_clk_mt8192_vdec\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 74, i32 34 }
@___asan_gen_.21 = private unnamed_addr constant [10 x i8] c"vdec_desc\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 64, i32 34 }
@___asan_gen_.24 = private unnamed_addr constant [14 x i8] c"vdec_soc_desc\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 69, i32 34 }
@___asan_gen_.27 = private unnamed_addr constant [10 x i8] c"vdec_clks\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 42, i32 30 }
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 44, i32 2 }
@___asan_gen_.36 = private unnamed_addr constant [14 x i8] c"vdec0_cg_regs\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 15, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 45, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 47, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant [14 x i8] c"vdec1_cg_regs\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 21, i32 35 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 48, i32 2 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 50, i32 2 }
@___asan_gen_.54 = private unnamed_addr constant [14 x i8] c"vdec2_cg_regs\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 27, i32 35 }
@___asan_gen_.57 = private unnamed_addr constant [14 x i8] c"vdec_soc_clks\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 53, i32 30 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 55, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 56, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 58, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 59, i32 2 }
@___asan_gen_.72 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.73 = private constant [42 x i8] c"../drivers/clk/mediatek/clk-mt8192-vdec.c\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.73, i32 61, i32 2 }
@llvm.compiler.used = appending global [22 x ptr] [ptr @__initcall__kmod_clk_mt8192_vdec__170_94_clk_mt8192_vdec_drv_init6, ptr @clk_mt8192_vdec_drv, ptr @.str, ptr @of_match_clk_mt8192_vdec, ptr @vdec_desc, ptr @vdec_soc_desc, ptr @vdec_clks, ptr @.str.1, ptr @.str.2, ptr @vdec0_cg_regs, ptr @.str.3, ptr @.str.4, ptr @vdec1_cg_regs, ptr @.str.5, ptr @.str.6, ptr @vdec2_cg_regs, ptr @vdec_soc_clks, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clk_mt8192_vdec_drv to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @of_match_clk_mt8192_vdec to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_soc_desc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_clks to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec0_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec1_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec2_cg_regs to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vdec_soc_clks to i32), i32 140, i32 192, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @clk_mt8192_vdec_drv_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @clk_mt8192_vdec_drv, ptr noundef null) #2
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @__initcall__kmod_clk_mt8192_vdec__170_94_clk_mt8192_vdec_drv_init6, !1, !"__initcall__kmod_clk_mt8192_vdec__170_94_clk_mt8192_vdec_drv_init6", i1 false, i1 false}
!1 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 94, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 89, i32 11}
!4 = !{ptr @clk_mt8192_vdec_drv, !5, !"clk_mt8192_vdec_drv", i1 false, i1 false}
!5 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 86, i32 31}
!6 = !{ptr @of_match_clk_mt8192_vdec, !7, !"of_match_clk_mt8192_vdec", i1 false, i1 false}
!7 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 74, i32 34}
!8 = !{ptr @vdec_desc, !9, !"vdec_desc", i1 false, i1 false}
!9 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 64, i32 34}
!10 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 44, i32 2}
!12 = !{ptr @.str.2, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 45, i32 2}
!15 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 47, i32 2}
!17 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 48, i32 2}
!19 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 50, i32 2}
!21 = !{ptr @vdec_clks, !22, !"vdec_clks", i1 false, i1 false}
!22 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 42, i32 30}
!23 = !{ptr @vdec0_cg_regs, !24, !"vdec0_cg_regs", i1 false, i1 false}
!24 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 15, i32 35}
!25 = !{ptr @vdec1_cg_regs, !26, !"vdec1_cg_regs", i1 false, i1 false}
!26 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 21, i32 35}
!27 = !{ptr @vdec2_cg_regs, !28, !"vdec2_cg_regs", i1 false, i1 false}
!28 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 27, i32 35}
!29 = !{ptr @vdec_soc_desc, !30, !"vdec_soc_desc", i1 false, i1 false}
!30 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 69, i32 34}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 55, i32 2}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 56, i32 2}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 58, i32 2}
!37 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 59, i32 2}
!39 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 61, i32 2}
!41 = !{ptr @vdec_soc_clks, !42, !"vdec_soc_clks", i1 false, i1 false}
!42 = !{!"../drivers/clk/mediatek/clk-mt8192-vdec.c", i32 53, i32 30}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
