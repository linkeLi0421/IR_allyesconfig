; ModuleID = '/llk/IR_all_yes/arch/arm/boot/compressed/decompress.c_pt.bc'
source_filename = "../arch/arm/boot/compressed/decompress.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

%struct.code = type { i8, i8, i16 }
%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [2048 x %struct.code] }
%struct.inflate_workspace = type { %struct.inflate_state, [32768 x i8] }

@zlib_inflate_table.lbase = internal unnamed_addr constant [31 x i16] [i16 3, i16 4, i16 5, i16 6, i16 7, i16 8, i16 9, i16 10, i16 11, i16 13, i16 15, i16 17, i16 19, i16 23, i16 27, i16 31, i16 35, i16 43, i16 51, i16 59, i16 67, i16 83, i16 99, i16 115, i16 131, i16 163, i16 195, i16 227, i16 258, i16 0, i16 0], align 2
@zlib_inflate_table.lext = internal unnamed_addr constant [31 x i16] [i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 17, i16 17, i16 18, i16 18, i16 18, i16 18, i16 19, i16 19, i16 19, i16 19, i16 20, i16 20, i16 20, i16 20, i16 21, i16 21, i16 21, i16 21, i16 16, i16 201, i16 196], align 2
@zlib_inflate_table.dbase = internal unnamed_addr constant [32 x i16] [i16 1, i16 2, i16 3, i16 4, i16 5, i16 7, i16 9, i16 13, i16 17, i16 25, i16 33, i16 49, i16 65, i16 97, i16 129, i16 193, i16 257, i16 385, i16 513, i16 769, i16 1025, i16 1537, i16 2049, i16 3073, i16 4097, i16 6145, i16 8193, i16 12289, i16 16385, i16 24577, i16 0, i16 0], align 2
@zlib_inflate_table.dext = internal unnamed_addr constant [32 x i16] [i16 16, i16 16, i16 16, i16 16, i16 17, i16 17, i16 18, i16 18, i16 19, i16 19, i16 20, i16 20, i16 21, i16 21, i16 22, i16 22, i16 23, i16 23, i16 24, i16 24, i16 25, i16 25, i16 26, i16 26, i16 27, i16 27, i16 28, i16 28, i16 29, i16 29, i16 64, i16 64], align 2
@.str = private unnamed_addr constant [30 x i8] c"invalid distance too far back\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"invalid distance code\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"invalid literal/length code\00", align 1
@zlib_inflate.order = internal unnamed_addr constant [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], align 2
@.str.3 = private unnamed_addr constant [23 x i8] c"incorrect header check\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"unknown compression method\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"invalid window size\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"invalid block type\00", align 1
@.str.7 = private unnamed_addr constant [29 x i8] c"invalid stored block lengths\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"too many length or distance symbols\00", align 1
@.str.9 = private unnamed_addr constant [25 x i8] c"invalid code lengths set\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"invalid bit length repeat\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"invalid literal/lengths set\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"invalid distances set\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"incorrect data check\00", align 1
@malloc_ptr = local_unnamed_addr global i32 0, align 4
@malloc_count = local_unnamed_addr global i32 0, align 4
@zlib_fixedtables.lenfix = internal constant [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], align 2
@zlib_fixedtables.distfix = internal constant [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 64, i8 5, i16 0 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 64, i8 5, i16 0 }], align 2
@.str.14 = private unnamed_addr constant [45 x i8] c"Out of memory while allocating output buffer\00", align 1
@.str.15 = private unnamed_addr constant [44 x i8] c"Out of memory while allocating input buffer\00", align 1
@.str.16 = private unnamed_addr constant [40 x i8] c"Out of memory while allocating z_stream\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"Out of memory while allocating workspace\00", align 1
@.str.18 = private unnamed_addr constant [16 x i8] c"Not a gzip file\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c"header error\00", align 1
@.str.20 = private unnamed_addr constant [11 x i8] c"read error\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"uncompression error\00", align 1
@free_mem_ptr = external local_unnamed_addr global i32, align 4
@free_mem_end_ptr = external local_unnamed_addr global i32, align 4

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define i32 @zlib_inflate_table(i32 noundef %type, ptr nocapture noundef readonly %lens, i32 noundef %codes, ptr nocapture noundef %table, ptr nocapture noundef %bits, ptr nocapture noundef %work) local_unnamed_addr #0 align 64 {
entry:
  %count = alloca [16 x i16], align 2
  %offs = alloca [16 x i16], align 2
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %count) #10
  %0 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 1
  %1 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 2
  %2 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 3
  %3 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 4
  %4 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 5
  %5 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 6
  %6 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 7
  %7 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 8
  %8 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 9
  %9 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 10
  %10 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 11
  %11 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 12
  %12 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 13
  %13 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 14
  %14 = getelementptr inbounds [16 x i16], ptr %count, i32 0, i32 15
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %offs) #10
  store i16 -1, ptr %offs, align 2, !annotation !9
  %15 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 1
  store i16 -1, ptr %15, align 2, !annotation !9
  %16 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 2
  store i16 -1, ptr %16, align 2, !annotation !9
  %17 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 3
  store i16 -1, ptr %17, align 2, !annotation !9
  %18 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 4
  store i16 -1, ptr %18, align 2, !annotation !9
  %19 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 5
  store i16 -1, ptr %19, align 2, !annotation !9
  %20 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 6
  store i16 -1, ptr %20, align 2, !annotation !9
  %21 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 7
  store i16 -1, ptr %21, align 2, !annotation !9
  %22 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 8
  store i16 -1, ptr %22, align 2, !annotation !9
  %23 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 9
  store i16 -1, ptr %23, align 2, !annotation !9
  %24 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 10
  store i16 -1, ptr %24, align 2, !annotation !9
  %25 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 11
  store i16 -1, ptr %25, align 2, !annotation !9
  %26 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 12
  store i16 -1, ptr %26, align 2, !annotation !9
  %27 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 13
  store i16 -1, ptr %27, align 2, !annotation !9
  %28 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 14
  store i16 -1, ptr %28, align 2, !annotation !9
  %29 = getelementptr inbounds [16 x i16], ptr %offs, i32 0, i32 15
  store i16 -1, ptr %29, align 2, !annotation !9
  store i16 0, ptr %count, align 2
  store i16 0, ptr %0, align 2
  store i16 0, ptr %1, align 2
  store i16 0, ptr %2, align 2
  store i16 0, ptr %3, align 2
  store i16 0, ptr %4, align 2
  store i16 0, ptr %5, align 2
  store i16 0, ptr %6, align 2
  store i16 0, ptr %7, align 2
  store i16 0, ptr %8, align 2
  store i16 0, ptr %9, align 2
  store i16 0, ptr %10, align 2
  store i16 0, ptr %11, align 2
  store i16 0, ptr %12, align 2
  store i16 0, ptr %13, align 2
  store i16 0, ptr %14, align 2
  %cmp2459.not = icmp eq i32 %codes, 0
  br i1 %cmp2459.not, label %for.inc16.thread, label %for.body3

for.inc16.thread:                                 ; preds = %entry
  %30 = load i32, ptr %bits, align 4
  br label %for.inc16.1

for.body3:                                        ; preds = %for.body3, %entry
  %sym.0460 = phi i32 [ %inc8, %for.body3 ], [ 0, %entry ]
  %arrayidx4 = getelementptr i16, ptr %lens, i32 %sym.0460
  %31 = load i16, ptr %arrayidx4, align 2
  %idxprom = zext i16 %31 to i32
  %arrayidx5 = getelementptr [16 x i16], ptr %count, i32 0, i32 %idxprom
  %32 = load i16, ptr %arrayidx5, align 2
  %inc6 = add i16 %32, 1
  store i16 %inc6, ptr %arrayidx5, align 2
  %inc8 = add nuw i32 %sym.0460, 1
  %exitcond.not = icmp eq i32 %inc8, %codes
  br i1 %exitcond.not, label %for.end9, label %for.body3

for.end9:                                         ; preds = %for.body3
  %.pre = load i16, ptr %14, align 2
  %33 = load i32, ptr %bits, align 4
  %cmp14.not = icmp eq i16 %.pre, 0
  br i1 %cmp14.not, label %for.inc16, label %for.end17

for.inc16:                                        ; preds = %for.end9
  %.pr = load i16, ptr %13, align 2
  %cmp14.not.1 = icmp eq i16 %.pr, 0
  br i1 %cmp14.not.1, label %for.inc16.1, label %for.end17

for.inc16.1:                                      ; preds = %for.inc16, %for.inc16.thread
  %34 = phi i32 [ %30, %for.inc16.thread ], [ %33, %for.inc16 ]
  %35 = load i16, ptr %12, align 2
  %cmp14.not.2 = icmp eq i16 %35, 0
  br i1 %cmp14.not.2, label %for.inc16.2, label %for.end17

for.inc16.2:                                      ; preds = %for.inc16.1
  %36 = load i16, ptr %11, align 2
  %cmp14.not.3 = icmp eq i16 %36, 0
  br i1 %cmp14.not.3, label %for.inc16.3, label %for.end17

for.inc16.3:                                      ; preds = %for.inc16.2
  %37 = load i16, ptr %10, align 2
  %cmp14.not.4 = icmp eq i16 %37, 0
  br i1 %cmp14.not.4, label %for.inc16.4, label %for.end17

for.inc16.4:                                      ; preds = %for.inc16.3
  %38 = load i16, ptr %9, align 2
  %cmp14.not.5 = icmp eq i16 %38, 0
  br i1 %cmp14.not.5, label %for.inc16.5, label %for.end17

for.inc16.5:                                      ; preds = %for.inc16.4
  %39 = load i16, ptr %8, align 2
  %cmp14.not.6 = icmp eq i16 %39, 0
  br i1 %cmp14.not.6, label %for.inc16.6, label %for.end17

for.inc16.6:                                      ; preds = %for.inc16.5
  %40 = load i16, ptr %7, align 2
  %cmp14.not.7 = icmp eq i16 %40, 0
  br i1 %cmp14.not.7, label %for.inc16.7, label %for.end17

for.inc16.7:                                      ; preds = %for.inc16.6
  %41 = load i16, ptr %6, align 2
  %cmp14.not.8 = icmp eq i16 %41, 0
  br i1 %cmp14.not.8, label %for.inc16.8, label %for.end17

for.inc16.8:                                      ; preds = %for.inc16.7
  %42 = load i16, ptr %5, align 2
  %cmp14.not.9 = icmp eq i16 %42, 0
  br i1 %cmp14.not.9, label %for.inc16.9, label %for.end17

for.inc16.9:                                      ; preds = %for.inc16.8
  %43 = load i16, ptr %4, align 2
  %cmp14.not.10 = icmp eq i16 %43, 0
  br i1 %cmp14.not.10, label %for.inc16.10, label %for.end17

for.inc16.10:                                     ; preds = %for.inc16.9
  %44 = load i16, ptr %3, align 2
  %cmp14.not.11 = icmp eq i16 %44, 0
  br i1 %cmp14.not.11, label %for.inc16.11, label %for.end17

for.inc16.11:                                     ; preds = %for.inc16.10
  %45 = load i16, ptr %2, align 2
  %cmp14.not.12 = icmp eq i16 %45, 0
  br i1 %cmp14.not.12, label %for.inc16.12, label %for.end17

for.inc16.12:                                     ; preds = %for.inc16.11
  %46 = load i16, ptr %1, align 2
  %cmp14.not.13 = icmp eq i16 %46, 0
  br i1 %cmp14.not.13, label %for.inc16.13, label %for.end17

for.inc16.13:                                     ; preds = %for.inc16.12
  %47 = load i16, ptr %0, align 2
  %cmp14.not.14 = icmp eq i16 %47, 0
  br i1 %cmp14.not.14, label %for.inc16.14, label %for.end17.thread

for.end17.thread:                                 ; preds = %for.inc16.13
  %48 = icmp ne i32 %34, 0
  %49 = zext i1 %48 to i32
  br label %for.end40

for.inc16.14:                                     ; preds = %for.inc16.13
  %50 = load ptr, ptr %table, align 4
  %incdec.ptr = getelementptr %struct.code, ptr %50, i32 1
  store ptr %incdec.ptr, ptr %table, align 4
  store i8 64, ptr %50, align 2
  %this.sroa.12.0..sroa_idx = getelementptr inbounds i8, ptr %50, i32 1
  store i8 1, ptr %this.sroa.12.0..sroa_idx, align 1
  %this.sroa.17.0..sroa_idx = getelementptr inbounds i8, ptr %50, i32 2
  store i16 0, ptr %this.sroa.17.0..sroa_idx, align 2
  %51 = load ptr, ptr %table, align 4
  %incdec.ptr26 = getelementptr %struct.code, ptr %51, i32 1
  store ptr %incdec.ptr26, ptr %table, align 4
  store i8 64, ptr %51, align 2
  %this.sroa.12.0..sroa_idx299 = getelementptr inbounds i8, ptr %51, i32 1
  store i8 1, ptr %this.sroa.12.0..sroa_idx299, align 1
  %this.sroa.17.0..sroa_idx303 = getelementptr inbounds i8, ptr %51, i32 2
  store i16 0, ptr %this.sroa.17.0..sroa_idx303, align 2
  br label %cleanup.sink.split

for.end17:                                        ; preds = %for.inc16.12, %for.inc16.11, %for.inc16.10, %for.inc16.9, %for.inc16.8, %for.inc16.7, %for.inc16.6, %for.inc16.5, %for.inc16.4, %for.inc16.3, %for.inc16.2, %for.inc16.1, %for.inc16, %for.end9
  %.ph = phi i32 [ %33, %for.end9 ], [ %33, %for.inc16 ], [ %34, %for.inc16.1 ], [ %34, %for.inc16.2 ], [ %34, %for.inc16.3 ], [ %34, %for.inc16.4 ], [ %34, %for.inc16.5 ], [ %34, %for.inc16.6 ], [ %34, %for.inc16.7 ], [ %34, %for.inc16.8 ], [ %34, %for.inc16.9 ], [ %34, %for.inc16.10 ], [ %34, %for.inc16.11 ], [ %34, %for.inc16.12 ]
  %.ph499 = phi i16 [ %.pre, %for.end9 ], [ 0, %for.inc16 ], [ 0, %for.inc16.1 ], [ 0, %for.inc16.2 ], [ 0, %for.inc16.3 ], [ 0, %for.inc16.4 ], [ 0, %for.inc16.5 ], [ 0, %for.inc16.6 ], [ 0, %for.inc16.7 ], [ 0, %for.inc16.8 ], [ 0, %for.inc16.9 ], [ 0, %for.inc16.10 ], [ 0, %for.inc16.11 ], [ 0, %for.inc16.12 ]
  %max.0461.lcssa.ph = phi i32 [ 15, %for.end9 ], [ 14, %for.inc16 ], [ 13, %for.inc16.1 ], [ 12, %for.inc16.2 ], [ 11, %for.inc16.3 ], [ 10, %for.inc16.4 ], [ 9, %for.inc16.5 ], [ 8, %for.inc16.6 ], [ 7, %for.inc16.7 ], [ 6, %for.inc16.8 ], [ 5, %for.inc16.9 ], [ 4, %for.inc16.10 ], [ 3, %for.inc16.11 ], [ 2, %for.inc16.12 ]
  %.pr500 = load i16, ptr %0, align 2
  %52 = tail call i32 @llvm.umin.i32(i32 %.ph, i32 %max.0461.lcssa.ph)
  %cmp34.not = icmp eq i16 %.pr500, 0
  br i1 %cmp34.not, label %for.inc38, label %for.end40

for.inc38:                                        ; preds = %for.end17
  %53 = load i16, ptr %1, align 2
  %cmp34.not.1 = icmp eq i16 %53, 0
  br i1 %cmp34.not.1, label %for.inc38.1, label %for.end40.thread

for.inc38.1:                                      ; preds = %for.inc38
  %54 = load i16, ptr %2, align 2
  %cmp34.not.2 = icmp eq i16 %54, 0
  br i1 %cmp34.not.2, label %for.inc38.2, label %for.end40.thread

for.inc38.2:                                      ; preds = %for.inc38.1
  %55 = load i16, ptr %3, align 2
  %cmp34.not.3 = icmp eq i16 %55, 0
  br i1 %cmp34.not.3, label %for.inc38.3, label %for.end40.thread

for.inc38.3:                                      ; preds = %for.inc38.2
  %56 = load i16, ptr %4, align 2
  %cmp34.not.4 = icmp eq i16 %56, 0
  br i1 %cmp34.not.4, label %for.inc38.4, label %for.end40.thread

for.inc38.4:                                      ; preds = %for.inc38.3
  %57 = load i16, ptr %5, align 2
  %cmp34.not.5 = icmp eq i16 %57, 0
  br i1 %cmp34.not.5, label %for.inc38.5, label %for.end40.thread

for.inc38.5:                                      ; preds = %for.inc38.4
  %58 = load i16, ptr %6, align 2
  %cmp34.not.6 = icmp eq i16 %58, 0
  br i1 %cmp34.not.6, label %for.inc38.6, label %for.end40.thread

for.inc38.6:                                      ; preds = %for.inc38.5
  %59 = load i16, ptr %7, align 2
  %cmp34.not.7 = icmp eq i16 %59, 0
  br i1 %cmp34.not.7, label %for.inc38.7, label %for.end40.thread

for.inc38.7:                                      ; preds = %for.inc38.6
  %60 = load i16, ptr %8, align 2
  %cmp34.not.8 = icmp eq i16 %60, 0
  br i1 %cmp34.not.8, label %for.inc38.8, label %for.end40.thread

for.inc38.8:                                      ; preds = %for.inc38.7
  %61 = load i16, ptr %9, align 2
  %cmp34.not.9 = icmp eq i16 %61, 0
  br i1 %cmp34.not.9, label %for.inc38.9, label %for.end40.thread

for.inc38.9:                                      ; preds = %for.inc38.8
  %62 = load i16, ptr %10, align 2
  %cmp34.not.10 = icmp eq i16 %62, 0
  br i1 %cmp34.not.10, label %for.inc38.10, label %for.end40.thread

for.inc38.10:                                     ; preds = %for.inc38.9
  %63 = load i16, ptr %11, align 2
  %cmp34.not.11 = icmp eq i16 %63, 0
  br i1 %cmp34.not.11, label %for.inc38.11, label %for.end40.thread

for.inc38.11:                                     ; preds = %for.inc38.10
  %64 = load i16, ptr %12, align 2
  %cmp34.not.12 = icmp eq i16 %64, 0
  br i1 %cmp34.not.12, label %for.inc38.12, label %for.end40.thread

for.inc38.12:                                     ; preds = %for.inc38.11
  %65 = load i16, ptr %13, align 2
  %cmp34.not.13 = icmp eq i16 %65, 0
  %spec.select = select i1 %cmp34.not.13, i32 15, i32 14
  br label %for.end40.thread

for.end40.thread:                                 ; preds = %for.inc38.12, %for.inc38.11, %for.inc38.10, %for.inc38.9, %for.inc38.8, %for.inc38.7, %for.inc38.6, %for.inc38.5, %for.inc38.4, %for.inc38.3, %for.inc38.2, %for.inc38.1, %for.inc38
  %min.0.lcssa.ph = phi i32 [ 13, %for.inc38.11 ], [ 12, %for.inc38.10 ], [ 11, %for.inc38.9 ], [ 10, %for.inc38.8 ], [ 9, %for.inc38.7 ], [ 8, %for.inc38.6 ], [ 7, %for.inc38.5 ], [ 6, %for.inc38.4 ], [ 5, %for.inc38.3 ], [ 4, %for.inc38.2 ], [ 3, %for.inc38.1 ], [ 2, %for.inc38 ], [ %spec.select, %for.inc38.12 ]
  %66 = tail call i32 @llvm.umax.i32(i32 %52, i32 %min.0.lcssa.ph)
  br label %for.cond45

for.end40:                                        ; preds = %for.end17, %for.end17.thread
  %67 = phi i32 [ %52, %for.end17 ], [ %49, %for.end17.thread ]
  %max.0461.lcssa505 = phi i32 [ %max.0461.lcssa.ph, %for.end17 ], [ 1, %for.end17.thread ]
  %cmp62504 = phi i1 [ true, %for.end17 ], [ false, %for.end17.thread ]
  %68 = phi i16 [ %.ph499, %for.end17 ], [ 0, %for.end17.thread ]
  %69 = phi i16 [ %.pr500, %for.end17 ], [ %47, %for.end17.thread ]
  %70 = tail call i32 @llvm.umax.i32(i32 %67, i32 1)
  %cmp51 = icmp ugt i16 %69, 2
  br i1 %cmp51, label %cleanup, label %for.cond45

for.cond45:                                       ; preds = %for.end40, %for.end40.thread
  %71 = phi i32 [ %66, %for.end40.thread ], [ %70, %for.end40 ]
  %min.0.lcssa512 = phi i32 [ %min.0.lcssa.ph, %for.end40.thread ], [ 1, %for.end40 ]
  %72 = phi i16 [ 0, %for.end40.thread ], [ %69, %for.end40 ]
  %73 = phi i16 [ %.ph499, %for.end40.thread ], [ %68, %for.end40 ]
  %cmp62504511 = phi i1 [ true, %for.end40.thread ], [ %cmp62504, %for.end40 ]
  %max.0461.lcssa505510 = phi i32 [ %max.0461.lcssa.ph, %for.end40.thread ], [ %max.0461.lcssa505, %for.end40 ]
  %conv50 = zext i16 %72 to i32
  %.neg = mul nsw i32 %conv50, -2
  %shl.1 = add nsw i32 %.neg, 4
  %74 = load i16, ptr %1, align 2
  %conv50.1 = zext i16 %74 to i32
  %sub.1 = sub nsw i32 %shl.1, %conv50.1
  %cmp51.1 = icmp slt i32 %sub.1, 0
  br i1 %cmp51.1, label %cleanup, label %for.cond45.1

for.cond45.1:                                     ; preds = %for.cond45
  %shl.2 = shl nuw nsw i32 %sub.1, 1
  %75 = load i16, ptr %2, align 2
  %conv50.2 = zext i16 %75 to i32
  %sub.2 = sub nsw i32 %shl.2, %conv50.2
  %cmp51.2 = icmp slt i32 %sub.2, 0
  br i1 %cmp51.2, label %cleanup, label %for.cond45.2

for.cond45.2:                                     ; preds = %for.cond45.1
  %shl.3 = shl nuw nsw i32 %sub.2, 1
  %76 = load i16, ptr %3, align 2
  %conv50.3 = zext i16 %76 to i32
  %sub.3 = sub nsw i32 %shl.3, %conv50.3
  %cmp51.3 = icmp slt i32 %sub.3, 0
  br i1 %cmp51.3, label %cleanup, label %for.cond45.3

for.cond45.3:                                     ; preds = %for.cond45.2
  %shl.4 = shl nuw nsw i32 %sub.3, 1
  %77 = load i16, ptr %4, align 2
  %conv50.4 = zext i16 %77 to i32
  %sub.4 = sub nsw i32 %shl.4, %conv50.4
  %cmp51.4 = icmp slt i32 %sub.4, 0
  br i1 %cmp51.4, label %cleanup, label %for.cond45.4

for.cond45.4:                                     ; preds = %for.cond45.3
  %shl.5 = shl nuw nsw i32 %sub.4, 1
  %78 = load i16, ptr %5, align 2
  %conv50.5 = zext i16 %78 to i32
  %sub.5 = sub nsw i32 %shl.5, %conv50.5
  %cmp51.5 = icmp slt i32 %sub.5, 0
  br i1 %cmp51.5, label %cleanup, label %for.cond45.5

for.cond45.5:                                     ; preds = %for.cond45.4
  %shl.6 = shl nuw nsw i32 %sub.5, 1
  %79 = load i16, ptr %6, align 2
  %conv50.6 = zext i16 %79 to i32
  %sub.6 = sub nsw i32 %shl.6, %conv50.6
  %cmp51.6 = icmp slt i32 %sub.6, 0
  br i1 %cmp51.6, label %cleanup, label %for.cond45.6

for.cond45.6:                                     ; preds = %for.cond45.5
  %shl.7 = shl nuw nsw i32 %sub.6, 1
  %80 = load i16, ptr %7, align 2
  %conv50.7 = zext i16 %80 to i32
  %sub.7 = sub nsw i32 %shl.7, %conv50.7
  %cmp51.7 = icmp slt i32 %sub.7, 0
  br i1 %cmp51.7, label %cleanup, label %for.cond45.7

for.cond45.7:                                     ; preds = %for.cond45.6
  %shl.8 = shl nuw nsw i32 %sub.7, 1
  %81 = load i16, ptr %8, align 2
  %conv50.8 = zext i16 %81 to i32
  %sub.8 = sub nsw i32 %shl.8, %conv50.8
  %cmp51.8 = icmp slt i32 %sub.8, 0
  br i1 %cmp51.8, label %cleanup, label %for.cond45.8

for.cond45.8:                                     ; preds = %for.cond45.7
  %shl.9 = shl nuw nsw i32 %sub.8, 1
  %82 = load i16, ptr %9, align 2
  %conv50.9 = zext i16 %82 to i32
  %sub.9 = sub nsw i32 %shl.9, %conv50.9
  %cmp51.9 = icmp slt i32 %sub.9, 0
  br i1 %cmp51.9, label %cleanup, label %for.cond45.9

for.cond45.9:                                     ; preds = %for.cond45.8
  %shl.10 = shl nuw nsw i32 %sub.9, 1
  %83 = load i16, ptr %10, align 2
  %conv50.10 = zext i16 %83 to i32
  %sub.10 = sub nsw i32 %shl.10, %conv50.10
  %cmp51.10 = icmp slt i32 %sub.10, 0
  br i1 %cmp51.10, label %cleanup, label %for.cond45.10

for.cond45.10:                                    ; preds = %for.cond45.9
  %shl.11 = shl nuw nsw i32 %sub.10, 1
  %84 = load i16, ptr %11, align 2
  %conv50.11 = zext i16 %84 to i32
  %sub.11 = sub nsw i32 %shl.11, %conv50.11
  %cmp51.11 = icmp slt i32 %sub.11, 0
  br i1 %cmp51.11, label %cleanup, label %for.cond45.11

for.cond45.11:                                    ; preds = %for.cond45.10
  %shl.12 = shl nuw nsw i32 %sub.11, 1
  %85 = load i16, ptr %12, align 2
  %conv50.12 = zext i16 %85 to i32
  %sub.12 = sub nsw i32 %shl.12, %conv50.12
  %cmp51.12 = icmp slt i32 %sub.12, 0
  br i1 %cmp51.12, label %cleanup, label %for.cond45.12

for.cond45.12:                                    ; preds = %for.cond45.11
  %shl.13 = shl nuw nsw i32 %sub.12, 1
  %86 = load i16, ptr %13, align 2
  %conv50.13 = zext i16 %86 to i32
  %sub.13 = sub nsw i32 %shl.13, %conv50.13
  %cmp51.13 = icmp slt i32 %sub.13, 0
  br i1 %cmp51.13, label %cleanup, label %for.cond45.13

for.cond45.13:                                    ; preds = %for.cond45.12
  %shl.14 = shl nuw nsw i32 %sub.13, 1
  %conv50.14 = zext i16 %73 to i32
  %cmp51.14 = icmp slt i32 %shl.14, %conv50.14
  br i1 %cmp51.14, label %cleanup, label %for.cond45.14

for.cond45.14:                                    ; preds = %for.cond45.13
  %cmp58.not = icmp ne i32 %shl.14, %conv50.14
  %cmp60 = icmp eq i32 %type, 0
  %or.cond = or i1 %cmp60, %cmp62504511
  %or.cond534 = and i1 %cmp58.not, %or.cond
  br i1 %or.cond534, label %cleanup, label %if.end65

if.end65:                                         ; preds = %for.cond45.14
  store i16 0, ptr %15, align 2
  store i16 %72, ptr %16, align 2
  %add.1 = add i16 %74, %72
  store i16 %add.1, ptr %17, align 2
  %add.2 = add i16 %75, %add.1
  store i16 %add.2, ptr %18, align 2
  %add.3 = add i16 %76, %add.2
  store i16 %add.3, ptr %19, align 2
  %add.4 = add i16 %77, %add.3
  store i16 %add.4, ptr %20, align 2
  %add.5 = add i16 %78, %add.4
  store i16 %add.5, ptr %21, align 2
  %add.6 = add i16 %79, %add.5
  store i16 %add.6, ptr %22, align 2
  %add.7 = add i16 %80, %add.6
  store i16 %add.7, ptr %23, align 2
  %add.8 = add i16 %81, %add.7
  store i16 %add.8, ptr %24, align 2
  %add.9 = add i16 %82, %add.8
  store i16 %add.9, ptr %25, align 2
  %add.10 = add i16 %83, %add.9
  store i16 %add.10, ptr %26, align 2
  %add.11 = add i16 %84, %add.10
  store i16 %add.11, ptr %27, align 2
  %add.12 = add i16 %85, %add.11
  store i16 %add.12, ptr %28, align 2
  %add.13 = add i16 %86, %add.12
  store i16 %add.13, ptr %29, align 2
  br i1 %cmp2459.not, label %for.end100, label %for.body84

for.body84:                                       ; preds = %for.inc98, %if.end65
  %sym.1467 = phi i32 [ %inc99, %for.inc98 ], [ 0, %if.end65 ]
  %arrayidx85 = getelementptr i16, ptr %lens, i32 %sym.1467
  %87 = load i16, ptr %arrayidx85, align 2
  %cmp87.not = icmp eq i16 %87, 0
  br i1 %cmp87.not, label %for.inc98, label %if.then89

if.then89:                                        ; preds = %for.body84
  %conv86 = zext i16 %87 to i32
  %conv90 = trunc i32 %sym.1467 to i16
  %arrayidx93 = getelementptr [16 x i16], ptr %offs, i32 0, i32 %conv86
  %88 = load i16, ptr %arrayidx93, align 2
  %inc94 = add i16 %88, 1
  store i16 %inc94, ptr %arrayidx93, align 2
  %idxprom95 = zext i16 %88 to i32
  %arrayidx96 = getelementptr i16, ptr %work, i32 %idxprom95
  store i16 %conv90, ptr %arrayidx96, align 2
  br label %for.inc98

for.inc98:                                        ; preds = %if.then89, %for.body84
  %inc99 = add nuw i32 %sym.1467, 1
  %exitcond495.not = icmp eq i32 %inc99, %codes
  br i1 %exitcond495.not, label %for.end100, label %for.body84

for.end100:                                       ; preds = %for.inc98, %if.end65
  switch i32 %type, label %sw.default [
    i32 0, label %for.cond112.preheader
    i32 1, label %sw.epilog
  ]

sw.default:                                       ; preds = %for.end100
  br label %for.cond112.preheader

sw.epilog:                                        ; preds = %for.end100
  %cmp108 = icmp ugt i32 %71, 10
  br i1 %cmp108, label %cleanup, label %for.cond112.preheader

for.cond112.preheader:                            ; preds = %sw.epilog, %sw.default, %for.end100
  %cmp105526 = phi i1 [ true, %sw.epilog ], [ false, %for.end100 ], [ false, %sw.default ]
  %end.0523 = phi i32 [ 256, %sw.epilog ], [ 19, %for.end100 ], [ -1, %sw.default ]
  %extra.0522 = phi ptr [ getelementptr ([31 x i16], ptr @zlib_inflate_table.lext, i32 -9, i32 22), %sw.epilog ], [ %work, %for.end100 ], [ @zlib_inflate_table.dext, %sw.default ]
  %base.0521 = phi ptr [ getelementptr ([31 x i16], ptr @zlib_inflate_table.lbase, i32 -9, i32 22), %sw.epilog ], [ %work, %for.end100 ], [ @zlib_inflate_table.dbase, %sw.default ]
  %shl103524 = shl nuw i32 1, %71
  %sub104525 = add nsw i32 %shl103524, -1
  %89 = load ptr, ptr %table, align 4
  %conv221 = trunc i32 %71 to i8
  br label %for.cond112.outer

for.cond112.outer:                                ; preds = %if.end216, %for.cond112.preheader
  %len.3.ph = phi i32 [ %len.4, %if.end216 ], [ %min.0.lcssa512, %for.cond112.preheader ]
  %sym.2.ph = phi i32 [ %inc162, %if.end216 ], [ 0, %for.cond112.preheader ]
  %curr.0.ph = phi i32 [ %curr.1.lcssa, %if.end216 ], [ %71, %for.cond112.preheader ]
  %drop.0.ph = phi i32 [ %spec.select443, %if.end216 ], [ 0, %for.cond112.preheader ]
  %used.0.ph = phi i32 [ %add209, %if.end216 ], [ %shl103524, %for.cond112.preheader ]
  %huff.0.ph = phi i32 [ %huff.1, %if.end216 ], [ 0, %for.cond112.preheader ]
  %low.0.ph = phi i32 [ %and181, %if.end216 ], [ -1, %for.cond112.preheader ]
  %next.0.ph = phi ptr [ %add.ptr189, %if.end216 ], [ %89, %for.cond112.preheader ]
  %shl145 = shl nuw i32 1, %curr.0.ph
  br label %for.cond112

