; ModuleID = '/llk/IR_all_yes/fs/nls/nls_cp862.c_pt.bc'
source_filename = "../fs/nls/nls_cp862.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@table = internal global { %struct.nls_table, [32 x i8] } { %struct.nls_table { ptr @.str, ptr null, ptr @uni2char, ptr @char2uni, ptr @charset2lower, ptr @charset2upper, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_nls_cp862__106_418_init_nls_cp8626 = internal global ptr @init_nls_cp862, section ".initcall6.init", align 4
@__exitcall_exit_nls_cp862 = internal global ptr @exit_nls_cp862, section ".exitcall.exit", align 4
@__UNIQUE_ID_file107 = internal constant [32 x i8] c"nls_cp862.file=fs/nls/nls_cp862\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [31 x i8] c"nls_cp862.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cp862\00", [26 x i8] zeroinitializer }, align 32
@charset2lower = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@abcdefghijklmnopqrstuvwxyz[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\A0\A1\A2\A3\A4\A4\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\E0\E1\00\E3\E5\E5\E6\E7\ED\00\00\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", [64 x i8] zeroinitializer }, align 32
@charset2upper = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`ABCDEFGHIJKLMNOPQRSTUVWXYZ{|}~\7F\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\00\00\00\00\00\A5\A5\A6\A7\A8\A9\AA\AB\AC\AD\AE\AF\B0\B1\B2\B3\B4\B5\B6\B7\B8\B9\BA\BB\BC\BD\BE\BF\C0\C1\C2\C3\C4\C5\C6\C7\C8\C9\CA\CB\CC\CD\CE\CF\D0\D1\D2\D3\D4\D5\D6\D7\D8\D9\DA\DB\DC\DD\DE\DF\00\E1\E2\00\E4\E4\00\00\E8\E9\EA\00\EC\E8\00\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\FF", [64 x i8] zeroinitializer }, align 32
@page00 = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF\AD\9B\9C\00\9D\00\00\00\00\A6\AE\AA\00\00\00\F8\F1\FD\00\00\E6\00\FA\00\00\A7\AF\AC\AB\00\A8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\A5\00\00\00\00\00\00\00\00\00\00\00\00\00\E1\00\A0\00\00\00\00\00\00\00\00\00\00\00\A1\00\00\00\A4\00\A2\00\00\00\F6\00\00\A3\00\00\00\00\00", [64 x i8] zeroinitializer }, align 32
@page_uni2charset = internal constant { <{ [38 x ptr], [218 x ptr] }>, [256 x i8] } { <{ [38 x ptr], [218 x ptr] }> <{ [38 x ptr] [ptr @page00, ptr @page01, ptr null, ptr @page03, ptr null, ptr @page05, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @page20, ptr null, ptr @page22, ptr @page23, ptr null, ptr @page25], [218 x ptr] zeroinitializer }>, [256 x i8] zeroinitializer }, align 32
@page01 = internal constant { <{ [147 x i8], [109 x i8] }>, [64 x i8] } { <{ [147 x i8], [109 x i8] }> <{ [147 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\9F", [109 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page03 = internal constant { <{ [199 x i8], [57 x i8] }>, [64 x i8] } { <{ [199 x i8], [57 x i8] }> <{ [199 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\E2\00\00\00\00\E9\00\00\00\00\00\00\00\00\00\00\E4\00\00\E8\00\00\EA\00\00\00\00\00\00\00\E0\00\00\EB\EE\00\00\00\00\00\00\00\00\00\00\E3\00\00\E5\E7\00\ED", [57 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page05 = internal constant { <{ [235 x i8], [21 x i8] }>, [64 x i8] } { <{ [235 x i8], [21 x i8] }> <{ [235 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A", [21 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page20 = internal constant { <{ [168 x i8], [88 x i8] }>, [64 x i8] } { <{ [168 x i8], [88 x i8] }> <{ [168 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FC\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\9E", [88 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page22 = internal constant { <{ [102 x i8], [154 x i8] }>, [64 x i8] } { <{ [102 x i8], [154 x i8] }> <{ [102 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F9\FB\00\00\00\EC\00\00\00\00\00\00\00\00\00\00\EF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F7\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F0\00\00\F3\F2", [154 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page23 = internal constant { <{ [34 x i8], [222 x i8] }>, [64 x i8] } { <{ [34 x i8], [222 x i8] }> <{ [34 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\A9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F4\F5", [222 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page25 = internal constant { <{ [161 x i8], [95 x i8] }>, [64 x i8] } { <{ [161 x i8], [95 x i8] }> <{ [161 x i8] c"\C4\00\B3\00\00\00\00\00\00\00\00\00\DA\00\00\00\BF\00\00\00\C0\00\00\00\D9\00\00\00\C3\00\00\00\00\00\00\00\B4\00\00\00\00\00\00\00\C2\00\00\00\00\00\00\00\C1\00\00\00\00\00\00\00\C5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\CD\BA\D5\D6\C9\B8\B7\BB\D4\D3\C8\BE\BD\BC\C6\C7\CC\B5\B6\B9\D1\D2\CB\CF\D0\CA\D8\D7\CE\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\DF\00\00\00\DC\00\00\00\DB\00\00\00\DD\00\00\00\DE\B0\B1\B2\00\00\00\00\00\00\00\00\00\00\00\00\FE", [95 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@charset2uni = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127, i16 1488, i16 1489, i16 1490, i16 1491, i16 1492, i16 1493, i16 1494, i16 1495, i16 1496, i16 1497, i16 1498, i16 1499, i16 1500, i16 1501, i16 1502, i16 1503, i16 1504, i16 1505, i16 1506, i16 1507, i16 1508, i16 1509, i16 1510, i16 1511, i16 1512, i16 1513, i16 1514, i16 162, i16 163, i16 165, i16 8359, i16 402, i16 225, i16 237, i16 243, i16 250, i16 241, i16 209, i16 170, i16 186, i16 191, i16 8976, i16 172, i16 189, i16 188, i16 161, i16 171, i16 187, i16 9617, i16 9618, i16 9619, i16 9474, i16 9508, i16 9569, i16 9570, i16 9558, i16 9557, i16 9571, i16 9553, i16 9559, i16 9565, i16 9564, i16 9563, i16 9488, i16 9492, i16 9524, i16 9516, i16 9500, i16 9472, i16 9532, i16 9566, i16 9567, i16 9562, i16 9556, i16 9577, i16 9574, i16 9568, i16 9552, i16 9580, i16 9575, i16 9576, i16 9572, i16 9573, i16 9561, i16 9560, i16 9554, i16 9555, i16 9579, i16 9578, i16 9496, i16 9484, i16 9608, i16 9604, i16 9612, i16 9616, i16 9600, i16 945, i16 223, i16 915, i16 960, i16 931, i16 963, i16 181, i16 964, i16 934, i16 920, i16 937, i16 948, i16 8734, i16 966, i16 949, i16 8745, i16 8801, i16 177, i16 8805, i16 8804, i16 8992, i16 8993, i16 247, i16 8776, i16 176, i16 8729, i16 183, i16 8730, i16 8319, i16 178, i16 9632, i16 160], [128 x i8] zeroinitializer }, align 32
@___asan_gen_.9 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@___asan_gen_.11 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 400, i32 25 }
@___asan_gen_.12 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.14 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 401, i32 13 }
@___asan_gen_.15 = private unnamed_addr constant [14 x i8] c"charset2lower\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 303, i32 28 }
@___asan_gen_.18 = private unnamed_addr constant [14 x i8] c"charset2upper\00", align 1
@___asan_gen_.20 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 339, i32 28 }
@___asan_gen_.21 = private unnamed_addr constant [7 x i8] c"page00\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 99, i32 28 }
@___asan_gen_.24 = private unnamed_addr constant [17 x i8] c"page_uni2charset\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 295, i32 35 }
@___asan_gen_.27 = private unnamed_addr constant [7 x i8] c"page01\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 135, i32 28 }
@___asan_gen_.30 = private unnamed_addr constant [7 x i8] c"page03\00", align 1
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 158, i32 28 }
@___asan_gen_.33 = private unnamed_addr constant [7 x i8] c"page05\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 187, i32 28 }
@___asan_gen_.36 = private unnamed_addr constant [7 x i8] c"page20\00", align 1
@___asan_gen_.38 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 221, i32 28 }
@___asan_gen_.39 = private unnamed_addr constant [7 x i8] c"page22\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 246, i32 28 }
@___asan_gen_.42 = private unnamed_addr constant [7 x i8] c"page23\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 262, i32 28 }
@___asan_gen_.45 = private unnamed_addr constant [7 x i8] c"page25\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 270, i32 28 }
@___asan_gen_.48 = private unnamed_addr constant [12 x i8] c"charset2uni\00", align 1
@___asan_gen_.49 = private constant [22 x i8] c"../fs/nls/nls_cp862.c\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.49, i32 16, i32 22 }
@llvm.compiler.used = appending global [19 x ptr] [ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__exitcall_exit_nls_cp862, ptr @__initcall__kmod_nls_cp862__106_418_init_nls_cp8626, ptr @exit_nls_cp862, ptr @table, ptr @.str, ptr @charset2lower, ptr @charset2upper, ptr @page00, ptr @page_uni2charset, ptr @page01, ptr @page03, ptr @page05, ptr @page20, ptr @page22, ptr @page23, ptr @page25, ptr @charset2uni], section "llvm.metadata"
@0 = internal global [14 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.9 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.12 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charset2lower to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charset2upper to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page00 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_uni2charset to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page01 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page03 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page05 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page20 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page22 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page23 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page25 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charset2uni to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_nls_cp862() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @unregister_nls(ptr noundef nonnull @table) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_nls_cp862() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__register_nls(ptr noundef nonnull @table, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @uni2char(i16 noundef zeroext %uni, ptr nocapture noundef writeonly %out, i32 noundef %boundlen) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %boundlen)
  %cmp = icmp slt i32 %boundlen, 1
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = lshr i16 %uni, 8
  %conv4 = zext i16 %0 to i32
  %arrayidx = getelementptr [256 x ptr], ptr @page_uni2charset, i32 0, i32 %conv4
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %land.lhs.true

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end
  %3 = and i16 %uni, 255
  %idxprom6 = zext i16 %3 to i32
  %arrayidx7 = getelementptr i8, ptr %2, i32 %idxprom6
  %4 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx7, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool9.not = icmp eq i8 %5, 0
  br i1 %tobool9.not, label %land.lhs.true.cleanup_crit_edge, label %if.then10

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #6
  %6 = ptrtoint ptr %out to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %5, ptr %out, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.then10, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then10 ], [ -36, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @char2uni(ptr nocapture noundef readonly %rawstring, i32 noundef %boundlen, ptr nocapture noundef writeonly %uni) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %rawstring to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %rawstring, align 1
  %idxprom = zext i8 %1 to i32
  %arrayidx = getelementptr [256 x i16], ptr @charset2uni, i32 0, i32 %idxprom
  %2 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %arrayidx, align 2
  %4 = ptrtoint ptr %uni to i32
  call void @__asan_store2_noabort(i32 %4)
  store i16 %3, ptr %uni, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %cmp = icmp eq i8 %1, 0
  %. = select i1 %cmp, i32 -22, i32 1
  ret i32 %.
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__register_nls(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 14)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @__initcall__kmod_nls_cp862__106_418_init_nls_cp8626, !1, !"__initcall__kmod_nls_cp862__106_418_init_nls_cp8626", i1 false, i1 false}
!1 = !{!"../fs/nls/nls_cp862.c", i32 418, i32 1}
!2 = !{ptr @__exitcall_exit_nls_cp862, !3, !"__exitcall_exit_nls_cp862", i1 false, i1 false}
!3 = !{!"../fs/nls/nls_cp862.c", i32 419, i32 1}
!4 = !{ptr @__UNIQUE_ID_file107, !5, !"__UNIQUE_ID_file107", i1 false, i1 false}
!5 = !{!"../fs/nls/nls_cp862.c", i32 421, i32 1}
!6 = !{ptr @__UNIQUE_ID_license108, !5, !"__UNIQUE_ID_license108", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/nls/nls_cp862.c", i32 401, i32 13}
!9 = !{ptr @table, !10, !"table", i1 false, i1 false}
!10 = !{!"../fs/nls/nls_cp862.c", i32 400, i32 25}
!11 = !{ptr @page_uni2charset, !12, !"page_uni2charset", i1 false, i1 false}
!12 = !{!"../fs/nls/nls_cp862.c", i32 295, i32 35}
!13 = !{ptr @page00, !14, !"page00", i1 false, i1 false}
!14 = !{!"../fs/nls/nls_cp862.c", i32 99, i32 28}
!15 = !{ptr @page01, !16, !"page01", i1 false, i1 false}
!16 = !{!"../fs/nls/nls_cp862.c", i32 135, i32 28}
!17 = !{ptr @page03, !18, !"page03", i1 false, i1 false}
!18 = !{!"../fs/nls/nls_cp862.c", i32 158, i32 28}
!19 = !{ptr @page05, !20, !"page05", i1 false, i1 false}
!20 = !{!"../fs/nls/nls_cp862.c", i32 187, i32 28}
!21 = !{ptr @page20, !22, !"page20", i1 false, i1 false}
!22 = !{!"../fs/nls/nls_cp862.c", i32 221, i32 28}
!23 = !{ptr @page22, !24, !"page22", i1 false, i1 false}
!24 = !{!"../fs/nls/nls_cp862.c", i32 246, i32 28}
!25 = !{ptr @page23, !26, !"page23", i1 false, i1 false}
!26 = !{!"../fs/nls/nls_cp862.c", i32 262, i32 28}
!27 = !{ptr @page25, !28, !"page25", i1 false, i1 false}
!28 = !{!"../fs/nls/nls_cp862.c", i32 270, i32 28}
!29 = !{ptr @charset2uni, !30, !"charset2uni", i1 false, i1 false}
!30 = !{!"../fs/nls/nls_cp862.c", i32 16, i32 22}
!31 = !{ptr @charset2lower, !32, !"charset2lower", i1 false, i1 false}
!32 = !{!"../fs/nls/nls_cp862.c", i32 303, i32 28}
!33 = !{ptr @charset2upper, !34, !"charset2upper", i1 false, i1 false}
!34 = !{!"../fs/nls/nls_cp862.c", i32 339, i32 28}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
