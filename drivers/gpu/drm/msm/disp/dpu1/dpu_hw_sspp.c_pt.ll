; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.dpu_hw_pipe = type { %struct.dpu_hw_blk, %struct.dpu_hw_blk_reg_map, ptr, ptr, i32, ptr, %struct.dpu_hw_sspp_ops }
%struct.dpu_hw_blk = type {}
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_sspp_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dpu_sspp_cfg = type { [16 x i8], i32, i32, i32, i32, ptr, i32, i32, i32 }
%struct.dpu_sspp_sub_blks = type { i32, i32, i32, i32, i32, i32, i32, %struct.dpu_src_blk, %struct.dpu_scaler_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, %struct.dpu_pp_blk, ptr, i32, ptr, i32 }
%struct.dpu_src_blk = type { [16 x i8], i32, i32, i32 }
%struct.dpu_scaler_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_pp_blk = type { [16 x i8], i32, i32, i32, i32 }
%struct.dpu_mdss_cfg = type { i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_reg_dma_cfg, i32, i32, ptr, %struct.dpu_perf_cfg, ptr, ptr, ptr, i32 }
%struct.dpu_reg_dma_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dpu_perf_cfg = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [3 x i32], [3 x i32], [3 x %struct.dpu_qos_lut_tbl], [2 x %struct.dpu_perf_cdp_cfg] }
%struct.dpu_qos_lut_tbl = type { i32, ptr }
%struct.dpu_perf_cdp_cfg = type { i8, i8 }
%struct.dpu_format = type { %struct.msm_format, i32, [4 x i8], [4 x i8], i32, i8, i8, i8, i8, i8, i8, i32, [1 x i32], i16, i16 }
%struct.msm_format = type { i32 }
%struct.dpu_mdp_cfg = type { [16 x i8], i32, i32, i32, i32, i32, i32, [16 x %struct.dpu_clk_ctrl_reg] }
%struct.dpu_clk_ctrl_reg = type { i32, i32 }
%struct.dpu_caps = type { i32, i32, i32, i32, i32, i8, i8, i8, i8, i32, i32, i32, i32 }
%struct.dpu_hw_pipe_cfg = type { %struct.dpu_hw_fmt_layout, %struct.drm_rect, %struct.drm_rect, i32, i32 }
%struct.dpu_hw_fmt_layout = type { ptr, i32, i32, i32, i32, [4 x i32], [4 x i32], [4 x i32] }
%struct.drm_rect = type { i32, i32, i32, i32 }
%struct.dpu_hw_pixel_ext = type { i8, [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32] }
%struct.dpu_hw_pipe_qos_cfg = type { i32, i32, i8, i8 }
%struct.dpu_hw_pipe_cdp_cfg = type { i8, i8, i8, i32 }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%d\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"features\00", [23 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"src_blk\00", [24 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"scaler_blk\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"csc_blk\00", [24 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"xin_id\00", [25 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"clk_ctrl\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"creq_vblank\00", [20 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"danger_vblank\00", [18 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"SSPP_FETCH_CONFIG\00", [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SSPP_UBWC_STATIC_CTRL\00", [42 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"format_off + idx\00", [47 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"unpack_pat_off + idx\00", [43 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"op_mode_off + idx\00", [46 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"SSPP_UBWC_ERROR_STATUS + idx\00", [35 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"SSPP_VIG_OP_MODE + idx\00", [41 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SSPP_VIG_CSC_10_OP_MODE + idx\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"src_size_off + idx\00", [45 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"src_xy_off + idx\00", [47 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"out_size_off + idx\00", [45 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"out_xy_off + idx\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SSPP_SRC_YSTRIDE0 + idx\00", [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SSPP_SRC_YSTRIDE1 + idx\00", [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"SSPP_SRC0_ADDR + idx + i * 0x4\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SSPP_SRC0_ADDR + idx\00", [43 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SSPP_SRC2_ADDR + idx\00", [43 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SSPP_SRC1_ADDR + idx\00", [43 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"SSPP_SRC3_ADDR + idx\00", [43 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SSPP_SRC_CONSTANT_COLOR + idx\00", [34 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"SSPP_SRC_CONSTANT_COLOR_REC1 + idx\00", [61 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SSPP_SW_PIX_EXT_C0_LR + idx\00", [36 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SSPP_SW_PIX_EXT_C0_TB + idx\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SSPP_SW_PIX_EXT_C0_REQ_PIXELS + idx\00", [60 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SSPP_SW_PIX_EXT_C1C2_LR + idx\00", [34 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"SSPP_SW_PIX_EXT_C1C2_TB + idx\00", [34 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"SSPP_SW_PIX_EXT_C1C2_REQ_PIXELS + idx\00", [58 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SSPP_SW_PIX_EXT_C3_LR + idx\00", [36 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SSPP_SW_PIX_EXT_C3_TB + idx\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"SSPP_SW_PIX_EXT_C3_REQ_PIXELS + idx\00", [60 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SSPP_DANGER_LUT + idx\00", [42 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SSPP_SAFE_LUT + idx\00", [44 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SSPP_CREQ_LUT_0 + idx\00", [42 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"SSPP_CREQ_LUT_1 + idx\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SSPP_CREQ_LUT + idx\00", [44 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"SSPP_QOS_CTRL + idx\00", [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"SSPP_MULTIRECT_OPMODE + idx\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cdp_cntl_offset\00", [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.47 = internal global [5 x i64] [i64 3, i64 32, i64 512, i64 768, i64 1024]
@__sancov_gen_cov_switch_values.48 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 705, i32 41 }
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 712, i32 21 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 716, i32 30 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 726, i32 31 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 734, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 740, i32 21 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 744, i32 21 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 748, i32 21 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 752, i32 21 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 308, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 317, i32 4 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 351, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 352, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 353, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 356, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 218, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 236, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 506, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 507, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 508, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 509, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 511, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 512, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 527, i32 4 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 530, i32 3 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 532, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 535, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 537, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 568, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 570, i32 3 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 399, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 400, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 401, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 405, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 406, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 407, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 411, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 412, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 413, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 583, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 584, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 596, i32 3 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 597, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 600, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 626, i32 2 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 197, i32 2 }
@___asan_gen_.187 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.188 = private constant [47 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.188, i32 657, i32 2 }
@llvm.compiler.used = appending global [47 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [47 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @_dpu_hw_sspp_init_debugfs(ptr nocapture noundef readonly %hw_pipe, ptr noundef %kms, ptr noundef %entry1) local_unnamed_addr #0 align 64 {
entry:
  %sspp_name = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cap = getelementptr inbounds %struct.dpu_hw_pipe, ptr %hw_pipe, i32 0, i32 5
  %0 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap, align 4
  %sblk2 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sblk2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk2, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %sspp_name) #5
  %idx = getelementptr inbounds %struct.dpu_hw_pipe, ptr %hw_pipe, i32 0, i32 4
  %4 = call ptr @memset(ptr %sspp_name, i32 255, i32 32)
  %5 = ptrtoint ptr %idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %idx, align 4
  %call = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %sspp_name, i32 noundef 32, ptr noundef nonnull @.str, i32 noundef %6)
  %call4 = call ptr @debugfs_create_dir(ptr noundef nonnull %sspp_name, ptr noundef %entry1) #5
  %7 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %cap, align 4
  %features = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %8, i32 0, i32 4
  call void @debugfs_create_x32(ptr noundef nonnull @.str.1, i16 noundef zeroext 384, ptr noundef %call4, ptr noundef %features) #5
  %base = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 7, i32 2
  %9 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base, align 4
  %base6 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 2
  %11 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base6, align 4
  %add = add i32 %12, %10
  %len = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 7, i32 3
  %13 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len, align 4
  call void @dpu_debugfs_create_regset32(ptr noundef nonnull @.str.2, i16 noundef zeroext 256, ptr noundef %call4, i32 noundef %add, i32 noundef %14, ptr noundef %kms) #5
  %features8 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %features8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %features8, align 4
  %17 = and i32 %16, 60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %base20 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 8, i32 2
  %19 = ptrtoint ptr %base20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %base20, align 4
  %21 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %base6, align 4
  %add22 = add i32 %22, %20
  %len24 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 8, i32 3
  %23 = ptrtoint ptr %len24 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %len24, align 4
  call void @dpu_debugfs_create_regset32(ptr noundef nonnull @.str.3, i16 noundef zeroext 256, ptr noundef %call4, i32 noundef %add22, i32 noundef %24, ptr noundef %kms) #5
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %25 = ptrtoint ptr %features8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %features8, align 4
  %27 = and i32 %26, 384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %if.end.if.end38_crit_edge, label %if.then32

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end38

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %base33 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 9, i32 2
  %29 = ptrtoint ptr %base33 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %base33, align 4
  %31 = ptrtoint ptr %base6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %base6, align 4
  %add35 = add i32 %32, %30
  %len37 = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 9, i32 3
  %33 = ptrtoint ptr %len37 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %len37, align 4
  call void @dpu_debugfs_create_regset32(ptr noundef nonnull @.str.4, i16 noundef zeroext 256, ptr noundef %call4, i32 noundef %add35, i32 noundef %34, ptr noundef %kms) #5
  br label %if.end38

if.end38:                                         ; preds = %if.then32, %if.end.if.end38_crit_edge
  %xin_id = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 6
  call void @debugfs_create_u32(ptr noundef nonnull @.str.5, i16 noundef zeroext 256, ptr noundef %call4, ptr noundef %xin_id) #5
  %clk_ctrl = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 7
  call void @debugfs_create_u32(ptr noundef nonnull @.str.6, i16 noundef zeroext 256, ptr noundef %call4, ptr noundef %clk_ctrl) #5
  call void @debugfs_create_x32(ptr noundef nonnull @.str.7, i16 noundef zeroext 384, ptr noundef %call4, ptr noundef %3) #5
  %danger_vblank = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 1
  call void @debugfs_create_x32(ptr noundef nonnull @.str.8, i16 noundef zeroext 384, ptr noundef %call4, ptr noundef %danger_vblank) #5
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %sspp_name) #5
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @debugfs_create_dir(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_debugfs_create_regset32(ptr noundef, i16 noundef zeroext, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_u32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @debugfs_create_x32(ptr noundef, i16 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dpu_hw_sspp_init(i32 noundef %idx, ptr noundef %addr, ptr noundef %catalog, i1 noundef zeroext %is_virtual_pipe) local_unnamed_addr #0 align 64 {
entry:
  %features.addr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %addr, null
  %tobool1.not = icmp eq ptr %catalog, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 100) #8
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %hw = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %idx)
  %cmp.i = icmp ugt i32 %idx, 14
  %tobool4.not.i = icmp eq ptr %hw, null
  %or.cond36.i = or i1 %cmp.i, %tobool4.not.i
  br i1 %or.cond36.i, label %if.end6.if.then9_crit_edge, label %for.cond.preheader.i

if.end6.if.then9_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

for.cond.preheader.i:                             ; preds = %if.end6
  %sspp_count.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %catalog, i32 0, i32 6
  %1 = ptrtoint ptr %sspp_count.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %sspp_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp538.not.i = icmp eq i32 %2, 0
  br i1 %cmp538.not.i, label %for.cond.preheader.i.if.then9_crit_edge, label %for.body.lr.ph.i

for.cond.preheader.i.if.then9_crit_edge:          ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %sspp6.i = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %catalog, i32 0, i32 7
  %3 = ptrtoint ptr %sspp6.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sspp6.i, align 4
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.039.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %id.i = getelementptr %struct.dpu_sspp_cfg, ptr %4, i32 %i.039.i, i32 1
  %5 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %id.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %idx)
  %cmp7.i = icmp eq i32 %6, %idx
  br i1 %cmp7.i, label %_sspp_offset.exit, label %for.inc.i

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %2
  br i1 %exitcond.not.i, label %for.inc.i.if.then9_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body.i

for.inc.i.if.then9_crit_edge:                     ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

_sspp_offset.exit:                                ; preds = %for.body.i
  %7 = ptrtoint ptr %hw to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %addr, ptr %hw, align 8
  %base.i = getelementptr %struct.dpu_sspp_cfg, ptr %4, i32 %i.039.i, i32 2
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i, align 4
  %blk_off.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %blk_off.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %blk_off.i, align 4
  %len.i = getelementptr %struct.dpu_sspp_cfg, ptr %4, i32 %i.039.i, i32 3
  %11 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len.i, align 4
  %length.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 1, i32 2
  %13 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %length.i, align 8
  %14 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %catalog, align 4
  %hwversion13.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 1, i32 4
  %16 = ptrtoint ptr %hwversion13.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %hwversion13.i, align 8
  %log_mask.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 1, i32 5
  %17 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 32, ptr %log_mask.i, align 4
  %arrayidx15.i = getelementptr %struct.dpu_sspp_cfg, ptr %4, i32 %i.039.i
  %tobool.not.i32 = icmp eq ptr %arrayidx15.i, null
  %cmp.i33 = icmp ugt ptr %arrayidx15.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i32, %cmp.i33
  br i1 %spec.select.i, label %_sspp_offset.exit.if.then9_crit_edge, label %if.end11

_sspp_offset.exit.if.then9_crit_edge:             ; preds = %_sspp_offset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then9

if.then9:                                         ; preds = %_sspp_offset.exit.if.then9_crit_edge, %for.inc.i.if.then9_crit_edge, %for.cond.preheader.i.if.then9_crit_edge, %if.end6.if.then9_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #5
  br label %cleanup

if.end11:                                         ; preds = %_sspp_offset.exit
  %catalog12 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %catalog12 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %catalog, ptr %catalog12, align 8
  %mdp = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %catalog, i32 0, i32 3
  %19 = ptrtoint ptr %mdp to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %mdp, align 4
  %mdp13 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 3
  %21 = ptrtoint ptr %mdp13 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %20, ptr %mdp13, align 4
  %idx14 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 4
  %22 = ptrtoint ptr %idx14 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %idx, ptr %idx14, align 8
  %cap = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 5
  %23 = ptrtoint ptr %cap to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %arrayidx15.i, ptr %cap, align 4
  %features = getelementptr %struct.dpu_sspp_cfg, ptr %4, i32 %i.039.i, i32 4
  %24 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %features, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %features.addr.i)
  %26 = ptrtoint ptr %features.addr.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %features.addr.i, align 4
  %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0..i = load volatile i32, ptr %features.addr.i, align 4
  %27 = and i32 %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0..i, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool.not.i34 = icmp eq i32 %27, 0
  br i1 %tobool.not.i34, label %if.end11.if.end.i_crit_edge, label %if.then.i

if.end11.if.end.i_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end.i

if.then.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #7
  %ops.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 6
  %28 = ptrtoint ptr %ops.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @dpu_hw_sspp_setup_format, ptr %ops.i, align 8
  %setup_rects.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 6, i32 1
  %29 = ptrtoint ptr %setup_rects.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @dpu_hw_sspp_setup_rects, ptr %setup_rects.i, align 4
  %setup_sourceaddress.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 6, i32 3
  %30 = ptrtoint ptr %setup_sourceaddress.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @dpu_hw_sspp_setup_sourceaddress, ptr %setup_sourceaddress.i, align 4
  %setup_solidfill.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 6, i32 5
  %31 = ptrtoint ptr %setup_solidfill.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @dpu_hw_sspp_setup_solidfill, ptr %setup_solidfill.i, align 4
  %setup_pe.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 6, i32 2
  %32 = ptrtoint ptr %setup_pe.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @dpu_hw_sspp_setup_pe_config, ptr %setup_pe.i, align 8
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end11.if.end.i_crit_edge
  %33 = ptrtoint ptr %features.addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0.79.i = load volatile i32, ptr %features.addr.i, align 4
  %34 = and i32 %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0.79.i, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool6.not.i = icmp eq i32 %34, 0
  br i1 %tobool6.not.i, label %if.end.i.if.end11.i_crit_edge, label %if.then7.i

if.end.i.if.end11.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end11.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #7
  %setup_danger_safe_lut.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 6, i32 8
  %35 = ptrtoint ptr %setup_danger_safe_lut.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @dpu_hw_sspp_setup_danger_safe_lut, ptr %setup_danger_safe_lut.i, align 8
  %setup_creq_lut.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 6, i32 9
  %36 = ptrtoint ptr %setup_creq_lut.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @dpu_hw_sspp_setup_creq_lut, ptr %setup_creq_lut.i, align 4
  %setup_qos_ctrl.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 6, i32 10
  %37 = ptrtoint ptr %setup_qos_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @dpu_hw_sspp_setup_qos_ctrl, ptr %setup_qos_ctrl.i, align 8
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then7.i, %if.end.i.if.end11.i_crit_edge
  %38 = ptrtoint ptr %features.addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0.80.i = load volatile i32, ptr %features.addr.i, align 4
  %39 = and i32 %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0.80.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool13.not.i = icmp eq i32 %39, 0
  br i1 %tobool13.not.i, label %lor.lhs.false.i, label %if.end11.i.if.then16.i_crit_edge

if.end11.i.if.then16.i_crit_edge:                 ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i

lor.lhs.false.i:                                  ; preds = %if.end11.i
  %40 = ptrtoint ptr %features.addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0.81.i = load volatile i32, ptr %features.addr.i, align 4
  %41 = and i32 %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0.81.i, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool15.not.i = icmp eq i32 %41, 0
  br i1 %tobool15.not.i, label %lor.lhs.false.i.if.end18.i_crit_edge, label %lor.lhs.false.i.if.then16.i_crit_edge

lor.lhs.false.i.if.then16.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then16.i

lor.lhs.false.i.if.end18.i_crit_edge:             ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end18.i

if.then16.i:                                      ; preds = %lor.lhs.false.i.if.then16.i_crit_edge, %if.end11.i.if.then16.i_crit_edge
  %setup_csc.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 6, i32 4
  %42 = ptrtoint ptr %setup_csc.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @dpu_hw_sspp_setup_csc, ptr %setup_csc.i, align 8
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.then16.i, %lor.lhs.false.i.if.end18.i_crit_edge
  %43 = ptrtoint ptr %cap to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cap, align 4
  %features19.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %features19.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %features19.i, align 4
  %47 = and i32 %46, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool21.not.i = icmp eq i32 %47, 0
  br i1 %tobool21.not.i, label %lor.lhs.false22.i, label %if.end18.i.if.then27.i_crit_edge

if.end18.i.if.then27.i_crit_edge:                 ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27.i

lor.lhs.false22.i:                                ; preds = %if.end18.i
  %48 = ptrtoint ptr %features19.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %features19.i, align 4
  %50 = and i32 %49, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool26.not.i = icmp eq i32 %50, 0
  br i1 %tobool26.not.i, label %lor.lhs.false22.i.if.end29.i_crit_edge, label %lor.lhs.false22.i.if.then27.i_crit_edge

lor.lhs.false22.i.if.then27.i_crit_edge:          ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then27.i

lor.lhs.false22.i.if.end29.i_crit_edge:           ; preds = %lor.lhs.false22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end29.i

if.then27.i:                                      ; preds = %lor.lhs.false22.i.if.then27.i_crit_edge, %if.end18.i.if.then27.i_crit_edge
  %setup_multirect.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 6, i32 6
  %51 = ptrtoint ptr %setup_multirect.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @dpu_hw_sspp_setup_multirect, ptr %setup_multirect.i, align 8
  br label %if.end29.i

if.end29.i:                                       ; preds = %if.then27.i, %lor.lhs.false22.i.if.end29.i_crit_edge
  %52 = ptrtoint ptr %features.addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0.82.i = load volatile i32, ptr %features.addr.i, align 4
  %53 = and i32 %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0.82.i, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool31.not.i = icmp eq i32 %53, 0
  br i1 %tobool31.not.i, label %lor.lhs.false32.i, label %if.end29.i.if.then38.i_crit_edge

if.end29.i.if.then38.i_crit_edge:                 ; preds = %if.end29.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

lor.lhs.false32.i:                                ; preds = %if.end29.i
  %54 = ptrtoint ptr %features.addr.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0.83.i = load volatile i32, ptr %features.addr.i, align 4
  %55 = and i32 %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0.83.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool34.not.i = icmp eq i32 %55, 0
  br i1 %tobool34.not.i, label %lor.lhs.false35.i, label %lor.lhs.false32.i.if.then38.i_crit_edge

lor.lhs.false32.i.if.then38.i_crit_edge:          ; preds = %lor.lhs.false32.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

lor.lhs.false35.i:                                ; preds = %lor.lhs.false32.i
  %56 = ptrtoint ptr %features.addr.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0.84.i = load volatile i32, ptr %features.addr.i, align 4
  %57 = and i32 %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0.84.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool37.not.i = icmp eq i32 %57, 0
  br i1 %tobool37.not.i, label %lor.lhs.false35.i.if.end41.i_crit_edge, label %lor.lhs.false35.i.if.then38.i_crit_edge

lor.lhs.false35.i.if.then38.i_crit_edge:          ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.then38.i

lor.lhs.false35.i.if.end41.i_crit_edge:           ; preds = %lor.lhs.false35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end41.i

if.then38.i:                                      ; preds = %lor.lhs.false35.i.if.then38.i_crit_edge, %lor.lhs.false32.i.if.then38.i_crit_edge, %if.end29.i.if.then38.i_crit_edge
  %setup_scaler.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 6, i32 12
  %58 = ptrtoint ptr %setup_scaler.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @_dpu_hw_sspp_setup_scaler3, ptr %setup_scaler.i, align 8
  %get_scaler_ver.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 6, i32 13
  %59 = ptrtoint ptr %get_scaler_ver.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @_dpu_hw_sspp_get_scaler3_ver, ptr %get_scaler_ver.i, align 4
  br label %if.end41.i

if.end41.i:                                       ; preds = %if.then38.i, %lor.lhs.false35.i.if.end41.i_crit_edge
  %60 = ptrtoint ptr %features.addr.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0.85.i = load volatile i32, ptr %features.addr.i, align 4
  %61 = and i32 %features.addr.i.0.features.addr.i.0.features.addr.0.features.addr.0.85.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool43.not.i = icmp eq i32 %61, 0
  br i1 %tobool43.not.i, label %if.end41.i._setup_layer_ops.exit_crit_edge, label %if.then44.i

if.end41.i._setup_layer_ops.exit_crit_edge:       ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %_setup_layer_ops.exit

if.then44.i:                                      ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #7
  %setup_cdp.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %call7.i.i, i32 0, i32 6, i32 14
  %62 = ptrtoint ptr %setup_cdp.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @dpu_hw_sspp_setup_cdp, ptr %setup_cdp.i, align 8
  br label %_setup_layer_ops.exit

_setup_layer_ops.exit:                            ; preds = %if.then44.i, %if.end41.i._setup_layer_ops.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %features.addr.i)
  br label %cleanup

cleanup:                                          ; preds = %_setup_layer_ops.exit, %if.then9, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then9 ], [ %call7.i.i, %_setup_layer_ops.exit ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_hw_sspp_destroy(ptr noundef %ctx) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %ctx) #5
  ret void
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_format(ptr noundef %ctx, ptr noundef %fmt, i32 noundef %flags, i32 noundef %rect_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctx, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %cap.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %sblk4.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sblk4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk4.i, align 4
  %tobool5.not.i = icmp eq ptr %3, null
  br i1 %tobool5.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %_sspp_subblk_offset.exit

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

_sspp_subblk_offset.exit:                         ; preds = %lor.lhs.false2.i
  %base.i = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 4
  %tobool1.not = icmp eq ptr %fmt, null
  br i1 %tobool1.not, label %_sspp_subblk_offset.exit.cleanup_crit_edge, label %if.end

_sspp_subblk_offset.exit.cleanup_crit_edge:       ; preds = %_sspp_subblk_offset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %_sspp_subblk_offset.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rect_mode)
  %switch = icmp ult i32 %rect_mode, 2
  %op_mode_off.0 = select i1 %switch, i32 56, i32 380
  %unpack_pat_off.0 = select i1 %switch, i32 52, i32 376
  %format_off.0 = select i1 %switch, i32 48, i32 372
  %hw = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 1
  %add = add i32 %5, %op_mode_off.0
  %call6 = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef %add) #5
  %and = and i32 %call6, 2147459070
  %and7 = shl i32 %flags, 13
  %6 = and i32 %and7, 24576
  %7 = or i32 %6, %and
  %chroma_sample = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 4
  %8 = ptrtoint ptr %chroma_sample to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chroma_sample, align 4
  %and16 = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %if.end.if.end26_crit_edge, label %if.then18

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp19 = icmp eq i32 %9, 1
  br i1 %cmp19, label %if.then18.if.end26_crit_edge, label %if.else21

if.then18.if.end26_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end26

if.else21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp22 = icmp eq i32 %9, 2
  %spec.store.select = select i1 %cmp22, i32 1, i32 %9
  br label %if.end26

if.end26:                                         ; preds = %if.else21, %if.then18.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %chroma_samp.0 = phi i32 [ %spec.store.select, %if.else21 ], [ %9, %if.end.if.end26_crit_edge ], [ 2, %if.then18.if.end26_crit_edge ]
  %shl = shl i32 %chroma_samp.0, 23
  %fetch_planes = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 1
  %10 = ptrtoint ptr %fetch_planes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %fetch_planes, align 4
  %shl27 = shl i32 %11, 19
  %or28 = or i32 %shl, %shl27
  %bits = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 3
  %arrayidx = getelementptr %struct.dpu_format, ptr %fmt, i32 0, i32 3, i32 3
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %13 to i32
  %shl29 = shl nuw nsw i32 %conv, 6
  %or30 = or i32 %shl29, %or28
  %arrayidx32 = getelementptr %struct.dpu_format, ptr %fmt, i32 0, i32 3, i32 2
  %14 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %arrayidx32, align 2
  %conv33 = zext i8 %15 to i32
  %shl34 = shl nuw nsw i32 %conv33, 4
  %arrayidx37 = getelementptr %struct.dpu_format, ptr %fmt, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx37, align 1
  %conv38 = zext i8 %17 to i32
  %shl39 = shl nuw nsw i32 %conv38, 2
  %18 = ptrtoint ptr %bits to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %bits, align 4
  %conv43 = zext i8 %19 to i32
  %and46 = shl i32 %flags, 8
  %20 = and i32 %and46, 2048
  %or35 = or i32 %shl34, %20
  %or40 = or i32 %or35, %or30
  %or45 = or i32 %or40, %shl39
  %21 = or i32 %or45, %conv43
  %alpha_enable = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 9
  %22 = ptrtoint ptr %alpha_enable to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %alpha_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool52.not = icmp eq i8 %23, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp54 = icmp eq i32 %11, 0
  %or57 = or i32 %21, 256
  %spec.select251 = select i1 %cmp54, i32 %or57, i32 %21
  %src_format.1 = select i1 %tobool52.not, i32 %21, i32 %spec.select251
  %and59 = shl i32 %flags, 18
  %24 = and i32 %and59, 4194304
  %element = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 2
  %arrayidx64 = getelementptr %struct.dpu_format, ptr %fmt, i32 0, i32 2, i32 3
  %25 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %26 to i32
  %shl66 = shl nuw i32 %conv65, 24
  %arrayidx68 = getelementptr %struct.dpu_format, ptr %fmt, i32 0, i32 2, i32 2
  %27 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx68, align 2
  %conv69 = zext i8 %28 to i32
  %shl70 = shl nuw nsw i32 %conv69, 16
  %or71 = or i32 %shl70, %shl66
  %arrayidx73 = getelementptr %struct.dpu_format, ptr %fmt, i32 0, i32 2, i32 1
  %29 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx73, align 1
  %conv74 = zext i8 %30 to i32
  %shl75 = shl nuw nsw i32 %conv74, 8
  %or76 = or i32 %or71, %shl75
  %31 = ptrtoint ptr %element to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %element, align 4
  %conv79 = zext i8 %32 to i32
  %or81 = or i32 %or76, %conv79
  %unpack_count = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 7
  %33 = ptrtoint ptr %unpack_count to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %unpack_count, align 2
  %conv82 = zext i8 %34 to i32
  %sub = shl nuw nsw i32 %conv82, 12
  %shl83 = add nsw i32 %sub, -4096
  %unpack_tight = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 6
  %35 = ptrtoint ptr %unpack_tight to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %unpack_tight, align 1
  %conv84 = zext i8 %36 to i32
  %shl85 = shl nuw nsw i32 %conv84, 17
  %unpack_align_msb = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 5
  %37 = ptrtoint ptr %unpack_align_msb to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %unpack_align_msb, align 4
  %conv87 = zext i8 %38 to i32
  %shl88 = shl nuw nsw i32 %conv87, 18
  %bpp = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 8
  %39 = ptrtoint ptr %bpp to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %bpp, align 1
  %conv90 = zext i8 %40 to i32
  %sub91 = shl nuw nsw i32 %conv90, 9
  %shl92 = add nsw i32 %sub91, -512
  %or86 = or i32 %src_format.1, %24
  %or89 = or i32 %or86, %shl85
  %or93 = or i32 %or89, %shl83
  %41 = or i32 %or93, %shl88
  %or94 = or i32 %41, %shl92
  %fetch_mode = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 11
  %42 = ptrtoint ptr %fetch_mode to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %fetch_mode, align 4
  %44 = zext i32 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %44, ptr @__sancov_gen_cov_switch_values)
  switch i32 %43, label %if.end26.if.end106_crit_edge [
    i32 0, label %if.end26.if.end136_crit_edge
    i32 2, label %land.lhs.true101
  ]

if.end26.if.end136_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end136

if.end26.if.end106_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end106

land.lhs.true101:                                 ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %flag = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 12
  %45 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile i32, ptr %flag, align 4
  %47 = lshr i32 %46, 2
  %48 = and i32 %47, 1
  %49 = or i32 %48, %7
  br label %if.end106

if.end106:                                        ; preds = %land.lhs.true101, %if.end26.if.end106_crit_edge
  %opmode.2 = phi i32 [ %7, %if.end26.if.end106_crit_edge ], [ %49, %land.lhs.true101 ]
  %shl109 = shl i32 %43, 30
  %or110 = or i32 %or94, %shl109
  %mdp = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 3
  %50 = ptrtoint ptr %mdp to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %mdp, align 4
  %highest_bank_bit = getelementptr inbounds %struct.dpu_mdp_cfg, ptr %51, i32 0, i32 5
  %52 = ptrtoint ptr %highest_bank_bit to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %highest_bank_bit, align 4
  %shl111 = shl i32 %53, 18
  %or112 = or i32 %shl111, 135
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 72, i32 noundef %or112, ptr noundef nonnull @.str.9) #5
  %catalog = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 2
  %54 = ptrtoint ptr %catalog to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %catalog, align 4
  %caps = getelementptr inbounds %struct.dpu_mdss_cfg, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %caps to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %caps, align 4
  %ubwc_version = getelementptr inbounds %struct.dpu_caps, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %ubwc_version to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %ubwc_version, align 4
  %60 = zext i32 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.47)
  switch i32 %59, label %if.end106.if.end136_crit_edge [
    i32 1024, label %sw.bb130
    i32 512, label %sw.bb
    i32 768, label %sw.bb122
  ]

if.end106.if.end136_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end136

sw.bb:                                            ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %alpha_enable to i32
  call void @__asan_load1_noabort(i32 %61)
  %62 = load i8, ptr %alpha_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool115.not = icmp eq i8 %62, 0
  %cond = select i1 %tobool115.not, i32 0, i32 -2147483648
  %63 = ptrtoint ptr %mdp to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %mdp, align 4
  %ubwc_swizzle = getelementptr inbounds %struct.dpu_mdp_cfg, ptr %64, i32 0, i32 6
  %65 = ptrtoint ptr %ubwc_swizzle to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %ubwc_swizzle, align 4
  %or117 = or i32 %cond, %66
  %highest_bank_bit119 = getelementptr inbounds %struct.dpu_mdp_cfg, ptr %64, i32 0, i32 5
  %67 = ptrtoint ptr %highest_bank_bit119 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %highest_bank_bit119, align 4
  %shl120 = shl i32 %68, 4
  %or121 = or i32 %or117, %shl120
  br label %if.end136.sink.split

sw.bb122:                                         ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  %69 = ptrtoint ptr %mdp to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %mdp, align 4
  %ubwc_swizzle124 = getelementptr inbounds %struct.dpu_mdp_cfg, ptr %70, i32 0, i32 6
  %71 = ptrtoint ptr %ubwc_swizzle124 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %ubwc_swizzle124, align 4
  %highest_bank_bit127 = getelementptr inbounds %struct.dpu_mdp_cfg, ptr %70, i32 0, i32 5
  %73 = ptrtoint ptr %highest_bank_bit127 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %highest_bank_bit127, align 4
  %shl128 = shl i32 %74, 4
  %or125 = or i32 %72, %shl128
  %or129 = or i32 %or125, 1073741824
  br label %if.end136.sink.split

sw.bb130:                                         ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #7
  %flag131 = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 12
  %75 = ptrtoint ptr %flag131 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load volatile i32, ptr %flag131, align 4
  %and1.i255 = shl i32 %76, 30
  %77 = and i32 %and1.i255, 1073741824
  %78 = xor i32 %77, 1073741824
  br label %if.end136.sink.split

if.end136.sink.split:                             ; preds = %sw.bb130, %sw.bb122, %sw.bb
  %or121.sink = phi i32 [ %or121, %sw.bb ], [ %or129, %sw.bb122 ], [ %78, %sw.bb130 ]
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef 68, i32 noundef %or121.sink, ptr noundef nonnull @.str.10) #5
  br label %if.end136

if.end136:                                        ; preds = %if.end136.sink.split, %if.end106.if.end136_crit_edge, %if.end26.if.end136_crit_edge
  %src_format.3 = phi i32 [ %or110, %if.end106.if.end136_crit_edge ], [ %or94, %if.end26.if.end136_crit_edge ], [ %or110, %if.end136.sink.split ]
  %opmode.3 = phi i32 [ %opmode.2, %if.end106.if.end136_crit_edge ], [ %7, %if.end26.if.end136_crit_edge ], [ %opmode.2, %if.end136.sink.split ]
  %or137 = or i32 %opmode.3, -2147483648
  %flag138 = getelementptr inbounds %struct.dpu_format, ptr %fmt, i32 0, i32 12
  %79 = ptrtoint ptr %flag138 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile i32, ptr %flag138, align 4
  %and1.i256 = shl i32 %80, 15
  %81 = and i32 %and1.i256, 32768
  %82 = or i32 %81, %src_format.3
  %83 = load volatile i32, ptr %flag138, align 4
  %84 = shl i32 %83, 13
  %85 = and i32 %84, 16384
  %86 = or i32 %82, %85
  %87 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %cap.i, align 4
  %features = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %88, i32 0, i32 4
  %89 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile i32, ptr %features, align 4
  %91 = and i32 %90, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %tobool153.not = icmp eq i32 %91, 0
  br i1 %tobool153.not, label %if.else159, label %if.then154

if.then154:                                       ; preds = %if.end136
  %92 = ptrtoint ptr %flag138 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load volatile i32, ptr %flag138, align 4
  %94 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load volatile i32, ptr %features, align 4
  %96 = and i32 %95, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %96)
  %tobool.not.i266 = icmp eq i32 %96, 0
  %tobool1.not.i.i = icmp eq ptr %88, null
  %or.cond7.i = select i1 %tobool.not.i266, i1 true, i1 %tobool1.not.i.i
  br i1 %or.cond7.i, label %if.then154.if.end170_crit_edge, label %lor.lhs.false2.i.i

if.then154.if.end170_crit_edge:                   ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end170

lor.lhs.false2.i.i:                               ; preds = %if.then154
  %sblk4.i.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %88, i32 0, i32 5
  %97 = ptrtoint ptr %sblk4.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %sblk4.i.i, align 4
  %tobool5.not.i.i = icmp eq ptr %98, null
  br i1 %tobool5.not.i.i, label %lor.lhs.false2.i.i.if.end170_crit_edge, label %lor.lhs.false3.i

lor.lhs.false2.i.i.if.end170_crit_edge:           ; preds = %lor.lhs.false2.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end170

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false2.i.i
  %base9.i.i = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %98, i32 0, i32 8, i32 2
  %99 = ptrtoint ptr %base9.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %base9.i.i, align 4
  %101 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load volatile i32, ptr %features, align 4
  %103 = and i32 %102, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool7.not.i = icmp eq i32 %103, 0
  br i1 %tobool7.not.i, label %lor.lhs.false3.i.if.end170_crit_edge, label %if.end.i267

lor.lhs.false3.i.if.end170_crit_edge:             ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end170

if.end.i267:                                      ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #7
  %call8.i = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef %100) #5
  %conv158287 = and i32 %93, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv158287)
  %tobool9.not.i = icmp eq i32 %conv158287, 0
  %and.i = and i32 %call8.i, -393217
  %masksel.i = select i1 %tobool9.not.i, i32 0, i32 393216
  %opmode.0.i = or i32 %and.i, %masksel.i
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %100, i32 noundef %opmode.0.i, ptr noundef nonnull @.str.15) #5
  br label %if.end170

if.else159:                                       ; preds = %if.end136
  %104 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load volatile i32, ptr %features, align 4
  %106 = and i32 %105, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %106)
  %tobool163.not = icmp eq i32 %106, 0
  br i1 %tobool163.not, label %if.else159.if.end170_crit_edge, label %lor.lhs.false.i.i

if.else159.if.end170_crit_edge:                   ; preds = %if.else159
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end170

lor.lhs.false.i.i:                                ; preds = %if.else159
  %107 = ptrtoint ptr %flag138 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load volatile i32, ptr %flag138, align 4
  %tobool1.not.i.i269 = icmp eq ptr %88, null
  br i1 %tobool1.not.i.i269, label %lor.lhs.false.i.i.if.end170_crit_edge, label %lor.lhs.false2.i.i272

lor.lhs.false.i.i.if.end170_crit_edge:            ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end170

lor.lhs.false2.i.i272:                            ; preds = %lor.lhs.false.i.i
  %sblk4.i.i270 = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %88, i32 0, i32 5
  %109 = ptrtoint ptr %sblk4.i.i270 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %sblk4.i.i270, align 4
  %tobool5.not.i.i271 = icmp eq ptr %110, null
  br i1 %tobool5.not.i.i271, label %lor.lhs.false2.i.i272.if.end170_crit_edge, label %if.end.i277

lor.lhs.false2.i.i272.if.end170_crit_edge:        ; preds = %lor.lhs.false2.i.i272
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end170

if.end.i277:                                      ; preds = %lor.lhs.false2.i.i272
  call void @__sanitizer_cov_trace_pc() #7
  %base11.i.i = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %110, i32 0, i32 9, i32 2
  %111 = ptrtoint ptr %base11.i.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %base11.i.i, align 4
  %call1.i = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef %112) #5
  %conv168288 = and i32 %108, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %conv168288)
  %tobool2.not.i = icmp eq i32 %conv168288, 0
  %and.i274 = and i32 %call1.i, -4
  %masksel.i275 = select i1 %tobool2.not.i, i32 0, i32 3
  %opmode.0.i276 = or i32 %and.i274, %masksel.i275
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %112, i32 noundef %opmode.0.i276, ptr noundef nonnull @.str.16) #5
  br label %if.end170