for.cond112:                                      ; preds = %for.cond112.backedge, %for.cond112.outer
  %len.3 = phi i32 [ %len.3.ph, %for.cond112.outer ], [ %len.4, %for.cond112.backedge ]
  %sym.2 = phi i32 [ %sym.2.ph, %for.cond112.outer ], [ %inc162, %for.cond112.backedge ]
  %huff.0 = phi i32 [ %huff.0.ph, %for.cond112.outer ], [ %huff.1, %for.cond112.backedge ]
  %sub113 = sub i32 %len.3, %drop.0.ph
  %conv114 = trunc i32 %sub113 to i8
  %arrayidx116 = getelementptr i16, ptr %work, i32 %sym.2
  %90 = load i16, ptr %arrayidx116, align 2
  %conv117 = zext i16 %90 to i32
  %cmp118 = icmp sgt i32 %end.0523, %conv117
  br i1 %cmp118, label %if.end142, label %if.else

if.else:                                          ; preds = %for.cond112
  %cmp126 = icmp slt i32 %end.0523, %conv117
  br i1 %cmp126, label %if.then128, label %if.end142

if.then128:                                       ; preds = %if.else
  %arrayidx131 = getelementptr i16, ptr %extra.0522, i32 %conv117
  %91 = load i16, ptr %arrayidx131, align 2
  %conv132 = trunc i16 %91 to i8
  %arrayidx136 = getelementptr i16, ptr %base.0521, i32 %conv117
  %92 = load i16, ptr %arrayidx136, align 2
  br label %if.end142

if.end142:                                        ; preds = %if.then128, %if.else, %for.cond112
  %this.sroa.17.0 = phi i16 [ %92, %if.then128 ], [ %90, %for.cond112 ], [ 0, %if.else ]
  %this.sroa.0.0 = phi i8 [ %conv132, %if.then128 ], [ 0, %for.cond112 ], [ 96, %if.else ]
  %shl144.neg = shl nsw i32 -1, %sub113
  %shr = lshr i32 %huff.0, %drop.0.ph
  br label %do.body

do.body:                                          ; preds = %do.body, %if.end142
  %fill.0 = phi i32 [ %shl145, %if.end142 ], [ %sub146, %do.body ]
  %sub146 = add i32 %fill.0, %shl144.neg
  %add147 = add i32 %sub146, %shr
  %arrayidx148 = getelementptr %struct.code, ptr %next.0.ph, i32 %add147
  store i8 %this.sroa.0.0, ptr %arrayidx148, align 2
  %this.sroa.12.0.arrayidx148.sroa_idx = getelementptr inbounds i8, ptr %arrayidx148, i32 1
  store i8 %conv114, ptr %this.sroa.12.0.arrayidx148.sroa_idx, align 1
  %this.sroa.17.0.arrayidx148.sroa_idx = getelementptr inbounds i8, ptr %arrayidx148, i32 2
  store i16 %this.sroa.17.0, ptr %this.sroa.17.0.arrayidx148.sroa_idx, align 2
  %cmp149.not = icmp eq i32 %sub146, 0
  br i1 %cmp149.not, label %do.end, label %do.body

do.end:                                           ; preds = %do.body
  %sub151 = add i32 %len.3, -1
  %shl152 = shl nuw i32 1, %sub151
  br label %while.cond

while.cond:                                       ; preds = %while.cond, %do.end
  %incr.0 = phi i32 [ %shl152, %do.end ], [ %shr153, %while.cond ]
  %and = and i32 %incr.0, %huff.0
  %tobool.not = icmp eq i32 %and, 0
  %shr153 = lshr i32 %incr.0, 1
  br i1 %tobool.not, label %while.end, label %while.cond

while.end:                                        ; preds = %while.cond
  %cmp154.not = icmp eq i32 %incr.0, 0
  %sub157 = add i32 %incr.0, -1
  %and158 = and i32 %sub157, %huff.0
  %add159 = add i32 %and158, %incr.0
  %huff.1 = select i1 %cmp154.not, i32 0, i32 %add159
  %inc162 = add i32 %sym.2, 1
  %arrayidx163 = getelementptr [16 x i16], ptr %count, i32 0, i32 %len.3
  %93 = load i16, ptr %arrayidx163, align 2
  %dec164 = add i16 %93, -1
  store i16 %dec164, ptr %arrayidx163, align 2
  %cmp166 = icmp eq i16 %dec164, 0
  br i1 %cmp166, label %if.then168, label %if.end177

if.then168:                                       ; preds = %while.end
  %cmp169 = icmp eq i32 %len.3, %max.0461.lcssa505510
  br i1 %cmp169, label %while.cond234.preheader, label %if.end172

while.cond234.preheader:                          ; preds = %if.then168
  %cmp235.not475 = icmp eq i32 %huff.1, 0
  br i1 %cmp235.not475, label %while.end266, label %while.body237.preheader

while.body237.preheader:                          ; preds = %while.cond234.preheader
  %conv114.le = trunc i32 %sub113 to i8
  br label %while.body237

if.end172:                                        ; preds = %if.then168
  %arrayidx173 = getelementptr i16, ptr %work, i32 %inc162
  %94 = load i16, ptr %arrayidx173, align 2
  %idxprom174 = zext i16 %94 to i32
  %arrayidx175 = getelementptr i16, ptr %lens, i32 %idxprom174
  %95 = load i16, ptr %arrayidx175, align 2
  %conv176 = zext i16 %95 to i32
  br label %if.end177

if.end177:                                        ; preds = %if.end172, %while.end
  %len.4 = phi i32 [ %conv176, %if.end172 ], [ %len.3, %while.end ]
  %cmp178 = icmp ugt i32 %len.4, %71
  br i1 %cmp178, label %land.lhs.true180, label %for.cond112.backedge

land.lhs.true180:                                 ; preds = %if.end177
  %and181 = and i32 %huff.1, %sub104525
  %cmp182.not = icmp eq i32 %and181, %low.0.ph
  br i1 %cmp182.not, label %for.cond112.backedge, label %if.then184

for.cond112.backedge:                             ; preds = %land.lhs.true180, %if.end177
  br label %for.cond112

if.then184:                                       ; preds = %land.lhs.true180
  %cmp185 = icmp eq i32 %drop.0.ph, 0
  %spec.select443 = select i1 %cmp185, i32 %71, i32 %drop.0.ph
  %add.ptr189 = getelementptr %struct.code, ptr %next.0.ph, i32 %shl145
  %sub190 = sub i32 %len.4, %spec.select443
  %shl191 = shl nuw i32 1, %sub190
  %cmp194470 = icmp ult i32 %len.4, %max.0461.lcssa505510
  br i1 %cmp194470, label %while.body196.preheader, label %while.end207

while.body196.preheader:                          ; preds = %if.then184
  %96 = sub i32 %max.0461.lcssa505510, %spec.select443
  br label %while.body196

while.body196:                                    ; preds = %if.end204, %while.body196.preheader
  %add193473 = phi i32 [ %add193, %if.end204 ], [ %len.4, %while.body196.preheader ]
  %left.1472 = phi i32 [ %shl206, %if.end204 ], [ %shl191, %while.body196.preheader ]
  %curr.1471 = phi i32 [ %inc205, %if.end204 ], [ %sub190, %while.body196.preheader ]
  %arrayidx198 = getelementptr [16 x i16], ptr %count, i32 0, i32 %add193473
  %97 = load i16, ptr %arrayidx198, align 2
  %conv199 = zext i16 %97 to i32
  %sub200 = sub i32 %left.1472, %conv199
  %cmp201 = icmp slt i32 %sub200, 1
  br i1 %cmp201, label %while.end207.loopexit, label %if.end204

if.end204:                                        ; preds = %while.body196
  %inc205 = add i32 %curr.1471, 1
  %shl206 = shl nuw i32 %sub200, 1
  %add193 = add i32 %inc205, %spec.select443
  %cmp194 = icmp ult i32 %add193, %max.0461.lcssa505510
  br i1 %cmp194, label %while.body196, label %while.end207.loopexit

while.end207.loopexit:                            ; preds = %if.end204, %while.body196
  %curr.1.lcssa.ph = phi i32 [ %96, %if.end204 ], [ %curr.1471, %while.body196 ]
  %.pre496 = shl nuw i32 1, %curr.1.lcssa.ph
  br label %while.end207

while.end207:                                     ; preds = %while.end207.loopexit, %if.then184
  %shl208.pre-phi = phi i32 [ %.pre496, %while.end207.loopexit ], [ %shl191, %if.then184 ]
  %curr.1.lcssa = phi i32 [ %curr.1.lcssa.ph, %while.end207.loopexit ], [ %sub190, %if.then184 ]
  %add209 = add i32 %shl208.pre-phi, %used.0.ph
  %cmp213 = icmp ugt i32 %add209, 1455
  %or.cond289 = select i1 %cmp105526, i1 %cmp213, i1 false
  br i1 %or.cond289, label %cleanup, label %if.end216

if.end216:                                        ; preds = %while.end207
  %conv218 = trunc i32 %curr.1.lcssa to i8
  %98 = load ptr, ptr %table, align 4
  %arrayidx219 = getelementptr %struct.code, ptr %98, i32 %and181
  store i8 %conv218, ptr %arrayidx219, align 2
  %99 = load ptr, ptr %table, align 4
  %bits223 = getelementptr %struct.code, ptr %99, i32 %and181, i32 1
  store i8 %conv221, ptr %bits223, align 1
  %100 = load ptr, ptr %table, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %add.ptr189 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %100 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %101 = lshr exact i32 %sub.ptr.sub, 2
  %conv224 = trunc i32 %101 to i16
  %val226 = getelementptr %struct.code, ptr %100, i32 %and181, i32 2
  store i16 %conv224, ptr %val226, align 2
  br label %for.cond112.outer

while.body237:                                    ; preds = %while.end257, %while.body237.preheader
  %next.2481 = phi ptr [ %next.3, %while.end257 ], [ %next.0.ph, %while.body237.preheader ]
  %this.sroa.12.0480 = phi i8 [ %this.sroa.12.1, %while.end257 ], [ %conv114.le, %while.body237.preheader ]
  %huff.2478 = phi i32 [ %add263, %while.end257 ], [ %add159, %while.body237.preheader ]
  %drop.3477 = phi i32 [ %drop.4, %while.end257 ], [ %drop.0.ph, %while.body237.preheader ]
  %len.5476 = phi i32 [ %len.6, %while.end257 ], [ %max.0461.lcssa505510, %while.body237.preheader ]
  %cmp238.not = icmp eq i32 %drop.3477, 0
  br i1 %cmp238.not, label %if.end247, label %land.lhs.true240

land.lhs.true240:                                 ; preds = %while.body237
  %and241 = and i32 %huff.2478, %sub104525
  %cmp242.not = icmp eq i32 %and241, %low.0.ph
  br i1 %cmp242.not, label %if.end247, label %if.then244

if.then244:                                       ; preds = %land.lhs.true240
  %102 = load ptr, ptr %table, align 4
  br label %if.end247

if.end247:                                        ; preds = %if.then244, %land.lhs.true240, %while.body237
  %len.6 = phi i32 [ %71, %if.then244 ], [ %len.5476, %land.lhs.true240 ], [ %len.5476, %while.body237 ]
  %drop.4 = phi i32 [ 0, %if.then244 ], [ %drop.3477, %land.lhs.true240 ], [ 0, %while.body237 ]
  %this.sroa.12.1 = phi i8 [ %conv221, %if.then244 ], [ %this.sroa.12.0480, %land.lhs.true240 ], [ %this.sroa.12.0480, %while.body237 ]
  %next.3 = phi ptr [ %102, %if.then244 ], [ %next.2481, %land.lhs.true240 ], [ %next.2481, %while.body237 ]
  %shr248 = lshr i32 %huff.2478, %drop.4
  %arrayidx249 = getelementptr %struct.code, ptr %next.3, i32 %shr248
  store i8 64, ptr %arrayidx249, align 2
  %this.sroa.12.0.arrayidx249.sroa_idx = getelementptr inbounds i8, ptr %arrayidx249, i32 1
  store i8 %this.sroa.12.1, ptr %this.sroa.12.0.arrayidx249.sroa_idx, align 1
  %this.sroa.17.0.arrayidx249.sroa_idx = getelementptr inbounds i8, ptr %arrayidx249, i32 2
  store i16 0, ptr %this.sroa.17.0.arrayidx249.sroa_idx, align 2
  %sub250 = add i32 %len.6, -1
  %shl251 = shl nuw i32 1, %sub250
  br label %while.cond252

while.cond252:                                    ; preds = %while.cond252, %if.end247
  %incr.1 = phi i32 [ %shl251, %if.end247 ], [ %shr256, %while.cond252 ]
  %and253 = and i32 %incr.1, %huff.2478
  %tobool254.not = icmp eq i32 %and253, 0
  %shr256 = lshr i32 %incr.1, 1
  br i1 %tobool254.not, label %while.end257, label %while.cond252

while.end257:                                     ; preds = %while.cond252
  %cmp258.not = icmp eq i32 %incr.1, 0
  %sub261 = add i32 %incr.1, -1
  %and262 = and i32 %sub261, %huff.2478
  %add263 = add i32 %and262, %incr.1
  %cmp235.not535 = icmp eq i32 %add263, 0
  %cmp235.not = select i1 %cmp258.not, i1 true, i1 %cmp235.not535
  br i1 %cmp235.not, label %while.end266, label %while.body237

while.end266:                                     ; preds = %while.end257, %while.cond234.preheader
  %103 = load ptr, ptr %table, align 4
  %add.ptr267 = getelementptr %struct.code, ptr %103, i32 %used.0.ph
  store ptr %add.ptr267, ptr %table, align 4
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %while.end266, %for.inc16.14
  %.sink = phi i32 [ %71, %while.end266 ], [ 1, %for.inc16.14 ]
  store i32 %.sink, ptr %bits, align 4
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.end207, %sw.epilog, %for.cond45.14, %for.cond45.13, %for.cond45.12, %for.cond45.11, %for.cond45.10, %for.cond45.9, %for.cond45.8, %for.cond45.7, %for.cond45.6, %for.cond45.5, %for.cond45.4, %for.cond45.3, %for.cond45.2, %for.cond45.1, %for.cond45, %for.end40
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ -1, %for.cond45.13 ], [ -1, %for.cond45.12 ], [ -1, %for.cond45.11 ], [ -1, %for.cond45.10 ], [ -1, %for.cond45.9 ], [ -1, %for.cond45.8 ], [ -1, %for.cond45.7 ], [ -1, %for.cond45.6 ], [ -1, %for.cond45.5 ], [ -1, %for.cond45.4 ], [ -1, %for.cond45.3 ], [ -1, %for.cond45.2 ], [ -1, %for.cond45.1 ], [ -1, %for.cond45 ], [ -1, %for.end40 ], [ -1, %for.cond45.14 ], [ 0, %cleanup.sink.split ], [ 1, %while.end207 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %offs) #10
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %count) #10
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync)
define void @inflate_fast(ptr nocapture noundef %strm, i32 noundef %start) local_unnamed_addr #2 align 64 {
entry:
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 7
  %0 = load ptr, ptr %state1, align 4
  %1 = load ptr, ptr %strm, align 4
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 1
  %2 = load i32, ptr %avail_in, align 4
  %sub = add i32 %2, -5
  %add.ptr = getelementptr i8, ptr %1, i32 %sub
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 3
  %3 = load ptr, ptr %next_out, align 4
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 4
  %4 = load i32, ptr %avail_out, align 4
  %sub2.neg = sub i32 %4, %start
  %add.ptr3 = getelementptr i8, ptr %3, i32 %sub2.neg
  %sub5 = add i32 %4, -257
  %add.ptr6 = getelementptr i8, ptr %3, i32 %sub5
  %wsize7 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 9
  %5 = load i32, ptr %wsize7, align 4
  %whave8 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 10
  %6 = load i32, ptr %whave8, align 4
  %write9 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 11
  %7 = load i32, ptr %write9, align 4
  %window10 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %window10, align 4
  %hold11 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 13
  %9 = load i32, ptr %hold11, align 4
  %bits12 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 14
  %10 = load i32, ptr %bits12, align 4
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 18
  %11 = load ptr, ptr %lencode, align 4
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 19
  %12 = load ptr, ptr %distcode, align 4
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 20
  %13 = load i32, ptr %lenbits, align 4
  %notmask = shl nsw i32 -1, %13
  %sub13 = xor i32 %notmask, -1
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 21
  %14 = load i32, ptr %distbits, align 4
  %notmask561 = shl nsw i32 -1, %14
  %sub15 = xor i32 %notmask561, -1
  %sub.ptr.rhs.cast = ptrtoint ptr %add.ptr3 to i32
  %cmp116 = icmp eq i32 %7, 0
  %add136 = add i32 %7, %5
  br label %do.body

do.body:                                          ; preds = %do.cond288, %entry
  %out.0 = phi ptr [ %3, %entry ], [ %out.10, %do.cond288 ]
  %hold.0 = phi i32 [ %9, %entry ], [ %hold.8, %do.cond288 ]
  %bits.0 = phi i32 [ %10, %entry ], [ %bits.8, %do.cond288 ]
  %in.0 = phi ptr [ %1, %entry ], [ %in.6, %do.cond288 ]
  %cmp = icmp ult i32 %bits.0, 15
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %do.body
  %incdec.ptr = getelementptr i8, ptr %in.0, i32 1
  %15 = load i8, ptr %in.0, align 1
  %conv = zext i8 %15 to i32
  %shl16 = shl nuw nsw i32 %conv, %bits.0
  %add = add i32 %shl16, %hold.0
  %add17 = add nuw nsw i32 %bits.0, 8
  %incdec.ptr18 = getelementptr i8, ptr %in.0, i32 2
  %16 = load i8, ptr %incdec.ptr, align 1
  %conv19 = zext i8 %16 to i32
  %shl20 = shl nuw nsw i32 %conv19, %add17
  %add21 = add i32 %add, %shl20
  %add22 = add nuw nsw i32 %bits.0, 16
  br label %if.end

if.end:                                           ; preds = %if.then, %do.body
  %hold.1 = phi i32 [ %add21, %if.then ], [ %hold.0, %do.body ]
  %bits.1 = phi i32 [ %add22, %if.then ], [ %bits.0, %do.body ]
  %in.1 = phi ptr [ %incdec.ptr18, %if.then ], [ %in.0, %do.body ]
  %and = and i32 %hold.1, %sub13
  %this.sroa.0.0.in589 = getelementptr %struct.code, ptr %11, i32 %and
  %this.sroa.0.0590 = load i8, ptr %this.sroa.0.0.in589, align 2
  %this.sroa.9.0.in591 = getelementptr %struct.code, ptr %11, i32 %and, i32 1
  %this.sroa.9.0592 = load i8, ptr %this.sroa.9.0.in591, align 1
  %this.sroa.12.0.in593 = getelementptr %struct.code, ptr %11, i32 %and, i32 2
  %this.sroa.12.0594 = load i16, ptr %this.sroa.12.0.in593, align 2
  %conv24595 = zext i8 %this.sroa.9.0592 to i32
  %shr596 = lshr i32 %hold.1, %conv24595
  %sub25597 = sub i32 %bits.1, %conv24595
  %cmp28599 = icmp eq i8 %this.sroa.0.0590, 0
  %extract.t = trunc i16 %this.sroa.12.0594 to i8
  br i1 %cmp28599, label %if.then30, label %if.else

if.then30.loopexit:                               ; preds = %if.then270
  %extract.t634 = trunc i16 %this.sroa.12.0 to i8
  br label %if.then30

if.then30:                                        ; preds = %if.then30.loopexit, %if.end
  %this.sroa.12.0.lcssa.off0 = phi i8 [ %extract.t, %if.end ], [ %extract.t634, %if.then30.loopexit ]
  %shr.lcssa = phi i32 [ %shr596, %if.end ], [ %shr, %if.then30.loopexit ]
  %sub25.lcssa = phi i32 [ %sub25597, %if.end ], [ %sub25, %if.then30.loopexit ]
  %incdec.ptr32 = getelementptr i8, ptr %out.0, i32 1
  store i8 %this.sroa.12.0.lcssa.off0, ptr %out.0, align 1
  br label %do.cond288

if.else:                                          ; preds = %if.then270, %if.end
  %sub25603 = phi i32 [ %sub25, %if.then270 ], [ %sub25597, %if.end ]
  %shr602 = phi i32 [ %shr, %if.then270 ], [ %shr596, %if.end ]
  %this.sroa.12.0601 = phi i16 [ %this.sroa.12.0, %if.then270 ], [ %this.sroa.12.0594, %if.end ]
  %this.sroa.0.0600 = phi i8 [ %this.sroa.0.0, %if.then270 ], [ %this.sroa.0.0590, %if.end ]
  %conv27604 = zext i8 %this.sroa.0.0600 to i32
  %and33 = and i32 %conv27604, 16
  %tobool.not = icmp eq i32 %and33, 0
  br i1 %tobool.not, label %if.else266, label %if.then34

if.then34:                                        ; preds = %if.else
  %conv36 = zext i16 %this.sroa.12.0601 to i32
  %17 = and i8 %this.sroa.0.0600, 15
  %and37 = zext i8 %17 to i32
  %tobool38.not = icmp eq i8 %17, 0
  br i1 %tobool38.not, label %if.end55, label %if.then39

if.then39:                                        ; preds = %if.then34
  %cmp40 = icmp ult i32 %sub25603, %and37
  br i1 %cmp40, label %if.then42, label %if.end48

if.then42:                                        ; preds = %if.then39
  %incdec.ptr43 = getelementptr i8, ptr %in.1, i32 1
  %18 = load i8, ptr %in.1, align 1
  %conv44 = zext i8 %18 to i32
  %shl45 = shl i32 %conv44, %sub25603
  %add46 = add i32 %shl45, %shr602
  %add47 = add i32 %sub25603, 8
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %if.then39
  %hold.3 = phi i32 [ %add46, %if.then42 ], [ %shr602, %if.then39 ]
  %bits.3 = phi i32 [ %add47, %if.then42 ], [ %sub25603, %if.then39 ]
  %in.2 = phi ptr [ %incdec.ptr43, %if.then42 ], [ %in.1, %if.then39 ]
  %notmask566 = shl nsw i32 -1, %and37
  %sub50 = xor i32 %notmask566, -1
  %and51 = and i32 %hold.3, %sub50
  %add52 = add nuw nsw i32 %and51, %conv36
  %shr53 = lshr i32 %hold.3, %and37
  %sub54 = sub i32 %bits.3, %and37
  br label %if.end55

if.end55:                                         ; preds = %if.end48, %if.then34
  %hold.4 = phi i32 [ %shr53, %if.end48 ], [ %shr602, %if.then34 ]
  %bits.4 = phi i32 [ %sub54, %if.end48 ], [ %sub25603, %if.then34 ]
  %len.0 = phi i32 [ %add52, %if.end48 ], [ %conv36, %if.then34 ]
  %in.3 = phi ptr [ %in.2, %if.end48 ], [ %in.1, %if.then34 ]
  %cmp56 = icmp ult i32 %bits.4, 15
  br i1 %cmp56, label %if.then58, label %if.end69

if.then58:                                        ; preds = %if.end55
  %incdec.ptr59 = getelementptr i8, ptr %in.3, i32 1
  %19 = load i8, ptr %in.3, align 1
  %conv60 = zext i8 %19 to i32
  %shl61 = shl nuw nsw i32 %conv60, %bits.4
  %add62 = add i32 %shl61, %hold.4
  %add63 = add nuw nsw i32 %bits.4, 8
  %incdec.ptr64 = getelementptr i8, ptr %in.3, i32 2
  %20 = load i8, ptr %incdec.ptr59, align 1
  %conv65 = zext i8 %20 to i32
  %shl66 = shl nuw nsw i32 %conv65, %add63
  %add67 = add i32 %add62, %shl66
  %add68 = add nuw nsw i32 %bits.4, 16
  br label %if.end69

if.end69:                                         ; preds = %if.then58, %if.end55
  %hold.5 = phi i32 [ %add67, %if.then58 ], [ %hold.4, %if.end55 ]
  %bits.5 = phi i32 [ %add68, %if.then58 ], [ %bits.4, %if.end55 ]
  %in.4 = phi ptr [ %incdec.ptr64, %if.then58 ], [ %in.3, %if.end55 ]
  %and70 = and i32 %hold.5, %sub15
  %this.sroa.0.1.in607 = getelementptr %struct.code, ptr %12, i32 %and70
  %this.sroa.0.1608 = load i8, ptr %this.sroa.0.1.in607, align 2
  %this.sroa.9.1.in609 = getelementptr %struct.code, ptr %12, i32 %and70, i32 1
  %this.sroa.9.1610 = load i8, ptr %this.sroa.9.1.in609, align 1
  %this.sroa.12.1.in611 = getelementptr %struct.code, ptr %12, i32 %and70, i32 2
  %this.sroa.12.1612 = load i16, ptr %this.sroa.12.1.in611, align 2
  %conv73613 = zext i8 %this.sroa.9.1610 to i32
  %shr74614 = lshr i32 %hold.5, %conv73613
  %sub75615 = sub i32 %bits.5, %conv73613
  %conv77616 = zext i8 %this.sroa.0.1608 to i32
  %and78617 = and i32 %conv77616, 16
  %tobool79.not618 = icmp eq i32 %and78617, 0
  br i1 %tobool79.not618, label %if.else250, label %if.then80

if.then80:                                        ; preds = %if.then254, %if.end69
  %this.sroa.0.1.lcssa = phi i8 [ %this.sroa.0.1608, %if.end69 ], [ %this.sroa.0.1, %if.then254 ]
  %this.sroa.12.1.lcssa = phi i16 [ %this.sroa.12.1612, %if.end69 ], [ %this.sroa.12.1, %if.then254 ]
  %shr74.lcssa = phi i32 [ %shr74614, %if.end69 ], [ %shr74, %if.then254 ]
  %sub75.lcssa = phi i32 [ %sub75615, %if.end69 ], [ %sub75, %if.then254 ]
  %conv82 = zext i16 %this.sroa.12.1.lcssa to i32
  %21 = and i8 %this.sroa.0.1.lcssa, 15
  %and83 = zext i8 %21 to i32
  %cmp84 = icmp ult i32 %sub75.lcssa, %and83
  br i1 %cmp84, label %if.then86, label %if.end101

if.then86:                                        ; preds = %if.then80
  %incdec.ptr87 = getelementptr i8, ptr %in.4, i32 1
  %22 = load i8, ptr %in.4, align 1
  %conv88 = zext i8 %22 to i32
  %shl89 = shl i32 %conv88, %sub75.lcssa
  %add90 = add i32 %shl89, %shr74.lcssa
  %add91 = add i32 %sub75.lcssa, 8
  %cmp92 = icmp ult i32 %add91, %and83
  br i1 %cmp92, label %if.then94, label %if.end101

if.then94:                                        ; preds = %if.then86
  %incdec.ptr95 = getelementptr i8, ptr %in.4, i32 2
  %23 = load i8, ptr %incdec.ptr87, align 1
  %conv96 = zext i8 %23 to i32
  %shl97 = shl i32 %conv96, %add91
  %add98 = add i32 %shl97, %add90
  %add99 = add i32 %sub75.lcssa, 16
  br label %if.end101

if.end101:                                        ; preds = %if.then94, %if.then86, %if.then80
  %hold.7 = phi i32 [ %add98, %if.then94 ], [ %add90, %if.then86 ], [ %shr74.lcssa, %if.then80 ]
  %bits.7 = phi i32 [ %add99, %if.then94 ], [ %add91, %if.then86 ], [ %sub75.lcssa, %if.then80 ]
  %in.5 = phi ptr [ %incdec.ptr95, %if.then94 ], [ %incdec.ptr87, %if.then86 ], [ %in.4, %if.then80 ]
  %notmask565 = shl nsw i32 -1, %and83
  %sub103 = xor i32 %notmask565, -1
  %and104 = and i32 %hold.7, %sub103
  %add105 = add nuw nsw i32 %and104, %conv82
  %shr106 = lshr i32 %hold.7, %and83
  %sub107 = sub i32 %bits.7, %and83
  %sub.ptr.lhs.cast = ptrtoint ptr %out.0 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %cmp108 = icmp ugt i32 %add105, %sub.ptr.sub
  br i1 %cmp108, label %if.then110, label %if.else205

if.then110:                                       ; preds = %if.end101
  %sub111 = sub i32 %add105, %sub.ptr.sub
  %cmp112 = icmp ugt i32 %sub111, %6
  br i1 %cmp112, label %do.end293.sink.split.sink.split, label %if.end115

if.end115:                                        ; preds = %if.then110
  br i1 %cmp116, label %if.then118, label %if.else132

if.then118:                                       ; preds = %if.end115
  %sub119 = sub i32 %5, %sub111
  %add.ptr120 = getelementptr i8, ptr %8, i32 %sub119
  %cmp121 = icmp ugt i32 %len.0, %sub111
  br i1 %cmp121, label %do.body125, label %if.end184

do.body125:                                       ; preds = %do.body125, %if.then118
  %out.1 = phi ptr [ %incdec.ptr127, %do.body125 ], [ %out.0, %if.then118 ]
  %op.0 = phi i32 [ %dec, %do.body125 ], [ %sub111, %if.then118 ]
  %from.0 = phi ptr [ %incdec.ptr126, %do.body125 ], [ %add.ptr120, %if.then118 ]
  %incdec.ptr126 = getelementptr i8, ptr %from.0, i32 1
  %24 = load i8, ptr %from.0, align 1
  %incdec.ptr127 = getelementptr i8, ptr %out.1, i32 1
  store i8 %24, ptr %out.1, align 1
  %dec = add i32 %op.0, -1
  %tobool128.not = icmp eq i32 %dec, 0
  br i1 %tobool128.not, label %do.end, label %do.body125

do.end:                                           ; preds = %do.body125
  %sub124 = sub i32 %len.0, %sub111
  %idx.neg129 = sub nsw i32 0, %add105
  %add.ptr130 = getelementptr i8, ptr %incdec.ptr127, i32 %idx.neg129
  br label %if.end184

if.else132:                                       ; preds = %if.end115
  %cmp133 = icmp ult i32 %7, %sub111
  br i1 %cmp133, label %if.then135, label %if.else166

if.then135:                                       ; preds = %if.else132
  %sub137 = sub i32 %add136, %sub111
  %add.ptr138 = getelementptr i8, ptr %8, i32 %sub137
  %sub139 = sub i32 %sub111, %7
  %cmp140 = icmp ugt i32 %len.0, %sub139
  br i1 %cmp140, label %do.body144, label %if.end184

do.body144:                                       ; preds = %do.body144, %if.then135
  %out.2 = phi ptr [ %incdec.ptr146, %do.body144 ], [ %out.0, %if.then135 ]
  %op.1 = phi i32 [ %dec148, %do.body144 ], [ %sub139, %if.then135 ]
  %from.1 = phi ptr [ %incdec.ptr145, %do.body144 ], [ %add.ptr138, %if.then135 ]
  %incdec.ptr145 = getelementptr i8, ptr %from.1, i32 1
  %25 = load i8, ptr %from.1, align 1
  %incdec.ptr146 = getelementptr i8, ptr %out.2, i32 1
  store i8 %25, ptr %out.2, align 1
  %dec148 = add i32 %op.1, -1
  %tobool149.not = icmp eq i32 %dec148, 0
  br i1 %tobool149.not, label %do.end150, label %do.body144

do.end150:                                        ; preds = %do.body144
  %sub143 = sub i32 %len.0, %sub139
  %cmp151 = icmp ugt i32 %sub143, %7
  br i1 %cmp151, label %do.body155, label %if.end184

do.body155:                                       ; preds = %do.body155, %do.end150
  %out.3 = phi ptr [ %incdec.ptr157, %do.body155 ], [ %incdec.ptr146, %do.end150 ]
  %op.2 = phi i32 [ %dec159, %do.body155 ], [ %7, %do.end150 ]
  %from.2 = phi ptr [ %incdec.ptr156, %do.body155 ], [ %8, %do.end150 ]
  %incdec.ptr156 = getelementptr i8, ptr %from.2, i32 1
  %26 = load i8, ptr %from.2, align 1
  %incdec.ptr157 = getelementptr i8, ptr %out.3, i32 1
  store i8 %26, ptr %out.3, align 1
  %dec159 = add i32 %op.2, -1
  %tobool160.not = icmp eq i32 %dec159, 0
  br i1 %tobool160.not, label %do.end161, label %do.body155

do.end161:                                        ; preds = %do.body155
  %sub154 = sub i32 %sub143, %7
  %idx.neg162 = sub nsw i32 0, %add105
  %add.ptr163 = getelementptr i8, ptr %incdec.ptr157, i32 %idx.neg162
  br label %if.end184

if.else166:                                       ; preds = %if.else132
  %sub167 = sub i32 %7, %sub111
  %add.ptr168 = getelementptr i8, ptr %8, i32 %sub167
  %cmp169 = icmp ugt i32 %len.0, %sub111
  br i1 %cmp169, label %do.body173, label %if.end184

