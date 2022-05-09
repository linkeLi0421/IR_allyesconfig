; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/dss/dispc_coefs.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon = type { i32, i32, ptr, ptr }
%struct.dispc_coef = type { i8, i8, i8, i8, i8 }

@dispc_ovl_get_scale_coef.coefs = internal constant { [15 x %struct.anon], [48 x i8] } { [15 x %struct.anon] [%struct.anon { i32 27, i32 32, ptr @coef3_M32, ptr @coef5_M32 }, %struct.anon { i32 23, i32 26, ptr @coef3_M26, ptr @coef5_M26 }, %struct.anon { i32 20, i32 22, ptr @coef3_M22, ptr @coef5_M22 }, %struct.anon { i32 17, i32 19, ptr @coef3_M19, ptr @coef5_M19 }, %struct.anon { i32 15, i32 16, ptr @coef3_M16, ptr @coef5_M16 }, %struct.anon { i32 14, i32 14, ptr @coef3_M14, ptr @coef5_M14 }, %struct.anon { i32 13, i32 13, ptr @coef3_M13, ptr @coef5_M13 }, %struct.anon { i32 12, i32 12, ptr @coef3_M12, ptr @coef5_M12 }, %struct.anon { i32 11, i32 11, ptr @coef3_M11, ptr @coef5_M11 }, %struct.anon { i32 10, i32 10, ptr @coef3_M10, ptr @coef5_M10 }, %struct.anon { i32 9, i32 9, ptr @coef3_M9, ptr @coef5_M9 }, %struct.anon { i32 4, i32 8, ptr @coef3_M8, ptr @coef5_M8 }, %struct.anon { i32 3, i32 3, ptr @coef3_M11, ptr @coef5_M11 }, %struct.anon { i32 2, i32 2, ptr @coef3_M16, ptr @coef5_M16 }, %struct.anon { i32 0, i32 1, ptr @coef3_M19, ptr @coef5_M19 }], [48 x i8] zeroinitializer }, align 32
@coef3_M32 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 0, i8 27, i8 74, i8 27, i8 0 }, %struct.dispc_coef { i8 0, i8 19, i8 73, i8 36, i8 0 }, %struct.dispc_coef { i8 0, i8 12, i8 71, i8 45, i8 0 }, %struct.dispc_coef { i8 0, i8 6, i8 68, i8 54, i8 0 }, %struct.dispc_coef { i8 0, i8 64, i8 64, i8 0, i8 0 }, %struct.dispc_coef { i8 0, i8 54, i8 68, i8 6, i8 0 }, %struct.dispc_coef { i8 0, i8 45, i8 71, i8 12, i8 0 }, %struct.dispc_coef { i8 0, i8 36, i8 73, i8 19, i8 0 }], [56 x i8] zeroinitializer }, align 32
@coef5_M32 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 7, i8 33, i8 48, i8 33, i8 7 }, %struct.dispc_coef { i8 10, i8 36, i8 48, i8 29, i8 5 }, %struct.dispc_coef { i8 13, i8 39, i8 47, i8 26, i8 3 }, %struct.dispc_coef { i8 16, i8 42, i8 46, i8 23, i8 1 }, %struct.dispc_coef { i8 0, i8 19, i8 45, i8 45, i8 19 }, %struct.dispc_coef { i8 1, i8 23, i8 46, i8 42, i8 16 }, %struct.dispc_coef { i8 3, i8 26, i8 47, i8 39, i8 13 }, %struct.dispc_coef { i8 5, i8 29, i8 48, i8 36, i8 10 }], [56 x i8] zeroinitializer }, align 32
@coef3_M26 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 0, i8 26, i8 76, i8 26, i8 0 }, %struct.dispc_coef { i8 0, i8 19, i8 74, i8 35, i8 0 }, %struct.dispc_coef { i8 0, i8 11, i8 72, i8 45, i8 0 }, %struct.dispc_coef { i8 0, i8 5, i8 69, i8 54, i8 0 }, %struct.dispc_coef { i8 0, i8 64, i8 64, i8 0, i8 0 }, %struct.dispc_coef { i8 0, i8 54, i8 69, i8 5, i8 0 }, %struct.dispc_coef { i8 0, i8 45, i8 72, i8 11, i8 0 }, %struct.dispc_coef { i8 0, i8 35, i8 74, i8 19, i8 0 }], [56 x i8] zeroinitializer }, align 32
@coef5_M26 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 6, i8 33, i8 50, i8 33, i8 6 }, %struct.dispc_coef { i8 8, i8 36, i8 51, i8 29, i8 4 }, %struct.dispc_coef { i8 11, i8 40, i8 50, i8 25, i8 2 }, %struct.dispc_coef { i8 14, i8 43, i8 48, i8 22, i8 1 }, %struct.dispc_coef { i8 0, i8 18, i8 46, i8 46, i8 18 }, %struct.dispc_coef { i8 1, i8 22, i8 48, i8 43, i8 14 }, %struct.dispc_coef { i8 2, i8 25, i8 50, i8 40, i8 11 }, %struct.dispc_coef { i8 4, i8 29, i8 51, i8 36, i8 8 }], [56 x i8] zeroinitializer }, align 32
@coef3_M22 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 0, i8 25, i8 78, i8 25, i8 0 }, %struct.dispc_coef { i8 0, i8 17, i8 77, i8 34, i8 0 }, %struct.dispc_coef { i8 0, i8 10, i8 74, i8 44, i8 0 }, %struct.dispc_coef { i8 0, i8 5, i8 69, i8 54, i8 0 }, %struct.dispc_coef { i8 0, i8 64, i8 64, i8 0, i8 0 }, %struct.dispc_coef { i8 0, i8 54, i8 69, i8 5, i8 0 }, %struct.dispc_coef { i8 0, i8 44, i8 74, i8 10, i8 0 }, %struct.dispc_coef { i8 0, i8 34, i8 77, i8 17, i8 0 }], [56 x i8] zeroinitializer }, align 32
@coef5_M22 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 4, i8 33, i8 54, i8 33, i8 4 }, %struct.dispc_coef { i8 6, i8 37, i8 54, i8 28, i8 3 }, %struct.dispc_coef { i8 9, i8 41, i8 53, i8 24, i8 1 }, %struct.dispc_coef { i8 12, i8 45, i8 51, i8 20, i8 0 }, %struct.dispc_coef { i8 0, i8 16, i8 48, i8 48, i8 16 }, %struct.dispc_coef { i8 0, i8 20, i8 51, i8 45, i8 12 }, %struct.dispc_coef { i8 1, i8 24, i8 53, i8 41, i8 9 }, %struct.dispc_coef { i8 3, i8 28, i8 54, i8 37, i8 6 }], [56 x i8] zeroinitializer }, align 32
@coef3_M19 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 0, i8 24, i8 80, i8 24, i8 0 }, %struct.dispc_coef { i8 0, i8 16, i8 79, i8 33, i8 0 }, %struct.dispc_coef { i8 0, i8 9, i8 76, i8 43, i8 0 }, %struct.dispc_coef { i8 0, i8 4, i8 70, i8 54, i8 0 }, %struct.dispc_coef { i8 0, i8 64, i8 64, i8 0, i8 0 }, %struct.dispc_coef { i8 0, i8 54, i8 70, i8 4, i8 0 }, %struct.dispc_coef { i8 0, i8 43, i8 76, i8 9, i8 0 }, %struct.dispc_coef { i8 0, i8 33, i8 79, i8 16, i8 0 }], [56 x i8] zeroinitializer }, align 32
@coef5_M19 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 3, i8 32, i8 58, i8 32, i8 3 }, %struct.dispc_coef { i8 4, i8 38, i8 58, i8 27, i8 1 }, %struct.dispc_coef { i8 7, i8 42, i8 55, i8 23, i8 1 }, %struct.dispc_coef { i8 10, i8 46, i8 54, i8 18, i8 0 }, %struct.dispc_coef { i8 0, i8 14, i8 50, i8 50, i8 14 }, %struct.dispc_coef { i8 0, i8 18, i8 54, i8 46, i8 10 }, %struct.dispc_coef { i8 1, i8 23, i8 55, i8 42, i8 7 }, %struct.dispc_coef { i8 1, i8 27, i8 58, i8 38, i8 4 }], [56 x i8] zeroinitializer }, align 32
@coef3_M16 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 0, i8 22, i8 84, i8 22, i8 0 }, %struct.dispc_coef { i8 0, i8 14, i8 82, i8 32, i8 0 }, %struct.dispc_coef { i8 0, i8 8, i8 78, i8 42, i8 0 }, %struct.dispc_coef { i8 0, i8 3, i8 72, i8 53, i8 0 }, %struct.dispc_coef { i8 0, i8 64, i8 64, i8 0, i8 0 }, %struct.dispc_coef { i8 0, i8 53, i8 72, i8 3, i8 0 }, %struct.dispc_coef { i8 0, i8 42, i8 78, i8 8, i8 0 }, %struct.dispc_coef { i8 0, i8 32, i8 82, i8 14, i8 0 }], [56 x i8] zeroinitializer }, align 32
@coef5_M16 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 0, i8 31, i8 66, i8 31, i8 0 }, %struct.dispc_coef { i8 1, i8 38, i8 65, i8 25, i8 -1 }, %struct.dispc_coef { i8 3, i8 44, i8 62, i8 20, i8 -1 }, %struct.dispc_coef { i8 6, i8 49, i8 59, i8 14, i8 0 }, %struct.dispc_coef { i8 0, i8 10, i8 54, i8 54, i8 10 }, %struct.dispc_coef { i8 0, i8 14, i8 59, i8 49, i8 6 }, %struct.dispc_coef { i8 -1, i8 20, i8 62, i8 44, i8 3 }, %struct.dispc_coef { i8 -1, i8 25, i8 65, i8 38, i8 1 }], [56 x i8] zeroinitializer }, align 32
@coef3_M14 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 0, i8 20, i8 88, i8 20, i8 0 }, %struct.dispc_coef { i8 0, i8 12, i8 86, i8 30, i8 0 }, %struct.dispc_coef { i8 0, i8 6, i8 81, i8 41, i8 0 }, %struct.dispc_coef { i8 0, i8 2, i8 74, i8 52, i8 0 }, %struct.dispc_coef { i8 0, i8 64, i8 64, i8 0, i8 0 }, %struct.dispc_coef { i8 0, i8 52, i8 74, i8 2, i8 0 }, %struct.dispc_coef { i8 0, i8 41, i8 81, i8 6, i8 0 }, %struct.dispc_coef { i8 0, i8 30, i8 86, i8 12, i8 0 }], [56 x i8] zeroinitializer }, align 32
@coef5_M14 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 -2, i8 30, i8 72, i8 30, i8 -2 }, %struct.dispc_coef { i8 -1, i8 37, i8 71, i8 23, i8 -2 }, %struct.dispc_coef { i8 0, i8 45, i8 69, i8 16, i8 -2 }, %struct.dispc_coef { i8 3, i8 52, i8 64, i8 10, i8 -1 }, %struct.dispc_coef { i8 0, i8 6, i8 58, i8 58, i8 6 }, %struct.dispc_coef { i8 -1, i8 10, i8 64, i8 52, i8 3 }, %struct.dispc_coef { i8 -2, i8 16, i8 69, i8 45, i8 0 }, %struct.dispc_coef { i8 -2, i8 23, i8 71, i8 37, i8 -1 }], [56 x i8] zeroinitializer }, align 32
@coef3_M13 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 0, i8 18, i8 92, i8 18, i8 0 }, %struct.dispc_coef { i8 0, i8 10, i8 90, i8 28, i8 0 }, %struct.dispc_coef { i8 0, i8 5, i8 83, i8 40, i8 0 }, %struct.dispc_coef { i8 0, i8 1, i8 75, i8 52, i8 0 }, %struct.dispc_coef { i8 0, i8 64, i8 64, i8 0, i8 0 }, %struct.dispc_coef { i8 0, i8 52, i8 75, i8 1, i8 0 }, %struct.dispc_coef { i8 0, i8 40, i8 83, i8 5, i8 0 }, %struct.dispc_coef { i8 0, i8 28, i8 90, i8 10, i8 0 }], [56 x i8] zeroinitializer }, align 32
@coef5_M13 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 -3, i8 28, i8 78, i8 28, i8 -3 }, %struct.dispc_coef { i8 -3, i8 37, i8 76, i8 21, i8 -3 }, %struct.dispc_coef { i8 -2, i8 45, i8 73, i8 14, i8 -2 }, %struct.dispc_coef { i8 0, i8 53, i8 68, i8 8, i8 -1 }, %struct.dispc_coef { i8 0, i8 3, i8 61, i8 61, i8 3 }, %struct.dispc_coef { i8 -1, i8 8, i8 68, i8 53, i8 0 }, %struct.dispc_coef { i8 -2, i8 14, i8 73, i8 45, i8 -2 }, %struct.dispc_coef { i8 -3, i8 21, i8 76, i8 37, i8 -3 }], [56 x i8] zeroinitializer }, align 32
@coef3_M12 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 0, i8 16, i8 96, i8 16, i8 0 }, %struct.dispc_coef { i8 0, i8 9, i8 93, i8 26, i8 0 }, %struct.dispc_coef { i8 0, i8 4, i8 86, i8 38, i8 0 }, %struct.dispc_coef { i8 0, i8 1, i8 76, i8 51, i8 0 }, %struct.dispc_coef { i8 0, i8 64, i8 64, i8 0, i8 0 }, %struct.dispc_coef { i8 0, i8 51, i8 76, i8 1, i8 0 }, %struct.dispc_coef { i8 0, i8 38, i8 86, i8 4, i8 0 }, %struct.dispc_coef { i8 0, i8 26, i8 93, i8 9, i8 0 }], [56 x i8] zeroinitializer }, align 32
@coef5_M12 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 -4, i8 26, i8 84, i8 26, i8 -4 }, %struct.dispc_coef { i8 -5, i8 36, i8 82, i8 18, i8 -3 }, %struct.dispc_coef { i8 -4, i8 46, i8 78, i8 10, i8 -2 }, %struct.dispc_coef { i8 -3, i8 55, i8 72, i8 5, i8 -1 }, %struct.dispc_coef { i8 0, i8 0, i8 64, i8 64, i8 0 }, %struct.dispc_coef { i8 -1, i8 5, i8 72, i8 55, i8 -3 }, %struct.dispc_coef { i8 -2, i8 10, i8 78, i8 46, i8 -4 }, %struct.dispc_coef { i8 -3, i8 18, i8 82, i8 36, i8 -5 }], [56 x i8] zeroinitializer }, align 32
@coef3_M11 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 0, i8 14, i8 100, i8 14, i8 0 }, %struct.dispc_coef { i8 0, i8 6, i8 98, i8 24, i8 0 }, %struct.dispc_coef { i8 0, i8 2, i8 90, i8 36, i8 0 }, %struct.dispc_coef { i8 0, i8 0, i8 78, i8 50, i8 0 }, %struct.dispc_coef { i8 0, i8 64, i8 64, i8 0, i8 0 }, %struct.dispc_coef { i8 0, i8 50, i8 78, i8 0, i8 0 }, %struct.dispc_coef { i8 0, i8 36, i8 90, i8 2, i8 0 }, %struct.dispc_coef { i8 0, i8 24, i8 98, i8 6, i8 0 }], [56 x i8] zeroinitializer }, align 32
@coef5_M11 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 -5, i8 23, i8 92, i8 23, i8 -5 }, %struct.dispc_coef { i8 -6, i8 34, i8 90, i8 13, i8 -3 }, %struct.dispc_coef { i8 -6, i8 45, i8 85, i8 6, i8 -2 }, %struct.dispc_coef { i8 -6, i8 57, i8 78, i8 0, i8 -1 }, %struct.dispc_coef { i8 0, i8 -4, i8 68, i8 68, i8 -4 }, %struct.dispc_coef { i8 -1, i8 0, i8 78, i8 57, i8 -6 }, %struct.dispc_coef { i8 -2, i8 6, i8 85, i8 45, i8 -6 }, %struct.dispc_coef { i8 -3, i8 13, i8 90, i8 34, i8 -6 }], [56 x i8] zeroinitializer }, align 32
@coef3_M10 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 0, i8 10, i8 108, i8 10, i8 0 }, %struct.dispc_coef { i8 0, i8 3, i8 104, i8 21, i8 0 }, %struct.dispc_coef { i8 0, i8 0, i8 94, i8 34, i8 0 }, %struct.dispc_coef { i8 0, i8 -1, i8 80, i8 49, i8 0 }, %struct.dispc_coef { i8 0, i8 64, i8 64, i8 0, i8 0 }, %struct.dispc_coef { i8 0, i8 49, i8 80, i8 -1, i8 0 }, %struct.dispc_coef { i8 0, i8 34, i8 94, i8 0, i8 0 }, %struct.dispc_coef { i8 0, i8 21, i8 104, i8 3, i8 0 }], [56 x i8] zeroinitializer }, align 32
@coef5_M10 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 -4, i8 18, i8 100, i8 18, i8 -4 }, %struct.dispc_coef { i8 -6, i8 30, i8 99, i8 8, i8 -3 }, %struct.dispc_coef { i8 -8, i8 44, i8 93, i8 0, i8 -1 }, %struct.dispc_coef { i8 -9, i8 58, i8 84, i8 -5, i8 0 }, %struct.dispc_coef { i8 0, i8 -8, i8 72, i8 72, i8 -8 }, %struct.dispc_coef { i8 0, i8 -5, i8 84, i8 58, i8 -9 }, %struct.dispc_coef { i8 -1, i8 0, i8 93, i8 44, i8 -8 }, %struct.dispc_coef { i8 -3, i8 8, i8 99, i8 30, i8 -6 }], [56 x i8] zeroinitializer }, align 32
@coef3_M9 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 0, i8 6, i8 116, i8 6, i8 0 }, %struct.dispc_coef { i8 0, i8 0, i8 112, i8 16, i8 0 }, %struct.dispc_coef { i8 0, i8 -2, i8 100, i8 30, i8 0 }, %struct.dispc_coef { i8 0, i8 -2, i8 83, i8 47, i8 0 }, %struct.dispc_coef { i8 0, i8 64, i8 64, i8 0, i8 0 }, %struct.dispc_coef { i8 0, i8 47, i8 83, i8 -2, i8 0 }, %struct.dispc_coef { i8 0, i8 30, i8 100, i8 -2, i8 0 }, %struct.dispc_coef { i8 0, i8 16, i8 112, i8 0, i8 0 }], [56 x i8] zeroinitializer }, align 32
@coef5_M9 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 -3, i8 10, i8 114, i8 10, i8 -3 }, %struct.dispc_coef { i8 -6, i8 24, i8 111, i8 0, i8 -1 }, %struct.dispc_coef { i8 -8, i8 40, i8 103, i8 -7, i8 0 }, %struct.dispc_coef { i8 -11, i8 58, i8 91, i8 -11, i8 1 }, %struct.dispc_coef { i8 0, i8 -12, i8 76, i8 76, i8 -12 }, %struct.dispc_coef { i8 1, i8 -11, i8 91, i8 58, i8 -11 }, %struct.dispc_coef { i8 0, i8 -7, i8 103, i8 40, i8 -8 }, %struct.dispc_coef { i8 -1, i8 0, i8 111, i8 24, i8 -6 }], [56 x i8] zeroinitializer }, align 32
@coef3_M8 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 0, i8 0, i8 -128, i8 0, i8 0 }, %struct.dispc_coef { i8 0, i8 -4, i8 123, i8 9, i8 0 }, %struct.dispc_coef { i8 0, i8 -4, i8 108, i8 24, i8 0 }, %struct.dispc_coef { i8 0, i8 -2, i8 87, i8 43, i8 0 }, %struct.dispc_coef { i8 0, i8 64, i8 64, i8 0, i8 0 }, %struct.dispc_coef { i8 0, i8 43, i8 87, i8 -2, i8 0 }, %struct.dispc_coef { i8 0, i8 24, i8 108, i8 -4, i8 0 }, %struct.dispc_coef { i8 0, i8 9, i8 123, i8 -4, i8 0 }], [56 x i8] zeroinitializer }, align 32
@coef5_M8 = internal constant { [8 x %struct.dispc_coef], [56 x i8] } { [8 x %struct.dispc_coef] [%struct.dispc_coef { i8 0, i8 0, i8 -128, i8 0, i8 0 }, %struct.dispc_coef { i8 -2, i8 14, i8 125, i8 -10, i8 1 }, %struct.dispc_coef { i8 -6, i8 33, i8 114, i8 -15, i8 2 }, %struct.dispc_coef { i8 -10, i8 55, i8 98, i8 -16, i8 1 }, %struct.dispc_coef { i8 0, i8 -14, i8 78, i8 78, i8 -14 }, %struct.dispc_coef { i8 1, i8 -16, i8 98, i8 55, i8 -10 }, %struct.dispc_coef { i8 2, i8 -15, i8 114, i8 33, i8 -6 }, %struct.dispc_coef { i8 1, i8 -10, i8 125, i8 14, i8 -2 }], [56 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [6 x i8] c"coefs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 284, i32 4 }
@___asan_gen_.4 = private unnamed_addr constant [10 x i8] c"coef3_M32\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 133, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [10 x i8] c"coef5_M32\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 265, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [10 x i8] c"coef3_M26\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 122, i32 32 }
@___asan_gen_.13 = private unnamed_addr constant [10 x i8] c"coef5_M26\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 254, i32 32 }
@___asan_gen_.16 = private unnamed_addr constant [10 x i8] c"coef3_M22\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 111, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant [10 x i8] c"coef5_M22\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 243, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant [10 x i8] c"coef3_M19\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 100, i32 32 }
@___asan_gen_.25 = private unnamed_addr constant [10 x i8] c"coef5_M19\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 232, i32 32 }
@___asan_gen_.28 = private unnamed_addr constant [10 x i8] c"coef3_M16\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 89, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant [10 x i8] c"coef5_M16\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 221, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant [10 x i8] c"coef3_M14\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 78, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant [10 x i8] c"coef5_M14\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 210, i32 32 }
@___asan_gen_.40 = private unnamed_addr constant [10 x i8] c"coef3_M13\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 67, i32 32 }
@___asan_gen_.43 = private unnamed_addr constant [10 x i8] c"coef5_M13\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 199, i32 32 }
@___asan_gen_.46 = private unnamed_addr constant [10 x i8] c"coef3_M12\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 56, i32 32 }
@___asan_gen_.49 = private unnamed_addr constant [10 x i8] c"coef5_M12\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 188, i32 32 }
@___asan_gen_.52 = private unnamed_addr constant [10 x i8] c"coef3_M11\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 45, i32 32 }
@___asan_gen_.55 = private unnamed_addr constant [10 x i8] c"coef5_M11\00", align 1
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 177, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant [10 x i8] c"coef3_M10\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 34, i32 32 }
@___asan_gen_.61 = private unnamed_addr constant [10 x i8] c"coef5_M10\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 166, i32 32 }
@___asan_gen_.64 = private unnamed_addr constant [9 x i8] c"coef3_M9\00", align 1
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 23, i32 32 }
@___asan_gen_.67 = private unnamed_addr constant [9 x i8] c"coef5_M9\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 155, i32 32 }
@___asan_gen_.70 = private unnamed_addr constant [9 x i8] c"coef3_M8\00", align 1
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 12, i32 32 }
@___asan_gen_.73 = private unnamed_addr constant [9 x i8] c"coef5_M8\00", align 1
@___asan_gen_.74 = private constant [45 x i8] c"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c\00", align 1
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.74, i32 144, i32 32 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @dispc_ovl_get_scale_coef.coefs, ptr @coef3_M32, ptr @coef5_M32, ptr @coef3_M26, ptr @coef5_M26, ptr @coef3_M22, ptr @coef5_M22, ptr @coef3_M19, ptr @coef5_M19, ptr @coef3_M16, ptr @coef5_M16, ptr @coef3_M14, ptr @coef5_M14, ptr @coef3_M13, ptr @coef5_M13, ptr @coef3_M12, ptr @coef5_M12, ptr @coef3_M11, ptr @coef5_M11, ptr @coef3_M10, ptr @coef5_M10, ptr @coef3_M9, ptr @coef5_M9, ptr @coef3_M8, ptr @coef5_M8], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dispc_ovl_get_scale_coef.coefs to i32), i32 240, i32 288, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_M32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_M32 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_M26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_M26 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_M22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_M22 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_M19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_M19 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_M16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_M16 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_M14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_M14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_M13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_M13 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_M12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_M12 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_M11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_M11 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_M10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_M10 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_M9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_M9 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_M8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_M8 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @dispc_ovl_get_scale_coef(i32 noundef %inc, i32 noundef %five_taps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #3
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3456, i32 %inc)
  %cmp1.not = icmp slt i32 %inc, 3456
  br i1 %cmp1.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4223, i32 %inc)
  %cmp3.not = icmp ugt i32 %inc, 4223
  br i1 %cmp3.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