if.end170:                                        ; preds = %if.end.i277, %lor.lhs.false2.i.i272.if.end170_crit_edge, %lor.lhs.false.i.i.if.end170_crit_edge, %if.else159.if.end170_crit_edge, %if.end.i267, %lor.lhs.false3.i.if.end170_crit_edge, %lor.lhs.false2.i.i.if.end170_crit_edge, %if.then154.if.end170_crit_edge
  %add171 = add i32 %5, %format_off.0
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add171, i32 noundef %86, ptr noundef nonnull @.str.11) #5
  %add172 = add i32 %5, %unpack_pat_off.0
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add172, i32 noundef %or81, ptr noundef nonnull @.str.12) #5
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add, i32 noundef %or137, ptr noundef nonnull @.str.13) #5
  %add174 = add i32 %5, 312
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add174, i32 noundef -2147483648, ptr noundef nonnull @.str.14) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end170, %_sspp_subblk_offset.exit.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_rects(ptr noundef %ctx, ptr noundef readonly %cfg, i32 noundef %rect_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctx, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %cap.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %sblk4.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sblk4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk4.i, align 4
  %tobool5.not.i = icmp eq ptr %3, null
  br i1 %tobool5.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %_sspp_subblk_offset.exit

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

_sspp_subblk_offset.exit:                         ; preds = %lor.lhs.false2.i
  %base.i = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 4
  %tobool1.not = icmp eq ptr %cfg, null
  br i1 %tobool1.not, label %_sspp_subblk_offset.exit.cleanup_crit_edge, label %if.end

_sspp_subblk_offset.exit.cleanup_crit_edge:       ; preds = %_sspp_subblk_offset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %_sspp_subblk_offset.exit
  %hw = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rect_index)
  %cmp = icmp eq i32 %rect_index, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rect_index)
  %switch = icmp ult i32 %rect_index, 2
  br i1 %switch, label %if.end.if.end5_crit_edge, label %if.else

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.end.if.end5_crit_edge
  %src_size_off.0 = phi i32 [ 364, %if.else ], [ 0, %if.end.if.end5_crit_edge ]
  %src_xy_off.0 = phi i32 [ 360, %if.else ], [ 8, %if.end.if.end5_crit_edge ]
  %out_size_off.0 = phi i32 [ 352, %if.else ], [ 12, %if.end.if.end5_crit_edge ]
  %out_xy_off.0 = phi i32 [ 356, %if.else ], [ 16, %if.end.if.end5_crit_edge ]
  %src_rect = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %cfg, i32 0, i32 1
  %y1 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %cfg, i32 0, i32 1, i32 1
  %6 = ptrtoint ptr %y1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %y1, align 4
  %shl = shl i32 %7, 16
  %8 = ptrtoint ptr %src_rect to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %src_rect, align 4
  %or = or i32 %shl, %9
  %y2.i = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %cfg, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %y2.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %y2.i, align 4
  %sub.i = sub i32 %11, %7
  %shl9 = shl i32 %sub.i, 16
  %x2.i = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %cfg, i32 0, i32 1, i32 2
  %12 = ptrtoint ptr %x2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %x2.i, align 4
  %sub.i122 = sub i32 %13, %9
  %or12 = or i32 %shl9, %sub.i122
  %dst_rect = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %cfg, i32 0, i32 2
  %y113 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %cfg, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %y113 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %y113, align 4
  %shl14 = shl i32 %15, 16
  %16 = ptrtoint ptr %dst_rect to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dst_rect, align 4
  %or17 = or i32 %shl14, %17
  %y2.i123 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %cfg, i32 0, i32 2, i32 3
  %18 = ptrtoint ptr %y2.i123 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %y2.i123, align 4
  %sub.i125 = sub i32 %19, %15
  %shl20 = shl i32 %sub.i125, 16
  %x2.i126 = getelementptr inbounds %struct.dpu_hw_pipe_cfg, ptr %cfg, i32 0, i32 2, i32 2
  %20 = ptrtoint ptr %x2.i126 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %x2.i126, align 4
  %sub.i127 = sub i32 %21, %17
  %or23 = or i32 %shl20, %sub.i127
  br i1 %cmp, label %if.then25, label %if.else39

