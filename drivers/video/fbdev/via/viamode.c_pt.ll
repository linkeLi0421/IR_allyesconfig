; ModuleID = '/llk/IR_all_yes/drivers/video/fbdev/via/viamode.c_pt.bc'
source_filename = "../drivers/video/fbdev/via/viamode.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.io_reg = type { i32, i8, i8, i8 }
%struct.patch_table = type { i32, ptr }
%struct.VPITTable = type { i8, [4 x i8], [9 x i8], [20 x i8] }
%struct.fb_videomode = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CN400_ModeXregs = dso_local global { [29 x %struct.io_reg], [56 x i8] } { [29 x %struct.io_reg] [%struct.io_reg { i32 964, i8 16, i8 -1, i8 1 }, %struct.io_reg { i32 964, i8 21, i8 2, i8 2 }, %struct.io_reg { i32 964, i8 22, i8 -65, i8 8 }, %struct.io_reg { i32 964, i8 23, i8 -1, i8 31 }, %struct.io_reg { i32 964, i8 24, i8 -1, i8 78 }, %struct.io_reg { i32 964, i8 26, i8 -5, i8 8 }, %struct.io_reg { i32 964, i8 30, i8 15, i8 1 }, %struct.io_reg { i32 964, i8 42, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 50, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 51, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 53, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 54, i8 8, i8 0 }, %struct.io_reg { i32 980, i8 105, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 106, i8 -1, i8 64 }, %struct.io_reg { i32 980, i8 107, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -120, i8 -1, i8 64 }, %struct.io_reg { i32 980, i8 -119, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -118, i8 -1, i8 -120 }, %struct.io_reg { i32 980, i8 -117, i8 -1, i8 105 }, %struct.io_reg { i32 980, i8 -116, i8 -1, i8 87 }, %struct.io_reg { i32 980, i8 -115, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -114, i8 -1, i8 123 }, %struct.io_reg { i32 980, i8 -113, i8 -1, i8 3 }, %struct.io_reg { i32 980, i8 -112, i8 -1, i8 48 }, %struct.io_reg { i32 980, i8 -111, i8 -1, i8 -96 }, %struct.io_reg { i32 980, i8 -106, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -105, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -103, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -101, i8 -1, i8 0 }], [56 x i8] zeroinitializer }, align 32
@CN700_ModeXregs = dso_local global { [47 x %struct.io_reg], [72 x i8] } { [47 x %struct.io_reg] [%struct.io_reg { i32 964, i8 16, i8 -1, i8 1 }, %struct.io_reg { i32 964, i8 21, i8 2, i8 2 }, %struct.io_reg { i32 964, i8 22, i8 -65, i8 8 }, %struct.io_reg { i32 964, i8 23, i8 -1, i8 31 }, %struct.io_reg { i32 964, i8 24, i8 -1, i8 78 }, %struct.io_reg { i32 964, i8 26, i8 -5, i8 -126 }, %struct.io_reg { i32 964, i8 27, i8 -1, i8 -16 }, %struct.io_reg { i32 964, i8 31, i8 -1, i8 0 }, %struct.io_reg { i32 964, i8 30, i8 -1, i8 1 }, %struct.io_reg { i32 964, i8 34, i8 -1, i8 31 }, %struct.io_reg { i32 964, i8 42, i8 15, i8 0 }, %struct.io_reg { i32 964, i8 46, i8 -1, i8 -1 }, %struct.io_reg { i32 964, i8 63, i8 -1, i8 -1 }, %struct.io_reg { i32 964, i8 64, i8 -9, i8 0 }, %struct.io_reg { i32 964, i8 48, i8 -1, i8 4 }, %struct.io_reg { i32 980, i8 50, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 51, i8 127, i8 0 }, %struct.io_reg { i32 980, i8 53, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 54, i8 -1, i8 49 }, %struct.io_reg { i32 980, i8 65, i8 -1, i8 -128 }, %struct.io_reg { i32 980, i8 66, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 85, i8 -128, i8 0 }, %struct.io_reg { i32 980, i8 93, i8 -128, i8 0 }, %struct.io_reg { i32 980, i8 104, i8 -1, i8 103 }, %struct.io_reg { i32 980, i8 105, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 106, i8 -3, i8 64 }, %struct.io_reg { i32 980, i8 107, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 119, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 120, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 121, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -97, i8 3, i8 0 }, %struct.io_reg { i32 980, i8 -120, i8 -1, i8 64 }, %struct.io_reg { i32 980, i8 -119, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -118, i8 -1, i8 -120 }, %struct.io_reg { i32 980, i8 -117, i8 -1, i8 93 }, %struct.io_reg { i32 980, i8 -116, i8 -1, i8 43 }, %struct.io_reg { i32 980, i8 -115, i8 -1, i8 111 }, %struct.io_reg { i32 980, i8 -114, i8 -1, i8 43 }, %struct.io_reg { i32 980, i8 -113, i8 -1, i8 1 }, %struct.io_reg { i32 980, i8 -112, i8 -1, i8 1 }, %struct.io_reg { i32 980, i8 -111, i8 -1, i8 -96 }, %struct.io_reg { i32 980, i8 -106, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -105, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -103, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -101, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -99, i8 -1, i8 -128 }, %struct.io_reg { i32 980, i8 -98, i8 -1, i8 -128 }], [72 x i8] zeroinitializer }, align 32
@KM400_ModeXregs = dso_local global { [34 x %struct.io_reg], [80 x i8] } { [34 x %struct.io_reg] [%struct.io_reg { i32 964, i8 16, i8 -1, i8 1 }, %struct.io_reg { i32 964, i8 22, i8 -1, i8 8 }, %struct.io_reg { i32 964, i8 23, i8 -1, i8 31 }, %struct.io_reg { i32 964, i8 24, i8 -1, i8 78 }, %struct.io_reg { i32 964, i8 26, i8 -1, i8 10 }, %struct.io_reg { i32 964, i8 31, i8 -1, i8 0 }, %struct.io_reg { i32 964, i8 27, i8 -1, i8 -16 }, %struct.io_reg { i32 964, i8 30, i8 -1, i8 1 }, %struct.io_reg { i32 964, i8 32, i8 -1, i8 0 }, %struct.io_reg { i32 964, i8 33, i8 -1, i8 0 }, %struct.io_reg { i32 964, i8 34, i8 -1, i8 31 }, %struct.io_reg { i32 964, i8 42, i8 -1, i8 0 }, %struct.io_reg { i32 964, i8 45, i8 -1, i8 -1 }, %struct.io_reg { i32 964, i8 46, i8 -1, i8 -1 }, %struct.io_reg { i32 980, i8 51, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 85, i8 -128, i8 0 }, %struct.io_reg { i32 980, i8 93, i8 -128, i8 0 }, %struct.io_reg { i32 980, i8 54, i8 -1, i8 1 }, %struct.io_reg { i32 980, i8 104, i8 -1, i8 103 }, %struct.io_reg { i32 980, i8 106, i8 32, i8 32 }, %struct.io_reg { i32 980, i8 -120, i8 -1, i8 64 }, %struct.io_reg { i32 980, i8 -119, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -118, i8 -1, i8 -120 }, %struct.io_reg { i32 980, i8 -117, i8 -1, i8 45 }, %struct.io_reg { i32 980, i8 -116, i8 -1, i8 45 }, %struct.io_reg { i32 980, i8 -115, i8 -1, i8 -56 }, %struct.io_reg { i32 980, i8 -114, i8 -1, i8 54 }, %struct.io_reg { i32 980, i8 -113, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -112, i8 -1, i8 16 }, %struct.io_reg { i32 980, i8 -111, i8 -1, i8 -96 }, %struct.io_reg { i32 980, i8 -106, i8 -1, i8 3 }, %struct.io_reg { i32 980, i8 -105, i8 -1, i8 3 }, %struct.io_reg { i32 980, i8 -103, i8 -1, i8 3 }, %struct.io_reg { i32 980, i8 -101, i8 -1, i8 7 }], [80 x i8] zeroinitializer }, align 32
@CX700_ModeXregs = dso_local global { [33 x %struct.io_reg], [88 x i8] } { [33 x %struct.io_reg] [%struct.io_reg { i32 964, i8 16, i8 -1, i8 1 }, %struct.io_reg { i32 964, i8 21, i8 2, i8 2 }, %struct.io_reg { i32 964, i8 22, i8 -65, i8 8 }, %struct.io_reg { i32 964, i8 23, i8 -1, i8 31 }, %struct.io_reg { i32 964, i8 24, i8 -1, i8 78 }, %struct.io_reg { i32 964, i8 26, i8 -5, i8 8 }, %struct.io_reg { i32 964, i8 27, i8 -1, i8 -16 }, %struct.io_reg { i32 964, i8 30, i8 -1, i8 1 }, %struct.io_reg { i32 964, i8 42, i8 -1, i8 0 }, %struct.io_reg { i32 964, i8 45, i8 -64, i8 -64 }, %struct.io_reg { i32 980, i8 50, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 51, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 53, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 54, i8 8, i8 0 }, %struct.io_reg { i32 980, i8 71, i8 -56, i8 0 }, %struct.io_reg { i32 980, i8 105, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 106, i8 -1, i8 64 }, %struct.io_reg { i32 980, i8 107, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -120, i8 -1, i8 64 }, %struct.io_reg { i32 980, i8 -119, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -118, i8 -1, i8 -120 }, %struct.io_reg { i32 980, i8 -44, i8 -1, i8 -127 }, %struct.io_reg { i32 980, i8 -117, i8 -1, i8 93 }, %struct.io_reg { i32 980, i8 -116, i8 -1, i8 43 }, %struct.io_reg { i32 980, i8 -115, i8 -1, i8 111 }, %struct.io_reg { i32 980, i8 -114, i8 -1, i8 43 }, %struct.io_reg { i32 980, i8 -113, i8 -1, i8 1 }, %struct.io_reg { i32 980, i8 -112, i8 -1, i8 1 }, %struct.io_reg { i32 980, i8 -111, i8 -1, i8 -128 }, %struct.io_reg { i32 980, i8 -106, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -105, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -103, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -101, i8 -1, i8 0 }], [88 x i8] zeroinitializer }, align 32
@VX855_ModeXregs = dso_local global { [29 x %struct.io_reg], [56 x i8] } { [29 x %struct.io_reg] [%struct.io_reg { i32 964, i8 16, i8 -1, i8 1 }, %struct.io_reg { i32 964, i8 21, i8 2, i8 2 }, %struct.io_reg { i32 964, i8 22, i8 -65, i8 8 }, %struct.io_reg { i32 964, i8 23, i8 -1, i8 31 }, %struct.io_reg { i32 964, i8 24, i8 -1, i8 78 }, %struct.io_reg { i32 964, i8 26, i8 -5, i8 8 }, %struct.io_reg { i32 964, i8 27, i8 -1, i8 -16 }, %struct.io_reg { i32 964, i8 30, i8 7, i8 1 }, %struct.io_reg { i32 964, i8 42, i8 -16, i8 0 }, %struct.io_reg { i32 964, i8 88, i8 -1, i8 0 }, %struct.io_reg { i32 964, i8 89, i8 -1, i8 0 }, %struct.io_reg { i32 964, i8 45, i8 -64, i8 -64 }, %struct.io_reg { i32 980, i8 50, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 51, i8 127, i8 0 }, %struct.io_reg { i32 980, i8 53, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 54, i8 8, i8 0 }, %struct.io_reg { i32 980, i8 105, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 106, i8 -3, i8 96 }, %struct.io_reg { i32 980, i8 107, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -120, i8 -1, i8 64 }, %struct.io_reg { i32 980, i8 -119, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -118, i8 -1, i8 -120 }, %struct.io_reg { i32 980, i8 -44, i8 -1, i8 -127 }, %struct.io_reg { i32 980, i8 -111, i8 -1, i8 -128 }, %struct.io_reg { i32 980, i8 -106, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -105, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -103, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -101, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 -46, i8 -1, i8 -1 }], [56 x i8] zeroinitializer }, align 32
@CLE266_ModeXregs = dso_local global { [17 x %struct.io_reg], [56 x i8] } { [17 x %struct.io_reg] [%struct.io_reg { i32 964, i8 30, i8 -16, i8 0 }, %struct.io_reg { i32 964, i8 42, i8 15, i8 0 }, %struct.io_reg { i32 964, i8 21, i8 2, i8 2 }, %struct.io_reg { i32 964, i8 22, i8 -65, i8 8 }, %struct.io_reg { i32 964, i8 23, i8 -1, i8 31 }, %struct.io_reg { i32 964, i8 24, i8 -1, i8 78 }, %struct.io_reg { i32 964, i8 26, i8 -5, i8 8 }, %struct.io_reg { i32 980, i8 50, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 53, i8 -1, i8 0 }, %struct.io_reg { i32 980, i8 54, i8 8, i8 0 }, %struct.io_reg { i32 980, i8 106, i8 -1, i8 -128 }, %struct.io_reg { i32 980, i8 106, i8 -1, i8 -64 }, %struct.io_reg { i32 980, i8 85, i8 -128, i8 0 }, %struct.io_reg { i32 980, i8 93, i8 -128, i8 0 }, %struct.io_reg { i32 974, i8 32, i8 -1, i8 0 }, %struct.io_reg { i32 974, i8 33, i8 -1, i8 0 }, %struct.io_reg { i32 974, i8 34, i8 -1, i8 0 }], [56 x i8] zeroinitializer }, align 32
@PM1024x768 = dso_local global { [2 x %struct.io_reg], [16 x i8] } { [2 x %struct.io_reg] [%struct.io_reg { i32 964, i8 22, i8 -65, i8 12 }, %struct.io_reg { i32 964, i8 24, i8 -1, i8 76 }], [16 x i8] zeroinitializer }, align 32
@res_patch_table = dso_local global { [1 x %struct.patch_table], [24 x i8] } { [1 x %struct.patch_table] [%struct.patch_table { i32 2, ptr @PM1024x768 }], [24 x i8] zeroinitializer }, align 32
@VPIT = dso_local global { %struct.VPITTable, [62 x i8] } { %struct.VPITTable { i8 -57, [4 x i8] c"\01\0F\00\0E", [9 x i8] c"\00\00\00\00\00\00\05\0F\FF", [20 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\01\00\0F\00" }, [62 x i8] zeroinitializer }, align 32
@NUM_TOTAL_CN400_ModeXregs = dso_local global { i32, [28 x i8] } { i32 29, [28 x i8] zeroinitializer }, align 32
@NUM_TOTAL_CN700_ModeXregs = dso_local global { i32, [28 x i8] } { i32 47, [28 x i8] zeroinitializer }, align 32
@NUM_TOTAL_KM400_ModeXregs = dso_local global { i32, [28 x i8] } { i32 34, [28 x i8] zeroinitializer }, align 32
@NUM_TOTAL_CX700_ModeXregs = dso_local global { i32, [28 x i8] } { i32 33, [28 x i8] zeroinitializer }, align 32
@NUM_TOTAL_VX855_ModeXregs = dso_local global { i32, [28 x i8] } { i32 29, [28 x i8] zeroinitializer }, align 32
@NUM_TOTAL_CLE266_ModeXregs = dso_local global { i32, [28 x i8] } { i32 17, [28 x i8] zeroinitializer }, align 32
@NUM_TOTAL_PATCH_MODE = dso_local global { i32, [28 x i8] } { i32 1, [28 x i8] zeroinitializer }, align 32
@viafb_modes = internal constant { [62 x %struct.fb_videomode], [880 x i8] } { [62 x %struct.fb_videomode] [%struct.fb_videomode { ptr null, i32 60, i32 480, i32 640, i32 40285, i32 72, i32 24, i32 19, i32 1, i32 48, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 640, i32 480, i32 39682, i32 48, i32 16, i32 33, i32 10, i32 96, i32 2, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 640, i32 480, i32 31746, i32 120, i32 16, i32 16, i32 1, i32 64, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 640, i32 480, i32 27780, i32 80, i32 56, i32 25, i32 1, i32 56, i32 3, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 100, i32 640, i32 480, i32 23167, i32 104, i32 40, i32 25, i32 1, i32 64, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 120, i32 640, i32 480, i32 19081, i32 104, i32 40, i32 31, i32 1, i32 64, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 720, i32 480, i32 37426, i32 88, i32 16, i32 13, i32 1, i32 72, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 720, i32 576, i32 30611, i32 96, i32 24, i32 17, i32 1, i32 72, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 800, i32 600, i32 25131, i32 88, i32 40, i32 23, i32 1, i32 128, i32 4, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 800, i32 600, i32 20202, i32 160, i32 16, i32 21, i32 1, i32 80, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 800, i32 600, i32 17790, i32 152, i32 32, i32 27, i32 1, i32 64, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 100, i32 800, i32 600, i32 14667, i32 136, i32 48, i32 32, i32 1, i32 88, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 120, i32 800, i32 600, i32 11911, i32 144, i32 56, i32 39, i32 1, i32 88, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 800, i32 480, i32 33602, i32 96, i32 24, i32 10, i32 3, i32 72, i32 7, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 848, i32 480, i32 31565, i32 104, i32 24, i32 12, i32 3, i32 80, i32 5, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 856, i32 480, i32 31517, i32 104, i32 16, i32 13, i32 1, i32 88, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1024, i32 512, i32 24218, i32 136, i32 32, i32 15, i32 1, i32 104, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1024, i32 600, i32 20423, i32 144, i32 40, i32 18, i32 1, i32 104, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1024, i32 768, i32 15385, i32 160, i32 24, i32 29, i32 3, i32 136, i32 6, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1024, i32 768, i32 12703, i32 176, i32 16, i32 28, i32 1, i32 96, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 1024, i32 768, i32 10581, i32 208, i32 48, i32 36, i32 1, i32 96, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 100, i32 1024, i32 768, i32 8825, i32 184, i32 72, i32 42, i32 1, i32 112, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1152, i32 864, i32 9259, i32 256, i32 64, i32 32, i32 1, i32 128, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1280, i32 768, i32 12478, i32 200, i32 64, i32 23, i32 1, i32 136, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 50, i32 1280, i32 768, i32 15342, i32 184, i32 56, i32 19, i32 1, i32 128, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 960, i32 600, i32 21964, i32 128, i32 32, i32 15, i32 3, i32 96, i32 6, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1000, i32 600, i32 20803, i32 144, i32 40, i32 18, i32 1, i32 104, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1024, i32 576, i32 21278, i32 144, i32 40, i32 17, i32 1, i32 104, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1088, i32 612, i32 18825, i32 152, i32 48, i32 16, i32 3, i32 104, i32 5, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1152, i32 720, i32 14974, i32 168, i32 56, i32 19, i32 3, i32 112, i32 6, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1200, i32 720, i32 14248, i32 184, i32 56, i32 22, i32 1, i32 128, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 49, i32 1200, i32 900, i32 17703, i32 21, i32 11, i32 1, i32 1, i32 32, i32 10, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1280, i32 600, i32 16259, i32 184, i32 56, i32 18, i32 1, i32 128, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1280, i32 800, i32 11938, i32 200, i32 72, i32 22, i32 3, i32 128, i32 6, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1280, i32 960, i32 9259, i32 312, i32 96, i32 36, i32 1, i32 112, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1280, i32 1024, i32 9262, i32 248, i32 48, i32 38, i32 1, i32 112, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1280, i32 1024, i32 7409, i32 248, i32 16, i32 38, i32 1, i32 144, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 85, i32 1280, i32 1024, i32 6351, i32 224, i32 64, i32 44, i32 1, i32 160, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1360, i32 768, i32 11759, i32 208, i32 72, i32 22, i32 3, i32 136, i32 5, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1368, i32 768, i32 11646, i32 216, i32 72, i32 23, i32 1, i32 144, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 50, i32 1368, i32 768, i32 14301, i32 200, i32 56, i32 19, i32 1, i32 144, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1368, i32 768, i32 11646, i32 216, i32 72, i32 23, i32 1, i32 144, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1440, i32 900, i32 9372, i32 232, i32 80, i32 25, i32 3, i32 152, i32 6, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1440, i32 900, i32 7311, i32 248, i32 96, i32 33, i32 3, i32 152, i32 6, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1440, i32 1040, i32 7993, i32 248, i32 96, i32 33, i32 1, i32 152, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1600, i32 900, i32 8449, i32 256, i32 88, i32 26, i32 3, i32 168, i32 5, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1600, i32 1024, i32 7333, i32 272, i32 104, i32 32, i32 1, i32 168, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1600, i32 1200, i32 6172, i32 304, i32 64, i32 46, i32 1, i32 192, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1600, i32 1200, i32 4938, i32 304, i32 64, i32 46, i32 1, i32 192, i32 3, i32 3, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1680, i32 1050, i32 6832, i32 280, i32 104, i32 30, i32 3, i32 176, i32 6, i32 0, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1680, i32 1050, i32 5339, i32 296, i32 120, i32 40, i32 3, i32 176, i32 6, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1792, i32 1344, i32 4883, i32 328, i32 128, i32 46, i32 1, i32 200, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1856, i32 1392, i32 4581, i32 352, i32 96, i32 43, i32 1, i32 224, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1920, i32 1440, i32 4273, i32 344, i32 128, i32 56, i32 1, i32 208, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1920, i32 1440, i32 3367, i32 352, i32 144, i32 56, i32 1, i32 224, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 2048, i32 1536, i32 3738, i32 376, i32 152, i32 49, i32 3, i32 224, i32 4, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1280, i32 720, i32 13484, i32 216, i32 112, i32 20, i32 5, i32 40, i32 5, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 50, i32 1280, i32 720, i32 16538, i32 176, i32 48, i32 17, i32 1, i32 128, i32 3, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1920, i32 1080, i32 5776, i32 328, i32 128, i32 32, i32 3, i32 200, i32 5, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1920, i32 1200, i32 5164, i32 336, i32 136, i32 36, i32 3, i32 200, i32 6, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1400, i32 1050, i32 8210, i32 232, i32 88, i32 32, i32 3, i32 144, i32 4, i32 2, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 75, i32 1400, i32 1050, i32 6398, i32 248, i32 104, i32 42, i32 3, i32 144, i32 4, i32 2, i32 0, i32 0 }], [880 x i8] zeroinitializer }, align 32
@viafb_rb_modes = internal constant { [7 x %struct.fb_videomode], [120 x i8] } { [7 x %struct.fb_videomode] [%struct.fb_videomode { ptr null, i32 60, i32 1360, i32 768, i32 13879, i32 80, i32 48, i32 14, i32 3, i32 32, i32 5, i32 1, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1440, i32 900, i32 11249, i32 80, i32 48, i32 17, i32 3, i32 32, i32 6, i32 1, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1400, i32 1050, i32 9892, i32 80, i32 48, i32 23, i32 3, i32 32, i32 4, i32 1, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1600, i32 900, i32 10226, i32 80, i32 48, i32 18, i32 3, i32 32, i32 5, i32 1, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1680, i32 1050, i32 8387, i32 80, i32 48, i32 21, i32 3, i32 32, i32 6, i32 1, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1920, i32 1080, i32 7212, i32 80, i32 48, i32 23, i32 3, i32 32, i32 5, i32 1, i32 0, i32 0 }, %struct.fb_videomode { ptr null, i32 60, i32 1920, i32 1200, i32 6488, i32 80, i32 48, i32 26, i32 3, i32 32, i32 6, i32 1, i32 0, i32 0 }], [120 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 1360, i64 1400, i64 1440, i64 1600, i64 1680, i64 1920]
@___asan_gen_.1 = private unnamed_addr constant [16 x i8] c"CN400_ModeXregs\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 11, i32 15 }
@___asan_gen_.4 = private unnamed_addr constant [16 x i8] c"CN700_ModeXregs\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 44, i32 15 }
@___asan_gen_.7 = private unnamed_addr constant [16 x i8] c"KM400_ModeXregs\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 93, i32 15 }
@___asan_gen_.10 = private unnamed_addr constant [16 x i8] c"CX700_ModeXregs\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 131, i32 15 }
@___asan_gen_.13 = private unnamed_addr constant [16 x i8] c"VX855_ModeXregs\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 166, i32 15 }
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"CLE266_ModeXregs\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 200, i32 15 }
@___asan_gen_.19 = private unnamed_addr constant [11 x i8] c"PM1024x768\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 224, i32 15 }
@___asan_gen_.22 = private unnamed_addr constant [16 x i8] c"res_patch_table\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 228, i32 20 }
@___asan_gen_.25 = private unnamed_addr constant [5 x i8] c"VPIT\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 240, i32 18 }
@___asan_gen_.28 = private unnamed_addr constant [26 x i8] c"NUM_TOTAL_CN400_ModeXregs\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 330, i32 5 }
@___asan_gen_.31 = private unnamed_addr constant [26 x i8] c"NUM_TOTAL_CN700_ModeXregs\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 331, i32 5 }
@___asan_gen_.34 = private unnamed_addr constant [26 x i8] c"NUM_TOTAL_KM400_ModeXregs\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 332, i32 5 }
@___asan_gen_.37 = private unnamed_addr constant [26 x i8] c"NUM_TOTAL_CX700_ModeXregs\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 333, i32 5 }
@___asan_gen_.40 = private unnamed_addr constant [26 x i8] c"NUM_TOTAL_VX855_ModeXregs\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 334, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant [27 x i8] c"NUM_TOTAL_CLE266_ModeXregs\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 335, i32 5 }
@___asan_gen_.46 = private unnamed_addr constant [21 x i8] c"NUM_TOTAL_PATCH_MODE\00", align 1
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 336, i32 5 }
@___asan_gen_.49 = private unnamed_addr constant [12 x i8] c"viafb_modes\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 257, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"viafb_rb_modes\00", align 1
@___asan_gen_.53 = private constant [37 x i8] c"../drivers/video/fbdev/via/viamode.c\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.53, i32 321, i32 34 }
@llvm.compiler.used = appending global [18 x ptr] [ptr @CN400_ModeXregs, ptr @CN700_ModeXregs, ptr @KM400_ModeXregs, ptr @CX700_ModeXregs, ptr @VX855_ModeXregs, ptr @CLE266_ModeXregs, ptr @PM1024x768, ptr @res_patch_table, ptr @VPIT, ptr @NUM_TOTAL_CN400_ModeXregs, ptr @NUM_TOTAL_CN700_ModeXregs, ptr @NUM_TOTAL_KM400_ModeXregs, ptr @NUM_TOTAL_CX700_ModeXregs, ptr @NUM_TOTAL_VX855_ModeXregs, ptr @NUM_TOTAL_CLE266_ModeXregs, ptr @NUM_TOTAL_PATCH_MODE, ptr @viafb_modes, ptr @viafb_rb_modes], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CN400_ModeXregs to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CN700_ModeXregs to i32), i32 376, i32 448, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @KM400_ModeXregs to i32), i32 272, i32 352, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CX700_ModeXregs to i32), i32 264, i32 352, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VX855_ModeXregs to i32), i32 232, i32 288, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @CLE266_ModeXregs to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @PM1024x768 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @res_patch_table to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @VPIT to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NUM_TOTAL_CN400_ModeXregs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NUM_TOTAL_CN700_ModeXregs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NUM_TOTAL_KM400_ModeXregs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NUM_TOTAL_CX700_ModeXregs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NUM_TOTAL_VX855_ModeXregs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NUM_TOTAL_CLE266_ModeXregs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @NUM_TOTAL_PATCH_MODE to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_modes to i32), i32 3472, i32 4352, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @viafb_rb_modes to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @viafb_get_best_mode(i32 noundef %hres, i32 noundef %vres, i32 noundef %refresh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %entry
  %best.042.i = phi ptr [ %best.1.i, %for.inc.i.for.body.i_crit_edge ], [ null, %entry ]
  %i.039.i = phi i32 [ %inc.i, %for.inc.i.for.body.i_crit_edge ], [ 0, %entry ]
  %arrayidx.i = getelementptr %struct.fb_videomode, ptr @viafb_modes, i32 %i.039.i
  %xres.i = getelementptr %struct.fb_videomode, ptr @viafb_modes, i32 %i.039.i, i32 2
  %0 = ptrtoint ptr %xres.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %xres.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %hres)
  %cmp1.not.i = icmp eq i32 %1, %hres
  br i1 %cmp1.not.i, label %lor.lhs.false.i, label %for.body.i.for.inc.i_crit_edge

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

