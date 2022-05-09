; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c_pt.bc'
source_filename = "../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.dpu_hw_blk_reg_map = type { ptr, i32, i32, i32, i32, i32 }
%struct.dpu_hw_scaler3_cfg = type { i32, i32, [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], [4 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, ptr, i32, ptr, i32, %struct.dpu_hw_scaler3_de_cfg, i32 }
%struct.dpu_hw_scaler3_de_cfg = type { i32, i16, i16, i16, i16, i16, i16, i16, i16, i16, [3 x i16], [3 x i16], [3 x i16] }
%struct.dpu_format = type { %struct.msm_format, i32, [4 x i8], [4 x i8], i32, i8, i8, i8, i8, i8, i8, i32, [1 x i32], i16, i16 }
%struct.msm_format = type { i32 }
%struct.dpu_csc_cfg = type { [9 x i32], [3 x i32], [3 x i32], [6 x i32], [6 x i32] }

@dpu_hw_util_log_mask = internal global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@.str = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"[%s:0x%X] <= 0x%X\0A\00", [45 x i8] zeroinitializer }, align 32
@dpu_reg_write.__UNIQUE_ID_ddebug338 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str, i8 0, i8 20, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"msm\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dpu_reg_write\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c\00", [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"[drm:%s:%d] [%s:0x%X] <= 0x%X\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"QSEED3_PHASE_INIT + scaler_offset\00", [62 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"QSEED3_PHASE_INIT_Y_H + scaler_offset\00", [58 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"QSEED3_PHASE_INIT_Y_V + scaler_offset\00", [58 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"QSEED3_PHASE_INIT_UV_H + scaler_offset\00", [57 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"QSEED3_PHASE_INIT_UV_V + scaler_offset\00", [57 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"QSEED3_PHASE_STEP_Y_H + scaler_offset\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"QSEED3_PHASE_STEP_Y_V + scaler_offset\00", [58 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"QSEED3_PHASE_STEP_UV_H + scaler_offset\00", [57 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"QSEED3_PHASE_STEP_UV_V + scaler_offset\00", [57 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"QSEED3_PRELOAD + scaler_offset\00", [33 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"QSEED3_SRC_SIZE_Y_RGB_A + scaler_offset\00", [56 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"QSEED3_SRC_SIZE_UV + scaler_offset\00", [61 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"QSEED3_DST_SIZE + scaler_offset\00", [32 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"QSEED3_OP_MODE + scaler_offset\00", [33 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"csc_reg_off\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csc_reg_off + 0x4\00", [46 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csc_reg_off + 0x8\00", [46 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"csc_reg_off + 0xc\00", [46 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csc_reg_off + 0x10\00", [45 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csc_reg_off + 0x14\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csc_reg_off + 0x18\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csc_reg_off + 0x1c\00", [45 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csc_reg_off + 0x20\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csc_reg_off + 0x24\00", [45 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csc_reg_off + 0x28\00", [45 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csc_reg_off + 0x2c\00", [45 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csc_reg_off + 0x30\00", [45 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csc_reg_off + 0x34\00", [45 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csc_reg_off + 0x38\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csc_reg_off + 0x3c\00", [45 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"csc_reg_off + 0x40\00", [45 x i8] zeroinitializer }, align 32
@__drm_debug = external dso_local local_unnamed_addr global i32, align 4
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"QSEED3_DE_SHARPEN + offset\00", [37 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"QSEED3_DE_SHARPEN_CTL + offset\00", [33 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"QSEED3_DE_SHAPE_CTL + offset\00", [35 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"QSEED3_DE_THRESHOLD + offset\00", [35 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"QSEED3_DE_ADJUST_DATA_0 + offset\00", [63 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"QSEED3_DE_ADJUST_DATA_1 + offset\00", [63 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"QSEED3_DE_ADJUST_DATA_2 + offset\00", [63 x i8] zeroinitializer }, align 32
@_dpu_hw_setup_scaler3_lut.off_tbl = internal constant { [5 x [4 x [2 x i32]]], [32 x i8] } { [5 x [4 x [2 x i32]]] [[4 x [2 x i32]] [[2 x i32] [i32 18, i32 0], [2 x i32] [i32 12, i32 288], [2 x i32] [i32 12, i32 480], [2 x i32] [i32 8, i32 672]], [4 x [2 x i32]] [[2 x i32] [i32 6, i32 800], [2 x i32] [i32 3, i32 992], [2 x i32] [i32 3, i32 1088], [2 x i32] [i32 3, i32 1184]], [4 x [2 x i32]] [[2 x i32] [i32 6, i32 1280], [2 x i32] [i32 3, i32 1472], [2 x i32] [i32 3, i32 1568], [2 x i32] [i32 3, i32 1664]], [4 x [2 x i32]] [[2 x i32] [i32 6, i32 896], [2 x i32] [i32 3, i32 1040], [2 x i32] [i32 3, i32 1136], [2 x i32] [i32 3, i32 1232]], [4 x [2 x i32]] [[2 x i32] [i32 6, i32 1376], [2 x i32] [i32 3, i32 1520], [2 x i32] [i32 3, i32 1616], [2 x i32] [i32 3, i32 1712]]], [32 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"lut_addr\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"QSEED3_COEF_LUT_CTRL + offset\00", [34 x i8] zeroinitializer }, align 32
@_dpu_hw_setup_scaler3lite_lut.off_tbl = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 512, i32 0, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"QSEED3LITE_DIR_FILTER_WEIGHT + offset\00", [58 x i8] zeroinitializer }, align 32
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"dpu_hw_util_log_mask\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 12, i32 12 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 82, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 322, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 324, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 326, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 328, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 330, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 334, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 337, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 340, i32 2 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 343, i32 2 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 346, i32 2 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 348, i32 2 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 350, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 352, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 366, i32 2 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 386, i32 2 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 389, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 392, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 395, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 397, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 401, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 403, i32 2 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 405, i32 2 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 409, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 411, i32 2 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 413, i32 2 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 416, i32 2 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 417, i32 2 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 418, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 421, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 422, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 423, i32 2 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 257, i32 2 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 258, i32 2 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 259, i32 2 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 260, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 261, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 262, i32 2 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 263, i32 2 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 105, i32 24 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 158, i32 6 }
@___asan_gen_.186 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 168, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant [8 x i8] c"off_tbl\00", align 1
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 180, i32 24 }
@___asan_gen_.190 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.191 = private constant [47 x i8] c"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c\00", align 1
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.191, i32 182, i32 2 }
@llvm.compiler.used = appending global [49 x ptr] [ptr @dpu_hw_util_log_mask, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @_dpu_hw_setup_scaler3_lut.off_tbl, ptr @.str.43, ptr @.str.44, ptr @_dpu_hw_setup_scaler3lite_lut.off_tbl, ptr @.str.45], section "llvm.metadata"
@0 = internal global [49 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dpu_hw_util_log_mask to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_hw_setup_scaler3_lut.off_tbl to i32), i32 160, i32 192, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.186 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @_dpu_hw_setup_scaler3lite_lut.off_tbl to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_reg_write(ptr nocapture noundef readonly %c, i32 noundef %reg_off, i32 noundef %val, ptr noundef %name) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %log_mask = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 5
  %0 = ptrtoint ptr %log_mask to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %log_mask, align 4
  %2 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and = and i32 %2, %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %do.body

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end12

do.body:                                          ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %3 = load i32, ptr @__drm_debug, align 4
  %and.i = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %do.body2, label %if.then1

if.then1:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %4 = ptrtoint ptr %blk_off to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %blk_off, align 4
  %add = add i32 %5, %reg_off
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef %name, i32 noundef %add, i32 noundef %val) #5
  br label %if.end12

do.body2:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_reg_write, %if.then7)) #5
          to label %if.end12 [label %if.then7], !srcloc !106

if.then7:                                         ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off8 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %6 = ptrtoint ptr %blk_off8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blk_off8, align 4
  %add9 = add i32 %7, %reg_off
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef %name, i32 noundef %add9, i32 noundef %val) #5
  br label %if.end12

if.end12:                                         ; preds = %if.then7, %do.body2, %if.then1, %entry.if.end12_crit_edge
  %8 = tail call i32 @llvm.bswap.i32(i32 %val)
  %9 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %c, align 4
  %blk_off13 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %11 = ptrtoint ptr %blk_off13 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blk_off13, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 %12
  %add.ptr14 = getelementptr i8, ptr %add.ptr, i32 %reg_off
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %8) #5, !srcloc !107
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_err(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_reg_read(ptr nocapture noundef readonly %c, i32 noundef %reg_off) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %blk_off = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %2 = ptrtoint ptr %blk_off to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blk_off, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 %3
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %reg_off
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #5, !srcloc !108
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  ret i32 %5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @dpu_hw_util_get_log_mask_ptr() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  ret ptr @dpu_hw_util_log_mask
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_hw_setup_scaler3(ptr noundef %c, ptr noundef readonly %scaler3_cfg, i32 noundef %scaler_offset, i32 noundef %scaler_version, ptr noundef %format) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %scaler3_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %scaler3_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.end_crit_edge, label %if.end

entry.end_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %end

if.end:                                           ; preds = %entry
  %y_rgb_filter_cfg = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 12
  %2 = ptrtoint ptr %y_rgb_filter_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %y_rgb_filter_cfg, align 4
  %and = shl i32 %3, 16
  %shl = and i32 %and, 196608
  %or1 = or i32 %shl, 1
  %tobool2.not = icmp eq ptr %format, null
  br i1 %tobool2.not, label %if.end.if.end9_crit_edge, label %land.lhs.true

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

land.lhs.true:                                    ; preds = %if.end
  %flag = getelementptr inbounds %struct.dpu_format, ptr %format, i32 0, i32 12
  %4 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %flag, align 4
  %and1.i = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool3.not = icmp eq i32 %and1.i, 0
  br i1 %tobool3.not, label %land.lhs.true.if.end9_crit_edge, label %if.then4

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end9

if.then4:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %uv_filter_cfg = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 13
  %6 = ptrtoint ptr %uv_filter_cfg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %uv_filter_cfg, align 4
  %and6 = shl i32 %7, 24
  %shl7 = and i32 %and6, 50331648
  %or5 = or i32 %shl, %shl7
  %or8 = or i32 %or5, 4097
  br label %if.end9

if.end9:                                          ; preds = %if.then4, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %op_mode.0 = phi i32 [ %or8, %if.then4 ], [ %or1, %land.lhs.true.if.end9_crit_edge ], [ %or1, %if.end.if.end9_crit_edge ]
  %blend_cfg = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 15
  %8 = ptrtoint ptr %blend_cfg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %blend_cfg, align 4
  %shl11 = shl i32 %9, 31
  %or12 = or i32 %shl11, %op_mode.0
  %dir_en = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 1
  %10 = ptrtoint ptr %dir_en to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dir_en, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool13.not = icmp eq i32 %11, 0
  %cond = select i1 %tobool13.not, i32 0, i32 16
  %or14 = or i32 %or12, %cond
  %preload_x = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 6
  %12 = ptrtoint ptr %preload_x to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %preload_x, align 4
  %and15 = and i32 %13, 127
  %preload_y = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 7
  %14 = ptrtoint ptr %preload_y to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %preload_y, align 4
  %and18 = shl i32 %15, 8
  %shl19 = and i32 %and18, 32512
  %or20 = or i32 %shl19, %and15
  %arrayidx22 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 6, i32 1
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx22, align 4
  %and23 = shl i32 %17, 16
  %shl24 = and i32 %and23, 8323072
  %or25 = or i32 %or20, %shl24
  %arrayidx27 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 7, i32 1
  %18 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx27, align 4
  %and28 = shl i32 %19, 24
  %shl29 = and i32 %and28, 2130706432
  %or30 = or i32 %or25, %shl29
  %src_width = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 8
  %20 = ptrtoint ptr %src_width to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %src_width, align 4
  %and32 = and i32 %21, 131071
  %src_height = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 9
  %22 = ptrtoint ptr %src_height to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %src_height, align 4
  %shl35 = shl i32 %23, 16
  %or36 = or i32 %shl35, %and32
  %arrayidx38 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 8, i32 1
  %24 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx38, align 4
  %and39 = and i32 %25, 131071
  %arrayidx41 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx41, align 4
  %shl43 = shl i32 %27, 16
  %or44 = or i32 %shl43, %and39
  %dst_width = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 10
  %28 = ptrtoint ptr %dst_width to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dst_width, align 4
  %and45 = and i32 %29, 131071
  %dst_height = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 11
  %30 = ptrtoint ptr %dst_height to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dst_height, align 4
  %shl47 = shl i32 %31, 16
  %or48 = or i32 %shl47, %and45
  %de = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 28
  %32 = ptrtoint ptr %de to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %de, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool50.not = icmp eq i32 %33, 0
  br i1 %tobool50.not, label %if.end9.if.end54_crit_edge, label %if.then51

if.end9.if.end54_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end54

if.then51:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @_dpu_hw_setup_scaler3_de(ptr noundef %c, ptr noundef %de, i32 noundef %scaler_offset)
  %or53 = or i32 %or14, 256
  br label %if.end54

if.end54:                                         ; preds = %if.then51, %if.end9.if.end54_crit_edge
  %op_mode.1 = phi i32 [ %or53, %if.then51 ], [ %or14, %if.end9.if.end54_crit_edge ]
  %lut_flag = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 16
  %34 = ptrtoint ptr %lut_flag to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %lut_flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool55.not = icmp eq i32 %35, 0
  br i1 %tobool55.not, label %if.end54.if.end59_crit_edge, label %if.then56

if.end54.if.end59_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end59

if.then56:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_const_cmp4(i32 8196, i32 %scaler_version)
  %cmp = icmp ult i32 %scaler_version, 8196
  br i1 %cmp, label %if.then57, label %if.end59.thread

if.then57:                                        ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @_dpu_hw_setup_scaler3_lut(ptr noundef %c, ptr noundef %scaler3_cfg, i32 noundef %scaler_offset)
  br label %if.end59

if.end59.thread:                                  ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @_dpu_hw_setup_scaler3lite_lut(ptr noundef %c, ptr noundef %scaler3_cfg, i32 noundef %scaler_offset)
  br label %if.else79

if.end59:                                         ; preds = %if.then57, %if.end54.if.end59_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4098, i32 %scaler_version)
  %cmp60 = icmp eq i32 %scaler_version, 4098
  br i1 %cmp60, label %if.then61, label %if.end59.if.else79_crit_edge

if.end59.if.else79_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.else79

if.then61:                                        ; preds = %if.end59
  %init_phase_x = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 2
  %36 = ptrtoint ptr %init_phase_x to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %init_phase_x, align 4
  %and63 = and i32 %37, 63
  %init_phase_y = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 4
  %38 = ptrtoint ptr %init_phase_y to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %init_phase_y, align 4
  %and66 = shl i32 %39, 8
  %shl67 = and i32 %and66, 16128
  %or68 = or i32 %shl67, %and63
  %arrayidx70 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 2, i32 1
  %40 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %arrayidx70, align 4
  %and71 = shl i32 %41, 16
  %shl72 = and i32 %and71, 4128768
  %or73 = or i32 %or68, %shl72
  %arrayidx75 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %arrayidx75 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx75, align 4
  %and76 = shl i32 %43, 24
  %shl77 = and i32 %and76, 1056964608
  %or78 = or i32 %or73, %shl77
  %add = add i32 %scaler_offset, 12
  %log_mask.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 5
  %44 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %log_mask.i, align 4
  %46 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i = and i32 %46, %45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then61.dpu_reg_write.exit_crit_edge, label %do.body.i

if.then61.dpu_reg_write.exit_crit_edge:           ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit

do.body.i:                                        ; preds = %if.then61
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %47 = load i32, ptr @__drm_debug, align 4
  %and.i.i = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.body2.i, label %if.then1.i

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %48 = ptrtoint ptr %blk_off.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %blk_off.i, align 4
  %add.i = add i32 %49, %add
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.5, i32 noundef %add.i, i32 noundef %or78) #5
  br label %dpu_reg_write.exit

do.body2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_setup_scaler3, %if.then7.i)) #5
          to label %dpu_reg_write.exit [label %if.then7.i], !srcloc !106

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off8.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %50 = ptrtoint ptr %blk_off8.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %blk_off8.i, align 4
  %add9.i = add i32 %51, %add
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.5, i32 noundef %add9.i, i32 noundef %or78) #5
  br label %dpu_reg_write.exit

dpu_reg_write.exit:                               ; preds = %if.then7.i, %do.body2.i, %if.then1.i, %if.then61.dpu_reg_write.exit_crit_edge
  %52 = tail call i32 @llvm.bswap.i32(i32 %or78) #5
  %53 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %c, align 4
  %blk_off13.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %55 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i = getelementptr i8, ptr %54, i32 %56
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %52) #5, !srcloc !107
  br label %if.end96

if.else79:                                        ; preds = %if.end59.if.else79_crit_edge, %if.end59.thread
  %add80 = add i32 %scaler_offset, 144
  %init_phase_x81 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 2
  %57 = ptrtoint ptr %init_phase_x81 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %init_phase_x81, align 4
  %and83 = and i32 %58, 2097151
  %log_mask.i227 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 5
  %59 = ptrtoint ptr %log_mask.i227 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %log_mask.i227, align 4
  %61 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i228 = and i32 %61, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i228)
  %tobool.not.i229 = icmp eq i32 %and.i228, 0
  br i1 %tobool.not.i229, label %if.else79.dpu_reg_write.exit243_crit_edge, label %do.body.i232

if.else79.dpu_reg_write.exit243_crit_edge:        ; preds = %if.else79
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit243

do.body.i232:                                     ; preds = %if.else79
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %62 = load i32, ptr @__drm_debug, align 4
  %and.i.i230 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i230)
  %tobool.i.not.i231 = icmp eq i32 %and.i.i230, 0
  br i1 %tobool.i.not.i231, label %do.body2.i236, label %if.then1.i235

if.then1.i235:                                    ; preds = %do.body.i232
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off.i233 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %63 = ptrtoint ptr %blk_off.i233 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %blk_off.i233, align 4
  %add.i234 = add i32 %64, %add80
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.6, i32 noundef %add.i234, i32 noundef %and83) #5
  br label %dpu_reg_write.exit243

do.body2.i236:                                    ; preds = %do.body.i232
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_setup_scaler3, %if.then7.i239)) #5
          to label %dpu_reg_write.exit243 [label %if.then7.i239], !srcloc !106

if.then7.i239:                                    ; preds = %do.body2.i236
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off8.i237 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %65 = ptrtoint ptr %blk_off8.i237 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %blk_off8.i237, align 4
  %add9.i238 = add i32 %66, %add80
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.6, i32 noundef %add9.i238, i32 noundef %and83) #5
  br label %dpu_reg_write.exit243

dpu_reg_write.exit243:                            ; preds = %if.then7.i239, %do.body2.i236, %if.then1.i235, %if.else79.dpu_reg_write.exit243_crit_edge
  %67 = tail call i32 @llvm.bswap.i32(i32 %and83) #5
  %68 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %c, align 4
  %blk_off13.i240 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %70 = ptrtoint ptr %blk_off13.i240 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %blk_off13.i240, align 4
  %add.ptr.i241 = getelementptr i8, ptr %69, i32 %71
  %add.ptr14.i242 = getelementptr i8, ptr %add.ptr.i241, i32 %add80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i242, i32 %67) #5, !srcloc !107
  %add84 = add i32 %scaler_offset, 148
  %init_phase_y85 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 4
  %72 = ptrtoint ptr %init_phase_y85 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %init_phase_y85, align 4
  %and87 = and i32 %73, 2097151
  %74 = ptrtoint ptr %log_mask.i227 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %log_mask.i227, align 4
  %76 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i245 = and i32 %76, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i245)
  %tobool.not.i246 = icmp eq i32 %and.i245, 0
  br i1 %tobool.not.i246, label %dpu_reg_write.exit243.dpu_reg_write.exit260_crit_edge, label %do.body.i249

