; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/tidss/tidss_scale_coefs.c_pt.bc'
source_filename = "../drivers/gpu/drm/tidss/tidss_scale_coefs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.43 = type { i32, i32, ptr, ptr, ptr }
%struct.tidss_scale_coefs = type { [16 x i16], [16 x i16], [9 x i16] }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }

@tidss_get_scale_coefs.coefs = internal constant { [15 x %struct.anon.43], [84 x i8] } { [15 x %struct.anon.43] [%struct.anon.43 { i32 27, i32 32, ptr @coef3_m32, ptr @coef5_m32, ptr @.str }, %struct.anon.43 { i32 23, i32 26, ptr @coef3_m26, ptr @coef5_m26, ptr @.str.1 }, %struct.anon.43 { i32 20, i32 22, ptr @coef3_m22, ptr @coef5_m22, ptr @.str.2 }, %struct.anon.43 { i32 17, i32 19, ptr @coef3_m19, ptr @coef5_m19, ptr @.str.3 }, %struct.anon.43 { i32 15, i32 16, ptr @coef3_m16, ptr @coef5_m16, ptr @.str.4 }, %struct.anon.43 { i32 14, i32 14, ptr @coef3_m14, ptr @coef5_m14, ptr @.str.5 }, %struct.anon.43 { i32 13, i32 13, ptr @coef3_m13, ptr @coef5_m13, ptr @.str.6 }, %struct.anon.43 { i32 12, i32 12, ptr @coef3_m12, ptr @coef5_m12, ptr @.str.7 }, %struct.anon.43 { i32 11, i32 11, ptr @coef3_m11, ptr @coef5_m11, ptr @.str.8 }, %struct.anon.43 { i32 10, i32 10, ptr @coef3_m10, ptr @coef5_m10, ptr @.str.9 }, %struct.anon.43 { i32 9, i32 9, ptr @coef3_m9, ptr @coef5_m9, ptr @.str.10 }, %struct.anon.43 { i32 4, i32 8, ptr @coef3_m8, ptr @coef5_m8, ptr @.str.11 }, %struct.anon.43 { i32 3, i32 3, ptr @coef3_m11, ptr @coef5_m11, ptr @.str.8 }, %struct.anon.43 { i32 2, i32 2, ptr @coef3_m16, ptr @coef5_m16, ptr @.str.4 }, %struct.anon.43 { i32 0, i32 1, ptr @coef3_m19, ptr @coef5_m19, ptr @.str.3 }], [84 x i8] zeroinitializer }, align 32
@coef3_m32 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] zeroinitializer, [16 x i16] [i16 108, i16 92, i16 76, i16 62, i16 48, i16 36, i16 24, i16 140, i16 256, i16 236, i16 216, i16 198, i16 180, i16 162, i16 144, i16 126], [9 x i16] [i16 296, i16 294, i16 292, i16 288, i16 284, i16 278, i16 272, i16 136, i16 256] }, [46 x i8] zeroinitializer }, align 32
@coef5_m32 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] [i16 28, i16 34, i16 40, i16 46, i16 52, i16 58, i16 64, i16 70, i16 0, i16 2, i16 4, i16 8, i16 12, i16 16, i16 20, i16 24], [16 x i16] [i16 132, i16 138, i16 144, i16 150, i16 156, i16 162, i16 168, i16 174, i16 76, i16 84, i16 92, i16 98, i16 104, i16 110, i16 116, i16 124], [9 x i16] [i16 192, i16 192, i16 192, i16 190, i16 188, i16 186, i16 184, i16 182, i16 180] }, [46 x i8] zeroinitializer }, align 32
@.str = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"M32\00", [28 x i8] zeroinitializer }, align 32
@coef3_m26 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] zeroinitializer, [16 x i16] [i16 104, i16 90, i16 76, i16 60, i16 44, i16 32, i16 20, i16 138, i16 256, i16 236, i16 216, i16 198, i16 180, i16 160, i16 140, i16 122], [9 x i16] [i16 304, i16 300, i16 296, i16 292, i16 288, i16 282, i16 276, i16 138, i16 256] }, [46 x i8] zeroinitializer }, align 32
@coef5_m26 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] [i16 24, i16 28, i16 32, i16 38, i16 44, i16 50, i16 56, i16 64, i16 0, i16 2, i16 4, i16 6, i16 8, i16 12, i16 16, i16 20], [16 x i16] [i16 132, i16 138, i16 144, i16 152, i16 160, i16 166, i16 172, i16 178, i16 72, i16 80, i16 88, i16 94, i16 100, i16 108, i16 116, i16 124], [9 x i16] [i16 200, i16 202, i16 204, i16 202, i16 200, i16 196, i16 192, i16 188, i16 184] }, [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"M26\00", [28 x i8] zeroinitializer }, align 32
@coef3_m22 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] zeroinitializer, [16 x i16] [i16 100, i16 84, i16 68, i16 54, i16 40, i16 30, i16 20, i16 138, i16 256, i16 236, i16 216, i16 196, i16 176, i16 156, i16 136, i16 118], [9 x i16] [i16 312, i16 310, i16 308, i16 302, i16 296, i16 286, i16 276, i16 138, i16 256] }, [46 x i8] zeroinitializer }, align 32
@coef5_m22 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] [i16 16, i16 20, i16 24, i16 30, i16 36, i16 42, i16 48, i16 56, i16 0, i16 0, i16 0, i16 2, i16 4, i16 8, i16 12, i16 14], [16 x i16] [i16 132, i16 140, i16 148, i16 156, i16 164, i16 172, i16 180, i16 186, i16 64, i16 72, i16 80, i16 88, i16 96, i16 104, i16 112, i16 122], [9 x i16] [i16 216, i16 216, i16 216, i16 214, i16 212, i16 208, i16 204, i16 198, i16 192] }, [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"M22\00", [28 x i8] zeroinitializer }, align 32
@coef3_m19 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] zeroinitializer, [16 x i16] [i16 96, i16 80, i16 64, i16 50, i16 36, i16 26, i16 16, i16 136, i16 256, i16 236, i16 216, i16 194, i16 172, i16 152, i16 132, i16 114], [9 x i16] [i16 320, i16 318, i16 316, i16 310, i16 304, i16 292, i16 280, i16 140, i16 256] }, [46 x i8] zeroinitializer }, align 32
@coef5_m19 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] [i16 12, i16 14, i16 16, i16 22, i16 28, i16 34, i16 40, i16 48, i16 0, i16 0, i16 0, i16 2, i16 4, i16 4, i16 4, i16 8], [16 x i16] [i16 128, i16 140, i16 152, i16 160, i16 168, i16 176, i16 184, i16 192, i16 56, i16 64, i16 72, i16 82, i16 92, i16 100, i16 108, i16 118], [9 x i16] [i16 232, i16 232, i16 232, i16 226, i16 220, i16 218, i16 216, i16 208, i16 200] }, [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"M19\00", [28 x i8] zeroinitializer }, align 32
@coef3_m16 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] zeroinitializer, [16 x i16] [i16 88, i16 72, i16 56, i16 44, i16 32, i16 22, i16 12, i16 134, i16 256, i16 234, i16 212, i16 190, i16 168, i16 148, i16 128, i16 108], [9 x i16] [i16 336, i16 332, i16 328, i16 320, i16 312, i16 300, i16 288, i16 144, i16 256] }, [46 x i8] zeroinitializer }, align 32
@coef5_m16 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] [i16 0, i16 2, i16 4, i16 8, i16 12, i16 18, i16 24, i16 32, i16 0, i16 0, i16 0, i16 -2, i16 -4, i16 -4, i16 -4, i16 -2], [16 x i16] [i16 124, i16 138, i16 152, i16 164, i16 176, i16 186, i16 196, i16 206, i16 40, i16 48, i16 56, i16 68, i16 80, i16 90, i16 100, i16 112], [9 x i16] [i16 264, i16 262, i16 260, i16 254, i16 248, i16 242, i16 236, i16 226, i16 216] }, [46 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"M16\00", [28 x i8] zeroinitializer }, align 32
@coef3_m14 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] zeroinitializer, [16 x i16] [i16 80, i16 64, i16 48, i16 36, i16 24, i16 16, i16 8, i16 132, i16 256, i16 232, i16 208, i16 186, i16 164, i16 142, i16 120, i16 100], [9 x i16] [i16 352, i16 348, i16 344, i16 334, i16 324, i16 310, i16 296, i16 148, i16 256] }, [46 x i8] zeroinitializer }, align 32
@coef5_m14 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] [i16 -8, i16 -6, i16 -4, i16 -2, i16 0, i16 6, i16 12, i16 18, i16 0, i16 -2, i16 -4, i16 -6, i16 -8, i16 -8, i16 -8, i16 -8], [16 x i16] [i16 120, i16 134, i16 148, i16 164, i16 180, i16 194, i16 208, i16 220, i16 24, i16 32, i16 40, i16 52, i16 64, i16 78, i16 92, i16 106], [9 x i16] [i16 288, i16 286, i16 284, i16 280, i16 276, i16 266, i16 256, i16 244, i16 232] }, [46 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"M14\00", [28 x i8] zeroinitializer }, align 32
@coef3_m13 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] zeroinitializer, [16 x i16] [i16 72, i16 56, i16 40, i16 30, i16 20, i16 12, i16 4, i16 130, i16 256, i16 232, i16 208, i16 184, i16 160, i16 136, i16 112, i16 92], [9 x i16] [i16 368, i16 364, i16 360, i16 346, i16 332, i16 316, i16 300, i16 150, i16 256] }, [46 x i8] zeroinitializer }, align 32
@coef5_m13 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] [i16 -12, i16 -12, i16 -12, i16 -10, i16 -8, i16 -4, i16 0, i16 6, i16 0, i16 -2, i16 -4, i16 -6, i16 -8, i16 -10, i16 -12, i16 -12], [16 x i16] [i16 112, i16 130, i16 148, i16 164, i16 180, i16 196, i16 212, i16 228, i16 12, i16 22, i16 32, i16 44, i16 56, i16 70, i16 84, i16 98], [9 x i16] [i16 312, i16 308, i16 304, i16 298, i16 292, i16 282, i16 272, i16 258, i16 244] }, [46 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"M13\00", [28 x i8] zeroinitializer }, align 32
@coef3_m12 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] zeroinitializer, [16 x i16] [i16 64, i16 50, i16 36, i16 26, i16 16, i16 10, i16 4, i16 130, i16 256, i16 230, i16 204, i16 178, i16 152, i16 128, i16 104, i16 84], [9 x i16] [i16 384, i16 378, i16 372, i16 358, i16 344, i16 324, i16 304, i16 152, i16 256] }, [46 x i8] zeroinitializer }, align 32
@coef5_m12 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] [i16 -16, i16 -18, i16 -20, i16 -18, i16 -16, i16 -14, i16 -12, i16 -6, i16 0, i16 -2, i16 -4, i16 -6, i16 -8, i16 -10, i16 -12, i16 -14], [16 x i16] [i16 104, i16 124, i16 144, i16 164, i16 184, i16 202, i16 220, i16 238, i16 0, i16 10, i16 20, i16 30, i16 40, i16 56, i16 72, i16 88], [9 x i16] [i16 336, i16 332, i16 328, i16 320, i16 312, i16 300, i16 288, i16 272, i16 256] }, [46 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"M12\00", [28 x i8] zeroinitializer }, align 32
@coef3_m11 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] zeroinitializer, [16 x i16] [i16 56, i16 40, i16 24, i16 16, i16 8, i16 4, i16 0, i16 128, i16 256, i16 228, i16 200, i16 172, i16 144, i16 120, i16 96, i16 76], [9 x i16] [i16 400, i16 396, i16 392, i16 376, i16 360, i16 336, i16 312, i16 156, i16 256] }, [46 x i8] zeroinitializer }, align 32
@coef5_m11 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] [i16 -20, i16 -22, i16 -24, i16 -24, i16 -24, i16 -24, i16 -24, i16 -20, i16 0, i16 -2, i16 -4, i16 -6, i16 -8, i16 -10, i16 -12, i16 -16], [16 x i16] [i16 92, i16 114, i16 136, i16 158, i16 180, i16 204, i16 228, i16 250, i16 -16, i16 -8, i16 0, i16 12, i16 24, i16 38, i16 52, i16 72], [9 x i16] [i16 368, i16 364, i16 360, i16 350, i16 340, i16 326, i16 312, i16 292, i16 272] }, [46 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"M11\00", [28 x i8] zeroinitializer }, align 32
@coef3_m10 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] zeroinitializer, [16 x i16] [i16 40, i16 26, i16 12, i16 6, i16 0, i16 -2, i16 -4, i16 126, i16 256, i16 226, i16 196, i16 166, i16 136, i16 110, i16 84, i16 62], [9 x i16] [i16 432, i16 424, i16 416, i16 396, i16 376, i16 348, i16 320, i16 160, i16 256] }, [46 x i8] zeroinitializer }, align 32
@coef5_m10 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] [i16 -16, i16 -20, i16 -24, i16 -28, i16 -32, i16 -34, i16 -36, i16 -34, i16 0, i16 0, i16 0, i16 -2, i16 -4, i16 -8, i16 -12, i16 -14], [16 x i16] [i16 72, i16 96, i16 120, i16 148, i16 176, i16 204, i16 232, i16 260, i16 -32, i16 -26, i16 -20, i16 -10, i16 0, i16 16, i16 32, i16 52], [9 x i16] [i16 400, i16 398, i16 396, i16 384, i16 372, i16 354, i16 336, i16 312, i16 288] }, [46 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"M10\00", [28 x i8] zeroinitializer }, align 32
@coef3_m9 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] zeroinitializer, [16 x i16] [i16 24, i16 12, i16 0, i16 -4, i16 -8, i16 -8, i16 -8, i16 124, i16 256, i16 222, i16 188, i16 154, i16 120, i16 92, i16 64, i16 44], [9 x i16] [i16 464, i16 456, i16 448, i16 424, i16 400, i16 366, i16 332, i16 166, i16 256] }, [46 x i8] zeroinitializer }, align 32
@coef5_m9 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] [i16 -12, i16 -18, i16 -24, i16 -28, i16 -32, i16 -38, i16 -44, i16 -46, i16 0, i16 2, i16 4, i16 2, i16 0, i16 -2, i16 -4, i16 -8], [16 x i16] [i16 40, i16 68, i16 96, i16 128, i16 160, i16 196, i16 232, i16 268, i16 -48, i16 -46, i16 -44, i16 -36, i16 -28, i16 -14, i16 0, i16 20], [9 x i16] [i16 456, i16 450, i16 444, i16 428, i16 412, i16 388, i16 364, i16 334, i16 304] }, [46 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"M9\00", [29 x i8] zeroinitializer }, align 32
@coef3_m8 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] zeroinitializer, [16 x i16] [i16 0, i16 -8, i16 -16, i16 -16, i16 -16, i16 -12, i16 -8, i16 124, i16 256, i16 214, i16 172, i16 134, i16 96, i16 66, i16 36, i16 18], [9 x i16] [i16 512, i16 502, i16 492, i16 462, i16 432, i16 390, i16 348, i16 174, i16 256] }, [46 x i8] zeroinitializer }, align 32
@coef5_m8 = internal constant { %struct.tidss_scale_coefs, [46 x i8] } { %struct.tidss_scale_coefs { [16 x i16] [i16 0, i16 -4, i16 -8, i16 -16, i16 -24, i16 -32, i16 -40, i16 -48, i16 0, i16 2, i16 4, i16 6, i16 8, i16 6, i16 4, i16 2], [16 x i16] [i16 0, i16 28, i16 56, i16 94, i16 132, i16 176, i16 220, i16 266, i16 -56, i16 -60, i16 -64, i16 -62, i16 -60, i16 -50, i16 -40, i16 -20], [9 x i16] [i16 512, i16 506, i16 500, i16 478, i16 456, i16 424, i16 392, i16 352, i16 312] }, [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"M8\00", [29 x i8] zeroinitializer }, align 32
@tidss_get_scale_coefs._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.14, i32 199, ptr @.str.15, ptr @.str.16 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"%s: Coefficients not found for firinc 0x%08x, inc %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tidss_get_scale_coefs\00", [42 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/gpu/drm/tidss/tidss_scale_coefs.c\00", [54 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tidss_get_scale_coefs._entry_ptr = internal global ptr @tidss_get_scale_coefs._entry, section ".printk_index", align 4
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"coefs\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 160, i32 4 }
@___asan_gen_.20 = private unnamed_addr constant [10 x i8] c"coef3_m32\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 88, i32 39 }
@___asan_gen_.23 = private unnamed_addr constant [10 x i8] c"coef5_m32\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 16, i32 39 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 161, i32 37 }
@___asan_gen_.29 = private unnamed_addr constant [10 x i8] c"coef3_m26\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 93, i32 39 }
@___asan_gen_.32 = private unnamed_addr constant [10 x i8] c"coef5_m26\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 22, i32 39 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 162, i32 37 }
@___asan_gen_.38 = private unnamed_addr constant [10 x i8] c"coef3_m22\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 98, i32 39 }
@___asan_gen_.41 = private unnamed_addr constant [10 x i8] c"coef5_m22\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 28, i32 39 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 163, i32 37 }
@___asan_gen_.47 = private unnamed_addr constant [10 x i8] c"coef3_m19\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 103, i32 39 }
@___asan_gen_.50 = private unnamed_addr constant [10 x i8] c"coef5_m19\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 34, i32 39 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 164, i32 37 }
@___asan_gen_.56 = private unnamed_addr constant [10 x i8] c"coef3_m16\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 108, i32 39 }
@___asan_gen_.59 = private unnamed_addr constant [10 x i8] c"coef5_m16\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 40, i32 39 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 165, i32 37 }
@___asan_gen_.65 = private unnamed_addr constant [10 x i8] c"coef3_m14\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 113, i32 39 }
@___asan_gen_.68 = private unnamed_addr constant [10 x i8] c"coef5_m14\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 46, i32 39 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 166, i32 37 }
@___asan_gen_.74 = private unnamed_addr constant [10 x i8] c"coef3_m13\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 118, i32 39 }
@___asan_gen_.77 = private unnamed_addr constant [10 x i8] c"coef5_m13\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 52, i32 39 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 167, i32 37 }
@___asan_gen_.83 = private unnamed_addr constant [10 x i8] c"coef3_m12\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 123, i32 39 }
@___asan_gen_.86 = private unnamed_addr constant [10 x i8] c"coef5_m12\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 58, i32 39 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 168, i32 37 }
@___asan_gen_.92 = private unnamed_addr constant [10 x i8] c"coef3_m11\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 128, i32 39 }
@___asan_gen_.95 = private unnamed_addr constant [10 x i8] c"coef5_m11\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 64, i32 39 }
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 169, i32 37 }
@___asan_gen_.101 = private unnamed_addr constant [10 x i8] c"coef3_m10\00", align 1
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 133, i32 39 }
@___asan_gen_.104 = private unnamed_addr constant [10 x i8] c"coef5_m10\00", align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 70, i32 39 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 170, i32 37 }
@___asan_gen_.110 = private unnamed_addr constant [9 x i8] c"coef3_m9\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 138, i32 39 }
@___asan_gen_.113 = private unnamed_addr constant [9 x i8] c"coef5_m9\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 76, i32 39 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 171, i32 35 }
@___asan_gen_.119 = private unnamed_addr constant [9 x i8] c"coef3_m8\00", align 1
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 143, i32 39 }
@___asan_gen_.122 = private unnamed_addr constant [9 x i8] c"coef5_m8\00", align 1
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 82, i32 39 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 172, i32 35 }
@___asan_gen_.128 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [45 x i8] c"../drivers/gpu/drm/tidss/tidss_scale_coefs.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 198, i32 2 }
@llvm.compiler.used = appending global [44 x ptr] [ptr @tidss_get_scale_coefs._entry, ptr @tidss_get_scale_coefs._entry_ptr, ptr @tidss_get_scale_coefs.coefs, ptr @coef3_m32, ptr @coef5_m32, ptr @.str, ptr @coef3_m26, ptr @coef5_m26, ptr @.str.1, ptr @coef3_m22, ptr @coef5_m22, ptr @.str.2, ptr @coef3_m19, ptr @coef5_m19, ptr @.str.3, ptr @coef3_m16, ptr @coef5_m16, ptr @.str.4, ptr @coef3_m14, ptr @coef5_m14, ptr @.str.5, ptr @coef3_m13, ptr @coef5_m13, ptr @.str.6, ptr @coef3_m12, ptr @coef5_m12, ptr @.str.7, ptr @coef3_m11, ptr @coef5_m11, ptr @.str.8, ptr @coef3_m10, ptr @coef5_m10, ptr @.str.9, ptr @coef3_m9, ptr @coef5_m9, ptr @.str.10, ptr @coef3_m8, ptr @coef5_m8, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [43 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_get_scale_coefs.coefs to i32), i32 300, i32 384, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_m32 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_m32 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_m26 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_m26 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_m22 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_m22 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_m19 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_m19 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_m16 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_m16 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_m14 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_m14 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_m13 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_m13 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_m12 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_m12 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_m11 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_m11 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_m10 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_m10 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_m9 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_m9 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef3_m8 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @coef5_m8 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tidss_get_scale_coefs._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tidss_get_scale_coefs(ptr noundef %dev, i32 noundef %firinc, i1 noundef zeroext %five_taps) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %div17 = lshr i32 %firinc, 18
  call void @__sanitizer_cov_trace_const_cmp4(i32 7077888, i32 %firinc)
  %cmp1.not = icmp ult i32 %firinc, 7077888
  br i1 %cmp1.not, label %for.inc, label %land.lhs.true

land.lhs.true:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 8650751, i32 %firinc)
  %cmp3.not = icmp ugt i32 %firinc, 8650751
  br i1 %cmp3.not, label %for.inc.14, label %land.lhs.true.if.then_crit_edge

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