lor.lhs.false.i:                                  ; preds = %for.body.i
  %yres.i = getelementptr %struct.fb_videomode, ptr @viafb_modes, i32 %i.039.i, i32 3
  %2 = ptrtoint ptr %yres.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %yres.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %vres)
  %cmp3.not.i = icmp eq i32 %3, %vres
  br i1 %cmp3.not.i, label %if.end.i, label %lor.lhs.false.i.for.inc.i_crit_edge

lor.lhs.false.i.for.inc.i_crit_edge:              ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %tobool.not.i = icmp eq ptr %best.042.i, null
  br i1 %tobool.not.i, label %if.end.i.if.then20.i_crit_edge, label %lor.lhs.false4.i

if.end.i.if.then20.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then20.i

lor.lhs.false4.i:                                 ; preds = %if.end.i
  %refresh6.i = getelementptr %struct.fb_videomode, ptr @viafb_modes, i32 %i.039.i, i32 1
  %4 = ptrtoint ptr %refresh6.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %refresh6.i, align 4
  %sub.i = sub i32 %5, %refresh
  %6 = tail call i32 @llvm.abs.i32(i32 %sub.i, i1 false) #2
  %refresh10.i = getelementptr inbounds %struct.fb_videomode, ptr %best.042.i, i32 0, i32 1
  %7 = ptrtoint ptr %refresh10.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %refresh10.i, align 4
  %sub11.i = sub i32 %8, %refresh
  %9 = tail call i32 @llvm.abs.i32(i32 %sub11.i, i1 false) #2
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %9)
  %cmp19.i = icmp slt i32 %6, %9
  br i1 %cmp19.i, label %lor.lhs.false4.i.if.then20.i_crit_edge, label %lor.lhs.false4.i.for.inc.i_crit_edge