dpu_reg_write.exit243.dpu_reg_write.exit260_crit_edge: ; preds = %dpu_reg_write.exit243
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit260

do.body.i249:                                     ; preds = %dpu_reg_write.exit243
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %77 = load i32, ptr @__drm_debug, align 4
  %and.i.i247 = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i247)
  %tobool.i.not.i248 = icmp eq i32 %and.i.i247, 0
  br i1 %tobool.i.not.i248, label %do.body2.i253, label %if.then1.i252

if.then1.i252:                                    ; preds = %do.body.i249
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %blk_off13.i240 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %blk_off13.i240, align 4
  %add.i251 = add i32 %79, %add84
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.7, i32 noundef %add.i251, i32 noundef %and87) #5
  br label %dpu_reg_write.exit260

do.body2.i253:                                    ; preds = %do.body.i249
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_setup_scaler3, %if.then7.i256)) #5
          to label %dpu_reg_write.exit260 [label %if.then7.i256], !srcloc !106

if.then7.i256:                                    ; preds = %do.body2.i253
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %blk_off13.i240 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %blk_off13.i240, align 4
  %add9.i255 = add i32 %81, %add84
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.7, i32 noundef %add9.i255, i32 noundef %and87) #5
  br label %dpu_reg_write.exit260

dpu_reg_write.exit260:                            ; preds = %if.then7.i256, %do.body2.i253, %if.then1.i252, %dpu_reg_write.exit243.dpu_reg_write.exit260_crit_edge
  %82 = tail call i32 @llvm.bswap.i32(i32 %and87) #5
  %83 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %c, align 4
  %85 = ptrtoint ptr %blk_off13.i240 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %blk_off13.i240, align 4
  %add.ptr.i258 = getelementptr i8, ptr %84, i32 %86
  %add.ptr14.i259 = getelementptr i8, ptr %add.ptr.i258, i32 %add84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i259, i32 %82) #5, !srcloc !107
  %add88 = add i32 %scaler_offset, 152
  %arrayidx90 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 2, i32 1
  %87 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %arrayidx90, align 4
  %and91 = and i32 %88, 2097151
  %89 = ptrtoint ptr %log_mask.i227 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %log_mask.i227, align 4
  %91 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i262 = and i32 %91, %90
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i262)
  %tobool.not.i263 = icmp eq i32 %and.i262, 0
  br i1 %tobool.not.i263, label %dpu_reg_write.exit260.dpu_reg_write.exit277_crit_edge, label %do.body.i266

dpu_reg_write.exit260.dpu_reg_write.exit277_crit_edge: ; preds = %dpu_reg_write.exit260
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit277

do.body.i266:                                     ; preds = %dpu_reg_write.exit260
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %92 = load i32, ptr @__drm_debug, align 4
  %and.i.i264 = and i32 %92, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i264)
  %tobool.i.not.i265 = icmp eq i32 %and.i.i264, 0
  br i1 %tobool.i.not.i265, label %do.body2.i270, label %if.then1.i269

if.then1.i269:                                    ; preds = %do.body.i266
  call void @__sanitizer_cov_trace_pc() #7
  %93 = ptrtoint ptr %blk_off13.i240 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %blk_off13.i240, align 4
  %add.i268 = add i32 %94, %add88
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.8, i32 noundef %add.i268, i32 noundef %and91) #5
  br label %dpu_reg_write.exit277

do.body2.i270:                                    ; preds = %do.body.i266
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_setup_scaler3, %if.then7.i273)) #5
          to label %dpu_reg_write.exit277 [label %if.then7.i273], !srcloc !106

if.then7.i273:                                    ; preds = %do.body2.i270
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %blk_off13.i240 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %blk_off13.i240, align 4
  %add9.i272 = add i32 %96, %add88
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.8, i32 noundef %add9.i272, i32 noundef %and91) #5
  br label %dpu_reg_write.exit277

dpu_reg_write.exit277:                            ; preds = %if.then7.i273, %do.body2.i270, %if.then1.i269, %dpu_reg_write.exit260.dpu_reg_write.exit277_crit_edge
  %97 = tail call i32 @llvm.bswap.i32(i32 %and91) #5
  %98 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %c, align 4
  %100 = ptrtoint ptr %blk_off13.i240 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %blk_off13.i240, align 4
  %add.ptr.i275 = getelementptr i8, ptr %99, i32 %101
  %add.ptr14.i276 = getelementptr i8, ptr %add.ptr.i275, i32 %add88
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i276, i32 %97) #5, !srcloc !107
  %add92 = add i32 %scaler_offset, 156
  %arrayidx94 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 4, i32 1
  %102 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %arrayidx94, align 4
  %and95 = and i32 %103, 2097151
  %104 = ptrtoint ptr %log_mask.i227 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %log_mask.i227, align 4
  %106 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i279 = and i32 %106, %105
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i279)
  %tobool.not.i280 = icmp eq i32 %and.i279, 0
  br i1 %tobool.not.i280, label %dpu_reg_write.exit277.dpu_reg_write.exit294_crit_edge, label %do.body.i283

dpu_reg_write.exit277.dpu_reg_write.exit294_crit_edge: ; preds = %dpu_reg_write.exit277
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit294

do.body.i283:                                     ; preds = %dpu_reg_write.exit277
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %107 = load i32, ptr @__drm_debug, align 4
  %and.i.i281 = and i32 %107, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i281)
  %tobool.i.not.i282 = icmp eq i32 %and.i.i281, 0
  br i1 %tobool.i.not.i282, label %do.body2.i287, label %if.then1.i286

if.then1.i286:                                    ; preds = %do.body.i283
  call void @__sanitizer_cov_trace_pc() #7
  %108 = ptrtoint ptr %blk_off13.i240 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %blk_off13.i240, align 4
  %add.i285 = add i32 %109, %add92
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.9, i32 noundef %add.i285, i32 noundef %and95) #5
  br label %dpu_reg_write.exit294

do.body2.i287:                                    ; preds = %do.body.i283
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_setup_scaler3, %if.then7.i290)) #5
          to label %dpu_reg_write.exit294 [label %if.then7.i290], !srcloc !106

if.then7.i290:                                    ; preds = %do.body2.i287
  call void @__sanitizer_cov_trace_pc() #7
  %110 = ptrtoint ptr %blk_off13.i240 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %blk_off13.i240, align 4
  %add9.i289 = add i32 %111, %add92
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.9, i32 noundef %add9.i289, i32 noundef %and95) #5
  br label %dpu_reg_write.exit294

dpu_reg_write.exit294:                            ; preds = %if.then7.i290, %do.body2.i287, %if.then1.i286, %dpu_reg_write.exit277.dpu_reg_write.exit294_crit_edge
  %112 = tail call i32 @llvm.bswap.i32(i32 %and95) #5
  %113 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %c, align 4
  %115 = ptrtoint ptr %blk_off13.i240 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %blk_off13.i240, align 4
  %add.ptr.i292 = getelementptr i8, ptr %114, i32 %116
  %add.ptr14.i293 = getelementptr i8, ptr %add.ptr.i292, i32 %add92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i293, i32 %112) #5, !srcloc !107
  br label %if.end96

if.end96:                                         ; preds = %dpu_reg_write.exit294, %dpu_reg_write.exit
  %add97 = add i32 %scaler_offset, 16
  %phase_step_x = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 3
  %117 = ptrtoint ptr %phase_step_x to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %phase_step_x, align 4
  %and99 = and i32 %118, 16777215
  %log_mask.i295 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 5
  %119 = ptrtoint ptr %log_mask.i295 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %log_mask.i295, align 4
  %121 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i296 = and i32 %121, %120
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i296)
  %tobool.not.i297 = icmp eq i32 %and.i296, 0
  br i1 %tobool.not.i297, label %if.end96.dpu_reg_write.exit311_crit_edge, label %do.body.i300

if.end96.dpu_reg_write.exit311_crit_edge:         ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit311

do.body.i300:                                     ; preds = %if.end96
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %122 = load i32, ptr @__drm_debug, align 4
  %and.i.i298 = and i32 %122, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i298)
  %tobool.i.not.i299 = icmp eq i32 %and.i.i298, 0
  br i1 %tobool.i.not.i299, label %do.body2.i304, label %if.then1.i303

if.then1.i303:                                    ; preds = %do.body.i300
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off.i301 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %123 = ptrtoint ptr %blk_off.i301 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %blk_off.i301, align 4
  %add.i302 = add i32 %124, %add97
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.10, i32 noundef %add.i302, i32 noundef %and99) #5
  br label %dpu_reg_write.exit311

do.body2.i304:                                    ; preds = %do.body.i300
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_setup_scaler3, %if.then7.i307)) #5
          to label %dpu_reg_write.exit311 [label %if.then7.i307], !srcloc !106

if.then7.i307:                                    ; preds = %do.body2.i304
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off8.i305 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %125 = ptrtoint ptr %blk_off8.i305 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %blk_off8.i305, align 4
  %add9.i306 = add i32 %126, %add97
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.10, i32 noundef %add9.i306, i32 noundef %and99) #5
  br label %dpu_reg_write.exit311

dpu_reg_write.exit311:                            ; preds = %if.then7.i307, %do.body2.i304, %if.then1.i303, %if.end96.dpu_reg_write.exit311_crit_edge
  %127 = tail call i32 @llvm.bswap.i32(i32 %and99) #5
  %128 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %c, align 4
  %blk_off13.i308 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %130 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %blk_off13.i308, align 4
  %add.ptr.i309 = getelementptr i8, ptr %129, i32 %131
  %add.ptr14.i310 = getelementptr i8, ptr %add.ptr.i309, i32 %add97
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i310, i32 %127) #5, !srcloc !107
  %add100 = add i32 %scaler_offset, 20
  %phase_step_y = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 5
  %132 = ptrtoint ptr %phase_step_y to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %phase_step_y, align 4
  %and102 = and i32 %133, 16777215
  %134 = ptrtoint ptr %log_mask.i295 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %log_mask.i295, align 4
  %136 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i313 = and i32 %136, %135
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i313)
  %tobool.not.i314 = icmp eq i32 %and.i313, 0
  br i1 %tobool.not.i314, label %dpu_reg_write.exit311.dpu_reg_write.exit328_crit_edge, label %do.body.i317

dpu_reg_write.exit311.dpu_reg_write.exit328_crit_edge: ; preds = %dpu_reg_write.exit311
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit328

do.body.i317:                                     ; preds = %dpu_reg_write.exit311
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %137 = load i32, ptr @__drm_debug, align 4
  %and.i.i315 = and i32 %137, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i315)
  %tobool.i.not.i316 = icmp eq i32 %and.i.i315, 0
  br i1 %tobool.i.not.i316, label %do.body2.i321, label %if.then1.i320

if.then1.i320:                                    ; preds = %do.body.i317
  call void @__sanitizer_cov_trace_pc() #7
  %138 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %blk_off13.i308, align 4
  %add.i319 = add i32 %139, %add100
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.11, i32 noundef %add.i319, i32 noundef %and102) #5
  br label %dpu_reg_write.exit328

do.body2.i321:                                    ; preds = %do.body.i317
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_setup_scaler3, %if.then7.i324)) #5
          to label %dpu_reg_write.exit328 [label %if.then7.i324], !srcloc !106

if.then7.i324:                                    ; preds = %do.body2.i321
  call void @__sanitizer_cov_trace_pc() #7
  %140 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %blk_off13.i308, align 4
  %add9.i323 = add i32 %141, %add100
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.11, i32 noundef %add9.i323, i32 noundef %and102) #5
  br label %dpu_reg_write.exit328

dpu_reg_write.exit328:                            ; preds = %if.then7.i324, %do.body2.i321, %if.then1.i320, %dpu_reg_write.exit311.dpu_reg_write.exit328_crit_edge
  %142 = tail call i32 @llvm.bswap.i32(i32 %and102) #5
  %143 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %c, align 4
  %145 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %blk_off13.i308, align 4
  %add.ptr.i326 = getelementptr i8, ptr %144, i32 %146
  %add.ptr14.i327 = getelementptr i8, ptr %add.ptr.i326, i32 %add100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i327, i32 %142) #5, !srcloc !107
  %add103 = add i32 %scaler_offset, 24
  %arrayidx105 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 3, i32 1
  %147 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %arrayidx105, align 4
  %and106 = and i32 %148, 16777215
  %149 = ptrtoint ptr %log_mask.i295 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %log_mask.i295, align 4
  %151 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i330 = and i32 %151, %150
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i330)
  %tobool.not.i331 = icmp eq i32 %and.i330, 0
  br i1 %tobool.not.i331, label %dpu_reg_write.exit328.dpu_reg_write.exit345_crit_edge, label %do.body.i334

dpu_reg_write.exit328.dpu_reg_write.exit345_crit_edge: ; preds = %dpu_reg_write.exit328
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit345

do.body.i334:                                     ; preds = %dpu_reg_write.exit328
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %152 = load i32, ptr @__drm_debug, align 4
  %and.i.i332 = and i32 %152, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i332)
  %tobool.i.not.i333 = icmp eq i32 %and.i.i332, 0
  br i1 %tobool.i.not.i333, label %do.body2.i338, label %if.then1.i337

if.then1.i337:                                    ; preds = %do.body.i334
  call void @__sanitizer_cov_trace_pc() #7
  %153 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %blk_off13.i308, align 4
  %add.i336 = add i32 %154, %add103
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.12, i32 noundef %add.i336, i32 noundef %and106) #5
  br label %dpu_reg_write.exit345

do.body2.i338:                                    ; preds = %do.body.i334
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_setup_scaler3, %if.then7.i341)) #5
          to label %dpu_reg_write.exit345 [label %if.then7.i341], !srcloc !106

if.then7.i341:                                    ; preds = %do.body2.i338
  call void @__sanitizer_cov_trace_pc() #7
  %155 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %blk_off13.i308, align 4
  %add9.i340 = add i32 %156, %add103
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.12, i32 noundef %add9.i340, i32 noundef %and106) #5
  br label %dpu_reg_write.exit345

dpu_reg_write.exit345:                            ; preds = %if.then7.i341, %do.body2.i338, %if.then1.i337, %dpu_reg_write.exit328.dpu_reg_write.exit345_crit_edge
  %157 = tail call i32 @llvm.bswap.i32(i32 %and106) #5
  %158 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %c, align 4
  %160 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %blk_off13.i308, align 4
  %add.ptr.i343 = getelementptr i8, ptr %159, i32 %161
  %add.ptr14.i344 = getelementptr i8, ptr %add.ptr.i343, i32 %add103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i344, i32 %157) #5, !srcloc !107
  %add107 = add i32 %scaler_offset, 28
  %arrayidx109 = getelementptr %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 5, i32 1
  %162 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx109, align 4
  %and110 = and i32 %163, 16777215
  %164 = ptrtoint ptr %log_mask.i295 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %log_mask.i295, align 4
  %166 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i347 = and i32 %166, %165
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i347)
  %tobool.not.i348 = icmp eq i32 %and.i347, 0
  br i1 %tobool.not.i348, label %dpu_reg_write.exit345.dpu_reg_write.exit362_crit_edge, label %do.body.i351

dpu_reg_write.exit345.dpu_reg_write.exit362_crit_edge: ; preds = %dpu_reg_write.exit345
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit362

do.body.i351:                                     ; preds = %dpu_reg_write.exit345
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %167 = load i32, ptr @__drm_debug, align 4
  %and.i.i349 = and i32 %167, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i349)
  %tobool.i.not.i350 = icmp eq i32 %and.i.i349, 0
  br i1 %tobool.i.not.i350, label %do.body2.i355, label %if.then1.i354

if.then1.i354:                                    ; preds = %do.body.i351
  call void @__sanitizer_cov_trace_pc() #7
  %168 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load i32, ptr %blk_off13.i308, align 4
  %add.i353 = add i32 %169, %add107
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.13, i32 noundef %add.i353, i32 noundef %and110) #5
  br label %dpu_reg_write.exit362

do.body2.i355:                                    ; preds = %do.body.i351
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_setup_scaler3, %if.then7.i358)) #5
          to label %dpu_reg_write.exit362 [label %if.then7.i358], !srcloc !106

if.then7.i358:                                    ; preds = %do.body2.i355
  call void @__sanitizer_cov_trace_pc() #7
  %170 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %blk_off13.i308, align 4
  %add9.i357 = add i32 %171, %add107
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.13, i32 noundef %add9.i357, i32 noundef %and110) #5
  br label %dpu_reg_write.exit362

dpu_reg_write.exit362:                            ; preds = %if.then7.i358, %do.body2.i355, %if.then1.i354, %dpu_reg_write.exit345.dpu_reg_write.exit362_crit_edge
  %172 = tail call i32 @llvm.bswap.i32(i32 %and110) #5
  %173 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %c, align 4
  %175 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %blk_off13.i308, align 4
  %add.ptr.i360 = getelementptr i8, ptr %174, i32 %176
  %add.ptr14.i361 = getelementptr i8, ptr %add.ptr.i360, i32 %add107
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i361, i32 %172) #5, !srcloc !107
  %add111 = add i32 %scaler_offset, 32
  %177 = ptrtoint ptr %log_mask.i295 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %log_mask.i295, align 4
  %179 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i364 = and i32 %179, %178
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i364)
  %tobool.not.i365 = icmp eq i32 %and.i364, 0
  br i1 %tobool.not.i365, label %dpu_reg_write.exit362.dpu_reg_write.exit379_crit_edge, label %do.body.i368

dpu_reg_write.exit362.dpu_reg_write.exit379_crit_edge: ; preds = %dpu_reg_write.exit362
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit379

do.body.i368:                                     ; preds = %dpu_reg_write.exit362
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %180 = load i32, ptr @__drm_debug, align 4
  %and.i.i366 = and i32 %180, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i366)
  %tobool.i.not.i367 = icmp eq i32 %and.i.i366, 0
  br i1 %tobool.i.not.i367, label %do.body2.i372, label %if.then1.i371

