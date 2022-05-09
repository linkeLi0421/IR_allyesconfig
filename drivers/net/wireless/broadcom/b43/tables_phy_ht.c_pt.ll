; ModuleID = '/llk/IR_all_yes/drivers/net/wireless/broadcom/b43/tables_phy_ht.c_pt.bc'
source_filename = "../drivers/net/wireless/broadcom/b43/tables_phy_ht.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.__va_list = type { ptr }

@b43_httab_0x1a_0xc0_late = dso_local constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 284753984, i32 283181120, i32 283181116, i32 281608253, i32 280559676, i32 279511101, i32 278986812, i32 278462523, i32 277938235, i32 277413946, i32 276889658, i32 276365369, i32 275841081, i32 275316794, i32 274792507, i32 274268221, i32 273743935, i32 273219650, i32 273219646, i32 273219643, i32 272695358, i32 272695355, i32 272171070, i32 272171067, i32 272171064, i32 272171061, i32 271646778, i32 271646774, i32 271646771, i32 271122490, i32 271122487, i32 271122484, i32 271122481, i32 270598201, i32 270598198, i32 270598195, i32 270598192, i32 270073916, i32 270073913, i32 270073910, i32 270073907, i32 270073904, i32 270073901, i32 270073899, i32 270073896, i32 269549626, i32 269549622, i32 269549619, i32 269549616, i32 269549614, i32 269549611, i32 269549609, i32 269549607, i32 269549604, i32 269549602, i32 269549600, i32 269549599, i32 269549597, i32 269025338, i32 269025335, i32 269025332, i32 269025329, i32 269025326, i32 269025324, i32 269025321, i32 269025319, i32 269025317, i32 269025315, i32 269025313, i32 269025311, i32 269025309, i32 269025307, i32 269025306, i32 269025304, i32 269025303, i32 269025302, i32 269025301, i32 269025299, i32 269025298, i32 269025297, i32 269025296, i32 269025295, i32 269025295, i32 269025294, i32 269025293, i32 269025292, i32 269025292, i32 269025291, i32 269025290, i32 269025290, i32 269025289, i32 269025289, i32 269025288, i32 269025288, i32 269025287, i32 269025287, i32 269025287, i32 269025286, i32 269025286, i32 269025285, i32 269025285, i32 269025285, i32 269025285, i32 269025284, i32 269025284, i32 269025284, i32 269025284, i32 269025283, i32 269025283, i32 269025283, i32 269025283, i32 269025283, i32 269025283, i32 269025282, i32 269025282, i32 269025282, i32 269025282, i32 269025282, i32 269025282, i32 269025282, i32 269025282, i32 269025282, i32 269025281, i32 269025281, i32 269025281, i32 269025281, i32 269025281, i32 269025281], [128 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/net/wireless/broadcom/b43/tables_phy_ht.c\00", [46 x i8] zeroinitializer }, align 32
@b43_httab_0x12 = internal constant { [128 x i16], [64 x i8] } { [128 x i16] [i16 0, i16 8, i16 10, i16 16, i16 18, i16 25, i16 26, i16 28, i16 128, i16 136, i16 138, i16 144, i16 146, i16 153, i16 154, i16 156, i16 256, i16 264, i16 266, i16 272, i16 274, i16 281, i16 282, i16 284, i16 384, i16 392, i16 394, i16 400, i16 402, i16 409, i16 410, i16 412, i16 0, i16 152, i16 160, i16 168, i16 154, i16 162, i16 170, i16 288, i16 296, i16 296, i16 304, i16 312, i16 312, i16 320, i16 290, i16 298, i16 298, i16 306, i16 314, i16 314, i16 322, i16 424, i16 432, i16 440, i16 432, i16 440, i16 448, i16 456, i16 448, i16 456, i16 464, i16 464, i16 472, i16 426, i16 434, i16 442, i16 434, i16 442, i16 450, i16 458, i16 450, i16 458, i16 466, i16 466, i16 474, i16 1, i16 2, i16 4, i16 9, i16 12, i16 17, i16 20, i16 24, i16 32, i16 33, i16 34, i16 36, i16 129, i16 130, i16 132, i16 137, i16 140, i16 145, i16 148, i16 152, i16 160, i16 161, i16 162, i16 164, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7, i16 7], [64 x i8] zeroinitializer }, align 32
@b43_httab_0x27 = internal constant { [32 x i16], [32 x i8] } { [32 x i16] [i16 9, i16 14, i16 17, i16 20, i16 23, i16 26, i16 29, i16 32, i16 9, i16 14, i16 17, i16 20, i16 23, i16 26, i16 29, i16 32, i16 9, i16 14, i16 17, i16 20, i16 23, i16 26, i16 29, i16 32, i16 9, i16 14, i16 17, i16 20, i16 23, i16 26, i16 29, i16 32], [32 x i8] zeroinitializer }, align 32
@b43_httab_0x26 = internal constant { [128 x i16], [64 x i8] } zeroinitializer, align 32
@b43_httab_0x25 = internal constant { [128 x i32], [128 x i8] } zeroinitializer, align 32
@b43_httab_0x2f = internal constant { [22 x i32], [40 x i8] } { [22 x i32] [i32 218880, i32 183450, i32 157286, i32 88095, i32 88095, i32 88095, i32 88095, i32 88095, i32 88095, i32 88095, i32 88095, i32 218880, i32 183450, i32 157286, i32 88095, i32 88095, i32 88095, i32 88095, i32 88095, i32 88095, i32 88095, i32 88095], [40 x i8] zeroinitializer }, align 32
@b43_httab_0x1a = internal constant { [64 x i16], [32 x i8] } { [64 x i16] [i16 85, i16 84, i16 84, i16 83, i16 82, i16 82, i16 81, i16 81, i16 80, i16 79, i16 79, i16 78, i16 78, i16 77, i16 76, i16 76, i16 75, i16 74, i16 73, i16 73, i16 72, i16 71, i16 70, i16 70, i16 69, i16 68, i16 67, i16 66, i16 65, i16 64, i16 64, i16 63, i16 62, i16 61, i16 60, i16 58, i16 57, i16 56, i16 55, i16 54, i16 53, i16 51, i16 50, i16 49, i16 47, i16 46, i16 44, i16 43, i16 41, i16 39, i16 37, i16 35, i16 33, i16 31, i16 29, i16 26, i16 24, i16 21, i16 18, i16 14, i16 11, i16 7, i16 2, i16 253], [32 x i8] zeroinitializer }, align 32
@b43_httab_0x1b = internal constant { [64 x i16], [32 x i8] } { [64 x i16] [i16 85, i16 84, i16 84, i16 83, i16 82, i16 82, i16 81, i16 81, i16 80, i16 79, i16 79, i16 78, i16 78, i16 77, i16 76, i16 76, i16 75, i16 74, i16 73, i16 73, i16 72, i16 71, i16 70, i16 70, i16 69, i16 68, i16 67, i16 66, i16 65, i16 64, i16 64, i16 63, i16 62, i16 61, i16 60, i16 58, i16 57, i16 56, i16 55, i16 54, i16 53, i16 51, i16 50, i16 49, i16 47, i16 46, i16 44, i16 43, i16 41, i16 39, i16 37, i16 35, i16 33, i16 31, i16 29, i16 26, i16 24, i16 21, i16 18, i16 14, i16 11, i16 7, i16 2, i16 253], [32 x i8] zeroinitializer }, align 32
@b43_httab_0x1c = internal constant { [64 x i16], [32 x i8] } { [64 x i16] [i16 85, i16 84, i16 84, i16 83, i16 82, i16 82, i16 81, i16 81, i16 80, i16 79, i16 79, i16 78, i16 78, i16 77, i16 76, i16 76, i16 75, i16 74, i16 73, i16 73, i16 72, i16 71, i16 70, i16 70, i16 69, i16 68, i16 67, i16 66, i16 65, i16 64, i16 64, i16 63, i16 62, i16 61, i16 60, i16 58, i16 57, i16 56, i16 55, i16 54, i16 53, i16 51, i16 50, i16 49, i16 47, i16 46, i16 44, i16 43, i16 41, i16 39, i16 37, i16 35, i16 33, i16 31, i16 29, i16 26, i16 24, i16 21, i16 18, i16 14, i16 11, i16 7, i16 2, i16 253], [32 x i8] zeroinitializer }, align 32
@b43_httab_0x1a_0xc0 = internal constant { [128 x i32], [128 x i8] } { [128 x i32] [i32 1542914116, i32 1542914114, i32 1542914112, i32 1542914110, i32 1542914108, i32 1542914107, i32 1542914105, i32 1542914103, i32 1542914102, i32 1542914100, i32 1542914099, i32 1542914097, i32 1542914096, i32 1537671236, i32 1537671234, i32 1537671232, i32 1537671230, i32 1537671228, i32 1537671227, i32 1537671225, i32 1537671223, i32 1537671222, i32 1537671220, i32 1537671219, i32 1534525508, i32 1534525506, i32 1534525504, i32 1534525502, i32 1534525500, i32 1534525499, i32 1534525497, i32 1534525495, i32 1534525494, i32 1534525492, i32 1534525491, i32 1534525489, i32 1534525488, i32 1534525487, i32 1534525485, i32 1534525484, i32 1531379780, i32 1531379778, i32 1531379776, i32 1531379774, i32 1531379772, i32 1531379771, i32 1531379769, i32 1531379767, i32 1531379766, i32 1531379764, i32 1531379763, i32 1531379761, i32 1531379760, i32 1531379759, i32 1531379757, i32 1531379756, i32 1531379755, i32 1531379754, i32 1529282628, i32 1529282626, i32 1529282624, i32 1529282622, i32 1529282620, i32 1529282619, i32 1529282617, i32 1529282615, i32 1529282614, i32 1529282612, i32 1529282611, i32 1529282609, i32 1529282608, i32 1529282607, i32 1528234052, i32 1528234050, i32 1528234048, i32 1528234046, i32 1528234044, i32 1528234043, i32 1528234041, i32 1528234039, i32 1528234038, i32 1528234036, i32 1528234035, i32 1528234033, i32 1528234032, i32 1528234031, i32 1528234029, i32 1528234028, i32 1528234027, i32 1528234026, i32 1528234024, i32 1528234023, i32 1528234022, i32 1528234021, i32 1528234020, i32 1528234019, i32 1527185476, i32 1527185474, i32 1527185472, i32 1527185470, i32 1527185468, i32 1527185467, i32 1527185465, i32 1527185463, i32 1527185462, i32 1527185460, i32 1527185459, i32 1527185457, i32 1527185456, i32 1527185455, i32 1527185453, i32 1527185452, i32 1527185451, i32 1527185450, i32 1527185448, i32 1527185447, i32 1527185446, i32 1527185445, i32 1527185444, i32 1527185443, i32 1527185442, i32 1527185441, i32 1527185440, i32 1527185439, i32 1527185438, i32 1527185437, i32 1527185437, i32 1527185436], [128 x i8] zeroinitializer }, align 32
@b43_httab_0x1a_0x140 = internal constant { [128 x i32], [128 x i8] } zeroinitializer, align 32
@b43_httab_0x1b_0x140 = internal constant { [128 x i32], [128 x i8] } zeroinitializer, align 32
@b43_httab_0x1c_0x140 = internal constant { [128 x i32], [128 x i8] } zeroinitializer, align 32
@b43_httab_0x1a_0x1c0 = internal constant { [128 x i16], [64 x i8] } zeroinitializer, align 32
@b43_httab_0x1b_0x1c0 = internal constant { [128 x i16], [64 x i8] } zeroinitializer, align 32
@b43_httab_0x1c_0x1c0 = internal constant { [128 x i16], [64 x i8] } zeroinitializer, align 32
@b43_httab_0x1a_0x240 = internal constant { [128 x i16], [64 x i8] } { [128 x i16] [i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470], [64 x i8] zeroinitializer }, align 32
@b43_httab_0x1b_0x240 = internal constant { [128 x i16], [64 x i8] } { [128 x i16] [i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470], [64 x i8] zeroinitializer }, align 32
@b43_httab_0x1c_0x240 = internal constant { [128 x i16], [64 x i8] } { [128 x i16] [i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 54, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 42, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 30, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 14, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 508, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 494, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470, i16 470], [64 x i8] zeroinitializer }, align 32
@b43_httab_0x1f = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 0, i32 0, i32 90147, i32 24616, i32 213046, i32 213038, i32 467004, i32 450615, i32 458800, i32 606239, i32 630799, i32 745485, i32 819207, i32 843783, i32 1056767, i32 1187833, i32 1236996, i32 1368060, i32 1499126, i32 1630185, i32 1785829, i32 1859536, i32 1957826, i32 2039734, i32 2129828, i32 2203535, i32 2293629, i32 2391916, i32 2416475, i32 2522955, i32 2613051, i32 2735931, i32 2842415, i32 2965294, i32 3104554, i32 3145493, i32 3235595, i32 3333882, i32 3391211, i32 3473113, i32 3489477, i32 3546800, i32 3554971, i32 3587719, i32 3587696, i32 3735143, i32 4505266, i32 5324531, i32 5857041, i32 6725437, i32 7921631, i32 10568618, i32 23343103, i32 23244799, i32 23203839, i32 23121919, i32 23007231, i32 22917119, i32 22794239, i32 22794239, i32 22761471, i32 22728703, i32 22614015, i32 22466559], [64 x i8] zeroinitializer }, align 32
@b43_httab_0x21 = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 0, i32 0, i32 90147, i32 24616, i32 213046, i32 213038, i32 467004, i32 450615, i32 458800, i32 606239, i32 630799, i32 745485, i32 819207, i32 843783, i32 1056767, i32 1187833, i32 1236996, i32 1368060, i32 1499126, i32 1630185, i32 1785829, i32 1859536, i32 1957826, i32 2039734, i32 2129828, i32 2203535, i32 2293629, i32 2391916, i32 2416475, i32 2522955, i32 2613051, i32 2735931, i32 2842415, i32 2965294, i32 3104554, i32 3145493, i32 3235595, i32 3333882, i32 3391211, i32 3473113, i32 3489477, i32 3546800, i32 3554971, i32 3587719, i32 3587696, i32 3735143, i32 4505266, i32 5324531, i32 5857041, i32 6725437, i32 7921631, i32 10568618, i32 23343103, i32 23244799, i32 23203839, i32 23121919, i32 23007231, i32 22917119, i32 22794239, i32 22794239, i32 22761471, i32 22728703, i32 22614015, i32 22466559], [64 x i8] zeroinitializer }, align 32
@b43_httab_0x23 = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 0, i32 0, i32 90147, i32 24616, i32 213046, i32 213038, i32 467004, i32 450615, i32 458800, i32 606239, i32 630799, i32 745485, i32 819207, i32 843783, i32 1056767, i32 1187833, i32 1236996, i32 1368060, i32 1499126, i32 1630185, i32 1785829, i32 1859536, i32 1957826, i32 2039734, i32 2129828, i32 2203535, i32 2293629, i32 2391916, i32 2416475, i32 2522955, i32 2613051, i32 2735931, i32 2842415, i32 2965294, i32 3104554, i32 3145493, i32 3235595, i32 3333882, i32 3391211, i32 3473113, i32 3489477, i32 3546800, i32 3554971, i32 3587719, i32 3587696, i32 3735143, i32 4505266, i32 5324531, i32 5857041, i32 6725437, i32 7921631, i32 10568618, i32 23343103, i32 23244799, i32 23203839, i32 23121919, i32 23007231, i32 22917119, i32 22794239, i32 22794239, i32 22761471, i32 22728703, i32 22614015, i32 22466559], [64 x i8] zeroinitializer }, align 32
@b43_httab_0x20 = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 190709805, i32 182583343, i32 171638834, i32 161939509, i32 153223224, i32 145424443, i32 136249407, i32 128057411, i32 120848455, i32 114425931, i32 108658767, i32 102170708, i32 96403545, i32 91291742, i32 85852260, i32 80937066, i32 76611696, i32 72089719, i32 68092030, i32 64553093, i32 60883085, i32 57606293, i32 54329502, i32 51052712, i32 48234674, i32 45678780, i32 43122887, i32 40698067, i32 38338784, i32 36241645, i32 34210043, i32 32243978, i32 30540057, i32 28770602, i32 27132220, i32 25690446, i32 24248674, i32 22872439, i32 21561742, i32 20382117, i32 19268030, i32 18153944, i32 17170932, i32 16187922, i32 15270449, i32 14418515, i32 13632118, i32 12845723, i32 12124867, i32 11469549, i32 10814233, i32 10224456, i32 9634682, i32 9110447, i32 8586214, i32 8127522, i32 7668832, i32 7210147, i32 6817001, i32 6423859, i32 6096258, i32 5768662, i32 5441070, i32 5113484], [64 x i8] zeroinitializer }, align 32
@b43_httab_0x22 = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 190709805, i32 182583343, i32 171638834, i32 161939509, i32 153223224, i32 145424443, i32 136249407, i32 128057411, i32 120848455, i32 114425931, i32 108658767, i32 102170708, i32 96403545, i32 91291742, i32 85852260, i32 80937066, i32 76611696, i32 72089719, i32 68092030, i32 64553093, i32 60883085, i32 57606293, i32 54329502, i32 51052712, i32 48234674, i32 45678780, i32 43122887, i32 40698067, i32 38338784, i32 36241645, i32 34210043, i32 32243978, i32 30540057, i32 28770602, i32 27132220, i32 25690446, i32 24248674, i32 22872439, i32 21561742, i32 20382117, i32 19268030, i32 18153944, i32 17170932, i32 16187922, i32 15270449, i32 14418515, i32 13632118, i32 12845723, i32 12124867, i32 11469549, i32 10814233, i32 10224456, i32 9634682, i32 9110447, i32 8586214, i32 8127522, i32 7668832, i32 7210147, i32 6817001, i32 6423859, i32 6096258, i32 5768662, i32 5441070, i32 5113484], [64 x i8] zeroinitializer }, align 32
@b43_httab_0x24 = internal constant { [64 x i32], [64 x i8] } { [64 x i32] [i32 190709805, i32 182583343, i32 171638834, i32 161939509, i32 153223224, i32 145424443, i32 136249407, i32 128057411, i32 120848455, i32 114425931, i32 108658767, i32 102170708, i32 96403545, i32 91291742, i32 85852260, i32 80937066, i32 76611696, i32 72089719, i32 68092030, i32 64553093, i32 60883085, i32 57606293, i32 54329502, i32 51052712, i32 48234674, i32 45678780, i32 43122887, i32 40698067, i32 38338784, i32 36241645, i32 34210043, i32 32243978, i32 30540057, i32 28770602, i32 27132220, i32 25690446, i32 24248674, i32 22872439, i32 21561742, i32 20382117, i32 19268030, i32 18153944, i32 17170932, i32 16187922, i32 15270449, i32 14418515, i32 13632118, i32 12845723, i32 12124867, i32 11469549, i32 10814233, i32 10224456, i32 9634682, i32 9110447, i32 8586214, i32 8127522, i32 7668832, i32 7210147, i32 6817001, i32 6423859, i32 6096258, i32 5768662, i32 5441070, i32 5113484], [64 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 268435456, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.1 = internal global [5 x i64] [i64 3, i64 32, i64 268435456, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.2 = internal global [5 x i64] [i64 3, i64 32, i64 268435456, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.3 = internal global [5 x i64] [i64 3, i64 32, i64 268435456, i64 536870912, i64 805306368]
@__sancov_gen_cov_switch_values.4 = internal global [5 x i64] [i64 3, i64 32, i64 268435456, i64 536870912, i64 805306368]
@___asan_gen_.5 = private unnamed_addr constant [25 x i8] c"b43_httab_0x1a_0xc0_late\00", align 1
@___asan_gen_.7 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 567, i32 11 }
@___asan_gen_.8 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 612, i32 2 }
@___asan_gen_.11 = private unnamed_addr constant [15 x i8] c"b43_httab_0x12\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 17, i32 18 }
@___asan_gen_.14 = private unnamed_addr constant [15 x i8] c"b43_httab_0x27\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 42, i32 18 }
@___asan_gen_.17 = private unnamed_addr constant [15 x i8] c"b43_httab_0x26\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 51, i32 18 }
@___asan_gen_.20 = private unnamed_addr constant [15 x i8] c"b43_httab_0x25\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 76, i32 18 }
@___asan_gen_.23 = private unnamed_addr constant [15 x i8] c"b43_httab_0x2f\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 111, i32 18 }
@___asan_gen_.26 = private unnamed_addr constant [15 x i8] c"b43_httab_0x1a\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 120, i32 18 }
@___asan_gen_.29 = private unnamed_addr constant [15 x i8] c"b43_httab_0x1b\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 134, i32 18 }
@___asan_gen_.32 = private unnamed_addr constant [15 x i8] c"b43_httab_0x1c\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 148, i32 18 }
@___asan_gen_.35 = private unnamed_addr constant [20 x i8] c"b43_httab_0x1a_0xc0\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 162, i32 18 }
@___asan_gen_.38 = private unnamed_addr constant [21 x i8] c"b43_httab_0x1a_0x140\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 197, i32 18 }
@___asan_gen_.41 = private unnamed_addr constant [21 x i8] c"b43_httab_0x1b_0x140\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 232, i32 18 }
@___asan_gen_.44 = private unnamed_addr constant [21 x i8] c"b43_httab_0x1c_0x140\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 267, i32 18 }
@___asan_gen_.47 = private unnamed_addr constant [21 x i8] c"b43_httab_0x1a_0x1c0\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 302, i32 18 }
@___asan_gen_.50 = private unnamed_addr constant [21 x i8] c"b43_httab_0x1b_0x1c0\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 327, i32 18 }
@___asan_gen_.53 = private unnamed_addr constant [21 x i8] c"b43_httab_0x1c_0x1c0\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 352, i32 18 }
@___asan_gen_.56 = private unnamed_addr constant [21 x i8] c"b43_httab_0x1a_0x240\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 377, i32 18 }
@___asan_gen_.59 = private unnamed_addr constant [21 x i8] c"b43_httab_0x1b_0x240\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 402, i32 18 }
@___asan_gen_.62 = private unnamed_addr constant [21 x i8] c"b43_httab_0x1c_0x240\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 427, i32 18 }
@___asan_gen_.65 = private unnamed_addr constant [15 x i8] c"b43_httab_0x1f\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 452, i32 18 }
@___asan_gen_.68 = private unnamed_addr constant [15 x i8] c"b43_httab_0x21\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 471, i32 18 }
@___asan_gen_.71 = private unnamed_addr constant [15 x i8] c"b43_httab_0x23\00", align 1
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 490, i32 18 }
@___asan_gen_.74 = private unnamed_addr constant [15 x i8] c"b43_httab_0x20\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 509, i32 18 }
@___asan_gen_.77 = private unnamed_addr constant [15 x i8] c"b43_httab_0x22\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 528, i32 18 }
@___asan_gen_.80 = private unnamed_addr constant [15 x i8] c"b43_httab_0x24\00", align 1
@___asan_gen_.81 = private constant [53 x i8] c"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 547, i32 18 }
@llvm.compiler.used = appending global [26 x ptr] [ptr @b43_httab_0x1a_0xc0_late, ptr @.str, ptr @b43_httab_0x12, ptr @b43_httab_0x27, ptr @b43_httab_0x26, ptr @b43_httab_0x25, ptr @b43_httab_0x2f, ptr @b43_httab_0x1a, ptr @b43_httab_0x1b, ptr @b43_httab_0x1c, ptr @b43_httab_0x1a_0xc0, ptr @b43_httab_0x1a_0x140, ptr @b43_httab_0x1b_0x140, ptr @b43_httab_0x1c_0x140, ptr @b43_httab_0x1a_0x1c0, ptr @b43_httab_0x1b_0x1c0, ptr @b43_httab_0x1c_0x1c0, ptr @b43_httab_0x1a_0x240, ptr @b43_httab_0x1b_0x240, ptr @b43_httab_0x1c_0x240, ptr @b43_httab_0x1f, ptr @b43_httab_0x21, ptr @b43_httab_0x23, ptr @b43_httab_0x20, ptr @b43_httab_0x22, ptr @b43_httab_0x24], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x1a_0xc0_late to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.5 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x12 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x27 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x26 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x25 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x2f to i32), i32 88, i32 128, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x1a to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x1b to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x1c to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x1a_0xc0 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x1a_0x140 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x1b_0x140 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x1c_0x140 to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x1a_0x1c0 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x1b_0x1c0 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x1c_0x1c0 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x1a_0x240 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x1b_0x240 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x1c_0x240 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x1f to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x21 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x23 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x20 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x22 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @b43_httab_0x24 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @b43_httab_read(ptr noundef %dev, i32 noundef %offset) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, -268435456
  %and1 = and i32 %offset, 268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp.not = icmp eq i32 %and1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !61

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 612, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and, label %do.end44 [
    i32 268435456, label %sw.bb
    i32 536870912, label %sw.bb22
    i32 805306368, label %sw.bb26
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv) #4
  %call = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 115) #4
  %1 = and i16 %call, 255
  %and21 = zext i16 %1 to i32
  br label %sw.epilog