lor.lhs.false4.i.for.inc.i_crit_edge:             ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i

lor.lhs.false4.i.if.then20.i_crit_edge:           ; preds = %lor.lhs.false4.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %if.then20.i

if.then20.i:                                      ; preds = %lor.lhs.false4.i.if.then20.i_crit_edge, %if.end.i.if.then20.i_crit_edge
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.then20.i, %lor.lhs.false4.i.for.inc.i_crit_edge, %lor.lhs.false.i.for.inc.i_crit_edge, %for.body.i.for.inc.i_crit_edge
  %best.1.i = phi ptr [ %best.042.i, %for.body.i.for.inc.i_crit_edge ], [ %best.042.i, %lor.lhs.false.i.for.inc.i_crit_edge ], [ %arrayidx.i, %if.then20.i ], [ %best.042.i, %lor.lhs.false4.i.for.inc.i_crit_edge ]
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 62
  br i1 %exitcond.not.i, label %get_best_mode.exit, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.body.i

get_best_mode.exit:                               ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #4
  ret ptr %best.1.i
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define dso_local ptr @viafb_get_best_rb_mode(i32 noundef %hres, i32 noundef %vres, i32 noundef %refresh) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #4
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %hres to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %hres, label %entry.for.inc.i.6_crit_edge [
    i32 1360, label %lor.lhs.false.i
    i32 1440, label %lor.lhs.false.i.1
    i32 1400, label %lor.lhs.false.i.2
    i32 1600, label %lor.lhs.false.i.3
    i32 1680, label %lor.lhs.false.i.4
    i32 1920, label %lor.lhs.false.i.5
  ]