if.then1.i371:                                    ; preds = %do.body.i368
  call void @__sanitizer_cov_trace_pc() #7
  %181 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load i32, ptr %blk_off13.i308, align 4
  %add.i370 = add i32 %182, %add111
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.14, i32 noundef %add.i370, i32 noundef %or30) #5
  br label %dpu_reg_write.exit379

do.body2.i372:                                    ; preds = %do.body.i368
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_setup_scaler3, %if.then7.i375)) #5
          to label %dpu_reg_write.exit379 [label %if.then7.i375], !srcloc !106

if.then7.i375:                                    ; preds = %do.body2.i372
  call void @__sanitizer_cov_trace_pc() #7
  %183 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %blk_off13.i308, align 4
  %add9.i374 = add i32 %184, %add111
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.14, i32 noundef %add9.i374, i32 noundef %or30) #5
  br label %dpu_reg_write.exit379

dpu_reg_write.exit379:                            ; preds = %if.then7.i375, %do.body2.i372, %if.then1.i371, %dpu_reg_write.exit362.dpu_reg_write.exit379_crit_edge
  %185 = tail call i32 @llvm.bswap.i32(i32 %or30) #5
  %186 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %c, align 4
  %188 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %blk_off13.i308, align 4
  %add.ptr.i377 = getelementptr i8, ptr %187, i32 %189
  %add.ptr14.i378 = getelementptr i8, ptr %add.ptr.i377, i32 %add111
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i378, i32 %185) #5, !srcloc !107
  %add112 = add i32 %scaler_offset, 64
  %190 = ptrtoint ptr %log_mask.i295 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %log_mask.i295, align 4
  %192 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i381 = and i32 %192, %191
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i381)
  %tobool.not.i382 = icmp eq i32 %and.i381, 0
  br i1 %tobool.not.i382, label %dpu_reg_write.exit379.dpu_reg_write.exit396_crit_edge, label %do.body.i385

dpu_reg_write.exit379.dpu_reg_write.exit396_crit_edge: ; preds = %dpu_reg_write.exit379
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit396

do.body.i385:                                     ; preds = %dpu_reg_write.exit379
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %193 = load i32, ptr @__drm_debug, align 4
  %and.i.i383 = and i32 %193, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i383)
  %tobool.i.not.i384 = icmp eq i32 %and.i.i383, 0
  br i1 %tobool.i.not.i384, label %do.body2.i389, label %if.then1.i388

if.then1.i388:                                    ; preds = %do.body.i385
  call void @__sanitizer_cov_trace_pc() #7
  %194 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %blk_off13.i308, align 4
  %add.i387 = add i32 %195, %add112
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.15, i32 noundef %add.i387, i32 noundef %or36) #5
  br label %dpu_reg_write.exit396

do.body2.i389:                                    ; preds = %do.body.i385
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_setup_scaler3, %if.then7.i392)) #5
          to label %dpu_reg_write.exit396 [label %if.then7.i392], !srcloc !106

if.then7.i392:                                    ; preds = %do.body2.i389
  call void @__sanitizer_cov_trace_pc() #7
  %196 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %blk_off13.i308, align 4
  %add9.i391 = add i32 %197, %add112
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.15, i32 noundef %add9.i391, i32 noundef %or36) #5
  br label %dpu_reg_write.exit396

dpu_reg_write.exit396:                            ; preds = %if.then7.i392, %do.body2.i389, %if.then1.i388, %dpu_reg_write.exit379.dpu_reg_write.exit396_crit_edge
  %198 = tail call i32 @llvm.bswap.i32(i32 %or36) #5
  %199 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %c, align 4
  %201 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %blk_off13.i308, align 4
  %add.ptr.i394 = getelementptr i8, ptr %200, i32 %202
  %add.ptr14.i395 = getelementptr i8, ptr %add.ptr.i394, i32 %add112
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i395, i32 %198) #5, !srcloc !107
  %add113 = add i32 %scaler_offset, 68
  %203 = ptrtoint ptr %log_mask.i295 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load i32, ptr %log_mask.i295, align 4
  %205 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i398 = and i32 %205, %204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i398)
  %tobool.not.i399 = icmp eq i32 %and.i398, 0
  br i1 %tobool.not.i399, label %dpu_reg_write.exit396.dpu_reg_write.exit413_crit_edge, label %do.body.i402

dpu_reg_write.exit396.dpu_reg_write.exit413_crit_edge: ; preds = %dpu_reg_write.exit396
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit413

do.body.i402:                                     ; preds = %dpu_reg_write.exit396
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %206 = load i32, ptr @__drm_debug, align 4
  %and.i.i400 = and i32 %206, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i400)
  %tobool.i.not.i401 = icmp eq i32 %and.i.i400, 0
  br i1 %tobool.i.not.i401, label %do.body2.i406, label %if.then1.i405

if.then1.i405:                                    ; preds = %do.body.i402
  call void @__sanitizer_cov_trace_pc() #7
  %207 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %blk_off13.i308, align 4
  %add.i404 = add i32 %208, %add113
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.16, i32 noundef %add.i404, i32 noundef %or44) #5
  br label %dpu_reg_write.exit413

do.body2.i406:                                    ; preds = %do.body.i402
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_setup_scaler3, %if.then7.i409)) #5
          to label %dpu_reg_write.exit413 [label %if.then7.i409], !srcloc !106

if.then7.i409:                                    ; preds = %do.body2.i406
  call void @__sanitizer_cov_trace_pc() #7
  %209 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %blk_off13.i308, align 4
  %add9.i408 = add i32 %210, %add113
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.16, i32 noundef %add9.i408, i32 noundef %or44) #5
  br label %dpu_reg_write.exit413

dpu_reg_write.exit413:                            ; preds = %if.then7.i409, %do.body2.i406, %if.then1.i405, %dpu_reg_write.exit396.dpu_reg_write.exit413_crit_edge
  %211 = tail call i32 @llvm.bswap.i32(i32 %or44) #5
  %212 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %c, align 4
  %214 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %blk_off13.i308, align 4
  %add.ptr.i411 = getelementptr i8, ptr %213, i32 %215
  %add.ptr14.i412 = getelementptr i8, ptr %add.ptr.i411, i32 %add113
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i412, i32 %211) #5, !srcloc !107
  %add114 = add i32 %scaler_offset, 72
  %216 = ptrtoint ptr %log_mask.i295 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %log_mask.i295, align 4
  %218 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i415 = and i32 %218, %217
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i415)
  %tobool.not.i416 = icmp eq i32 %and.i415, 0
  br i1 %tobool.not.i416, label %dpu_reg_write.exit413.dpu_reg_write.exit430_crit_edge, label %do.body.i419

dpu_reg_write.exit413.dpu_reg_write.exit430_crit_edge: ; preds = %dpu_reg_write.exit413
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit430

do.body.i419:                                     ; preds = %dpu_reg_write.exit413
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %219 = load i32, ptr @__drm_debug, align 4
  %and.i.i417 = and i32 %219, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i417)
  %tobool.i.not.i418 = icmp eq i32 %and.i.i417, 0
  br i1 %tobool.i.not.i418, label %do.body2.i423, label %if.then1.i422

if.then1.i422:                                    ; preds = %do.body.i419
  call void @__sanitizer_cov_trace_pc() #7
  %220 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %blk_off13.i308, align 4
  %add.i421 = add i32 %221, %add114
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.17, i32 noundef %add.i421, i32 noundef %or48) #5
  br label %dpu_reg_write.exit430

do.body2.i423:                                    ; preds = %do.body.i419
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_setup_scaler3, %if.then7.i426)) #5
          to label %dpu_reg_write.exit430 [label %if.then7.i426], !srcloc !106

if.then7.i426:                                    ; preds = %do.body2.i423
  call void @__sanitizer_cov_trace_pc() #7
  %222 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load i32, ptr %blk_off13.i308, align 4
  %add9.i425 = add i32 %223, %add114
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.17, i32 noundef %add9.i425, i32 noundef %or48) #5
  br label %dpu_reg_write.exit430

dpu_reg_write.exit430:                            ; preds = %if.then7.i426, %do.body2.i423, %if.then1.i422, %dpu_reg_write.exit413.dpu_reg_write.exit430_crit_edge
  %224 = tail call i32 @llvm.bswap.i32(i32 %or48) #5
  %225 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %c, align 4
  %227 = ptrtoint ptr %blk_off13.i308 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %blk_off13.i308, align 4
  %add.ptr.i428 = getelementptr i8, ptr %226, i32 %228
  %add.ptr14.i429 = getelementptr i8, ptr %add.ptr.i428, i32 %add114
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i429, i32 %224) #5, !srcloc !107
  br label %end

end:                                              ; preds = %dpu_reg_write.exit430, %entry.end_crit_edge
  %op_mode.2 = phi i32 [ %op_mode.1, %dpu_reg_write.exit430 ], [ 0, %entry.end_crit_edge ]
  %tobool115.not = icmp eq ptr %format, null
  br i1 %tobool115.not, label %end.if.end141_crit_edge, label %land.lhs.true125

end.if.end141_crit_edge:                          ; preds = %end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end141

land.lhs.true125:                                 ; preds = %end
  %flag117 = getelementptr inbounds %struct.dpu_format, ptr %format, i32 0, i32 12
  %229 = ptrtoint ptr %flag117 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load volatile i32, ptr %flag117, align 4
  %231 = shl i32 %230, 13
  %232 = and i32 %231, 16384
  %233 = xor i32 %232, 16384
  %234 = or i32 %233, %op_mode.2
  %alpha_enable = getelementptr inbounds %struct.dpu_format, ptr %format, i32 0, i32 9
  %235 = ptrtoint ptr %alpha_enable to i32
  call void @__asan_load1_noabort(i32 %235)
  %236 = load i8, ptr %alpha_enable, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %236)
  %tobool126.not = icmp eq i8 %236, 0
  br i1 %tobool126.not, label %land.lhs.true125.if.end141_crit_edge, label %if.then127

land.lhs.true125.if.end141_crit_edge:             ; preds = %land.lhs.true125
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end141

if.then127:                                       ; preds = %land.lhs.true125
  %or128 = or i32 %234, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 4098, i32 %scaler_version)
  %cmp129 = icmp eq i32 %scaler_version, 4098
  %alpha_filter_cfg = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 14
  %237 = ptrtoint ptr %alpha_filter_cfg to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %alpha_filter_cfg, align 4
  br i1 %cmp129, label %if.then131, label %if.else135

if.then131:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #7
  %and132 = shl i32 %238, 30
  %shl133 = and i32 %and132, 1073741824
  %or134 = or i32 %shl133, %or128
  br label %if.end141

if.else135:                                       ; preds = %if.then127
  call void @__sanitizer_cov_trace_pc() #7
  %and137 = shl i32 %238, 29
  %shl138 = and i32 %and137, 1610612736
  %or139 = or i32 %shl138, %or128
  br label %if.end141

if.end141:                                        ; preds = %if.else135, %if.then131, %land.lhs.true125.if.end141_crit_edge, %end.if.end141_crit_edge
  %op_mode.4 = phi i32 [ %or134, %if.then131 ], [ %or139, %if.else135 ], [ %234, %land.lhs.true125.if.end141_crit_edge ], [ %op_mode.2, %end.if.end141_crit_edge ]
  %add142 = add i32 %scaler_offset, 4
  %log_mask.i431 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 5
  %239 = ptrtoint ptr %log_mask.i431 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %log_mask.i431, align 4
  %241 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i432 = and i32 %241, %240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i432)
  %tobool.not.i433 = icmp eq i32 %and.i432, 0
  br i1 %tobool.not.i433, label %if.end141.dpu_reg_write.exit447_crit_edge, label %do.body.i436

if.end141.dpu_reg_write.exit447_crit_edge:        ; preds = %if.end141
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit447

do.body.i436:                                     ; preds = %if.end141
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %242 = load i32, ptr @__drm_debug, align 4
  %and.i.i434 = and i32 %242, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i434)
  %tobool.i.not.i435 = icmp eq i32 %and.i.i434, 0
  br i1 %tobool.i.not.i435, label %do.body2.i440, label %if.then1.i439

if.then1.i439:                                    ; preds = %do.body.i436
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off.i437 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %243 = ptrtoint ptr %blk_off.i437 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %blk_off.i437, align 4
  %add.i438 = add i32 %244, %add142
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.18, i32 noundef %add.i438, i32 noundef %op_mode.4) #5
  br label %dpu_reg_write.exit447

do.body2.i440:                                    ; preds = %do.body.i436
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_setup_scaler3, %if.then7.i443)) #5
          to label %dpu_reg_write.exit447 [label %if.then7.i443], !srcloc !106

if.then7.i443:                                    ; preds = %do.body2.i440
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off8.i441 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %245 = ptrtoint ptr %blk_off8.i441 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %blk_off8.i441, align 4
  %add9.i442 = add i32 %246, %add142
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.18, i32 noundef %add9.i442, i32 noundef %op_mode.4) #5
  br label %dpu_reg_write.exit447

dpu_reg_write.exit447:                            ; preds = %if.then7.i443, %do.body2.i440, %if.then1.i439, %if.end141.dpu_reg_write.exit447_crit_edge
  %247 = tail call i32 @llvm.bswap.i32(i32 %op_mode.4) #5
  %248 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %248)
  %249 = load ptr, ptr %c, align 4
  %blk_off13.i444 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %250 = ptrtoint ptr %blk_off13.i444 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %blk_off13.i444, align 4
  %add.ptr.i445 = getelementptr i8, ptr %249, i32 %251
  %add.ptr14.i446 = getelementptr i8, ptr %add.ptr.i445, i32 %add142
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i446, i32 %247) #5, !srcloc !107
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dpu_hw_setup_scaler3_de(ptr noundef readonly %c, ptr nocapture noundef readonly %de_cfg, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %de_cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %de_cfg, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %sharpen_level1 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 1
  %2 = ptrtoint ptr %sharpen_level1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %sharpen_level1, align 4
  %4 = and i16 %3, 511
  %and = zext i16 %4 to i32
  %sharpen_level2 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 2
  %5 = ptrtoint ptr %sharpen_level2 to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %sharpen_level2, align 2
  %7 = and i16 %6, 511
  %and2 = zext i16 %7 to i32
  %shl = shl nuw nsw i32 %and2, 16
  %or = or i32 %shl, %and
  %limit = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 4
  %8 = ptrtoint ptr %limit to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %limit, align 2
  %10 = shl i16 %9, 9
  %11 = and i16 %10, 7680
  %prec_shift = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 9
  %12 = ptrtoint ptr %prec_shift to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %prec_shift, align 4
  %14 = shl i16 %13, 13
  %or9117 = or i16 %11, %14
  %or9 = zext i16 %or9117 to i32
  %clip = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 3
  %15 = ptrtoint ptr %clip to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %clip, align 4
  %17 = and i16 %16, 7
  %and11 = zext i16 %17 to i32
  %shl12 = shl nuw nsw i32 %and11, 16
  %or13 = or i32 %shl12, %or9
  %thr_quiet = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 5
  %18 = ptrtoint ptr %thr_quiet to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %thr_quiet, align 4
  %20 = and i16 %19, 255
  %and15 = zext i16 %20 to i32
  %thr_dieout = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 6
  %21 = ptrtoint ptr %thr_dieout to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %thr_dieout, align 2
  %23 = and i16 %22, 1023
  %and17 = zext i16 %23 to i32
  %shl18 = shl nuw nsw i32 %and17, 16
  %or19 = or i32 %shl18, %and15
  %thr_low = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 7
  %24 = ptrtoint ptr %thr_low to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %thr_low, align 4
  %26 = and i16 %25, 1023
  %and21 = zext i16 %26 to i32
  %thr_high = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 8
  %27 = ptrtoint ptr %thr_high to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %thr_high, align 2
  %29 = and i16 %28, 1023
  %and23 = zext i16 %29 to i32
  %shl24 = shl nuw nsw i32 %and23, 16
  %or25 = or i32 %shl24, %and21
  %adjust_a26 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 10
  %30 = ptrtoint ptr %adjust_a26 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %adjust_a26, align 2
  %32 = and i16 %31, 1023
  %and28 = zext i16 %32 to i32
  %arrayidx30 = getelementptr %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 10, i32 1
  %33 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx30, align 2
  %35 = and i16 %34, 1023
  %and32 = zext i16 %35 to i32
  %shl33 = shl nuw nsw i32 %and32, 10
  %or34 = or i32 %shl33, %and28
  %arrayidx36 = getelementptr %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 10, i32 2
  %36 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %arrayidx36, align 2
  %38 = and i16 %37, 1023
  %and38 = zext i16 %38 to i32
  %shl39 = shl nuw nsw i32 %and38, 20
  %or40 = or i32 %or34, %shl39
  %adjust_b41 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 11
  %39 = ptrtoint ptr %adjust_b41 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %adjust_b41, align 4
  %41 = and i16 %40, 1023
  %and44 = zext i16 %41 to i32
  %arrayidx46 = getelementptr %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 11, i32 1
  %42 = ptrtoint ptr %arrayidx46 to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %arrayidx46, align 2
  %44 = and i16 %43, 1023
  %and48 = zext i16 %44 to i32
  %shl49 = shl nuw nsw i32 %and48, 10
  %or50 = or i32 %shl49, %and44
  %arrayidx52 = getelementptr %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 11, i32 2
  %45 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %arrayidx52, align 4
  %47 = and i16 %46, 1023
  %and54 = zext i16 %47 to i32
  %shl55 = shl nuw nsw i32 %and54, 20
  %or56 = or i32 %or50, %shl55
  %adjust_c57 = getelementptr inbounds %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 12
  %48 = ptrtoint ptr %adjust_c57 to i32
  call void @__asan_load2_noabort(i32 %48)
  %49 = load i16, ptr %adjust_c57, align 2
  %50 = and i16 %49, 1023
  %and60 = zext i16 %50 to i32
  %arrayidx62 = getelementptr %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 12, i32 1
  %51 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %arrayidx62, align 2
  %53 = and i16 %52, 1023
  %and64 = zext i16 %53 to i32
  %shl65 = shl nuw nsw i32 %and64, 10
  %or66 = or i32 %shl65, %and60
  %arrayidx68 = getelementptr %struct.dpu_hw_scaler3_de_cfg, ptr %de_cfg, i32 0, i32 12, i32 2
  %54 = ptrtoint ptr %arrayidx68 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %arrayidx68, align 2
  %56 = and i16 %55, 1023
  %and70 = zext i16 %56 to i32
  %shl71 = shl nuw nsw i32 %and70, 20
  %or72 = or i32 %or66, %shl71
  %add = add i32 %offset, 36
  %log_mask.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 5
  %57 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %log_mask.i, align 4
  %59 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i = and i32 %59, %58
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.dpu_reg_write.exit_crit_edge, label %do.body.i

if.end.dpu_reg_write.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit

do.body.i:                                        ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %60 = load i32, ptr @__drm_debug, align 4
  %and.i.i = and i32 %60, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.body2.i, label %if.then1.i

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %61 = ptrtoint ptr %blk_off.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %blk_off.i, align 4
  %add.i = add i32 %62, %add
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.36, i32 noundef %add.i, i32 noundef %or) #5
  br label %dpu_reg_write.exit