do.body173:                                       ; preds = %do.body173, %if.else166
  %out.4 = phi ptr [ %incdec.ptr175, %do.body173 ], [ %out.0, %if.else166 ]
  %op.3 = phi i32 [ %dec177, %do.body173 ], [ %sub111, %if.else166 ]
  %from.3 = phi ptr [ %incdec.ptr174, %do.body173 ], [ %add.ptr168, %if.else166 ]
  %incdec.ptr174 = getelementptr i8, ptr %from.3, i32 1
  %27 = load i8, ptr %from.3, align 1
  %incdec.ptr175 = getelementptr i8, ptr %out.4, i32 1
  store i8 %27, ptr %out.4, align 1
  %dec177 = add i32 %op.3, -1
  %tobool178.not = icmp eq i32 %dec177, 0
  br i1 %tobool178.not, label %do.end179, label %do.body173

do.end179:                                        ; preds = %do.body173
  %sub172 = sub i32 %len.0, %sub111
  %idx.neg180 = sub nsw i32 0, %add105
  %add.ptr181 = getelementptr i8, ptr %incdec.ptr175, i32 %idx.neg180
  br label %if.end184

if.end184:                                        ; preds = %do.end179, %if.else166, %do.end161, %do.end150, %if.then135, %do.end, %if.then118
  %out.5 = phi ptr [ %incdec.ptr127, %do.end ], [ %out.0, %if.then118 ], [ %incdec.ptr157, %do.end161 ], [ %incdec.ptr146, %do.end150 ], [ %out.0, %if.then135 ], [ %incdec.ptr175, %do.end179 ], [ %out.0, %if.else166 ]
  %len.1 = phi i32 [ %sub124, %do.end ], [ %len.0, %if.then118 ], [ %sub154, %do.end161 ], [ %sub143, %do.end150 ], [ %len.0, %if.then135 ], [ %sub172, %do.end179 ], [ %len.0, %if.else166 ]
  %from.4 = phi ptr [ %add.ptr130, %do.end ], [ %add.ptr120, %if.then118 ], [ %add.ptr163, %do.end161 ], [ %8, %do.end150 ], [ %add.ptr138, %if.then135 ], [ %add.ptr181, %do.end179 ], [ %add.ptr168, %if.else166 ]
  %cmp185627 = icmp ugt i32 %len.1, 2
  br i1 %cmp185627, label %while.body, label %while.end

while.body:                                       ; preds = %while.body, %if.end184
  %from.5630 = phi ptr [ %incdec.ptr191, %while.body ], [ %from.4, %if.end184 ]
  %len.2629 = phi i32 [ %sub193, %while.body ], [ %len.1, %if.end184 ]
  %out.6628 = phi ptr [ %incdec.ptr192, %while.body ], [ %out.5, %if.end184 ]
  %incdec.ptr187 = getelementptr i8, ptr %from.5630, i32 1
  %28 = load i8, ptr %from.5630, align 1
  %incdec.ptr188 = getelementptr i8, ptr %out.6628, i32 1
  store i8 %28, ptr %out.6628, align 1
  %incdec.ptr189 = getelementptr i8, ptr %from.5630, i32 2
  %29 = load i8, ptr %incdec.ptr187, align 1
  %incdec.ptr190 = getelementptr i8, ptr %out.6628, i32 2
  store i8 %29, ptr %incdec.ptr188, align 1
  %incdec.ptr191 = getelementptr i8, ptr %from.5630, i32 3
  %30 = load i8, ptr %incdec.ptr189, align 1
  %incdec.ptr192 = getelementptr i8, ptr %out.6628, i32 3
  store i8 %30, ptr %incdec.ptr190, align 1
  %sub193 = add i32 %len.2629, -3
  %cmp185 = icmp ugt i32 %sub193, 2
  br i1 %cmp185, label %while.body, label %while.end

while.end:                                        ; preds = %while.body, %if.end184
  %out.6.lcssa = phi ptr [ %out.5, %if.end184 ], [ %incdec.ptr192, %while.body ]
  %len.2.lcssa = phi i32 [ %len.1, %if.end184 ], [ %sub193, %while.body ]
  %from.5.lcssa = phi ptr [ %from.4, %if.end184 ], [ %incdec.ptr191, %while.body ]
  %tobool194.not = icmp eq i32 %len.2.lcssa, 0
  br i1 %tobool194.not, label %do.cond288, label %if.then195

if.then195:                                       ; preds = %while.end
  %31 = load i8, ptr %from.5.lcssa, align 1
  %incdec.ptr197 = getelementptr i8, ptr %out.6.lcssa, i32 1
  store i8 %31, ptr %out.6.lcssa, align 1
  %cmp198.not = icmp eq i32 %len.2.lcssa, 1
  br i1 %cmp198.not, label %do.cond288, label %if.then200

if.then200:                                       ; preds = %if.then195
  %incdec.ptr196 = getelementptr i8, ptr %from.5.lcssa, i32 1
  %32 = load i8, ptr %incdec.ptr196, align 1
  %incdec.ptr202 = getelementptr i8, ptr %out.6.lcssa, i32 2
  store i8 %32, ptr %incdec.ptr197, align 1
  br label %do.cond288

if.else205:                                       ; preds = %if.end101
  %idx.neg206 = sub nsw i32 0, %add105
  %add.ptr207 = getelementptr i8, ptr %out.0, i32 %idx.neg206
  %add.ptr208 = getelementptr i8, ptr %out.0, i32 -1
  %33 = ptrtoint ptr %add.ptr208 to i32
  %and209 = and i32 %33, 1
  %tobool210.not = icmp eq i32 %and209, 0
  br i1 %tobool210.not, label %if.then211, label %if.end215

if.then211:                                       ; preds = %if.else205
  %incdec.ptr212 = getelementptr i8, ptr %add.ptr207, i32 1
  %34 = load i8, ptr %add.ptr207, align 1
  %incdec.ptr213 = getelementptr i8, ptr %out.0, i32 1
  store i8 %34, ptr %out.0, align 1
  %dec214 = add nsw i32 %len.0, -1
  br label %if.end215

if.end215:                                        ; preds = %if.then211, %if.else205
  %out.7 = phi ptr [ %out.0, %if.else205 ], [ %incdec.ptr213, %if.then211 ]
  %len.3 = phi i32 [ %len.0, %if.else205 ], [ %dec214, %if.then211 ]
  %from.6 = phi ptr [ %add.ptr207, %if.else205 ], [ %incdec.ptr212, %if.then211 ]
  %cmp216 = icmp ugt i32 %add105, 2
  br i1 %cmp216, label %if.then218, label %if.else227

if.then218:                                       ; preds = %if.end215
  %shr219 = lshr i32 %len.3, 1
  br label %do.body220

do.body220:                                       ; preds = %do.body220, %if.then218
  %sout.0 = phi ptr [ %out.7, %if.then218 ], [ %incdec.ptr222, %do.body220 ]
  %loops.0 = phi i32 [ %shr219, %if.then218 ], [ %dec224, %do.body220 ]
  %sfrom.0 = phi ptr [ %from.6, %if.then218 ], [ %incdec.ptr221, %do.body220 ]
  %incdec.ptr221 = getelementptr i16, ptr %sfrom.0, i32 1
  %35 = load i16, ptr %sfrom.0, align 2
  %incdec.ptr222 = getelementptr i16, ptr %sout.0, i32 1
  store i16 %35, ptr %sout.0, align 2
  %dec224 = add i32 %loops.0, -1
  %tobool225.not = icmp eq i32 %dec224, 0
  br i1 %tobool225.not, label %if.end242, label %do.body220

if.else227:                                       ; preds = %if.end215
  %add.ptr228 = getelementptr i16, ptr %out.7, i32 -1
  %36 = load i16, ptr %add.ptr228, align 2
  %cmp229 = icmp eq i32 %add105, 1
  %mm.sroa.6.0.insert.ext = and i16 %36, 255
  %mm.sroa.0.0.insert.shift = shl i16 %36, 8
  %mm.sroa.0.0.insert.insert = or i16 %mm.sroa.6.0.insert.ext, %mm.sroa.0.0.insert.shift
  %pat16.0 = select i1 %cmp229, i16 %mm.sroa.0.0.insert.insert, i16 %36
  %shr235 = lshr i32 %len.3, 1
  br label %do.body236

do.body236:                                       ; preds = %do.body236, %if.else227
  %sout.1 = phi ptr [ %out.7, %if.else227 ], [ %incdec.ptr237, %do.body236 ]
  %loops.1 = phi i32 [ %shr235, %if.else227 ], [ %dec239, %do.body236 ]
  %incdec.ptr237 = getelementptr i16, ptr %sout.1, i32 1
  store i16 %pat16.0, ptr %sout.1, align 2
  %dec239 = add i32 %loops.1, -1
  %tobool240.not = icmp eq i32 %dec239, 0
  br i1 %tobool240.not, label %if.end242, label %do.body236

if.end242:                                        ; preds = %do.body236, %do.body220
  %out.8 = phi ptr [ %incdec.ptr222, %do.body220 ], [ %incdec.ptr237, %do.body236 ]
  %from.7 = phi ptr [ %incdec.ptr221, %do.body220 ], [ %from.6, %do.body236 ]
  %and243 = and i32 %len.3, 1
  %tobool244.not = icmp eq i32 %and243, 0
  br i1 %tobool244.not, label %do.cond288, label %if.then245

if.then245:                                       ; preds = %if.end242
  %37 = load i8, ptr %from.7, align 1
  %incdec.ptr247 = getelementptr i8, ptr %out.8, i32 1
  store i8 %37, ptr %out.8, align 1
  br label %do.cond288

if.else250:                                       ; preds = %if.then254, %if.end69
  %conv77622 = phi i32 [ %conv77, %if.then254 ], [ %conv77616, %if.end69 ]
  %sub75621 = phi i32 [ %sub75, %if.then254 ], [ %sub75615, %if.end69 ]
  %shr74620 = phi i32 [ %shr74, %if.then254 ], [ %shr74614, %if.end69 ]
  %this.sroa.12.1619 = phi i16 [ %this.sroa.12.1, %if.then254 ], [ %this.sroa.12.1612, %if.end69 ]
  %and251 = and i32 %conv77622, 64
  %cmp252 = icmp eq i32 %and251, 0
  br i1 %cmp252, label %if.then254, label %do.end293.sink.split.sink.split

if.then254:                                       ; preds = %if.else250
  %conv256 = zext i16 %this.sroa.12.1619 to i32
  %notmask564 = shl nsw i32 -1, %conv77622
  %sub258 = xor i32 %notmask564, -1
  %and259 = and i32 %shr74620, %sub258
  %add260 = add i32 %and259, %conv256
  %this.sroa.0.1.in = getelementptr %struct.code, ptr %12, i32 %add260
  %this.sroa.0.1 = load i8, ptr %this.sroa.0.1.in, align 2
  %this.sroa.9.1.in = getelementptr %struct.code, ptr %12, i32 %add260, i32 1
  %this.sroa.9.1 = load i8, ptr %this.sroa.9.1.in, align 1
  %this.sroa.12.1.in = getelementptr %struct.code, ptr %12, i32 %add260, i32 2
  %this.sroa.12.1 = load i16, ptr %this.sroa.12.1.in, align 2
  %conv73 = zext i8 %this.sroa.9.1 to i32
  %shr74 = lshr i32 %shr74620, %conv73
  %sub75 = sub i32 %sub75621, %conv73
  %conv77 = zext i8 %this.sroa.0.1 to i32
  %and78 = and i32 %conv77, 16
  %tobool79.not = icmp eq i32 %and78, 0
  br i1 %tobool79.not, label %if.else250, label %if.then80

if.else266:                                       ; preds = %if.else
  %and267 = and i32 %conv27604, 64
  %cmp268 = icmp eq i32 %and267, 0
  br i1 %cmp268, label %if.then270, label %if.else278

if.then270:                                       ; preds = %if.else266
  %conv272 = zext i16 %this.sroa.12.0601 to i32
  %notmask563 = shl nsw i32 -1, %conv27604
  %sub274 = xor i32 %notmask563, -1
  %and275 = and i32 %shr602, %sub274
  %add276 = add i32 %and275, %conv272
  %this.sroa.0.0.in = getelementptr %struct.code, ptr %11, i32 %add276
  %this.sroa.0.0 = load i8, ptr %this.sroa.0.0.in, align 2
  %this.sroa.9.0.in = getelementptr %struct.code, ptr %11, i32 %add276, i32 1
  %this.sroa.9.0 = load i8, ptr %this.sroa.9.0.in, align 1
  %this.sroa.12.0.in = getelementptr %struct.code, ptr %11, i32 %add276, i32 2
  %this.sroa.12.0 = load i16, ptr %this.sroa.12.0.in, align 2
  %conv24 = zext i8 %this.sroa.9.0 to i32
  %shr = lshr i32 %shr602, %conv24
  %sub25 = sub i32 %sub25603, %conv24
  %cmp28 = icmp eq i8 %this.sroa.0.0, 0
  br i1 %cmp28, label %if.then30.loopexit, label %if.else

if.else278:                                       ; preds = %if.else266
  %38 = and i8 %this.sroa.0.0600, 32
  %tobool280.not = icmp eq i8 %38, 0
  br i1 %tobool280.not, label %do.end293.sink.split.sink.split, label %do.end293.sink.split

do.cond288:                                       ; preds = %if.then245, %if.end242, %if.then200, %if.then195, %while.end, %if.then30
  %out.10 = phi ptr [ %incdec.ptr32, %if.then30 ], [ %incdec.ptr202, %if.then200 ], [ %incdec.ptr197, %if.then195 ], [ %out.6.lcssa, %while.end ], [ %incdec.ptr247, %if.then245 ], [ %out.8, %if.end242 ]
  %hold.8 = phi i32 [ %shr.lcssa, %if.then30 ], [ %shr106, %if.then200 ], [ %shr106, %if.then195 ], [ %shr106, %while.end ], [ %shr106, %if.then245 ], [ %shr106, %if.end242 ]
  %bits.8 = phi i32 [ %sub25.lcssa, %if.then30 ], [ %sub107, %if.then200 ], [ %sub107, %if.then195 ], [ %sub107, %while.end ], [ %sub107, %if.then245 ], [ %sub107, %if.end242 ]
  %in.6 = phi ptr [ %in.1, %if.then30 ], [ %in.5, %if.then200 ], [ %in.5, %if.then195 ], [ %in.5, %while.end ], [ %in.5, %if.then245 ], [ %in.5, %if.end242 ]
  %cmp289 = icmp ult ptr %in.6, %add.ptr
  %cmp291 = icmp ult ptr %out.10, %add.ptr6
  %39 = select i1 %cmp289, i1 %cmp291, i1 false
  br i1 %39, label %do.body, label %do.end293

do.end293.sink.split.sink.split:                  ; preds = %if.else278, %if.else250, %if.then110
  %.str.sink = phi ptr [ @.str.2, %if.else278 ], [ @.str.1, %if.else250 ], [ @.str, %if.then110 ]
  %hold.9.ph.ph = phi i32 [ %shr602, %if.else278 ], [ %shr74620, %if.else250 ], [ %shr106, %if.then110 ]
  %bits.9.ph.ph = phi i32 [ %sub25603, %if.else278 ], [ %sub75621, %if.else250 ], [ %sub107, %if.then110 ]
  %in.7.ph.ph = phi ptr [ %in.1, %if.else278 ], [ %in.4, %if.else250 ], [ %in.5, %if.then110 ]
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 6
  store ptr %.str.sink, ptr %msg, align 4
  br label %do.end293.sink.split

do.end293.sink.split:                             ; preds = %do.end293.sink.split.sink.split, %if.else278
  %.sink = phi i32 [ 11, %if.else278 ], [ 27, %do.end293.sink.split.sink.split ]
  %hold.9.ph = phi i32 [ %shr602, %if.else278 ], [ %hold.9.ph.ph, %do.end293.sink.split.sink.split ]
  %bits.9.ph = phi i32 [ %sub25603, %if.else278 ], [ %bits.9.ph.ph, %do.end293.sink.split.sink.split ]
  %in.7.ph = phi ptr [ %in.1, %if.else278 ], [ %in.7.ph.ph, %do.end293.sink.split.sink.split ]
  store i32 %.sink, ptr %0, align 4
  br label %do.end293

do.end293:                                        ; preds = %do.end293.sink.split, %do.cond288
  %out.11 = phi ptr [ %out.0, %do.end293.sink.split ], [ %out.10, %do.cond288 ]
  %hold.9 = phi i32 [ %hold.9.ph, %do.end293.sink.split ], [ %hold.8, %do.cond288 ]
  %bits.9 = phi i32 [ %bits.9.ph, %do.end293.sink.split ], [ %bits.8, %do.cond288 ]
  %in.7 = phi ptr [ %in.7.ph, %do.end293.sink.split ], [ %in.6, %do.cond288 ]
  %shr294 = lshr i32 %bits.9, 3
  %idx.neg295 = sub nsw i32 0, %shr294
  %add.ptr296 = getelementptr i8, ptr %in.7, i32 %idx.neg295
  store ptr %add.ptr296, ptr %strm, align 4
  store ptr %out.11, ptr %next_out, align 4
  %sub.ptr.lhs.cast306 = ptrtoint ptr %add.ptr to i32
  %sub.ptr.rhs.cast307 = ptrtoint ptr %add.ptr296 to i32
  %sub.ptr.sub308 = add i32 %sub.ptr.lhs.cast306, 5
  %cond = sub i32 %sub.ptr.sub308, %sub.ptr.rhs.cast307
  store i32 %cond, ptr %avail_in, align 4
  %sub.ptr.lhs.cast318 = ptrtoint ptr %add.ptr6 to i32
  %sub.ptr.rhs.cast319 = ptrtoint ptr %out.11 to i32
  %sub.ptr.sub320 = add i32 %sub.ptr.lhs.cast318, 257
  %cond328 = sub i32 %sub.ptr.sub320, %sub.ptr.rhs.cast319
  %sub298 = and i32 %bits.9, 7
  %notmask562 = shl nsw i32 -1, %sub298
  %sub300 = xor i32 %notmask562, -1
  %and301 = and i32 %hold.9, %sub300
  store i32 %cond328, ptr %avail_out, align 4
  store i32 %and301, ptr %hold11, align 4
  store i32 %sub298, ptr %bits12, align 4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync)
define i32 @zlib_inflate_workspacesize() local_unnamed_addr #3 align 64 {
entry:
  ret i32 42284
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define i32 @zlib_inflateReset(ptr noundef %strm) local_unnamed_addr #4 align 64 {
entry:
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 7
  %0 = load ptr, ptr %state1, align 4
  %cmp2 = icmp eq ptr %0, null
  br i1 %cmp2, label %cleanup, label %if.end

if.end:                                           ; preds = %lor.lhs.false
  %total = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 7
  store i32 0, ptr %total, align 4
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 5
  store i32 0, ptr %total_out, align 4
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 2
  store i32 0, ptr %total_in, align 4
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 6
  store ptr null, ptr %msg, align 4
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 10
  store i32 1, ptr %adler, align 4
  store i32 0, ptr %0, align 4
  %last = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 1
  store i32 0, ptr %last, align 4
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 3
  store i32 0, ptr %havedict, align 4
  %dmax = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 5
  store i32 32768, ptr %dmax, align 4
  %hold = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 13
  store i32 0, ptr %hold, align 4
  %bits = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 14
  store i32 0, ptr %bits, align 4
  %codes = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 29
  %next = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 26
  store ptr %codes, ptr %next, align 4
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 19
  store ptr %codes, ptr %distcode, align 4
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 18
  store ptr %codes, ptr %lencode, align 4
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 8
  %1 = load i32, ptr %wbits, align 4
  %shl = shl nuw i32 1, %1
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 9
  store i32 %shl, ptr %wsize, align 4
  %write = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 11
  store i32 0, ptr %write, align 4
  %whave = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 10
  store i32 0, ptr %whave, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %lor.lhs.false ], [ -2, %entry ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync)
define i32 @zlib_inflateInit2(ptr noundef %strm, i32 noundef %windowBits) local_unnamed_addr #4 align 64 {
entry:
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %cleanup, label %if.end