sw.bb22:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv23 = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv23) #4
  %call24 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 115) #4
  %conv25 = zext i16 %call24 to i32
  br label %sw.epilog

sw.bb26:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %conv27 = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv27) #4
  %call28 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 116) #4
  %conv29 = zext i16 %call28 to i32
  %shl = shl nuw i32 %conv29, 16
  %call30 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 115) #4
  %conv31 = zext i16 %call30 to i32
  %or = or i32 %shl, %conv31
  br label %sw.epilog

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 630, i32 noundef 9, ptr noundef null) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end44, %sw.bb26, %sw.bb22, %sw.bb
  %value.0 = phi i32 [ 0, %do.end44 ], [ %or, %sw.bb26 ], [ %conv25, %sw.bb22 ], [ %and21, %sw.bb ]
  ret i32 %value.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @b43_phy_write(ptr noundef, i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @b43_phy_read(ptr noundef, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_httab_read_bulk(ptr noundef %dev, i32 noundef %offset, i32 noundef %nr_elements, ptr nocapture noundef %_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, -268435456
  %and1 = and i32 %offset, 268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp.not = icmp eq i32 %and1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !61

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 646, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conv = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_elements)
  %cmp2076.not = icmp eq i32 %nr_elements, 0
  br i1 %cmp2076.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.078 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %data.077 = phi ptr [ %data.1, %for.inc.for.body_crit_edge ], [ %_data, %if.end.for.body_crit_edge ]
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.1)
  switch i32 %and, label %do.end45 [
    i32 268435456, label %sw.bb
    i32 536870912, label %sw.bb25
    i32 805306368, label %sw.bb27
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 115) #4
  %conv24 = trunc i16 %call to i8
  %1 = ptrtoint ptr %data.077 to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 %conv24, ptr %data.077, align 1
  %incdec.ptr = getelementptr i8, ptr %data.077, i32 1
  br label %for.inc

sw.bb25:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call26 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 115) #4
  %2 = ptrtoint ptr %data.077 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %call26, ptr %data.077, align 2
  %add.ptr = getelementptr i8, ptr %data.077, i32 2
  br label %for.inc