do.body2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_hw_setup_scaler3_de, %if.then7.i)) #5
          to label %dpu_reg_write.exit [label %if.then7.i], !srcloc !106

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off8.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %63 = ptrtoint ptr %blk_off8.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %blk_off8.i, align 4
  %add9.i = add i32 %64, %add
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.36, i32 noundef %add9.i, i32 noundef %or) #5
  br label %dpu_reg_write.exit

dpu_reg_write.exit:                               ; preds = %if.then7.i, %do.body2.i, %if.then1.i, %if.end.dpu_reg_write.exit_crit_edge
  %65 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %66 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %c, align 4
  %blk_off13.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %68 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i = getelementptr i8, ptr %67, i32 %69
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %65) #5, !srcloc !107
  %add73 = add i32 %offset, 40
  %70 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %log_mask.i, align 4
  %72 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i128 = and i32 %72, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i128)
  %tobool.not.i129 = icmp eq i32 %and.i128, 0
  br i1 %tobool.not.i129, label %dpu_reg_write.exit.dpu_reg_write.exit143_crit_edge, label %do.body.i132

dpu_reg_write.exit.dpu_reg_write.exit143_crit_edge: ; preds = %dpu_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit143

do.body.i132:                                     ; preds = %dpu_reg_write.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %73 = load i32, ptr @__drm_debug, align 4
  %and.i.i130 = and i32 %73, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i130)
  %tobool.i.not.i131 = icmp eq i32 %and.i.i130, 0
  br i1 %tobool.i.not.i131, label %do.body2.i136, label %if.then1.i135

if.then1.i135:                                    ; preds = %do.body.i132
  call void @__sanitizer_cov_trace_pc() #7
  %74 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %blk_off13.i, align 4
  %add.i134 = add i32 %75, %add73
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.37, i32 noundef %add.i134, i32 noundef %or13) #5
  br label %dpu_reg_write.exit143

do.body2.i136:                                    ; preds = %do.body.i132
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_hw_setup_scaler3_de, %if.then7.i139)) #5
          to label %dpu_reg_write.exit143 [label %if.then7.i139], !srcloc !106

if.then7.i139:                                    ; preds = %do.body2.i136
  call void @__sanitizer_cov_trace_pc() #7
  %76 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %blk_off13.i, align 4
  %add9.i138 = add i32 %77, %add73
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.37, i32 noundef %add9.i138, i32 noundef %or13) #5
  br label %dpu_reg_write.exit143

dpu_reg_write.exit143:                            ; preds = %if.then7.i139, %do.body2.i136, %if.then1.i135, %dpu_reg_write.exit.dpu_reg_write.exit143_crit_edge
  %78 = tail call i32 @llvm.bswap.i32(i32 %or13) #5
  %79 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %c, align 4
  %81 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i141 = getelementptr i8, ptr %80, i32 %82
  %add.ptr14.i142 = getelementptr i8, ptr %add.ptr.i141, i32 %add73
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i142, i32 %78) #5, !srcloc !107
  %add74 = add i32 %offset, 44
  %83 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %log_mask.i, align 4
  %85 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i145 = and i32 %85, %84
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i145)
  %tobool.not.i146 = icmp eq i32 %and.i145, 0
  br i1 %tobool.not.i146, label %dpu_reg_write.exit143.dpu_reg_write.exit160_crit_edge, label %do.body.i149

dpu_reg_write.exit143.dpu_reg_write.exit160_crit_edge: ; preds = %dpu_reg_write.exit143
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit160

do.body.i149:                                     ; preds = %dpu_reg_write.exit143
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %86 = load i32, ptr @__drm_debug, align 4
  %and.i.i147 = and i32 %86, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i147)
  %tobool.i.not.i148 = icmp eq i32 %and.i.i147, 0
  br i1 %tobool.i.not.i148, label %do.body2.i153, label %if.then1.i152

if.then1.i152:                                    ; preds = %do.body.i149
  call void @__sanitizer_cov_trace_pc() #7
  %87 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %blk_off13.i, align 4
  %add.i151 = add i32 %88, %add74
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.38, i32 noundef %add.i151, i32 noundef %or19) #5
  br label %dpu_reg_write.exit160

do.body2.i153:                                    ; preds = %do.body.i149
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_hw_setup_scaler3_de, %if.then7.i156)) #5
          to label %dpu_reg_write.exit160 [label %if.then7.i156], !srcloc !106

if.then7.i156:                                    ; preds = %do.body2.i153
  call void @__sanitizer_cov_trace_pc() #7
  %89 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %blk_off13.i, align 4
  %add9.i155 = add i32 %90, %add74
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.38, i32 noundef %add9.i155, i32 noundef %or19) #5
  br label %dpu_reg_write.exit160

dpu_reg_write.exit160:                            ; preds = %if.then7.i156, %do.body2.i153, %if.then1.i152, %dpu_reg_write.exit143.dpu_reg_write.exit160_crit_edge
  %91 = tail call i32 @llvm.bswap.i32(i32 %or19) #5
  %92 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %c, align 4
  %94 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i158 = getelementptr i8, ptr %93, i32 %95
  %add.ptr14.i159 = getelementptr i8, ptr %add.ptr.i158, i32 %add74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i159, i32 %91) #5, !srcloc !107
  %add75 = add i32 %offset, 48
  %96 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %log_mask.i, align 4
  %98 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i162 = and i32 %98, %97
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i162)
  %tobool.not.i163 = icmp eq i32 %and.i162, 0
  br i1 %tobool.not.i163, label %dpu_reg_write.exit160.dpu_reg_write.exit177_crit_edge, label %do.body.i166

dpu_reg_write.exit160.dpu_reg_write.exit177_crit_edge: ; preds = %dpu_reg_write.exit160
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit177

do.body.i166:                                     ; preds = %dpu_reg_write.exit160
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %99 = load i32, ptr @__drm_debug, align 4
  %and.i.i164 = and i32 %99, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i164)
  %tobool.i.not.i165 = icmp eq i32 %and.i.i164, 0
  br i1 %tobool.i.not.i165, label %do.body2.i170, label %if.then1.i169

if.then1.i169:                                    ; preds = %do.body.i166
  call void @__sanitizer_cov_trace_pc() #7
  %100 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %blk_off13.i, align 4
  %add.i168 = add i32 %101, %add75
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.39, i32 noundef %add.i168, i32 noundef %or25) #5
  br label %dpu_reg_write.exit177

do.body2.i170:                                    ; preds = %do.body.i166
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_hw_setup_scaler3_de, %if.then7.i173)) #5
          to label %dpu_reg_write.exit177 [label %if.then7.i173], !srcloc !106

if.then7.i173:                                    ; preds = %do.body2.i170
  call void @__sanitizer_cov_trace_pc() #7
  %102 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %blk_off13.i, align 4
  %add9.i172 = add i32 %103, %add75
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.39, i32 noundef %add9.i172, i32 noundef %or25) #5
  br label %dpu_reg_write.exit177

dpu_reg_write.exit177:                            ; preds = %if.then7.i173, %do.body2.i170, %if.then1.i169, %dpu_reg_write.exit160.dpu_reg_write.exit177_crit_edge
  %104 = tail call i32 @llvm.bswap.i32(i32 %or25) #5
  %105 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %c, align 4
  %107 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i175 = getelementptr i8, ptr %106, i32 %108
  %add.ptr14.i176 = getelementptr i8, ptr %add.ptr.i175, i32 %add75
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i176, i32 %104) #5, !srcloc !107
  %add76 = add i32 %offset, 52
  %109 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %log_mask.i, align 4
  %111 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i179 = and i32 %111, %110
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i179)
  %tobool.not.i180 = icmp eq i32 %and.i179, 0
  br i1 %tobool.not.i180, label %dpu_reg_write.exit177.dpu_reg_write.exit194_crit_edge, label %do.body.i183

dpu_reg_write.exit177.dpu_reg_write.exit194_crit_edge: ; preds = %dpu_reg_write.exit177
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit194

do.body.i183:                                     ; preds = %dpu_reg_write.exit177
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %112 = load i32, ptr @__drm_debug, align 4
  %and.i.i181 = and i32 %112, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i181)
  %tobool.i.not.i182 = icmp eq i32 %and.i.i181, 0
  br i1 %tobool.i.not.i182, label %do.body2.i187, label %if.then1.i186

if.then1.i186:                                    ; preds = %do.body.i183
  call void @__sanitizer_cov_trace_pc() #7
  %113 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %blk_off13.i, align 4
  %add.i185 = add i32 %114, %add76
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.40, i32 noundef %add.i185, i32 noundef %or40) #5
  br label %dpu_reg_write.exit194

do.body2.i187:                                    ; preds = %do.body.i183
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_hw_setup_scaler3_de, %if.then7.i190)) #5
          to label %dpu_reg_write.exit194 [label %if.then7.i190], !srcloc !106

if.then7.i190:                                    ; preds = %do.body2.i187
  call void @__sanitizer_cov_trace_pc() #7
  %115 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %blk_off13.i, align 4
  %add9.i189 = add i32 %116, %add76
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.40, i32 noundef %add9.i189, i32 noundef %or40) #5
  br label %dpu_reg_write.exit194

dpu_reg_write.exit194:                            ; preds = %if.then7.i190, %do.body2.i187, %if.then1.i186, %dpu_reg_write.exit177.dpu_reg_write.exit194_crit_edge
  %117 = tail call i32 @llvm.bswap.i32(i32 %or40) #5
  %118 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %c, align 4
  %120 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i192 = getelementptr i8, ptr %119, i32 %121
  %add.ptr14.i193 = getelementptr i8, ptr %add.ptr.i192, i32 %add76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i193, i32 %117) #5, !srcloc !107
  %add77 = add i32 %offset, 56
  %122 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %log_mask.i, align 4
  %124 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i196 = and i32 %124, %123
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i196)
  %tobool.not.i197 = icmp eq i32 %and.i196, 0
  br i1 %tobool.not.i197, label %dpu_reg_write.exit194.dpu_reg_write.exit211_crit_edge, label %do.body.i200

dpu_reg_write.exit194.dpu_reg_write.exit211_crit_edge: ; preds = %dpu_reg_write.exit194
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit211

do.body.i200:                                     ; preds = %dpu_reg_write.exit194
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %125 = load i32, ptr @__drm_debug, align 4
  %and.i.i198 = and i32 %125, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i198)
  %tobool.i.not.i199 = icmp eq i32 %and.i.i198, 0
  br i1 %tobool.i.not.i199, label %do.body2.i204, label %if.then1.i203

if.then1.i203:                                    ; preds = %do.body.i200
  call void @__sanitizer_cov_trace_pc() #7
  %126 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %blk_off13.i, align 4
  %add.i202 = add i32 %127, %add77
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.41, i32 noundef %add.i202, i32 noundef %or56) #5
  br label %dpu_reg_write.exit211

do.body2.i204:                                    ; preds = %do.body.i200
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_hw_setup_scaler3_de, %if.then7.i207)) #5
          to label %dpu_reg_write.exit211 [label %if.then7.i207], !srcloc !106

if.then7.i207:                                    ; preds = %do.body2.i204
  call void @__sanitizer_cov_trace_pc() #7
  %128 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %blk_off13.i, align 4
  %add9.i206 = add i32 %129, %add77
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.41, i32 noundef %add9.i206, i32 noundef %or56) #5
  br label %dpu_reg_write.exit211

dpu_reg_write.exit211:                            ; preds = %if.then7.i207, %do.body2.i204, %if.then1.i203, %dpu_reg_write.exit194.dpu_reg_write.exit211_crit_edge
  %130 = tail call i32 @llvm.bswap.i32(i32 %or56) #5
  %131 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %c, align 4
  %133 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i209 = getelementptr i8, ptr %132, i32 %134
  %add.ptr14.i210 = getelementptr i8, ptr %add.ptr.i209, i32 %add77
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i210, i32 %130) #5, !srcloc !107
  %add78 = add i32 %offset, 60
  %135 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %log_mask.i, align 4
  %137 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i213 = and i32 %137, %136
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i213)
  %tobool.not.i214 = icmp eq i32 %and.i213, 0
  br i1 %tobool.not.i214, label %dpu_reg_write.exit211.dpu_reg_write.exit228_crit_edge, label %do.body.i217

dpu_reg_write.exit211.dpu_reg_write.exit228_crit_edge: ; preds = %dpu_reg_write.exit211
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit228

do.body.i217:                                     ; preds = %dpu_reg_write.exit211
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %138 = load i32, ptr @__drm_debug, align 4
  %and.i.i215 = and i32 %138, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i215)
  %tobool.i.not.i216 = icmp eq i32 %and.i.i215, 0
  br i1 %tobool.i.not.i216, label %do.body2.i221, label %if.then1.i220

if.then1.i220:                                    ; preds = %do.body.i217
  call void @__sanitizer_cov_trace_pc() #7
  %139 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %blk_off13.i, align 4
  %add.i219 = add i32 %140, %add78
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.42, i32 noundef %add.i219, i32 noundef %or72) #5
  br label %dpu_reg_write.exit228

do.body2.i221:                                    ; preds = %do.body.i217
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_hw_setup_scaler3_de, %if.then7.i224)) #5
          to label %dpu_reg_write.exit228 [label %if.then7.i224], !srcloc !106

if.then7.i224:                                    ; preds = %do.body2.i221
  call void @__sanitizer_cov_trace_pc() #7
  %141 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %blk_off13.i, align 4
  %add9.i223 = add i32 %142, %add78
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.42, i32 noundef %add9.i223, i32 noundef %or72) #5
  br label %dpu_reg_write.exit228

dpu_reg_write.exit228:                            ; preds = %if.then7.i224, %do.body2.i221, %if.then1.i220, %dpu_reg_write.exit211.dpu_reg_write.exit228_crit_edge
  %143 = tail call i32 @llvm.bswap.i32(i32 %or72) #5
  %144 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %c, align 4
  %146 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i226 = getelementptr i8, ptr %145, i32 %147
  %add.ptr14.i227 = getelementptr i8, ptr %add.ptr.i226, i32 %add78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i227, i32 %143) #5, !srcloc !107
  br label %cleanup

cleanup:                                          ; preds = %dpu_reg_write.exit228, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dpu_hw_setup_scaler3_lut(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %scaler3_cfg, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  %lut_flags = alloca i32, align 4
  %lut = alloca [5 x ptr], align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lut_flags)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %lut) #5
  %0 = call ptr @memset(ptr %lut, i32 0, i32 20)
  %lut_flag = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 16
  %1 = ptrtoint ptr %lut_flag to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %lut_flag, align 4
  %3 = ptrtoint ptr %lut_flags to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %lut_flags, align 4
  %lut_flags.0.lut_flags.0. = load volatile i32, ptr %lut_flags, align 4
  %4 = and i32 %lut_flags.0.lut_flags.0., 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %dir_len = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 23
  %5 = ptrtoint ptr %dir_len to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dir_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 800, i32 %6)
  %cmp = icmp eq i32 %6, 800
  br i1 %cmp, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  %dir_lut = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 22
  %7 = ptrtoint ptr %dir_lut to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dir_lut, align 4
  %9 = ptrtoint ptr %lut to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %lut, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %config_lut.0 = phi i32 [ 1, %if.then ], [ 0, %land.lhs.true.if.end_crit_edge ], [ 0, %entry.if.end_crit_edge ]
  %10 = ptrtoint ptr %lut_flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %lut_flags.0.lut_flags.0.146 = load volatile i32, ptr %lut_flags, align 4
  %11 = and i32 %lut_flags.0.lut_flags.0.146, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool2.not = icmp eq i32 %11, 0
  br i1 %tobool2.not, label %if.end.if.end10_crit_edge, label %land.lhs.true3

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

land.lhs.true3:                                   ; preds = %if.end
  %y_rgb_cir_lut_idx = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 18
  %12 = ptrtoint ptr %y_rgb_cir_lut_idx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %y_rgb_cir_lut_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %13)
  %cmp4 = icmp ult i32 %13, 9
  br i1 %cmp4, label %land.lhs.true5, label %land.lhs.true3.if.end10_crit_edge

land.lhs.true3.if.end10_crit_edge:                ; preds = %land.lhs.true3
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

land.lhs.true5:                                   ; preds = %land.lhs.true3
  %cir_len = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 25
  %14 = ptrtoint ptr %cir_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cir_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2160, i32 %15)
  %cmp6 = icmp eq i32 %15, 2160
  br i1 %cmp6, label %if.then7, label %land.lhs.true5.if.end10_crit_edge

land.lhs.true5.if.end10_crit_edge:                ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end10

if.then7:                                         ; preds = %land.lhs.true5
  call void @__sanitizer_cov_trace_pc() #7
  %cir_lut = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 24
  %16 = ptrtoint ptr %cir_lut to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cir_lut, align 4
  %mul = mul nuw nsw i32 %13, 60
  %add.ptr = getelementptr i32, ptr %17, i32 %mul
  %arrayidx9 = getelementptr inbounds [5 x ptr], ptr %lut, i32 0, i32 1
  %18 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr, ptr %arrayidx9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then7, %land.lhs.true5.if.end10_crit_edge, %land.lhs.true3.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %config_lut.1 = phi i32 [ 1, %if.then7 ], [ %config_lut.0, %land.lhs.true5.if.end10_crit_edge ], [ %config_lut.0, %land.lhs.true3.if.end10_crit_edge ], [ %config_lut.0, %if.end.if.end10_crit_edge ]
  %19 = ptrtoint ptr %lut_flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %lut_flags.0.lut_flags.0.147 = load volatile i32, ptr %lut_flags, align 4
  %20 = and i32 %lut_flags.0.lut_flags.0.147, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool12.not = icmp eq i32 %20, 0
  br i1 %tobool12.not, label %if.end10.if.end24_crit_edge, label %land.lhs.true13

if.end10.if.end24_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

land.lhs.true13:                                  ; preds = %if.end10
  %uv_cir_lut_idx = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 19
  %21 = ptrtoint ptr %uv_cir_lut_idx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %uv_cir_lut_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %22)
  %cmp14 = icmp ult i32 %22, 9
  br i1 %cmp14, label %land.lhs.true15, label %land.lhs.true13.if.end24_crit_edge

land.lhs.true13.if.end24_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

land.lhs.true15:                                  ; preds = %land.lhs.true13
  %cir_len16 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 25
  %23 = ptrtoint ptr %cir_len16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cir_len16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2160, i32 %24)
  %cmp17 = icmp eq i32 %24, 2160
  br i1 %cmp17, label %if.then18, label %land.lhs.true15.if.end24_crit_edge

land.lhs.true15.if.end24_crit_edge:               ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end24