if.end:                                           ; preds = %entry
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 6
  store ptr null, ptr %msg, align 4
  %workspace = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 8
  %0 = load ptr, ptr %workspace, align 4
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 7
  store ptr %0, ptr %state1, align 4
  %cmp2 = icmp slt i32 %windowBits, 0
  %shr25 = lshr i32 %windowBits, 4
  %add = add nuw nsw i32 %shr25, 1
  %add.sink = select i1 %cmp2, i32 0, i32 %add
  %1 = call i32 @llvm.abs.i32(i32 %windowBits, i1 false)
  %2 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 2
  store i32 %add.sink, ptr %2, align 4
  %3 = add i32 %1, -16
  %4 = icmp ult i32 %3, -8
  br i1 %4, label %cleanup, label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 8
  store i32 %1, ptr %wbits, align 4
  %5 = load ptr, ptr %workspace, align 4
  %working_window = getelementptr inbounds %struct.inflate_workspace, ptr %5, i32 0, i32 1
  %window = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 12
  store ptr %working_window, ptr %window, align 4
  %6 = load ptr, ptr %state1, align 4
  %cmp2.i = icmp eq ptr %6, null
  br i1 %cmp2.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %total.i = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 7
  store i32 0, ptr %total.i, align 4
  %total_out.i = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 5
  store i32 0, ptr %total_out.i, align 4
  %total_in.i = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 2
  store i32 0, ptr %total_in.i, align 4
  store ptr null, ptr %msg, align 4
  %adler.i = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 10
  store i32 1, ptr %adler.i, align 4
  store i32 0, ptr %6, align 4
  %last.i = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 1
  store i32 0, ptr %last.i, align 4
  %havedict.i = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 3
  store i32 0, ptr %havedict.i, align 4
  %dmax.i = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 5
  store i32 32768, ptr %dmax.i, align 4
  %hold.i = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 13
  store i32 0, ptr %hold.i, align 4
  %bits.i = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 14
  store i32 0, ptr %bits.i, align 4
  %codes.i = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 29
  %next.i = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 26
  store ptr %codes.i, ptr %next.i, align 4
  %distcode.i = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 19
  store ptr %codes.i, ptr %distcode.i, align 4
  %lencode.i = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 18
  store ptr %codes.i, ptr %lencode.i, align 4
  %wbits.i = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 8
  %7 = load i32, ptr %wbits.i, align 4
  %shl.i = shl nuw i32 1, %7
  %wsize.i = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 9
  store i32 %shl.i, ptr %wsize.i, align 4
  %write.i = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 11
  store i32 0, ptr %write.i, align 4
  %whave.i = getelementptr inbounds %struct.inflate_state, ptr %6, i32 0, i32 10
  store i32 0, ptr %whave.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %lor.lhs.false.i, %if.end, %entry
  %retval.0 = phi i32 [ -2, %entry ], [ -2, %if.end ], [ 0, %if.end.i ], [ -2, %lor.lhs.false.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define i32 @zlib_inflate(ptr noundef %strm, i32 noundef %flush) local_unnamed_addr #5 align 64 {
entry:
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %cleanup, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 7
  %0 = load ptr, ptr %state1, align 4
  %cmp2 = icmp eq ptr %0, null
  br i1 %cmp2, label %cleanup, label %lor.lhs.false3

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %1 = load ptr, ptr %strm, align 4
  %cmp4 = icmp eq ptr %1, null
  br i1 %cmp4, label %land.lhs.true, label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 1
  %2 = load i32, ptr %avail_in, align 4
  %cmp5.not = icmp eq i32 %2, 0
  br i1 %cmp5.not, label %if.end, label %cleanup

if.end:                                           ; preds = %land.lhs.true, %lor.lhs.false3
  %3 = load i32, ptr %0, align 4
  %cmp7 = icmp eq i32 %3, 11
  br i1 %cmp7, label %if.then8, label %do.body

if.then8:                                         ; preds = %if.end
  store i32 12, ptr %0, align 4
  %.pre = load ptr, ptr %strm, align 4
  br label %do.body

do.body:                                          ; preds = %if.then8, %if.end
  %4 = phi i32 [ %3, %if.end ], [ 12, %if.then8 ]
  %5 = phi ptr [ %1, %if.end ], [ %.pre, %if.then8 ]
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 3
  %6 = load ptr, ptr %next_out, align 4
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 4
  %7 = load i32, ptr %avail_out, align 4
  %avail_in12 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 1
  %8 = load i32, ptr %avail_in12, align 4
  %hold13 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 13
  %9 = load i32, ptr %hold13, align 4
  %bits14 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 14
  %10 = load i32, ptr %bits14, align 4
  %wrap1072 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 2
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 5
  %total = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 7
  %check1101 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 6
  %adler1106 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 10
  %msg1123 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 6
  %length1066 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 15
  %nlen = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 23
  %ndist = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 24
  %ncode = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 22
  %have303 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 25
  %codes = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 29
  %next355 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 26
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 18
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 20
  %lens357 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 27
  %work = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 28
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 19
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 21
  %extra = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 17
  %offset = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 16
  %whave = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 10
  %write = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 11
  %window1025 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 12
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 9
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 3
  %cmp120 = icmp eq i32 %flush, 6
  %last128 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 1
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 8
  %dmax = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %sw.epilog1135, %do.body
  %11 = phi i32 [ %4, %do.body ], [ %.pre2629, %sw.epilog1135 ]
  %next.0 = phi ptr [ %5, %do.body ], [ %next.41, %sw.epilog1135 ]
  %put.0 = phi ptr [ %6, %do.body ], [ %put.2, %sw.epilog1135 ]
  %have.0 = phi i32 [ %8, %do.body ], [ %have.41, %sw.epilog1135 ]
  %left.0 = phi i32 [ %7, %do.body ], [ %left.1, %sw.epilog1135 ]
  %hold.0 = phi i32 [ %9, %do.body ], [ %hold.41, %sw.epilog1135 ]
  %bits.0 = phi i32 [ %10, %do.body ], [ %bits.41, %sw.epilog1135 ]
  %out.0 = phi i32 [ %7, %do.body ], [ %out.3, %sw.epilog1135 ]
  %ret.0 = phi i32 [ 0, %do.body ], [ %ret.7, %sw.epilog1135 ]
  switch i32 %11, label %cleanup [
    i32 0, label %sw.bb
    i32 9, label %while.cond64.preheader
    i32 10, label %sw.bb101
    i32 11, label %sw.bb119
    i32 12, label %do.end127
    i32 13, label %do.body184
    i32 14, label %for.cond.sw.bb225_crit_edge
    i32 15, label %while.cond251.preheader
    i32 16, label %sw.bb305
    i32 17, label %for.cond.sw.bb370_crit_edge
    i32 18, label %sw.bb656
    i32 19, label %for.cond.sw.bb806_crit_edge
    i32 20, label %sw.bb847
    i32 21, label %for.cond.sw.bb955_crit_edge
    i32 22, label %sw.bb1005
    i32 23, label %sw.bb1061
    i32 24, label %sw.bb1071
    i32 26, label %do.body1136.loopexit3036
    i32 27, label %do.body1136
    i32 28, label %cleanup.loopexit
  ]

for.cond.sw.bb225_crit_edge:                      ; preds = %for.cond
  %.pre2639 = load i32, ptr %length1066, align 4
  br label %sw.bb225

for.cond.sw.bb955_crit_edge:                      ; preds = %for.cond
  %.pre2637 = load i32, ptr %extra, align 4
  br label %sw.bb955

for.cond.sw.bb806_crit_edge:                      ; preds = %for.cond
  %.pre2636 = load i32, ptr %extra, align 4
  br label %sw.bb806

for.cond.sw.bb370_crit_edge:                      ; preds = %for.cond
  %.pre2632 = load i32, ptr %have303, align 4
  br label %sw.bb370

while.cond251.preheader:                          ; preds = %for.cond
  %cmp2522215 = icmp ult i32 %bits.0, 14
  br i1 %cmp2522215, label %do.body255, label %do.end270

while.cond64.preheader:                           ; preds = %for.cond
  %cmp652417 = icmp ult i32 %bits.0, 32
  br i1 %cmp652417, label %do.body68, label %do.end83

sw.bb:                                            ; preds = %for.cond
  %12 = load i32, ptr %wrap1072, align 4
  %cmp16 = icmp eq i32 %12, 0
  br i1 %cmp16, label %if.then17, label %while.cond.preheader

while.cond.preheader:                             ; preds = %sw.bb
  %cmp212434 = icmp ult i32 %bits.0, 16
  br i1 %cmp212434, label %do.body22, label %do.end30

if.then17:                                        ; preds = %sw.bb
  store i32 12, ptr %0, align 4
  br label %sw.epilog1135

do.body22:                                        ; preds = %while.cond.preheader
  %cmp23 = icmp eq i32 %have.0, 0
  br i1 %cmp23, label %do.body1136, label %if.end25

if.end25:                                         ; preds = %do.body22
  %dec = add i32 %have.0, -1
  %incdec.ptr = getelementptr i8, ptr %next.0, i32 1
  %13 = load i8, ptr %next.0, align 1
  %conv = zext i8 %13 to i32
  %shl = shl nuw nsw i32 %conv, %bits.0
  %add = add i32 %shl, %hold.0
  %add26 = add nuw nsw i32 %bits.0, 8
  %cmp21 = icmp ult i32 %bits.0, 8
  br i1 %cmp21, label %do.body22.1, label %do.end30

do.body22.1:                                      ; preds = %if.end25
  %cmp23.1 = icmp eq i32 %dec, 0
  br i1 %cmp23.1, label %do.body1136, label %if.end25.1

if.end25.1:                                       ; preds = %do.body22.1
  %dec.1 = add i32 %have.0, -2
  %incdec.ptr.1 = getelementptr i8, ptr %next.0, i32 2
  %14 = load i8, ptr %incdec.ptr, align 1
  %conv.1 = zext i8 %14 to i32
  %shl.1 = shl nuw nsw i32 %conv.1, %add26
  %add.1 = add i32 %shl.1, %add
  %add26.1 = add nuw nsw i32 %bits.0, 16
  br label %do.end30

do.end30:                                         ; preds = %if.end25.1, %if.end25, %while.cond.preheader
  %next.1.lcssa = phi ptr [ %next.0, %while.cond.preheader ], [ %incdec.ptr, %if.end25 ], [ %incdec.ptr.1, %if.end25.1 ]
  %have.1.lcssa = phi i32 [ %have.0, %while.cond.preheader ], [ %dec, %if.end25 ], [ %dec.1, %if.end25.1 ]
  %hold.1.lcssa = phi i32 [ %hold.0, %while.cond.preheader ], [ %add, %if.end25 ], [ %add.1, %if.end25.1 ]
  %bits.1.lcssa = phi i32 [ %bits.0, %while.cond.preheader ], [ %add26, %if.end25 ], [ %add26.1, %if.end25.1 ]
  %and = shl i32 %hold.1.lcssa, 8
  %shl31 = and i32 %and, 65280
  %shr = lshr i32 %hold.1.lcssa, 8
  %add32 = add nuw nsw i32 %shl31, %shr
  %rem = urem i32 %add32, 31
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %do.end30
  store ptr @.str.3, ptr %msg1123, align 4
  store i32 27, ptr %0, align 4
  br label %sw.epilog1135

if.end35:                                         ; preds = %do.end30
  %and36 = and i32 %hold.1.lcssa, 15
  %cmp37.not = icmp eq i32 %and36, 8
  br i1 %cmp37.not, label %do.body43, label %if.then39

if.then39:                                        ; preds = %if.end35
  store ptr @.str.4, ptr %msg1123, align 4
  store i32 27, ptr %0, align 4
  br label %sw.epilog1135

do.body43:                                        ; preds = %if.end35
  %shr44 = lshr i32 %hold.1.lcssa, 4
  %and47 = and i32 %shr44, 15
  %add48 = add nuw nsw i32 %and47, 8
  %15 = load i32, ptr %wbits, align 4
  %cmp49 = icmp ugt i32 %add48, %15
  br i1 %cmp49, label %if.then51, label %if.end54

if.then51:                                        ; preds = %do.body43
  %sub = add i32 %bits.1.lcssa, -4
  store ptr @.str.5, ptr %msg1123, align 4
  store i32 27, ptr %0, align 4
  br label %sw.epilog1135

if.end54:                                         ; preds = %do.body43
  %shl55 = shl nuw nsw i32 256, %and47
  store i32 %shl55, ptr %dmax, align 4
  store i32 1, ptr %check1101, align 4
  store i32 1, ptr %adler1106, align 4
  %16 = and i32 %hold.1.lcssa, 8192
  %tobool57.not = icmp eq i32 %16, 0
  %cond = select i1 %tobool57.not, i32 11, i32 9
  store i32 %cond, ptr %0, align 4
  br label %sw.epilog1135

do.body68:                                        ; preds = %while.cond64.preheader
  %cmp69 = icmp eq i32 %have.0, 0
  br i1 %cmp69, label %do.body1136, label %if.end72

if.end72:                                         ; preds = %do.body68
  %dec73 = add i32 %have.0, -1
  %incdec.ptr74 = getelementptr i8, ptr %next.0, i32 1
  %17 = load i8, ptr %next.0, align 1
  %conv75 = zext i8 %17 to i32
  %shl76 = shl i32 %conv75, %bits.0
  %add77 = add i32 %shl76, %hold.0
  %add78 = add nuw nsw i32 %bits.0, 8
  %cmp65 = icmp ult i32 %bits.0, 24
  br i1 %cmp65, label %do.body68.1, label %do.end83

do.body68.1:                                      ; preds = %if.end72
  %cmp69.1 = icmp eq i32 %dec73, 0
  br i1 %cmp69.1, label %do.body1136, label %if.end72.1

if.end72.1:                                       ; preds = %do.body68.1
  %dec73.1 = add i32 %have.0, -2
  %incdec.ptr74.1 = getelementptr i8, ptr %next.0, i32 2
  %18 = load i8, ptr %incdec.ptr74, align 1
  %conv75.1 = zext i8 %18 to i32
  %shl76.1 = shl i32 %conv75.1, %add78
  %add77.1 = add i32 %shl76.1, %add77
  %add78.1 = add nuw nsw i32 %bits.0, 16
  %cmp65.1 = icmp ult i32 %bits.0, 16
  br i1 %cmp65.1, label %do.body68.2, label %do.end83

do.body68.2:                                      ; preds = %if.end72.1
  %cmp69.2 = icmp eq i32 %dec73.1, 0
  br i1 %cmp69.2, label %do.body1136, label %if.end72.2

if.end72.2:                                       ; preds = %do.body68.2
  %dec73.2 = add i32 %have.0, -3
  %incdec.ptr74.2 = getelementptr i8, ptr %next.0, i32 3
  %19 = load i8, ptr %incdec.ptr74.1, align 1
  %conv75.2 = zext i8 %19 to i32
  %shl76.2 = shl i32 %conv75.2, %add78.1
  %add77.2 = add i32 %shl76.2, %add77.1
  %add78.2 = add nuw nsw i32 %bits.0, 24
  %cmp65.2 = icmp ult i32 %bits.0, 8
  br i1 %cmp65.2, label %do.body68.3, label %do.end83

do.body68.3:                                      ; preds = %if.end72.2
  %cmp69.3 = icmp eq i32 %dec73.2, 0
  br i1 %cmp69.3, label %do.body1136, label %if.end72.3

if.end72.3:                                       ; preds = %do.body68.3
  %dec73.3 = add i32 %have.0, -4
  %incdec.ptr74.3 = getelementptr i8, ptr %next.0, i32 4
  %20 = load i8, ptr %incdec.ptr74.2, align 1
  %conv75.3 = zext i8 %20 to i32
  %shl76.3 = shl i32 %conv75.3, %add78.2
  %add77.3 = add i32 %shl76.3, %add77.2
  br label %do.end83

do.end83:                                         ; preds = %if.end72.3, %if.end72.2, %if.end72.1, %if.end72, %while.cond64.preheader
  %next.2.lcssa = phi ptr [ %next.0, %while.cond64.preheader ], [ %incdec.ptr74, %if.end72 ], [ %incdec.ptr74.1, %if.end72.1 ], [ %incdec.ptr74.2, %if.end72.2 ], [ %incdec.ptr74.3, %if.end72.3 ]
  %have.2.lcssa = phi i32 [ %have.0, %while.cond64.preheader ], [ %dec73, %if.end72 ], [ %dec73.1, %if.end72.1 ], [ %dec73.2, %if.end72.2 ], [ %dec73.3, %if.end72.3 ]
  %hold.2.lcssa = phi i32 [ %hold.0, %while.cond64.preheader ], [ %add77, %if.end72 ], [ %add77.1, %if.end72.1 ], [ %add77.2, %if.end72.2 ], [ %add77.3, %if.end72.3 ]
  %add94 = tail call i32 @llvm.bswap.i32(i32 %hold.2.lcssa)
  store i32 %add94, ptr %check1101, align 4
  store i32 %add94, ptr %adler1106, align 4
  store i32 10, ptr %0, align 4
  br label %sw.bb101

sw.bb101:                                         ; preds = %do.end83, %for.cond
  %next.3 = phi ptr [ %next.0, %for.cond ], [ %next.2.lcssa, %do.end83 ]
  %have.3 = phi i32 [ %have.0, %for.cond ], [ %have.2.lcssa, %do.end83 ]
  %hold.3 = phi i32 [ %hold.0, %for.cond ], [ 0, %do.end83 ]
  %bits.3 = phi i32 [ %bits.0, %for.cond ], [ 0, %do.end83 ]
  %21 = load i32, ptr %havedict, align 4
  %cmp102 = icmp eq i32 %21, 0
  br i1 %cmp102, label %do.body105, label %if.end114

do.body105:                                       ; preds = %sw.bb101
  store ptr %put.0, ptr %next_out, align 4
  store i32 %left.0, ptr %avail_out, align 4
  store ptr %next.3, ptr %strm, align 4
  store i32 %have.3, ptr %avail_in12, align 4
  store i32 %hold.3, ptr %hold13, align 4
  store i32 %bits.3, ptr %bits14, align 4
  br label %cleanup

if.end114:                                        ; preds = %sw.bb101
  store i32 1, ptr %check1101, align 4
  store i32 1, ptr %adler1106, align 4
  store i32 11, ptr %0, align 4
  br label %sw.bb119

sw.bb119:                                         ; preds = %if.end114, %for.cond
  %next.4 = phi ptr [ %next.0, %for.cond ], [ %next.3, %if.end114 ]
  %have.4 = phi i32 [ %have.0, %for.cond ], [ %have.3, %if.end114 ]
  %hold.4 = phi i32 [ %hold.0, %for.cond ], [ %hold.3, %if.end114 ]
  %bits.4 = phi i32 [ %bits.0, %for.cond ], [ %bits.3, %if.end114 ]
  br i1 %cmp120, label %do.body1136.loopexit3036, label %do.end127

do.end127:                                        ; preds = %sw.bb119, %for.cond
  %next.5 = phi ptr [ %next.0, %for.cond ], [ %next.4, %sw.bb119 ]
  %have.5 = phi i32 [ %have.0, %for.cond ], [ %have.4, %sw.bb119 ]
  %hold.5 = phi i32 [ %hold.0, %for.cond ], [ %hold.4, %sw.bb119 ]
  %bits.5 = phi i32 [ %bits.0, %for.cond ], [ %bits.4, %sw.bb119 ]
  %22 = load i32, ptr %last128, align 4
  %tobool129.not = icmp eq i32 %22, 0
  br i1 %tobool129.not, label %while.cond141.preheader, label %do.body131

while.cond141.preheader:                          ; preds = %do.end127
  %cmp1422425 = icmp ult i32 %bits.5, 3
  br i1 %cmp1422425, label %do.body145, label %do.end160

do.body131:                                       ; preds = %do.end127
  %and132 = and i32 %bits.5, 7
  %shr133 = lshr i32 %hold.5, %and132
  %sub135 = and i32 %bits.5, -8
  store i32 24, ptr %0, align 4
  br label %sw.epilog1135

do.body145:                                       ; preds = %while.cond141.preheader
  %cmp146 = icmp eq i32 %have.5, 0
  br i1 %cmp146, label %do.body1136, label %if.end149

if.end149:                                        ; preds = %do.body145
  %dec150 = add i32 %have.5, -1
  %incdec.ptr151 = getelementptr i8, ptr %next.5, i32 1
  %23 = load i8, ptr %next.5, align 1
  %conv152 = zext i8 %23 to i32
  %shl153 = shl nuw nsw i32 %conv152, %bits.5
  %add154 = add i32 %shl153, %hold.5
  %add155 = add nuw nsw i32 %bits.5, 8
  br label %do.end160

do.end160:                                        ; preds = %if.end149, %while.cond141.preheader
  %next.6.lcssa = phi ptr [ %incdec.ptr151, %if.end149 ], [ %next.5, %while.cond141.preheader ]
  %have.6.lcssa = phi i32 [ %dec150, %if.end149 ], [ %have.5, %while.cond141.preheader ]
  %hold.6.lcssa = phi i32 [ %add154, %if.end149 ], [ %hold.5, %while.cond141.preheader ]
  %bits.6.lcssa = phi i32 [ %add155, %if.end149 ], [ %bits.5, %while.cond141.preheader ]
  %and161 = and i32 %hold.6.lcssa, 1
  store i32 %and161, ptr %last128, align 4
  %shr164 = lshr i32 %hold.6.lcssa, 1
  %and168 = and i32 %shr164, 3
  switch i32 %and168, label %do.end160.unreachabledefault [
    i32 0, label %do.body178
    i32 1, label %sw.bb171
    i32 2, label %sw.bb173
    i32 3, label %sw.bb175
  ]

sw.bb171:                                         ; preds = %do.end160
  store ptr @zlib_fixedtables.lenfix, ptr %lencode, align 4
  store i32 9, ptr %lenbits, align 4
  store ptr @zlib_fixedtables.distfix, ptr %distcode, align 4
  store i32 5, ptr %distbits, align 4
  br label %do.body178

sw.bb173:                                         ; preds = %do.end160
  br label %do.body178

sw.bb175:                                         ; preds = %do.end160
  store ptr @.str.6, ptr %msg1123, align 4
  br label %do.body178

do.end160.unreachabledefault:                     ; preds = %do.end160
  unreachable

do.body178:                                       ; preds = %sw.bb175, %sw.bb173, %sw.bb171, %do.end160
  %.sink = phi i32 [ 18, %sw.bb171 ], [ 15, %sw.bb173 ], [ 27, %sw.bb175 ], [ 13, %do.end160 ]
  store i32 %.sink, ptr %0, align 4
  %shr179 = lshr i32 %hold.6.lcssa, 3
  %sub180 = add i32 %bits.6.lcssa, -3
  br label %sw.epilog1135

do.body184:                                       ; preds = %for.cond
  %and185 = and i32 %bits.0, 7
  %shr186 = lshr i32 %hold.0, %and185
  %sub188 = and i32 %bits.0, -8
  %cmp1932408 = icmp ult i32 %sub188, 32
  br i1 %cmp1932408, label %do.body196, label %do.end211

do.body196:                                       ; preds = %do.body184
  %cmp197 = icmp eq i32 %have.0, 0
  br i1 %cmp197, label %do.body1136, label %if.end200

if.end200:                                        ; preds = %do.body196
  %dec201 = add i32 %have.0, -1
  %incdec.ptr202 = getelementptr i8, ptr %next.0, i32 1
  %24 = load i8, ptr %next.0, align 1
  %conv203 = zext i8 %24 to i32
  %shl204 = shl i32 %conv203, %sub188
  %add205 = add i32 %shl204, %shr186
  %add206 = add nuw nsw i32 %sub188, 8
  %cmp193 = icmp ult i32 %sub188, 24
  br i1 %cmp193, label %do.body196.1, label %do.end211

do.body196.1:                                     ; preds = %if.end200
  %cmp197.1 = icmp eq i32 %dec201, 0
  br i1 %cmp197.1, label %do.body1136, label %if.end200.1

if.end200.1:                                      ; preds = %do.body196.1
  %dec201.1 = add i32 %have.0, -2
  %incdec.ptr202.1 = getelementptr i8, ptr %next.0, i32 2
  %25 = load i8, ptr %incdec.ptr202, align 1
  %conv203.1 = zext i8 %25 to i32
  %shl204.1 = shl i32 %conv203.1, %add206
  %add205.1 = add i32 %shl204.1, %add205
  %add206.1 = add nuw nsw i32 %sub188, 16
  %cmp193.1 = icmp ult i32 %sub188, 16
  br i1 %cmp193.1, label %do.body196.2, label %do.end211

do.body196.2:                                     ; preds = %if.end200.1
  %cmp197.2 = icmp eq i32 %dec201.1, 0
  br i1 %cmp197.2, label %do.body1136, label %if.end200.2

if.end200.2:                                      ; preds = %do.body196.2
  %dec201.2 = add i32 %have.0, -3
  %incdec.ptr202.2 = getelementptr i8, ptr %next.0, i32 3
  %26 = load i8, ptr %incdec.ptr202.1, align 1
  %conv203.2 = zext i8 %26 to i32
  %shl204.2 = shl i32 %conv203.2, %add206.1
  %add205.2 = add i32 %shl204.2, %add205.1
  %add206.2 = add nuw nsw i32 %sub188, 24
  %cmp193.2 = icmp eq i32 %sub188, 0
  br i1 %cmp193.2, label %do.body196.3, label %do.end211

do.body196.3:                                     ; preds = %if.end200.2
  %cmp197.3 = icmp eq i32 %dec201.2, 0
  br i1 %cmp197.3, label %do.body1136, label %if.end200.3

if.end200.3:                                      ; preds = %do.body196.3
  %dec201.3 = add i32 %have.0, -4
  %incdec.ptr202.3 = getelementptr i8, ptr %next.0, i32 4
  %27 = load i8, ptr %incdec.ptr202.2, align 1
  %conv203.3 = zext i8 %27 to i32
  %shl204.3 = shl i32 %conv203.3, %add206.2
  %add205.3 = add i32 %shl204.3, %add205.2
  %add206.3 = add nuw nsw i32 %sub188, 32
  br label %do.end211

do.end211:                                        ; preds = %if.end200.3, %if.end200.2, %if.end200.1, %if.end200, %do.body184
  %next.7.lcssa = phi ptr [ %next.0, %do.body184 ], [ %incdec.ptr202, %if.end200 ], [ %incdec.ptr202.1, %if.end200.1 ], [ %incdec.ptr202.2, %if.end200.2 ], [ %incdec.ptr202.3, %if.end200.3 ]
  %have.7.lcssa = phi i32 [ %have.0, %do.body184 ], [ %dec201, %if.end200 ], [ %dec201.1, %if.end200.1 ], [ %dec201.2, %if.end200.2 ], [ %dec201.3, %if.end200.3 ]
  %hold.7.lcssa = phi i32 [ %shr186, %do.body184 ], [ %add205, %if.end200 ], [ %add205.1, %if.end200.1 ], [ %add205.2, %if.end200.2 ], [ %add205.3, %if.end200.3 ]
  %bits.7.lcssa = phi i32 [ %sub188, %do.body184 ], [ %add206, %if.end200 ], [ %add206.1, %if.end200.1 ], [ %add206.2, %if.end200.2 ], [ %add206.3, %if.end200.3 ]
  %and212 = and i32 %hold.7.lcssa, 65535
  %28 = xor i32 %hold.7.lcssa, -1
  %xor = lshr i32 %28, 16
  %cmp214.not = icmp eq i32 %and212, %xor
  br i1 %cmp214.not, label %if.end219, label %if.then216

if.then216:                                       ; preds = %do.end211
  store ptr @.str.7, ptr %msg1123, align 4
  store i32 27, ptr %0, align 4
  br label %sw.epilog1135

if.end219:                                        ; preds = %do.end211
  store i32 %and212, ptr %length1066, align 4
  store i32 14, ptr %0, align 4
  br label %sw.bb225

sw.bb225:                                         ; preds = %if.end219, %for.cond.sw.bb225_crit_edge
  %29 = phi i32 [ %.pre2639, %for.cond.sw.bb225_crit_edge ], [ %and212, %if.end219 ]
  %next.8 = phi ptr [ %next.0, %for.cond.sw.bb225_crit_edge ], [ %next.7.lcssa, %if.end219 ]
  %have.8 = phi i32 [ %have.0, %for.cond.sw.bb225_crit_edge ], [ %have.7.lcssa, %if.end219 ]
  %hold.8 = phi i32 [ %hold.0, %for.cond.sw.bb225_crit_edge ], [ 0, %if.end219 ]
  %bits.8 = phi i32 [ %bits.0, %for.cond.sw.bb225_crit_edge ], [ 0, %if.end219 ]
  %tobool227.not = icmp eq i32 %29, 0
  br i1 %tobool227.not, label %if.end247, label %if.then228

if.then228:                                       ; preds = %sw.bb225
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %have.8)
  %31 = tail call i32 @llvm.umin.i32(i32 %30, i32 %left.0)
  %cmp237 = icmp eq i32 %31, 0
  br i1 %cmp237, label %do.body1136.loopexit3036, label %if.end240

if.end240:                                        ; preds = %if.then228
  %call241 = tail call ptr @__memcpy(ptr noundef %put.0, ptr noundef %next.8, i32 noundef %31) #11
  %sub242 = sub i32 %have.8, %31
  %add.ptr = getelementptr i8, ptr %next.8, i32 %31
  %sub243 = sub i32 %left.0, %31
  %add.ptr244 = getelementptr i8, ptr %put.0, i32 %31
  %32 = load i32, ptr %length1066, align 4
  %sub246 = sub i32 %32, %31
  store i32 %sub246, ptr %length1066, align 4
  br label %sw.epilog1135

if.end247:                                        ; preds = %sw.bb225
  store i32 11, ptr %0, align 4
  br label %sw.epilog1135

do.body255:                                       ; preds = %while.cond251.preheader
  %cmp256 = icmp eq i32 %have.0, 0
  br i1 %cmp256, label %do.body1136, label %if.end259

if.end259:                                        ; preds = %do.body255
  %dec260 = add i32 %have.0, -1
  %incdec.ptr261 = getelementptr i8, ptr %next.0, i32 1
  %33 = load i8, ptr %next.0, align 1
  %conv262 = zext i8 %33 to i32
  %shl263 = shl nuw nsw i32 %conv262, %bits.0
  %add264 = add i32 %shl263, %hold.0
  %add265 = add nuw nsw i32 %bits.0, 8
  %cmp252 = icmp ult i32 %bits.0, 6
  br i1 %cmp252, label %do.body255.1, label %do.end270

do.body255.1:                                     ; preds = %if.end259
  %cmp256.1 = icmp eq i32 %dec260, 0
  br i1 %cmp256.1, label %do.body1136, label %if.end259.1

if.end259.1:                                      ; preds = %do.body255.1
  %dec260.1 = add i32 %have.0, -2
  %incdec.ptr261.1 = getelementptr i8, ptr %next.0, i32 2
  %34 = load i8, ptr %incdec.ptr261, align 1
  %conv262.1 = zext i8 %34 to i32
  %shl263.1 = shl nuw nsw i32 %conv262.1, %add265
  %add264.1 = add i32 %shl263.1, %add264
  %add265.1 = add nuw nsw i32 %bits.0, 16
  br label %do.end270

do.end270:                                        ; preds = %if.end259.1, %if.end259, %while.cond251.preheader
  %next.9.lcssa = phi ptr [ %next.0, %while.cond251.preheader ], [ %incdec.ptr261, %if.end259 ], [ %incdec.ptr261.1, %if.end259.1 ]
  %have.9.lcssa = phi i32 [ %have.0, %while.cond251.preheader ], [ %dec260, %if.end259 ], [ %dec260.1, %if.end259.1 ]
  %hold.9.lcssa = phi i32 [ %hold.0, %while.cond251.preheader ], [ %add264, %if.end259 ], [ %add264.1, %if.end259.1 ]
  %bits.9.lcssa = phi i32 [ %bits.0, %while.cond251.preheader ], [ %add265, %if.end259 ], [ %add265.1, %if.end259.1 ]
  %and271 = and i32 %hold.9.lcssa, 31
  %add272 = add nuw nsw i32 %and271, 257
  store i32 %add272, ptr %nlen, align 4
  %shr274 = lshr i32 %hold.9.lcssa, 5
  %and278 = and i32 %shr274, 31
  %add279 = add nuw nsw i32 %and278, 1
  store i32 %add279, ptr %ndist, align 4
  %shr281 = lshr i32 %hold.9.lcssa, 10
  %and285 = and i32 %shr281, 15
  %add286 = add nuw nsw i32 %and285, 4
  store i32 %add286, ptr %ncode, align 4
  %shr288 = lshr i32 %hold.9.lcssa, 14
  %sub289 = add i32 %bits.9.lcssa, -14
  %cmp293 = icmp ugt i32 %and271, 29
  %cmp297 = icmp ugt i32 %and278, 29
  %or.cond1849 = select i1 %cmp293, i1 true, i1 %cmp297
  br i1 %or.cond1849, label %if.then299, label %sw.bb305.thread

if.then299:                                       ; preds = %do.end270
  store ptr @.str.8, ptr %msg1123, align 4
  store i32 27, ptr %0, align 4
  br label %sw.epilog1135

sw.bb305.thread:                                  ; preds = %do.end270
  store i32 0, ptr %have303, align 4
  store i32 16, ptr %0, align 4
  br label %while.cond313.preheader.preheader

sw.bb305:                                         ; preds = %for.cond
  %.pre2630 = load i32, ptr %have303, align 4
  %.pre2631 = load i32, ptr %ncode, align 4
  %cmp3092233 = icmp ult i32 %.pre2630, %.pre2631
  br i1 %cmp3092233, label %while.cond313.preheader.preheader, label %while.cond343.preheader

while.cond313.preheader.preheader:                ; preds = %sw.bb305, %sw.bb305.thread
  %bits.102652 = phi i32 [ %sub289, %sw.bb305.thread ], [ %bits.0, %sw.bb305 ]
  %hold.102651 = phi i32 [ %shr288, %sw.bb305.thread ], [ %hold.0, %sw.bb305 ]
  %have.102650 = phi i32 [ %have.9.lcssa, %sw.bb305.thread ], [ %have.0, %sw.bb305 ]
  %next.102649 = phi ptr [ %next.9.lcssa, %sw.bb305.thread ], [ %next.0, %sw.bb305 ]
  %35 = phi i32 [ 0, %sw.bb305.thread ], [ %.pre2630, %sw.bb305 ]
  %36 = phi i32 [ %add286, %sw.bb305.thread ], [ %.pre2631, %sw.bb305 ]
  br label %while.cond313.preheader

while.cond343.preheader:                          ; preds = %do.end332, %sw.bb305
  %next.11.lcssa = phi ptr [ %next.0, %sw.bb305 ], [ %next.12.lcssa, %do.end332 ]
  %have.11.lcssa = phi i32 [ %have.0, %sw.bb305 ], [ %have.12.lcssa, %do.end332 ]
  %hold.11.lcssa = phi i32 [ %hold.0, %sw.bb305 ], [ %shr338, %do.end332 ]
  %bits.11.lcssa = phi i32 [ %bits.0, %sw.bb305 ], [ %sub339, %do.end332 ]
  %.lcssa = phi i32 [ %.pre2630, %sw.bb305 ], [ %inc, %do.end332 ]
  %cmp3452244 = icmp ult i32 %.lcssa, 19
  br i1 %cmp3452244, label %while.body347, label %while.end354

while.cond313.preheader:                          ; preds = %do.end332, %while.cond313.preheader.preheader
  %37 = phi i32 [ %inc, %do.end332 ], [ %35, %while.cond313.preheader.preheader ]
  %bits.112237 = phi i32 [ %sub339, %do.end332 ], [ %bits.102652, %while.cond313.preheader.preheader ]
  %hold.112236 = phi i32 [ %shr338, %do.end332 ], [ %hold.102651, %while.cond313.preheader.preheader ]
  %have.112235 = phi i32 [ %have.12.lcssa, %do.end332 ], [ %have.102650, %while.cond313.preheader.preheader ]
  %next.112234 = phi ptr [ %next.12.lcssa, %do.end332 ], [ %next.102649, %while.cond313.preheader.preheader ]
  %cmp3142224 = icmp ult i32 %bits.112237, 3
  br i1 %cmp3142224, label %do.body317, label %do.end332

do.body317:                                       ; preds = %while.cond313.preheader
  %cmp318 = icmp eq i32 %have.112235, 0
  br i1 %cmp318, label %do.body1136, label %if.end321

if.end321:                                        ; preds = %do.body317
  %dec322 = add i32 %have.112235, -1
  %incdec.ptr323 = getelementptr i8, ptr %next.112234, i32 1
  %38 = load i8, ptr %next.112234, align 1
  %conv324 = zext i8 %38 to i32
  %shl325 = shl nuw nsw i32 %conv324, %bits.112237
  %add326 = add i32 %shl325, %hold.112236
  %add327 = add nuw nsw i32 %bits.112237, 8
  br label %do.end332

do.end332:                                        ; preds = %if.end321, %while.cond313.preheader
  %next.12.lcssa = phi ptr [ %incdec.ptr323, %if.end321 ], [ %next.112234, %while.cond313.preheader ]
  %have.12.lcssa = phi i32 [ %dec322, %if.end321 ], [ %have.112235, %while.cond313.preheader ]
  %hold.12.lcssa = phi i32 [ %add326, %if.end321 ], [ %hold.112236, %while.cond313.preheader ]
  %bits.12.lcssa = phi i32 [ %add327, %if.end321 ], [ %bits.112237, %while.cond313.preheader ]
  %39 = trunc i32 %hold.12.lcssa to i16
  %conv334 = and i16 %39, 7
  %inc = add nuw i32 %37, 1
  store i32 %inc, ptr %have303, align 4
  %arrayidx = getelementptr [19 x i16], ptr @zlib_inflate.order, i32 0, i32 %37
  %40 = load i16, ptr %arrayidx, align 2
  %idxprom = zext i16 %40 to i32
  %arrayidx336 = getelementptr %struct.inflate_state, ptr %0, i32 0, i32 27, i32 %idxprom
  store i16 %conv334, ptr %arrayidx336, align 2
  %shr338 = lshr i32 %hold.12.lcssa, 3
  %sub339 = add i32 %bits.12.lcssa, -3
  %cmp309 = icmp ult i32 %inc, %36
  br i1 %cmp309, label %while.cond313.preheader, label %while.cond343.preheader

while.body347:                                    ; preds = %while.body347, %while.cond343.preheader
  %41 = phi i32 [ %inc350, %while.body347 ], [ %.lcssa, %while.cond343.preheader ]
  %inc350 = add i32 %41, 1
  %arrayidx351 = getelementptr [19 x i16], ptr @zlib_inflate.order, i32 0, i32 %41
  %42 = load i16, ptr %arrayidx351, align 2
  %idxprom352 = zext i16 %42 to i32
  %arrayidx353 = getelementptr %struct.inflate_state, ptr %0, i32 0, i32 27, i32 %idxprom352
  store i16 0, ptr %arrayidx353, align 2
  %exitcond.not = icmp eq i32 %inc350, 19
  br i1 %exitcond.not, label %while.end354.loopexit, label %while.body347

while.end354.loopexit:                            ; preds = %while.body347
  store i32 %inc350, ptr %have303, align 4
  br label %while.end354

while.end354:                                     ; preds = %while.end354.loopexit, %while.cond343.preheader
  store ptr %codes, ptr %next355, align 4
  store ptr %codes, ptr %lencode, align 4
  store i32 7, ptr %lenbits, align 4
  %call362 = tail call i32 @zlib_inflate_table(i32 noundef 0, ptr noundef %lens357, i32 noundef 19, ptr noundef %next355, ptr noundef %lenbits, ptr noundef %work) #12
  %tobool363.not = icmp eq i32 %call362, 0
  br i1 %tobool363.not, label %if.end367, label %if.then364

if.then364:                                       ; preds = %while.end354
  store ptr @.str.9, ptr %msg1123, align 4
  store i32 27, ptr %0, align 4
  br label %sw.epilog1135

if.end367:                                        ; preds = %while.end354
  store i32 0, ptr %have303, align 4
  store i32 17, ptr %0, align 4
  br label %sw.bb370

sw.bb370:                                         ; preds = %if.end367, %for.cond.sw.bb370_crit_edge
  %43 = phi i32 [ %.pre2632, %for.cond.sw.bb370_crit_edge ], [ 0, %if.end367 ]
  %next.13 = phi ptr [ %next.0, %for.cond.sw.bb370_crit_edge ], [ %next.11.lcssa, %if.end367 ]
  %have.13 = phi i32 [ %have.0, %for.cond.sw.bb370_crit_edge ], [ %have.11.lcssa, %if.end367 ]
  %hold.13 = phi i32 [ %hold.0, %for.cond.sw.bb370_crit_edge ], [ %hold.11.lcssa, %if.end367 ]
  %bits.13 = phi i32 [ %bits.0, %for.cond.sw.bb370_crit_edge ], [ %bits.11.lcssa, %if.end367 ]
  %ret.1 = phi i32 [ %ret.0, %for.cond.sw.bb370_crit_edge ], [ 0, %if.end367 ]
  %44 = load i32, ptr %nlen, align 4
  %45 = load i32, ptr %ndist, align 4
  %add3752299 = add i32 %45, %44
  %cmp3762300 = icmp ult i32 %43, %add3752299
  br i1 %cmp3762300, label %for.cond379.preheader, label %if.end619

for.cond379.preheader:                            ; preds = %if.end613, %sw.bb370
  %add3752305 = phi i32 [ %add375, %if.end613 ], [ %add3752299, %sw.bb370 ]
  %46 = phi i32 [ %56, %if.end613 ], [ %43, %sw.bb370 ]
  %bits.142304 = phi i32 [ %bits.21, %if.end613 ], [ %bits.13, %sw.bb370 ]
  %hold.142303 = phi i32 [ %hold.21, %if.end613 ], [ %hold.13, %sw.bb370 ]
  %have.142302 = phi i32 [ %have.21, %if.end613 ], [ %have.13, %sw.bb370 ]
  %next.142301 = phi ptr [ %next.21, %if.end613 ], [ %next.13, %sw.bb370 ]
  %47 = load ptr, ptr %lencode, align 4
  %48 = load i32, ptr %lenbits, align 4
  %notmask1839 = shl nsw i32 -1, %48
  %sub383 = xor i32 %notmask1839, -1
  %and3842246 = and i32 %hold.142303, %sub383
  %this.sroa.19.0.arrayidx385.sroa_idx2248 = getelementptr %struct.code, ptr %47, i32 %and3842246, i32 1
  %this.sroa.19.0.copyload2249 = load i8, ptr %this.sroa.19.0.arrayidx385.sroa_idx2248, align 1
  %conv3872250 = zext i8 %this.sroa.19.0.copyload2249 to i32
  %cmp388.not2251 = icmp ult i32 %bits.142304, %conv3872250
  br i1 %cmp388.not2251, label %do.body392, label %for.end

do.body392:                                       ; preds = %if.end396, %for.cond379.preheader
  %bits.152255 = phi i32 [ %add402, %if.end396 ], [ %bits.142304, %for.cond379.preheader ]
  %hold.152254 = phi i32 [ %add401, %if.end396 ], [ %hold.142303, %for.cond379.preheader ]
  %have.152253 = phi i32 [ %dec397, %if.end396 ], [ %have.142302, %for.cond379.preheader ]
  %next.152252 = phi ptr [ %incdec.ptr398, %if.end396 ], [ %next.142301, %for.cond379.preheader ]
  %cmp393 = icmp eq i32 %have.152253, 0
  br i1 %cmp393, label %do.body1136.loopexit2666, label %if.end396

if.end396:                                        ; preds = %do.body392
  %dec397 = add i32 %have.152253, -1
  %incdec.ptr398 = getelementptr i8, ptr %next.152252, i32 1
  %49 = load i8, ptr %next.152252, align 1
  %conv399 = zext i8 %49 to i32
  %shl400 = shl i32 %conv399, %bits.152255
  %add401 = add i32 %shl400, %hold.152254
  %add402 = add nuw nsw i32 %bits.152255, 8
  %and384 = and i32 %add401, %sub383
  %this.sroa.19.0.arrayidx385.sroa_idx = getelementptr %struct.code, ptr %47, i32 %and384, i32 1
  %this.sroa.19.0.copyload = load i8, ptr %this.sroa.19.0.arrayidx385.sroa_idx, align 1
  %conv387 = zext i8 %this.sroa.19.0.copyload to i32
  %cmp388.not = icmp ult i32 %add402, %conv387
  br i1 %cmp388.not, label %do.body392, label %for.end.loopexit

for.end.loopexit:                                 ; preds = %if.end396
  %conv387.le = zext i8 %this.sroa.19.0.copyload to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond379.preheader
  %conv387.le.pre-phi = phi i32 [ %conv3872250, %for.cond379.preheader ], [ %conv387.le, %for.end.loopexit ]
  %50 = phi i32 [ %and3842246, %for.cond379.preheader ], [ %and384, %for.end.loopexit ]
  %next.15.lcssa = phi ptr [ %next.142301, %for.cond379.preheader ], [ %incdec.ptr398, %for.end.loopexit ]
  %have.15.lcssa = phi i32 [ %have.142302, %for.cond379.preheader ], [ %dec397, %for.end.loopexit ]
  %hold.15.lcssa = phi i32 [ %hold.142303, %for.cond379.preheader ], [ %add401, %for.end.loopexit ]
  %bits.15.lcssa = phi i32 [ %bits.142304, %for.cond379.preheader ], [ %add402, %for.end.loopexit ]
  %this.sroa.43.0.arrayidx385.sroa_idx.le = getelementptr %struct.code, ptr %47, i32 %50, i32 2
  %this.sroa.43.0.copyload.le = load i16, ptr %this.sroa.43.0.arrayidx385.sroa_idx.le, align 2
  %cmp406 = icmp ult i16 %this.sroa.43.0.copyload.le, 16
  br i1 %cmp406, label %while.cond410.preheader, label %if.else