entry.for.inc.i.6_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  br label %for.inc.i.6

lor.lhs.false.i:                                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 768, i32 %vres)
  %cmp3.not.i = icmp eq i32 %vres, 768
  %spec.select = select i1 %cmp3.not.i, ptr @viafb_rb_modes, ptr null
  br label %for.inc.i.6

lor.lhs.false.i.1:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 900, i32 %vres)
  %cmp3.not.i.1 = icmp eq i32 %vres, 900
  %spec.select21 = select i1 %cmp3.not.i.1, ptr getelementptr inbounds ([7 x %struct.fb_videomode], ptr @viafb_rb_modes, i32 0, i32 1), ptr null
  br label %for.inc.i.6

lor.lhs.false.i.2:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050, i32 %vres)
  %cmp3.not.i.2 = icmp eq i32 %vres, 1050
  %spec.select22 = select i1 %cmp3.not.i.2, ptr getelementptr inbounds ([7 x %struct.fb_videomode], ptr @viafb_rb_modes, i32 0, i32 2), ptr null
  br label %for.inc.i.6

lor.lhs.false.i.3:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 900, i32 %vres)
  %cmp3.not.i.3 = icmp eq i32 %vres, 900
  %spec.select23 = select i1 %cmp3.not.i.3, ptr getelementptr inbounds ([7 x %struct.fb_videomode], ptr @viafb_rb_modes, i32 0, i32 3), ptr null
  br label %for.inc.i.6