sw.bb27:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %call28 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 116) #4
  %conv29 = zext i16 %call28 to i32
  %shl = shl nuw i32 %conv29, 16
  %3 = ptrtoint ptr %data.077 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl, ptr %data.077, align 4
  %call30 = tail call zeroext i16 @b43_phy_read(ptr noundef %dev, i16 noundef zeroext 115) #4
  %conv31 = zext i16 %call30 to i32
  %4 = ptrtoint ptr %data.077 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %data.077, align 4
  %or = or i32 %5, %conv31
  store i32 %or, ptr %data.077, align 4
  %add.ptr32 = getelementptr i8, ptr %data.077, i32 4
  br label %for.inc

do.end45:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 667, i32 noundef 9, ptr noundef null) #4
  br label %for.inc

for.inc:                                          ; preds = %do.end45, %sw.bb27, %sw.bb25, %sw.bb
  %data.1 = phi ptr [ %data.077, %do.end45 ], [ %add.ptr32, %sw.bb27 ], [ %add.ptr, %sw.bb25 ], [ %incdec.ptr, %sw.bb ]
  %inc = add nuw i32 %i.078, 1
  %exitcond.not = icmp eq i32 %inc, %nr_elements
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_httab_write(ptr noundef %dev, i32 noundef %offset, i32 noundef %value) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, -268435456
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.2)
  switch i32 %and, label %do.end75 [
    i32 268435456, label %sw.bb
    i32 536870912, label %sw.bb23
    i32 805306368, label %sw.bb58
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %value)
  %tobool.not = icmp ult i32 %value, 256
  br i1 %tobool.not, label %sw.bb.if.end_crit_edge, label %do.end, !prof !61