while.cond410.preheader:                          ; preds = %for.end
  %cmp4132290 = icmp ult i32 %bits.15.lcssa, %conv387.le.pre-phi
  br i1 %cmp4132290, label %do.body416, label %do.body432

do.body416:                                       ; preds = %if.end420, %while.cond410.preheader
  %bits.162294 = phi i32 [ %add426, %if.end420 ], [ %bits.15.lcssa, %while.cond410.preheader ]
  %hold.162293 = phi i32 [ %add425, %if.end420 ], [ %hold.15.lcssa, %while.cond410.preheader ]
  %have.162292 = phi i32 [ %dec421, %if.end420 ], [ %have.15.lcssa, %while.cond410.preheader ]
  %next.162291 = phi ptr [ %incdec.ptr422, %if.end420 ], [ %next.15.lcssa, %while.cond410.preheader ]
  %cmp417 = icmp eq i32 %have.162292, 0
  br i1 %cmp417, label %do.body1136, label %if.end420

if.end420:                                        ; preds = %do.body416
  %dec421 = add i32 %have.162292, -1
  %incdec.ptr422 = getelementptr i8, ptr %next.162291, i32 1
  %51 = load i8, ptr %next.162291, align 1
  %conv423 = zext i8 %51 to i32
  %shl424 = shl i32 %conv423, %bits.162294
  %add425 = add i32 %shl424, %hold.162293
  %add426 = add nuw nsw i32 %bits.162294, 8
  %cmp413 = icmp ult i32 %add426, %conv387.le.pre-phi
  br i1 %cmp413, label %do.body416, label %do.body432

do.body432:                                       ; preds = %if.end420, %while.cond410.preheader
  %next.16.lcssa = phi ptr [ %next.15.lcssa, %while.cond410.preheader ], [ %incdec.ptr422, %if.end420 ]
  %have.16.lcssa = phi i32 [ %have.15.lcssa, %while.cond410.preheader ], [ %dec421, %if.end420 ]
  %hold.16.lcssa = phi i32 [ %hold.15.lcssa, %while.cond410.preheader ], [ %add425, %if.end420 ]
  %bits.16.lcssa = phi i32 [ %bits.15.lcssa, %while.cond410.preheader ], [ %add426, %if.end420 ]
  %shr435 = lshr i32 %hold.16.lcssa, %conv387.le.pre-phi
  %sub438 = sub i32 %bits.16.lcssa, %conv387.le.pre-phi
  %inc444 = add i32 %46, 1
  store i32 %inc444, ptr %have303, align 4
  %arrayidx445 = getelementptr %struct.inflate_state, ptr %0, i32 0, i32 27, i32 %46
  store i16 %this.sroa.43.0.copyload.le, ptr %arrayidx445, align 2
  br label %if.end613

if.else:                                          ; preds = %for.end
  switch i16 %this.sroa.43.0.copyload.le, label %while.cond551.preheader [
    i16 16, label %while.cond452.preheader
    i16 17, label %while.cond510.preheader
  ]

while.cond510.preheader:                          ; preds = %if.else
  %add513 = add nuw nsw i32 %conv387.le.pre-phi, 3
  %cmp5142262 = icmp ult i32 %bits.15.lcssa, %add513
  br i1 %cmp5142262, label %do.body517, label %do.body533

while.cond452.preheader:                          ; preds = %if.else
  %add455 = add nuw nsw i32 %conv387.le.pre-phi, 2
  %cmp4562271 = icmp ult i32 %bits.15.lcssa, %add455
  br i1 %cmp4562271, label %do.body459, label %do.body475

while.cond551.preheader:                          ; preds = %if.else
  %add554 = add nuw nsw i32 %conv387.le.pre-phi, 7
  %cmp5552280 = icmp ult i32 %bits.15.lcssa, %add554
  br i1 %cmp5552280, label %do.body558, label %do.body574

do.body459:                                       ; preds = %if.end463, %while.cond452.preheader
  %bits.172275 = phi i32 [ %add469, %if.end463 ], [ %bits.15.lcssa, %while.cond452.preheader ]
  %hold.172274 = phi i32 [ %add468, %if.end463 ], [ %hold.15.lcssa, %while.cond452.preheader ]
  %have.172273 = phi i32 [ %dec464, %if.end463 ], [ %have.15.lcssa, %while.cond452.preheader ]
  %next.172272 = phi ptr [ %incdec.ptr465, %if.end463 ], [ %next.15.lcssa, %while.cond452.preheader ]
  %cmp460 = icmp eq i32 %have.172273, 0
  br i1 %cmp460, label %do.body1136, label %if.end463

if.end463:                                        ; preds = %do.body459
  %dec464 = add i32 %have.172273, -1
  %incdec.ptr465 = getelementptr i8, ptr %next.172272, i32 1
  %52 = load i8, ptr %next.172272, align 1
  %conv466 = zext i8 %52 to i32
  %shl467 = shl i32 %conv466, %bits.172275
  %add468 = add i32 %shl467, %hold.172274
  %add469 = add nuw nsw i32 %bits.172275, 8
  %cmp456 = icmp ult i32 %add469, %add455
  br i1 %cmp456, label %do.body459, label %do.body475

do.body475:                                       ; preds = %if.end463, %while.cond452.preheader
  %next.17.lcssa = phi ptr [ %next.15.lcssa, %while.cond452.preheader ], [ %incdec.ptr465, %if.end463 ]
  %have.17.lcssa = phi i32 [ %have.15.lcssa, %while.cond452.preheader ], [ %dec464, %if.end463 ]
  %hold.17.lcssa = phi i32 [ %hold.15.lcssa, %while.cond452.preheader ], [ %add468, %if.end463 ]
  %bits.17.lcssa = phi i32 [ %bits.15.lcssa, %while.cond452.preheader ], [ %add469, %if.end463 ]
  %shr478 = lshr i32 %hold.17.lcssa, %conv387.le.pre-phi
  %sub481 = sub i32 %bits.17.lcssa, %conv387.le.pre-phi
  %cmp485 = icmp eq i32 %46, 0
  br i1 %cmp485, label %if.then487, label %if.end490

if.then487:                                       ; preds = %do.body475
  store ptr @.str.10, ptr %msg1123, align 4
  store i32 27, ptr %0, align 4
  br label %sw.epilog1135

if.end490:                                        ; preds = %do.body475
  %sub493 = add i32 %46, -1
  %arrayidx494 = getelementptr %struct.inflate_state, ptr %0, i32 0, i32 27, i32 %sub493
  %53 = load i16, ptr %arrayidx494, align 2
  %and496 = and i32 %shr478, 3
  %add497 = add nuw nsw i32 %and496, 3
  %shr499 = lshr i32 %shr478, 2
  %sub500 = add i32 %sub481, -2
  br label %if.end591

do.body517:                                       ; preds = %if.end521, %while.cond510.preheader
  %bits.182266 = phi i32 [ %add527, %if.end521 ], [ %bits.15.lcssa, %while.cond510.preheader ]
  %hold.182265 = phi i32 [ %add526, %if.end521 ], [ %hold.15.lcssa, %while.cond510.preheader ]
  %have.182264 = phi i32 [ %dec522, %if.end521 ], [ %have.15.lcssa, %while.cond510.preheader ]
  %next.182263 = phi ptr [ %incdec.ptr523, %if.end521 ], [ %next.15.lcssa, %while.cond510.preheader ]
  %cmp518 = icmp eq i32 %have.182264, 0
  br i1 %cmp518, label %do.body1136, label %if.end521

if.end521:                                        ; preds = %do.body517
  %dec522 = add i32 %have.182264, -1
  %incdec.ptr523 = getelementptr i8, ptr %next.182263, i32 1
  %54 = load i8, ptr %next.182263, align 1
  %conv524 = zext i8 %54 to i32
  %shl525 = shl i32 %conv524, %bits.182266
  %add526 = add i32 %shl525, %hold.182265
  %add527 = add nuw nsw i32 %bits.182266, 8
  %cmp514 = icmp ult i32 %add527, %add513
  br i1 %cmp514, label %do.body517, label %do.body533

do.body533:                                       ; preds = %if.end521, %while.cond510.preheader
  %next.18.lcssa = phi ptr [ %next.15.lcssa, %while.cond510.preheader ], [ %incdec.ptr523, %if.end521 ]
  %have.18.lcssa = phi i32 [ %have.15.lcssa, %while.cond510.preheader ], [ %dec522, %if.end521 ]
  %hold.18.lcssa = phi i32 [ %hold.15.lcssa, %while.cond510.preheader ], [ %add526, %if.end521 ]
  %bits.18.lcssa = phi i32 [ %bits.15.lcssa, %while.cond510.preheader ], [ %add527, %if.end521 ]
  %shr536 = lshr i32 %hold.18.lcssa, %conv387.le.pre-phi
  %and542 = and i32 %shr536, 7
  %add543 = add nuw nsw i32 %and542, 3
  %shr545 = lshr i32 %shr536, 3
  %sub539 = sub nuw nsw i32 -3, %conv387.le.pre-phi
  %sub546 = add i32 %sub539, %bits.18.lcssa
  br label %if.end591

do.body558:                                       ; preds = %if.end562, %while.cond551.preheader
  %bits.192284 = phi i32 [ %add568, %if.end562 ], [ %bits.15.lcssa, %while.cond551.preheader ]
  %hold.192283 = phi i32 [ %add567, %if.end562 ], [ %hold.15.lcssa, %while.cond551.preheader ]
  %have.192282 = phi i32 [ %dec563, %if.end562 ], [ %have.15.lcssa, %while.cond551.preheader ]
  %next.192281 = phi ptr [ %incdec.ptr564, %if.end562 ], [ %next.15.lcssa, %while.cond551.preheader ]
  %cmp559 = icmp eq i32 %have.192282, 0
  br i1 %cmp559, label %do.body1136, label %if.end562

if.end562:                                        ; preds = %do.body558
  %dec563 = add i32 %have.192282, -1
  %incdec.ptr564 = getelementptr i8, ptr %next.192281, i32 1
  %55 = load i8, ptr %next.192281, align 1
  %conv565 = zext i8 %55 to i32
  %shl566 = shl i32 %conv565, %bits.192284
  %add567 = add i32 %shl566, %hold.192283
  %add568 = add nuw nsw i32 %bits.192284, 8
  %cmp555 = icmp ult i32 %add568, %add554
  br i1 %cmp555, label %do.body558, label %do.body574

do.body574:                                       ; preds = %if.end562, %while.cond551.preheader
  %next.19.lcssa = phi ptr [ %next.15.lcssa, %while.cond551.preheader ], [ %incdec.ptr564, %if.end562 ]
  %have.19.lcssa = phi i32 [ %have.15.lcssa, %while.cond551.preheader ], [ %dec563, %if.end562 ]
  %hold.19.lcssa = phi i32 [ %hold.15.lcssa, %while.cond551.preheader ], [ %add567, %if.end562 ]
  %bits.19.lcssa = phi i32 [ %bits.15.lcssa, %while.cond551.preheader ], [ %add568, %if.end562 ]
  %shr577 = lshr i32 %hold.19.lcssa, %conv387.le.pre-phi
  %and583 = and i32 %shr577, 127
  %add584 = add nuw nsw i32 %and583, 11
  %shr586 = lshr i32 %shr577, 7
  %sub580 = sub nuw nsw i32 -7, %conv387.le.pre-phi
  %sub587 = add i32 %sub580, %bits.19.lcssa
  br label %if.end591

if.end591:                                        ; preds = %do.body574, %do.body533, %if.end490
  %next.20 = phi ptr [ %next.17.lcssa, %if.end490 ], [ %next.18.lcssa, %do.body533 ], [ %next.19.lcssa, %do.body574 ]
  %have.20 = phi i32 [ %have.17.lcssa, %if.end490 ], [ %have.18.lcssa, %do.body533 ], [ %have.19.lcssa, %do.body574 ]
  %hold.20 = phi i32 [ %shr499, %if.end490 ], [ %shr545, %do.body533 ], [ %shr586, %do.body574 ]
  %bits.20 = phi i32 [ %sub500, %if.end490 ], [ %sub546, %do.body533 ], [ %sub587, %do.body574 ]
  %copy.2 = phi i32 [ %add497, %if.end490 ], [ %add543, %do.body533 ], [ %add584, %do.body574 ]
  %len.0 = phi i16 [ %53, %if.end490 ], [ 0, %do.body533 ], [ 0, %do.body574 ]
  %add593 = add i32 %copy.2, %46
  %cmp597 = icmp ugt i32 %add593, %add3752305
  br i1 %cmp597, label %if.then599, label %while.body606.preheader

while.body606.preheader:                          ; preds = %if.end591
  %dec6043022 = add nsw i32 %copy.2, -1
  %inc6103023 = add i32 %46, 1
  store i32 %inc6103023, ptr %have303, align 4
  %arrayidx6113024 = getelementptr %struct.inflate_state, ptr %0, i32 0, i32 27, i32 %46
  store i16 %len.0, ptr %arrayidx6113024, align 2
  %tobool605.not3025 = icmp eq i32 %dec6043022, 0
  br i1 %tobool605.not3025, label %if.end613, label %while.body606.while.body606_crit_edge

if.then599:                                       ; preds = %if.end591
  store ptr @.str.10, ptr %msg1123, align 4
  store i32 27, ptr %0, align 4
  br label %sw.epilog1135

while.body606.while.body606_crit_edge:            ; preds = %while.body606.while.body606_crit_edge, %while.body606.preheader
  %dec6043026 = phi i32 [ %dec604, %while.body606.while.body606_crit_edge ], [ %dec6043022, %while.body606.preheader ]
  %.pre2633 = load i32, ptr %have303, align 4
  %dec604 = add nsw i32 %dec6043026, -1
  %inc610 = add i32 %.pre2633, 1
  store i32 %inc610, ptr %have303, align 4
  %arrayidx611 = getelementptr %struct.inflate_state, ptr %0, i32 0, i32 27, i32 %.pre2633
  store i16 %len.0, ptr %arrayidx611, align 2
  %tobool605.not = icmp eq i32 %dec604, 0
  br i1 %tobool605.not, label %if.end613, label %while.body606.while.body606_crit_edge

if.end613:                                        ; preds = %while.body606.while.body606_crit_edge, %while.body606.preheader, %do.body432
  %next.21 = phi ptr [ %next.16.lcssa, %do.body432 ], [ %next.20, %while.body606.preheader ], [ %next.20, %while.body606.while.body606_crit_edge ]
  %have.21 = phi i32 [ %have.16.lcssa, %do.body432 ], [ %have.20, %while.body606.preheader ], [ %have.20, %while.body606.while.body606_crit_edge ]
  %hold.21 = phi i32 [ %shr435, %do.body432 ], [ %hold.20, %while.body606.preheader ], [ %hold.20, %while.body606.while.body606_crit_edge ]
  %bits.21 = phi i32 [ %sub438, %do.body432 ], [ %bits.20, %while.body606.preheader ], [ %bits.20, %while.body606.while.body606_crit_edge ]
  %56 = load i32, ptr %have303, align 4
  %57 = load i32, ptr %nlen, align 4
  %58 = load i32, ptr %ndist, align 4
  %add375 = add i32 %58, %57
  %cmp376 = icmp ult i32 %56, %add375
  br i1 %cmp376, label %for.cond379.preheader, label %while.end614

while.end614:                                     ; preds = %if.end613
  %.pr1843.pre = load i32, ptr %0, align 4
  %cmp616 = icmp eq i32 %.pr1843.pre, 27
  br i1 %cmp616, label %sw.epilog1135, label %if.end619

if.end619:                                        ; preds = %while.end614, %sw.bb370
  %bits.14.lcssa2662 = phi i32 [ %bits.21, %while.end614 ], [ %bits.13, %sw.bb370 ]
  %hold.14.lcssa2661 = phi i32 [ %hold.21, %while.end614 ], [ %hold.13, %sw.bb370 ]
  %have.14.lcssa2660 = phi i32 [ %have.21, %while.end614 ], [ %have.13, %sw.bb370 ]
  %next.14.lcssa2659 = phi ptr [ %next.21, %while.end614 ], [ %next.13, %sw.bb370 ]
  %59 = phi i32 [ %57, %while.end614 ], [ %44, %sw.bb370 ]
  store ptr %codes, ptr %next355, align 4
  store ptr %codes, ptr %lencode, align 4
  store i32 9, ptr %lenbits, align 4
  %call633 = tail call i32 @zlib_inflate_table(i32 noundef 1, ptr noundef %lens357, i32 noundef %59, ptr noundef %next355, ptr noundef %lenbits, ptr noundef %work) #12
  %tobool634.not = icmp eq i32 %call633, 0
  br i1 %tobool634.not, label %if.end638, label %if.then635

if.then635:                                       ; preds = %if.end619
  store ptr @.str.11, ptr %msg1123, align 4
  store i32 27, ptr %0, align 4
  br label %sw.epilog1135

if.end638:                                        ; preds = %if.end619
  %60 = load ptr, ptr %next355, align 4
  store ptr %60, ptr %distcode, align 4
  store i32 6, ptr %distbits, align 4
  %61 = load i32, ptr %nlen, align 4
  %add.ptr643 = getelementptr i16, ptr %lens357, i32 %61
  %62 = load i32, ptr %ndist, align 4
  %call649 = tail call i32 @zlib_inflate_table(i32 noundef 2, ptr noundef %add.ptr643, i32 noundef %62, ptr noundef %next355, ptr noundef %distbits, ptr noundef %work) #12
  %tobool650.not = icmp eq i32 %call649, 0
  br i1 %tobool650.not, label %if.end654, label %if.then651

if.then651:                                       ; preds = %if.end638
  store ptr @.str.12, ptr %msg1123, align 4
  store i32 27, ptr %0, align 4
  br label %sw.epilog1135

if.end654:                                        ; preds = %if.end638
  store i32 18, ptr %0, align 4
  br label %sw.bb656

sw.bb656:                                         ; preds = %if.end654, %for.cond
  %next.23 = phi ptr [ %next.0, %for.cond ], [ %next.14.lcssa2659, %if.end654 ]
  %have.23 = phi i32 [ %have.0, %for.cond ], [ %have.14.lcssa2660, %if.end654 ]
  %hold.23 = phi i32 [ %hold.0, %for.cond ], [ %hold.14.lcssa2661, %if.end654 ]
  %bits.23 = phi i32 [ %bits.0, %for.cond ], [ %bits.14.lcssa2662, %if.end654 ]
  %ret.2 = phi i32 [ %ret.0, %for.cond ], [ 0, %if.end654 ]
  %cmp657 = icmp ugt i32 %have.23, 5
  %cmp660 = icmp ugt i32 %left.0, 257
  %or.cond = select i1 %cmp657, i1 %cmp660, i1 false
  br i1 %or.cond, label %do.body663, label %for.cond682.preheader

for.cond682.preheader:                            ; preds = %sw.bb656
  %63 = load ptr, ptr %lencode, align 4
  %64 = load i32, ptr %lenbits, align 4
  %notmask1837 = shl nsw i32 -1, %64
  %sub686 = xor i32 %notmask1837, -1
  %and6872312 = and i32 %hold.23, %sub686
  %arrayidx6882313 = getelementptr %struct.code, ptr %63, i32 %and6872312
  %this.sroa.19.0.arrayidx688.sroa_idx2314 = getelementptr inbounds i8, ptr %arrayidx6882313, i32 1
  %this.sroa.19.0.copyload12722315 = load i8, ptr %this.sroa.19.0.arrayidx688.sroa_idx2314, align 1
  %conv6902316 = zext i8 %this.sroa.19.0.copyload12722315 to i32
  %cmp691.not2317 = icmp ult i32 %bits.23, %conv6902316
  br i1 %cmp691.not2317, label %do.body695, label %for.end708

do.body663:                                       ; preds = %sw.bb656
  store ptr %put.0, ptr %next_out, align 4
  store i32 %left.0, ptr %avail_out, align 4
  store ptr %next.23, ptr %strm, align 4
  store i32 %have.23, ptr %avail_in12, align 4
  store i32 %hold.23, ptr %hold13, align 4
  store i32 %bits.23, ptr %bits14, align 4
  tail call void @inflate_fast(ptr noundef nonnull %strm, i32 noundef %out.0) #12
  %65 = load ptr, ptr %next_out, align 4
  %66 = load i32, ptr %avail_out, align 4
  %67 = load ptr, ptr %strm, align 4
  %68 = load i32, ptr %avail_in12, align 4
  %69 = load i32, ptr %hold13, align 4
  %70 = load i32, ptr %bits14, align 4
  br label %sw.epilog1135

do.body695:                                       ; preds = %if.end699, %for.cond682.preheader
  %bits.242321 = phi i32 [ %add705, %if.end699 ], [ %bits.23, %for.cond682.preheader ]
  %hold.242320 = phi i32 [ %add704, %if.end699 ], [ %hold.23, %for.cond682.preheader ]
  %have.242319 = phi i32 [ %dec700, %if.end699 ], [ %have.23, %for.cond682.preheader ]
  %next.242318 = phi ptr [ %incdec.ptr701, %if.end699 ], [ %next.23, %for.cond682.preheader ]
  %cmp696 = icmp eq i32 %have.242319, 0
  br i1 %cmp696, label %do.body1136.loopexit2675, label %if.end699

if.end699:                                        ; preds = %do.body695
  %dec700 = add i32 %have.242319, -1
  %incdec.ptr701 = getelementptr i8, ptr %next.242318, i32 1
  %71 = load i8, ptr %next.242318, align 1
  %conv702 = zext i8 %71 to i32
  %shl703 = shl i32 %conv702, %bits.242321
  %add704 = add i32 %shl703, %hold.242320
  %add705 = add nuw nsw i32 %bits.242321, 8
  %and687 = and i32 %add704, %sub686
  %arrayidx688 = getelementptr %struct.code, ptr %63, i32 %and687
  %this.sroa.19.0.arrayidx688.sroa_idx = getelementptr inbounds i8, ptr %arrayidx688, i32 1
  %this.sroa.19.0.copyload1272 = load i8, ptr %this.sroa.19.0.arrayidx688.sroa_idx, align 1
  %conv690 = zext i8 %this.sroa.19.0.copyload1272 to i32
  %cmp691.not = icmp ult i32 %add705, %conv690
  br i1 %cmp691.not, label %do.body695, label %for.end708.loopexit

for.end708.loopexit:                              ; preds = %if.end699
  %conv690.le = zext i8 %this.sroa.19.0.copyload1272 to i32
  br label %for.end708

for.end708:                                       ; preds = %for.end708.loopexit, %for.cond682.preheader
  %conv690.le.pre-phi = phi i32 [ %conv6902316, %for.cond682.preheader ], [ %conv690.le, %for.end708.loopexit ]
  %arrayidx688.lcssa2311 = phi ptr [ %arrayidx6882313, %for.cond682.preheader ], [ %arrayidx688, %for.end708.loopexit ]
  %next.24.lcssa = phi ptr [ %next.23, %for.cond682.preheader ], [ %incdec.ptr701, %for.end708.loopexit ]
  %have.24.lcssa = phi i32 [ %have.23, %for.cond682.preheader ], [ %dec700, %for.end708.loopexit ]
  %hold.24.lcssa = phi i32 [ %hold.23, %for.cond682.preheader ], [ %add704, %for.end708.loopexit ]
  %bits.24.lcssa = phi i32 [ %bits.23, %for.cond682.preheader ], [ %add705, %for.end708.loopexit ]
  %this.sroa.43.0.arrayidx688.sroa_idx.le = getelementptr inbounds i8, ptr %arrayidx688.lcssa2311, i32 2
  %this.sroa.43.0.copyload1296.le = load i16, ptr %this.sroa.43.0.arrayidx688.sroa_idx.le, align 2
  %this.sroa.0.0.copyload1268 = load i8, ptr %arrayidx688.lcssa2311, align 2
  %conv709 = zext i8 %this.sroa.0.0.copyload1268 to i32
  %tobool710.not = icmp ne i8 %this.sroa.0.0.copyload1268, 0
  %and714 = and i32 %conv709, 240
  %cmp715 = icmp eq i32 %and714, 0
  %or.cond1840 = select i1 %tobool710.not, i1 %cmp715, i1 false
  br i1 %or.cond1840, label %for.cond718.preheader, label %do.body768

for.cond718.preheader:                            ; preds = %for.end708
  %conv721 = zext i16 %this.sroa.43.0.copyload1296.le to i32
  %add726 = add nuw nsw i32 %conv690.le.pre-phi, %conv709
  %notmask1838 = shl nsw i32 -1, %add726
  %sub728 = xor i32 %notmask1838, -1
  %and7292331 = and i32 %hold.24.lcssa, %sub728
  %shr7322332 = lshr i32 %and7292331, %conv690.le.pre-phi
  %add7332333 = add i32 %shr7322332, %conv721
  %arrayidx7342334 = getelementptr %struct.code, ptr %63, i32 %add7332333
  %this.sroa.19.0.arrayidx734.sroa_idx2335 = getelementptr inbounds i8, ptr %arrayidx7342334, i32 1
  %this.sroa.19.0.copyload12732336 = load i8, ptr %this.sroa.19.0.arrayidx734.sroa_idx2335, align 1
  %conv7382337 = zext i8 %this.sroa.19.0.copyload12732336 to i32
  %add7392338 = add nuw nsw i32 %conv690.le.pre-phi, %conv7382337
  %cmp740.not2339 = icmp ugt i32 %add7392338, %bits.24.lcssa
  br i1 %cmp740.not2339, label %do.body744, label %do.body758

do.body744:                                       ; preds = %if.end748, %for.cond718.preheader
  %bits.252343 = phi i32 [ %add754, %if.end748 ], [ %bits.24.lcssa, %for.cond718.preheader ]
  %hold.252342 = phi i32 [ %add753, %if.end748 ], [ %hold.24.lcssa, %for.cond718.preheader ]
  %have.252341 = phi i32 [ %dec749, %if.end748 ], [ %have.24.lcssa, %for.cond718.preheader ]
  %next.252340 = phi ptr [ %incdec.ptr750, %if.end748 ], [ %next.24.lcssa, %for.cond718.preheader ]
  %cmp745 = icmp eq i32 %have.252341, 0
  br i1 %cmp745, label %do.body1136.loopexit2674, label %if.end748

if.end748:                                        ; preds = %do.body744
  %dec749 = add i32 %have.252341, -1
  %incdec.ptr750 = getelementptr i8, ptr %next.252340, i32 1
  %72 = load i8, ptr %next.252340, align 1
  %conv751 = zext i8 %72 to i32
  %shl752 = shl i32 %conv751, %bits.252343
  %add753 = add i32 %shl752, %hold.252342
  %add754 = add nuw nsw i32 %bits.252343, 8
  %and729 = and i32 %add753, %sub728
  %shr732 = lshr i32 %and729, %conv690.le.pre-phi
  %add733 = add i32 %shr732, %conv721
  %arrayidx734 = getelementptr %struct.code, ptr %63, i32 %add733
  %this.sroa.19.0.arrayidx734.sroa_idx = getelementptr inbounds i8, ptr %arrayidx734, i32 1
  %this.sroa.19.0.copyload1273 = load i8, ptr %this.sroa.19.0.arrayidx734.sroa_idx, align 1
  %conv738 = zext i8 %this.sroa.19.0.copyload1273 to i32
  %add739 = add nuw nsw i32 %conv690.le.pre-phi, %conv738
  %cmp740.not = icmp ugt i32 %add739, %add754
  br i1 %cmp740.not, label %do.body744, label %do.body758.loopexit

do.body758.loopexit:                              ; preds = %if.end748
  %conv738.le = zext i8 %this.sroa.19.0.copyload1273 to i32
  br label %do.body758

do.body758:                                       ; preds = %do.body758.loopexit, %for.cond718.preheader
  %.pre2640.pre-phi = phi i32 [ %conv7382337, %for.cond718.preheader ], [ %conv738.le, %do.body758.loopexit ]
  %next.25.lcssa = phi ptr [ %next.24.lcssa, %for.cond718.preheader ], [ %incdec.ptr750, %do.body758.loopexit ]
  %have.25.lcssa = phi i32 [ %have.24.lcssa, %for.cond718.preheader ], [ %dec749, %do.body758.loopexit ]
  %hold.25.lcssa = phi i32 [ %hold.24.lcssa, %for.cond718.preheader ], [ %add753, %do.body758.loopexit ]
  %bits.25.lcssa = phi i32 [ %bits.24.lcssa, %for.cond718.preheader ], [ %add754, %do.body758.loopexit ]
  %arrayidx734.lcssa = phi ptr [ %arrayidx7342334, %for.cond718.preheader ], [ %arrayidx734, %do.body758.loopexit ]
  %this.sroa.43.0.arrayidx734.sroa_idx = getelementptr inbounds i8, ptr %arrayidx734.lcssa, i32 2
  %this.sroa.43.0.copyload1297 = load i16, ptr %this.sroa.43.0.arrayidx734.sroa_idx, align 2
  %this.sroa.0.0.copyload1269 = load i8, ptr %arrayidx734.lcssa, align 2
  %shr761 = lshr i32 %hold.25.lcssa, %conv690.le.pre-phi
  %sub764 = sub i32 %bits.25.lcssa, %conv690.le.pre-phi
  %.pre2641 = zext i8 %this.sroa.0.0.copyload1269 to i32
  br label %do.body768

do.body768:                                       ; preds = %do.body758, %for.end708
  %conv781.pre-phi = phi i32 [ %conv709, %for.end708 ], [ %.pre2641, %do.body758 ]
  %conv770.pre-phi = phi i32 [ %conv690.le.pre-phi, %for.end708 ], [ %.pre2640.pre-phi, %do.body758 ]
  %next.26 = phi ptr [ %next.24.lcssa, %for.end708 ], [ %next.25.lcssa, %do.body758 ]
  %have.26 = phi i32 [ %have.24.lcssa, %for.end708 ], [ %have.25.lcssa, %do.body758 ]
  %hold.26 = phi i32 [ %hold.24.lcssa, %for.end708 ], [ %shr761, %do.body758 ]
  %bits.26 = phi i32 [ %bits.24.lcssa, %for.end708 ], [ %sub764, %do.body758 ]
  %this.sroa.43.0 = phi i16 [ %this.sroa.43.0.copyload1296.le, %for.end708 ], [ %this.sroa.43.0.copyload1297, %do.body758 ]
  %this.sroa.0.0 = phi i8 [ %this.sroa.0.0.copyload1268, %for.end708 ], [ %this.sroa.0.0.copyload1269, %do.body758 ]
  %shr771 = lshr i32 %hold.26, %conv770.pre-phi
  %sub774 = sub i32 %bits.26, %conv770.pre-phi
  %conv778 = zext i16 %this.sroa.43.0 to i32
  store i32 %conv778, ptr %length1066, align 4
  %cmp782 = icmp eq i8 %this.sroa.0.0, 0
  br i1 %cmp782, label %if.then784, label %if.end786

if.then784:                                       ; preds = %do.body768
  store i32 23, ptr %0, align 4
  br label %sw.epilog1135

if.end786:                                        ; preds = %do.body768
  %and789 = and i32 %conv781.pre-phi, 32
  %tobool790.not = icmp eq i32 %and789, 0
  br i1 %tobool790.not, label %if.end793, label %if.then791

if.then791:                                       ; preds = %if.end786
  store i32 11, ptr %0, align 4
  br label %sw.epilog1135

if.end793:                                        ; preds = %if.end786
  %and796 = and i32 %conv781.pre-phi, 64
  %tobool797.not = icmp eq i32 %and796, 0
  br i1 %tobool797.not, label %if.end801, label %if.then798

if.then798:                                       ; preds = %if.end793
  store ptr @.str.2, ptr %msg1123, align 4
  store i32 27, ptr %0, align 4
  br label %sw.epilog1135

if.end801:                                        ; preds = %if.end793
  %and804 = and i32 %conv781.pre-phi, 15
  store i32 %and804, ptr %extra, align 4
  store i32 19, ptr %0, align 4
  br label %sw.bb806

sw.bb806:                                         ; preds = %if.end801, %for.cond.sw.bb806_crit_edge
  %73 = phi i32 [ %.pre2636, %for.cond.sw.bb806_crit_edge ], [ %and804, %if.end801 ]
  %next.27 = phi ptr [ %next.0, %for.cond.sw.bb806_crit_edge ], [ %next.26, %if.end801 ]
  %have.27 = phi i32 [ %have.0, %for.cond.sw.bb806_crit_edge ], [ %have.26, %if.end801 ]
  %hold.27 = phi i32 [ %hold.0, %for.cond.sw.bb806_crit_edge ], [ %shr771, %if.end801 ]
  %bits.27 = phi i32 [ %bits.0, %for.cond.sw.bb806_crit_edge ], [ %sub774, %if.end801 ]
  %ret.3 = phi i32 [ %ret.0, %for.cond.sw.bb806_crit_edge ], [ %ret.2, %if.end801 ]
  %tobool808.not = icmp eq i32 %73, 0
  br i1 %tobool808.not, label %if.end845, label %while.cond811.preheader

