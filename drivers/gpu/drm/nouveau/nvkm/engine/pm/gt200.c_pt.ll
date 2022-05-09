; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c_pt.bc'
source_filename = "../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nvkm_specmux = type { i32, i8, ptr, i8 }
%struct.nvkm_specsrc = type { i32, ptr, ptr }
%struct.nvkm_specdom = type { i16, ptr, ptr }
%struct.nvkm_specsig = type { i8, ptr, ptr }
%struct.nvkm_funcdom = type { ptr, ptr, ptr }

@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sel0\00", [27 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"sel1\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral = internal constant { [3 x %struct.nvkm_specmux], [48 x i8] } { [3 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 15, i8 0, ptr @.str, i8 1 }, %struct.nvkm_specmux { i32 31, i8 16, ptr @.str.1, i8 1 }, %struct.nvkm_specmux zeroinitializer], [48 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pgraph_rop0_crop_pm_mux\00", [40 x i8] zeroinitializer }, align 32
@gt200_crop_sources = dso_local constant { [2 x %struct.nvkm_specsrc], [40 x i8] } { [2 x %struct.nvkm_specsrc] [%struct.nvkm_specsrc { i32 4222984, ptr @.compoundliteral, ptr @.str.2 }, %struct.nvkm_specsrc zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"sel\00", [28 x i8] zeroinitializer }, align 32
@.compoundliteral.4 = internal constant { [2 x %struct.nvkm_specmux], [32 x i8] } { [2 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 63, i8 0, ptr @.str.3, i8 1 }, %struct.nvkm_specmux zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"pgraph_tpc0_prop_pm_mux\00", [40 x i8] zeroinitializer }, align 32
@gt200_prop_sources = dso_local constant { [2 x %struct.nvkm_specsrc], [40 x i8] } { [2 x %struct.nvkm_specsrc] [%struct.nvkm_specsrc { i32 4228944, ptr @.compoundliteral.4, ptr @.str.5 }, %struct.nvkm_specsrc zeroinitializer], [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"unk0\00", [27 x i8] zeroinitializer }, align 32
@.compoundliteral.7 = internal constant { [2 x %struct.nvkm_specmux], [32 x i8] } { [2 x %struct.nvkm_specmux] [%struct.nvkm_specmux { i32 1048575, i8 0, ptr @.str.6, i8 0 }, %struct.nvkm_specmux zeroinitializer], [32 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"pgraph_tpc0_tex_unk08\00", [42 x i8] zeroinitializer }, align 32
@gt200_tex_sources = dso_local constant { [2 x %struct.nvkm_specsrc], [40 x i8] } { [2 x %struct.nvkm_specsrc] [%struct.nvkm_specsrc { i32 4228360, ptr @.compoundliteral.7, ptr @.str.8 }, %struct.nvkm_specsrc zeroinitializer], [40 x i8] zeroinitializer }, align 32
@gt200_pm = internal constant { [9 x %struct.nvkm_specdom], [52 x i8] } { [9 x %struct.nvkm_specdom] [%struct.nvkm_specdom { i16 32, ptr @.compoundliteral.9, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 240, ptr @.compoundliteral.55, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 240, ptr @.compoundliteral.80, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 32, ptr @.compoundliteral.81, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 32, ptr @.compoundliteral.82, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 32, ptr @.compoundliteral.83, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 32, ptr @.compoundliteral.84, ptr @nv40_perfctr_func }, %struct.nvkm_specdom { i16 32, ptr @.compoundliteral.85, ptr @nv40_perfctr_func }, %struct.nvkm_specdom zeroinitializer], [52 x i8] zeroinitializer }, align 32
@.compoundliteral.9 = internal constant { [1 x %struct.nvkm_specsig], [20 x i8] } zeroinitializer, align 32
@nv40_perfctr_func = external dso_local constant %struct.nvkm_funcdom, align 4
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc01_gr_idle\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pc01_strmout_00\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pc01_strmout_01\00", [16 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc01_trast_00\00", [18 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc01_trast_01\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc01_trast_02\00", [18 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc01_trast_03\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc01_trast_04\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc01_trast_05\00", [18 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc01_vattr_00\00", [18 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc01_vattr_01\00", [18 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_00\00", [17 x i8] zeroinitializer }, align 32
@g84_vfetch_sources = external dso_local constant [0 x %struct.nvkm_specsrc], align 4
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_01\00", [17 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_02\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_03\00", [17 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_04\00", [17 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_05\00", [17 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_06\00", [17 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_07\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_08\00", [17 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_09\00", [17 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_0a\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_0b\00", [17 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_0c\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_0d\00", [17 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_0e\00", [17 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_0f\00", [17 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_10\00", [17 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_11\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_12\00", [17 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_13\00", [17 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_14\00", [17 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_15\00", [17 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_16\00", [17 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_17\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_18\00", [17 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"pc01_vfetch_19\00", [17 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc01_zcull_00\00", [18 x i8] zeroinitializer }, align 32
@nv50_zcull_sources = external dso_local constant [0 x %struct.nvkm_specsrc], align 4
@.str.48 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc01_zcull_01\00", [18 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc01_zcull_02\00", [18 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc01_zcull_03\00", [18 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc01_zcull_04\00", [18 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"pc01_zcull_05\00", [18 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"pc01_unk00\00", [21 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc01_trailer\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.55 = internal constant { [46 x %struct.nvkm_specsig], [152 x i8] } { [46 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 -55, ptr @.str.10, ptr null }, %struct.nvkm_specsig { i8 -124, ptr @.str.11, ptr null }, %struct.nvkm_specsig { i8 -123, ptr @.str.12, ptr null }, %struct.nvkm_specsig { i8 -34, ptr @.str.13, ptr null }, %struct.nvkm_specsig { i8 -33, ptr @.str.14, ptr null }, %struct.nvkm_specsig { i8 -32, ptr @.str.15, ptr null }, %struct.nvkm_specsig { i8 -31, ptr @.str.16, ptr null }, %struct.nvkm_specsig { i8 -28, ptr @.str.17, ptr null }, %struct.nvkm_specsig { i8 -27, ptr @.str.18, ptr null }, %struct.nvkm_specsig { i8 -126, ptr @.str.19, ptr null }, %struct.nvkm_specsig { i8 -125, ptr @.str.20, ptr null }, %struct.nvkm_specsig { i8 70, ptr @.str.21, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 71, ptr @.str.22, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 72, ptr @.str.23, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 73, ptr @.str.24, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 74, ptr @.str.25, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 75, ptr @.str.26, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 76, ptr @.str.27, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 77, ptr @.str.28, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 78, ptr @.str.29, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 79, ptr @.str.30, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 80, ptr @.str.31, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 81, ptr @.str.32, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 82, ptr @.str.33, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 83, ptr @.str.34, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 84, ptr @.str.35, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 85, ptr @.str.36, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 86, ptr @.str.37, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 87, ptr @.str.38, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 88, ptr @.str.39, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 89, ptr @.str.40, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 90, ptr @.str.41, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 91, ptr @.str.42, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 92, ptr @.str.43, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 93, ptr @.str.44, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 94, ptr @.str.45, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 95, ptr @.str.46, ptr @g84_vfetch_sources }, %struct.nvkm_specsig { i8 7, ptr @.str.47, ptr @nv50_zcull_sources }, %struct.nvkm_specsig { i8 8, ptr @.str.48, ptr @nv50_zcull_sources }, %struct.nvkm_specsig { i8 9, ptr @.str.49, ptr @nv50_zcull_sources }, %struct.nvkm_specsig { i8 10, ptr @.str.50, ptr @nv50_zcull_sources }, %struct.nvkm_specsig { i8 11, ptr @.str.51, ptr @nv50_zcull_sources }, %struct.nvkm_specsig { i8 12, ptr @.str.52, ptr @nv50_zcull_sources }, %struct.nvkm_specsig { i8 -80, ptr @.str.53, ptr null }, %struct.nvkm_specsig { i8 -20, ptr @.str.54, ptr null }, %struct.nvkm_specsig zeroinitializer], [152 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc02_crop_00\00", [19 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc02_crop_01\00", [19 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc02_crop_02\00", [19 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc02_crop_03\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc02_prop_00\00", [19 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc02_prop_01\00", [19 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc02_prop_02\00", [19 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc02_prop_03\00", [19 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc02_prop_04\00", [19 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc02_prop_05\00", [19 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc02_prop_06\00", [19 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc02_prop_07\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pc02_tex_00\00", [20 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pc02_tex_01\00", [20 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pc02_tex_02\00", [20 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pc02_tex_03\00", [20 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pc02_tex_04\00", [20 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pc02_tex_05\00", [20 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"pc02_tex_06\00", [20 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc02_zrop_00\00", [19 x i8] zeroinitializer }, align 32
@nv50_zrop_sources = external dso_local constant [0 x %struct.nvkm_specsrc], align 4
@.str.76 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc02_zrop_01\00", [19 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc02_zrop_02\00", [19 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc02_zrop_03\00", [19 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pc02_trailer\00", [19 x i8] zeroinitializer }, align 32
@.compoundliteral.80 = internal constant { [25 x %struct.nvkm_specsig], [84 x i8] } { [25 x %struct.nvkm_specsig] [%struct.nvkm_specsig { i8 85, ptr @.str.56, ptr @gt200_crop_sources }, %struct.nvkm_specsig { i8 86, ptr @.str.57, ptr @gt200_crop_sources }, %struct.nvkm_specsig { i8 87, ptr @.str.58, ptr @gt200_crop_sources }, %struct.nvkm_specsig { i8 88, ptr @.str.59, ptr @gt200_crop_sources }, %struct.nvkm_specsig { i8 0, ptr @.str.60, ptr @gt200_prop_sources }, %struct.nvkm_specsig { i8 1, ptr @.str.61, ptr @gt200_prop_sources }, %struct.nvkm_specsig { i8 2, ptr @.str.62, ptr @gt200_prop_sources }, %struct.nvkm_specsig { i8 3, ptr @.str.63, ptr @gt200_prop_sources }, %struct.nvkm_specsig { i8 4, ptr @.str.64, ptr @gt200_prop_sources }, %struct.nvkm_specsig { i8 5, ptr @.str.65, ptr @gt200_prop_sources }, %struct.nvkm_specsig { i8 6, ptr @.str.66, ptr @gt200_prop_sources }, %struct.nvkm_specsig { i8 7, ptr @.str.67, ptr @gt200_prop_sources }, %struct.nvkm_specsig { i8 120, ptr @.str.68, ptr @gt200_tex_sources }, %struct.nvkm_specsig { i8 121, ptr @.str.69, ptr @gt200_tex_sources }, %struct.nvkm_specsig { i8 122, ptr @.str.70, ptr @gt200_tex_sources }, %struct.nvkm_specsig { i8 123, ptr @.str.71, ptr @gt200_tex_sources }, %struct.nvkm_specsig { i8 50, ptr @.str.72, ptr @gt200_tex_sources }, %struct.nvkm_specsig { i8 51, ptr @.str.73, ptr @gt200_tex_sources }, %struct.nvkm_specsig { i8 52, ptr @.str.74, ptr @gt200_tex_sources }, %struct.nvkm_specsig { i8 116, ptr @.str.75, ptr @nv50_zrop_sources }, %struct.nvkm_specsig { i8 117, ptr @.str.76, ptr @nv50_zrop_sources }, %struct.nvkm_specsig { i8 118, ptr @.str.77, ptr @nv50_zrop_sources }, %struct.nvkm_specsig { i8 119, ptr @.str.78, ptr @nv50_zrop_sources }, %struct.nvkm_specsig { i8 -20, ptr @.str.79, ptr null }, %struct.nvkm_specsig zeroinitializer], [84 x i8] zeroinitializer }, align 32
@.compoundliteral.81 = internal constant { [1 x %struct.nvkm_specsig], [20 x i8] } zeroinitializer, align 32
@.compoundliteral.82 = internal constant { [1 x %struct.nvkm_specsig], [20 x i8] } zeroinitializer, align 32
@.compoundliteral.83 = internal constant { [1 x %struct.nvkm_specsig], [20 x i8] } zeroinitializer, align 32
@.compoundliteral.84 = internal constant { [1 x %struct.nvkm_specsig], [20 x i8] } zeroinitializer, align 32
@.compoundliteral.85 = internal constant { [1 x %struct.nvkm_specsig], [20 x i8] } zeroinitializer, align 32
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 29, i32 14 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 30, i32 16 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c".compoundliteral\00", align 1
@___asan_gen_.95 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 32, i32 6 }
@___asan_gen_.96 = private unnamed_addr constant [19 x i8] c"gt200_crop_sources\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 27, i32 1 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 39, i32 15 }
@___asan_gen_.102 = private unnamed_addr constant [19 x i8] c".compoundliteral.4\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 41, i32 6 }
@___asan_gen_.106 = private unnamed_addr constant [19 x i8] c"gt200_prop_sources\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 37, i32 1 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 48, i32 18 }
@___asan_gen_.112 = private unnamed_addr constant [19 x i8] c".compoundliteral.7\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 50, i32 6 }
@___asan_gen_.116 = private unnamed_addr constant [18 x i8] c"gt200_tex_sources\00", align 1
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 46, i32 1 }
@___asan_gen_.119 = private unnamed_addr constant [9 x i8] c"gt200_pm\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 55, i32 1 }
@___asan_gen_.122 = private unnamed_addr constant [19 x i8] c".compoundliteral.9\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 60, i32 12 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 61, i32 12 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 62, i32 12 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 63, i32 12 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 64, i32 12 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 65, i32 12 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 66, i32 12 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 67, i32 12 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 68, i32 12 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 69, i32 12 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 70, i32 12 }
@___asan_gen_.158 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 71, i32 12 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 72, i32 12 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 73, i32 12 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 74, i32 12 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 75, i32 12 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 76, i32 12 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 77, i32 12 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 78, i32 12 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 79, i32 12 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 80, i32 12 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 81, i32 12 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 82, i32 12 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 83, i32 12 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 84, i32 12 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 85, i32 12 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 86, i32 12 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 87, i32 12 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 88, i32 12 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 89, i32 12 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 90, i32 12 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 91, i32 12 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 92, i32 12 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 93, i32 12 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 94, i32 12 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 95, i32 12 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 96, i32 12 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 97, i32 12 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 98, i32 12 }
@___asan_gen_.242 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 99, i32 12 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 100, i32 12 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 101, i32 12 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 102, i32 12 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 104, i32 12 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 105, i32 12 }
@___asan_gen_.258 = private unnamed_addr constant [20 x i8] c".compoundliteral.55\00", align 1
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 109, i32 12 }
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 110, i32 12 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 111, i32 12 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 112, i32 12 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 113, i32 12 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 114, i32 12 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 115, i32 12 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 116, i32 12 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 117, i32 12 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 118, i32 12 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 119, i32 12 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 120, i32 12 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 121, i32 12 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 122, i32 12 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 123, i32 12 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 124, i32 12 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 125, i32 12 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 126, i32 12 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 127, i32 12 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 128, i32 12 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 129, i32 12 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 130, i32 12 }
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 131, i32 12 }
@___asan_gen_.328 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.329 = private constant [50 x i8] c"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.329, i32 132, i32 12 }
@___asan_gen_.331 = private unnamed_addr constant [20 x i8] c".compoundliteral.80\00", align 1
@___asan_gen_.332 = private unnamed_addr constant [20 x i8] c".compoundliteral.81\00", align 1
@___asan_gen_.333 = private unnamed_addr constant [20 x i8] c".compoundliteral.82\00", align 1
@___asan_gen_.334 = private unnamed_addr constant [20 x i8] c".compoundliteral.83\00", align 1
@___asan_gen_.335 = private unnamed_addr constant [20 x i8] c".compoundliteral.84\00", align 1
@___asan_gen_.336 = private unnamed_addr constant [20 x i8] c".compoundliteral.85\00", align 1
@llvm.compiler.used = appending global [91 x ptr] [ptr @.str, ptr @.str.1, ptr @.compoundliteral, ptr @.str.2, ptr @gt200_crop_sources, ptr @.str.3, ptr @.compoundliteral.4, ptr @.str.5, ptr @gt200_prop_sources, ptr @.str.6, ptr @.compoundliteral.7, ptr @.str.8, ptr @gt200_tex_sources, ptr @gt200_pm, ptr @.compoundliteral.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.compoundliteral.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.compoundliteral.80, ptr @.compoundliteral.81, ptr @.compoundliteral.82, ptr @.compoundliteral.83, ptr @.compoundliteral.84, ptr @.compoundliteral.85], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt200_crop_sources to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.4 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt200_prop_sources to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.7 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt200_tex_sources to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @gt200_pm to i32), i32 108, i32 160, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.9 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.242 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.55 to i32), i32 552, i32 704, i32 ptrtoint (ptr @___asan_gen_.258 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.80 to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.81 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.82 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.83 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.84 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.compoundliteral.85 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @gt200_pm_new(ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ppm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @nv40_pm_new_(ptr noundef nonnull @gt200_pm, ptr noundef %device, i32 noundef %type, i32 noundef %inst, ptr noundef %ppm) #2
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @nv40_pm_new_(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !98, !100, !102, !104, !106, !108, !110, !112, !114, !116, !118, !120, !122, !124, !126, !128, !130, !132, !134, !136, !138, !140, !142, !144, !146, !148, !150, !152, !154, !156, !158}
!llvm.module.flags = !{!160, !161, !162, !163, !164, !165, !166, !167}
!llvm.ident = !{!168}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 29, i32 14}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 30, i32 16}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 32, i32 6}
!6 = !{ptr @gt200_crop_sources, !7, !"gt200_crop_sources", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 27, i32 1}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 39, i32 15}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 41, i32 6}
!12 = !{ptr @gt200_prop_sources, !13, !"gt200_prop_sources", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 37, i32 1}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 48, i32 18}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 50, i32 6}
!18 = !{ptr @gt200_tex_sources, !19, !"gt200_tex_sources", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 46, i32 1}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 60, i32 12}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 61, i32 12}
!24 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 62, i32 12}
!26 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 63, i32 12}
!28 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 64, i32 12}
!30 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 65, i32 12}
!32 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 66, i32 12}
!34 = !{ptr @.str.17, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 67, i32 12}
!36 = !{ptr @.str.18, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 68, i32 12}
!38 = !{ptr @.str.19, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 69, i32 12}
!40 = !{ptr @.str.20, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 70, i32 12}
!42 = !{ptr @.str.21, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 71, i32 12}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 72, i32 12}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 73, i32 12}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 74, i32 12}
!50 = !{ptr @.str.25, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 75, i32 12}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 76, i32 12}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 77, i32 12}
!56 = !{ptr @.str.28, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 78, i32 12}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 79, i32 12}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 80, i32 12}
!62 = !{ptr @.str.31, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 81, i32 12}
!64 = !{ptr @.str.32, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 82, i32 12}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 83, i32 12}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 84, i32 12}
!70 = !{ptr @.str.35, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 85, i32 12}
!72 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 86, i32 12}
!74 = !{ptr @.str.37, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 87, i32 12}
!76 = !{ptr @.str.38, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 88, i32 12}
!78 = !{ptr @.str.39, !79, !"<string literal>", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 89, i32 12}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 90, i32 12}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 91, i32 12}
!84 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 92, i32 12}
!86 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 93, i32 12}
!88 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 94, i32 12}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 95, i32 12}
!92 = !{ptr @.str.46, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 96, i32 12}
!94 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 97, i32 12}
!96 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 98, i32 12}
!98 = !{ptr @.str.49, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 99, i32 12}
!100 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 100, i32 12}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 101, i32 12}
!104 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 102, i32 12}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 104, i32 12}
!108 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 105, i32 12}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 109, i32 12}
!112 = !{ptr @.str.57, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 110, i32 12}
!114 = !{ptr @.str.58, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 111, i32 12}
!116 = !{ptr @.str.59, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 112, i32 12}
!118 = !{ptr @.str.60, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 113, i32 12}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 114, i32 12}
!122 = !{ptr @.str.62, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 115, i32 12}
!124 = !{ptr @.str.63, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 116, i32 12}
!126 = !{ptr @.str.64, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 117, i32 12}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 118, i32 12}
!130 = !{ptr @.str.66, !131, !"<string literal>", i1 false, i1 false}
!131 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 119, i32 12}
!132 = !{ptr @.str.67, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 120, i32 12}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 121, i32 12}
!136 = !{ptr @.str.69, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 122, i32 12}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 123, i32 12}
!140 = !{ptr @.str.71, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 124, i32 12}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 125, i32 12}
!144 = !{ptr @.str.73, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 126, i32 12}
!146 = !{ptr @.str.74, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 127, i32 12}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 128, i32 12}
!150 = !{ptr @.str.76, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 129, i32 12}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 130, i32 12}
!154 = !{ptr @.str.78, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 131, i32 12}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 132, i32 12}
!158 = !{ptr @gt200_pm, !159, !"gt200_pm", i1 false, i1 false}
!159 = !{!"../drivers/gpu/drm/nouveau/nvkm/engine/pm/gt200.c", i32 55, i32 1}
!160 = !{i32 1, !"wchar_size", i32 2}
!161 = !{i32 1, !"min_enum_size", i32 4}
!162 = !{i32 8, !"branch-target-enforcement", i32 0}
!163 = !{i32 8, !"sign-return-address", i32 0}
!164 = !{i32 8, !"sign-return-address-all", i32 0}
!165 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!166 = !{i32 7, !"uwtable", i32 1}
!167 = !{i32 7, !"frame-pointer", i32 2}
!168 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