if.then18:                                        ; preds = %land.lhs.true15
  call void @__sanitizer_cov_trace_pc() #7
  %cir_lut19 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 24
  %25 = ptrtoint ptr %cir_lut19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %cir_lut19, align 4
  %mul21 = mul nuw nsw i32 %22, 60
  %add.ptr22 = getelementptr i32, ptr %26, i32 %mul21
  %arrayidx23 = getelementptr inbounds [5 x ptr], ptr %lut, i32 0, i32 2
  %27 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr22, ptr %arrayidx23, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %land.lhs.true15.if.end24_crit_edge, %land.lhs.true13.if.end24_crit_edge, %if.end10.if.end24_crit_edge
  %config_lut.2 = phi i32 [ 1, %if.then18 ], [ %config_lut.1, %land.lhs.true15.if.end24_crit_edge ], [ %config_lut.1, %land.lhs.true13.if.end24_crit_edge ], [ %config_lut.1, %if.end10.if.end24_crit_edge ]
  %28 = ptrtoint ptr %lut_flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %lut_flags.0.lut_flags.0.148 = load volatile i32, ptr %lut_flags, align 4
  %29 = and i32 %lut_flags.0.lut_flags.0.148, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %tobool26.not = icmp eq i32 %29, 0
  br i1 %tobool26.not, label %if.end24.if.end36_crit_edge, label %land.lhs.true27

if.end24.if.end36_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

land.lhs.true27:                                  ; preds = %if.end24
  %y_rgb_sep_lut_idx = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 20
  %30 = ptrtoint ptr %y_rgb_sep_lut_idx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %y_rgb_sep_lut_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %31)
  %cmp28 = icmp ult i32 %31, 10
  br i1 %cmp28, label %land.lhs.true29, label %land.lhs.true27.if.end36_crit_edge

land.lhs.true27.if.end36_crit_edge:               ; preds = %land.lhs.true27
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

land.lhs.true29:                                  ; preds = %land.lhs.true27
  %sep_len = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 27
  %32 = ptrtoint ptr %sep_len to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sep_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2400, i32 %33)
  %cmp30 = icmp eq i32 %33, 2400
  br i1 %cmp30, label %if.then31, label %land.lhs.true29.if.end36_crit_edge

land.lhs.true29.if.end36_crit_edge:               ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end36

if.then31:                                        ; preds = %land.lhs.true29
  call void @__sanitizer_cov_trace_pc() #7
  %sep_lut = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 26
  %34 = ptrtoint ptr %sep_lut to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sep_lut, align 4
  %mul33 = mul nuw nsw i32 %31, 60
  %add.ptr34 = getelementptr i32, ptr %35, i32 %mul33
  %arrayidx35 = getelementptr inbounds [5 x ptr], ptr %lut, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %add.ptr34, ptr %arrayidx35, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then31, %land.lhs.true29.if.end36_crit_edge, %land.lhs.true27.if.end36_crit_edge, %if.end24.if.end36_crit_edge
  %config_lut.3 = phi i32 [ 1, %if.then31 ], [ %config_lut.2, %land.lhs.true29.if.end36_crit_edge ], [ %config_lut.2, %land.lhs.true27.if.end36_crit_edge ], [ %config_lut.2, %if.end24.if.end36_crit_edge ]
  %37 = ptrtoint ptr %lut_flags to i32
  call void @__asan_load4_noabort(i32 %37)
  %lut_flags.0.lut_flags.0.149 = load volatile i32, ptr %lut_flags, align 4
  %38 = and i32 %lut_flags.0.lut_flags.0.149, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool38.not = icmp eq i32 %38, 0
  br i1 %tobool38.not, label %if.end36.if.end50_crit_edge, label %land.lhs.true39

if.end36.if.end50_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

land.lhs.true39:                                  ; preds = %if.end36
  %uv_sep_lut_idx = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 21
  %39 = ptrtoint ptr %uv_sep_lut_idx to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %uv_sep_lut_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %40)
  %cmp40 = icmp ult i32 %40, 10
  br i1 %cmp40, label %land.lhs.true41, label %land.lhs.true39.if.end50_crit_edge

land.lhs.true39.if.end50_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

land.lhs.true41:                                  ; preds = %land.lhs.true39
  %sep_len42 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 27
  %41 = ptrtoint ptr %sep_len42 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %sep_len42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2400, i32 %42)
  %cmp43 = icmp eq i32 %42, 2400
  br i1 %cmp43, label %if.end50.thread, label %land.lhs.true41.if.end50_crit_edge

land.lhs.true41.if.end50_crit_edge:               ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end50

if.end50.thread:                                  ; preds = %land.lhs.true41
  call void @__sanitizer_cov_trace_pc() #7
  %sep_lut45 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 26
  %43 = ptrtoint ptr %sep_lut45 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %sep_lut45, align 4
  %mul47 = mul nuw nsw i32 %40, 60
  %add.ptr48 = getelementptr i32, ptr %44, i32 %mul47
  %arrayidx49 = getelementptr inbounds [5 x ptr], ptr %lut, i32 0, i32 4
  %45 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %add.ptr48, ptr %arrayidx49, align 4
  br label %for.cond.preheader

if.end50:                                         ; preds = %land.lhs.true41.if.end50_crit_edge, %land.lhs.true39.if.end50_crit_edge, %if.end36.if.end50_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %config_lut.3)
  %tobool51.not = icmp eq i32 %config_lut.3, 0
  br i1 %tobool51.not, label %if.end50.if.end81_crit_edge, label %if.end50.for.cond.preheader_crit_edge

if.end50.for.cond.preheader_crit_edge:            ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

if.end50.if.end81_crit_edge:                      ; preds = %if.end50
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

for.cond.preheader:                               ; preds = %if.end50.for.cond.preheader_crit_edge, %if.end50.thread
  %add = add i32 %offset, 256
  %log_mask.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 5
  %blk_off.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc78.for.body_crit_edge, %for.cond.preheader
  %filter.0158 = phi i32 [ 0, %for.cond.preheader ], [ %inc79, %for.inc78.for.body_crit_edge ]
  %arrayidx54 = getelementptr [5 x ptr], ptr %lut, i32 0, i32 %filter.0158
  %46 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %arrayidx54, align 4
  %tobool55.not = icmp eq ptr %47, null
  br i1 %tobool55.not, label %for.body.for.inc78_crit_edge, label %for.body.for.body60_crit_edge

for.body.for.body60_crit_edge:                    ; preds = %for.body
  br label %for.body60

for.body.for.inc78_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc78

for.body60:                                       ; preds = %for.inc75.for.body60_crit_edge, %for.body.for.body60_crit_edge
  %lut_offset.0157 = phi i32 [ %lut_offset.1.lcssa, %for.inc75.for.body60_crit_edge ], [ 0, %for.body.for.body60_crit_edge ]
  %i.0156 = phi i32 [ %inc76, %for.inc75.for.body60_crit_edge ], [ 0, %for.body.for.body60_crit_edge ]
  %arrayidx62 = getelementptr [5 x [4 x [2 x i32]]], ptr @_dpu_hw_setup_scaler3_lut.off_tbl, i32 0, i32 %filter.0158, i32 %i.0156
  %48 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx62, align 4
  %shl = shl i32 %49, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %shl)
  %cmp69151.not = icmp eq i32 %shl, 0
  br i1 %cmp69151.not, label %for.body60.for.inc75_crit_edge, label %for.body70.preheader

for.body60.for.inc75_crit_edge:                   ; preds = %for.body60
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc75

for.body70.preheader:                             ; preds = %for.body60
  %arrayidx63 = getelementptr [5 x [4 x [2 x i32]]], ptr @_dpu_hw_setup_scaler3_lut.off_tbl, i32 0, i32 %filter.0158, i32 %i.0156, i32 1
  %50 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx63, align 4
  %add64 = add i32 %add, %51
  %52 = add i32 %lut_offset.0157, %shl
  br label %for.body70

for.body70:                                       ; preds = %dpu_reg_write.exit.for.body70_crit_edge, %for.body70.preheader
  %lut_offset.1155 = phi i32 [ %inc, %dpu_reg_write.exit.for.body70_crit_edge ], [ %lut_offset.0157, %for.body70.preheader ]
  %lut_addr.0153 = phi i32 [ %add73, %dpu_reg_write.exit.for.body70_crit_edge ], [ %add64, %for.body70.preheader ]
  %inc = add i32 %lut_offset.1155, 1
  %arrayidx72 = getelementptr i32, ptr %47, i32 %lut_offset.1155
  %53 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %arrayidx72, align 4
  %55 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %log_mask.i, align 4
  %57 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i = and i32 %57, %56
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body70.dpu_reg_write.exit_crit_edge, label %do.body.i

for.body70.dpu_reg_write.exit_crit_edge:          ; preds = %for.body70
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit

do.body.i:                                        ; preds = %for.body70
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %58 = load i32, ptr @__drm_debug, align 4
  %and.i.i = and i32 %58, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.body2.i, label %if.then1.i

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %59 = ptrtoint ptr %blk_off.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %blk_off.i, align 4
  %add.i = add i32 %60, %lut_addr.0153
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, i32 noundef %add.i, i32 noundef %54) #5
  br label %dpu_reg_write.exit

do.body2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_hw_setup_scaler3_lut, %if.then7.i)) #5
          to label %dpu_reg_write.exit [label %if.then7.i], !srcloc !106

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #7
  %61 = ptrtoint ptr %blk_off.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %blk_off.i, align 4
  %add9.i = add i32 %62, %lut_addr.0153
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.43, i32 noundef %add9.i, i32 noundef %54) #5
  br label %dpu_reg_write.exit

dpu_reg_write.exit:                               ; preds = %if.then7.i, %do.body2.i, %if.then1.i, %for.body70.dpu_reg_write.exit_crit_edge
  %63 = tail call i32 @llvm.bswap.i32(i32 %54) #5
  %64 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %c, align 4
  %66 = ptrtoint ptr %blk_off.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %blk_off.i, align 4
  %add.ptr.i = getelementptr i8, ptr %65, i32 %67
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i, i32 %lut_addr.0153
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %63) #5, !srcloc !107
  %add73 = add i32 %lut_addr.0153, 4
  %exitcond.not = icmp eq i32 %inc, %52
  br i1 %exitcond.not, label %dpu_reg_write.exit.for.inc75_crit_edge, label %dpu_reg_write.exit.for.body70_crit_edge

dpu_reg_write.exit.for.body70_crit_edge:          ; preds = %dpu_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body70

dpu_reg_write.exit.for.inc75_crit_edge:           ; preds = %dpu_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc75

for.inc75:                                        ; preds = %dpu_reg_write.exit.for.inc75_crit_edge, %for.body60.for.inc75_crit_edge
  %lut_offset.1.lcssa = phi i32 [ %lut_offset.0157, %for.body60.for.inc75_crit_edge ], [ %52, %dpu_reg_write.exit.for.inc75_crit_edge ]
  %inc76 = add nuw nsw i32 %i.0156, 1
  %exitcond160.not = icmp eq i32 %inc76, 4
  br i1 %exitcond160.not, label %for.inc75.for.inc78_crit_edge, label %for.inc75.for.body60_crit_edge

for.inc75.for.body60_crit_edge:                   ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body60

for.inc75.for.inc78_crit_edge:                    ; preds = %for.inc75
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc78

for.inc78:                                        ; preds = %for.inc75.for.inc78_crit_edge, %for.body.for.inc78_crit_edge
  %inc79 = add nuw nsw i32 %filter.0158, 1
  %exitcond161.not = icmp eq i32 %inc79, 5
  br i1 %exitcond161.not, label %for.inc78.if.end81_crit_edge, label %for.inc78.for.body_crit_edge

for.inc78.for.body_crit_edge:                     ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc78.if.end81_crit_edge:                     ; preds = %for.inc78
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.end81:                                         ; preds = %for.inc78.if.end81_crit_edge, %if.end50.if.end81_crit_edge
  %68 = ptrtoint ptr %lut_flags to i32
  call void @__asan_load4_noabort(i32 %68)
  %lut_flags.0.lut_flags.0.150 = load volatile i32, ptr %lut_flags, align 4
  %and1.i128 = and i32 %lut_flags.0.lut_flags.0.150, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i128)
  %tobool83.not = icmp eq i32 %and1.i128, 0
  br i1 %tobool83.not, label %if.end81.if.end86_crit_edge, label %if.then84

if.end81.if.end86_crit_edge:                      ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end86

if.then84:                                        ; preds = %if.end81
  %add85 = add i32 %offset, 76
  %log_mask.i129 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 5
  %69 = ptrtoint ptr %log_mask.i129 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %log_mask.i129, align 4
  %71 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i130 = and i32 %71, %70
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i130)
  %tobool.not.i131 = icmp eq i32 %and.i130, 0
  br i1 %tobool.not.i131, label %if.then84.dpu_reg_write.exit145_crit_edge, label %do.body.i134

if.then84.dpu_reg_write.exit145_crit_edge:        ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit145

do.body.i134:                                     ; preds = %if.then84
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %72 = load i32, ptr @__drm_debug, align 4
  %and.i.i132 = and i32 %72, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i132)
  %tobool.i.not.i133 = icmp eq i32 %and.i.i132, 0
  br i1 %tobool.i.not.i133, label %do.body2.i138, label %if.then1.i137

if.then1.i137:                                    ; preds = %do.body.i134
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off.i135 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %73 = ptrtoint ptr %blk_off.i135 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %blk_off.i135, align 4
  %add.i136 = add i32 %74, %add85
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.44, i32 noundef %add.i136, i32 noundef 1) #5
  br label %dpu_reg_write.exit145

do.body2.i138:                                    ; preds = %do.body.i134
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_hw_setup_scaler3_lut, %if.then7.i141)) #5
          to label %dpu_reg_write.exit145 [label %if.then7.i141], !srcloc !106

if.then7.i141:                                    ; preds = %do.body2.i138
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off8.i139 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %75 = ptrtoint ptr %blk_off8.i139 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %blk_off8.i139, align 4
  %add9.i140 = add i32 %76, %add85
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.44, i32 noundef %add9.i140, i32 noundef 1) #5
  br label %dpu_reg_write.exit145

dpu_reg_write.exit145:                            ; preds = %if.then7.i141, %do.body2.i138, %if.then1.i137, %if.then84.dpu_reg_write.exit145_crit_edge
  %77 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %c, align 4
  %blk_off13.i142 = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %79 = ptrtoint ptr %blk_off13.i142 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %blk_off13.i142, align 4
  %add.ptr.i143 = getelementptr i8, ptr %78, i32 %80
  %add.ptr14.i144 = getelementptr i8, ptr %add.ptr.i143, i32 %add85
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i144, i32 16777216) #5, !srcloc !107
  br label %if.end86

if.end86:                                         ; preds = %dpu_reg_write.exit145, %if.end81.if.end86_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %lut) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lut_flags)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @_dpu_hw_setup_scaler3lite_lut(ptr nocapture noundef readonly %c, ptr nocapture noundef readonly %scaler3_cfg, i32 noundef %offset) unnamed_addr #0 align 64 {
entry:
  %lut_flags = alloca i32, align 4
  %lut = alloca [2 x ptr], align 8
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lut_flags)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %lut) #5
  %0 = ptrtoint ptr %lut to i32
  call void @__asan_store8_noabort(i32 %0)
  store i64 0, ptr %lut, align 8
  %add = add i32 %offset, 96
  %dir_weight = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 29
  %1 = ptrtoint ptr %dir_weight to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dir_weight, align 4
  %log_mask.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 5
  %3 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %log_mask.i, align 4
  %5 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i = and i32 %5, %4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.dpu_reg_write.exit_crit_edge, label %do.body.i

entry.dpu_reg_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %6 = load i32, ptr @__drm_debug, align 4
  %and.i.i = and i32 %6, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.body2.i, label %if.then1.i

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %7 = ptrtoint ptr %blk_off.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %blk_off.i, align 4
  %add.i = add i32 %8, %add
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.45, i32 noundef %add.i, i32 noundef %2) #5
  br label %dpu_reg_write.exit

do.body2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_hw_setup_scaler3lite_lut, %if.then7.i)) #5
          to label %dpu_reg_write.exit [label %if.then7.i], !srcloc !106

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off8.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %9 = ptrtoint ptr %blk_off8.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blk_off8.i, align 4
  %add9.i = add i32 %10, %add
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.45, i32 noundef %add9.i, i32 noundef %2) #5
  br label %dpu_reg_write.exit

dpu_reg_write.exit:                               ; preds = %if.then7.i, %do.body2.i, %if.then1.i, %entry.dpu_reg_write.exit_crit_edge
  %11 = tail call i32 @llvm.bswap.i32(i32 %2) #5
  %12 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %c, align 4
  %blk_off13.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %14 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 %15
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %11) #5, !srcloc !107
  %sep_lut = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 26
  %16 = ptrtoint ptr %sep_lut to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %sep_lut, align 4
  %tobool.not = icmp eq ptr %17, null
  br i1 %tobool.not, label %dpu_reg_write.exit.cleanup_crit_edge, label %if.end

dpu_reg_write.exit.cleanup_crit_edge:             ; preds = %dpu_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %dpu_reg_write.exit
  %lut_flag = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 16
  %18 = ptrtoint ptr %lut_flag to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lut_flag, align 4
  %20 = ptrtoint ptr %lut_flags to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %lut_flags, align 4
  %lut_flags.0.lut_flags.0. = load volatile i32, ptr %lut_flags, align 4
  %21 = and i32 %lut_flags.0.lut_flags.0., 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool1.not = icmp eq i32 %21, 0
  br i1 %tobool1.not, label %if.end.if.end7_crit_edge, label %land.lhs.true

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end
  %y_rgb_sep_lut_idx = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 20
  %22 = ptrtoint ptr %y_rgb_sep_lut_idx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %y_rgb_sep_lut_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %23)
  %cmp = icmp ult i32 %23, 10
  br i1 %cmp, label %land.lhs.true2, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

land.lhs.true2:                                   ; preds = %land.lhs.true
  %sep_len = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 27
  %24 = ptrtoint ptr %sep_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %sep_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1320, i32 %25)
  %cmp3 = icmp eq i32 %25, 1320
  br i1 %cmp3, label %if.then4, label %land.lhs.true2.if.end7_crit_edge

land.lhs.true2.if.end7_crit_edge:                 ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end7

if.then4:                                         ; preds = %land.lhs.true2
  call void @__sanitizer_cov_trace_pc() #7
  %mul = mul nuw nsw i32 %23, 33
  %add.ptr = getelementptr i32, ptr %17, i32 %mul
  %26 = ptrtoint ptr %lut to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %add.ptr, ptr %lut, align 8
  br label %if.end7

if.end7:                                          ; preds = %if.then4, %land.lhs.true2.if.end7_crit_edge, %land.lhs.true.if.end7_crit_edge, %if.end.if.end7_crit_edge
  %tobool22.not = phi i1 [ false, %if.then4 ], [ true, %land.lhs.true2.if.end7_crit_edge ], [ true, %land.lhs.true.if.end7_crit_edge ], [ true, %if.end.if.end7_crit_edge ]
  %27 = ptrtoint ptr %lut_flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %lut_flags.0.lut_flags.0.112 = load volatile i32, ptr %lut_flags, align 4
  %28 = and i32 %lut_flags.0.lut_flags.0.112, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool9.not = icmp eq i32 %28, 0
  br i1 %tobool9.not, label %if.end7.if.end21_crit_edge, label %land.lhs.true10