if.then25:                                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %plane_pitch = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %cfg, i32 0, i32 7
  %22 = ptrtoint ptr %plane_pitch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %plane_pitch, align 4
  %arrayidx28 = getelementptr %struct.dpu_hw_fmt_layout, ptr %cfg, i32 0, i32 7, i32 1
  %24 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx28, align 4
  %shl29 = shl i32 %25, 16
  %or30 = or i32 %shl29, %23
  %arrayidx33 = getelementptr %struct.dpu_hw_fmt_layout, ptr %cfg, i32 0, i32 7, i32 2
  %26 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx33, align 4
  %arrayidx36 = getelementptr %struct.dpu_hw_fmt_layout, ptr %cfg, i32 0, i32 7, i32 3
  %28 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx36, align 4
  %shl37 = shl i32 %29, 16
  %or38 = or i32 %shl37, %27
  %.pre = add i32 %5, 36
  %.pre140 = add i32 %5, 40
  br label %if.end72

if.else39:                                        ; preds = %if.end5
  %add = add i32 %5, 36
  %call40 = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef %add) #5
  %add41 = add i32 %5, 40
  %call42 = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef %add41) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %rect_index)
  %cmp43 = icmp eq i32 %rect_index, 1
  br i1 %cmp43, label %if.then44, label %if.else56