if.then:                                          ; preds = %for.inc.12, %for.inc.11.if.then_crit_edge, %for.inc.10.if.then_crit_edge, %for.inc.9.if.then_crit_edge, %for.inc.8.if.then_crit_edge, %for.inc.7.if.then_crit_edge, %for.inc.6.if.then_crit_edge, %for.inc.5.if.then_crit_edge, %for.inc.4.if.then_crit_edge, %for.inc.3.if.then_crit_edge, %for.inc.2.if.then_crit_edge, %for.inc.1.if.then_crit_edge, %for.inc.if.then_crit_edge, %land.lhs.true.if.then_crit_edge
  %i.019.lcssa = phi i32 [ 0, %land.lhs.true.if.then_crit_edge ], [ 1, %for.inc.if.then_crit_edge ], [ 2, %for.inc.1.if.then_crit_edge ], [ 3, %for.inc.2.if.then_crit_edge ], [ 4, %for.inc.3.if.then_crit_edge ], [ 5, %for.inc.4.if.then_crit_edge ], [ 6, %for.inc.5.if.then_crit_edge ], [ 7, %for.inc.6.if.then_crit_edge ], [ 8, %for.inc.7.if.then_crit_edge ], [ 9, %for.inc.8.if.then_crit_edge ], [ 10, %for.inc.9.if.then_crit_edge ], [ 11, %for.inc.10.if.then_crit_edge ], [ 12, %for.inc.11.if.then_crit_edge ], [ %spec.select, %for.inc.12 ]
  br i1 %five_taps, label %if.then4, label %if.else

