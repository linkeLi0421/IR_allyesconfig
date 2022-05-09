; ModuleID = '/llk/IR_all_yes/arch/arm/probes/decode-arm.c_pt.bc'
source_filename = "../arch/arm/probes/decode-arm.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%union.decode_item = type { i32 }
%struct.arch_probes_insn = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i8 }

@arm_1111_table = internal constant { [13 x %union.decode_item], [44 x i8] } { [13 x %union.decode_item] [%union.decode_item { i32 3 }, %union.decode_item { i32 -30408704 }, %union.decode_item { i32 -200278016 }, %union.decode_item zeroinitializer, %union.decode_item { i32 3 }, %union.decode_item { i32 -30408688 }, %union.decode_item { i32 -166723584 }, %union.decode_item { i32 1 }, %union.decode_item { i32 3 }, %union.decode_item { i32 -33554432 }, %union.decode_item { i32 -100663296 }, %union.decode_item { i32 2 }, %union.decode_item zeroinitializer], [44 x i8] zeroinitializer }, align 32
@arm_cccc_0001_0xx0____0xxx_table = internal constant { [21 x %union.decode_item], [44 x i8] } { [21 x %union.decode_item] [%union.decode_item { i32 458755 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 16777216 }, %union.decode_item { i32 4 }, %union.decode_item { i32 3 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 18874384 }, %union.decode_item { i32 3 }, %union.decode_item { i32 115 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 18874416 }, %union.decode_item { i32 3 }, %union.decode_item { i32 458868 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 23068688 }, %union.decode_item { i32 5 }, %union.decode_item { i32 7798900 }, %union.decode_item { i32 261095664 }, %union.decode_item { i32 16777296 }, %union.decode_item { i32 6 }, %union.decode_item zeroinitializer], [44 x i8] zeroinitializer }, align 32
@arm_cccc_0001_0xx0____1xx0_table = internal constant { [19 x %union.decode_item], [52 x i8] } { [19 x %union.decode_item] [%union.decode_item { i32 7827572 }, %union.decode_item { i32 267387024 }, %union.decode_item { i32 20971648 }, %union.decode_item { i32 7 }, %union.decode_item { i32 5 }, %union.decode_item { i32 267387056 }, %union.decode_item { i32 18874528 }, %union.decode_item { i32 7368820 }, %union.decode_item { i32 267387024 }, %union.decode_item { i32 23068800 }, %union.decode_item { i32 8 }, %union.decode_item { i32 5 }, %union.decode_item { i32 267387024 }, %union.decode_item { i32 16777344 }, %union.decode_item { i32 7827572 }, %union.decode_item { i32 267387056 }, %union.decode_item { i32 18874496 }, %union.decode_item { i32 8 }, %union.decode_item zeroinitializer], [52 x i8] zeroinitializer }, align 32
@arm_cccc_0000_____1001_table = internal constant { [19 x %union.decode_item], [52 x i8] } { [19 x %union.decode_item] [%union.decode_item { i32 7368820 }, %union.decode_item { i32 266338544 }, %union.decode_item { i32 144 }, %union.decode_item { i32 8 }, %union.decode_item { i32 5 }, %union.decode_item { i32 266338544 }, %union.decode_item { i32 2097296 }, %union.decode_item { i32 7827572 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 6291600 }, %union.decode_item { i32 8 }, %union.decode_item { i32 5 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 4194448 }, %union.decode_item { i32 7827572 }, %union.decode_item { i32 260047088 }, %union.decode_item { i32 8388752 }, %union.decode_item { i32 7 }, %union.decode_item zeroinitializer], [52 x i8] zeroinitializer }, align 32
@arm_cccc_0001_____1001_table = internal constant { [1 x %union.decode_item], [28 x i8] } zeroinitializer, align 32
@arm_cccc_000x_____1xx1_table = internal constant { [31 x %union.decode_item], [36 x i8] } { [31 x %union.decode_item] [%union.decode_item { i32 6 }, %union.decode_item { i32 253755536 }, %union.decode_item { i32 2097296 }, %union.decode_item { i32 6 }, %union.decode_item { i32 235987152 }, %union.decode_item { i32 57552 }, %union.decode_item { i32 8978548 }, %union.decode_item { i32 240124112 }, %union.decode_item { i32 208 }, %union.decode_item { i32 10 }, %union.decode_item { i32 8978436 }, %union.decode_item { i32 240124112 }, %union.decode_item { i32 4194512 }, %union.decode_item { i32 10 }, %union.decode_item { i32 8847476 }, %union.decode_item { i32 240124144 }, %union.decode_item { i32 176 }, %union.decode_item { i32 14 }, %union.decode_item { i32 8847476 }, %union.decode_item { i32 240124048 }, %union.decode_item { i32 1048720 }, %union.decode_item { i32 13 }, %union.decode_item { i32 8847364 }, %union.decode_item { i32 240124144 }, %union.decode_item { i32 4194480 }, %union.decode_item { i32 14 }, %union.decode_item { i32 8847364 }, %union.decode_item { i32 240124048 }, %union.decode_item { i32 5243024 }, %union.decode_item { i32 13 }, %union.decode_item zeroinitializer], [36 x i8] zeroinitializer }, align 32
@arm_cccc_000x_table = internal constant { [32 x %union.decode_item], [32 x i8] } { [32 x %union.decode_item] [%union.decode_item { i32 6 }, %union.decode_item { i32 235991040 }, %union.decode_item { i32 1110016 }, %union.decode_item { i32 3 }, %union.decode_item { i32 -1 }, %union.decode_item { i32 -509558771 }, %union.decode_item { i32 15 }, %union.decode_item { i32 1048596 }, %union.decode_item { i32 261095440 }, %union.decode_item { i32 17825792 }, %union.decode_item { i32 16 }, %union.decode_item { i32 65556 }, %union.decode_item { i32 262144016 }, %union.decode_item { i32 27262976 }, %union.decode_item { i32 16 }, %union.decode_item { i32 1114132 }, %union.decode_item { i32 234881040 }, %union.decode_item zeroinitializer, %union.decode_item { i32 16 }, %union.decode_item { i32 7368820 }, %union.decode_item { i32 261095568 }, %union.decode_item { i32 17825808 }, %union.decode_item { i32 16 }, %union.decode_item { i32 487540 }, %union.decode_item { i32 262144144 }, %union.decode_item { i32 27262992 }, %union.decode_item { i32 16 }, %union.decode_item { i32 7827572 }, %union.decode_item { i32 234881168 }, %union.decode_item { i32 16 }, %union.decode_item { i32 16 }, %union.decode_item zeroinitializer], [32 x i8] zeroinitializer }, align 32
@arm_cccc_001x_table = internal constant { [34 x %union.decode_item], [56 x i8] } { [34 x %union.decode_item] [%union.decode_item { i32 458756 }, %union.decode_item { i32 263192576 }, %union.decode_item { i32 50331648 }, %union.decode_item { i32 18 }, %union.decode_item { i32 5 }, %union.decode_item { i32 268370175 }, %union.decode_item { i32 52428801 }, %union.decode_item { i32 4 }, %union.decode_item { i32 268370175 }, %union.decode_item { i32 52428804 }, %union.decode_item { i32 19 }, %union.decode_item { i32 3 }, %union.decode_item { i32 268370172 }, %union.decode_item { i32 52428800 }, %union.decode_item { i32 20 }, %union.decode_item { i32 6 }, %union.decode_item { i32 263192576 }, %union.decode_item { i32 52428800 }, %union.decode_item { i32 6 }, %union.decode_item { i32 235991040 }, %union.decode_item { i32 34664448 }, %union.decode_item { i32 1048580 }, %union.decode_item { i32 261095424 }, %union.decode_item { i32 51380224 }, %union.decode_item { i32 17 }, %union.decode_item { i32 65540 }, %union.decode_item { i32 262144000 }, %union.decode_item { i32 60817408 }, %union.decode_item { i32 17 }, %union.decode_item { i32 1114116 }, %union.decode_item { i32 234881024 }, %union.decode_item { i32 33554432 }, %union.decode_item { i32 17 }, %union.decode_item zeroinitializer], [56 x i8] zeroinitializer }, align 32
@arm_cccc_0110_____xxx1_table = internal constant { [44 x %union.decode_item], [48 x i8] } { [44 x %union.decode_item] [%union.decode_item { i32 7798900 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 109052080 }, %union.decode_item { i32 21 }, %union.decode_item { i32 5 }, %union.decode_item { i32 262144048 }, %union.decode_item { i32 111149072 }, %union.decode_item { i32 458868 }, %union.decode_item { i32 263192816 }, %union.decode_item { i32 111149104 }, %union.decode_item { i32 21 }, %union.decode_item { i32 458868 }, %union.decode_item { i32 263192688 }, %union.decode_item { i32 112197680 }, %union.decode_item { i32 22 }, %union.decode_item { i32 6 }, %union.decode_item { i32 263192592 }, %union.decode_item { i32 100663312 }, %union.decode_item { i32 6 }, %union.decode_item { i32 260047088 }, %union.decode_item { i32 100663472 }, %union.decode_item { i32 6 }, %union.decode_item { i32 260047088 }, %union.decode_item { i32 100663504 }, %union.decode_item { i32 7798900 }, %union.decode_item { i32 260046864 }, %union.decode_item { i32 100663312 }, %union.decode_item { i32 23 }, %union.decode_item { i32 7798900 }, %union.decode_item { i32 267386928 }, %union.decode_item { i32 109051920 }, %union.decode_item { i32 24 }, %union.decode_item { i32 6 }, %union.decode_item { i32 263192816 }, %union.decode_item { i32 110100592 }, %union.decode_item { i32 458868 }, %union.decode_item { i32 261030128 }, %union.decode_item { i32 110035056 }, %union.decode_item { i32 25 }, %union.decode_item { i32 9896052 }, %union.decode_item { i32 260047088 }, %union.decode_item { i32 109052016 }, %union.decode_item { i32 26 }, %union.decode_item zeroinitializer], [48 x i8] zeroinitializer }, align 32
@arm_cccc_0111_____xxx1_table = internal constant { [44 x %union.decode_item], [48 x i8] } { [44 x %union.decode_item] [%union.decode_item { i32 6 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 133169392 }, %union.decode_item { i32 7827572 }, %union.decode_item { i32 267387024 }, %union.decode_item { i32 121634832 }, %union.decode_item { i32 27 }, %union.decode_item { i32 5 }, %union.decode_item { i32 267448464 }, %union.decode_item { i32 117501968 }, %union.decode_item { i32 5 }, %union.decode_item { i32 267448528 }, %union.decode_item { i32 122744848 }, %union.decode_item { i32 7368820 }, %union.decode_item { i32 267448560 }, %union.decode_item { i32 125890576 }, %union.decode_item { i32 28 }, %union.decode_item { i32 5 }, %union.decode_item { i32 267387024 }, %union.decode_item { i32 117440528 }, %union.decode_item { i32 5 }, %union.decode_item { i32 267387088 }, %union.decode_item { i32 122683408 }, %union.decode_item { i32 7958644 }, %union.decode_item { i32 267387120 }, %union.decode_item { i32 125829136 }, %union.decode_item { i32 28 }, %union.decode_item { i32 7827572 }, %union.decode_item { i32 267387088 }, %union.decode_item { i32 122683600 }, %union.decode_item { i32 28 }, %union.decode_item { i32 458868 }, %union.decode_item { i32 262144112 }, %union.decode_item { i32 127926352 }, %union.decode_item { i32 29 }, %union.decode_item { i32 458756 }, %union.decode_item { i32 266338431 }, %union.decode_item { i32 130023455 }, %union.decode_item { i32 29 }, %union.decode_item { i32 458900 }, %union.decode_item { i32 266338416 }, %union.decode_item { i32 130023440 }, %union.decode_item { i32 29 }, %union.decode_item zeroinitializer], [48 x i8] zeroinitializer }, align 32
@arm_cccc_01xx_table = internal constant { [23 x %union.decode_item], [36 x i8] } { [23 x %union.decode_item] [%union.decode_item { i32 6 }, %union.decode_item { i32 205582336 }, %union.decode_item { i32 71364608 }, %union.decode_item { i32 6 }, %union.decode_item { i32 220200960 }, %union.decode_item { i32 69206016 }, %union.decode_item { i32 8454148 }, %union.decode_item { i32 235929600 }, %union.decode_item { i32 67108864 }, %union.decode_item { i32 12 }, %union.decode_item { i32 8454148 }, %union.decode_item { i32 235929600 }, %union.decode_item { i32 68157440 }, %union.decode_item { i32 11 }, %union.decode_item { i32 8454260 }, %union.decode_item { i32 235929600 }, %union.decode_item { i32 100663296 }, %union.decode_item { i32 12 }, %union.decode_item { i32 8454260 }, %union.decode_item { i32 235929600 }, %union.decode_item { i32 101711872 }, %union.decode_item { i32 11 }, %union.decode_item zeroinitializer], [36 x i8] zeroinitializer }, align 32
@arm_cccc_100x_table = internal constant { [5 x %union.decode_item], [44 x i8] } { [5 x %union.decode_item] [%union.decode_item { i32 2 }, %union.decode_item { i32 239075328 }, %union.decode_item { i32 134217728 }, %union.decode_item { i32 31 }, %union.decode_item zeroinitializer], [44 x i8] zeroinitializer }, align 32
@probes_decode_arm_table = dso_local constant { <{ %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, %union.decode_item, %union.decode_item, %union.decode_item, %union.decode_item, %union.decode_item }>, [32 x i8] } { <{ %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, { ptr }, %union.decode_item, %union.decode_item, %union.decode_item, %union.decode_item, %union.decode_item, %union.decode_item, %union.decode_item, %union.decode_item }> <{ %union.decode_item { i32 1 }, %union.decode_item { i32 -268435456 }, %union.decode_item { i32 -268435456 }, { ptr } { ptr @arm_1111_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 261095552 }, %union.decode_item { i32 16777216 }, { ptr } { ptr @arm_cccc_0001_0xx0____0xxx_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 261095568 }, %union.decode_item { i32 16777344 }, { ptr } { ptr @arm_cccc_0001_0xx0____1xx0_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 251658480 }, %union.decode_item { i32 144 }, { ptr } { ptr @arm_cccc_0000_____1001_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 251658480 }, %union.decode_item { i32 16777360 }, { ptr } { ptr @arm_cccc_0001_____1001_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 234881168 }, %union.decode_item { i32 144 }, { ptr } { ptr @arm_cccc_000x_____1xx1_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 234881024 }, %union.decode_item zeroinitializer, { ptr } { ptr @arm_cccc_000x_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 234881024 }, %union.decode_item { i32 33554432 }, { ptr } { ptr @arm_cccc_001x_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 251658256 }, %union.decode_item { i32 100663312 }, { ptr } { ptr @arm_cccc_0110_____xxx1_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 251658256 }, %union.decode_item { i32 117440528 }, { ptr } { ptr @arm_cccc_0111_____xxx1_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 201326592 }, %union.decode_item { i32 67108864 }, { ptr } { ptr @arm_cccc_01xx_table }, %union.decode_item { i32 1 }, %union.decode_item { i32 234881024 }, %union.decode_item { i32 134217728 }, { ptr } { ptr @arm_cccc_100x_table }, %union.decode_item { i32 3 }, %union.decode_item { i32 234881024 }, %union.decode_item { i32 167772160 }, %union.decode_item { i32 30 }, %union.decode_item { i32 6 }, %union.decode_item { i32 201326592 }, %union.decode_item { i32 201326592 }, %union.decode_item zeroinitializer }>, [32 x i8] zeroinitializer }, align 32
@probes_condition_checks = external dso_local local_unnamed_addr constant [16 x ptr], align 4
@___asan_gen_.1 = private unnamed_addr constant [15 x i8] c"arm_1111_table\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 115, i32 32 }
@___asan_gen_.4 = private unnamed_addr constant [33 x i8] c"arm_cccc_0001_0xx0____0xxx_table\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 151, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [33 x i8] c"arm_cccc_0001_0xx0____1xx0_table\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 185, i32 32 }
@___asan_gen_.10 = private unnamed_addr constant [29 x i8] c"arm_cccc_0000_____1001_table\00", align 1
@___asan_gen_.12 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 207, i32 32 }
@___asan_gen_.13 = private unnamed_addr constant [29 x i8] c"arm_cccc_0001_____1001_table\00", align 1
@___asan_gen_.15 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 238, i32 32 }
@___asan_gen_.16 = private unnamed_addr constant [29 x i8] c"arm_cccc_000x_____1xx1_table\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 252, i32 32 }
@___asan_gen_.19 = private unnamed_addr constant [20 x i8] c"arm_cccc_000x_table\00", align 1
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 298, i32 32 }
@___asan_gen_.22 = private unnamed_addr constant [20 x i8] c"arm_cccc_001x_table\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 360, i32 32 }
@___asan_gen_.25 = private unnamed_addr constant [29 x i8] c"arm_cccc_0110_____xxx1_table\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 412, i32 32 }
@___asan_gen_.28 = private unnamed_addr constant [29 x i8] c"arm_cccc_0111_____xxx1_table\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 509, i32 32 }
@___asan_gen_.31 = private unnamed_addr constant [20 x i8] c"arm_cccc_01xx_table\00", align 1
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 558, i32 32 }
@___asan_gen_.34 = private unnamed_addr constant [20 x i8] c"arm_cccc_100x_table\00", align 1
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 593, i32 32 }
@___asan_gen_.37 = private unnamed_addr constant [24 x i8] c"probes_decode_arm_table\00", align 1
@___asan_gen_.38 = private constant [32 x i8] c"../arch/arm/probes/decode-arm.c\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.38, i32 606, i32 25 }
@llvm.compiler.used = appending global [13 x ptr] [ptr @arm_1111_table, ptr @arm_cccc_0001_0xx0____0xxx_table, ptr @arm_cccc_0001_0xx0____1xx0_table, ptr @arm_cccc_0000_____1001_table, ptr @arm_cccc_0001_____1001_table, ptr @arm_cccc_000x_____1xx1_table, ptr @arm_cccc_000x_table, ptr @arm_cccc_001x_table, ptr @arm_cccc_0110_____xxx1_table, ptr @arm_cccc_0111_____xxx1_table, ptr @arm_cccc_01xx_table, ptr @arm_cccc_100x_table, ptr @probes_decode_arm_table], section "llvm.metadata"
@0 = internal global [13 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_1111_table to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cccc_0001_0xx0____0xxx_table to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cccc_0001_0xx0____1xx0_table to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cccc_0000_____1001_table to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cccc_0001_____1001_table to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cccc_000x_____1xx1_table to i32), i32 124, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cccc_000x_table to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cccc_001x_table to i32), i32 136, i32 192, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cccc_0110_____xxx1_table to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cccc_0111_____xxx1_table to i32), i32 176, i32 224, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cccc_01xx_table to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @arm_cccc_100x_table to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @probes_decode_arm_table to i32), i32 224, i32 256, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @simulate_bbl(i32 noundef %insn, ptr nocapture noundef readnone %asi, ptr nocapture noundef %regs) local_unnamed_addr #0 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and5 = and i32 %insn, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx7 = getelementptr [18 x i32], ptr %regs, i32 0, i32 14
  %2 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx7, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and = shl i32 %insn, 2
  %shl = and i32 %and, 67108860
  %and3 = and i32 %and, 33554432
  %sub4 = sub nsw i32 0, %and3
  %or = or i32 %shl, %sub4
  %add8 = add nsw i32 %or, 4
  %add9 = add i32 %add8, %1
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %add9, ptr %arrayidx, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @simulate_blx1(i32 noundef %insn, ptr nocapture noundef readnone %asi, ptr nocapture noundef %regs) local_unnamed_addr #0 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and = shl i32 %insn, 2
  %shl = and i32 %and, 67108860
  %and3 = and i32 %and, 33554432
  %sub4 = sub nsw i32 0, %and3
  %or = or i32 %shl, %sub4
  %arrayidx6 = getelementptr [18 x i32], ptr %regs, i32 0, i32 14
  %2 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx6, align 4
  %shr = lshr i32 %insn, 23
  %and9 = and i32 %shr, 2
  %add7 = or i32 %and9, 4
  %add8 = add nsw i32 %add7, %or
  %add10 = add i32 %add8, %1
  store i32 %add10, ptr %arrayidx, align 4
  %arrayidx14 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %3 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx14, align 4
  %or15 = or i32 %4, 32
  store i32 %or15, ptr %arrayidx14, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @simulate_blx2bx(i32 noundef %insn, ptr nocapture noundef readnone %asi, ptr nocapture noundef %regs) local_unnamed_addr #0 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %insn, 15
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and1 = and i32 %insn, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %tobool.not = icmp eq i32 %and1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #5
  %arrayidx3 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %arrayidx3, align 4
  %arrayidx5 = getelementptr [18 x i32], ptr %regs, i32 0, i32 14
  %4 = ptrtoint ptr %arrayidx5 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %arrayidx5, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and6 = and i32 %1, -2
  %arrayidx8 = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %5 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %and6, ptr %arrayidx8, align 4
  %arrayidx10 = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %6 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx10, align 4
  %and11 = and i32 %7, -33
  %and12 = shl i32 %1, 5
  %8 = and i32 %and12, 32
  %spec.select = or i32 %and11, %8
  store i32 %spec.select, ptr %arrayidx10, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @simulate_mrs(i32 noundef %insn, ptr nocapture noundef readnone %asi, ptr nocapture noundef %regs) local_unnamed_addr #0 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %shr = lshr i32 %insn, 12
  %and = and i32 %shr, 15
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 16
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %and1 = and i32 %1, -117505057
  %arrayidx3 = getelementptr [18 x i32], ptr %regs, i32 0, i32 %and
  %2 = ptrtoint ptr %arrayidx3 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %and1, ptr %arrayidx3, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local void @simulate_mov_ipsp(i32 noundef %insn, ptr nocapture noundef readnone %asi, ptr nocapture noundef %regs) local_unnamed_addr #0 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 13
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %arrayidx2 = getelementptr [18 x i32], ptr %regs, i32 0, i32 12
  %2 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %arrayidx2, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @arm_probes_decode_insn(i32 noundef %insn, ptr noundef %asi, i1 noundef zeroext %emulate, ptr noundef %actions, ptr noundef %checkers) local_unnamed_addr #1 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %insn_singlestep = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 3
  %0 = ptrtoint ptr %insn_singlestep to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr @arm_singlestep, ptr %insn_singlestep, align 4
  %shr = lshr i32 %insn, 28
  %arrayidx = getelementptr [16 x ptr], ptr @probes_condition_checks, i32 0, i32 %shr
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %insn_check_cc = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 2
  %3 = ptrtoint ptr %insn_check_cc to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %insn_check_cc, align 4
  %call = tail call i32 @probes_decode_insn(i32 noundef %insn, ptr noundef %asi, ptr noundef nonnull @probes_decode_arm_table, i1 noundef zeroext false, i1 noundef zeroext %emulate, ptr noundef %actions, ptr noundef %checkers) #3
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @arm_singlestep(i32 noundef %insn, ptr noundef %asi, ptr noundef %regs) #1 section ".kprobes.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #5
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr [18 x i32], ptr %regs, i32 0, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %arrayidx, align 4
  %add = add i32 %1, 4
  store i32 %add, ptr %arrayidx, align 4
  %insn_handler = getelementptr inbounds %struct.arch_probes_insn, ptr %asi, i32 0, i32 1
  %2 = ptrtoint ptr %insn_handler to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %insn_handler, align 4
  tail call void %3(i32 noundef %insn, ptr noundef %asi, ptr noundef %regs) #3
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @probes_decode_insn(i32 noundef, ptr noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, ptr noundef) local_unnamed_addr #2 section ".kprobes.text"

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #3

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #4 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #4 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 13)
  ret void
}

