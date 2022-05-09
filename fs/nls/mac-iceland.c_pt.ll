; ModuleID = '/llk/IR_all_yes/fs/nls/mac-iceland.c_pt.bc'
source_filename = "../fs/nls/mac-iceland.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.nls_table = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }

@table = internal global { %struct.nls_table, [32 x i8] } { %struct.nls_table { ptr @.str, ptr null, ptr @uni2char, ptr @char2uni, ptr @charset2lower, ptr @charset2upper, ptr null, ptr null }, [32 x i8] zeroinitializer }, align 32
@__initcall__kmod_mac_iceland__106_598_init_nls_maciceland6 = internal global ptr @init_nls_maciceland, section ".initcall6.init", align 4
@__exitcall_exit_nls_maciceland = internal global ptr @exit_nls_maciceland, section ".exitcall.exit", align 4
@__UNIQUE_ID_file107 = internal constant [36 x i8] c"mac_iceland.file=fs/nls/mac-iceland\00", section ".modinfo", align 1
@__UNIQUE_ID_license108 = internal constant [33 x i8] c"mac_iceland.license=Dual BSD/GPL\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"maciceland\00", [21 x i8] zeroinitializer }, align 32
@charset2lower = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [64 x i8] zeroinitializer }, align 32
@charset2upper = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF\FF", [64 x i8] zeroinitializer }, align 32
@page_uni2charset = internal constant { [256 x ptr], [256 x i8] } { [256 x ptr] [ptr @page00, ptr @page01, ptr @page02, ptr @page03, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @page20, ptr @page21, ptr @page22, ptr null, ptr null, ptr @page25, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pagef8, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null], [256 x i8] zeroinitializer }, align 32
@page00 = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B\0C\0D\0E\0F\10\11\12\13\14\15\16\17\18\19\1A\1B\1C\1D\1E\1F !\22#$%&'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\7F\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\CA\C1\A2\A3\00\B4\00\A4\AC\A9\BB\C7\C2\00\A8\F8\A1\B1\00\00\AB\B5\A6\E1\FC\00\BC\C8\00\00\00\C0\CB\E7\E5\CC\80\81\AE\82\E9\83\E6\E8\ED\EA\EB\EC\DC\84\F1\EE\EF\CD\85\00\AF\F4\F2\F3\86\A0\DE\A7\88\87\89\8B\8A\8C\BE\8D\8F\8E\90\91\93\92\94\95\DD\96\98\97\99\9B\9A\D6\BF\9D\9C\9E\9F\E0\DF\D8", [64 x i8] zeroinitializer }, align 32
@pagef8 = internal constant { [256 x i8], [64 x i8] } { [256 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F0", [64 x i8] zeroinitializer }, align 32
@page01 = internal constant { <{ [147 x i8], [109 x i8] }>, [64 x i8] } { <{ [147 x i8], [109 x i8] }> <{ [147 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\CE\CF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\D9\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C4", [109 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page02 = internal constant { <{ [222 x i8], [34 x i8] }>, [64 x i8] } { <{ [222 x i8], [34 x i8] }> <{ [222 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F6\FF\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\F9\FA\FB\FE\F7\FD", [34 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page03 = internal constant { <{ [193 x i8], [63 x i8] }>, [64 x i8] } { <{ [193 x i8], [63 x i8] }> <{ [193 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\BD\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\B9", [63 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page20 = internal constant { <{ [173 x i8], [83 x i8] }>, [64 x i8] } { <{ [173 x i8], [83 x i8] }> <{ [173 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\D0\D1\00\00\00\D4\D5\E2\00\D2\D3\E3\00\00\00\A5\00\00\00\C9\00\00\00\00\00\00\00\00\00\E4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\DA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\DB", [83 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page21 = internal constant { <{ [35 x i8], [221 x i8] }>, [64 x i8] } { <{ [35 x i8], [221 x i8] }> <{ [35 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\AA", [221 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page22 = internal constant { <{ [102 x i8], [154 x i8] }>, [64 x i8] } { <{ [102 x i8], [154 x i8] }> <{ [102 x i8] c"\00\00\B6\00\00\00\C6\00\00\00\00\00\00\00\00\B8\00\B7\00\00\00\00\00\00\00\00\C3\00\00\00\B0\00\00\00\00\00\00\00\00\00\00\00\00\BA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\C5\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\AD\00\00\00\B2\B3", [154 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@page25 = internal constant { <{ [203 x i8], [53 x i8] }>, [64 x i8] } { <{ [203 x i8], [53 x i8] }> <{ [203 x i8] c"\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\D7", [53 x i8] zeroinitializer }>, [64 x i8] zeroinitializer }, align 32
@charset2uni = internal constant { [256 x i16], [128 x i8] } { [256 x i16] [i16 0, i16 1, i16 2, i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 12, i16 13, i16 14, i16 15, i16 16, i16 17, i16 18, i16 19, i16 20, i16 21, i16 22, i16 23, i16 24, i16 25, i16 26, i16 27, i16 28, i16 29, i16 30, i16 31, i16 32, i16 33, i16 34, i16 35, i16 36, i16 37, i16 38, i16 39, i16 40, i16 41, i16 42, i16 43, i16 44, i16 45, i16 46, i16 47, i16 48, i16 49, i16 50, i16 51, i16 52, i16 53, i16 54, i16 55, i16 56, i16 57, i16 58, i16 59, i16 60, i16 61, i16 62, i16 63, i16 64, i16 65, i16 66, i16 67, i16 68, i16 69, i16 70, i16 71, i16 72, i16 73, i16 74, i16 75, i16 76, i16 77, i16 78, i16 79, i16 80, i16 81, i16 82, i16 83, i16 84, i16 85, i16 86, i16 87, i16 88, i16 89, i16 90, i16 91, i16 92, i16 93, i16 94, i16 95, i16 96, i16 97, i16 98, i16 99, i16 100, i16 101, i16 102, i16 103, i16 104, i16 105, i16 106, i16 107, i16 108, i16 109, i16 110, i16 111, i16 112, i16 113, i16 114, i16 115, i16 116, i16 117, i16 118, i16 119, i16 120, i16 121, i16 122, i16 123, i16 124, i16 125, i16 126, i16 127, i16 196, i16 197, i16 199, i16 201, i16 209, i16 214, i16 220, i16 225, i16 224, i16 226, i16 228, i16 227, i16 229, i16 231, i16 233, i16 232, i16 234, i16 235, i16 237, i16 236, i16 238, i16 239, i16 241, i16 243, i16 242, i16 244, i16 246, i16 245, i16 250, i16 249, i16 251, i16 252, i16 221, i16 176, i16 162, i16 163, i16 167, i16 8226, i16 182, i16 223, i16 174, i16 169, i16 8482, i16 180, i16 168, i16 8800, i16 198, i16 216, i16 8734, i16 177, i16 8804, i16 8805, i16 165, i16 181, i16 8706, i16 8721, i16 8719, i16 960, i16 8747, i16 170, i16 186, i16 937, i16 230, i16 248, i16 191, i16 161, i16 172, i16 8730, i16 402, i16 8776, i16 8710, i16 171, i16 187, i16 8230, i16 160, i16 192, i16 195, i16 213, i16 338, i16 339, i16 8211, i16 8212, i16 8220, i16 8221, i16 8216, i16 8217, i16 247, i16 9674, i16 255, i16 376, i16 8260, i16 8364, i16 208, i16 240, i16 222, i16 254, i16 253, i16 183, i16 8218, i16 8222, i16 8240, i16 194, i16 202, i16 193, i16 203, i16 200, i16 205, i16 206, i16 207, i16 204, i16 211, i16 212, i16 -1793, i16 210, i16 218, i16 219, i16 217, i16 305, i16 710, i16 732, i16 175, i16 728, i16 729, i16 730, i16 184, i16 733, i16 731, i16 711], [128 x i8] zeroinitializer }, align 32
@___asan_gen_.8 = private unnamed_addr constant [6 x i8] c"table\00", align 1
@___asan_gen_.10 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 580, i32 25 }
@___asan_gen_.11 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 581, i32 13 }
@___asan_gen_.14 = private unnamed_addr constant [14 x i8] c"charset2lower\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 485, i32 28 }
@___asan_gen_.17 = private unnamed_addr constant [14 x i8] c"charset2upper\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 520, i32 28 }
@___asan_gen_.20 = private unnamed_addr constant [17 x i8] c"page_uni2charset\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 450, i32 35 }
@___asan_gen_.23 = private unnamed_addr constant [7 x i8] c"page00\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 135, i32 28 }
@___asan_gen_.26 = private unnamed_addr constant [7 x i8] c"pagef8\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 415, i32 28 }
@___asan_gen_.29 = private unnamed_addr constant [7 x i8] c"page01\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 170, i32 28 }
@___asan_gen_.32 = private unnamed_addr constant [7 x i8] c"page02\00", align 1
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 205, i32 28 }
@___asan_gen_.35 = private unnamed_addr constant [7 x i8] c"page03\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 240, i32 28 }
@___asan_gen_.38 = private unnamed_addr constant [7 x i8] c"page20\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 275, i32 28 }
@___asan_gen_.41 = private unnamed_addr constant [7 x i8] c"page21\00", align 1
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 310, i32 28 }
@___asan_gen_.44 = private unnamed_addr constant [7 x i8] c"page22\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 345, i32 28 }
@___asan_gen_.47 = private unnamed_addr constant [7 x i8] c"page25\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 380, i32 28 }
@___asan_gen_.50 = private unnamed_addr constant [12 x i8] c"charset2uni\00", align 1
@___asan_gen_.51 = private constant [24 x i8] c"../fs/nls/mac-iceland.c\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.51, i32 52, i32 22 }
@llvm.compiler.used = appending global [20 x ptr] [ptr @__UNIQUE_ID_file107, ptr @__UNIQUE_ID_license108, ptr @__exitcall_exit_nls_maciceland, ptr @__initcall__kmod_mac_iceland__106_598_init_nls_maciceland6, ptr @exit_nls_maciceland, ptr @table, ptr @.str, ptr @charset2lower, ptr @charset2upper, ptr @page_uni2charset, ptr @page00, ptr @pagef8, ptr @page01, ptr @page02, ptr @page03, ptr @page20, ptr @page21, ptr @page22, ptr @page25, ptr @charset2uni], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @table to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.8 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.10 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charset2lower to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charset2upper to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page_uni2charset to i32), i32 1024, i32 1280, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page00 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pagef8 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page01 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page02 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page03 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page20 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page21 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page22 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @page25 to i32), i32 256, i32 320, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @charset2uni to i32), i32 512, i32 640, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @exit_nls_maciceland() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  %call = tail call i32 @unregister_nls(ptr noundef nonnull @table) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @unregister_nls(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @init_nls_maciceland() #0 section ".init.text" align 64 {
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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35}
!llvm.module.flags = !{!37, !38, !39, !40, !41, !42, !43, !44}
!llvm.ident = !{!45}

!0 = !{ptr @__initcall__kmod_mac_iceland__106_598_init_nls_maciceland6, !1, !"__initcall__kmod_mac_iceland__106_598_init_nls_maciceland6", i1 false, i1 false}
!1 = !{!"../fs/nls/mac-iceland.c", i32 598, i32 1}
!2 = !{ptr @__exitcall_exit_nls_maciceland, !3, !"__exitcall_exit_nls_maciceland", i1 false, i1 false}
!3 = !{!"../fs/nls/mac-iceland.c", i32 599, i32 1}
!4 = !{ptr @__UNIQUE_ID_file107, !5, !"__UNIQUE_ID_file107", i1 false, i1 false}
!5 = !{!"../fs/nls/mac-iceland.c", i32 601, i32 1}
!6 = !{ptr @__UNIQUE_ID_license108, !5, !"__UNIQUE_ID_license108", i1 false, i1 false}
!7 = !{ptr @.str, !8, !"<string literal>", i1 false, i1 false}
!8 = !{!"../fs/nls/mac-iceland.c", i32 581, i32 13}
!9 = !{ptr @table, !10, !"table", i1 false, i1 false}
!10 = !{!"../fs/nls/mac-iceland.c", i32 580, i32 25}
!11 = !{ptr @page_uni2charset, !12, !"page_uni2charset", i1 false, i1 false}
!12 = !{!"../fs/nls/mac-iceland.c", i32 450, i32 35}
!13 = !{ptr @page00, !14, !"page00", i1 false, i1 false}
!14 = !{!"../fs/nls/mac-iceland.c", i32 135, i32 28}
!15 = !{ptr @page01, !16, !"page01", i1 false, i1 false}
!16 = !{!"../fs/nls/mac-iceland.c", i32 170, i32 28}
!17 = !{ptr @page02, !18, !"page02", i1 false, i1 false}
!18 = !{!"../fs/nls/mac-iceland.c", i32 205, i32 28}
!19 = !{ptr @page03, !20, !"page03", i1 false, i1 false}
!20 = !{!"../fs/nls/mac-iceland.c", i32 240, i32 28}
!21 = !{ptr @page20, !22, !"page20", i1 false, i1 false}
!22 = !{!"../fs/nls/mac-iceland.c", i32 275, i32 28}
!23 = !{ptr @page21, !24, !"page21", i1 false, i1 false}
!24 = !{!"../fs/nls/mac-iceland.c", i32 310, i32 28}
!25 = !{ptr @page22, !26, !"page22", i1 false, i1 false}
!26 = !{!"../fs/nls/mac-iceland.c", i32 345, i32 28}
!27 = !{ptr @page25, !28, !"page25", i1 false, i1 false}
!28 = !{!"../fs/nls/mac-iceland.c", i32 380, i32 28}
!29 = !{ptr @pagef8, !30, !"pagef8", i1 false, i1 false}
!30 = !{!"../fs/nls/mac-iceland.c", i32 415, i32 28}
!31 = !{ptr @charset2uni, !32, !"charset2uni", i1 false, i1 false}
!32 = !{!"../fs/nls/mac-iceland.c", i32 52, i32 22}
!33 = !{ptr @charset2lower, !34, !"charset2lower", i1 false, i1 false}
!34 = !{!"../fs/nls/mac-iceland.c", i32 485, i32 28}
!35 = !{ptr @charset2upper, !36, !"charset2upper", i1 false, i1 false}
!36 = !{!"../fs/nls/mac-iceland.c", i32 520, i32 28}
!37 = !{i32 1, !"wchar_size", i32 2}
!38 = !{i32 1, !"min_enum_size", i32 4}
!39 = !{i32 8, !"branch-target-enforcement", i32 0}
!40 = !{i32 8, !"sign-return-address", i32 0}
!41 = !{i32 8, !"sign-return-address-all", i32 0}
!42 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!43 = !{i32 7, !"uwtable", i32 1}
!44 = !{i32 7, !"frame-pointer", i32 2}
!45 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