if.then4:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %coef5 = getelementptr [15 x %struct.anon.43], ptr @tidss_get_scale_coefs.coefs, i32 0, i32 %i.019.lcssa, i32 3
  %0 = ptrtoint ptr %coef5 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %coef5, align 4
  br label %cleanup

if.else:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #4
  %coef3 = getelementptr [15 x %struct.anon.43], ptr @tidss_get_scale_coefs.coefs, i32 0, i32 %i.019.lcssa, i32 2
  %2 = ptrtoint ptr %coef3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %coef3, align 4
  br label %cleanup

for.inc:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 6029312, i32 %firinc)
  %cmp1.not.1 = icmp ult i32 %firinc, 6029312
  br i1 %cmp1.not.1, label %for.inc.1, label %for.inc.if.then_crit_edge

for.inc.if.then_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

for.inc.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 5242880, i32 %firinc)
  %cmp1.not.2 = icmp ult i32 %firinc, 5242880
  br i1 %cmp1.not.2, label %for.inc.2, label %for.inc.1.if.then_crit_edge

for.inc.1.if.then_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

for.inc.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 4456448, i32 %firinc)
  %cmp1.not.3 = icmp ult i32 %firinc, 4456448
  br i1 %cmp1.not.3, label %for.inc.3, label %for.inc.2.if.then_crit_edge