sw.bb.if.end_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 681, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %sw.bb.if.end_crit_edge
  %conv = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv) #4
  %conv22 = trunc i32 %value to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv22) #4
  br label %sw.epilog

sw.bb23:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %value)
  %tobool26.not = icmp ult i32 %value, 65536
  br i1 %tobool26.not, label %sw.bb23.if.end48_crit_edge, label %do.end42, !prof !61

sw.bb23.if.end48_crit_edge:                       ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end48

do.end42:                                         ; preds = %sw.bb23
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 686, i32 noundef 9, ptr noundef null) #4
  br label %if.end48

if.end48:                                         ; preds = %do.end42, %sw.bb23.if.end48_crit_edge
  %conv56 = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv56) #4
  %conv57 = trunc i32 %value to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv57) #4
  br label %sw.epilog

sw.bb58:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %conv59 = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv59) #4
  %shr = lshr i32 %value, 16
  %conv60 = trunc i32 %shr to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv60) #4
  %conv62 = trunc i32 %value to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv62) #4
  br label %sw.epilog

do.end75:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 696, i32 noundef 9, ptr noundef null) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end75, %sw.bb58, %if.end48, %if.end
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_httab_write_few(ptr noundef %dev, i32 noundef %offset, i32 noundef %num, ...) local_unnamed_addr #0 align 64 {
entry:
  %args = alloca %struct.__va_list, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %args) #4
  %0 = ptrtoint ptr %args to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr inttoptr (i32 -1 to ptr), ptr %args, align 4, !annotation !62
  %and = and i32 %offset, -268435456
  call void @llvm.va_start(ptr nonnull %args)
  %1 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.3)
  switch i32 %and, label %do.end94 [
    i32 268435456, label %sw.bb
    i32 536870912, label %sw.bb24
    i32 805306368, label %sw.bb68
  ]

sw.bb:                                            ; preds = %entry
  %conv = trunc i32 %offset to i16
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp139.not = icmp eq i32 %num, 0
  br i1 %cmp139.not, label %sw.bb.sw.epilog_crit_edge, label %sw.bb.for.body_crit_edge

sw.bb.for.body_crit_edge:                         ; preds = %sw.bb
  br label %for.body

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.body:                                         ; preds = %if.end.for.body_crit_edge, %sw.bb.for.body_crit_edge
  %i.0140 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %sw.bb.for.body_crit_edge ]
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %argp.cur = load ptr, ptr %args, align 4
  %argp.next = getelementptr inbounds i8, ptr %argp.cur, i32 4
  store ptr %argp.next, ptr %args, align 4
  %3 = ptrtoint ptr %argp.cur to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %argp.cur, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 256, i32 %4)
  %tobool.not = icmp ult i32 %4, 256
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.end, !prof !61

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 717, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %conv23 = trunc i32 %4 to i16
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv23) #4
  %inc = add nuw i32 %i.0140, 1
  %exitcond144.not = icmp eq i32 %inc, %num
  br i1 %exitcond144.not, label %if.end.sw.epilog_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb24:                                          ; preds = %entry
  %conv25 = trunc i32 %offset to i16
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv25) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp27137.not = icmp eq i32 %num, 0
  br i1 %cmp27137.not, label %sw.bb24.sw.epilog_crit_edge, label %sw.bb24.for.body29_crit_edge

sw.bb24.for.body29_crit_edge:                     ; preds = %sw.bb24
  br label %for.body29

sw.bb24.sw.epilog_crit_edge:                      ; preds = %sw.bb24
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.body29:                                       ; preds = %if.end56.for.body29_crit_edge, %sw.bb24.for.body29_crit_edge
  %i.1138 = phi i32 [ %inc66, %if.end56.for.body29_crit_edge ], [ 0, %sw.bb24.for.body29_crit_edge ]
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %argp.cur30 = load ptr, ptr %args, align 4
  %argp.next31 = getelementptr inbounds i8, ptr %argp.cur30, i32 4
  store ptr %argp.next31, ptr %args, align 4
  %6 = ptrtoint ptr %argp.cur30 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %argp.cur30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %7)
  %tobool34.not = icmp ult i32 %7, 65536
  br i1 %tobool34.not, label %for.body29.if.end56_crit_edge, label %do.end50, !prof !61

for.body29.if.end56_crit_edge:                    ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end56

do.end50:                                         ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 725, i32 noundef 9, ptr noundef null) #4
  br label %if.end56

if.end56:                                         ; preds = %do.end50, %for.body29.if.end56_crit_edge
  %conv64 = trunc i32 %7 to i16
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv64) #4
  %inc66 = add nuw i32 %i.1138, 1
  %exitcond143.not = icmp eq i32 %inc66, %num
  br i1 %exitcond143.not, label %if.end56.sw.epilog_crit_edge, label %if.end56.for.body29_crit_edge

if.end56.for.body29_crit_edge:                    ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body29

if.end56.sw.epilog_crit_edge:                     ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

sw.bb68:                                          ; preds = %entry
  %conv69 = trunc i32 %offset to i16
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv69) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num)
  %cmp71135.not = icmp eq i32 %num, 0
  br i1 %cmp71135.not, label %sw.bb68.sw.epilog_crit_edge, label %sw.bb68.for.body73_crit_edge

sw.bb68.for.body73_crit_edge:                     ; preds = %sw.bb68
  br label %for.body73

sw.bb68.sw.epilog_crit_edge:                      ; preds = %sw.bb68
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

for.body73:                                       ; preds = %for.body73.for.body73_crit_edge, %sw.bb68.for.body73_crit_edge
  %i.2136 = phi i32 [ %inc80, %for.body73.for.body73_crit_edge ], [ 0, %sw.bb68.for.body73_crit_edge ]
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %argp.cur74 = load ptr, ptr %args, align 4
  %argp.next75 = getelementptr inbounds i8, ptr %argp.cur74, i32 4
  store ptr %argp.next75, ptr %args, align 4
  %9 = ptrtoint ptr %argp.cur74 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %argp.cur74, align 4
  %shr = lshr i32 %10, 16
  %conv76 = trunc i32 %shr to i16
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv76) #4
  %conv78 = trunc i32 %10 to i16
  call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv78) #4
  %inc80 = add nuw i32 %i.2136, 1
  %exitcond.not = icmp eq i32 %inc80, %num
  br i1 %exitcond.not, label %for.body73.sw.epilog_crit_edge, label %for.body73.for.body73_crit_edge

for.body73.for.body73_crit_edge:                  ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body73

for.body73.sw.epilog_crit_edge:                   ; preds = %for.body73
  call void @__sanitizer_cov_trace_pc() #6
  br label %sw.epilog

do.end94:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 740, i32 noundef 9, ptr noundef null) #4
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end94, %for.body73.sw.epilog_crit_edge, %sw.bb68.sw.epilog_crit_edge, %if.end56.sw.epilog_crit_edge, %sw.bb24.sw.epilog_crit_edge, %if.end.sw.epilog_crit_edge, %sw.bb.sw.epilog_crit_edge
  call void @llvm.va_end(ptr nonnull %args)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %args) #4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_httab_write_bulk(ptr noundef %dev, i32 noundef %offset, i32 noundef %nr_elements, ptr nocapture noundef readonly %_data) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %offset, -268435456
  %and1 = and i32 %offset, 268369920
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1)
  %cmp.not = icmp eq i32 %and1, 0
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end, !prof !61

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 756, i32 noundef 9, ptr noundef null) #4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %conv = trunc i32 %offset to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext %conv) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_elements)
  %cmp20144.not = icmp eq i32 %nr_elements, 0
  br i1 %cmp20144.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %data.0146 = phi ptr [ %data.1, %for.inc.for.body_crit_edge ], [ %_data, %if.end.for.body_crit_edge ]
  %i.0145 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %0 = zext i32 %and to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.4)
  switch i32 %and, label %do.end108 [
    i32 268435456, label %sw.bb
    i32 536870912, label %sw.bb56
    i32 805306368, label %sw.bb91
  ]