if.then44:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %call40, -65536
  %plane_pitch46 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %cfg, i32 0, i32 7
  %30 = ptrtoint ptr %plane_pitch46 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %plane_pitch46, align 4
  %and48 = and i32 %31, 65535
  %or49 = or i32 %and48, %and
  %and50 = and i32 %call42, -65536
  %arrayidx53 = getelementptr %struct.dpu_hw_fmt_layout, ptr %cfg, i32 0, i32 7, i32 2
  %32 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx53, align 4
  %and54 = and i32 %33, 65535
  %or55 = or i32 %and54, %and50
  br label %if.end72

if.else56:                                        ; preds = %if.else39
  call void @__sanitizer_cov_trace_pc() #7
  %and57 = and i32 %call40, 65535
  %plane_pitch59 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %cfg, i32 0, i32 7
  %34 = ptrtoint ptr %plane_pitch59 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %plane_pitch59, align 4
  %shl61 = shl i32 %35, 16
  %or63 = or i32 %shl61, %and57
  %and64 = and i32 %call42, 65535
  %arrayidx67 = getelementptr %struct.dpu_hw_fmt_layout, ptr %cfg, i32 0, i32 7, i32 2
  %36 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx67, align 4
  %shl68 = shl i32 %37, 16
  %or70 = or i32 %shl68, %and64
  br label %if.end72