for.inc.2.if.then_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

for.inc.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 3932160, i32 %firinc)
  %cmp1.not.4 = icmp ult i32 %firinc, 3932160
  br i1 %cmp1.not.4, label %for.inc.4, label %for.inc.3.if.then_crit_edge

for.inc.3.if.then_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

for.inc.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3670016, i32 %firinc)
  %cmp1.not.5 = icmp ult i32 %firinc, 3670016
  br i1 %cmp1.not.5, label %for.inc.5, label %for.inc.4.if.then_crit_edge

for.inc.4.if.then_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

for.inc.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3407872, i32 %firinc)
  %cmp1.not.6 = icmp ult i32 %firinc, 3407872
  br i1 %cmp1.not.6, label %for.inc.6, label %for.inc.5.if.then_crit_edge

for.inc.5.if.then_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

for.inc.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_const_cmp4(i32 3145728, i32 %firinc)
  %cmp1.not.7 = icmp ult i32 %firinc, 3145728
  br i1 %cmp1.not.7, label %for.inc.7, label %for.inc.6.if.then_crit_edge

for.inc.6.if.then_crit_edge:                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

for.inc.7:                                        ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2883584, i32 %firinc)
  %cmp1.not.8 = icmp ult i32 %firinc, 2883584
  br i1 %cmp1.not.8, label %for.inc.8, label %for.inc.7.if.then_crit_edge