if.end7.if.end21_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

land.lhs.true10:                                  ; preds = %if.end7
  %uv_sep_lut_idx = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 21
  %29 = ptrtoint ptr %uv_sep_lut_idx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %uv_sep_lut_idx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %30)
  %cmp11 = icmp ult i32 %30, 10
  br i1 %cmp11, label %land.lhs.true12, label %land.lhs.true10.if.end21_crit_edge

land.lhs.true10.if.end21_crit_edge:               ; preds = %land.lhs.true10
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

land.lhs.true12:                                  ; preds = %land.lhs.true10
  %sep_len13 = getelementptr inbounds %struct.dpu_hw_scaler3_cfg, ptr %scaler3_cfg, i32 0, i32 27
  %31 = ptrtoint ptr %sep_len13 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %sep_len13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1320, i32 %32)
  %cmp14 = icmp eq i32 %32, 1320
  br i1 %cmp14, label %if.end21.thread, label %land.lhs.true12.if.end21_crit_edge

land.lhs.true12.if.end21_crit_edge:               ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end21

if.end21.thread:                                  ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #7
  %mul18 = mul nuw nsw i32 %30, 33
  %add.ptr19 = getelementptr i32, ptr %17, i32 %mul18
  %arrayidx20 = getelementptr inbounds [2 x ptr], ptr %lut, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %add.ptr19, ptr %arrayidx20, align 4
  br label %for.cond.preheader

if.end21:                                         ; preds = %land.lhs.true12.if.end21_crit_edge, %land.lhs.true10.if.end21_crit_edge, %if.end7.if.end21_crit_edge
  br i1 %tobool22.not, label %if.end21.if.end42_crit_edge, label %if.end21.for.cond.preheader_crit_edge

if.end21.for.cond.preheader_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond.preheader

if.end21.if.end42_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

for.cond.preheader:                               ; preds = %if.end21.for.cond.preheader_crit_edge, %if.end21.thread
  %add29 = add i32 %offset, 256
  br label %for.body

for.body:                                         ; preds = %for.inc39.for.body_crit_edge, %for.cond.preheader
  %filter.0118 = phi i32 [ 0, %for.cond.preheader ], [ %inc40, %for.inc39.for.body_crit_edge ]
  %arrayidx25 = getelementptr [2 x ptr], ptr %lut, i32 0, i32 %filter.0118
  %34 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx25, align 4
  %tobool26.not = icmp eq ptr %35, null
  br i1 %tobool26.not, label %for.body.for.inc39_crit_edge, label %if.end28

for.body.for.inc39_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc39

if.end28:                                         ; preds = %for.body
  %arrayidx30 = getelementptr [5 x i32], ptr @_dpu_hw_setup_scaler3lite_lut.off_tbl, i32 0, i32 %filter.0118
  %36 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx30, align 4
  %add31 = add i32 %add29, %37
  br label %for.body34

for.body34:                                       ; preds = %dpu_reg_write.exit94.for.body34_crit_edge, %if.end28
  %lut_offset.0117 = phi i32 [ 0, %if.end28 ], [ %inc, %dpu_reg_write.exit94.for.body34_crit_edge ]
  %lut_addr.0115 = phi i32 [ %add31, %if.end28 ], [ %add37, %dpu_reg_write.exit94.for.body34_crit_edge ]
  %inc = add nuw nsw i32 %lut_offset.0117, 1
  %arrayidx36 = getelementptr i32, ptr %35, i32 %lut_offset.0117
  %38 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx36, align 4
  %40 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %log_mask.i, align 4
  %42 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i79 = and i32 %42, %41
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i79)
  %tobool.not.i80 = icmp eq i32 %and.i79, 0
  br i1 %tobool.not.i80, label %for.body34.dpu_reg_write.exit94_crit_edge, label %do.body.i83

for.body34.dpu_reg_write.exit94_crit_edge:        ; preds = %for.body34
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit94

do.body.i83:                                      ; preds = %for.body34
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %43 = load i32, ptr @__drm_debug, align 4
  %and.i.i81 = and i32 %43, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i81)
  %tobool.i.not.i82 = icmp eq i32 %and.i.i81, 0
  br i1 %tobool.i.not.i82, label %do.body2.i87, label %if.then1.i86

if.then1.i86:                                     ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #7
  %44 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %blk_off13.i, align 4
  %add.i85 = add i32 %45, %lut_addr.0115
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.43, i32 noundef %add.i85, i32 noundef %39) #5
  br label %dpu_reg_write.exit94

do.body2.i87:                                     ; preds = %do.body.i83
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_hw_setup_scaler3lite_lut, %if.then7.i90)) #5
          to label %dpu_reg_write.exit94 [label %if.then7.i90], !srcloc !106

if.then7.i90:                                     ; preds = %do.body2.i87
  call void @__sanitizer_cov_trace_pc() #7
  %46 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %blk_off13.i, align 4
  %add9.i89 = add i32 %47, %lut_addr.0115
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.43, i32 noundef %add9.i89, i32 noundef %39) #5
  br label %dpu_reg_write.exit94

dpu_reg_write.exit94:                             ; preds = %if.then7.i90, %do.body2.i87, %if.then1.i86, %for.body34.dpu_reg_write.exit94_crit_edge
  %48 = tail call i32 @llvm.bswap.i32(i32 %39) #5
  %49 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %c, align 4
  %51 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %50, i32 %52
  %add.ptr14.i93 = getelementptr i8, ptr %add.ptr.i92, i32 %lut_addr.0115
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i93, i32 %48) #5, !srcloc !107
  %add37 = add i32 %lut_addr.0115, 4
  %exitcond.not = icmp eq i32 %inc, 33
  br i1 %exitcond.not, label %dpu_reg_write.exit94.for.inc39_crit_edge, label %dpu_reg_write.exit94.for.body34_crit_edge

dpu_reg_write.exit94.for.body34_crit_edge:        ; preds = %dpu_reg_write.exit94
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body34

dpu_reg_write.exit94.for.inc39_crit_edge:         ; preds = %dpu_reg_write.exit94
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.inc39

for.inc39:                                        ; preds = %dpu_reg_write.exit94.for.inc39_crit_edge, %for.body.for.inc39_crit_edge
  %inc40 = add nuw nsw i32 %filter.0118, 1
  %exitcond120.not = icmp eq i32 %inc40, 2
  br i1 %exitcond120.not, label %for.inc39.if.end42_crit_edge, label %for.inc39.for.body_crit_edge

for.inc39.for.body_crit_edge:                     ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.body

for.inc39.if.end42_crit_edge:                     ; preds = %for.inc39
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end42

if.end42:                                         ; preds = %for.inc39.if.end42_crit_edge, %if.end21.if.end42_crit_edge
  %53 = ptrtoint ptr %lut_flags to i32
  call void @__asan_load4_noabort(i32 %53)
  %lut_flags.0.lut_flags.0.113 = load volatile i32, ptr %lut_flags, align 4
  %and1.i77 = and i32 %lut_flags.0.lut_flags.0.113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i77)
  %tobool44.not = icmp eq i32 %and1.i77, 0
  br i1 %tobool44.not, label %if.end42.cleanup_crit_edge, label %if.then45

if.end42.cleanup_crit_edge:                       ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then45:                                        ; preds = %if.end42
  %add46 = add i32 %offset, 76
  %54 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %log_mask.i, align 4
  %56 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i96 = and i32 %56, %55
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i96)
  %tobool.not.i97 = icmp eq i32 %and.i96, 0
  br i1 %tobool.not.i97, label %if.then45.dpu_reg_write.exit111_crit_edge, label %do.body.i100

if.then45.dpu_reg_write.exit111_crit_edge:        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit111

do.body.i100:                                     ; preds = %if.then45
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %57 = load i32, ptr @__drm_debug, align 4
  %and.i.i98 = and i32 %57, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i98)
  %tobool.i.not.i99 = icmp eq i32 %and.i.i98, 0
  br i1 %tobool.i.not.i99, label %do.body2.i104, label %if.then1.i103

if.then1.i103:                                    ; preds = %do.body.i100
  call void @__sanitizer_cov_trace_pc() #7
  %58 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %blk_off13.i, align 4
  %add.i102 = add i32 %59, %add46
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.44, i32 noundef %add.i102, i32 noundef 1) #5
  br label %dpu_reg_write.exit111

do.body2.i104:                                    ; preds = %do.body.i100
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@_dpu_hw_setup_scaler3lite_lut, %if.then7.i107)) #5
          to label %dpu_reg_write.exit111 [label %if.then7.i107], !srcloc !106

if.then7.i107:                                    ; preds = %do.body2.i104
  call void @__sanitizer_cov_trace_pc() #7
  %60 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %blk_off13.i, align 4
  %add9.i106 = add i32 %61, %add46
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.44, i32 noundef %add9.i106, i32 noundef 1) #5
  br label %dpu_reg_write.exit111

dpu_reg_write.exit111:                            ; preds = %if.then7.i107, %do.body2.i104, %if.then1.i103, %if.then45.dpu_reg_write.exit111_crit_edge
  %62 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %c, align 4
  %64 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %63, i32 %65
  %add.ptr14.i110 = getelementptr i8, ptr %add.ptr.i109, i32 %add46
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i110, i32 16777216) #5, !srcloc !107
  br label %cleanup

cleanup:                                          ; preds = %dpu_reg_write.exit111, %if.end42.cleanup_crit_edge, %dpu_reg_write.exit.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %lut) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lut_flags)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dpu_hw_get_scaler3_ver(ptr nocapture noundef readonly %c, i32 noundef %scaler_offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %blk_off.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %2 = ptrtoint ptr %blk_off.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %blk_off.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 %3
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 %scaler_offset
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1.i) #5, !srcloc !108
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #5
  ret i32 %5
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @dpu_hw_csc_setup(ptr noundef readonly %c, i32 noundef %csc_reg_off, ptr noundef readonly %data, i1 noundef zeroext %csc10) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %cond = select i1 %csc10, i32 16, i32 8
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data, align 4
  %shr = lshr i32 %1, 7
  %and = and i32 %shr, 8191
  %arrayidx2 = getelementptr [9 x i32], ptr %data, i32 0, i32 1
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx2, align 4
  %4 = shl i32 %3, 9
  %shl = and i32 %4, 536805376
  %or = or i32 %shl, %and
  %log_mask.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 5
  %5 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %log_mask.i, align 4
  %7 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i = and i32 %7, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.dpu_reg_write.exit_crit_edge, label %do.body.i

entry.dpu_reg_write.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit

do.body.i:                                        ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %8 = load i32, ptr @__drm_debug, align 4
  %and.i.i = and i32 %8, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %do.body2.i, label %if.then1.i

if.then1.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %9 = ptrtoint ptr %blk_off.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %blk_off.i, align 4
  %add.i = add i32 %10, %csc_reg_off
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.19, i32 noundef %add.i, i32 noundef %or) #5
  br label %dpu_reg_write.exit

do.body2.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_csc_setup, %if.then7.i)) #5
          to label %dpu_reg_write.exit [label %if.then7.i], !srcloc !106

if.then7.i:                                       ; preds = %do.body2.i
  call void @__sanitizer_cov_trace_pc() #7
  %blk_off8.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %11 = ptrtoint ptr %blk_off8.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %blk_off8.i, align 4
  %add9.i = add i32 %12, %csc_reg_off
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.19, i32 noundef %add9.i, i32 noundef %or) #5
  br label %dpu_reg_write.exit

dpu_reg_write.exit:                               ; preds = %if.then7.i, %do.body2.i, %if.then1.i, %entry.dpu_reg_write.exit_crit_edge
  %13 = tail call i32 @llvm.bswap.i32(i32 %or) #5
  %14 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %c, align 4
  %blk_off13.i = getelementptr inbounds %struct.dpu_hw_blk_reg_map, ptr %c, i32 0, i32 1
  %16 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 %17
  %add.ptr14.i = getelementptr i8, ptr %add.ptr.i, i32 %csc_reg_off
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i, i32 %13) #5, !srcloc !107
  %arrayidx6 = getelementptr [9 x i32], ptr %data, i32 0, i32 2
  %18 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx6, align 4
  %shr7 = lshr i32 %19, 7
  %and8 = and i32 %shr7, 8191
  %arrayidx10 = getelementptr [9 x i32], ptr %data, i32 0, i32 3
  %20 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx10, align 4
  %22 = shl i32 %21, 9
  %shl13 = and i32 %22, 536805376
  %or14 = or i32 %shl13, %and8
  %add = add i32 %csc_reg_off, 4
  %23 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %log_mask.i, align 4
  %25 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i172 = and i32 %25, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i172)
  %tobool.not.i173 = icmp eq i32 %and.i172, 0
  br i1 %tobool.not.i173, label %dpu_reg_write.exit.dpu_reg_write.exit187_crit_edge, label %do.body.i176

dpu_reg_write.exit.dpu_reg_write.exit187_crit_edge: ; preds = %dpu_reg_write.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit187

do.body.i176:                                     ; preds = %dpu_reg_write.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %26 = load i32, ptr @__drm_debug, align 4
  %and.i.i174 = and i32 %26, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i174)
  %tobool.i.not.i175 = icmp eq i32 %and.i.i174, 0
  br i1 %tobool.i.not.i175, label %do.body2.i180, label %if.then1.i179

if.then1.i179:                                    ; preds = %do.body.i176
  call void @__sanitizer_cov_trace_pc() #7
  %27 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %blk_off13.i, align 4
  %add.i178 = add i32 %28, %add
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.20, i32 noundef %add.i178, i32 noundef %or14) #5
  br label %dpu_reg_write.exit187

do.body2.i180:                                    ; preds = %do.body.i176
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_csc_setup, %if.then7.i183)) #5
          to label %dpu_reg_write.exit187 [label %if.then7.i183], !srcloc !106

if.then7.i183:                                    ; preds = %do.body2.i180
  call void @__sanitizer_cov_trace_pc() #7
  %29 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %blk_off13.i, align 4
  %add9.i182 = add i32 %30, %add
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.20, i32 noundef %add9.i182, i32 noundef %or14) #5
  br label %dpu_reg_write.exit187

dpu_reg_write.exit187:                            ; preds = %if.then7.i183, %do.body2.i180, %if.then1.i179, %dpu_reg_write.exit.dpu_reg_write.exit187_crit_edge
  %31 = tail call i32 @llvm.bswap.i32(i32 %or14) #5
  %32 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %c, align 4
  %34 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i185 = getelementptr i8, ptr %33, i32 %35
  %add.ptr14.i186 = getelementptr i8, ptr %add.ptr.i185, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i186, i32 %31) #5, !srcloc !107
  %arrayidx16 = getelementptr [9 x i32], ptr %data, i32 0, i32 4
  %36 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx16, align 4
  %shr17 = lshr i32 %37, 7
  %and18 = and i32 %shr17, 8191
  %arrayidx20 = getelementptr [9 x i32], ptr %data, i32 0, i32 5
  %38 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx20, align 4
  %40 = shl i32 %39, 9
  %shl23 = and i32 %40, 536805376
  %or24 = or i32 %shl23, %and18
  %add25 = add i32 %csc_reg_off, 8
  %41 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %log_mask.i, align 4
  %43 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i189 = and i32 %43, %42
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i189)
  %tobool.not.i190 = icmp eq i32 %and.i189, 0
  br i1 %tobool.not.i190, label %dpu_reg_write.exit187.dpu_reg_write.exit204_crit_edge, label %do.body.i193

dpu_reg_write.exit187.dpu_reg_write.exit204_crit_edge: ; preds = %dpu_reg_write.exit187
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit204

do.body.i193:                                     ; preds = %dpu_reg_write.exit187
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %44 = load i32, ptr @__drm_debug, align 4
  %and.i.i191 = and i32 %44, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i191)
  %tobool.i.not.i192 = icmp eq i32 %and.i.i191, 0
  br i1 %tobool.i.not.i192, label %do.body2.i197, label %if.then1.i196

if.then1.i196:                                    ; preds = %do.body.i193
  call void @__sanitizer_cov_trace_pc() #7
  %45 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %blk_off13.i, align 4
  %add.i195 = add i32 %46, %add25
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.21, i32 noundef %add.i195, i32 noundef %or24) #5
  br label %dpu_reg_write.exit204

do.body2.i197:                                    ; preds = %do.body.i193
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_csc_setup, %if.then7.i200)) #5
          to label %dpu_reg_write.exit204 [label %if.then7.i200], !srcloc !106

if.then7.i200:                                    ; preds = %do.body2.i197
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %blk_off13.i, align 4
  %add9.i199 = add i32 %48, %add25
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.21, i32 noundef %add9.i199, i32 noundef %or24) #5
  br label %dpu_reg_write.exit204

dpu_reg_write.exit204:                            ; preds = %if.then7.i200, %do.body2.i197, %if.then1.i196, %dpu_reg_write.exit187.dpu_reg_write.exit204_crit_edge
  %49 = tail call i32 @llvm.bswap.i32(i32 %or24) #5
  %50 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %c, align 4
  %52 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i202 = getelementptr i8, ptr %51, i32 %53
  %add.ptr14.i203 = getelementptr i8, ptr %add.ptr.i202, i32 %add25
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i203, i32 %49) #5, !srcloc !107
  %arrayidx27 = getelementptr [9 x i32], ptr %data, i32 0, i32 6
  %54 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %arrayidx27, align 4
  %shr28 = lshr i32 %55, 7
  %and29 = and i32 %shr28, 8191
  %arrayidx31 = getelementptr [9 x i32], ptr %data, i32 0, i32 7
  %56 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %arrayidx31, align 4
  %58 = shl i32 %57, 9
  %shl34 = and i32 %58, 536805376
  %or35 = or i32 %shl34, %and29
  %add36 = add i32 %csc_reg_off, 12
  %59 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %log_mask.i, align 4
  %61 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i206 = and i32 %61, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i206)
  %tobool.not.i207 = icmp eq i32 %and.i206, 0
  br i1 %tobool.not.i207, label %dpu_reg_write.exit204.dpu_reg_write.exit221_crit_edge, label %do.body.i210

dpu_reg_write.exit204.dpu_reg_write.exit221_crit_edge: ; preds = %dpu_reg_write.exit204
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit221

do.body.i210:                                     ; preds = %dpu_reg_write.exit204
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %62 = load i32, ptr @__drm_debug, align 4
  %and.i.i208 = and i32 %62, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i208)
  %tobool.i.not.i209 = icmp eq i32 %and.i.i208, 0
  br i1 %tobool.i.not.i209, label %do.body2.i214, label %if.then1.i213

if.then1.i213:                                    ; preds = %do.body.i210
  call void @__sanitizer_cov_trace_pc() #7
  %63 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %blk_off13.i, align 4
  %add.i212 = add i32 %64, %add36
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.22, i32 noundef %add.i212, i32 noundef %or35) #5
  br label %dpu_reg_write.exit221