if.end72:                                         ; preds = %if.else56, %if.then44, %if.then25
  %add78.pre-phi = phi i32 [ %add41, %if.then44 ], [ %add41, %if.else56 ], [ %.pre140, %if.then25 ]
  %add77.pre-phi = phi i32 [ %add, %if.then44 ], [ %add, %if.else56 ], [ %.pre, %if.then25 ]
  %ystride0.0 = phi i32 [ %or49, %if.then44 ], [ %or63, %if.else56 ], [ %or30, %if.then25 ]
  %ystride1.0 = phi i32 [ %or55, %if.then44 ], [ %or70, %if.else56 ], [ %or38, %if.then25 ]
  %add73 = add i32 %src_size_off.0, %5
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add73, i32 noundef %or12, ptr noundef nonnull @.str.17) #5
  %add74 = add i32 %src_xy_off.0, %5
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add74, i32 noundef %or, ptr noundef nonnull @.str.18) #5
  %add75 = add i32 %out_size_off.0, %5
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add75, i32 noundef %or23, ptr noundef nonnull @.str.19) #5
  %add76 = add i32 %out_xy_off.0, %5
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add76, i32 noundef %or17, ptr noundef nonnull @.str.20) #5
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add77.pre-phi, i32 noundef %ystride0.0, ptr noundef nonnull @.str.21) #5
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add78.pre-phi, i32 noundef %ystride1.0, ptr noundef nonnull @.str.22) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end72, %_sspp_subblk_offset.exit.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_sourceaddress(ptr noundef %ctx, ptr nocapture noundef readonly %cfg, i32 noundef %rect_mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctx, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %cap.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %sblk4.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sblk4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk4.i, align 4
  %tobool5.not.i = icmp eq ptr %3, null
  br i1 %tobool5.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %if.end

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2.i
  %base.i = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 4
  %6 = zext i32 %rect_mode to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.48)
  switch i32 %rect_mode, label %if.else16 [
    i32 0, label %for.cond.preheader
    i32 1, label %if.then5
  ]

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %hw = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 1
  %add = add i32 %5, 20
  %arrayidx = getelementptr %struct.dpu_hw_fmt_layout, ptr %cfg, i32 0, i32 5, i32 0
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add, i32 noundef %8, ptr noundef nonnull @.str.23) #5
  %add3.1 = add i32 %5, 24
  %arrayidx.1 = getelementptr %struct.dpu_hw_fmt_layout, ptr %cfg, i32 0, i32 5, i32 1
  %9 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.1, align 4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add3.1, i32 noundef %10, ptr noundef nonnull @.str.23) #5
  %add3.2 = add i32 %5, 28
  %arrayidx.2 = getelementptr %struct.dpu_hw_fmt_layout, ptr %cfg, i32 0, i32 5, i32 2
  %11 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx.2, align 4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add3.2, i32 noundef %12, ptr noundef nonnull @.str.23) #5
  %add3.3 = add i32 %5, 32
  %arrayidx.3 = getelementptr %struct.dpu_hw_fmt_layout, ptr %cfg, i32 0, i32 5, i32 3
  %13 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx.3, align 4
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add3.3, i32 noundef %14, ptr noundef nonnull @.str.23) #5
  br label %cleanup

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %hw6 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 1
  %add7 = add i32 %5, 20
  %plane_addr9 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %cfg, i32 0, i32 5
  %15 = ptrtoint ptr %plane_addr9 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %plane_addr9, align 4
  tail call void @dpu_reg_write(ptr noundef %hw6, i32 noundef %add7, i32 noundef %16, ptr noundef nonnull @.str.24) #5
  %add12 = add i32 %5, 28
  %arrayidx15 = getelementptr %struct.dpu_hw_fmt_layout, ptr %cfg, i32 0, i32 5, i32 2
  %17 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx15, align 4
  tail call void @dpu_reg_write(ptr noundef %hw6, i32 noundef %add12, i32 noundef %18, ptr noundef nonnull @.str.25) #5
  br label %cleanup

