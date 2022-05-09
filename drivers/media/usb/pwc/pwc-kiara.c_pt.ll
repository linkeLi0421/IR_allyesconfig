; ModuleID = '/llk/IR_all_yes/drivers/media/usb/pwc/pwc-kiara.c_pt.bc'
source_filename = "../drivers/media/usb/pwc/pwc-kiara.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.Kiara_table_entry = type { i8, i16, i16, [12 x i8] }

@Kiara_fps_vector = dso_local constant { [6 x i32], [40 x i8] } { [6 x i32] [i32 5, i32 10, i32 15, i32 20, i32 25, i32 30], [40 x i8] zeroinitializer }, align 32
@Kiara_table = dso_local constant { [6 x [6 x [4 x %struct.Kiara_table_entry]]], [640 x i8] } { [6 x [6 x [4 x %struct.Kiara_table_entry]]] [[6 x [4 x %struct.Kiara_table_entry]] zeroinitializer, [6 x [4 x %struct.Kiara_table_entry]] [[4 x %struct.Kiara_table_entry] [%struct.Kiara_table_entry { i8 1, i16 146, i16 0, [12 x i8] c"\1D\F40\00\00\00\00\18\00\92\00\80" }, %struct.Kiara_table_entry { i8 1, i16 146, i16 0, [12 x i8] c"\1D\F40\00\00\00\00\18\00\92\00\80" }, %struct.Kiara_table_entry { i8 1, i16 146, i16 0, [12 x i8] c"\1D\F40\00\00\00\00\18\00\92\00\80" }, %struct.Kiara_table_entry { i8 1, i16 146, i16 0, [12 x i8] c"\1D\F40\00\00\00\00\18\00\92\00\80" }], [4 x %struct.Kiara_table_entry] [%struct.Kiara_table_entry { i8 2, i16 291, i16 0, [12 x i8] c"\1C\F40\00\00\00\00\18\00#\01\80" }, %struct.Kiara_table_entry { i8 1, i16 192, i16 630, [12 x i8] c"\14\F40\13\A9\12\E1\17\08\C0\00\80" }, %struct.Kiara_table_entry { i8 1, i16 192, i16 630, [12 x i8] c"\14\F40\13\A9\12\E1\17\08\C0\00\80" }, %struct.Kiara_table_entry { i8 1, i16 192, i16 630, [12 x i8] c"\14\F40\13\A9\12\E1\17\08\C0\00\80" }], [4 x %struct.Kiara_table_entry] [%struct.Kiara_table_entry { i8 3, i16 437, i16 0, [12 x i8] c"\1B\F40\00\00\00\00\18\00\B5\01\80" }, %struct.Kiara_table_entry { i8 2, i16 292, i16 640, [12 x i8] c"\13\F40\13\F7\13/\13 $\01\80" }, %struct.Kiara_table_entry { i8 2, i16 292, i16 640, [12 x i8] c"\13\F40\13\F7\13/\13 $\01\80" }, %struct.Kiara_table_entry { i8 1, i16 192, i16 420, [12 x i8] c"\13\F40\0D\1B\0CS\1E\18\C0\00\80" }], [4 x %struct.Kiara_table_entry] [%struct.Kiara_table_entry { i8 4, i16 589, i16 0, [12 x i8] c"\1A\F40\00\00\00\00\18\00M\02\80" }, %struct.Kiara_table_entry { i8 3, i16 448, i16 730, [12 x i8] c"\12\F40\16\C9\16\01\0E\18\C0\01\80" }, %struct.Kiara_table_entry { i8 2, i16 292, i16 476, [12 x i8] c"\12\F40\0E\D8\0E\10\19\18$\01\80" }, %struct.Kiara_table_entry { i8 1, i16 192, i16 312, [12 x i8] c"\12\F4P\09\B3\08\EB\1E\18\C0\00\80" }], [4 x %struct.Kiara_table_entry] [%struct.Kiara_table_entry { i8 5, i16 703, i16 0, [12 x i8] c"\19\F40\00\00\00\00\18\00\BF\02\80" }, %struct.Kiara_table_entry { i8 3, i16 447, i16 610, [12 x i8] c"\11\F40\13\0B\12C\14(\BF\01\80" }, %struct.Kiara_table_entry { i8 2, i16 292, i16 398, [12 x i8] c"\11\F4P\0Cl\0B\A4\1E($\01\80" }, %struct.Kiara_table_entry { i8 1, i16 193, i16 262, [12 x i8] c"\11\F4P\08#\07[\1E(\C1\00\80" }], [4 x %struct.Kiara_table_entry] [%struct.Kiara_table_entry { i8 8, i16 874, i16 0, [12 x i8] c"\18\F40\00\00\00\00\18\00j\03\80" }, %struct.Kiara_table_entry { i8 5, i16 704, i16 730, [12 x i8] c"\10\F40\16\C9\16\01\0E(\C0\02\80" }, %struct.Kiara_table_entry { i8 3, i16 448, i16 492, [12 x i8] c"\10\F40\0F]\0E\95\15(\C0\01\80" }, %struct.Kiara_table_entry { i8 2, i16 292, i16 320, [12 x i8] c"\10\F4P\09\FB\093\1E($\01\80" }]], [6 x [4 x %struct.Kiara_table_entry]] zeroinitializer, [6 x [4 x %struct.Kiara_table_entry]] [[4 x %struct.Kiara_table_entry] [%struct.Kiara_table_entry { i8 4, i16 582, i16 0, [12 x i8] c"\0D\F40\00\00\00\00\04\00F\02\80" }, %struct.Kiara_table_entry { i8 3, i16 387, i16 1276, [12 x i8] c"\05\F40'\D8&H\03\10\83\01\80" }, %struct.Kiara_table_entry { i8 2, i16 291, i16 960, [12 x i8] c"\05\F40\1D\F2\1Cb\04\10#\01\80" }, %struct.Kiara_table_entry { i8 1, i16 191, i16 630, [12 x i8] c"\05\F4P\13\A9\12\19\05\18\BF\00\80" }], [4 x %struct.Kiara_table_entry] [%struct.Kiara_table_entry zeroinitializer, %struct.Kiara_table_entry { i8 6, i16 775, i16 1278, [12 x i8] c"\04\F40'\E8&X\050\07\03\80" }, %struct.Kiara_table_entry { i8 3, i16 447, i16 736, [12 x i8] c"\04\F40\16\FB\15k\05(\BF\01\80" }, %struct.Kiara_table_entry { i8 2, i16 292, i16 480, [12 x i8] c"\04\F4p\0E\F9\0Di\09($\01\80" }], [4 x %struct.Kiara_table_entry] [%struct.Kiara_table_entry zeroinitializer, %struct.Kiara_table_entry { i8 9, i16 955, i16 1050, [12 x i8] c"\03\F40 \CF\1F?\06H\BB\03\80" }, %struct.Kiara_table_entry { i8 4, i16 592, i16 650, [12 x i8] c"\03\F40\14D\12\B4\080P\02\80" }, %struct.Kiara_table_entry { i8 3, i16 448, i16 492, [12 x i8] c"\03\F4P\0FR\0D\C2\098\C0\01\80" }], [4 x %struct.Kiara_table_entry] [%struct.Kiara_table_entry zeroinitializer, %struct.Kiara_table_entry { i8 9, i16 958, i16 782, [12 x i8] c"\02\F40\18j\16\DA\0BX\BE\03\80" }, %struct.Kiara_table_entry { i8 5, i16 703, i16 574, [12 x i8] c"\02\F4P\11\E7\10W\0B@\BF\02\80" }, %struct.Kiara_table_entry { i8 3, i16 446, i16 364, [12 x i8] c"\02\F4\90\0B\\\09\CC\0E8\BE\01\80" }], [4 x %struct.Kiara_table_entry] [%struct.Kiara_table_entry zeroinitializer, %struct.Kiara_table_entry { i8 9, i16 958, i16 654, [12 x i8] c"\01\F40\14f\12\D6\0BP\BE\03\80" }, %struct.Kiara_table_entry { i8 6, i16 776, i16 530, [12 x i8] c"\01\F4P\10\8C\0E\FC\0CH\08\03\80" }, %struct.Kiara_table_entry { i8 4, i16 592, i16 404, [12 x i8] c"\01\F4p\0C\96\0B\06\0BHP\02\80" }], [4 x %struct.Kiara_table_entry] [%struct.Kiara_table_entry zeroinitializer, %struct.Kiara_table_entry { i8 9, i16 957, i16 526, [12 x i8] c"\00\F4P\10h\0E\D8\0DX\BD\03\80" }, %struct.Kiara_table_entry { i8 6, i16 775, i16 426, [12 x i8] c"\00\F4p\0DH\0B\B8\0FP\07\03\80" }, %struct.Kiara_table_entry { i8 4, i16 590, i16 324, [12 x i8] c"\00z\88\0A\1C\08\B4\0EPN\02\80" }]], [6 x [4 x %struct.Kiara_table_entry]] zeroinitializer, [6 x [4 x %struct.Kiara_table_entry]] [[4 x %struct.Kiara_table_entry] [%struct.Kiara_table_entry zeroinitializer, %struct.Kiara_table_entry { i8 6, i16 773, i16 1272, [12 x i8] c"%\F40'\B6$\96\020\05\03\80" }, %struct.Kiara_table_entry { i8 4, i16 592, i16 976, [12 x i8] c"%\F4P\1Ex\1BX\030P\02\80" }, %struct.Kiara_table_entry { i8 3, i16 448, i16 738, [12 x i8] c"%\F4\90\17\0C\13\EC\040\C0\01\80" }], [4 x %struct.Kiara_table_entry] [%struct.Kiara_table_entry zeroinitializer, %struct.Kiara_table_entry { i8 9, i16 956, i16 788, [12 x i8] c"$\F4p\18\9C\15|\03H\BC\03\80" }, %struct.Kiara_table_entry { i8 6, i16 776, i16 640, [12 x i8] c"$\F4\B0\13\FC\11,\04H\08\03\80" }, %struct.Kiara_table_entry { i8 4, i16 592, i16 488, [12 x i8] c"$z\E8\0F<\0Cl\06HP\02\80" }], [4 x %struct.Kiara_table_entry] [%struct.Kiara_table_entry zeroinitializer, %struct.Kiara_table_entry { i8 9, i16 957, i16 526, [12 x i8] c"#z\E8\10h\0D\98\06X\BD\03\80" }, %struct.Kiara_table_entry { i8 9, i16 957, i16 526, [12 x i8] c"#z\E8\10h\0D\98\06X\BD\03\80" }, %struct.Kiara_table_entry { i8 8, i16 895, i16 492, [12 x i8] c"#z\E8\0F]\0C\8D\06X\7F\03\80" }], [4 x %struct.Kiara_table_entry] zeroinitializer, [4 x %struct.Kiara_table_entry] zeroinitializer, [4 x %struct.Kiara_table_entry] zeroinitializer]], [640 x i8] zeroinitializer }, align 32
@KiaraRomTable = dso_local constant { [8 x [2 x [16 x [8 x i32]]]], [2048 x i8] } { [8 x [2 x [16 x [8 x i32]]]] [[2 x [16 x [8 x i32]]] [[16 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1], [8 x i32] [i32 0, i32 0, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9], [8 x i32] [i32 0, i32 0, i32 9, i32 73, i32 73, i32 73, i32 73, i32 73], [8 x i32] [i32 0, i32 0, i32 73, i32 73, i32 73, i32 585, i32 586, i32 73], [8 x i32] [i32 0, i32 0, i32 73, i32 73, i32 585, i32 585, i32 586, i32 586], [8 x i32] [i32 0, i32 0, i32 73, i32 585, i32 585, i32 4682, i32 586, i32 586], [8 x i32] [i32 0, i32 0, i32 73, i32 585, i32 4682, i32 37458, i32 4690, i32 4690], [8 x i32] [i32 0, i32 0, i32 585, i32 585, i32 37458, i32 37522, i32 37522, i32 37522], [8 x i32] [i32 0, i32 0, i32 585, i32 4681, i32 37522, i32 37522, i32 38035, i32 74971], [8 x i32] [i32 0, i32 0, i32 585, i32 37450, i32 38034, i32 42139, i32 42139, i32 74971], [8 x i32] [i32 0, i32 0, i32 4681, i32 37458, i32 42131, i32 74971, i32 74971, i32 75484], [8 x i32] [i32 0, i32 0, i32 4681, i32 38035, i32 74971, i32 75484, i32 79588, i32 75484], [8 x i32] [i32 0, i32 0, i32 37522, i32 42139, i32 74971, i32 79588, i32 79588, i32 79588], [8 x i32] [i32 0, i32 0, i32 37522, i32 42139, i32 75484, i32 112420, i32 112941, i32 112933], [8 x i32] [i32 0, i32 0, i32 38034, i32 74971, i32 79588, i32 112933, i32 117102, i32 117037], [8 x i32] zeroinitializer], [16 x [8 x i32]] [[8 x i32] zeroinitializer, [8 x i32] zeroinitializer, [8 x i32] [i32 0, i32 0, i32 1, i32 9, i32 9, i32 9, i32 9, i32 1], [8 x i32] [i32 0, i32 0, i32 9, i32 9, i32 73, i32 73, i32 73, i32 73], [8 x i32] [i32 0, i32 0, i32 73, i32 73, i32 73, i32 73, i32 586, i32 586], [8 x i32] [i32 0, i32 0, i32 73, i32 73, i32 585, i32 585, i32 586, i32 586], [8 x i32] [i32 0, i32 0, i32 73, i32 585, i32 585, i32 585, i32 586, i32 4690], [8 x i32] [i32 0, i32 0, i32 73, i32 4681, i32 4682, i32 4682, i32 4690, i32 37522], [8 x i32] [i32 0, i32 0, i32 585, i32 4681, i32 37458, i32 37458, i32 37522, i32 38035], [8 x i32] [i32 0, i32 0, i32 585, i32 37450, i32 37522, i32 37522, i32 37522, i32 38035], [8 x i32] [i32 0, i32 0, i32 585, i32 37522, i32 38034, i32 38035, i32 42139, i32 38035], [8 x i32] [i32 0, i32 0, i32 4681, i32 37522, i32 42131, i32 74971, i32 75484, i32 75484], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 42131, i32 75484, i32 79588, i32 79588], [8 x i32] [i32 0, i32 0, i32 37458, i32 38035, i32 75484, i32 75484, i32 79588, i32 79588], [8 x i32] [i32 0, i32 0, i32 37522, i32 42139, i32 79588, i32 79588, i32 112421, i32 112420], [8 x i32] zeroinitializer]], [2 x [16 x [8 x i32]]] [[16 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1], [8 x i32] [i32 0, i32 0, i32 9, i32 9, i32 9, i32 9, i32 9, i32 9], [8 x i32] [i32 0, i32 0, i32 73, i32 73, i32 73, i32 73, i32 73, i32 73], [8 x i32] [i32 0, i32 0, i32 73, i32 73, i32 73, i32 585, i32 586, i32 586], [8 x i32] [i32 0, i32 0, i32 73, i32 585, i32 585, i32 585, i32 586, i32 4690], [8 x i32] [i32 0, i32 0, i32 585, i32 585, i32 585, i32 4682, i32 4690, i32 4690], [8 x i32] [i32 0, i32 0, i32 585, i32 585, i32 4682, i32 4682, i32 37522, i32 37522], [8 x i32] [i32 0, i32 0, i32 585, i32 4681, i32 4682, i32 37458, i32 37522, i32 37522], [8 x i32] [i32 0, i32 0, i32 585, i32 4681, i32 37458, i32 37522, i32 37522, i32 37522], [8 x i32] [i32 0, i32 0, i32 585, i32 4681, i32 37458, i32 37522, i32 38035, i32 38035], [8 x i32] [i32 0, i32 0, i32 585, i32 37450, i32 37458, i32 38035, i32 38035, i32 38035], [8 x i32] [i32 0, i32 0, i32 585, i32 37450, i32 37522, i32 38035, i32 38035, i32 38035], [8 x i32] [i32 0, i32 0, i32 585, i32 37458, i32 38034, i32 38035, i32 42139, i32 42139], [8 x i32] [i32 0, i32 0, i32 4681, i32 37522, i32 38034, i32 74971, i32 74971, i32 74971], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 42131, i32 75484, i32 75484, i32 75484], [8 x i32] zeroinitializer], [16 x [8 x i32]] [[8 x i32] zeroinitializer, [8 x i32] [i32 0, i32 0, i32 73, i32 9, i32 73, i32 9, i32 1, i32 0], [8 x i32] [i32 0, i32 0, i32 73, i32 73, i32 73, i32 73, i32 73, i32 0], [8 x i32] [i32 0, i32 0, i32 585, i32 73, i32 585, i32 73, i32 586, i32 1], [8 x i32] [i32 0, i32 0, i32 585, i32 585, i32 585, i32 585, i32 586, i32 1], [8 x i32] [i32 0, i32 0, i32 585, i32 585, i32 585, i32 585, i32 586, i32 1], [8 x i32] [i32 0, i32 0, i32 585, i32 585, i32 585, i32 585, i32 586, i32 9], [8 x i32] [i32 0, i32 0, i32 585, i32 585, i32 4682, i32 4682, i32 586, i32 9], [8 x i32] [i32 0, i32 0, i32 585, i32 585, i32 4682, i32 4682, i32 586, i32 9], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 4682, i32 37458, i32 4690, i32 73], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 4682, i32 37522, i32 4690, i32 73], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 4682, i32 37522, i32 4690, i32 73], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 37458, i32 37522, i32 4690, i32 586], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 37522, i32 37522, i32 4690, i32 586], [8 x i32] [i32 0, i32 0, i32 37450, i32 37450, i32 38034, i32 38035, i32 37522, i32 4690], [8 x i32] zeroinitializer]], [2 x [16 x [8 x i32]]] [[16 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 73, i32 73, i32 73, i32 73, i32 586, i32 586], [8 x i32] [i32 0, i32 0, i32 585, i32 585, i32 585, i32 4682, i32 4690, i32 37522], [8 x i32] [i32 0, i32 0, i32 585, i32 585, i32 4682, i32 37458, i32 37522, i32 37522], [8 x i32] [i32 0, i32 0, i32 585, i32 4681, i32 4682, i32 37522, i32 38035, i32 38035], [8 x i32] [i32 0, i32 0, i32 585, i32 4681, i32 37458, i32 38035, i32 38035, i32 42139], [8 x i32] [i32 0, i32 0, i32 585, i32 37450, i32 37522, i32 38035, i32 42139, i32 42139], [8 x i32] [i32 0, i32 0, i32 4681, i32 37450, i32 37522, i32 38035, i32 42139, i32 74971], [8 x i32] [i32 0, i32 0, i32 4681, i32 37458, i32 38034, i32 42139, i32 42139, i32 74971], [8 x i32] [i32 0, i32 0, i32 4681, i32 37522, i32 38034, i32 74971, i32 74971, i32 75484], [8 x i32] [i32 0, i32 0, i32 4681, i32 37522, i32 42131, i32 74971, i32 75484, i32 75484], [8 x i32] [i32 0, i32 0, i32 4681, i32 38035, i32 42131, i32 74971, i32 75484, i32 79588], [8 x i32] [i32 0, i32 0, i32 4681, i32 38035, i32 42131, i32 75484, i32 79588, i32 79588], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 74907, i32 75484, i32 79588, i32 79588], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 74971, i32 79588, i32 79588, i32 112420], [8 x i32] [i32 0, i32 0, i32 37458, i32 74971, i32 75484, i32 112420, i32 112421, i32 112933], [8 x i32] zeroinitializer], [16 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 73, i32 73, i32 73, i32 73, i32 73, i32 73], [8 x i32] [i32 0, i32 0, i32 585, i32 585, i32 585, i32 585, i32 586, i32 73], [8 x i32] [i32 0, i32 0, i32 4681, i32 585, i32 4682, i32 4682, i32 4690, i32 73], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 4682, i32 4682, i32 37522, i32 586], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 37458, i32 37522, i32 37522, i32 586], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 37458, i32 37522, i32 42139, i32 586], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 37522, i32 38035, i32 42139, i32 4690], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 37522, i32 38035, i32 42139, i32 4690], [8 x i32] [i32 0, i32 0, i32 4681, i32 37450, i32 38034, i32 42139, i32 42139, i32 4690], [8 x i32] [i32 0, i32 0, i32 4681, i32 37458, i32 38034, i32 42139, i32 42139, i32 37522], [8 x i32] [i32 0, i32 0, i32 4681, i32 37522, i32 38034, i32 42139, i32 42139, i32 37522], [8 x i32] [i32 0, i32 0, i32 4681, i32 38035, i32 42131, i32 42139, i32 42139, i32 37522], [8 x i32] [i32 0, i32 0, i32 4681, i32 38035, i32 42131, i32 42139, i32 42139, i32 38035], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 42131, i32 74971, i32 42139, i32 38035], [8 x i32] [i32 0, i32 0, i32 37458, i32 42139, i32 74907, i32 75484, i32 74971, i32 42139], [8 x i32] zeroinitializer]], [2 x [16 x [8 x i32]]] [[16 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 585, i32 585, i32 4682, i32 4682, i32 37522, i32 37522], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 37522, i32 38035, i32 42139, i32 42139], [8 x i32] [i32 0, i32 0, i32 4681, i32 37450, i32 38034, i32 42139, i32 42139, i32 74971], [8 x i32] [i32 0, i32 0, i32 4681, i32 37522, i32 38034, i32 74971, i32 75484, i32 75484], [8 x i32] [i32 0, i32 0, i32 4681, i32 38035, i32 42131, i32 74971, i32 75484, i32 75484], [8 x i32] [i32 0, i32 0, i32 4681, i32 38035, i32 42131, i32 75484, i32 79588, i32 79588], [8 x i32] [i32 0, i32 0, i32 4681, i32 38035, i32 42131, i32 75484, i32 79588, i32 112420], [8 x i32] [i32 0, i32 0, i32 4681, i32 38035, i32 74907, i32 75484, i32 79588, i32 112420], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 74907, i32 75484, i32 79588, i32 112420], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 74907, i32 79588, i32 112421, i32 112420], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 74971, i32 79588, i32 112421, i32 112933], [8 x i32] [i32 0, i32 0, i32 37522, i32 42139, i32 75484, i32 79588, i32 112941, i32 112933], [8 x i32] [i32 0, i32 0, i32 37522, i32 42139, i32 75484, i32 112420, i32 112941, i32 117037], [8 x i32] [i32 0, i32 0, i32 38034, i32 74971, i32 75484, i32 112420, i32 117102, i32 117037], [8 x i32] [i32 0, i32 0, i32 42130, i32 75483, i32 79588, i32 112933, i32 154550, i32 150391], [8 x i32] zeroinitializer], [16 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 4681, i32 585, i32 4682, i32 4682, i32 4690, i32 4690], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 37458, i32 37522, i32 37522, i32 4690], [8 x i32] [i32 0, i32 0, i32 4681, i32 37450, i32 38034, i32 38035, i32 42139, i32 4690], [8 x i32] [i32 0, i32 0, i32 4681, i32 37458, i32 38034, i32 42139, i32 42139, i32 37522], [8 x i32] [i32 0, i32 0, i32 4681, i32 37522, i32 38034, i32 42139, i32 42139, i32 37522], [8 x i32] [i32 0, i32 0, i32 4681, i32 38035, i32 42131, i32 42139, i32 75484, i32 37522], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 42131, i32 42139, i32 75484, i32 38035], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 42131, i32 42139, i32 75484, i32 38035], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 42131, i32 74971, i32 75484, i32 38035], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 42131, i32 74971, i32 75484, i32 42139], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 42131, i32 74971, i32 75484, i32 42139], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 74907, i32 75484, i32 75484, i32 42139], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 74971, i32 79588, i32 75484, i32 74971], [8 x i32] [i32 0, i32 0, i32 38034, i32 42139, i32 79588, i32 79588, i32 75484, i32 74971], [8 x i32] [i32 0, i32 0, i32 42130, i32 74971, i32 112420, i32 112420, i32 79588, i32 75484], [8 x i32] zeroinitializer]], [2 x [16 x [8 x i32]]] [[16 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 73, i32 73, i32 73, i32 73, i32 73, i32 73], [8 x i32] [i32 0, i32 0, i32 585, i32 73, i32 585, i32 585, i32 586, i32 73], [8 x i32] [i32 0, i32 0, i32 585, i32 585, i32 4682, i32 37458, i32 4690, i32 586], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 37458, i32 37522, i32 38035, i32 4690], [8 x i32] [i32 0, i32 0, i32 4681, i32 37450, i32 37522, i32 38035, i32 38035, i32 4690], [8 x i32] [i32 0, i32 0, i32 4681, i32 37522, i32 38034, i32 42139, i32 42139, i32 37522], [8 x i32] [i32 0, i32 0, i32 4681, i32 38035, i32 42131, i32 74971, i32 74971, i32 38035], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 42131, i32 74971, i32 75484, i32 42139], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 42131, i32 74971, i32 75484, i32 42139], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 74907, i32 75484, i32 75484, i32 74971], [8 x i32] [i32 0, i32 0, i32 37458, i32 38035, i32 74971, i32 79588, i32 79588, i32 75484], [8 x i32] [i32 0, i32 0, i32 37458, i32 42139, i32 74971, i32 79588, i32 79588, i32 75484], [8 x i32] [i32 0, i32 0, i32 37522, i32 42139, i32 75484, i32 79588, i32 79588, i32 79588], [8 x i32] [i32 0, i32 0, i32 38034, i32 42139, i32 75484, i32 112420, i32 112421, i32 112420], [8 x i32] [i32 0, i32 0, i32 42130, i32 74971, i32 79588, i32 112933, i32 112941, i32 112933], [8 x i32] zeroinitializer], [16 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 585, i32 73, i32 9, i32 9, i32 9, i32 9], [8 x i32] [i32 0, i32 0, i32 585, i32 585, i32 73, i32 73, i32 9, i32 9], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 4682, i32 585, i32 73, i32 73], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 4682, i32 4682, i32 73, i32 73], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 37458, i32 4682, i32 586, i32 586], [8 x i32] [i32 0, i32 0, i32 4681, i32 37450, i32 37458, i32 4682, i32 586, i32 586], [8 x i32] [i32 0, i32 0, i32 4681, i32 37522, i32 38034, i32 37458, i32 4690, i32 4690], [8 x i32] [i32 0, i32 0, i32 4681, i32 38035, i32 42131, i32 37522, i32 37522, i32 4690], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 42131, i32 37522, i32 37522, i32 37522], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 42131, i32 38035, i32 38035, i32 37522], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 42131, i32 42139, i32 38035, i32 38035], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 42131, i32 42139, i32 42139, i32 38035], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 74907, i32 74971, i32 42139, i32 42139], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 79588, i32 75484, i32 74971, i32 42139], [8 x i32] [i32 0, i32 0, i32 37458, i32 74971, i32 112420, i32 79588, i32 75484, i32 74971], [8 x i32] zeroinitializer]], [2 x [16 x [8 x i32]]] [[16 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 585, i32 585, i32 585, i32 585, i32 4690, i32 4690], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 37458, i32 37522, i32 37522, i32 4690], [8 x i32] [i32 0, i32 0, i32 4681, i32 37450, i32 38034, i32 42139, i32 42139, i32 37522], [8 x i32] [i32 0, i32 0, i32 4681, i32 38035, i32 42131, i32 42139, i32 74971, i32 38035], [8 x i32] [i32 0, i32 0, i32 4681, i32 38035, i32 42131, i32 74971, i32 75484, i32 38035], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 42131, i32 75484, i32 75484, i32 42139], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 74907, i32 75484, i32 79588, i32 74971], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 75484, i32 79588, i32 79588, i32 75484], [8 x i32] [i32 0, i32 0, i32 37522, i32 42139, i32 75484, i32 79588, i32 79588, i32 75484], [8 x i32] [i32 0, i32 0, i32 37522, i32 42139, i32 75484, i32 112420, i32 112421, i32 79588], [8 x i32] [i32 0, i32 0, i32 37522, i32 42139, i32 79588, i32 112420, i32 112941, i32 112420], [8 x i32] [i32 0, i32 0, i32 38034, i32 42139, i32 79588, i32 112420, i32 112941, i32 112420], [8 x i32] [i32 0, i32 0, i32 38034, i32 74971, i32 79588, i32 112933, i32 117102, i32 112933], [8 x i32] [i32 0, i32 0, i32 38034, i32 74971, i32 112420, i32 112933, i32 117102, i32 117037], [8 x i32] [i32 0, i32 0, i32 42130, i32 75483, i32 117028, i32 149869, i32 154550, i32 150391], [8 x i32] zeroinitializer], [16 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 4681, i32 585, i32 585, i32 585, i32 586, i32 586], [8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 4682, i32 4682, i32 586, i32 586], [8 x i32] [i32 0, i32 0, i32 4681, i32 37450, i32 37458, i32 37458, i32 586, i32 586], [8 x i32] [i32 0, i32 0, i32 4681, i32 37522, i32 38034, i32 42139, i32 4690, i32 4690], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 42131, i32 42139, i32 4690, i32 4690], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 42131, i32 42139, i32 37522, i32 4690], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 42131, i32 42139, i32 37522, i32 37522], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 42131, i32 42139, i32 38035, i32 37522], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 74907, i32 74971, i32 38035, i32 37522], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 74907, i32 74971, i32 38035, i32 38035], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 74971, i32 74971, i32 42139, i32 38035], [8 x i32] [i32 0, i32 0, i32 37450, i32 74971, i32 75484, i32 75484, i32 42139, i32 38035], [8 x i32] [i32 0, i32 0, i32 37450, i32 74971, i32 79588, i32 75484, i32 74971, i32 42139], [8 x i32] [i32 0, i32 0, i32 37522, i32 74971, i32 79588, i32 75484, i32 74971, i32 42139], [8 x i32] [i32 0, i32 0, i32 38034, i32 75483, i32 112420, i32 79588, i32 75484, i32 74971], [8 x i32] zeroinitializer]], [2 x [16 x [8 x i32]]] [[16 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 37458, i32 37522, i32 38035, i32 38035], [8 x i32] [i32 0, i32 0, i32 4681, i32 37522, i32 42131, i32 42139, i32 42139, i32 38035], [8 x i32] [i32 0, i32 0, i32 4681, i32 38035, i32 42131, i32 74971, i32 74971, i32 42139], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 42131, i32 75484, i32 75484, i32 42139], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 74907, i32 75484, i32 79588, i32 74971], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 75484, i32 79588, i32 79588, i32 75484], [8 x i32] [i32 0, i32 0, i32 37522, i32 42139, i32 75484, i32 112420, i32 112421, i32 75484], [8 x i32] [i32 0, i32 0, i32 37522, i32 42139, i32 79588, i32 112420, i32 112941, i32 79588], [8 x i32] [i32 0, i32 0, i32 38034, i32 42139, i32 79588, i32 112420, i32 112941, i32 112420], [8 x i32] [i32 0, i32 0, i32 38034, i32 74971, i32 79588, i32 112420, i32 112941, i32 112420], [8 x i32] [i32 0, i32 0, i32 38034, i32 74971, i32 79588, i32 112933, i32 112941, i32 112933], [8 x i32] [i32 0, i32 0, i32 38034, i32 74971, i32 112420, i32 112933, i32 117102, i32 117037], [8 x i32] [i32 0, i32 0, i32 42130, i32 74971, i32 112420, i32 117037, i32 117102, i32 117037], [8 x i32] [i32 0, i32 0, i32 42130, i32 74971, i32 112420, i32 117037, i32 150390, i32 149870], [8 x i32] [i32 0, i32 0, i32 74898, i32 75483, i32 117028, i32 150381, i32 187830, i32 154559], [8 x i32] zeroinitializer], [16 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 4682, i32 4682, i32 4690, i32 4690], [8 x i32] [i32 0, i32 0, i32 4681, i32 37522, i32 38034, i32 37458, i32 4690, i32 4690], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 42131, i32 37522, i32 4690, i32 4690], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 42131, i32 42139, i32 37522, i32 37522], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 42131, i32 42139, i32 37522, i32 37522], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 74907, i32 42139, i32 38035, i32 37522], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 74971, i32 74971, i32 38035, i32 38035], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 74971, i32 74971, i32 42139, i32 38035], [8 x i32] [i32 0, i32 0, i32 37450, i32 74971, i32 75484, i32 74971, i32 42139, i32 38035], [8 x i32] [i32 0, i32 0, i32 37450, i32 74971, i32 75484, i32 75484, i32 42139, i32 42139], [8 x i32] [i32 0, i32 0, i32 37450, i32 74971, i32 79588, i32 75484, i32 74971, i32 42139], [8 x i32] [i32 0, i32 0, i32 38034, i32 75483, i32 79588, i32 75484, i32 74971, i32 42139], [8 x i32] [i32 0, i32 0, i32 38034, i32 75483, i32 112420, i32 79588, i32 75484, i32 74971], [8 x i32] [i32 0, i32 0, i32 38034, i32 75483, i32 112420, i32 79588, i32 75484, i32 74971], [8 x i32] [i32 0, i32 0, i32 42130, i32 79579, i32 117028, i32 112420, i32 79588, i32 75484], [8 x i32] zeroinitializer]], [2 x [16 x [8 x i32]]] [[16 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 37458, i32 37522, i32 38035, i32 38035], [8 x i32] [i32 0, i32 0, i32 4681, i32 38035, i32 42131, i32 74971, i32 75484, i32 38035], [8 x i32] [i32 0, i32 0, i32 4681, i32 42139, i32 74907, i32 75484, i32 75484, i32 42139], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 74907, i32 75484, i32 79588, i32 42139], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 75484, i32 79588, i32 112421, i32 74971], [8 x i32] [i32 0, i32 0, i32 37522, i32 42139, i32 79588, i32 112420, i32 112421, i32 75484], [8 x i32] [i32 0, i32 0, i32 37522, i32 74971, i32 79588, i32 112420, i32 112421, i32 75484], [8 x i32] [i32 0, i32 0, i32 38034, i32 74971, i32 79588, i32 112420, i32 117102, i32 79588], [8 x i32] [i32 0, i32 0, i32 38034, i32 74971, i32 79588, i32 117037, i32 117102, i32 112420], [8 x i32] [i32 0, i32 0, i32 42130, i32 74971, i32 79588, i32 117037, i32 117102, i32 112420], [8 x i32] [i32 0, i32 0, i32 42130, i32 74971, i32 112420, i32 117037, i32 117102, i32 112933], [8 x i32] [i32 0, i32 0, i32 42130, i32 75483, i32 112420, i32 117037, i32 150390, i32 117037], [8 x i32] [i32 0, i32 0, i32 42130, i32 75483, i32 112932, i32 117037, i32 150390, i32 117037], [8 x i32] [i32 0, i32 0, i32 42130, i32 75483, i32 112932, i32 117037, i32 150390, i32 149870], [8 x i32] [i32 0, i32 0, i32 74898, i32 79579, i32 149796, i32 150381, i32 187830, i32 154559], [8 x i32] zeroinitializer], [16 x [8 x i32]] [[8 x i32] [i32 0, i32 0, i32 4681, i32 4681, i32 4682, i32 4682, i32 4690, i32 4690], [8 x i32] [i32 0, i32 0, i32 37450, i32 38035, i32 38034, i32 37522, i32 4690, i32 4690], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 42131, i32 42139, i32 4690, i32 4690], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 42131, i32 42139, i32 37522, i32 37522], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 42131, i32 42139, i32 37522, i32 37522], [8 x i32] [i32 0, i32 0, i32 37450, i32 42139, i32 75484, i32 42139, i32 38035, i32 37522], [8 x i32] [i32 0, i32 0, i32 37450, i32 74971, i32 75484, i32 74971, i32 38035, i32 38035], [8 x i32] [i32 0, i32 0, i32 37450, i32 74971, i32 79588, i32 74971, i32 42139, i32 38035], [8 x i32] [i32 0, i32 0, i32 37450, i32 79579, i32 112420, i32 74971, i32 42139, i32 38035], [8 x i32] [i32 0, i32 0, i32 37450, i32 79579, i32 112420, i32 75484, i32 42139, i32 42139], [8 x i32] [i32 0, i32 0, i32 37522, i32 79579, i32 112420, i32 75484, i32 74971, i32 42139], [8 x i32] [i32 0, i32 0, i32 38034, i32 79579, i32 112420, i32 75484, i32 74971, i32 42139], [8 x i32] [i32 0, i32 0, i32 42130, i32 79579, i32 112420, i32 79588, i32 75484, i32 74971], [8 x i32] [i32 0, i32 0, i32 42130, i32 79579, i32 112420, i32 79588, i32 75484, i32 74971], [8 x i32] [i32 0, i32 0, i32 74898, i32 112347, i32 117028, i32 112420, i32 79588, i32 75484], [8 x i32] zeroinitializer]]], [2048 x i8] zeroinitializer }, align 32
@___asan_gen_.1 = private unnamed_addr constant [17 x i8] c"Kiara_fps_vector\00", align 1
@___asan_gen_.3 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 32, i32 20 }
@___asan_gen_.4 = private unnamed_addr constant [12 x i8] c"Kiara_table\00", align 1
@___asan_gen_.6 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 34, i32 32 }
@___asan_gen_.7 = private unnamed_addr constant [14 x i8] c"KiaraRomTable\00", align 1
@___asan_gen_.8 = private constant [37 x i8] c"../drivers/media/usb/pwc/pwc-kiara.c\00", align 1
@___asan_gen_.9 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.8, i32 317, i32 20 }
@llvm.compiler.used = appending global [3 x ptr] [ptr @Kiara_fps_vector, ptr @Kiara_table, ptr @KiaraRomTable], section "llvm.metadata"
@0 = internal global [3 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Kiara_fps_vector to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.1 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.3 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @Kiara_table to i32), i32 2592, i32 3232, i32 ptrtoint (ptr @___asan_gen_.4 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.6 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @KiaraRomTable to i32), i32 8192, i32 10240, i32 ptrtoint (ptr @___asan_gen_.7 to i32), i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 0 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #0 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #0 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 3)
  ret void
}