do.body2.i214:                                    ; preds = %do.body.i210
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_csc_setup, %if.then7.i217)) #5
          to label %dpu_reg_write.exit221 [label %if.then7.i217], !srcloc !106

if.then7.i217:                                    ; preds = %do.body2.i214
  call void @__sanitizer_cov_trace_pc() #7
  %65 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %blk_off13.i, align 4
  %add9.i216 = add i32 %66, %add36
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.22, i32 noundef %add9.i216, i32 noundef %or35) #5
  br label %dpu_reg_write.exit221

dpu_reg_write.exit221:                            ; preds = %if.then7.i217, %do.body2.i214, %if.then1.i213, %dpu_reg_write.exit204.dpu_reg_write.exit221_crit_edge
  %67 = tail call i32 @llvm.bswap.i32(i32 %or35) #5
  %68 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %c, align 4
  %70 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i219 = getelementptr i8, ptr %69, i32 %71
  %add.ptr14.i220 = getelementptr i8, ptr %add.ptr.i219, i32 %add36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i220, i32 %67) #5, !srcloc !107
  %arrayidx38 = getelementptr [9 x i32], ptr %data, i32 0, i32 8
  %72 = ptrtoint ptr %arrayidx38 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx38, align 4
  %shr39 = lshr i32 %73, 7
  %and40 = and i32 %shr39, 8191
  %add41 = add i32 %csc_reg_off, 16
  %74 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %log_mask.i, align 4
  %76 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i223 = and i32 %76, %75
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i223)
  %tobool.not.i224 = icmp eq i32 %and.i223, 0
  br i1 %tobool.not.i224, label %dpu_reg_write.exit221.dpu_reg_write.exit238_crit_edge, label %do.body.i227

dpu_reg_write.exit221.dpu_reg_write.exit238_crit_edge: ; preds = %dpu_reg_write.exit221
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit238

do.body.i227:                                     ; preds = %dpu_reg_write.exit221
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %77 = load i32, ptr @__drm_debug, align 4
  %and.i.i225 = and i32 %77, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i225)
  %tobool.i.not.i226 = icmp eq i32 %and.i.i225, 0
  br i1 %tobool.i.not.i226, label %do.body2.i231, label %if.then1.i230

if.then1.i230:                                    ; preds = %do.body.i227
  call void @__sanitizer_cov_trace_pc() #7
  %78 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %blk_off13.i, align 4
  %add.i229 = add i32 %79, %add41
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.23, i32 noundef %add.i229, i32 noundef %and40) #5
  br label %dpu_reg_write.exit238

do.body2.i231:                                    ; preds = %do.body.i227
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_csc_setup, %if.then7.i234)) #5
          to label %dpu_reg_write.exit238 [label %if.then7.i234], !srcloc !106

if.then7.i234:                                    ; preds = %do.body2.i231
  call void @__sanitizer_cov_trace_pc() #7
  %80 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %blk_off13.i, align 4
  %add9.i233 = add i32 %81, %add41
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.23, i32 noundef %add9.i233, i32 noundef %and40) #5
  br label %dpu_reg_write.exit238

dpu_reg_write.exit238:                            ; preds = %if.then7.i234, %do.body2.i231, %if.then1.i230, %dpu_reg_write.exit221.dpu_reg_write.exit238_crit_edge
  %82 = tail call i32 @llvm.bswap.i32(i32 %and40) #5
  %83 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %c, align 4
  %85 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i236 = getelementptr i8, ptr %84, i32 %86
  %add.ptr14.i237 = getelementptr i8, ptr %add.ptr.i236, i32 %add41
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i237, i32 %82) #5, !srcloc !107
  %csc_pre_lv = getelementptr inbounds %struct.dpu_csc_cfg, ptr %data, i32 0, i32 3
  %87 = ptrtoint ptr %csc_pre_lv to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %csc_pre_lv, align 4
  %shl43 = shl i32 %88, %cond
  %arrayidx45 = getelementptr %struct.dpu_csc_cfg, ptr %data, i32 0, i32 3, i32 1
  %89 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx45, align 4
  %or46 = or i32 %shl43, %90
  %add47 = add i32 %csc_reg_off, 20
  %91 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %log_mask.i, align 4
  %93 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i240 = and i32 %93, %92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i240)
  %tobool.not.i241 = icmp eq i32 %and.i240, 0
  br i1 %tobool.not.i241, label %dpu_reg_write.exit238.dpu_reg_write.exit255_crit_edge, label %do.body.i244

dpu_reg_write.exit238.dpu_reg_write.exit255_crit_edge: ; preds = %dpu_reg_write.exit238
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit255

do.body.i244:                                     ; preds = %dpu_reg_write.exit238
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %94 = load i32, ptr @__drm_debug, align 4
  %and.i.i242 = and i32 %94, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i242)
  %tobool.i.not.i243 = icmp eq i32 %and.i.i242, 0
  br i1 %tobool.i.not.i243, label %do.body2.i248, label %if.then1.i247

if.then1.i247:                                    ; preds = %do.body.i244
  call void @__sanitizer_cov_trace_pc() #7
  %95 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %blk_off13.i, align 4
  %add.i246 = add i32 %96, %add47
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.24, i32 noundef %add.i246, i32 noundef %or46) #5
  br label %dpu_reg_write.exit255

do.body2.i248:                                    ; preds = %do.body.i244
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_csc_setup, %if.then7.i251)) #5
          to label %dpu_reg_write.exit255 [label %if.then7.i251], !srcloc !106

if.then7.i251:                                    ; preds = %do.body2.i248
  call void @__sanitizer_cov_trace_pc() #7
  %97 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %blk_off13.i, align 4
  %add9.i250 = add i32 %98, %add47
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.24, i32 noundef %add9.i250, i32 noundef %or46) #5
  br label %dpu_reg_write.exit255

dpu_reg_write.exit255:                            ; preds = %if.then7.i251, %do.body2.i248, %if.then1.i247, %dpu_reg_write.exit238.dpu_reg_write.exit255_crit_edge
  %99 = tail call i32 @llvm.bswap.i32(i32 %or46) #5
  %100 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %c, align 4
  %102 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i253 = getelementptr i8, ptr %101, i32 %103
  %add.ptr14.i254 = getelementptr i8, ptr %add.ptr.i253, i32 %add47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i254, i32 %99) #5, !srcloc !107
  %arrayidx49 = getelementptr %struct.dpu_csc_cfg, ptr %data, i32 0, i32 3, i32 2
  %104 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %arrayidx49, align 4
  %shl50 = shl i32 %105, %cond
  %arrayidx52 = getelementptr %struct.dpu_csc_cfg, ptr %data, i32 0, i32 3, i32 3
  %106 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %arrayidx52, align 4
  %or53 = or i32 %shl50, %107
  %add54 = add i32 %csc_reg_off, 24
  %108 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %log_mask.i, align 4
  %110 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i257 = and i32 %110, %109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i257)
  %tobool.not.i258 = icmp eq i32 %and.i257, 0
  br i1 %tobool.not.i258, label %dpu_reg_write.exit255.dpu_reg_write.exit272_crit_edge, label %do.body.i261

dpu_reg_write.exit255.dpu_reg_write.exit272_crit_edge: ; preds = %dpu_reg_write.exit255
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit272

do.body.i261:                                     ; preds = %dpu_reg_write.exit255
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %111 = load i32, ptr @__drm_debug, align 4
  %and.i.i259 = and i32 %111, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i259)
  %tobool.i.not.i260 = icmp eq i32 %and.i.i259, 0
  br i1 %tobool.i.not.i260, label %do.body2.i265, label %if.then1.i264

if.then1.i264:                                    ; preds = %do.body.i261
  call void @__sanitizer_cov_trace_pc() #7
  %112 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %blk_off13.i, align 4
  %add.i263 = add i32 %113, %add54
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.25, i32 noundef %add.i263, i32 noundef %or53) #5
  br label %dpu_reg_write.exit272

do.body2.i265:                                    ; preds = %do.body.i261
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_csc_setup, %if.then7.i268)) #5
          to label %dpu_reg_write.exit272 [label %if.then7.i268], !srcloc !106

if.then7.i268:                                    ; preds = %do.body2.i265
  call void @__sanitizer_cov_trace_pc() #7
  %114 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %blk_off13.i, align 4
  %add9.i267 = add i32 %115, %add54
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.25, i32 noundef %add9.i267, i32 noundef %or53) #5
  br label %dpu_reg_write.exit272

dpu_reg_write.exit272:                            ; preds = %if.then7.i268, %do.body2.i265, %if.then1.i264, %dpu_reg_write.exit255.dpu_reg_write.exit272_crit_edge
  %116 = tail call i32 @llvm.bswap.i32(i32 %or53) #5
  %117 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %c, align 4
  %119 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i270 = getelementptr i8, ptr %118, i32 %120
  %add.ptr14.i271 = getelementptr i8, ptr %add.ptr.i270, i32 %add54
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i271, i32 %116) #5, !srcloc !107
  %arrayidx56 = getelementptr %struct.dpu_csc_cfg, ptr %data, i32 0, i32 3, i32 4
  %121 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %arrayidx56, align 4
  %shl57 = shl i32 %122, %cond
  %arrayidx59 = getelementptr %struct.dpu_csc_cfg, ptr %data, i32 0, i32 3, i32 5
  %123 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %arrayidx59, align 4
  %or60 = or i32 %shl57, %124
  %add61 = add i32 %csc_reg_off, 28
  %125 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %log_mask.i, align 4
  %127 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i274 = and i32 %127, %126
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i274)
  %tobool.not.i275 = icmp eq i32 %and.i274, 0
  br i1 %tobool.not.i275, label %dpu_reg_write.exit272.dpu_reg_write.exit289_crit_edge, label %do.body.i278

dpu_reg_write.exit272.dpu_reg_write.exit289_crit_edge: ; preds = %dpu_reg_write.exit272
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit289

do.body.i278:                                     ; preds = %dpu_reg_write.exit272
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %128 = load i32, ptr @__drm_debug, align 4
  %and.i.i276 = and i32 %128, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i276)
  %tobool.i.not.i277 = icmp eq i32 %and.i.i276, 0
  br i1 %tobool.i.not.i277, label %do.body2.i282, label %if.then1.i281

if.then1.i281:                                    ; preds = %do.body.i278
  call void @__sanitizer_cov_trace_pc() #7
  %129 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %blk_off13.i, align 4
  %add.i280 = add i32 %130, %add61
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.26, i32 noundef %add.i280, i32 noundef %or60) #5
  br label %dpu_reg_write.exit289

do.body2.i282:                                    ; preds = %do.body.i278
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_csc_setup, %if.then7.i285)) #5
          to label %dpu_reg_write.exit289 [label %if.then7.i285], !srcloc !106

if.then7.i285:                                    ; preds = %do.body2.i282
  call void @__sanitizer_cov_trace_pc() #7
  %131 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %blk_off13.i, align 4
  %add9.i284 = add i32 %132, %add61
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.26, i32 noundef %add9.i284, i32 noundef %or60) #5
  br label %dpu_reg_write.exit289

dpu_reg_write.exit289:                            ; preds = %if.then7.i285, %do.body2.i282, %if.then1.i281, %dpu_reg_write.exit272.dpu_reg_write.exit289_crit_edge
  %133 = tail call i32 @llvm.bswap.i32(i32 %or60) #5
  %134 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %c, align 4
  %136 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i287 = getelementptr i8, ptr %135, i32 %137
  %add.ptr14.i288 = getelementptr i8, ptr %add.ptr.i287, i32 %add61
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i288, i32 %133) #5, !srcloc !107
  %csc_post_lv = getelementptr inbounds %struct.dpu_csc_cfg, ptr %data, i32 0, i32 4
  %138 = ptrtoint ptr %csc_post_lv to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %csc_post_lv, align 4
  %shl63 = shl i32 %139, %cond
  %arrayidx65 = getelementptr %struct.dpu_csc_cfg, ptr %data, i32 0, i32 4, i32 1
  %140 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %arrayidx65, align 4
  %or66 = or i32 %shl63, %141
  %add67 = add i32 %csc_reg_off, 32
  %142 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %log_mask.i, align 4
  %144 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i291 = and i32 %144, %143
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i291)
  %tobool.not.i292 = icmp eq i32 %and.i291, 0
  br i1 %tobool.not.i292, label %dpu_reg_write.exit289.dpu_reg_write.exit306_crit_edge, label %do.body.i295

dpu_reg_write.exit289.dpu_reg_write.exit306_crit_edge: ; preds = %dpu_reg_write.exit289
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit306

do.body.i295:                                     ; preds = %dpu_reg_write.exit289
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %145 = load i32, ptr @__drm_debug, align 4
  %and.i.i293 = and i32 %145, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i293)
  %tobool.i.not.i294 = icmp eq i32 %and.i.i293, 0
  br i1 %tobool.i.not.i294, label %do.body2.i299, label %if.then1.i298

if.then1.i298:                                    ; preds = %do.body.i295
  call void @__sanitizer_cov_trace_pc() #7
  %146 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %blk_off13.i, align 4
  %add.i297 = add i32 %147, %add67
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.27, i32 noundef %add.i297, i32 noundef %or66) #5
  br label %dpu_reg_write.exit306

do.body2.i299:                                    ; preds = %do.body.i295
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_csc_setup, %if.then7.i302)) #5
          to label %dpu_reg_write.exit306 [label %if.then7.i302], !srcloc !106

if.then7.i302:                                    ; preds = %do.body2.i299
  call void @__sanitizer_cov_trace_pc() #7
  %148 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %blk_off13.i, align 4
  %add9.i301 = add i32 %149, %add67
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.27, i32 noundef %add9.i301, i32 noundef %or66) #5
  br label %dpu_reg_write.exit306

dpu_reg_write.exit306:                            ; preds = %if.then7.i302, %do.body2.i299, %if.then1.i298, %dpu_reg_write.exit289.dpu_reg_write.exit306_crit_edge
  %150 = tail call i32 @llvm.bswap.i32(i32 %or66) #5
  %151 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %c, align 4
  %153 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i304 = getelementptr i8, ptr %152, i32 %154
  %add.ptr14.i305 = getelementptr i8, ptr %add.ptr.i304, i32 %add67
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i305, i32 %150) #5, !srcloc !107
  %arrayidx69 = getelementptr %struct.dpu_csc_cfg, ptr %data, i32 0, i32 4, i32 2
  %155 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %arrayidx69, align 4
  %shl70 = shl i32 %156, %cond
  %arrayidx72 = getelementptr %struct.dpu_csc_cfg, ptr %data, i32 0, i32 4, i32 3
  %157 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %arrayidx72, align 4
  %or73 = or i32 %shl70, %158
  %add74 = add i32 %csc_reg_off, 36
  %159 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %log_mask.i, align 4
  %161 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i308 = and i32 %161, %160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i308)
  %tobool.not.i309 = icmp eq i32 %and.i308, 0
  br i1 %tobool.not.i309, label %dpu_reg_write.exit306.dpu_reg_write.exit323_crit_edge, label %do.body.i312

dpu_reg_write.exit306.dpu_reg_write.exit323_crit_edge: ; preds = %dpu_reg_write.exit306
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit323

do.body.i312:                                     ; preds = %dpu_reg_write.exit306
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %162 = load i32, ptr @__drm_debug, align 4
  %and.i.i310 = and i32 %162, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i310)
  %tobool.i.not.i311 = icmp eq i32 %and.i.i310, 0
  br i1 %tobool.i.not.i311, label %do.body2.i316, label %if.then1.i315

if.then1.i315:                                    ; preds = %do.body.i312
  call void @__sanitizer_cov_trace_pc() #7
  %163 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %blk_off13.i, align 4
  %add.i314 = add i32 %164, %add74
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.28, i32 noundef %add.i314, i32 noundef %or73) #5
  br label %dpu_reg_write.exit323

do.body2.i316:                                    ; preds = %do.body.i312
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_csc_setup, %if.then7.i319)) #5
          to label %dpu_reg_write.exit323 [label %if.then7.i319], !srcloc !106

if.then7.i319:                                    ; preds = %do.body2.i316
  call void @__sanitizer_cov_trace_pc() #7
  %165 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %blk_off13.i, align 4
  %add9.i318 = add i32 %166, %add74
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.28, i32 noundef %add9.i318, i32 noundef %or73) #5
  br label %dpu_reg_write.exit323

dpu_reg_write.exit323:                            ; preds = %if.then7.i319, %do.body2.i316, %if.then1.i315, %dpu_reg_write.exit306.dpu_reg_write.exit323_crit_edge
  %167 = tail call i32 @llvm.bswap.i32(i32 %or73) #5
  %168 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %c, align 4
  %170 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i321 = getelementptr i8, ptr %169, i32 %171
  %add.ptr14.i322 = getelementptr i8, ptr %add.ptr.i321, i32 %add74
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i322, i32 %167) #5, !srcloc !107
  %arrayidx76 = getelementptr %struct.dpu_csc_cfg, ptr %data, i32 0, i32 4, i32 4
  %172 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %arrayidx76, align 4
  %shl77 = shl i32 %173, %cond
  %arrayidx79 = getelementptr %struct.dpu_csc_cfg, ptr %data, i32 0, i32 4, i32 5
  %174 = ptrtoint ptr %arrayidx79 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %arrayidx79, align 4
  %or80 = or i32 %shl77, %175
  %add81 = add i32 %csc_reg_off, 40
  %176 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %log_mask.i, align 4
  %178 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i325 = and i32 %178, %177
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i325)
  %tobool.not.i326 = icmp eq i32 %and.i325, 0
  br i1 %tobool.not.i326, label %dpu_reg_write.exit323.dpu_reg_write.exit340_crit_edge, label %do.body.i329

dpu_reg_write.exit323.dpu_reg_write.exit340_crit_edge: ; preds = %dpu_reg_write.exit323
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit340

do.body.i329:                                     ; preds = %dpu_reg_write.exit323
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %179 = load i32, ptr @__drm_debug, align 4
  %and.i.i327 = and i32 %179, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i327)
  %tobool.i.not.i328 = icmp eq i32 %and.i.i327, 0
  br i1 %tobool.i.not.i328, label %do.body2.i333, label %if.then1.i332

if.then1.i332:                                    ; preds = %do.body.i329
  call void @__sanitizer_cov_trace_pc() #7
  %180 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %blk_off13.i, align 4
  %add.i331 = add i32 %181, %add81
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.29, i32 noundef %add.i331, i32 noundef %or80) #5
  br label %dpu_reg_write.exit340

do.body2.i333:                                    ; preds = %do.body.i329
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_csc_setup, %if.then7.i336)) #5
          to label %dpu_reg_write.exit340 [label %if.then7.i336], !srcloc !106