if.then:                                          ; preds = %for.inc.13.if.then_crit_edge, %for.inc.12.if.then_crit_edge, %for.inc.11.if.then_crit_edge, %for.inc.10.if.then_crit_edge, %for.inc.9.if.then_crit_edge, %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %i.015.lcssa = phi i32 [ 0, %land.lhs.true.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ], [ 8, %for.inc.7.if.then_crit_edge ], [ 9, %for.inc.8.if.then_crit_edge ], [ 10, %for.inc.9.if.then_crit_edge ], [ 11, %for.inc.10.if.then_crit_edge ], [ 12, %for.inc.11.if.then_crit_edge ], [ 13, %for.inc.12.if.then_crit_edge ], [ 14, %for.inc.13.if.then_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %five_taps)
  %tobool.not = icmp eq i32 %five_taps, 0
  %coef_5 = getelementptr [15 x %struct.anon], ptr @dispc_ovl_get_scale_coef.coefs, i32 0, i32 %i.015.lcssa, i32 3
  %coef_3 = getelementptr [15 x %struct.anon], ptr @dispc_ovl_get_scale_coef.coefs, i32 0, i32 %i.015.lcssa, i32 2
  %cond.in = select i1 %tobool.not, ptr %coef_3, ptr %coef_5
  %0 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %0)
  %cond = load ptr, ptr %cond.in, align 4
  br label %cleanup