sw.bb:                                            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %1 = ptrtoint ptr %data.0146 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %data.0146, align 1
  %incdec.ptr = getelementptr i8, ptr %data.0146, i32 1
  %conv55 = zext i8 %2 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv55) #4
  br label %for.inc

sw.bb56:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %3 = ptrtoint ptr %data.0146 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %data.0146, align 2
  %add.ptr = getelementptr i8, ptr %data.0146, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %4) #4
  br label %for.inc

sw.bb91:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %5 = ptrtoint ptr %data.0146 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %data.0146, align 4
  %add.ptr92 = getelementptr i8, ptr %data.0146, i32 4
  %shr = lshr i32 %6, 16
  %conv93 = trunc i32 %shr to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv93) #4
  %conv95 = trunc i32 %6 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv95) #4
  br label %for.inc

do.end108:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 782, i32 noundef 9, ptr noundef null) #4
  br label %for.inc

for.inc:                                          ; preds = %do.end108, %sw.bb91, %sw.bb56, %sw.bb
  %data.1 = phi ptr [ %data.0146, %do.end108 ], [ %add.ptr92, %sw.bb91 ], [ %add.ptr, %sw.bb56 ], [ %incdec.ptr, %sw.bb ]
  %inc = add nuw i32 %i.0145, 1
  %exitcond.not = icmp eq i32 %inc, %nr_elements
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @b43_phy_ht_tables_init(ptr noundef %dev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 18432) #4
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry
  %data.0146.i = phi ptr [ %add.ptr.i, %for.body.i.for.body.i_crit_edge ], [ @b43_httab_0x12, %entry ]
  %i.0145.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %entry ]
  %0 = ptrtoint ptr %data.0146.i to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %data.0146.i, align 2
  %add.ptr.i = getelementptr i8, ptr %data.0146.i, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %1) #4
  %inc.i = add nuw nsw i32 %i.0145.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 128
  br i1 %exitcond.not.i, label %b43_httab_write_bulk.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

b43_httab_write_bulk.exit:                        ; preds = %for.body.i
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext -25600) #4
  br label %for.body.i74

for.body.i74:                                     ; preds = %for.body.i74.for.body.i74_crit_edge, %b43_httab_write_bulk.exit
  %data.0146.i72 = phi ptr [ %add.ptr.i75, %for.body.i74.for.body.i74_crit_edge ], [ @b43_httab_0x27, %b43_httab_write_bulk.exit ]
  %i.0145.i73 = phi i32 [ %inc.i76, %for.body.i74.for.body.i74_crit_edge ], [ 0, %b43_httab_write_bulk.exit ]
  %2 = ptrtoint ptr %data.0146.i72 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %data.0146.i72, align 2
  %add.ptr.i75 = getelementptr i8, ptr %data.0146.i72, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %3) #4
  %inc.i76 = add nuw nsw i32 %i.0145.i73, 1
  %exitcond.not.i77 = icmp eq i32 %inc.i76, 32
  br i1 %exitcond.not.i77, label %b43_httab_write_bulk.exit78, label %for.body.i74.for.body.i74_crit_edge

for.body.i74.for.body.i74_crit_edge:              ; preds = %for.body.i74
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i74

b43_httab_write_bulk.exit78:                      ; preds = %for.body.i74
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext -26624) #4
  br label %for.body.i81

for.body.i81:                                     ; preds = %for.body.i81.for.body.i81_crit_edge, %b43_httab_write_bulk.exit78
  %data.0146.i79 = phi ptr [ %add.ptr.i82, %for.body.i81.for.body.i81_crit_edge ], [ @b43_httab_0x26, %b43_httab_write_bulk.exit78 ]
  %i.0145.i80 = phi i32 [ %inc.i83, %for.body.i81.for.body.i81_crit_edge ], [ 0, %b43_httab_write_bulk.exit78 ]
  %4 = ptrtoint ptr %data.0146.i79 to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %data.0146.i79, align 2
  %add.ptr.i82 = getelementptr i8, ptr %data.0146.i79, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %5) #4
  %inc.i83 = add nuw nsw i32 %i.0145.i80, 1
  %exitcond.not.i84 = icmp eq i32 %inc.i83, 128
  br i1 %exitcond.not.i84, label %b43_httab_write_bulk.exit85, label %for.body.i81.for.body.i81_crit_edge

for.body.i81.for.body.i81_crit_edge:              ; preds = %for.body.i81
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i81

b43_httab_write_bulk.exit85:                      ; preds = %for.body.i81
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext -27648) #4
  br label %for.body.i88

for.body.i88:                                     ; preds = %for.body.i88.for.body.i88_crit_edge, %b43_httab_write_bulk.exit85
  %data.0146.i86 = phi ptr [ %add.ptr92.i, %for.body.i88.for.body.i88_crit_edge ], [ @b43_httab_0x25, %b43_httab_write_bulk.exit85 ]
  %i.0145.i87 = phi i32 [ %inc.i89, %for.body.i88.for.body.i88_crit_edge ], [ 0, %b43_httab_write_bulk.exit85 ]
  %6 = ptrtoint ptr %data.0146.i86 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %data.0146.i86, align 4
  %add.ptr92.i = getelementptr i8, ptr %data.0146.i86, i32 4
  %shr.i = lshr i32 %7, 16
  %conv93.i = trunc i32 %shr.i to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv93.i) #4
  %conv95.i = trunc i32 %7 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv95.i) #4
  %inc.i89 = add nuw nsw i32 %i.0145.i87, 1
  %exitcond.not.i90 = icmp eq i32 %inc.i89, 128
  br i1 %exitcond.not.i90, label %b43_httab_write_bulk.exit91, label %for.body.i88.for.body.i88_crit_edge

for.body.i88.for.body.i88_crit_edge:              ; preds = %for.body.i88
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i88

b43_httab_write_bulk.exit91:                      ; preds = %for.body.i88
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext -17408) #4
  br label %for.body.i94

for.body.i94:                                     ; preds = %for.body.i94.for.body.i94_crit_edge, %b43_httab_write_bulk.exit91
  %data.0146.i92 = phi ptr [ %add.ptr92.i95, %for.body.i94.for.body.i94_crit_edge ], [ @b43_httab_0x2f, %b43_httab_write_bulk.exit91 ]
  %i.0145.i93 = phi i32 [ %inc.i99, %for.body.i94.for.body.i94_crit_edge ], [ 0, %b43_httab_write_bulk.exit91 ]
  %8 = ptrtoint ptr %data.0146.i92 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data.0146.i92, align 4
  %add.ptr92.i95 = getelementptr i8, ptr %data.0146.i92, i32 4
  %shr.i96 = lshr i32 %9, 16
  %conv93.i97 = trunc i32 %shr.i96 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv93.i97) #4
  %conv95.i98 = trunc i32 %9 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv95.i98) #4
  %inc.i99 = add nuw nsw i32 %i.0145.i93, 1
  %exitcond.not.i100 = icmp eq i32 %inc.i99, 22
  br i1 %exitcond.not.i100, label %b43_httab_write_bulk.exit101, label %for.body.i94.for.body.i94_crit_edge

for.body.i94.for.body.i94_crit_edge:              ; preds = %for.body.i94
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i94

b43_httab_write_bulk.exit101:                     ; preds = %for.body.i94
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 26624) #4
  br label %for.body.i104

for.body.i104:                                    ; preds = %for.body.i104.for.body.i104_crit_edge, %b43_httab_write_bulk.exit101
  %data.0146.i102 = phi ptr [ %add.ptr.i105, %for.body.i104.for.body.i104_crit_edge ], [ @b43_httab_0x1a, %b43_httab_write_bulk.exit101 ]
  %i.0145.i103 = phi i32 [ %inc.i106, %for.body.i104.for.body.i104_crit_edge ], [ 0, %b43_httab_write_bulk.exit101 ]
  %10 = ptrtoint ptr %data.0146.i102 to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %data.0146.i102, align 2
  %add.ptr.i105 = getelementptr i8, ptr %data.0146.i102, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %11) #4
  %inc.i106 = add nuw nsw i32 %i.0145.i103, 1
  %exitcond.not.i107 = icmp eq i32 %inc.i106, 64
  br i1 %exitcond.not.i107, label %b43_httab_write_bulk.exit108, label %for.body.i104.for.body.i104_crit_edge

for.body.i104.for.body.i104_crit_edge:            ; preds = %for.body.i104
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i104

b43_httab_write_bulk.exit108:                     ; preds = %for.body.i104
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 27648) #4
  br label %for.body.i111

for.body.i111:                                    ; preds = %for.body.i111.for.body.i111_crit_edge, %b43_httab_write_bulk.exit108
  %data.0146.i109 = phi ptr [ %add.ptr.i112, %for.body.i111.for.body.i111_crit_edge ], [ @b43_httab_0x1b, %b43_httab_write_bulk.exit108 ]
  %i.0145.i110 = phi i32 [ %inc.i113, %for.body.i111.for.body.i111_crit_edge ], [ 0, %b43_httab_write_bulk.exit108 ]
  %12 = ptrtoint ptr %data.0146.i109 to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %data.0146.i109, align 2
  %add.ptr.i112 = getelementptr i8, ptr %data.0146.i109, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %13) #4
  %inc.i113 = add nuw nsw i32 %i.0145.i110, 1
  %exitcond.not.i114 = icmp eq i32 %inc.i113, 64
  br i1 %exitcond.not.i114, label %b43_httab_write_bulk.exit115, label %for.body.i111.for.body.i111_crit_edge