if.then7.i336:                                    ; preds = %do.body2.i333
  call void @__sanitizer_cov_trace_pc() #7
  %182 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %blk_off13.i, align 4
  %add9.i335 = add i32 %183, %add81
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.29, i32 noundef %add9.i335, i32 noundef %or80) #5
  br label %dpu_reg_write.exit340

dpu_reg_write.exit340:                            ; preds = %if.then7.i336, %do.body2.i333, %if.then1.i332, %dpu_reg_write.exit323.dpu_reg_write.exit340_crit_edge
  %184 = tail call i32 @llvm.bswap.i32(i32 %or80) #5
  %185 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %c, align 4
  %187 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i338 = getelementptr i8, ptr %186, i32 %188
  %add.ptr14.i339 = getelementptr i8, ptr %add.ptr.i338, i32 %add81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i339, i32 %184) #5, !srcloc !107
  %add82 = add i32 %csc_reg_off, 44
  %csc_pre_bv = getelementptr inbounds %struct.dpu_csc_cfg, ptr %data, i32 0, i32 1
  %189 = ptrtoint ptr %csc_pre_bv to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %csc_pre_bv, align 4
  %191 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %log_mask.i, align 4
  %193 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i342 = and i32 %193, %192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i342)
  %tobool.not.i343 = icmp eq i32 %and.i342, 0
  br i1 %tobool.not.i343, label %dpu_reg_write.exit340.dpu_reg_write.exit357_crit_edge, label %do.body.i346

dpu_reg_write.exit340.dpu_reg_write.exit357_crit_edge: ; preds = %dpu_reg_write.exit340
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit357

do.body.i346:                                     ; preds = %dpu_reg_write.exit340
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %194 = load i32, ptr @__drm_debug, align 4
  %and.i.i344 = and i32 %194, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i344)
  %tobool.i.not.i345 = icmp eq i32 %and.i.i344, 0
  br i1 %tobool.i.not.i345, label %do.body2.i350, label %if.then1.i349

if.then1.i349:                                    ; preds = %do.body.i346
  call void @__sanitizer_cov_trace_pc() #7
  %195 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %blk_off13.i, align 4
  %add.i348 = add i32 %196, %add82
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.30, i32 noundef %add.i348, i32 noundef %190) #5
  br label %dpu_reg_write.exit357

do.body2.i350:                                    ; preds = %do.body.i346
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_csc_setup, %if.then7.i353)) #5
          to label %dpu_reg_write.exit357 [label %if.then7.i353], !srcloc !106

if.then7.i353:                                    ; preds = %do.body2.i350
  call void @__sanitizer_cov_trace_pc() #7
  %197 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %blk_off13.i, align 4
  %add9.i352 = add i32 %198, %add82
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.30, i32 noundef %add9.i352, i32 noundef %190) #5
  br label %dpu_reg_write.exit357

dpu_reg_write.exit357:                            ; preds = %if.then7.i353, %do.body2.i350, %if.then1.i349, %dpu_reg_write.exit340.dpu_reg_write.exit357_crit_edge
  %199 = tail call i32 @llvm.bswap.i32(i32 %190) #5
  %200 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %c, align 4
  %202 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i355 = getelementptr i8, ptr %201, i32 %203
  %add.ptr14.i356 = getelementptr i8, ptr %add.ptr.i355, i32 %add82
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i356, i32 %199) #5, !srcloc !107
  %add84 = add i32 %csc_reg_off, 48
  %arrayidx86 = getelementptr %struct.dpu_csc_cfg, ptr %data, i32 0, i32 1, i32 1
  %204 = ptrtoint ptr %arrayidx86 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %arrayidx86, align 4
  %206 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load i32, ptr %log_mask.i, align 4
  %208 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i359 = and i32 %208, %207
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i359)
  %tobool.not.i360 = icmp eq i32 %and.i359, 0
  br i1 %tobool.not.i360, label %dpu_reg_write.exit357.dpu_reg_write.exit374_crit_edge, label %do.body.i363

dpu_reg_write.exit357.dpu_reg_write.exit374_crit_edge: ; preds = %dpu_reg_write.exit357
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit374

do.body.i363:                                     ; preds = %dpu_reg_write.exit357
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %209 = load i32, ptr @__drm_debug, align 4
  %and.i.i361 = and i32 %209, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i361)
  %tobool.i.not.i362 = icmp eq i32 %and.i.i361, 0
  br i1 %tobool.i.not.i362, label %do.body2.i367, label %if.then1.i366

if.then1.i366:                                    ; preds = %do.body.i363
  call void @__sanitizer_cov_trace_pc() #7
  %210 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %blk_off13.i, align 4
  %add.i365 = add i32 %211, %add84
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.31, i32 noundef %add.i365, i32 noundef %205) #5
  br label %dpu_reg_write.exit374

do.body2.i367:                                    ; preds = %do.body.i363
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_csc_setup, %if.then7.i370)) #5
          to label %dpu_reg_write.exit374 [label %if.then7.i370], !srcloc !106

if.then7.i370:                                    ; preds = %do.body2.i367
  call void @__sanitizer_cov_trace_pc() #7
  %212 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %blk_off13.i, align 4
  %add9.i369 = add i32 %213, %add84
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.31, i32 noundef %add9.i369, i32 noundef %205) #5
  br label %dpu_reg_write.exit374

dpu_reg_write.exit374:                            ; preds = %if.then7.i370, %do.body2.i367, %if.then1.i366, %dpu_reg_write.exit357.dpu_reg_write.exit374_crit_edge
  %214 = tail call i32 @llvm.bswap.i32(i32 %205) #5
  %215 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %c, align 4
  %217 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i372 = getelementptr i8, ptr %216, i32 %218
  %add.ptr14.i373 = getelementptr i8, ptr %add.ptr.i372, i32 %add84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i373, i32 %214) #5, !srcloc !107
  %add87 = add i32 %csc_reg_off, 52
  %arrayidx89 = getelementptr %struct.dpu_csc_cfg, ptr %data, i32 0, i32 1, i32 2
  %219 = ptrtoint ptr %arrayidx89 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load i32, ptr %arrayidx89, align 4
  %221 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %log_mask.i, align 4
  %223 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i376 = and i32 %223, %222
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i376)
  %tobool.not.i377 = icmp eq i32 %and.i376, 0
  br i1 %tobool.not.i377, label %dpu_reg_write.exit374.dpu_reg_write.exit391_crit_edge, label %do.body.i380

dpu_reg_write.exit374.dpu_reg_write.exit391_crit_edge: ; preds = %dpu_reg_write.exit374
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit391

do.body.i380:                                     ; preds = %dpu_reg_write.exit374
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %224 = load i32, ptr @__drm_debug, align 4
  %and.i.i378 = and i32 %224, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i378)
  %tobool.i.not.i379 = icmp eq i32 %and.i.i378, 0
  br i1 %tobool.i.not.i379, label %do.body2.i384, label %if.then1.i383

if.then1.i383:                                    ; preds = %do.body.i380
  call void @__sanitizer_cov_trace_pc() #7
  %225 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %blk_off13.i, align 4
  %add.i382 = add i32 %226, %add87
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.32, i32 noundef %add.i382, i32 noundef %220) #5
  br label %dpu_reg_write.exit391

do.body2.i384:                                    ; preds = %do.body.i380
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_csc_setup, %if.then7.i387)) #5
          to label %dpu_reg_write.exit391 [label %if.then7.i387], !srcloc !106

if.then7.i387:                                    ; preds = %do.body2.i384
  call void @__sanitizer_cov_trace_pc() #7
  %227 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load i32, ptr %blk_off13.i, align 4
  %add9.i386 = add i32 %228, %add87
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.32, i32 noundef %add9.i386, i32 noundef %220) #5
  br label %dpu_reg_write.exit391

dpu_reg_write.exit391:                            ; preds = %if.then7.i387, %do.body2.i384, %if.then1.i383, %dpu_reg_write.exit374.dpu_reg_write.exit391_crit_edge
  %229 = tail call i32 @llvm.bswap.i32(i32 %220) #5
  %230 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %c, align 4
  %232 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i389 = getelementptr i8, ptr %231, i32 %233
  %add.ptr14.i390 = getelementptr i8, ptr %add.ptr.i389, i32 %add87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i390, i32 %229) #5, !srcloc !107
  %add90 = add i32 %csc_reg_off, 56
  %csc_post_bv = getelementptr inbounds %struct.dpu_csc_cfg, ptr %data, i32 0, i32 2
  %234 = ptrtoint ptr %csc_post_bv to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %csc_post_bv, align 4
  %236 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %log_mask.i, align 4
  %238 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i393 = and i32 %238, %237
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i393)
  %tobool.not.i394 = icmp eq i32 %and.i393, 0
  br i1 %tobool.not.i394, label %dpu_reg_write.exit391.dpu_reg_write.exit408_crit_edge, label %do.body.i397

dpu_reg_write.exit391.dpu_reg_write.exit408_crit_edge: ; preds = %dpu_reg_write.exit391
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit408

do.body.i397:                                     ; preds = %dpu_reg_write.exit391
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %239 = load i32, ptr @__drm_debug, align 4
  %and.i.i395 = and i32 %239, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i395)
  %tobool.i.not.i396 = icmp eq i32 %and.i.i395, 0
  br i1 %tobool.i.not.i396, label %do.body2.i401, label %if.then1.i400

if.then1.i400:                                    ; preds = %do.body.i397
  call void @__sanitizer_cov_trace_pc() #7
  %240 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %blk_off13.i, align 4
  %add.i399 = add i32 %241, %add90
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.33, i32 noundef %add.i399, i32 noundef %235) #5
  br label %dpu_reg_write.exit408

do.body2.i401:                                    ; preds = %do.body.i397
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_csc_setup, %if.then7.i404)) #5
          to label %dpu_reg_write.exit408 [label %if.then7.i404], !srcloc !106

if.then7.i404:                                    ; preds = %do.body2.i401
  call void @__sanitizer_cov_trace_pc() #7
  %242 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %blk_off13.i, align 4
  %add9.i403 = add i32 %243, %add90
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.33, i32 noundef %add9.i403, i32 noundef %235) #5
  br label %dpu_reg_write.exit408

dpu_reg_write.exit408:                            ; preds = %if.then7.i404, %do.body2.i401, %if.then1.i400, %dpu_reg_write.exit391.dpu_reg_write.exit408_crit_edge
  %244 = tail call i32 @llvm.bswap.i32(i32 %235) #5
  %245 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %c, align 4
  %247 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i406 = getelementptr i8, ptr %246, i32 %248
  %add.ptr14.i407 = getelementptr i8, ptr %add.ptr.i406, i32 %add90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i407, i32 %244) #5, !srcloc !107
  %add92 = add i32 %csc_reg_off, 60
  %arrayidx94 = getelementptr %struct.dpu_csc_cfg, ptr %data, i32 0, i32 2, i32 1
  %249 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx94, align 4
  %251 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load i32, ptr %log_mask.i, align 4
  %253 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i410 = and i32 %253, %252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i410)
  %tobool.not.i411 = icmp eq i32 %and.i410, 0
  br i1 %tobool.not.i411, label %dpu_reg_write.exit408.dpu_reg_write.exit425_crit_edge, label %do.body.i414

dpu_reg_write.exit408.dpu_reg_write.exit425_crit_edge: ; preds = %dpu_reg_write.exit408
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit425

do.body.i414:                                     ; preds = %dpu_reg_write.exit408
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %254 = load i32, ptr @__drm_debug, align 4
  %and.i.i412 = and i32 %254, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i412)
  %tobool.i.not.i413 = icmp eq i32 %and.i.i412, 0
  br i1 %tobool.i.not.i413, label %do.body2.i418, label %if.then1.i417

if.then1.i417:                                    ; preds = %do.body.i414
  call void @__sanitizer_cov_trace_pc() #7
  %255 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %255)
  %256 = load i32, ptr %blk_off13.i, align 4
  %add.i416 = add i32 %256, %add92
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.34, i32 noundef %add.i416, i32 noundef %250) #5
  br label %dpu_reg_write.exit425

do.body2.i418:                                    ; preds = %do.body.i414
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_csc_setup, %if.then7.i421)) #5
          to label %dpu_reg_write.exit425 [label %if.then7.i421], !srcloc !106

if.then7.i421:                                    ; preds = %do.body2.i418
  call void @__sanitizer_cov_trace_pc() #7
  %257 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %257)
  %258 = load i32, ptr %blk_off13.i, align 4
  %add9.i420 = add i32 %258, %add92
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.34, i32 noundef %add9.i420, i32 noundef %250) #5
  br label %dpu_reg_write.exit425

dpu_reg_write.exit425:                            ; preds = %if.then7.i421, %do.body2.i418, %if.then1.i417, %dpu_reg_write.exit408.dpu_reg_write.exit425_crit_edge
  %259 = tail call i32 @llvm.bswap.i32(i32 %250) #5
  %260 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load ptr, ptr %c, align 4
  %262 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %262)
  %263 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i423 = getelementptr i8, ptr %261, i32 %263
  %add.ptr14.i424 = getelementptr i8, ptr %add.ptr.i423, i32 %add92
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i424, i32 %259) #5, !srcloc !107
  %add95 = add i32 %csc_reg_off, 64
  %arrayidx97 = getelementptr %struct.dpu_csc_cfg, ptr %data, i32 0, i32 2, i32 2
  %264 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx97, align 4
  %266 = ptrtoint ptr %log_mask.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %log_mask.i, align 4
  %268 = load i32, ptr @dpu_hw_util_log_mask, align 4
  %and.i427 = and i32 %268, %267
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i427)
  %tobool.not.i428 = icmp eq i32 %and.i427, 0
  br i1 %tobool.not.i428, label %dpu_reg_write.exit425.dpu_reg_write.exit442_crit_edge, label %do.body.i431

dpu_reg_write.exit425.dpu_reg_write.exit442_crit_edge: ; preds = %dpu_reg_write.exit425
  call void @__sanitizer_cov_trace_pc() #7
  br label %dpu_reg_write.exit442

do.body.i431:                                     ; preds = %dpu_reg_write.exit425
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__drm_debug to i32))
  %269 = load i32, ptr @__drm_debug, align 4
  %and.i.i429 = and i32 %269, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i429)
  %tobool.i.not.i430 = icmp eq i32 %and.i.i429, 0
  br i1 %tobool.i.not.i430, label %do.body2.i435, label %if.then1.i434

if.then1.i434:                                    ; preds = %do.body.i431
  call void @__sanitizer_cov_trace_pc() #7
  %270 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %270)
  %271 = load i32, ptr %blk_off13.i, align 4
  %add.i433 = add i32 %271, %add95
  tail call void (ptr, ...) @__drm_err(ptr noundef nonnull @.str, ptr noundef nonnull @.str.35, i32 noundef %add.i433, i32 noundef %265) #5
  br label %dpu_reg_write.exit442

do.body2.i435:                                    ; preds = %do.body.i431
  call void @__sanitizer_cov_trace_pc() #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@dpu_hw_csc_setup, %if.then7.i438)) #5
          to label %dpu_reg_write.exit442 [label %if.then7.i438], !srcloc !106

if.then7.i438:                                    ; preds = %do.body2.i435
  call void @__sanitizer_cov_trace_pc() #7
  %272 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %blk_off13.i, align 4
  %add9.i437 = add i32 %273, %add95
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @dpu_reg_write.__UNIQUE_ID_ddebug338, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.2, i32 noundef 83, ptr noundef nonnull @.str.35, i32 noundef %add9.i437, i32 noundef %265) #5
  br label %dpu_reg_write.exit442

dpu_reg_write.exit442:                            ; preds = %if.then7.i438, %do.body2.i435, %if.then1.i434, %dpu_reg_write.exit425.dpu_reg_write.exit442_crit_edge
  %274 = tail call i32 @llvm.bswap.i32(i32 %265) #5
  %275 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load ptr, ptr %c, align 4
  %277 = ptrtoint ptr %blk_off13.i to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %blk_off13.i, align 4
  %add.ptr.i440 = getelementptr i8, ptr %276, i32 %278
  %add.ptr14.i441 = getelementptr i8, ptr %add.ptr.i440, i32 %add95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14.i441, i32 %274) #5, !srcloc !107
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 49)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !43, !45, !47, !49, !51, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95}
!llvm.module.flags = !{!97, !98, !99, !100, !101, !102, !103, !104}
!llvm.ident = !{!105}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 82, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @dpu_reg_write.__UNIQUE_ID_ddebug338, !1, !"__UNIQUE_ID_ddebug338", i1 false, i1 false}
!6 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 322, i32 3}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 324, i32 3}
!11 = !{ptr @.str.7, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 326, i32 3}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 328, i32 3}
!15 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 330, i32 3}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 334, i32 2}
!19 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 337, i32 2}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 340, i32 2}
!23 = !{ptr @.str.13, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 343, i32 2}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 346, i32 2}
!27 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 348, i32 2}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 350, i32 2}
!31 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 352, i32 2}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 366, i32 2}
!35 = distinct !{null, !36, !"matrix_shift", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 379, i32 19}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 386, i32 2}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 389, i32 2}
!41 = !{ptr @.str.21, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 392, i32 2}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 395, i32 2}
!45 = !{ptr @.str.23, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 397, i32 2}
!47 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 401, i32 2}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 403, i32 2}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 405, i32 2}
!53 = !{ptr @.str.27, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 409, i32 2}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 411, i32 2}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 413, i32 2}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 416, i32 2}
!61 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 417, i32 2}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 418, i32 2}
!65 = !{ptr @.str.33, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 421, i32 2}
!67 = !{ptr @.str.34, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 422, i32 2}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 423, i32 2}
!71 = !{ptr @dpu_hw_util_log_mask, !72, !"dpu_hw_util_log_mask", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 12, i32 12}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 257, i32 2}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 258, i32 2}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 259, i32 2}
!79 = !{ptr @.str.39, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 260, i32 2}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 261, i32 2}
!83 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 262, i32 2}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 263, i32 2}
!87 = !{ptr @_dpu_hw_setup_scaler3_lut.off_tbl, !88, !"off_tbl", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 105, i32 24}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 158, i32 6}
!91 = !{ptr @.str.44, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 168, i32 3}
!93 = !{ptr @_dpu_hw_setup_scaler3lite_lut.off_tbl, !94, !"off_tbl", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 180, i32 24}
!95 = !{ptr @.str.45, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/msm/disp/dpu1/dpu_hw_util.c", i32 182, i32 2}
!97 = !{i32 1, !"wchar_size", i32 2}
!98 = !{i32 1, !"min_enum_size", i32 4}
!99 = !{i32 8, !"branch-target-enforcement", i32 0}
!100 = !{i32 8, !"sign-return-address", i32 0}
!101 = !{i32 8, !"sign-return-address-all", i32 0}
!102 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!103 = !{i32 7, !"uwtable", i32 1}
!104 = !{i32 7, !"frame-pointer", i32 2}
!105 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!106 = !{i64 2148721197, i64 2148721202, i64 2148721215, i64 2148721259, i64 2148721293, i64 2148721314}
!107 = !{i64 6663022}
!108 = !{i64 6663440}