for.inc:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2944, i32 %inc)
  %cmp1.not.1 = icmp slt i32 %inc, 2944
  br i1 %cmp1.not.1, label %for.inc.1, label %for.inc.if.then_crit_edge

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 2560, i32 %inc)
  %cmp1.not.2 = icmp slt i32 %inc, 2560
  br i1 %cmp1.not.2, label %for.inc.2, label %for.inc.1.if.then_crit_edge

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2176, i32 %inc)
  %cmp1.not.3 = icmp slt i32 %inc, 2176
  br i1 %cmp1.not.3, label %for.inc.3, label %for.inc.2.if.then_crit_edge

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1920, i32 %inc)
  %cmp1.not.4 = icmp slt i32 %inc, 1920
  br i1 %cmp1.not.4, label %for.inc.4, label %for.inc.3.if.then_crit_edge

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 1792, i32 %inc)
  %cmp1.not.5 = icmp slt i32 %inc, 1792
  br i1 %cmp1.not.5, label %for.inc.5, label %for.inc.4.if.then_crit_edge

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1664, i32 %inc)
  %cmp1.not.6 = icmp slt i32 %inc, 1664
  br i1 %cmp1.not.6, label %for.inc.6, label %for.inc.5.if.then_crit_edge

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 1536, i32 %inc)
  %cmp1.not.7 = icmp slt i32 %inc, 1536
  br i1 %cmp1.not.7, label %for.inc.7, label %for.inc.6.if.then_crit_edge

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1408, i32 %inc)
  %cmp1.not.8 = icmp slt i32 %inc, 1408
  br i1 %cmp1.not.8, label %for.inc.8, label %for.inc.7.if.then_crit_edge

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %inc)
  %cmp1.not.9 = icmp slt i32 %inc, 1280
  br i1 %cmp1.not.9, label %for.inc.9, label %for.inc.8.if.then_crit_edge

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1152, i32 %inc)
  %cmp1.not.10 = icmp slt i32 %inc, 1152
  br i1 %cmp1.not.10, label %for.inc.10, label %for.inc.9.if.then_crit_edge

