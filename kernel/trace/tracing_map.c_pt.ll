; ModuleID = '/llk/IR_all_yes/kernel/trace/tracing_map.c_pt.bc'
source_filename = "../kernel/trace/tracing_map.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%emit_function_args_ty = type { i32, i32, i32 }
%emit_arcs_args_ty = type { i32, ptr }
%struct.tracing_map_elt = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracing_map_field = type { ptr, %union.anon }
%union.anon = type { %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.tracing_map = type { i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, [6 x %struct.tracing_map_field], i32, [3 x i32], i32, %struct.tracing_map_sort_key, i32, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic_t = type { i32 }
%struct.tracing_map_sort_key = type { i32, i8 }
%struct.tracing_map_array = type { i32, i32, i32, i32, i32, ptr }
%struct.tracing_map_entry = type { i32, ptr }
%struct.tracing_map_ops = type { ptr, ptr, ptr, ptr }
%struct.tracing_map_sort_entry = type { ptr, ptr, i8, i8 }

@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@detect_dups.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"kernel/trace/tracing_map.c\00", [37 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Duplicates detected: %d\0A\00", [39 x i8] zeroinitializer }, align 32
@__llvm_gcov_ctr = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.2 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.3 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.4 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.5 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.6 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.7 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.8 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.9 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.10 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.11 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.12 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.13 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.14 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.15 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.16 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.17 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.18 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.19 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.20 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.21 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.22 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.23 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.24 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.25 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.26 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.27 = internal global [14 x i64] zeroinitializer
@__llvm_gcov_ctr.28 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.29 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.30 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.31 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.32 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.33 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.34 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.35 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.36 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.37 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.38 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.39 = internal global [10 x i64] zeroinitializer
@__llvm_gcov_ctr.40 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.41 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.42 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.43 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.44 = internal global [13 x i64] zeroinitializer
@__llvm_gcov_ctr.45 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.46 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.47 = internal global [8 x i64] zeroinitializer
@__llvm_gcov_ctr.48 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.49 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.50 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.51 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.52 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.53 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.54 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.55 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.56 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.57 = internal global [14 x i64] zeroinitializer
@__llvm_gcov_ctr.58 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.59 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.60 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.61 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.62 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.63 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.64 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.65 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.66 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.67 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.68 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.69 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.70 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.71 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.72 = internal global [27 x i64] zeroinitializer
@__llvm_gcov_ctr.73 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.74 = internal global [6 x i64] zeroinitializer
@__llvm_gcov_ctr.75 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.76 = internal global [2 x i64] zeroinitializer
@__llvm_gcov_ctr.77 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.78 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.79 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.80 = internal global [4 x i64] zeroinitializer
@__llvm_gcov_ctr.81 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.82 = internal global [9 x i64] zeroinitializer
@__llvm_gcov_ctr.83 = internal global [1 x i64] zeroinitializer
@__llvm_gcov_ctr.84 = internal global [3 x i64] zeroinitializer
@__llvm_gcov_ctr.85 = internal global [2 x i64] zeroinitializer
@0 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"/llk/linux-5.17/build_arm_allyes/kernel/trace/tracing_map.gcda\00", [33 x i8] zeroinitializer }, align 32
@__llvm_internal_gcov_emit_function_args.0 = internal unnamed_addr constant [85 x %emit_function_args_ty] [%emit_function_args_ty { i32 0, i32 -1551874160, i32 1697374820 }, %emit_function_args_ty { i32 1, i32 1934042012, i32 1697374820 }, %emit_function_args_ty { i32 2, i32 1139143848, i32 1697374820 }, %emit_function_args_ty { i32 3, i32 37460171, i32 1697374820 }, %emit_function_args_ty { i32 4, i32 -2106660670, i32 1697374820 }, %emit_function_args_ty { i32 5, i32 -474028377, i32 1697374820 }, %emit_function_args_ty { i32 6, i32 -1601932681, i32 1697374820 }, %emit_function_args_ty { i32 7, i32 -793981719, i32 1697374820 }, %emit_function_args_ty { i32 8, i32 1443848961, i32 1697374820 }, %emit_function_args_ty { i32 9, i32 1374577791, i32 1697374820 }, %emit_function_args_ty { i32 10, i32 1244635152, i32 1697374820 }, %emit_function_args_ty { i32 11, i32 -100546829, i32 1697374820 }, %emit_function_args_ty { i32 12, i32 872607008, i32 1697374820 }, %emit_function_args_ty { i32 13, i32 -566501162, i32 1697374820 }, %emit_function_args_ty { i32 14, i32 -938813948, i32 1697374820 }, %emit_function_args_ty { i32 15, i32 440917024, i32 1697374820 }, %emit_function_args_ty { i32 16, i32 1084733616, i32 1697374820 }, %emit_function_args_ty { i32 17, i32 -628307558, i32 1697374820 }, %emit_function_args_ty { i32 18, i32 -932897799, i32 1697374820 }, %emit_function_args_ty { i32 19, i32 -1531877640, i32 1697374820 }, %emit_function_args_ty { i32 20, i32 -1399493989, i32 1697374820 }, %emit_function_args_ty { i32 21, i32 -200611750, i32 1697374820 }, %emit_function_args_ty { i32 22, i32 174217836, i32 1697374820 }, %emit_function_args_ty { i32 23, i32 -1553690794, i32 1697374820 }, %emit_function_args_ty { i32 24, i32 652585569, i32 1697374820 }, %emit_function_args_ty { i32 25, i32 -1429549698, i32 1697374820 }, %emit_function_args_ty { i32 26, i32 2014186785, i32 1697374820 }, %emit_function_args_ty { i32 27, i32 1521404668, i32 1697374820 }, %emit_function_args_ty { i32 28, i32 -270436987, i32 1697374820 }, %emit_function_args_ty { i32 29, i32 -703287771, i32 1697374820 }, %emit_function_args_ty { i32 30, i32 -966478603, i32 1697374820 }, %emit_function_args_ty { i32 31, i32 -1367924484, i32 1697374820 }, %emit_function_args_ty { i32 32, i32 2137933198, i32 1697374820 }, %emit_function_args_ty { i32 33, i32 135066983, i32 1697374820 }, %emit_function_args_ty { i32 34, i32 612087908, i32 1697374820 }, %emit_function_args_ty { i32 35, i32 -1123858501, i32 1697374820 }, %emit_function_args_ty { i32 36, i32 -1159899074, i32 1697374820 }, %emit_function_args_ty { i32 37, i32 436087400, i32 1697374820 }, %emit_function_args_ty { i32 38, i32 1387001686, i32 1697374820 }, %emit_function_args_ty { i32 39, i32 58747118, i32 1697374820 }, %emit_function_args_ty { i32 40, i32 -608199936, i32 1697374820 }, %emit_function_args_ty { i32 41, i32 -1689343691, i32 1697374820 }, %emit_function_args_ty { i32 42, i32 -108704861, i32 1697374820 }, %emit_function_args_ty { i32 43, i32 166354778, i32 1697374820 }, %emit_function_args_ty { i32 44, i32 -916040965, i32 1697374820 }, %emit_function_args_ty { i32 45, i32 -1681122280, i32 1697374820 }, %emit_function_args_ty { i32 46, i32 -2024967911, i32 1697374820 }, %emit_function_args_ty { i32 47, i32 565940361, i32 1697374820 }, %emit_function_args_ty { i32 48, i32 591936773, i32 1697374820 }, %emit_function_args_ty { i32 49, i32 1799692917, i32 1697374820 }, %emit_function_args_ty { i32 50, i32 -511491552, i32 1697374820 }, %emit_function_args_ty { i32 51, i32 -1727334202, i32 1697374820 }, %emit_function_args_ty { i32 52, i32 47165945, i32 1697374820 }, %emit_function_args_ty { i32 53, i32 -1672745738, i32 1697374820 }, %emit_function_args_ty { i32 54, i32 1663674071, i32 1697374820 }, %emit_function_args_ty { i32 55, i32 -986397664, i32 1697374820 }, %emit_function_args_ty { i32 56, i32 1560640357, i32 1697374820 }, %emit_function_args_ty { i32 57, i32 -1335479236, i32 1697374820 }, %emit_function_args_ty { i32 58, i32 1596841543, i32 1697374820 }, %emit_function_args_ty { i32 59, i32 -918793433, i32 1697374820 }, %emit_function_args_ty { i32 60, i32 -667110519, i32 1697374820 }, %emit_function_args_ty { i32 61, i32 -812408856, i32 1697374820 }, %emit_function_args_ty { i32 62, i32 1444380676, i32 1697374820 }, %emit_function_args_ty { i32 63, i32 1219279309, i32 1697374820 }, %emit_function_args_ty { i32 64, i32 -1082265946, i32 1697374820 }, %emit_function_args_ty { i32 65, i32 -868360281, i32 1697374820 }, %emit_function_args_ty { i32 66, i32 -693354315, i32 1697374820 }, %emit_function_args_ty { i32 67, i32 1212846073, i32 1697374820 }, %emit_function_args_ty { i32 68, i32 247484942, i32 1697374820 }, %emit_function_args_ty { i32 69, i32 -400554785, i32 1697374820 }, %emit_function_args_ty { i32 70, i32 -1782918348, i32 1697374820 }, %emit_function_args_ty { i32 71, i32 795548855, i32 1697374820 }, %emit_function_args_ty { i32 72, i32 727036892, i32 1697374820 }, %emit_function_args_ty { i32 73, i32 1841983822, i32 1697374820 }, %emit_function_args_ty { i32 74, i32 1624494247, i32 1697374820 }, %emit_function_args_ty { i32 75, i32 -963894156, i32 1697374820 }, %emit_function_args_ty { i32 76, i32 357170134, i32 1697374820 }, %emit_function_args_ty { i32 77, i32 1366964667, i32 1697374820 }, %emit_function_args_ty { i32 78, i32 -558074774, i32 1697374820 }, %emit_function_args_ty { i32 79, i32 -2128255985, i32 1697374820 }, %emit_function_args_ty { i32 80, i32 1473378369, i32 1697374820 }, %emit_function_args_ty { i32 81, i32 -1256223003, i32 1697374820 }, %emit_function_args_ty { i32 82, i32 -10115036, i32 1697374820 }, %emit_function_args_ty { i32 83, i32 -107937318, i32 1697374820 }, %emit_function_args_ty { i32 84, i32 1571338119, i32 1697374820 }]
@__llvm_internal_gcov_emit_arcs_args.0 = internal unnamed_addr constant [85 x %emit_arcs_args_ty] [%emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.2 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.3 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.4 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.5 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.6 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.7 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.8 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.9 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.10 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.11 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.12 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.13 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.14 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.15 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.16 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.17 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.18 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.19 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.20 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.21 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.22 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.23 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.24 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.25 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.26 }, %emit_arcs_args_ty { i32 14, ptr @__llvm_gcov_ctr.27 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.28 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.29 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.30 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.31 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.32 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.33 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.34 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.35 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.36 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.37 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.38 }, %emit_arcs_args_ty { i32 10, ptr @__llvm_gcov_ctr.39 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.40 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.41 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.42 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.43 }, %emit_arcs_args_ty { i32 13, ptr @__llvm_gcov_ctr.44 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.45 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.46 }, %emit_arcs_args_ty { i32 8, ptr @__llvm_gcov_ctr.47 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.48 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.49 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.50 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.51 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.52 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.53 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.54 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.55 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.56 }, %emit_arcs_args_ty { i32 14, ptr @__llvm_gcov_ctr.57 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.58 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.59 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.60 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.61 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.62 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.63 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.64 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.65 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.66 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.67 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.68 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.69 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.70 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.71 }, %emit_arcs_args_ty { i32 27, ptr @__llvm_gcov_ctr.72 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.73 }, %emit_arcs_args_ty { i32 6, ptr @__llvm_gcov_ctr.74 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.75 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.76 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.77 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.78 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.79 }, %emit_arcs_args_ty { i32 4, ptr @__llvm_gcov_ctr.80 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.81 }, %emit_arcs_args_ty { i32 9, ptr @__llvm_gcov_ctr.82 }, %emit_arcs_args_ty { i32 1, ptr @__llvm_gcov_ctr.83 }, %emit_arcs_args_ty { i32 3, ptr @__llvm_gcov_ctr.84 }, %emit_arcs_args_ty { i32 2, ptr @__llvm_gcov_ctr.85 }]
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 4, i64 8]
@__sancov_gen_cov_switch_values.86 = internal global [14 x i64] [i64 12, i64 32, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7, i64 8, i64 9, i64 10, i64 11, i64 12]
@__sancov_gen_cov_switch_values.87 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.92 = private constant [30 x i8] c"../kernel/trace/tracing_map.c\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.92, i32 984, i32 2 }
@___asan_gen_.94 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.compiler.used = appending global [2 x ptr] [ptr @.str, ptr @.str.1], section "llvm.metadata"
@1 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @0 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [2 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 0, ptr @__llvm_gcov_init, ptr null }, { i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tracing_map_update_sum(ptr nocapture noundef readonly %elt, i32 noundef %i, i64 noundef %n) local_unnamed_addr #0 align 64 !dbg !16 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !19
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr, align 8
  %fields = getelementptr inbounds %struct.tracing_map_elt, ptr %elt, i32 0, i32 1, !dbg !20
  %1 = ptrtoint ptr %fields to i32, !dbg !20
  call void @__asan_load4_noabort(i32 %1), !dbg !20
  %2 = load ptr, ptr %fields, align 4, !dbg !20
  %3 = getelementptr %struct.tracing_map_field, ptr %2, i32 %i, i32 1, !dbg !21
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.2, align 8
  %4 = add i64 %gcov_ctr.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.2, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.53, align 8
  %5 = add i64 %gcov_ctr.i.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.53, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %3, i32 noundef 8) #16, !dbg !22
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %6 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.54, align 8
  tail call void @generic_atomic64_add(i64 noundef %n, ptr noundef %3) #16, !dbg !29
  ret void, !dbg !30
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @tracing_map_read_sum(ptr nocapture noundef readonly %elt, i32 noundef %i) local_unnamed_addr #0 align 64 !dbg !31 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !32
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.3, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.3, align 8
  %fields = getelementptr inbounds %struct.tracing_map_elt, ptr %elt, i32 0, i32 1, !dbg !33
  %1 = ptrtoint ptr %fields to i32, !dbg !33
  call void @__asan_load4_noabort(i32 %1), !dbg !33
  %2 = load ptr, ptr %fields, align 4, !dbg !33
  %3 = getelementptr %struct.tracing_map_field, ptr %2, i32 %i, i32 1, !dbg !34
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.4, align 8
  %4 = add i64 %gcov_ctr.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.4, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.55, align 8
  %5 = add i64 %gcov_ctr.i.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.55, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %3, i32 noundef 8) #16, !dbg !35
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %6 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.54, align 8
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %3) #16, !dbg !40
  ret i64 %call.i, !dbg !41
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tracing_map_set_var(ptr nocapture noundef readonly %elt, i32 noundef %i, i64 noundef %n) local_unnamed_addr #0 align 64 !dbg !42 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !43
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.5, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.5, align 8
  %vars = getelementptr inbounds %struct.tracing_map_elt, ptr %elt, i32 0, i32 2, !dbg !44
  %1 = ptrtoint ptr %vars to i32, !dbg !44
  call void @__asan_load4_noabort(i32 %1), !dbg !44
  %2 = load ptr, ptr %vars, align 4, !dbg !44
  %arrayidx = getelementptr %struct.atomic64_t, ptr %2, i32 %i, !dbg !45
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.6, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.6, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.56, align 8
  %4 = add i64 %gcov_ctr.i.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.56, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx, i32 noundef 8) #16, !dbg !46
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %5 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.54, align 8
  tail call void @generic_atomic64_set(ptr noundef %arrayidx, i64 noundef %n) #16, !dbg !51
  %var_set = getelementptr inbounds %struct.tracing_map_elt, ptr %elt, i32 0, i32 3, !dbg !52
  %6 = ptrtoint ptr %var_set to i32, !dbg !52
  call void @__asan_load4_noabort(i32 %6), !dbg !52
  %7 = load ptr, ptr %var_set, align 4, !dbg !52
  %arrayidx1 = getelementptr i8, ptr %7, i32 %i, !dbg !53
  %8 = ptrtoint ptr %arrayidx1 to i32, !dbg !54
  call void @__asan_store1_noabort(i32 %8), !dbg !54
  store i8 1, ptr %arrayidx1, align 1, !dbg !54
  ret void, !dbg !55
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @tracing_map_var_set(ptr nocapture noundef readonly %elt, i32 noundef %i) local_unnamed_addr #1 align 64 !dbg !56 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !57
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.7, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.7, align 8
  %var_set = getelementptr inbounds %struct.tracing_map_elt, ptr %elt, i32 0, i32 3, !dbg !58
  %1 = ptrtoint ptr %var_set to i32, !dbg !58
  call void @__asan_load4_noabort(i32 %1), !dbg !58
  %2 = load ptr, ptr %var_set, align 4, !dbg !58
  %arrayidx = getelementptr i8, ptr %2, i32 %i, !dbg !59
  %3 = ptrtoint ptr %arrayidx to i32, !dbg !59
  call void @__asan_load1_noabort(i32 %3), !dbg !59
  %4 = load i8, ptr %arrayidx, align 1, !dbg !59, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4), !dbg !59
  %tobool = icmp ne i8 %4, 0, !dbg !59
  ret i1 %tobool, !dbg !61
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @tracing_map_read_var(ptr nocapture noundef readonly %elt, i32 noundef %i) local_unnamed_addr #0 align 64 !dbg !62 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !63
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.8, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.8, align 8
  %vars = getelementptr inbounds %struct.tracing_map_elt, ptr %elt, i32 0, i32 2, !dbg !64
  %1 = ptrtoint ptr %vars to i32, !dbg !64
  call void @__asan_load4_noabort(i32 %1), !dbg !64
  %2 = load ptr, ptr %vars, align 4, !dbg !64
  %arrayidx = getelementptr %struct.atomic64_t, ptr %2, i32 %i, !dbg !65
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.4, align 8
  %3 = add i64 %gcov_ctr.i, 1
  store i64 %3, ptr @__llvm_gcov_ctr.4, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.55, align 8
  %4 = add i64 %gcov_ctr.i.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.55, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx, i32 noundef 8) #16, !dbg !66
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %5 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %5, ptr @__llvm_gcov_ctr.54, align 8
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx) #16, !dbg !69
  ret i64 %call.i, !dbg !70
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i64 @tracing_map_read_var_once(ptr nocapture noundef readonly %elt, i32 noundef %i) local_unnamed_addr #0 align 64 !dbg !71 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !72
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.9, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.9, align 8
  %var_set = getelementptr inbounds %struct.tracing_map_elt, ptr %elt, i32 0, i32 3, !dbg !73
  %1 = ptrtoint ptr %var_set to i32, !dbg !73
  call void @__asan_load4_noabort(i32 %1), !dbg !73
  %2 = load ptr, ptr %var_set, align 4, !dbg !73
  %arrayidx = getelementptr i8, ptr %2, i32 %i, !dbg !74
  %3 = ptrtoint ptr %arrayidx to i32, !dbg !75
  call void @__asan_store1_noabort(i32 %3), !dbg !75
  store i8 0, ptr %arrayidx, align 1, !dbg !75
  %vars = getelementptr inbounds %struct.tracing_map_elt, ptr %elt, i32 0, i32 2, !dbg !76
  %4 = ptrtoint ptr %vars to i32, !dbg !76
  call void @__asan_load4_noabort(i32 %4), !dbg !76
  %5 = load ptr, ptr %vars, align 4, !dbg !76
  %arrayidx1 = getelementptr %struct.atomic64_t, ptr %5, i32 %i, !dbg !77
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.4, align 8
  %6 = add i64 %gcov_ctr.i, 1
  store i64 %6, ptr @__llvm_gcov_ctr.4, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.55, align 8
  %7 = add i64 %gcov_ctr.i.i, 1
  store i64 %7, ptr @__llvm_gcov_ctr.55, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %arrayidx1, i32 noundef 8) #16, !dbg !78
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %8 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %8, ptr @__llvm_gcov_ctr.54, align 8
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %arrayidx1) #16, !dbg !81
  ret i64 %call.i, !dbg !82
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tracing_map_cmp_string(ptr nocapture noundef readonly %val_a, ptr nocapture noundef readonly %val_b) local_unnamed_addr #2 align 64 !dbg !83 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !84
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.10, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.10, align 8
  %call = tail call i32 @strcmp(ptr noundef %val_a, ptr noundef %val_b) #17, !dbg !85
  ret i32 %call, !dbg !86
}

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tracing_map_cmp_none(ptr nocapture readnone %val_a, ptr nocapture readnone %val_b) #1 align 64 !dbg !87 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !88
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.11, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.11, align 8
  ret i32 0, !dbg !89
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local nonnull ptr @tracing_map_cmp_num(i32 noundef %field_size, i32 noundef %field_is_signed) local_unnamed_addr #1 align 64 !dbg !90 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !91
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.12, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.12, align 16
  %1 = zext i32 %field_size to i64, !dbg !92
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values), !dbg !92
  switch i32 %field_size, label %entry.sw.epilog_crit_edge [
    i32 8, label %sw.bb
    i32 4, label %sw.bb1
    i32 2, label %sw.bb6
    i32 1, label %sw.bb11
  ], !dbg !92

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !92
  br label %sw.epilog, !dbg !92

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %field_is_signed), !dbg !93
  %tobool.not = icmp eq i32 %field_is_signed, 0, !dbg !93
  br i1 %tobool.not, label %if.else, label %if.then, !dbg !93

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15, !dbg !94
  %gcov_ctr17 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 2), align 16, !dbg !94
  %2 = add i64 %gcov_ctr17, 1, !dbg !94
  store i64 %2, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 2), align 16, !dbg !94
  br label %sw.epilog, !dbg !95

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #15, !dbg !96
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 1), align 8, !dbg !96
  %3 = add i64 %gcov_ctr16, 1, !dbg !96
  store i64 %3, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 1), align 8, !dbg !96
  br label %sw.epilog

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %field_is_signed), !dbg !97
  %tobool2.not = icmp eq i32 %field_is_signed, 0, !dbg !97
  br i1 %tobool2.not, label %if.else4, label %if.then3, !dbg !97

if.then3:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15, !dbg !98
  %gcov_ctr19 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 4), align 16, !dbg !98
  %4 = add i64 %gcov_ctr19, 1, !dbg !98
  store i64 %4, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 4), align 16, !dbg !98
  br label %sw.epilog, !dbg !99

if.else4:                                         ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #15, !dbg !100
  %gcov_ctr18 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 3), align 8, !dbg !100
  %5 = add i64 %gcov_ctr18, 1, !dbg !100
  store i64 %5, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 3), align 8, !dbg !100
  br label %sw.epilog

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %field_is_signed), !dbg !101
  %tobool7.not = icmp eq i32 %field_is_signed, 0, !dbg !101
  br i1 %tobool7.not, label %if.else9, label %if.then8, !dbg !101

if.then8:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15, !dbg !102
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 6), align 16, !dbg !102
  %6 = add i64 %gcov_ctr21, 1, !dbg !102
  store i64 %6, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 6), align 16, !dbg !102
  br label %sw.epilog, !dbg !103

if.else9:                                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #15, !dbg !104
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 5), align 8, !dbg !104
  %7 = add i64 %gcov_ctr20, 1, !dbg !104
  store i64 %7, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 5), align 8, !dbg !104
  br label %sw.epilog

sw.bb11:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %field_is_signed), !dbg !105
  %tobool12.not = icmp eq i32 %field_is_signed, 0, !dbg !105
  br i1 %tobool12.not, label %if.else14, label %if.then13, !dbg !105

if.then13:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15, !dbg !106
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 8), align 16, !dbg !106
  %8 = add i64 %gcov_ctr23, 1, !dbg !106
  store i64 %8, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 8), align 16, !dbg !106
  br label %sw.epilog, !dbg !107

if.else14:                                        ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #15, !dbg !108
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 7), align 8, !dbg !108
  %9 = add i64 %gcov_ctr22, 1, !dbg !108
  store i64 %9, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.12, i32 0, i32 7), align 8, !dbg !108
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.else14, %if.then13, %if.else9, %if.then8, %if.else4, %if.then3, %if.else, %if.then, %entry.sw.epilog_crit_edge
  %fn.0 = phi ptr [ @tracing_map_cmp_none, %entry.sw.epilog_crit_edge ], [ @tracing_map_cmp_s8, %if.then13 ], [ @tracing_map_cmp_u8, %if.else14 ], [ @tracing_map_cmp_s16, %if.then8 ], [ @tracing_map_cmp_u16, %if.else9 ], [ @tracing_map_cmp_s32, %if.then3 ], [ @tracing_map_cmp_u32, %if.else4 ], [ @tracing_map_cmp_s64, %if.then ], [ @tracing_map_cmp_u64, %if.else ], !dbg !109
  ret ptr %fn.0, !dbg !110
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tracing_map_cmp_s64(ptr nocapture noundef readonly %val_a, ptr nocapture noundef readonly %val_b) #1 align 64 !dbg !111 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !112
  %0 = ptrtoint ptr %val_a to i32, !dbg !113
  call void @__asan_load8_noabort(i32 %0), !dbg !113
  %1 = load i64, ptr %val_a, align 8, !dbg !113
  %2 = ptrtoint ptr %val_b to i32, !dbg !113
  call void @__asan_load8_noabort(i32 %2), !dbg !113
  %3 = load i64, ptr %val_b, align 8, !dbg !113
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3), !dbg !113
  %cmp = icmp sgt i64 %1, %3, !dbg !113
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !113

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !113
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.13, align 8, !dbg !113
  %4 = add i64 %gcov_ctr, 1, !dbg !113
  store i64 %4, ptr @__llvm_gcov_ctr.13, align 8, !dbg !113
  br label %cond.end, !dbg !113

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !113
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 1), align 8, !dbg !113
  %5 = add i64 %gcov_ctr3, 1, !dbg !113
  store i64 %5, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.13, i32 0, i32 1), align 8, !dbg !113
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3), !dbg !113
  %cmp1 = icmp slt i64 %1, %3, !dbg !113
  %cond = sext i1 %cmp1 to i32, !dbg !113
  br label %cond.end, !dbg !113

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ], !dbg !113
  ret i32 %cond2, !dbg !113
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tracing_map_cmp_u64(ptr nocapture noundef readonly %val_a, ptr nocapture noundef readonly %val_b) #1 align 64 !dbg !114 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !115
  %0 = ptrtoint ptr %val_a to i32, !dbg !116
  call void @__asan_load8_noabort(i32 %0), !dbg !116
  %1 = load i64, ptr %val_a, align 8, !dbg !116
  %2 = ptrtoint ptr %val_b to i32, !dbg !116
  call void @__asan_load8_noabort(i32 %2), !dbg !116
  %3 = load i64, ptr %val_b, align 8, !dbg !116
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3), !dbg !116
  %cmp = icmp ugt i64 %1, %3, !dbg !116
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !116

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !116
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.14, align 8, !dbg !116
  %4 = add i64 %gcov_ctr, 1, !dbg !116
  store i64 %4, ptr @__llvm_gcov_ctr.14, align 8, !dbg !116
  br label %cond.end, !dbg !116

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !116
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 1), align 8, !dbg !116
  %5 = add i64 %gcov_ctr3, 1, !dbg !116
  store i64 %5, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.14, i32 0, i32 1), align 8, !dbg !116
  call void @__sanitizer_cov_trace_cmp8(i64 %1, i64 %3), !dbg !116
  %cmp1 = icmp ult i64 %1, %3, !dbg !116
  %cond = sext i1 %cmp1 to i32, !dbg !116
  br label %cond.end, !dbg !116

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ], !dbg !116
  ret i32 %cond2, !dbg !116
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tracing_map_cmp_s32(ptr nocapture noundef readonly %val_a, ptr nocapture noundef readonly %val_b) #1 align 64 !dbg !117 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !118
  %0 = ptrtoint ptr %val_a to i32, !dbg !119
  call void @__asan_load8_noabort(i32 %0), !dbg !119
  %1 = load i64, ptr %val_a, align 8, !dbg !119
  %conv = trunc i64 %1 to i32, !dbg !119
  %2 = ptrtoint ptr %val_b to i32, !dbg !119
  call void @__asan_load8_noabort(i32 %2), !dbg !119
  %3 = load i64, ptr %val_b, align 8, !dbg !119
  %conv1 = trunc i64 %3 to i32, !dbg !119
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv1), !dbg !119
  %cmp = icmp sgt i32 %conv, %conv1, !dbg !119
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !119

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !119
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.15, align 8, !dbg !119
  %4 = add i64 %gcov_ctr, 1, !dbg !119
  store i64 %4, ptr @__llvm_gcov_ctr.15, align 8, !dbg !119
  br label %cond.end, !dbg !119

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !119
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 1), align 8, !dbg !119
  %5 = add i64 %gcov_ctr6, 1, !dbg !119
  store i64 %5, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.15, i32 0, i32 1), align 8, !dbg !119
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv1), !dbg !119
  %cmp3 = icmp slt i32 %conv, %conv1, !dbg !119
  %cond = sext i1 %cmp3 to i32, !dbg !119
  br label %cond.end, !dbg !119

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ], !dbg !119
  ret i32 %cond5, !dbg !119
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tracing_map_cmp_u32(ptr nocapture noundef readonly %val_a, ptr nocapture noundef readonly %val_b) #1 align 64 !dbg !120 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !121
  %0 = ptrtoint ptr %val_a to i32, !dbg !122
  call void @__asan_load8_noabort(i32 %0), !dbg !122
  %1 = load i64, ptr %val_a, align 8, !dbg !122
  %conv = trunc i64 %1 to i32, !dbg !122
  %2 = ptrtoint ptr %val_b to i32, !dbg !122
  call void @__asan_load8_noabort(i32 %2), !dbg !122
  %3 = load i64, ptr %val_b, align 8, !dbg !122
  %conv1 = trunc i64 %3 to i32, !dbg !122
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv1), !dbg !122
  %cmp = icmp ugt i32 %conv, %conv1, !dbg !122
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !122

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !122
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.16, align 8, !dbg !122
  %4 = add i64 %gcov_ctr, 1, !dbg !122
  store i64 %4, ptr @__llvm_gcov_ctr.16, align 8, !dbg !122
  br label %cond.end, !dbg !122

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !122
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !122
  %5 = add i64 %gcov_ctr6, 1, !dbg !122
  store i64 %5, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.16, i32 0, i32 1), align 8, !dbg !122
  call void @__sanitizer_cov_trace_cmp4(i32 %conv, i32 %conv1), !dbg !122
  %cmp3 = icmp ult i32 %conv, %conv1, !dbg !122
  %cond = sext i1 %cmp3 to i32, !dbg !122
  br label %cond.end, !dbg !122

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond5 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ], !dbg !122
  ret i32 %cond5, !dbg !122
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tracing_map_cmp_s16(ptr nocapture noundef readonly %val_a, ptr nocapture noundef readonly %val_b) #1 align 64 !dbg !123 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !124
  %0 = ptrtoint ptr %val_a to i32, !dbg !125
  call void @__asan_load8_noabort(i32 %0), !dbg !125
  %1 = load i64, ptr %val_a, align 8, !dbg !125
  %conv = trunc i64 %1 to i32, !dbg !125
  %2 = ptrtoint ptr %val_b to i32, !dbg !125
  call void @__asan_load8_noabort(i32 %2), !dbg !125
  %3 = load i64, ptr %val_b, align 8, !dbg !125
  %conv1 = trunc i64 %3 to i32, !dbg !125
  %sext = shl i32 %conv, 16, !dbg !125
  %conv2 = ashr exact i32 %sext, 16, !dbg !125
  %sext13 = shl i32 %conv1, 16, !dbg !125
  %conv3 = ashr exact i32 %sext13, 16, !dbg !125
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv3), !dbg !125
  %cmp = icmp sgt i32 %conv2, %conv3, !dbg !125
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !125

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !125
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.17, align 8, !dbg !125
  %4 = add i64 %gcov_ctr, 1, !dbg !125
  store i64 %4, ptr @__llvm_gcov_ctr.17, align 8, !dbg !125
  br label %cond.end, !dbg !125

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !125
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !125
  %5 = add i64 %gcov_ctr10, 1, !dbg !125
  store i64 %5, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.17, i32 0, i32 1), align 8, !dbg !125
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv3), !dbg !125
  %cmp7 = icmp slt i32 %conv2, %conv3, !dbg !125
  %cond = sext i1 %cmp7 to i32, !dbg !125
  br label %cond.end, !dbg !125

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond9 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ], !dbg !125
  ret i32 %cond9, !dbg !125
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tracing_map_cmp_u16(ptr nocapture noundef readonly %val_a, ptr nocapture noundef readonly %val_b) #1 align 64 !dbg !126 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !127
  %0 = ptrtoint ptr %val_a to i32, !dbg !128
  call void @__asan_load8_noabort(i32 %0), !dbg !128
  %1 = load i64, ptr %val_a, align 8, !dbg !128
  %conv = trunc i64 %1 to i32, !dbg !128
  %2 = ptrtoint ptr %val_b to i32, !dbg !128
  call void @__asan_load8_noabort(i32 %2), !dbg !128
  %3 = load i64, ptr %val_b, align 8, !dbg !128
  %conv1 = trunc i64 %3 to i32, !dbg !128
  %conv2 = and i32 %conv, 65535, !dbg !128
  %conv3 = and i32 %conv1, 65535, !dbg !128
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv3), !dbg !128
  %cmp = icmp ugt i32 %conv2, %conv3, !dbg !128
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !128

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !128
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.18, align 8, !dbg !128
  %4 = add i64 %gcov_ctr, 1, !dbg !128
  store i64 %4, ptr @__llvm_gcov_ctr.18, align 8, !dbg !128
  br label %cond.end, !dbg !128

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !128
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !128
  %5 = add i64 %gcov_ctr10, 1, !dbg !128
  store i64 %5, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.18, i32 0, i32 1), align 8, !dbg !128
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv3), !dbg !128
  %cmp7 = icmp ult i32 %conv2, %conv3, !dbg !128
  %cond = sext i1 %cmp7 to i32, !dbg !128
  br label %cond.end, !dbg !128

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond9 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ], !dbg !128
  ret i32 %cond9, !dbg !128
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tracing_map_cmp_s8(ptr nocapture noundef readonly %val_a, ptr nocapture noundef readonly %val_b) #1 align 64 !dbg !129 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !130
  %0 = ptrtoint ptr %val_a to i32, !dbg !131
  call void @__asan_load8_noabort(i32 %0), !dbg !131
  %1 = load i64, ptr %val_a, align 8, !dbg !131
  %conv = trunc i64 %1 to i32, !dbg !131
  %2 = ptrtoint ptr %val_b to i32, !dbg !131
  call void @__asan_load8_noabort(i32 %2), !dbg !131
  %3 = load i64, ptr %val_b, align 8, !dbg !131
  %conv1 = trunc i64 %3 to i32, !dbg !131
  %sext = shl i32 %conv, 24, !dbg !131
  %conv2 = ashr exact i32 %sext, 24, !dbg !131
  %sext13 = shl i32 %conv1, 24, !dbg !131
  %conv3 = ashr exact i32 %sext13, 24, !dbg !131
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv3), !dbg !131
  %cmp = icmp sgt i32 %conv2, %conv3, !dbg !131
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !131

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !131
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.19, align 8, !dbg !131
  %4 = add i64 %gcov_ctr, 1, !dbg !131
  store i64 %4, ptr @__llvm_gcov_ctr.19, align 8, !dbg !131
  br label %cond.end, !dbg !131

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !131
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 1), align 8, !dbg !131
  %5 = add i64 %gcov_ctr10, 1, !dbg !131
  store i64 %5, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.19, i32 0, i32 1), align 8, !dbg !131
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv3), !dbg !131
  %cmp7 = icmp slt i32 %conv2, %conv3, !dbg !131
  %cond = sext i1 %cmp7 to i32, !dbg !131
  br label %cond.end, !dbg !131

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond9 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ], !dbg !131
  ret i32 %cond9, !dbg !131
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tracing_map_cmp_u8(ptr nocapture noundef readonly %val_a, ptr nocapture noundef readonly %val_b) #1 align 64 !dbg !132 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !133
  %0 = ptrtoint ptr %val_a to i32, !dbg !134
  call void @__asan_load8_noabort(i32 %0), !dbg !134
  %1 = load i64, ptr %val_a, align 8, !dbg !134
  %conv = trunc i64 %1 to i32, !dbg !134
  %2 = ptrtoint ptr %val_b to i32, !dbg !134
  call void @__asan_load8_noabort(i32 %2), !dbg !134
  %3 = load i64, ptr %val_b, align 8, !dbg !134
  %conv1 = trunc i64 %3 to i32, !dbg !134
  %conv2 = and i32 %conv, 255, !dbg !134
  %conv3 = and i32 %conv1, 255, !dbg !134
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv3), !dbg !134
  %cmp = icmp ugt i32 %conv2, %conv3, !dbg !134
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !134

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !134
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.20, align 8, !dbg !134
  %4 = add i64 %gcov_ctr, 1, !dbg !134
  store i64 %4, ptr @__llvm_gcov_ctr.20, align 8, !dbg !134
  br label %cond.end, !dbg !134

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !134
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 1), align 8, !dbg !134
  %5 = add i64 %gcov_ctr10, 1, !dbg !134
  store i64 %5, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.20, i32 0, i32 1), align 8, !dbg !134
  call void @__sanitizer_cov_trace_cmp4(i32 %conv2, i32 %conv3), !dbg !134
  %cmp7 = icmp ult i32 %conv2, %conv3, !dbg !134
  %cond = sext i1 %cmp7 to i32, !dbg !134
  br label %cond.end, !dbg !134

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond9 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ], !dbg !134
  ret i32 %cond9, !dbg !134
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tracing_map_add_sum_field(ptr nocapture noundef %map) local_unnamed_addr #1 align 64 !dbg !135 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !136
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.21, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.21, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %1 = add i64 %gcov_ctr.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.22, align 8
  %n_fields.i = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 10, !dbg !137
  %2 = ptrtoint ptr %n_fields.i to i32, !dbg !137
  call void @__asan_load4_noabort(i32 %2), !dbg !137
  %3 = load i32, ptr %n_fields.i, align 8, !dbg !137
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %3), !dbg !140
  %cmp.i = icmp ult i32 %3, 6, !dbg !140
  br i1 %cmp.i, label %if.then.i, label %entry.tracing_map_add_field.exit_crit_edge, !dbg !141

entry.tracing_map_add_field.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !141
  br label %tracing_map_add_field.exit, !dbg !141

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !142
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 1), align 8, !dbg !142
  %4 = add i64 %gcov_ctr4.i, 1, !dbg !142
  store i64 %4, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 1), align 8, !dbg !142
  %inc.i = add nuw nsw i32 %3, 1, !dbg !143
  %5 = ptrtoint ptr %n_fields.i to i32, !dbg !143
  call void @__asan_store4_noabort(i32 %5), !dbg !143
  store i32 %inc.i, ptr %n_fields.i, align 8, !dbg !143
  %arrayidx.i = getelementptr %struct.tracing_map, ptr %map, i32 0, i32 9, i32 %3, !dbg !144
  %6 = ptrtoint ptr %arrayidx.i to i32, !dbg !145
  call void @__asan_store4_noabort(i32 %6), !dbg !145
  store ptr @tracing_map_cmp_atomic64, ptr %arrayidx.i, align 8, !dbg !145
  br label %tracing_map_add_field.exit, !dbg !146

tracing_map_add_field.exit:                       ; preds = %if.then.i, %entry.tracing_map_add_field.exit_crit_edge
  %ret.0.i = phi i32 [ %3, %if.then.i ], [ -22, %entry.tracing_map_add_field.exit_crit_edge ], !dbg !147
  ret i32 %ret.0.i, !dbg !148
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tracing_map_cmp_atomic64(ptr noundef %val_a, ptr noundef %val_b) #0 align 64 !dbg !149 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !150
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.4, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.4, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.55, align 8
  %1 = add i64 %gcov_ctr.i.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.55, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %val_a, i32 noundef 8) #16, !dbg !151
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %2 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.54, align 8
  %call.i = tail call i64 @generic_atomic64_read(ptr noundef %val_a) #16, !dbg !154
  %gcov_ctr.i7 = load i64, ptr @__llvm_gcov_ctr.4, align 8
  %3 = add i64 %gcov_ctr.i7, 1
  store i64 %3, ptr @__llvm_gcov_ctr.4, align 8
  %gcov_ctr.i.i8 = load i64, ptr @__llvm_gcov_ctr.55, align 8
  %4 = add i64 %gcov_ctr.i.i8, 1
  store i64 %4, ptr @__llvm_gcov_ctr.55, align 8
  %call.i.i9 = tail call zeroext i1 @__kasan_check_read(ptr noundef %val_b, i32 noundef 8) #16, !dbg !155
  %gcov_ctr.i.i.i10 = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %5 = add i64 %gcov_ctr.i.i.i10, 1
  store i64 %5, ptr @__llvm_gcov_ctr.54, align 8
  %call.i11 = tail call i64 @generic_atomic64_read(ptr noundef %val_b) #16, !dbg !158
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %call.i11), !dbg !159
  %cmp = icmp ugt i64 %call.i, %call.i11, !dbg !159
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !160

cond.true:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !160
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.23, align 8, !dbg !160
  %6 = add i64 %gcov_ctr, 1, !dbg !160
  store i64 %6, ptr @__llvm_gcov_ctr.23, align 8, !dbg !160
  br label %cond.end, !dbg !160

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !161
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 1), align 8, !dbg !161
  %7 = add i64 %gcov_ctr4, 1, !dbg !161
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.23, i32 0, i32 1), align 8, !dbg !161
  call void @__sanitizer_cov_trace_cmp8(i64 %call.i, i64 %call.i11), !dbg !162
  %cmp2 = icmp ult i64 %call.i, %call.i11, !dbg !162
  %cond = sext i1 %cmp2 to i32, !dbg !163
  br label %cond.end, !dbg !160

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond3 = phi i32 [ 1, %cond.true ], [ %cond, %cond.false ], !dbg !160
  ret i32 %cond3, !dbg !164
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tracing_map_add_var(ptr nocapture noundef %map) local_unnamed_addr #1 align 64 !dbg !165 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !166
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.24, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.24, align 8
  %n_vars = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 14, !dbg !167
  %1 = ptrtoint ptr %n_vars to i32, !dbg !167
  call void @__asan_load4_noabort(i32 %1), !dbg !167
  %2 = load i32, ptr %n_vars, align 4, !dbg !167
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %2), !dbg !168
  %cmp = icmp ult i32 %2, 16, !dbg !168
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge, !dbg !169

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !169
  br label %if.end, !dbg !169

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !170
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !170
  %3 = add i64 %gcov_ctr2, 1, !dbg !170
  store i64 %3, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.24, i32 0, i32 1), align 8, !dbg !170
  %inc = add nuw nsw i32 %2, 1, !dbg !171
  %4 = ptrtoint ptr %n_vars to i32, !dbg !171
  call void @__asan_store4_noabort(i32 %4), !dbg !171
  store i32 %inc, ptr %n_vars, align 4, !dbg !171
  br label %if.end, !dbg !172

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %2, %if.then ], [ -22, %entry.if.end_crit_edge ], !dbg !173
  ret i32 %ret.0, !dbg !174
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tracing_map_add_key_field(ptr nocapture noundef %map, i32 noundef %offset, ptr noundef %cmp_fn) local_unnamed_addr #1 align 64 !dbg !175 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !176
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.22, align 8
  %0 = add i64 %gcov_ctr.i, 1
  store i64 %0, ptr @__llvm_gcov_ctr.22, align 8
  %n_fields.i = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 10, !dbg !177
  %1 = ptrtoint ptr %n_fields.i to i32, !dbg !177
  call void @__asan_load4_noabort(i32 %1), !dbg !177
  %2 = load i32, ptr %n_fields.i, align 8, !dbg !177
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %2), !dbg !179
  %cmp.i = icmp ult i32 %2, 6, !dbg !179
  br i1 %cmp.i, label %if.end, label %if.then, !dbg !180

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !181
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.25, align 8, !dbg !181
  %3 = add i64 %gcov_ctr, 1, !dbg !181
  store i64 %3, ptr @__llvm_gcov_ctr.25, align 8, !dbg !181
  br label %cleanup, !dbg !182

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !183
  %gcov_ctr4.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 1), align 8, !dbg !183
  %4 = add i64 %gcov_ctr4.i, 1, !dbg !183
  store i64 %4, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.22, i32 0, i32 1), align 8, !dbg !183
  %inc.i = add nuw nsw i32 %2, 1, !dbg !184
  %5 = ptrtoint ptr %n_fields.i to i32, !dbg !184
  call void @__asan_store4_noabort(i32 %5), !dbg !184
  store i32 %inc.i, ptr %n_fields.i, align 8, !dbg !184
  %arrayidx.i = getelementptr %struct.tracing_map, ptr %map, i32 0, i32 9, i32 %2, !dbg !185
  %6 = ptrtoint ptr %arrayidx.i to i32, !dbg !186
  call void @__asan_store4_noabort(i32 %6), !dbg !186
  store ptr %cmp_fn, ptr %arrayidx.i, align 8, !dbg !186
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 1), align 8, !dbg !187
  %7 = add i64 %gcov_ctr2, 1, !dbg !187
  store i64 %7, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.25, i32 0, i32 1), align 8, !dbg !187
  %8 = getelementptr %struct.tracing_map, ptr %map, i32 0, i32 9, i32 %2, i32 1, !dbg !188
  %9 = ptrtoint ptr %8 to i32, !dbg !189
  call void @__asan_store4_noabort(i32 %9), !dbg !189
  store i32 %offset, ptr %8, align 8, !dbg !189
  %n_keys = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 12, !dbg !190
  %10 = ptrtoint ptr %n_keys to i32, !dbg !191
  call void @__asan_load4_noabort(i32 %10), !dbg !191
  %11 = load i32, ptr %n_keys, align 8, !dbg !191
  %inc = add i32 %11, 1, !dbg !191
  store i32 %inc, ptr %n_keys, align 8, !dbg !191
  %arrayidx1 = getelementptr %struct.tracing_map, ptr %map, i32 0, i32 11, i32 %11, !dbg !192
  %12 = ptrtoint ptr %arrayidx1 to i32, !dbg !193
  call void @__asan_store4_noabort(i32 %12), !dbg !193
  store i32 %2, ptr %arrayidx1, align 4, !dbg !193
  br label %cleanup, !dbg !194

cleanup:                                          ; preds = %if.end, %if.then
  %ret.0.i12 = phi i32 [ %2, %if.end ], [ -22, %if.then ]
  ret i32 %ret.0.i12, !dbg !195
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tracing_map_insert(ptr noundef %map, ptr nocapture noundef readonly %key) local_unnamed_addr #0 align 64 !dbg !196 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !197
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.26, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.26, align 8
  %call = tail call fastcc ptr @__tracing_map_insert(ptr noundef %map, ptr noundef %key, i1 noundef zeroext false), !dbg !198
  ret ptr %call, !dbg !199
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @__tracing_map_insert(ptr noundef %map, ptr nocapture noundef readonly %key, i1 noundef zeroext %lookup_only) unnamed_addr #4 align 64 !dbg !200 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !201
  %0 = ptrtoint ptr %map to i32, !dbg !202
  call void @__asan_load4_noabort(i32 %0), !dbg !202
  %1 = load i32, ptr %map, align 8, !dbg !202
  %add.i = add i32 %1, -559038737, !dbg !203
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %1), !dbg !207
  %cmp28.i = icmp ugt i32 %1, 12, !dbg !207
  br i1 %cmp28.i, label %entry.while.body.i_crit_edge, label %entry.while.end.i_crit_edge, !dbg !208

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !208
  br label %while.end.i, !dbg !208

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i, !dbg !208

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %k.033.i = phi ptr [ %add.ptr31.i, %while.body.i.while.body.i_crit_edge ], [ %key, %entry.while.body.i_crit_edge ]
  %c.032.i = phi i32 [ %xor28.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %b.031.i = phi i32 [ %add29.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %a.030.i = phi i32 [ %add25.i, %while.body.i.while.body.i_crit_edge ], [ %add.i, %entry.while.body.i_crit_edge ]
  %length.addr.029.i = phi i32 [ %sub30.i, %while.body.i.while.body.i_crit_edge ], [ %1, %entry.while.body.i_crit_edge ]
  %gcov_ctr106.i = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 1), align 8, !dbg !209
  %2 = add i64 %gcov_ctr106.i, 1, !dbg !209
  store i64 %2, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 1), align 8, !dbg !209
  %gcov_ctr.i.i152 = load i64, ptr @__llvm_gcov_ctr.62, align 8
  %3 = add i64 %gcov_ctr.i.i152, 1
  store i64 %3, ptr @__llvm_gcov_ctr.62, align 8
  %4 = ptrtoint ptr %k.033.i to i32, !dbg !210
  call void @__asan_loadN_noabort(i32 %4, i32 4), !dbg !210
  %5 = load i32, ptr %k.033.i, align 1, !dbg !210
  %add2.i = add i32 %5, %a.030.i, !dbg !214
  %add.ptr.i = getelementptr i8, ptr %k.033.i, i32 4, !dbg !215
  %6 = add i64 %gcov_ctr.i.i152, 2
  store i64 %6, ptr @__llvm_gcov_ctr.62, align 8
  %7 = ptrtoint ptr %add.ptr.i to i32, !dbg !216
  call void @__asan_loadN_noabort(i32 %7, i32 4), !dbg !216
  %8 = load i32, ptr %add.ptr.i, align 1, !dbg !216
  %add4.i = add i32 %8, %b.031.i, !dbg !218
  %add.ptr5.i = getelementptr i8, ptr %k.033.i, i32 8, !dbg !219
  %9 = add i64 %gcov_ctr.i.i152, 3
  store i64 %9, ptr @__llvm_gcov_ctr.62, align 8
  %10 = ptrtoint ptr %add.ptr5.i to i32, !dbg !220
  call void @__asan_loadN_noabort(i32 %10, i32 4), !dbg !220
  %11 = load i32, ptr %add.ptr5.i, align 1, !dbg !220
  %add7.i = add i32 %11, %c.032.i, !dbg !222
  %sub.i = sub i32 %add2.i, %add7.i, !dbg !223
  %gcov_ctr.i3.i = load i64, ptr @__llvm_gcov_ctr.63, align 8
  %or.i.i = tail call i32 @llvm.fshl.i32(i32 %add7.i, i32 %add7.i, i32 4) #16, !dbg !224
  %xor.i = xor i32 %sub.i, %or.i.i, !dbg !223
  %add9.i = add i32 %add7.i, %add4.i, !dbg !223
  %sub10.i = sub i32 %add4.i, %xor.i, !dbg !223
  %or.i5.i = tail call i32 @llvm.fshl.i32(i32 %xor.i, i32 %xor.i, i32 6) #16, !dbg !228
  %xor12.i = xor i32 %sub10.i, %or.i5.i, !dbg !223
  %add13.i = add i32 %xor.i, %add9.i, !dbg !223
  %sub14.i = sub i32 %add9.i, %xor12.i, !dbg !223
  %or.i7.i = tail call i32 @llvm.fshl.i32(i32 %xor12.i, i32 %xor12.i, i32 8) #16, !dbg !230
  %xor16.i = xor i32 %sub14.i, %or.i7.i, !dbg !223
  %add17.i = add i32 %xor12.i, %add13.i, !dbg !223
  %sub18.i = sub i32 %add13.i, %xor16.i, !dbg !223
  %or.i9.i = tail call i32 @llvm.fshl.i32(i32 %xor16.i, i32 %xor16.i, i32 16) #16, !dbg !232
  %xor20.i = xor i32 %sub18.i, %or.i9.i, !dbg !223
  %add21.i = add i32 %xor16.i, %add17.i, !dbg !223
  %sub22.i = sub i32 %add17.i, %xor20.i, !dbg !223
  %or.i11.i = tail call i32 @llvm.fshl.i32(i32 %xor20.i, i32 %xor20.i, i32 19) #16, !dbg !234
  %xor24.i = xor i32 %sub22.i, %or.i11.i, !dbg !223
  %add25.i = add i32 %xor20.i, %add21.i, !dbg !223
  %sub26.i = sub i32 %add21.i, %xor24.i, !dbg !223
  %12 = add i64 %gcov_ctr.i3.i, 6
  store i64 %12, ptr @__llvm_gcov_ctr.63, align 8
  %or.i13.i = tail call i32 @llvm.fshl.i32(i32 %xor24.i, i32 %xor24.i, i32 4) #16, !dbg !236
  %xor28.i = xor i32 %sub26.i, %or.i13.i, !dbg !223
  %add29.i = add i32 %xor24.i, %add25.i, !dbg !223
  %sub30.i = add i32 %length.addr.029.i, -12, !dbg !238
  %add.ptr31.i = getelementptr i8, ptr %k.033.i, i32 12, !dbg !239
  %cmp.i = icmp ugt i32 %sub30.i, 12, !dbg !207
  br i1 %cmp.i, label %while.body.i.while.body.i_crit_edge, label %while.body.i.while.end.i_crit_edge, !dbg !208, !llvm.loop !240

while.body.i.while.end.i_crit_edge:               ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !208
  br label %while.end.i, !dbg !208

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !208
  br label %while.body.i, !dbg !208

while.end.i:                                      ; preds = %while.body.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %length.addr.0.lcssa.i = phi i32 [ %1, %entry.while.end.i_crit_edge ], [ %sub30.i, %while.body.i.while.end.i_crit_edge ]
  %a.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add25.i, %while.body.i.while.end.i_crit_edge ], !dbg !242
  %b.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %add29.i, %while.body.i.while.end.i_crit_edge ], !dbg !242
  %c.0.lcssa.i = phi i32 [ %add.i, %entry.while.end.i_crit_edge ], [ %xor28.i, %while.body.i.while.end.i_crit_edge ], !dbg !242
  %k.0.lcssa.i = phi ptr [ %key, %entry.while.end.i_crit_edge ], [ %add.ptr31.i, %while.body.i.while.end.i_crit_edge ], !dbg !242
  %gcov_ctr.i153 = load i64, ptr @__llvm_gcov_ctr.57, align 16, !dbg !243
  %13 = add i64 %gcov_ctr.i153, 1, !dbg !243
  store i64 %13, ptr @__llvm_gcov_ctr.57, align 16, !dbg !243
  %14 = zext i32 %length.addr.0.lcssa.i to i64, !dbg !244
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.86), !dbg !244
  switch i32 %length.addr.0.lcssa.i, label %while.end.i.jhash.exit_crit_edge [
    i32 12, label %sw.bb.i
    i32 11, label %while.end.i.sw.bb33.i_crit_edge
    i32 10, label %while.end.i.sw.bb38.i_crit_edge
    i32 9, label %while.end.i.sw.bb43.i_crit_edge
    i32 8, label %while.end.i.sw.bb47.i_crit_edge
    i32 7, label %while.end.i.sw.bb52.i_crit_edge
    i32 6, label %while.end.i.sw.bb57.i_crit_edge
    i32 5, label %while.end.i.sw.bb62.i_crit_edge
    i32 4, label %while.end.i.sw.bb66.i_crit_edge
    i32 3, label %while.end.i.sw.bb71.i_crit_edge
    i32 2, label %while.end.i.sw.bb76.i_crit_edge
    i32 1, label %while.end.i.sw.bb81.i_crit_edge
  ], !dbg !244

while.end.i.sw.bb81.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !244
  br label %sw.bb81.i, !dbg !244

while.end.i.sw.bb76.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !244
  br label %sw.bb76.i, !dbg !244

while.end.i.sw.bb71.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !244
  br label %sw.bb71.i, !dbg !244

while.end.i.sw.bb66.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !244
  br label %sw.bb66.i, !dbg !244

while.end.i.sw.bb62.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !244
  br label %sw.bb62.i, !dbg !244

while.end.i.sw.bb57.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !244
  br label %sw.bb57.i, !dbg !244

while.end.i.sw.bb52.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !244
  br label %sw.bb52.i, !dbg !244

while.end.i.sw.bb47.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !244
  br label %sw.bb47.i, !dbg !244

while.end.i.sw.bb43.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !244
  br label %sw.bb43.i, !dbg !244

while.end.i.sw.bb38.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !244
  br label %sw.bb38.i, !dbg !244

while.end.i.sw.bb33.i_crit_edge:                  ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !244
  br label %sw.bb33.i, !dbg !244

while.end.i.jhash.exit_crit_edge:                 ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !244
  br label %jhash.exit, !dbg !244

sw.bb.i:                                          ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !245
  %gcov_ctr107.i = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 2), align 16, !dbg !245
  %15 = add i64 %gcov_ctr107.i, 1, !dbg !245
  store i64 %15, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 2), align 16, !dbg !245
  %arrayidx.i = getelementptr i8, ptr %k.0.lcssa.i, i32 11, !dbg !245
  %16 = ptrtoint ptr %arrayidx.i to i32, !dbg !245
  call void @__asan_load1_noabort(i32 %16), !dbg !245
  %17 = load i8, ptr %arrayidx.i, align 1, !dbg !245
  %conv.i = zext i8 %17 to i32, !dbg !246
  %shl.i = shl nuw i32 %conv.i, 24, !dbg !247
  %add32.i = add i32 %shl.i, %c.0.lcssa.i, !dbg !248
  br label %sw.bb33.i, !dbg !249

sw.bb33.i:                                        ; preds = %sw.bb.i, %while.end.i.sw.bb33.i_crit_edge
  %c.1.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb33.i_crit_edge ], [ %add32.i, %sw.bb.i ], !dbg !242
  %gcov_ctr108.i = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 3), align 8, !dbg !250
  %18 = add i64 %gcov_ctr108.i, 1, !dbg !250
  store i64 %18, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 3), align 8, !dbg !250
  %arrayidx34.i = getelementptr i8, ptr %k.0.lcssa.i, i32 10, !dbg !250
  %19 = ptrtoint ptr %arrayidx34.i to i32, !dbg !250
  call void @__asan_load1_noabort(i32 %19), !dbg !250
  %20 = load i8, ptr %arrayidx34.i, align 1, !dbg !250
  %conv35.i = zext i8 %20 to i32, !dbg !251
  %shl36.i = shl nuw nsw i32 %conv35.i, 16, !dbg !252
  %add37.i = add i32 %shl36.i, %c.1.i, !dbg !253
  br label %sw.bb38.i, !dbg !254

sw.bb38.i:                                        ; preds = %sw.bb33.i, %while.end.i.sw.bb38.i_crit_edge
  %c.2.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb38.i_crit_edge ], [ %add37.i, %sw.bb33.i ], !dbg !242
  %gcov_ctr109.i = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 4), align 16, !dbg !255
  %21 = add i64 %gcov_ctr109.i, 1, !dbg !255
  store i64 %21, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 4), align 16, !dbg !255
  %arrayidx39.i = getelementptr i8, ptr %k.0.lcssa.i, i32 9, !dbg !255
  %22 = ptrtoint ptr %arrayidx39.i to i32, !dbg !255
  call void @__asan_load1_noabort(i32 %22), !dbg !255
  %23 = load i8, ptr %arrayidx39.i, align 1, !dbg !255
  %conv40.i = zext i8 %23 to i32, !dbg !256
  %shl41.i = shl nuw nsw i32 %conv40.i, 8, !dbg !257
  %add42.i = add i32 %shl41.i, %c.2.i, !dbg !258
  br label %sw.bb43.i, !dbg !259

sw.bb43.i:                                        ; preds = %sw.bb38.i, %while.end.i.sw.bb43.i_crit_edge
  %c.3.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb43.i_crit_edge ], [ %add42.i, %sw.bb38.i ], !dbg !242
  %gcov_ctr110.i = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 5), align 8, !dbg !260
  %24 = add i64 %gcov_ctr110.i, 1, !dbg !260
  store i64 %24, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 5), align 8, !dbg !260
  %arrayidx44.i = getelementptr i8, ptr %k.0.lcssa.i, i32 8, !dbg !260
  %25 = ptrtoint ptr %arrayidx44.i to i32, !dbg !260
  call void @__asan_load1_noabort(i32 %25), !dbg !260
  %26 = load i8, ptr %arrayidx44.i, align 1, !dbg !260
  %conv45.i = zext i8 %26 to i32, !dbg !260
  %add46.i = add i32 %c.3.i, %conv45.i, !dbg !261
  br label %sw.bb47.i, !dbg !262

sw.bb47.i:                                        ; preds = %sw.bb43.i, %while.end.i.sw.bb47.i_crit_edge
  %c.4.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb47.i_crit_edge ], [ %add46.i, %sw.bb43.i ], !dbg !242
  %gcov_ctr111.i = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 6), align 16, !dbg !263
  %27 = add i64 %gcov_ctr111.i, 1, !dbg !263
  store i64 %27, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 6), align 16, !dbg !263
  %arrayidx48.i = getelementptr i8, ptr %k.0.lcssa.i, i32 7, !dbg !263
  %28 = ptrtoint ptr %arrayidx48.i to i32, !dbg !263
  call void @__asan_load1_noabort(i32 %28), !dbg !263
  %29 = load i8, ptr %arrayidx48.i, align 1, !dbg !263
  %conv49.i = zext i8 %29 to i32, !dbg !264
  %shl50.i = shl nuw i32 %conv49.i, 24, !dbg !265
  %add51.i = add i32 %shl50.i, %b.0.lcssa.i, !dbg !266
  br label %sw.bb52.i, !dbg !267

sw.bb52.i:                                        ; preds = %sw.bb47.i, %while.end.i.sw.bb52.i_crit_edge
  %b.1.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %add51.i, %sw.bb47.i ], !dbg !242
  %c.5.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb52.i_crit_edge ], [ %c.4.i, %sw.bb47.i ], !dbg !268
  %gcov_ctr112.i = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 7), align 8, !dbg !269
  %30 = add i64 %gcov_ctr112.i, 1, !dbg !269
  store i64 %30, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 7), align 8, !dbg !269
  %arrayidx53.i = getelementptr i8, ptr %k.0.lcssa.i, i32 6, !dbg !269
  %31 = ptrtoint ptr %arrayidx53.i to i32, !dbg !269
  call void @__asan_load1_noabort(i32 %31), !dbg !269
  %32 = load i8, ptr %arrayidx53.i, align 1, !dbg !269
  %conv54.i = zext i8 %32 to i32, !dbg !270
  %shl55.i = shl nuw nsw i32 %conv54.i, 16, !dbg !271
  %add56.i = add i32 %shl55.i, %b.1.i, !dbg !272
  br label %sw.bb57.i, !dbg !273

sw.bb57.i:                                        ; preds = %sw.bb52.i, %while.end.i.sw.bb57.i_crit_edge
  %b.2.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %add56.i, %sw.bb52.i ], !dbg !242
  %c.6.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb57.i_crit_edge ], [ %c.5.i, %sw.bb52.i ], !dbg !268
  %gcov_ctr113.i = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 8), align 16, !dbg !274
  %33 = add i64 %gcov_ctr113.i, 1, !dbg !274
  store i64 %33, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 8), align 16, !dbg !274
  %arrayidx58.i = getelementptr i8, ptr %k.0.lcssa.i, i32 5, !dbg !274
  %34 = ptrtoint ptr %arrayidx58.i to i32, !dbg !274
  call void @__asan_load1_noabort(i32 %34), !dbg !274
  %35 = load i8, ptr %arrayidx58.i, align 1, !dbg !274
  %conv59.i = zext i8 %35 to i32, !dbg !275
  %shl60.i = shl nuw nsw i32 %conv59.i, 8, !dbg !276
  %add61.i = add i32 %shl60.i, %b.2.i, !dbg !277
  br label %sw.bb62.i, !dbg !278

sw.bb62.i:                                        ; preds = %sw.bb57.i, %while.end.i.sw.bb62.i_crit_edge
  %b.3.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %add61.i, %sw.bb57.i ], !dbg !242
  %c.7.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb62.i_crit_edge ], [ %c.6.i, %sw.bb57.i ], !dbg !268
  %gcov_ctr114.i = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 9), align 8, !dbg !279
  %36 = add i64 %gcov_ctr114.i, 1, !dbg !279
  store i64 %36, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 9), align 8, !dbg !279
  %arrayidx63.i = getelementptr i8, ptr %k.0.lcssa.i, i32 4, !dbg !279
  %37 = ptrtoint ptr %arrayidx63.i to i32, !dbg !279
  call void @__asan_load1_noabort(i32 %37), !dbg !279
  %38 = load i8, ptr %arrayidx63.i, align 1, !dbg !279
  %conv64.i = zext i8 %38 to i32, !dbg !279
  %add65.i = add i32 %b.3.i, %conv64.i, !dbg !280
  br label %sw.bb66.i, !dbg !281

sw.bb66.i:                                        ; preds = %sw.bb62.i, %while.end.i.sw.bb66.i_crit_edge
  %b.4.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %add65.i, %sw.bb62.i ], !dbg !242
  %c.8.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb66.i_crit_edge ], [ %c.7.i, %sw.bb62.i ], !dbg !268
  %gcov_ctr115.i = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 10), align 16, !dbg !282
  %39 = add i64 %gcov_ctr115.i, 1, !dbg !282
  store i64 %39, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 10), align 16, !dbg !282
  %arrayidx67.i = getelementptr i8, ptr %k.0.lcssa.i, i32 3, !dbg !282
  %40 = ptrtoint ptr %arrayidx67.i to i32, !dbg !282
  call void @__asan_load1_noabort(i32 %40), !dbg !282
  %41 = load i8, ptr %arrayidx67.i, align 1, !dbg !282
  %conv68.i = zext i8 %41 to i32, !dbg !283
  %shl69.i = shl nuw i32 %conv68.i, 24, !dbg !284
  %add70.i = add i32 %shl69.i, %a.0.lcssa.i, !dbg !285
  br label %sw.bb71.i, !dbg !286

sw.bb71.i:                                        ; preds = %sw.bb66.i, %while.end.i.sw.bb71.i_crit_edge
  %a.1.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %add70.i, %sw.bb66.i ], !dbg !242
  %b.5.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %b.4.i, %sw.bb66.i ], !dbg !287
  %c.9.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb71.i_crit_edge ], [ %c.8.i, %sw.bb66.i ], !dbg !268
  %gcov_ctr116.i = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 11), align 8, !dbg !288
  %42 = add i64 %gcov_ctr116.i, 1, !dbg !288
  store i64 %42, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 11), align 8, !dbg !288
  %arrayidx72.i = getelementptr i8, ptr %k.0.lcssa.i, i32 2, !dbg !288
  %43 = ptrtoint ptr %arrayidx72.i to i32, !dbg !288
  call void @__asan_load1_noabort(i32 %43), !dbg !288
  %44 = load i8, ptr %arrayidx72.i, align 1, !dbg !288
  %conv73.i = zext i8 %44 to i32, !dbg !289
  %shl74.i = shl nuw nsw i32 %conv73.i, 16, !dbg !290
  %add75.i = add i32 %shl74.i, %a.1.i, !dbg !291
  br label %sw.bb76.i, !dbg !292

sw.bb76.i:                                        ; preds = %sw.bb71.i, %while.end.i.sw.bb76.i_crit_edge
  %a.2.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %add75.i, %sw.bb71.i ], !dbg !242
  %b.6.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %b.5.i, %sw.bb71.i ], !dbg !287
  %c.10.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb76.i_crit_edge ], [ %c.9.i, %sw.bb71.i ], !dbg !268
  %gcov_ctr117.i = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 12), align 16, !dbg !293
  %45 = add i64 %gcov_ctr117.i, 1, !dbg !293
  store i64 %45, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 12), align 16, !dbg !293
  %arrayidx77.i = getelementptr i8, ptr %k.0.lcssa.i, i32 1, !dbg !293
  %46 = ptrtoint ptr %arrayidx77.i to i32, !dbg !293
  call void @__asan_load1_noabort(i32 %46), !dbg !293
  %47 = load i8, ptr %arrayidx77.i, align 1, !dbg !293
  %conv78.i = zext i8 %47 to i32, !dbg !294
  %shl79.i = shl nuw nsw i32 %conv78.i, 8, !dbg !295
  %add80.i = add i32 %shl79.i, %a.2.i, !dbg !296
  br label %sw.bb81.i, !dbg !297

sw.bb81.i:                                        ; preds = %sw.bb76.i, %while.end.i.sw.bb81.i_crit_edge
  %a.3.i = phi i32 [ %a.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %add80.i, %sw.bb76.i ], !dbg !242
  %b.7.i = phi i32 [ %b.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %b.6.i, %sw.bb76.i ], !dbg !287
  %c.11.i = phi i32 [ %c.0.lcssa.i, %while.end.i.sw.bb81.i_crit_edge ], [ %c.10.i, %sw.bb76.i ], !dbg !268
  %gcov_ctr118.i = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 13), align 8, !dbg !298
  %48 = add i64 %gcov_ctr118.i, 1, !dbg !298
  store i64 %48, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.57, i32 0, i32 13), align 8, !dbg !298
  %49 = ptrtoint ptr %k.0.lcssa.i to i32, !dbg !298
  call void @__asan_load1_noabort(i32 %49), !dbg !298
  %50 = load i8, ptr %k.0.lcssa.i, align 1, !dbg !298
  %conv83.i = zext i8 %50 to i32, !dbg !298
  %add84.i = add i32 %a.3.i, %conv83.i, !dbg !299
  %xor85.i = xor i32 %c.11.i, %b.7.i, !dbg !300
  %gcov_ctr.i14.i = load i64, ptr @__llvm_gcov_ctr.63, align 8
  %or.i15.i = tail call i32 @llvm.fshl.i32(i32 %b.7.i, i32 %b.7.i, i32 14) #16, !dbg !301
  %sub87.i = sub i32 %xor85.i, %or.i15.i, !dbg !300
  %xor88.i = xor i32 %add84.i, %sub87.i, !dbg !300
  %or.i17.i = tail call i32 @llvm.fshl.i32(i32 %sub87.i, i32 %sub87.i, i32 11) #16, !dbg !303
  %sub90.i = sub i32 %xor88.i, %or.i17.i, !dbg !300
  %xor91.i = xor i32 %sub90.i, %b.7.i, !dbg !300
  %or.i19.i = tail call i32 @llvm.fshl.i32(i32 %sub90.i, i32 %sub90.i, i32 25) #16, !dbg !305
  %sub93.i = sub i32 %xor91.i, %or.i19.i, !dbg !300
  %xor94.i = xor i32 %sub93.i, %sub87.i, !dbg !300
  %or.i21.i = tail call i32 @llvm.fshl.i32(i32 %sub93.i, i32 %sub93.i, i32 16) #16, !dbg !307
  %sub96.i = sub i32 %xor94.i, %or.i21.i, !dbg !300
  %xor97.i = xor i32 %sub96.i, %sub90.i, !dbg !300
  %or.i23.i = tail call i32 @llvm.fshl.i32(i32 %sub96.i, i32 %sub96.i, i32 4) #16, !dbg !309
  %sub99.i = sub i32 %xor97.i, %or.i23.i, !dbg !300
  %xor100.i = xor i32 %sub99.i, %sub93.i, !dbg !300
  %or.i25.i = tail call i32 @llvm.fshl.i32(i32 %sub99.i, i32 %sub99.i, i32 14) #16, !dbg !311
  %sub102.i = sub i32 %xor100.i, %or.i25.i, !dbg !300
  %xor103.i = xor i32 %sub102.i, %sub96.i, !dbg !300
  %51 = add i64 %gcov_ctr.i14.i, 7
  store i64 %51, ptr @__llvm_gcov_ctr.63, align 8
  %or.i27.i = tail call i32 @llvm.fshl.i32(i32 %sub102.i, i32 %sub102.i, i32 24) #16, !dbg !313
  %sub105.i = sub i32 %xor103.i, %or.i27.i, !dbg !300
  br label %jhash.exit, !dbg !315

jhash.exit:                                       ; preds = %sw.bb81.i, %while.end.i.jhash.exit_crit_edge
  %c.12.i = phi i32 [ %c.0.lcssa.i, %while.end.i.jhash.exit_crit_edge ], [ %sub105.i, %sw.bb81.i ], !dbg !242
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %c.12.i), !dbg !316
  %cmp = icmp eq i32 %c.12.i, 0, !dbg !316
  br i1 %cmp, label %if.then, label %jhash.exit.if.end_crit_edge, !dbg !317

jhash.exit.if.end_crit_edge:                      ; preds = %jhash.exit
  call void @__sanitizer_cov_trace_pc() #15, !dbg !317
  br label %if.end, !dbg !317

if.then:                                          ; preds = %jhash.exit
  call void @__sanitizer_cov_trace_pc() #15, !dbg !318
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.27, align 16, !dbg !318
  %52 = add i64 %gcov_ctr, 1, !dbg !318
  store i64 %52, ptr @__llvm_gcov_ctr.27, align 16, !dbg !318
  br label %if.end, !dbg !319

if.end:                                           ; preds = %if.then, %jhash.exit.if.end_crit_edge
  %key_hash.0 = phi i32 [ 1, %if.then ], [ %c.12.i, %jhash.exit.if.end_crit_edge ], !dbg !320
  %map_bits = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 1, !dbg !321
  %53 = ptrtoint ptr %map_bits to i32, !dbg !321
  call void @__asan_load4_noabort(i32 %53), !dbg !321
  %54 = load i32, ptr %map_bits, align 4, !dbg !321
  %sub = sub i32 31, %54, !dbg !322
  %shr = lshr i32 %key_hash.0, %sub, !dbg !323
  %map_size = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 2
  %map3 = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 6
  br label %while.cond.outer, !dbg !324

while.cond.outer:                                 ; preds = %while.cond.outer.backedge, %if.end
  %dup_try.0.ph = phi i32 [ 0, %if.end ], [ %dup_try.0.ph.be, %while.cond.outer.backedge ]
  %idx.0.ph = phi i32 [ %shr, %if.end ], [ %idx.0.ph.be, %while.cond.outer.backedge ]
  %55 = ptrtoint ptr %map_size to i32, !dbg !325
  call void @__asan_load4_noabort(i32 %55), !dbg !325
  %56 = load i32, ptr %map_size, align 8, !dbg !325
  %sub2183 = add i32 %56, -1, !dbg !326
  %and184 = and i32 %sub2183, %idx.0.ph, !dbg !327
  %57 = ptrtoint ptr %map3 to i32, !dbg !328
  call void @__asan_load4_noabort(i32 %57), !dbg !328
  %58 = load ptr, ptr %map3, align 8, !dbg !328
  %pages185 = getelementptr inbounds %struct.tracing_map_array, ptr %58, i32 0, i32 5, !dbg !328
  %59 = ptrtoint ptr %pages185 to i32, !dbg !328
  call void @__asan_load4_noabort(i32 %59), !dbg !328
  %60 = load ptr, ptr %pages185, align 4, !dbg !328
  %entry_shift186 = getelementptr inbounds %struct.tracing_map_array, ptr %58, i32 0, i32 2, !dbg !328
  %61 = ptrtoint ptr %entry_shift186 to i32, !dbg !328
  call void @__asan_load4_noabort(i32 %61), !dbg !328
  %62 = load i32, ptr %entry_shift186, align 4, !dbg !328
  %shr5187 = lshr i32 %and184, %62, !dbg !328
  %arrayidx188 = getelementptr ptr, ptr %60, i32 %shr5187, !dbg !328
  %63 = ptrtoint ptr %arrayidx188 to i32, !dbg !328
  call void @__asan_load4_noabort(i32 %63), !dbg !328
  %64 = load ptr, ptr %arrayidx188, align 4, !dbg !328
  %entry_mask189 = getelementptr inbounds %struct.tracing_map_array, ptr %58, i32 0, i32 3, !dbg !328
  %65 = ptrtoint ptr %entry_mask189 to i32, !dbg !328
  call void @__asan_load4_noabort(i32 %65), !dbg !328
  %66 = load i32, ptr %entry_mask189, align 4, !dbg !328
  %and7190 = and i32 %66, %and184, !dbg !328
  %entry_size_shift191 = getelementptr inbounds %struct.tracing_map_array, ptr %58, i32 0, i32 1, !dbg !328
  %67 = ptrtoint ptr %entry_size_shift191 to i32, !dbg !328
  call void @__asan_load4_noabort(i32 %67), !dbg !328
  %68 = load i32, ptr %entry_size_shift191, align 4, !dbg !328
  %shl192 = shl i32 %and7190, %68, !dbg !328
  %add.ptr193 = getelementptr i8, ptr %64, i32 %shl192, !dbg !328
  %69 = ptrtoint ptr %add.ptr193 to i32, !dbg !329
  call void @__asan_load4_noabort(i32 %69), !dbg !329
  %70 = load i32, ptr %add.ptr193, align 4, !dbg !329
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70), !dbg !330
  %tobool.not194 = icmp eq i32 %70, 0, !dbg !330
  br i1 %tobool.not194, label %while.cond.outer.if.then35.critedge_crit_edge, label %while.cond.outer.land.lhs.true_crit_edge, !dbg !331

while.cond.outer.land.lhs.true_crit_edge:         ; preds = %while.cond.outer
  br label %land.lhs.true, !dbg !331

while.cond.outer.if.then35.critedge_crit_edge:    ; preds = %while.cond.outer
  call void @__sanitizer_cov_trace_pc() #15, !dbg !331
  br label %if.then35.critedge, !dbg !331

land.lhs.true:                                    ; preds = %if.end74.land.lhs.true_crit_edge, %while.cond.outer.land.lhs.true_crit_edge
  %71 = phi i32 [ %172, %if.end74.land.lhs.true_crit_edge ], [ %70, %while.cond.outer.land.lhs.true_crit_edge ]
  %add.ptr197 = phi ptr [ %add.ptr, %if.end74.land.lhs.true_crit_edge ], [ %add.ptr193, %while.cond.outer.land.lhs.true_crit_edge ]
  %and195 = phi i32 [ %and, %if.end74.land.lhs.true_crit_edge ], [ %and184, %while.cond.outer.land.lhs.true_crit_edge ]
  %gcov_ctr82 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 1), align 8, !dbg !332
  %72 = add i64 %gcov_ctr82, 1, !dbg !332
  store i64 %72, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 1), align 8, !dbg !332
  call void @__sanitizer_cov_trace_cmp4(i32 %71, i32 %key_hash.0), !dbg !333
  %cmp10 = icmp eq i32 %71, %key_hash.0, !dbg !333
  br i1 %cmp10, label %do.end, label %land.lhs.true.if.end74_crit_edge, !dbg !330

land.lhs.true.if.end74_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15, !dbg !330
  br label %if.end74, !dbg !330

do.end:                                           ; preds = %land.lhs.true
  %val12 = getelementptr inbounds %struct.tracing_map_entry, ptr %add.ptr197, i32 0, i32 1, !dbg !334
  %73 = ptrtoint ptr %val12 to i32, !dbg !334
  call void @__asan_load4_noabort(i32 %73), !dbg !334
  %74 = load volatile ptr, ptr %val12, align 4, !dbg !334
  %tobool13.not = icmp eq ptr %74, null, !dbg !335
  br i1 %tobool13.not, label %if.then26.critedge, label %land.lhs.true14, !dbg !336

land.lhs.true14:                                  ; preds = %do.end
  %gcov_ctr83 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 2), align 16, !dbg !337
  %75 = add i64 %gcov_ctr83, 1, !dbg !337
  store i64 %75, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 2), align 16, !dbg !337
  %key15 = getelementptr inbounds %struct.tracing_map_elt, ptr %74, i32 0, i32 4, !dbg !338
  %76 = ptrtoint ptr %key15 to i32, !dbg !338
  call void @__asan_load4_noabort(i32 %76), !dbg !338
  %77 = load ptr, ptr %key15, align 4, !dbg !338
  %78 = ptrtoint ptr %map to i32, !dbg !339
  call void @__asan_load4_noabort(i32 %78), !dbg !339
  %79 = load i32, ptr %map, align 8, !dbg !339
  %gcov_ctr.i154 = load i64, ptr @__llvm_gcov_ctr.58, align 8
  %80 = add i64 %gcov_ctr.i154, 1
  store i64 %80, ptr @__llvm_gcov_ctr.58, align 8
  %bcmp.i = tail call i32 @bcmp(ptr %key, ptr %77, i32 %79) #18, !dbg !340
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i), !dbg !340
  %tobool.not.i = icmp eq i32 %bcmp.i, 0, !dbg !340
  br i1 %tobool.not.i, label %if.then18, label %if.end32, !dbg !340

if.then18:                                        ; preds = %land.lhs.true14
  br i1 %lookup_only, label %if.then18.if.end21_crit_edge, label %if.then20, !dbg !343

if.then18.if.end21_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15, !dbg !343
  br label %if.end21, !dbg !343

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #15, !dbg !344
  %gcov_ctr84 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 3), align 8, !dbg !344
  %81 = add i64 %gcov_ctr84, 1, !dbg !344
  store i64 %81, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 3), align 8, !dbg !344
  %hits = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 15, !dbg !345
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.59, align 8
  %82 = add i64 %gcov_ctr.i, 1
  store i64 %82, ptr @__llvm_gcov_ctr.59, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.53, align 8
  %83 = add i64 %gcov_ctr.i.i, 1
  store i64 %83, ptr @__llvm_gcov_ctr.53, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %hits, i32 noundef 8) #16, !dbg !346
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %84 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %84, ptr @__llvm_gcov_ctr.54, align 8
  %gcov_ctr.i2.i = load i64, ptr @__llvm_gcov_ctr.64, align 8
  %85 = add i64 %gcov_ctr.i2.i, 1
  store i64 %85, ptr @__llvm_gcov_ctr.64, align 8
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %hits) #16, !dbg !350
  br label %if.end21, !dbg !354

if.end21:                                         ; preds = %if.then20, %if.then18.if.end21_crit_edge
  %gcov_ctr85 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 4), align 16, !dbg !355
  %86 = add i64 %gcov_ctr85, 1, !dbg !355
  store i64 %86, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 4), align 16, !dbg !355
  br label %cleanup76, !dbg !356

if.then26.critedge:                               ; preds = %do.end
  %inc = add i32 %dup_try.0.ph, 1, !dbg !357
  %87 = ptrtoint ptr %map_size to i32, !dbg !358
  call void @__asan_load4_noabort(i32 %87), !dbg !358
  %88 = load i32, ptr %map_size, align 8, !dbg !358
  call void @__sanitizer_cov_trace_cmp4(i32 %inc, i32 %88), !dbg !359
  %cmp28 = icmp ugt i32 %inc, %88, !dbg !359
  br i1 %cmp28, label %if.then29, label %if.end30, !dbg !360

if.then29:                                        ; preds = %if.then26.critedge
  call void @__sanitizer_cov_trace_pc() #15, !dbg !361
  %gcov_ctr86 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 5), align 8, !dbg !361
  %89 = add i64 %gcov_ctr86, 1, !dbg !361
  store i64 %89, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 5), align 8, !dbg !361
  %drops = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 16, !dbg !362
  %gcov_ctr.i135 = load i64, ptr @__llvm_gcov_ctr.59, align 8
  %90 = add i64 %gcov_ctr.i135, 1
  store i64 %90, ptr @__llvm_gcov_ctr.59, align 8
  %gcov_ctr.i.i136 = load i64, ptr @__llvm_gcov_ctr.53, align 8
  %91 = add i64 %gcov_ctr.i.i136, 1
  store i64 %91, ptr @__llvm_gcov_ctr.53, align 8
  %call.i.i137 = tail call zeroext i1 @__kasan_check_write(ptr noundef %drops, i32 noundef 8) #16, !dbg !363
  %gcov_ctr.i.i.i138 = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %92 = add i64 %gcov_ctr.i.i.i138, 1
  store i64 %92, ptr @__llvm_gcov_ctr.54, align 8
  %gcov_ctr.i2.i139 = load i64, ptr @__llvm_gcov_ctr.64, align 8
  %93 = add i64 %gcov_ctr.i2.i139, 1
  store i64 %93, ptr @__llvm_gcov_ctr.64, align 8
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %drops) #16, !dbg !366
  br label %while.end, !dbg !368

if.end30:                                         ; preds = %if.then26.critedge
  call void @__sanitizer_cov_trace_pc() #15, !dbg !369
  %gcov_ctr87 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 6), align 16, !dbg !369
  %94 = add i64 %gcov_ctr87, 1, !dbg !369
  store i64 %94, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 6), align 16, !dbg !369
  br label %while.cond.outer.backedge, !dbg !369

while.cond.outer.backedge:                        ; preds = %if.else72, %if.end30
  %dup_try.0.ph.be = phi i32 [ %inc73, %if.else72 ], [ %inc, %if.end30 ]
  %idx.0.ph.be = phi i32 [ %and.lcssa, %if.else72 ], [ %and195, %if.end30 ]
  br label %while.cond.outer, !dbg !325, !llvm.loop !370

if.end32:                                         ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #15, !dbg !372
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 1), align 8, !dbg !372
  %95 = add i64 %gcov_ctr2.i, 1, !dbg !372
  store i64 %95, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.58, i32 0, i32 1), align 8, !dbg !372
  %gcov_ctr88 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 7), align 8, !dbg !373
  %96 = add i64 %gcov_ctr88, 1, !dbg !373
  store i64 %96, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 7), align 8, !dbg !373
  br label %if.end74, !dbg !374

if.then35.critedge:                               ; preds = %if.end74.if.then35.critedge_crit_edge, %while.cond.outer.if.then35.critedge_crit_edge
  %and.lcssa = phi i32 [ %and184, %while.cond.outer.if.then35.critedge_crit_edge ], [ %and, %if.end74.if.then35.critedge_crit_edge ], !dbg !327
  %add.ptr.lcssa = phi ptr [ %add.ptr193, %while.cond.outer.if.then35.critedge_crit_edge ], [ %add.ptr, %if.end74.if.then35.critedge_crit_edge ], !dbg !328
  br i1 %lookup_only, label %if.then37, label %if.end38, !dbg !375

if.then37:                                        ; preds = %if.then35.critedge
  call void @__sanitizer_cov_trace_pc() #15, !dbg !376
  %gcov_ctr89 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 8), align 16, !dbg !376
  %97 = add i64 %gcov_ctr89, 1, !dbg !376
  store i64 %97, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 8), align 16, !dbg !376
  br label %while.end, !dbg !376

if.end38:                                         ; preds = %if.then35.critedge
  %gcov_ctr.i140 = load i64, ptr @__llvm_gcov_ctr.56, align 8
  %98 = add i64 %gcov_ctr.i140, 1
  store i64 %98, ptr @__llvm_gcov_ctr.56, align 8
  %call.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %add.ptr.lcssa, i32 noundef 4) #16, !dbg !377
  %gcov_ctr.i.i141 = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %99 = add i64 %gcov_ctr.i.i141, 1
  store i64 %99, ptr @__llvm_gcov_ctr.54, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !dbg !379, !srcloc !380
  tail call void @llvm.prefetch.p0(ptr %add.ptr.lcssa, i32 1, i32 3, i32 1) #16, !dbg !381
  br label %do.body.i

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %if.end38
  %gcov_ctr.i155 = load i64, ptr @__llvm_gcov_ctr.60, align 16, !dbg !385
  %100 = add i64 %gcov_ctr.i155, 1, !dbg !385
  store i64 %100, ptr @__llvm_gcov_ctr.60, align 16, !dbg !385
  %101 = tail call { i32, i32 } asm sideeffect "@ __cmpxchg4\0A\09ldrex\09$1, [$2]\0A\09mov\09$0, #0\0A\09teq\09$1, $3\0A\09strexeq $0, $4, [$2]\0A", "=&r,=&r,r,Ir,r,~{memory},~{cc}"(ptr %add.ptr.lcssa, i32 0, i32 %key_hash.0) #16, !dbg !386, !srcloc !387
  %asmresult.i = extractvalue { i32, i32 } %101, 0, !dbg !386
  %tobool.not.i156 = icmp eq i32 %asmresult.i, 0, !dbg !388
  br i1 %tobool.not.i156, label %__cmpxchg.exit, label %do.body.i.do.body.i_crit_edge, !dbg !388, !llvm.loop !389

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !388
  br label %do.body.i, !dbg !388

__cmpxchg.exit:                                   ; preds = %do.body.i
  %gcov_ctr2.i157 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.60, i32 0, i32 1), align 8, !dbg !392
  %102 = add i64 %gcov_ctr2.i157, 1, !dbg !392
  store i64 %102, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.60, i32 0, i32 1), align 8, !dbg !392
  %asmresult1.i = extractvalue { i32, i32 } %101, 1, !dbg !386
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !dbg !379, !srcloc !393
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult1.i), !dbg !379
  %tobool59.not = icmp eq i32 %asmresult1.i, 0, !dbg !379
  br i1 %tobool59.not, label %if.then60, label %if.else72, !dbg !394

if.then60:                                        ; preds = %__cmpxchg.exit
  %gcov_ctr.i158 = load i64, ptr @__llvm_gcov_ctr.61, align 16
  %103 = add i64 %gcov_ctr.i158, 1
  store i64 %103, ptr @__llvm_gcov_ctr.61, align 16
  %next_elt.i = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 4, !dbg !395
  %gcov_ctr.i.i159 = load i64, ptr @__llvm_gcov_ctr.65, align 8
  %104 = add i64 %gcov_ctr.i.i159, 1
  store i64 %104, ptr @__llvm_gcov_ctr.65, align 8
  %gcov_ctr.i.i.i160 = load i64, ptr @__llvm_gcov_ctr.53, align 8
  %105 = add i64 %gcov_ctr.i.i.i160, 1
  store i64 %105, ptr @__llvm_gcov_ctr.53, align 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_elt.i, i32 noundef 4) #16, !dbg !398
  %gcov_ctr.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %106 = add i64 %gcov_ctr.i.i.i.i, 1
  store i64 %106, ptr @__llvm_gcov_ctr.54, align 8
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.66, align 8
  %107 = add i64 %gcov_ctr.i2.i.i, 1
  store i64 %107, ptr @__llvm_gcov_ctr.66, align 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !dbg !402, !srcloc !407
  %gcov_ctr.i.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.68, align 8
  %108 = add i64 %gcov_ctr.i.i.i.i.i, 1
  store i64 %108, ptr @__llvm_gcov_ctr.68, align 8
  tail call void @llvm.prefetch.p0(ptr %next_elt.i, i32 1, i32 3, i32 1) #16, !dbg !408
  %109 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %next_elt.i, ptr %next_elt.i, i32 1, ptr elementtype(i32) %next_elt.i) #16, !dbg !408, !srcloc !412
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %109, 0, !dbg !408
  %gcov_ctr.i.i3.i.i = load i64, ptr @__llvm_gcov_ctr.67, align 8, !dbg !413
  %110 = add i64 %gcov_ctr.i.i3.i.i, 1, !dbg !413
  store i64 %110, ptr @__llvm_gcov_ctr.67, align 8, !dbg !413
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #16, !dbg !413, !srcloc !414
  %max_elts.i = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 3, !dbg !415
  %111 = ptrtoint ptr %max_elts.i to i32, !dbg !415
  call void @__asan_load4_noabort(i32 %111), !dbg !415
  %112 = load i32, ptr %max_elts.i, align 4, !dbg !415
  call void @__sanitizer_cov_trace_cmp4(i32 %asmresult.i.i.i.i.i, i32 %112), !dbg !416
  %cmp.i161 = icmp ult i32 %asmresult.i.i.i.i.i, %112, !dbg !416
  br i1 %cmp.i161, label %if.then.i166, label %if.then60.cleanup.thread_crit_edge, !dbg !417

if.then60.cleanup.thread_crit_edge:               ; preds = %if.then60
  call void @__sanitizer_cov_trace_pc() #15, !dbg !417
  br label %cleanup.thread, !dbg !417

if.then.i166:                                     ; preds = %if.then60
  %elts.i = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 5, !dbg !418
  %113 = ptrtoint ptr %elts.i to i32, !dbg !418
  call void @__asan_load4_noabort(i32 %113), !dbg !418
  %114 = load ptr, ptr %elts.i, align 4, !dbg !418
  %pages.i = getelementptr inbounds %struct.tracing_map_array, ptr %114, i32 0, i32 5, !dbg !418
  %115 = ptrtoint ptr %pages.i to i32, !dbg !418
  call void @__asan_load4_noabort(i32 %115), !dbg !418
  %116 = load ptr, ptr %pages.i, align 4, !dbg !418
  %entry_shift.i = getelementptr inbounds %struct.tracing_map_array, ptr %114, i32 0, i32 2, !dbg !418
  %117 = ptrtoint ptr %entry_shift.i to i32, !dbg !418
  call void @__asan_load4_noabort(i32 %117), !dbg !418
  %118 = load i32, ptr %entry_shift.i, align 4, !dbg !418
  %shr.i = ashr i32 %asmresult.i.i.i.i.i, %118, !dbg !418
  %arrayidx.i162 = getelementptr ptr, ptr %116, i32 %shr.i, !dbg !418
  %119 = ptrtoint ptr %arrayidx.i162 to i32, !dbg !418
  call void @__asan_load4_noabort(i32 %119), !dbg !418
  %120 = load ptr, ptr %arrayidx.i162, align 4, !dbg !418
  %entry_mask.i = getelementptr inbounds %struct.tracing_map_array, ptr %114, i32 0, i32 3, !dbg !418
  %121 = ptrtoint ptr %entry_mask.i to i32, !dbg !418
  call void @__asan_load4_noabort(i32 %121), !dbg !418
  %122 = load i32, ptr %entry_mask.i, align 4, !dbg !418
  %and.i = and i32 %122, %asmresult.i.i.i.i.i, !dbg !418
  %entry_size_shift.i = getelementptr inbounds %struct.tracing_map_array, ptr %114, i32 0, i32 1, !dbg !418
  %123 = ptrtoint ptr %entry_size_shift.i to i32, !dbg !418
  call void @__asan_load4_noabort(i32 %123), !dbg !418
  %124 = load i32, ptr %entry_size_shift.i, align 4, !dbg !418
  %shl.i163 = shl i32 %and.i, %124, !dbg !418
  %add.ptr.i164 = getelementptr i8, ptr %120, i32 %shl.i163, !dbg !418
  %125 = ptrtoint ptr %add.ptr.i164 to i32, !dbg !419
  call void @__asan_load4_noabort(i32 %125), !dbg !419
  %126 = load ptr, ptr %add.ptr.i164, align 4, !dbg !419
  %ops.i = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 7, !dbg !420
  %127 = ptrtoint ptr %ops.i to i32, !dbg !420
  call void @__asan_load4_noabort(i32 %127), !dbg !420
  %128 = load ptr, ptr %ops.i, align 4, !dbg !420
  %tobool.not.i165 = icmp eq ptr %128, null, !dbg !421
  br i1 %tobool.not.i165, label %if.then.i166.get_free_elt.exit_crit_edge, label %land.lhs.true.i, !dbg !422

if.then.i166.get_free_elt.exit_crit_edge:         ; preds = %if.then.i166
  call void @__sanitizer_cov_trace_pc() #15, !dbg !422
  br label %get_free_elt.exit, !dbg !422

land.lhs.true.i:                                  ; preds = %if.then.i166
  %gcov_ctr10.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 1), align 8, !dbg !423
  %129 = add i64 %gcov_ctr10.i, 1, !dbg !423
  store i64 %129, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 1), align 8, !dbg !423
  %elt_init.i = getelementptr inbounds %struct.tracing_map_ops, ptr %128, i32 0, i32 3, !dbg !424
  %130 = ptrtoint ptr %elt_init.i to i32, !dbg !424
  call void @__asan_load4_noabort(i32 %130), !dbg !424
  %131 = load ptr, ptr %elt_init.i, align 4, !dbg !424
  %tobool5.not.i = icmp eq ptr %131, null, !dbg !423
  br i1 %tobool5.not.i, label %land.lhs.true.i.get_free_elt.exit_crit_edge, label %if.then6.i, !dbg !421

land.lhs.true.i.get_free_elt.exit_crit_edge:      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !421
  br label %get_free_elt.exit, !dbg !421

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !425
  %gcov_ctr11.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 2), align 16, !dbg !425
  %132 = add i64 %gcov_ctr11.i, 1, !dbg !425
  store i64 %132, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 2), align 16, !dbg !425
  %133 = ptrtoint ptr %elt_init.i to i32, !dbg !426
  call void @__asan_load4_noabort(i32 %133), !dbg !426
  %134 = load ptr, ptr %elt_init.i, align 4, !dbg !426
  tail call void %134(ptr noundef %126) #16, !dbg !425
  br label %get_free_elt.exit, !dbg !425

get_free_elt.exit:                                ; preds = %if.then6.i, %land.lhs.true.i.get_free_elt.exit_crit_edge, %if.then.i166.get_free_elt.exit_crit_edge
  %gcov_ctr12.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 3), align 8, !dbg !427
  %135 = add i64 %gcov_ctr12.i, 1, !dbg !427
  store i64 %135, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.61, i32 0, i32 3), align 8, !dbg !427
  %tobool62.not = icmp eq ptr %126, null, !dbg !428
  br i1 %tobool62.not, label %get_free_elt.exit.cleanup.thread_crit_edge, label %cleanup, !dbg !429

get_free_elt.exit.cleanup.thread_crit_edge:       ; preds = %get_free_elt.exit
  call void @__sanitizer_cov_trace_pc() #15, !dbg !429
  br label %cleanup.thread, !dbg !429

cleanup.thread:                                   ; preds = %get_free_elt.exit.cleanup.thread_crit_edge, %if.then60.cleanup.thread_crit_edge
  %gcov_ctr90 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 9), align 8, !dbg !430
  %136 = add i64 %gcov_ctr90, 1, !dbg !430
  store i64 %136, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 9), align 8, !dbg !430
  %drops64 = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 16, !dbg !431
  %gcov_ctr.i142 = load i64, ptr @__llvm_gcov_ctr.59, align 8
  %137 = add i64 %gcov_ctr.i142, 1
  store i64 %137, ptr @__llvm_gcov_ctr.59, align 8
  %gcov_ctr.i.i143 = load i64, ptr @__llvm_gcov_ctr.53, align 8
  %138 = add i64 %gcov_ctr.i.i143, 1
  store i64 %138, ptr @__llvm_gcov_ctr.53, align 8
  %call.i.i144 = tail call zeroext i1 @__kasan_check_write(ptr noundef %drops64, i32 noundef 8) #16, !dbg !432
  %gcov_ctr.i.i.i145 = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %139 = add i64 %gcov_ctr.i.i.i145, 1
  store i64 %139, ptr @__llvm_gcov_ctr.54, align 8
  %gcov_ctr.i2.i146 = load i64, ptr @__llvm_gcov_ctr.64, align 8
  %140 = add i64 %gcov_ctr.i2.i146, 1
  store i64 %140, ptr @__llvm_gcov_ctr.64, align 8
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %drops64) #16, !dbg !435
  %141 = ptrtoint ptr %add.ptr.lcssa to i32, !dbg !437
  call void @__asan_store4_noabort(i32 %141), !dbg !437
  store i32 0, ptr %add.ptr.lcssa, align 4, !dbg !437
  br label %while.end

cleanup:                                          ; preds = %get_free_elt.exit
  call void @__sanitizer_cov_trace_pc() #15, !dbg !438
  %gcov_ctr91 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 10), align 16, !dbg !438
  %142 = add i64 %gcov_ctr91, 1, !dbg !438
  store i64 %142, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 10), align 16, !dbg !438
  %key67 = getelementptr inbounds %struct.tracing_map_elt, ptr %126, i32 0, i32 4, !dbg !439
  %143 = ptrtoint ptr %key67 to i32, !dbg !439
  call void @__asan_load4_noabort(i32 %143), !dbg !439
  %144 = load ptr, ptr %key67, align 4, !dbg !439
  %145 = ptrtoint ptr %map to i32, !dbg !440
  call void @__asan_load4_noabort(i32 %145), !dbg !440
  %146 = load i32, ptr %map, align 8, !dbg !440
  %147 = call ptr @memcpy(ptr %144, ptr %key, i32 %146), !dbg !441
  %val69 = getelementptr inbounds %struct.tracing_map_entry, ptr %add.ptr.lcssa, i32 0, i32 1, !dbg !442
  %148 = ptrtoint ptr %val69 to i32, !dbg !443
  call void @__asan_store4_noabort(i32 %148), !dbg !443
  store ptr %126, ptr %val69, align 4, !dbg !443
  %hits70 = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 15, !dbg !444
  %gcov_ctr.i147 = load i64, ptr @__llvm_gcov_ctr.59, align 8
  %149 = add i64 %gcov_ctr.i147, 1
  store i64 %149, ptr @__llvm_gcov_ctr.59, align 8
  %gcov_ctr.i.i148 = load i64, ptr @__llvm_gcov_ctr.53, align 8
  %150 = add i64 %gcov_ctr.i.i148, 1
  store i64 %150, ptr @__llvm_gcov_ctr.53, align 8
  %call.i.i149 = tail call zeroext i1 @__kasan_check_write(ptr noundef %hits70, i32 noundef 8) #16, !dbg !445
  %gcov_ctr.i.i.i150 = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %151 = add i64 %gcov_ctr.i.i.i150, 1
  store i64 %151, ptr @__llvm_gcov_ctr.54, align 8
  %gcov_ctr.i2.i151 = load i64, ptr @__llvm_gcov_ctr.64, align 8
  %152 = add i64 %gcov_ctr.i2.i151, 1
  store i64 %152, ptr @__llvm_gcov_ctr.64, align 8
  tail call void @generic_atomic64_add(i64 noundef 1, ptr noundef %hits70) #16, !dbg !448
  %153 = ptrtoint ptr %val69 to i32, !dbg !450
  call void @__asan_load4_noabort(i32 %153), !dbg !450
  %154 = load ptr, ptr %val69, align 4, !dbg !450
  br label %cleanup76

if.else72:                                        ; preds = %__cmpxchg.exit
  call void @__sanitizer_cov_trace_pc() #15, !dbg !451
  %gcov_ctr92 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 11), align 8, !dbg !451
  %155 = add i64 %gcov_ctr92, 1, !dbg !451
  store i64 %155, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 11), align 8, !dbg !451
  %inc73 = add i32 %dup_try.0.ph, 1, !dbg !451
  br label %while.cond.outer.backedge, !dbg !452

if.end74:                                         ; preds = %if.end32, %land.lhs.true.if.end74_crit_edge
  %gcov_ctr93 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 12), align 16, !dbg !453
  %156 = add i64 %gcov_ctr93, 1, !dbg !453
  store i64 %156, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 12), align 16, !dbg !453
  %inc75 = add i32 %and195, 1, !dbg !453
  %157 = ptrtoint ptr %map_size to i32, !dbg !325
  call void @__asan_load4_noabort(i32 %157), !dbg !325
  %158 = load i32, ptr %map_size, align 8, !dbg !325
  %sub2 = add i32 %158, -1, !dbg !326
  %and = and i32 %sub2, %inc75, !dbg !327
  %159 = ptrtoint ptr %map3 to i32, !dbg !328
  call void @__asan_load4_noabort(i32 %159), !dbg !328
  %160 = load ptr, ptr %map3, align 8, !dbg !328
  %pages = getelementptr inbounds %struct.tracing_map_array, ptr %160, i32 0, i32 5, !dbg !328
  %161 = ptrtoint ptr %pages to i32, !dbg !328
  call void @__asan_load4_noabort(i32 %161), !dbg !328
  %162 = load ptr, ptr %pages, align 4, !dbg !328
  %entry_shift = getelementptr inbounds %struct.tracing_map_array, ptr %160, i32 0, i32 2, !dbg !328
  %163 = ptrtoint ptr %entry_shift to i32, !dbg !328
  call void @__asan_load4_noabort(i32 %163), !dbg !328
  %164 = load i32, ptr %entry_shift, align 4, !dbg !328
  %shr5 = lshr i32 %and, %164, !dbg !328
  %arrayidx = getelementptr ptr, ptr %162, i32 %shr5, !dbg !328
  %165 = ptrtoint ptr %arrayidx to i32, !dbg !328
  call void @__asan_load4_noabort(i32 %165), !dbg !328
  %166 = load ptr, ptr %arrayidx, align 4, !dbg !328
  %entry_mask = getelementptr inbounds %struct.tracing_map_array, ptr %160, i32 0, i32 3, !dbg !328
  %167 = ptrtoint ptr %entry_mask to i32, !dbg !328
  call void @__asan_load4_noabort(i32 %167), !dbg !328
  %168 = load i32, ptr %entry_mask, align 4, !dbg !328
  %and7 = and i32 %168, %and, !dbg !328
  %entry_size_shift = getelementptr inbounds %struct.tracing_map_array, ptr %160, i32 0, i32 1, !dbg !328
  %169 = ptrtoint ptr %entry_size_shift to i32, !dbg !328
  call void @__asan_load4_noabort(i32 %169), !dbg !328
  %170 = load i32, ptr %entry_size_shift, align 4, !dbg !328
  %shl = shl i32 %and7, %170, !dbg !328
  %add.ptr = getelementptr i8, ptr %166, i32 %shl, !dbg !328
  %171 = ptrtoint ptr %add.ptr to i32, !dbg !329
  call void @__asan_load4_noabort(i32 %171), !dbg !329
  %172 = load i32, ptr %add.ptr, align 4, !dbg !329
  %tobool.not = icmp eq i32 %172, 0, !dbg !330
  br i1 %tobool.not, label %if.end74.if.then35.critedge_crit_edge, label %if.end74.land.lhs.true_crit_edge, !dbg !331, !llvm.loop !370

if.end74.land.lhs.true_crit_edge:                 ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15, !dbg !331
  br label %land.lhs.true, !dbg !331

if.end74.if.then35.critedge_crit_edge:            ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #15, !dbg !331
  br label %if.then35.critedge, !dbg !331

while.end:                                        ; preds = %cleanup.thread, %if.then37, %if.then29
  %gcov_ctr94 = load i64, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 13), align 8, !dbg !454
  %173 = add i64 %gcov_ctr94, 1, !dbg !454
  store i64 %173, ptr getelementptr inbounds ([14 x i64], ptr @__llvm_gcov_ctr.27, i32 0, i32 13), align 8, !dbg !454
  br label %cleanup76, !dbg !454

cleanup76:                                        ; preds = %while.end, %cleanup, %if.end21
  %retval.1 = phi ptr [ %74, %if.end21 ], [ null, %while.end ], [ %154, %cleanup ], !dbg !320
  ret ptr %retval.1, !dbg !455
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tracing_map_lookup(ptr noundef %map, ptr nocapture noundef readonly %key) local_unnamed_addr #0 align 64 !dbg !456 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !457
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.28, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.28, align 8
  %call = tail call fastcc ptr @__tracing_map_insert(ptr noundef %map, ptr noundef %key, i1 noundef zeroext true), !dbg !458
  ret ptr %call, !dbg !459
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tracing_map_destroy(ptr noundef %map) local_unnamed_addr #0 align 64 !dbg !460 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !461
  %tobool.not = icmp eq ptr %map, null, !dbg !462
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !463

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !464
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.29, align 8, !dbg !464
  %0 = add i64 %gcov_ctr, 1, !dbg !464
  store i64 %0, ptr @__llvm_gcov_ctr.29, align 8, !dbg !464
  br label %return, !dbg !464

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !465
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 1), align 8, !dbg !465
  %1 = add i64 %gcov_ctr2, 1, !dbg !465
  store i64 %1, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 1), align 8, !dbg !465
  tail call fastcc void @tracing_map_free_elts(ptr noundef nonnull %map), !dbg !466
  %map1 = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 6, !dbg !467
  %2 = ptrtoint ptr %map1 to i32, !dbg !467
  call void @__asan_load4_noabort(i32 %2), !dbg !467
  %3 = load ptr, ptr %map1, align 8, !dbg !467
  tail call fastcc void @tracing_map_array_free(ptr noundef %3), !dbg !468
  tail call void @kfree(ptr noundef nonnull %map) #16, !dbg !469
  br label %return, !dbg !470

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !470
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tracing_map_free_elts(ptr nocapture noundef %map) unnamed_addr #0 align 64 !dbg !471 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !472
  %elts = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 5, !dbg !473
  %0 = ptrtoint ptr %elts to i32, !dbg !473
  call void @__asan_load4_noabort(i32 %0), !dbg !473
  %1 = load ptr, ptr %elts, align 4, !dbg !473
  %tobool.not = icmp eq ptr %1, null, !dbg !474
  br i1 %tobool.not, label %if.then, label %for.cond.preheader, !dbg !475

for.cond.preheader:                               ; preds = %entry
  %max_elts = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 3
  %2 = ptrtoint ptr %max_elts to i32, !dbg !476
  call void @__asan_load4_noabort(i32 %2), !dbg !476
  %3 = load i32, ptr %max_elts, align 4, !dbg !476
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3), !dbg !477
  %cmp39.not = icmp eq i32 %3, 0, !dbg !477
  br i1 %cmp39.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge, !dbg !478

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body, !dbg !478

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15, !dbg !478
  br label %for.end, !dbg !478

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !479
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.30, align 16
  %4 = add i64 %gcov_ctr, 1
  store i64 %4, ptr @__llvm_gcov_ctr.30, align 16
  br label %cleanup, !dbg !480

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.040 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %5 = ptrtoint ptr %elts to i32, !dbg !481
  call void @__asan_load4_noabort(i32 %5), !dbg !481
  %6 = load ptr, ptr %elts, align 4, !dbg !481
  %pages = getelementptr inbounds %struct.tracing_map_array, ptr %6, i32 0, i32 5, !dbg !481
  %7 = ptrtoint ptr %pages to i32, !dbg !481
  call void @__asan_load4_noabort(i32 %7), !dbg !481
  %8 = load ptr, ptr %pages, align 4, !dbg !481
  %entry_shift = getelementptr inbounds %struct.tracing_map_array, ptr %6, i32 0, i32 2, !dbg !481
  %9 = ptrtoint ptr %entry_shift to i32, !dbg !481
  call void @__asan_load4_noabort(i32 %9), !dbg !481
  %10 = load i32, ptr %entry_shift, align 4, !dbg !481
  %shr = lshr i32 %i.040, %10, !dbg !481
  %arrayidx = getelementptr ptr, ptr %8, i32 %shr, !dbg !481
  %11 = ptrtoint ptr %arrayidx to i32, !dbg !481
  call void @__asan_load4_noabort(i32 %11), !dbg !481
  %12 = load ptr, ptr %arrayidx, align 4, !dbg !481
  %entry_mask = getelementptr inbounds %struct.tracing_map_array, ptr %6, i32 0, i32 3, !dbg !481
  %13 = ptrtoint ptr %entry_mask to i32, !dbg !481
  call void @__asan_load4_noabort(i32 %13), !dbg !481
  %14 = load i32, ptr %entry_mask, align 4, !dbg !481
  %and = and i32 %14, %i.040, !dbg !481
  %entry_size_shift = getelementptr inbounds %struct.tracing_map_array, ptr %6, i32 0, i32 1, !dbg !481
  %15 = ptrtoint ptr %entry_size_shift to i32, !dbg !481
  call void @__asan_load4_noabort(i32 %15), !dbg !481
  %16 = load i32, ptr %entry_size_shift, align 4, !dbg !481
  %shl = shl i32 %and, %16, !dbg !481
  %add.ptr = getelementptr i8, ptr %12, i32 %shl, !dbg !481
  %17 = ptrtoint ptr %add.ptr to i32, !dbg !482
  call void @__asan_load4_noabort(i32 %17), !dbg !482
  %18 = load ptr, ptr %add.ptr, align 4, !dbg !482
  tail call fastcc void @tracing_map_elt_free(ptr noundef %18), !dbg !483
  %19 = ptrtoint ptr %elts to i32, !dbg !484
  call void @__asan_load4_noabort(i32 %19), !dbg !484
  %20 = load ptr, ptr %elts, align 4, !dbg !484
  %pages6 = getelementptr inbounds %struct.tracing_map_array, ptr %20, i32 0, i32 5, !dbg !484
  %21 = ptrtoint ptr %pages6 to i32, !dbg !484
  call void @__asan_load4_noabort(i32 %21), !dbg !484
  %22 = load ptr, ptr %pages6, align 4, !dbg !484
  %entry_shift8 = getelementptr inbounds %struct.tracing_map_array, ptr %20, i32 0, i32 2, !dbg !484
  %23 = ptrtoint ptr %entry_shift8 to i32, !dbg !484
  call void @__asan_load4_noabort(i32 %23), !dbg !484
  %24 = load i32, ptr %entry_shift8, align 4, !dbg !484
  %shr9 = lshr i32 %i.040, %24, !dbg !484
  %arrayidx10 = getelementptr ptr, ptr %22, i32 %shr9, !dbg !484
  %25 = ptrtoint ptr %arrayidx10 to i32, !dbg !484
  call void @__asan_load4_noabort(i32 %25), !dbg !484
  %26 = load ptr, ptr %arrayidx10, align 4, !dbg !484
  %entry_mask12 = getelementptr inbounds %struct.tracing_map_array, ptr %20, i32 0, i32 3, !dbg !484
  %27 = ptrtoint ptr %entry_mask12 to i32, !dbg !484
  call void @__asan_load4_noabort(i32 %27), !dbg !484
  %28 = load i32, ptr %entry_mask12, align 4, !dbg !484
  %and13 = and i32 %28, %i.040, !dbg !484
  %entry_size_shift15 = getelementptr inbounds %struct.tracing_map_array, ptr %20, i32 0, i32 1, !dbg !484
  %29 = ptrtoint ptr %entry_size_shift15 to i32, !dbg !484
  call void @__asan_load4_noabort(i32 %29), !dbg !484
  %30 = load i32, ptr %entry_size_shift15, align 4, !dbg !484
  %shl16 = shl i32 %and13, %30, !dbg !484
  %add.ptr17 = getelementptr i8, ptr %26, i32 %shl16, !dbg !484
  %31 = ptrtoint ptr %add.ptr17 to i32, !dbg !485
  call void @__asan_store4_noabort(i32 %31), !dbg !485
  store ptr null, ptr %add.ptr17, align 4, !dbg !485
  %gcov_ctr20 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 1), align 8, !dbg !486
  %32 = add i64 %gcov_ctr20, 1, !dbg !486
  store i64 %32, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 1), align 8, !dbg !486
  %inc = add nuw i32 %i.040, 1, !dbg !486
  %33 = ptrtoint ptr %max_elts to i32, !dbg !476
  call void @__asan_load4_noabort(i32 %33), !dbg !476
  %34 = load i32, ptr %max_elts, align 4, !dbg !476
  %cmp = icmp ult i32 %inc, %34, !dbg !477
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !dbg !478, !llvm.loop !487

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !478
  br label %for.end, !dbg !478

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !478
  br label %for.body, !dbg !478

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 2), align 16, !dbg !489
  %35 = add i64 %gcov_ctr21, 1, !dbg !489
  store i64 %35, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.30, i32 0, i32 2), align 16, !dbg !489
  %36 = ptrtoint ptr %elts to i32, !dbg !490
  call void @__asan_load4_noabort(i32 %36), !dbg !490
  %37 = load ptr, ptr %elts, align 4, !dbg !490
  tail call fastcc void @tracing_map_array_free(ptr noundef %37), !dbg !491
  %38 = ptrtoint ptr %elts to i32, !dbg !492
  call void @__asan_store4_noabort(i32 %38), !dbg !492
  store ptr null, ptr %elts, align 4, !dbg !492
  br label %cleanup, !dbg !493

cleanup:                                          ; preds = %for.end, %if.then
  ret void, !dbg !493
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tracing_map_array_free(ptr noundef %a) unnamed_addr #0 align 64 !dbg !494 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !495
  %tobool.not = icmp eq ptr %a, null, !dbg !496
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !497

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !498
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.31, align 16
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.31, align 16
  br label %cleanup, !dbg !499

if.end:                                           ; preds = %entry
  %pages = getelementptr inbounds %struct.tracing_map_array, ptr %a, i32 0, i32 5, !dbg !500
  %1 = ptrtoint ptr %pages to i32, !dbg !500
  call void @__asan_load4_noabort(i32 %1), !dbg !500
  %2 = load ptr, ptr %pages, align 4, !dbg !500
  %tobool1.not = icmp eq ptr %2, null, !dbg !501
  br i1 %tobool1.not, label %if.then2, label %if.end3, !dbg !502

if.then2:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !503
  %gcov_ctr14 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 2), align 16, !dbg !503
  %3 = add i64 %gcov_ctr14, 1, !dbg !503
  store i64 %3, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 2), align 16, !dbg !503
  br label %free, !dbg !503

if.end3:                                          ; preds = %if.end
  %gcov_ctr13 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 1), align 8, !dbg !504
  %4 = add i64 %gcov_ctr13, 1, !dbg !504
  store i64 %4, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 1), align 8, !dbg !504
  %n_pages = getelementptr inbounds %struct.tracing_map_array, ptr %a, i32 0, i32 4
  %5 = ptrtoint ptr %n_pages to i32, !dbg !505
  call void @__asan_load4_noabort(i32 %5), !dbg !505
  %6 = load i32, ptr %n_pages, align 4, !dbg !505
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6), !dbg !506
  %cmp29.not = icmp eq i32 %6, 0, !dbg !506
  br i1 %cmp29.not, label %if.end3.for.end_crit_edge, label %if.end3.for.body_crit_edge, !dbg !507

if.end3.for.body_crit_edge:                       ; preds = %if.end3
  br label %for.body, !dbg !507

if.end3.for.end_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #15, !dbg !507
  br label %for.end, !dbg !507

for.body:                                         ; preds = %if.end7.for.body_crit_edge, %if.end3.for.body_crit_edge
  %i.030 = phi i32 [ %inc, %if.end7.for.body_crit_edge ], [ 0, %if.end3.for.body_crit_edge ]
  %7 = ptrtoint ptr %pages to i32, !dbg !508
  call void @__asan_load4_noabort(i32 %7), !dbg !508
  %8 = load ptr, ptr %pages, align 4, !dbg !508
  %arrayidx = getelementptr ptr, ptr %8, i32 %i.030, !dbg !509
  %9 = ptrtoint ptr %arrayidx to i32, !dbg !509
  call void @__asan_load4_noabort(i32 %9), !dbg !509
  %10 = load ptr, ptr %arrayidx, align 4, !dbg !509
  %tobool5.not = icmp eq ptr %10, null, !dbg !509
  br i1 %tobool5.not, label %if.then6, label %if.end7, !dbg !510

if.then6:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !511
  %gcov_ctr15 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 3), align 8, !dbg !511
  %11 = add i64 %gcov_ctr15, 1, !dbg !511
  store i64 %11, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 3), align 8, !dbg !511
  br label %for.end, !dbg !511

if.end7:                                          ; preds = %for.body
  tail call void @kmemleak_free(ptr noundef nonnull %10) #16, !dbg !512
  %12 = ptrtoint ptr %pages to i32, !dbg !513
  call void @__asan_load4_noabort(i32 %12), !dbg !513
  %13 = load ptr, ptr %pages, align 4, !dbg !513
  %arrayidx11 = getelementptr ptr, ptr %13, i32 %i.030, !dbg !513
  %14 = ptrtoint ptr %arrayidx11 to i32, !dbg !513
  call void @__asan_load4_noabort(i32 %14), !dbg !513
  %15 = load ptr, ptr %arrayidx11, align 4, !dbg !513
  %16 = ptrtoint ptr %15 to i32, !dbg !513
  tail call void @free_pages(i32 noundef %16, i32 noundef 0) #16, !dbg !513
  %gcov_ctr16 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 4), align 16, !dbg !514
  %17 = add i64 %gcov_ctr16, 1, !dbg !514
  store i64 %17, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.31, i32 0, i32 4), align 16, !dbg !514
  %inc = add nuw i32 %i.030, 1, !dbg !514
  %18 = ptrtoint ptr %n_pages to i32, !dbg !505
  call void @__asan_load4_noabort(i32 %18), !dbg !505
  %19 = load i32, ptr %n_pages, align 4, !dbg !505
  %cmp = icmp ult i32 %inc, %19, !dbg !506
  br i1 %cmp, label %if.end7.for.body_crit_edge, label %if.end7.for.end_crit_edge, !dbg !507, !llvm.loop !515

if.end7.for.end_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15, !dbg !507
  br label %for.end, !dbg !507

if.end7.for.body_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #15, !dbg !507
  br label %for.body, !dbg !507

for.end:                                          ; preds = %if.end7.for.end_crit_edge, %if.then6, %if.end3.for.end_crit_edge
  %20 = ptrtoint ptr %pages to i32, !dbg !517
  call void @__asan_load4_noabort(i32 %20), !dbg !517
  %21 = load ptr, ptr %pages, align 4, !dbg !517
  tail call void @kfree(ptr noundef %21) #16, !dbg !518
  br label %free, !dbg !518

free:                                             ; preds = %for.end, %if.then2
  tail call void @kfree(ptr noundef nonnull %a) #16, !dbg !519
  br label %cleanup, !dbg !520

cleanup:                                          ; preds = %free, %if.then
  ret void, !dbg !520
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tracing_map_clear(ptr noundef %map) local_unnamed_addr #0 align 64 !dbg !521 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !522
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.32, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.32, align 8
  %next_elt = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 4, !dbg !523
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.56, align 8
  %1 = add i64 %gcov_ctr.i.i, 1
  store i64 %1, ptr @__llvm_gcov_ctr.56, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_elt, i32 noundef 4) #16, !dbg !524
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %2 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %2, ptr @__llvm_gcov_ctr.54, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.33, align 8, !dbg !528
  %3 = add i64 %gcov_ctr.i, 1, !dbg !528
  store i64 %3, ptr @__llvm_gcov_ctr.33, align 8, !dbg !528
  %4 = ptrtoint ptr %next_elt to i32, !dbg !528
  call void @__asan_store4_noabort(i32 %4), !dbg !528
  store volatile i32 -1, ptr %next_elt, align 4, !dbg !528
  %hits = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 15, !dbg !529
  %gcov_ctr.i17 = load i64, ptr @__llvm_gcov_ctr.6, align 8
  %5 = add i64 %gcov_ctr.i17, 1
  store i64 %5, ptr @__llvm_gcov_ctr.6, align 8
  %gcov_ctr.i.i18 = load i64, ptr @__llvm_gcov_ctr.56, align 8
  %6 = add i64 %gcov_ctr.i.i18, 1
  store i64 %6, ptr @__llvm_gcov_ctr.56, align 8
  %call.i.i19 = tail call zeroext i1 @__kasan_check_write(ptr noundef %hits, i32 noundef 8) #16, !dbg !530
  %gcov_ctr.i.i.i20 = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %7 = add i64 %gcov_ctr.i.i.i20, 1
  store i64 %7, ptr @__llvm_gcov_ctr.54, align 8
  tail call void @generic_atomic64_set(ptr noundef %hits, i64 noundef 0) #16, !dbg !533
  %drops = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 16, !dbg !534
  %gcov_ctr.i21 = load i64, ptr @__llvm_gcov_ctr.6, align 8
  %8 = add i64 %gcov_ctr.i21, 1
  store i64 %8, ptr @__llvm_gcov_ctr.6, align 8
  %gcov_ctr.i.i22 = load i64, ptr @__llvm_gcov_ctr.56, align 8
  %9 = add i64 %gcov_ctr.i.i22, 1
  store i64 %9, ptr @__llvm_gcov_ctr.56, align 8
  %call.i.i23 = tail call zeroext i1 @__kasan_check_write(ptr noundef %drops, i32 noundef 8) #16, !dbg !535
  %gcov_ctr.i.i.i24 = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %10 = add i64 %gcov_ctr.i.i.i24, 1
  store i64 %10, ptr @__llvm_gcov_ctr.54, align 8
  tail call void @generic_atomic64_set(ptr noundef %drops, i64 noundef 0) #16, !dbg !538
  %map1 = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 6, !dbg !539
  %11 = ptrtoint ptr %map1 to i32, !dbg !539
  call void @__asan_load4_noabort(i32 %11), !dbg !539
  %12 = load ptr, ptr %map1, align 8, !dbg !539
  %pages.i = getelementptr inbounds %struct.tracing_map_array, ptr %12, i32 0, i32 5, !dbg !540
  %13 = ptrtoint ptr %pages.i to i32, !dbg !540
  call void @__asan_load4_noabort(i32 %13), !dbg !540
  %14 = load ptr, ptr %pages.i, align 4, !dbg !540
  %tobool.not.i = icmp eq ptr %14, null, !dbg !543
  br i1 %tobool.not.i, label %entry.tracing_map_array_clear.exit_crit_edge, label %for.cond.preheader.i, !dbg !544

entry.tracing_map_array_clear.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !544
  br label %tracing_map_array_clear.exit, !dbg !544

for.cond.preheader.i:                             ; preds = %entry
  %n_pages.i = getelementptr inbounds %struct.tracing_map_array, ptr %12, i32 0, i32 4
  %15 = ptrtoint ptr %n_pages.i to i32, !dbg !545
  call void @__asan_load4_noabort(i32 %15), !dbg !545
  %16 = load i32, ptr %n_pages.i, align 4, !dbg !545
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16), !dbg !546
  %cmp9.not.i = icmp eq i32 %16, 0, !dbg !546
  br i1 %cmp9.not.i, label %for.cond.preheader.i.tracing_map_array_clear.exit_crit_edge, label %for.cond.preheader.i.for.body.i_crit_edge, !dbg !547

for.cond.preheader.i.for.body.i_crit_edge:        ; preds = %for.cond.preheader.i
  br label %for.body.i, !dbg !547

for.cond.preheader.i.tracing_map_array_clear.exit_crit_edge: ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !547
  br label %tracing_map_array_clear.exit, !dbg !547

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.cond.preheader.i.for.body.i_crit_edge
  %i.010.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.cond.preheader.i.for.body.i_crit_edge ]
  %17 = ptrtoint ptr %pages.i to i32, !dbg !548
  call void @__asan_load4_noabort(i32 %17), !dbg !548
  %18 = load ptr, ptr %pages.i, align 4, !dbg !548
  %arrayidx.i = getelementptr ptr, ptr %18, i32 %i.010.i, !dbg !549
  %19 = ptrtoint ptr %arrayidx.i to i32, !dbg !549
  call void @__asan_load4_noabort(i32 %19), !dbg !549
  %20 = load ptr, ptr %arrayidx.i, align 4, !dbg !549
  %21 = call ptr @memset(ptr %20, i32 0, i32 4096), !dbg !550
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 1), align 8, !dbg !551
  %22 = add i64 %gcov_ctr2.i, 1, !dbg !551
  store i64 %22, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 1), align 8, !dbg !551
  %inc.i = add nuw i32 %i.010.i, 1, !dbg !551
  %23 = ptrtoint ptr %n_pages.i to i32, !dbg !545
  call void @__asan_load4_noabort(i32 %23), !dbg !545
  %24 = load i32, ptr %n_pages.i, align 4, !dbg !545
  %cmp.i = icmp ult i32 %inc.i, %24, !dbg !546
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.tracing_map_array_clear.exit_crit_edge, !dbg !547, !llvm.loop !552

for.body.i.tracing_map_array_clear.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !547
  br label %tracing_map_array_clear.exit, !dbg !547

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !547
  br label %for.body.i, !dbg !547

tracing_map_array_clear.exit:                     ; preds = %for.body.i.tracing_map_array_clear.exit_crit_edge, %for.cond.preheader.i.tracing_map_array_clear.exit_crit_edge, %entry.tracing_map_array_clear.exit_crit_edge
  %.sink.i = phi ptr [ @__llvm_gcov_ctr.34, %entry.tracing_map_array_clear.exit_crit_edge ], [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 2), %for.cond.preheader.i.tracing_map_array_clear.exit_crit_edge ], [ getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.34, i32 0, i32 2), %for.body.i.tracing_map_array_clear.exit_crit_edge ]
  %25 = ptrtoint ptr %.sink.i to i32
  call void @__asan_load8_noabort(i32 %25)
  %gcov_ctr3.i = load i64, ptr %.sink.i, align 16
  %26 = add i64 %gcov_ctr3.i, 1
  store i64 %26, ptr %.sink.i, align 16
  %max_elts = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 3
  %27 = ptrtoint ptr %max_elts to i32, !dbg !554
  call void @__asan_load4_noabort(i32 %27), !dbg !554
  %28 = load i32, ptr %max_elts, align 4, !dbg !554
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28), !dbg !555
  %cmp25.not = icmp eq i32 %28, 0, !dbg !555
  br i1 %cmp25.not, label %tracing_map_array_clear.exit.for.end_crit_edge, label %for.body.lr.ph, !dbg !556

tracing_map_array_clear.exit.for.end_crit_edge:   ; preds = %tracing_map_array_clear.exit
  call void @__sanitizer_cov_trace_pc() #15, !dbg !556
  br label %for.end, !dbg !556

for.body.lr.ph:                                   ; preds = %tracing_map_array_clear.exit
  %elts = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 5
  br label %for.body, !dbg !556

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.026 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %29 = ptrtoint ptr %elts to i32, !dbg !557
  call void @__asan_load4_noabort(i32 %29), !dbg !557
  %30 = load ptr, ptr %elts, align 4, !dbg !557
  %pages = getelementptr inbounds %struct.tracing_map_array, ptr %30, i32 0, i32 5, !dbg !557
  %31 = ptrtoint ptr %pages to i32, !dbg !557
  call void @__asan_load4_noabort(i32 %31), !dbg !557
  %32 = load ptr, ptr %pages, align 4, !dbg !557
  %entry_shift = getelementptr inbounds %struct.tracing_map_array, ptr %30, i32 0, i32 2, !dbg !557
  %33 = ptrtoint ptr %entry_shift to i32, !dbg !557
  call void @__asan_load4_noabort(i32 %33), !dbg !557
  %34 = load i32, ptr %entry_shift, align 4, !dbg !557
  %shr = lshr i32 %i.026, %34, !dbg !557
  %arrayidx = getelementptr ptr, ptr %32, i32 %shr, !dbg !557
  %35 = ptrtoint ptr %arrayidx to i32, !dbg !557
  call void @__asan_load4_noabort(i32 %35), !dbg !557
  %36 = load ptr, ptr %arrayidx, align 4, !dbg !557
  %entry_mask = getelementptr inbounds %struct.tracing_map_array, ptr %30, i32 0, i32 3, !dbg !557
  %37 = ptrtoint ptr %entry_mask to i32, !dbg !557
  call void @__asan_load4_noabort(i32 %37), !dbg !557
  %38 = load i32, ptr %entry_mask, align 4, !dbg !557
  %and = and i32 %38, %i.026, !dbg !557
  %entry_size_shift = getelementptr inbounds %struct.tracing_map_array, ptr %30, i32 0, i32 1, !dbg !557
  %39 = ptrtoint ptr %entry_size_shift to i32, !dbg !557
  call void @__asan_load4_noabort(i32 %39), !dbg !557
  %40 = load i32, ptr %entry_size_shift, align 4, !dbg !557
  %shl = shl i32 %and, %40, !dbg !557
  %add.ptr = getelementptr i8, ptr %36, i32 %shl, !dbg !557
  %41 = ptrtoint ptr %add.ptr to i32, !dbg !558
  call void @__asan_load4_noabort(i32 %41), !dbg !558
  %42 = load ptr, ptr %add.ptr, align 4, !dbg !558
  tail call fastcc void @tracing_map_elt_clear(ptr noundef %42), !dbg !559
  %gcov_ctr5 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !560
  %43 = add i64 %gcov_ctr5, 1, !dbg !560
  store i64 %43, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.32, i32 0, i32 1), align 8, !dbg !560
  %inc = add nuw i32 %i.026, 1, !dbg !560
  %44 = ptrtoint ptr %max_elts to i32, !dbg !554
  call void @__asan_load4_noabort(i32 %44), !dbg !554
  %45 = load i32, ptr %max_elts, align 4, !dbg !554
  %cmp = icmp ult i32 %inc, %45, !dbg !555
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge, !dbg !556, !llvm.loop !561

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !556
  br label %for.end, !dbg !556

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !556
  br label %for.body, !dbg !556

for.end:                                          ; preds = %for.body.for.end_crit_edge, %tracing_map_array_clear.exit.for.end_crit_edge
  ret void, !dbg !563
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tracing_map_elt_clear(ptr noundef %elt) unnamed_addr #0 align 64 !dbg !564 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !565
  %0 = ptrtoint ptr %elt to i32, !dbg !566
  call void @__asan_load4_noabort(i32 %0), !dbg !566
  %1 = load ptr, ptr %elt, align 4, !dbg !566
  %n_fields47 = getelementptr inbounds %struct.tracing_map, ptr %1, i32 0, i32 10, !dbg !567
  %2 = ptrtoint ptr %n_fields47 to i32, !dbg !567
  call void @__asan_load4_noabort(i32 %2), !dbg !567
  %3 = load i32, ptr %n_fields47, align 8, !dbg !567
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3), !dbg !568
  %cmp48.not = icmp eq i32 %3, 0, !dbg !568
  br i1 %cmp48.not, label %entry.for.cond4.preheader_crit_edge, label %for.body.lr.ph, !dbg !569

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !569
  br label %for.cond4.preheader, !dbg !569

for.body.lr.ph:                                   ; preds = %entry
  %fields = getelementptr inbounds %struct.tracing_map_elt, ptr %elt, i32 0, i32 1
  br label %for.body, !dbg !569

for.cond4.preheader:                              ; preds = %for.inc.for.cond4.preheader_crit_edge, %entry.for.cond4.preheader_crit_edge
  %4 = ptrtoint ptr %elt to i32, !dbg !570
  call void @__asan_load4_noabort(i32 %4), !dbg !570
  %5 = load ptr, ptr %elt, align 4, !dbg !570
  %n_vars51 = getelementptr inbounds %struct.tracing_map, ptr %5, i32 0, i32 14, !dbg !571
  %6 = ptrtoint ptr %n_vars51 to i32, !dbg !571
  call void @__asan_load4_noabort(i32 %6), !dbg !571
  %7 = load i32, ptr %n_vars51, align 4, !dbg !571
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7), !dbg !572
  %cmp652.not = icmp eq i32 %7, 0, !dbg !572
  br i1 %cmp652.not, label %for.cond4.preheader.for.end12_crit_edge, label %for.body7.lr.ph, !dbg !573

for.cond4.preheader.for.end12_crit_edge:          ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #15, !dbg !573
  br label %for.end12, !dbg !573

for.body7.lr.ph:                                  ; preds = %for.cond4.preheader
  %vars = getelementptr inbounds %struct.tracing_map_elt, ptr %elt, i32 0, i32 2
  %var_set = getelementptr inbounds %struct.tracing_map_elt, ptr %elt, i32 0, i32 3
  br label %for.body7, !dbg !573

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.049 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %8 = ptrtoint ptr %fields to i32, !dbg !574
  call void @__asan_load4_noabort(i32 %8), !dbg !574
  %9 = load ptr, ptr %fields, align 4, !dbg !574
  %arrayidx = getelementptr %struct.tracing_map_field, ptr %9, i32 %i.049, !dbg !575
  %10 = ptrtoint ptr %arrayidx to i32, !dbg !576
  call void @__asan_load4_noabort(i32 %10), !dbg !576
  %11 = load ptr, ptr %arrayidx, align 8, !dbg !576
  %cmp1 = icmp eq ptr %11, @tracing_map_cmp_atomic64, !dbg !577
  br i1 %cmp1, label %if.then, label %for.body.for.inc_crit_edge, !dbg !575

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !575
  br label %for.inc, !dbg !575

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !578
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.35, align 16, !dbg !578
  %12 = add i64 %gcov_ctr, 1, !dbg !578
  store i64 %12, ptr @__llvm_gcov_ctr.35, align 16, !dbg !578
  %13 = ptrtoint ptr %fields to i32, !dbg !579
  call void @__asan_load4_noabort(i32 %13), !dbg !579
  %14 = load ptr, ptr %fields, align 4, !dbg !579
  %15 = getelementptr %struct.tracing_map_field, ptr %14, i32 %i.049, i32 1, !dbg !580
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.6, align 8
  %16 = add i64 %gcov_ctr.i, 1
  store i64 %16, ptr @__llvm_gcov_ctr.6, align 8
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.56, align 8
  %17 = add i64 %gcov_ctr.i.i, 1
  store i64 %17, ptr @__llvm_gcov_ctr.56, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %15, i32 noundef 8) #16, !dbg !581
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %18 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %18, ptr @__llvm_gcov_ctr.54, align 8
  tail call void @generic_atomic64_set(ptr noundef %15, i64 noundef 0) #16, !dbg !584
  br label %for.inc, !dbg !585

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !586
  %19 = add i64 %gcov_ctr22, 1, !dbg !586
  store i64 %19, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 1), align 8, !dbg !586
  %inc = add nuw i32 %i.049, 1, !dbg !586
  %20 = ptrtoint ptr %elt to i32, !dbg !566
  call void @__asan_load4_noabort(i32 %20), !dbg !566
  %21 = load ptr, ptr %elt, align 4, !dbg !566
  %n_fields = getelementptr inbounds %struct.tracing_map, ptr %21, i32 0, i32 10, !dbg !567
  %22 = ptrtoint ptr %n_fields to i32, !dbg !567
  call void @__asan_load4_noabort(i32 %22), !dbg !567
  %23 = load i32, ptr %n_fields, align 8, !dbg !567
  %cmp = icmp ult i32 %inc, %23, !dbg !568
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.cond4.preheader_crit_edge, !dbg !569, !llvm.loop !587

for.inc.for.cond4.preheader_crit_edge:            ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !569
  br label %for.cond4.preheader, !dbg !569

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !569
  br label %for.body, !dbg !569

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.body7.lr.ph
  %i.153 = phi i32 [ 0, %for.body7.lr.ph ], [ %inc11, %for.body7.for.body7_crit_edge ]
  %24 = ptrtoint ptr %vars to i32, !dbg !589
  call void @__asan_load4_noabort(i32 %24), !dbg !589
  %25 = load ptr, ptr %vars, align 4, !dbg !589
  %arrayidx8 = getelementptr %struct.atomic64_t, ptr %25, i32 %i.153, !dbg !590
  %gcov_ctr.i43 = load i64, ptr @__llvm_gcov_ctr.6, align 8
  %26 = add i64 %gcov_ctr.i43, 1
  store i64 %26, ptr @__llvm_gcov_ctr.6, align 8
  %gcov_ctr.i.i44 = load i64, ptr @__llvm_gcov_ctr.56, align 8
  %27 = add i64 %gcov_ctr.i.i44, 1
  store i64 %27, ptr @__llvm_gcov_ctr.56, align 8
  %call.i.i45 = tail call zeroext i1 @__kasan_check_write(ptr noundef %arrayidx8, i32 noundef 8) #16, !dbg !591
  %gcov_ctr.i.i.i46 = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %28 = add i64 %gcov_ctr.i.i.i46, 1
  store i64 %28, ptr @__llvm_gcov_ctr.54, align 8
  tail call void @generic_atomic64_set(ptr noundef %arrayidx8, i64 noundef 0) #16, !dbg !594
  %29 = ptrtoint ptr %var_set to i32, !dbg !595
  call void @__asan_load4_noabort(i32 %29), !dbg !595
  %30 = load ptr, ptr %var_set, align 4, !dbg !595
  %arrayidx9 = getelementptr i8, ptr %30, i32 %i.153, !dbg !596
  %31 = ptrtoint ptr %arrayidx9 to i32, !dbg !597
  call void @__asan_store1_noabort(i32 %31), !dbg !597
  store i8 0, ptr %arrayidx9, align 1, !dbg !597
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 3), align 8, !dbg !598
  %32 = add i64 %gcov_ctr24, 1, !dbg !598
  store i64 %32, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 3), align 8, !dbg !598
  %inc11 = add nuw i32 %i.153, 1, !dbg !598
  %33 = ptrtoint ptr %elt to i32, !dbg !570
  call void @__asan_load4_noabort(i32 %33), !dbg !570
  %34 = load ptr, ptr %elt, align 4, !dbg !570
  %n_vars = getelementptr inbounds %struct.tracing_map, ptr %34, i32 0, i32 14, !dbg !571
  %35 = ptrtoint ptr %n_vars to i32, !dbg !571
  call void @__asan_load4_noabort(i32 %35), !dbg !571
  %36 = load i32, ptr %n_vars, align 4, !dbg !571
  %cmp6 = icmp ult i32 %inc11, %36, !dbg !572
  br i1 %cmp6, label %for.body7.for.body7_crit_edge, label %for.body7.for.end12_crit_edge, !dbg !573, !llvm.loop !599

for.body7.for.end12_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15, !dbg !573
  br label %for.end12, !dbg !573

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #15, !dbg !573
  br label %for.body7, !dbg !573

for.end12:                                        ; preds = %for.body7.for.end12_crit_edge, %for.cond4.preheader.for.end12_crit_edge
  %gcov_ctr23 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 2), align 16, !dbg !601
  %37 = add i64 %gcov_ctr23, 1, !dbg !601
  store i64 %37, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 2), align 16, !dbg !601
  %38 = ptrtoint ptr %elt to i32, !dbg !602
  call void @__asan_load4_noabort(i32 %38), !dbg !602
  %39 = load ptr, ptr %elt, align 4, !dbg !602
  %ops = getelementptr inbounds %struct.tracing_map, ptr %39, i32 0, i32 7, !dbg !603
  %40 = ptrtoint ptr %ops to i32, !dbg !603
  call void @__asan_load4_noabort(i32 %40), !dbg !603
  %41 = load ptr, ptr %ops, align 4, !dbg !603
  %tobool.not = icmp eq ptr %41, null, !dbg !601
  br i1 %tobool.not, label %for.end12.if.end21_crit_edge, label %land.lhs.true, !dbg !604

for.end12.if.end21_crit_edge:                     ; preds = %for.end12
  call void @__sanitizer_cov_trace_pc() #15, !dbg !604
  br label %if.end21, !dbg !604

land.lhs.true:                                    ; preds = %for.end12
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 4), align 16, !dbg !605
  %42 = add i64 %gcov_ctr25, 1, !dbg !605
  store i64 %42, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 4), align 16, !dbg !605
  %43 = ptrtoint ptr %elt to i32, !dbg !606
  call void @__asan_load4_noabort(i32 %43), !dbg !606
  %44 = load ptr, ptr %elt, align 4, !dbg !606
  %ops15 = getelementptr inbounds %struct.tracing_map, ptr %44, i32 0, i32 7, !dbg !607
  %45 = ptrtoint ptr %ops15 to i32, !dbg !607
  call void @__asan_load4_noabort(i32 %45), !dbg !607
  %46 = load ptr, ptr %ops15, align 4, !dbg !607
  %elt_clear = getelementptr inbounds %struct.tracing_map_ops, ptr %46, i32 0, i32 2, !dbg !608
  %47 = ptrtoint ptr %elt_clear to i32, !dbg !608
  call void @__asan_load4_noabort(i32 %47), !dbg !608
  %48 = load ptr, ptr %elt_clear, align 4, !dbg !608
  %tobool16.not = icmp eq ptr %48, null, !dbg !605
  br i1 %tobool16.not, label %land.lhs.true.if.end21_crit_edge, label %if.then17, !dbg !601

land.lhs.true.if.end21_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15, !dbg !601
  br label %if.end21, !dbg !601

if.then17:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15, !dbg !609
  %gcov_ctr26 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 5), align 8, !dbg !609
  %49 = add i64 %gcov_ctr26, 1, !dbg !609
  store i64 %49, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.35, i32 0, i32 5), align 8, !dbg !609
  %50 = ptrtoint ptr %elt to i32, !dbg !610
  call void @__asan_load4_noabort(i32 %50), !dbg !610
  %51 = load ptr, ptr %elt, align 4, !dbg !610
  %ops19 = getelementptr inbounds %struct.tracing_map, ptr %51, i32 0, i32 7, !dbg !611
  %52 = ptrtoint ptr %ops19 to i32, !dbg !611
  call void @__asan_load4_noabort(i32 %52), !dbg !611
  %53 = load ptr, ptr %ops19, align 4, !dbg !611
  %elt_clear20 = getelementptr inbounds %struct.tracing_map_ops, ptr %53, i32 0, i32 2, !dbg !612
  %54 = ptrtoint ptr %elt_clear20 to i32, !dbg !612
  call void @__asan_load4_noabort(i32 %54), !dbg !612
  %55 = load ptr, ptr %elt_clear20, align 4, !dbg !612
  tail call void %55(ptr noundef %elt) #16, !dbg !609
  br label %if.end21, !dbg !609

if.end21:                                         ; preds = %if.then17, %land.lhs.true.if.end21_crit_edge, %for.end12.if.end21_crit_edge
  ret void, !dbg !613
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tracing_map_create(i32 noundef %map_bits, i32 noundef %key_size, ptr noundef %ops, ptr noundef %private_data) local_unnamed_addr #0 align 64 !dbg !614 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !615
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %map_bits), !dbg !616
  %cmp = icmp ult i32 %map_bits, 7, !dbg !616
  br i1 %cmp, label %entry.if.then_crit_edge, label %lor.lhs.false, !dbg !617

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !617
  br label %if.then, !dbg !617

lor.lhs.false:                                    ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.36, align 16, !dbg !618
  %0 = add i64 %gcov_ctr, 1, !dbg !618
  store i64 %0, ptr @__llvm_gcov_ctr.36, align 16, !dbg !618
  call void @__sanitizer_cov_trace_const_cmp4(i32 17, i32 %map_bits), !dbg !619
  %cmp1 = icmp ugt i32 %map_bits, 17, !dbg !619
  br i1 %cmp1, label %lor.lhs.false.if.then_crit_edge, label %if.end, !dbg !620

lor.lhs.false.if.then_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15, !dbg !620
  br label %if.then, !dbg !620

if.then:                                          ; preds = %lor.lhs.false.if.then_crit_edge, %entry.if.then_crit_edge
  %gcov_ctr21 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !621
  %1 = add i64 %gcov_ctr21, 1, !dbg !621
  store i64 %1, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 1), align 8, !dbg !621
  %gcov_ctr.i45 = load i64, ptr @__llvm_gcov_ctr.37, align 8
  %2 = add i64 %gcov_ctr.i45, 1
  store i64 %2, ptr @__llvm_gcov_ctr.37, align 8
  br label %cleanup, !dbg !622

if.end:                                           ; preds = %lor.lhs.false
  %gcov_ctr.i46 = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %3 = add i64 %gcov_ctr.i46, 1
  store i64 %3, ptr @__llvm_gcov_ctr.38, align 8
  %gcov_ctr85.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 7), align 8, !dbg !623
  %4 = add i64 %gcov_ctr85.i.i.i, 1, !dbg !623
  store i64 %4, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 7), align 8, !dbg !623
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 2), align 16, !dbg !631
  %5 = add i64 %gcov_ctr11.i.i, 1, !dbg !631
  store i64 %5, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 2), align 16, !dbg !631
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.73, align 16, !dbg !632
  %6 = add i64 %gcov_ctr.i2.i.i, 1, !dbg !632
  store i64 %6, ptr @__llvm_gcov_ctr.73, align 16, !dbg !632
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32)), !dbg !635
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4, !dbg !635
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 184) #19, !dbg !636
  %tobool.not = icmp eq ptr %call7.i.i, null, !dbg !637
  br i1 %tobool.not, label %if.then3, label %if.end5, !dbg !638

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !639
  %gcov_ctr22 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !639
  %8 = add i64 %gcov_ctr22, 1, !dbg !639
  store i64 %8, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 2), align 16, !dbg !639
  %gcov_ctr.i47 = load i64, ptr @__llvm_gcov_ctr.37, align 8
  %9 = add i64 %gcov_ctr.i47, 1
  store i64 %9, ptr @__llvm_gcov_ctr.37, align 8
  br label %cleanup, !dbg !640

if.end5:                                          ; preds = %if.end
  %map_bits6 = getelementptr inbounds %struct.tracing_map, ptr %call7.i.i, i32 0, i32 1, !dbg !641
  %10 = ptrtoint ptr %map_bits6 to i32, !dbg !642
  call void @__asan_store4_noabort(i32 %10), !dbg !642
  store i32 %map_bits, ptr %map_bits6, align 4, !dbg !642
  %shl = shl nuw nsw i32 1, %map_bits, !dbg !643
  %max_elts = getelementptr inbounds %struct.tracing_map, ptr %call7.i.i, i32 0, i32 3, !dbg !644
  %11 = ptrtoint ptr %max_elts to i32, !dbg !645
  call void @__asan_store4_noabort(i32 %11), !dbg !645
  store i32 %shl, ptr %max_elts, align 4, !dbg !645
  %next_elt = getelementptr inbounds %struct.tracing_map, ptr %call7.i.i, i32 0, i32 4, !dbg !646
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.56, align 8
  %12 = add i64 %gcov_ctr.i.i, 1
  store i64 %12, ptr @__llvm_gcov_ctr.56, align 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %next_elt, i32 noundef 4) #16, !dbg !647
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.54, align 8
  %13 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %13, ptr @__llvm_gcov_ctr.54, align 8
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.33, align 8, !dbg !650
  %14 = add i64 %gcov_ctr.i, 1, !dbg !650
  store i64 %14, ptr @__llvm_gcov_ctr.33, align 8, !dbg !650
  %15 = ptrtoint ptr %next_elt to i32, !dbg !650
  call void @__asan_store4_noabort(i32 %15), !dbg !650
  store volatile i32 -1, ptr %next_elt, align 8, !dbg !650
  %shl7 = shl nuw nsw i32 2, %map_bits, !dbg !651
  %map_size = getelementptr inbounds %struct.tracing_map, ptr %call7.i.i, i32 0, i32 2, !dbg !652
  %16 = ptrtoint ptr %map_size to i32, !dbg !653
  call void @__asan_store4_noabort(i32 %16), !dbg !653
  store i32 %shl7, ptr %map_size, align 8, !dbg !653
  %ops8 = getelementptr inbounds %struct.tracing_map, ptr %call7.i.i, i32 0, i32 7, !dbg !654
  %17 = ptrtoint ptr %ops8 to i32, !dbg !655
  call void @__asan_store4_noabort(i32 %17), !dbg !655
  store ptr %ops, ptr %ops8, align 4, !dbg !655
  %private_data9 = getelementptr inbounds %struct.tracing_map, ptr %call7.i.i, i32 0, i32 8, !dbg !656
  %18 = ptrtoint ptr %private_data9 to i32, !dbg !657
  call void @__asan_store4_noabort(i32 %18), !dbg !657
  store ptr %private_data, ptr %private_data9, align 8, !dbg !657
  %call11 = tail call fastcc ptr @tracing_map_array_alloc(i32 noundef %shl7, i32 noundef 8), !dbg !658
  %map12 = getelementptr inbounds %struct.tracing_map, ptr %call7.i.i, i32 0, i32 6, !dbg !659
  %19 = ptrtoint ptr %map12 to i32, !dbg !660
  call void @__asan_store4_noabort(i32 %19), !dbg !660
  store ptr %call11, ptr %map12, align 8, !dbg !660
  %tobool14.not = icmp eq ptr %call11, null, !dbg !661
  br i1 %tobool14.not, label %tracing_map_destroy.exit, label %if.end16, !dbg !662

if.end16:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15, !dbg !663
  %20 = ptrtoint ptr %call7.i.i to i32, !dbg !663
  call void @__asan_store4_noabort(i32 %20), !dbg !663
  store i32 %key_size, ptr %call7.i.i, align 8, !dbg !663
  %.promoted = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8
  %uglygep = getelementptr i8, ptr %call7.i.i, i32 140, !dbg !664
  %21 = call ptr @memset(ptr %uglygep, i32 255, i32 12), !dbg !665
  %22 = add i64 %.promoted, 3, !dbg !664
  store i64 %22, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 3), align 8, !dbg !666
  %gcov_ctr24 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 4), align 16, !dbg !667
  %23 = add i64 %gcov_ctr24, 1, !dbg !667
  store i64 %23, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 4), align 16, !dbg !667
  br label %cleanup, !dbg !667

tracing_map_destroy.exit:                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #15, !dbg !668
  %gcov_ctr25 = load i64, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 5), align 8, !dbg !668
  %24 = add i64 %gcov_ctr25, 1, !dbg !668
  store i64 %24, ptr getelementptr inbounds ([6 x i64], ptr @__llvm_gcov_ctr.36, i32 0, i32 5), align 8, !dbg !668
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 1), align 8, !dbg !669
  %25 = add i64 %gcov_ctr2.i, 1, !dbg !669
  store i64 %25, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.29, i32 0, i32 1), align 8, !dbg !669
  tail call fastcc void @tracing_map_free_elts(ptr noundef nonnull %call7.i.i) #16, !dbg !671
  %26 = ptrtoint ptr %map12 to i32, !dbg !672
  call void @__asan_load4_noabort(i32 %26), !dbg !672
  %27 = load ptr, ptr %map12, align 8, !dbg !672
  tail call fastcc void @tracing_map_array_free(ptr noundef %27) #16, !dbg !673
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #16, !dbg !674
  %gcov_ctr.i49 = load i64, ptr @__llvm_gcov_ctr.37, align 8
  %28 = add i64 %gcov_ctr.i49, 1
  store i64 %28, ptr @__llvm_gcov_ctr.37, align 8
  br label %cleanup, !dbg !675

cleanup:                                          ; preds = %tracing_map_destroy.exit, %if.end16, %if.then3, %if.then
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %if.then ], [ inttoptr (i32 -12 to ptr), %if.then3 ], [ %call7.i.i, %if.end16 ], [ inttoptr (i32 -12 to ptr), %tracing_map_destroy.exit ], !dbg !676
  ret ptr %retval.0, !dbg !677
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @tracing_map_array_alloc(i32 noundef %n_elts, i32 noundef %entry_size) unnamed_addr #0 align 64 !dbg !678 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !679
  %gcov_ctr.i104 = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %0 = add i64 %gcov_ctr.i104, 1
  store i64 %0, ptr @__llvm_gcov_ctr.38, align 8
  %gcov_ctr79.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 1), align 8, !dbg !680
  %1 = add i64 %gcov_ctr79.i.i.i, 1, !dbg !680
  store i64 %1, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 1), align 8, !dbg !680
  %gcov_ctr11.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 2), align 16, !dbg !684
  %2 = add i64 %gcov_ctr11.i.i, 1, !dbg !684
  store i64 %2, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 2), align 16, !dbg !684
  %gcov_ctr.i2.i.i = load i64, ptr @__llvm_gcov_ctr.73, align 16, !dbg !685
  %3 = add i64 %gcov_ctr.i2.i.i, 1, !dbg !685
  store i64 %3, ptr @__llvm_gcov_ctr.73, align 16, !dbg !685
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !687
  %4 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !687
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %4, i32 noundef 3520, i32 noundef 24) #19, !dbg !688
  %tobool.not = icmp eq ptr %call7.i.i, null, !dbg !689
  br i1 %tobool.not, label %if.then, label %cond.false16, !dbg !690

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !691
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.39, align 16, !dbg !691
  %5 = add i64 %gcov_ctr, 1, !dbg !691
  store i64 %5, ptr @__llvm_gcov_ctr.39, align 16, !dbg !691
  br label %cleanup, !dbg !691

cond.false16:                                     ; preds = %entry
  %gcov_ctr.i106 = load i64, ptr @__llvm_gcov_ctr.77, align 8
  %6 = add i64 %gcov_ctr.i106, 1
  store i64 %6, ptr @__llvm_gcov_ctr.77, align 8
  %sub.i107 = add i32 %entry_size, -1, !dbg !692
  %gcov_ctr.i.i108 = load i64, ptr @__llvm_gcov_ctr.79, align 8
  %7 = add i64 %gcov_ctr.i.i108, 1
  store i64 %7, ptr @__llvm_gcov_ctr.79, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i107), !dbg !696
  %tobool.not.i.i.i = icmp eq i32 %sub.i107, 0, !dbg !696
  br i1 %tobool.not.i.i.i, label %cond.end18.thread, label %cond.true.i.i.i, !dbg !696

cond.true.i.i.i:                                  ; preds = %cond.false16
  call void @__sanitizer_cov_trace_pc() #15, !dbg !702
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.76, align 8, !dbg !702
  %8 = tail call i32 @llvm.ctlz.i32(i32 %sub.i107, i1 true) #16, !dbg !703, !range !704
  %sub.i.i.i = sub nuw nsw i32 32, %8, !dbg !705
  %notmask117 = shl nsw i32 -1, %sub.i.i.i, !dbg !706
  %sub20 = xor i32 %notmask117, -1, !dbg !706
  %9 = add i64 %gcov_ctr.i.i.i, 2, !dbg !707
  store i64 %9, ptr @__llvm_gcov_ctr.76, align 8, !dbg !707
  %10 = tail call i32 @llvm.ctlz.i32(i32 %sub20, i1 true) #16, !dbg !709, !range !704
  %sub.i = sub nuw nsw i32 32, %10, !dbg !710
  br label %fls.exit, !dbg !711

cond.end18.thread:                                ; preds = %cond.false16
  call void @__sanitizer_cov_trace_pc() #15, !dbg !696
  %gcov_ctr1.i.i.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 1), align 8, !dbg !696
  %11 = add i64 %gcov_ctr1.i.i.i, 2, !dbg !711
  store i64 %11, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 1), align 8, !dbg !711
  br label %fls.exit, !dbg !711

fls.exit:                                         ; preds = %cond.end18.thread, %cond.true.i.i.i
  %cond.i = phi i32 [ %sub.i, %cond.true.i.i.i ], [ 0, %cond.end18.thread ], !dbg !711
  %entry_size_shift = getelementptr inbounds %struct.tracing_map_array, ptr %call7.i.i, i32 0, i32 1, !dbg !712
  %12 = ptrtoint ptr %entry_size_shift to i32, !dbg !713
  call void @__asan_store4_noabort(i32 %12), !dbg !713
  store i32 %cond.i, ptr %entry_size_shift, align 4, !dbg !713
  %div95 = lshr i32 4096, %cond.i, !dbg !714
  %13 = ptrtoint ptr %call7.i.i to i32, !dbg !715
  call void @__asan_store4_noabort(i32 %13), !dbg !715
  store i32 %div95, ptr %call7.i.i, align 8, !dbg !715
  %div25 = udiv i32 %n_elts, %div95, !dbg !716
  %n_pages = getelementptr inbounds %struct.tracing_map_array, ptr %call7.i.i, i32 0, i32 4, !dbg !717
  %14 = ptrtoint ptr %n_pages to i32, !dbg !718
  call void @__asan_store4_noabort(i32 %14), !dbg !718
  store i32 %div25, ptr %n_pages, align 8, !dbg !718
  call void @__sanitizer_cov_trace_cmp4(i32 %div95, i32 %n_elts), !dbg !719
  %tobool27.not = icmp ugt i32 %div95, %n_elts, !dbg !719
  br i1 %tobool27.not, label %if.end30.thread, label %if.end30, !dbg !720

if.end30.thread:                                  ; preds = %fls.exit
  call void @__sanitizer_cov_trace_pc() #15, !dbg !721
  %gcov_ctr60 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 5), align 8, !dbg !721
  %15 = add i64 %gcov_ctr60, 1, !dbg !721
  store i64 %15, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 5), align 8, !dbg !721
  %16 = ptrtoint ptr %n_pages to i32, !dbg !722
  call void @__asan_store4_noabort(i32 %16), !dbg !722
  store i32 1, ptr %n_pages, align 8, !dbg !722
  br label %cond.true.i99, !dbg !723

if.end30:                                         ; preds = %fls.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %cond.i), !dbg !723
  %tobool.not.i96 = icmp ugt i32 %cond.i, 12, !dbg !723
  br i1 %tobool.not.i96, label %cond.false.i101, label %if.end30.cond.true.i99_crit_edge, !dbg !723

if.end30.cond.true.i99_crit_edge:                 ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15, !dbg !723
  br label %cond.true.i99, !dbg !723

cond.true.i99:                                    ; preds = %if.end30.cond.true.i99_crit_edge, %if.end30.thread
  %gcov_ctr.i97 = load i64, ptr @__llvm_gcov_ctr.76, align 8, !dbg !725
  %17 = add i64 %gcov_ctr.i97, 1, !dbg !725
  store i64 %17, ptr @__llvm_gcov_ctr.76, align 8, !dbg !725
  %18 = tail call i32 @llvm.ctlz.i32(i32 %div95, i1 true) #16, !dbg !726, !range !704
  %phi.bo = xor i32 %18, 31, !dbg !723
  br label %fls.exit103, !dbg !723

cond.false.i101:                                  ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15, !dbg !723
  %gcov_ctr1.i100 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 1), align 8, !dbg !723
  %19 = add i64 %gcov_ctr1.i100, 1, !dbg !723
  store i64 %19, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.76, i32 0, i32 1), align 8, !dbg !723
  br label %fls.exit103, !dbg !723

fls.exit103:                                      ; preds = %cond.false.i101, %cond.true.i99
  %cond.i102 = phi i32 [ %phi.bo, %cond.true.i99 ], [ -1, %cond.false.i101 ]
  %entry_shift = getelementptr inbounds %struct.tracing_map_array, ptr %call7.i.i, i32 0, i32 2, !dbg !727
  %20 = ptrtoint ptr %entry_shift to i32, !dbg !728
  call void @__asan_store4_noabort(i32 %20), !dbg !728
  store i32 %cond.i102, ptr %entry_shift, align 8, !dbg !728
  %notmask = shl nsw i32 -1, %cond.i102, !dbg !729
  %sub36 = xor i32 %notmask, -1, !dbg !729
  %entry_mask = getelementptr inbounds %struct.tracing_map_array, ptr %call7.i.i, i32 0, i32 3, !dbg !730
  %21 = ptrtoint ptr %entry_mask to i32, !dbg !731
  call void @__asan_store4_noabort(i32 %21), !dbg !731
  store i32 %sub36, ptr %entry_mask, align 4, !dbg !731
  %22 = ptrtoint ptr %n_pages to i32, !dbg !732
  call void @__asan_load4_noabort(i32 %22), !dbg !732
  %23 = load i32, ptr %n_pages, align 8, !dbg !732
  %gcov_ctr.i109 = load i64, ptr @__llvm_gcov_ctr.78, align 8
  %24 = add i64 %gcov_ctr.i109, 1
  store i64 %24, ptr @__llvm_gcov_ctr.78, align 8
  %25 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 4) #16, !dbg !733
  %26 = extractvalue { i32, i1 } %25, 1, !dbg !733
  %gcov_ctr.i1.i.i = load i64, ptr @__llvm_gcov_ctr.81, align 8
  %27 = add i64 %gcov_ctr.i1.i.i, 1
  store i64 %27, ptr @__llvm_gcov_ctr.81, align 8
  br i1 %26, label %kcalloc.exit.thread, label %if.end7.i.i, !dbg !733, !prof !738

kcalloc.exit.thread:                              ; preds = %fls.exit103
  call void @__sanitizer_cov_trace_pc() #15, !dbg !739
  %gcov_ctr.i.i110 = load i64, ptr @__llvm_gcov_ctr.80, align 16, !dbg !739
  %28 = add i64 %gcov_ctr.i.i110, 1, !dbg !739
  store i64 %28, ptr @__llvm_gcov_ctr.80, align 16, !dbg !739
  %pages115 = getelementptr inbounds %struct.tracing_map_array, ptr %call7.i.i, i32 0, i32 5, !dbg !740
  %29 = ptrtoint ptr %pages115 to i32, !dbg !741
  call void @__asan_store4_noabort(i32 %29), !dbg !741
  store ptr null, ptr %pages115, align 4, !dbg !741
  br label %free, !dbg !742

if.end7.i.i:                                      ; preds = %fls.exit103
  %30 = extractvalue { i32, i1 } %25, 0, !dbg !733
  %gcov_ctr11.i.i112 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 3), align 8, !dbg !743
  %31 = add i64 %gcov_ctr11.i.i112, 1, !dbg !743
  store i64 %31, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 3), align 8, !dbg !743
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %30, i32 noundef 3520) #20, !dbg !744
  %pages = getelementptr inbounds %struct.tracing_map_array, ptr %call7.i.i, i32 0, i32 5, !dbg !740
  %32 = ptrtoint ptr %pages to i32, !dbg !741
  call void @__asan_store4_noabort(i32 %32), !dbg !741
  store ptr %call8.i.i, ptr %pages, align 4, !dbg !741
  %tobool40.not = icmp eq ptr %call8.i.i, null, !dbg !745
  br i1 %tobool40.not, label %if.end7.i.i.free_crit_edge, label %for.cond.preheader, !dbg !742

if.end7.i.i.free_crit_edge:                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !742
  br label %free, !dbg !742

for.cond.preheader:                               ; preds = %if.end7.i.i
  %33 = ptrtoint ptr %n_pages to i32, !dbg !746
  call void @__asan_load4_noabort(i32 %33), !dbg !746
  %34 = load i32, ptr %n_pages, align 8, !dbg !746
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34), !dbg !747
  %cmp44118.not = icmp eq i32 %34, 0, !dbg !747
  br i1 %cmp44118.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge, !dbg !748

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body, !dbg !748

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #15, !dbg !748
  br label %for.end, !dbg !748

for.body:                                         ; preds = %if.end52.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0119 = phi i32 [ %inc, %if.end52.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %call46 = tail call i32 @get_zeroed_page(i32 noundef 3264) #16, !dbg !749
  %35 = inttoptr i32 %call46 to ptr, !dbg !750
  %36 = ptrtoint ptr %pages to i32, !dbg !751
  call void @__asan_load4_noabort(i32 %36), !dbg !751
  %37 = load ptr, ptr %pages, align 4, !dbg !751
  %arrayidx = getelementptr ptr, ptr %37, i32 %i.0119, !dbg !752
  %38 = ptrtoint ptr %arrayidx to i32, !dbg !753
  call void @__asan_store4_noabort(i32 %38), !dbg !753
  store ptr %35, ptr %arrayidx, align 4, !dbg !753
  %39 = load ptr, ptr %pages, align 4, !dbg !754
  %arrayidx49 = getelementptr ptr, ptr %39, i32 %i.0119, !dbg !755
  %40 = ptrtoint ptr %arrayidx49 to i32, !dbg !755
  call void @__asan_load4_noabort(i32 %40), !dbg !755
  %41 = load ptr, ptr %arrayidx49, align 4, !dbg !755
  %tobool50.not = icmp eq ptr %41, null, !dbg !755
  br i1 %tobool50.not, label %for.body.free_crit_edge, label %if.end52, !dbg !756

for.body.free_crit_edge:                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !756
  br label %free, !dbg !756

if.end52:                                         ; preds = %for.body
  %gcov_ctr62 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 7), align 8, !dbg !757
  %42 = add i64 %gcov_ctr62, 1, !dbg !757
  store i64 %42, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 7), align 8, !dbg !757
  %43 = ptrtoint ptr %arrayidx49 to i32, !dbg !757
  call void @__asan_load4_noabort(i32 %43), !dbg !757
  %44 = load ptr, ptr %arrayidx49, align 4, !dbg !757
  tail call void @kmemleak_alloc(ptr noundef %44, i32 noundef 4096, i32 noundef 1, i32 noundef 3264) #16, !dbg !758
  %inc = add nuw i32 %i.0119, 1, !dbg !759
  %45 = ptrtoint ptr %n_pages to i32, !dbg !746
  call void @__asan_load4_noabort(i32 %45), !dbg !746
  %46 = load i32, ptr %n_pages, align 8, !dbg !746
  %cmp44 = icmp ult i32 %inc, %46, !dbg !747
  br i1 %cmp44, label %if.end52.for.body_crit_edge, label %if.end52.for.end_crit_edge, !dbg !748, !llvm.loop !760

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15, !dbg !748
  br label %for.end, !dbg !748

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #15, !dbg !748
  br label %for.body, !dbg !748

for.end:                                          ; preds = %if.end52.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %gcov_ctr64 = load i64, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 9), align 8, !dbg !761
  %47 = add i64 %gcov_ctr64, 1, !dbg !761
  store i64 %47, ptr getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 9), align 8, !dbg !761
  br label %cleanup, !dbg !761

free:                                             ; preds = %for.body.free_crit_edge, %if.end7.i.i.free_crit_edge, %kcalloc.exit.thread
  %.sink = phi ptr [ getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 6), %kcalloc.exit.thread ], [ getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 6), %if.end7.i.i.free_crit_edge ], [ getelementptr inbounds ([10 x i64], ptr @__llvm_gcov_ctr.39, i32 0, i32 8), %for.body.free_crit_edge ]
  %48 = ptrtoint ptr %.sink to i32, !dbg !762
  call void @__asan_load8_noabort(i32 %48), !dbg !762
  %gcov_ctr63 = load i64, ptr %.sink, align 16, !dbg !762
  %49 = add i64 %gcov_ctr63, 1, !dbg !762
  store i64 %49, ptr %.sink, align 16, !dbg !762
  tail call fastcc void @tracing_map_array_free(ptr noundef nonnull %call7.i.i), !dbg !763
  br label %cleanup, !dbg !764

cleanup:                                          ; preds = %free, %for.end, %if.then
  %retval.0 = phi ptr [ null, %if.then ], [ null, %free ], [ %call7.i.i, %for.end ], !dbg !762
  ret ptr %retval.0, !dbg !765
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tracing_map_init(ptr noundef %map) local_unnamed_addr #0 align 64 !dbg !766 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !767
  %n_fields = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 10, !dbg !768
  %0 = ptrtoint ptr %n_fields to i32, !dbg !768
  call void @__asan_load4_noabort(i32 %0), !dbg !768
  %1 = load i32, ptr %n_fields, align 8, !dbg !768
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1), !dbg !769
  %cmp = icmp ult i32 %1, 2, !dbg !769
  br i1 %cmp, label %if.then, label %if.end, !dbg !770

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !771
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.40, align 16, !dbg !771
  %2 = add i64 %gcov_ctr, 1, !dbg !771
  store i64 %2, ptr @__llvm_gcov_ctr.40, align 16, !dbg !771
  br label %cleanup, !dbg !771

if.end:                                           ; preds = %entry
  %max_elts.i = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 3, !dbg !772
  %3 = ptrtoint ptr %max_elts.i to i32, !dbg !772
  call void @__asan_load4_noabort(i32 %3), !dbg !772
  %4 = load i32, ptr %max_elts.i, align 4, !dbg !772
  %call.i = tail call fastcc ptr @tracing_map_array_alloc(i32 noundef %4, i32 noundef 4) #16, !dbg !775
  %elts.i = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 5, !dbg !776
  %5 = ptrtoint ptr %elts.i to i32, !dbg !777
  call void @__asan_store4_noabort(i32 %5), !dbg !777
  store ptr %call.i, ptr %elts.i, align 4, !dbg !777
  %tobool.not.i = icmp eq ptr %call.i, null, !dbg !778
  br i1 %tobool.not.i, label %if.then.i, label %for.cond.preheader.i, !dbg !779

for.cond.preheader.i:                             ; preds = %if.end
  %6 = ptrtoint ptr %max_elts.i to i32, !dbg !780
  call void @__asan_load4_noabort(i32 %6), !dbg !780
  %7 = load i32, ptr %max_elts.i, align 4, !dbg !780
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7), !dbg !781
  %cmp69.not.i = icmp eq i32 %7, 0, !dbg !781
  br i1 %cmp69.not.i, label %for.cond.preheader.i.if.end2_crit_edge, label %for.body.lr.ph.i, !dbg !782

for.cond.preheader.i.if.end2_crit_edge:           ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !782
  br label %if.end2, !dbg !782

for.body.lr.ph.i:                                 ; preds = %for.cond.preheader.i
  %n_vars.i.i = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 14
  %ops.i.i = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 7
  br label %for.body.i, !dbg !782

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !783
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.41, align 16, !dbg !783
  %8 = add i64 %gcov_ctr.i, 1, !dbg !783
  store i64 %8, ptr @__llvm_gcov_ctr.41, align 16, !dbg !783
  br label %if.then1, !dbg !783

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.070.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %gcov_ctr.i.i.i = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %9 = add i64 %gcov_ctr.i.i.i, 1
  store i64 %9, ptr @__llvm_gcov_ctr.38, align 8
  %gcov_ctr79.i.i.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 1), align 8, !dbg !784
  %10 = add i64 %gcov_ctr79.i.i.i.i.i, 1, !dbg !784
  store i64 %10, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 1), align 8, !dbg !784
  %gcov_ctr11.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 2), align 16, !dbg !790
  %11 = add i64 %gcov_ctr11.i.i.i.i, 1, !dbg !790
  store i64 %11, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 2), align 16, !dbg !790
  %gcov_ctr.i2.i.i.i.i = load i64, ptr @__llvm_gcov_ctr.73, align 16, !dbg !791
  %12 = add i64 %gcov_ctr.i2.i.i.i.i, 1, !dbg !791
  store i64 %12, ptr @__llvm_gcov_ctr.73, align 16, !dbg !791
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !793
  %13 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !793
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %13, i32 noundef 3520, i32 noundef 24) #19, !dbg !794
  %tobool.not.i.i = icmp eq ptr %call7.i.i.i.i, null, !dbg !795
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !796

if.then.i.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !797
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.82, align 16, !dbg !797
  %14 = add i64 %gcov_ctr.i.i, 1, !dbg !797
  store i64 %14, ptr @__llvm_gcov_ctr.82, align 16, !dbg !797
  %gcov_ctr.i66.i.i = load i64, ptr @__llvm_gcov_ctr.37, align 8
  %15 = add i64 %gcov_ctr.i66.i.i, 1
  store i64 %15, ptr @__llvm_gcov_ctr.37, align 8
  br label %tracing_map_elt_alloc.exit.i, !dbg !798

if.end.i.i:                                       ; preds = %for.body.i
  %16 = ptrtoint ptr %call7.i.i.i.i to i32, !dbg !799
  call void @__asan_store4_noabort(i32 %16), !dbg !799
  store ptr %map, ptr %call7.i.i.i.i, align 8, !dbg !799
  %17 = ptrtoint ptr %map to i32, !dbg !800
  call void @__asan_load4_noabort(i32 %17), !dbg !800
  %18 = load i32, ptr %map, align 8, !dbg !800
  %gcov_ctr.i67.i.i = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %19 = add i64 %gcov_ctr.i67.i.i, 1
  store i64 %19, ptr @__llvm_gcov_ctr.38, align 8
  %gcov_ctr12.i.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 3), align 8, !dbg !801
  %20 = add i64 %gcov_ctr12.i.i.i.i, 1, !dbg !801
  store i64 %20, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 3), align 8, !dbg !801
  %call9.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %18, i32 noundef 3520) #20, !dbg !804
  %key.i.i = getelementptr inbounds %struct.tracing_map_elt, ptr %call7.i.i.i.i, i32 0, i32 4, !dbg !805
  %21 = ptrtoint ptr %key.i.i to i32, !dbg !806
  call void @__asan_store4_noabort(i32 %21), !dbg !806
  store ptr %call9.i.i.i.i, ptr %key.i.i, align 8, !dbg !806
  %tobool5.not.i.i = icmp eq ptr %call9.i.i.i.i, null, !dbg !807
  br i1 %tobool5.not.i.i, label %if.then6.i.i, label %if.end7.i.i, !dbg !808

if.then6.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !809
  %gcov_ctr37.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 1), align 8, !dbg !809
  %22 = add i64 %gcov_ctr37.i.i, 1, !dbg !809
  store i64 %22, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 1), align 8, !dbg !809
  br label %free.i.i, !dbg !810

if.end7.i.i:                                      ; preds = %if.end.i.i
  %23 = ptrtoint ptr %n_fields to i32, !dbg !811
  call void @__asan_load4_noabort(i32 %23), !dbg !811
  %24 = load i32, ptr %n_fields, align 8, !dbg !811
  %gcov_ctr.i72.i.i = load i64, ptr @__llvm_gcov_ctr.78, align 8
  %25 = add i64 %gcov_ctr.i72.i.i, 1
  store i64 %25, ptr @__llvm_gcov_ctr.78, align 8
  %26 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %24, i32 16) #16, !dbg !812
  %27 = extractvalue { i32, i1 } %26, 1, !dbg !812
  %gcov_ctr.i1.i.i73.i.i = load i64, ptr @__llvm_gcov_ctr.81, align 8
  %28 = add i64 %gcov_ctr.i1.i.i73.i.i, 1
  store i64 %28, ptr @__llvm_gcov_ctr.81, align 8
  br i1 %27, label %kcalloc.exit.thread.i.i, label %if.end7.i.i.i.i, !dbg !812, !prof !738

kcalloc.exit.thread.i.i:                          ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !815
  %gcov_ctr.i.i74.i.i = load i64, ptr @__llvm_gcov_ctr.80, align 16, !dbg !815
  %29 = add i64 %gcov_ctr.i.i74.i.i, 1, !dbg !815
  store i64 %29, ptr @__llvm_gcov_ctr.80, align 16, !dbg !815
  %fields230.i.i = getelementptr inbounds %struct.tracing_map_elt, ptr %call7.i.i.i.i, i32 0, i32 1, !dbg !816
  %30 = ptrtoint ptr %fields230.i.i to i32, !dbg !817
  call void @__asan_store4_noabort(i32 %30), !dbg !817
  store ptr null, ptr %fields230.i.i, align 4, !dbg !817
  br label %if.then11.i.i, !dbg !818

if.end7.i.i.i.i:                                  ; preds = %if.end7.i.i
  %31 = extractvalue { i32, i1 } %26, 0, !dbg !812
  %gcov_ctr11.i.i81.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 3), align 8, !dbg !819
  %32 = add i64 %gcov_ctr11.i.i81.i.i, 1, !dbg !819
  store i64 %32, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 3), align 8, !dbg !819
  %call8.i.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %31, i32 noundef 3520) #20, !dbg !820
  %fields.i.i = getelementptr inbounds %struct.tracing_map_elt, ptr %call7.i.i.i.i, i32 0, i32 1, !dbg !816
  %33 = ptrtoint ptr %fields.i.i to i32, !dbg !817
  call void @__asan_store4_noabort(i32 %33), !dbg !817
  store ptr %call8.i.i.i.i, ptr %fields.i.i, align 4, !dbg !817
  %tobool10.not.i.i = icmp eq ptr %call8.i.i.i.i, null, !dbg !821
  br i1 %tobool10.not.i.i, label %if.end7.i.i.i.i.if.then11.i.i_crit_edge, label %if.end12.i.i, !dbg !818

if.end7.i.i.i.i.if.then11.i.i_crit_edge:          ; preds = %if.end7.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !818
  br label %if.then11.i.i, !dbg !818

if.then11.i.i:                                    ; preds = %if.end7.i.i.i.i.if.then11.i.i_crit_edge, %kcalloc.exit.thread.i.i
  %gcov_ctr38.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 2), align 16, !dbg !822
  %34 = add i64 %gcov_ctr38.i.i, 1, !dbg !822
  store i64 %34, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 2), align 16, !dbg !822
  br label %free.i.i, !dbg !823

if.end12.i.i:                                     ; preds = %if.end7.i.i.i.i
  %35 = ptrtoint ptr %n_vars.i.i to i32, !dbg !824
  call void @__asan_load4_noabort(i32 %35), !dbg !824
  %36 = load i32, ptr %n_vars.i.i, align 4, !dbg !824
  %gcov_ctr.i82.i.i = load i64, ptr @__llvm_gcov_ctr.78, align 8
  %37 = add i64 %gcov_ctr.i82.i.i, 1
  store i64 %37, ptr @__llvm_gcov_ctr.78, align 8
  %38 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %36, i32 8) #16, !dbg !825
  %39 = extractvalue { i32, i1 } %38, 1, !dbg !825
  %gcov_ctr.i1.i.i83.i.i = load i64, ptr @__llvm_gcov_ctr.81, align 8
  %40 = add i64 %gcov_ctr.i1.i.i83.i.i, 1
  store i64 %40, ptr @__llvm_gcov_ctr.81, align 8
  br i1 %39, label %kcalloc.exit152.thread.i.i, label %if.end7.i.i150.i.i, !dbg !825, !prof !738

kcalloc.exit152.thread.i.i:                       ; preds = %if.end12.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !828
  %gcov_ctr.i.i84.i.i = load i64, ptr @__llvm_gcov_ctr.80, align 16, !dbg !828
  %41 = add i64 %gcov_ctr.i.i84.i.i, 1, !dbg !828
  store i64 %41, ptr @__llvm_gcov_ctr.80, align 16, !dbg !828
  %vars238.i.i = getelementptr inbounds %struct.tracing_map_elt, ptr %call7.i.i.i.i, i32 0, i32 2, !dbg !829
  %42 = ptrtoint ptr %vars238.i.i to i32, !dbg !830
  call void @__asan_store4_noabort(i32 %42), !dbg !830
  store ptr null, ptr %vars238.i.i, align 8, !dbg !830
  br label %if.then16.i.i, !dbg !831

if.end7.i.i150.i.i:                               ; preds = %if.end12.i.i
  %43 = extractvalue { i32, i1 } %38, 0, !dbg !825
  %gcov_ctr11.i.i148.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 3), align 8, !dbg !832
  %44 = add i64 %gcov_ctr11.i.i148.i.i, 1, !dbg !832
  store i64 %44, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 3), align 8, !dbg !832
  %call8.i.i149.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %43, i32 noundef 3520) #20, !dbg !833
  %vars.i.i = getelementptr inbounds %struct.tracing_map_elt, ptr %call7.i.i.i.i, i32 0, i32 2, !dbg !829
  %45 = ptrtoint ptr %vars.i.i to i32, !dbg !830
  call void @__asan_store4_noabort(i32 %45), !dbg !830
  store ptr %call8.i.i149.i.i, ptr %vars.i.i, align 8, !dbg !830
  %tobool15.not.i.i = icmp eq ptr %call8.i.i149.i.i, null, !dbg !834
  br i1 %tobool15.not.i.i, label %if.end7.i.i150.i.i.if.then16.i.i_crit_edge, label %if.end17.i.i, !dbg !831

if.end7.i.i150.i.i.if.then16.i.i_crit_edge:       ; preds = %if.end7.i.i150.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !831
  br label %if.then16.i.i, !dbg !831

if.then16.i.i:                                    ; preds = %if.end7.i.i150.i.i.if.then16.i.i_crit_edge, %kcalloc.exit152.thread.i.i
  %gcov_ctr39.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 3), align 8, !dbg !835
  %46 = add i64 %gcov_ctr39.i.i, 1, !dbg !835
  store i64 %46, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 3), align 8, !dbg !835
  br label %free.i.i, !dbg !836

if.end17.i.i:                                     ; preds = %if.end7.i.i150.i.i
  %47 = ptrtoint ptr %n_vars.i.i to i32, !dbg !837
  call void @__asan_load4_noabort(i32 %47), !dbg !837
  %48 = load i32, ptr %n_vars.i.i, align 4, !dbg !837
  %gcov_ctr.i153.i.i = load i64, ptr @__llvm_gcov_ctr.78, align 8
  %49 = add i64 %gcov_ctr.i153.i.i, 1
  store i64 %49, ptr @__llvm_gcov_ctr.78, align 8
  %gcov_ctr.i1.i.i154.i.i = load i64, ptr @__llvm_gcov_ctr.81, align 8
  %50 = add i64 %gcov_ctr.i1.i.i154.i.i, 1
  store i64 %50, ptr @__llvm_gcov_ctr.81, align 8
  %gcov_ctr11.i.i219.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 3), align 8, !dbg !838
  %51 = add i64 %gcov_ctr11.i.i219.i.i, 1, !dbg !838
  store i64 %51, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.80, i32 0, i32 3), align 8, !dbg !838
  %call8.i.i220.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %48, i32 noundef 3520) #20, !dbg !841
  %var_set.i.i = getelementptr inbounds %struct.tracing_map_elt, ptr %call7.i.i.i.i, i32 0, i32 3, !dbg !842
  %52 = ptrtoint ptr %var_set.i.i to i32, !dbg !843
  call void @__asan_store4_noabort(i32 %52), !dbg !843
  store ptr %call8.i.i220.i.i, ptr %var_set.i.i, align 4, !dbg !843
  %tobool21.not.i.i = icmp eq ptr %call8.i.i220.i.i, null, !dbg !844
  br i1 %tobool21.not.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !845

if.then22.i.i:                                    ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !846
  %gcov_ctr40.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 4), align 16, !dbg !846
  %53 = add i64 %gcov_ctr40.i.i, 1, !dbg !846
  store i64 %53, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 4), align 16, !dbg !846
  br label %free.i.i, !dbg !847

if.end23.i.i:                                     ; preds = %if.end17.i.i
  %gcov_ctr.i224.i.i = load i64, ptr @__llvm_gcov_ctr.84, align 16
  %54 = add i64 %gcov_ctr.i224.i.i, 1
  store i64 %54, ptr @__llvm_gcov_ctr.84, align 16
  tail call fastcc void @tracing_map_elt_clear(ptr noundef nonnull %call7.i.i.i.i) #16, !dbg !848
  %55 = ptrtoint ptr %call7.i.i.i.i to i32, !dbg !851
  call void @__asan_load4_noabort(i32 %55), !dbg !851
  %56 = load ptr, ptr %call7.i.i.i.i, align 8, !dbg !851
  %n_fields28.i.i.i = getelementptr inbounds %struct.tracing_map, ptr %56, i32 0, i32 10, !dbg !852
  %57 = ptrtoint ptr %n_fields28.i.i.i to i32, !dbg !852
  call void @__asan_load4_noabort(i32 %57), !dbg !852
  %58 = load i32, ptr %n_fields28.i.i.i, align 8, !dbg !852
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58), !dbg !853
  %cmp29.not.i.i.i = icmp eq i32 %58, 0, !dbg !853
  br i1 %cmp29.not.i.i.i, label %if.end23.i.i.tracing_map_elt_init_fields.exit.i.i_crit_edge, label %if.end23.i.i.for.body.i.i.i_crit_edge, !dbg !854

if.end23.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end23.i.i
  br label %for.body.i.i.i, !dbg !854

if.end23.i.i.tracing_map_elt_init_fields.exit.i.i_crit_edge: ; preds = %if.end23.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !854
  br label %tracing_map_elt_init_fields.exit.i.i, !dbg !854

for.body.i.i.i:                                   ; preds = %for.inc.i.i.i.for.body.i.i.i_crit_edge, %if.end23.i.i.for.body.i.i.i_crit_edge
  %59 = phi ptr [ %78, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ %56, %if.end23.i.i.for.body.i.i.i_crit_edge ]
  %i.030.i.i.i = phi i32 [ %inc.i.i.i, %for.inc.i.i.i.for.body.i.i.i_crit_edge ], [ 0, %if.end23.i.i.for.body.i.i.i_crit_edge ]
  %arrayidx.i.i.i = getelementptr %struct.tracing_map, ptr %59, i32 0, i32 9, i32 %i.030.i.i.i, !dbg !855
  %60 = ptrtoint ptr %arrayidx.i.i.i to i32, !dbg !856
  call void @__asan_load4_noabort(i32 %60), !dbg !856
  %61 = load ptr, ptr %arrayidx.i.i.i, align 8, !dbg !856
  %62 = ptrtoint ptr %fields.i.i to i32, !dbg !857
  call void @__asan_load4_noabort(i32 %62), !dbg !857
  %63 = load ptr, ptr %fields.i.i, align 4, !dbg !857
  %arrayidx3.i.i.i = getelementptr %struct.tracing_map_field, ptr %63, i32 %i.030.i.i.i, !dbg !858
  %64 = ptrtoint ptr %arrayidx3.i.i.i to i32, !dbg !859
  call void @__asan_store4_noabort(i32 %64), !dbg !859
  store ptr %61, ptr %arrayidx3.i.i.i, align 8, !dbg !859
  %65 = load ptr, ptr %fields.i.i, align 4, !dbg !860
  %arrayidx6.i.i.i = getelementptr %struct.tracing_map_field, ptr %65, i32 %i.030.i.i.i, !dbg !861
  %66 = ptrtoint ptr %arrayidx6.i.i.i to i32, !dbg !862
  call void @__asan_load4_noabort(i32 %66), !dbg !862
  %67 = load ptr, ptr %arrayidx6.i.i.i, align 8, !dbg !862
  %cmp8.not.i.i.i = icmp eq ptr %67, @tracing_map_cmp_atomic64, !dbg !863
  br i1 %cmp8.not.i.i.i, label %for.body.i.i.i.for.inc.i.i.i_crit_edge, label %if.then.i.i.i, !dbg !861

for.body.i.i.i.for.inc.i.i.i_crit_edge:           ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !861
  br label %for.inc.i.i.i, !dbg !861

if.then.i.i.i:                                    ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !864
  %gcov_ctr14.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 1), align 8, !dbg !864
  %68 = add i64 %gcov_ctr14.i.i.i, 1, !dbg !864
  store i64 %68, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 1), align 8, !dbg !864
  %69 = ptrtoint ptr %call7.i.i.i.i to i32, !dbg !865
  call void @__asan_load4_noabort(i32 %69), !dbg !865
  %70 = load ptr, ptr %call7.i.i.i.i, align 8, !dbg !865
  %71 = getelementptr %struct.tracing_map, ptr %70, i32 0, i32 9, i32 %i.030.i.i.i, i32 1, !dbg !866
  %72 = ptrtoint ptr %71 to i32, !dbg !866
  call void @__asan_load4_noabort(i32 %72), !dbg !866
  %73 = load i32, ptr %71, align 8, !dbg !866
  %74 = getelementptr %struct.tracing_map_field, ptr %65, i32 %i.030.i.i.i, i32 1, !dbg !867
  %75 = ptrtoint ptr %74 to i32, !dbg !868
  call void @__asan_store4_noabort(i32 %75), !dbg !868
  store i32 %73, ptr %74, align 8, !dbg !868
  br label %for.inc.i.i.i, !dbg !869

for.inc.i.i.i:                                    ; preds = %if.then.i.i.i, %for.body.i.i.i.for.inc.i.i.i_crit_edge
  %gcov_ctr15.i.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 2), align 16, !dbg !870
  %76 = add i64 %gcov_ctr15.i.i.i, 1, !dbg !870
  store i64 %76, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.84, i32 0, i32 2), align 16, !dbg !870
  %inc.i.i.i = add nuw i32 %i.030.i.i.i, 1, !dbg !870
  %77 = ptrtoint ptr %call7.i.i.i.i to i32, !dbg !851
  call void @__asan_load4_noabort(i32 %77), !dbg !851
  %78 = load ptr, ptr %call7.i.i.i.i, align 8, !dbg !851
  %n_fields.i.i.i = getelementptr inbounds %struct.tracing_map, ptr %78, i32 0, i32 10, !dbg !852
  %79 = ptrtoint ptr %n_fields.i.i.i to i32, !dbg !852
  call void @__asan_load4_noabort(i32 %79), !dbg !852
  %80 = load i32, ptr %n_fields.i.i.i, align 8, !dbg !852
  %cmp.i.i.i = icmp ult i32 %inc.i.i.i, %80, !dbg !853
  br i1 %cmp.i.i.i, label %for.inc.i.i.i.for.body.i.i.i_crit_edge, label %for.inc.i.i.i.tracing_map_elt_init_fields.exit.i.i_crit_edge, !dbg !854, !llvm.loop !871

for.inc.i.i.i.tracing_map_elt_init_fields.exit.i.i_crit_edge: ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !854
  br label %tracing_map_elt_init_fields.exit.i.i, !dbg !854

for.inc.i.i.i.for.body.i.i.i_crit_edge:           ; preds = %for.inc.i.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !854
  br label %for.body.i.i.i, !dbg !854

tracing_map_elt_init_fields.exit.i.i:             ; preds = %for.inc.i.i.i.tracing_map_elt_init_fields.exit.i.i_crit_edge, %if.end23.i.i.tracing_map_elt_init_fields.exit.i.i_crit_edge
  %81 = ptrtoint ptr %ops.i.i to i32, !dbg !873
  call void @__asan_load4_noabort(i32 %81), !dbg !873
  %82 = load ptr, ptr %ops.i.i, align 4, !dbg !873
  %tobool24.not.i.i = icmp eq ptr %82, null, !dbg !874
  br i1 %tobool24.not.i.i, label %tracing_map_elt_init_fields.exit.i.i.if.end34.i.i_crit_edge, label %land.lhs.true.i.i, !dbg !875

tracing_map_elt_init_fields.exit.i.i.if.end34.i.i_crit_edge: ; preds = %tracing_map_elt_init_fields.exit.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !875
  br label %if.end34.i.i, !dbg !875

land.lhs.true.i.i:                                ; preds = %tracing_map_elt_init_fields.exit.i.i
  %gcov_ctr41.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 5), align 8, !dbg !876
  %83 = add i64 %gcov_ctr41.i.i, 1, !dbg !876
  store i64 %83, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 5), align 8, !dbg !876
  %84 = ptrtoint ptr %ops.i.i to i32, !dbg !877
  call void @__asan_load4_noabort(i32 %84), !dbg !877
  %85 = load ptr, ptr %ops.i.i, align 4, !dbg !877
  %86 = ptrtoint ptr %85 to i32, !dbg !878
  call void @__asan_load4_noabort(i32 %86), !dbg !878
  %87 = load ptr, ptr %85, align 4, !dbg !878
  %tobool26.not.i.i = icmp eq ptr %87, null, !dbg !876
  br i1 %tobool26.not.i.i, label %land.lhs.true.i.i.if.end34.i.i_crit_edge, label %if.then27.i.i, !dbg !874

land.lhs.true.i.i.if.end34.i.i_crit_edge:         ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !874
  br label %if.end34.i.i, !dbg !874

if.then27.i.i:                                    ; preds = %land.lhs.true.i.i
  %call30.i.i = tail call i32 %87(ptr noundef nonnull %call7.i.i.i.i) #16, !dbg !879
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30.i.i), !dbg !880
  %tobool31.not.i.i = icmp eq i32 %call30.i.i, 0, !dbg !880
  br i1 %tobool31.not.i.i, label %if.end33.i.i, label %if.then32.i.i, !dbg !880

if.then32.i.i:                                    ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !881
  %gcov_ctr43.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 7), align 8, !dbg !881
  %88 = add i64 %gcov_ctr43.i.i, 1, !dbg !881
  store i64 %88, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 7), align 8, !dbg !881
  %phi.cast.i.i = inttoptr i32 %call30.i.i to ptr, !dbg !881
  br label %free.i.i, !dbg !881

if.end33.i.i:                                     ; preds = %if.then27.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !882
  %gcov_ctr42.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 6), align 16, !dbg !882
  %89 = add i64 %gcov_ctr42.i.i, 1, !dbg !882
  store i64 %89, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 6), align 16, !dbg !882
  br label %if.end34.i.i, !dbg !882

if.end34.i.i:                                     ; preds = %if.end33.i.i, %land.lhs.true.i.i.if.end34.i.i_crit_edge, %tracing_map_elt_init_fields.exit.i.i.if.end34.i.i_crit_edge
  %gcov_ctr44.i.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 8), align 16, !dbg !883
  %90 = add i64 %gcov_ctr44.i.i, 1, !dbg !883
  store i64 %90, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.82, i32 0, i32 8), align 16, !dbg !883
  br label %tracing_map_elt_alloc.exit.i, !dbg !884

free.i.i:                                         ; preds = %if.then32.i.i, %if.then22.i.i, %if.then16.i.i, %if.then11.i.i, %if.then6.i.i
  %err.0.i.i = phi ptr [ %phi.cast.i.i, %if.then32.i.i ], [ inttoptr (i32 -12 to ptr), %if.then22.i.i ], [ inttoptr (i32 -12 to ptr), %if.then16.i.i ], [ inttoptr (i32 -12 to ptr), %if.then11.i.i ], [ inttoptr (i32 -12 to ptr), %if.then6.i.i ]
  tail call fastcc void @tracing_map_elt_free(ptr noundef nonnull %call7.i.i.i.i) #16, !dbg !885
  %gcov_ctr.i225.i.i = load i64, ptr @__llvm_gcov_ctr.37, align 8
  %91 = add i64 %gcov_ctr.i225.i.i, 1
  store i64 %91, ptr @__llvm_gcov_ctr.37, align 8
  br label %tracing_map_elt_alloc.exit.i, !dbg !886

tracing_map_elt_alloc.exit.i:                     ; preds = %free.i.i, %if.end34.i.i, %if.then.i.i
  %retval.0.i.i = phi ptr [ %err.0.i.i, %free.i.i ], [ %call7.i.i.i.i, %if.end34.i.i ], [ inttoptr (i32 -12 to ptr), %if.then.i.i ], !dbg !887
  %92 = ptrtoint ptr %elts.i to i32, !dbg !888
  call void @__asan_load4_noabort(i32 %92), !dbg !888
  %93 = load ptr, ptr %elts.i, align 4, !dbg !888
  %pages.i = getelementptr inbounds %struct.tracing_map_array, ptr %93, i32 0, i32 5, !dbg !888
  %94 = ptrtoint ptr %pages.i to i32, !dbg !888
  call void @__asan_load4_noabort(i32 %94), !dbg !888
  %95 = load ptr, ptr %pages.i, align 4, !dbg !888
  %entry_shift.i = getelementptr inbounds %struct.tracing_map_array, ptr %93, i32 0, i32 2, !dbg !888
  %96 = ptrtoint ptr %entry_shift.i to i32, !dbg !888
  call void @__asan_load4_noabort(i32 %96), !dbg !888
  %97 = load i32, ptr %entry_shift.i, align 4, !dbg !888
  %shr.i = lshr i32 %i.070.i, %97, !dbg !888
  %arrayidx.i = getelementptr ptr, ptr %95, i32 %shr.i, !dbg !888
  %98 = ptrtoint ptr %arrayidx.i to i32, !dbg !888
  call void @__asan_load4_noabort(i32 %98), !dbg !888
  %99 = load ptr, ptr %arrayidx.i, align 4, !dbg !888
  %entry_mask.i = getelementptr inbounds %struct.tracing_map_array, ptr %93, i32 0, i32 3, !dbg !888
  %100 = ptrtoint ptr %entry_mask.i to i32, !dbg !888
  call void @__asan_load4_noabort(i32 %100), !dbg !888
  %101 = load i32, ptr %entry_mask.i, align 4, !dbg !888
  %and.i = and i32 %101, %i.070.i, !dbg !888
  %entry_size_shift.i = getelementptr inbounds %struct.tracing_map_array, ptr %93, i32 0, i32 1, !dbg !888
  %102 = ptrtoint ptr %entry_size_shift.i to i32, !dbg !888
  call void @__asan_load4_noabort(i32 %102), !dbg !888
  %103 = load i32, ptr %entry_size_shift.i, align 4, !dbg !888
  %shl.i = shl i32 %and.i, %103, !dbg !888
  %add.ptr.i = getelementptr i8, ptr %99, i32 %shl.i, !dbg !888
  %104 = ptrtoint ptr %add.ptr.i to i32, !dbg !889
  call void @__asan_store4_noabort(i32 %104), !dbg !889
  store ptr %retval.0.i.i, ptr %add.ptr.i, align 4, !dbg !889
  %105 = load ptr, ptr %elts.i, align 4, !dbg !890
  %pages9.i = getelementptr inbounds %struct.tracing_map_array, ptr %105, i32 0, i32 5, !dbg !890
  %106 = ptrtoint ptr %pages9.i to i32, !dbg !890
  call void @__asan_load4_noabort(i32 %106), !dbg !890
  %107 = load ptr, ptr %pages9.i, align 4, !dbg !890
  %entry_shift11.i = getelementptr inbounds %struct.tracing_map_array, ptr %105, i32 0, i32 2, !dbg !890
  %108 = ptrtoint ptr %entry_shift11.i to i32, !dbg !890
  call void @__asan_load4_noabort(i32 %108), !dbg !890
  %109 = load i32, ptr %entry_shift11.i, align 4, !dbg !890
  %shr12.i = lshr i32 %i.070.i, %109, !dbg !890
  %arrayidx13.i = getelementptr ptr, ptr %107, i32 %shr12.i, !dbg !890
  %110 = ptrtoint ptr %arrayidx13.i to i32, !dbg !890
  call void @__asan_load4_noabort(i32 %110), !dbg !890
  %111 = load ptr, ptr %arrayidx13.i, align 4, !dbg !890
  %entry_mask15.i = getelementptr inbounds %struct.tracing_map_array, ptr %105, i32 0, i32 3, !dbg !890
  %112 = ptrtoint ptr %entry_mask15.i to i32, !dbg !890
  call void @__asan_load4_noabort(i32 %112), !dbg !890
  %113 = load i32, ptr %entry_mask15.i, align 4, !dbg !890
  %and16.i = and i32 %113, %i.070.i, !dbg !890
  %entry_size_shift18.i = getelementptr inbounds %struct.tracing_map_array, ptr %105, i32 0, i32 1, !dbg !890
  %114 = ptrtoint ptr %entry_size_shift18.i to i32, !dbg !890
  call void @__asan_load4_noabort(i32 %114), !dbg !890
  %115 = load i32, ptr %entry_size_shift18.i, align 4, !dbg !890
  %shl19.i = shl i32 %and16.i, %115, !dbg !890
  %add.ptr20.i = getelementptr i8, ptr %111, i32 %shl19.i, !dbg !890
  %116 = ptrtoint ptr %add.ptr20.i to i32, !dbg !891
  call void @__asan_load4_noabort(i32 %116), !dbg !891
  %117 = load ptr, ptr %add.ptr20.i, align 4, !dbg !891
  %gcov_ctr.i64.i = load i64, ptr @__llvm_gcov_ctr.83, align 8
  %118 = add i64 %gcov_ctr.i64.i, 1
  store i64 %118, ptr @__llvm_gcov_ctr.83, align 8
  %cmp.i.i = icmp ugt ptr %117, inttoptr (i32 -4096 to ptr), !dbg !892
  br i1 %cmp.i.i, label %if.then22.i, label %for.inc.i, !dbg !896

if.then22.i:                                      ; preds = %tracing_map_elt_alloc.exit.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !890
  %entry_shift11.i.le = getelementptr inbounds %struct.tracing_map_array, ptr %105, i32 0, i32 2, !dbg !890
  %entry_mask15.i.le = getelementptr inbounds %struct.tracing_map_array, ptr %105, i32 0, i32 3, !dbg !890
  %entry_size_shift18.i.le = getelementptr inbounds %struct.tracing_map_array, ptr %105, i32 0, i32 1, !dbg !890
  %gcov_ctr37.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 1), align 8, !dbg !897
  %119 = add i64 %gcov_ctr37.i, 1, !dbg !897
  store i64 %119, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 1), align 8, !dbg !897
  %120 = ptrtoint ptr %entry_shift11.i.le to i32, !dbg !897
  call void @__asan_load4_noabort(i32 %120), !dbg !897
  %121 = load i32, ptr %entry_shift11.i.le, align 4, !dbg !897
  %shr27.i = lshr i32 %i.070.i, %121, !dbg !897
  %arrayidx28.i = getelementptr ptr, ptr %107, i32 %shr27.i, !dbg !897
  %122 = ptrtoint ptr %arrayidx28.i to i32, !dbg !897
  call void @__asan_load4_noabort(i32 %122), !dbg !897
  %123 = load ptr, ptr %arrayidx28.i, align 4, !dbg !897
  %124 = ptrtoint ptr %entry_mask15.i.le to i32, !dbg !897
  call void @__asan_load4_noabort(i32 %124), !dbg !897
  %125 = load i32, ptr %entry_mask15.i.le, align 4, !dbg !897
  %and31.i = and i32 %125, %i.070.i, !dbg !897
  %126 = ptrtoint ptr %entry_size_shift18.i.le to i32, !dbg !897
  call void @__asan_load4_noabort(i32 %126), !dbg !897
  %127 = load i32, ptr %entry_size_shift18.i.le, align 4, !dbg !897
  %shl34.i = shl i32 %and31.i, %127, !dbg !897
  %add.ptr35.i = getelementptr i8, ptr %123, i32 %shl34.i, !dbg !897
  %128 = ptrtoint ptr %add.ptr35.i to i32, !dbg !898
  call void @__asan_store4_noabort(i32 %128), !dbg !898
  store ptr null, ptr %add.ptr35.i, align 4, !dbg !898
  tail call fastcc void @tracing_map_free_elts(ptr noundef %map) #16, !dbg !899
  br label %if.then1, !dbg !900

for.inc.i:                                        ; preds = %tracing_map_elt_alloc.exit.i
  %gcov_ctr38.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 2), align 16, !dbg !901
  %129 = add i64 %gcov_ctr38.i, 1, !dbg !901
  store i64 %129, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 2), align 16, !dbg !901
  %inc.i = add nuw i32 %i.070.i, 1, !dbg !901
  %130 = ptrtoint ptr %max_elts.i to i32, !dbg !780
  call void @__asan_load4_noabort(i32 %130), !dbg !780
  %131 = load i32, ptr %max_elts.i, align 4, !dbg !780
  %cmp.i = icmp ult i32 %inc.i, %131, !dbg !781
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.if.end2_crit_edge, !dbg !782, !llvm.loop !902

for.inc.i.if.end2_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !782
  br label %if.end2, !dbg !782

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !782
  br label %for.body.i, !dbg !782

if.then1:                                         ; preds = %if.then22.i, %if.then.i
  %gcov_ctr4 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 2), align 16, !dbg !904
  %132 = add i64 %gcov_ctr4, 1, !dbg !904
  store i64 %132, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 2), align 16, !dbg !904
  br label %cleanup, !dbg !905

if.end2:                                          ; preds = %for.inc.i.if.end2_crit_edge, %for.cond.preheader.i.if.end2_crit_edge
  %gcov_ctr39.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 3), align 8, !dbg !906
  %133 = add i64 %gcov_ctr39.i, 1, !dbg !906
  store i64 %133, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.41, i32 0, i32 3), align 8, !dbg !906
  %gcov_ctr3 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !907
  %134 = add i64 %gcov_ctr3, 1, !dbg !907
  store i64 %134, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.40, i32 0, i32 1), align 8, !dbg !907
  tail call void @tracing_map_clear(ptr noundef %map), !dbg !908
  br label %cleanup, !dbg !909

cleanup:                                          ; preds = %if.end2, %if.then1, %if.then
  %retval.0 = phi i32 [ -22, %if.then ], [ -12, %if.then1 ], [ 0, %if.end2 ], !dbg !910
  ret i32 %retval.0, !dbg !911
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tracing_map_destroy_sort_entries(ptr noundef %entries, i32 noundef %n_entries) local_unnamed_addr #0 align 64 !dbg !912 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !913
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_entries), !dbg !914
  %cmp5.not = icmp eq i32 %n_entries, 0, !dbg !914
  br i1 %cmp5.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge, !dbg !915

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body, !dbg !915

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !915
  br label %for.end, !dbg !915

for.body:                                         ; preds = %destroy_sort_entry.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %i.06 = phi i32 [ %inc, %destroy_sort_entry.exit.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr ptr, ptr %entries, i32 %i.06, !dbg !916
  %1 = ptrtoint ptr %arrayidx to i32, !dbg !916
  call void @__asan_load4_noabort(i32 %1), !dbg !916
  %2 = load ptr, ptr %arrayidx, align 4, !dbg !916
  %tobool.not.i = icmp eq ptr %2, null, !dbg !917
  br i1 %tobool.not.i, label %if.then.i, label %if.end.i, !dbg !920

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !921
  %gcov_ctr5.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 1), align 8, !dbg !921
  %3 = add i64 %gcov_ctr5.i, 1, !dbg !921
  store i64 %3, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 1), align 8, !dbg !921
  br label %destroy_sort_entry.exit, !dbg !921

if.end.i:                                         ; preds = %for.body
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.43, align 16, !dbg !922
  %4 = add i64 %gcov_ctr.i, 1, !dbg !922
  store i64 %4, ptr @__llvm_gcov_ctr.43, align 16, !dbg !922
  %elt_copied.i = getelementptr inbounds %struct.tracing_map_sort_entry, ptr %2, i32 0, i32 2, !dbg !923
  %5 = ptrtoint ptr %elt_copied.i to i32, !dbg !923
  call void @__asan_load1_noabort(i32 %5), !dbg !923
  %6 = load i8, ptr %elt_copied.i, align 4, !dbg !923, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6), !dbg !923
  %tobool2.not.i = icmp eq i8 %6, 0, !dbg !923
  br i1 %tobool2.not.i, label %if.end.i.if.end4.i_crit_edge, label %if.then3.i, !dbg !922

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !922
  br label %if.end4.i, !dbg !922

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !924
  %gcov_ctr6.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 2), align 16, !dbg !924
  %7 = add i64 %gcov_ctr6.i, 1, !dbg !924
  store i64 %7, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 2), align 16, !dbg !924
  %elt.i = getelementptr inbounds %struct.tracing_map_sort_entry, ptr %2, i32 0, i32 1, !dbg !925
  %8 = ptrtoint ptr %elt.i to i32, !dbg !925
  call void @__asan_load4_noabort(i32 %8), !dbg !925
  %9 = load ptr, ptr %elt.i, align 4, !dbg !925
  tail call fastcc void @tracing_map_elt_free(ptr noundef %9) #16, !dbg !926
  br label %if.end4.i, !dbg !926

if.end4.i:                                        ; preds = %if.then3.i, %if.end.i.if.end4.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %2) #16, !dbg !927
  br label %destroy_sort_entry.exit, !dbg !928

destroy_sort_entry.exit:                          ; preds = %if.end4.i, %if.then.i
  %gcov_ctr1 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !929
  %10 = add i64 %gcov_ctr1, 1, !dbg !929
  store i64 %10, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !929
  %inc = add nuw i32 %i.06, 1, !dbg !929
  %exitcond.not = icmp eq i32 %inc, %n_entries, !dbg !914
  br i1 %exitcond.not, label %destroy_sort_entry.exit.for.end_crit_edge, label %destroy_sort_entry.exit.for.body_crit_edge, !dbg !915, !llvm.loop !930

destroy_sort_entry.exit.for.body_crit_edge:       ; preds = %destroy_sort_entry.exit
  call void @__sanitizer_cov_trace_pc() #15, !dbg !915
  br label %for.body, !dbg !915

destroy_sort_entry.exit.for.end_crit_edge:        ; preds = %destroy_sort_entry.exit
  call void @__sanitizer_cov_trace_pc() #15, !dbg !915
  br label %for.end, !dbg !915

for.end:                                          ; preds = %destroy_sort_entry.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @vfree(ptr noundef %entries) #16, !dbg !932
  ret void, !dbg !933
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vfree(ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tracing_map_sort_entries(ptr nocapture noundef %map, ptr nocapture noundef readonly %sort_keys, i32 noundef %n_sort_keys, ptr nocapture noundef writeonly %sort_entries) local_unnamed_addr #0 align 64 !dbg !934 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !935
  %max_elts = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 3, !dbg !936
  %0 = ptrtoint ptr %max_elts to i32, !dbg !936
  call void @__asan_load4_noabort(i32 %0), !dbg !936
  %1 = load i32, ptr %max_elts, align 4, !dbg !936
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 4) #16, !dbg !937
  %3 = extractvalue { i32, i1 } %2, 1, !dbg !937
  %gcov_ctr.i.i = load i64, ptr @__llvm_gcov_ctr.81, align 8
  %4 = add i64 %gcov_ctr.i.i, 1
  store i64 %4, ptr @__llvm_gcov_ctr.81, align 8
  %5 = extractvalue { i32, i1 } %2, 0, !dbg !937
  %.sink.i = select i1 %3, ptr @__llvm_gcov_ctr.45, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.45, i32 0, i32 1), !dbg !937
  %retval.0.i = select i1 %3, i32 -1, i32 %5, !dbg !937
  %6 = ptrtoint ptr %.sink.i to i32, !dbg !941
  call void @__asan_load8_noabort(i32 %6), !dbg !941
  %gcov_ctr3.i = load i64, ptr %.sink.i, align 8, !dbg !941
  %7 = add i64 %gcov_ctr3.i, 1, !dbg !941
  store i64 %7, ptr %.sink.i, align 8, !dbg !941
  %call1 = tail call noalias ptr @vmalloc(i32 noundef %retval.0.i) #20, !dbg !942
  %tobool.not = icmp eq ptr %call1, null, !dbg !943
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !944

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !945
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.44, align 16, !dbg !945
  %8 = add i64 %gcov_ctr, 1, !dbg !945
  store i64 %8, ptr @__llvm_gcov_ctr.44, align 16, !dbg !945
  br label %cleanup37, !dbg !945

if.end:                                           ; preds = %entry
  %gcov_ctr43 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !946
  %9 = add i64 %gcov_ctr43, 1, !dbg !946
  store i64 %9, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 1), align 8, !dbg !946
  %map_size = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 2
  %10 = ptrtoint ptr %map_size to i32, !dbg !947
  call void @__asan_load4_noabort(i32 %10), !dbg !947
  %11 = load i32, ptr %map_size, align 8, !dbg !947
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11), !dbg !948
  %cmp137.not = icmp eq i32 %11, 0, !dbg !948
  br i1 %cmp137.not, label %if.end.if.then22_crit_edge, label %for.body.lr.ph, !dbg !949

if.end.if.then22_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !949
  br label %if.then22, !dbg !949

for.body.lr.ph:                                   ; preds = %if.end
  %map3 = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 6
  br label %for.body, !dbg !949

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %n_entries.0139 = phi i32 [ 0, %for.body.lr.ph ], [ %n_entries.1125, %for.inc.for.body_crit_edge ]
  %i.0138 = phi i32 [ 0, %for.body.lr.ph ], [ %inc20, %for.inc.for.body_crit_edge ]
  %12 = ptrtoint ptr %map3 to i32, !dbg !950
  call void @__asan_load4_noabort(i32 %12), !dbg !950
  %13 = load ptr, ptr %map3, align 8, !dbg !950
  %pages = getelementptr inbounds %struct.tracing_map_array, ptr %13, i32 0, i32 5, !dbg !950
  %14 = ptrtoint ptr %pages to i32, !dbg !950
  call void @__asan_load4_noabort(i32 %14), !dbg !950
  %15 = load ptr, ptr %pages, align 4, !dbg !950
  %entry_shift = getelementptr inbounds %struct.tracing_map_array, ptr %13, i32 0, i32 2, !dbg !950
  %16 = ptrtoint ptr %entry_shift to i32, !dbg !950
  call void @__asan_load4_noabort(i32 %16), !dbg !950
  %17 = load i32, ptr %entry_shift, align 4, !dbg !950
  %shr = ashr i32 %i.0138, %17, !dbg !950
  %arrayidx = getelementptr ptr, ptr %15, i32 %shr, !dbg !950
  %18 = ptrtoint ptr %arrayidx to i32, !dbg !950
  call void @__asan_load4_noabort(i32 %18), !dbg !950
  %19 = load ptr, ptr %arrayidx, align 4, !dbg !950
  %entry_mask = getelementptr inbounds %struct.tracing_map_array, ptr %13, i32 0, i32 3, !dbg !950
  %20 = ptrtoint ptr %entry_mask to i32, !dbg !950
  call void @__asan_load4_noabort(i32 %20), !dbg !950
  %21 = load i32, ptr %entry_mask, align 4, !dbg !950
  %and = and i32 %21, %i.0138, !dbg !950
  %entry_size_shift = getelementptr inbounds %struct.tracing_map_array, ptr %13, i32 0, i32 1, !dbg !950
  %22 = ptrtoint ptr %entry_size_shift to i32, !dbg !950
  call void @__asan_load4_noabort(i32 %22), !dbg !950
  %23 = load i32, ptr %entry_size_shift, align 4, !dbg !950
  %shl = shl i32 %and, %23, !dbg !950
  %add.ptr = getelementptr i8, ptr %19, i32 %shl, !dbg !950
  %24 = ptrtoint ptr %add.ptr to i32, !dbg !951
  call void @__asan_load4_noabort(i32 %24), !dbg !951
  %25 = load i32, ptr %add.ptr, align 4, !dbg !951
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25), !dbg !952
  %tobool7.not = icmp eq i32 %25, 0, !dbg !952
  br i1 %tobool7.not, label %for.body.cleanup.thread129_crit_edge, label %lor.lhs.false, !dbg !953

for.body.cleanup.thread129_crit_edge:             ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #15, !dbg !953
  br label %cleanup.thread129, !dbg !953

lor.lhs.false:                                    ; preds = %for.body
  %gcov_ctr44 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !954
  %26 = add i64 %gcov_ctr44, 1, !dbg !954
  store i64 %26, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 2), align 16, !dbg !954
  %val = getelementptr inbounds %struct.tracing_map_entry, ptr %add.ptr, i32 0, i32 1, !dbg !955
  %27 = ptrtoint ptr %val to i32, !dbg !955
  call void @__asan_load4_noabort(i32 %27), !dbg !955
  %28 = load ptr, ptr %val, align 4, !dbg !955
  %tobool8.not = icmp eq ptr %28, null, !dbg !954
  br i1 %tobool8.not, label %lor.lhs.false.cleanup.thread129_crit_edge, label %if.end10, !dbg !956

lor.lhs.false.cleanup.thread129_crit_edge:        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #15, !dbg !956
  br label %cleanup.thread129, !dbg !956

cleanup.thread129:                                ; preds = %lor.lhs.false.cleanup.thread129_crit_edge, %for.body.cleanup.thread129_crit_edge
  %gcov_ctr45 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8
  %29 = add i64 %gcov_ctr45, 1
  store i64 %29, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 3), align 8
  br label %for.inc

if.end10:                                         ; preds = %lor.lhs.false
  %key12 = getelementptr inbounds %struct.tracing_map_elt, ptr %28, i32 0, i32 4, !dbg !957
  %30 = ptrtoint ptr %key12 to i32, !dbg !957
  call void @__asan_load4_noabort(i32 %30), !dbg !957
  %31 = load ptr, ptr %key12, align 4, !dbg !957
  %gcov_ctr.i.i90 = load i64, ptr @__llvm_gcov_ctr.38, align 8
  %32 = add i64 %gcov_ctr.i.i90, 1
  store i64 %32, ptr @__llvm_gcov_ctr.38, align 8
  %gcov_ctr79.i.i.i.i = load i64, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 1), align 8, !dbg !958
  %33 = add i64 %gcov_ctr79.i.i.i.i, 1, !dbg !958
  store i64 %33, ptr getelementptr inbounds ([27 x i64], ptr @__llvm_gcov_ctr.72, i32 0, i32 1), align 8, !dbg !958
  %gcov_ctr11.i.i.i = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 2), align 16, !dbg !964
  %34 = add i64 %gcov_ctr11.i.i.i, 1, !dbg !964
  store i64 %34, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.70, i32 0, i32 2), align 16, !dbg !964
  %gcov_ctr.i2.i.i.i = load i64, ptr @__llvm_gcov_ctr.73, align 16, !dbg !965
  %35 = add i64 %gcov_ctr.i2.i.i.i, 1, !dbg !965
  store i64 %35, ptr @__llvm_gcov_ctr.73, align 16, !dbg !965
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32)), !dbg !967
  %36 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4, !dbg !967
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %36, i32 noundef 3520, i32 noundef 12) #19, !dbg !968
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null, !dbg !969
  br i1 %tobool.not.i, label %cleanup, label %cleanup.cont, !dbg !970

cleanup:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15, !dbg !971
  %gcov_ctr.i = load i64, ptr @__llvm_gcov_ctr.46, align 8, !dbg !971
  %37 = add i64 %gcov_ctr.i, 1, !dbg !971
  store i64 %37, ptr @__llvm_gcov_ctr.46, align 8, !dbg !971
  %arrayidx15119 = getelementptr ptr, ptr %call1, i32 %n_entries.0139, !dbg !972
  %38 = ptrtoint ptr %arrayidx15119 to i32, !dbg !973
  call void @__asan_store4_noabort(i32 %38), !dbg !973
  store ptr null, ptr %arrayidx15119, align 4, !dbg !973
  %inc120 = add i32 %n_entries.0139, 1, !dbg !974
  %gcov_ctr46 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 4), align 16, !dbg !975
  %39 = add i64 %gcov_ctr46, 1, !dbg !975
  store i64 %39, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 4), align 16, !dbg !975
  br label %free

cleanup.cont:                                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #15, !dbg !976
  %gcov_ctr3.i91 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 1), align 8, !dbg !976
  %40 = add i64 %gcov_ctr3.i91, 1, !dbg !976
  store i64 %40, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.46, i32 0, i32 1), align 8, !dbg !976
  %41 = ptrtoint ptr %call7.i.i.i to i32, !dbg !977
  call void @__asan_store4_noabort(i32 %41), !dbg !977
  store ptr %31, ptr %call7.i.i.i, align 8, !dbg !977
  %elt2.i = getelementptr inbounds %struct.tracing_map_sort_entry, ptr %call7.i.i.i, i32 0, i32 1, !dbg !978
  %42 = ptrtoint ptr %elt2.i to i32, !dbg !979
  call void @__asan_store4_noabort(i32 %42), !dbg !979
  store ptr %28, ptr %elt2.i, align 4, !dbg !979
  %arrayidx15 = getelementptr ptr, ptr %call1, i32 %n_entries.0139, !dbg !972
  %43 = ptrtoint ptr %arrayidx15 to i32, !dbg !973
  call void @__asan_store4_noabort(i32 %43), !dbg !973
  store ptr %call7.i.i.i, ptr %arrayidx15, align 4, !dbg !973
  %inc = add i32 %n_entries.0139, 1, !dbg !974
  %gcov_ctr47 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 5), align 8, !dbg !980
  %44 = add i64 %gcov_ctr47, 1, !dbg !980
  store i64 %44, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 5), align 8, !dbg !980
  %gcov_ctr48 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 6), align 16, !dbg !980
  %45 = add i64 %gcov_ctr48, 1, !dbg !980
  store i64 %45, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 6), align 16, !dbg !980
  br label %for.inc, !dbg !980

for.inc:                                          ; preds = %cleanup.cont, %cleanup.thread129
  %n_entries.1125 = phi i32 [ %inc, %cleanup.cont ], [ %n_entries.0139, %cleanup.thread129 ]
  %inc20 = add nuw i32 %i.0138, 1, !dbg !981
  %46 = ptrtoint ptr %map_size to i32, !dbg !947
  call void @__asan_load4_noabort(i32 %46), !dbg !947
  %47 = load i32, ptr %map_size, align 8, !dbg !947
  %cmp = icmp ult i32 %inc20, %47, !dbg !948
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end, !dbg !949, !llvm.loop !982

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #15, !dbg !949
  br label %for.body, !dbg !949

for.end:                                          ; preds = %for.inc
  %48 = zext i32 %n_entries.1125 to i64, !dbg !983
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.87), !dbg !983
  switch i32 %n_entries.1125, label %if.end26 [
    i32 0, label %for.end.if.then22_crit_edge
    i32 1, label %if.then25
  ], !dbg !983

for.end.if.then22_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !983
  br label %if.then22, !dbg !983

if.then22:                                        ; preds = %for.end.if.then22_crit_edge, %if.end.if.then22_crit_edge
  %gcov_ctr49 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 7), align 8, !dbg !984
  %49 = add i64 %gcov_ctr49, 1, !dbg !984
  store i64 %49, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 7), align 8, !dbg !984
  br label %free, !dbg !985

if.then25:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !986
  %gcov_ctr50 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 8), align 16, !dbg !986
  %50 = add i64 %gcov_ctr50, 1, !dbg !986
  store i64 %50, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 8), align 16, !dbg !986
  %51 = ptrtoint ptr %sort_entries to i32, !dbg !987
  call void @__asan_store4_noabort(i32 %51), !dbg !987
  store ptr %call1, ptr %sort_entries, align 4, !dbg !987
  br label %cleanup37, !dbg !988

if.end26:                                         ; preds = %for.end
  %52 = ptrtoint ptr %map to i32, !dbg !989
  call void @__asan_load4_noabort(i32 %52), !dbg !989
  %53 = load i32, ptr %map, align 8, !dbg !989
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %n_entries.1125), !dbg !990
  %cmp.i = icmp slt i32 %n_entries.1125, 2, !dbg !990
  br i1 %cmp.i, label %if.end26.detect_dups.exit_crit_edge, label %for.body.preheader.i, !dbg !993

if.end26.detect_dups.exit_crit_edge:              ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #15, !dbg !993
  br label %detect_dups.exit, !dbg !993

for.body.preheader.i:                             ; preds = %if.end26
  tail call void @sort(ptr noundef nonnull %call1, i32 noundef %n_entries.1125, i32 noundef 4, ptr noundef nonnull @cmp_entries_dup, ptr noundef null) #16, !dbg !994
  %54 = ptrtoint ptr %call1 to i32, !dbg !995
  call void @__asan_load4_noabort(i32 %54), !dbg !995
  %55 = load ptr, ptr %call1, align 4, !dbg !995
  %56 = ptrtoint ptr %55 to i32, !dbg !996
  call void @__asan_load4_noabort(i32 %56), !dbg !996
  %57 = load ptr, ptr %55, align 4, !dbg !996
  br label %for.body.i, !dbg !997

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.preheader.i
  %total_dups.075.i = phi i32 [ %total_dups.1.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %key.074.i = phi ptr [ %key.1.i, %for.inc.i.for.body.i_crit_edge ], [ %57, %for.body.preheader.i ]
  %i.073.i = phi i32 [ %inc10.i, %for.inc.i.for.body.i_crit_edge ], [ 1, %for.body.preheader.i ]
  %arrayidx3.i = getelementptr ptr, ptr %call1, i32 %i.073.i, !dbg !998
  %58 = ptrtoint ptr %arrayidx3.i to i32, !dbg !998
  call void @__asan_load4_noabort(i32 %58), !dbg !998
  %59 = load ptr, ptr %arrayidx3.i, align 4, !dbg !998
  %60 = ptrtoint ptr %59 to i32, !dbg !999
  call void @__asan_load4_noabort(i32 %60), !dbg !999
  %61 = load ptr, ptr %59, align 4, !dbg !999
  %bcmp.i = tail call i32 @bcmp(ptr %61, ptr %key.074.i, i32 %53) #18, !dbg !1000
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i), !dbg !1000
  %tobool.not.i92 = icmp eq i32 %bcmp.i, 0, !dbg !1000
  br i1 %tobool.not.i92, label %if.then5.i, label %if.end7.i, !dbg !1001

if.then5.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1002
  %gcov_ctr52.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 1), align 8, !dbg !1002
  %62 = add i64 %gcov_ctr52.i, 1, !dbg !1002
  store i64 %62, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 1), align 8, !dbg !1002
  %inc6.i = add i32 %total_dups.075.i, 1, !dbg !1003
  br label %for.inc.i, !dbg !1004

if.end7.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1005
  %gcov_ctr53.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 2), align 16, !dbg !1005
  %63 = add i64 %gcov_ctr53.i, 1, !dbg !1005
  store i64 %63, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 2), align 16, !dbg !1005
  %64 = ptrtoint ptr %59 to i32, !dbg !1006
  call void @__asan_load4_noabort(i32 %64), !dbg !1006
  %65 = load ptr, ptr %59, align 4, !dbg !1006
  br label %for.inc.i, !dbg !1007

for.inc.i:                                        ; preds = %if.end7.i, %if.then5.i
  %key.1.i = phi ptr [ %65, %if.end7.i ], [ %key.074.i, %if.then5.i ], !dbg !1008
  %total_dups.1.i = phi i32 [ %total_dups.075.i, %if.end7.i ], [ %inc6.i, %if.then5.i ], !dbg !1008
  %inc10.i = add nuw nsw i32 %i.073.i, 1, !dbg !1009
  %exitcond.not.i = icmp eq i32 %inc10.i, %n_entries.1125, !dbg !1010
  br i1 %exitcond.not.i, label %for.end.i, label %for.inc.i.for.body.i_crit_edge, !dbg !997, !llvm.loop !1011

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !997
  br label %for.body.i, !dbg !997

for.end.i:                                        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %total_dups.1.i), !dbg !1012
  %cmp11.not.i = icmp eq i32 %total_dups.1.i, 0, !dbg !1012
  br i1 %cmp11.not.i, label %for.end.i.detect_dups.exit_crit_edge, label %land.rhs.i, !dbg !1012

for.end.i.detect_dups.exit_crit_edge:             ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1012
  br label %detect_dups.exit, !dbg !1012

land.rhs.i:                                       ; preds = %for.end.i
  %gcov_ctr54.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 3), align 8, !dbg !1012
  %66 = add i64 %gcov_ctr54.i, 1, !dbg !1012
  store i64 %66, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 3), align 8, !dbg !1012
  %.b71.i = load i1, ptr @detect_dups.__already_done, align 1, !dbg !1012
  br i1 %.b71.i, label %land.rhs.i.detect_dups.exit_crit_edge, label %if.then19.i, !dbg !1012, !prof !1013

land.rhs.i.detect_dups.exit_crit_edge:            ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1012
  br label %detect_dups.exit, !dbg !1012

if.then19.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1012
  store i1 true, ptr @detect_dups.__already_done, align 1, !dbg !1012
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 985, i32 noundef 9, ptr noundef nonnull @.str.1, i32 noundef %total_dups.1.i) #16, !dbg !1012
  %gcov_ctr55.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 4), align 16, !dbg !1012
  %67 = add i64 %gcov_ctr55.i, 1, !dbg !1012
  store i64 %67, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 4), align 16, !dbg !1012
  %gcov_ctr56.i = load i64, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 5), align 8, !dbg !1012
  %68 = add i64 %gcov_ctr56.i, 1, !dbg !1012
  store i64 %68, ptr getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 5), align 8, !dbg !1012
  br label %detect_dups.exit, !dbg !1012

detect_dups.exit:                                 ; preds = %if.then19.i, %land.rhs.i.detect_dups.exit_crit_edge, %for.end.i.detect_dups.exit_crit_edge, %if.end26.detect_dups.exit_crit_edge
  %.sink.i93 = phi ptr [ @__llvm_gcov_ctr.47, %if.end26.detect_dups.exit_crit_edge ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 6), %for.end.i.detect_dups.exit_crit_edge ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 6), %if.then19.i ], [ getelementptr inbounds ([8 x i64], ptr @__llvm_gcov_ctr.47, i32 0, i32 6), %land.rhs.i.detect_dups.exit_crit_edge ]
  %69 = ptrtoint ptr %.sink.i93 to i32
  call void @__asan_load8_noabort(i32 %69)
  %gcov_ctr57.i = load i64, ptr %.sink.i93, align 16
  %70 = add i64 %gcov_ctr57.i, 1
  store i64 %70, ptr %.sink.i93, align 16
  %71 = ptrtoint ptr %sort_keys to i32, !dbg !1014
  call void @__asan_load4_noabort(i32 %71), !dbg !1014
  %72 = load i32, ptr %sort_keys, align 4, !dbg !1014
  %n_keys.i = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 12
  %73 = ptrtoint ptr %n_keys.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %n_keys.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %74), !dbg !1015
  %cmp9.not.i = icmp eq i32 %74, 0, !dbg !1015
  br i1 %cmp9.not.i, label %is_key.exit.thread, label %for.body.i94.preheader, !dbg !1018

for.body.i94.preheader:                           ; preds = %detect_dups.exit
  %arrayidx.i141 = getelementptr %struct.tracing_map, ptr %map, i32 0, i32 11, i32 0, !dbg !1019
  %75 = ptrtoint ptr %arrayidx.i141 to i32, !dbg !1019
  call void @__asan_load4_noabort(i32 %75), !dbg !1019
  %76 = load i32, ptr %arrayidx.i141, align 4, !dbg !1019
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %72), !dbg !1020
  %cmp1.i142 = icmp eq i32 %76, %72, !dbg !1020
  br i1 %cmp1.i142, label %if.then29.critedge, label %for.body.i94.preheader.for.inc.i97_crit_edge, !dbg !1019

for.body.i94.preheader.for.inc.i97_crit_edge:     ; preds = %for.body.i94.preheader
  br label %for.inc.i97, !dbg !1019

is_key.exit.thread:                               ; preds = %detect_dups.exit
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1021
  %gcov_ctr3.i99135 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 2), align 16, !dbg !1021
  %77 = add i64 %gcov_ctr3.i99135, 1, !dbg !1021
  store i64 %77, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 2), align 16, !dbg !1021
  br label %if.else, !dbg !1022

for.body.i94:                                     ; preds = %for.inc.i97
  %arrayidx.i = getelementptr %struct.tracing_map, ptr %map, i32 0, i32 11, i32 %inc.i, !dbg !1019
  %78 = ptrtoint ptr %arrayidx.i to i32, !dbg !1019
  call void @__asan_load4_noabort(i32 %78), !dbg !1019
  %79 = load i32, ptr %arrayidx.i, align 4, !dbg !1019
  %cmp1.i = icmp eq i32 %79, %72, !dbg !1020
  br i1 %cmp1.i, label %for.body.i94.is_key.exit_crit_edge, label %for.body.i94.for.inc.i97_crit_edge, !dbg !1019, !llvm.loop !1023

for.body.i94.for.inc.i97_crit_edge:               ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1019
  br label %for.inc.i97, !dbg !1019

for.body.i94.is_key.exit_crit_edge:               ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1019
  br label %is_key.exit, !dbg !1019

for.inc.i97:                                      ; preds = %for.body.i94.for.inc.i97_crit_edge, %for.body.i94.preheader.for.inc.i97_crit_edge
  %i.010.i143 = phi i32 [ %inc.i, %for.body.i94.for.inc.i97_crit_edge ], [ 0, %for.body.i94.preheader.for.inc.i97_crit_edge ]
  %gcov_ctr2.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !1025
  %80 = add i64 %gcov_ctr2.i, 1, !dbg !1025
  store i64 %80, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !1025
  %inc.i = add nuw i32 %i.010.i143, 1, !dbg !1025
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %74), !dbg !1015
  %exitcond.not.i96 = icmp eq i32 %inc.i, %74, !dbg !1015
  br i1 %exitcond.not.i96, label %for.inc.i97.is_key.exit_crit_edge, label %for.body.i94, !dbg !1018, !llvm.loop !1023

for.inc.i97.is_key.exit_crit_edge:                ; preds = %for.inc.i97
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1018
  br label %is_key.exit, !dbg !1018

is_key.exit:                                      ; preds = %for.inc.i97.is_key.exit_crit_edge, %for.body.i94.is_key.exit_crit_edge
  %.sink.i98 = phi ptr [ @__llvm_gcov_ctr.48, %for.body.i94.is_key.exit_crit_edge ], [ getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 2), %for.inc.i97.is_key.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i, i32 %74), !dbg !1015
  %cmp.i95.le = icmp ult i32 %inc.i, %74, !dbg !1015
  %81 = ptrtoint ptr %.sink.i98 to i32, !dbg !1021
  call void @__asan_load8_noabort(i32 %81), !dbg !1021
  %gcov_ctr3.i99 = load i64, ptr %.sink.i98, align 16, !dbg !1021
  %82 = add i64 %gcov_ctr3.i99, 1, !dbg !1021
  store i64 %82, ptr %.sink.i98, align 16, !dbg !1021
  br i1 %cmp.i95.le, label %is_key.exit.if.then29_crit_edge, label %is_key.exit.if.else_crit_edge, !dbg !1022

is_key.exit.if.else_crit_edge:                    ; preds = %is_key.exit
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1022
  br label %if.else, !dbg !1022

is_key.exit.if.then29_crit_edge:                  ; preds = %is_key.exit
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1022
  br label %if.then29, !dbg !1022

if.then29.critedge:                               ; preds = %for.body.i94.preheader
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1021
  %gcov_ctr3.i99.c = load i64, ptr @__llvm_gcov_ctr.48, align 16, !dbg !1021
  %83 = add i64 %gcov_ctr3.i99.c, 1, !dbg !1021
  store i64 %83, ptr @__llvm_gcov_ctr.48, align 16, !dbg !1021
  br label %if.then29, !dbg !1022

if.then29:                                        ; preds = %if.then29.critedge, %is_key.exit.if.then29_crit_edge
  %gcov_ctr51 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 9), align 8, !dbg !1026
  %84 = add i64 %gcov_ctr51, 1, !dbg !1026
  store i64 %84, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 9), align 8, !dbg !1026
  br label %if.end30, !dbg !1027

if.else:                                          ; preds = %is_key.exit.if.else_crit_edge, %is_key.exit.thread
  %gcov_ctr52 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 10), align 16, !dbg !1028
  %85 = add i64 %gcov_ctr52, 1, !dbg !1028
  store i64 %85, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 10), align 16, !dbg !1028
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then29
  %cmp_entries_fn.0 = phi ptr [ @cmp_entries_key, %if.then29 ], [ @cmp_entries_sum, %if.else ], !dbg !1029
  %gcov_ctr.i100 = load i64, ptr @__llvm_gcov_ctr.51, align 8
  %86 = add i64 %gcov_ctr.i100, 1
  store i64 %86, ptr @__llvm_gcov_ctr.51, align 8
  %sort_key1.i = getelementptr inbounds %struct.tracing_map, ptr %map, i32 0, i32 13, !dbg !1030
  %87 = ptrtoint ptr %sort_keys to i32, !dbg !1033
  call void @__asan_loadN_noabort(i32 %87, i32 8), !dbg !1033
  %88 = load i64, ptr %sort_keys, align 4, !dbg !1033
  %89 = ptrtoint ptr %sort_key1.i to i32, !dbg !1033
  call void @__asan_storeN_noabort(i32 %89, i32 8), !dbg !1033
  store i64 %88, ptr %sort_key1.i, align 4, !dbg !1033
  tail call void @sort(ptr noundef nonnull %call1, i32 noundef %n_entries.1125, i32 noundef 4, ptr noundef nonnull %cmp_entries_fn.0, ptr noundef null) #16, !dbg !1034
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %n_sort_keys), !dbg !1035
  %cmp32 = icmp ugt i32 %n_sort_keys, 1, !dbg !1035
  br i1 %cmp32, label %if.then33, label %if.end30.if.end36_crit_edge, !dbg !1036

if.end30.if.end36_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1036
  br label %if.end36, !dbg !1036

if.then33:                                        ; preds = %if.end30
  %gcov_ctr53 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 11), align 8, !dbg !1037
  %90 = add i64 %gcov_ctr53, 1, !dbg !1037
  store i64 %90, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 11), align 8, !dbg !1037
  %arrayidx35 = getelementptr %struct.tracing_map_sort_key, ptr %sort_keys, i32 1, !dbg !1038
  %91 = ptrtoint ptr %sort_keys to i32, !dbg !1039
  call void @__asan_load4_noabort(i32 %91), !dbg !1039
  %92 = load i32, ptr %sort_keys, align 4, !dbg !1039
  %93 = ptrtoint ptr %n_keys.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %n_keys.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94), !dbg !1042
  %cmp9.not.i.i = icmp eq i32 %94, 0, !dbg !1042
  br i1 %cmp9.not.i.i, label %if.then33.if.else.i.sink.split_crit_edge, label %for.body.i.preheader.i, !dbg !1044

if.then33.if.else.i.sink.split_crit_edge:         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1044
  br label %if.else.i.sink.split, !dbg !1044

for.body.i.preheader.i:                           ; preds = %if.then33
  %arrayidx.i77.i = getelementptr %struct.tracing_map, ptr %map, i32 0, i32 11, i32 0, !dbg !1045
  %95 = ptrtoint ptr %arrayidx.i77.i to i32, !dbg !1045
  call void @__asan_load4_noabort(i32 %95), !dbg !1045
  %96 = load i32, ptr %arrayidx.i77.i, align 4, !dbg !1045
  call void @__sanitizer_cov_trace_cmp4(i32 %96, i32 %92), !dbg !1046
  %cmp1.i78.i = icmp eq i32 %96, %92, !dbg !1046
  br i1 %cmp1.i78.i, label %if.end.thread.i, label %for.body.i.preheader.i.for.inc.i.i_crit_edge, !dbg !1045

for.body.i.preheader.i.for.inc.i.i_crit_edge:     ; preds = %for.body.i.preheader.i
  br label %for.inc.i.i, !dbg !1045

for.body.i.i:                                     ; preds = %for.inc.i.i
  %arrayidx.i.i = getelementptr %struct.tracing_map, ptr %map, i32 0, i32 11, i32 %inc.i.i, !dbg !1045
  %97 = ptrtoint ptr %arrayidx.i.i to i32, !dbg !1045
  call void @__asan_load4_noabort(i32 %97), !dbg !1045
  %98 = load i32, ptr %arrayidx.i.i, align 4, !dbg !1045
  %cmp1.i.i = icmp eq i32 %98, %92, !dbg !1046
  br i1 %cmp1.i.i, label %is_key.exit.i, label %for.body.i.i.for.inc.i.i_crit_edge, !dbg !1045, !llvm.loop !1047

for.body.i.i.for.inc.i.i_crit_edge:               ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1045
  br label %for.inc.i.i, !dbg !1045

for.inc.i.i:                                      ; preds = %for.body.i.i.for.inc.i.i_crit_edge, %for.body.i.preheader.i.for.inc.i.i_crit_edge
  %i.010.i79.i = phi i32 [ %inc.i.i, %for.body.i.i.for.inc.i.i_crit_edge ], [ 0, %for.body.i.preheader.i.for.inc.i.i_crit_edge ]
  %gcov_ctr2.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !1049
  %99 = add i64 %gcov_ctr2.i.i, 1, !dbg !1049
  store i64 %99, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !1049
  %inc.i.i = add nuw i32 %i.010.i79.i, 1, !dbg !1049
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %94), !dbg !1042
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %94, !dbg !1042
  br i1 %exitcond.not.i.i, label %for.inc.i.i.if.else.i.sink.split_crit_edge, label %for.body.i.i, !dbg !1044, !llvm.loop !1050

for.inc.i.i.if.else.i.sink.split_crit_edge:       ; preds = %for.inc.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1044
  br label %if.else.i.sink.split, !dbg !1044

is_key.exit.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i.i, i32 %94), !dbg !1042
  %cmp.i.le.i = icmp ult i32 %inc.i.i, %94, !dbg !1042
  %gcov_ctr3.i.i = load i64, ptr @__llvm_gcov_ctr.48, align 16, !dbg !1051
  %100 = add i64 %gcov_ctr3.i.i, 1, !dbg !1051
  store i64 %100, ptr @__llvm_gcov_ctr.48, align 16, !dbg !1051
  br i1 %cmp.i.le.i, label %is_key.exit.i.if.end.i102_crit_edge, label %is_key.exit.i.if.else.i_crit_edge, !dbg !1052

is_key.exit.i.if.else.i_crit_edge:                ; preds = %is_key.exit.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1052
  br label %if.else.i, !dbg !1052

is_key.exit.i.if.end.i102_crit_edge:              ; preds = %is_key.exit.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1052
  br label %if.end.i102, !dbg !1052

if.else.i.sink.split:                             ; preds = %for.inc.i.i.if.else.i.sink.split_crit_edge, %if.then33.if.else.i.sink.split_crit_edge
  %gcov_ctr3.i.i153 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 2), align 16, !dbg !1051
  %101 = add i64 %gcov_ctr3.i.i153, 1, !dbg !1051
  store i64 %101, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 2), align 16, !dbg !1051
  br label %if.else.i, !dbg !1053

if.else.i:                                        ; preds = %if.else.i.sink.split, %is_key.exit.i.if.else.i_crit_edge
  %gcov_ctr.i101 = load i64, ptr @__llvm_gcov_ctr.52, align 16, !dbg !1053
  %102 = add i64 %gcov_ctr.i101, 1, !dbg !1053
  store i64 %102, ptr @__llvm_gcov_ctr.52, align 16, !dbg !1053
  br label %if.end.i102

if.end.thread.i:                                  ; preds = %for.body.i.preheader.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1051
  %gcov_ctr3.i.c.i = load i64, ptr @__llvm_gcov_ctr.48, align 16, !dbg !1051
  %103 = add i64 %gcov_ctr3.i.c.i, 1, !dbg !1051
  store i64 %103, ptr @__llvm_gcov_ctr.48, align 16, !dbg !1051
  br label %for.body.i53.preheader.i, !dbg !1054

if.end.i102:                                      ; preds = %if.else.i, %is_key.exit.i.if.end.i102_crit_edge
  %primary_fn.0.i = phi ptr [ @cmp_entries_sum, %if.else.i ], [ @cmp_entries_key, %is_key.exit.i.if.end.i102_crit_edge ], !dbg !1056
  br i1 %cmp9.not.i.i, label %if.end.i102.if.else4.i.sink.split_crit_edge, label %if.end.i102.for.body.i53.preheader.i_crit_edge, !dbg !1054

if.end.i102.for.body.i53.preheader.i_crit_edge:   ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1054
  br label %for.body.i53.preheader.i, !dbg !1054

if.end.i102.if.else4.i.sink.split_crit_edge:      ; preds = %if.end.i102
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1054
  br label %if.else4.i.sink.split, !dbg !1054

for.body.i53.preheader.i:                         ; preds = %if.end.i102.for.body.i53.preheader.i_crit_edge, %if.end.thread.i
  %primary_fn.098.i = phi ptr [ @cmp_entries_key, %if.end.thread.i ], [ %primary_fn.0.i, %if.end.i102.for.body.i53.preheader.i_crit_edge ]
  %104 = ptrtoint ptr %arrayidx35 to i32, !dbg !1057
  call void @__asan_load4_noabort(i32 %104), !dbg !1057
  %105 = load i32, ptr %arrayidx35, align 4, !dbg !1057
  %arrayidx.i5183.i = getelementptr %struct.tracing_map, ptr %map, i32 0, i32 11, i32 0, !dbg !1058
  %106 = ptrtoint ptr %arrayidx.i5183.i to i32, !dbg !1058
  call void @__asan_load4_noabort(i32 %106), !dbg !1058
  %107 = load i32, ptr %arrayidx.i5183.i, align 4, !dbg !1058
  call void @__sanitizer_cov_trace_cmp4(i32 %107, i32 %105), !dbg !1059
  %cmp1.i5284.i = icmp eq i32 %107, %105, !dbg !1059
  br i1 %cmp1.i5284.i, label %if.then3.critedge.i, label %for.body.i53.preheader.i.for.inc.i58.i_crit_edge, !dbg !1058

for.body.i53.preheader.i.for.inc.i58.i_crit_edge: ; preds = %for.body.i53.preheader.i
  br label %for.inc.i58.i, !dbg !1058

for.body.i53.i:                                   ; preds = %for.inc.i58.i
  %arrayidx.i51.i = getelementptr %struct.tracing_map, ptr %map, i32 0, i32 11, i32 %inc.i55.i, !dbg !1058
  %108 = ptrtoint ptr %arrayidx.i51.i to i32, !dbg !1058
  call void @__asan_load4_noabort(i32 %108), !dbg !1058
  %109 = load i32, ptr %arrayidx.i51.i, align 4, !dbg !1058
  %cmp1.i52.i = icmp eq i32 %109, %105, !dbg !1059
  br i1 %cmp1.i52.i, label %is_key.exit62.i, label %for.body.i53.i.for.inc.i58.i_crit_edge, !dbg !1058, !llvm.loop !1060

for.body.i53.i.for.inc.i58.i_crit_edge:           ; preds = %for.body.i53.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1058
  br label %for.inc.i58.i, !dbg !1058

for.inc.i58.i:                                    ; preds = %for.body.i53.i.for.inc.i58.i_crit_edge, %for.body.i53.preheader.i.for.inc.i58.i_crit_edge
  %i.010.i5085.i = phi i32 [ %inc.i55.i, %for.body.i53.i.for.inc.i58.i_crit_edge ], [ 0, %for.body.i53.preheader.i.for.inc.i58.i_crit_edge ]
  %gcov_ctr2.i54.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !1062
  %110 = add i64 %gcov_ctr2.i54.i, 1, !dbg !1062
  store i64 %110, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 1), align 8, !dbg !1062
  %inc.i55.i = add nuw i32 %i.010.i5085.i, 1, !dbg !1062
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i55.i, i32 %94), !dbg !1063
  %exitcond.not.i57.i = icmp eq i32 %inc.i55.i, %94, !dbg !1063
  br i1 %exitcond.not.i57.i, label %for.inc.i58.i.if.else4.i.sink.split_crit_edge, label %for.body.i53.i, !dbg !1054, !llvm.loop !1064

for.inc.i58.i.if.else4.i.sink.split_crit_edge:    ; preds = %for.inc.i58.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1054
  br label %if.else4.i.sink.split, !dbg !1054

is_key.exit62.i:                                  ; preds = %for.body.i53.i
  call void @__sanitizer_cov_trace_cmp4(i32 %inc.i55.i, i32 %94), !dbg !1063
  %cmp.i56.le.i = icmp ult i32 %inc.i55.i, %94, !dbg !1063
  %gcov_ctr3.i61.i = load i64, ptr @__llvm_gcov_ctr.48, align 16, !dbg !1065
  %111 = add i64 %gcov_ctr3.i61.i, 1, !dbg !1065
  store i64 %111, ptr @__llvm_gcov_ctr.48, align 16, !dbg !1065
  br i1 %cmp.i56.le.i, label %is_key.exit62.i.if.then3.i_crit_edge, label %is_key.exit62.i.if.else4.i_crit_edge, !dbg !1066

is_key.exit62.i.if.else4.i_crit_edge:             ; preds = %is_key.exit62.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1066
  br label %if.else4.i, !dbg !1066

is_key.exit62.i.if.then3.i_crit_edge:             ; preds = %is_key.exit62.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1066
  br label %if.then3.i, !dbg !1066

if.then3.critedge.i:                              ; preds = %for.body.i53.preheader.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1065
  %gcov_ctr3.i61.c.i = load i64, ptr @__llvm_gcov_ctr.48, align 16, !dbg !1065
  %112 = add i64 %gcov_ctr3.i61.c.i, 1, !dbg !1065
  store i64 %112, ptr @__llvm_gcov_ctr.48, align 16, !dbg !1065
  br label %if.then3.i, !dbg !1066

if.then3.i:                                       ; preds = %if.then3.critedge.i, %is_key.exit62.i.if.then3.i_crit_edge
  %gcov_ctr23.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !1067
  %113 = add i64 %gcov_ctr23.i, 1, !dbg !1067
  store i64 %113, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 1), align 8, !dbg !1067
  br label %if.end5.i, !dbg !1068

if.else4.i.sink.split:                            ; preds = %for.inc.i58.i.if.else4.i.sink.split_crit_edge, %if.end.i102.if.else4.i.sink.split_crit_edge
  %primary_fn.097.i.ph = phi ptr [ %primary_fn.0.i, %if.end.i102.if.else4.i.sink.split_crit_edge ], [ %primary_fn.098.i, %for.inc.i58.i.if.else4.i.sink.split_crit_edge ]
  %gcov_ctr3.i61.i157 = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 2), align 16, !dbg !1065
  %114 = add i64 %gcov_ctr3.i61.i157, 1, !dbg !1065
  store i64 %114, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.48, i32 0, i32 2), align 16, !dbg !1065
  br label %if.else4.i, !dbg !1069

if.else4.i:                                       ; preds = %if.else4.i.sink.split, %is_key.exit62.i.if.else4.i_crit_edge
  %primary_fn.097.i = phi ptr [ %primary_fn.098.i, %is_key.exit62.i.if.else4.i_crit_edge ], [ %primary_fn.097.i.ph, %if.else4.i.sink.split ]
  %gcov_ctr24.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !1069
  %115 = add i64 %gcov_ctr24.i, 1, !dbg !1069
  store i64 %115, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 2), align 16, !dbg !1069
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else4.i, %if.then3.i
  %primary_fn.096.i = phi ptr [ %primary_fn.098.i, %if.then3.i ], [ %primary_fn.097.i, %if.else4.i ]
  %secondary_fn.0.i = phi ptr [ @cmp_entries_key, %if.then3.i ], [ @cmp_entries_sum, %if.else4.i ], !dbg !1056
  %sub.i = add i32 %n_entries.1125, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i), !dbg !1070
  %cmp90.not.i = icmp eq i32 %sub.i, 0, !dbg !1070
  br i1 %cmp90.not.i, label %if.end5.i.if.end36_crit_edge, label %for.body.lr.ph.i, !dbg !1071

if.end5.i.if.end36_crit_edge:                     ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1071
  br label %if.end36, !dbg !1071

for.body.lr.ph.i:                                 ; preds = %if.end5.i
  %sub10.i = add i32 %n_entries.1125, -2
  br label %for.body.i105, !dbg !1071

for.body.i105:                                    ; preds = %for.inc.i110.for.body.i105_crit_edge, %for.body.lr.ph.i
  %n_sub.094.i = phi i32 [ 1, %for.body.lr.ph.i ], [ %n_sub.276.i, %for.inc.i110.for.body.i105_crit_edge ]
  %start.092.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %start.175.i, %for.inc.i110.for.body.i105_crit_edge ]
  %i.091.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %add.i, %for.inc.i110.for.body.i105_crit_edge ]
  %arrayidx.i103 = getelementptr ptr, ptr %call1, i32 %i.091.i, !dbg !1072
  %add.i = add nuw i32 %i.091.i, 1, !dbg !1073
  %arrayidx6.i = getelementptr ptr, ptr %call1, i32 %add.i, !dbg !1074
  %call7.i = tail call i32 %primary_fn.096.i(ptr noundef %arrayidx.i103, ptr noundef %arrayidx6.i) #16, !dbg !1075, !callees !1076
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i), !dbg !1077
  %cmp8.i104 = icmp eq i32 %call7.i, 0, !dbg !1077
  br i1 %cmp8.i104, label %if.then9.i, label %for.body.i105.if.end14.i_crit_edge, !dbg !1075

for.body.i105.if.end14.i_crit_edge:               ; preds = %for.body.i105
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1075
  br label %if.end14.i, !dbg !1075

if.then9.i:                                       ; preds = %for.body.i105
  %inc.i106 = add i32 %n_sub.094.i, 1, !dbg !1078
  call void @__sanitizer_cov_trace_cmp4(i32 %i.091.i, i32 %sub10.i), !dbg !1079
  %cmp11.i107 = icmp ult i32 %i.091.i, %sub10.i, !dbg !1079
  br i1 %cmp11.i107, label %if.then12.i, label %if.end13.i, !dbg !1080

if.then12.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1029
  %gcov_ctr25.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 3), align 8
  %116 = add i64 %gcov_ctr25.i, 1
  store i64 %116, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 3), align 8
  br label %for.inc.i110, !dbg !1081

if.end13.i:                                       ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1082
  %gcov_ctr26.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 4), align 16, !dbg !1082
  %117 = add i64 %gcov_ctr26.i, 1, !dbg !1082
  store i64 %117, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 4), align 16, !dbg !1082
  br label %if.end14.i, !dbg !1082

if.end14.i:                                       ; preds = %if.end13.i, %for.body.i105.if.end14.i_crit_edge
  %n_sub.1.i = phi i32 [ %inc.i106, %if.end13.i ], [ %n_sub.094.i, %for.body.i105.if.end14.i_crit_edge ], !dbg !1056
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %n_sub.1.i), !dbg !1083
  %cmp15.i = icmp ult i32 %n_sub.1.i, 2, !dbg !1083
  br i1 %cmp15.i, label %if.then16.i, label %cleanup.cont.i, !dbg !1084

if.then16.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1085
  %gcov_ctr27.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 5), align 8, !dbg !1085
  %118 = add i64 %gcov_ctr27.i, 1, !dbg !1085
  store i64 %118, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 5), align 8, !dbg !1085
  br label %for.inc.i110, !dbg !1086

cleanup.cont.i:                                   ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1087
  %gcov_ctr28.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 6), align 16, !dbg !1087
  %119 = add i64 %gcov_ctr28.i, 1, !dbg !1087
  store i64 %119, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 6), align 16, !dbg !1087
  %gcov_ctr.i.i108 = load i64, ptr @__llvm_gcov_ctr.51, align 8
  %120 = add i64 %gcov_ctr.i.i108, 1
  store i64 %120, ptr @__llvm_gcov_ctr.51, align 8
  %121 = ptrtoint ptr %arrayidx35 to i32, !dbg !1088
  call void @__asan_loadN_noabort(i32 %121, i32 8), !dbg !1088
  %122 = load i64, ptr %arrayidx35, align 4, !dbg !1088
  %123 = ptrtoint ptr %sort_key1.i to i32, !dbg !1088
  call void @__asan_storeN_noabort(i32 %123, i32 8), !dbg !1088
  store i64 %122, ptr %sort_key1.i, align 4, !dbg !1088
  %arrayidx19.i = getelementptr ptr, ptr %call1, i32 %start.092.i, !dbg !1090
  tail call void @sort(ptr noundef %arrayidx19.i, i32 noundef %n_sub.1.i, i32 noundef 4, ptr noundef nonnull %secondary_fn.0.i, ptr noundef null) #16, !dbg !1091
  %gcov_ctr.i63.i = load i64, ptr @__llvm_gcov_ctr.51, align 8
  %124 = add i64 %gcov_ctr.i63.i, 1
  store i64 %124, ptr @__llvm_gcov_ctr.51, align 8
  %125 = ptrtoint ptr %sort_keys to i32, !dbg !1092
  call void @__asan_loadN_noabort(i32 %125, i32 8), !dbg !1092
  %126 = load i64, ptr %sort_keys, align 4, !dbg !1092
  %127 = ptrtoint ptr %sort_key1.i to i32, !dbg !1092
  call void @__asan_storeN_noabort(i32 %127, i32 8), !dbg !1092
  store i64 %126, ptr %sort_key1.i, align 4, !dbg !1092
  %gcov_ctr30.i = load i64, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 8), align 16, !dbg !1094
  %128 = add i64 %gcov_ctr30.i, 1, !dbg !1094
  store i64 %128, ptr getelementptr inbounds ([9 x i64], ptr @__llvm_gcov_ctr.52, i32 0, i32 8), align 16, !dbg !1094
  br label %for.inc.i110, !dbg !1094

for.inc.i110:                                     ; preds = %cleanup.cont.i, %if.then16.i, %if.then12.i
  %n_sub.276.i = phi i32 [ 1, %cleanup.cont.i ], [ 1, %if.then16.i ], [ %inc.i106, %if.then12.i ]
  %start.175.i = phi i32 [ %add.i, %cleanup.cont.i ], [ %add.i, %if.then16.i ], [ %start.092.i, %if.then12.i ]
  %exitcond.not.i109 = icmp eq i32 %add.i, %sub.i, !dbg !1070
  br i1 %exitcond.not.i109, label %for.inc.i110.if.end36_crit_edge, label %for.inc.i110.for.body.i105_crit_edge, !dbg !1071, !llvm.loop !1095

for.inc.i110.for.body.i105_crit_edge:             ; preds = %for.inc.i110
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1071
  br label %for.body.i105, !dbg !1071

for.inc.i110.if.end36_crit_edge:                  ; preds = %for.inc.i110
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1071
  br label %if.end36, !dbg !1071

if.end36:                                         ; preds = %for.inc.i110.if.end36_crit_edge, %if.end5.i.if.end36_crit_edge, %if.end30.if.end36_crit_edge
  %129 = ptrtoint ptr %sort_entries to i32, !dbg !1096
  call void @__asan_store4_noabort(i32 %129), !dbg !1096
  store ptr %call1, ptr %sort_entries, align 4, !dbg !1096
  br label %cleanup37, !dbg !1097

free:                                             ; preds = %if.then22, %cleanup
  %n_entries.2 = phi i32 [ %inc120, %cleanup ], [ 0, %if.then22 ], !dbg !1029
  %ret.2 = phi i32 [ -12, %cleanup ], [ 0, %if.then22 ], !dbg !1029
  %gcov_ctr54 = load i64, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 12), align 16, !dbg !1098
  %130 = add i64 %gcov_ctr54, 1, !dbg !1098
  store i64 %130, ptr getelementptr inbounds ([13 x i64], ptr @__llvm_gcov_ctr.44, i32 0, i32 12), align 16, !dbg !1098
  %gcov_ctr.i112 = load i64, ptr @__llvm_gcov_ctr.42, align 8
  %131 = add i64 %gcov_ctr.i112, 1
  store i64 %131, ptr @__llvm_gcov_ctr.42, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_entries.2), !dbg !1099
  %cmp5.not.i = icmp eq i32 %n_entries.2, 0, !dbg !1099
  br i1 %cmp5.not.i, label %free.tracing_map_destroy_sort_entries.exit_crit_edge, label %free.for.body.i114_crit_edge, !dbg !1101

free.for.body.i114_crit_edge:                     ; preds = %free
  br label %for.body.i114, !dbg !1101

free.tracing_map_destroy_sort_entries.exit_crit_edge: ; preds = %free
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1101
  br label %tracing_map_destroy_sort_entries.exit, !dbg !1101

for.body.i114:                                    ; preds = %destroy_sort_entry.exit.i.for.body.i114_crit_edge, %free.for.body.i114_crit_edge
  %i.06.i = phi i32 [ %inc.i116, %destroy_sort_entry.exit.i.for.body.i114_crit_edge ], [ 0, %free.for.body.i114_crit_edge ]
  %arrayidx.i113 = getelementptr ptr, ptr %call1, i32 %i.06.i, !dbg !1102
  %132 = ptrtoint ptr %arrayidx.i113 to i32, !dbg !1102
  call void @__asan_load4_noabort(i32 %132), !dbg !1102
  %133 = load ptr, ptr %arrayidx.i113, align 4, !dbg !1102
  %tobool.not.i.i = icmp eq ptr %133, null, !dbg !1103
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.i.i, !dbg !1105

if.then.i.i:                                      ; preds = %for.body.i114
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1106
  %gcov_ctr5.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 1), align 8, !dbg !1106
  %134 = add i64 %gcov_ctr5.i.i, 1, !dbg !1106
  store i64 %134, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 1), align 8, !dbg !1106
  br label %destroy_sort_entry.exit.i, !dbg !1106

if.end.i.i:                                       ; preds = %for.body.i114
  %gcov_ctr.i.i115 = load i64, ptr @__llvm_gcov_ctr.43, align 16, !dbg !1107
  %135 = add i64 %gcov_ctr.i.i115, 1, !dbg !1107
  store i64 %135, ptr @__llvm_gcov_ctr.43, align 16, !dbg !1107
  %elt_copied.i.i = getelementptr inbounds %struct.tracing_map_sort_entry, ptr %133, i32 0, i32 2, !dbg !1108
  %136 = ptrtoint ptr %elt_copied.i.i to i32, !dbg !1108
  call void @__asan_load1_noabort(i32 %136), !dbg !1108
  %137 = load i8, ptr %elt_copied.i.i, align 4, !dbg !1108, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137), !dbg !1108
  %tobool2.not.i.i = icmp eq i8 %137, 0, !dbg !1108
  br i1 %tobool2.not.i.i, label %if.end.i.i.if.end4.i.i_crit_edge, label %if.then3.i.i, !dbg !1107

if.end.i.i.if.end4.i.i_crit_edge:                 ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1107
  br label %if.end4.i.i, !dbg !1107

if.then3.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1109
  %gcov_ctr6.i.i = load i64, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 2), align 16, !dbg !1109
  %138 = add i64 %gcov_ctr6.i.i, 1, !dbg !1109
  store i64 %138, ptr getelementptr inbounds ([3 x i64], ptr @__llvm_gcov_ctr.43, i32 0, i32 2), align 16, !dbg !1109
  %elt.i.i = getelementptr inbounds %struct.tracing_map_sort_entry, ptr %133, i32 0, i32 1, !dbg !1110
  %139 = ptrtoint ptr %elt.i.i to i32, !dbg !1110
  call void @__asan_load4_noabort(i32 %139), !dbg !1110
  %140 = load ptr, ptr %elt.i.i, align 4, !dbg !1110
  tail call fastcc void @tracing_map_elt_free(ptr noundef %140) #16, !dbg !1111
  br label %if.end4.i.i, !dbg !1111

if.end4.i.i:                                      ; preds = %if.then3.i.i, %if.end.i.i.if.end4.i.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %133) #16, !dbg !1112
  br label %destroy_sort_entry.exit.i, !dbg !1113

destroy_sort_entry.exit.i:                        ; preds = %if.end4.i.i, %if.then.i.i
  %gcov_ctr1.i = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !1114
  %141 = add i64 %gcov_ctr1.i, 1, !dbg !1114
  store i64 %141, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.42, i32 0, i32 1), align 8, !dbg !1114
  %inc.i116 = add nuw i32 %i.06.i, 1, !dbg !1114
  %exitcond.not.i117 = icmp eq i32 %inc.i116, %n_entries.2, !dbg !1099
  br i1 %exitcond.not.i117, label %destroy_sort_entry.exit.i.tracing_map_destroy_sort_entries.exit_crit_edge, label %destroy_sort_entry.exit.i.for.body.i114_crit_edge, !dbg !1101, !llvm.loop !1115

destroy_sort_entry.exit.i.for.body.i114_crit_edge: ; preds = %destroy_sort_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1101
  br label %for.body.i114, !dbg !1101

destroy_sort_entry.exit.i.tracing_map_destroy_sort_entries.exit_crit_edge: ; preds = %destroy_sort_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1101
  br label %tracing_map_destroy_sort_entries.exit, !dbg !1101

tracing_map_destroy_sort_entries.exit:            ; preds = %destroy_sort_entry.exit.i.tracing_map_destroy_sort_entries.exit_crit_edge, %free.tracing_map_destroy_sort_entries.exit_crit_edge
  tail call void @vfree(ptr noundef nonnull %call1) #16, !dbg !1117
  br label %cleanup37, !dbg !1118

cleanup37:                                        ; preds = %tracing_map_destroy_sort_entries.exit, %if.end36, %if.then25, %if.then
  %retval.0 = phi i32 [ %ret.2, %tracing_map_destroy_sort_entries.exit ], [ 1, %if.then25 ], [ %n_entries.1125, %if.end36 ], [ -12, %if.then ]
  ret i32 %retval.0, !dbg !1119
}

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @vmalloc(i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmp_entries_key(ptr nocapture noundef readonly %A, ptr nocapture noundef readonly %B) #0 align 64 !dbg !1120 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1121
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.49, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.49, align 8
  %1 = ptrtoint ptr %A to i32, !dbg !1122
  call void @__asan_load4_noabort(i32 %1), !dbg !1122
  %2 = load ptr, ptr %A, align 4, !dbg !1122
  %3 = ptrtoint ptr %B to i32, !dbg !1123
  call void @__asan_load4_noabort(i32 %3), !dbg !1123
  %4 = load ptr, ptr %B, align 4, !dbg !1123
  %elt = getelementptr inbounds %struct.tracing_map_sort_entry, ptr %2, i32 0, i32 1, !dbg !1124
  %5 = ptrtoint ptr %elt to i32, !dbg !1124
  call void @__asan_load4_noabort(i32 %5), !dbg !1124
  %6 = load ptr, ptr %elt, align 4, !dbg !1124
  %elt1 = getelementptr inbounds %struct.tracing_map_sort_entry, ptr %4, i32 0, i32 1, !dbg !1125
  %7 = ptrtoint ptr %elt1 to i32, !dbg !1125
  call void @__asan_load4_noabort(i32 %7), !dbg !1125
  %8 = load ptr, ptr %elt1, align 4, !dbg !1125
  %9 = ptrtoint ptr %6 to i32, !dbg !1126
  call void @__asan_load4_noabort(i32 %9), !dbg !1126
  %10 = load ptr, ptr %6, align 4, !dbg !1126
  %sort_key2 = getelementptr inbounds %struct.tracing_map, ptr %10, i32 0, i32 13, !dbg !1127
  %fields = getelementptr inbounds %struct.tracing_map_elt, ptr %6, i32 0, i32 1, !dbg !1128
  %11 = ptrtoint ptr %fields to i32, !dbg !1128
  call void @__asan_load4_noabort(i32 %11), !dbg !1128
  %12 = load ptr, ptr %fields, align 4, !dbg !1128
  %13 = ptrtoint ptr %sort_key2 to i32, !dbg !1129
  call void @__asan_load4_noabort(i32 %13), !dbg !1129
  %14 = load i32, ptr %sort_key2, align 4, !dbg !1129
  %arrayidx = getelementptr %struct.tracing_map_field, ptr %12, i32 %14, !dbg !1130
  %15 = ptrtoint ptr %arrayidx to i32, !dbg !1131
  call void @__asan_load4_noabort(i32 %15), !dbg !1131
  %16 = load ptr, ptr %arrayidx, align 8, !dbg !1131
  %key = getelementptr inbounds %struct.tracing_map_elt, ptr %6, i32 0, i32 4, !dbg !1132
  %17 = ptrtoint ptr %key to i32, !dbg !1132
  call void @__asan_load4_noabort(i32 %17), !dbg !1132
  %18 = load ptr, ptr %key, align 4, !dbg !1132
  %19 = getelementptr %struct.tracing_map_field, ptr %12, i32 %14, i32 1, !dbg !1133
  %20 = ptrtoint ptr %19 to i32, !dbg !1133
  call void @__asan_load4_noabort(i32 %20), !dbg !1133
  %21 = load i32, ptr %19, align 8, !dbg !1133
  %add.ptr = getelementptr i8, ptr %18, i32 %21, !dbg !1134
  %key4 = getelementptr inbounds %struct.tracing_map_elt, ptr %8, i32 0, i32 4, !dbg !1135
  %22 = ptrtoint ptr %key4 to i32, !dbg !1135
  call void @__asan_load4_noabort(i32 %22), !dbg !1135
  %23 = load ptr, ptr %key4, align 4, !dbg !1135
  %add.ptr5 = getelementptr i8, ptr %23, i32 %21, !dbg !1136
  %call = tail call i32 %16(ptr noundef %add.ptr, ptr noundef %add.ptr5) #16, !dbg !1137
  %descending = getelementptr inbounds %struct.tracing_map, ptr %10, i32 0, i32 13, i32 1, !dbg !1138
  %24 = ptrtoint ptr %descending to i32, !dbg !1138
  call void @__asan_load1_noabort(i32 %24), !dbg !1138
  %25 = load i8, ptr %descending, align 4, !dbg !1138, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25), !dbg !1138
  %tobool.not = icmp eq i8 %25, 0, !dbg !1138
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !dbg !1139

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1139
  br label %if.end, !dbg !1139

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1140
  %gcov_ctr6 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 1), align 8, !dbg !1140
  %26 = add i64 %gcov_ctr6, 1, !dbg !1140
  store i64 %26, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.49, i32 0, i32 1), align 8, !dbg !1140
  %sub = sub i32 0, %call, !dbg !1141
  br label %if.end, !dbg !1142

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %sub, %if.then ], [ %call, %entry.if.end_crit_edge ], !dbg !1143
  ret i32 %ret.0, !dbg !1144
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cmp_entries_sum(ptr nocapture noundef readonly %A, ptr nocapture noundef readonly %B) #0 align 64 !dbg !1145 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1146
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.50, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.50, align 8
  %1 = ptrtoint ptr %A to i32, !dbg !1147
  call void @__asan_load4_noabort(i32 %1), !dbg !1147
  %2 = load ptr, ptr %A, align 4, !dbg !1147
  %3 = ptrtoint ptr %B to i32, !dbg !1148
  call void @__asan_load4_noabort(i32 %3), !dbg !1148
  %4 = load ptr, ptr %B, align 4, !dbg !1148
  %elt = getelementptr inbounds %struct.tracing_map_sort_entry, ptr %2, i32 0, i32 1, !dbg !1149
  %5 = ptrtoint ptr %elt to i32, !dbg !1149
  call void @__asan_load4_noabort(i32 %5), !dbg !1149
  %6 = load ptr, ptr %elt, align 4, !dbg !1149
  %elt1 = getelementptr inbounds %struct.tracing_map_sort_entry, ptr %4, i32 0, i32 1, !dbg !1150
  %7 = ptrtoint ptr %elt1 to i32, !dbg !1150
  call void @__asan_load4_noabort(i32 %7), !dbg !1150
  %8 = load ptr, ptr %elt1, align 4, !dbg !1150
  %9 = ptrtoint ptr %6 to i32, !dbg !1151
  call void @__asan_load4_noabort(i32 %9), !dbg !1151
  %10 = load ptr, ptr %6, align 4, !dbg !1151
  %sort_key2 = getelementptr inbounds %struct.tracing_map, ptr %10, i32 0, i32 13, !dbg !1152
  %fields = getelementptr inbounds %struct.tracing_map_elt, ptr %6, i32 0, i32 1, !dbg !1153
  %11 = ptrtoint ptr %fields to i32, !dbg !1153
  call void @__asan_load4_noabort(i32 %11), !dbg !1153
  %12 = load ptr, ptr %fields, align 4, !dbg !1153
  %13 = ptrtoint ptr %sort_key2 to i32, !dbg !1154
  call void @__asan_load4_noabort(i32 %13), !dbg !1154
  %14 = load i32, ptr %sort_key2, align 4, !dbg !1154
  %arrayidx = getelementptr %struct.tracing_map_field, ptr %12, i32 %14, !dbg !1155
  %15 = ptrtoint ptr %arrayidx to i32, !dbg !1156
  call void @__asan_load4_noabort(i32 %15), !dbg !1156
  %16 = load ptr, ptr %arrayidx, align 8, !dbg !1156
  %17 = getelementptr %struct.tracing_map_field, ptr %12, i32 %14, i32 1, !dbg !1157
  %fields7 = getelementptr inbounds %struct.tracing_map_elt, ptr %8, i32 0, i32 1, !dbg !1158
  %18 = ptrtoint ptr %fields7 to i32, !dbg !1158
  call void @__asan_load4_noabort(i32 %18), !dbg !1158
  %19 = load ptr, ptr %fields7, align 4, !dbg !1158
  %20 = getelementptr %struct.tracing_map_field, ptr %19, i32 %14, i32 1, !dbg !1159
  %call = tail call i32 %16(ptr noundef %17, ptr noundef %20) #16, !dbg !1160
  %descending = getelementptr inbounds %struct.tracing_map, ptr %10, i32 0, i32 13, i32 1, !dbg !1161
  %21 = ptrtoint ptr %descending to i32, !dbg !1161
  call void @__asan_load1_noabort(i32 %21), !dbg !1161
  %22 = load i8, ptr %descending, align 4, !dbg !1161, !range !60
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22), !dbg !1161
  %tobool.not = icmp eq i8 %22, 0, !dbg !1161
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !dbg !1162

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1162
  br label %if.end, !dbg !1162

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1163
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !1163
  %23 = add i64 %gcov_ctr10, 1, !dbg !1163
  store i64 %23, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.50, i32 0, i32 1), align 8, !dbg !1163
  %sub = sub i32 0, %call, !dbg !1164
  br label %if.end, !dbg !1165

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ %sub, %if.then ], [ %call, %entry.if.end_crit_edge ], !dbg !1166
  ret i32 %ret.0, !dbg !1167
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @sort(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_add(i64 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @generic_atomic64_read(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @generic_atomic64_set(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @tracing_map_elt_free(ptr noundef %elt) unnamed_addr #0 align 64 !dbg !1168 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1169
  %tobool.not = icmp eq ptr %elt, null, !dbg !1170
  br i1 %tobool.not, label %if.then, label %if.end, !dbg !1171

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1172
  %gcov_ctr10 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 1), align 8, !dbg !1172
  %0 = add i64 %gcov_ctr10, 1, !dbg !1172
  store i64 %0, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 1), align 8, !dbg !1172
  br label %return, !dbg !1172

if.end:                                           ; preds = %entry
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.69, align 16, !dbg !1173
  %1 = add i64 %gcov_ctr, 1, !dbg !1173
  store i64 %1, ptr @__llvm_gcov_ctr.69, align 16, !dbg !1173
  %2 = ptrtoint ptr %elt to i32, !dbg !1174
  call void @__asan_load4_noabort(i32 %2), !dbg !1174
  %3 = load ptr, ptr %elt, align 4, !dbg !1174
  %ops = getelementptr inbounds %struct.tracing_map, ptr %3, i32 0, i32 7, !dbg !1175
  %4 = ptrtoint ptr %ops to i32, !dbg !1175
  call void @__asan_load4_noabort(i32 %4), !dbg !1175
  %5 = load ptr, ptr %ops, align 4, !dbg !1175
  %tobool1.not = icmp eq ptr %5, null, !dbg !1173
  br i1 %tobool1.not, label %if.end.if.end9_crit_edge, label %land.lhs.true, !dbg !1176

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1176
  br label %if.end9, !dbg !1176

land.lhs.true:                                    ; preds = %if.end
  %gcov_ctr11 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 2), align 16, !dbg !1177
  %6 = add i64 %gcov_ctr11, 1, !dbg !1177
  store i64 %6, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 2), align 16, !dbg !1177
  %7 = ptrtoint ptr %elt to i32, !dbg !1178
  call void @__asan_load4_noabort(i32 %7), !dbg !1178
  %8 = load ptr, ptr %elt, align 4, !dbg !1178
  %ops3 = getelementptr inbounds %struct.tracing_map, ptr %8, i32 0, i32 7, !dbg !1179
  %9 = ptrtoint ptr %ops3 to i32, !dbg !1179
  call void @__asan_load4_noabort(i32 %9), !dbg !1179
  %10 = load ptr, ptr %ops3, align 4, !dbg !1179
  %elt_free = getelementptr inbounds %struct.tracing_map_ops, ptr %10, i32 0, i32 1, !dbg !1180
  %11 = ptrtoint ptr %elt_free to i32, !dbg !1180
  call void @__asan_load4_noabort(i32 %11), !dbg !1180
  %12 = load ptr, ptr %elt_free, align 4, !dbg !1180
  %tobool4.not = icmp eq ptr %12, null, !dbg !1177
  br i1 %tobool4.not, label %land.lhs.true.if.end9_crit_edge, label %if.then5, !dbg !1173

land.lhs.true.if.end9_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1173
  br label %if.end9, !dbg !1173

if.then5:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1181
  %gcov_ctr12 = load i64, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 3), align 8, !dbg !1181
  %13 = add i64 %gcov_ctr12, 1, !dbg !1181
  store i64 %13, ptr getelementptr inbounds ([4 x i64], ptr @__llvm_gcov_ctr.69, i32 0, i32 3), align 8, !dbg !1181
  %14 = ptrtoint ptr %elt to i32, !dbg !1182
  call void @__asan_load4_noabort(i32 %14), !dbg !1182
  %15 = load ptr, ptr %elt, align 4, !dbg !1182
  %ops7 = getelementptr inbounds %struct.tracing_map, ptr %15, i32 0, i32 7, !dbg !1183
  %16 = ptrtoint ptr %ops7 to i32, !dbg !1183
  call void @__asan_load4_noabort(i32 %16), !dbg !1183
  %17 = load ptr, ptr %ops7, align 4, !dbg !1183
  %elt_free8 = getelementptr inbounds %struct.tracing_map_ops, ptr %17, i32 0, i32 1, !dbg !1184
  %18 = ptrtoint ptr %elt_free8 to i32, !dbg !1184
  call void @__asan_load4_noabort(i32 %18), !dbg !1184
  %19 = load ptr, ptr %elt_free8, align 4, !dbg !1184
  tail call void %19(ptr noundef nonnull %elt) #16, !dbg !1181
  br label %if.end9, !dbg !1181

if.end9:                                          ; preds = %if.then5, %land.lhs.true.if.end9_crit_edge, %if.end.if.end9_crit_edge
  %fields = getelementptr inbounds %struct.tracing_map_elt, ptr %elt, i32 0, i32 1, !dbg !1185
  %20 = ptrtoint ptr %fields to i32, !dbg !1185
  call void @__asan_load4_noabort(i32 %20), !dbg !1185
  %21 = load ptr, ptr %fields, align 4, !dbg !1185
  tail call void @kfree(ptr noundef %21) #16, !dbg !1186
  %vars = getelementptr inbounds %struct.tracing_map_elt, ptr %elt, i32 0, i32 2, !dbg !1187
  %22 = ptrtoint ptr %vars to i32, !dbg !1187
  call void @__asan_load4_noabort(i32 %22), !dbg !1187
  %23 = load ptr, ptr %vars, align 4, !dbg !1187
  tail call void @kfree(ptr noundef %23) #16, !dbg !1188
  %var_set = getelementptr inbounds %struct.tracing_map_elt, ptr %elt, i32 0, i32 3, !dbg !1189
  %24 = ptrtoint ptr %var_set to i32, !dbg !1189
  call void @__asan_load4_noabort(i32 %24), !dbg !1189
  %25 = load ptr, ptr %var_set, align 4, !dbg !1189
  tail call void @kfree(ptr noundef %25) #16, !dbg !1190
  %key = getelementptr inbounds %struct.tracing_map_elt, ptr %elt, i32 0, i32 4, !dbg !1191
  %26 = ptrtoint ptr %key to i32, !dbg !1191
  call void @__asan_load4_noabort(i32 %26), !dbg !1191
  %27 = load ptr, ptr %key, align 4, !dbg !1191
  tail call void @kfree(ptr noundef %27) #16, !dbg !1192
  tail call void @kfree(ptr noundef nonnull %elt) #16, !dbg !1193
  br label %return, !dbg !1194

return:                                           ; preds = %if.end9, %if.then
  ret void, !dbg !1194
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_free(ptr noundef) local_unnamed_addr #5 section ".ref.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #9

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @kmemleak_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5 section ".ref.text"

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cmp_entries_dup(ptr nocapture noundef readonly %A, ptr nocapture noundef readonly %B) #2 align 64 !dbg !1195 {
entry:
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1196
  %gcov_ctr = load i64, ptr @__llvm_gcov_ctr.85, align 8
  %0 = add i64 %gcov_ctr, 1
  store i64 %0, ptr @__llvm_gcov_ctr.85, align 8
  %1 = ptrtoint ptr %A to i32, !dbg !1197
  call void @__asan_load4_noabort(i32 %1), !dbg !1197
  %2 = load ptr, ptr %A, align 4, !dbg !1197
  %3 = ptrtoint ptr %B to i32, !dbg !1198
  call void @__asan_load4_noabort(i32 %3), !dbg !1198
  %4 = load ptr, ptr %B, align 4, !dbg !1198
  %5 = ptrtoint ptr %2 to i32, !dbg !1199
  call void @__asan_load4_noabort(i32 %5), !dbg !1199
  %6 = load ptr, ptr %2, align 4, !dbg !1199
  %7 = ptrtoint ptr %4 to i32, !dbg !1200
  call void @__asan_load4_noabort(i32 %7), !dbg !1200
  %8 = load ptr, ptr %4, align 4, !dbg !1200
  %elt = getelementptr inbounds %struct.tracing_map_sort_entry, ptr %2, i32 0, i32 1, !dbg !1201
  %9 = ptrtoint ptr %elt to i32, !dbg !1201
  call void @__asan_load4_noabort(i32 %9), !dbg !1201
  %10 = load ptr, ptr %elt, align 4, !dbg !1201
  %11 = ptrtoint ptr %10 to i32, !dbg !1202
  call void @__asan_load4_noabort(i32 %11), !dbg !1202
  %12 = load ptr, ptr %10, align 4, !dbg !1202
  %13 = ptrtoint ptr %12 to i32, !dbg !1203
  call void @__asan_load4_noabort(i32 %13), !dbg !1203
  %14 = load i32, ptr %12, align 8, !dbg !1203
  %bcmp = tail call i32 @bcmp(ptr %6, ptr %8, i32 %14) #17, !dbg !1204
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp), !dbg !1204
  %tobool.not = icmp eq i32 %bcmp, 0, !dbg !1204
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then, !dbg !1204

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1204
  br label %if.end, !dbg !1204

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #15, !dbg !1205
  %gcov_ctr2 = load i64, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 1), align 8, !dbg !1205
  %15 = add i64 %gcov_ctr2, 1, !dbg !1205
  store i64 %15, ptr getelementptr inbounds ([2 x i64], ptr @__llvm_gcov_ctr.85, i32 0, i32 1), align 8, !dbg !1205
  br label %if.end, !dbg !1206

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 1, %if.then ], [ 0, %entry.if.end_crit_edge ], !dbg !1207
  ret i32 %ret.0, !dbg !1208
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_writeout() unnamed_addr #10 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @llvm_gcda_start_file(ptr nonnull @0, i32 875575338, i32 1697374820) #16
  br label %counter.loop.header

counter.loop.header:                              ; preds = %counter.loop.header.counter.loop.header_crit_edge, %entry
  %ctr_idx = phi i32 [ 0, %entry ], [ %5, %counter.loop.header.counter.loop.header_crit_edge ]
  %0 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx
  %ident = load i32, ptr %0, align 4
  %1 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 1
  %func_checkssum = load i32, ptr %1, align 4
  %2 = getelementptr inbounds %emit_function_args_ty, ptr @__llvm_internal_gcov_emit_function_args.0, i32 %ctr_idx, i32 2
  %cfg_checksum = load i32, ptr %2, align 4
  tail call void @llvm_gcda_emit_function(i32 %ident, i32 %func_checkssum, i32 %cfg_checksum) #16
  %3 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx
  %num_counters = load i32, ptr %3, align 8
  %4 = getelementptr inbounds %emit_arcs_args_ty, ptr @__llvm_internal_gcov_emit_arcs_args.0, i32 %ctr_idx, i32 1
  %counters = load ptr, ptr %4, align 4
  tail call void @llvm_gcda_emit_arcs(i32 %num_counters, ptr %counters) #16
  %5 = add nuw nsw i32 %ctr_idx, 1
  %exitcond.not = icmp eq i32 %5, 85
  br i1 %exitcond.not, label %file.loop.latch, label %counter.loop.header.counter.loop.header_crit_edge

counter.loop.header.counter.loop.header_crit_edge: ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #15
  br label %counter.loop.header

file.loop.latch:                                  ; preds = %counter.loop.header
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @llvm_gcda_summary_info() #16
  tail call void @llvm_gcda_end_file() #16
  ret void
}

declare void @llvm_gcda_start_file(ptr, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_function(i32, i32, i32) local_unnamed_addr

declare void @llvm_gcda_emit_arcs(i32, ptr) local_unnamed_addr

declare void @llvm_gcda_summary_info() local_unnamed_addr

declare void @llvm_gcda_end_file() local_unnamed_addr

; Function Attrs: mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync)
define internal void @__llvm_gcov_reset() unnamed_addr #11 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  store i64 0, ptr @__llvm_gcov_ctr, align 8
  store i64 0, ptr @__llvm_gcov_ctr.2, align 8
  store i64 0, ptr @__llvm_gcov_ctr.3, align 8
  store i64 0, ptr @__llvm_gcov_ctr.4, align 8
  store i64 0, ptr @__llvm_gcov_ctr.5, align 8
  store i64 0, ptr @__llvm_gcov_ctr.6, align 8
  store i64 0, ptr @__llvm_gcov_ctr.7, align 8
  store i64 0, ptr @__llvm_gcov_ctr.8, align 8
  store i64 0, ptr @__llvm_gcov_ctr.9, align 8
  store i64 0, ptr @__llvm_gcov_ctr.10, align 8
  store i64 0, ptr @__llvm_gcov_ctr.11, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.12, i8 0, i64 72, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.13, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.14, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.15, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.16, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.17, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.18, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.19, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.20, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.21, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.22, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.23, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.24, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.25, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.26, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) @__llvm_gcov_ctr.27, i8 0, i64 112, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.28, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.29, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.30, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.31, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.32, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.33, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.34, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.35, i8 0, i64 48, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.36, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.37, align 8
  store i64 0, ptr @__llvm_gcov_ctr.38, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) @__llvm_gcov_ctr.39, i8 0, i64 80, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.40, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.41, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.42, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.43, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(104) @__llvm_gcov_ctr.44, i8 0, i64 104, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.45, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.46, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) @__llvm_gcov_ctr.47, i8 0, i64 64, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.48, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.49, i8 0, i64 16, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.50, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.51, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.52, i8 0, i64 72, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.53, align 8
  store i64 0, ptr @__llvm_gcov_ctr.54, align 8
  store i64 0, ptr @__llvm_gcov_ctr.55, align 8
  store i64 0, ptr @__llvm_gcov_ctr.56, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) @__llvm_gcov_ctr.57, i8 0, i64 112, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.58, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.59, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.60, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.61, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.62, align 8
  store i64 0, ptr @__llvm_gcov_ctr.63, align 8
  store i64 0, ptr @__llvm_gcov_ctr.64, align 8
  store i64 0, ptr @__llvm_gcov_ctr.65, align 8
  store i64 0, ptr @__llvm_gcov_ctr.66, align 8
  store i64 0, ptr @__llvm_gcov_ctr.67, align 8
  store i64 0, ptr @__llvm_gcov_ctr.68, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.69, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.70, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.71, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(216) @__llvm_gcov_ctr.72, i8 0, i64 216, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.73, i8 0, i64 32, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) @__llvm_gcov_ctr.74, i8 0, i64 48, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.75, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.76, i8 0, i64 16, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.77, align 8
  store i64 0, ptr @__llvm_gcov_ctr.78, align 8
  store i64 0, ptr @__llvm_gcov_ctr.79, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) @__llvm_gcov_ctr.80, i8 0, i64 32, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.81, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) @__llvm_gcov_ctr.82, i8 0, i64 72, i1 false)
  store i64 0, ptr @__llvm_gcov_ctr.83, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @__llvm_gcov_ctr.84, i8 0, i64 24, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) @__llvm_gcov_ctr.85, i8 0, i64 16, i1 false)
  ret void
}

; Function Attrs: argmemonly nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #12

; Function Attrs: noinline nounwind uwtable(sync)
define internal void @__llvm_gcov_init() unnamed_addr #10 {
entry:
  call void @__sanitizer_cov_trace_pc() #15
  tail call void @llvm_gcov_init(ptr nonnull @__llvm_gcov_writeout, ptr nonnull @__llvm_gcov_reset) #16
  ret void
}

declare void @llvm_gcov_init(ptr, ptr) local_unnamed_addr

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #13

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #14 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @1 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #14 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @1 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { noinline nounwind uwtable(sync) }
attributes #11 = { mustprogress nofree noinline nosync nounwind willreturn writeonly uwtable(sync) }
attributes #12 = { argmemonly nofree nounwind willreturn writeonly }
attributes #13 = { argmemonly nofree nounwind readonly willreturn }
attributes #14 = { nounwind uwtable(sync) }
attributes #15 = { nomerge }
attributes #16 = { nounwind }
attributes #17 = { nobuiltin }
attributes #18 = { nobuiltin nounwind }
attributes #19 = { nounwind allocsize(2) }
attributes #20 = { nounwind allocsize(0) }

!llvm.dbg.cu = !{!0}
!llvm.asan.globals = !{!2, !4, !5}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.gcov = !{!14}
!llvm.ident = !{!15}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)", isOptimized: true, runtimeVersion: 0, emissionKind: NoDebug, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "../kernel/trace/tracing_map.c", directory: "/llk/linux-5.17/build_arm_allyes")
!2 = distinct !{null, !3, !"__already_done", i1 false, i1 false}
!3 = !{!"../kernel/trace/tracing_map.c", i32 984, i32 2}
!4 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!6 = !{i32 2, !"Debug Info Version", i32 3}
!7 = !{i32 1, !"wchar_size", i32 2}
!8 = !{i32 1, !"min_enum_size", i32 4}
!9 = !{i32 8, !"branch-target-enforcement", i32 0}
!10 = !{i32 8, !"sign-return-address", i32 0}
!11 = !{i32 8, !"sign-return-address-all", i32 0}
!12 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!13 = !{i32 7, !"uwtable", i32 1}
!14 = !{!"/llk/linux-5.17/build_arm_allyes/kernel/trace/tracing_map.gcno", !"/llk/linux-5.17/build_arm_allyes/kernel/trace/tracing_map.gcda", !0}
!15 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!16 = distinct !DISubprogram(name: "tracing_map_update_sum", scope: !1, file: !1, line: 39, type: !17, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!17 = !DISubroutineType(types: !18)
!18 = !{}
!19 = !DILocation(line: 40, scope: !16)
!20 = !DILocation(line: 41, column: 24, scope: !16)
!21 = !DILocation(line: 41, column: 34, scope: !16)
!22 = !DILocation(line: 101, column: 2, scope: !23, inlinedAt: !25)
!23 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !24, file: !24, line: 99, type: !17, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!24 = !DIFile(filename: "../include/linux/instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!25 = distinct !DILocation(line: 675, column: 2, scope: !26, inlinedAt: !28)
!26 = distinct !DISubprogram(name: "atomic64_add", scope: !27, file: !27, line: 673, type: !17, scopeLine: 674, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!27 = !DIFile(filename: "../include/linux/atomic/atomic-instrumented.h", directory: "/llk/linux-5.17/build_arm_allyes")
!28 = distinct !DILocation(line: 41, column: 2, scope: !16)
!29 = !DILocation(line: 676, column: 2, scope: !26, inlinedAt: !28)
!30 = !DILocation(line: 42, column: 1, scope: !16)
!31 = distinct !DISubprogram(name: "tracing_map_read_sum", scope: !1, file: !1, line: 56, type: !17, scopeLine: 57, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!32 = !DILocation(line: 57, scope: !31)
!33 = !DILocation(line: 58, column: 34, scope: !31)
!34 = !DILocation(line: 58, column: 44, scope: !31)
!35 = !DILocation(line: 71, column: 2, scope: !36, inlinedAt: !37)
!36 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !24, file: !24, line: 69, type: !17, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!37 = distinct !DILocation(line: 646, column: 2, scope: !38, inlinedAt: !39)
!38 = distinct !DISubprogram(name: "atomic64_read", scope: !27, file: !27, line: 644, type: !17, scopeLine: 645, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!39 = distinct !DILocation(line: 58, column: 14, scope: !31)
!40 = !DILocation(line: 647, column: 9, scope: !38, inlinedAt: !39)
!41 = !DILocation(line: 58, column: 2, scope: !31)
!42 = distinct !DISubprogram(name: "tracing_map_set_var", scope: !1, file: !1, line: 71, type: !17, scopeLine: 72, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!43 = !DILocation(line: 72, scope: !42)
!44 = !DILocation(line: 73, column: 21, scope: !42)
!45 = !DILocation(line: 73, column: 16, scope: !42)
!46 = !DILocation(line: 86, column: 2, scope: !47, inlinedAt: !48)
!47 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !24, file: !24, line: 84, type: !17, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!48 = distinct !DILocation(line: 660, column: 2, scope: !49, inlinedAt: !50)
!49 = distinct !DISubprogram(name: "atomic64_set", scope: !27, file: !27, line: 658, type: !17, scopeLine: 659, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!50 = distinct !DILocation(line: 73, column: 2, scope: !42)
!51 = !DILocation(line: 661, column: 2, scope: !49, inlinedAt: !50)
!52 = !DILocation(line: 74, column: 7, scope: !42)
!53 = !DILocation(line: 74, column: 2, scope: !42)
!54 = !DILocation(line: 74, column: 18, scope: !42)
!55 = !DILocation(line: 75, column: 1, scope: !42)
!56 = distinct !DISubprogram(name: "tracing_map_var_set", scope: !1, file: !1, line: 86, type: !17, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!57 = !DILocation(line: 87, scope: !56)
!58 = !DILocation(line: 88, column: 14, scope: !56)
!59 = !DILocation(line: 88, column: 9, scope: !56)
!60 = !{i8 0, i8 2}
!61 = !DILocation(line: 88, column: 2, scope: !56)
!62 = distinct !DISubprogram(name: "tracing_map_read_var", scope: !1, file: !1, line: 103, type: !17, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!63 = !DILocation(line: 104, scope: !62)
!64 = !DILocation(line: 105, column: 34, scope: !62)
!65 = !DILocation(line: 105, column: 29, scope: !62)
!66 = !DILocation(line: 71, column: 2, scope: !36, inlinedAt: !67)
!67 = distinct !DILocation(line: 646, column: 2, scope: !38, inlinedAt: !68)
!68 = distinct !DILocation(line: 105, column: 14, scope: !62)
!69 = !DILocation(line: 647, column: 9, scope: !38, inlinedAt: !68)
!70 = !DILocation(line: 105, column: 2, scope: !62)
!71 = distinct !DISubprogram(name: "tracing_map_read_var_once", scope: !1, file: !1, line: 122, type: !17, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!72 = !DILocation(line: 123, scope: !71)
!73 = !DILocation(line: 124, column: 7, scope: !71)
!74 = !DILocation(line: 124, column: 2, scope: !71)
!75 = !DILocation(line: 124, column: 18, scope: !71)
!76 = !DILocation(line: 125, column: 34, scope: !71)
!77 = !DILocation(line: 125, column: 29, scope: !71)
!78 = !DILocation(line: 71, column: 2, scope: !36, inlinedAt: !79)
!79 = distinct !DILocation(line: 646, column: 2, scope: !38, inlinedAt: !80)
!80 = distinct !DILocation(line: 125, column: 14, scope: !71)
!81 = !DILocation(line: 647, column: 9, scope: !38, inlinedAt: !80)
!82 = !DILocation(line: 125, column: 2, scope: !71)
!83 = distinct !DISubprogram(name: "tracing_map_cmp_string", scope: !1, file: !1, line: 128, type: !17, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!84 = !DILocation(line: 129, scope: !83)
!85 = !DILocation(line: 133, column: 9, scope: !83)
!86 = !DILocation(line: 133, column: 2, scope: !83)
!87 = distinct !DISubprogram(name: "tracing_map_cmp_none", scope: !1, file: !1, line: 136, type: !17, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!88 = !DILocation(line: 137, scope: !87)
!89 = !DILocation(line: 138, column: 2, scope: !87)
!90 = distinct !DISubprogram(name: "tracing_map_cmp_num", scope: !1, file: !1, line: 167, type: !17, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!91 = !DILocation(line: 169, scope: !90)
!92 = !DILocation(line: 172, column: 2, scope: !90)
!93 = !DILocation(line: 174, column: 7, scope: !90)
!94 = !DILocation(line: 175, column: 7, scope: !90)
!95 = !DILocation(line: 175, column: 4, scope: !90)
!96 = !DILocation(line: 177, column: 7, scope: !90)
!97 = !DILocation(line: 180, column: 7, scope: !90)
!98 = !DILocation(line: 181, column: 7, scope: !90)
!99 = !DILocation(line: 181, column: 4, scope: !90)
!100 = !DILocation(line: 183, column: 7, scope: !90)
!101 = !DILocation(line: 186, column: 7, scope: !90)
!102 = !DILocation(line: 187, column: 7, scope: !90)
!103 = !DILocation(line: 187, column: 4, scope: !90)
!104 = !DILocation(line: 189, column: 7, scope: !90)
!105 = !DILocation(line: 192, column: 7, scope: !90)
!106 = !DILocation(line: 193, column: 7, scope: !90)
!107 = !DILocation(line: 193, column: 4, scope: !90)
!108 = !DILocation(line: 195, column: 7, scope: !90)
!109 = !DILocation(line: 0, scope: !90)
!110 = !DILocation(line: 199, column: 2, scope: !90)
!111 = distinct !DISubprogram(name: "tracing_map_cmp_s64", scope: !1, file: !1, line: 158, type: !17, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!112 = !DILocation(line: 158, scope: !111)
!113 = !DILocation(line: 158, column: 1, scope: !111)
!114 = distinct !DISubprogram(name: "tracing_map_cmp_u64", scope: !1, file: !1, line: 159, type: !17, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!115 = !DILocation(line: 159, scope: !114)
!116 = !DILocation(line: 159, column: 1, scope: !114)
!117 = distinct !DISubprogram(name: "tracing_map_cmp_s32", scope: !1, file: !1, line: 160, type: !17, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!118 = !DILocation(line: 160, scope: !117)
!119 = !DILocation(line: 160, column: 1, scope: !117)
!120 = distinct !DISubprogram(name: "tracing_map_cmp_u32", scope: !1, file: !1, line: 161, type: !17, scopeLine: 161, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!121 = !DILocation(line: 161, scope: !120)
!122 = !DILocation(line: 161, column: 1, scope: !120)
!123 = distinct !DISubprogram(name: "tracing_map_cmp_s16", scope: !1, file: !1, line: 162, type: !17, scopeLine: 162, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!124 = !DILocation(line: 162, scope: !123)
!125 = !DILocation(line: 162, column: 1, scope: !123)
!126 = distinct !DISubprogram(name: "tracing_map_cmp_u16", scope: !1, file: !1, line: 163, type: !17, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!127 = !DILocation(line: 163, scope: !126)
!128 = !DILocation(line: 163, column: 1, scope: !126)
!129 = distinct !DISubprogram(name: "tracing_map_cmp_s8", scope: !1, file: !1, line: 164, type: !17, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!130 = !DILocation(line: 164, scope: !129)
!131 = !DILocation(line: 164, column: 1, scope: !129)
!132 = distinct !DISubprogram(name: "tracing_map_cmp_u8", scope: !1, file: !1, line: 165, type: !17, scopeLine: 165, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!133 = !DILocation(line: 165, scope: !132)
!134 = !DILocation(line: 165, column: 1, scope: !132)
!135 = distinct !DISubprogram(name: "tracing_map_add_sum_field", scope: !1, file: !1, line: 227, type: !17, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!136 = !DILocation(line: 228, scope: !135)
!137 = !DILocation(line: 207, column: 11, scope: !138, inlinedAt: !139)
!138 = distinct !DISubprogram(name: "tracing_map_add_field", scope: !1, file: !1, line: 202, type: !17, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!139 = distinct !DILocation(line: 229, column: 9, scope: !135)
!140 = !DILocation(line: 207, column: 20, scope: !138, inlinedAt: !139)
!141 = !DILocation(line: 207, column: 6, scope: !138, inlinedAt: !139)
!142 = !DILocation(line: 208, column: 9, scope: !138, inlinedAt: !139)
!143 = !DILocation(line: 209, column: 28, scope: !138, inlinedAt: !139)
!144 = !DILocation(line: 209, column: 3, scope: !138, inlinedAt: !139)
!145 = !DILocation(line: 209, column: 39, scope: !138, inlinedAt: !139)
!146 = !DILocation(line: 210, column: 2, scope: !138, inlinedAt: !139)
!147 = !DILocation(line: 0, scope: !138, inlinedAt: !139)
!148 = !DILocation(line: 229, column: 2, scope: !135)
!149 = distinct !DISubprogram(name: "tracing_map_cmp_atomic64", scope: !1, file: !1, line: 141, type: !17, scopeLine: 142, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!150 = !DILocation(line: 142, scope: !149)
!151 = !DILocation(line: 71, column: 2, scope: !36, inlinedAt: !152)
!152 = distinct !DILocation(line: 646, column: 2, scope: !38, inlinedAt: !153)
!153 = distinct !DILocation(line: 143, column: 10, scope: !149)
!154 = !DILocation(line: 647, column: 9, scope: !38, inlinedAt: !153)
!155 = !DILocation(line: 71, column: 2, scope: !36, inlinedAt: !156)
!156 = distinct !DILocation(line: 646, column: 2, scope: !38, inlinedAt: !157)
!157 = distinct !DILocation(line: 144, column: 10, scope: !149)
!158 = !DILocation(line: 647, column: 9, scope: !38, inlinedAt: !157)
!159 = !DILocation(line: 146, column: 12, scope: !149)
!160 = !DILocation(line: 146, column: 9, scope: !149)
!161 = !DILocation(line: 146, column: 25, scope: !149)
!162 = !DILocation(line: 146, column: 27, scope: !149)
!163 = !DILocation(line: 146, column: 24, scope: !149)
!164 = !DILocation(line: 146, column: 2, scope: !149)
!165 = distinct !DISubprogram(name: "tracing_map_add_var", scope: !1, file: !1, line: 244, type: !17, scopeLine: 245, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!166 = !DILocation(line: 245, scope: !165)
!167 = !DILocation(line: 248, column: 11, scope: !165)
!168 = !DILocation(line: 248, column: 18, scope: !165)
!169 = !DILocation(line: 248, column: 6, scope: !165)
!170 = !DILocation(line: 249, column: 9, scope: !165)
!171 = !DILocation(line: 249, column: 20, scope: !165)
!172 = !DILocation(line: 249, column: 3, scope: !165)
!173 = !DILocation(line: 0, scope: !165)
!174 = !DILocation(line: 251, column: 2, scope: !165)
!175 = distinct !DISubprogram(name: "tracing_map_add_key_field", scope: !1, file: !1, line: 270, type: !17, scopeLine: 274, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!176 = !DILocation(line: 274, scope: !175)
!177 = !DILocation(line: 207, column: 11, scope: !138, inlinedAt: !178)
!178 = distinct !DILocation(line: 275, column: 12, scope: !175)
!179 = !DILocation(line: 207, column: 20, scope: !138, inlinedAt: !178)
!180 = !DILocation(line: 207, column: 6, scope: !138, inlinedAt: !178)
!181 = !DILocation(line: 278, column: 10, scope: !175)
!182 = !DILocation(line: 278, column: 3, scope: !175)
!183 = !DILocation(line: 208, column: 9, scope: !138, inlinedAt: !178)
!184 = !DILocation(line: 209, column: 28, scope: !138, inlinedAt: !178)
!185 = !DILocation(line: 209, column: 3, scope: !138, inlinedAt: !178)
!186 = !DILocation(line: 209, column: 39, scope: !138, inlinedAt: !178)
!187 = !DILocation(line: 280, column: 28, scope: !175)
!188 = !DILocation(line: 280, column: 19, scope: !175)
!189 = !DILocation(line: 280, column: 26, scope: !175)
!190 = !DILocation(line: 282, column: 20, scope: !175)
!191 = !DILocation(line: 282, column: 26, scope: !175)
!192 = !DILocation(line: 282, column: 2, scope: !175)
!193 = !DILocation(line: 282, column: 30, scope: !175)
!194 = !DILocation(line: 284, column: 2, scope: !175)
!195 = !DILocation(line: 285, column: 1, scope: !175)
!196 = distinct !DISubprogram(name: "tracing_map_insert", scope: !1, file: !1, line: 634, type: !17, scopeLine: 635, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!197 = !DILocation(line: 635, scope: !196)
!198 = !DILocation(line: 636, column: 9, scope: !196)
!199 = !DILocation(line: 636, column: 2, scope: !196)
!200 = distinct !DISubprogram(name: "__tracing_map_insert", scope: !1, file: !1, line: 516, type: !17, scopeLine: 517, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!201 = !DILocation(line: 517, scope: !200)
!202 = !DILocation(line: 523, column: 29, scope: !200)
!203 = !DILocation(line: 76, column: 28, scope: !204, inlinedAt: !206)
!204 = distinct !DISubprogram(name: "jhash", scope: !205, file: !205, line: 70, type: !17, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!205 = !DIFile(filename: "../include/linux/jhash.h", directory: "/llk/linux-5.17/build_arm_allyes")
!206 = distinct !DILocation(line: 523, column: 13, scope: !200)
!207 = !DILocation(line: 79, column: 16, scope: !204, inlinedAt: !206)
!208 = !DILocation(line: 79, column: 2, scope: !204, inlinedAt: !206)
!209 = !DILocation(line: 80, column: 30, scope: !204, inlinedAt: !206)
!210 = !DILocation(line: 19, column: 14, scope: !211, inlinedAt: !213)
!211 = distinct !DISubprogram(name: "__get_unaligned_cpu32", scope: !212, file: !212, line: 16, type: !17, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!212 = !DIFile(filename: "../include/linux/unaligned/packed_struct.h", directory: "/llk/linux-5.17/build_arm_allyes")
!213 = distinct !DILocation(line: 80, column: 8, scope: !204, inlinedAt: !206)
!214 = !DILocation(line: 80, column: 5, scope: !204, inlinedAt: !206)
!215 = !DILocation(line: 81, column: 32, scope: !204, inlinedAt: !206)
!216 = !DILocation(line: 19, column: 14, scope: !211, inlinedAt: !217)
!217 = distinct !DILocation(line: 81, column: 8, scope: !204, inlinedAt: !206)
!218 = !DILocation(line: 81, column: 5, scope: !204, inlinedAt: !206)
!219 = !DILocation(line: 82, column: 32, scope: !204, inlinedAt: !206)
!220 = !DILocation(line: 19, column: 14, scope: !211, inlinedAt: !221)
!221 = distinct !DILocation(line: 82, column: 8, scope: !204, inlinedAt: !206)
!222 = !DILocation(line: 82, column: 5, scope: !204, inlinedAt: !206)
!223 = !DILocation(line: 83, column: 3, scope: !204, inlinedAt: !206)
!224 = !DILocation(line: 75, column: 32, scope: !225, inlinedAt: !227)
!225 = distinct !DISubprogram(name: "rol32", scope: !226, file: !226, line: 73, type: !17, scopeLine: 74, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!226 = !DIFile(filename: "../include/linux/bitops.h", directory: "/llk/linux-5.17/build_arm_allyes")
!227 = distinct !DILocation(line: 83, column: 3, scope: !204, inlinedAt: !206)
!228 = !DILocation(line: 75, column: 32, scope: !225, inlinedAt: !229)
!229 = distinct !DILocation(line: 83, column: 3, scope: !204, inlinedAt: !206)
!230 = !DILocation(line: 75, column: 32, scope: !225, inlinedAt: !231)
!231 = distinct !DILocation(line: 83, column: 3, scope: !204, inlinedAt: !206)
!232 = !DILocation(line: 75, column: 32, scope: !225, inlinedAt: !233)
!233 = distinct !DILocation(line: 83, column: 3, scope: !204, inlinedAt: !206)
!234 = !DILocation(line: 75, column: 32, scope: !225, inlinedAt: !235)
!235 = distinct !DILocation(line: 83, column: 3, scope: !204, inlinedAt: !206)
!236 = !DILocation(line: 75, column: 32, scope: !225, inlinedAt: !237)
!237 = distinct !DILocation(line: 83, column: 3, scope: !204, inlinedAt: !206)
!238 = !DILocation(line: 84, column: 10, scope: !204, inlinedAt: !206)
!239 = !DILocation(line: 85, column: 5, scope: !204, inlinedAt: !206)
!240 = distinct !{!240, !208, !241}
!241 = !DILocation(line: 86, column: 2, scope: !204, inlinedAt: !206)
!242 = !DILocation(line: 0, scope: !204, inlinedAt: !206)
!243 = !DILocation(line: 88, column: 10, scope: !204, inlinedAt: !206)
!244 = !DILocation(line: 88, column: 2, scope: !204, inlinedAt: !206)
!245 = !DILocation(line: 89, column: 21, scope: !204, inlinedAt: !206)
!246 = !DILocation(line: 89, column: 16, scope: !204, inlinedAt: !206)
!247 = !DILocation(line: 89, column: 26, scope: !204, inlinedAt: !206)
!248 = !DILocation(line: 89, column: 13, scope: !204, inlinedAt: !206)
!249 = !DILocation(line: 89, column: 11, scope: !204, inlinedAt: !206)
!250 = !DILocation(line: 90, column: 21, scope: !204, inlinedAt: !206)
!251 = !DILocation(line: 90, column: 16, scope: !204, inlinedAt: !206)
!252 = !DILocation(line: 90, column: 26, scope: !204, inlinedAt: !206)
!253 = !DILocation(line: 90, column: 13, scope: !204, inlinedAt: !206)
!254 = !DILocation(line: 90, column: 11, scope: !204, inlinedAt: !206)
!255 = !DILocation(line: 91, column: 21, scope: !204, inlinedAt: !206)
!256 = !DILocation(line: 91, column: 16, scope: !204, inlinedAt: !206)
!257 = !DILocation(line: 91, column: 25, scope: !204, inlinedAt: !206)
!258 = !DILocation(line: 91, column: 13, scope: !204, inlinedAt: !206)
!259 = !DILocation(line: 91, column: 11, scope: !204, inlinedAt: !206)
!260 = !DILocation(line: 92, column: 16, scope: !204, inlinedAt: !206)
!261 = !DILocation(line: 92, column: 13, scope: !204, inlinedAt: !206)
!262 = !DILocation(line: 92, column: 11, scope: !204, inlinedAt: !206)
!263 = !DILocation(line: 93, column: 21, scope: !204, inlinedAt: !206)
!264 = !DILocation(line: 93, column: 16, scope: !204, inlinedAt: !206)
!265 = !DILocation(line: 93, column: 25, scope: !204, inlinedAt: !206)
!266 = !DILocation(line: 93, column: 13, scope: !204, inlinedAt: !206)
!267 = !DILocation(line: 93, column: 11, scope: !204, inlinedAt: !206)
!268 = !DILocation(line: 76, column: 12, scope: !204, inlinedAt: !206)
!269 = !DILocation(line: 94, column: 21, scope: !204, inlinedAt: !206)
!270 = !DILocation(line: 94, column: 16, scope: !204, inlinedAt: !206)
!271 = !DILocation(line: 94, column: 25, scope: !204, inlinedAt: !206)
!272 = !DILocation(line: 94, column: 13, scope: !204, inlinedAt: !206)
!273 = !DILocation(line: 94, column: 11, scope: !204, inlinedAt: !206)
!274 = !DILocation(line: 95, column: 21, scope: !204, inlinedAt: !206)
!275 = !DILocation(line: 95, column: 16, scope: !204, inlinedAt: !206)
!276 = !DILocation(line: 95, column: 25, scope: !204, inlinedAt: !206)
!277 = !DILocation(line: 95, column: 13, scope: !204, inlinedAt: !206)
!278 = !DILocation(line: 95, column: 11, scope: !204, inlinedAt: !206)
!279 = !DILocation(line: 96, column: 16, scope: !204, inlinedAt: !206)
!280 = !DILocation(line: 96, column: 13, scope: !204, inlinedAt: !206)
!281 = !DILocation(line: 96, column: 11, scope: !204, inlinedAt: !206)
!282 = !DILocation(line: 97, column: 21, scope: !204, inlinedAt: !206)
!283 = !DILocation(line: 97, column: 16, scope: !204, inlinedAt: !206)
!284 = !DILocation(line: 97, column: 25, scope: !204, inlinedAt: !206)
!285 = !DILocation(line: 97, column: 13, scope: !204, inlinedAt: !206)
!286 = !DILocation(line: 97, column: 11, scope: !204, inlinedAt: !206)
!287 = !DILocation(line: 76, column: 8, scope: !204, inlinedAt: !206)
!288 = !DILocation(line: 98, column: 21, scope: !204, inlinedAt: !206)
!289 = !DILocation(line: 98, column: 16, scope: !204, inlinedAt: !206)
!290 = !DILocation(line: 98, column: 25, scope: !204, inlinedAt: !206)
!291 = !DILocation(line: 98, column: 13, scope: !204, inlinedAt: !206)
!292 = !DILocation(line: 98, column: 11, scope: !204, inlinedAt: !206)
!293 = !DILocation(line: 99, column: 21, scope: !204, inlinedAt: !206)
!294 = !DILocation(line: 99, column: 16, scope: !204, inlinedAt: !206)
!295 = !DILocation(line: 99, column: 25, scope: !204, inlinedAt: !206)
!296 = !DILocation(line: 99, column: 13, scope: !204, inlinedAt: !206)
!297 = !DILocation(line: 99, column: 11, scope: !204, inlinedAt: !206)
!298 = !DILocation(line: 100, column: 16, scope: !204, inlinedAt: !206)
!299 = !DILocation(line: 100, column: 13, scope: !204, inlinedAt: !206)
!300 = !DILocation(line: 101, column: 4, scope: !204, inlinedAt: !206)
!301 = !DILocation(line: 75, column: 32, scope: !225, inlinedAt: !302)
!302 = distinct !DILocation(line: 101, column: 4, scope: !204, inlinedAt: !206)
!303 = !DILocation(line: 75, column: 32, scope: !225, inlinedAt: !304)
!304 = distinct !DILocation(line: 101, column: 4, scope: !204, inlinedAt: !206)
!305 = !DILocation(line: 75, column: 32, scope: !225, inlinedAt: !306)
!306 = distinct !DILocation(line: 101, column: 4, scope: !204, inlinedAt: !206)
!307 = !DILocation(line: 75, column: 32, scope: !225, inlinedAt: !308)
!308 = distinct !DILocation(line: 101, column: 4, scope: !204, inlinedAt: !206)
!309 = !DILocation(line: 75, column: 32, scope: !225, inlinedAt: !310)
!310 = distinct !DILocation(line: 101, column: 4, scope: !204, inlinedAt: !206)
!311 = !DILocation(line: 75, column: 32, scope: !225, inlinedAt: !312)
!312 = distinct !DILocation(line: 101, column: 4, scope: !204, inlinedAt: !206)
!313 = !DILocation(line: 75, column: 32, scope: !225, inlinedAt: !314)
!314 = distinct !DILocation(line: 101, column: 4, scope: !204, inlinedAt: !206)
!315 = !DILocation(line: 102, column: 4, scope: !204, inlinedAt: !206)
!316 = !DILocation(line: 524, column: 15, scope: !200)
!317 = !DILocation(line: 524, column: 6, scope: !200)
!318 = !DILocation(line: 525, column: 12, scope: !200)
!319 = !DILocation(line: 525, column: 3, scope: !200)
!320 = !DILocation(line: 0, scope: !200)
!321 = !DILocation(line: 526, column: 32, scope: !200)
!322 = !DILocation(line: 526, column: 24, scope: !200)
!323 = !DILocation(line: 526, column: 17, scope: !200)
!324 = !DILocation(line: 528, column: 2, scope: !200)
!325 = !DILocation(line: 529, column: 16, scope: !200)
!326 = !DILocation(line: 529, column: 25, scope: !200)
!327 = !DILocation(line: 529, column: 7, scope: !200)
!328 = !DILocation(line: 530, column: 11, scope: !200)
!329 = !DILocation(line: 531, column: 21, scope: !200)
!330 = !DILocation(line: 533, column: 7, scope: !200)
!331 = !DILocation(line: 533, column: 16, scope: !200)
!332 = !DILocation(line: 533, column: 19, scope: !200)
!333 = !DILocation(line: 533, column: 28, scope: !200)
!334 = !DILocation(line: 534, column: 10, scope: !200)
!335 = !DILocation(line: 535, column: 8, scope: !200)
!336 = !DILocation(line: 535, column: 12, scope: !200)
!337 = !DILocation(line: 536, column: 19, scope: !200)
!338 = !DILocation(line: 536, column: 29, scope: !200)
!339 = !DILocation(line: 536, column: 39, scope: !200)
!340 = !DILocation(line: 509, column: 6, scope: !341, inlinedAt: !342)
!341 = distinct !DISubprogram(name: "keys_match", scope: !1, file: !1, line: 505, type: !17, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!342 = distinct !DILocation(line: 536, column: 8, scope: !200)
!343 = !DILocation(line: 537, column: 9, scope: !200)
!344 = !DILocation(line: 538, column: 20, scope: !200)
!345 = !DILocation(line: 538, column: 25, scope: !200)
!346 = !DILocation(line: 101, column: 2, scope: !23, inlinedAt: !347)
!347 = distinct !DILocation(line: 809, column: 2, scope: !348, inlinedAt: !349)
!348 = distinct !DISubprogram(name: "atomic64_inc", scope: !27, file: !27, line: 807, type: !17, scopeLine: 808, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!349 = distinct !DILocation(line: 538, column: 6, scope: !200)
!350 = !DILocation(line: 1447, column: 2, scope: !351, inlinedAt: !353)
!351 = distinct !DISubprogram(name: "arch_atomic64_inc", scope: !352, file: !352, line: 1445, type: !17, scopeLine: 1446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!352 = !DIFile(filename: "../include/linux/atomic/atomic-arch-fallback.h", directory: "/llk/linux-5.17/build_arm_allyes")
!353 = distinct !DILocation(line: 810, column: 2, scope: !348, inlinedAt: !349)
!354 = !DILocation(line: 538, column: 6, scope: !200)
!355 = !DILocation(line: 539, column: 12, scope: !200)
!356 = !DILocation(line: 539, column: 5, scope: !200)
!357 = !DILocation(line: 553, column: 12, scope: !200)
!358 = !DILocation(line: 554, column: 24, scope: !200)
!359 = !DILocation(line: 554, column: 17, scope: !200)
!360 = !DILocation(line: 554, column: 9, scope: !200)
!361 = !DILocation(line: 555, column: 20, scope: !200)
!362 = !DILocation(line: 555, column: 25, scope: !200)
!363 = !DILocation(line: 101, column: 2, scope: !23, inlinedAt: !364)
!364 = distinct !DILocation(line: 809, column: 2, scope: !348, inlinedAt: !365)
!365 = distinct !DILocation(line: 555, column: 6, scope: !200)
!366 = !DILocation(line: 1447, column: 2, scope: !351, inlinedAt: !367)
!367 = distinct !DILocation(line: 810, column: 2, scope: !348, inlinedAt: !365)
!368 = !DILocation(line: 556, column: 6, scope: !200)
!369 = !DILocation(line: 558, column: 5, scope: !200)
!370 = distinct !{!370, !324, !371}
!371 = !DILocation(line: 592, column: 2, scope: !200)
!372 = !DILocation(line: 510, column: 9, scope: !341, inlinedAt: !342)
!373 = !DILocation(line: 560, column: 3, scope: !200)
!374 = !DILocation(line: 562, column: 7, scope: !200)
!375 = !DILocation(line: 563, column: 8, scope: !200)
!376 = !DILocation(line: 564, column: 5, scope: !200)
!377 = !DILocation(line: 86, column: 2, scope: !47, inlinedAt: !378)
!378 = distinct !DILocation(line: 566, column: 9, scope: !200)
!379 = !DILocation(line: 566, column: 9, scope: !200)
!380 = !{i64 2155327307}
!381 = !DILocation(line: 161, column: 2, scope: !382, inlinedAt: !384)
!382 = distinct !DISubprogram(name: "__cmpxchg", scope: !383, file: !383, line: 156, type: !17, scopeLine: 158, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!383 = !DIFile(filename: "../arch/arm/include/asm/cmpxchg.h", directory: "/llk/linux-5.17/build_arm_allyes")
!384 = distinct !DILocation(line: 566, column: 9, scope: !200)
!385 = !DILocation(line: 198, column: 12, scope: !382, inlinedAt: !384)
!386 = !DILocation(line: 192, column: 4, scope: !382, inlinedAt: !384)
!387 = !{i64 1024617, i64 1024638, i64 1024661, i64 1024680, i64 1024699}
!388 = !DILocation(line: 200, column: 3, scope: !382, inlinedAt: !384)
!389 = distinct !{!389, !390, !391}
!390 = !DILocation(line: 191, column: 3, scope: !382, inlinedAt: !384)
!391 = !DILocation(line: 200, column: 15, scope: !382, inlinedAt: !384)
!392 = !DILocation(line: 201, column: 3, scope: !382, inlinedAt: !384)
!393 = !{i64 2155327715}
!394 = !DILocation(line: 566, column: 8, scope: !200)
!395 = !DILocation(line: 457, column: 32, scope: !396, inlinedAt: !397)
!396 = distinct !DISubprogram(name: "get_free_elt", scope: !1, file: !1, line: 452, type: !17, scopeLine: 453, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!397 = distinct !DILocation(line: 569, column: 11, scope: !200)
!398 = !DILocation(line: 101, column: 2, scope: !23, inlinedAt: !399)
!399 = distinct !DILocation(line: 198, column: 2, scope: !400, inlinedAt: !401)
!400 = distinct !DISubprogram(name: "atomic_inc_return", scope: !27, file: !27, line: 195, type: !17, scopeLine: 196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!401 = distinct !DILocation(line: 457, column: 8, scope: !396, inlinedAt: !397)
!402 = !DILocation(line: 200, column: 2, scope: !403, inlinedAt: !404)
!403 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !352, file: !352, line: 197, type: !17, scopeLine: 198, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!404 = distinct !DILocation(line: 356, column: 9, scope: !405, inlinedAt: !406)
!405 = distinct !DISubprogram(name: "arch_atomic_inc_return", scope: !352, file: !352, line: 354, type: !17, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!406 = distinct !DILocation(line: 199, column: 9, scope: !400, inlinedAt: !401)
!407 = !{i64 2148600560}
!408 = !DILocation(line: 223, column: 1, scope: !409, inlinedAt: !411)
!409 = distinct !DISubprogram(name: "arch_atomic_add_return_relaxed", scope: !410, file: !410, line: 223, type: !17, scopeLine: 223, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!410 = !DIFile(filename: "../arch/arm/include/asm/atomic.h", directory: "/llk/linux-5.17/build_arm_allyes")
!411 = distinct !DILocation(line: 201, column: 8, scope: !403, inlinedAt: !404)
!412 = !{i64 2148515845, i64 2148515877, i64 2148515906, i64 2148515940, i64 2148515971, i64 2148515994}
!413 = !DILocation(line: 202, column: 2, scope: !403, inlinedAt: !404)
!414 = !{i64 2148600789}
!415 = !DILocation(line: 458, column: 17, scope: !396, inlinedAt: !397)
!416 = !DILocation(line: 458, column: 10, scope: !396, inlinedAt: !397)
!417 = !DILocation(line: 458, column: 6, scope: !396, inlinedAt: !397)
!418 = !DILocation(line: 459, column: 11, scope: !396, inlinedAt: !397)
!419 = !DILocation(line: 459, column: 9, scope: !396, inlinedAt: !397)
!420 = !DILocation(line: 460, column: 12, scope: !396, inlinedAt: !397)
!421 = !DILocation(line: 460, column: 7, scope: !396, inlinedAt: !397)
!422 = !DILocation(line: 460, column: 16, scope: !396, inlinedAt: !397)
!423 = !DILocation(line: 460, column: 19, scope: !396, inlinedAt: !397)
!424 = !DILocation(line: 460, column: 29, scope: !396, inlinedAt: !397)
!425 = !DILocation(line: 461, column: 4, scope: !396, inlinedAt: !397)
!426 = !DILocation(line: 461, column: 14, scope: !396, inlinedAt: !397)
!427 = !DILocation(line: 462, column: 2, scope: !396, inlinedAt: !397)
!428 = !DILocation(line: 570, column: 10, scope: !200)
!429 = !DILocation(line: 570, column: 9, scope: !200)
!430 = !DILocation(line: 571, column: 20, scope: !200)
!431 = !DILocation(line: 571, column: 25, scope: !200)
!432 = !DILocation(line: 101, column: 2, scope: !23, inlinedAt: !433)
!433 = distinct !DILocation(line: 809, column: 2, scope: !348, inlinedAt: !434)
!434 = distinct !DILocation(line: 571, column: 6, scope: !200)
!435 = !DILocation(line: 1447, column: 2, scope: !351, inlinedAt: !436)
!436 = distinct !DILocation(line: 810, column: 2, scope: !348, inlinedAt: !434)
!437 = !DILocation(line: 572, column: 17, scope: !200)
!438 = !DILocation(line: 576, column: 12, scope: !200)
!439 = !DILocation(line: 576, column: 17, scope: !200)
!440 = !DILocation(line: 576, column: 32, scope: !200)
!441 = !DILocation(line: 576, column: 5, scope: !200)
!442 = !DILocation(line: 577, column: 12, scope: !200)
!443 = !DILocation(line: 577, column: 16, scope: !200)
!444 = !DILocation(line: 578, column: 24, scope: !200)
!445 = !DILocation(line: 101, column: 2, scope: !23, inlinedAt: !446)
!446 = distinct !DILocation(line: 809, column: 2, scope: !348, inlinedAt: !447)
!447 = distinct !DILocation(line: 578, column: 5, scope: !200)
!448 = !DILocation(line: 1447, column: 2, scope: !351, inlinedAt: !449)
!449 = distinct !DILocation(line: 810, column: 2, scope: !348, inlinedAt: !447)
!450 = !DILocation(line: 580, column: 19, scope: !200)
!451 = !DILocation(line: 586, column: 12, scope: !200)
!452 = !DILocation(line: 587, column: 5, scope: !200)
!453 = !DILocation(line: 591, column: 6, scope: !200)
!454 = !DILocation(line: 594, column: 2, scope: !200)
!455 = !DILocation(line: 595, column: 1, scope: !200)
!456 = distinct !DISubprogram(name: "tracing_map_lookup", scope: !1, file: !1, line: 656, type: !17, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!457 = !DILocation(line: 657, scope: !456)
!458 = !DILocation(line: 658, column: 9, scope: !456)
!459 = !DILocation(line: 658, column: 2, scope: !456)
!460 = distinct !DISubprogram(name: "tracing_map_destroy", scope: !1, file: !1, line: 671, type: !17, scopeLine: 672, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!461 = !DILocation(line: 672, scope: !460)
!462 = !DILocation(line: 673, column: 7, scope: !460)
!463 = !DILocation(line: 673, column: 6, scope: !460)
!464 = !DILocation(line: 674, column: 3, scope: !460)
!465 = !DILocation(line: 676, column: 24, scope: !460)
!466 = !DILocation(line: 676, column: 2, scope: !460)
!467 = !DILocation(line: 678, column: 30, scope: !460)
!468 = !DILocation(line: 678, column: 2, scope: !460)
!469 = !DILocation(line: 679, column: 2, scope: !460)
!470 = !DILocation(line: 680, column: 1, scope: !460)
!471 = distinct !DISubprogram(name: "tracing_map_free_elts", scope: !1, file: !1, line: 467, type: !17, scopeLine: 468, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!472 = !DILocation(line: 468, scope: !471)
!473 = !DILocation(line: 471, column: 12, scope: !471)
!474 = !DILocation(line: 471, column: 7, scope: !471)
!475 = !DILocation(line: 471, column: 6, scope: !471)
!476 = !DILocation(line: 474, column: 23, scope: !471)
!477 = !DILocation(line: 474, column: 16, scope: !471)
!478 = !DILocation(line: 474, column: 2, scope: !471)
!479 = !DILocation(line: 0, scope: !471)
!480 = !DILocation(line: 472, column: 3, scope: !471)
!481 = !DILocation(line: 475, column: 26, scope: !471)
!482 = !DILocation(line: 475, column: 24, scope: !471)
!483 = !DILocation(line: 475, column: 3, scope: !471)
!484 = !DILocation(line: 476, column: 5, scope: !471)
!485 = !DILocation(line: 476, column: 36, scope: !471)
!486 = !DILocation(line: 474, column: 34, scope: !471)
!487 = distinct !{!487, !478, !488}
!488 = !DILocation(line: 477, column: 2, scope: !471)
!489 = !DILocation(line: 479, column: 25, scope: !471)
!490 = !DILocation(line: 479, column: 30, scope: !471)
!491 = !DILocation(line: 479, column: 2, scope: !471)
!492 = !DILocation(line: 480, column: 12, scope: !471)
!493 = !DILocation(line: 481, column: 1, scope: !471)
!494 = distinct !DISubprogram(name: "tracing_map_array_free", scope: !1, file: !1, line: 298, type: !17, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!495 = !DILocation(line: 299, scope: !494)
!496 = !DILocation(line: 302, column: 7, scope: !494)
!497 = !DILocation(line: 302, column: 6, scope: !494)
!498 = !DILocation(line: 0, scope: !494)
!499 = !DILocation(line: 303, column: 3, scope: !494)
!500 = !DILocation(line: 305, column: 10, scope: !494)
!501 = !DILocation(line: 305, column: 7, scope: !494)
!502 = !DILocation(line: 305, column: 6, scope: !494)
!503 = !DILocation(line: 306, column: 3, scope: !494)
!504 = !DILocation(line: 308, column: 9, scope: !494)
!505 = !DILocation(line: 308, column: 21, scope: !494)
!506 = !DILocation(line: 308, column: 16, scope: !494)
!507 = !DILocation(line: 308, column: 2, scope: !494)
!508 = !DILocation(line: 309, column: 11, scope: !494)
!509 = !DILocation(line: 309, column: 8, scope: !494)
!510 = !DILocation(line: 309, column: 7, scope: !494)
!511 = !DILocation(line: 310, column: 4, scope: !494)
!512 = !DILocation(line: 311, column: 3, scope: !494)
!513 = !DILocation(line: 312, column: 3, scope: !494)
!514 = !DILocation(line: 308, column: 31, scope: !494)
!515 = distinct !{!515, !507, !516}
!516 = !DILocation(line: 313, column: 2, scope: !494)
!517 = !DILocation(line: 315, column: 11, scope: !494)
!518 = !DILocation(line: 315, column: 2, scope: !494)
!519 = !DILocation(line: 318, column: 2, scope: !494)
!520 = !DILocation(line: 319, column: 1, scope: !494)
!521 = distinct !DISubprogram(name: "tracing_map_clear", scope: !1, file: !1, line: 693, type: !17, scopeLine: 694, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!522 = !DILocation(line: 694, scope: !521)
!523 = !DILocation(line: 697, column: 19, scope: !521)
!524 = !DILocation(line: 86, column: 2, scope: !47, inlinedAt: !525)
!525 = distinct !DILocation(line: 41, column: 2, scope: !526, inlinedAt: !527)
!526 = distinct !DISubprogram(name: "atomic_set", scope: !27, file: !27, line: 39, type: !17, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!527 = distinct !DILocation(line: 697, column: 2, scope: !521)
!528 = !DILocation(line: 42, column: 2, scope: !526, inlinedAt: !527)
!529 = !DILocation(line: 698, column: 21, scope: !521)
!530 = !DILocation(line: 86, column: 2, scope: !47, inlinedAt: !531)
!531 = distinct !DILocation(line: 660, column: 2, scope: !49, inlinedAt: !532)
!532 = distinct !DILocation(line: 698, column: 2, scope: !521)
!533 = !DILocation(line: 661, column: 2, scope: !49, inlinedAt: !532)
!534 = !DILocation(line: 699, column: 21, scope: !521)
!535 = !DILocation(line: 86, column: 2, scope: !47, inlinedAt: !536)
!536 = distinct !DILocation(line: 660, column: 2, scope: !49, inlinedAt: !537)
!537 = distinct !DILocation(line: 699, column: 2, scope: !521)
!538 = !DILocation(line: 661, column: 2, scope: !49, inlinedAt: !537)
!539 = !DILocation(line: 701, column: 31, scope: !521)
!540 = !DILocation(line: 291, column: 10, scope: !541, inlinedAt: !542)
!541 = distinct !DISubprogram(name: "tracing_map_array_clear", scope: !1, file: !1, line: 287, type: !17, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!542 = distinct !DILocation(line: 701, column: 2, scope: !521)
!543 = !DILocation(line: 291, column: 7, scope: !541, inlinedAt: !542)
!544 = !DILocation(line: 291, column: 6, scope: !541, inlinedAt: !542)
!545 = !DILocation(line: 294, column: 21, scope: !541, inlinedAt: !542)
!546 = !DILocation(line: 294, column: 16, scope: !541, inlinedAt: !542)
!547 = !DILocation(line: 294, column: 2, scope: !541, inlinedAt: !542)
!548 = !DILocation(line: 295, column: 13, scope: !541, inlinedAt: !542)
!549 = !DILocation(line: 295, column: 10, scope: !541, inlinedAt: !542)
!550 = !DILocation(line: 295, column: 3, scope: !541, inlinedAt: !542)
!551 = !DILocation(line: 294, column: 31, scope: !541, inlinedAt: !542)
!552 = distinct !{!552, !547, !553}
!553 = !DILocation(line: 295, column: 35, scope: !541, inlinedAt: !542)
!554 = !DILocation(line: 703, column: 23, scope: !521)
!555 = !DILocation(line: 703, column: 16, scope: !521)
!556 = !DILocation(line: 703, column: 2, scope: !521)
!557 = !DILocation(line: 704, column: 27, scope: !521)
!558 = !DILocation(line: 704, column: 25, scope: !521)
!559 = !DILocation(line: 704, column: 3, scope: !521)
!560 = !DILocation(line: 703, column: 34, scope: !521)
!561 = distinct !{!561, !556, !562}
!562 = !DILocation(line: 704, column: 57, scope: !521)
!563 = !DILocation(line: 705, column: 1, scope: !521)
!564 = distinct !DISubprogram(name: "tracing_map_elt_clear", scope: !1, file: !1, line: 358, type: !17, scopeLine: 359, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!565 = !DILocation(line: 359, scope: !564)
!566 = !DILocation(line: 362, column: 23, scope: !564)
!567 = !DILocation(line: 362, column: 28, scope: !564)
!568 = !DILocation(line: 362, column: 16, scope: !564)
!569 = !DILocation(line: 362, column: 2, scope: !564)
!570 = !DILocation(line: 366, column: 23, scope: !564)
!571 = !DILocation(line: 366, column: 28, scope: !564)
!572 = !DILocation(line: 366, column: 16, scope: !564)
!573 = !DILocation(line: 366, column: 2, scope: !564)
!574 = !DILocation(line: 363, column: 12, scope: !564)
!575 = !DILocation(line: 363, column: 7, scope: !564)
!576 = !DILocation(line: 363, column: 22, scope: !564)
!577 = !DILocation(line: 363, column: 29, scope: !564)
!578 = !DILocation(line: 364, column: 18, scope: !564)
!579 = !DILocation(line: 364, column: 23, scope: !564)
!580 = !DILocation(line: 364, column: 33, scope: !564)
!581 = !DILocation(line: 86, column: 2, scope: !47, inlinedAt: !582)
!582 = distinct !DILocation(line: 660, column: 2, scope: !49, inlinedAt: !583)
!583 = distinct !DILocation(line: 364, column: 4, scope: !564)
!584 = !DILocation(line: 661, column: 2, scope: !49, inlinedAt: !583)
!585 = !DILocation(line: 364, column: 4, scope: !564)
!586 = !DILocation(line: 362, column: 39, scope: !564)
!587 = distinct !{!587, !569, !588}
!588 = !DILocation(line: 364, column: 39, scope: !564)
!589 = !DILocation(line: 367, column: 22, scope: !564)
!590 = !DILocation(line: 367, column: 17, scope: !564)
!591 = !DILocation(line: 86, column: 2, scope: !47, inlinedAt: !592)
!592 = distinct !DILocation(line: 660, column: 2, scope: !49, inlinedAt: !593)
!593 = distinct !DILocation(line: 367, column: 3, scope: !564)
!594 = !DILocation(line: 661, column: 2, scope: !49, inlinedAt: !593)
!595 = !DILocation(line: 368, column: 8, scope: !564)
!596 = !DILocation(line: 368, column: 3, scope: !564)
!597 = !DILocation(line: 368, column: 19, scope: !564)
!598 = !DILocation(line: 366, column: 37, scope: !564)
!599 = distinct !{!599, !573, !600}
!600 = !DILocation(line: 369, column: 2, scope: !564)
!601 = !DILocation(line: 371, column: 6, scope: !564)
!602 = !DILocation(line: 371, column: 11, scope: !564)
!603 = !DILocation(line: 371, column: 16, scope: !564)
!604 = !DILocation(line: 371, column: 20, scope: !564)
!605 = !DILocation(line: 371, column: 23, scope: !564)
!606 = !DILocation(line: 371, column: 28, scope: !564)
!607 = !DILocation(line: 371, column: 33, scope: !564)
!608 = !DILocation(line: 371, column: 38, scope: !564)
!609 = !DILocation(line: 372, column: 3, scope: !564)
!610 = !DILocation(line: 372, column: 8, scope: !564)
!611 = !DILocation(line: 372, column: 13, scope: !564)
!612 = !DILocation(line: 372, column: 18, scope: !564)
!613 = !DILocation(line: 373, column: 1, scope: !564)
!614 = distinct !DISubprogram(name: "tracing_map_create", scope: !1, file: !1, line: 763, type: !17, scopeLine: 767, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!615 = !DILocation(line: 767, scope: !614)
!616 = !DILocation(line: 771, column: 15, scope: !614)
!617 = !DILocation(line: 771, column: 38, scope: !614)
!618 = !DILocation(line: 772, column: 6, scope: !614)
!619 = !DILocation(line: 772, column: 15, scope: !614)
!620 = !DILocation(line: 771, column: 6, scope: !614)
!621 = !DILocation(line: 773, column: 10, scope: !614)
!622 = !DILocation(line: 773, column: 3, scope: !614)
!623 = !DILocation(line: 387, column: 26, scope: !624, inlinedAt: !626)
!624 = distinct !DISubprogram(name: "__kmalloc_index", scope: !625, file: !625, line: 369, type: !17, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!625 = !DIFile(filename: "../include/linux/slab.h", directory: "/llk/linux-5.17/build_arm_allyes")
!626 = distinct !DILocation(line: 576, column: 11, scope: !627, inlinedAt: !628)
!627 = distinct !DISubprogram(name: "kmalloc", scope: !625, file: !625, line: 567, type: !17, scopeLine: 568, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!628 = distinct !DILocation(line: 714, column: 9, scope: !629, inlinedAt: !630)
!629 = distinct !DISubprogram(name: "kzalloc", scope: !625, file: !625, line: 712, type: !17, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!630 = distinct !DILocation(line: 775, column: 8, scope: !614)
!631 = !DILocation(line: 582, column: 33, scope: !627, inlinedAt: !628)
!632 = !DILocation(line: 339, column: 3, scope: !633, inlinedAt: !634)
!633 = distinct !DISubprogram(name: "kmalloc_type", scope: !625, file: !625, line: 332, type: !17, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!634 = distinct !DILocation(line: 582, column: 20, scope: !627, inlinedAt: !628)
!635 = !DILocation(line: 582, column: 5, scope: !627, inlinedAt: !628)
!636 = !DILocation(line: 581, column: 10, scope: !627, inlinedAt: !628)
!637 = !DILocation(line: 776, column: 7, scope: !614)
!638 = !DILocation(line: 776, column: 6, scope: !614)
!639 = !DILocation(line: 777, column: 10, scope: !614)
!640 = !DILocation(line: 777, column: 3, scope: !614)
!641 = !DILocation(line: 779, column: 7, scope: !614)
!642 = !DILocation(line: 779, column: 16, scope: !614)
!643 = !DILocation(line: 780, column: 21, scope: !614)
!644 = !DILocation(line: 780, column: 7, scope: !614)
!645 = !DILocation(line: 780, column: 16, scope: !614)
!646 = !DILocation(line: 781, column: 19, scope: !614)
!647 = !DILocation(line: 86, column: 2, scope: !47, inlinedAt: !648)
!648 = distinct !DILocation(line: 41, column: 2, scope: !526, inlinedAt: !649)
!649 = distinct !DILocation(line: 781, column: 2, scope: !614)
!650 = !DILocation(line: 42, column: 2, scope: !526, inlinedAt: !649)
!651 = !DILocation(line: 783, column: 21, scope: !614)
!652 = !DILocation(line: 783, column: 7, scope: !614)
!653 = !DILocation(line: 783, column: 16, scope: !614)
!654 = !DILocation(line: 784, column: 7, scope: !614)
!655 = !DILocation(line: 784, column: 11, scope: !614)
!656 = !DILocation(line: 786, column: 7, scope: !614)
!657 = !DILocation(line: 786, column: 20, scope: !614)
!658 = !DILocation(line: 788, column: 13, scope: !614)
!659 = !DILocation(line: 788, column: 7, scope: !614)
!660 = !DILocation(line: 788, column: 11, scope: !614)
!661 = !DILocation(line: 790, column: 7, scope: !614)
!662 = !DILocation(line: 790, column: 6, scope: !614)
!663 = !DILocation(line: 793, column: 16, scope: !614)
!664 = !DILocation(line: 794, column: 2, scope: !614)
!665 = !DILocation(line: 795, column: 19, scope: !614)
!666 = !DILocation(line: 795, column: 3, scope: !614)
!667 = !DILocation(line: 795, column: 22, scope: !614)
!668 = !DILocation(line: 799, column: 22, scope: !614)
!669 = !DILocation(line: 676, column: 24, scope: !460, inlinedAt: !670)
!670 = distinct !DILocation(line: 799, column: 2, scope: !614)
!671 = !DILocation(line: 676, column: 2, scope: !460, inlinedAt: !670)
!672 = !DILocation(line: 678, column: 30, scope: !460, inlinedAt: !670)
!673 = !DILocation(line: 678, column: 2, scope: !460, inlinedAt: !670)
!674 = !DILocation(line: 679, column: 2, scope: !460, inlinedAt: !670)
!675 = !DILocation(line: 802, column: 2, scope: !614)
!676 = !DILocation(line: 0, scope: !614)
!677 = !DILocation(line: 803, column: 1, scope: !614)
!678 = distinct !DISubprogram(name: "tracing_map_array_alloc", scope: !1, file: !1, line: 321, type: !17, scopeLine: 323, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!679 = !DILocation(line: 323, scope: !678)
!680 = !DILocation(line: 376, column: 3, scope: !624, inlinedAt: !681)
!681 = distinct !DILocation(line: 576, column: 11, scope: !627, inlinedAt: !682)
!682 = distinct !DILocation(line: 714, column: 9, scope: !629, inlinedAt: !683)
!683 = distinct !DILocation(line: 327, column: 6, scope: !678)
!684 = !DILocation(line: 582, column: 33, scope: !627, inlinedAt: !682)
!685 = !DILocation(line: 339, column: 3, scope: !633, inlinedAt: !686)
!686 = distinct !DILocation(line: 582, column: 20, scope: !627, inlinedAt: !682)
!687 = !DILocation(line: 582, column: 5, scope: !627, inlinedAt: !682)
!688 = !DILocation(line: 581, column: 10, scope: !627, inlinedAt: !682)
!689 = !DILocation(line: 328, column: 7, scope: !678)
!690 = !DILocation(line: 328, column: 6, scope: !678)
!691 = !DILocation(line: 329, column: 3, scope: !678)
!692 = !DILocation(line: 57, column: 27, scope: !693, inlinedAt: !695)
!693 = distinct !DISubprogram(name: "__roundup_pow_of_two", scope: !694, file: !694, line: 55, type: !17, scopeLine: 56, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!694 = !DIFile(filename: "../include/linux/log2.h", directory: "/llk/linux-5.17/build_arm_allyes")
!695 = distinct !DILocation(line: 331, column: 28, scope: !678)
!696 = !DILocation(line: 14, column: 9, scope: !697, inlinedAt: !699)
!697 = distinct !DISubprogram(name: "fls", scope: !698, file: !698, line: 12, type: !17, scopeLine: 13, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!698 = !DIFile(filename: "../include/asm-generic/bitops/builtin-fls.h", directory: "/llk/linux-5.17/build_arm_allyes")
!699 = distinct !DILocation(line: 155, column: 10, scope: !700, inlinedAt: !701)
!700 = distinct !DISubprogram(name: "fls_long", scope: !226, file: !226, line: 152, type: !17, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!701 = distinct !DILocation(line: 57, column: 16, scope: !693, inlinedAt: !695)
!702 = !DILocation(line: 14, column: 43, scope: !697, inlinedAt: !699)
!703 = !DILocation(line: 14, column: 29, scope: !697, inlinedAt: !699)
!704 = !{i32 0, i32 33}
!705 = !DILocation(line: 14, column: 27, scope: !697, inlinedAt: !699)
!706 = !DILocation(line: 331, column: 59, scope: !678)
!707 = !DILocation(line: 14, column: 43, scope: !697, inlinedAt: !708)
!708 = distinct !DILocation(line: 331, column: 24, scope: !678)
!709 = !DILocation(line: 14, column: 29, scope: !697, inlinedAt: !708)
!710 = !DILocation(line: 14, column: 27, scope: !697, inlinedAt: !708)
!711 = !DILocation(line: 14, column: 9, scope: !697, inlinedAt: !708)
!712 = !DILocation(line: 331, column: 5, scope: !678)
!713 = !DILocation(line: 331, column: 22, scope: !678)
!714 = !DILocation(line: 332, column: 34, scope: !678)
!715 = !DILocation(line: 332, column: 22, scope: !678)
!716 = !DILocation(line: 333, column: 22, scope: !678)
!717 = !DILocation(line: 333, column: 5, scope: !678)
!718 = !DILocation(line: 333, column: 13, scope: !678)
!719 = !DILocation(line: 334, column: 7, scope: !678)
!720 = !DILocation(line: 334, column: 6, scope: !678)
!721 = !DILocation(line: 335, column: 3, scope: !678)
!722 = !DILocation(line: 335, column: 14, scope: !678)
!723 = !DILocation(line: 14, column: 9, scope: !697, inlinedAt: !724)
!724 = distinct !DILocation(line: 336, column: 19, scope: !678)
!725 = !DILocation(line: 14, column: 43, scope: !697, inlinedAt: !724)
!726 = !DILocation(line: 14, column: 29, scope: !697, inlinedAt: !724)
!727 = !DILocation(line: 336, column: 5, scope: !678)
!728 = !DILocation(line: 336, column: 17, scope: !678)
!729 = !DILocation(line: 337, column: 40, scope: !678)
!730 = !DILocation(line: 337, column: 5, scope: !678)
!731 = !DILocation(line: 337, column: 16, scope: !678)
!732 = !DILocation(line: 339, column: 24, scope: !678)
!733 = !DILocation(line: 617, column: 6, scope: !734, inlinedAt: !735)
!734 = distinct !DISubprogram(name: "kmalloc_array", scope: !625, file: !625, line: 613, type: !17, scopeLine: 614, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!735 = distinct !DILocation(line: 652, column: 9, scope: !736, inlinedAt: !737)
!736 = distinct !DISubprogram(name: "kcalloc", scope: !625, file: !625, line: 650, type: !17, scopeLine: 651, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!737 = distinct !DILocation(line: 339, column: 13, scope: !678)
!738 = !{!"branch_weights", i32 1, i32 2000}
!739 = !DILocation(line: 618, column: 3, scope: !734, inlinedAt: !735)
!740 = !DILocation(line: 339, column: 5, scope: !678)
!741 = !DILocation(line: 339, column: 11, scope: !678)
!742 = !DILocation(line: 340, column: 6, scope: !678)
!743 = !DILocation(line: 621, column: 19, scope: !734, inlinedAt: !735)
!744 = !DILocation(line: 621, column: 9, scope: !734, inlinedAt: !735)
!745 = !DILocation(line: 340, column: 7, scope: !678)
!746 = !DILocation(line: 343, column: 21, scope: !678)
!747 = !DILocation(line: 343, column: 16, scope: !678)
!748 = !DILocation(line: 343, column: 2, scope: !678)
!749 = !DILocation(line: 344, column: 25, scope: !678)
!750 = !DILocation(line: 344, column: 17, scope: !678)
!751 = !DILocation(line: 344, column: 6, scope: !678)
!752 = !DILocation(line: 344, column: 3, scope: !678)
!753 = !DILocation(line: 344, column: 15, scope: !678)
!754 = !DILocation(line: 345, column: 11, scope: !678)
!755 = !DILocation(line: 345, column: 8, scope: !678)
!756 = !DILocation(line: 345, column: 7, scope: !678)
!757 = !DILocation(line: 347, column: 18, scope: !678)
!758 = !DILocation(line: 347, column: 3, scope: !678)
!759 = !DILocation(line: 343, column: 31, scope: !678)
!760 = distinct !{!760, !748, !761}
!761 = !DILocation(line: 348, column: 2, scope: !678)
!762 = !DILocation(line: 0, scope: !678)
!763 = !DILocation(line: 352, column: 2, scope: !678)
!764 = !DILocation(line: 355, column: 2, scope: !678)
!765 = !DILocation(line: 356, column: 1, scope: !678)
!766 = distinct !DISubprogram(name: "tracing_map_init", scope: !1, file: !1, line: 824, type: !17, scopeLine: 825, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!767 = !DILocation(line: 825, scope: !766)
!768 = !DILocation(line: 828, column: 11, scope: !766)
!769 = !DILocation(line: 828, column: 20, scope: !766)
!770 = !DILocation(line: 828, column: 6, scope: !766)
!771 = !DILocation(line: 829, column: 3, scope: !766)
!772 = !DILocation(line: 487, column: 43, scope: !773, inlinedAt: !774)
!773 = distinct !DISubprogram(name: "tracing_map_alloc_elts", scope: !1, file: !1, line: 483, type: !17, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!774 = distinct !DILocation(line: 831, column: 8, scope: !766)
!775 = !DILocation(line: 487, column: 14, scope: !773, inlinedAt: !774)
!776 = !DILocation(line: 487, column: 7, scope: !773, inlinedAt: !774)
!777 = !DILocation(line: 487, column: 12, scope: !773, inlinedAt: !774)
!778 = !DILocation(line: 489, column: 7, scope: !773, inlinedAt: !774)
!779 = !DILocation(line: 489, column: 6, scope: !773, inlinedAt: !774)
!780 = !DILocation(line: 492, column: 23, scope: !773, inlinedAt: !774)
!781 = !DILocation(line: 492, column: 16, scope: !773, inlinedAt: !774)
!782 = !DILocation(line: 492, column: 2, scope: !773, inlinedAt: !774)
!783 = !DILocation(line: 490, column: 3, scope: !773, inlinedAt: !774)
!784 = !DILocation(line: 376, column: 3, scope: !624, inlinedAt: !785)
!785 = distinct !DILocation(line: 576, column: 11, scope: !627, inlinedAt: !786)
!786 = distinct !DILocation(line: 714, column: 9, scope: !629, inlinedAt: !787)
!787 = distinct !DILocation(line: 408, column: 8, scope: !788, inlinedAt: !789)
!788 = distinct !DISubprogram(name: "tracing_map_elt_alloc", scope: !1, file: !1, line: 403, type: !17, scopeLine: 404, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!789 = distinct !DILocation(line: 493, column: 38, scope: !773, inlinedAt: !774)
!790 = !DILocation(line: 582, column: 33, scope: !627, inlinedAt: !786)
!791 = !DILocation(line: 339, column: 3, scope: !633, inlinedAt: !792)
!792 = distinct !DILocation(line: 582, column: 20, scope: !627, inlinedAt: !786)
!793 = !DILocation(line: 582, column: 5, scope: !627, inlinedAt: !786)
!794 = !DILocation(line: 581, column: 10, scope: !627, inlinedAt: !786)
!795 = !DILocation(line: 409, column: 7, scope: !788, inlinedAt: !789)
!796 = !DILocation(line: 409, column: 6, scope: !788, inlinedAt: !789)
!797 = !DILocation(line: 410, column: 10, scope: !788, inlinedAt: !789)
!798 = !DILocation(line: 410, column: 3, scope: !788, inlinedAt: !789)
!799 = !DILocation(line: 412, column: 11, scope: !788, inlinedAt: !789)
!800 = !DILocation(line: 414, column: 26, scope: !788, inlinedAt: !789)
!801 = !DILocation(line: 586, column: 19, scope: !627, inlinedAt: !802)
!802 = distinct !DILocation(line: 714, column: 9, scope: !629, inlinedAt: !803)
!803 = distinct !DILocation(line: 414, column: 13, scope: !788, inlinedAt: !789)
!804 = !DILocation(line: 586, column: 9, scope: !627, inlinedAt: !802)
!805 = !DILocation(line: 414, column: 7, scope: !788, inlinedAt: !789)
!806 = !DILocation(line: 414, column: 11, scope: !788, inlinedAt: !789)
!807 = !DILocation(line: 415, column: 7, scope: !788, inlinedAt: !789)
!808 = !DILocation(line: 415, column: 6, scope: !788, inlinedAt: !789)
!809 = !DILocation(line: 416, column: 7, scope: !788, inlinedAt: !789)
!810 = !DILocation(line: 417, column: 3, scope: !788, inlinedAt: !789)
!811 = !DILocation(line: 420, column: 29, scope: !788, inlinedAt: !789)
!812 = !DILocation(line: 617, column: 6, scope: !734, inlinedAt: !813)
!813 = distinct !DILocation(line: 652, column: 9, scope: !736, inlinedAt: !814)
!814 = distinct !DILocation(line: 420, column: 16, scope: !788, inlinedAt: !789)
!815 = !DILocation(line: 618, column: 3, scope: !734, inlinedAt: !813)
!816 = !DILocation(line: 420, column: 7, scope: !788, inlinedAt: !789)
!817 = !DILocation(line: 420, column: 14, scope: !788, inlinedAt: !789)
!818 = !DILocation(line: 421, column: 6, scope: !788, inlinedAt: !789)
!819 = !DILocation(line: 621, column: 19, scope: !734, inlinedAt: !813)
!820 = !DILocation(line: 621, column: 9, scope: !734, inlinedAt: !813)
!821 = !DILocation(line: 421, column: 7, scope: !788, inlinedAt: !789)
!822 = !DILocation(line: 422, column: 7, scope: !788, inlinedAt: !789)
!823 = !DILocation(line: 423, column: 3, scope: !788, inlinedAt: !789)
!824 = !DILocation(line: 426, column: 27, scope: !788, inlinedAt: !789)
!825 = !DILocation(line: 617, column: 6, scope: !734, inlinedAt: !826)
!826 = distinct !DILocation(line: 652, column: 9, scope: !736, inlinedAt: !827)
!827 = distinct !DILocation(line: 426, column: 14, scope: !788, inlinedAt: !789)
!828 = !DILocation(line: 618, column: 3, scope: !734, inlinedAt: !826)
!829 = !DILocation(line: 426, column: 7, scope: !788, inlinedAt: !789)
!830 = !DILocation(line: 426, column: 12, scope: !788, inlinedAt: !789)
!831 = !DILocation(line: 427, column: 6, scope: !788, inlinedAt: !789)
!832 = !DILocation(line: 621, column: 19, scope: !734, inlinedAt: !826)
!833 = !DILocation(line: 621, column: 9, scope: !734, inlinedAt: !826)
!834 = !DILocation(line: 427, column: 7, scope: !788, inlinedAt: !789)
!835 = !DILocation(line: 428, column: 7, scope: !788, inlinedAt: !789)
!836 = !DILocation(line: 429, column: 3, scope: !788, inlinedAt: !789)
!837 = !DILocation(line: 432, column: 30, scope: !788, inlinedAt: !789)
!838 = !DILocation(line: 621, column: 19, scope: !734, inlinedAt: !839)
!839 = distinct !DILocation(line: 652, column: 9, scope: !736, inlinedAt: !840)
!840 = distinct !DILocation(line: 432, column: 17, scope: !788, inlinedAt: !789)
!841 = !DILocation(line: 621, column: 9, scope: !734, inlinedAt: !839)
!842 = !DILocation(line: 432, column: 7, scope: !788, inlinedAt: !789)
!843 = !DILocation(line: 432, column: 15, scope: !788, inlinedAt: !789)
!844 = !DILocation(line: 433, column: 7, scope: !788, inlinedAt: !789)
!845 = !DILocation(line: 433, column: 6, scope: !788, inlinedAt: !789)
!846 = !DILocation(line: 434, column: 7, scope: !788, inlinedAt: !789)
!847 = !DILocation(line: 435, column: 3, scope: !788, inlinedAt: !789)
!848 = !DILocation(line: 379, column: 2, scope: !849, inlinedAt: !850)
!849 = distinct !DISubprogram(name: "tracing_map_elt_init_fields", scope: !1, file: !1, line: 375, type: !17, scopeLine: 376, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!850 = distinct !DILocation(line: 438, column: 2, scope: !788, inlinedAt: !789)
!851 = !DILocation(line: 381, column: 23, scope: !849, inlinedAt: !850)
!852 = !DILocation(line: 381, column: 28, scope: !849, inlinedAt: !850)
!853 = !DILocation(line: 381, column: 16, scope: !849, inlinedAt: !850)
!854 = !DILocation(line: 381, column: 2, scope: !849, inlinedAt: !850)
!855 = !DILocation(line: 382, column: 27, scope: !849, inlinedAt: !850)
!856 = !DILocation(line: 382, column: 47, scope: !849, inlinedAt: !850)
!857 = !DILocation(line: 382, column: 8, scope: !849, inlinedAt: !850)
!858 = !DILocation(line: 382, column: 3, scope: !849, inlinedAt: !850)
!859 = !DILocation(line: 382, column: 25, scope: !849, inlinedAt: !850)
!860 = !DILocation(line: 384, column: 12, scope: !849, inlinedAt: !850)
!861 = !DILocation(line: 384, column: 7, scope: !849, inlinedAt: !850)
!862 = !DILocation(line: 384, column: 22, scope: !849, inlinedAt: !850)
!863 = !DILocation(line: 384, column: 29, scope: !849, inlinedAt: !850)
!864 = !DILocation(line: 385, column: 28, scope: !849, inlinedAt: !850)
!865 = !DILocation(line: 385, column: 33, scope: !849, inlinedAt: !850)
!866 = !DILocation(line: 385, column: 48, scope: !849, inlinedAt: !850)
!867 = !DILocation(line: 385, column: 19, scope: !849, inlinedAt: !850)
!868 = !DILocation(line: 385, column: 26, scope: !849, inlinedAt: !850)
!869 = !DILocation(line: 385, column: 4, scope: !849, inlinedAt: !850)
!870 = !DILocation(line: 381, column: 39, scope: !849, inlinedAt: !850)
!871 = distinct !{!871, !854, !872}
!872 = !DILocation(line: 386, column: 2, scope: !849, inlinedAt: !850)
!873 = !DILocation(line: 440, column: 11, scope: !788, inlinedAt: !789)
!874 = !DILocation(line: 440, column: 6, scope: !788, inlinedAt: !789)
!875 = !DILocation(line: 440, column: 15, scope: !788, inlinedAt: !789)
!876 = !DILocation(line: 440, column: 18, scope: !788, inlinedAt: !789)
!877 = !DILocation(line: 440, column: 23, scope: !788, inlinedAt: !789)
!878 = !DILocation(line: 440, column: 28, scope: !788, inlinedAt: !789)
!879 = !DILocation(line: 441, column: 9, scope: !788, inlinedAt: !789)
!880 = !DILocation(line: 442, column: 7, scope: !788, inlinedAt: !789)
!881 = !DILocation(line: 443, column: 4, scope: !788, inlinedAt: !789)
!882 = !DILocation(line: 444, column: 2, scope: !788, inlinedAt: !789)
!883 = !DILocation(line: 445, column: 9, scope: !788, inlinedAt: !789)
!884 = !DILocation(line: 445, column: 2, scope: !788, inlinedAt: !789)
!885 = !DILocation(line: 447, column: 2, scope: !788, inlinedAt: !789)
!886 = !DILocation(line: 449, column: 2, scope: !788, inlinedAt: !789)
!887 = !DILocation(line: 0, scope: !788, inlinedAt: !789)
!888 = !DILocation(line: 493, column: 5, scope: !773, inlinedAt: !774)
!889 = !DILocation(line: 493, column: 36, scope: !773, inlinedAt: !774)
!890 = !DILocation(line: 494, column: 16, scope: !773, inlinedAt: !774)
!891 = !DILocation(line: 494, column: 14, scope: !773, inlinedAt: !774)
!892 = !DILocation(line: 36, column: 9, scope: !893, inlinedAt: !895)
!893 = distinct !DISubprogram(name: "IS_ERR", scope: !894, file: !894, line: 34, type: !17, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!894 = !DIFile(filename: "../include/linux/err.h", directory: "/llk/linux-5.17/build_arm_allyes")
!895 = distinct !DILocation(line: 494, column: 7, scope: !773, inlinedAt: !774)
!896 = !DILocation(line: 494, column: 7, scope: !773, inlinedAt: !774)
!897 = !DILocation(line: 495, column: 6, scope: !773, inlinedAt: !774)
!898 = !DILocation(line: 495, column: 37, scope: !773, inlinedAt: !774)
!899 = !DILocation(line: 496, column: 4, scope: !773, inlinedAt: !774)
!900 = !DILocation(line: 498, column: 4, scope: !773, inlinedAt: !774)
!901 = !DILocation(line: 492, column: 34, scope: !773, inlinedAt: !774)
!902 = distinct !{!902, !782, !903}
!903 = !DILocation(line: 500, column: 2, scope: !773, inlinedAt: !774)
!904 = !DILocation(line: 833, column: 10, scope: !766)
!905 = !DILocation(line: 833, column: 3, scope: !766)
!906 = !DILocation(line: 502, column: 2, scope: !773, inlinedAt: !774)
!907 = !DILocation(line: 835, column: 20, scope: !766)
!908 = !DILocation(line: 835, column: 2, scope: !766)
!909 = !DILocation(line: 837, column: 2, scope: !766)
!910 = !DILocation(line: 0, scope: !766)
!911 = !DILocation(line: 838, column: 1, scope: !766)
!912 = distinct !DISubprogram(name: "tracing_map_destroy_sort_entries", scope: !1, file: !1, line: 935, type: !17, scopeLine: 937, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!913 = !DILocation(line: 937, scope: !912)
!914 = !DILocation(line: 940, column: 16, scope: !912)
!915 = !DILocation(line: 940, column: 2, scope: !912)
!916 = !DILocation(line: 941, column: 22, scope: !912)
!917 = !DILocation(line: 919, column: 7, scope: !918, inlinedAt: !919)
!918 = distinct !DISubprogram(name: "destroy_sort_entry", scope: !1, file: !1, line: 917, type: !17, scopeLine: 918, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!919 = distinct !DILocation(line: 941, column: 3, scope: !912)
!920 = !DILocation(line: 919, column: 6, scope: !918, inlinedAt: !919)
!921 = !DILocation(line: 920, column: 3, scope: !918, inlinedAt: !919)
!922 = !DILocation(line: 922, column: 6, scope: !918, inlinedAt: !919)
!923 = !DILocation(line: 922, column: 13, scope: !918, inlinedAt: !919)
!924 = !DILocation(line: 923, column: 24, scope: !918, inlinedAt: !919)
!925 = !DILocation(line: 923, column: 31, scope: !918, inlinedAt: !919)
!926 = !DILocation(line: 923, column: 3, scope: !918, inlinedAt: !919)
!927 = !DILocation(line: 925, column: 2, scope: !918, inlinedAt: !919)
!928 = !DILocation(line: 926, column: 1, scope: !918, inlinedAt: !919)
!929 = !DILocation(line: 940, column: 30, scope: !912)
!930 = distinct !{!930, !915, !931}
!931 = !DILocation(line: 941, column: 32, scope: !912)
!932 = !DILocation(line: 943, column: 2, scope: !912)
!933 = !DILocation(line: 944, column: 1, scope: !912)
!934 = distinct !DISubprogram(name: "tracing_map_sort_entries", scope: !1, file: !1, line: 1069, type: !17, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!935 = !DILocation(line: 1073, scope: !934)
!936 = !DILocation(line: 1078, column: 56, scope: !934)
!937 = !DILocation(line: 135, column: 6, scope: !938, inlinedAt: !940)
!938 = distinct !DISubprogram(name: "array_size", scope: !939, file: !939, line: 131, type: !17, scopeLine: 132, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!939 = !DIFile(filename: "../include/linux/overflow.h", directory: "/llk/linux-5.17/build_arm_allyes")
!940 = distinct !DILocation(line: 1078, column: 20, scope: !934)
!941 = !DILocation(line: 0, scope: !938, inlinedAt: !940)
!942 = !DILocation(line: 1078, column: 12, scope: !934)
!943 = !DILocation(line: 1079, column: 7, scope: !934)
!944 = !DILocation(line: 1079, column: 6, scope: !934)
!945 = !DILocation(line: 1080, column: 3, scope: !934)
!946 = !DILocation(line: 1082, column: 9, scope: !934)
!947 = !DILocation(line: 1082, column: 38, scope: !934)
!948 = !DILocation(line: 1082, column: 31, scope: !934)
!949 = !DILocation(line: 1082, column: 2, scope: !934)
!950 = !DILocation(line: 1085, column: 11, scope: !934)
!951 = !DILocation(line: 1087, column: 15, scope: !934)
!952 = !DILocation(line: 1087, column: 8, scope: !934)
!953 = !DILocation(line: 1087, column: 19, scope: !934)
!954 = !DILocation(line: 1087, column: 23, scope: !934)
!955 = !DILocation(line: 1087, column: 30, scope: !934)
!956 = !DILocation(line: 1087, column: 7, scope: !934)
!957 = !DILocation(line: 1090, column: 54, scope: !934)
!958 = !DILocation(line: 376, column: 3, scope: !624, inlinedAt: !959)
!959 = distinct !DILocation(line: 576, column: 11, scope: !627, inlinedAt: !960)
!960 = distinct !DILocation(line: 714, column: 9, scope: !629, inlinedAt: !961)
!961 = distinct !DILocation(line: 951, column: 15, scope: !962, inlinedAt: !963)
!962 = distinct !DISubprogram(name: "create_sort_entry", scope: !1, file: !1, line: 947, type: !17, scopeLine: 948, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!963 = distinct !DILocation(line: 1090, column: 24, scope: !934)
!964 = !DILocation(line: 582, column: 33, scope: !627, inlinedAt: !960)
!965 = !DILocation(line: 339, column: 3, scope: !633, inlinedAt: !966)
!966 = distinct !DILocation(line: 582, column: 20, scope: !627, inlinedAt: !960)
!967 = !DILocation(line: 582, column: 5, scope: !627, inlinedAt: !960)
!968 = !DILocation(line: 581, column: 10, scope: !627, inlinedAt: !960)
!969 = !DILocation(line: 952, column: 7, scope: !962, inlinedAt: !963)
!970 = !DILocation(line: 952, column: 6, scope: !962, inlinedAt: !963)
!971 = !DILocation(line: 953, column: 3, scope: !962, inlinedAt: !963)
!972 = !DILocation(line: 1090, column: 3, scope: !934)
!973 = !DILocation(line: 1090, column: 22, scope: !934)
!974 = !DILocation(line: 1092, column: 25, scope: !934)
!975 = !DILocation(line: 1093, column: 8, scope: !934)
!976 = !DILocation(line: 955, column: 20, scope: !962, inlinedAt: !963)
!977 = !DILocation(line: 955, column: 18, scope: !962, inlinedAt: !963)
!978 = !DILocation(line: 956, column: 14, scope: !962, inlinedAt: !963)
!979 = !DILocation(line: 956, column: 18, scope: !962, inlinedAt: !963)
!980 = !DILocation(line: 1096, column: 2, scope: !934)
!981 = !DILocation(line: 1082, column: 49, scope: !934)
!982 = distinct !{!982, !949, !980}
!983 = !DILocation(line: 1098, column: 6, scope: !934)
!984 = !DILocation(line: 1099, column: 7, scope: !934)
!985 = !DILocation(line: 1100, column: 3, scope: !934)
!986 = !DILocation(line: 1104, column: 19, scope: !934)
!987 = !DILocation(line: 1104, column: 17, scope: !934)
!988 = !DILocation(line: 1105, column: 3, scope: !934)
!989 = !DILocation(line: 1108, column: 39, scope: !934)
!990 = !DILocation(line: 968, column: 16, scope: !991, inlinedAt: !992)
!991 = distinct !DISubprogram(name: "detect_dups", scope: !1, file: !1, line: 961, type: !17, scopeLine: 963, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!992 = distinct !DILocation(line: 1108, column: 2, scope: !934)
!993 = !DILocation(line: 968, column: 6, scope: !991, inlinedAt: !992)
!994 = !DILocation(line: 971, column: 2, scope: !991, inlinedAt: !992)
!995 = !DILocation(line: 974, column: 8, scope: !991, inlinedAt: !992)
!996 = !DILocation(line: 974, column: 25, scope: !991, inlinedAt: !992)
!997 = !DILocation(line: 975, column: 2, scope: !991, inlinedAt: !992)
!998 = !DILocation(line: 976, column: 15, scope: !991, inlinedAt: !992)
!999 = !DILocation(line: 976, column: 32, scope: !991, inlinedAt: !992)
!1000 = !DILocation(line: 976, column: 8, scope: !991, inlinedAt: !992)
!1001 = !DILocation(line: 976, column: 7, scope: !991, inlinedAt: !992)
!1002 = !DILocation(line: 977, column: 8, scope: !991, inlinedAt: !992)
!1003 = !DILocation(line: 977, column: 22, scope: !991, inlinedAt: !992)
!1004 = !DILocation(line: 978, column: 4, scope: !991, inlinedAt: !992)
!1005 = !DILocation(line: 980, column: 9, scope: !991, inlinedAt: !992)
!1006 = !DILocation(line: 980, column: 26, scope: !991, inlinedAt: !992)
!1007 = !DILocation(line: 982, column: 2, scope: !991, inlinedAt: !992)
!1008 = !DILocation(line: 0, scope: !991, inlinedAt: !992)
!1009 = !DILocation(line: 975, column: 30, scope: !991, inlinedAt: !992)
!1010 = !DILocation(line: 975, column: 16, scope: !991, inlinedAt: !992)
!1011 = distinct !{!1011, !997, !1007}
!1012 = !DILocation(line: 984, column: 2, scope: !991, inlinedAt: !992)
!1013 = !{!"branch_weights", i32 2000, i32 1}
!1014 = !DILocation(line: 1110, column: 31, scope: !934)
!1015 = !DILocation(line: 992, column: 16, scope: !1016, inlinedAt: !1017)
!1016 = distinct !DISubprogram(name: "is_key", scope: !1, file: !1, line: 988, type: !17, scopeLine: 989, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!1017 = distinct !DILocation(line: 1110, column: 6, scope: !934)
!1018 = !DILocation(line: 992, column: 2, scope: !1016, inlinedAt: !1017)
!1019 = !DILocation(line: 993, column: 7, scope: !1016, inlinedAt: !1017)
!1020 = !DILocation(line: 993, column: 23, scope: !1016, inlinedAt: !1017)
!1021 = !DILocation(line: 0, scope: !1016, inlinedAt: !1017)
!1022 = !DILocation(line: 1110, column: 6, scope: !934)
!1023 = distinct !{!1023, !1018, !1024}
!1024 = !DILocation(line: 994, column: 11, scope: !1016, inlinedAt: !1017)
!1025 = !DILocation(line: 992, column: 32, scope: !1016, inlinedAt: !1017)
!1026 = !DILocation(line: 1111, column: 18, scope: !934)
!1027 = !DILocation(line: 1111, column: 3, scope: !934)
!1028 = !DILocation(line: 1113, column: 18, scope: !934)
!1029 = !DILocation(line: 0, scope: !934)
!1030 = !DILocation(line: 710, column: 7, scope: !1031, inlinedAt: !1032)
!1031 = distinct !DISubprogram(name: "set_sort_key", scope: !1, file: !1, line: 707, type: !17, scopeLine: 709, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!1032 = distinct !DILocation(line: 1115, column: 2, scope: !934)
!1033 = !DILocation(line: 710, column: 18, scope: !1031, inlinedAt: !1032)
!1034 = !DILocation(line: 1117, column: 2, scope: !934)
!1035 = !DILocation(line: 1120, column: 18, scope: !934)
!1036 = !DILocation(line: 1120, column: 6, scope: !934)
!1037 = !DILocation(line: 1121, column: 18, scope: !934)
!1038 = !DILocation(line: 1125, column: 12, scope: !934)
!1039 = !DILocation(line: 1008, column: 31, scope: !1040, inlinedAt: !1041)
!1040 = distinct !DISubprogram(name: "sort_secondary", scope: !1, file: !1, line: 998, type: !17, scopeLine: 1003, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!1041 = distinct !DILocation(line: 1121, column: 3, scope: !934)
!1042 = !DILocation(line: 992, column: 16, scope: !1016, inlinedAt: !1043)
!1043 = distinct !DILocation(line: 1008, column: 6, scope: !1040, inlinedAt: !1041)
!1044 = !DILocation(line: 992, column: 2, scope: !1016, inlinedAt: !1043)
!1045 = !DILocation(line: 993, column: 7, scope: !1016, inlinedAt: !1043)
!1046 = !DILocation(line: 993, column: 23, scope: !1016, inlinedAt: !1043)
!1047 = distinct !{!1047, !1044, !1048}
!1048 = !DILocation(line: 994, column: 11, scope: !1016, inlinedAt: !1043)
!1049 = !DILocation(line: 992, column: 32, scope: !1016, inlinedAt: !1043)
!1050 = distinct !{!1050, !1044, !1048}
!1051 = !DILocation(line: 0, scope: !1016, inlinedAt: !1043)
!1052 = !DILocation(line: 1008, column: 6, scope: !1040, inlinedAt: !1041)
!1053 = !DILocation(line: 1011, column: 14, scope: !1040, inlinedAt: !1041)
!1054 = !DILocation(line: 992, column: 2, scope: !1016, inlinedAt: !1055)
!1055 = distinct !DILocation(line: 1013, column: 6, scope: !1040, inlinedAt: !1041)
!1056 = !DILocation(line: 0, scope: !1040, inlinedAt: !1041)
!1057 = !DILocation(line: 1013, column: 33, scope: !1040, inlinedAt: !1041)
!1058 = !DILocation(line: 993, column: 7, scope: !1016, inlinedAt: !1055)
!1059 = !DILocation(line: 993, column: 23, scope: !1016, inlinedAt: !1055)
!1060 = distinct !{!1060, !1054, !1061}
!1061 = !DILocation(line: 994, column: 11, scope: !1016, inlinedAt: !1055)
!1062 = !DILocation(line: 992, column: 32, scope: !1016, inlinedAt: !1055)
!1063 = !DILocation(line: 992, column: 16, scope: !1016, inlinedAt: !1055)
!1064 = distinct !{!1064, !1054, !1061}
!1065 = !DILocation(line: 0, scope: !1016, inlinedAt: !1055)
!1066 = !DILocation(line: 1013, column: 6, scope: !1040, inlinedAt: !1041)
!1067 = !DILocation(line: 1014, column: 16, scope: !1040, inlinedAt: !1041)
!1068 = !DILocation(line: 1014, column: 3, scope: !1040, inlinedAt: !1041)
!1069 = !DILocation(line: 1016, column: 16, scope: !1040, inlinedAt: !1041)
!1070 = !DILocation(line: 1018, column: 16, scope: !1040, inlinedAt: !1041)
!1071 = !DILocation(line: 1018, column: 2, scope: !1040, inlinedAt: !1041)
!1072 = !DILocation(line: 1019, column: 46, scope: !1040, inlinedAt: !1041)
!1073 = !DILocation(line: 1020, column: 56, scope: !1040, inlinedAt: !1041)
!1074 = !DILocation(line: 1020, column: 46, scope: !1040, inlinedAt: !1041)
!1075 = !DILocation(line: 1022, column: 7, scope: !1040, inlinedAt: !1041)
!1076 = !{ptr @cmp_entries_key, ptr @cmp_entries_sum}
!1077 = !DILocation(line: 1022, column: 24, scope: !1040, inlinedAt: !1041)
!1078 = !DILocation(line: 1023, column: 9, scope: !1040, inlinedAt: !1041)
!1079 = !DILocation(line: 1024, column: 10, scope: !1040, inlinedAt: !1041)
!1080 = !DILocation(line: 1024, column: 8, scope: !1040, inlinedAt: !1041)
!1081 = !DILocation(line: 1025, column: 5, scope: !1040, inlinedAt: !1041)
!1082 = !DILocation(line: 1026, column: 3, scope: !1040, inlinedAt: !1041)
!1083 = !DILocation(line: 1028, column: 13, scope: !1040, inlinedAt: !1041)
!1084 = !DILocation(line: 1028, column: 7, scope: !1040, inlinedAt: !1041)
!1085 = !DILocation(line: 1029, column: 12, scope: !1040, inlinedAt: !1041)
!1086 = !DILocation(line: 1031, column: 4, scope: !1040, inlinedAt: !1041)
!1087 = !DILocation(line: 1034, column: 16, scope: !1040, inlinedAt: !1041)
!1088 = !DILocation(line: 710, column: 18, scope: !1031, inlinedAt: !1089)
!1089 = distinct !DILocation(line: 1034, column: 3, scope: !1040, inlinedAt: !1041)
!1090 = !DILocation(line: 1035, column: 9, scope: !1040, inlinedAt: !1041)
!1091 = !DILocation(line: 1035, column: 3, scope: !1040, inlinedAt: !1041)
!1092 = !DILocation(line: 710, column: 18, scope: !1031, inlinedAt: !1093)
!1093 = distinct !DILocation(line: 1038, column: 3, scope: !1040, inlinedAt: !1041)
!1094 = !DILocation(line: 1042, column: 2, scope: !1040, inlinedAt: !1041)
!1095 = distinct !{!1095, !1071, !1094}
!1096 = !DILocation(line: 1127, column: 16, scope: !934)
!1097 = !DILocation(line: 1129, column: 2, scope: !934)
!1098 = !DILocation(line: 1131, column: 35, scope: !934)
!1099 = !DILocation(line: 940, column: 16, scope: !912, inlinedAt: !1100)
!1100 = distinct !DILocation(line: 1131, column: 2, scope: !934)
!1101 = !DILocation(line: 940, column: 2, scope: !912, inlinedAt: !1100)
!1102 = !DILocation(line: 941, column: 22, scope: !912, inlinedAt: !1100)
!1103 = !DILocation(line: 919, column: 7, scope: !918, inlinedAt: !1104)
!1104 = distinct !DILocation(line: 941, column: 3, scope: !912, inlinedAt: !1100)
!1105 = !DILocation(line: 919, column: 6, scope: !918, inlinedAt: !1104)
!1106 = !DILocation(line: 920, column: 3, scope: !918, inlinedAt: !1104)
!1107 = !DILocation(line: 922, column: 6, scope: !918, inlinedAt: !1104)
!1108 = !DILocation(line: 922, column: 13, scope: !918, inlinedAt: !1104)
!1109 = !DILocation(line: 923, column: 24, scope: !918, inlinedAt: !1104)
!1110 = !DILocation(line: 923, column: 31, scope: !918, inlinedAt: !1104)
!1111 = !DILocation(line: 923, column: 3, scope: !918, inlinedAt: !1104)
!1112 = !DILocation(line: 925, column: 2, scope: !918, inlinedAt: !1104)
!1113 = !DILocation(line: 926, column: 1, scope: !918, inlinedAt: !1104)
!1114 = !DILocation(line: 940, column: 30, scope: !912, inlinedAt: !1100)
!1115 = distinct !{!1115, !1101, !1116}
!1116 = !DILocation(line: 941, column: 32, scope: !912, inlinedAt: !1100)
!1117 = !DILocation(line: 943, column: 2, scope: !912, inlinedAt: !1100)
!1118 = !DILocation(line: 1133, column: 2, scope: !934)
!1119 = !DILocation(line: 1134, column: 1, scope: !934)
!1120 = distinct !DISubprogram(name: "cmp_entries_key", scope: !1, file: !1, line: 885, type: !17, scopeLine: 886, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!1121 = !DILocation(line: 886, scope: !1120)
!1122 = !DILocation(line: 895, column: 6, scope: !1120)
!1123 = !DILocation(line: 896, column: 6, scope: !1120)
!1124 = !DILocation(line: 898, column: 13, scope: !1120)
!1125 = !DILocation(line: 899, column: 13, scope: !1120)
!1126 = !DILocation(line: 901, column: 21, scope: !1120)
!1127 = !DILocation(line: 901, column: 26, scope: !1120)
!1128 = !DILocation(line: 903, column: 18, scope: !1120)
!1129 = !DILocation(line: 903, column: 35, scope: !1120)
!1130 = !DILocation(line: 903, column: 11, scope: !1120)
!1131 = !DILocation(line: 905, column: 18, scope: !1120)
!1132 = !DILocation(line: 907, column: 17, scope: !1120)
!1133 = !DILocation(line: 907, column: 30, scope: !1120)
!1134 = !DILocation(line: 907, column: 21, scope: !1120)
!1135 = !DILocation(line: 908, column: 17, scope: !1120)
!1136 = !DILocation(line: 908, column: 21, scope: !1120)
!1137 = !DILocation(line: 910, column: 8, scope: !1120)
!1138 = !DILocation(line: 911, column: 16, scope: !1120)
!1139 = !DILocation(line: 911, column: 6, scope: !1120)
!1140 = !DILocation(line: 912, column: 10, scope: !1120)
!1141 = !DILocation(line: 912, column: 9, scope: !1120)
!1142 = !DILocation(line: 912, column: 3, scope: !1120)
!1143 = !DILocation(line: 0, scope: !1120)
!1144 = !DILocation(line: 914, column: 2, scope: !1120)
!1145 = distinct !DISubprogram(name: "cmp_entries_sum", scope: !1, file: !1, line: 854, type: !17, scopeLine: 855, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!1146 = !DILocation(line: 855, scope: !1145)
!1147 = !DILocation(line: 864, column: 6, scope: !1145)
!1148 = !DILocation(line: 865, column: 6, scope: !1145)
!1149 = !DILocation(line: 867, column: 13, scope: !1145)
!1150 = !DILocation(line: 868, column: 13, scope: !1145)
!1151 = !DILocation(line: 870, column: 21, scope: !1145)
!1152 = !DILocation(line: 870, column: 26, scope: !1145)
!1153 = !DILocation(line: 872, column: 18, scope: !1145)
!1154 = !DILocation(line: 872, column: 35, scope: !1145)
!1155 = !DILocation(line: 872, column: 11, scope: !1145)
!1156 = !DILocation(line: 873, column: 18, scope: !1145)
!1157 = !DILocation(line: 875, column: 46, scope: !1145)
!1158 = !DILocation(line: 876, column: 18, scope: !1145)
!1159 = !DILocation(line: 876, column: 46, scope: !1145)
!1160 = !DILocation(line: 878, column: 8, scope: !1145)
!1161 = !DILocation(line: 879, column: 16, scope: !1145)
!1162 = !DILocation(line: 879, column: 6, scope: !1145)
!1163 = !DILocation(line: 880, column: 10, scope: !1145)
!1164 = !DILocation(line: 880, column: 9, scope: !1145)
!1165 = !DILocation(line: 880, column: 3, scope: !1145)
!1166 = !DILocation(line: 0, scope: !1145)
!1167 = !DILocation(line: 882, column: 2, scope: !1145)
!1168 = distinct !DISubprogram(name: "tracing_map_elt_free", scope: !1, file: !1, line: 389, type: !17, scopeLine: 390, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!1169 = !DILocation(line: 390, scope: !1168)
!1170 = !DILocation(line: 391, column: 7, scope: !1168)
!1171 = !DILocation(line: 391, column: 6, scope: !1168)
!1172 = !DILocation(line: 392, column: 3, scope: !1168)
!1173 = !DILocation(line: 394, column: 6, scope: !1168)
!1174 = !DILocation(line: 394, column: 11, scope: !1168)
!1175 = !DILocation(line: 394, column: 16, scope: !1168)
!1176 = !DILocation(line: 394, column: 20, scope: !1168)
!1177 = !DILocation(line: 394, column: 23, scope: !1168)
!1178 = !DILocation(line: 394, column: 28, scope: !1168)
!1179 = !DILocation(line: 394, column: 33, scope: !1168)
!1180 = !DILocation(line: 394, column: 38, scope: !1168)
!1181 = !DILocation(line: 395, column: 3, scope: !1168)
!1182 = !DILocation(line: 395, column: 8, scope: !1168)
!1183 = !DILocation(line: 395, column: 13, scope: !1168)
!1184 = !DILocation(line: 395, column: 18, scope: !1168)
!1185 = !DILocation(line: 396, column: 13, scope: !1168)
!1186 = !DILocation(line: 396, column: 2, scope: !1168)
!1187 = !DILocation(line: 397, column: 13, scope: !1168)
!1188 = !DILocation(line: 397, column: 2, scope: !1168)
!1189 = !DILocation(line: 398, column: 13, scope: !1168)
!1190 = !DILocation(line: 398, column: 2, scope: !1168)
!1191 = !DILocation(line: 399, column: 13, scope: !1168)
!1192 = !DILocation(line: 399, column: 2, scope: !1168)
!1193 = !DILocation(line: 400, column: 2, scope: !1168)
!1194 = !DILocation(line: 401, column: 1, scope: !1168)
!1195 = distinct !DISubprogram(name: "cmp_entries_dup", scope: !1, file: !1, line: 840, type: !17, scopeLine: 841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !18)
!1196 = !DILocation(line: 841, scope: !1195)
!1197 = !DILocation(line: 845, column: 6, scope: !1195)
!1198 = !DILocation(line: 846, column: 6, scope: !1195)
!1199 = !DILocation(line: 848, column: 16, scope: !1195)
!1200 = !DILocation(line: 848, column: 24, scope: !1195)
!1201 = !DILocation(line: 848, column: 32, scope: !1195)
!1202 = !DILocation(line: 848, column: 37, scope: !1195)
!1203 = !DILocation(line: 848, column: 42, scope: !1195)
!1204 = !DILocation(line: 848, column: 6, scope: !1195)
!1205 = !DILocation(line: 849, column: 7, scope: !1195)
!1206 = !DILocation(line: 849, column: 3, scope: !1195)
!1207 = !DILocation(line: 0, scope: !1195)
!1208 = !DILocation(line: 851, column: 2, scope: !1195)