for.body.i111.for.body.i111_crit_edge:            ; preds = %for.body.i111
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i111

b43_httab_write_bulk.exit115:                     ; preds = %for.body.i111
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 28672) #4
  br label %for.body.i118

for.body.i118:                                    ; preds = %for.body.i118.for.body.i118_crit_edge, %b43_httab_write_bulk.exit115
  %data.0146.i116 = phi ptr [ %add.ptr.i119, %for.body.i118.for.body.i118_crit_edge ], [ @b43_httab_0x1c, %b43_httab_write_bulk.exit115 ]
  %i.0145.i117 = phi i32 [ %inc.i120, %for.body.i118.for.body.i118_crit_edge ], [ 0, %b43_httab_write_bulk.exit115 ]
  %14 = ptrtoint ptr %data.0146.i116 to i32
  call void @__asan_load2_noabort(i32 %14)
  %15 = load i16, ptr %data.0146.i116, align 2
  %add.ptr.i119 = getelementptr i8, ptr %data.0146.i116, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %15) #4
  %inc.i120 = add nuw nsw i32 %i.0145.i117, 1
  %exitcond.not.i121 = icmp eq i32 %inc.i120, 64
  br i1 %exitcond.not.i121, label %b43_httab_write_bulk.exit122, label %for.body.i118.for.body.i118_crit_edge

for.body.i118.for.body.i118_crit_edge:            ; preds = %for.body.i118
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i118

b43_httab_write_bulk.exit122:                     ; preds = %for.body.i118
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 26816) #4
  br label %for.body.i125

for.body.i125:                                    ; preds = %for.body.i125.for.body.i125_crit_edge, %b43_httab_write_bulk.exit122
  %data.0146.i123 = phi ptr [ %add.ptr92.i126, %for.body.i125.for.body.i125_crit_edge ], [ @b43_httab_0x1a_0xc0, %b43_httab_write_bulk.exit122 ]
  %i.0145.i124 = phi i32 [ %inc.i130, %for.body.i125.for.body.i125_crit_edge ], [ 0, %b43_httab_write_bulk.exit122 ]
  %16 = ptrtoint ptr %data.0146.i123 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %data.0146.i123, align 4
  %add.ptr92.i126 = getelementptr i8, ptr %data.0146.i123, i32 4
  %shr.i127 = lshr i32 %17, 16
  %conv93.i128 = trunc i32 %shr.i127 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv93.i128) #4
  %conv95.i129 = trunc i32 %17 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv95.i129) #4
  %inc.i130 = add nuw nsw i32 %i.0145.i124, 1
  %exitcond.not.i131 = icmp eq i32 %inc.i130, 128
  br i1 %exitcond.not.i131, label %b43_httab_write_bulk.exit132, label %for.body.i125.for.body.i125_crit_edge

for.body.i125.for.body.i125_crit_edge:            ; preds = %for.body.i125
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i125

b43_httab_write_bulk.exit132:                     ; preds = %for.body.i125
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 26944) #4
  br label %for.body.i135

for.body.i135:                                    ; preds = %for.body.i135.for.body.i135_crit_edge, %b43_httab_write_bulk.exit132
  %data.0146.i133 = phi ptr [ %add.ptr92.i136, %for.body.i135.for.body.i135_crit_edge ], [ @b43_httab_0x1a_0x140, %b43_httab_write_bulk.exit132 ]
  %i.0145.i134 = phi i32 [ %inc.i140, %for.body.i135.for.body.i135_crit_edge ], [ 0, %b43_httab_write_bulk.exit132 ]
  %18 = ptrtoint ptr %data.0146.i133 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %data.0146.i133, align 4
  %add.ptr92.i136 = getelementptr i8, ptr %data.0146.i133, i32 4
  %shr.i137 = lshr i32 %19, 16
  %conv93.i138 = trunc i32 %shr.i137 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv93.i138) #4
  %conv95.i139 = trunc i32 %19 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv95.i139) #4
  %inc.i140 = add nuw nsw i32 %i.0145.i134, 1
  %exitcond.not.i141 = icmp eq i32 %inc.i140, 128
  br i1 %exitcond.not.i141, label %b43_httab_write_bulk.exit142, label %for.body.i135.for.body.i135_crit_edge

for.body.i135.for.body.i135_crit_edge:            ; preds = %for.body.i135
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i135

b43_httab_write_bulk.exit142:                     ; preds = %for.body.i135
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 27968) #4
  br label %for.body.i145

for.body.i145:                                    ; preds = %for.body.i145.for.body.i145_crit_edge, %b43_httab_write_bulk.exit142
  %data.0146.i143 = phi ptr [ %add.ptr92.i146, %for.body.i145.for.body.i145_crit_edge ], [ @b43_httab_0x1b_0x140, %b43_httab_write_bulk.exit142 ]
  %i.0145.i144 = phi i32 [ %inc.i150, %for.body.i145.for.body.i145_crit_edge ], [ 0, %b43_httab_write_bulk.exit142 ]
  %20 = ptrtoint ptr %data.0146.i143 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %data.0146.i143, align 4
  %add.ptr92.i146 = getelementptr i8, ptr %data.0146.i143, i32 4
  %shr.i147 = lshr i32 %21, 16
  %conv93.i148 = trunc i32 %shr.i147 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv93.i148) #4
  %conv95.i149 = trunc i32 %21 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv95.i149) #4
  %inc.i150 = add nuw nsw i32 %i.0145.i144, 1
  %exitcond.not.i151 = icmp eq i32 %inc.i150, 128
  br i1 %exitcond.not.i151, label %b43_httab_write_bulk.exit152, label %for.body.i145.for.body.i145_crit_edge

for.body.i145.for.body.i145_crit_edge:            ; preds = %for.body.i145
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i145

b43_httab_write_bulk.exit152:                     ; preds = %for.body.i145
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 28992) #4
  br label %for.body.i155

for.body.i155:                                    ; preds = %for.body.i155.for.body.i155_crit_edge, %b43_httab_write_bulk.exit152
  %data.0146.i153 = phi ptr [ %add.ptr92.i156, %for.body.i155.for.body.i155_crit_edge ], [ @b43_httab_0x1c_0x140, %b43_httab_write_bulk.exit152 ]
  %i.0145.i154 = phi i32 [ %inc.i160, %for.body.i155.for.body.i155_crit_edge ], [ 0, %b43_httab_write_bulk.exit152 ]
  %22 = ptrtoint ptr %data.0146.i153 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %data.0146.i153, align 4
  %add.ptr92.i156 = getelementptr i8, ptr %data.0146.i153, i32 4
  %shr.i157 = lshr i32 %23, 16
  %conv93.i158 = trunc i32 %shr.i157 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv93.i158) #4
  %conv95.i159 = trunc i32 %23 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv95.i159) #4
  %inc.i160 = add nuw nsw i32 %i.0145.i154, 1
  %exitcond.not.i161 = icmp eq i32 %inc.i160, 128
  br i1 %exitcond.not.i161, label %b43_httab_write_bulk.exit162, label %for.body.i155.for.body.i155_crit_edge

for.body.i155.for.body.i155_crit_edge:            ; preds = %for.body.i155
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i155

b43_httab_write_bulk.exit162:                     ; preds = %for.body.i155
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 27072) #4
  br label %for.body.i165

for.body.i165:                                    ; preds = %for.body.i165.for.body.i165_crit_edge, %b43_httab_write_bulk.exit162
  %data.0146.i163 = phi ptr [ %add.ptr.i166, %for.body.i165.for.body.i165_crit_edge ], [ @b43_httab_0x1a_0x1c0, %b43_httab_write_bulk.exit162 ]
  %i.0145.i164 = phi i32 [ %inc.i167, %for.body.i165.for.body.i165_crit_edge ], [ 0, %b43_httab_write_bulk.exit162 ]
  %24 = ptrtoint ptr %data.0146.i163 to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %data.0146.i163, align 2
  %add.ptr.i166 = getelementptr i8, ptr %data.0146.i163, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %25) #4
  %inc.i167 = add nuw nsw i32 %i.0145.i164, 1
  %exitcond.not.i168 = icmp eq i32 %inc.i167, 128
  br i1 %exitcond.not.i168, label %b43_httab_write_bulk.exit169, label %for.body.i165.for.body.i165_crit_edge

for.body.i165.for.body.i165_crit_edge:            ; preds = %for.body.i165
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i165

b43_httab_write_bulk.exit169:                     ; preds = %for.body.i165
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 28096) #4
  br label %for.body.i172

for.body.i172:                                    ; preds = %for.body.i172.for.body.i172_crit_edge, %b43_httab_write_bulk.exit169
  %data.0146.i170 = phi ptr [ %add.ptr.i173, %for.body.i172.for.body.i172_crit_edge ], [ @b43_httab_0x1b_0x1c0, %b43_httab_write_bulk.exit169 ]
  %i.0145.i171 = phi i32 [ %inc.i174, %for.body.i172.for.body.i172_crit_edge ], [ 0, %b43_httab_write_bulk.exit169 ]
  %26 = ptrtoint ptr %data.0146.i170 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %data.0146.i170, align 2
  %add.ptr.i173 = getelementptr i8, ptr %data.0146.i170, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %27) #4
  %inc.i174 = add nuw nsw i32 %i.0145.i171, 1
  %exitcond.not.i175 = icmp eq i32 %inc.i174, 128
  br i1 %exitcond.not.i175, label %b43_httab_write_bulk.exit176, label %for.body.i172.for.body.i172_crit_edge