for.inc.9.if.then_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

for.inc.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 512, i32 %inc)
  %cmp1.not.11 = icmp slt i32 %inc, 512
  br i1 %cmp1.not.11, label %for.inc.11, label %for.inc.10.if.then_crit_edge

for.inc.10.if.then_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

for.inc.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 384, i32 %inc)
  %cmp1.not.12 = icmp slt i32 %inc, 384
  br i1 %cmp1.not.12, label %for.inc.12, label %for.inc.11.if.then_crit_edge

for.inc.11.if.then_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

for.inc.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %inc)
  %cmp1.not.13 = icmp slt i32 %inc, 256
  br i1 %cmp1.not.13, label %for.inc.13, label %for.inc.12.if.then_crit_edge

for.inc.12.if.then_crit_edge:                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

for.inc.13:                                       ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -127, i32 %inc)
  %cmp1.not.14 = icmp slt i32 %inc, -127
  br i1 %cmp1.not.14, label %for.inc.13.cleanup_crit_edge, label %for.inc.13.if.then_crit_edge

for.inc.13.if.then_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #3
  br label %if.then

for.inc.13.cleanup_crit_edge:                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #3
  br label %cleanup

cleanup:                                          ; preds = %for.inc.13.cleanup_crit_edge, %if.then, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi ptr [ %cond, %if.then ], [ null, %for.inc.13.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #1

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #2 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #2 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

attributes #0 = { nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind }
attributes #2 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #3 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @dispc_ovl_get_scale_coef.coefs, !1, !"coefs", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 284, i32 4}
!2 = !{ptr @coef3_M32, !3, !"coef3_M32", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 133, i32 32}
!4 = !{ptr @coef5_M32, !5, !"coef5_M32", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 265, i32 32}
!6 = !{ptr @coef3_M26, !7, !"coef3_M26", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 122, i32 32}
!8 = !{ptr @coef5_M26, !9, !"coef5_M26", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 254, i32 32}
!10 = !{ptr @coef3_M22, !11, !"coef3_M22", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 111, i32 32}
!12 = !{ptr @coef5_M22, !13, !"coef5_M22", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 243, i32 32}
!14 = !{ptr @coef3_M19, !15, !"coef3_M19", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 100, i32 32}
!16 = !{ptr @coef5_M19, !17, !"coef5_M19", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 232, i32 32}
!18 = !{ptr @coef3_M16, !19, !"coef3_M16", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 89, i32 32}
!20 = !{ptr @coef5_M16, !21, !"coef5_M16", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 221, i32 32}
!22 = !{ptr @coef3_M14, !23, !"coef3_M14", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 78, i32 32}
!24 = !{ptr @coef5_M14, !25, !"coef5_M14", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 210, i32 32}
!26 = !{ptr @coef3_M13, !27, !"coef3_M13", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 67, i32 32}
!28 = !{ptr @coef5_M13, !29, !"coef5_M13", i1 false, i1 false}
!29 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 199, i32 32}
!30 = !{ptr @coef3_M12, !31, !"coef3_M12", i1 false, i1 false}
!31 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 56, i32 32}
!32 = !{ptr @coef5_M12, !33, !"coef5_M12", i1 false, i1 false}
!33 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 188, i32 32}
!34 = !{ptr @coef3_M11, !35, !"coef3_M11", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 45, i32 32}
!36 = !{ptr @coef5_M11, !37, !"coef5_M11", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 177, i32 32}
!38 = !{ptr @coef3_M10, !39, !"coef3_M10", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 34, i32 32}
!40 = !{ptr @coef5_M10, !41, !"coef5_M10", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 166, i32 32}
!42 = !{ptr @coef3_M9, !43, !"coef3_M9", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 23, i32 32}
!44 = !{ptr @coef5_M9, !45, !"coef5_M9", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 155, i32 32}
!46 = !{ptr @coef3_M8, !47, !"coef3_M8", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 12, i32 32}
!48 = !{ptr @coef5_M8, !49, !"coef5_M8", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/omapdrm/dss/dispc_coefs.c", i32 144, i32 32}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