lor.lhs.false.i.4:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050, i32 %vres)
  %cmp3.not.i.4 = icmp eq i32 %vres, 1050
  %spec.select24 = select i1 %cmp3.not.i.4, ptr getelementptr inbounds ([7 x %struct.fb_videomode], ptr @viafb_rb_modes, i32 0, i32 4), ptr null
  br label %for.inc.i.6

lor.lhs.false.i.5:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1200, i32 %vres)
  %switch.selectcmp = icmp eq i32 %vres, 1200
  %switch.select = select i1 %switch.selectcmp, ptr getelementptr inbounds ([7 x %struct.fb_videomode], ptr @viafb_rb_modes, i32 0, i32 6), ptr null
  call void @__sanitizer_cov_trace_const_cmp4(i32 1080, i32 %vres)
  %switch.selectcmp25 = icmp eq i32 %vres, 1080
  %switch.select26 = select i1 %switch.selectcmp25, ptr getelementptr inbounds ([7 x %struct.fb_videomode], ptr @viafb_rb_modes, i32 0, i32 5), ptr %switch.select
  br label %for.inc.i.6

for.inc.i.6:                                      ; preds = %lor.lhs.false.i.5, %lor.lhs.false.i.4, %lor.lhs.false.i.3, %lor.lhs.false.i.2, %lor.lhs.false.i.1, %lor.lhs.false.i, %entry.for.inc.i.6_crit_edge
  %best.1.i.6 = phi ptr [ %spec.select, %lor.lhs.false.i ], [ %spec.select21, %lor.lhs.false.i.1 ], [ %spec.select22, %lor.lhs.false.i.2 ], [ %spec.select23, %lor.lhs.false.i.3 ], [ %spec.select24, %lor.lhs.false.i.4 ], [ null, %entry.for.inc.i.6_crit_edge ], [ %switch.select26, %lor.lhs.false.i.5 ]
  ret ptr %best.1.i.6
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #2

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #3 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #3 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nofree nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #2 = { nounwind }
attributes #3 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #4 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @CN400_ModeXregs, !1, !"CN400_ModeXregs", i1 false, i1 false}
!1 = !{!"../drivers/video/fbdev/via/viamode.c", i32 11, i32 15}
!2 = !{ptr @CN700_ModeXregs, !3, !"CN700_ModeXregs", i1 false, i1 false}
!3 = !{!"../drivers/video/fbdev/via/viamode.c", i32 44, i32 15}
!4 = !{ptr @KM400_ModeXregs, !5, !"KM400_ModeXregs", i1 false, i1 false}
!5 = !{!"../drivers/video/fbdev/via/viamode.c", i32 93, i32 15}
!6 = !{ptr @CX700_ModeXregs, !7, !"CX700_ModeXregs", i1 false, i1 false}
!7 = !{!"../drivers/video/fbdev/via/viamode.c", i32 131, i32 15}
!8 = !{ptr @VX855_ModeXregs, !9, !"VX855_ModeXregs", i1 false, i1 false}
!9 = !{!"../drivers/video/fbdev/via/viamode.c", i32 166, i32 15}
!10 = !{ptr @CLE266_ModeXregs, !11, !"CLE266_ModeXregs", i1 false, i1 false}
!11 = !{!"../drivers/video/fbdev/via/viamode.c", i32 200, i32 15}
!12 = !{ptr @PM1024x768, !13, !"PM1024x768", i1 false, i1 false}
!13 = !{!"../drivers/video/fbdev/via/viamode.c", i32 224, i32 15}
!14 = !{ptr @res_patch_table, !15, !"res_patch_table", i1 false, i1 false}
!15 = !{!"../drivers/video/fbdev/via/viamode.c", i32 228, i32 20}
!16 = !{ptr @VPIT, !17, !"VPIT", i1 false, i1 false}
!17 = !{!"../drivers/video/fbdev/via/viamode.c", i32 240, i32 18}
!18 = !{ptr @NUM_TOTAL_CN400_ModeXregs, !19, !"NUM_TOTAL_CN400_ModeXregs", i1 false, i1 false}
!19 = !{!"../drivers/video/fbdev/via/viamode.c", i32 330, i32 5}
!20 = !{ptr @NUM_TOTAL_CN700_ModeXregs, !21, !"NUM_TOTAL_CN700_ModeXregs", i1 false, i1 false}
!21 = !{!"../drivers/video/fbdev/via/viamode.c", i32 331, i32 5}
!22 = !{ptr @NUM_TOTAL_KM400_ModeXregs, !23, !"NUM_TOTAL_KM400_ModeXregs", i1 false, i1 false}
!23 = !{!"../drivers/video/fbdev/via/viamode.c", i32 332, i32 5}
!24 = !{ptr @NUM_TOTAL_CX700_ModeXregs, !25, !"NUM_TOTAL_CX700_ModeXregs", i1 false, i1 false}
!25 = !{!"../drivers/video/fbdev/via/viamode.c", i32 333, i32 5}
!26 = !{ptr @NUM_TOTAL_VX855_ModeXregs, !27, !"NUM_TOTAL_VX855_ModeXregs", i1 false, i1 false}
!27 = !{!"../drivers/video/fbdev/via/viamode.c", i32 334, i32 5}
!28 = !{ptr @NUM_TOTAL_CLE266_ModeXregs, !29, !"NUM_TOTAL_CLE266_ModeXregs", i1 false, i1 false}
!29 = !{!"../drivers/video/fbdev/via/viamode.c", i32 335, i32 5}
!30 = !{ptr @NUM_TOTAL_PATCH_MODE, !31, !"NUM_TOTAL_PATCH_MODE", i1 false, i1 false}
!31 = !{!"../drivers/video/fbdev/via/viamode.c", i32 336, i32 5}
!32 = !{ptr @viafb_modes, !33, !"viafb_modes", i1 false, i1 false}
!33 = !{!"../drivers/video/fbdev/via/viamode.c", i32 257, i32 34}
!34 = !{ptr @viafb_rb_modes, !35, !"viafb_rb_modes", i1 false, i1 false}
!35 = !{!"../drivers/video/fbdev/via/viamode.c", i32 321, i32 34}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