for.body.i172.for.body.i172_crit_edge:            ; preds = %for.body.i172
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i172

b43_httab_write_bulk.exit176:                     ; preds = %for.body.i172
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 29120) #4
  br label %for.body.i179

for.body.i179:                                    ; preds = %for.body.i179.for.body.i179_crit_edge, %b43_httab_write_bulk.exit176
  %data.0146.i177 = phi ptr [ %add.ptr.i180, %for.body.i179.for.body.i179_crit_edge ], [ @b43_httab_0x1c_0x1c0, %b43_httab_write_bulk.exit176 ]
  %i.0145.i178 = phi i32 [ %inc.i181, %for.body.i179.for.body.i179_crit_edge ], [ 0, %b43_httab_write_bulk.exit176 ]
  %28 = ptrtoint ptr %data.0146.i177 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %data.0146.i177, align 2
  %add.ptr.i180 = getelementptr i8, ptr %data.0146.i177, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %29) #4
  %inc.i181 = add nuw nsw i32 %i.0145.i178, 1
  %exitcond.not.i182 = icmp eq i32 %inc.i181, 128
  br i1 %exitcond.not.i182, label %b43_httab_write_bulk.exit183, label %for.body.i179.for.body.i179_crit_edge

for.body.i179.for.body.i179_crit_edge:            ; preds = %for.body.i179
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i179

b43_httab_write_bulk.exit183:                     ; preds = %for.body.i179
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 27200) #4
  br label %for.body.i186

for.body.i186:                                    ; preds = %for.body.i186.for.body.i186_crit_edge, %b43_httab_write_bulk.exit183
  %data.0146.i184 = phi ptr [ %add.ptr.i187, %for.body.i186.for.body.i186_crit_edge ], [ @b43_httab_0x1a_0x240, %b43_httab_write_bulk.exit183 ]
  %i.0145.i185 = phi i32 [ %inc.i188, %for.body.i186.for.body.i186_crit_edge ], [ 0, %b43_httab_write_bulk.exit183 ]
  %30 = ptrtoint ptr %data.0146.i184 to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %data.0146.i184, align 2
  %add.ptr.i187 = getelementptr i8, ptr %data.0146.i184, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %31) #4
  %inc.i188 = add nuw nsw i32 %i.0145.i185, 1
  %exitcond.not.i189 = icmp eq i32 %inc.i188, 128
  br i1 %exitcond.not.i189, label %b43_httab_write_bulk.exit190, label %for.body.i186.for.body.i186_crit_edge

for.body.i186.for.body.i186_crit_edge:            ; preds = %for.body.i186
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i186

b43_httab_write_bulk.exit190:                     ; preds = %for.body.i186
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 28224) #4
  br label %for.body.i193

for.body.i193:                                    ; preds = %for.body.i193.for.body.i193_crit_edge, %b43_httab_write_bulk.exit190
  %data.0146.i191 = phi ptr [ %add.ptr.i194, %for.body.i193.for.body.i193_crit_edge ], [ @b43_httab_0x1b_0x240, %b43_httab_write_bulk.exit190 ]
  %i.0145.i192 = phi i32 [ %inc.i195, %for.body.i193.for.body.i193_crit_edge ], [ 0, %b43_httab_write_bulk.exit190 ]
  %32 = ptrtoint ptr %data.0146.i191 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %data.0146.i191, align 2
  %add.ptr.i194 = getelementptr i8, ptr %data.0146.i191, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %33) #4
  %inc.i195 = add nuw nsw i32 %i.0145.i192, 1
  %exitcond.not.i196 = icmp eq i32 %inc.i195, 128
  br i1 %exitcond.not.i196, label %b43_httab_write_bulk.exit197, label %for.body.i193.for.body.i193_crit_edge

for.body.i193.for.body.i193_crit_edge:            ; preds = %for.body.i193
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i193

b43_httab_write_bulk.exit197:                     ; preds = %for.body.i193
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 29248) #4
  br label %for.body.i200

for.body.i200:                                    ; preds = %for.body.i200.for.body.i200_crit_edge, %b43_httab_write_bulk.exit197
  %data.0146.i198 = phi ptr [ %add.ptr.i201, %for.body.i200.for.body.i200_crit_edge ], [ @b43_httab_0x1c_0x240, %b43_httab_write_bulk.exit197 ]
  %i.0145.i199 = phi i32 [ %inc.i202, %for.body.i200.for.body.i200_crit_edge ], [ 0, %b43_httab_write_bulk.exit197 ]
  %34 = ptrtoint ptr %data.0146.i198 to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %data.0146.i198, align 2
  %add.ptr.i201 = getelementptr i8, ptr %data.0146.i198, i32 2
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %35) #4
  %inc.i202 = add nuw nsw i32 %i.0145.i199, 1
  %exitcond.not.i203 = icmp eq i32 %inc.i202, 128
  br i1 %exitcond.not.i203, label %b43_httab_write_bulk.exit204, label %for.body.i200.for.body.i200_crit_edge

for.body.i200.for.body.i200_crit_edge:            ; preds = %for.body.i200
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i200

b43_httab_write_bulk.exit204:                     ; preds = %for.body.i200
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext 31744) #4
  br label %for.body.i207

for.body.i207:                                    ; preds = %for.body.i207.for.body.i207_crit_edge, %b43_httab_write_bulk.exit204
  %data.0146.i205 = phi ptr [ %add.ptr92.i208, %for.body.i207.for.body.i207_crit_edge ], [ @b43_httab_0x1f, %b43_httab_write_bulk.exit204 ]
  %i.0145.i206 = phi i32 [ %inc.i212, %for.body.i207.for.body.i207_crit_edge ], [ 0, %b43_httab_write_bulk.exit204 ]
  %36 = ptrtoint ptr %data.0146.i205 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %data.0146.i205, align 4
  %add.ptr92.i208 = getelementptr i8, ptr %data.0146.i205, i32 4
  %shr.i209 = lshr i32 %37, 16
  %conv93.i210 = trunc i32 %shr.i209 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv93.i210) #4
  %conv95.i211 = trunc i32 %37 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv95.i211) #4
  %inc.i212 = add nuw nsw i32 %i.0145.i206, 1
  %exitcond.not.i213 = icmp eq i32 %inc.i212, 64
  br i1 %exitcond.not.i213, label %b43_httab_write_bulk.exit214, label %for.body.i207.for.body.i207_crit_edge

for.body.i207.for.body.i207_crit_edge:            ; preds = %for.body.i207
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i207

b43_httab_write_bulk.exit214:                     ; preds = %for.body.i207
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext -31744) #4
  br label %for.body.i217

for.body.i217:                                    ; preds = %for.body.i217.for.body.i217_crit_edge, %b43_httab_write_bulk.exit214
  %data.0146.i215 = phi ptr [ %add.ptr92.i218, %for.body.i217.for.body.i217_crit_edge ], [ @b43_httab_0x21, %b43_httab_write_bulk.exit214 ]
  %i.0145.i216 = phi i32 [ %inc.i222, %for.body.i217.for.body.i217_crit_edge ], [ 0, %b43_httab_write_bulk.exit214 ]
  %38 = ptrtoint ptr %data.0146.i215 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %data.0146.i215, align 4
  %add.ptr92.i218 = getelementptr i8, ptr %data.0146.i215, i32 4
  %shr.i219 = lshr i32 %39, 16
  %conv93.i220 = trunc i32 %shr.i219 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv93.i220) #4
  %conv95.i221 = trunc i32 %39 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv95.i221) #4
  %inc.i222 = add nuw nsw i32 %i.0145.i216, 1
  %exitcond.not.i223 = icmp eq i32 %inc.i222, 64
  br i1 %exitcond.not.i223, label %b43_httab_write_bulk.exit224, label %for.body.i217.for.body.i217_crit_edge

for.body.i217.for.body.i217_crit_edge:            ; preds = %for.body.i217
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i217

b43_httab_write_bulk.exit224:                     ; preds = %for.body.i217
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext -29696) #4
  br label %for.body.i227

for.body.i227:                                    ; preds = %for.body.i227.for.body.i227_crit_edge, %b43_httab_write_bulk.exit224
  %data.0146.i225 = phi ptr [ %add.ptr92.i228, %for.body.i227.for.body.i227_crit_edge ], [ @b43_httab_0x23, %b43_httab_write_bulk.exit224 ]
  %i.0145.i226 = phi i32 [ %inc.i232, %for.body.i227.for.body.i227_crit_edge ], [ 0, %b43_httab_write_bulk.exit224 ]
  %40 = ptrtoint ptr %data.0146.i225 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %data.0146.i225, align 4
  %add.ptr92.i228 = getelementptr i8, ptr %data.0146.i225, i32 4
  %shr.i229 = lshr i32 %41, 16
  %conv93.i230 = trunc i32 %shr.i229 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv93.i230) #4
  %conv95.i231 = trunc i32 %41 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv95.i231) #4
  %inc.i232 = add nuw nsw i32 %i.0145.i226, 1
  %exitcond.not.i233 = icmp eq i32 %inc.i232, 64
  br i1 %exitcond.not.i233, label %b43_httab_write_bulk.exit234, label %for.body.i227.for.body.i227_crit_edge