if.else16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %hw17 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 1
  %add18 = add i32 %5, 24
  %plane_addr20 = getelementptr inbounds %struct.dpu_hw_fmt_layout, ptr %cfg, i32 0, i32 5
  %19 = ptrtoint ptr %plane_addr20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %plane_addr20, align 4
  tail call void @dpu_reg_write(ptr noundef %hw17, i32 noundef %add18, i32 noundef %20, ptr noundef nonnull @.str.26) #5
  %add23 = add i32 %5, 32
  %arrayidx26 = getelementptr %struct.dpu_hw_fmt_layout, ptr %cfg, i32 0, i32 5, i32 2
  %21 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx26, align 4
  tail call void @dpu_reg_write(ptr noundef %hw17, i32 noundef %add23, i32 noundef %22, ptr noundef nonnull @.str.27) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else16, %if.then5, %for.cond.preheader, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_solidfill(ptr noundef %ctx, i32 noundef %color, i32 noundef %rect_index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctx, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %cap.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %sblk4.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sblk4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk4.i, align 4
  %tobool5.not.i = icmp eq ptr %3, null
  br i1 %tobool5.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %if.end

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  %base.i = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %rect_index)
  %switch = icmp ult i32 %rect_index, 2
  %hw = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 1
  %. = select i1 %switch, i32 60, i32 384
  %.str.28..str.29 = select i1 %switch, ptr @.str.28, ptr @.str.29
  %add = add i32 %5, %.
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add, i32 noundef %color, ptr noundef nonnull %.str.28..str.29) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_pe_config(ptr noundef %ctx, ptr noundef readonly %pe_ext) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctx, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %cap.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %sblk4.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sblk4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk4.i, align 4
  %tobool5.not.i = icmp eq ptr %3, null
  %tobool1.not = icmp eq ptr %pe_ext, null
  %or.cond = or i1 %tobool5.not.i, %tobool1.not
  br i1 %or.cond, label %lor.lhs.false2.i.cleanup_crit_edge, label %for.inc.3

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