attributes #0 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind }
attributes #4 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #5 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24}
!llvm.module.flags = !{!26, !27, !28, !29, !30, !31, !32, !33}
!llvm.ident = !{!34}

!0 = !{ptr @probes_decode_arm_table, !1, !"probes_decode_arm_table", i1 false, i1 false}
!1 = !{!"../arch/arm/probes/decode-arm.c", i32 606, i32 25}
!2 = !{ptr @arm_1111_table, !3, !"arm_1111_table", i1 false, i1 false}
!3 = !{!"../arch/arm/probes/decode-arm.c", i32 115, i32 32}
!4 = !{ptr @arm_cccc_0001_0xx0____0xxx_table, !5, !"arm_cccc_0001_0xx0____0xxx_table", i1 false, i1 false}
!5 = !{!"../arch/arm/probes/decode-arm.c", i32 151, i32 32}
!6 = !{ptr @arm_cccc_0001_0xx0____1xx0_table, !7, !"arm_cccc_0001_0xx0____1xx0_table", i1 false, i1 false}
!7 = !{!"../arch/arm/probes/decode-arm.c", i32 185, i32 32}
!8 = !{ptr @arm_cccc_0000_____1001_table, !9, !"arm_cccc_0000_____1001_table", i1 false, i1 false}
!9 = !{!"../arch/arm/probes/decode-arm.c", i32 207, i32 32}
!10 = !{ptr @arm_cccc_0001_____1001_table, !11, !"arm_cccc_0001_____1001_table", i1 false, i1 false}
!11 = !{!"../arch/arm/probes/decode-arm.c", i32 238, i32 32}
!12 = !{ptr @arm_cccc_000x_____1xx1_table, !13, !"arm_cccc_000x_____1xx1_table", i1 false, i1 false}
!13 = !{!"../arch/arm/probes/decode-arm.c", i32 252, i32 32}
!14 = !{ptr @arm_cccc_000x_table, !15, !"arm_cccc_000x_table", i1 false, i1 false}
!15 = !{!"../arch/arm/probes/decode-arm.c", i32 298, i32 32}
!16 = !{ptr @arm_cccc_001x_table, !17, !"arm_cccc_001x_table", i1 false, i1 false}
!17 = !{!"../arch/arm/probes/decode-arm.c", i32 360, i32 32}
!18 = !{ptr @arm_cccc_0110_____xxx1_table, !19, !"arm_cccc_0110_____xxx1_table", i1 false, i1 false}
!19 = !{!"../arch/arm/probes/decode-arm.c", i32 412, i32 32}
!20 = !{ptr @arm_cccc_0111_____xxx1_table, !21, !"arm_cccc_0111_____xxx1_table", i1 false, i1 false}
!21 = !{!"../arch/arm/probes/decode-arm.c", i32 509, i32 32}
!22 = !{ptr @arm_cccc_01xx_table, !23, !"arm_cccc_01xx_table", i1 false, i1 false}
!23 = !{!"../arch/arm/probes/decode-arm.c", i32 558, i32 32}
!24 = !{ptr @arm_cccc_100x_table, !25, !"arm_cccc_100x_table", i1 false, i1 false}
!25 = !{!"../arch/arm/probes/decode-arm.c", i32 593, i32 32}
!26 = !{i32 1, !"wchar_size", i32 2}
!27 = !{i32 1, !"min_enum_size", i32 4}
!28 = !{i32 8, !"branch-target-enforcement", i32 0}
!29 = !{i32 8, !"sign-return-address", i32 0}
!30 = !{i32 8, !"sign-return-address-all", i32 0}
!31 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!32 = !{i32 7, !"uwtable", i32 1}
!33 = !{i32 7, !"frame-pointer", i32 2}
!34 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