for.inc.7.if.then_crit_edge:                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

for.inc.8:                                        ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_const_cmp4(i32 2621440, i32 %firinc)
  %cmp1.not.9 = icmp ult i32 %firinc, 2621440
  br i1 %cmp1.not.9, label %for.inc.9, label %for.inc.8.if.then_crit_edge

for.inc.8.if.then_crit_edge:                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

for.inc.9:                                        ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2359296, i32 %firinc)
  %cmp1.not.10 = icmp ult i32 %firinc, 2359296
  br i1 %cmp1.not.10, label %for.inc.10, label %for.inc.9.if.then_crit_edge

for.inc.9.if.then_crit_edge:                      ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

for.inc.10:                                       ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %firinc)
  %cmp1.not.11 = icmp ult i32 %firinc, 1048576
  br i1 %cmp1.not.11, label %for.inc.11, label %for.inc.10.if.then_crit_edge

for.inc.10.if.then_crit_edge:                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

for.inc.11:                                       ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_const_cmp4(i32 786432, i32 %firinc)
  %cmp1.not.12 = icmp ult i32 %firinc, 786432
  br i1 %cmp1.not.12, label %for.inc.12, label %for.inc.11.if.then_crit_edge

for.inc.11.if.then_crit_edge:                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then

for.inc.12:                                       ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 524288, i32 %firinc)
  %cmp1.not.13 = icmp ult i32 %firinc, 524288
  %spec.select = select i1 %cmp1.not.13, i32 14, i32 13
  br label %if.then