while.cond811.preheader:                          ; preds = %sw.bb806
  %cmp8132350 = icmp ult i32 %bits.27, %73
  br i1 %cmp8132350, label %do.body816, label %do.end831

do.body816:                                       ; preds = %if.end820, %while.cond811.preheader
  %bits.282354 = phi i32 [ %add826, %if.end820 ], [ %bits.27, %while.cond811.preheader ]
  %hold.282353 = phi i32 [ %add825, %if.end820 ], [ %hold.27, %while.cond811.preheader ]
  %have.282352 = phi i32 [ %dec821, %if.end820 ], [ %have.27, %while.cond811.preheader ]
  %next.282351 = phi ptr [ %incdec.ptr822, %if.end820 ], [ %next.27, %while.cond811.preheader ]
  %cmp817 = icmp eq i32 %have.282352, 0
  br i1 %cmp817, label %do.body1136.loopexit2673, label %if.end820

if.end820:                                        ; preds = %do.body816
  %dec821 = add i32 %have.282352, -1
  %incdec.ptr822 = getelementptr i8, ptr %next.282351, i32 1
  %74 = load i8, ptr %next.282351, align 1
  %conv823 = zext i8 %74 to i32
  %shl824 = shl i32 %conv823, %bits.282354
  %add825 = add i32 %shl824, %hold.282353
  %add826 = add i32 %bits.282354, 8
  %cmp813 = icmp ult i32 %add826, %73
  br i1 %cmp813, label %do.body816, label %do.end831

do.end831:                                        ; preds = %if.end820, %while.cond811.preheader
  %next.28.lcssa = phi ptr [ %next.27, %while.cond811.preheader ], [ %incdec.ptr822, %if.end820 ]
  %have.28.lcssa = phi i32 [ %have.27, %while.cond811.preheader ], [ %dec821, %if.end820 ]
  %hold.28.lcssa = phi i32 [ %hold.27, %while.cond811.preheader ], [ %add825, %if.end820 ]
  %bits.28.lcssa = phi i32 [ %bits.27, %while.cond811.preheader ], [ %add826, %if.end820 ]
  %notmask1836 = shl nsw i32 -1, %73
  %sub834 = xor i32 %notmask1836, -1
  %and835 = and i32 %hold.28.lcssa, %sub834
  %75 = load i32, ptr %length1066, align 4
  %add837 = add i32 %75, %and835
  store i32 %add837, ptr %length1066, align 4
  %shr840 = lshr i32 %hold.28.lcssa, %73
  %sub842 = sub i32 %bits.28.lcssa, %73
  br label %if.end845

if.end845:                                        ; preds = %do.end831, %sw.bb806
  %next.29 = phi ptr [ %next.28.lcssa, %do.end831 ], [ %next.27, %sw.bb806 ]
  %have.29 = phi i32 [ %have.28.lcssa, %do.end831 ], [ %have.27, %sw.bb806 ]
  %hold.29 = phi i32 [ %shr840, %do.end831 ], [ %hold.27, %sw.bb806 ]
  %bits.29 = phi i32 [ %sub842, %do.end831 ], [ %bits.27, %sw.bb806 ]
  store i32 20, ptr %0, align 4
  br label %sw.bb847

sw.bb847:                                         ; preds = %if.end845, %for.cond
  %next.30 = phi ptr [ %next.0, %for.cond ], [ %next.29, %if.end845 ]
  %have.30 = phi i32 [ %have.0, %for.cond ], [ %have.29, %if.end845 ]
  %hold.30 = phi i32 [ %hold.0, %for.cond ], [ %hold.29, %if.end845 ]
  %bits.30 = phi i32 [ %bits.0, %for.cond ], [ %bits.29, %if.end845 ]
  %ret.4 = phi i32 [ %ret.0, %for.cond ], [ %ret.3, %if.end845 ]
  %76 = load ptr, ptr %distcode, align 4
  %77 = load i32, ptr %distbits, align 4
  %notmask1834 = shl nsw i32 -1, %77
  %sub852 = xor i32 %notmask1834, -1
  %and8532361 = and i32 %hold.30, %sub852
  %arrayidx8542362 = getelementptr %struct.code, ptr %76, i32 %and8532361
  %this.sroa.19.0.arrayidx854.sroa_idx2363 = getelementptr inbounds i8, ptr %arrayidx8542362, i32 1
  %this.sroa.19.0.copyload12742364 = load i8, ptr %this.sroa.19.0.arrayidx854.sroa_idx2363, align 1
  %conv8562365 = zext i8 %this.sroa.19.0.copyload12742364 to i32
  %cmp857.not2366 = icmp ult i32 %bits.30, %conv8562365
  br i1 %cmp857.not2366, label %do.body861, label %for.end874

do.body861:                                       ; preds = %if.end865, %sw.bb847
  %bits.312370 = phi i32 [ %add871, %if.end865 ], [ %bits.30, %sw.bb847 ]
  %hold.312369 = phi i32 [ %add870, %if.end865 ], [ %hold.30, %sw.bb847 ]
  %have.312368 = phi i32 [ %dec866, %if.end865 ], [ %have.30, %sw.bb847 ]
  %next.312367 = phi ptr [ %incdec.ptr867, %if.end865 ], [ %next.30, %sw.bb847 ]
  %cmp862 = icmp eq i32 %have.312368, 0
  br i1 %cmp862, label %do.body1136.loopexit2672, label %if.end865

if.end865:                                        ; preds = %do.body861
  %dec866 = add i32 %have.312368, -1
  %incdec.ptr867 = getelementptr i8, ptr %next.312367, i32 1
  %78 = load i8, ptr %next.312367, align 1
  %conv868 = zext i8 %78 to i32
  %shl869 = shl i32 %conv868, %bits.312370
  %add870 = add i32 %shl869, %hold.312369
  %add871 = add nuw nsw i32 %bits.312370, 8
  %and853 = and i32 %add870, %sub852
  %arrayidx854 = getelementptr %struct.code, ptr %76, i32 %and853
  %this.sroa.19.0.arrayidx854.sroa_idx = getelementptr inbounds i8, ptr %arrayidx854, i32 1
  %this.sroa.19.0.copyload1274 = load i8, ptr %this.sroa.19.0.arrayidx854.sroa_idx, align 1
  %conv856 = zext i8 %this.sroa.19.0.copyload1274 to i32
  %cmp857.not = icmp ult i32 %add871, %conv856
  br i1 %cmp857.not, label %do.body861, label %for.end874.loopexit

for.end874.loopexit:                              ; preds = %if.end865
  %conv856.le = zext i8 %this.sroa.19.0.copyload1274 to i32
  br label %for.end874

for.end874:                                       ; preds = %for.end874.loopexit, %sw.bb847
  %conv856.le.pre-phi = phi i32 [ %conv8562365, %sw.bb847 ], [ %conv856.le, %for.end874.loopexit ]
  %arrayidx854.lcssa2360 = phi ptr [ %arrayidx8542362, %sw.bb847 ], [ %arrayidx854, %for.end874.loopexit ]
  %next.31.lcssa = phi ptr [ %next.30, %sw.bb847 ], [ %incdec.ptr867, %for.end874.loopexit ]
  %have.31.lcssa = phi i32 [ %have.30, %sw.bb847 ], [ %dec866, %for.end874.loopexit ]
  %hold.31.lcssa = phi i32 [ %hold.30, %sw.bb847 ], [ %add870, %for.end874.loopexit ]
  %bits.31.lcssa = phi i32 [ %bits.30, %sw.bb847 ], [ %add871, %for.end874.loopexit ]
  %this.sroa.43.0.arrayidx854.sroa_idx.le = getelementptr inbounds i8, ptr %arrayidx854.lcssa2360, i32 2
  %this.sroa.43.0.copyload1298.le = load i16, ptr %this.sroa.43.0.arrayidx854.sroa_idx.le, align 2
  %this.sroa.0.0.copyload1270 = load i8, ptr %arrayidx854.lcssa2360, align 2
  %conv876 = zext i8 %this.sroa.0.0.copyload1270 to i32
  %and877 = and i32 %conv876, 240
  %cmp878 = icmp eq i32 %and877, 0
  br i1 %cmp878, label %for.cond881.preheader, label %do.body931

for.cond881.preheader:                            ; preds = %for.end874
  %conv884 = zext i16 %this.sroa.43.0.copyload1298.le to i32
  %add889 = add nuw nsw i32 %conv856.le.pre-phi, %conv876
  %notmask1835 = shl nsw i32 -1, %add889
  %sub891 = xor i32 %notmask1835, -1
  %and8922380 = and i32 %hold.31.lcssa, %sub891
  %shr8952381 = lshr i32 %and8922380, %conv856.le.pre-phi
  %add8962382 = add i32 %shr8952381, %conv884
  %arrayidx8972383 = getelementptr %struct.code, ptr %76, i32 %add8962382
  %this.sroa.19.0.arrayidx897.sroa_idx2384 = getelementptr inbounds i8, ptr %arrayidx8972383, i32 1
  %this.sroa.19.0.copyload12752385 = load i8, ptr %this.sroa.19.0.arrayidx897.sroa_idx2384, align 1
  %conv9012386 = zext i8 %this.sroa.19.0.copyload12752385 to i32
  %add9022387 = add nuw nsw i32 %conv856.le.pre-phi, %conv9012386
  %cmp903.not2388 = icmp ugt i32 %add9022387, %bits.31.lcssa
  br i1 %cmp903.not2388, label %do.body907, label %do.body921

do.body907:                                       ; preds = %if.end911, %for.cond881.preheader
  %bits.322392 = phi i32 [ %add917, %if.end911 ], [ %bits.31.lcssa, %for.cond881.preheader ]
  %hold.322391 = phi i32 [ %add916, %if.end911 ], [ %hold.31.lcssa, %for.cond881.preheader ]
  %have.322390 = phi i32 [ %dec912, %if.end911 ], [ %have.31.lcssa, %for.cond881.preheader ]
  %next.322389 = phi ptr [ %incdec.ptr913, %if.end911 ], [ %next.31.lcssa, %for.cond881.preheader ]
  %cmp908 = icmp eq i32 %have.322390, 0
  br i1 %cmp908, label %do.body1136.loopexit2671, label %if.end911

if.end911:                                        ; preds = %do.body907
  %dec912 = add i32 %have.322390, -1
  %incdec.ptr913 = getelementptr i8, ptr %next.322389, i32 1
  %79 = load i8, ptr %next.322389, align 1
  %conv914 = zext i8 %79 to i32
  %shl915 = shl i32 %conv914, %bits.322392
  %add916 = add i32 %shl915, %hold.322391
  %add917 = add nuw nsw i32 %bits.322392, 8
  %and892 = and i32 %add916, %sub891
  %shr895 = lshr i32 %and892, %conv856.le.pre-phi
  %add896 = add i32 %shr895, %conv884
  %arrayidx897 = getelementptr %struct.code, ptr %76, i32 %add896
  %this.sroa.19.0.arrayidx897.sroa_idx = getelementptr inbounds i8, ptr %arrayidx897, i32 1
  %this.sroa.19.0.copyload1275 = load i8, ptr %this.sroa.19.0.arrayidx897.sroa_idx, align 1
  %conv901 = zext i8 %this.sroa.19.0.copyload1275 to i32
  %add902 = add nuw nsw i32 %conv856.le.pre-phi, %conv901
  %cmp903.not = icmp ugt i32 %add902, %add917
  br i1 %cmp903.not, label %do.body907, label %do.body921.loopexit

do.body921.loopexit:                              ; preds = %if.end911
  %conv901.le = zext i8 %this.sroa.19.0.copyload1275 to i32
  br label %do.body921

do.body921:                                       ; preds = %do.body921.loopexit, %for.cond881.preheader
  %.pre2642.pre-phi = phi i32 [ %conv9012386, %for.cond881.preheader ], [ %conv901.le, %do.body921.loopexit ]
  %next.32.lcssa = phi ptr [ %next.31.lcssa, %for.cond881.preheader ], [ %incdec.ptr913, %do.body921.loopexit ]
  %have.32.lcssa = phi i32 [ %have.31.lcssa, %for.cond881.preheader ], [ %dec912, %do.body921.loopexit ]
  %hold.32.lcssa = phi i32 [ %hold.31.lcssa, %for.cond881.preheader ], [ %add916, %do.body921.loopexit ]
  %bits.32.lcssa = phi i32 [ %bits.31.lcssa, %for.cond881.preheader ], [ %add917, %do.body921.loopexit ]
  %arrayidx897.lcssa = phi ptr [ %arrayidx8972383, %for.cond881.preheader ], [ %arrayidx897, %do.body921.loopexit ]
  %this.sroa.43.0.arrayidx897.sroa_idx = getelementptr inbounds i8, ptr %arrayidx897.lcssa, i32 2
  %this.sroa.43.0.copyload1299 = load i16, ptr %this.sroa.43.0.arrayidx897.sroa_idx, align 2
  %this.sroa.0.0.copyload1271 = load i8, ptr %arrayidx897.lcssa, align 2
  %shr924 = lshr i32 %hold.32.lcssa, %conv856.le.pre-phi
  %sub927 = sub i32 %bits.32.lcssa, %conv856.le.pre-phi
  %.pre2643 = zext i8 %this.sroa.0.0.copyload1271 to i32
  br label %do.body931

do.body931:                                       ; preds = %do.body921, %for.end874
  %conv941.pre-phi = phi i32 [ %conv876, %for.end874 ], [ %.pre2643, %do.body921 ]
  %conv933.pre-phi = phi i32 [ %conv856.le.pre-phi, %for.end874 ], [ %.pre2642.pre-phi, %do.body921 ]
  %next.33 = phi ptr [ %next.31.lcssa, %for.end874 ], [ %next.32.lcssa, %do.body921 ]
  %have.33 = phi i32 [ %have.31.lcssa, %for.end874 ], [ %have.32.lcssa, %do.body921 ]
  %hold.33 = phi i32 [ %hold.31.lcssa, %for.end874 ], [ %shr924, %do.body921 ]
  %bits.33 = phi i32 [ %bits.31.lcssa, %for.end874 ], [ %sub927, %do.body921 ]
  %this.sroa.43.1 = phi i16 [ %this.sroa.43.0.copyload1298.le, %for.end874 ], [ %this.sroa.43.0.copyload1299, %do.body921 ]
  %shr934 = lshr i32 %hold.33, %conv933.pre-phi
  %sub937 = sub i32 %bits.33, %conv933.pre-phi
  %and942 = and i32 %conv941.pre-phi, 64
  %tobool943.not = icmp eq i32 %and942, 0
  br i1 %tobool943.not, label %if.end947, label %if.then944

if.then944:                                       ; preds = %do.body931
  store ptr @.str.1, ptr %msg1123, align 4
  store i32 27, ptr %0, align 4
  br label %sw.epilog1135

if.end947:                                        ; preds = %do.body931
  %conv949 = zext i16 %this.sroa.43.1 to i32
  store i32 %conv949, ptr %offset, align 4
  %and952 = and i32 %conv941.pre-phi, 15
  store i32 %and952, ptr %extra, align 4
  store i32 21, ptr %0, align 4
  br label %sw.bb955

sw.bb955:                                         ; preds = %if.end947, %for.cond.sw.bb955_crit_edge
  %80 = phi i32 [ %.pre2637, %for.cond.sw.bb955_crit_edge ], [ %and952, %if.end947 ]
  %next.34 = phi ptr [ %next.0, %for.cond.sw.bb955_crit_edge ], [ %next.33, %if.end947 ]
  %have.34 = phi i32 [ %have.0, %for.cond.sw.bb955_crit_edge ], [ %have.33, %if.end947 ]
  %hold.34 = phi i32 [ %hold.0, %for.cond.sw.bb955_crit_edge ], [ %shr934, %if.end947 ]
  %bits.34 = phi i32 [ %bits.0, %for.cond.sw.bb955_crit_edge ], [ %sub937, %if.end947 ]
  %ret.5 = phi i32 [ %ret.0, %for.cond.sw.bb955_crit_edge ], [ %ret.4, %if.end947 ]
  %tobool957.not = icmp eq i32 %80, 0
  br i1 %tobool957.not, label %sw.bb955.if.end994_crit_edge, label %while.cond960.preheader

sw.bb955.if.end994_crit_edge:                     ; preds = %sw.bb955
  %.pre2638 = load i32, ptr %offset, align 4
  br label %if.end994

while.cond960.preheader:                          ; preds = %sw.bb955
  %cmp9622399 = icmp ult i32 %bits.34, %80
  br i1 %cmp9622399, label %do.body965, label %do.end980

do.body965:                                       ; preds = %if.end969, %while.cond960.preheader
  %bits.352403 = phi i32 [ %add975, %if.end969 ], [ %bits.34, %while.cond960.preheader ]
  %hold.352402 = phi i32 [ %add974, %if.end969 ], [ %hold.34, %while.cond960.preheader ]
  %have.352401 = phi i32 [ %dec970, %if.end969 ], [ %have.34, %while.cond960.preheader ]
  %next.352400 = phi ptr [ %incdec.ptr971, %if.end969 ], [ %next.34, %while.cond960.preheader ]
  %cmp966 = icmp eq i32 %have.352401, 0
  br i1 %cmp966, label %do.body1136.loopexit2670, label %if.end969

if.end969:                                        ; preds = %do.body965
  %dec970 = add i32 %have.352401, -1
  %incdec.ptr971 = getelementptr i8, ptr %next.352400, i32 1
  %81 = load i8, ptr %next.352400, align 1
  %conv972 = zext i8 %81 to i32
  %shl973 = shl i32 %conv972, %bits.352403
  %add974 = add i32 %shl973, %hold.352402
  %add975 = add i32 %bits.352403, 8
  %cmp962 = icmp ult i32 %add975, %80
  br i1 %cmp962, label %do.body965, label %do.end980

do.end980:                                        ; preds = %if.end969, %while.cond960.preheader
  %next.35.lcssa = phi ptr [ %next.34, %while.cond960.preheader ], [ %incdec.ptr971, %if.end969 ]
  %have.35.lcssa = phi i32 [ %have.34, %while.cond960.preheader ], [ %dec970, %if.end969 ]
  %hold.35.lcssa = phi i32 [ %hold.34, %while.cond960.preheader ], [ %add974, %if.end969 ]
  %bits.35.lcssa = phi i32 [ %bits.34, %while.cond960.preheader ], [ %add975, %if.end969 ]
  %notmask = shl nsw i32 -1, %80
  %sub983 = xor i32 %notmask, -1
  %and984 = and i32 %hold.35.lcssa, %sub983
  %82 = load i32, ptr %offset, align 4
  %add986 = add i32 %82, %and984
  store i32 %add986, ptr %offset, align 4
  %shr989 = lshr i32 %hold.35.lcssa, %80
  %sub991 = sub i32 %bits.35.lcssa, %80
  br label %if.end994

if.end994:                                        ; preds = %do.end980, %sw.bb955.if.end994_crit_edge
  %83 = phi i32 [ %add986, %do.end980 ], [ %.pre2638, %sw.bb955.if.end994_crit_edge ]
  %next.36 = phi ptr [ %next.35.lcssa, %do.end980 ], [ %next.34, %sw.bb955.if.end994_crit_edge ]
  %have.36 = phi i32 [ %have.35.lcssa, %do.end980 ], [ %have.34, %sw.bb955.if.end994_crit_edge ]
  %hold.36 = phi i32 [ %shr989, %do.end980 ], [ %hold.34, %sw.bb955.if.end994_crit_edge ]
  %bits.36 = phi i32 [ %sub991, %do.end980 ], [ %bits.34, %sw.bb955.if.end994_crit_edge ]
  %84 = load i32, ptr %whave, align 4
  %add996 = sub i32 %out.0, %left.0
  %sub997 = add i32 %add996, %84
  %cmp998 = icmp ugt i32 %83, %sub997
  br i1 %cmp998, label %if.then1000, label %if.end1003

if.then1000:                                      ; preds = %if.end994
  store ptr @.str, ptr %msg1123, align 4
  store i32 27, ptr %0, align 4
  br label %sw.epilog1135

if.end1003:                                       ; preds = %if.end994
  store i32 22, ptr %0, align 4
  br label %sw.bb1005

sw.bb1005:                                        ; preds = %if.end1003, %for.cond
  %next.37 = phi ptr [ %next.0, %for.cond ], [ %next.36, %if.end1003 ]
  %have.37 = phi i32 [ %have.0, %for.cond ], [ %have.36, %if.end1003 ]
  %hold.37 = phi i32 [ %hold.0, %for.cond ], [ %hold.36, %if.end1003 ]
  %bits.37 = phi i32 [ %bits.0, %for.cond ], [ %bits.36, %if.end1003 ]
  %ret.6 = phi i32 [ %ret.0, %for.cond ], [ %ret.5, %if.end1003 ]
  %cmp1006 = icmp eq i32 %left.0, 0
  br i1 %cmp1006, label %do.body1136.loopexit3036, label %if.end1009

if.end1009:                                       ; preds = %sw.bb1005
  %sub1010 = sub i32 %out.0, %left.0
  %85 = load i32, ptr %offset, align 4
  %cmp1012 = icmp ugt i32 %85, %sub1010
  br i1 %cmp1012, label %if.then1014, label %if.else1036

if.then1014:                                      ; preds = %if.end1009
  %sub1016 = sub i32 %85, %sub1010
  %86 = load i32, ptr %write, align 4
  %cmp1017 = icmp ugt i32 %sub1016, %86
  br i1 %cmp1017, label %if.then1019, label %if.else1024

if.then1019:                                      ; preds = %if.then1014
  %sub1021 = sub i32 %sub1016, %86
  %87 = load ptr, ptr %window1025, align 4
  %88 = load i32, ptr %wsize, align 4
  %sub1022 = sub i32 %88, %sub1021
  %add.ptr1023 = getelementptr i8, ptr %87, i32 %sub1022
  br label %if.end1029

if.else1024:                                      ; preds = %if.then1014
  %89 = load ptr, ptr %window1025, align 4
  %sub1027 = sub i32 %86, %sub1016
  %add.ptr1028 = getelementptr i8, ptr %89, i32 %sub1027
  br label %if.end1029

if.end1029:                                       ; preds = %if.else1024, %if.then1019
  %copy.4 = phi i32 [ %sub1021, %if.then1019 ], [ %sub1016, %if.else1024 ]
  %from.0 = phi ptr [ %add.ptr1023, %if.then1019 ], [ %add.ptr1028, %if.else1024 ]
  %90 = load i32, ptr %length1066, align 4
  %91 = tail call i32 @llvm.umin.i32(i32 %copy.4, i32 %90)
  br label %if.end1040

if.else1036:                                      ; preds = %if.end1009
  %idx.neg = sub i32 0, %85
  %add.ptr1038 = getelementptr i8, ptr %put.0, i32 %idx.neg
  %92 = load i32, ptr %length1066, align 4
  br label %if.end1040

if.end1040:                                       ; preds = %if.else1036, %if.end1029
  %93 = phi i32 [ %92, %if.else1036 ], [ %90, %if.end1029 ]
  %copy.5 = phi i32 [ %92, %if.else1036 ], [ %91, %if.end1029 ]
  %from.1 = phi ptr [ %add.ptr1038, %if.else1036 ], [ %from.0, %if.end1029 ]
  %94 = tail call i32 @llvm.umin.i32(i32 %copy.5, i32 %left.0)
  %sub1047 = sub i32 %93, %94
  store i32 %sub1047, ptr %length1066, align 4
  br label %do.body1048

do.body1048:                                      ; preds = %do.body1048, %if.end1040
  %put.1 = phi ptr [ %put.0, %if.end1040 ], [ %incdec.ptr1050, %do.body1048 ]
  %copy.7 = phi i32 [ %94, %if.end1040 ], [ %dec1052, %do.body1048 ]
  %from.2 = phi ptr [ %from.1, %if.end1040 ], [ %incdec.ptr1049, %do.body1048 ]
  %incdec.ptr1049 = getelementptr i8, ptr %from.2, i32 1
  %95 = load i8, ptr %from.2, align 1
  %incdec.ptr1050 = getelementptr i8, ptr %put.1, i32 1
  store i8 %95, ptr %put.1, align 1
  %dec1052 = add i32 %copy.7, -1
  %tobool1053.not = icmp eq i32 %dec1052, 0
  br i1 %tobool1053.not, label %do.end1054, label %do.body1048

do.end1054:                                       ; preds = %do.body1048
  %sub1045 = sub i32 %left.0, %94
  %96 = load i32, ptr %length1066, align 4
  %cmp1056 = icmp eq i32 %96, 0
  br i1 %cmp1056, label %if.then1058, label %sw.epilog1135

if.then1058:                                      ; preds = %do.end1054
  store i32 18, ptr %0, align 4
  br label %sw.epilog1135

sw.bb1061:                                        ; preds = %for.cond
  %cmp1062 = icmp eq i32 %left.0, 0
  br i1 %cmp1062, label %do.body1136.loopexit3036, label %if.end1065

if.end1065:                                       ; preds = %sw.bb1061
  %97 = load i32, ptr %length1066, align 4
  %conv1067 = trunc i32 %97 to i8
  %incdec.ptr1068 = getelementptr i8, ptr %put.0, i32 1
  store i8 %conv1067, ptr %put.0, align 1
  %dec1069 = add i32 %left.0, -1
  store i32 18, ptr %0, align 4
  br label %sw.epilog1135

sw.bb1071:                                        ; preds = %for.cond
  %98 = load i32, ptr %wrap1072, align 4
  %tobool1073.not = icmp eq i32 %98, 0
  br i1 %tobool1073.not, label %if.end1129, label %while.cond1076.preheader

while.cond1076.preheader:                         ; preds = %sw.bb1071
  %cmp10772207 = icmp ult i32 %bits.0, 32
  br i1 %cmp10772207, label %do.body1080, label %do.end1095

do.body1080:                                      ; preds = %while.cond1076.preheader
  %cmp1081 = icmp eq i32 %have.0, 0
  br i1 %cmp1081, label %do.body1136, label %if.end1084

if.end1084:                                       ; preds = %do.body1080
  %dec1085 = add i32 %have.0, -1
  %incdec.ptr1086 = getelementptr i8, ptr %next.0, i32 1
  %99 = load i8, ptr %next.0, align 1
  %conv1087 = zext i8 %99 to i32
  %shl1088 = shl i32 %conv1087, %bits.0
  %add1089 = add i32 %shl1088, %hold.0
  %add1090 = add nuw nsw i32 %bits.0, 8
  %cmp1077 = icmp ult i32 %bits.0, 24
  br i1 %cmp1077, label %do.body1080.1, label %do.end1095

do.body1080.1:                                    ; preds = %if.end1084
  %cmp1081.1 = icmp eq i32 %dec1085, 0
  br i1 %cmp1081.1, label %do.body1136, label %if.end1084.1

if.end1084.1:                                     ; preds = %do.body1080.1
  %dec1085.1 = add i32 %have.0, -2
  %incdec.ptr1086.1 = getelementptr i8, ptr %next.0, i32 2
  %100 = load i8, ptr %incdec.ptr1086, align 1
  %conv1087.1 = zext i8 %100 to i32
  %shl1088.1 = shl i32 %conv1087.1, %add1090
  %add1089.1 = add i32 %shl1088.1, %add1089
  %add1090.1 = add nuw nsw i32 %bits.0, 16
  %cmp1077.1 = icmp ult i32 %bits.0, 16
  br i1 %cmp1077.1, label %do.body1080.2, label %do.end1095

do.body1080.2:                                    ; preds = %if.end1084.1
  %cmp1081.2 = icmp eq i32 %dec1085.1, 0
  br i1 %cmp1081.2, label %do.body1136, label %if.end1084.2

if.end1084.2:                                     ; preds = %do.body1080.2
  %dec1085.2 = add i32 %have.0, -3
  %incdec.ptr1086.2 = getelementptr i8, ptr %next.0, i32 3
  %101 = load i8, ptr %incdec.ptr1086.1, align 1
  %conv1087.2 = zext i8 %101 to i32
  %shl1088.2 = shl i32 %conv1087.2, %add1090.1
  %add1089.2 = add i32 %shl1088.2, %add1089.1
  %add1090.2 = add nuw nsw i32 %bits.0, 24
  %cmp1077.2 = icmp ult i32 %bits.0, 8
  br i1 %cmp1077.2, label %do.body1080.3, label %do.end1095

do.body1080.3:                                    ; preds = %if.end1084.2
  %cmp1081.3 = icmp eq i32 %dec1085.2, 0
  br i1 %cmp1081.3, label %do.body1136, label %if.end1084.3

if.end1084.3:                                     ; preds = %do.body1080.3
  %dec1085.3 = add i32 %have.0, -4
  %incdec.ptr1086.3 = getelementptr i8, ptr %next.0, i32 4
  %102 = load i8, ptr %incdec.ptr1086.2, align 1
  %conv1087.3 = zext i8 %102 to i32
  %shl1088.3 = shl i32 %conv1087.3, %add1090.2
  %add1089.3 = add i32 %shl1088.3, %add1089.2
  %add1090.3 = add nuw nsw i32 %bits.0, 32
  br label %do.end1095

do.end1095:                                       ; preds = %if.end1084.3, %if.end1084.2, %if.end1084.1, %if.end1084, %while.cond1076.preheader
  %next.38.lcssa = phi ptr [ %next.0, %while.cond1076.preheader ], [ %incdec.ptr1086, %if.end1084 ], [ %incdec.ptr1086.1, %if.end1084.1 ], [ %incdec.ptr1086.2, %if.end1084.2 ], [ %incdec.ptr1086.3, %if.end1084.3 ]
  %have.38.lcssa = phi i32 [ %have.0, %while.cond1076.preheader ], [ %dec1085, %if.end1084 ], [ %dec1085.1, %if.end1084.1 ], [ %dec1085.2, %if.end1084.2 ], [ %dec1085.3, %if.end1084.3 ]
  %hold.38.lcssa = phi i32 [ %hold.0, %while.cond1076.preheader ], [ %add1089, %if.end1084 ], [ %add1089.1, %if.end1084.1 ], [ %add1089.2, %if.end1084.2 ], [ %add1089.3, %if.end1084.3 ]
  %bits.38.lcssa = phi i32 [ %bits.0, %while.cond1076.preheader ], [ %add1090, %if.end1084 ], [ %add1090.1, %if.end1084.1 ], [ %add1090.2, %if.end1084.2 ], [ %add1090.3, %if.end1084.3 ]
  %sub1096 = sub i32 %out.0, %left.0
  %103 = load i32, ptr %total_out, align 4
  %add1097 = add i32 %103, %sub1096
  store i32 %add1097, ptr %total_out, align 4
  %104 = load i32, ptr %total, align 4
  %add1098 = add i32 %104, %sub1096
  store i32 %add1098, ptr %total, align 4
  %tobool1099.not = icmp eq i32 %out.0, %left.0
  br i1 %tobool1099.not, label %if.end1107, label %if.then1100

if.then1100:                                      ; preds = %do.end1095
  %105 = load i32, ptr %check1101, align 4
  %idx.neg1102 = sub i32 0, %sub1096
  %add.ptr1103 = getelementptr i8, ptr %put.0, i32 %idx.neg1102
  %call1104 = tail call fastcc i32 @zlib_adler32(i32 noundef %105, ptr noundef %add.ptr1103, i32 noundef %sub1096) #12
  store i32 %call1104, ptr %check1101, align 4
  store i32 %call1104, ptr %adler1106, align 4
  br label %if.end1107

if.end1107:                                       ; preds = %if.then1100, %do.end1095
  %add1118 = tail call i32 @llvm.bswap.i32(i32 %hold.38.lcssa)
  %106 = load i32, ptr %check1101, align 4
  %cmp1120.not = icmp eq i32 %add1118, %106
  br i1 %cmp1120.not, label %if.end1129, label %if.then1122

if.then1122:                                      ; preds = %if.end1107
  store ptr @.str.13, ptr %msg1123, align 4
  store i32 27, ptr %0, align 4
  br label %sw.epilog1135

if.end1129:                                       ; preds = %if.end1107, %sw.bb1071
  %next.39 = phi ptr [ %next.0, %sw.bb1071 ], [ %next.38.lcssa, %if.end1107 ]
  %have.39 = phi i32 [ %have.0, %sw.bb1071 ], [ %have.38.lcssa, %if.end1107 ]
  %hold.39 = phi i32 [ %hold.0, %sw.bb1071 ], [ 0, %if.end1107 ]
  %bits.39 = phi i32 [ %bits.0, %sw.bb1071 ], [ 0, %if.end1107 ]
  %out.1 = phi i32 [ %out.0, %sw.bb1071 ], [ %left.0, %if.end1107 ]
  store i32 26, ptr %0, align 4
  br label %do.body1136