for.inc.3:                                        ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  %base.i = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 4
  %arrayidx = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 10, i32 0
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %shl = shl i32 %7, 24
  %arrayidx9 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 14, i32 0
  %8 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx9, align 4
  %and10 = shl i32 %9, 16
  %shl11 = and i32 %and10, 16711680
  %or = or i32 %shl11, %shl
  %arrayidx13 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 9, i32 0
  %10 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx13, align 4
  %and14 = shl i32 %11, 8
  %shl15 = and i32 %and14, 65280
  %or16 = or i32 %or, %shl15
  %arrayidx18 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 13, i32 0
  %12 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx18, align 4
  %and19 = and i32 %13, 255
  %or20 = or i32 %or16, %and19
  %arrayidx24 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 12, i32 0
  %14 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx24, align 4
  %shl26 = shl i32 %15, 24
  %arrayidx28 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 16, i32 0
  %16 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx28, align 4
  %and29 = shl i32 %17, 16
  %shl30 = and i32 %and29, 16711680
  %or31 = or i32 %shl30, %shl26
  %arrayidx33 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 11, i32 0
  %18 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx33, align 4
  %and34 = shl i32 %19, 8
  %shl35 = and i32 %and34, 65280
  %or36 = or i32 %or31, %shl35
  %arrayidx38 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 15, i32 0
  %20 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx38, align 4
  %and39 = and i32 %21, 255
  %or40 = or i32 %or36, %and39
  %arrayidx44 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 18, i32 0
  %22 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx44, align 4
  %arrayidx46 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 7, i32 0
  %24 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx46, align 4
  %add = add i32 %25, %23
  %arrayidx48 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 8, i32 0
  %26 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx48, align 4
  %add49 = add i32 %add, %27
  %shl51 = shl i32 %add49, 16
  %arrayidx53 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 17, i32 0
  %28 = ptrtoint ptr %arrayidx53 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx53, align 4
  %arrayidx55 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 5, i32 0
  %30 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx55, align 4
  %add56 = add i32 %31, %29
  %arrayidx58 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 6, i32 0
  %32 = ptrtoint ptr %arrayidx58 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx58, align 4
  %add59 = add i32 %add56, %33
  %and60 = and i32 %add59, 65535
  %or61 = or i32 %and60, %shl51
  %arrayidx.1 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 10, i32 1
  %34 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx.1, align 4
  %shl.1 = shl i32 %35, 24
  %arrayidx9.1 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 14, i32 1
  %36 = ptrtoint ptr %arrayidx9.1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx9.1, align 4
  %and10.1 = shl i32 %37, 16
  %shl11.1 = and i32 %and10.1, 16711680
  %or.1 = or i32 %shl11.1, %shl.1
  %arrayidx13.1 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 9, i32 1
  %38 = ptrtoint ptr %arrayidx13.1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx13.1, align 4
  %and14.1 = shl i32 %39, 8
  %shl15.1 = and i32 %and14.1, 65280
  %or16.1 = or i32 %or.1, %shl15.1
  %arrayidx18.1 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 13, i32 1
  %40 = ptrtoint ptr %arrayidx18.1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx18.1, align 4
  %and19.1 = and i32 %41, 255
  %or20.1 = or i32 %or16.1, %and19.1
  %arrayidx24.1 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 12, i32 1
  %42 = ptrtoint ptr %arrayidx24.1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx24.1, align 4
  %shl26.1 = shl i32 %43, 24
  %arrayidx28.1 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 16, i32 1
  %44 = ptrtoint ptr %arrayidx28.1 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx28.1, align 4
  %and29.1 = shl i32 %45, 16
  %shl30.1 = and i32 %and29.1, 16711680
  %or31.1 = or i32 %shl30.1, %shl26.1
  %arrayidx33.1 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 11, i32 1
  %46 = ptrtoint ptr %arrayidx33.1 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %arrayidx33.1, align 4
  %and34.1 = shl i32 %47, 8
  %shl35.1 = and i32 %and34.1, 65280
  %or36.1 = or i32 %or31.1, %shl35.1
  %arrayidx38.1 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 15, i32 1
  %48 = ptrtoint ptr %arrayidx38.1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx38.1, align 4
  %and39.1 = and i32 %49, 255
  %or40.1 = or i32 %or36.1, %and39.1
  %arrayidx44.1 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 18, i32 1
  %50 = ptrtoint ptr %arrayidx44.1 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx44.1, align 4
  %arrayidx46.1 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 7, i32 1
  %52 = ptrtoint ptr %arrayidx46.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx46.1, align 4
  %add.1 = add i32 %53, %51
  %arrayidx48.1 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 8, i32 1
  %54 = ptrtoint ptr %arrayidx48.1 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx48.1, align 4
  %add49.1 = add i32 %add.1, %55
  %shl51.1 = shl i32 %add49.1, 16
  %arrayidx53.1 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 17, i32 1
  %56 = ptrtoint ptr %arrayidx53.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx53.1, align 4
  %arrayidx55.1 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 5, i32 1
  %58 = ptrtoint ptr %arrayidx55.1 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx55.1, align 4
  %add56.1 = add i32 %59, %57
  %arrayidx58.1 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 6, i32 1
  %60 = ptrtoint ptr %arrayidx58.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %arrayidx58.1, align 4
  %add59.1 = add i32 %add56.1, %61
  %and60.1 = and i32 %add59.1, 65535
  %or61.1 = or i32 %and60.1, %shl51.1
  %arrayidx.3 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 10, i32 3
  %62 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %arrayidx.3, align 4
  %shl.3 = shl i32 %63, 24
  %arrayidx9.3 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 14, i32 3
  %64 = ptrtoint ptr %arrayidx9.3 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %arrayidx9.3, align 4
  %and10.3 = shl i32 %65, 16
  %shl11.3 = and i32 %and10.3, 16711680
  %or.3 = or i32 %shl11.3, %shl.3
  %arrayidx13.3 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 9, i32 3
  %66 = ptrtoint ptr %arrayidx13.3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %arrayidx13.3, align 4
  %and14.3 = shl i32 %67, 8
  %shl15.3 = and i32 %and14.3, 65280
  %or16.3 = or i32 %or.3, %shl15.3
  %arrayidx18.3 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 13, i32 3
  %68 = ptrtoint ptr %arrayidx18.3 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx18.3, align 4
  %and19.3 = and i32 %69, 255
  %or20.3 = or i32 %or16.3, %and19.3
  %arrayidx44.3 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 18, i32 3
  %70 = ptrtoint ptr %arrayidx44.3 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx44.3, align 4
  %arrayidx46.3 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 7, i32 3
  %72 = ptrtoint ptr %arrayidx46.3 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx46.3, align 4
  %add.3 = add i32 %73, %71
  %arrayidx48.3 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 8, i32 3
  %74 = ptrtoint ptr %arrayidx48.3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx48.3, align 4
  %add49.3 = add i32 %add.3, %75
  %shl51.3 = shl i32 %add49.3, 16
  %arrayidx53.3 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 17, i32 3
  %76 = ptrtoint ptr %arrayidx53.3 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx53.3, align 4
  %arrayidx55.3 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 5, i32 3
  %78 = ptrtoint ptr %arrayidx55.3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx55.3, align 4
  %add56.3 = add i32 %79, %77
  %arrayidx58.3 = getelementptr %struct.dpu_hw_pixel_ext, ptr %pe_ext, i32 0, i32 6, i32 3
  %80 = ptrtoint ptr %arrayidx58.3 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx58.3, align 4
  %add59.3 = add i32 %add56.3, %81
  %and60.3 = and i32 %add59.3, 65535
  %or61.3 = or i32 %and60.3, %shl51.3
  %hw = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 1
  %add64 = add i32 %5, 256
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add64, i32 noundef %or20, ptr noundef nonnull @.str.30) #5
  %add66 = add i32 %5, 260
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add66, i32 noundef %or40, ptr noundef nonnull @.str.31) #5
  %add68 = add i32 %5, 264
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add68, i32 noundef %or61, ptr noundef nonnull @.str.32) #5
  %add70 = add i32 %5, 272
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add70, i32 noundef %or20.1, ptr noundef nonnull @.str.33) #5
  %add72 = add i32 %5, 276
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add72, i32 noundef %or40.1, ptr noundef nonnull @.str.34) #5
  %add74 = add i32 %5, 280
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add74, i32 noundef %or61.1, ptr noundef nonnull @.str.35) #5
  %add76 = add i32 %5, 288
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add76, i32 noundef %or20.3, ptr noundef nonnull @.str.36) #5
  %add78 = add i32 %5, 292
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add78, i32 noundef %or20.3, ptr noundef nonnull @.str.37) #5
  %add80 = add i32 %5, 296
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add80, i32 noundef %or61.3, ptr noundef nonnull @.str.38) #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc.3, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_danger_safe_lut(ptr noundef %ctx, i32 noundef %danger_lut, i32 noundef %safe_lut) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctx, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %cap.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %sblk4.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sblk4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk4.i, align 4
  %tobool5.not.i = icmp eq ptr %3, null
  br i1 %tobool5.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %if.end

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  %base.i = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 4
  %hw = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 1
  %add = add i32 %5, 96
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add, i32 noundef %danger_lut, ptr noundef nonnull @.str.39) #5
  %add2 = add i32 %5, 100
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add2, i32 noundef %safe_lut, ptr noundef nonnull @.str.40) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_creq_lut(ptr noundef %ctx, i64 noundef %creq_lut) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctx, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %cap.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %sblk4.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sblk4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk4.i, align 4
  %tobool5.not.i = icmp eq ptr %3, null
  br i1 %tobool5.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %if.end

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2.i
  %base.i = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 4
  %6 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cap.i, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %features = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %features, align 4
  %10 = and i32 %9, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool4.not = icmp eq i32 %10, 0
  br i1 %tobool4.not, label %land.lhs.true.if.else_crit_edge, label %if.then5

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %hw = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 1
  %add = add i32 %5, 116
  %conv = trunc i64 %creq_lut to i32
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add, i32 noundef %conv, ptr noundef nonnull @.str.41) #5
  %add7 = add i32 %5, 120
  %shr = lshr i64 %creq_lut, 32
  %conv8 = trunc i64 %shr to i32
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add7, i32 noundef %conv8, ptr noundef nonnull @.str.42) #5
  br label %cleanup

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %hw9 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 1
  %add10 = add i32 %5, 104
  %conv11 = trunc i64 %creq_lut to i32
  tail call void @dpu_reg_write(ptr noundef %hw9, i32 noundef %add10, i32 noundef %conv11, ptr noundef nonnull @.str.43) #5
  br label %cleanup

cleanup:                                          ; preds = %if.else, %if.then5, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_qos_ctrl(ptr noundef %ctx, ptr nocapture noundef readonly %cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctx, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %cap.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %sblk4.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sblk4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk4.i, align 4
  %tobool5.not.i = icmp eq ptr %3, null
  br i1 %tobool5.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %if.end

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2.i
  %base.i = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 4
  %vblank_en = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, ptr %cfg, i32 0, i32 2
  %6 = ptrtoint ptr %vblank_en to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %vblank_en, align 4, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool1.not = icmp eq i8 %7, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %if.then2

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cfg, align 4
  %and = shl i32 %9, 20
  %shl = and i32 %and, 3145728
  %danger_vblank = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, ptr %cfg, i32 0, i32 1
  %10 = ptrtoint ptr %danger_vblank to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %danger_vblank, align 4
  %and3 = shl i32 %11, 4
  %shl4 = and i32 %and3, 48
  %or5 = or i32 %shl, %shl4
  %or6 = or i32 %or5, 65536
  br label %if.end7

if.end7:                                          ; preds = %if.then2, %if.end.if.end7_crit_edge
  %qos_ctrl.0 = phi i32 [ %or6, %if.then2 ], [ 0, %if.end.if.end7_crit_edge ]
  %danger_safe_en = getelementptr inbounds %struct.dpu_hw_pipe_qos_cfg, ptr %cfg, i32 0, i32 3
  %12 = ptrtoint ptr %danger_safe_en to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %danger_safe_en, align 1, !range !103
  %14 = zext i8 %13 to i32
  %spec.select = or i32 %qos_ctrl.0, %14
  %hw = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 1
  %add = add i32 %5, 108
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %add, i32 noundef %spec.select, ptr noundef nonnull @.str.44) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end7, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_csc(ptr noundef %ctx, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctx, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %cap.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %sblk4.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sblk4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk4.i, align 4
  %tobool5.not.i = icmp eq ptr %3, null
  %tobool1.not = icmp eq ptr %data, null
  %or.cond = or i1 %tobool1.not, %tobool5.not.i
  br i1 %or.cond, label %lor.lhs.false2.i.cleanup_crit_edge, label %if.end

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  %base11.i = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 9, i32 2
  %4 = ptrtoint ptr %base11.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base11.i, align 4
  %6 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cap.i, align 4
  %features = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %7, i32 0, i32 4
  %8 = ptrtoint ptr %features to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %features, align 4
  %10 = and i32 %9, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not = icmp eq i32 %10, 0
  %add = add i32 %5, 4
  %spec.select = select i1 %tobool3.not, i32 %5, i32 %add
  %11 = xor i1 %tobool3.not, true
  %hw = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 1
  tail call void @dpu_hw_csc_setup(ptr noundef %hw, i32 noundef %spec.select, ptr noundef nonnull %data, i1 noundef zeroext %11) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_multirect(ptr noundef %ctx, i32 noundef %index, i32 noundef %mode) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctx, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %cap.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %sblk4.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sblk4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk4.i, align 4
  %tobool5.not.i = icmp eq ptr %3, null
  br i1 %tobool5.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %if.end

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2.i
  %base.i = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 7, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %index)
  %cmp = icmp eq i32 %index, 0
  br i1 %cmp, label %if.end.if.end8_crit_edge, label %if.else