for.inc.14:                                       ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %firinc, i32 noundef %div17) #5
  br label %cleanup

cleanup:                                          ; preds = %for.inc.14, %if.else, %if.then4
  %retval.0 = phi ptr [ %1, %if.then4 ], [ %3, %if.else ], [ null, %for.inc.14 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 43)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }
attributes #5 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !29, !30, !31, !32, !33, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80}
!llvm.module.flags = !{!82, !83, !84, !85, !86, !87, !88, !89}
!llvm.ident = !{!90}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 161, i32 37}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 162, i32 37}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 163, i32 37}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 164, i32 37}
!8 = !{ptr @.str.4, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 165, i32 37}
!10 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 166, i32 37}
!12 = !{ptr @.str.6, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 167, i32 37}
!14 = !{ptr @.str.7, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 168, i32 37}
!16 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 169, i32 37}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 170, i32 37}
!20 = !{ptr @.str.10, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 171, i32 35}
!22 = !{ptr @.str.11, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 172, i32 35}
!24 = !{ptr @tidss_get_scale_coefs.coefs, !25, !"coefs", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 160, i32 4}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 198, i32 2}
!28 = !{ptr @.str.13, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.14, !27, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @tidss_get_scale_coefs._entry, !27, !"_entry", i1 false, i1 false}
!33 = !{ptr @tidss_get_scale_coefs._entry_ptr, !27, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @coef3_m32, !35, !"coef3_m32", i1 false, i1 false}
!35 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 88, i32 39}
!36 = !{ptr @coef5_m32, !37, !"coef5_m32", i1 false, i1 false}
!37 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 16, i32 39}
!38 = !{ptr @coef3_m26, !39, !"coef3_m26", i1 false, i1 false}
!39 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 93, i32 39}
!40 = !{ptr @coef5_m26, !41, !"coef5_m26", i1 false, i1 false}
!41 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 22, i32 39}
!42 = !{ptr @coef3_m22, !43, !"coef3_m22", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 98, i32 39}
!44 = !{ptr @coef5_m22, !45, !"coef5_m22", i1 false, i1 false}
!45 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 28, i32 39}
!46 = !{ptr @coef3_m19, !47, !"coef3_m19", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 103, i32 39}
!48 = !{ptr @coef5_m19, !49, !"coef5_m19", i1 false, i1 false}
!49 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 34, i32 39}
!50 = !{ptr @coef3_m16, !51, !"coef3_m16", i1 false, i1 false}
!51 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 108, i32 39}
!52 = !{ptr @coef5_m16, !53, !"coef5_m16", i1 false, i1 false}
!53 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 40, i32 39}
!54 = !{ptr @coef3_m14, !55, !"coef3_m14", i1 false, i1 false}
!55 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 113, i32 39}
!56 = !{ptr @coef5_m14, !57, !"coef5_m14", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 46, i32 39}
!58 = !{ptr @coef3_m13, !59, !"coef3_m13", i1 false, i1 false}
!59 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 118, i32 39}
!60 = !{ptr @coef5_m13, !61, !"coef5_m13", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 52, i32 39}
!62 = !{ptr @coef3_m12, !63, !"coef3_m12", i1 false, i1 false}
!63 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 123, i32 39}
!64 = !{ptr @coef5_m12, !65, !"coef5_m12", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 58, i32 39}
!66 = !{ptr @coef3_m11, !67, !"coef3_m11", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 128, i32 39}
!68 = !{ptr @coef5_m11, !69, !"coef5_m11", i1 false, i1 false}
!69 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 64, i32 39}
!70 = !{ptr @coef3_m10, !71, !"coef3_m10", i1 false, i1 false}
!71 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 133, i32 39}
!72 = !{ptr @coef5_m10, !73, !"coef5_m10", i1 false, i1 false}
!73 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 70, i32 39}
!74 = !{ptr @coef3_m9, !75, !"coef3_m9", i1 false, i1 false}
!75 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 138, i32 39}
!76 = !{ptr @coef5_m9, !77, !"coef5_m9", i1 false, i1 false}
!77 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 76, i32 39}
!78 = !{ptr @coef3_m8, !79, !"coef3_m8", i1 false, i1 false}
!79 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 143, i32 39}
!80 = !{ptr @coef5_m8, !81, !"coef5_m8", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/tidss/tidss_scale_coefs.c", i32 82, i32 39}
!82 = !{i32 1, !"wchar_size", i32 2}
!83 = !{i32 1, !"min_enum_size", i32 4}
!84 = !{i32 8, !"branch-target-enforcement", i32 0}
!85 = !{i32 8, !"sign-return-address", i32 0}
!86 = !{i32 8, !"sign-return-address-all", i32 0}
!87 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!88 = !{i32 7, !"uwtable", i32 1}
!89 = !{i32 7, !"frame-pointer", i32 2}
!90 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