sw.epilog1135:                                    ; preds = %if.then1122, %if.end1065, %if.then1058, %do.end1054, %if.then1000, %if.then944, %if.then798, %if.then791, %if.then784, %do.body663, %if.then651, %if.then635, %while.end614, %if.then599, %if.then487, %if.then364, %if.then299, %if.end247, %if.end240, %if.then216, %do.body178, %do.body131, %if.end54, %if.then51, %if.then39, %if.then33, %if.then17
  %next.41 = phi ptr [ %next.38.lcssa, %if.then1122 ], [ %next.0, %if.end1065 ], [ %next.37, %if.then1058 ], [ %next.37, %do.end1054 ], [ %next.36, %if.then1000 ], [ %next.33, %if.then944 ], [ %67, %do.body663 ], [ %next.26, %if.then784 ], [ %next.26, %if.then791 ], [ %next.26, %if.then798 ], [ %next.21, %while.end614 ], [ %next.14.lcssa2659, %if.then635 ], [ %next.14.lcssa2659, %if.then651 ], [ %next.11.lcssa, %if.then364 ], [ %next.9.lcssa, %if.then299 ], [ %add.ptr, %if.end240 ], [ %next.8, %if.end247 ], [ %next.7.lcssa, %if.then216 ], [ %next.5, %do.body131 ], [ %next.6.lcssa, %do.body178 ], [ %next.0, %if.then17 ], [ %next.1.lcssa, %if.then33 ], [ %next.1.lcssa, %if.then39 ], [ %next.1.lcssa, %if.then51 ], [ %next.1.lcssa, %if.end54 ], [ %next.20, %if.then599 ], [ %next.17.lcssa, %if.then487 ]
  %put.2 = phi ptr [ %put.0, %if.then1122 ], [ %incdec.ptr1068, %if.end1065 ], [ %incdec.ptr1050, %if.then1058 ], [ %incdec.ptr1050, %do.end1054 ], [ %put.0, %if.then1000 ], [ %put.0, %if.then944 ], [ %65, %do.body663 ], [ %put.0, %if.then784 ], [ %put.0, %if.then791 ], [ %put.0, %if.then798 ], [ %put.0, %while.end614 ], [ %put.0, %if.then635 ], [ %put.0, %if.then651 ], [ %put.0, %if.then364 ], [ %put.0, %if.then299 ], [ %add.ptr244, %if.end240 ], [ %put.0, %if.end247 ], [ %put.0, %if.then216 ], [ %put.0, %do.body131 ], [ %put.0, %do.body178 ], [ %put.0, %if.then17 ], [ %put.0, %if.then33 ], [ %put.0, %if.then39 ], [ %put.0, %if.then51 ], [ %put.0, %if.end54 ], [ %put.0, %if.then599 ], [ %put.0, %if.then487 ]
  %have.41 = phi i32 [ %have.38.lcssa, %if.then1122 ], [ %have.0, %if.end1065 ], [ %have.37, %if.then1058 ], [ %have.37, %do.end1054 ], [ %have.36, %if.then1000 ], [ %have.33, %if.then944 ], [ %68, %do.body663 ], [ %have.26, %if.then784 ], [ %have.26, %if.then791 ], [ %have.26, %if.then798 ], [ %have.21, %while.end614 ], [ %have.14.lcssa2660, %if.then635 ], [ %have.14.lcssa2660, %if.then651 ], [ %have.11.lcssa, %if.then364 ], [ %have.9.lcssa, %if.then299 ], [ %sub242, %if.end240 ], [ %have.8, %if.end247 ], [ %have.7.lcssa, %if.then216 ], [ %have.5, %do.body131 ], [ %have.6.lcssa, %do.body178 ], [ %have.0, %if.then17 ], [ %have.1.lcssa, %if.then33 ], [ %have.1.lcssa, %if.then39 ], [ %have.1.lcssa, %if.then51 ], [ %have.1.lcssa, %if.end54 ], [ %have.20, %if.then599 ], [ %have.17.lcssa, %if.then487 ]
  %left.1 = phi i32 [ %left.0, %if.then1122 ], [ %dec1069, %if.end1065 ], [ %sub1045, %if.then1058 ], [ %sub1045, %do.end1054 ], [ %left.0, %if.then1000 ], [ %left.0, %if.then944 ], [ %66, %do.body663 ], [ %left.0, %if.then784 ], [ %left.0, %if.then791 ], [ %left.0, %if.then798 ], [ %left.0, %while.end614 ], [ %left.0, %if.then635 ], [ %left.0, %if.then651 ], [ %left.0, %if.then364 ], [ %left.0, %if.then299 ], [ %sub243, %if.end240 ], [ %left.0, %if.end247 ], [ %left.0, %if.then216 ], [ %left.0, %do.body131 ], [ %left.0, %do.body178 ], [ %left.0, %if.then17 ], [ %left.0, %if.then33 ], [ %left.0, %if.then39 ], [ %left.0, %if.then51 ], [ %left.0, %if.end54 ], [ %left.0, %if.then599 ], [ %left.0, %if.then487 ]
  %hold.41 = phi i32 [ %hold.38.lcssa, %if.then1122 ], [ %hold.0, %if.end1065 ], [ %hold.37, %if.then1058 ], [ %hold.37, %do.end1054 ], [ %hold.36, %if.then1000 ], [ %shr934, %if.then944 ], [ %69, %do.body663 ], [ %shr771, %if.then784 ], [ %shr771, %if.then791 ], [ %shr771, %if.then798 ], [ %hold.21, %while.end614 ], [ %hold.14.lcssa2661, %if.then635 ], [ %hold.14.lcssa2661, %if.then651 ], [ %hold.11.lcssa, %if.then364 ], [ %shr288, %if.then299 ], [ %hold.8, %if.end240 ], [ %hold.8, %if.end247 ], [ %hold.7.lcssa, %if.then216 ], [ %shr133, %do.body131 ], [ %shr179, %do.body178 ], [ %hold.0, %if.then17 ], [ %hold.1.lcssa, %if.then33 ], [ %hold.1.lcssa, %if.then39 ], [ %shr44, %if.then51 ], [ 0, %if.end54 ], [ %hold.20, %if.then599 ], [ %shr478, %if.then487 ]
  %bits.41 = phi i32 [ %bits.38.lcssa, %if.then1122 ], [ %bits.0, %if.end1065 ], [ %bits.37, %if.then1058 ], [ %bits.37, %do.end1054 ], [ %bits.36, %if.then1000 ], [ %sub937, %if.then944 ], [ %70, %do.body663 ], [ %sub774, %if.then784 ], [ %sub774, %if.then791 ], [ %sub774, %if.then798 ], [ %bits.21, %while.end614 ], [ %bits.14.lcssa2662, %if.then635 ], [ %bits.14.lcssa2662, %if.then651 ], [ %bits.11.lcssa, %if.then364 ], [ %sub289, %if.then299 ], [ %bits.8, %if.end240 ], [ %bits.8, %if.end247 ], [ %bits.7.lcssa, %if.then216 ], [ %sub135, %do.body131 ], [ %sub180, %do.body178 ], [ %bits.0, %if.then17 ], [ %bits.1.lcssa, %if.then33 ], [ %bits.1.lcssa, %if.then39 ], [ %sub, %if.then51 ], [ 0, %if.end54 ], [ %bits.20, %if.then599 ], [ %sub481, %if.then487 ]
  %out.3 = phi i32 [ %left.0, %if.then1122 ], [ %out.0, %if.end1065 ], [ %out.0, %if.then1058 ], [ %out.0, %do.end1054 ], [ %out.0, %if.then1000 ], [ %out.0, %if.then944 ], [ %out.0, %do.body663 ], [ %out.0, %if.then784 ], [ %out.0, %if.then791 ], [ %out.0, %if.then798 ], [ %out.0, %while.end614 ], [ %out.0, %if.then635 ], [ %out.0, %if.then651 ], [ %out.0, %if.then364 ], [ %out.0, %if.then299 ], [ %out.0, %if.end240 ], [ %out.0, %if.end247 ], [ %out.0, %if.then216 ], [ %out.0, %do.body131 ], [ %out.0, %do.body178 ], [ %out.0, %if.then17 ], [ %out.0, %if.then33 ], [ %out.0, %if.then39 ], [ %out.0, %if.then51 ], [ %out.0, %if.end54 ], [ %out.0, %if.then599 ], [ %out.0, %if.then487 ]
  %ret.7 = phi i32 [ %ret.0, %if.then1122 ], [ %ret.0, %if.end1065 ], [ %ret.6, %if.then1058 ], [ %ret.6, %do.end1054 ], [ %ret.5, %if.then1000 ], [ %ret.4, %if.then944 ], [ %ret.2, %do.body663 ], [ %ret.2, %if.then784 ], [ %ret.2, %if.then791 ], [ %ret.2, %if.then798 ], [ %ret.1, %while.end614 ], [ %call633, %if.then635 ], [ %call649, %if.then651 ], [ %call362, %if.then364 ], [ %ret.0, %if.then299 ], [ %ret.0, %if.end240 ], [ %ret.0, %if.end247 ], [ %ret.0, %if.then216 ], [ %ret.0, %do.body131 ], [ %ret.0, %do.body178 ], [ %ret.0, %if.then17 ], [ %ret.0, %if.then33 ], [ %ret.0, %if.then39 ], [ %ret.0, %if.then51 ], [ %ret.0, %if.end54 ], [ %ret.1, %if.then599 ], [ %ret.1, %if.then487 ]
  %.pre2629 = load i32, ptr %0, align 4
  br label %for.cond

do.body1136.loopexit2666:                         ; preds = %do.body392
  %107 = shl i32 %have.142302, 3
  %108 = add i32 %bits.142304, %107
  %uglygep.le = getelementptr i8, ptr %next.142301, i32 %have.142302
  br label %do.body1136

do.body1136.loopexit2670:                         ; preds = %do.body965
  %109 = shl i32 %have.34, 3
  %110 = add i32 %bits.34, %109
  %uglygep2628.le = getelementptr i8, ptr %next.34, i32 %have.34
  br label %do.body1136

do.body1136.loopexit2671:                         ; preds = %do.body907
  %111 = shl i32 %have.31.lcssa, 3
  %112 = add i32 %bits.31.lcssa, %111
  %uglygep2627.le = getelementptr i8, ptr %next.31.lcssa, i32 %have.31.lcssa
  br label %do.body1136

do.body1136.loopexit2672:                         ; preds = %do.body861
  %113 = shl i32 %have.30, 3
  %114 = add i32 %bits.30, %113
  %uglygep2626.le = getelementptr i8, ptr %next.30, i32 %have.30
  br label %do.body1136

do.body1136.loopexit2673:                         ; preds = %do.body816
  %115 = shl i32 %have.27, 3
  %116 = add i32 %bits.27, %115
  %uglygep2625.le = getelementptr i8, ptr %next.27, i32 %have.27
  br label %do.body1136

do.body1136.loopexit2674:                         ; preds = %do.body744
  %117 = shl i32 %have.24.lcssa, 3
  %118 = add i32 %bits.24.lcssa, %117
  %uglygep2624.le = getelementptr i8, ptr %next.24.lcssa, i32 %have.24.lcssa
  br label %do.body1136

do.body1136.loopexit2675:                         ; preds = %do.body695
  %119 = shl i32 %have.23, 3
  %120 = add i32 %bits.23, %119
  %uglygep2623.le = getelementptr i8, ptr %next.23, i32 %have.23
  br label %do.body1136

do.body1136.loopexit3036:                         ; preds = %sw.bb1061, %sw.bb1005, %if.then228, %sw.bb119, %for.cond
  %left.02598.ph = phi i32 [ 0, %sw.bb1061 ], [ 0, %sw.bb1005 ], [ %left.0, %if.then228 ], [ %left.0, %sw.bb119 ], [ %left.0, %for.cond ]
  %next.42.ph = phi ptr [ %next.0, %sw.bb1061 ], [ %next.37, %sw.bb1005 ], [ %next.8, %if.then228 ], [ %next.4, %sw.bb119 ], [ %next.0, %for.cond ]
  %have.42.ph = phi i32 [ %have.0, %sw.bb1061 ], [ %have.37, %sw.bb1005 ], [ %have.8, %if.then228 ], [ %have.4, %sw.bb119 ], [ %have.0, %for.cond ]
  %hold.42.ph = phi i32 [ %hold.0, %sw.bb1061 ], [ %hold.37, %sw.bb1005 ], [ %hold.8, %if.then228 ], [ %hold.4, %sw.bb119 ], [ %hold.0, %for.cond ]
  %bits.42.ph = phi i32 [ %bits.0, %sw.bb1061 ], [ %bits.37, %sw.bb1005 ], [ %bits.8, %if.then228 ], [ %bits.4, %sw.bb119 ], [ %bits.0, %for.cond ]
  %ret.8.ph = phi i32 [ %ret.0, %sw.bb1061 ], [ %ret.6, %sw.bb1005 ], [ %ret.0, %if.then228 ], [ %ret.0, %sw.bb119 ], [ 1, %for.cond ]
  br label %do.body1136

do.body1136:                                      ; preds = %do.body1136.loopexit3036, %do.body1136.loopexit2675, %do.body1136.loopexit2674, %do.body1136.loopexit2673, %do.body1136.loopexit2672, %do.body1136.loopexit2671, %do.body1136.loopexit2670, %do.body1136.loopexit2666, %if.end1129, %do.body1080.3, %do.body1080.2, %do.body1080.1, %do.body1080, %do.body558, %do.body517, %do.body459, %do.body416, %do.body317, %do.body255.1, %do.body255, %do.body196.3, %do.body196.2, %do.body196.1, %do.body196, %do.body145, %do.body68.3, %do.body68.2, %do.body68.1, %do.body68, %do.body22.1, %do.body22, %for.cond
  %left.02598 = phi i32 [ %left.0, %if.end1129 ], [ %left.0, %do.body1136.loopexit2666 ], [ %left.0, %do.body1136.loopexit2670 ], [ %left.0, %do.body1136.loopexit2671 ], [ %left.0, %do.body1136.loopexit2672 ], [ %left.0, %do.body1136.loopexit2673 ], [ %left.0, %do.body1136.loopexit2674 ], [ %left.0, %do.body1136.loopexit2675 ], [ %left.02598.ph, %do.body1136.loopexit3036 ], [ %left.0, %for.cond ], [ %left.0, %do.body145 ], [ %left.0, %do.body416 ], [ %left.0, %do.body558 ], [ %left.0, %do.body459 ], [ %left.0, %do.body517 ], [ %left.0, %do.body22.1 ], [ %left.0, %do.body22 ], [ %left.0, %do.body68.3 ], [ %left.0, %do.body68.2 ], [ %left.0, %do.body68.1 ], [ %left.0, %do.body68 ], [ %left.0, %do.body196.3 ], [ %left.0, %do.body196.2 ], [ %left.0, %do.body196.1 ], [ %left.0, %do.body196 ], [ %left.0, %do.body317 ], [ %left.0, %do.body255.1 ], [ %left.0, %do.body255 ], [ %left.0, %do.body1080.3 ], [ %left.0, %do.body1080.2 ], [ %left.0, %do.body1080.1 ], [ %left.0, %do.body1080 ]
  %next.42 = phi ptr [ %next.39, %if.end1129 ], [ %uglygep.le, %do.body1136.loopexit2666 ], [ %uglygep2628.le, %do.body1136.loopexit2670 ], [ %uglygep2627.le, %do.body1136.loopexit2671 ], [ %uglygep2626.le, %do.body1136.loopexit2672 ], [ %uglygep2625.le, %do.body1136.loopexit2673 ], [ %uglygep2624.le, %do.body1136.loopexit2674 ], [ %uglygep2623.le, %do.body1136.loopexit2675 ], [ %next.42.ph, %do.body1136.loopexit3036 ], [ %next.5, %do.body145 ], [ %next.0, %for.cond ], [ %next.162291, %do.body416 ], [ %next.192281, %do.body558 ], [ %next.172272, %do.body459 ], [ %next.182263, %do.body517 ], [ %next.0, %do.body22 ], [ %incdec.ptr, %do.body22.1 ], [ %next.0, %do.body68 ], [ %incdec.ptr74, %do.body68.1 ], [ %incdec.ptr74.1, %do.body68.2 ], [ %incdec.ptr74.2, %do.body68.3 ], [ %next.0, %do.body196 ], [ %incdec.ptr202, %do.body196.1 ], [ %incdec.ptr202.1, %do.body196.2 ], [ %incdec.ptr202.2, %do.body196.3 ], [ %next.112234, %do.body317 ], [ %next.0, %do.body255 ], [ %incdec.ptr261, %do.body255.1 ], [ %next.0, %do.body1080 ], [ %incdec.ptr1086, %do.body1080.1 ], [ %incdec.ptr1086.1, %do.body1080.2 ], [ %incdec.ptr1086.2, %do.body1080.3 ]
  %have.42 = phi i32 [ %have.39, %if.end1129 ], [ 0, %do.body1136.loopexit2666 ], [ 0, %do.body1136.loopexit2670 ], [ 0, %do.body1136.loopexit2671 ], [ 0, %do.body1136.loopexit2672 ], [ 0, %do.body1136.loopexit2673 ], [ 0, %do.body1136.loopexit2674 ], [ 0, %do.body1136.loopexit2675 ], [ %have.42.ph, %do.body1136.loopexit3036 ], [ 0, %do.body145 ], [ %have.0, %for.cond ], [ 0, %do.body416 ], [ 0, %do.body558 ], [ 0, %do.body459 ], [ 0, %do.body517 ], [ 0, %do.body22.1 ], [ 0, %do.body22 ], [ 0, %do.body68.3 ], [ 0, %do.body68.2 ], [ 0, %do.body68.1 ], [ 0, %do.body68 ], [ 0, %do.body196.3 ], [ 0, %do.body196.2 ], [ 0, %do.body196.1 ], [ 0, %do.body196 ], [ 0, %do.body317 ], [ 0, %do.body255.1 ], [ 0, %do.body255 ], [ 0, %do.body1080.3 ], [ 0, %do.body1080.2 ], [ 0, %do.body1080.1 ], [ 0, %do.body1080 ]
  %hold.42 = phi i32 [ %hold.39, %if.end1129 ], [ %hold.152254, %do.body1136.loopexit2666 ], [ %hold.352402, %do.body1136.loopexit2670 ], [ %hold.322391, %do.body1136.loopexit2671 ], [ %hold.312369, %do.body1136.loopexit2672 ], [ %hold.282353, %do.body1136.loopexit2673 ], [ %hold.252342, %do.body1136.loopexit2674 ], [ %hold.242320, %do.body1136.loopexit2675 ], [ %hold.42.ph, %do.body1136.loopexit3036 ], [ %hold.5, %do.body145 ], [ %hold.0, %for.cond ], [ %hold.162293, %do.body416 ], [ %hold.192283, %do.body558 ], [ %hold.172274, %do.body459 ], [ %hold.182265, %do.body517 ], [ %hold.0, %do.body22 ], [ %add, %do.body22.1 ], [ %hold.0, %do.body68 ], [ %add77, %do.body68.1 ], [ %add77.1, %do.body68.2 ], [ %add77.2, %do.body68.3 ], [ %shr186, %do.body196 ], [ %add205, %do.body196.1 ], [ %add205.1, %do.body196.2 ], [ %add205.2, %do.body196.3 ], [ %hold.112236, %do.body317 ], [ %hold.0, %do.body255 ], [ %add264, %do.body255.1 ], [ %hold.0, %do.body1080 ], [ %add1089, %do.body1080.1 ], [ %add1089.1, %do.body1080.2 ], [ %add1089.2, %do.body1080.3 ]
  %bits.42 = phi i32 [ %bits.39, %if.end1129 ], [ %108, %do.body1136.loopexit2666 ], [ %110, %do.body1136.loopexit2670 ], [ %112, %do.body1136.loopexit2671 ], [ %114, %do.body1136.loopexit2672 ], [ %116, %do.body1136.loopexit2673 ], [ %118, %do.body1136.loopexit2674 ], [ %120, %do.body1136.loopexit2675 ], [ %bits.42.ph, %do.body1136.loopexit3036 ], [ %bits.5, %do.body145 ], [ %bits.0, %for.cond ], [ %bits.162294, %do.body416 ], [ %bits.192284, %do.body558 ], [ %bits.172275, %do.body459 ], [ %bits.182266, %do.body517 ], [ %bits.0, %do.body22 ], [ %add26, %do.body22.1 ], [ %bits.0, %do.body68 ], [ %add78, %do.body68.1 ], [ %add78.1, %do.body68.2 ], [ %add78.2, %do.body68.3 ], [ %sub188, %do.body196 ], [ %add206, %do.body196.1 ], [ %add206.1, %do.body196.2 ], [ %add206.2, %do.body196.3 ], [ %bits.112237, %do.body317 ], [ %bits.0, %do.body255 ], [ %add265, %do.body255.1 ], [ %bits.0, %do.body1080 ], [ %add1090, %do.body1080.1 ], [ %add1090.1, %do.body1080.2 ], [ %add1090.2, %do.body1080.3 ]
  %out.4 = phi i32 [ %out.1, %if.end1129 ], [ %out.0, %do.body1136.loopexit2666 ], [ %out.0, %do.body1136.loopexit2670 ], [ %out.0, %do.body1136.loopexit2671 ], [ %out.0, %do.body1136.loopexit2672 ], [ %out.0, %do.body1136.loopexit2673 ], [ %out.0, %do.body1136.loopexit2674 ], [ %out.0, %do.body1136.loopexit2675 ], [ %out.0, %do.body1136.loopexit3036 ], [ %out.0, %for.cond ], [ %out.0, %do.body145 ], [ %out.0, %do.body416 ], [ %out.0, %do.body558 ], [ %out.0, %do.body459 ], [ %out.0, %do.body517 ], [ %out.0, %do.body22.1 ], [ %out.0, %do.body22 ], [ %out.0, %do.body68.3 ], [ %out.0, %do.body68.2 ], [ %out.0, %do.body68.1 ], [ %out.0, %do.body68 ], [ %out.0, %do.body196.3 ], [ %out.0, %do.body196.2 ], [ %out.0, %do.body196.1 ], [ %out.0, %do.body196 ], [ %out.0, %do.body317 ], [ %out.0, %do.body255.1 ], [ %out.0, %do.body255 ], [ %out.0, %do.body1080.3 ], [ %out.0, %do.body1080.2 ], [ %out.0, %do.body1080.1 ], [ %out.0, %do.body1080 ]
  %ret.8 = phi i32 [ 1, %if.end1129 ], [ %ret.1, %do.body1136.loopexit2666 ], [ %ret.5, %do.body1136.loopexit2670 ], [ %ret.4, %do.body1136.loopexit2671 ], [ %ret.4, %do.body1136.loopexit2672 ], [ %ret.3, %do.body1136.loopexit2673 ], [ %ret.2, %do.body1136.loopexit2674 ], [ %ret.2, %do.body1136.loopexit2675 ], [ %ret.8.ph, %do.body1136.loopexit3036 ], [ %ret.0, %do.body145 ], [ -3, %for.cond ], [ %ret.1, %do.body416 ], [ %ret.1, %do.body558 ], [ %ret.1, %do.body459 ], [ %ret.1, %do.body517 ], [ %ret.0, %do.body22.1 ], [ %ret.0, %do.body22 ], [ %ret.0, %do.body68.3 ], [ %ret.0, %do.body68.2 ], [ %ret.0, %do.body68.1 ], [ %ret.0, %do.body68 ], [ %ret.0, %do.body196.3 ], [ %ret.0, %do.body196.2 ], [ %ret.0, %do.body196.1 ], [ %ret.0, %do.body196 ], [ %ret.0, %do.body317 ], [ %ret.0, %do.body255.1 ], [ %ret.0, %do.body255 ], [ %ret.0, %do.body1080.3 ], [ %ret.0, %do.body1080.2 ], [ %ret.0, %do.body1080.1 ], [ %ret.0, %do.body1080 ]
  store ptr %put.0, ptr %next_out, align 4
  store i32 %left.02598, ptr %avail_out, align 4
  store ptr %next.42, ptr %strm, align 4
  store i32 %have.42, ptr %avail_in12, align 4
  store i32 %hold.42, ptr %hold13, align 4
  store i32 %bits.42, ptr %bits14, align 4
  %121 = load i32, ptr %wsize, align 4
  %tobool1146.not = icmp eq i32 %121, 0
  br i1 %tobool1146.not, label %lor.lhs.false1147, label %if.then1155

lor.lhs.false1147:                                ; preds = %do.body1136
  %122 = load i32, ptr %0, align 4
  %cmp1149 = icmp ult i32 %122, 24
  br i1 %cmp1149, label %land.lhs.true1151, label %if.end1156

land.lhs.true1151:                                ; preds = %lor.lhs.false1147
  %123 = load i32, ptr %avail_out, align 4
  %cmp1153.not = icmp eq i32 %out.4, %123
  br i1 %cmp1153.not, label %if.end1156, label %if.then1155

if.then1155:                                      ; preds = %land.lhs.true1151, %do.body1136
  tail call fastcc void @zlib_updatewindow(ptr noundef nonnull %strm, i32 noundef %out.4) #12
  br label %if.end1156

if.end1156:                                       ; preds = %if.then1155, %land.lhs.true1151, %lor.lhs.false1147
  %124 = load i32, ptr %avail_in12, align 4
  %sub1158 = sub i32 %8, %124
  %125 = load i32, ptr %avail_out, align 4
  %sub1160 = sub i32 %out.4, %125
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 2
  %126 = load i32, ptr %total_in, align 4
  %add1161 = add i32 %sub1158, %126
  store i32 %add1161, ptr %total_in, align 4
  %127 = load i32, ptr %total_out, align 4
  %add1163 = add i32 %127, %sub1160
  store i32 %add1163, ptr %total_out, align 4
  %128 = load i32, ptr %total, align 4
  %add1165 = add i32 %128, %sub1160
  store i32 %add1165, ptr %total, align 4
  %129 = load i32, ptr %wrap1072, align 4
  %tobool1167 = icmp ne i32 %129, 0
  %tobool1169 = icmp ne i32 %out.4, %125
  %or.cond1232 = select i1 %tobool1167, i1 %tobool1169, i1 false
  br i1 %or.cond1232, label %if.then1170, label %if.end1178

if.then1170:                                      ; preds = %if.end1156
  %130 = load i32, ptr %check1101, align 4
  %131 = load ptr, ptr %next_out, align 4
  %idx.neg1173 = sub i32 0, %sub1160
  %add.ptr1174 = getelementptr i8, ptr %131, i32 %idx.neg1173
  %call1175 = tail call fastcc i32 @zlib_adler32(i32 noundef %130, ptr noundef %add.ptr1174, i32 noundef %sub1160) #12
  store i32 %call1175, ptr %check1101, align 4
  store i32 %call1175, ptr %adler1106, align 4
  br label %if.end1178

if.end1178:                                       ; preds = %if.then1170, %if.end1156
  %132 = load i32, ptr %bits14, align 4
  %133 = load i32, ptr %last128, align 4
  %tobool1181.not = icmp eq i32 %133, 0
  %cond1182 = select i1 %tobool1181.not, i32 0, i32 64
  %add1183 = add i32 %cond1182, %132
  %134 = load i32, ptr %0, align 4
  %cmp1185 = icmp eq i32 %134, 11
  %cond1187 = select i1 %cmp1185, i32 128, i32 0
  %add1188 = add i32 %add1183, %cond1187
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 9
  store i32 %add1188, ptr %data_type, align 4
  %cmp1189 = icmp eq i32 %flush, 2
  %cmp1192 = icmp eq i32 %ret.8, 0
  %or.cond1233 = select i1 %cmp1189, i1 %cmp1192, i1 false
  br i1 %or.cond1233, label %land.lhs.true1194, label %if.end1204

land.lhs.true1194:                                ; preds = %if.end1178
  %135 = load i32, ptr %avail_out, align 4
  %cmp1196.not = icmp eq i32 %135, 0
  br i1 %cmp1196.not, label %if.end1204, label %land.lhs.true1198

land.lhs.true1198:                                ; preds = %land.lhs.true1194
  %136 = load i32, ptr %avail_in12, align 4
  %cmp1200 = icmp eq i32 %136, 0
  br i1 %cmp1200, label %lor.lhs.false.i, label %if.end1204

lor.lhs.false.i:                                  ; preds = %land.lhs.true1198
  %137 = load ptr, ptr %state1, align 4
  %cmp2.i = icmp eq ptr %137, null
  br i1 %cmp2.i, label %cleanup, label %if.end.i

if.end.i:                                         ; preds = %lor.lhs.false.i
  %138 = load i32, ptr %137, align 4
  %cmp4.i = icmp eq i32 %138, 13
  br i1 %cmp4.i, label %land.lhs.true.i, label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %bits.i = getelementptr inbounds %struct.inflate_state, ptr %137, i32 0, i32 14
  %139 = load i32, ptr %bits.i, align 4
  %cmp5.i = icmp eq i32 %139, 0
  br i1 %cmp5.i, label %if.then6.i, label %cleanup

if.then6.i:                                       ; preds = %land.lhs.true.i
  store i32 11, ptr %137, align 4
  br label %cleanup

if.end1204:                                       ; preds = %land.lhs.true1198, %land.lhs.true1194, %if.end1178
  %cmp1205 = icmp eq i32 %8, %124
  %cmp1208 = icmp eq i32 %out.4, %125
  %or.cond1234 = select i1 %cmp1205, i1 %cmp1208, i1 false
  %cmp1211 = icmp eq i32 %flush, 5
  %or.cond1235 = or i1 %cmp1211, %or.cond1234
  %or.cond1236 = select i1 %or.cond1235, i1 %cmp1192, i1 false
  %spec.store.select = select i1 %or.cond1236, i32 -5, i32 %ret.8
  br label %cleanup

cleanup.loopexit:                                 ; preds = %for.cond
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.end1204, %if.then6.i, %land.lhs.true.i, %if.end.i, %lor.lhs.false.i, %do.body105, %for.cond, %land.lhs.true, %lor.lhs.false, %entry
  %retval.0 = phi i32 [ %spec.store.select, %if.end1204 ], [ 2, %do.body105 ], [ -2, %land.lhs.true ], [ -2, %lor.lhs.false ], [ -2, %entry ], [ 0, %if.then6.i ], [ -2, %lor.lhs.false.i ], [ -3, %land.lhs.true.i ], [ -3, %if.end.i ], [ -4, %cleanup.loopexit ], [ -2, %for.cond ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync)
define internal fastcc i32 @zlib_adler32(i32 noundef %adler, ptr noundef readonly %buf, i32 noundef %len) unnamed_addr #6 align 64 {
entry:
  %cmp = icmp eq ptr %buf, null
  br i1 %cmp, label %cleanup, label %while.cond.preheader

while.cond.preheader:                             ; preds = %entry
  %shr = lshr i32 %adler, 16
  %and = and i32 %adler, 65535
  %cmp2.not167 = icmp eq i32 %len, 0
  br i1 %cmp2.not167, label %while.end77, label %while.body

while.body:                                       ; preds = %if.end75, %while.cond.preheader
  %s2.0171 = phi i32 [ %rem76, %if.end75 ], [ %shr, %while.cond.preheader ]
  %s1.0170 = phi i32 [ %rem, %if.end75 ], [ %and, %while.cond.preheader ]
  %len.addr.0169 = phi i32 [ %sub, %if.end75 ], [ %len, %while.cond.preheader ]
  %buf.addr.0168 = phi ptr [ %buf.addr.3, %if.end75 ], [ %buf, %while.cond.preheader ]
  %0 = tail call i32 @llvm.umin.i32(i32 %len.addr.0169, i32 5552)
  %sub = sub i32 %len.addr.0169, %0
  %cmp5159 = icmp ugt i32 %0, 15
  br i1 %cmp5159, label %while.body6, label %do.body.preheader