if.end.if.end8_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %.pre = add i32 %5, 368
  br label %if.end8

if.else:                                          ; preds = %if.end
  %hw = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 1
  %add = add i32 %5, 368
  %call2 = tail call i32 @dpu_reg_read(ptr noundef %hw, i32 noundef %add) #5
  %or = or i32 %call2, %index
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %mode)
  %cmp3 = icmp eq i32 %mode, 2
  br i1 %cmp3, label %if.then4, label %if.else6

if.then4:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %or5 = or i32 %or, 4
  br label %if.end8

if.else6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %and = and i32 %or, -5
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.then4, %if.end.if.end8_crit_edge
  %add10.pre-phi = phi i32 [ %.pre, %if.end.if.end8_crit_edge ], [ %add, %if.then4 ], [ %add, %if.else6 ]
  %mode_mask.0 = phi i32 [ 0, %if.end.if.end8_crit_edge ], [ %or5, %if.then4 ], [ %and, %if.else6 ]
  %hw9 = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 1
  tail call void @dpu_reg_write(ptr noundef %hw9, i32 noundef %add10.pre-phi, i32 noundef %mode_mask.0, ptr noundef nonnull @.str.45) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @_dpu_hw_sspp_setup_scaler3(ptr noundef %ctx, ptr noundef readonly %sspp, ptr noundef %scaler_cfg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not.i = icmp eq ptr %ctx, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %cap.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %sblk4.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sblk4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk4.i, align 4
  %tobool5.not.i = icmp eq ptr %3, null
  br i1 %tobool5.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %_sspp_subblk_offset.exit

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

_sspp_subblk_offset.exit:                         ; preds = %lor.lhs.false2.i
  %tobool1.not = icmp eq ptr %sspp, null
  %tobool3.not = icmp eq ptr %scaler_cfg, null
  %or.cond9 = or i1 %tobool1.not, %tobool3.not
  br i1 %or.cond9, label %_sspp_subblk_offset.exit.cleanup_crit_edge, label %if.end

_sspp_subblk_offset.exit.cleanup_crit_edge:       ; preds = %_sspp_subblk_offset.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %_sspp_subblk_offset.exit
  call void @__sanitizer_cov_trace_pc() #7
  %base9.i = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %base9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base9.i, align 4
  %hw = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 1
  %6 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cap.i, align 4
  %sblk = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %7, i32 0, i32 5
  %8 = ptrtoint ptr %sblk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %sblk, align 4
  %version = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %9, i32 0, i32 8, i32 4
  %10 = ptrtoint ptr %version to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %version, align 4
  %12 = ptrtoint ptr %sspp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sspp, align 4
  tail call void @dpu_hw_setup_scaler3(ptr noundef %hw, ptr noundef nonnull %scaler_cfg, i32 noundef %5, i32 noundef %11, ptr noundef %13) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %_sspp_subblk_offset.exit.cleanup_crit_edge, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @_dpu_hw_sspp_get_scaler3_ver(ptr noundef %ctx) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %cap.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %sblk4.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sblk4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk4.i, align 4
  %tobool5.not.i = icmp eq ptr %3, null
  br i1 %tobool5.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %if.end

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  %base9.i = getelementptr inbounds %struct.dpu_sspp_sub_blks, ptr %3, i32 0, i32 8, i32 2
  %4 = ptrtoint ptr %base9.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %base9.i, align 4
  %hw = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 1
  %call2 = tail call i32 @dpu_hw_get_scaler3_ver(ptr noundef %hw, i32 noundef %5) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %if.end ], [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false2.i.cleanup_crit_edge ], [ 0, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dpu_hw_sspp_setup_cdp(ptr noundef %ctx, ptr noundef readonly %cfg, i32 noundef %index) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %ctx, null
  %tobool1.not = icmp eq ptr %cfg, null
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %lor.lhs.false.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %entry
  %cap.i = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 5
  %0 = ptrtoint ptr %cap.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cap.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.cleanup_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %sblk4.i = getelementptr inbounds %struct.dpu_sspp_cfg, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %sblk4.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %sblk4.i, align 4
  %tobool5.not.i = icmp eq ptr %3, null
  br i1 %tobool5.not.i, label %lor.lhs.false2.i.cleanup_crit_edge, label %if.end4

lor.lhs.false2.i.cleanup_crit_edge:               ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %index)
  %switch = icmp ult i32 %index, 2
  %spec.select37 = select i1 %switch, i32 308, i32 316
  %4 = ptrtoint ptr %cfg to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cfg, align 4, !range !103
  %6 = zext i8 %5 to i32
  %ubwc_meta_enable = getelementptr inbounds %struct.dpu_hw_pipe_cdp_cfg, ptr %cfg, i32 0, i32 1
  %7 = ptrtoint ptr %ubwc_meta_enable to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %ubwc_meta_enable, align 1, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool12.not = icmp eq i8 %8, 0
  %or14 = or i32 %6, 2
  %cdp_cntl.1 = select i1 %tobool12.not, i32 %6, i32 %or14
  %tile_amortize_enable = getelementptr inbounds %struct.dpu_hw_pipe_cdp_cfg, ptr %cfg, i32 0, i32 2
  %9 = ptrtoint ptr %tile_amortize_enable to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %tile_amortize_enable, align 2, !range !103
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool16.not = icmp eq i8 %10, 0
  %or18 = or i32 %cdp_cntl.1, 4
  %cdp_cntl.2 = select i1 %tobool16.not, i32 %cdp_cntl.1, i32 %or18
  %preload_ahead = getelementptr inbounds %struct.dpu_hw_pipe_cdp_cfg, ptr %cfg, i32 0, i32 3
  %11 = ptrtoint ptr %preload_ahead to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %preload_ahead, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %12)
  %cmp20 = icmp eq i32 %12, 1
  %or22 = or i32 %cdp_cntl.2, 8
  %cdp_cntl.3 = select i1 %cmp20, i32 %or22, i32 %cdp_cntl.2
  %hw = getelementptr inbounds %struct.dpu_hw_pipe, ptr %ctx, i32 0, i32 1
  tail call void @dpu_reg_write(ptr noundef %hw, i32 noundef %spec.select37, i32 noundef %cdp_cntl.3, ptr noundef nonnull @.str.46) #5
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %lor.lhs.false2.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_reg_read(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_reg_write(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_csc_setup(ptr noundef, i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dpu_hw_setup_scaler3(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dpu_hw_get_scaler3_ver(ptr noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 47)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92}
!llvm.module.flags = !{!94, !95, !96, !97, !98, !99, !100, !101}
!llvm.ident = !{!102}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 705, i32 41}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 712, i32 21}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 716, i32 30}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 726, i32 31}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 734, i32 31}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 740, i32 21}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 744, i32 21}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 748, i32 21}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 752, i32 21}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 308, i32 3}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 317, i32 4}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 351, i32 2}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 352, i32 2}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 353, i32 2}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 356, i32 2}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 218, i32 2}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 236, i32 2}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 506, i32 2}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 507, i32 2}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 508, i32 2}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 509, i32 2}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 511, i32 2}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 512, i32 2}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 527, i32 4}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 530, i32 3}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 532, i32 3}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 535, i32 3}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 537, i32 3}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 568, i32 3}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 570, i32 3}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 399, i32 2}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 400, i32 2}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 401, i32 2}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 405, i32 2}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 406, i32 2}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 407, i32 2}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 411, i32 2}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 412, i32 2}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 413, i32 2}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 583, i32 2}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 584, i32 2}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 596, i32 3}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 597, i32 3}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 600, i32 3}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 626, i32 2}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 197, i32 2}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_sspp.c", i32 657, i32 2}
!94 = !{i32 1, !"wchar_size", i32 2}
!95 = !{i32 1, !"min_enum_size", i32 4}
!96 = !{i32 8, !"branch-target-enforcement", i32 0}
!97 = !{i32 8, !"sign-return-address", i32 0}
!98 = !{i32 8, !"sign-return-address-all", i32 0}
!99 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!100 = !{i32 7, !"uwtable", i32 1}
!101 = !{i32 7, !"frame-pointer", i32 2}
!102 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!103 = !{i8 0, i8 2}
