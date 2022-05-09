; ModuleID = '/llk/IR_all_yes/fs/nls/mac-cyrillic.c_pt.bc'
source_filename = "../fs/nls/mac-cyrillic.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@table = internal global { %struct.nls_table, [32 x i8] } { %struct.nls_table { ptr @.str, ptr null, ptr @uni2char, ptr @char2uni, ptr @charset2lower, ptr @charset2upper, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_mac_cyrillic__106_493_init_nls_maccyrillic6 = internal global ptr @init_nls_maccyrillic, section ".initcall6.init", align 4
@__exitcall_exit_nls_maccyrillic = internal global ptr @exit_nls_maccyrillic, section ".exitcall.exit", align 4
@__UNIQUE_ID_file107 = internal constant [38 x i8] c"mac_cyrillic.file=fs/nls/mac-cyrillic\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [34 x i8] c"mac_cyrillic.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"maccyrillic\00", [20 x i8] zeroinitializer }, align 32
@charset2lower = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [64 x i8] zeroinitializer }, align 32
@charset2upper = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [64 x i8] zeroinitializer }, align 32
@page_uni2charset = internal constant { <{ [35 x ptr], [221 x ptr] }>, [256 x i8] } { <{ [35 x ptr], [221 x ptr] }> <{ [35 x ptr] [ptr @page00, ptr @page01, ptr null, ptr null, ptr @page04, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @page20, ptr @page21, ptr @page22], [221 x ptr] zeroinitializer }>, [256 x i8] zeroinitializer }, align 32
@page00 = internal constant { <{ [248 x i8], [8 x i8] }>, [64 x i8] } { <{ [248 x i8], [8 x i8] }> <{ [248 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\CA\00\00\A3\00\00\00\A4\00\A9\00\C7\C2\00\A8\00\A1\B1\00\00\00\B5\A6\00\00\00\00\C8\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\D6", [8 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page01 = internal constant { <{ [147 x i8], [109 x i8] }>, [64 x i8] } { <{ [147 x i8], [109 x i8] }> <{ [147 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C4", [109 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page04 = internal constant { <{ [146 x i8], [110 x i8] }>, [64 x i8] } { <{ [146 x i8], [110 x i8] }> <{ [146 x i8] c"\00\DD\AB\AE\B8\C1\A7\BA\B7\BC\BE\CB\CD\00\D8\DA\80\81\82\83\84\85\86\87\88\89\8A\8B\8C\8D\8E\8F\90\91\92\93\94\95\96\97\98\99\9A\9B\9C\9D\9E\9F\E0\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\EB\EC\ED\EE\EF\F0\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA\FB\FC\FD\FE\DF\00\DE\AC\AF\B9\CF\B4\BB\C0\BD\BF\CC\CE\00\D9\DB\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\A2\B6", [110 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page20 = internal constant { <{ [173 x i8], [83 x i8] }>, [64 x i8] } { <{ [173 x i8], [83 x i8] }> <{ [173 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\D0\D1\00\00\00\D4\D5\00\00\D2\D3\D7\00\A0\00\A5\00\00\00\C9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\FF", [83 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page21 = internal constant { <{ [35 x i8], [221 x i8] }>, [64 x i8] } { <{ [35 x i8], [221 x i8] }> <{ [35 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\DC\00\00\00\00\00\00\00\00\00\00\00\AA", [221 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page22 = internal constant { <{ [102 x i8], [154 x i8] }>, [64 x i8] } { <{ [102 x i8], [154 x i8] }> <{ [102 x i8] c"\00\00\00\00\00\00\C6\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C3\00\00\00\B0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\AD\00\00\00\B2\B3", [154 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@charset2uni = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127, i16 1040, i16 1041, i16 1042, i16 1043, i16 1044, i16 1045, i16 1046, i16 1047, i16 1048, i16 1049, i16 1050, i16 1051, i16 1052, i16 1053, i16 1054, i16 1055, i16 1056, i16 1057, i16 1058, i16 1059, i16 1060, i16 1061, i16 1062, i16 1063, i16 1064, i16 1065, i16 1066, i16 1067, i16 1068, i16 1069, i16 1070, i16 1071, i16 8224, i16 176, i16 1168, i16 163, i16 167, i16 8226, i16 182, i16 1030, i16 174, i16 169, i16 8482, i16 1026, i16 1106, i16 8800, i16 1027, i16 1107, i16 8734, i16 177, i16 8804, i16 8805, i16 1110, i16 181, i16 1169, i16 1032, i16 1028, i16 1108, i16 1031, i16 1111, i16 1033, i16 1113, i16 1034, i16 1114, i16 1112, i16 1029, i16 172, i16 8730, i16 402, i16 8776, i16 8710, i16 171, i16 187, i16 8230, i16 160, i16 1035, i16 1115, i16 1036, i16 1116, i16 1109, i16 8211, i16 8212, i16 8220, i16 8221, i16 8216, i16 8217, i16 247, i16 8222, i16 1038, i16 1118, i16 1039, i16 1119, i16 8470, i16 1025, i16 1105, i16 1103, i16 1072, i16 1073, i16 1074, i16 1075, i16 1076, i16 1077, i16 1078, i16 1079, i16 1080, i16 1081, i16 1082, i16 1083, i16 1084, i16 1085, i16 1086, i16 1087, i16 1088, i16 1089, i16 1090, i16 1091, i16 1092, i16 1093, i16 1094, i16 1095, i16 1096, i16 1097, i16 1098, i16 1099, i16 1100, i16 1101, i16 1102, i16 8364], [128 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 475, i32 25 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 476, i32 13 }
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"charset2lower\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 380, i32 28 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"charset2upper\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 415, i32 28 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"page_uni2charset\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 345, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"page00\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 135, i32 28 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"page01\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 170, i32 28 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"page04\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 205, i32 28 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"page20\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 240, i32 28 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"page21\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 275, i32 28 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"page22\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 310, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant [12 x i8] c"charset2uni\00", align 1
@___asan_gen_.42 = private constant [25 x i8] c"../fs/nls/mac-cyrillic.c\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.42, i32 52, i32 22 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__exitcall_exit_nls_maccyrillic, ptr @__initcall__kmod_mac_cyrillic__106_493_init_nls_maccyrillic6, ptr @exit_nls_maccyrillic, ptr @table, ptr @.str, ptr @charset2lower, ptr @charset2upper, ptr @page_uni2charset, ptr @page00, ptr @page01, ptr @page04, ptr @page20, ptr @page21, ptr @page22, ptr @charset2uni], section "llvm.metadata"
@0 = internal global [12 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charset2lower to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charset2upper to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_uni2charset to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page00 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page01 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page04 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page20 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page21 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page22 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charset2uni to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_nls_maccyrillic() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @unregister_nls(ptr noundef nonnull @table) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_nls_maccyrillic() #0 section ".init.text" align 64 {
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 12)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29}
!llvm.module.flags = !{!31, !32, !33, !34, !35, !36, !37, !38}
!llvm.ident = !{!39}

!0 = !{ptr @__initcall__kmod_mac_cyrillic__106_493_init_nls_maccyrillic6, !1, !"__initcall__kmod_mac_cyrillic__106_493_init_nls_maccyrillic6", i1 false, i1 false}
!1 = !{!"../fs/nls/mac-cyrillic.c", i32 493, i32 1}
!2 = !{ptr @__exitcall_exit_nls_maccyrillic, !3, !"__exitcall_exit_nls_maccyrillic", i1 false, i1 false}
!3 = !{!"../fs/nls/mac-cyrillic.c", i32 494, i32 1}
!4 = !{ptr @__UNIQUE_ID_file107, !5, !"__UNIQUE_ID_file107", i1 false, i1 false}
!5 = !{!"../fs/nls/mac-cyrillic.c", i32 496, i32 1}
!6 = !{ptr @__UNIQUE_ID_license108, !5, !"__UNIQUE_ID_license108", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/nls/mac-cyrillic.c", i32 476, i32 13}
!9 = !{ptr @table, !10, !"table", i1 false, i1 false}
!10 = !{!"../fs/nls/mac-cyrillic.c", i32 475, i32 25}
!11 = !{ptr @page_uni2charset, !12, !"page_uni2charset", i1 false, i1 false}
!12 = !{!"../fs/nls/mac-cyrillic.c", i32 345, i32 35}
!13 = !{ptr @page00, !14, !"page00", i1 false, i1 false}
!14 = !{!"../fs/nls/mac-cyrillic.c", i32 135, i32 28}
!15 = !{ptr @page01, !16, !"page01", i1 false, i1 false}
!16 = !{!"../fs/nls/mac-cyrillic.c", i32 170, i32 28}
!17 = !{ptr @page04, !18, !"page04", i1 false, i1 false}
!18 = !{!"../fs/nls/mac-cyrillic.c", i32 205, i32 28}
!19 = !{ptr @page20, !20, !"page20", i1 false, i1 false}
!20 = !{!"../fs/nls/mac-cyrillic.c", i32 240, i32 28}
!21 = !{ptr @page21, !22, !"page21", i1 false, i1 false}
!22 = !{!"../fs/nls/mac-cyrillic.c", i32 275, i32 28}
!23 = !{ptr @page22, !24, !"page22", i1 false, i1 false}
!24 = !{!"../fs/nls/mac-cyrillic.c", i32 310, i32 28}
!25 = !{ptr @charset2uni, !26, !"charset2uni", i1 false, i1 false}
!26 = !{!"../fs/nls/mac-cyrillic.c", i32 52, i32 22}
!27 = !{ptr @charset2lower, !28, !"charset2lower", i1 false, i1 false}
!28 = !{!"../fs/nls/mac-cyrillic.c", i32 380, i32 28}
!29 = !{ptr @charset2upper, !30, !"charset2upper", i1 false, i1 false}
!30 = !{!"../fs/nls/mac-cyrillic.c", i32 415, i32 28}
!31 = !{i32 1, !"wchar_size", i32 2}
!32 = !{i32 1, !"min_enum_size", i32 4}
!33 = !{i32 8, !"branch-target-enforcement", i32 0}
!34 = !{i32 8, !"sign-return-address", i32 0}
!35 = !{i32 8, !"sign-return-address-all", i32 0}
!36 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!37 = !{i32 7, !"uwtable", i32 1}
!38 = !{i32 7, !"frame-pointer", i32 2}
!39 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