while.body6:                                      ; preds = %while.body6, %while.body
  %k.0163 = phi i32 [ %sub68, %while.body6 ], [ %0, %while.body ]
  %s2.1162 = phi i32 [ %add67, %while.body6 ], [ %s2.0171, %while.body ]
  %s1.1161 = phi i32 [ %add66, %while.body6 ], [ %s1.0170, %while.body ]
  %buf.addr.1160 = phi ptr [ %add.ptr, %while.body6 ], [ %buf.addr.0168, %while.body ]
  %1 = load i8, ptr %buf.addr.1160, align 1
  %conv = zext i8 %1 to i32
  %add = add i32 %s1.1161, %conv
  %add7 = add i32 %add, %s2.1162
  %arrayidx8 = getelementptr i8, ptr %buf.addr.1160, i32 1
  %2 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %2 to i32
  %add10 = add i32 %add, %conv9
  %add11 = add i32 %add7, %add10
  %arrayidx12 = getelementptr i8, ptr %buf.addr.1160, i32 2
  %3 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %3 to i32
  %add14 = add i32 %add10, %conv13
  %add15 = add i32 %add11, %add14
  %arrayidx16 = getelementptr i8, ptr %buf.addr.1160, i32 3
  %4 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %4 to i32
  %add18 = add i32 %add14, %conv17
  %add19 = add i32 %add15, %add18
  %arrayidx20 = getelementptr i8, ptr %buf.addr.1160, i32 4
  %5 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %5 to i32
  %add22 = add i32 %add18, %conv21
  %add23 = add i32 %add19, %add22
  %arrayidx24 = getelementptr i8, ptr %buf.addr.1160, i32 5
  %6 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %6 to i32
  %add26 = add i32 %add22, %conv25
  %add27 = add i32 %add23, %add26
  %arrayidx28 = getelementptr i8, ptr %buf.addr.1160, i32 6
  %7 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %7 to i32
  %add30 = add i32 %add26, %conv29
  %add31 = add i32 %add27, %add30
  %arrayidx32 = getelementptr i8, ptr %buf.addr.1160, i32 7
  %8 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %8 to i32
  %add34 = add i32 %add30, %conv33
  %add35 = add i32 %add31, %add34
  %arrayidx36 = getelementptr i8, ptr %buf.addr.1160, i32 8
  %9 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %9 to i32
  %add38 = add i32 %add34, %conv37
  %add39 = add i32 %add35, %add38
  %arrayidx40 = getelementptr i8, ptr %buf.addr.1160, i32 9
  %10 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %10 to i32
  %add42 = add i32 %add38, %conv41
  %add43 = add i32 %add39, %add42
  %arrayidx44 = getelementptr i8, ptr %buf.addr.1160, i32 10
  %11 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %11 to i32
  %add46 = add i32 %add42, %conv45
  %add47 = add i32 %add43, %add46
  %arrayidx48 = getelementptr i8, ptr %buf.addr.1160, i32 11
  %12 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %12 to i32
  %add50 = add i32 %add46, %conv49
  %add51 = add i32 %add47, %add50
  %arrayidx52 = getelementptr i8, ptr %buf.addr.1160, i32 12
  %13 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %13 to i32
  %add54 = add i32 %add50, %conv53
  %add55 = add i32 %add51, %add54
  %arrayidx56 = getelementptr i8, ptr %buf.addr.1160, i32 13
  %14 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %14 to i32
  %add58 = add i32 %add54, %conv57
  %add59 = add i32 %add55, %add58
  %arrayidx60 = getelementptr i8, ptr %buf.addr.1160, i32 14
  %15 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %15 to i32
  %add62 = add i32 %add58, %conv61
  %add63 = add i32 %add59, %add62
  %arrayidx64 = getelementptr i8, ptr %buf.addr.1160, i32 15
  %16 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %16 to i32
  %add66 = add i32 %add62, %conv65
  %add67 = add i32 %add63, %add66
  %add.ptr = getelementptr i8, ptr %buf.addr.1160, i32 16
  %sub68 = add nsw i32 %k.0163, -16
  %cmp5 = icmp ugt i32 %sub68, 15
  br i1 %cmp5, label %while.body6, label %while.end

while.end:                                        ; preds = %while.body6
  %cmp69.not = icmp eq i32 %sub68, 0
  br i1 %cmp69.not, label %if.end75, label %do.body.preheader

do.body.preheader:                                ; preds = %while.end, %while.body
  %k.0.lcssa182 = phi i32 [ %sub68, %while.end ], [ %0, %while.body ]
  %s2.1.lcssa181 = phi i32 [ %add67, %while.end ], [ %s2.0171, %while.body ]
  %s1.1.lcssa180 = phi i32 [ %add66, %while.end ], [ %s1.0170, %while.body ]
  %buf.addr.1.lcssa179 = phi ptr [ %add.ptr, %while.end ], [ %buf.addr.0168, %while.body ]
  br label %do.body

do.body:                                          ; preds = %do.body, %do.body.preheader
  %buf.addr.2 = phi ptr [ %incdec.ptr, %do.body ], [ %buf.addr.1.lcssa179, %do.body.preheader ]
  %s1.2 = phi i32 [ %add73, %do.body ], [ %s1.1.lcssa180, %do.body.preheader ]
  %s2.2 = phi i32 [ %add74, %do.body ], [ %s2.1.lcssa181, %do.body.preheader ]
  %k.1 = phi i32 [ %dec, %do.body ], [ %k.0.lcssa182, %do.body.preheader ]
  %incdec.ptr = getelementptr i8, ptr %buf.addr.2, i32 1
  %17 = load i8, ptr %buf.addr.2, align 1
  %conv72 = zext i8 %17 to i32
  %add73 = add i32 %s1.2, %conv72
  %add74 = add i32 %add73, %s2.2
  %dec = add i32 %k.1, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end75.loopexit, label %do.body

if.end75.loopexit:                                ; preds = %do.body
  %uglygep = getelementptr i8, ptr %buf.addr.1.lcssa179, i32 %k.0.lcssa182
  br label %if.end75

if.end75:                                         ; preds = %if.end75.loopexit, %while.end
  %buf.addr.3 = phi ptr [ %add.ptr, %while.end ], [ %uglygep, %if.end75.loopexit ]
  %s1.3 = phi i32 [ %add66, %while.end ], [ %add73, %if.end75.loopexit ]
  %s2.3 = phi i32 [ %add67, %while.end ], [ %add74, %if.end75.loopexit ]
  %rem = urem i32 %s1.3, 65521
  %rem76 = urem i32 %s2.3, 65521
  %cmp2.not = icmp eq i32 %sub, 0
  br i1 %cmp2.not, label %while.end77, label %while.body

while.end77:                                      ; preds = %if.end75, %while.cond.preheader
  %s1.0.lcssa = phi i32 [ %and, %while.cond.preheader ], [ %rem, %if.end75 ]
  %s2.0.lcssa = phi i32 [ %shr, %while.cond.preheader ], [ %rem76, %if.end75 ]
  %shl = shl nuw i32 %s2.0.lcssa, 16
  %or = or i32 %shl, %s1.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %while.end77, %entry
  %retval.0 = phi i32 [ %or, %while.end77 ], [ 1, %entry ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare ptr @__memcpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define internal fastcc void @zlib_updatewindow(ptr nocapture noundef readonly %strm, i32 noundef %out) unnamed_addr #5 align 64 {
entry:
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 7
  %0 = load ptr, ptr %state1, align 4
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 4
  %1 = load i32, ptr %avail_out, align 4
  %sub = sub i32 %out, %1
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 9
  %2 = load i32, ptr %wsize, align 4
  %cmp.not = icmp ult i32 %sub, %2
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %window = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 12
  %3 = load ptr, ptr %window, align 4
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 3
  %4 = load ptr, ptr %next_out, align 4
  %idx.neg = sub i32 0, %2
  %add.ptr = getelementptr i8, ptr %4, i32 %idx.neg
  %call = tail call ptr @__memcpy(ptr noundef %3, ptr noundef %add.ptr, i32 noundef %2) #11
  %write = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 11
  store i32 0, ptr %write, align 4
  %5 = load i32, ptr %wsize, align 4
  %whave = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 10
  store i32 %5, ptr %whave, align 4
  br label %if.end43

if.else:                                          ; preds = %entry
  %write6 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 11
  %6 = load i32, ptr %write6, align 4
  %sub7 = sub i32 %2, %6
  %7 = tail call i32 @llvm.umin.i32(i32 %sub7, i32 %sub)
  %window10 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 12
  %8 = load ptr, ptr %window10, align 4
  %add.ptr12 = getelementptr i8, ptr %8, i32 %6
  %next_out13 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 3
  %9 = load ptr, ptr %next_out13, align 4
  %idx.neg14 = sub i32 0, %sub
  %add.ptr15 = getelementptr i8, ptr %9, i32 %idx.neg14
  %call16 = tail call ptr @__memcpy(ptr noundef %add.ptr12, ptr noundef %add.ptr15, i32 noundef %7) #11
  %tobool.not.not = icmp ugt i32 %sub, %sub7
  br i1 %tobool.not.not, label %if.then18, label %if.else27

if.then18:                                        ; preds = %if.else
  %sub17 = sub i32 %sub, %7
  %10 = load ptr, ptr %window10, align 4
  %11 = load ptr, ptr %next_out13, align 4
  %idx.neg21 = sub i32 0, %sub17
  %add.ptr22 = getelementptr i8, ptr %11, i32 %idx.neg21
  %call23 = tail call ptr @__memcpy(ptr noundef %10, ptr noundef %add.ptr22, i32 noundef %sub17) #11
  store i32 %sub17, ptr %write6, align 4
  %12 = load i32, ptr %wsize, align 4
  %whave26 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 10
  store i32 %12, ptr %whave26, align 4
  br label %if.end43

if.else27:                                        ; preds = %if.else
  %13 = load i32, ptr %write6, align 4
  %add = add i32 %13, %7
  %14 = load i32, ptr %wsize, align 4
  %cmp31 = icmp eq i32 %add, %14
  %spec.store.select = select i1 %cmp31, i32 0, i32 %add
  store i32 %spec.store.select, ptr %write6, align 4
  %whave35 = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 10
  %15 = load i32, ptr %whave35, align 4
  %cmp37 = icmp ult i32 %15, %14
  br i1 %cmp37, label %if.then38, label %if.end43

if.then38:                                        ; preds = %if.else27
  %add40 = add i32 %15, %7
  store i32 %add40, ptr %whave35, align 4
  br label %if.end43

if.end43:                                         ; preds = %if.then38, %if.else27, %if.then18, %if.then
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync)
define i32 @zlib_inflateEnd(ptr noundef readonly %strm) local_unnamed_addr #8 align 64 {
entry:
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %return, label %lor.lhs.false

lor.lhs.false:                                    ; preds = %entry
  %state = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 7
  %0 = load ptr, ptr %state, align 4
  %cmp1 = icmp eq ptr %0, null
  %spec.select = select i1 %cmp1, i32 -2, i32 0
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry
  %retval.0 = phi i32 [ -2, %entry ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define i32 @zlib_inflateIncomp(ptr nocapture noundef %z) local_unnamed_addr #5 align 64 {
entry:
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %z, i32 0, i32 7
  %0 = load ptr, ptr %state1, align 4
  %1 = load i32, ptr %0, align 4
  switch i32 %1, label %cleanup [
    i32 11, label %if.end
    i32 0, label %if.end
  ]

if.end:                                           ; preds = %entry, %entry
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %z, i32 0, i32 4
  %2 = load i32, ptr %avail_out, align 4
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %z, i32 0, i32 3
  %3 = load ptr, ptr %next_out, align 4
  store i32 0, ptr %avail_out, align 4
  %4 = load ptr, ptr %z, align 4
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %z, i32 0, i32 1
  %5 = load i32, ptr %avail_in, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 %5
  store ptr %add.ptr, ptr %next_out, align 4
  tail call fastcc void @zlib_updatewindow(ptr noundef %z, i32 noundef %5) #12
  store i32 %2, ptr %avail_out, align 4
  store ptr %3, ptr %next_out, align 4
  %check = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 6
  %6 = load i32, ptr %check, align 4
  %7 = load ptr, ptr %z, align 4
  %8 = load i32, ptr %avail_in, align 4
  %call = tail call fastcc i32 @zlib_adler32(i32 noundef %6, ptr noundef %7, i32 noundef %8) #12
  store i32 %call, ptr %check, align 4
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %z, i32 0, i32 10
  store i32 %call, ptr %adler, align 4
  %9 = load i32, ptr %avail_in, align 4
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %z, i32 0, i32 5
  %10 = load i32, ptr %total_out, align 4
  %add = add i32 %10, %9
  store i32 %add, ptr %total_out, align 4
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %z, i32 0, i32 2
  %11 = load i32, ptr %total_in, align 4
  %add14 = add i32 %11, %9
  store i32 %add14, ptr %total_in, align 4
  %12 = load ptr, ptr %z, align 4
  %add.ptr17 = getelementptr i8, ptr %12, i32 %9
  store ptr %add.ptr17, ptr %z, align 4
  %total = getelementptr inbounds %struct.inflate_state, ptr %0, i32 0, i32 7
  %13 = load i32, ptr %total, align 4
  %add19 = add i32 %13, %9
  store i32 %add19, ptr %total, align 4
  store i32 0, ptr %avail_in, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry
  %retval.0 = phi i32 [ 0, %if.end ], [ -3, %entry ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sspstrong uwtable(sync)
define i32 @do_decompress(ptr noundef %input, i32 noundef %len, ptr noundef %output, ptr nocapture noundef readonly %error) local_unnamed_addr #5 align 64 {
entry:
  %0 = ptrtoint ptr %output to i32
  %sub.i.i = xor i32 %0, -1
  %tobool4.not.i.i = icmp eq ptr %output, null
  br i1 %tobool4.not.i.i, label %if.then5.i.i, label %if.end6.i.i

if.then5.i.i:                                     ; preds = %entry
  tail call void %error(ptr noundef nonnull @.str.14) #11
  br label %__decompress.exit

if.end6.i.i:                                      ; preds = %entry
  %tobool7.not.i.i = icmp eq ptr %input, null
  %1 = load i32, ptr @malloc_ptr, align 4
  br i1 %tobool7.not.i.i, label %if.else9.i.i, label %if.end6.if.end14_crit_edge.i.i

if.end6.if.end14_crit_edge.i.i:                   ; preds = %if.end6.i.i
  %.pre57.i.i = load i32, ptr @free_mem_ptr, align 4
  %.pre58.i.i = load i32, ptr @free_mem_end_ptr, align 4
  br label %if.end14.i.i

if.else9.i.i:                                     ; preds = %if.end6.i.i
  %tobool.not.i.i.i = icmp eq i32 %1, 0
  %2 = load i32, ptr @free_mem_ptr, align 4
  %spec.select.i.i.i = select i1 %tobool.not.i.i.i, i32 %2, i32 %1
  %add.i.i.i = add i32 %spec.select.i.i.i, 3
  %and.i.i.i = and i32 %add.i.i.i, -4
  %add3.i.i.i = add i32 %and.i.i.i, 16384
  store i32 %add3.i.i.i, ptr @malloc_ptr, align 4
  %3 = load i32, ptr @free_mem_end_ptr, align 4
  %tobool4.not.i.i.i = icmp eq i32 %3, 0
  %cmp5.not.i.i.i = icmp ult i32 %add3.i.i.i, %3
  %or.cond.i.i.i = select i1 %tobool4.not.i.i.i, i1 true, i1 %cmp5.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.end11.i.i, label %if.then13.i.i

if.end11.i.i:                                     ; preds = %if.else9.i.i
  %4 = inttoptr i32 %and.i.i.i to ptr
  %5 = load i32, ptr @malloc_count, align 4
  %inc.i.i.i = add i32 %5, 1
  store i32 %inc.i.i.i, ptr @malloc_count, align 4
  %tobool12.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool12.not.i.i, label %if.then13.i.i, label %if.end14.i.i

if.then13.i.i:                                    ; preds = %if.end11.i.i, %if.else9.i.i
  tail call void %error(ptr noundef nonnull @.str.15) #11
  br label %__decompress.exit

if.end14.i.i:                                     ; preds = %if.end11.i.i, %if.end6.if.end14_crit_edge.i.i
  %6 = phi i32 [ %3, %if.end11.i.i ], [ %.pre58.i.i, %if.end6.if.end14_crit_edge.i.i ]
  %7 = phi i32 [ %2, %if.end11.i.i ], [ %.pre57.i.i, %if.end6.if.end14_crit_edge.i.i ]
  %8 = phi i32 [ %add3.i.i.i, %if.end11.i.i ], [ %1, %if.end6.if.end14_crit_edge.i.i ]
  %len.addr.044.i.i = phi i32 [ 0, %if.end11.i.i ], [ %len, %if.end6.if.end14_crit_edge.i.i ]
  %zbuf.043.i.i = phi ptr [ %4, %if.end11.i.i ], [ %input, %if.end6.if.end14_crit_edge.i.i ]
  %tobool.not.i1.i.i = icmp eq i32 %8, 0
  %spec.select.i2.i.i = select i1 %tobool.not.i1.i.i, i32 %7, i32 %8
  %add.i3.i.i = add i32 %spec.select.i2.i.i, 3
  %and.i4.i.i = and i32 %add.i3.i.i, -4
  %add3.i5.i.i = add i32 %and.i4.i.i, 48
  store i32 %add3.i5.i.i, ptr @malloc_ptr, align 4
  %tobool4.not.i6.i.i = icmp eq i32 %6, 0
  %cmp5.not.i7.i.i = icmp ult i32 %add3.i5.i.i, %6
  %or.cond.i8.i.i = select i1 %tobool4.not.i6.i.i, i1 true, i1 %cmp5.not.i7.i.i
  br i1 %or.cond.i8.i.i, label %malloc.exit12.i.i, label %if.then16.i.i

malloc.exit12.i.i:                                ; preds = %if.end14.i.i
  %9 = inttoptr i32 %and.i4.i.i to ptr
  %10 = load i32, ptr @malloc_count, align 4
  %inc.i9.i.i = add i32 %10, 1
  store i32 %inc.i9.i.i, ptr @malloc_count, align 4
  %cmp.i.i = icmp eq i32 %and.i4.i.i, 0
  br i1 %cmp.i.i, label %if.then16.i.i, label %cond.end.i.i

if.then16.i.i:                                    ; preds = %malloc.exit12.i.i, %if.end14.i.i
  tail call void %error(ptr noundef nonnull @.str.16) #11
  br label %gunzip_nomem3.i.i

cond.end.i.i:                                     ; preds = %malloc.exit12.i.i
  %tobool.not.i13.i.i = icmp eq i32 %add3.i5.i.i, 0
  %spec.select.i14.i.i = select i1 %tobool.not.i13.i.i, i32 %7, i32 %add3.i5.i.i
  %add.i15.i.i = add i32 %spec.select.i14.i.i, 3
  %and.i16.i.i = and i32 %add.i15.i.i, -4
  %add3.i17.i.i = add i32 %and.i16.i.i, 9516
  store i32 %add3.i17.i.i, ptr @malloc_ptr, align 4
  %cmp5.not.i19.i.i = icmp ult i32 %add3.i17.i.i, %6
  %or.cond.i20.i.i = select i1 %tobool4.not.i6.i.i, i1 true, i1 %cmp5.not.i19.i.i
  br i1 %or.cond.i20.i.i, label %malloc.exit24.i.i, label %malloc.exit24.thread.i.i

malloc.exit24.thread.i.i:                         ; preds = %cond.end.i.i
  %workspace50.i.i = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 8
  store ptr null, ptr %workspace50.i.i, align 4
  br label %if.then23.i.i

malloc.exit24.i.i:                                ; preds = %cond.end.i.i
  %11 = inttoptr i32 %and.i16.i.i to ptr
  %inc.i21.i.i = add i32 %10, 2
  store i32 %inc.i21.i.i, ptr @malloc_count, align 4
  %workspace.i.i = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 8
  store ptr %11, ptr %workspace.i.i, align 4
  %cmp22.i.i = icmp eq i32 %and.i16.i.i, 0
  br i1 %cmp22.i.i, label %if.then23.i.i, label %if.end24.i.i

if.then23.i.i:                                    ; preds = %malloc.exit24.i.i, %malloc.exit24.thread.i.i
  tail call void %error(ptr noundef nonnull @.str.17) #11
  %.pre59.i.i = load i32, ptr @malloc_count, align 4
  br label %gunzip_nomem4.i.i

if.end24.i.i:                                     ; preds = %malloc.exit24.i.i
  %cmp32.i.i = icmp slt i32 %len.addr.044.i.i, 10
  br i1 %cmp32.i.i, label %gunzip_5.sink.split.i.i, label %lor.lhs.false.i.i

lor.lhs.false.i.i:                                ; preds = %if.end24.i.i
  %12 = load i8, ptr %zbuf.043.i.i, align 1
  %cmp33.not.i.i = icmp eq i8 %12, 31
  br i1 %cmp33.not.i.i, label %lor.lhs.false35.i.i, label %gunzip_5.sink.split.i.i

lor.lhs.false35.i.i:                              ; preds = %lor.lhs.false.i.i
  %arrayidx36.i.i = getelementptr i8, ptr %zbuf.043.i.i, i32 1
  %13 = load i8, ptr %arrayidx36.i.i, align 1
  %cmp38.not.i.i = icmp eq i8 %13, -117
  br i1 %cmp38.not.i.i, label %lor.lhs.false40.i.i, label %gunzip_5.sink.split.i.i

lor.lhs.false40.i.i:                              ; preds = %lor.lhs.false35.i.i
  %arrayidx41.i.i = getelementptr i8, ptr %zbuf.043.i.i, i32 2
  %14 = load i8, ptr %arrayidx41.i.i, align 1
  %cmp43.not.i.i = icmp eq i8 %14, 8
  br i1 %cmp43.not.i.i, label %if.end49.i.i, label %gunzip_5.sink.split.i.i

if.end49.i.i:                                     ; preds = %lor.lhs.false40.i.i
  %add.ptr.i.i = getelementptr i8, ptr %zbuf.043.i.i, i32 10
  store ptr %add.ptr.i.i, ptr %9, align 4
  %sub50.i.i = add nsw i32 %len.addr.044.i.i, -10
  %avail_in.i.i = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 1
  store i32 %sub50.i.i, ptr %avail_in.i.i, align 4
  %arrayidx51.i.i = getelementptr i8, ptr %zbuf.043.i.i, i32 3
  %15 = load i8, ptr %arrayidx51.i.i, align 1
  %16 = and i8 %15, 8
  %tobool53.not.i.i = icmp eq i8 %16, 0
  br i1 %tobool53.not.i.i, label %if.end.i.i, label %do.body.preheader.i.i

do.body.preheader.i.i:                            ; preds = %if.end49.i.i
  %cmp5654.i.i = icmp eq i32 %sub50.i.i, 0
  br i1 %cmp5654.i.i, label %gunzip_5.sink.split.i.i, label %if.end59.i.i

do.bodythread-pre-split.i.i:                      ; preds = %if.end59.i.i
  %cmp56.i.i = icmp eq i32 %dec.i.i, 0
  br i1 %cmp56.i.i, label %gunzip_5.sink.split.i.i, label %if.end59.i.i

if.end59.i.i:                                     ; preds = %do.bodythread-pre-split.i.i, %do.body.preheader.i.i
  %17 = phi ptr [ %incdec.ptr.i.i, %do.bodythread-pre-split.i.i ], [ %add.ptr.i.i, %do.body.preheader.i.i ]
  %18 = phi i32 [ %dec.i.i, %do.bodythread-pre-split.i.i ], [ %sub50.i.i, %do.body.preheader.i.i ]
  %dec.i.i = add i32 %18, -1
  store i32 %dec.i.i, ptr %avail_in.i.i, align 4
  %incdec.ptr.i.i = getelementptr i8, ptr %17, i32 1
  store ptr %incdec.ptr.i.i, ptr %9, align 4
  %19 = load i8, ptr %17, align 1
  %tobool62.not.i.i = icmp eq i8 %19, 0
  br i1 %tobool62.not.i.i, label %if.end.i.i, label %do.bodythread-pre-split.i.i

if.end.i.i:                                       ; preds = %if.end59.i.i, %if.end49.i.i
  %next_out.i.i = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 3
  store ptr %output, ptr %next_out.i.i, align 4
  %avail_out.i.i = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 4
  store i32 %sub.i.i, ptr %avail_out.i.i, align 4
  %msg.i.i = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 6
  store ptr null, ptr %msg.i.i, align 4
  %state1.i.i = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 7
  store ptr %11, ptr %state1.i.i, align 4
  %20 = getelementptr inbounds %struct.inflate_state, ptr %11, i32 0, i32 2
  store i32 0, ptr %20, align 4
  %wbits.i.i = getelementptr inbounds %struct.inflate_state, ptr %11, i32 0, i32 8
  store i32 15, ptr %wbits.i.i, align 4
  %21 = load ptr, ptr %workspace.i.i, align 4
  %working_window.i.i = getelementptr inbounds %struct.inflate_workspace, ptr %21, i32 0, i32 1
  %window.i3.i = getelementptr inbounds %struct.inflate_state, ptr %11, i32 0, i32 12
  store ptr %working_window.i.i, ptr %window.i3.i, align 4
  %22 = load ptr, ptr %state1.i.i, align 4
  %cmp2.i.i.i = icmp eq ptr %22, null
  br i1 %cmp2.i.i.i, label %zlib_inflateInit2.exit.thread.i, label %zlib_inflateInit2.exit.i

zlib_inflateInit2.exit.thread.i:                  ; preds = %if.end.i.i
  %23 = load ptr, ptr %workspace.i.i, align 4
  %wsize.i5.i = getelementptr inbounds %struct.inflate_state, ptr %23, i32 0, i32 9
  store i32 0, ptr %wsize.i5.i, align 4
  %24 = load ptr, ptr %workspace.i.i, align 4
  %window.i6.i = getelementptr inbounds %struct.inflate_state, ptr %24, i32 0, i32 12
  store ptr null, ptr %window.i6.i, align 4
  br label %gunzip_5.i.i

zlib_inflateInit2.exit.i:                         ; preds = %if.end.i.i
  %total.i.i.i = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 7
  store i32 0, ptr %total.i.i.i, align 4
  %total_out.i.i.i = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 5
  store i32 0, ptr %total_out.i.i.i, align 4
  %total_in.i.i.i = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 2
  store i32 0, ptr %total_in.i.i.i, align 4
  store ptr null, ptr %msg.i.i, align 4
  %adler.i.i.i = getelementptr inbounds %struct.z_stream_s, ptr %9, i32 0, i32 10
  store i32 1, ptr %adler.i.i.i, align 4
  store i32 0, ptr %22, align 4
  %last.i.i.i = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 1
  store i32 0, ptr %last.i.i.i, align 4
  %havedict.i.i.i = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 3
  store i32 0, ptr %havedict.i.i.i, align 4
  %dmax.i.i.i = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 5
  store i32 32768, ptr %dmax.i.i.i, align 4
  %hold.i.i.i = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 13
  store i32 0, ptr %hold.i.i.i, align 4
  %bits.i.i.i = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 14
  store i32 0, ptr %bits.i.i.i, align 4
  %codes.i.i.i = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 29
  %next.i.i.i = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 26
  store ptr %codes.i.i.i, ptr %next.i.i.i, align 4
  %distcode.i.i.i = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 19
  store ptr %codes.i.i.i, ptr %distcode.i.i.i, align 4
  %lencode.i.i.i = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 18
  store ptr %codes.i.i.i, ptr %lencode.i.i.i, align 4
  %wbits.i.i.i = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 8
  %25 = load i32, ptr %wbits.i.i.i, align 4
  %shl.i.i.i = shl nuw i32 1, %25
  %wsize.i.i.i = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 9
  store i32 %shl.i.i.i, ptr %wsize.i.i.i, align 4
  %write.i.i.i = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 11
  store i32 0, ptr %write.i.i.i, align 4
  %whave.i.i.i = getelementptr inbounds %struct.inflate_state, ptr %22, i32 0, i32 10
  store i32 0, ptr %whave.i.i.i, align 4
  %26 = load ptr, ptr %workspace.i.i, align 4
  %wsize.i.i = getelementptr inbounds %struct.inflate_state, ptr %26, i32 0, i32 9
  store i32 0, ptr %wsize.i.i, align 4
  %27 = load ptr, ptr %workspace.i.i, align 4
  %window.i.i = getelementptr inbounds %struct.inflate_state, ptr %27, i32 0, i32 12
  store ptr null, ptr %window.i.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %if.end84.i.i, %zlib_inflateInit2.exit.i
  %28 = load i32, ptr %avail_in.i.i, align 4
  %cmp74.i.i = icmp eq i32 %28, 0
  br i1 %cmp74.i.i, label %gunzip_5.sink.split.i.i, label %if.end84.i.i

if.end84.i.i:                                     ; preds = %while.body.i.i
  %call85.i.i = tail call i32 @zlib_inflate(ptr noundef nonnull %9, i32 noundef 0) #11
  switch i32 %call85.i.i, label %gunzip_5.sink.split.i.i [
    i32 1, label %gunzip_5.i.i
    i32 0, label %while.body.i.i
  ]

gunzip_5.sink.split.i.i:                          ; preds = %if.end84.i.i, %while.body.i.i, %do.bodythread-pre-split.i.i, %do.body.preheader.i.i, %lor.lhs.false40.i.i, %lor.lhs.false35.i.i, %lor.lhs.false.i.i, %if.end24.i.i
  %.str.22.sink.i.i = phi ptr [ @.str.18, %if.end24.i.i ], [ @.str.18, %lor.lhs.false.i.i ], [ @.str.18, %lor.lhs.false35.i.i ], [ @.str.18, %lor.lhs.false40.i.i ], [ @.str.19, %do.body.preheader.i.i ], [ @.str.20, %while.body.i.i ], [ @.str.22, %if.end84.i.i ], [ @.str.19, %do.bodythread-pre-split.i.i ]
  tail call void %error(ptr noundef nonnull %.str.22.sink.i.i) #11
  br label %gunzip_5.i.i

gunzip_5.i.i:                                     ; preds = %gunzip_5.sink.split.i.i, %if.end84.i.i, %zlib_inflateInit2.exit.thread.i
  %rc.5.i.i = phi i32 [ -1, %gunzip_5.sink.split.i.i ], [ -2, %zlib_inflateInit2.exit.thread.i ], [ 0, %if.end84.i.i ]
  %29 = load i32, ptr @malloc_count, align 4
  %dec.i.i.i = add i32 %29, -1
  %tobool.not.i27.i.i = icmp eq i32 %dec.i.i.i, 0
  br i1 %tobool.not.i27.i.i, label %gunzip_nomem4.thread.i.i, label %gunzip_nomem4.i.i

gunzip_nomem4.thread.i.i:                         ; preds = %gunzip_5.i.i
  %30 = load i32, ptr @free_mem_ptr, align 4
  store i32 %30, ptr @malloc_ptr, align 4
  store i32 -1, ptr @malloc_count, align 4
  br label %gunzip_nomem3.i.i

gunzip_nomem4.i.i:                                ; preds = %gunzip_5.i.i, %if.then23.i.i
  %31 = phi i32 [ %.pre59.i.i, %if.then23.i.i ], [ %dec.i.i.i, %gunzip_5.i.i ]
  %rc.6.i.i = phi i32 [ -1, %if.then23.i.i ], [ %rc.5.i.i, %gunzip_5.i.i ]
  %dec.i28.i.i = add i32 %31, -1
  store i32 %dec.i28.i.i, ptr @malloc_count, align 4
  %tobool.not.i29.i.i = icmp eq i32 %dec.i28.i.i, 0
  br i1 %tobool.not.i29.i.i, label %if.then.i30.i.i, label %gunzip_nomem3.i.i

if.then.i30.i.i:                                  ; preds = %gunzip_nomem4.i.i
  %32 = load i32, ptr @free_mem_ptr, align 4
  store i32 %32, ptr @malloc_ptr, align 4
  br label %gunzip_nomem3.i.i

gunzip_nomem3.i.i:                                ; preds = %if.then.i30.i.i, %gunzip_nomem4.i.i, %gunzip_nomem4.thread.i.i, %if.then16.i.i
  %rc.7.i.i = phi i32 [ -1, %if.then16.i.i ], [ %rc.6.i.i, %gunzip_nomem4.i.i ], [ %rc.6.i.i, %if.then.i30.i.i ], [ %rc.5.i.i, %gunzip_nomem4.thread.i.i ]
  br i1 %tobool7.not.i.i, label %if.then119.i.i, label %__decompress.exit

if.then119.i.i:                                   ; preds = %gunzip_nomem3.i.i
  %33 = load i32, ptr @malloc_count, align 4
  %dec.i32.i.i = add i32 %33, -1
  store i32 %dec.i32.i.i, ptr @malloc_count, align 4
  %tobool.not.i33.i.i = icmp eq i32 %dec.i32.i.i, 0
  br i1 %tobool.not.i33.i.i, label %if.then.i34.i.i, label %__decompress.exit

if.then.i34.i.i:                                  ; preds = %if.then119.i.i
  %34 = load i32, ptr @free_mem_ptr, align 4
  store i32 %34, ptr @malloc_ptr, align 4
  br label %__decompress.exit

__decompress.exit:                                ; preds = %if.then.i34.i.i, %if.then119.i.i, %gunzip_nomem3.i.i, %if.then13.i.i, %if.then5.i.i
  %rc.9.i.i = phi i32 [ -1, %if.then5.i.i ], [ %rc.7.i.i, %gunzip_nomem3.i.i ], [ -1, %if.then13.i.i ], [ %rc.7.i.i, %if.then119.i.i ], [ %rc.7.i.i, %if.then.i34.i.i ]
  ret i32 %rc.9.i.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #9

attributes #0 = { nofree nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { nofree norecurse nosync nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nounwind null_pointer_is_valid sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nofree nosync nounwind null_pointer_is_valid readonly sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid "frame-pointer"="none" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sspstrong willreturn uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-builtins" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nobuiltin nounwind "no-builtins" }
attributes #12 = { nobuiltin "no-builtins" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6, !7}
!llvm.ident = !{!8}

!0 = !{i32 1, !"wchar_size", i32 2}
!1 = !{i32 1, !"min_enum_size", i32 4}
!2 = !{i32 8, !"branch-target-enforcement", i32 0}
!3 = !{i32 8, !"sign-return-address", i32 0}
!4 = !{i32 8, !"sign-return-address-all", i32 0}
!5 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!6 = !{i32 7, !"PIC Level", i32 1}
!7 = !{i32 7, !"uwtable", i32 1}
!8 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!9 = !{!"auto-init"}