for.body.i227.for.body.i227_crit_edge:            ; preds = %for.body.i227
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i227

b43_httab_write_bulk.exit234:                     ; preds = %for.body.i227
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext -32768) #4
  br label %for.body.i237

for.body.i237:                                    ; preds = %for.body.i237.for.body.i237_crit_edge, %b43_httab_write_bulk.exit234
  %data.0146.i235 = phi ptr [ %add.ptr92.i238, %for.body.i237.for.body.i237_crit_edge ], [ @b43_httab_0x20, %b43_httab_write_bulk.exit234 ]
  %i.0145.i236 = phi i32 [ %inc.i242, %for.body.i237.for.body.i237_crit_edge ], [ 0, %b43_httab_write_bulk.exit234 ]
  %42 = ptrtoint ptr %data.0146.i235 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %data.0146.i235, align 4
  %add.ptr92.i238 = getelementptr i8, ptr %data.0146.i235, i32 4
  %shr.i239 = lshr i32 %43, 16
  %conv93.i240 = trunc i32 %shr.i239 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv93.i240) #4
  %conv95.i241 = trunc i32 %43 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv95.i241) #4
  %inc.i242 = add nuw nsw i32 %i.0145.i236, 1
  %exitcond.not.i243 = icmp eq i32 %inc.i242, 64
  br i1 %exitcond.not.i243, label %b43_httab_write_bulk.exit244, label %for.body.i237.for.body.i237_crit_edge

for.body.i237.for.body.i237_crit_edge:            ; preds = %for.body.i237
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i237

b43_httab_write_bulk.exit244:                     ; preds = %for.body.i237
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext -30720) #4
  br label %for.body.i247

for.body.i247:                                    ; preds = %for.body.i247.for.body.i247_crit_edge, %b43_httab_write_bulk.exit244
  %data.0146.i245 = phi ptr [ %add.ptr92.i248, %for.body.i247.for.body.i247_crit_edge ], [ @b43_httab_0x22, %b43_httab_write_bulk.exit244 ]
  %i.0145.i246 = phi i32 [ %inc.i252, %for.body.i247.for.body.i247_crit_edge ], [ 0, %b43_httab_write_bulk.exit244 ]
  %44 = ptrtoint ptr %data.0146.i245 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %data.0146.i245, align 4
  %add.ptr92.i248 = getelementptr i8, ptr %data.0146.i245, i32 4
  %shr.i249 = lshr i32 %45, 16
  %conv93.i250 = trunc i32 %shr.i249 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv93.i250) #4
  %conv95.i251 = trunc i32 %45 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv95.i251) #4
  %inc.i252 = add nuw nsw i32 %i.0145.i246, 1
  %exitcond.not.i253 = icmp eq i32 %inc.i252, 64
  br i1 %exitcond.not.i253, label %b43_httab_write_bulk.exit254, label %for.body.i247.for.body.i247_crit_edge

for.body.i247.for.body.i247_crit_edge:            ; preds = %for.body.i247
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i247

b43_httab_write_bulk.exit254:                     ; preds = %for.body.i247
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 114, i16 noundef zeroext -28672) #4
  br label %for.body.i257

for.body.i257:                                    ; preds = %for.body.i257.for.body.i257_crit_edge, %b43_httab_write_bulk.exit254
  %data.0146.i255 = phi ptr [ %add.ptr92.i258, %for.body.i257.for.body.i257_crit_edge ], [ @b43_httab_0x24, %b43_httab_write_bulk.exit254 ]
  %i.0145.i256 = phi i32 [ %inc.i262, %for.body.i257.for.body.i257_crit_edge ], [ 0, %b43_httab_write_bulk.exit254 ]
  %46 = ptrtoint ptr %data.0146.i255 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %data.0146.i255, align 4
  %add.ptr92.i258 = getelementptr i8, ptr %data.0146.i255, i32 4
  %shr.i259 = lshr i32 %47, 16
  %conv93.i260 = trunc i32 %shr.i259 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 116, i16 noundef zeroext %conv93.i260) #4
  %conv95.i261 = trunc i32 %47 to i16
  tail call void @b43_phy_write(ptr noundef %dev, i16 noundef zeroext 115, i16 noundef zeroext %conv95.i261) #4
  %inc.i262 = add nuw nsw i32 %i.0145.i256, 1
  %exitcond.not.i263 = icmp eq i32 %inc.i262, 64
  br i1 %exitcond.not.i263, label %b43_httab_write_bulk.exit264, label %for.body.i257.for.body.i257_crit_edge

for.body.i257.for.body.i257_crit_edge:            ; preds = %for.body.i257
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i257

b43_httab_write_bulk.exit264:                     ; preds = %for.body.i257
  call void @__sanitizer_cov_trace_pc() #6
  ret void
}

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @b43_httab_0x1a_0xc0_late, !1, !"b43_httab_0x1a_0xc0_late", i1 false, i1 false}
!1 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 567, i32 11}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 612, i32 2}
!4 = !{ptr @b43_httab_0x12, !5, !"b43_httab_0x12", i1 false, i1 false}
!5 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 17, i32 18}
!6 = !{ptr @b43_httab_0x27, !7, !"b43_httab_0x27", i1 false, i1 false}
!7 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 42, i32 18}
!8 = !{ptr @b43_httab_0x26, !9, !"b43_httab_0x26", i1 false, i1 false}
!9 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 51, i32 18}
!10 = !{ptr @b43_httab_0x25, !11, !"b43_httab_0x25", i1 false, i1 false}
!11 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 76, i32 18}
!12 = !{ptr @b43_httab_0x2f, !13, !"b43_httab_0x2f", i1 false, i1 false}
!13 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 111, i32 18}
!14 = !{ptr @b43_httab_0x1a, !15, !"b43_httab_0x1a", i1 false, i1 false}
!15 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 120, i32 18}
!16 = !{ptr @b43_httab_0x1b, !17, !"b43_httab_0x1b", i1 false, i1 false}
!17 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 134, i32 18}
!18 = !{ptr @b43_httab_0x1c, !19, !"b43_httab_0x1c", i1 false, i1 false}
!19 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 148, i32 18}
!20 = !{ptr @b43_httab_0x1a_0xc0, !21, !"b43_httab_0x1a_0xc0", i1 false, i1 false}
!21 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 162, i32 18}
!22 = !{ptr @b43_httab_0x1a_0x140, !23, !"b43_httab_0x1a_0x140", i1 false, i1 false}
!23 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 197, i32 18}
!24 = !{ptr @b43_httab_0x1b_0x140, !25, !"b43_httab_0x1b_0x140", i1 false, i1 false}
!25 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 232, i32 18}
!26 = !{ptr @b43_httab_0x1c_0x140, !27, !"b43_httab_0x1c_0x140", i1 false, i1 false}
!27 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 267, i32 18}
!28 = !{ptr @b43_httab_0x1a_0x1c0, !29, !"b43_httab_0x1a_0x1c0", i1 false, i1 false}
!29 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 302, i32 18}
!30 = !{ptr @b43_httab_0x1b_0x1c0, !31, !"b43_httab_0x1b_0x1c0", i1 false, i1 false}
!31 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 327, i32 18}
!32 = !{ptr @b43_httab_0x1c_0x1c0, !33, !"b43_httab_0x1c_0x1c0", i1 false, i1 false}
!33 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 352, i32 18}
!34 = !{ptr @b43_httab_0x1a_0x240, !35, !"b43_httab_0x1a_0x240", i1 false, i1 false}
!35 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 377, i32 18}
!36 = !{ptr @b43_httab_0x1b_0x240, !37, !"b43_httab_0x1b_0x240", i1 false, i1 false}
!37 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 402, i32 18}
!38 = !{ptr @b43_httab_0x1c_0x240, !39, !"b43_httab_0x1c_0x240", i1 false, i1 false}
!39 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 427, i32 18}
!40 = !{ptr @b43_httab_0x1f, !41, !"b43_httab_0x1f", i1 false, i1 false}
!41 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 452, i32 18}
!42 = !{ptr @b43_httab_0x21, !43, !"b43_httab_0x21", i1 false, i1 false}
!43 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 471, i32 18}
!44 = !{ptr @b43_httab_0x23, !45, !"b43_httab_0x23", i1 false, i1 false}
!45 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 490, i32 18}
!46 = !{ptr @b43_httab_0x20, !47, !"b43_httab_0x20", i1 false, i1 false}
!47 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 509, i32 18}
!48 = !{ptr @b43_httab_0x22, !49, !"b43_httab_0x22", i1 false, i1 false}
!49 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 528, i32 18}
!50 = !{ptr @b43_httab_0x24, !51, !"b43_httab_0x24", i1 false, i1 false}
!51 = !{!"../drivers/net/wireless/broadcom/b43/tables_phy_ht.c", i32 547, i32 18}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{!"branch_weights", i32 2000, i32 1}
!62 = !{!"auto-init"}