attributes #0 = { nounwind uwtable(sync) "frame-pointer"="all" }

!llvm.asan.globals = !{!0, !2, !4}
!llvm.module.flags = !{!6, !7, !8, !9, !10, !11, !12, !13}
!llvm.ident = !{!14}

!0 = !{ptr @Kiara_fps_vector, !1, !"Kiara_fps_vector", i1 false, i1 false}
!1 = !{!"../drivers/media/usb/pwc/pwc-kiara.c", i32 32, i32 20}
!2 = !{ptr @Kiara_table, !3, !"Kiara_table", i1 false, i1 false}
!3 = !{!"../drivers/media/usb/pwc/pwc-kiara.c", i32 34, i32 32}
!4 = !{ptr @KiaraRomTable, !5, !"KiaraRomTable", i1 false, i1 false}
!5 = !{!"../drivers/media/usb/pwc/pwc-kiara.c", i32 317, i32 20}
!6 = !{i32 1, !"wchar_size", i32 2}
!7 = !{i32 1, !"min_enum_size", i32 4}
!8 = !{i32 8, !"branch-target-enforcement", i32 0}
!9 = !{i32 8, !"sign-return-address", i32 0}
!10 = !{i32 8, !"sign-return-address-all", i32 0}
!11 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!12 = !{i32 7, !"uwtable", i32 1}
!13 = !{i32 7, !"frame-pointer", i32 2}
!14 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
