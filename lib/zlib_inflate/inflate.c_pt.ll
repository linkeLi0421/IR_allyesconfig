; ModuleID = '/llk/IR_all_yes/lib/zlib_inflate/inflate.c_pt.bc'
source_filename = "../lib/zlib_inflate/inflate.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.code = type { i8, i8, i16 }
%struct.z_stream_s = type { ptr, i32, i32, ptr, i32, i32, ptr, ptr, ptr, i32, i32, i32 }
%struct.inflate_state = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32, i32, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32, i32, ptr, [320 x i16], [288 x i16], [2048 x %struct.code] }
%struct.inflate_workspace = type { %struct.inflate_state, [32768 x i8] }

@zlib_inflate.order = internal constant { [19 x i16], [58 x i8] } { [19 x i16] [i16 16, i16 17, i16 18, i16 0, i16 8, i16 7, i16 9, i16 6, i16 10, i16 5, i16 11, i16 4, i16 12, i16 3, i16 13, i16 2, i16 14, i16 1, i16 15], [58 x i8] zeroinitializer }, align 32
@.str = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"incorrect header check\00", [41 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unknown compression method\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid window size\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"invalid block type\00", [45 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid stored block lengths\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"too many length or distance symbols\00", [60 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"invalid code lengths set\00", [39 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid bit length repeat\00", [38 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid literal/lengths set\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid distances set\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid literal/length code\00", [36 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"invalid distance code\00", [42 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid distance too far back\00", [34 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"incorrect data check\00", [43 x i8] zeroinitializer }, align 32
@zlib_fixedtables.lenfix = internal constant { [512 x %struct.code], [512 x i8] } { [512 x %struct.code] [%struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 192 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 160 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 224 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 144 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 208 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 176 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 240 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 200 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 168 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 232 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 152 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 216 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 184 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 248 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 196 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 164 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 228 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 148 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 212 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 180 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 244 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 204 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 172 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 236 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 156 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 220 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 188 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 252 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 194 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 162 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 226 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 146 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 210 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 178 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 242 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 202 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 170 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 234 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 154 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 218 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 186 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 250 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 198 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 166 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 230 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 150 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 214 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 182 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 246 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 206 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 174 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 238 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 158 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 222 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 190 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 254 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 80 }, %struct.code { i8 0, i8 8, i16 16 }, %struct.code { i8 20, i8 8, i16 115 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 112 }, %struct.code { i8 0, i8 8, i16 48 }, %struct.code { i8 0, i8 9, i16 193 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 96 }, %struct.code { i8 0, i8 8, i16 32 }, %struct.code { i8 0, i8 9, i16 161 }, %struct.code { i8 0, i8 8, i16 0 }, %struct.code { i8 0, i8 8, i16 128 }, %struct.code { i8 0, i8 8, i16 64 }, %struct.code { i8 0, i8 9, i16 225 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 88 }, %struct.code { i8 0, i8 8, i16 24 }, %struct.code { i8 0, i8 9, i16 145 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 120 }, %struct.code { i8 0, i8 8, i16 56 }, %struct.code { i8 0, i8 9, i16 209 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 104 }, %struct.code { i8 0, i8 8, i16 40 }, %struct.code { i8 0, i8 9, i16 177 }, %struct.code { i8 0, i8 8, i16 8 }, %struct.code { i8 0, i8 8, i16 136 }, %struct.code { i8 0, i8 8, i16 72 }, %struct.code { i8 0, i8 9, i16 241 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 84 }, %struct.code { i8 0, i8 8, i16 20 }, %struct.code { i8 21, i8 8, i16 227 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 116 }, %struct.code { i8 0, i8 8, i16 52 }, %struct.code { i8 0, i8 9, i16 201 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 100 }, %struct.code { i8 0, i8 8, i16 36 }, %struct.code { i8 0, i8 9, i16 169 }, %struct.code { i8 0, i8 8, i16 4 }, %struct.code { i8 0, i8 8, i16 132 }, %struct.code { i8 0, i8 8, i16 68 }, %struct.code { i8 0, i8 9, i16 233 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 92 }, %struct.code { i8 0, i8 8, i16 28 }, %struct.code { i8 0, i8 9, i16 153 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 124 }, %struct.code { i8 0, i8 8, i16 60 }, %struct.code { i8 0, i8 9, i16 217 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 108 }, %struct.code { i8 0, i8 8, i16 44 }, %struct.code { i8 0, i8 9, i16 185 }, %struct.code { i8 0, i8 8, i16 12 }, %struct.code { i8 0, i8 8, i16 140 }, %struct.code { i8 0, i8 8, i16 76 }, %struct.code { i8 0, i8 9, i16 249 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 82 }, %struct.code { i8 0, i8 8, i16 18 }, %struct.code { i8 21, i8 8, i16 163 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 114 }, %struct.code { i8 0, i8 8, i16 50 }, %struct.code { i8 0, i8 9, i16 197 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 98 }, %struct.code { i8 0, i8 8, i16 34 }, %struct.code { i8 0, i8 9, i16 165 }, %struct.code { i8 0, i8 8, i16 2 }, %struct.code { i8 0, i8 8, i16 130 }, %struct.code { i8 0, i8 8, i16 66 }, %struct.code { i8 0, i8 9, i16 229 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 90 }, %struct.code { i8 0, i8 8, i16 26 }, %struct.code { i8 0, i8 9, i16 149 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 122 }, %struct.code { i8 0, i8 8, i16 58 }, %struct.code { i8 0, i8 9, i16 213 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 106 }, %struct.code { i8 0, i8 8, i16 42 }, %struct.code { i8 0, i8 9, i16 181 }, %struct.code { i8 0, i8 8, i16 10 }, %struct.code { i8 0, i8 8, i16 138 }, %struct.code { i8 0, i8 8, i16 74 }, %struct.code { i8 0, i8 9, i16 245 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 86 }, %struct.code { i8 0, i8 8, i16 22 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 118 }, %struct.code { i8 0, i8 8, i16 54 }, %struct.code { i8 0, i8 9, i16 205 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 102 }, %struct.code { i8 0, i8 8, i16 38 }, %struct.code { i8 0, i8 9, i16 173 }, %struct.code { i8 0, i8 8, i16 6 }, %struct.code { i8 0, i8 8, i16 134 }, %struct.code { i8 0, i8 8, i16 70 }, %struct.code { i8 0, i8 9, i16 237 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 94 }, %struct.code { i8 0, i8 8, i16 30 }, %struct.code { i8 0, i8 9, i16 157 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 126 }, %struct.code { i8 0, i8 8, i16 62 }, %struct.code { i8 0, i8 9, i16 221 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 110 }, %struct.code { i8 0, i8 8, i16 46 }, %struct.code { i8 0, i8 9, i16 189 }, %struct.code { i8 0, i8 8, i16 14 }, %struct.code { i8 0, i8 8, i16 142 }, %struct.code { i8 0, i8 8, i16 78 }, %struct.code { i8 0, i8 9, i16 253 }, %struct.code { i8 96, i8 7, i16 0 }, %struct.code { i8 0, i8 8, i16 81 }, %struct.code { i8 0, i8 8, i16 17 }, %struct.code { i8 21, i8 8, i16 131 }, %struct.code { i8 18, i8 7, i16 31 }, %struct.code { i8 0, i8 8, i16 113 }, %struct.code { i8 0, i8 8, i16 49 }, %struct.code { i8 0, i8 9, i16 195 }, %struct.code { i8 16, i8 7, i16 10 }, %struct.code { i8 0, i8 8, i16 97 }, %struct.code { i8 0, i8 8, i16 33 }, %struct.code { i8 0, i8 9, i16 163 }, %struct.code { i8 0, i8 8, i16 1 }, %struct.code { i8 0, i8 8, i16 129 }, %struct.code { i8 0, i8 8, i16 65 }, %struct.code { i8 0, i8 9, i16 227 }, %struct.code { i8 16, i8 7, i16 6 }, %struct.code { i8 0, i8 8, i16 89 }, %struct.code { i8 0, i8 8, i16 25 }, %struct.code { i8 0, i8 9, i16 147 }, %struct.code { i8 19, i8 7, i16 59 }, %struct.code { i8 0, i8 8, i16 121 }, %struct.code { i8 0, i8 8, i16 57 }, %struct.code { i8 0, i8 9, i16 211 }, %struct.code { i8 17, i8 7, i16 17 }, %struct.code { i8 0, i8 8, i16 105 }, %struct.code { i8 0, i8 8, i16 41 }, %struct.code { i8 0, i8 9, i16 179 }, %struct.code { i8 0, i8 8, i16 9 }, %struct.code { i8 0, i8 8, i16 137 }, %struct.code { i8 0, i8 8, i16 73 }, %struct.code { i8 0, i8 9, i16 243 }, %struct.code { i8 16, i8 7, i16 4 }, %struct.code { i8 0, i8 8, i16 85 }, %struct.code { i8 0, i8 8, i16 21 }, %struct.code { i8 16, i8 8, i16 258 }, %struct.code { i8 19, i8 7, i16 43 }, %struct.code { i8 0, i8 8, i16 117 }, %struct.code { i8 0, i8 8, i16 53 }, %struct.code { i8 0, i8 9, i16 203 }, %struct.code { i8 17, i8 7, i16 13 }, %struct.code { i8 0, i8 8, i16 101 }, %struct.code { i8 0, i8 8, i16 37 }, %struct.code { i8 0, i8 9, i16 171 }, %struct.code { i8 0, i8 8, i16 5 }, %struct.code { i8 0, i8 8, i16 133 }, %struct.code { i8 0, i8 8, i16 69 }, %struct.code { i8 0, i8 9, i16 235 }, %struct.code { i8 16, i8 7, i16 8 }, %struct.code { i8 0, i8 8, i16 93 }, %struct.code { i8 0, i8 8, i16 29 }, %struct.code { i8 0, i8 9, i16 155 }, %struct.code { i8 20, i8 7, i16 83 }, %struct.code { i8 0, i8 8, i16 125 }, %struct.code { i8 0, i8 8, i16 61 }, %struct.code { i8 0, i8 9, i16 219 }, %struct.code { i8 18, i8 7, i16 23 }, %struct.code { i8 0, i8 8, i16 109 }, %struct.code { i8 0, i8 8, i16 45 }, %struct.code { i8 0, i8 9, i16 187 }, %struct.code { i8 0, i8 8, i16 13 }, %struct.code { i8 0, i8 8, i16 141 }, %struct.code { i8 0, i8 8, i16 77 }, %struct.code { i8 0, i8 9, i16 251 }, %struct.code { i8 16, i8 7, i16 3 }, %struct.code { i8 0, i8 8, i16 83 }, %struct.code { i8 0, i8 8, i16 19 }, %struct.code { i8 21, i8 8, i16 195 }, %struct.code { i8 19, i8 7, i16 35 }, %struct.code { i8 0, i8 8, i16 115 }, %struct.code { i8 0, i8 8, i16 51 }, %struct.code { i8 0, i8 9, i16 199 }, %struct.code { i8 17, i8 7, i16 11 }, %struct.code { i8 0, i8 8, i16 99 }, %struct.code { i8 0, i8 8, i16 35 }, %struct.code { i8 0, i8 9, i16 167 }, %struct.code { i8 0, i8 8, i16 3 }, %struct.code { i8 0, i8 8, i16 131 }, %struct.code { i8 0, i8 8, i16 67 }, %struct.code { i8 0, i8 9, i16 231 }, %struct.code { i8 16, i8 7, i16 7 }, %struct.code { i8 0, i8 8, i16 91 }, %struct.code { i8 0, i8 8, i16 27 }, %struct.code { i8 0, i8 9, i16 151 }, %struct.code { i8 20, i8 7, i16 67 }, %struct.code { i8 0, i8 8, i16 123 }, %struct.code { i8 0, i8 8, i16 59 }, %struct.code { i8 0, i8 9, i16 215 }, %struct.code { i8 18, i8 7, i16 19 }, %struct.code { i8 0, i8 8, i16 107 }, %struct.code { i8 0, i8 8, i16 43 }, %struct.code { i8 0, i8 9, i16 183 }, %struct.code { i8 0, i8 8, i16 11 }, %struct.code { i8 0, i8 8, i16 139 }, %struct.code { i8 0, i8 8, i16 75 }, %struct.code { i8 0, i8 9, i16 247 }, %struct.code { i8 16, i8 7, i16 5 }, %struct.code { i8 0, i8 8, i16 87 }, %struct.code { i8 0, i8 8, i16 23 }, %struct.code { i8 64, i8 8, i16 0 }, %struct.code { i8 19, i8 7, i16 51 }, %struct.code { i8 0, i8 8, i16 119 }, %struct.code { i8 0, i8 8, i16 55 }, %struct.code { i8 0, i8 9, i16 207 }, %struct.code { i8 17, i8 7, i16 15 }, %struct.code { i8 0, i8 8, i16 103 }, %struct.code { i8 0, i8 8, i16 39 }, %struct.code { i8 0, i8 9, i16 175 }, %struct.code { i8 0, i8 8, i16 7 }, %struct.code { i8 0, i8 8, i16 135 }, %struct.code { i8 0, i8 8, i16 71 }, %struct.code { i8 0, i8 9, i16 239 }, %struct.code { i8 16, i8 7, i16 9 }, %struct.code { i8 0, i8 8, i16 95 }, %struct.code { i8 0, i8 8, i16 31 }, %struct.code { i8 0, i8 9, i16 159 }, %struct.code { i8 20, i8 7, i16 99 }, %struct.code { i8 0, i8 8, i16 127 }, %struct.code { i8 0, i8 8, i16 63 }, %struct.code { i8 0, i8 9, i16 223 }, %struct.code { i8 18, i8 7, i16 27 }, %struct.code { i8 0, i8 8, i16 111 }, %struct.code { i8 0, i8 8, i16 47 }, %struct.code { i8 0, i8 9, i16 191 }, %struct.code { i8 0, i8 8, i16 15 }, %struct.code { i8 0, i8 8, i16 143 }, %struct.code { i8 0, i8 8, i16 79 }, %struct.code { i8 0, i8 9, i16 255 }], [512 x i8] zeroinitializer }, align 32
@zlib_fixedtables.distfix = internal constant { [32 x %struct.code], [32 x i8] } { [32 x %struct.code] [%struct.code { i8 16, i8 5, i16 1 }, %struct.code { i8 23, i8 5, i16 257 }, %struct.code { i8 19, i8 5, i16 17 }, %struct.code { i8 27, i8 5, i16 4097 }, %struct.code { i8 17, i8 5, i16 5 }, %struct.code { i8 25, i8 5, i16 1025 }, %struct.code { i8 21, i8 5, i16 65 }, %struct.code { i8 29, i8 5, i16 16385 }, %struct.code { i8 16, i8 5, i16 3 }, %struct.code { i8 24, i8 5, i16 513 }, %struct.code { i8 20, i8 5, i16 33 }, %struct.code { i8 28, i8 5, i16 8193 }, %struct.code { i8 18, i8 5, i16 9 }, %struct.code { i8 26, i8 5, i16 2049 }, %struct.code { i8 22, i8 5, i16 129 }, %struct.code { i8 64, i8 5, i16 0 }, %struct.code { i8 16, i8 5, i16 2 }, %struct.code { i8 23, i8 5, i16 385 }, %struct.code { i8 19, i8 5, i16 25 }, %struct.code { i8 27, i8 5, i16 6145 }, %struct.code { i8 17, i8 5, i16 7 }, %struct.code { i8 25, i8 5, i16 1537 }, %struct.code { i8 21, i8 5, i16 97 }, %struct.code { i8 29, i8 5, i16 24577 }, %struct.code { i8 16, i8 5, i16 4 }, %struct.code { i8 24, i8 5, i16 769 }, %struct.code { i8 20, i8 5, i16 49 }, %struct.code { i8 28, i8 5, i16 12289 }, %struct.code { i8 18, i8 5, i16 13 }, %struct.code { i8 26, i8 5, i16 3073 }, %struct.code { i8 22, i8 5, i16 193 }, %struct.code { i8 64, i8 5, i16 0 }], [32 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [22 x i64] [i64 20, i64 32, i64 0, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14, i64 15, i64 16, i64 17, i64 18, i64 19, i64 20, i64 21, i64 22, i64 23, i64 24, i64 26, i64 27, i64 28]
@__sancov_gen_cov_switch_values.14 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 16, i64 16, i64 17]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 11]
@___asan_gen_.17 = private unnamed_addr constant [6 x i8] c"order\00", align 1
@___asan_gen_.19 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 346, i32 33 }
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 373, i32 37 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 378, i32 37 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 385, i32 37 }
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 433, i32 37 }
@___asan_gen_.34 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 442, i32 37 }
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 476, i32 37 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 498, i32 37 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 522, i32 49 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 564, i32 37 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 573, i32 37 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 612, i32 37 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 645, i32 37 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 667, i32 37 }
@___asan_gen_.59 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.60 = private constant [30 x i8] c"../lib/zlib_inflate/inflate.c\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.60, i32 716, i32 41 }
@___asan_gen_.62 = private unnamed_addr constant [7 x i8] c"lenfix\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 10, i32 23 }
@___asan_gen_.65 = private unnamed_addr constant [8 x i8] c"distfix\00", align 1
@___asan_gen_.66 = private unnamed_addr constant [31 x i8] c"../lib/zlib_inflate/inffixed.h\00", align 1
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.66, i32 87, i32 23 }
@llvm.compiler.used = appending global [17 x ptr] [ptr @zlib_inflate.order, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @zlib_fixedtables.lenfix, ptr @zlib_fixedtables.distfix], section "llvm.metadata"
@0 = internal global [17 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zlib_inflate.order to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.19 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.34 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zlib_fixedtables.lenfix to i32), i32 2048, i32 2560, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @zlib_fixedtables.distfix to i32), i32 128, i32 160, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @zlib_inflate_workspacesize() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 42284
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @zlib_inflateReset(ptr noundef %strm) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 7
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %total = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %total to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %total, align 4
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 5
  %3 = ptrtoint ptr %total_out to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %total_out, align 4
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 2
  %4 = ptrtoint ptr %total_in to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %total_in, align 4
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 6
  %5 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr null, ptr %msg, align 4
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 10
  %6 = ptrtoint ptr %adler to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %adler, align 4
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %1, align 4
  %last = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %last to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %last, align 4
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %havedict to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %havedict, align 4
  %dmax = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %dmax to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 32768, ptr %dmax, align 4
  %hold = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 13
  %11 = ptrtoint ptr %hold to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %hold, align 4
  %bits = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 14
  %12 = ptrtoint ptr %bits to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %bits, align 4
  %codes = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 29
  %next = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 26
  %13 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %codes, ptr %next, align 4
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 19
  %14 = ptrtoint ptr %distcode to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %codes, ptr %distcode, align 4
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 18
  %15 = ptrtoint ptr %lencode to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %codes, ptr %lencode, align 4
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 8
  %16 = ptrtoint ptr %wbits to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %wbits, align 4
  %shl = shl nuw i32 1, %17
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %wsize to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %shl, ptr %wsize, align 4
  %write = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 11
  %19 = ptrtoint ptr %write to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %write, align 4
  %whave = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 10
  %20 = ptrtoint ptr %whave to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %whave, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @zlib_inflateInit2(ptr noundef %strm, i32 noundef %windowBits) local_unnamed_addr #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %msg = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 6
  %0 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr null, ptr %msg, align 4
  %workspace = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 8
  %1 = ptrtoint ptr %workspace to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %workspace, align 4
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 7
  %3 = ptrtoint ptr %state1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %state1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %windowBits)
  %cmp2 = icmp slt i32 %windowBits, 0
  %shr25 = lshr i32 %windowBits, 4
  %add = add nuw nsw i32 %shr25, 1
  %add.sink = select i1 %cmp2, i32 0, i32 %add
  %4 = call i32 @llvm.abs.i32(i32 %windowBits, i1 false)
  %5 = getelementptr inbounds %struct.inflate_state, ptr %2, i32 0, i32 2
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %add.sink, ptr %5, align 4
  %7 = add i32 %4, -16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %7)
  %8 = icmp ult i32 %7, -8
  br i1 %8, label %if.end.cleanup_crit_edge, label %lor.lhs.false.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %if.end
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %2, i32 0, i32 8
  %9 = ptrtoint ptr %wbits to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %4, ptr %wbits, align 4
  %10 = ptrtoint ptr %workspace to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %workspace, align 4
  %working_window = getelementptr inbounds %struct.inflate_workspace, ptr %11, i32 0, i32 1
  %window = getelementptr inbounds %struct.inflate_state, ptr %2, i32 0, i32 12
  %12 = ptrtoint ptr %window to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %working_window, ptr %window, align 4
  %13 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %state1, align 4
  %cmp2.i = icmp eq ptr %14, null
  br i1 %cmp2.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  %total.i = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %total.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %total.i, align 4
  %total_out.i = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 5
  %16 = ptrtoint ptr %total_out.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %total_out.i, align 4
  %total_in.i = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 2
  %17 = ptrtoint ptr %total_in.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %total_in.i, align 4
  %18 = ptrtoint ptr %msg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %msg, align 4
  %adler.i = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 10
  %19 = ptrtoint ptr %adler.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %adler.i, align 4
  %20 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %14, align 4
  %last.i = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 1
  %21 = ptrtoint ptr %last.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %last.i, align 4
  %havedict.i = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 3
  %22 = ptrtoint ptr %havedict.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %havedict.i, align 4
  %dmax.i = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 5
  %23 = ptrtoint ptr %dmax.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 32768, ptr %dmax.i, align 4
  %hold.i = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 13
  %24 = ptrtoint ptr %hold.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %hold.i, align 4
  %bits.i = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 14
  %25 = ptrtoint ptr %bits.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %bits.i, align 4
  %codes.i = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 29
  %next.i = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 26
  %26 = ptrtoint ptr %next.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %codes.i, ptr %next.i, align 4
  %distcode.i = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 19
  %27 = ptrtoint ptr %distcode.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %codes.i, ptr %distcode.i, align 4
  %lencode.i = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 18
  %28 = ptrtoint ptr %lencode.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %codes.i, ptr %lencode.i, align 4
  %wbits.i = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 8
  %29 = ptrtoint ptr %wbits.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %wbits.i, align 4
  %shl.i = shl nuw i32 1, %30
  %wsize.i = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 9
  %31 = ptrtoint ptr %wsize.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shl.i, ptr %wsize.i, align 4
  %write.i = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 11
  %32 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %write.i, align 4
  %whave.i = getelementptr inbounds %struct.inflate_state, ptr %14, i32 0, i32 10
  %33 = ptrtoint ptr %whave.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %whave.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i, %lor.lhs.false.i.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -2, %entry.cleanup_crit_edge ], [ -2, %if.end.cleanup_crit_edge ], [ 0, %if.end.i ], [ -2, %lor.lhs.false.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zlib_inflate(ptr noundef %strm, i32 noundef %flush) local_unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 7
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %cmp2 = icmp eq ptr %1, null
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false3

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %2 = ptrtoint ptr %strm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %strm, align 4
  %cmp4 = icmp eq ptr %3, null
  br i1 %cmp4, label %land.lhs.true, label %lor.lhs.false3.if.end_crit_edge

lor.lhs.false3.if.end_crit_edge:                  ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %lor.lhs.false3
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 1
  %4 = ptrtoint ptr %avail_in to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %avail_in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp5.not = icmp eq i32 %5, 0
  br i1 %cmp5.not, label %land.lhs.true.if.end_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %lor.lhs.false3.if.end_crit_edge
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %7)
  %cmp7 = icmp eq i32 %7, 11
  br i1 %cmp7, label %if.then8, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 12, ptr %1, align 4
  br label %do.body

do.body:                                          ; preds = %if.then8, %if.end.do.body_crit_edge
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 3
  %9 = ptrtoint ptr %next_out to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %next_out, align 4
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 4
  %11 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %avail_out, align 4
  %13 = ptrtoint ptr %strm to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %strm, align 4
  %avail_in12 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 1
  %15 = ptrtoint ptr %avail_in12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %avail_in12, align 4
  %hold13 = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 13
  %17 = ptrtoint ptr %hold13 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hold13, align 4
  %bits14 = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 14
  %19 = ptrtoint ptr %bits14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %bits14, align 4
  %wrap1071 = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 2
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 5
  %total = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 7
  %check1100 = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 6
  %adler1105 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 10
  %msg1122 = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 6
  %length1065 = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 15
  %nlen = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 23
  %ndist = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 24
  %ncode = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 22
  %have302 = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 25
  %codes = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 29
  %next354 = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 26
  %lencode = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 18
  %lenbits = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 20
  %lens356 = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 27
  %work = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 28
  %distcode = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 19
  %distbits = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 21
  %extra = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 17
  %offset = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 16
  %whave = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 10
  %write = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 11
  %window1024 = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 12
  %wsize = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 9
  %havedict = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %flush)
  %cmp120 = icmp eq i32 %flush, 6
  %last128 = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 1
  %wbits = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 8
  %dmax = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 5
  br label %for.cond

for.cond:                                         ; preds = %for.cond.backedge, %do.body
  %next.0 = phi ptr [ %14, %do.body ], [ %next.0.be, %for.cond.backedge ]
  %put.0 = phi ptr [ %10, %do.body ], [ %put.0.be, %for.cond.backedge ]
  %have.0 = phi i32 [ %16, %do.body ], [ %have.0.be, %for.cond.backedge ]
  %left.0 = phi i32 [ %12, %do.body ], [ %left.0.be, %for.cond.backedge ]
  %hold.0 = phi i32 [ %18, %do.body ], [ %hold.0.be, %for.cond.backedge ]
  %bits.0 = phi i32 [ %20, %do.body ], [ %bits.0.be, %for.cond.backedge ]
  %out.0 = phi i32 [ %12, %do.body ], [ %out.0.be, %for.cond.backedge ]
  %ret.0 = phi i32 [ 0, %do.body ], [ %ret.0.be, %for.cond.backedge ]
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %1, align 4
  %23 = zext i32 %22 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %22, label %for.cond.cleanup_crit_edge [
    i32 0, label %sw.bb
    i32 9, label %while.cond64.preheader
    i32 10, label %for.cond.sw.bb101_crit_edge
    i32 11, label %for.cond.sw.bb119_crit_edge
    i32 12, label %for.cond.do.end127_crit_edge
    i32 13, label %do.body184
    i32 14, label %sw.bb225thread-pre-split
    i32 15, label %while.cond250.preheader
    i32 16, label %for.cond.sw.bb304_crit_edge
    i32 17, label %for.cond.sw.bb369_crit_edge
    i32 18, label %for.cond.sw.bb655_crit_edge
    i32 19, label %sw.bb805thread-pre-split
    i32 20, label %for.cond.sw.bb846_crit_edge
    i32 21, label %sw.bb954thread-pre-split
    i32 22, label %for.cond.sw.bb1004_crit_edge
    i32 23, label %sw.bb1060
    i32 24, label %sw.bb1070
    i32 26, label %for.cond.do.body1135.loopexit2999_crit_edge
    i32 27, label %for.cond.do.body1135_crit_edge
    i32 28, label %cleanup.loopexit
  ]

for.cond.do.body1135_crit_edge:                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

for.cond.do.body1135.loopexit2999_crit_edge:      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135.loopexit2999

for.cond.sw.bb1004_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb1004

for.cond.sw.bb846_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb846

for.cond.sw.bb655_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb655

for.cond.sw.bb369_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb369

for.cond.sw.bb304_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb304

for.cond.do.end127_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end127

for.cond.sw.bb119_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb119

for.cond.sw.bb101_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.bb101

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond250.preheader:                          ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %bits.0)
  %cmp2512214 = icmp ult i32 %bits.0, 14
  br i1 %cmp2512214, label %do.body254, label %while.cond250.preheader.do.end269_crit_edge

while.cond250.preheader.do.end269_crit_edge:      ; preds = %while.cond250.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end269

while.cond64.preheader:                           ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bits.0)
  %cmp652416 = icmp ult i32 %bits.0, 32
  br i1 %cmp652416, label %do.body68, label %while.cond64.preheader.do.end83_crit_edge

while.cond64.preheader.do.end83_crit_edge:        ; preds = %while.cond64.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end83

sw.bb:                                            ; preds = %for.cond
  %24 = ptrtoint ptr %wrap1071 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %wrap1071, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %cmp16 = icmp eq i32 %25, 0
  br i1 %cmp16, label %if.then17, label %while.cond.preheader

while.cond.preheader:                             ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bits.0)
  %cmp212433 = icmp ult i32 %bits.0, 16
  br i1 %cmp212433, label %do.body22, label %while.cond.preheader.do.end30_crit_edge

while.cond.preheader.do.end30_crit_edge:          ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

if.then17:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 12, ptr %1, align 4
  br label %for.cond.backedge

do.body22:                                        ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.0)
  %cmp23 = icmp eq i32 %have.0, 0
  br i1 %cmp23, label %do.body22.do.body1135_crit_edge, label %if.end25

do.body22.do.body1135_crit_edge:                  ; preds = %do.body22
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end25:                                         ; preds = %do.body22
  %dec = add i32 %have.0, -1
  %incdec.ptr = getelementptr i8, ptr %next.0, i32 1
  %27 = ptrtoint ptr %next.0 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %next.0, align 1
  %conv = zext i8 %28 to i32
  %shl = shl nuw nsw i32 %conv, %bits.0
  %add = add i32 %shl, %hold.0
  %add26 = add nuw nsw i32 %bits.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bits.0)
  %cmp21 = icmp ult i32 %bits.0, 8
  br i1 %cmp21, label %do.body22.1, label %if.end25.do.end30_crit_edge

if.end25.do.end30_crit_edge:                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end30

do.body22.1:                                      ; preds = %if.end25
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp23.1 = icmp eq i32 %dec, 0
  br i1 %cmp23.1, label %do.body22.1.do.body1135_crit_edge, label %if.end25.1

do.body22.1.do.body1135_crit_edge:                ; preds = %do.body22.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end25.1:                                       ; preds = %do.body22.1
  call void @__sanitizer_cov_trace_pc() #10
  %dec.1 = add i32 %have.0, -2
  %incdec.ptr.1 = getelementptr i8, ptr %next.0, i32 2
  %29 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %incdec.ptr, align 1
  %conv.1 = zext i8 %30 to i32
  %shl.1 = shl nuw nsw i32 %conv.1, %add26
  %add.1 = add i32 %shl.1, %add
  %add26.1 = add nuw nsw i32 %bits.0, 16
  br label %do.end30

do.end30:                                         ; preds = %if.end25.1, %if.end25.do.end30_crit_edge, %while.cond.preheader.do.end30_crit_edge
  %next.1.lcssa = phi ptr [ %next.0, %while.cond.preheader.do.end30_crit_edge ], [ %incdec.ptr, %if.end25.do.end30_crit_edge ], [ %incdec.ptr.1, %if.end25.1 ]
  %have.1.lcssa = phi i32 [ %have.0, %while.cond.preheader.do.end30_crit_edge ], [ %dec, %if.end25.do.end30_crit_edge ], [ %dec.1, %if.end25.1 ]
  %hold.1.lcssa = phi i32 [ %hold.0, %while.cond.preheader.do.end30_crit_edge ], [ %add, %if.end25.do.end30_crit_edge ], [ %add.1, %if.end25.1 ]
  %bits.1.lcssa = phi i32 [ %bits.0, %while.cond.preheader.do.end30_crit_edge ], [ %add26, %if.end25.do.end30_crit_edge ], [ %add26.1, %if.end25.1 ]
  %and = shl i32 %hold.1.lcssa, 8
  %shl31 = and i32 %and, 65280
  %shr = lshr i32 %hold.1.lcssa, 8
  %add32 = add nuw nsw i32 %shl31, %shr
  %rem = urem i32 %add32, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %if.end35, label %if.then33

if.then33:                                        ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %msg1122 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @.str, ptr %msg1122, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 27, ptr %1, align 4
  br label %for.cond.backedge

if.end35:                                         ; preds = %do.end30
  %and36 = and i32 %hold.1.lcssa, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %and36)
  %cmp37.not = icmp eq i32 %and36, 8
  br i1 %cmp37.not, label %do.body43, label %if.then39

if.then39:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %33 = ptrtoint ptr %msg1122 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @.str.1, ptr %msg1122, align 4
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 27, ptr %1, align 4
  br label %for.cond.backedge

do.body43:                                        ; preds = %if.end35
  %shr44 = lshr i32 %hold.1.lcssa, 4
  %and47 = and i32 %shr44, 15
  %add48 = add nuw nsw i32 %and47, 8
  %35 = ptrtoint ptr %wbits to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wbits, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add48, i32 %36)
  %cmp49 = icmp ugt i32 %add48, %36
  br i1 %cmp49, label %if.then51, label %if.end54

if.then51:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  %sub = add i32 %bits.1.lcssa, -4
  %37 = ptrtoint ptr %msg1122 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @.str.2, ptr %msg1122, align 4
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 27, ptr %1, align 4
  br label %for.cond.backedge

if.end54:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #10
  %shl55 = shl nuw nsw i32 256, %and47
  %39 = ptrtoint ptr %dmax to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %shl55, ptr %dmax, align 4
  %40 = ptrtoint ptr %check1100 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 1, ptr %check1100, align 4
  %41 = ptrtoint ptr %adler1105 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %adler1105, align 4
  %42 = and i32 %hold.1.lcssa, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %tobool57.not = icmp eq i32 %42, 0
  %cond = select i1 %tobool57.not, i32 11, i32 9
  %43 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %cond, ptr %1, align 4
  br label %for.cond.backedge

do.body68:                                        ; preds = %while.cond64.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.0)
  %cmp69 = icmp eq i32 %have.0, 0
  br i1 %cmp69, label %do.body68.do.body1135_crit_edge, label %if.end72

do.body68.do.body1135_crit_edge:                  ; preds = %do.body68
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end72:                                         ; preds = %do.body68
  %dec73 = add i32 %have.0, -1
  %incdec.ptr74 = getelementptr i8, ptr %next.0, i32 1
  %44 = ptrtoint ptr %next.0 to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %next.0, align 1
  %conv75 = zext i8 %45 to i32
  %shl76 = shl i32 %conv75, %bits.0
  %add77 = add i32 %shl76, %hold.0
  %add78 = add nuw nsw i32 %bits.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %bits.0)
  %cmp65 = icmp ult i32 %bits.0, 24
  br i1 %cmp65, label %do.body68.1, label %if.end72.do.end83_crit_edge

if.end72.do.end83_crit_edge:                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end83

do.body68.1:                                      ; preds = %if.end72
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec73)
  %cmp69.1 = icmp eq i32 %dec73, 0
  br i1 %cmp69.1, label %do.body68.1.do.body1135_crit_edge, label %if.end72.1

do.body68.1.do.body1135_crit_edge:                ; preds = %do.body68.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end72.1:                                       ; preds = %do.body68.1
  %dec73.1 = add i32 %have.0, -2
  %incdec.ptr74.1 = getelementptr i8, ptr %next.0, i32 2
  %46 = ptrtoint ptr %incdec.ptr74 to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %incdec.ptr74, align 1
  %conv75.1 = zext i8 %47 to i32
  %shl76.1 = shl i32 %conv75.1, %add78
  %add77.1 = add i32 %shl76.1, %add77
  %add78.1 = add nuw nsw i32 %bits.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bits.0)
  %cmp65.1 = icmp ult i32 %bits.0, 16
  br i1 %cmp65.1, label %do.body68.2, label %if.end72.1.do.end83_crit_edge

if.end72.1.do.end83_crit_edge:                    ; preds = %if.end72.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end83

do.body68.2:                                      ; preds = %if.end72.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec73.1)
  %cmp69.2 = icmp eq i32 %dec73.1, 0
  br i1 %cmp69.2, label %do.body68.2.do.body1135_crit_edge, label %if.end72.2

do.body68.2.do.body1135_crit_edge:                ; preds = %do.body68.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end72.2:                                       ; preds = %do.body68.2
  %dec73.2 = add i32 %have.0, -3
  %incdec.ptr74.2 = getelementptr i8, ptr %next.0, i32 3
  %48 = ptrtoint ptr %incdec.ptr74.1 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %incdec.ptr74.1, align 1
  %conv75.2 = zext i8 %49 to i32
  %shl76.2 = shl i32 %conv75.2, %add78.1
  %add77.2 = add i32 %shl76.2, %add77.1
  %add78.2 = add nuw nsw i32 %bits.0, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bits.0)
  %cmp65.2 = icmp ult i32 %bits.0, 8
  br i1 %cmp65.2, label %do.body68.3, label %if.end72.2.do.end83_crit_edge

if.end72.2.do.end83_crit_edge:                    ; preds = %if.end72.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end83

do.body68.3:                                      ; preds = %if.end72.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec73.2)
  %cmp69.3 = icmp eq i32 %dec73.2, 0
  br i1 %cmp69.3, label %do.body68.3.do.body1135_crit_edge, label %if.end72.3

do.body68.3.do.body1135_crit_edge:                ; preds = %do.body68.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end72.3:                                       ; preds = %do.body68.3
  call void @__sanitizer_cov_trace_pc() #10
  %dec73.3 = add i32 %have.0, -4
  %incdec.ptr74.3 = getelementptr i8, ptr %next.0, i32 4
  %50 = ptrtoint ptr %incdec.ptr74.2 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %incdec.ptr74.2, align 1
  %conv75.3 = zext i8 %51 to i32
  %shl76.3 = shl i32 %conv75.3, %add78.2
  %add77.3 = add i32 %shl76.3, %add77.2
  br label %do.end83

do.end83:                                         ; preds = %if.end72.3, %if.end72.2.do.end83_crit_edge, %if.end72.1.do.end83_crit_edge, %if.end72.do.end83_crit_edge, %while.cond64.preheader.do.end83_crit_edge
  %next.2.lcssa = phi ptr [ %next.0, %while.cond64.preheader.do.end83_crit_edge ], [ %incdec.ptr74, %if.end72.do.end83_crit_edge ], [ %incdec.ptr74.1, %if.end72.1.do.end83_crit_edge ], [ %incdec.ptr74.2, %if.end72.2.do.end83_crit_edge ], [ %incdec.ptr74.3, %if.end72.3 ]
  %have.2.lcssa = phi i32 [ %have.0, %while.cond64.preheader.do.end83_crit_edge ], [ %dec73, %if.end72.do.end83_crit_edge ], [ %dec73.1, %if.end72.1.do.end83_crit_edge ], [ %dec73.2, %if.end72.2.do.end83_crit_edge ], [ %dec73.3, %if.end72.3 ]
  %hold.2.lcssa = phi i32 [ %hold.0, %while.cond64.preheader.do.end83_crit_edge ], [ %add77, %if.end72.do.end83_crit_edge ], [ %add77.1, %if.end72.1.do.end83_crit_edge ], [ %add77.2, %if.end72.2.do.end83_crit_edge ], [ %add77.3, %if.end72.3 ]
  %add94 = tail call i32 @llvm.bswap.i32(i32 %hold.2.lcssa)
  %52 = ptrtoint ptr %check1100 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %add94, ptr %check1100, align 4
  %53 = ptrtoint ptr %adler1105 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %add94, ptr %adler1105, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 10, ptr %1, align 4
  br label %sw.bb101

sw.bb101:                                         ; preds = %do.end83, %for.cond.sw.bb101_crit_edge
  %next.3 = phi ptr [ %next.0, %for.cond.sw.bb101_crit_edge ], [ %next.2.lcssa, %do.end83 ]
  %have.3 = phi i32 [ %have.0, %for.cond.sw.bb101_crit_edge ], [ %have.2.lcssa, %do.end83 ]
  %hold.3 = phi i32 [ %hold.0, %for.cond.sw.bb101_crit_edge ], [ 0, %do.end83 ]
  %bits.3 = phi i32 [ %bits.0, %for.cond.sw.bb101_crit_edge ], [ 0, %do.end83 ]
  %55 = ptrtoint ptr %havedict to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %havedict, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %56)
  %cmp102 = icmp eq i32 %56, 0
  br i1 %cmp102, label %do.body105, label %if.end114

do.body105:                                       ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #10
  %57 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %put.0, ptr %next_out, align 4
  %58 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %left.0, ptr %avail_out, align 4
  %59 = ptrtoint ptr %strm to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %next.3, ptr %strm, align 4
  %60 = ptrtoint ptr %avail_in12 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %have.3, ptr %avail_in12, align 4
  %61 = ptrtoint ptr %hold13 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %hold.3, ptr %hold13, align 4
  %62 = ptrtoint ptr %bits14 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %bits.3, ptr %bits14, align 4
  br label %cleanup

if.end114:                                        ; preds = %sw.bb101
  call void @__sanitizer_cov_trace_pc() #10
  %63 = ptrtoint ptr %check1100 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 1, ptr %check1100, align 4
  %64 = ptrtoint ptr %adler1105 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 1, ptr %adler1105, align 4
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 11, ptr %1, align 4
  br label %sw.bb119

sw.bb119:                                         ; preds = %if.end114, %for.cond.sw.bb119_crit_edge
  %next.4 = phi ptr [ %next.0, %for.cond.sw.bb119_crit_edge ], [ %next.3, %if.end114 ]
  %have.4 = phi i32 [ %have.0, %for.cond.sw.bb119_crit_edge ], [ %have.3, %if.end114 ]
  %hold.4 = phi i32 [ %hold.0, %for.cond.sw.bb119_crit_edge ], [ %hold.3, %if.end114 ]
  %bits.4 = phi i32 [ %bits.0, %for.cond.sw.bb119_crit_edge ], [ %bits.3, %if.end114 ]
  br i1 %cmp120, label %sw.bb119.do.body1135.loopexit2999_crit_edge, label %sw.bb119.do.end127_crit_edge

sw.bb119.do.end127_crit_edge:                     ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end127

sw.bb119.do.body1135.loopexit2999_crit_edge:      ; preds = %sw.bb119
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135.loopexit2999

do.end127:                                        ; preds = %sw.bb119.do.end127_crit_edge, %for.cond.do.end127_crit_edge
  %next.5 = phi ptr [ %next.0, %for.cond.do.end127_crit_edge ], [ %next.4, %sw.bb119.do.end127_crit_edge ]
  %have.5 = phi i32 [ %have.0, %for.cond.do.end127_crit_edge ], [ %have.4, %sw.bb119.do.end127_crit_edge ]
  %hold.5 = phi i32 [ %hold.0, %for.cond.do.end127_crit_edge ], [ %hold.4, %sw.bb119.do.end127_crit_edge ]
  %bits.5 = phi i32 [ %bits.0, %for.cond.do.end127_crit_edge ], [ %bits.4, %sw.bb119.do.end127_crit_edge ]
  %66 = ptrtoint ptr %last128 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %last128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool129.not = icmp eq i32 %67, 0
  br i1 %tobool129.not, label %while.cond141.preheader, label %do.body131

while.cond141.preheader:                          ; preds = %do.end127
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bits.5)
  %cmp1422424 = icmp ult i32 %bits.5, 3
  br i1 %cmp1422424, label %do.body145, label %while.cond141.preheader.do.end160_crit_edge

while.cond141.preheader.do.end160_crit_edge:      ; preds = %while.cond141.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end160

do.body131:                                       ; preds = %do.end127
  call void @__sanitizer_cov_trace_pc() #10
  %and132 = and i32 %bits.5, 7
  %shr133 = lshr i32 %hold.5, %and132
  %sub135 = and i32 %bits.5, -8
  %68 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 24, ptr %1, align 4
  br label %for.cond.backedge

do.body145:                                       ; preds = %while.cond141.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.5)
  %cmp146 = icmp eq i32 %have.5, 0
  br i1 %cmp146, label %do.body145.do.body1135_crit_edge, label %if.end149

do.body145.do.body1135_crit_edge:                 ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end149:                                        ; preds = %do.body145
  call void @__sanitizer_cov_trace_pc() #10
  %dec150 = add i32 %have.5, -1
  %incdec.ptr151 = getelementptr i8, ptr %next.5, i32 1
  %69 = ptrtoint ptr %next.5 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %next.5, align 1
  %conv152 = zext i8 %70 to i32
  %shl153 = shl nuw nsw i32 %conv152, %bits.5
  %add154 = add i32 %shl153, %hold.5
  %add155 = add nuw nsw i32 %bits.5, 8
  br label %do.end160

do.end160:                                        ; preds = %if.end149, %while.cond141.preheader.do.end160_crit_edge
  %next.6.lcssa = phi ptr [ %incdec.ptr151, %if.end149 ], [ %next.5, %while.cond141.preheader.do.end160_crit_edge ]
  %have.6.lcssa = phi i32 [ %dec150, %if.end149 ], [ %have.5, %while.cond141.preheader.do.end160_crit_edge ]
  %hold.6.lcssa = phi i32 [ %add154, %if.end149 ], [ %hold.5, %while.cond141.preheader.do.end160_crit_edge ]
  %bits.6.lcssa = phi i32 [ %add155, %if.end149 ], [ %bits.5, %while.cond141.preheader.do.end160_crit_edge ]
  %and161 = and i32 %hold.6.lcssa, 1
  %71 = ptrtoint ptr %last128 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %and161, ptr %last128, align 4
  %shr164 = lshr i32 %hold.6.lcssa, 1
  %and168 = and i32 %shr164, 3
  %72 = zext i32 %and168 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %and168, label %do.end160.unreachabledefault [
    i32 0, label %do.end160.do.body178_crit_edge
    i32 1, label %sw.bb171
    i32 2, label %sw.bb173
    i32 3, label %sw.bb175
  ]

do.end160.do.body178_crit_edge:                   ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body178

sw.bb171:                                         ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %lencode to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @zlib_fixedtables.lenfix, ptr %lencode, align 4
  %74 = ptrtoint ptr %lenbits to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 9, ptr %lenbits, align 4
  %75 = ptrtoint ptr %distcode to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @zlib_fixedtables.distfix, ptr %distcode, align 4
  %76 = ptrtoint ptr %distbits to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 5, ptr %distbits, align 4
  br label %do.body178

sw.bb173:                                         ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body178

sw.bb175:                                         ; preds = %do.end160
  call void @__sanitizer_cov_trace_pc() #10
  %77 = ptrtoint ptr %msg1122 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @.str.3, ptr %msg1122, align 4
  br label %do.body178

do.end160.unreachabledefault:                     ; preds = %do.end160
  unreachable

do.body178:                                       ; preds = %sw.bb175, %sw.bb173, %sw.bb171, %do.end160.do.body178_crit_edge
  %.sink = phi i32 [ 18, %sw.bb171 ], [ 15, %sw.bb173 ], [ 27, %sw.bb175 ], [ 13, %do.end160.do.body178_crit_edge ]
  %78 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %.sink, ptr %1, align 4
  %shr179 = lshr i32 %hold.6.lcssa, 3
  %sub180 = add i32 %bits.6.lcssa, -3
  br label %for.cond.backedge

do.body184:                                       ; preds = %for.cond
  %and185 = and i32 %bits.0, 7
  %shr186 = lshr i32 %hold.0, %and185
  %sub188 = and i32 %bits.0, -8
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %sub188)
  %cmp1932407 = icmp ult i32 %sub188, 32
  br i1 %cmp1932407, label %do.body196, label %do.body184.do.end211_crit_edge

do.body184.do.end211_crit_edge:                   ; preds = %do.body184
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end211

do.body196:                                       ; preds = %do.body184
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.0)
  %cmp197 = icmp eq i32 %have.0, 0
  br i1 %cmp197, label %do.body196.do.body1135_crit_edge, label %if.end200

do.body196.do.body1135_crit_edge:                 ; preds = %do.body196
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end200:                                        ; preds = %do.body196
  %dec201 = add i32 %have.0, -1
  %incdec.ptr202 = getelementptr i8, ptr %next.0, i32 1
  %79 = ptrtoint ptr %next.0 to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %next.0, align 1
  %conv203 = zext i8 %80 to i32
  %shl204 = shl i32 %conv203, %sub188
  %add205 = add i32 %shl204, %shr186
  %add206 = add nuw nsw i32 %sub188, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %sub188)
  %cmp193 = icmp ult i32 %sub188, 24
  br i1 %cmp193, label %do.body196.1, label %if.end200.do.end211_crit_edge

if.end200.do.end211_crit_edge:                    ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end211

do.body196.1:                                     ; preds = %if.end200
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec201)
  %cmp197.1 = icmp eq i32 %dec201, 0
  br i1 %cmp197.1, label %do.body196.1.do.body1135_crit_edge, label %if.end200.1

do.body196.1.do.body1135_crit_edge:               ; preds = %do.body196.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end200.1:                                      ; preds = %do.body196.1
  %dec201.1 = add i32 %have.0, -2
  %incdec.ptr202.1 = getelementptr i8, ptr %next.0, i32 2
  %81 = ptrtoint ptr %incdec.ptr202 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %incdec.ptr202, align 1
  %conv203.1 = zext i8 %82 to i32
  %shl204.1 = shl i32 %conv203.1, %add206
  %add205.1 = add i32 %shl204.1, %add205
  %add206.1 = add nuw nsw i32 %sub188, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %sub188)
  %cmp193.1 = icmp ult i32 %sub188, 16
  br i1 %cmp193.1, label %do.body196.2, label %if.end200.1.do.end211_crit_edge

if.end200.1.do.end211_crit_edge:                  ; preds = %if.end200.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end211

do.body196.2:                                     ; preds = %if.end200.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec201.1)
  %cmp197.2 = icmp eq i32 %dec201.1, 0
  br i1 %cmp197.2, label %do.body196.2.do.body1135_crit_edge, label %if.end200.2

do.body196.2.do.body1135_crit_edge:               ; preds = %do.body196.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end200.2:                                      ; preds = %do.body196.2
  %dec201.2 = add i32 %have.0, -3
  %incdec.ptr202.2 = getelementptr i8, ptr %next.0, i32 3
  %83 = ptrtoint ptr %incdec.ptr202.1 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %incdec.ptr202.1, align 1
  %conv203.2 = zext i8 %84 to i32
  %shl204.2 = shl i32 %conv203.2, %add206.1
  %add205.2 = add i32 %shl204.2, %add205.1
  %add206.2 = add nuw nsw i32 %sub188, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub188)
  %cmp193.2 = icmp eq i32 %sub188, 0
  br i1 %cmp193.2, label %do.body196.3, label %if.end200.2.do.end211_crit_edge

if.end200.2.do.end211_crit_edge:                  ; preds = %if.end200.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end211

do.body196.3:                                     ; preds = %if.end200.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec201.2)
  %cmp197.3 = icmp eq i32 %dec201.2, 0
  br i1 %cmp197.3, label %do.body196.3.do.body1135_crit_edge, label %if.end200.3

do.body196.3.do.body1135_crit_edge:               ; preds = %do.body196.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end200.3:                                      ; preds = %do.body196.3
  call void @__sanitizer_cov_trace_pc() #10
  %dec201.3 = add i32 %have.0, -4
  %incdec.ptr202.3 = getelementptr i8, ptr %next.0, i32 4
  %85 = ptrtoint ptr %incdec.ptr202.2 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %incdec.ptr202.2, align 1
  %conv203.3 = zext i8 %86 to i32
  %shl204.3 = shl i32 %conv203.3, %add206.2
  %add205.3 = add i32 %shl204.3, %add205.2
  %add206.3 = add nuw nsw i32 %sub188, 32
  br label %do.end211

do.end211:                                        ; preds = %if.end200.3, %if.end200.2.do.end211_crit_edge, %if.end200.1.do.end211_crit_edge, %if.end200.do.end211_crit_edge, %do.body184.do.end211_crit_edge
  %next.7.lcssa = phi ptr [ %next.0, %do.body184.do.end211_crit_edge ], [ %incdec.ptr202, %if.end200.do.end211_crit_edge ], [ %incdec.ptr202.1, %if.end200.1.do.end211_crit_edge ], [ %incdec.ptr202.2, %if.end200.2.do.end211_crit_edge ], [ %incdec.ptr202.3, %if.end200.3 ]
  %have.7.lcssa = phi i32 [ %have.0, %do.body184.do.end211_crit_edge ], [ %dec201, %if.end200.do.end211_crit_edge ], [ %dec201.1, %if.end200.1.do.end211_crit_edge ], [ %dec201.2, %if.end200.2.do.end211_crit_edge ], [ %dec201.3, %if.end200.3 ]
  %hold.7.lcssa = phi i32 [ %shr186, %do.body184.do.end211_crit_edge ], [ %add205, %if.end200.do.end211_crit_edge ], [ %add205.1, %if.end200.1.do.end211_crit_edge ], [ %add205.2, %if.end200.2.do.end211_crit_edge ], [ %add205.3, %if.end200.3 ]
  %bits.7.lcssa = phi i32 [ %sub188, %do.body184.do.end211_crit_edge ], [ %add206, %if.end200.do.end211_crit_edge ], [ %add206.1, %if.end200.1.do.end211_crit_edge ], [ %add206.2, %if.end200.2.do.end211_crit_edge ], [ %add206.3, %if.end200.3 ]
  %and212 = and i32 %hold.7.lcssa, 65535
  %87 = xor i32 %hold.7.lcssa, -1
  %xor = lshr i32 %87, 16
  call void @__sanitizer_cov_trace_cmp4(i32 %and212, i32 %xor)
  %cmp214.not = icmp eq i32 %and212, %xor
  br i1 %cmp214.not, label %if.end219, label %if.then216

if.then216:                                       ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #10
  %88 = ptrtoint ptr %msg1122 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @.str.4, ptr %msg1122, align 4
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 27, ptr %1, align 4
  br label %for.cond.backedge

if.end219:                                        ; preds = %do.end211
  call void @__sanitizer_cov_trace_pc() #10
  %90 = ptrtoint ptr %length1065 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %and212, ptr %length1065, align 4
  %91 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 14, ptr %1, align 4
  br label %sw.bb225

sw.bb225thread-pre-split:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %92 = ptrtoint ptr %length1065 to i32
  call void @__asan_load4_noabort(i32 %92)
  %.pr = load i32, ptr %length1065, align 4
  br label %sw.bb225

sw.bb225:                                         ; preds = %sw.bb225thread-pre-split, %if.end219
  %93 = phi i32 [ %.pr, %sw.bb225thread-pre-split ], [ %and212, %if.end219 ]
  %next.8 = phi ptr [ %next.0, %sw.bb225thread-pre-split ], [ %next.7.lcssa, %if.end219 ]
  %have.8 = phi i32 [ %have.0, %sw.bb225thread-pre-split ], [ %have.7.lcssa, %if.end219 ]
  %hold.8 = phi i32 [ %hold.0, %sw.bb225thread-pre-split ], [ 0, %if.end219 ]
  %bits.8 = phi i32 [ %bits.0, %sw.bb225thread-pre-split ], [ 0, %if.end219 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %93)
  %tobool227.not = icmp eq i32 %93, 0
  br i1 %tobool227.not, label %if.end246, label %if.then228

if.then228:                                       ; preds = %sw.bb225
  %94 = tail call i32 @llvm.umin.i32(i32 %93, i32 %have.8)
  %95 = tail call i32 @llvm.umin.i32(i32 %94, i32 %left.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %cmp237 = icmp eq i32 %95, 0
  br i1 %cmp237, label %if.then228.do.body1135.loopexit2999_crit_edge, label %if.end240

if.then228.do.body1135.loopexit2999_crit_edge:    ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135.loopexit2999

if.end240:                                        ; preds = %if.then228
  call void @__sanitizer_cov_trace_pc() #10
  %96 = call ptr @memcpy(ptr %put.0, ptr %next.8, i32 %95)
  %sub241 = sub i32 %have.8, %95
  %add.ptr = getelementptr i8, ptr %next.8, i32 %95
  %sub242 = sub i32 %left.0, %95
  %add.ptr243 = getelementptr i8, ptr %put.0, i32 %95
  %97 = ptrtoint ptr %length1065 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %length1065, align 4
  %sub245 = sub i32 %98, %95
  store i32 %sub245, ptr %length1065, align 4
  br label %for.cond.backedge

if.end246:                                        ; preds = %sw.bb225
  call void @__sanitizer_cov_trace_pc() #10
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 11, ptr %1, align 4
  br label %for.cond.backedge

do.body254:                                       ; preds = %while.cond250.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.0)
  %cmp255 = icmp eq i32 %have.0, 0
  br i1 %cmp255, label %do.body254.do.body1135_crit_edge, label %if.end258

do.body254.do.body1135_crit_edge:                 ; preds = %do.body254
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end258:                                        ; preds = %do.body254
  %dec259 = add i32 %have.0, -1
  %incdec.ptr260 = getelementptr i8, ptr %next.0, i32 1
  %100 = ptrtoint ptr %next.0 to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %next.0, align 1
  %conv261 = zext i8 %101 to i32
  %shl262 = shl nuw nsw i32 %conv261, %bits.0
  %add263 = add i32 %shl262, %hold.0
  %add264 = add nuw nsw i32 %bits.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %bits.0)
  %cmp251 = icmp ult i32 %bits.0, 6
  br i1 %cmp251, label %do.body254.1, label %if.end258.do.end269_crit_edge

if.end258.do.end269_crit_edge:                    ; preds = %if.end258
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end269

do.body254.1:                                     ; preds = %if.end258
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec259)
  %cmp255.1 = icmp eq i32 %dec259, 0
  br i1 %cmp255.1, label %do.body254.1.do.body1135_crit_edge, label %if.end258.1

do.body254.1.do.body1135_crit_edge:               ; preds = %do.body254.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end258.1:                                      ; preds = %do.body254.1
  call void @__sanitizer_cov_trace_pc() #10
  %dec259.1 = add i32 %have.0, -2
  %incdec.ptr260.1 = getelementptr i8, ptr %next.0, i32 2
  %102 = ptrtoint ptr %incdec.ptr260 to i32
  call void @__asan_load1_noabort(i32 %102)
  %103 = load i8, ptr %incdec.ptr260, align 1
  %conv261.1 = zext i8 %103 to i32
  %shl262.1 = shl nuw nsw i32 %conv261.1, %add264
  %add263.1 = add i32 %shl262.1, %add263
  %add264.1 = add nuw nsw i32 %bits.0, 16
  br label %do.end269

do.end269:                                        ; preds = %if.end258.1, %if.end258.do.end269_crit_edge, %while.cond250.preheader.do.end269_crit_edge
  %next.9.lcssa = phi ptr [ %next.0, %while.cond250.preheader.do.end269_crit_edge ], [ %incdec.ptr260, %if.end258.do.end269_crit_edge ], [ %incdec.ptr260.1, %if.end258.1 ]
  %have.9.lcssa = phi i32 [ %have.0, %while.cond250.preheader.do.end269_crit_edge ], [ %dec259, %if.end258.do.end269_crit_edge ], [ %dec259.1, %if.end258.1 ]
  %hold.9.lcssa = phi i32 [ %hold.0, %while.cond250.preheader.do.end269_crit_edge ], [ %add263, %if.end258.do.end269_crit_edge ], [ %add263.1, %if.end258.1 ]
  %bits.9.lcssa = phi i32 [ %bits.0, %while.cond250.preheader.do.end269_crit_edge ], [ %add264, %if.end258.do.end269_crit_edge ], [ %add264.1, %if.end258.1 ]
  %and270 = and i32 %hold.9.lcssa, 31
  %add271 = add nuw nsw i32 %and270, 257
  %104 = ptrtoint ptr %nlen to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %add271, ptr %nlen, align 4
  %shr273 = lshr i32 %hold.9.lcssa, 5
  %and277 = and i32 %shr273, 31
  %add278 = add nuw nsw i32 %and277, 1
  %105 = ptrtoint ptr %ndist to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %add278, ptr %ndist, align 4
  %shr280 = lshr i32 %hold.9.lcssa, 10
  %and284 = and i32 %shr280, 15
  %add285 = add nuw nsw i32 %and284, 4
  %106 = ptrtoint ptr %ncode to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %add285, ptr %ncode, align 4
  %shr287 = lshr i32 %hold.9.lcssa, 14
  %sub288 = add i32 %bits.9.lcssa, -14
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %and270)
  %cmp292 = icmp ugt i32 %and270, 29
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %and277)
  %cmp296 = icmp ugt i32 %and277, 29
  %or.cond1848 = select i1 %cmp292, i1 true, i1 %cmp296
  br i1 %or.cond1848, label %if.then298, label %if.end301

if.then298:                                       ; preds = %do.end269
  call void @__sanitizer_cov_trace_pc() #10
  %107 = ptrtoint ptr %msg1122 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr @.str.5, ptr %msg1122, align 4
  %108 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 27, ptr %1, align 4
  br label %for.cond.backedge

if.end301:                                        ; preds = %do.end269
  call void @__sanitizer_cov_trace_pc() #10
  %109 = ptrtoint ptr %have302 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %have302, align 4
  %110 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 16, ptr %1, align 4
  br label %sw.bb304

sw.bb304:                                         ; preds = %if.end301, %for.cond.sw.bb304_crit_edge
  %next.10 = phi ptr [ %next.0, %for.cond.sw.bb304_crit_edge ], [ %next.9.lcssa, %if.end301 ]
  %have.10 = phi i32 [ %have.0, %for.cond.sw.bb304_crit_edge ], [ %have.9.lcssa, %if.end301 ]
  %hold.10 = phi i32 [ %hold.0, %for.cond.sw.bb304_crit_edge ], [ %shr287, %if.end301 ]
  %bits.10 = phi i32 [ %bits.0, %for.cond.sw.bb304_crit_edge ], [ %sub288, %if.end301 ]
  %111 = ptrtoint ptr %have302 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %have302, align 4
  %113 = ptrtoint ptr %ncode to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %ncode, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %112, i32 %114)
  %cmp3082232 = icmp ult i32 %112, %114
  br i1 %cmp3082232, label %sw.bb304.while.cond312.preheader_crit_edge, label %sw.bb304.while.cond342.preheader_crit_edge

sw.bb304.while.cond342.preheader_crit_edge:       ; preds = %sw.bb304
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond342.preheader

sw.bb304.while.cond312.preheader_crit_edge:       ; preds = %sw.bb304
  br label %while.cond312.preheader

while.cond342.preheader:                          ; preds = %do.end331.while.cond342.preheader_crit_edge, %sw.bb304.while.cond342.preheader_crit_edge
  %next.11.lcssa = phi ptr [ %next.10, %sw.bb304.while.cond342.preheader_crit_edge ], [ %next.12.lcssa, %do.end331.while.cond342.preheader_crit_edge ]
  %have.11.lcssa = phi i32 [ %have.10, %sw.bb304.while.cond342.preheader_crit_edge ], [ %have.12.lcssa, %do.end331.while.cond342.preheader_crit_edge ]
  %hold.11.lcssa = phi i32 [ %hold.10, %sw.bb304.while.cond342.preheader_crit_edge ], [ %shr337, %do.end331.while.cond342.preheader_crit_edge ]
  %bits.11.lcssa = phi i32 [ %bits.10, %sw.bb304.while.cond342.preheader_crit_edge ], [ %sub338, %do.end331.while.cond342.preheader_crit_edge ]
  %.lcssa = phi i32 [ %112, %sw.bb304.while.cond342.preheader_crit_edge ], [ %inc, %do.end331.while.cond342.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 19, i32 %.lcssa)
  %cmp3442243 = icmp ult i32 %.lcssa, 19
  br i1 %cmp3442243, label %while.cond342.preheader.while.body346_crit_edge, label %while.cond342.preheader.while.end353_crit_edge

while.cond342.preheader.while.end353_crit_edge:   ; preds = %while.cond342.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end353

while.cond342.preheader.while.body346_crit_edge:  ; preds = %while.cond342.preheader
  br label %while.body346

while.cond312.preheader:                          ; preds = %do.end331.while.cond312.preheader_crit_edge, %sw.bb304.while.cond312.preheader_crit_edge
  %115 = phi i32 [ %inc, %do.end331.while.cond312.preheader_crit_edge ], [ %112, %sw.bb304.while.cond312.preheader_crit_edge ]
  %bits.112236 = phi i32 [ %sub338, %do.end331.while.cond312.preheader_crit_edge ], [ %bits.10, %sw.bb304.while.cond312.preheader_crit_edge ]
  %hold.112235 = phi i32 [ %shr337, %do.end331.while.cond312.preheader_crit_edge ], [ %hold.10, %sw.bb304.while.cond312.preheader_crit_edge ]
  %have.112234 = phi i32 [ %have.12.lcssa, %do.end331.while.cond312.preheader_crit_edge ], [ %have.10, %sw.bb304.while.cond312.preheader_crit_edge ]
  %next.112233 = phi ptr [ %next.12.lcssa, %do.end331.while.cond312.preheader_crit_edge ], [ %next.10, %sw.bb304.while.cond312.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %bits.112236)
  %cmp3132223 = icmp ult i32 %bits.112236, 3
  br i1 %cmp3132223, label %do.body316, label %while.cond312.preheader.do.end331_crit_edge

while.cond312.preheader.do.end331_crit_edge:      ; preds = %while.cond312.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end331

do.body316:                                       ; preds = %while.cond312.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.112234)
  %cmp317 = icmp eq i32 %have.112234, 0
  br i1 %cmp317, label %do.body316.do.body1135_crit_edge, label %if.end320

do.body316.do.body1135_crit_edge:                 ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end320:                                        ; preds = %do.body316
  call void @__sanitizer_cov_trace_pc() #10
  %dec321 = add i32 %have.112234, -1
  %incdec.ptr322 = getelementptr i8, ptr %next.112233, i32 1
  %116 = ptrtoint ptr %next.112233 to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %next.112233, align 1
  %conv323 = zext i8 %117 to i32
  %shl324 = shl nuw nsw i32 %conv323, %bits.112236
  %add325 = add i32 %shl324, %hold.112235
  %add326 = add nuw nsw i32 %bits.112236, 8
  br label %do.end331

do.end331:                                        ; preds = %if.end320, %while.cond312.preheader.do.end331_crit_edge
  %next.12.lcssa = phi ptr [ %incdec.ptr322, %if.end320 ], [ %next.112233, %while.cond312.preheader.do.end331_crit_edge ]
  %have.12.lcssa = phi i32 [ %dec321, %if.end320 ], [ %have.112234, %while.cond312.preheader.do.end331_crit_edge ]
  %hold.12.lcssa = phi i32 [ %add325, %if.end320 ], [ %hold.112235, %while.cond312.preheader.do.end331_crit_edge ]
  %bits.12.lcssa = phi i32 [ %add326, %if.end320 ], [ %bits.112236, %while.cond312.preheader.do.end331_crit_edge ]
  %118 = trunc i32 %hold.12.lcssa to i16
  %conv333 = and i16 %118, 7
  %inc = add nuw i32 %115, 1
  %119 = ptrtoint ptr %have302 to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %inc, ptr %have302, align 4
  %arrayidx = getelementptr [19 x i16], ptr @zlib_inflate.order, i32 0, i32 %115
  %120 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %arrayidx, align 2
  %idxprom = zext i16 %121 to i32
  %arrayidx335 = getelementptr %struct.inflate_state, ptr %1, i32 0, i32 27, i32 %idxprom
  %122 = ptrtoint ptr %arrayidx335 to i32
  call void @__asan_store2_noabort(i32 %122)
  store i16 %conv333, ptr %arrayidx335, align 2
  %shr337 = lshr i32 %hold.12.lcssa, 3
  %sub338 = add i32 %bits.12.lcssa, -3
  %123 = ptrtoint ptr %ncode to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %ncode, align 4
  %cmp308 = icmp ult i32 %inc, %124
  br i1 %cmp308, label %do.end331.while.cond312.preheader_crit_edge, label %do.end331.while.cond342.preheader_crit_edge

do.end331.while.cond342.preheader_crit_edge:      ; preds = %do.end331
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond342.preheader

do.end331.while.cond312.preheader_crit_edge:      ; preds = %do.end331
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond312.preheader

while.body346:                                    ; preds = %while.body346.while.body346_crit_edge, %while.cond342.preheader.while.body346_crit_edge
  %125 = phi i32 [ %inc349, %while.body346.while.body346_crit_edge ], [ %.lcssa, %while.cond342.preheader.while.body346_crit_edge ]
  %inc349 = add i32 %125, 1
  %arrayidx350 = getelementptr [19 x i16], ptr @zlib_inflate.order, i32 0, i32 %125
  %126 = ptrtoint ptr %arrayidx350 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %arrayidx350, align 2
  %idxprom351 = zext i16 %127 to i32
  %arrayidx352 = getelementptr %struct.inflate_state, ptr %1, i32 0, i32 27, i32 %idxprom351
  %128 = ptrtoint ptr %arrayidx352 to i32
  call void @__asan_store2_noabort(i32 %128)
  store i16 0, ptr %arrayidx352, align 2
  %exitcond.not = icmp eq i32 %inc349, 19
  br i1 %exitcond.not, label %while.end353.loopexit, label %while.body346.while.body346_crit_edge

while.body346.while.body346_crit_edge:            ; preds = %while.body346
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body346

while.end353.loopexit:                            ; preds = %while.body346
  call void @__sanitizer_cov_trace_pc() #10
  %129 = ptrtoint ptr %have302 to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %inc349, ptr %have302, align 4
  br label %while.end353

while.end353:                                     ; preds = %while.end353.loopexit, %while.cond342.preheader.while.end353_crit_edge
  %130 = ptrtoint ptr %next354 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %codes, ptr %next354, align 4
  %131 = ptrtoint ptr %lencode to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr %codes, ptr %lencode, align 4
  %132 = ptrtoint ptr %lenbits to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 7, ptr %lenbits, align 4
  %call361 = tail call i32 @zlib_inflate_table(i32 noundef 0, ptr noundef %lens356, i32 noundef 19, ptr noundef %next354, ptr noundef %lenbits, ptr noundef %work) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call361)
  %tobool362.not = icmp eq i32 %call361, 0
  br i1 %tobool362.not, label %if.end366, label %if.then363

if.then363:                                       ; preds = %while.end353
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %msg1122 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr @.str.6, ptr %msg1122, align 4
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 27, ptr %1, align 4
  br label %for.cond.backedge

if.end366:                                        ; preds = %while.end353
  call void @__sanitizer_cov_trace_pc() #10
  %135 = ptrtoint ptr %have302 to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 0, ptr %have302, align 4
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 17, ptr %1, align 4
  br label %sw.bb369

sw.bb369:                                         ; preds = %if.end366, %for.cond.sw.bb369_crit_edge
  %next.13 = phi ptr [ %next.0, %for.cond.sw.bb369_crit_edge ], [ %next.11.lcssa, %if.end366 ]
  %have.13 = phi i32 [ %have.0, %for.cond.sw.bb369_crit_edge ], [ %have.11.lcssa, %if.end366 ]
  %hold.13 = phi i32 [ %hold.0, %for.cond.sw.bb369_crit_edge ], [ %hold.11.lcssa, %if.end366 ]
  %bits.13 = phi i32 [ %bits.0, %for.cond.sw.bb369_crit_edge ], [ %bits.11.lcssa, %if.end366 ]
  %ret.1 = phi i32 [ %ret.0, %for.cond.sw.bb369_crit_edge ], [ 0, %if.end366 ]
  %137 = ptrtoint ptr %have302 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %have302, align 4
  %139 = ptrtoint ptr %nlen to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %nlen, align 4
  %141 = ptrtoint ptr %ndist to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %ndist, align 4
  %add3742298 = add i32 %142, %140
  call void @__sanitizer_cov_trace_cmp4(i32 %138, i32 %add3742298)
  %cmp3752299 = icmp ult i32 %138, %add3742298
  br i1 %cmp3752299, label %sw.bb369.for.cond378.preheader_crit_edge, label %sw.bb369.while.end613_crit_edge

sw.bb369.while.end613_crit_edge:                  ; preds = %sw.bb369
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end613

sw.bb369.for.cond378.preheader_crit_edge:         ; preds = %sw.bb369
  br label %for.cond378.preheader

for.cond378.preheader:                            ; preds = %if.end612.for.cond378.preheader_crit_edge, %sw.bb369.for.cond378.preheader_crit_edge
  %add3742304 = phi i32 [ %add374, %if.end612.for.cond378.preheader_crit_edge ], [ %add3742298, %sw.bb369.for.cond378.preheader_crit_edge ]
  %143 = phi i32 [ %175, %if.end612.for.cond378.preheader_crit_edge ], [ %138, %sw.bb369.for.cond378.preheader_crit_edge ]
  %bits.142303 = phi i32 [ %bits.21, %if.end612.for.cond378.preheader_crit_edge ], [ %bits.13, %sw.bb369.for.cond378.preheader_crit_edge ]
  %hold.142302 = phi i32 [ %hold.21, %if.end612.for.cond378.preheader_crit_edge ], [ %hold.13, %sw.bb369.for.cond378.preheader_crit_edge ]
  %have.142301 = phi i32 [ %have.21, %if.end612.for.cond378.preheader_crit_edge ], [ %have.13, %sw.bb369.for.cond378.preheader_crit_edge ]
  %next.142300 = phi ptr [ %next.21, %if.end612.for.cond378.preheader_crit_edge ], [ %next.13, %sw.bb369.for.cond378.preheader_crit_edge ]
  %144 = ptrtoint ptr %lencode to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %lencode, align 4
  %146 = ptrtoint ptr %lenbits to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %lenbits, align 4
  %notmask1833 = shl nsw i32 -1, %147
  %sub382 = xor i32 %notmask1833, -1
  %and3832245 = and i32 %hold.142302, %sub382
  %this.sroa.19.0.arrayidx384.sroa_idx2247 = getelementptr %struct.code, ptr %145, i32 %and3832245, i32 1
  %148 = ptrtoint ptr %this.sroa.19.0.arrayidx384.sroa_idx2247 to i32
  call void @__asan_load1_noabort(i32 %148)
  %this.sroa.19.0.copyload2248 = load i8, ptr %this.sroa.19.0.arrayidx384.sroa_idx2247, align 1
  %conv3862249 = zext i8 %this.sroa.19.0.copyload2248 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.142303, i32 %conv3862249)
  %cmp387.not2250 = icmp ult i32 %bits.142303, %conv3862249
  br i1 %cmp387.not2250, label %for.cond378.preheader.do.body391_crit_edge, label %for.cond378.preheader.for.end_crit_edge

for.cond378.preheader.for.end_crit_edge:          ; preds = %for.cond378.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.cond378.preheader.do.body391_crit_edge:       ; preds = %for.cond378.preheader
  br label %do.body391

do.body391:                                       ; preds = %if.end395.do.body391_crit_edge, %for.cond378.preheader.do.body391_crit_edge
  %bits.152254 = phi i32 [ %add401, %if.end395.do.body391_crit_edge ], [ %bits.142303, %for.cond378.preheader.do.body391_crit_edge ]
  %hold.152253 = phi i32 [ %add400, %if.end395.do.body391_crit_edge ], [ %hold.142302, %for.cond378.preheader.do.body391_crit_edge ]
  %have.152252 = phi i32 [ %dec396, %if.end395.do.body391_crit_edge ], [ %have.142301, %for.cond378.preheader.do.body391_crit_edge ]
  %next.152251 = phi ptr [ %incdec.ptr397, %if.end395.do.body391_crit_edge ], [ %next.142300, %for.cond378.preheader.do.body391_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.152252)
  %cmp392 = icmp eq i32 %have.152252, 0
  br i1 %cmp392, label %do.body1135.loopexit2636, label %if.end395

if.end395:                                        ; preds = %do.body391
  %dec396 = add i32 %have.152252, -1
  %incdec.ptr397 = getelementptr i8, ptr %next.152251, i32 1
  %149 = ptrtoint ptr %next.152251 to i32
  call void @__asan_load1_noabort(i32 %149)
  %150 = load i8, ptr %next.152251, align 1
  %conv398 = zext i8 %150 to i32
  %shl399 = shl i32 %conv398, %bits.152254
  %add400 = add i32 %shl399, %hold.152253
  %add401 = add nuw nsw i32 %bits.152254, 8
  %and383 = and i32 %add400, %sub382
  %this.sroa.19.0.arrayidx384.sroa_idx = getelementptr %struct.code, ptr %145, i32 %and383, i32 1
  %151 = ptrtoint ptr %this.sroa.19.0.arrayidx384.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %151)
  %this.sroa.19.0.copyload = load i8, ptr %this.sroa.19.0.arrayidx384.sroa_idx, align 1
  %conv386 = zext i8 %this.sroa.19.0.copyload to i32
  %cmp387.not = icmp ult i32 %add401, %conv386
  br i1 %cmp387.not, label %if.end395.do.body391_crit_edge, label %for.end.loopexit

if.end395.do.body391_crit_edge:                   ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body391

for.end.loopexit:                                 ; preds = %if.end395
  call void @__sanitizer_cov_trace_pc() #10
  %conv386.le = zext i8 %this.sroa.19.0.copyload to i32
  br label %for.end

for.end:                                          ; preds = %for.end.loopexit, %for.cond378.preheader.for.end_crit_edge
  %conv386.le.pre-phi = phi i32 [ %conv3862249, %for.cond378.preheader.for.end_crit_edge ], [ %conv386.le, %for.end.loopexit ]
  %152 = phi i32 [ %and3832245, %for.cond378.preheader.for.end_crit_edge ], [ %and383, %for.end.loopexit ]
  %next.15.lcssa = phi ptr [ %next.142300, %for.cond378.preheader.for.end_crit_edge ], [ %incdec.ptr397, %for.end.loopexit ]
  %have.15.lcssa = phi i32 [ %have.142301, %for.cond378.preheader.for.end_crit_edge ], [ %dec396, %for.end.loopexit ]
  %hold.15.lcssa = phi i32 [ %hold.142302, %for.cond378.preheader.for.end_crit_edge ], [ %add400, %for.end.loopexit ]
  %bits.15.lcssa = phi i32 [ %bits.142303, %for.cond378.preheader.for.end_crit_edge ], [ %add401, %for.end.loopexit ]
  %this.sroa.43.0.arrayidx384.sroa_idx.le = getelementptr %struct.code, ptr %145, i32 %152, i32 2
  %153 = ptrtoint ptr %this.sroa.43.0.arrayidx384.sroa_idx.le to i32
  call void @__asan_load2_noabort(i32 %153)
  %this.sroa.43.0.copyload.le = load i16, ptr %this.sroa.43.0.arrayidx384.sroa_idx.le, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 16, i16 %this.sroa.43.0.copyload.le)
  %cmp405 = icmp ult i16 %this.sroa.43.0.copyload.le, 16
  br i1 %cmp405, label %while.cond409.preheader, label %if.else

while.cond409.preheader:                          ; preds = %for.end
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.15.lcssa, i32 %conv386.le.pre-phi)
  %cmp4122289 = icmp ult i32 %bits.15.lcssa, %conv386.le.pre-phi
  br i1 %cmp4122289, label %while.cond409.preheader.do.body415_crit_edge, label %while.cond409.preheader.do.body431_crit_edge

while.cond409.preheader.do.body431_crit_edge:     ; preds = %while.cond409.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body431

while.cond409.preheader.do.body415_crit_edge:     ; preds = %while.cond409.preheader
  br label %do.body415

do.body415:                                       ; preds = %if.end419.do.body415_crit_edge, %while.cond409.preheader.do.body415_crit_edge
  %bits.162293 = phi i32 [ %add425, %if.end419.do.body415_crit_edge ], [ %bits.15.lcssa, %while.cond409.preheader.do.body415_crit_edge ]
  %hold.162292 = phi i32 [ %add424, %if.end419.do.body415_crit_edge ], [ %hold.15.lcssa, %while.cond409.preheader.do.body415_crit_edge ]
  %have.162291 = phi i32 [ %dec420, %if.end419.do.body415_crit_edge ], [ %have.15.lcssa, %while.cond409.preheader.do.body415_crit_edge ]
  %next.162290 = phi ptr [ %incdec.ptr421, %if.end419.do.body415_crit_edge ], [ %next.15.lcssa, %while.cond409.preheader.do.body415_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.162291)
  %cmp416 = icmp eq i32 %have.162291, 0
  br i1 %cmp416, label %do.body415.do.body1135_crit_edge, label %if.end419

do.body415.do.body1135_crit_edge:                 ; preds = %do.body415
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end419:                                        ; preds = %do.body415
  %dec420 = add i32 %have.162291, -1
  %incdec.ptr421 = getelementptr i8, ptr %next.162290, i32 1
  %154 = ptrtoint ptr %next.162290 to i32
  call void @__asan_load1_noabort(i32 %154)
  %155 = load i8, ptr %next.162290, align 1
  %conv422 = zext i8 %155 to i32
  %shl423 = shl i32 %conv422, %bits.162293
  %add424 = add i32 %shl423, %hold.162292
  %add425 = add nuw nsw i32 %bits.162293, 8
  %cmp412 = icmp ult i32 %add425, %conv386.le.pre-phi
  br i1 %cmp412, label %if.end419.do.body415_crit_edge, label %if.end419.do.body431_crit_edge

if.end419.do.body431_crit_edge:                   ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body431

if.end419.do.body415_crit_edge:                   ; preds = %if.end419
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body415

do.body431:                                       ; preds = %if.end419.do.body431_crit_edge, %while.cond409.preheader.do.body431_crit_edge
  %next.16.lcssa = phi ptr [ %next.15.lcssa, %while.cond409.preheader.do.body431_crit_edge ], [ %incdec.ptr421, %if.end419.do.body431_crit_edge ]
  %have.16.lcssa = phi i32 [ %have.15.lcssa, %while.cond409.preheader.do.body431_crit_edge ], [ %dec420, %if.end419.do.body431_crit_edge ]
  %hold.16.lcssa = phi i32 [ %hold.15.lcssa, %while.cond409.preheader.do.body431_crit_edge ], [ %add424, %if.end419.do.body431_crit_edge ]
  %bits.16.lcssa = phi i32 [ %bits.15.lcssa, %while.cond409.preheader.do.body431_crit_edge ], [ %add425, %if.end419.do.body431_crit_edge ]
  %shr434 = lshr i32 %hold.16.lcssa, %conv386.le.pre-phi
  %sub437 = sub i32 %bits.16.lcssa, %conv386.le.pre-phi
  %inc443 = add i32 %143, 1
  %156 = ptrtoint ptr %have302 to i32
  call void @__asan_store4_noabort(i32 %156)
  store i32 %inc443, ptr %have302, align 4
  %arrayidx444 = getelementptr %struct.inflate_state, ptr %1, i32 0, i32 27, i32 %143
  %157 = ptrtoint ptr %arrayidx444 to i32
  call void @__asan_store2_noabort(i32 %157)
  store i16 %this.sroa.43.0.copyload.le, ptr %arrayidx444, align 2
  br label %if.end612

if.else:                                          ; preds = %for.end
  %158 = zext i16 %this.sroa.43.0.copyload.le to i64
  call void @__sanitizer_cov_trace_switch(i64 %158, ptr @__sancov_gen_cov_switch_values.15)
  switch i16 %this.sroa.43.0.copyload.le, label %while.cond550.preheader [
    i16 16, label %while.cond451.preheader
    i16 17, label %while.cond509.preheader
  ]

while.cond509.preheader:                          ; preds = %if.else
  %add512 = add nuw nsw i32 %conv386.le.pre-phi, 3
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.15.lcssa, i32 %add512)
  %cmp5132261 = icmp ult i32 %bits.15.lcssa, %add512
  br i1 %cmp5132261, label %while.cond509.preheader.do.body516_crit_edge, label %while.cond509.preheader.do.body532_crit_edge

while.cond509.preheader.do.body532_crit_edge:     ; preds = %while.cond509.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body532

while.cond509.preheader.do.body516_crit_edge:     ; preds = %while.cond509.preheader
  br label %do.body516

while.cond451.preheader:                          ; preds = %if.else
  %add454 = add nuw nsw i32 %conv386.le.pre-phi, 2
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.15.lcssa, i32 %add454)
  %cmp4552270 = icmp ult i32 %bits.15.lcssa, %add454
  br i1 %cmp4552270, label %while.cond451.preheader.do.body458_crit_edge, label %while.cond451.preheader.do.body474_crit_edge

while.cond451.preheader.do.body474_crit_edge:     ; preds = %while.cond451.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body474

while.cond451.preheader.do.body458_crit_edge:     ; preds = %while.cond451.preheader
  br label %do.body458

while.cond550.preheader:                          ; preds = %if.else
  %add553 = add nuw nsw i32 %conv386.le.pre-phi, 7
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.15.lcssa, i32 %add553)
  %cmp5542279 = icmp ult i32 %bits.15.lcssa, %add553
  br i1 %cmp5542279, label %while.cond550.preheader.do.body557_crit_edge, label %while.cond550.preheader.do.body573_crit_edge

while.cond550.preheader.do.body573_crit_edge:     ; preds = %while.cond550.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body573

while.cond550.preheader.do.body557_crit_edge:     ; preds = %while.cond550.preheader
  br label %do.body557

do.body458:                                       ; preds = %if.end462.do.body458_crit_edge, %while.cond451.preheader.do.body458_crit_edge
  %bits.172274 = phi i32 [ %add468, %if.end462.do.body458_crit_edge ], [ %bits.15.lcssa, %while.cond451.preheader.do.body458_crit_edge ]
  %hold.172273 = phi i32 [ %add467, %if.end462.do.body458_crit_edge ], [ %hold.15.lcssa, %while.cond451.preheader.do.body458_crit_edge ]
  %have.172272 = phi i32 [ %dec463, %if.end462.do.body458_crit_edge ], [ %have.15.lcssa, %while.cond451.preheader.do.body458_crit_edge ]
  %next.172271 = phi ptr [ %incdec.ptr464, %if.end462.do.body458_crit_edge ], [ %next.15.lcssa, %while.cond451.preheader.do.body458_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.172272)
  %cmp459 = icmp eq i32 %have.172272, 0
  br i1 %cmp459, label %do.body458.do.body1135_crit_edge, label %if.end462

do.body458.do.body1135_crit_edge:                 ; preds = %do.body458
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end462:                                        ; preds = %do.body458
  %dec463 = add i32 %have.172272, -1
  %incdec.ptr464 = getelementptr i8, ptr %next.172271, i32 1
  %159 = ptrtoint ptr %next.172271 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %next.172271, align 1
  %conv465 = zext i8 %160 to i32
  %shl466 = shl i32 %conv465, %bits.172274
  %add467 = add i32 %shl466, %hold.172273
  %add468 = add nuw nsw i32 %bits.172274, 8
  %cmp455 = icmp ult i32 %add468, %add454
  br i1 %cmp455, label %if.end462.do.body458_crit_edge, label %if.end462.do.body474_crit_edge

if.end462.do.body474_crit_edge:                   ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body474

if.end462.do.body458_crit_edge:                   ; preds = %if.end462
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body458

do.body474:                                       ; preds = %if.end462.do.body474_crit_edge, %while.cond451.preheader.do.body474_crit_edge
  %next.17.lcssa = phi ptr [ %next.15.lcssa, %while.cond451.preheader.do.body474_crit_edge ], [ %incdec.ptr464, %if.end462.do.body474_crit_edge ]
  %have.17.lcssa = phi i32 [ %have.15.lcssa, %while.cond451.preheader.do.body474_crit_edge ], [ %dec463, %if.end462.do.body474_crit_edge ]
  %hold.17.lcssa = phi i32 [ %hold.15.lcssa, %while.cond451.preheader.do.body474_crit_edge ], [ %add467, %if.end462.do.body474_crit_edge ]
  %bits.17.lcssa = phi i32 [ %bits.15.lcssa, %while.cond451.preheader.do.body474_crit_edge ], [ %add468, %if.end462.do.body474_crit_edge ]
  %shr477 = lshr i32 %hold.17.lcssa, %conv386.le.pre-phi
  %sub480 = sub i32 %bits.17.lcssa, %conv386.le.pre-phi
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %143)
  %cmp484 = icmp eq i32 %143, 0
  br i1 %cmp484, label %if.then486, label %if.end489

if.then486:                                       ; preds = %do.body474
  call void @__sanitizer_cov_trace_pc() #10
  %161 = ptrtoint ptr %msg1122 to i32
  call void @__asan_store4_noabort(i32 %161)
  store ptr @.str.7, ptr %msg1122, align 4
  %162 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 27, ptr %1, align 4
  br label %for.cond.backedge

for.cond.backedge:                                ; preds = %if.then1121, %if.end1064, %if.then1057, %do.end1053.for.cond.backedge_crit_edge, %if.then999, %if.then943, %if.then797, %if.then790, %if.then783, %do.body662, %if.then650, %if.then634, %while.end613.for.cond.backedge_crit_edge, %if.then598, %if.then486, %if.then363, %if.then298, %if.end246, %if.end240, %if.then216, %do.body178, %do.body131, %if.end54, %if.then51, %if.then39, %if.then33, %if.then17
  %next.0.be = phi ptr [ %next.38.lcssa, %if.then1121 ], [ %next.0, %if.end1064 ], [ %next.37, %if.then1057 ], [ %next.37, %do.end1053.for.cond.backedge_crit_edge ], [ %next.36, %if.then999 ], [ %next.33, %if.then943 ], [ %215, %do.body662 ], [ %next.26, %if.then783 ], [ %next.26, %if.then790 ], [ %next.26, %if.then797 ], [ %next.14.lcssa, %while.end613.for.cond.backedge_crit_edge ], [ %next.14.lcssa, %if.then634 ], [ %next.14.lcssa, %if.then650 ], [ %next.11.lcssa, %if.then363 ], [ %next.9.lcssa, %if.then298 ], [ %add.ptr, %if.end240 ], [ %next.8, %if.end246 ], [ %next.7.lcssa, %if.then216 ], [ %next.5, %do.body131 ], [ %next.6.lcssa, %do.body178 ], [ %next.0, %if.then17 ], [ %next.1.lcssa, %if.then33 ], [ %next.1.lcssa, %if.then39 ], [ %next.1.lcssa, %if.then51 ], [ %next.1.lcssa, %if.end54 ], [ %next.20, %if.then598 ], [ %next.17.lcssa, %if.then486 ]
  %put.0.be = phi ptr [ %put.0, %if.then1121 ], [ %incdec.ptr1067, %if.end1064 ], [ %incdec.ptr1049, %if.then1057 ], [ %incdec.ptr1049, %do.end1053.for.cond.backedge_crit_edge ], [ %put.0, %if.then999 ], [ %put.0, %if.then943 ], [ %211, %do.body662 ], [ %put.0, %if.then783 ], [ %put.0, %if.then790 ], [ %put.0, %if.then797 ], [ %put.0, %while.end613.for.cond.backedge_crit_edge ], [ %put.0, %if.then634 ], [ %put.0, %if.then650 ], [ %put.0, %if.then363 ], [ %put.0, %if.then298 ], [ %add.ptr243, %if.end240 ], [ %put.0, %if.end246 ], [ %put.0, %if.then216 ], [ %put.0, %do.body131 ], [ %put.0, %do.body178 ], [ %put.0, %if.then17 ], [ %put.0, %if.then33 ], [ %put.0, %if.then39 ], [ %put.0, %if.then51 ], [ %put.0, %if.end54 ], [ %put.0, %if.then598 ], [ %put.0, %if.then486 ]
  %have.0.be = phi i32 [ %have.38.lcssa, %if.then1121 ], [ %have.0, %if.end1064 ], [ %have.37, %if.then1057 ], [ %have.37, %do.end1053.for.cond.backedge_crit_edge ], [ %have.36, %if.then999 ], [ %have.33, %if.then943 ], [ %217, %do.body662 ], [ %have.26, %if.then783 ], [ %have.26, %if.then790 ], [ %have.26, %if.then797 ], [ %have.14.lcssa, %while.end613.for.cond.backedge_crit_edge ], [ %have.14.lcssa, %if.then634 ], [ %have.14.lcssa, %if.then650 ], [ %have.11.lcssa, %if.then363 ], [ %have.9.lcssa, %if.then298 ], [ %sub241, %if.end240 ], [ %have.8, %if.end246 ], [ %have.7.lcssa, %if.then216 ], [ %have.5, %do.body131 ], [ %have.6.lcssa, %do.body178 ], [ %have.0, %if.then17 ], [ %have.1.lcssa, %if.then33 ], [ %have.1.lcssa, %if.then39 ], [ %have.1.lcssa, %if.then51 ], [ %have.1.lcssa, %if.end54 ], [ %have.20, %if.then598 ], [ %have.17.lcssa, %if.then486 ]
  %left.0.be = phi i32 [ %left.0, %if.then1121 ], [ %dec1068, %if.end1064 ], [ %sub1044, %if.then1057 ], [ %sub1044, %do.end1053.for.cond.backedge_crit_edge ], [ %left.0, %if.then999 ], [ %left.0, %if.then943 ], [ %213, %do.body662 ], [ %left.0, %if.then783 ], [ %left.0, %if.then790 ], [ %left.0, %if.then797 ], [ %left.0, %while.end613.for.cond.backedge_crit_edge ], [ %left.0, %if.then634 ], [ %left.0, %if.then650 ], [ %left.0, %if.then363 ], [ %left.0, %if.then298 ], [ %sub242, %if.end240 ], [ %left.0, %if.end246 ], [ %left.0, %if.then216 ], [ %left.0, %do.body131 ], [ %left.0, %do.body178 ], [ %left.0, %if.then17 ], [ %left.0, %if.then33 ], [ %left.0, %if.then39 ], [ %left.0, %if.then51 ], [ %left.0, %if.end54 ], [ %left.0, %if.then598 ], [ %left.0, %if.then486 ]
  %hold.0.be = phi i32 [ %hold.38.lcssa, %if.then1121 ], [ %hold.0, %if.end1064 ], [ %hold.37, %if.then1057 ], [ %hold.37, %do.end1053.for.cond.backedge_crit_edge ], [ %hold.36, %if.then999 ], [ %shr933, %if.then943 ], [ %219, %do.body662 ], [ %shr770, %if.then783 ], [ %shr770, %if.then790 ], [ %shr770, %if.then797 ], [ %hold.14.lcssa, %while.end613.for.cond.backedge_crit_edge ], [ %hold.14.lcssa, %if.then634 ], [ %hold.14.lcssa, %if.then650 ], [ %hold.11.lcssa, %if.then363 ], [ %shr287, %if.then298 ], [ %hold.8, %if.end240 ], [ %hold.8, %if.end246 ], [ %hold.7.lcssa, %if.then216 ], [ %shr133, %do.body131 ], [ %shr179, %do.body178 ], [ %hold.0, %if.then17 ], [ %hold.1.lcssa, %if.then33 ], [ %hold.1.lcssa, %if.then39 ], [ %shr44, %if.then51 ], [ 0, %if.end54 ], [ %hold.20, %if.then598 ], [ %shr477, %if.then486 ]
  %bits.0.be = phi i32 [ %bits.38.lcssa, %if.then1121 ], [ %bits.0, %if.end1064 ], [ %bits.37, %if.then1057 ], [ %bits.37, %do.end1053.for.cond.backedge_crit_edge ], [ %bits.36, %if.then999 ], [ %sub936, %if.then943 ], [ %221, %do.body662 ], [ %sub773, %if.then783 ], [ %sub773, %if.then790 ], [ %sub773, %if.then797 ], [ %bits.14.lcssa, %while.end613.for.cond.backedge_crit_edge ], [ %bits.14.lcssa, %if.then634 ], [ %bits.14.lcssa, %if.then650 ], [ %bits.11.lcssa, %if.then363 ], [ %sub288, %if.then298 ], [ %bits.8, %if.end240 ], [ %bits.8, %if.end246 ], [ %bits.7.lcssa, %if.then216 ], [ %sub135, %do.body131 ], [ %sub180, %do.body178 ], [ %bits.0, %if.then17 ], [ %bits.1.lcssa, %if.then33 ], [ %bits.1.lcssa, %if.then39 ], [ %sub, %if.then51 ], [ 0, %if.end54 ], [ %bits.20, %if.then598 ], [ %sub480, %if.then486 ]
  %out.0.be = phi i32 [ %left.0, %if.then1121 ], [ %out.0, %if.end1064 ], [ %out.0, %if.then1057 ], [ %out.0, %do.end1053.for.cond.backedge_crit_edge ], [ %out.0, %if.then999 ], [ %out.0, %if.then943 ], [ %out.0, %do.body662 ], [ %out.0, %if.then783 ], [ %out.0, %if.then790 ], [ %out.0, %if.then797 ], [ %out.0, %while.end613.for.cond.backedge_crit_edge ], [ %out.0, %if.then634 ], [ %out.0, %if.then650 ], [ %out.0, %if.then363 ], [ %out.0, %if.then298 ], [ %out.0, %if.end240 ], [ %out.0, %if.end246 ], [ %out.0, %if.then216 ], [ %out.0, %do.body131 ], [ %out.0, %do.body178 ], [ %out.0, %if.then17 ], [ %out.0, %if.then33 ], [ %out.0, %if.then39 ], [ %out.0, %if.then51 ], [ %out.0, %if.end54 ], [ %out.0, %if.then598 ], [ %out.0, %if.then486 ]
  %ret.0.be = phi i32 [ %ret.0, %if.then1121 ], [ %ret.0, %if.end1064 ], [ %ret.6, %if.then1057 ], [ %ret.6, %do.end1053.for.cond.backedge_crit_edge ], [ %ret.5, %if.then999 ], [ %ret.4, %if.then943 ], [ %ret.2, %do.body662 ], [ %ret.2, %if.then783 ], [ %ret.2, %if.then790 ], [ %ret.2, %if.then797 ], [ %ret.1, %while.end613.for.cond.backedge_crit_edge ], [ %call632, %if.then634 ], [ %call648, %if.then650 ], [ %call361, %if.then363 ], [ %ret.0, %if.then298 ], [ %ret.0, %if.end240 ], [ %ret.0, %if.end246 ], [ %ret.0, %if.then216 ], [ %ret.0, %do.body131 ], [ %ret.0, %do.body178 ], [ %ret.0, %if.then17 ], [ %ret.0, %if.then33 ], [ %ret.0, %if.then39 ], [ %ret.0, %if.then51 ], [ %ret.0, %if.end54 ], [ %ret.1, %if.then598 ], [ %ret.1, %if.then486 ]
  br label %for.cond

if.end489:                                        ; preds = %do.body474
  call void @__sanitizer_cov_trace_pc() #10
  %sub492 = add i32 %143, -1
  %arrayidx493 = getelementptr %struct.inflate_state, ptr %1, i32 0, i32 27, i32 %sub492
  %163 = ptrtoint ptr %arrayidx493 to i32
  call void @__asan_load2_noabort(i32 %163)
  %164 = load i16, ptr %arrayidx493, align 2
  %and495 = and i32 %shr477, 3
  %add496 = add nuw nsw i32 %and495, 3
  %shr498 = lshr i32 %shr477, 2
  %sub499 = add i32 %sub480, -2
  br label %if.end590

do.body516:                                       ; preds = %if.end520.do.body516_crit_edge, %while.cond509.preheader.do.body516_crit_edge
  %bits.182265 = phi i32 [ %add526, %if.end520.do.body516_crit_edge ], [ %bits.15.lcssa, %while.cond509.preheader.do.body516_crit_edge ]
  %hold.182264 = phi i32 [ %add525, %if.end520.do.body516_crit_edge ], [ %hold.15.lcssa, %while.cond509.preheader.do.body516_crit_edge ]
  %have.182263 = phi i32 [ %dec521, %if.end520.do.body516_crit_edge ], [ %have.15.lcssa, %while.cond509.preheader.do.body516_crit_edge ]
  %next.182262 = phi ptr [ %incdec.ptr522, %if.end520.do.body516_crit_edge ], [ %next.15.lcssa, %while.cond509.preheader.do.body516_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.182263)
  %cmp517 = icmp eq i32 %have.182263, 0
  br i1 %cmp517, label %do.body516.do.body1135_crit_edge, label %if.end520

do.body516.do.body1135_crit_edge:                 ; preds = %do.body516
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end520:                                        ; preds = %do.body516
  %dec521 = add i32 %have.182263, -1
  %incdec.ptr522 = getelementptr i8, ptr %next.182262, i32 1
  %165 = ptrtoint ptr %next.182262 to i32
  call void @__asan_load1_noabort(i32 %165)
  %166 = load i8, ptr %next.182262, align 1
  %conv523 = zext i8 %166 to i32
  %shl524 = shl i32 %conv523, %bits.182265
  %add525 = add i32 %shl524, %hold.182264
  %add526 = add nuw nsw i32 %bits.182265, 8
  %cmp513 = icmp ult i32 %add526, %add512
  br i1 %cmp513, label %if.end520.do.body516_crit_edge, label %if.end520.do.body532_crit_edge

if.end520.do.body532_crit_edge:                   ; preds = %if.end520
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body532

if.end520.do.body516_crit_edge:                   ; preds = %if.end520
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body516

do.body532:                                       ; preds = %if.end520.do.body532_crit_edge, %while.cond509.preheader.do.body532_crit_edge
  %next.18.lcssa = phi ptr [ %next.15.lcssa, %while.cond509.preheader.do.body532_crit_edge ], [ %incdec.ptr522, %if.end520.do.body532_crit_edge ]
  %have.18.lcssa = phi i32 [ %have.15.lcssa, %while.cond509.preheader.do.body532_crit_edge ], [ %dec521, %if.end520.do.body532_crit_edge ]
  %hold.18.lcssa = phi i32 [ %hold.15.lcssa, %while.cond509.preheader.do.body532_crit_edge ], [ %add525, %if.end520.do.body532_crit_edge ]
  %bits.18.lcssa = phi i32 [ %bits.15.lcssa, %while.cond509.preheader.do.body532_crit_edge ], [ %add526, %if.end520.do.body532_crit_edge ]
  %shr535 = lshr i32 %hold.18.lcssa, %conv386.le.pre-phi
  %and541 = and i32 %shr535, 7
  %add542 = add nuw nsw i32 %and541, 3
  %shr544 = lshr i32 %shr535, 3
  %sub538 = sub nuw nsw i32 -3, %conv386.le.pre-phi
  %sub545 = add i32 %sub538, %bits.18.lcssa
  br label %if.end590

do.body557:                                       ; preds = %if.end561.do.body557_crit_edge, %while.cond550.preheader.do.body557_crit_edge
  %bits.192283 = phi i32 [ %add567, %if.end561.do.body557_crit_edge ], [ %bits.15.lcssa, %while.cond550.preheader.do.body557_crit_edge ]
  %hold.192282 = phi i32 [ %add566, %if.end561.do.body557_crit_edge ], [ %hold.15.lcssa, %while.cond550.preheader.do.body557_crit_edge ]
  %have.192281 = phi i32 [ %dec562, %if.end561.do.body557_crit_edge ], [ %have.15.lcssa, %while.cond550.preheader.do.body557_crit_edge ]
  %next.192280 = phi ptr [ %incdec.ptr563, %if.end561.do.body557_crit_edge ], [ %next.15.lcssa, %while.cond550.preheader.do.body557_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.192281)
  %cmp558 = icmp eq i32 %have.192281, 0
  br i1 %cmp558, label %do.body557.do.body1135_crit_edge, label %if.end561

do.body557.do.body1135_crit_edge:                 ; preds = %do.body557
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end561:                                        ; preds = %do.body557
  %dec562 = add i32 %have.192281, -1
  %incdec.ptr563 = getelementptr i8, ptr %next.192280, i32 1
  %167 = ptrtoint ptr %next.192280 to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %next.192280, align 1
  %conv564 = zext i8 %168 to i32
  %shl565 = shl i32 %conv564, %bits.192283
  %add566 = add i32 %shl565, %hold.192282
  %add567 = add nuw nsw i32 %bits.192283, 8
  %cmp554 = icmp ult i32 %add567, %add553
  br i1 %cmp554, label %if.end561.do.body557_crit_edge, label %if.end561.do.body573_crit_edge

if.end561.do.body573_crit_edge:                   ; preds = %if.end561
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body573

if.end561.do.body557_crit_edge:                   ; preds = %if.end561
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body557

do.body573:                                       ; preds = %if.end561.do.body573_crit_edge, %while.cond550.preheader.do.body573_crit_edge
  %next.19.lcssa = phi ptr [ %next.15.lcssa, %while.cond550.preheader.do.body573_crit_edge ], [ %incdec.ptr563, %if.end561.do.body573_crit_edge ]
  %have.19.lcssa = phi i32 [ %have.15.lcssa, %while.cond550.preheader.do.body573_crit_edge ], [ %dec562, %if.end561.do.body573_crit_edge ]
  %hold.19.lcssa = phi i32 [ %hold.15.lcssa, %while.cond550.preheader.do.body573_crit_edge ], [ %add566, %if.end561.do.body573_crit_edge ]
  %bits.19.lcssa = phi i32 [ %bits.15.lcssa, %while.cond550.preheader.do.body573_crit_edge ], [ %add567, %if.end561.do.body573_crit_edge ]
  %shr576 = lshr i32 %hold.19.lcssa, %conv386.le.pre-phi
  %and582 = and i32 %shr576, 127
  %add583 = add nuw nsw i32 %and582, 11
  %shr585 = lshr i32 %shr576, 7
  %sub579 = sub nuw nsw i32 -7, %conv386.le.pre-phi
  %sub586 = add i32 %sub579, %bits.19.lcssa
  br label %if.end590

if.end590:                                        ; preds = %do.body573, %do.body532, %if.end489
  %next.20 = phi ptr [ %next.17.lcssa, %if.end489 ], [ %next.18.lcssa, %do.body532 ], [ %next.19.lcssa, %do.body573 ]
  %have.20 = phi i32 [ %have.17.lcssa, %if.end489 ], [ %have.18.lcssa, %do.body532 ], [ %have.19.lcssa, %do.body573 ]
  %hold.20 = phi i32 [ %shr498, %if.end489 ], [ %shr544, %do.body532 ], [ %shr585, %do.body573 ]
  %bits.20 = phi i32 [ %sub499, %if.end489 ], [ %sub545, %do.body532 ], [ %sub586, %do.body573 ]
  %copy.2 = phi i32 [ %add496, %if.end489 ], [ %add542, %do.body532 ], [ %add583, %do.body573 ]
  %len.0 = phi i16 [ %164, %if.end489 ], [ 0, %do.body532 ], [ 0, %do.body573 ]
  %add592 = add i32 %copy.2, %143
  call void @__sanitizer_cov_trace_cmp4(i32 %add592, i32 %add3742304)
  %cmp596 = icmp ugt i32 %add592, %add3742304
  br i1 %cmp596, label %if.then598, label %if.end590.while.body605_crit_edge

if.end590.while.body605_crit_edge:                ; preds = %if.end590
  br label %while.body605

if.then598:                                       ; preds = %if.end590
  call void @__sanitizer_cov_trace_pc() #10
  %169 = ptrtoint ptr %msg1122 to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr @.str.7, ptr %msg1122, align 4
  %170 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 27, ptr %1, align 4
  br label %for.cond.backedge

while.body605:                                    ; preds = %while.body605.while.body605_crit_edge, %if.end590.while.body605_crit_edge
  %copy.32288 = phi i32 [ %dec603, %while.body605.while.body605_crit_edge ], [ %copy.2, %if.end590.while.body605_crit_edge ]
  %dec603 = add nsw i32 %copy.32288, -1
  %171 = ptrtoint ptr %have302 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %have302, align 4
  %inc609 = add i32 %172, 1
  store i32 %inc609, ptr %have302, align 4
  %arrayidx610 = getelementptr %struct.inflate_state, ptr %1, i32 0, i32 27, i32 %172
  %173 = ptrtoint ptr %arrayidx610 to i32
  call void @__asan_store2_noabort(i32 %173)
  store i16 %len.0, ptr %arrayidx610, align 2
  %tobool604.not = icmp eq i32 %dec603, 0
  br i1 %tobool604.not, label %while.body605.if.end612_crit_edge, label %while.body605.while.body605_crit_edge

while.body605.while.body605_crit_edge:            ; preds = %while.body605
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body605

while.body605.if.end612_crit_edge:                ; preds = %while.body605
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end612

if.end612:                                        ; preds = %while.body605.if.end612_crit_edge, %do.body431
  %next.21 = phi ptr [ %next.16.lcssa, %do.body431 ], [ %next.20, %while.body605.if.end612_crit_edge ]
  %have.21 = phi i32 [ %have.16.lcssa, %do.body431 ], [ %have.20, %while.body605.if.end612_crit_edge ]
  %hold.21 = phi i32 [ %shr434, %do.body431 ], [ %hold.20, %while.body605.if.end612_crit_edge ]
  %bits.21 = phi i32 [ %sub437, %do.body431 ], [ %bits.20, %while.body605.if.end612_crit_edge ]
  %174 = ptrtoint ptr %have302 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %have302, align 4
  %176 = ptrtoint ptr %nlen to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %nlen, align 4
  %178 = ptrtoint ptr %ndist to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %ndist, align 4
  %add374 = add i32 %179, %177
  %cmp375 = icmp ult i32 %175, %add374
  br i1 %cmp375, label %if.end612.for.cond378.preheader_crit_edge, label %if.end612.while.end613_crit_edge

if.end612.while.end613_crit_edge:                 ; preds = %if.end612
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end613

if.end612.for.cond378.preheader_crit_edge:        ; preds = %if.end612
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond378.preheader

while.end613:                                     ; preds = %if.end612.while.end613_crit_edge, %sw.bb369.while.end613_crit_edge
  %next.14.lcssa = phi ptr [ %next.13, %sw.bb369.while.end613_crit_edge ], [ %next.21, %if.end612.while.end613_crit_edge ]
  %have.14.lcssa = phi i32 [ %have.13, %sw.bb369.while.end613_crit_edge ], [ %have.21, %if.end612.while.end613_crit_edge ]
  %hold.14.lcssa = phi i32 [ %hold.13, %sw.bb369.while.end613_crit_edge ], [ %hold.21, %if.end612.while.end613_crit_edge ]
  %bits.14.lcssa = phi i32 [ %bits.13, %sw.bb369.while.end613_crit_edge ], [ %bits.21, %if.end612.while.end613_crit_edge ]
  %180 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %180)
  %.pr1842 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 27, i32 %.pr1842)
  %cmp615 = icmp eq i32 %.pr1842, 27
  br i1 %cmp615, label %while.end613.for.cond.backedge_crit_edge, label %if.end618

while.end613.for.cond.backedge_crit_edge:         ; preds = %while.end613
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.end618:                                        ; preds = %while.end613
  %181 = ptrtoint ptr %next354 to i32
  call void @__asan_store4_noabort(i32 %181)
  store ptr %codes, ptr %next354, align 4
  %182 = ptrtoint ptr %lencode to i32
  call void @__asan_store4_noabort(i32 %182)
  store ptr %codes, ptr %lencode, align 4
  %183 = ptrtoint ptr %lenbits to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 9, ptr %lenbits, align 4
  %184 = ptrtoint ptr %nlen to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %nlen, align 4
  %call632 = tail call i32 @zlib_inflate_table(i32 noundef 1, ptr noundef %lens356, i32 noundef %185, ptr noundef %next354, ptr noundef %lenbits, ptr noundef %work) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call632)
  %tobool633.not = icmp eq i32 %call632, 0
  br i1 %tobool633.not, label %if.end637, label %if.then634

if.then634:                                       ; preds = %if.end618
  call void @__sanitizer_cov_trace_pc() #10
  %186 = ptrtoint ptr %msg1122 to i32
  call void @__asan_store4_noabort(i32 %186)
  store ptr @.str.8, ptr %msg1122, align 4
  %187 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %187)
  store i32 27, ptr %1, align 4
  br label %for.cond.backedge

if.end637:                                        ; preds = %if.end618
  %188 = ptrtoint ptr %next354 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %next354, align 4
  %190 = ptrtoint ptr %distcode to i32
  call void @__asan_store4_noabort(i32 %190)
  store ptr %189, ptr %distcode, align 4
  %191 = ptrtoint ptr %distbits to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 6, ptr %distbits, align 4
  %192 = ptrtoint ptr %nlen to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %nlen, align 4
  %add.ptr642 = getelementptr i16, ptr %lens356, i32 %193
  %194 = ptrtoint ptr %ndist to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %ndist, align 4
  %call648 = tail call i32 @zlib_inflate_table(i32 noundef 2, ptr noundef %add.ptr642, i32 noundef %195, ptr noundef %next354, ptr noundef %distbits, ptr noundef %work) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call648)
  %tobool649.not = icmp eq i32 %call648, 0
  br i1 %tobool649.not, label %if.end653, label %if.then650

if.then650:                                       ; preds = %if.end637
  call void @__sanitizer_cov_trace_pc() #10
  %196 = ptrtoint ptr %msg1122 to i32
  call void @__asan_store4_noabort(i32 %196)
  store ptr @.str.9, ptr %msg1122, align 4
  %197 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 27, ptr %1, align 4
  br label %for.cond.backedge

if.end653:                                        ; preds = %if.end637
  call void @__sanitizer_cov_trace_pc() #10
  %198 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 18, ptr %1, align 4
  br label %sw.bb655

sw.bb655:                                         ; preds = %if.end653, %for.cond.sw.bb655_crit_edge
  %next.23 = phi ptr [ %next.0, %for.cond.sw.bb655_crit_edge ], [ %next.14.lcssa, %if.end653 ]
  %have.23 = phi i32 [ %have.0, %for.cond.sw.bb655_crit_edge ], [ %have.14.lcssa, %if.end653 ]
  %hold.23 = phi i32 [ %hold.0, %for.cond.sw.bb655_crit_edge ], [ %hold.14.lcssa, %if.end653 ]
  %bits.23 = phi i32 [ %bits.0, %for.cond.sw.bb655_crit_edge ], [ %bits.14.lcssa, %if.end653 ]
  %ret.2 = phi i32 [ %ret.0, %for.cond.sw.bb655_crit_edge ], [ 0, %if.end653 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %have.23)
  %cmp656 = icmp ugt i32 %have.23, 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 257, i32 %left.0)
  %cmp659 = icmp ugt i32 %left.0, 257
  %or.cond = select i1 %cmp656, i1 %cmp659, i1 false
  br i1 %or.cond, label %do.body662, label %for.cond681.preheader

for.cond681.preheader:                            ; preds = %sw.bb655
  %199 = ptrtoint ptr %lencode to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %lencode, align 4
  %201 = ptrtoint ptr %lenbits to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load i32, ptr %lenbits, align 4
  %notmask1831 = shl nsw i32 -1, %202
  %sub685 = xor i32 %notmask1831, -1
  %and6862311 = and i32 %hold.23, %sub685
  %arrayidx6872312 = getelementptr %struct.code, ptr %200, i32 %and6862311
  %this.sroa.19.0.arrayidx687.sroa_idx2313 = getelementptr inbounds i8, ptr %arrayidx6872312, i32 1
  %203 = ptrtoint ptr %this.sroa.19.0.arrayidx687.sroa_idx2313 to i32
  call void @__asan_load1_noabort(i32 %203)
  %this.sroa.19.0.copyload12662314 = load i8, ptr %this.sroa.19.0.arrayidx687.sroa_idx2313, align 1
  %conv6892315 = zext i8 %this.sroa.19.0.copyload12662314 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.23, i32 %conv6892315)
  %cmp690.not2316 = icmp ult i32 %bits.23, %conv6892315
  br i1 %cmp690.not2316, label %for.cond681.preheader.do.body694_crit_edge, label %for.cond681.preheader.for.end707_crit_edge

for.cond681.preheader.for.end707_crit_edge:       ; preds = %for.cond681.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end707

for.cond681.preheader.do.body694_crit_edge:       ; preds = %for.cond681.preheader
  br label %do.body694

do.body662:                                       ; preds = %sw.bb655
  call void @__sanitizer_cov_trace_pc() #10
  %204 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %204)
  store ptr %put.0, ptr %next_out, align 4
  %205 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 %left.0, ptr %avail_out, align 4
  %206 = ptrtoint ptr %strm to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %next.23, ptr %strm, align 4
  %207 = ptrtoint ptr %avail_in12 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %have.23, ptr %avail_in12, align 4
  %208 = ptrtoint ptr %hold13 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %hold.23, ptr %hold13, align 4
  %209 = ptrtoint ptr %bits14 to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %bits.23, ptr %bits14, align 4
  tail call void @inflate_fast(ptr noundef nonnull %strm, i32 noundef %out.0) #8
  %210 = ptrtoint ptr %next_out to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load ptr, ptr %next_out, align 4
  %212 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %avail_out, align 4
  %214 = ptrtoint ptr %strm to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load ptr, ptr %strm, align 4
  %216 = ptrtoint ptr %avail_in12 to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %avail_in12, align 4
  %218 = ptrtoint ptr %hold13 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load i32, ptr %hold13, align 4
  %220 = ptrtoint ptr %bits14 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %bits14, align 4
  br label %for.cond.backedge

do.body694:                                       ; preds = %if.end698.do.body694_crit_edge, %for.cond681.preheader.do.body694_crit_edge
  %bits.242320 = phi i32 [ %add704, %if.end698.do.body694_crit_edge ], [ %bits.23, %for.cond681.preheader.do.body694_crit_edge ]
  %hold.242319 = phi i32 [ %add703, %if.end698.do.body694_crit_edge ], [ %hold.23, %for.cond681.preheader.do.body694_crit_edge ]
  %have.242318 = phi i32 [ %dec699, %if.end698.do.body694_crit_edge ], [ %have.23, %for.cond681.preheader.do.body694_crit_edge ]
  %next.242317 = phi ptr [ %incdec.ptr700, %if.end698.do.body694_crit_edge ], [ %next.23, %for.cond681.preheader.do.body694_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.242318)
  %cmp695 = icmp eq i32 %have.242318, 0
  br i1 %cmp695, label %do.body1135.loopexit2645, label %if.end698

if.end698:                                        ; preds = %do.body694
  %dec699 = add i32 %have.242318, -1
  %incdec.ptr700 = getelementptr i8, ptr %next.242317, i32 1
  %222 = ptrtoint ptr %next.242317 to i32
  call void @__asan_load1_noabort(i32 %222)
  %223 = load i8, ptr %next.242317, align 1
  %conv701 = zext i8 %223 to i32
  %shl702 = shl i32 %conv701, %bits.242320
  %add703 = add i32 %shl702, %hold.242319
  %add704 = add nuw nsw i32 %bits.242320, 8
  %and686 = and i32 %add703, %sub685
  %arrayidx687 = getelementptr %struct.code, ptr %200, i32 %and686
  %this.sroa.19.0.arrayidx687.sroa_idx = getelementptr inbounds i8, ptr %arrayidx687, i32 1
  %224 = ptrtoint ptr %this.sroa.19.0.arrayidx687.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %224)
  %this.sroa.19.0.copyload1266 = load i8, ptr %this.sroa.19.0.arrayidx687.sroa_idx, align 1
  %conv689 = zext i8 %this.sroa.19.0.copyload1266 to i32
  %cmp690.not = icmp ult i32 %add704, %conv689
  br i1 %cmp690.not, label %if.end698.do.body694_crit_edge, label %for.end707.loopexit

if.end698.do.body694_crit_edge:                   ; preds = %if.end698
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body694

for.end707.loopexit:                              ; preds = %if.end698
  call void @__sanitizer_cov_trace_pc() #10
  %conv689.le = zext i8 %this.sroa.19.0.copyload1266 to i32
  br label %for.end707

for.end707:                                       ; preds = %for.end707.loopexit, %for.cond681.preheader.for.end707_crit_edge
  %conv689.le.pre-phi = phi i32 [ %conv6892315, %for.cond681.preheader.for.end707_crit_edge ], [ %conv689.le, %for.end707.loopexit ]
  %arrayidx687.lcssa2310 = phi ptr [ %arrayidx6872312, %for.cond681.preheader.for.end707_crit_edge ], [ %arrayidx687, %for.end707.loopexit ]
  %next.24.lcssa = phi ptr [ %next.23, %for.cond681.preheader.for.end707_crit_edge ], [ %incdec.ptr700, %for.end707.loopexit ]
  %have.24.lcssa = phi i32 [ %have.23, %for.cond681.preheader.for.end707_crit_edge ], [ %dec699, %for.end707.loopexit ]
  %hold.24.lcssa = phi i32 [ %hold.23, %for.cond681.preheader.for.end707_crit_edge ], [ %add703, %for.end707.loopexit ]
  %bits.24.lcssa = phi i32 [ %bits.23, %for.cond681.preheader.for.end707_crit_edge ], [ %add704, %for.end707.loopexit ]
  %this.sroa.43.0.arrayidx687.sroa_idx.le = getelementptr inbounds i8, ptr %arrayidx687.lcssa2310, i32 2
  %225 = ptrtoint ptr %this.sroa.43.0.arrayidx687.sroa_idx.le to i32
  call void @__asan_load2_noabort(i32 %225)
  %this.sroa.43.0.copyload1290.le = load i16, ptr %this.sroa.43.0.arrayidx687.sroa_idx.le, align 2
  %226 = ptrtoint ptr %arrayidx687.lcssa2310 to i32
  call void @__asan_load1_noabort(i32 %226)
  %this.sroa.0.0.copyload1262 = load i8, ptr %arrayidx687.lcssa2310, align 2
  %conv708 = zext i8 %this.sroa.0.0.copyload1262 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %this.sroa.0.0.copyload1262)
  %tobool709.not = icmp ne i8 %this.sroa.0.0.copyload1262, 0
  %and713 = and i32 %conv708, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and713)
  %cmp714 = icmp eq i32 %and713, 0
  %or.cond1834 = select i1 %tobool709.not, i1 %cmp714, i1 false
  br i1 %or.cond1834, label %for.cond717.preheader, label %for.end707.do.body767_crit_edge

for.end707.do.body767_crit_edge:                  ; preds = %for.end707
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body767

for.cond717.preheader:                            ; preds = %for.end707
  %conv720 = zext i16 %this.sroa.43.0.copyload1290.le to i32
  %add725 = add nuw nsw i32 %conv689.le.pre-phi, %conv708
  %notmask1832 = shl nsw i32 -1, %add725
  %sub727 = xor i32 %notmask1832, -1
  %and7282330 = and i32 %hold.24.lcssa, %sub727
  %shr7312331 = lshr i32 %and7282330, %conv689.le.pre-phi
  %add7322332 = add i32 %shr7312331, %conv720
  %arrayidx7332333 = getelementptr %struct.code, ptr %200, i32 %add7322332
  %this.sroa.19.0.arrayidx733.sroa_idx2334 = getelementptr inbounds i8, ptr %arrayidx7332333, i32 1
  %227 = ptrtoint ptr %this.sroa.19.0.arrayidx733.sroa_idx2334 to i32
  call void @__asan_load1_noabort(i32 %227)
  %this.sroa.19.0.copyload12672335 = load i8, ptr %this.sroa.19.0.arrayidx733.sroa_idx2334, align 1
  %conv7372336 = zext i8 %this.sroa.19.0.copyload12672335 to i32
  %add7382337 = add nuw nsw i32 %conv689.le.pre-phi, %conv7372336
  call void @__sanitizer_cov_trace_cmp4(i32 %add7382337, i32 %bits.24.lcssa)
  %cmp739.not2338 = icmp ugt i32 %add7382337, %bits.24.lcssa
  br i1 %cmp739.not2338, label %for.cond717.preheader.do.body743_crit_edge, label %for.cond717.preheader.do.body757_crit_edge

for.cond717.preheader.do.body757_crit_edge:       ; preds = %for.cond717.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body757

for.cond717.preheader.do.body743_crit_edge:       ; preds = %for.cond717.preheader
  br label %do.body743

do.body743:                                       ; preds = %if.end747.do.body743_crit_edge, %for.cond717.preheader.do.body743_crit_edge
  %bits.252342 = phi i32 [ %add753, %if.end747.do.body743_crit_edge ], [ %bits.24.lcssa, %for.cond717.preheader.do.body743_crit_edge ]
  %hold.252341 = phi i32 [ %add752, %if.end747.do.body743_crit_edge ], [ %hold.24.lcssa, %for.cond717.preheader.do.body743_crit_edge ]
  %have.252340 = phi i32 [ %dec748, %if.end747.do.body743_crit_edge ], [ %have.24.lcssa, %for.cond717.preheader.do.body743_crit_edge ]
  %next.252339 = phi ptr [ %incdec.ptr749, %if.end747.do.body743_crit_edge ], [ %next.24.lcssa, %for.cond717.preheader.do.body743_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.252340)
  %cmp744 = icmp eq i32 %have.252340, 0
  br i1 %cmp744, label %do.body1135.loopexit2644, label %if.end747

if.end747:                                        ; preds = %do.body743
  %dec748 = add i32 %have.252340, -1
  %incdec.ptr749 = getelementptr i8, ptr %next.252339, i32 1
  %228 = ptrtoint ptr %next.252339 to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %next.252339, align 1
  %conv750 = zext i8 %229 to i32
  %shl751 = shl i32 %conv750, %bits.252342
  %add752 = add i32 %shl751, %hold.252341
  %add753 = add nuw nsw i32 %bits.252342, 8
  %and728 = and i32 %add752, %sub727
  %shr731 = lshr i32 %and728, %conv689.le.pre-phi
  %add732 = add i32 %shr731, %conv720
  %arrayidx733 = getelementptr %struct.code, ptr %200, i32 %add732
  %this.sroa.19.0.arrayidx733.sroa_idx = getelementptr inbounds i8, ptr %arrayidx733, i32 1
  %230 = ptrtoint ptr %this.sroa.19.0.arrayidx733.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %230)
  %this.sroa.19.0.copyload1267 = load i8, ptr %this.sroa.19.0.arrayidx733.sroa_idx, align 1
  %conv737 = zext i8 %this.sroa.19.0.copyload1267 to i32
  %add738 = add nuw nsw i32 %conv689.le.pre-phi, %conv737
  %cmp739.not = icmp ugt i32 %add738, %add753
  br i1 %cmp739.not, label %if.end747.do.body743_crit_edge, label %do.body757.loopexit

if.end747.do.body743_crit_edge:                   ; preds = %if.end747
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body743

do.body757.loopexit:                              ; preds = %if.end747
  call void @__sanitizer_cov_trace_pc() #10
  %conv737.le = zext i8 %this.sroa.19.0.copyload1267 to i32
  br label %do.body757

do.body757:                                       ; preds = %do.body757.loopexit, %for.cond717.preheader.do.body757_crit_edge
  %.pre.pre-phi = phi i32 [ %conv7372336, %for.cond717.preheader.do.body757_crit_edge ], [ %conv737.le, %do.body757.loopexit ]
  %next.25.lcssa = phi ptr [ %next.24.lcssa, %for.cond717.preheader.do.body757_crit_edge ], [ %incdec.ptr749, %do.body757.loopexit ]
  %have.25.lcssa = phi i32 [ %have.24.lcssa, %for.cond717.preheader.do.body757_crit_edge ], [ %dec748, %do.body757.loopexit ]
  %hold.25.lcssa = phi i32 [ %hold.24.lcssa, %for.cond717.preheader.do.body757_crit_edge ], [ %add752, %do.body757.loopexit ]
  %bits.25.lcssa = phi i32 [ %bits.24.lcssa, %for.cond717.preheader.do.body757_crit_edge ], [ %add753, %do.body757.loopexit ]
  %arrayidx733.lcssa = phi ptr [ %arrayidx7332333, %for.cond717.preheader.do.body757_crit_edge ], [ %arrayidx733, %do.body757.loopexit ]
  %this.sroa.43.0.arrayidx733.sroa_idx = getelementptr inbounds i8, ptr %arrayidx733.lcssa, i32 2
  %231 = ptrtoint ptr %this.sroa.43.0.arrayidx733.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %231)
  %this.sroa.43.0.copyload1291 = load i16, ptr %this.sroa.43.0.arrayidx733.sroa_idx, align 2
  %232 = ptrtoint ptr %arrayidx733.lcssa to i32
  call void @__asan_load1_noabort(i32 %232)
  %this.sroa.0.0.copyload1263 = load i8, ptr %arrayidx733.lcssa, align 2
  %shr760 = lshr i32 %hold.25.lcssa, %conv689.le.pre-phi
  %sub763 = sub i32 %bits.25.lcssa, %conv689.le.pre-phi
  %.pre2628 = zext i8 %this.sroa.0.0.copyload1263 to i32
  br label %do.body767

do.body767:                                       ; preds = %do.body757, %for.end707.do.body767_crit_edge
  %conv780.pre-phi = phi i32 [ %conv708, %for.end707.do.body767_crit_edge ], [ %.pre2628, %do.body757 ]
  %conv769.pre-phi = phi i32 [ %conv689.le.pre-phi, %for.end707.do.body767_crit_edge ], [ %.pre.pre-phi, %do.body757 ]
  %next.26 = phi ptr [ %next.24.lcssa, %for.end707.do.body767_crit_edge ], [ %next.25.lcssa, %do.body757 ]
  %have.26 = phi i32 [ %have.24.lcssa, %for.end707.do.body767_crit_edge ], [ %have.25.lcssa, %do.body757 ]
  %hold.26 = phi i32 [ %hold.24.lcssa, %for.end707.do.body767_crit_edge ], [ %shr760, %do.body757 ]
  %bits.26 = phi i32 [ %bits.24.lcssa, %for.end707.do.body767_crit_edge ], [ %sub763, %do.body757 ]
  %this.sroa.43.0 = phi i16 [ %this.sroa.43.0.copyload1290.le, %for.end707.do.body767_crit_edge ], [ %this.sroa.43.0.copyload1291, %do.body757 ]
  %this.sroa.0.0 = phi i8 [ %this.sroa.0.0.copyload1262, %for.end707.do.body767_crit_edge ], [ %this.sroa.0.0.copyload1263, %do.body757 ]
  %shr770 = lshr i32 %hold.26, %conv769.pre-phi
  %sub773 = sub i32 %bits.26, %conv769.pre-phi
  %conv777 = zext i16 %this.sroa.43.0 to i32
  %233 = ptrtoint ptr %length1065 to i32
  call void @__asan_store4_noabort(i32 %233)
  store i32 %conv777, ptr %length1065, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %this.sroa.0.0)
  %cmp781 = icmp eq i8 %this.sroa.0.0, 0
  br i1 %cmp781, label %if.then783, label %if.end785

if.then783:                                       ; preds = %do.body767
  call void @__sanitizer_cov_trace_pc() #10
  %234 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %234)
  store i32 23, ptr %1, align 4
  br label %for.cond.backedge

if.end785:                                        ; preds = %do.body767
  %and788 = and i32 %conv780.pre-phi, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and788)
  %tobool789.not = icmp eq i32 %and788, 0
  br i1 %tobool789.not, label %if.end792, label %if.then790

if.then790:                                       ; preds = %if.end785
  call void @__sanitizer_cov_trace_pc() #10
  %235 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %235)
  store i32 11, ptr %1, align 4
  br label %for.cond.backedge

if.end792:                                        ; preds = %if.end785
  %and795 = and i32 %conv780.pre-phi, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and795)
  %tobool796.not = icmp eq i32 %and795, 0
  br i1 %tobool796.not, label %if.end800, label %if.then797

if.then797:                                       ; preds = %if.end792
  call void @__sanitizer_cov_trace_pc() #10
  %236 = ptrtoint ptr %msg1122 to i32
  call void @__asan_store4_noabort(i32 %236)
  store ptr @.str.10, ptr %msg1122, align 4
  %237 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %237)
  store i32 27, ptr %1, align 4
  br label %for.cond.backedge

if.end800:                                        ; preds = %if.end792
  call void @__sanitizer_cov_trace_pc() #10
  %and803 = and i32 %conv780.pre-phi, 15
  %238 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %238)
  store i32 %and803, ptr %extra, align 4
  %239 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %239)
  store i32 19, ptr %1, align 4
  br label %sw.bb805

sw.bb805thread-pre-split:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %240 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %240)
  %.pr2631 = load i32, ptr %extra, align 4
  br label %sw.bb805

sw.bb805:                                         ; preds = %sw.bb805thread-pre-split, %if.end800
  %241 = phi i32 [ %.pr2631, %sw.bb805thread-pre-split ], [ %and803, %if.end800 ]
  %next.27 = phi ptr [ %next.0, %sw.bb805thread-pre-split ], [ %next.26, %if.end800 ]
  %have.27 = phi i32 [ %have.0, %sw.bb805thread-pre-split ], [ %have.26, %if.end800 ]
  %hold.27 = phi i32 [ %hold.0, %sw.bb805thread-pre-split ], [ %shr770, %if.end800 ]
  %bits.27 = phi i32 [ %bits.0, %sw.bb805thread-pre-split ], [ %sub773, %if.end800 ]
  %ret.3 = phi i32 [ %ret.0, %sw.bb805thread-pre-split ], [ %ret.2, %if.end800 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %241)
  %tobool807.not = icmp eq i32 %241, 0
  br i1 %tobool807.not, label %sw.bb805.if.end844_crit_edge, label %while.cond810.preheader

sw.bb805.if.end844_crit_edge:                     ; preds = %sw.bb805
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end844

while.cond810.preheader:                          ; preds = %sw.bb805
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.27, i32 %241)
  %cmp8122349 = icmp ult i32 %bits.27, %241
  br i1 %cmp8122349, label %while.cond810.preheader.do.body815_crit_edge, label %while.cond810.preheader.do.end830_crit_edge

while.cond810.preheader.do.end830_crit_edge:      ; preds = %while.cond810.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end830

while.cond810.preheader.do.body815_crit_edge:     ; preds = %while.cond810.preheader
  br label %do.body815

do.body815:                                       ; preds = %if.end819.do.body815_crit_edge, %while.cond810.preheader.do.body815_crit_edge
  %bits.282353 = phi i32 [ %add825, %if.end819.do.body815_crit_edge ], [ %bits.27, %while.cond810.preheader.do.body815_crit_edge ]
  %hold.282352 = phi i32 [ %add824, %if.end819.do.body815_crit_edge ], [ %hold.27, %while.cond810.preheader.do.body815_crit_edge ]
  %have.282351 = phi i32 [ %dec820, %if.end819.do.body815_crit_edge ], [ %have.27, %while.cond810.preheader.do.body815_crit_edge ]
  %next.282350 = phi ptr [ %incdec.ptr821, %if.end819.do.body815_crit_edge ], [ %next.27, %while.cond810.preheader.do.body815_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.282351)
  %cmp816 = icmp eq i32 %have.282351, 0
  br i1 %cmp816, label %do.body1135.loopexit2643, label %if.end819

if.end819:                                        ; preds = %do.body815
  %dec820 = add i32 %have.282351, -1
  %incdec.ptr821 = getelementptr i8, ptr %next.282350, i32 1
  %242 = ptrtoint ptr %next.282350 to i32
  call void @__asan_load1_noabort(i32 %242)
  %243 = load i8, ptr %next.282350, align 1
  %conv822 = zext i8 %243 to i32
  %shl823 = shl i32 %conv822, %bits.282353
  %add824 = add i32 %shl823, %hold.282352
  %add825 = add i32 %bits.282353, 8
  %cmp812 = icmp ult i32 %add825, %241
  br i1 %cmp812, label %if.end819.do.body815_crit_edge, label %if.end819.do.end830_crit_edge

if.end819.do.end830_crit_edge:                    ; preds = %if.end819
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end830

if.end819.do.body815_crit_edge:                   ; preds = %if.end819
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body815

do.end830:                                        ; preds = %if.end819.do.end830_crit_edge, %while.cond810.preheader.do.end830_crit_edge
  %next.28.lcssa = phi ptr [ %next.27, %while.cond810.preheader.do.end830_crit_edge ], [ %incdec.ptr821, %if.end819.do.end830_crit_edge ]
  %have.28.lcssa = phi i32 [ %have.27, %while.cond810.preheader.do.end830_crit_edge ], [ %dec820, %if.end819.do.end830_crit_edge ]
  %hold.28.lcssa = phi i32 [ %hold.27, %while.cond810.preheader.do.end830_crit_edge ], [ %add824, %if.end819.do.end830_crit_edge ]
  %bits.28.lcssa = phi i32 [ %bits.27, %while.cond810.preheader.do.end830_crit_edge ], [ %add825, %if.end819.do.end830_crit_edge ]
  %notmask1830 = shl nsw i32 -1, %241
  %sub833 = xor i32 %notmask1830, -1
  %and834 = and i32 %hold.28.lcssa, %sub833
  %244 = ptrtoint ptr %length1065 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %length1065, align 4
  %add836 = add i32 %245, %and834
  store i32 %add836, ptr %length1065, align 4
  %shr839 = lshr i32 %hold.28.lcssa, %241
  %sub841 = sub i32 %bits.28.lcssa, %241
  br label %if.end844

if.end844:                                        ; preds = %do.end830, %sw.bb805.if.end844_crit_edge
  %next.29 = phi ptr [ %next.28.lcssa, %do.end830 ], [ %next.27, %sw.bb805.if.end844_crit_edge ]
  %have.29 = phi i32 [ %have.28.lcssa, %do.end830 ], [ %have.27, %sw.bb805.if.end844_crit_edge ]
  %hold.29 = phi i32 [ %shr839, %do.end830 ], [ %hold.27, %sw.bb805.if.end844_crit_edge ]
  %bits.29 = phi i32 [ %sub841, %do.end830 ], [ %bits.27, %sw.bb805.if.end844_crit_edge ]
  %246 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 20, ptr %1, align 4
  br label %sw.bb846

sw.bb846:                                         ; preds = %if.end844, %for.cond.sw.bb846_crit_edge
  %next.30 = phi ptr [ %next.0, %for.cond.sw.bb846_crit_edge ], [ %next.29, %if.end844 ]
  %have.30 = phi i32 [ %have.0, %for.cond.sw.bb846_crit_edge ], [ %have.29, %if.end844 ]
  %hold.30 = phi i32 [ %hold.0, %for.cond.sw.bb846_crit_edge ], [ %hold.29, %if.end844 ]
  %bits.30 = phi i32 [ %bits.0, %for.cond.sw.bb846_crit_edge ], [ %bits.29, %if.end844 ]
  %ret.4 = phi i32 [ %ret.0, %for.cond.sw.bb846_crit_edge ], [ %ret.3, %if.end844 ]
  %247 = ptrtoint ptr %distcode to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %distcode, align 4
  %249 = ptrtoint ptr %distbits to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %distbits, align 4
  %notmask1828 = shl nsw i32 -1, %250
  %sub851 = xor i32 %notmask1828, -1
  %and8522360 = and i32 %hold.30, %sub851
  %arrayidx8532361 = getelementptr %struct.code, ptr %248, i32 %and8522360
  %this.sroa.19.0.arrayidx853.sroa_idx2362 = getelementptr inbounds i8, ptr %arrayidx8532361, i32 1
  %251 = ptrtoint ptr %this.sroa.19.0.arrayidx853.sroa_idx2362 to i32
  call void @__asan_load1_noabort(i32 %251)
  %this.sroa.19.0.copyload12682363 = load i8, ptr %this.sroa.19.0.arrayidx853.sroa_idx2362, align 1
  %conv8552364 = zext i8 %this.sroa.19.0.copyload12682363 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.30, i32 %conv8552364)
  %cmp856.not2365 = icmp ult i32 %bits.30, %conv8552364
  br i1 %cmp856.not2365, label %sw.bb846.do.body860_crit_edge, label %sw.bb846.for.end873_crit_edge

sw.bb846.for.end873_crit_edge:                    ; preds = %sw.bb846
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end873

sw.bb846.do.body860_crit_edge:                    ; preds = %sw.bb846
  br label %do.body860

do.body860:                                       ; preds = %if.end864.do.body860_crit_edge, %sw.bb846.do.body860_crit_edge
  %bits.312369 = phi i32 [ %add870, %if.end864.do.body860_crit_edge ], [ %bits.30, %sw.bb846.do.body860_crit_edge ]
  %hold.312368 = phi i32 [ %add869, %if.end864.do.body860_crit_edge ], [ %hold.30, %sw.bb846.do.body860_crit_edge ]
  %have.312367 = phi i32 [ %dec865, %if.end864.do.body860_crit_edge ], [ %have.30, %sw.bb846.do.body860_crit_edge ]
  %next.312366 = phi ptr [ %incdec.ptr866, %if.end864.do.body860_crit_edge ], [ %next.30, %sw.bb846.do.body860_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.312367)
  %cmp861 = icmp eq i32 %have.312367, 0
  br i1 %cmp861, label %do.body1135.loopexit2642, label %if.end864

if.end864:                                        ; preds = %do.body860
  %dec865 = add i32 %have.312367, -1
  %incdec.ptr866 = getelementptr i8, ptr %next.312366, i32 1
  %252 = ptrtoint ptr %next.312366 to i32
  call void @__asan_load1_noabort(i32 %252)
  %253 = load i8, ptr %next.312366, align 1
  %conv867 = zext i8 %253 to i32
  %shl868 = shl i32 %conv867, %bits.312369
  %add869 = add i32 %shl868, %hold.312368
  %add870 = add nuw nsw i32 %bits.312369, 8
  %and852 = and i32 %add869, %sub851
  %arrayidx853 = getelementptr %struct.code, ptr %248, i32 %and852
  %this.sroa.19.0.arrayidx853.sroa_idx = getelementptr inbounds i8, ptr %arrayidx853, i32 1
  %254 = ptrtoint ptr %this.sroa.19.0.arrayidx853.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %254)
  %this.sroa.19.0.copyload1268 = load i8, ptr %this.sroa.19.0.arrayidx853.sroa_idx, align 1
  %conv855 = zext i8 %this.sroa.19.0.copyload1268 to i32
  %cmp856.not = icmp ult i32 %add870, %conv855
  br i1 %cmp856.not, label %if.end864.do.body860_crit_edge, label %for.end873.loopexit

if.end864.do.body860_crit_edge:                   ; preds = %if.end864
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body860

for.end873.loopexit:                              ; preds = %if.end864
  call void @__sanitizer_cov_trace_pc() #10
  %conv855.le = zext i8 %this.sroa.19.0.copyload1268 to i32
  br label %for.end873

for.end873:                                       ; preds = %for.end873.loopexit, %sw.bb846.for.end873_crit_edge
  %conv855.le.pre-phi = phi i32 [ %conv8552364, %sw.bb846.for.end873_crit_edge ], [ %conv855.le, %for.end873.loopexit ]
  %arrayidx853.lcssa2359 = phi ptr [ %arrayidx8532361, %sw.bb846.for.end873_crit_edge ], [ %arrayidx853, %for.end873.loopexit ]
  %next.31.lcssa = phi ptr [ %next.30, %sw.bb846.for.end873_crit_edge ], [ %incdec.ptr866, %for.end873.loopexit ]
  %have.31.lcssa = phi i32 [ %have.30, %sw.bb846.for.end873_crit_edge ], [ %dec865, %for.end873.loopexit ]
  %hold.31.lcssa = phi i32 [ %hold.30, %sw.bb846.for.end873_crit_edge ], [ %add869, %for.end873.loopexit ]
  %bits.31.lcssa = phi i32 [ %bits.30, %sw.bb846.for.end873_crit_edge ], [ %add870, %for.end873.loopexit ]
  %this.sroa.43.0.arrayidx853.sroa_idx.le = getelementptr inbounds i8, ptr %arrayidx853.lcssa2359, i32 2
  %255 = ptrtoint ptr %this.sroa.43.0.arrayidx853.sroa_idx.le to i32
  call void @__asan_load2_noabort(i32 %255)
  %this.sroa.43.0.copyload1292.le = load i16, ptr %this.sroa.43.0.arrayidx853.sroa_idx.le, align 2
  %256 = ptrtoint ptr %arrayidx853.lcssa2359 to i32
  call void @__asan_load1_noabort(i32 %256)
  %this.sroa.0.0.copyload1264 = load i8, ptr %arrayidx853.lcssa2359, align 2
  %conv875 = zext i8 %this.sroa.0.0.copyload1264 to i32
  %and876 = and i32 %conv875, 240
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and876)
  %cmp877 = icmp eq i32 %and876, 0
  br i1 %cmp877, label %for.cond880.preheader, label %for.end873.do.body930_crit_edge

for.end873.do.body930_crit_edge:                  ; preds = %for.end873
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body930

for.cond880.preheader:                            ; preds = %for.end873
  %conv883 = zext i16 %this.sroa.43.0.copyload1292.le to i32
  %add888 = add nuw nsw i32 %conv855.le.pre-phi, %conv875
  %notmask1829 = shl nsw i32 -1, %add888
  %sub890 = xor i32 %notmask1829, -1
  %and8912379 = and i32 %hold.31.lcssa, %sub890
  %shr8942380 = lshr i32 %and8912379, %conv855.le.pre-phi
  %add8952381 = add i32 %shr8942380, %conv883
  %arrayidx8962382 = getelementptr %struct.code, ptr %248, i32 %add8952381
  %this.sroa.19.0.arrayidx896.sroa_idx2383 = getelementptr inbounds i8, ptr %arrayidx8962382, i32 1
  %257 = ptrtoint ptr %this.sroa.19.0.arrayidx896.sroa_idx2383 to i32
  call void @__asan_load1_noabort(i32 %257)
  %this.sroa.19.0.copyload12692384 = load i8, ptr %this.sroa.19.0.arrayidx896.sroa_idx2383, align 1
  %conv9002385 = zext i8 %this.sroa.19.0.copyload12692384 to i32
  %add9012386 = add nuw nsw i32 %conv855.le.pre-phi, %conv9002385
  call void @__sanitizer_cov_trace_cmp4(i32 %add9012386, i32 %bits.31.lcssa)
  %cmp902.not2387 = icmp ugt i32 %add9012386, %bits.31.lcssa
  br i1 %cmp902.not2387, label %for.cond880.preheader.do.body906_crit_edge, label %for.cond880.preheader.do.body920_crit_edge

for.cond880.preheader.do.body920_crit_edge:       ; preds = %for.cond880.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body920

for.cond880.preheader.do.body906_crit_edge:       ; preds = %for.cond880.preheader
  br label %do.body906

do.body906:                                       ; preds = %if.end910.do.body906_crit_edge, %for.cond880.preheader.do.body906_crit_edge
  %bits.322391 = phi i32 [ %add916, %if.end910.do.body906_crit_edge ], [ %bits.31.lcssa, %for.cond880.preheader.do.body906_crit_edge ]
  %hold.322390 = phi i32 [ %add915, %if.end910.do.body906_crit_edge ], [ %hold.31.lcssa, %for.cond880.preheader.do.body906_crit_edge ]
  %have.322389 = phi i32 [ %dec911, %if.end910.do.body906_crit_edge ], [ %have.31.lcssa, %for.cond880.preheader.do.body906_crit_edge ]
  %next.322388 = phi ptr [ %incdec.ptr912, %if.end910.do.body906_crit_edge ], [ %next.31.lcssa, %for.cond880.preheader.do.body906_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.322389)
  %cmp907 = icmp eq i32 %have.322389, 0
  br i1 %cmp907, label %do.body1135.loopexit2641, label %if.end910

if.end910:                                        ; preds = %do.body906
  %dec911 = add i32 %have.322389, -1
  %incdec.ptr912 = getelementptr i8, ptr %next.322388, i32 1
  %258 = ptrtoint ptr %next.322388 to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %next.322388, align 1
  %conv913 = zext i8 %259 to i32
  %shl914 = shl i32 %conv913, %bits.322391
  %add915 = add i32 %shl914, %hold.322390
  %add916 = add nuw nsw i32 %bits.322391, 8
  %and891 = and i32 %add915, %sub890
  %shr894 = lshr i32 %and891, %conv855.le.pre-phi
  %add895 = add i32 %shr894, %conv883
  %arrayidx896 = getelementptr %struct.code, ptr %248, i32 %add895
  %this.sroa.19.0.arrayidx896.sroa_idx = getelementptr inbounds i8, ptr %arrayidx896, i32 1
  %260 = ptrtoint ptr %this.sroa.19.0.arrayidx896.sroa_idx to i32
  call void @__asan_load1_noabort(i32 %260)
  %this.sroa.19.0.copyload1269 = load i8, ptr %this.sroa.19.0.arrayidx896.sroa_idx, align 1
  %conv900 = zext i8 %this.sroa.19.0.copyload1269 to i32
  %add901 = add nuw nsw i32 %conv855.le.pre-phi, %conv900
  %cmp902.not = icmp ugt i32 %add901, %add916
  br i1 %cmp902.not, label %if.end910.do.body906_crit_edge, label %do.body920.loopexit

if.end910.do.body906_crit_edge:                   ; preds = %if.end910
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body906

do.body920.loopexit:                              ; preds = %if.end910
  call void @__sanitizer_cov_trace_pc() #10
  %conv900.le = zext i8 %this.sroa.19.0.copyload1269 to i32
  br label %do.body920

do.body920:                                       ; preds = %do.body920.loopexit, %for.cond880.preheader.do.body920_crit_edge
  %.pre2629.pre-phi = phi i32 [ %conv9002385, %for.cond880.preheader.do.body920_crit_edge ], [ %conv900.le, %do.body920.loopexit ]
  %next.32.lcssa = phi ptr [ %next.31.lcssa, %for.cond880.preheader.do.body920_crit_edge ], [ %incdec.ptr912, %do.body920.loopexit ]
  %have.32.lcssa = phi i32 [ %have.31.lcssa, %for.cond880.preheader.do.body920_crit_edge ], [ %dec911, %do.body920.loopexit ]
  %hold.32.lcssa = phi i32 [ %hold.31.lcssa, %for.cond880.preheader.do.body920_crit_edge ], [ %add915, %do.body920.loopexit ]
  %bits.32.lcssa = phi i32 [ %bits.31.lcssa, %for.cond880.preheader.do.body920_crit_edge ], [ %add916, %do.body920.loopexit ]
  %arrayidx896.lcssa = phi ptr [ %arrayidx8962382, %for.cond880.preheader.do.body920_crit_edge ], [ %arrayidx896, %do.body920.loopexit ]
  %this.sroa.43.0.arrayidx896.sroa_idx = getelementptr inbounds i8, ptr %arrayidx896.lcssa, i32 2
  %261 = ptrtoint ptr %this.sroa.43.0.arrayidx896.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %261)
  %this.sroa.43.0.copyload1293 = load i16, ptr %this.sroa.43.0.arrayidx896.sroa_idx, align 2
  %262 = ptrtoint ptr %arrayidx896.lcssa to i32
  call void @__asan_load1_noabort(i32 %262)
  %this.sroa.0.0.copyload1265 = load i8, ptr %arrayidx896.lcssa, align 2
  %shr923 = lshr i32 %hold.32.lcssa, %conv855.le.pre-phi
  %sub926 = sub i32 %bits.32.lcssa, %conv855.le.pre-phi
  %.pre2630 = zext i8 %this.sroa.0.0.copyload1265 to i32
  br label %do.body930

do.body930:                                       ; preds = %do.body920, %for.end873.do.body930_crit_edge
  %conv940.pre-phi = phi i32 [ %conv875, %for.end873.do.body930_crit_edge ], [ %.pre2630, %do.body920 ]
  %conv932.pre-phi = phi i32 [ %conv855.le.pre-phi, %for.end873.do.body930_crit_edge ], [ %.pre2629.pre-phi, %do.body920 ]
  %next.33 = phi ptr [ %next.31.lcssa, %for.end873.do.body930_crit_edge ], [ %next.32.lcssa, %do.body920 ]
  %have.33 = phi i32 [ %have.31.lcssa, %for.end873.do.body930_crit_edge ], [ %have.32.lcssa, %do.body920 ]
  %hold.33 = phi i32 [ %hold.31.lcssa, %for.end873.do.body930_crit_edge ], [ %shr923, %do.body920 ]
  %bits.33 = phi i32 [ %bits.31.lcssa, %for.end873.do.body930_crit_edge ], [ %sub926, %do.body920 ]
  %this.sroa.43.1 = phi i16 [ %this.sroa.43.0.copyload1292.le, %for.end873.do.body930_crit_edge ], [ %this.sroa.43.0.copyload1293, %do.body920 ]
  %shr933 = lshr i32 %hold.33, %conv932.pre-phi
  %sub936 = sub i32 %bits.33, %conv932.pre-phi
  %and941 = and i32 %conv940.pre-phi, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and941)
  %tobool942.not = icmp eq i32 %and941, 0
  br i1 %tobool942.not, label %if.end946, label %if.then943

if.then943:                                       ; preds = %do.body930
  call void @__sanitizer_cov_trace_pc() #10
  %263 = ptrtoint ptr %msg1122 to i32
  call void @__asan_store4_noabort(i32 %263)
  store ptr @.str.11, ptr %msg1122, align 4
  %264 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 27, ptr %1, align 4
  br label %for.cond.backedge

if.end946:                                        ; preds = %do.body930
  call void @__sanitizer_cov_trace_pc() #10
  %conv948 = zext i16 %this.sroa.43.1 to i32
  %265 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %265)
  store i32 %conv948, ptr %offset, align 4
  %and951 = and i32 %conv940.pre-phi, 15
  %266 = ptrtoint ptr %extra to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %and951, ptr %extra, align 4
  %267 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %267)
  store i32 21, ptr %1, align 4
  br label %sw.bb954

sw.bb954thread-pre-split:                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  %268 = ptrtoint ptr %extra to i32
  call void @__asan_load4_noabort(i32 %268)
  %.pr2632 = load i32, ptr %extra, align 4
  br label %sw.bb954

sw.bb954:                                         ; preds = %sw.bb954thread-pre-split, %if.end946
  %269 = phi i32 [ %.pr2632, %sw.bb954thread-pre-split ], [ %and951, %if.end946 ]
  %next.34 = phi ptr [ %next.0, %sw.bb954thread-pre-split ], [ %next.33, %if.end946 ]
  %have.34 = phi i32 [ %have.0, %sw.bb954thread-pre-split ], [ %have.33, %if.end946 ]
  %hold.34 = phi i32 [ %hold.0, %sw.bb954thread-pre-split ], [ %shr933, %if.end946 ]
  %bits.34 = phi i32 [ %bits.0, %sw.bb954thread-pre-split ], [ %sub936, %if.end946 ]
  %ret.5 = phi i32 [ %ret.0, %sw.bb954thread-pre-split ], [ %ret.4, %if.end946 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %269)
  %tobool956.not = icmp eq i32 %269, 0
  br i1 %tobool956.not, label %sw.bb954.if.end993_crit_edge, label %while.cond959.preheader

sw.bb954.if.end993_crit_edge:                     ; preds = %sw.bb954
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end993

while.cond959.preheader:                          ; preds = %sw.bb954
  call void @__sanitizer_cov_trace_cmp4(i32 %bits.34, i32 %269)
  %cmp9612398 = icmp ult i32 %bits.34, %269
  br i1 %cmp9612398, label %while.cond959.preheader.do.body964_crit_edge, label %while.cond959.preheader.do.end979_crit_edge

while.cond959.preheader.do.end979_crit_edge:      ; preds = %while.cond959.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end979

while.cond959.preheader.do.body964_crit_edge:     ; preds = %while.cond959.preheader
  br label %do.body964

do.body964:                                       ; preds = %if.end968.do.body964_crit_edge, %while.cond959.preheader.do.body964_crit_edge
  %bits.352402 = phi i32 [ %add974, %if.end968.do.body964_crit_edge ], [ %bits.34, %while.cond959.preheader.do.body964_crit_edge ]
  %hold.352401 = phi i32 [ %add973, %if.end968.do.body964_crit_edge ], [ %hold.34, %while.cond959.preheader.do.body964_crit_edge ]
  %have.352400 = phi i32 [ %dec969, %if.end968.do.body964_crit_edge ], [ %have.34, %while.cond959.preheader.do.body964_crit_edge ]
  %next.352399 = phi ptr [ %incdec.ptr970, %if.end968.do.body964_crit_edge ], [ %next.34, %while.cond959.preheader.do.body964_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.352400)
  %cmp965 = icmp eq i32 %have.352400, 0
  br i1 %cmp965, label %do.body1135.loopexit2640, label %if.end968

if.end968:                                        ; preds = %do.body964
  %dec969 = add i32 %have.352400, -1
  %incdec.ptr970 = getelementptr i8, ptr %next.352399, i32 1
  %270 = ptrtoint ptr %next.352399 to i32
  call void @__asan_load1_noabort(i32 %270)
  %271 = load i8, ptr %next.352399, align 1
  %conv971 = zext i8 %271 to i32
  %shl972 = shl i32 %conv971, %bits.352402
  %add973 = add i32 %shl972, %hold.352401
  %add974 = add i32 %bits.352402, 8
  %cmp961 = icmp ult i32 %add974, %269
  br i1 %cmp961, label %if.end968.do.body964_crit_edge, label %if.end968.do.end979_crit_edge

if.end968.do.end979_crit_edge:                    ; preds = %if.end968
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end979

if.end968.do.body964_crit_edge:                   ; preds = %if.end968
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body964

do.end979:                                        ; preds = %if.end968.do.end979_crit_edge, %while.cond959.preheader.do.end979_crit_edge
  %next.35.lcssa = phi ptr [ %next.34, %while.cond959.preheader.do.end979_crit_edge ], [ %incdec.ptr970, %if.end968.do.end979_crit_edge ]
  %have.35.lcssa = phi i32 [ %have.34, %while.cond959.preheader.do.end979_crit_edge ], [ %dec969, %if.end968.do.end979_crit_edge ]
  %hold.35.lcssa = phi i32 [ %hold.34, %while.cond959.preheader.do.end979_crit_edge ], [ %add973, %if.end968.do.end979_crit_edge ]
  %bits.35.lcssa = phi i32 [ %bits.34, %while.cond959.preheader.do.end979_crit_edge ], [ %add974, %if.end968.do.end979_crit_edge ]
  %notmask = shl nsw i32 -1, %269
  %sub982 = xor i32 %notmask, -1
  %and983 = and i32 %hold.35.lcssa, %sub982
  %272 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %offset, align 4
  %add985 = add i32 %273, %and983
  store i32 %add985, ptr %offset, align 4
  %shr988 = lshr i32 %hold.35.lcssa, %269
  %sub990 = sub i32 %bits.35.lcssa, %269
  br label %if.end993

if.end993:                                        ; preds = %do.end979, %sw.bb954.if.end993_crit_edge
  %next.36 = phi ptr [ %next.35.lcssa, %do.end979 ], [ %next.34, %sw.bb954.if.end993_crit_edge ]
  %have.36 = phi i32 [ %have.35.lcssa, %do.end979 ], [ %have.34, %sw.bb954.if.end993_crit_edge ]
  %hold.36 = phi i32 [ %shr988, %do.end979 ], [ %hold.34, %sw.bb954.if.end993_crit_edge ]
  %bits.36 = phi i32 [ %sub990, %do.end979 ], [ %bits.34, %sw.bb954.if.end993_crit_edge ]
  %274 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %274)
  %275 = load i32, ptr %offset, align 4
  %276 = ptrtoint ptr %whave to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load i32, ptr %whave, align 4
  %add995 = sub i32 %out.0, %left.0
  %sub996 = add i32 %add995, %277
  call void @__sanitizer_cov_trace_cmp4(i32 %275, i32 %sub996)
  %cmp997 = icmp ugt i32 %275, %sub996
  br i1 %cmp997, label %if.then999, label %if.end1002

if.then999:                                       ; preds = %if.end993
  call void @__sanitizer_cov_trace_pc() #10
  %278 = ptrtoint ptr %msg1122 to i32
  call void @__asan_store4_noabort(i32 %278)
  store ptr @.str.12, ptr %msg1122, align 4
  %279 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 27, ptr %1, align 4
  br label %for.cond.backedge

if.end1002:                                       ; preds = %if.end993
  call void @__sanitizer_cov_trace_pc() #10
  %280 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 22, ptr %1, align 4
  br label %sw.bb1004

sw.bb1004:                                        ; preds = %if.end1002, %for.cond.sw.bb1004_crit_edge
  %next.37 = phi ptr [ %next.0, %for.cond.sw.bb1004_crit_edge ], [ %next.36, %if.end1002 ]
  %have.37 = phi i32 [ %have.0, %for.cond.sw.bb1004_crit_edge ], [ %have.36, %if.end1002 ]
  %hold.37 = phi i32 [ %hold.0, %for.cond.sw.bb1004_crit_edge ], [ %hold.36, %if.end1002 ]
  %bits.37 = phi i32 [ %bits.0, %for.cond.sw.bb1004_crit_edge ], [ %bits.36, %if.end1002 ]
  %ret.6 = phi i32 [ %ret.0, %for.cond.sw.bb1004_crit_edge ], [ %ret.5, %if.end1002 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left.0)
  %cmp1005 = icmp eq i32 %left.0, 0
  br i1 %cmp1005, label %sw.bb1004.do.body1135.loopexit2999_crit_edge, label %if.end1008

sw.bb1004.do.body1135.loopexit2999_crit_edge:     ; preds = %sw.bb1004
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135.loopexit2999

if.end1008:                                       ; preds = %sw.bb1004
  %sub1009 = sub i32 %out.0, %left.0
  %281 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %offset, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %282, i32 %sub1009)
  %cmp1011 = icmp ugt i32 %282, %sub1009
  br i1 %cmp1011, label %if.then1013, label %if.else1035

if.then1013:                                      ; preds = %if.end1008
  %sub1015 = sub i32 %282, %sub1009
  %283 = ptrtoint ptr %write to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load i32, ptr %write, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub1015, i32 %284)
  %cmp1016 = icmp ugt i32 %sub1015, %284
  br i1 %cmp1016, label %if.then1018, label %if.else1023

if.then1018:                                      ; preds = %if.then1013
  call void @__sanitizer_cov_trace_pc() #10
  %sub1020 = sub i32 %sub1015, %284
  %285 = ptrtoint ptr %window1024 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %window1024, align 4
  %287 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load i32, ptr %wsize, align 4
  %sub1021 = sub i32 %288, %sub1020
  %add.ptr1022 = getelementptr i8, ptr %286, i32 %sub1021
  br label %if.end1028

if.else1023:                                      ; preds = %if.then1013
  call void @__sanitizer_cov_trace_pc() #10
  %289 = ptrtoint ptr %window1024 to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load ptr, ptr %window1024, align 4
  %sub1026 = sub i32 %284, %sub1015
  %add.ptr1027 = getelementptr i8, ptr %290, i32 %sub1026
  br label %if.end1028

if.end1028:                                       ; preds = %if.else1023, %if.then1018
  %copy.4 = phi i32 [ %sub1020, %if.then1018 ], [ %sub1015, %if.else1023 ]
  %from.0 = phi ptr [ %add.ptr1022, %if.then1018 ], [ %add.ptr1027, %if.else1023 ]
  %291 = ptrtoint ptr %length1065 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load i32, ptr %length1065, align 4
  %293 = tail call i32 @llvm.umin.i32(i32 %copy.4, i32 %292)
  br label %if.end1039

if.else1035:                                      ; preds = %if.end1008
  call void @__sanitizer_cov_trace_pc() #10
  %idx.neg = sub i32 0, %282
  %add.ptr1037 = getelementptr i8, ptr %put.0, i32 %idx.neg
  %294 = ptrtoint ptr %length1065 to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %length1065, align 4
  br label %if.end1039

if.end1039:                                       ; preds = %if.else1035, %if.end1028
  %copy.5 = phi i32 [ %295, %if.else1035 ], [ %293, %if.end1028 ]
  %from.1 = phi ptr [ %add.ptr1037, %if.else1035 ], [ %from.0, %if.end1028 ]
  %296 = tail call i32 @llvm.umin.i32(i32 %copy.5, i32 %left.0)
  %297 = ptrtoint ptr %length1065 to i32
  call void @__asan_load4_noabort(i32 %297)
  %298 = load i32, ptr %length1065, align 4
  %sub1046 = sub i32 %298, %296
  store i32 %sub1046, ptr %length1065, align 4
  br label %do.body1047

do.body1047:                                      ; preds = %do.body1047.do.body1047_crit_edge, %if.end1039
  %put.1 = phi ptr [ %put.0, %if.end1039 ], [ %incdec.ptr1049, %do.body1047.do.body1047_crit_edge ]
  %copy.7 = phi i32 [ %296, %if.end1039 ], [ %dec1051, %do.body1047.do.body1047_crit_edge ]
  %from.2 = phi ptr [ %from.1, %if.end1039 ], [ %incdec.ptr1048, %do.body1047.do.body1047_crit_edge ]
  %incdec.ptr1048 = getelementptr i8, ptr %from.2, i32 1
  %299 = ptrtoint ptr %from.2 to i32
  call void @__asan_load1_noabort(i32 %299)
  %300 = load i8, ptr %from.2, align 1
  %incdec.ptr1049 = getelementptr i8, ptr %put.1, i32 1
  %301 = ptrtoint ptr %put.1 to i32
  call void @__asan_store1_noabort(i32 %301)
  store i8 %300, ptr %put.1, align 1
  %dec1051 = add i32 %copy.7, -1
  %tobool1052.not = icmp eq i32 %dec1051, 0
  br i1 %tobool1052.not, label %do.end1053, label %do.body1047.do.body1047_crit_edge

do.body1047.do.body1047_crit_edge:                ; preds = %do.body1047
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1047

do.end1053:                                       ; preds = %do.body1047
  %sub1044 = sub i32 %left.0, %296
  %302 = ptrtoint ptr %length1065 to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %length1065, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %303)
  %cmp1055 = icmp eq i32 %303, 0
  br i1 %cmp1055, label %if.then1057, label %do.end1053.for.cond.backedge_crit_edge

do.end1053.for.cond.backedge_crit_edge:           ; preds = %do.end1053
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.backedge

if.then1057:                                      ; preds = %do.end1053
  call void @__sanitizer_cov_trace_pc() #10
  %304 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %304)
  store i32 18, ptr %1, align 4
  br label %for.cond.backedge

sw.bb1060:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %left.0)
  %cmp1061 = icmp eq i32 %left.0, 0
  br i1 %cmp1061, label %sw.bb1060.do.body1135.loopexit2999_crit_edge, label %if.end1064

sw.bb1060.do.body1135.loopexit2999_crit_edge:     ; preds = %sw.bb1060
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135.loopexit2999

if.end1064:                                       ; preds = %sw.bb1060
  call void @__sanitizer_cov_trace_pc() #10
  %305 = ptrtoint ptr %length1065 to i32
  call void @__asan_load4_noabort(i32 %305)
  %306 = load i32, ptr %length1065, align 4
  %conv1066 = trunc i32 %306 to i8
  %incdec.ptr1067 = getelementptr i8, ptr %put.0, i32 1
  %307 = ptrtoint ptr %put.0 to i32
  call void @__asan_store1_noabort(i32 %307)
  store i8 %conv1066, ptr %put.0, align 1
  %dec1068 = add i32 %left.0, -1
  %308 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %308)
  store i32 18, ptr %1, align 4
  br label %for.cond.backedge

sw.bb1070:                                        ; preds = %for.cond
  %309 = ptrtoint ptr %wrap1071 to i32
  call void @__asan_load4_noabort(i32 %309)
  %310 = load i32, ptr %wrap1071, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %310)
  %tobool1072.not = icmp eq i32 %310, 0
  br i1 %tobool1072.not, label %sw.bb1070.if.end1128_crit_edge, label %while.cond1075.preheader

sw.bb1070.if.end1128_crit_edge:                   ; preds = %sw.bb1070
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1128

while.cond1075.preheader:                         ; preds = %sw.bb1070
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %bits.0)
  %cmp10762206 = icmp ult i32 %bits.0, 32
  br i1 %cmp10762206, label %do.body1079, label %while.cond1075.preheader.do.end1094_crit_edge

while.cond1075.preheader.do.end1094_crit_edge:    ; preds = %while.cond1075.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end1094

do.body1079:                                      ; preds = %while.cond1075.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %have.0)
  %cmp1080 = icmp eq i32 %have.0, 0
  br i1 %cmp1080, label %do.body1079.do.body1135_crit_edge, label %if.end1083

do.body1079.do.body1135_crit_edge:                ; preds = %do.body1079
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end1083:                                       ; preds = %do.body1079
  %dec1084 = add i32 %have.0, -1
  %incdec.ptr1085 = getelementptr i8, ptr %next.0, i32 1
  %311 = ptrtoint ptr %next.0 to i32
  call void @__asan_load1_noabort(i32 %311)
  %312 = load i8, ptr %next.0, align 1
  %conv1086 = zext i8 %312 to i32
  %shl1087 = shl i32 %conv1086, %bits.0
  %add1088 = add i32 %shl1087, %hold.0
  %add1089 = add nuw nsw i32 %bits.0, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %bits.0)
  %cmp1076 = icmp ult i32 %bits.0, 24
  br i1 %cmp1076, label %do.body1079.1, label %if.end1083.do.end1094_crit_edge

if.end1083.do.end1094_crit_edge:                  ; preds = %if.end1083
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end1094

do.body1079.1:                                    ; preds = %if.end1083
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec1084)
  %cmp1080.1 = icmp eq i32 %dec1084, 0
  br i1 %cmp1080.1, label %do.body1079.1.do.body1135_crit_edge, label %if.end1083.1

do.body1079.1.do.body1135_crit_edge:              ; preds = %do.body1079.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end1083.1:                                     ; preds = %do.body1079.1
  %dec1084.1 = add i32 %have.0, -2
  %incdec.ptr1085.1 = getelementptr i8, ptr %next.0, i32 2
  %313 = ptrtoint ptr %incdec.ptr1085 to i32
  call void @__asan_load1_noabort(i32 %313)
  %314 = load i8, ptr %incdec.ptr1085, align 1
  %conv1086.1 = zext i8 %314 to i32
  %shl1087.1 = shl i32 %conv1086.1, %add1089
  %add1088.1 = add i32 %shl1087.1, %add1088
  %add1089.1 = add nuw nsw i32 %bits.0, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %bits.0)
  %cmp1076.1 = icmp ult i32 %bits.0, 16
  br i1 %cmp1076.1, label %do.body1079.2, label %if.end1083.1.do.end1094_crit_edge

if.end1083.1.do.end1094_crit_edge:                ; preds = %if.end1083.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end1094

do.body1079.2:                                    ; preds = %if.end1083.1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec1084.1)
  %cmp1080.2 = icmp eq i32 %dec1084.1, 0
  br i1 %cmp1080.2, label %do.body1079.2.do.body1135_crit_edge, label %if.end1083.2

do.body1079.2.do.body1135_crit_edge:              ; preds = %do.body1079.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end1083.2:                                     ; preds = %do.body1079.2
  %dec1084.2 = add i32 %have.0, -3
  %incdec.ptr1085.2 = getelementptr i8, ptr %next.0, i32 3
  %315 = ptrtoint ptr %incdec.ptr1085.1 to i32
  call void @__asan_load1_noabort(i32 %315)
  %316 = load i8, ptr %incdec.ptr1085.1, align 1
  %conv1086.2 = zext i8 %316 to i32
  %shl1087.2 = shl i32 %conv1086.2, %add1089.1
  %add1088.2 = add i32 %shl1087.2, %add1088.1
  %add1089.2 = add nuw nsw i32 %bits.0, 24
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %bits.0)
  %cmp1076.2 = icmp ult i32 %bits.0, 8
  br i1 %cmp1076.2, label %do.body1079.3, label %if.end1083.2.do.end1094_crit_edge

if.end1083.2.do.end1094_crit_edge:                ; preds = %if.end1083.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end1094

do.body1079.3:                                    ; preds = %if.end1083.2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec1084.2)
  %cmp1080.3 = icmp eq i32 %dec1084.2, 0
  br i1 %cmp1080.3, label %do.body1079.3.do.body1135_crit_edge, label %if.end1083.3

do.body1079.3.do.body1135_crit_edge:              ; preds = %do.body1079.3
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body1135

if.end1083.3:                                     ; preds = %do.body1079.3
  call void @__sanitizer_cov_trace_pc() #10
  %dec1084.3 = add i32 %have.0, -4
  %incdec.ptr1085.3 = getelementptr i8, ptr %next.0, i32 4
  %317 = ptrtoint ptr %incdec.ptr1085.2 to i32
  call void @__asan_load1_noabort(i32 %317)
  %318 = load i8, ptr %incdec.ptr1085.2, align 1
  %conv1086.3 = zext i8 %318 to i32
  %shl1087.3 = shl i32 %conv1086.3, %add1089.2
  %add1088.3 = add i32 %shl1087.3, %add1088.2
  %add1089.3 = add nuw nsw i32 %bits.0, 32
  br label %do.end1094

do.end1094:                                       ; preds = %if.end1083.3, %if.end1083.2.do.end1094_crit_edge, %if.end1083.1.do.end1094_crit_edge, %if.end1083.do.end1094_crit_edge, %while.cond1075.preheader.do.end1094_crit_edge
  %next.38.lcssa = phi ptr [ %next.0, %while.cond1075.preheader.do.end1094_crit_edge ], [ %incdec.ptr1085, %if.end1083.do.end1094_crit_edge ], [ %incdec.ptr1085.1, %if.end1083.1.do.end1094_crit_edge ], [ %incdec.ptr1085.2, %if.end1083.2.do.end1094_crit_edge ], [ %incdec.ptr1085.3, %if.end1083.3 ]
  %have.38.lcssa = phi i32 [ %have.0, %while.cond1075.preheader.do.end1094_crit_edge ], [ %dec1084, %if.end1083.do.end1094_crit_edge ], [ %dec1084.1, %if.end1083.1.do.end1094_crit_edge ], [ %dec1084.2, %if.end1083.2.do.end1094_crit_edge ], [ %dec1084.3, %if.end1083.3 ]
  %hold.38.lcssa = phi i32 [ %hold.0, %while.cond1075.preheader.do.end1094_crit_edge ], [ %add1088, %if.end1083.do.end1094_crit_edge ], [ %add1088.1, %if.end1083.1.do.end1094_crit_edge ], [ %add1088.2, %if.end1083.2.do.end1094_crit_edge ], [ %add1088.3, %if.end1083.3 ]
  %bits.38.lcssa = phi i32 [ %bits.0, %while.cond1075.preheader.do.end1094_crit_edge ], [ %add1089, %if.end1083.do.end1094_crit_edge ], [ %add1089.1, %if.end1083.1.do.end1094_crit_edge ], [ %add1089.2, %if.end1083.2.do.end1094_crit_edge ], [ %add1089.3, %if.end1083.3 ]
  %sub1095 = sub i32 %out.0, %left.0
  %319 = ptrtoint ptr %total_out to i32
  call void @__asan_load4_noabort(i32 %319)
  %320 = load i32, ptr %total_out, align 4
  %add1096 = add i32 %320, %sub1095
  store i32 %add1096, ptr %total_out, align 4
  %321 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %321)
  %322 = load i32, ptr %total, align 4
  %add1097 = add i32 %322, %sub1095
  store i32 %add1097, ptr %total, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %out.0, i32 %left.0)
  %tobool1098.not = icmp eq i32 %out.0, %left.0
  br i1 %tobool1098.not, label %do.end1094.if.end1106_crit_edge, label %if.then1099

do.end1094.if.end1106_crit_edge:                  ; preds = %do.end1094
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1106

if.then1099:                                      ; preds = %do.end1094
  call void @__sanitizer_cov_trace_pc() #10
  %323 = ptrtoint ptr %check1100 to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %check1100, align 4
  %idx.neg1101 = sub i32 0, %sub1095
  %add.ptr1102 = getelementptr i8, ptr %put.0, i32 %idx.neg1101
  %call1103 = tail call fastcc i32 @zlib_adler32(i32 noundef %324, ptr noundef %add.ptr1102, i32 noundef %sub1095)
  %325 = ptrtoint ptr %check1100 to i32
  call void @__asan_store4_noabort(i32 %325)
  store i32 %call1103, ptr %check1100, align 4
  %326 = ptrtoint ptr %adler1105 to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 %call1103, ptr %adler1105, align 4
  br label %if.end1106

if.end1106:                                       ; preds = %if.then1099, %do.end1094.if.end1106_crit_edge
  %add1117 = tail call i32 @llvm.bswap.i32(i32 %hold.38.lcssa)
  %327 = ptrtoint ptr %check1100 to i32
  call void @__asan_load4_noabort(i32 %327)
  %328 = load i32, ptr %check1100, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add1117, i32 %328)
  %cmp1119.not = icmp eq i32 %add1117, %328
  br i1 %cmp1119.not, label %if.end1106.if.end1128_crit_edge, label %if.then1121

if.end1106.if.end1128_crit_edge:                  ; preds = %if.end1106
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1128

if.then1121:                                      ; preds = %if.end1106
  call void @__sanitizer_cov_trace_pc() #10
  %329 = ptrtoint ptr %msg1122 to i32
  call void @__asan_store4_noabort(i32 %329)
  store ptr @.str.13, ptr %msg1122, align 4
  %330 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %330)
  store i32 27, ptr %1, align 4
  br label %for.cond.backedge

if.end1128:                                       ; preds = %if.end1106.if.end1128_crit_edge, %sw.bb1070.if.end1128_crit_edge
  %next.39 = phi ptr [ %next.0, %sw.bb1070.if.end1128_crit_edge ], [ %next.38.lcssa, %if.end1106.if.end1128_crit_edge ]
  %have.39 = phi i32 [ %have.0, %sw.bb1070.if.end1128_crit_edge ], [ %have.38.lcssa, %if.end1106.if.end1128_crit_edge ]
  %hold.39 = phi i32 [ %hold.0, %sw.bb1070.if.end1128_crit_edge ], [ 0, %if.end1106.if.end1128_crit_edge ]
  %bits.39 = phi i32 [ %bits.0, %sw.bb1070.if.end1128_crit_edge ], [ 0, %if.end1106.if.end1128_crit_edge ]
  %out.1 = phi i32 [ %out.0, %sw.bb1070.if.end1128_crit_edge ], [ %left.0, %if.end1106.if.end1128_crit_edge ]
  %331 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 26, ptr %1, align 4
  br label %do.body1135

do.body1135.loopexit2636:                         ; preds = %do.body391
  call void @__sanitizer_cov_trace_pc() #10
  %332 = shl i32 %have.142301, 3
  %333 = add i32 %bits.142303, %332
  %uglygep.le = getelementptr i8, ptr %next.142300, i32 %have.142301
  br label %do.body1135

do.body1135.loopexit2640:                         ; preds = %do.body964
  call void @__sanitizer_cov_trace_pc() #10
  %334 = shl i32 %have.34, 3
  %335 = add i32 %bits.34, %334
  %uglygep2627.le = getelementptr i8, ptr %next.34, i32 %have.34
  br label %do.body1135

do.body1135.loopexit2641:                         ; preds = %do.body906
  call void @__sanitizer_cov_trace_pc() #10
  %336 = shl i32 %have.31.lcssa, 3
  %337 = add i32 %bits.31.lcssa, %336
  %uglygep2626.le = getelementptr i8, ptr %next.31.lcssa, i32 %have.31.lcssa
  br label %do.body1135

do.body1135.loopexit2642:                         ; preds = %do.body860
  call void @__sanitizer_cov_trace_pc() #10
  %338 = shl i32 %have.30, 3
  %339 = add i32 %bits.30, %338
  %uglygep2625.le = getelementptr i8, ptr %next.30, i32 %have.30
  br label %do.body1135

do.body1135.loopexit2643:                         ; preds = %do.body815
  call void @__sanitizer_cov_trace_pc() #10
  %340 = shl i32 %have.27, 3
  %341 = add i32 %bits.27, %340
  %uglygep2624.le = getelementptr i8, ptr %next.27, i32 %have.27
  br label %do.body1135

do.body1135.loopexit2644:                         ; preds = %do.body743
  call void @__sanitizer_cov_trace_pc() #10
  %342 = shl i32 %have.24.lcssa, 3
  %343 = add i32 %bits.24.lcssa, %342
  %uglygep2623.le = getelementptr i8, ptr %next.24.lcssa, i32 %have.24.lcssa
  br label %do.body1135

do.body1135.loopexit2645:                         ; preds = %do.body694
  call void @__sanitizer_cov_trace_pc() #10
  %344 = shl i32 %have.23, 3
  %345 = add i32 %bits.23, %344
  %uglygep2622.le = getelementptr i8, ptr %next.23, i32 %have.23
  br label %do.body1135

do.body1135.loopexit2999:                         ; preds = %sw.bb1060.do.body1135.loopexit2999_crit_edge, %sw.bb1004.do.body1135.loopexit2999_crit_edge, %if.then228.do.body1135.loopexit2999_crit_edge, %sw.bb119.do.body1135.loopexit2999_crit_edge, %for.cond.do.body1135.loopexit2999_crit_edge
  %left.02597.ph = phi i32 [ 0, %sw.bb1060.do.body1135.loopexit2999_crit_edge ], [ 0, %sw.bb1004.do.body1135.loopexit2999_crit_edge ], [ %left.0, %if.then228.do.body1135.loopexit2999_crit_edge ], [ %left.0, %sw.bb119.do.body1135.loopexit2999_crit_edge ], [ %left.0, %for.cond.do.body1135.loopexit2999_crit_edge ]
  %next.42.ph = phi ptr [ %next.0, %sw.bb1060.do.body1135.loopexit2999_crit_edge ], [ %next.37, %sw.bb1004.do.body1135.loopexit2999_crit_edge ], [ %next.8, %if.then228.do.body1135.loopexit2999_crit_edge ], [ %next.4, %sw.bb119.do.body1135.loopexit2999_crit_edge ], [ %next.0, %for.cond.do.body1135.loopexit2999_crit_edge ]
  %have.42.ph = phi i32 [ %have.0, %sw.bb1060.do.body1135.loopexit2999_crit_edge ], [ %have.37, %sw.bb1004.do.body1135.loopexit2999_crit_edge ], [ %have.8, %if.then228.do.body1135.loopexit2999_crit_edge ], [ %have.4, %sw.bb119.do.body1135.loopexit2999_crit_edge ], [ %have.0, %for.cond.do.body1135.loopexit2999_crit_edge ]
  %hold.42.ph = phi i32 [ %hold.0, %sw.bb1060.do.body1135.loopexit2999_crit_edge ], [ %hold.37, %sw.bb1004.do.body1135.loopexit2999_crit_edge ], [ %hold.8, %if.then228.do.body1135.loopexit2999_crit_edge ], [ %hold.4, %sw.bb119.do.body1135.loopexit2999_crit_edge ], [ %hold.0, %for.cond.do.body1135.loopexit2999_crit_edge ]
  %bits.42.ph = phi i32 [ %bits.0, %sw.bb1060.do.body1135.loopexit2999_crit_edge ], [ %bits.37, %sw.bb1004.do.body1135.loopexit2999_crit_edge ], [ %bits.8, %if.then228.do.body1135.loopexit2999_crit_edge ], [ %bits.4, %sw.bb119.do.body1135.loopexit2999_crit_edge ], [ %bits.0, %for.cond.do.body1135.loopexit2999_crit_edge ]
  %ret.8.ph = phi i32 [ %ret.0, %sw.bb1060.do.body1135.loopexit2999_crit_edge ], [ %ret.6, %sw.bb1004.do.body1135.loopexit2999_crit_edge ], [ %ret.0, %if.then228.do.body1135.loopexit2999_crit_edge ], [ %ret.0, %sw.bb119.do.body1135.loopexit2999_crit_edge ], [ 1, %for.cond.do.body1135.loopexit2999_crit_edge ]
  br label %do.body1135

do.body1135:                                      ; preds = %do.body1135.loopexit2999, %do.body1135.loopexit2645, %do.body1135.loopexit2644, %do.body1135.loopexit2643, %do.body1135.loopexit2642, %do.body1135.loopexit2641, %do.body1135.loopexit2640, %do.body1135.loopexit2636, %if.end1128, %do.body1079.3.do.body1135_crit_edge, %do.body1079.2.do.body1135_crit_edge, %do.body1079.1.do.body1135_crit_edge, %do.body1079.do.body1135_crit_edge, %do.body557.do.body1135_crit_edge, %do.body516.do.body1135_crit_edge, %do.body458.do.body1135_crit_edge, %do.body415.do.body1135_crit_edge, %do.body316.do.body1135_crit_edge, %do.body254.1.do.body1135_crit_edge, %do.body254.do.body1135_crit_edge, %do.body196.3.do.body1135_crit_edge, %do.body196.2.do.body1135_crit_edge, %do.body196.1.do.body1135_crit_edge, %do.body196.do.body1135_crit_edge, %do.body145.do.body1135_crit_edge, %do.body68.3.do.body1135_crit_edge, %do.body68.2.do.body1135_crit_edge, %do.body68.1.do.body1135_crit_edge, %do.body68.do.body1135_crit_edge, %do.body22.1.do.body1135_crit_edge, %do.body22.do.body1135_crit_edge, %for.cond.do.body1135_crit_edge
  %left.02597 = phi i32 [ %left.0, %if.end1128 ], [ %left.0, %do.body1135.loopexit2636 ], [ %left.0, %do.body1135.loopexit2640 ], [ %left.0, %do.body1135.loopexit2641 ], [ %left.0, %do.body1135.loopexit2642 ], [ %left.0, %do.body1135.loopexit2643 ], [ %left.0, %do.body1135.loopexit2644 ], [ %left.0, %do.body1135.loopexit2645 ], [ %left.02597.ph, %do.body1135.loopexit2999 ], [ %left.0, %for.cond.do.body1135_crit_edge ], [ %left.0, %do.body145.do.body1135_crit_edge ], [ %left.0, %do.body415.do.body1135_crit_edge ], [ %left.0, %do.body557.do.body1135_crit_edge ], [ %left.0, %do.body458.do.body1135_crit_edge ], [ %left.0, %do.body516.do.body1135_crit_edge ], [ %left.0, %do.body22.1.do.body1135_crit_edge ], [ %left.0, %do.body22.do.body1135_crit_edge ], [ %left.0, %do.body68.3.do.body1135_crit_edge ], [ %left.0, %do.body68.2.do.body1135_crit_edge ], [ %left.0, %do.body68.1.do.body1135_crit_edge ], [ %left.0, %do.body68.do.body1135_crit_edge ], [ %left.0, %do.body196.3.do.body1135_crit_edge ], [ %left.0, %do.body196.2.do.body1135_crit_edge ], [ %left.0, %do.body196.1.do.body1135_crit_edge ], [ %left.0, %do.body196.do.body1135_crit_edge ], [ %left.0, %do.body316.do.body1135_crit_edge ], [ %left.0, %do.body254.1.do.body1135_crit_edge ], [ %left.0, %do.body254.do.body1135_crit_edge ], [ %left.0, %do.body1079.3.do.body1135_crit_edge ], [ %left.0, %do.body1079.2.do.body1135_crit_edge ], [ %left.0, %do.body1079.1.do.body1135_crit_edge ], [ %left.0, %do.body1079.do.body1135_crit_edge ]
  %next.42 = phi ptr [ %next.39, %if.end1128 ], [ %uglygep.le, %do.body1135.loopexit2636 ], [ %uglygep2627.le, %do.body1135.loopexit2640 ], [ %uglygep2626.le, %do.body1135.loopexit2641 ], [ %uglygep2625.le, %do.body1135.loopexit2642 ], [ %uglygep2624.le, %do.body1135.loopexit2643 ], [ %uglygep2623.le, %do.body1135.loopexit2644 ], [ %uglygep2622.le, %do.body1135.loopexit2645 ], [ %next.42.ph, %do.body1135.loopexit2999 ], [ %next.5, %do.body145.do.body1135_crit_edge ], [ %next.0, %for.cond.do.body1135_crit_edge ], [ %next.162290, %do.body415.do.body1135_crit_edge ], [ %next.192280, %do.body557.do.body1135_crit_edge ], [ %next.172271, %do.body458.do.body1135_crit_edge ], [ %next.182262, %do.body516.do.body1135_crit_edge ], [ %next.0, %do.body22.do.body1135_crit_edge ], [ %incdec.ptr, %do.body22.1.do.body1135_crit_edge ], [ %next.0, %do.body68.do.body1135_crit_edge ], [ %incdec.ptr74, %do.body68.1.do.body1135_crit_edge ], [ %incdec.ptr74.1, %do.body68.2.do.body1135_crit_edge ], [ %incdec.ptr74.2, %do.body68.3.do.body1135_crit_edge ], [ %next.0, %do.body196.do.body1135_crit_edge ], [ %incdec.ptr202, %do.body196.1.do.body1135_crit_edge ], [ %incdec.ptr202.1, %do.body196.2.do.body1135_crit_edge ], [ %incdec.ptr202.2, %do.body196.3.do.body1135_crit_edge ], [ %next.112233, %do.body316.do.body1135_crit_edge ], [ %next.0, %do.body254.do.body1135_crit_edge ], [ %incdec.ptr260, %do.body254.1.do.body1135_crit_edge ], [ %next.0, %do.body1079.do.body1135_crit_edge ], [ %incdec.ptr1085, %do.body1079.1.do.body1135_crit_edge ], [ %incdec.ptr1085.1, %do.body1079.2.do.body1135_crit_edge ], [ %incdec.ptr1085.2, %do.body1079.3.do.body1135_crit_edge ]
  %have.42 = phi i32 [ %have.39, %if.end1128 ], [ 0, %do.body1135.loopexit2636 ], [ 0, %do.body1135.loopexit2640 ], [ 0, %do.body1135.loopexit2641 ], [ 0, %do.body1135.loopexit2642 ], [ 0, %do.body1135.loopexit2643 ], [ 0, %do.body1135.loopexit2644 ], [ 0, %do.body1135.loopexit2645 ], [ %have.42.ph, %do.body1135.loopexit2999 ], [ 0, %do.body145.do.body1135_crit_edge ], [ %have.0, %for.cond.do.body1135_crit_edge ], [ 0, %do.body415.do.body1135_crit_edge ], [ 0, %do.body557.do.body1135_crit_edge ], [ 0, %do.body458.do.body1135_crit_edge ], [ 0, %do.body516.do.body1135_crit_edge ], [ 0, %do.body22.1.do.body1135_crit_edge ], [ 0, %do.body22.do.body1135_crit_edge ], [ 0, %do.body68.3.do.body1135_crit_edge ], [ 0, %do.body68.2.do.body1135_crit_edge ], [ 0, %do.body68.1.do.body1135_crit_edge ], [ 0, %do.body68.do.body1135_crit_edge ], [ 0, %do.body196.3.do.body1135_crit_edge ], [ 0, %do.body196.2.do.body1135_crit_edge ], [ 0, %do.body196.1.do.body1135_crit_edge ], [ 0, %do.body196.do.body1135_crit_edge ], [ 0, %do.body316.do.body1135_crit_edge ], [ 0, %do.body254.1.do.body1135_crit_edge ], [ 0, %do.body254.do.body1135_crit_edge ], [ 0, %do.body1079.3.do.body1135_crit_edge ], [ 0, %do.body1079.2.do.body1135_crit_edge ], [ 0, %do.body1079.1.do.body1135_crit_edge ], [ 0, %do.body1079.do.body1135_crit_edge ]
  %hold.42 = phi i32 [ %hold.39, %if.end1128 ], [ %hold.152253, %do.body1135.loopexit2636 ], [ %hold.352401, %do.body1135.loopexit2640 ], [ %hold.322390, %do.body1135.loopexit2641 ], [ %hold.312368, %do.body1135.loopexit2642 ], [ %hold.282352, %do.body1135.loopexit2643 ], [ %hold.252341, %do.body1135.loopexit2644 ], [ %hold.242319, %do.body1135.loopexit2645 ], [ %hold.42.ph, %do.body1135.loopexit2999 ], [ %hold.5, %do.body145.do.body1135_crit_edge ], [ %hold.0, %for.cond.do.body1135_crit_edge ], [ %hold.162292, %do.body415.do.body1135_crit_edge ], [ %hold.192282, %do.body557.do.body1135_crit_edge ], [ %hold.172273, %do.body458.do.body1135_crit_edge ], [ %hold.182264, %do.body516.do.body1135_crit_edge ], [ %hold.0, %do.body22.do.body1135_crit_edge ], [ %add, %do.body22.1.do.body1135_crit_edge ], [ %hold.0, %do.body68.do.body1135_crit_edge ], [ %add77, %do.body68.1.do.body1135_crit_edge ], [ %add77.1, %do.body68.2.do.body1135_crit_edge ], [ %add77.2, %do.body68.3.do.body1135_crit_edge ], [ %shr186, %do.body196.do.body1135_crit_edge ], [ %add205, %do.body196.1.do.body1135_crit_edge ], [ %add205.1, %do.body196.2.do.body1135_crit_edge ], [ %add205.2, %do.body196.3.do.body1135_crit_edge ], [ %hold.112235, %do.body316.do.body1135_crit_edge ], [ %hold.0, %do.body254.do.body1135_crit_edge ], [ %add263, %do.body254.1.do.body1135_crit_edge ], [ %hold.0, %do.body1079.do.body1135_crit_edge ], [ %add1088, %do.body1079.1.do.body1135_crit_edge ], [ %add1088.1, %do.body1079.2.do.body1135_crit_edge ], [ %add1088.2, %do.body1079.3.do.body1135_crit_edge ]
  %bits.42 = phi i32 [ %bits.39, %if.end1128 ], [ %333, %do.body1135.loopexit2636 ], [ %335, %do.body1135.loopexit2640 ], [ %337, %do.body1135.loopexit2641 ], [ %339, %do.body1135.loopexit2642 ], [ %341, %do.body1135.loopexit2643 ], [ %343, %do.body1135.loopexit2644 ], [ %345, %do.body1135.loopexit2645 ], [ %bits.42.ph, %do.body1135.loopexit2999 ], [ %bits.5, %do.body145.do.body1135_crit_edge ], [ %bits.0, %for.cond.do.body1135_crit_edge ], [ %bits.162293, %do.body415.do.body1135_crit_edge ], [ %bits.192283, %do.body557.do.body1135_crit_edge ], [ %bits.172274, %do.body458.do.body1135_crit_edge ], [ %bits.182265, %do.body516.do.body1135_crit_edge ], [ %bits.0, %do.body22.do.body1135_crit_edge ], [ %add26, %do.body22.1.do.body1135_crit_edge ], [ %bits.0, %do.body68.do.body1135_crit_edge ], [ %add78, %do.body68.1.do.body1135_crit_edge ], [ %add78.1, %do.body68.2.do.body1135_crit_edge ], [ %add78.2, %do.body68.3.do.body1135_crit_edge ], [ %sub188, %do.body196.do.body1135_crit_edge ], [ %add206, %do.body196.1.do.body1135_crit_edge ], [ %add206.1, %do.body196.2.do.body1135_crit_edge ], [ %add206.2, %do.body196.3.do.body1135_crit_edge ], [ %bits.112236, %do.body316.do.body1135_crit_edge ], [ %bits.0, %do.body254.do.body1135_crit_edge ], [ %add264, %do.body254.1.do.body1135_crit_edge ], [ %bits.0, %do.body1079.do.body1135_crit_edge ], [ %add1089, %do.body1079.1.do.body1135_crit_edge ], [ %add1089.1, %do.body1079.2.do.body1135_crit_edge ], [ %add1089.2, %do.body1079.3.do.body1135_crit_edge ]
  %out.4 = phi i32 [ %out.1, %if.end1128 ], [ %out.0, %do.body1135.loopexit2636 ], [ %out.0, %do.body1135.loopexit2640 ], [ %out.0, %do.body1135.loopexit2641 ], [ %out.0, %do.body1135.loopexit2642 ], [ %out.0, %do.body1135.loopexit2643 ], [ %out.0, %do.body1135.loopexit2644 ], [ %out.0, %do.body1135.loopexit2645 ], [ %out.0, %do.body1135.loopexit2999 ], [ %out.0, %for.cond.do.body1135_crit_edge ], [ %out.0, %do.body145.do.body1135_crit_edge ], [ %out.0, %do.body415.do.body1135_crit_edge ], [ %out.0, %do.body557.do.body1135_crit_edge ], [ %out.0, %do.body458.do.body1135_crit_edge ], [ %out.0, %do.body516.do.body1135_crit_edge ], [ %out.0, %do.body22.1.do.body1135_crit_edge ], [ %out.0, %do.body22.do.body1135_crit_edge ], [ %out.0, %do.body68.3.do.body1135_crit_edge ], [ %out.0, %do.body68.2.do.body1135_crit_edge ], [ %out.0, %do.body68.1.do.body1135_crit_edge ], [ %out.0, %do.body68.do.body1135_crit_edge ], [ %out.0, %do.body196.3.do.body1135_crit_edge ], [ %out.0, %do.body196.2.do.body1135_crit_edge ], [ %out.0, %do.body196.1.do.body1135_crit_edge ], [ %out.0, %do.body196.do.body1135_crit_edge ], [ %out.0, %do.body316.do.body1135_crit_edge ], [ %out.0, %do.body254.1.do.body1135_crit_edge ], [ %out.0, %do.body254.do.body1135_crit_edge ], [ %out.0, %do.body1079.3.do.body1135_crit_edge ], [ %out.0, %do.body1079.2.do.body1135_crit_edge ], [ %out.0, %do.body1079.1.do.body1135_crit_edge ], [ %out.0, %do.body1079.do.body1135_crit_edge ]
  %ret.8 = phi i32 [ 1, %if.end1128 ], [ %ret.1, %do.body1135.loopexit2636 ], [ %ret.5, %do.body1135.loopexit2640 ], [ %ret.4, %do.body1135.loopexit2641 ], [ %ret.4, %do.body1135.loopexit2642 ], [ %ret.3, %do.body1135.loopexit2643 ], [ %ret.2, %do.body1135.loopexit2644 ], [ %ret.2, %do.body1135.loopexit2645 ], [ %ret.8.ph, %do.body1135.loopexit2999 ], [ %ret.0, %do.body145.do.body1135_crit_edge ], [ -3, %for.cond.do.body1135_crit_edge ], [ %ret.1, %do.body415.do.body1135_crit_edge ], [ %ret.1, %do.body557.do.body1135_crit_edge ], [ %ret.1, %do.body458.do.body1135_crit_edge ], [ %ret.1, %do.body516.do.body1135_crit_edge ], [ %ret.0, %do.body22.1.do.body1135_crit_edge ], [ %ret.0, %do.body22.do.body1135_crit_edge ], [ %ret.0, %do.body68.3.do.body1135_crit_edge ], [ %ret.0, %do.body68.2.do.body1135_crit_edge ], [ %ret.0, %do.body68.1.do.body1135_crit_edge ], [ %ret.0, %do.body68.do.body1135_crit_edge ], [ %ret.0, %do.body196.3.do.body1135_crit_edge ], [ %ret.0, %do.body196.2.do.body1135_crit_edge ], [ %ret.0, %do.body196.1.do.body1135_crit_edge ], [ %ret.0, %do.body196.do.body1135_crit_edge ], [ %ret.0, %do.body316.do.body1135_crit_edge ], [ %ret.0, %do.body254.1.do.body1135_crit_edge ], [ %ret.0, %do.body254.do.body1135_crit_edge ], [ %ret.0, %do.body1079.3.do.body1135_crit_edge ], [ %ret.0, %do.body1079.2.do.body1135_crit_edge ], [ %ret.0, %do.body1079.1.do.body1135_crit_edge ], [ %ret.0, %do.body1079.do.body1135_crit_edge ]
  %346 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %346)
  store ptr %put.0, ptr %next_out, align 4
  %347 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %347)
  store i32 %left.02597, ptr %avail_out, align 4
  %348 = ptrtoint ptr %strm to i32
  call void @__asan_store4_noabort(i32 %348)
  store ptr %next.42, ptr %strm, align 4
  %349 = ptrtoint ptr %avail_in12 to i32
  call void @__asan_store4_noabort(i32 %349)
  store i32 %have.42, ptr %avail_in12, align 4
  %350 = ptrtoint ptr %hold13 to i32
  call void @__asan_store4_noabort(i32 %350)
  store i32 %hold.42, ptr %hold13, align 4
  %351 = ptrtoint ptr %bits14 to i32
  call void @__asan_store4_noabort(i32 %351)
  store i32 %bits.42, ptr %bits14, align 4
  %352 = ptrtoint ptr %wsize to i32
  call void @__asan_load4_noabort(i32 %352)
  %353 = load i32, ptr %wsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %353)
  %tobool1145.not = icmp eq i32 %353, 0
  br i1 %tobool1145.not, label %lor.lhs.false1146, label %do.body1135.if.then1154_crit_edge

do.body1135.if.then1154_crit_edge:                ; preds = %do.body1135
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1154

lor.lhs.false1146:                                ; preds = %do.body1135
  %354 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %354)
  %355 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %355)
  %cmp1148 = icmp ult i32 %355, 24
  br i1 %cmp1148, label %land.lhs.true1150, label %lor.lhs.false1146.if.end1155_crit_edge

lor.lhs.false1146.if.end1155_crit_edge:           ; preds = %lor.lhs.false1146
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1155

land.lhs.true1150:                                ; preds = %lor.lhs.false1146
  %356 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %avail_out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %out.4, i32 %357)
  %cmp1152.not = icmp eq i32 %out.4, %357
  br i1 %cmp1152.not, label %land.lhs.true1150.if.end1155_crit_edge, label %land.lhs.true1150.if.then1154_crit_edge

land.lhs.true1150.if.then1154_crit_edge:          ; preds = %land.lhs.true1150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then1154

land.lhs.true1150.if.end1155_crit_edge:           ; preds = %land.lhs.true1150
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1155

if.then1154:                                      ; preds = %land.lhs.true1150.if.then1154_crit_edge, %do.body1135.if.then1154_crit_edge
  %358 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %358)
  %359 = load ptr, ptr %state1, align 4
  %360 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %360)
  %361 = load i32, ptr %avail_out, align 4
  %sub.i = sub i32 %out.4, %361
  %wsize.i = getelementptr inbounds %struct.inflate_state, ptr %359, i32 0, i32 9
  %362 = ptrtoint ptr %wsize.i to i32
  call void @__asan_load4_noabort(i32 %362)
  %363 = load i32, ptr %wsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %363)
  %cmp.not.i = icmp ult i32 %sub.i, %363
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then1154
  call void @__sanitizer_cov_trace_pc() #10
  %window.i = getelementptr inbounds %struct.inflate_state, ptr %359, i32 0, i32 12
  %364 = ptrtoint ptr %window.i to i32
  call void @__asan_load4_noabort(i32 %364)
  %365 = load ptr, ptr %window.i, align 4
  %366 = ptrtoint ptr %next_out to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load ptr, ptr %next_out, align 4
  %idx.neg.i = sub i32 0, %363
  %add.ptr.i = getelementptr i8, ptr %367, i32 %idx.neg.i
  %368 = call ptr @memcpy(ptr %365, ptr %add.ptr.i, i32 %363)
  %write.i = getelementptr inbounds %struct.inflate_state, ptr %359, i32 0, i32 11
  %369 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %369)
  store i32 0, ptr %write.i, align 4
  %370 = ptrtoint ptr %wsize.i to i32
  call void @__asan_load4_noabort(i32 %370)
  %371 = load i32, ptr %wsize.i, align 4
  %whave.i = getelementptr inbounds %struct.inflate_state, ptr %359, i32 0, i32 10
  %372 = ptrtoint ptr %whave.i to i32
  call void @__asan_store4_noabort(i32 %372)
  store i32 %371, ptr %whave.i, align 4
  br label %if.end1155

if.else.i:                                        ; preds = %if.then1154
  %write6.i = getelementptr inbounds %struct.inflate_state, ptr %359, i32 0, i32 11
  %373 = ptrtoint ptr %write6.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %write6.i, align 4
  %sub7.i = sub i32 %363, %374
  %375 = tail call i32 @llvm.umin.i32(i32 %sub7.i, i32 %sub.i) #8
  %window10.i = getelementptr inbounds %struct.inflate_state, ptr %359, i32 0, i32 12
  %376 = ptrtoint ptr %window10.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load ptr, ptr %window10.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %377, i32 %374
  %378 = ptrtoint ptr %next_out to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load ptr, ptr %next_out, align 4
  %idx.neg14.i = sub i32 0, %sub.i
  %add.ptr15.i = getelementptr i8, ptr %379, i32 %idx.neg14.i
  %380 = call ptr @memcpy(ptr %add.ptr12.i, ptr %add.ptr15.i, i32 %375)
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %sub7.i)
  %tobool.not.not.i = icmp ugt i32 %sub.i, %sub7.i
  br i1 %tobool.not.not.i, label %if.then17.i, label %if.else25.i

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i = sub i32 %sub.i, %375
  %381 = ptrtoint ptr %window10.i to i32
  call void @__asan_load4_noabort(i32 %381)
  %382 = load ptr, ptr %window10.i, align 4
  %383 = ptrtoint ptr %next_out to i32
  call void @__asan_load4_noabort(i32 %383)
  %384 = load ptr, ptr %next_out, align 4
  %idx.neg20.i = sub i32 0, %sub16.i
  %add.ptr21.i = getelementptr i8, ptr %384, i32 %idx.neg20.i
  %385 = call ptr @memcpy(ptr %382, ptr %add.ptr21.i, i32 %sub16.i)
  %386 = ptrtoint ptr %write6.i to i32
  call void @__asan_store4_noabort(i32 %386)
  store i32 %sub16.i, ptr %write6.i, align 4
  %387 = ptrtoint ptr %wsize.i to i32
  call void @__asan_load4_noabort(i32 %387)
  %388 = load i32, ptr %wsize.i, align 4
  %whave24.i = getelementptr inbounds %struct.inflate_state, ptr %359, i32 0, i32 10
  %389 = ptrtoint ptr %whave24.i to i32
  call void @__asan_store4_noabort(i32 %389)
  store i32 %388, ptr %whave24.i, align 4
  br label %if.end1155

if.else25.i:                                      ; preds = %if.else.i
  %390 = ptrtoint ptr %write6.i to i32
  call void @__asan_load4_noabort(i32 %390)
  %391 = load i32, ptr %write6.i, align 4
  %add.i = add i32 %391, %375
  %392 = ptrtoint ptr %wsize.i to i32
  call void @__asan_load4_noabort(i32 %392)
  %393 = load i32, ptr %wsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %393)
  %cmp29.i = icmp eq i32 %add.i, %393
  %spec.store.select.i = select i1 %cmp29.i, i32 0, i32 %add.i
  %394 = ptrtoint ptr %write6.i to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 %spec.store.select.i, ptr %write6.i, align 4
  %whave33.i = getelementptr inbounds %struct.inflate_state, ptr %359, i32 0, i32 10
  %395 = ptrtoint ptr %whave33.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %whave33.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %396, i32 %393)
  %cmp35.i = icmp ult i32 %396, %393
  br i1 %cmp35.i, label %if.then36.i, label %if.else25.i.if.end1155_crit_edge

if.else25.i.if.end1155_crit_edge:                 ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1155

if.then36.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #10
  %add38.i = add i32 %396, %375
  %397 = ptrtoint ptr %whave33.i to i32
  call void @__asan_store4_noabort(i32 %397)
  store i32 %add38.i, ptr %whave33.i, align 4
  br label %if.end1155

if.end1155:                                       ; preds = %if.then36.i, %if.else25.i.if.end1155_crit_edge, %if.then17.i, %if.then.i, %land.lhs.true1150.if.end1155_crit_edge, %lor.lhs.false1146.if.end1155_crit_edge
  %398 = ptrtoint ptr %avail_in12 to i32
  call void @__asan_load4_noabort(i32 %398)
  %399 = load i32, ptr %avail_in12, align 4
  %sub1157 = sub i32 %16, %399
  %400 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %400)
  %401 = load i32, ptr %avail_out, align 4
  %sub1159 = sub i32 %out.4, %401
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 2
  %402 = ptrtoint ptr %total_in to i32
  call void @__asan_load4_noabort(i32 %402)
  %403 = load i32, ptr %total_in, align 4
  %add1160 = add i32 %sub1157, %403
  store i32 %add1160, ptr %total_in, align 4
  %404 = ptrtoint ptr %total_out to i32
  call void @__asan_load4_noabort(i32 %404)
  %405 = load i32, ptr %total_out, align 4
  %add1162 = add i32 %405, %sub1159
  store i32 %add1162, ptr %total_out, align 4
  %406 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %406)
  %407 = load i32, ptr %total, align 4
  %add1164 = add i32 %407, %sub1159
  store i32 %add1164, ptr %total, align 4
  %408 = ptrtoint ptr %wrap1071 to i32
  call void @__asan_load4_noabort(i32 %408)
  %409 = load i32, ptr %wrap1071, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %409)
  %tobool1166.not = icmp eq i32 %409, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %out.4, i32 %401)
  %tobool1168.not = icmp eq i32 %out.4, %401
  %or.cond1837 = select i1 %tobool1166.not, i1 true, i1 %tobool1168.not
  br i1 %or.cond1837, label %if.end1155.if.end1177_crit_edge, label %if.then1169

if.end1155.if.end1177_crit_edge:                  ; preds = %if.end1155
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1177

if.then1169:                                      ; preds = %if.end1155
  call void @__sanitizer_cov_trace_pc() #10
  %410 = ptrtoint ptr %check1100 to i32
  call void @__asan_load4_noabort(i32 %410)
  %411 = load i32, ptr %check1100, align 4
  %412 = ptrtoint ptr %next_out to i32
  call void @__asan_load4_noabort(i32 %412)
  %413 = load ptr, ptr %next_out, align 4
  %idx.neg1172 = sub i32 0, %sub1159
  %add.ptr1173 = getelementptr i8, ptr %413, i32 %idx.neg1172
  %call1174 = tail call fastcc i32 @zlib_adler32(i32 noundef %411, ptr noundef %add.ptr1173, i32 noundef %sub1159)
  %414 = ptrtoint ptr %check1100 to i32
  call void @__asan_store4_noabort(i32 %414)
  store i32 %call1174, ptr %check1100, align 4
  %415 = ptrtoint ptr %adler1105 to i32
  call void @__asan_store4_noabort(i32 %415)
  store i32 %call1174, ptr %adler1105, align 4
  br label %if.end1177

if.end1177:                                       ; preds = %if.then1169, %if.end1155.if.end1177_crit_edge
  %416 = ptrtoint ptr %bits14 to i32
  call void @__asan_load4_noabort(i32 %416)
  %417 = load i32, ptr %bits14, align 4
  %418 = ptrtoint ptr %last128 to i32
  call void @__asan_load4_noabort(i32 %418)
  %419 = load i32, ptr %last128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %419)
  %tobool1180.not = icmp eq i32 %419, 0
  %cond1181 = select i1 %tobool1180.not, i32 0, i32 64
  %add1182 = add i32 %cond1181, %417
  %420 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %420)
  %421 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %421)
  %cmp1184 = icmp eq i32 %421, 11
  %cond1186 = select i1 %cmp1184, i32 128, i32 0
  %add1187 = add i32 %add1182, %cond1186
  %data_type = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 9
  %422 = ptrtoint ptr %data_type to i32
  call void @__asan_store4_noabort(i32 %422)
  store i32 %add1187, ptr %data_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %flush)
  %cmp1188 = icmp eq i32 %flush, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.8)
  %cmp1191 = icmp eq i32 %ret.8, 0
  %or.cond1838 = select i1 %cmp1188, i1 %cmp1191, i1 false
  br i1 %or.cond1838, label %land.lhs.true1193, label %if.end1177.if.end1203_crit_edge

if.end1177.if.end1203_crit_edge:                  ; preds = %if.end1177
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1203

land.lhs.true1193:                                ; preds = %if.end1177
  %423 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %avail_out, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %424)
  %cmp1195.not = icmp eq i32 %424, 0
  br i1 %cmp1195.not, label %land.lhs.true1193.if.end1203_crit_edge, label %land.lhs.true1197

land.lhs.true1193.if.end1203_crit_edge:           ; preds = %land.lhs.true1193
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1203

land.lhs.true1197:                                ; preds = %land.lhs.true1193
  %425 = ptrtoint ptr %avail_in12 to i32
  call void @__asan_load4_noabort(i32 %425)
  %426 = load i32, ptr %avail_in12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %426)
  %cmp1199 = icmp eq i32 %426, 0
  br i1 %cmp1199, label %lor.lhs.false.i, label %land.lhs.true1197.if.end1203_crit_edge

land.lhs.true1197.if.end1203_crit_edge:           ; preds = %land.lhs.true1197
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end1203

lor.lhs.false.i:                                  ; preds = %land.lhs.true1197
  %427 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %427)
  %428 = load ptr, ptr %state1, align 4
  %cmp2.i = icmp eq ptr %428, null
  br i1 %cmp2.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  %429 = ptrtoint ptr %428 to i32
  call void @__asan_load4_noabort(i32 %429)
  %430 = load i32, ptr %428, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %430)
  %cmp4.i = icmp eq i32 %430, 13
  br i1 %cmp4.i, label %land.lhs.true.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

land.lhs.true.i:                                  ; preds = %if.end.i
  %bits.i = getelementptr inbounds %struct.inflate_state, ptr %428, i32 0, i32 14
  %431 = ptrtoint ptr %bits.i to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %bits.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %432)
  %cmp5.i = icmp eq i32 %432, 0
  br i1 %cmp5.i, label %if.then6.i, label %land.lhs.true.i.cleanup_crit_edge

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then6.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %433 = ptrtoint ptr %428 to i32
  call void @__asan_store4_noabort(i32 %433)
  store i32 11, ptr %428, align 4
  br label %cleanup

if.end1203:                                       ; preds = %land.lhs.true1197.if.end1203_crit_edge, %land.lhs.true1193.if.end1203_crit_edge, %if.end1177.if.end1203_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %399)
  %cmp1204 = icmp eq i32 %16, %399
  %or.cond1839 = select i1 %cmp1204, i1 %tobool1168.not, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %flush)
  %cmp1210 = icmp eq i32 %flush, 5
  %or.cond1840 = or i1 %cmp1210, %or.cond1839
  %434 = select i1 %or.cond1840, i1 %cmp1191, i1 false
  %ret.9 = select i1 %434, i32 -5, i32 %ret.8
  br label %cleanup

cleanup.loopexit:                                 ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.loopexit, %if.end1203, %if.then6.i, %land.lhs.true.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %lor.lhs.false.i.cleanup_crit_edge, %do.body105, %for.cond.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.9, %if.end1203 ], [ 2, %do.body105 ], [ -2, %land.lhs.true.cleanup_crit_edge ], [ -2, %lor.lhs.false.cleanup_crit_edge ], [ -2, %entry.cleanup_crit_edge ], [ 0, %if.then6.i ], [ -2, %lor.lhs.false.i.cleanup_crit_edge ], [ -3, %land.lhs.true.i.cleanup_crit_edge ], [ -3, %if.end.i.cleanup_crit_edge ], [ -4, %cleanup.loopexit ], [ -2, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @zlib_adler32(i32 noundef %adler, ptr noundef readonly %buf, i32 noundef %len) unnamed_addr #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %cmp = icmp eq ptr %buf, null
  br i1 %cmp, label %entry.cleanup_crit_edge, label %while.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %shr = lshr i32 %adler, 16
  %and = and i32 %adler, 65535
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp2.not167 = icmp eq i32 %len, 0
  br i1 %cmp2.not167, label %while.cond.preheader.while.end77_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end77_crit_edge:       ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end77

while.body:                                       ; preds = %if.end75.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %s2.0171 = phi i32 [ %rem76, %if.end75.while.body_crit_edge ], [ %shr, %while.cond.preheader.while.body_crit_edge ]
  %s1.0170 = phi i32 [ %rem, %if.end75.while.body_crit_edge ], [ %and, %while.cond.preheader.while.body_crit_edge ]
  %len.addr.0169 = phi i32 [ %sub, %if.end75.while.body_crit_edge ], [ %len, %while.cond.preheader.while.body_crit_edge ]
  %buf.addr.0168 = phi ptr [ %buf.addr.3, %if.end75.while.body_crit_edge ], [ %buf, %while.cond.preheader.while.body_crit_edge ]
  %0 = tail call i32 @llvm.umin.i32(i32 %len.addr.0169, i32 5552)
  %sub = sub i32 %len.addr.0169, %0
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %0)
  %cmp5159 = icmp ugt i32 %0, 15
  br i1 %cmp5159, label %while.body.while.body6_crit_edge, label %while.body.do.body.preheader_crit_edge

while.body.do.body.preheader_crit_edge:           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.preheader

while.body.while.body6_crit_edge:                 ; preds = %while.body
  br label %while.body6

while.body6:                                      ; preds = %while.body6.while.body6_crit_edge, %while.body.while.body6_crit_edge
  %k.0163 = phi i32 [ %sub68, %while.body6.while.body6_crit_edge ], [ %0, %while.body.while.body6_crit_edge ]
  %s2.1162 = phi i32 [ %add67, %while.body6.while.body6_crit_edge ], [ %s2.0171, %while.body.while.body6_crit_edge ]
  %s1.1161 = phi i32 [ %add66, %while.body6.while.body6_crit_edge ], [ %s1.0170, %while.body.while.body6_crit_edge ]
  %buf.addr.1160 = phi ptr [ %add.ptr, %while.body6.while.body6_crit_edge ], [ %buf.addr.0168, %while.body.while.body6_crit_edge ]
  %1 = ptrtoint ptr %buf.addr.1160 to i32
  call void @__asan_load1_noabort(i32 %1)
  %2 = load i8, ptr %buf.addr.1160, align 1
  %conv = zext i8 %2 to i32
  %add = add i32 %s1.1161, %conv
  %add7 = add i32 %add, %s2.1162
  %arrayidx8 = getelementptr i8, ptr %buf.addr.1160, i32 1
  %3 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %arrayidx8, align 1
  %conv9 = zext i8 %4 to i32
  %add10 = add i32 %add, %conv9
  %add11 = add i32 %add7, %add10
  %arrayidx12 = getelementptr i8, ptr %buf.addr.1160, i32 2
  %5 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %arrayidx12, align 1
  %conv13 = zext i8 %6 to i32
  %add14 = add i32 %add10, %conv13
  %add15 = add i32 %add11, %add14
  %arrayidx16 = getelementptr i8, ptr %buf.addr.1160, i32 3
  %7 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %arrayidx16, align 1
  %conv17 = zext i8 %8 to i32
  %add18 = add i32 %add14, %conv17
  %add19 = add i32 %add15, %add18
  %arrayidx20 = getelementptr i8, ptr %buf.addr.1160, i32 4
  %9 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %arrayidx20, align 1
  %conv21 = zext i8 %10 to i32
  %add22 = add i32 %add18, %conv21
  %add23 = add i32 %add19, %add22
  %arrayidx24 = getelementptr i8, ptr %buf.addr.1160, i32 5
  %11 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %arrayidx24, align 1
  %conv25 = zext i8 %12 to i32
  %add26 = add i32 %add22, %conv25
  %add27 = add i32 %add23, %add26
  %arrayidx28 = getelementptr i8, ptr %buf.addr.1160, i32 6
  %13 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %arrayidx28, align 1
  %conv29 = zext i8 %14 to i32
  %add30 = add i32 %add26, %conv29
  %add31 = add i32 %add27, %add30
  %arrayidx32 = getelementptr i8, ptr %buf.addr.1160, i32 7
  %15 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %arrayidx32, align 1
  %conv33 = zext i8 %16 to i32
  %add34 = add i32 %add30, %conv33
  %add35 = add i32 %add31, %add34
  %arrayidx36 = getelementptr i8, ptr %buf.addr.1160, i32 8
  %17 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %18 to i32
  %add38 = add i32 %add34, %conv37
  %add39 = add i32 %add35, %add38
  %arrayidx40 = getelementptr i8, ptr %buf.addr.1160, i32 9
  %19 = ptrtoint ptr %arrayidx40 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx40, align 1
  %conv41 = zext i8 %20 to i32
  %add42 = add i32 %add38, %conv41
  %add43 = add i32 %add39, %add42
  %arrayidx44 = getelementptr i8, ptr %buf.addr.1160, i32 10
  %21 = ptrtoint ptr %arrayidx44 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx44, align 1
  %conv45 = zext i8 %22 to i32
  %add46 = add i32 %add42, %conv45
  %add47 = add i32 %add43, %add46
  %arrayidx48 = getelementptr i8, ptr %buf.addr.1160, i32 11
  %23 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %arrayidx48, align 1
  %conv49 = zext i8 %24 to i32
  %add50 = add i32 %add46, %conv49
  %add51 = add i32 %add47, %add50
  %arrayidx52 = getelementptr i8, ptr %buf.addr.1160, i32 12
  %25 = ptrtoint ptr %arrayidx52 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %arrayidx52, align 1
  %conv53 = zext i8 %26 to i32
  %add54 = add i32 %add50, %conv53
  %add55 = add i32 %add51, %add54
  %arrayidx56 = getelementptr i8, ptr %buf.addr.1160, i32 13
  %27 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx56, align 1
  %conv57 = zext i8 %28 to i32
  %add58 = add i32 %add54, %conv57
  %add59 = add i32 %add55, %add58
  %arrayidx60 = getelementptr i8, ptr %buf.addr.1160, i32 14
  %29 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %arrayidx60, align 1
  %conv61 = zext i8 %30 to i32
  %add62 = add i32 %add58, %conv61
  %add63 = add i32 %add59, %add62
  %arrayidx64 = getelementptr i8, ptr %buf.addr.1160, i32 15
  %31 = ptrtoint ptr %arrayidx64 to i32
  call void @__asan_load1_noabort(i32 %31)
  %32 = load i8, ptr %arrayidx64, align 1
  %conv65 = zext i8 %32 to i32
  %add66 = add i32 %add62, %conv65
  %add67 = add i32 %add63, %add66
  %add.ptr = getelementptr i8, ptr %buf.addr.1160, i32 16
  %sub68 = add nsw i32 %k.0163, -16
  %cmp5 = icmp ugt i32 %sub68, 15
  br i1 %cmp5, label %while.body6.while.body6_crit_edge, label %while.end

while.body6.while.body6_crit_edge:                ; preds = %while.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body6

while.end:                                        ; preds = %while.body6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub68)
  %cmp69.not = icmp eq i32 %sub68, 0
  br i1 %cmp69.not, label %while.end.if.end75_crit_edge, label %while.end.do.body.preheader_crit_edge

while.end.do.body.preheader_crit_edge:            ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body.preheader

while.end.if.end75_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end75

do.body.preheader:                                ; preds = %while.end.do.body.preheader_crit_edge, %while.body.do.body.preheader_crit_edge
  %k.0.lcssa182 = phi i32 [ %sub68, %while.end.do.body.preheader_crit_edge ], [ %0, %while.body.do.body.preheader_crit_edge ]
  %s2.1.lcssa181 = phi i32 [ %add67, %while.end.do.body.preheader_crit_edge ], [ %s2.0171, %while.body.do.body.preheader_crit_edge ]
  %s1.1.lcssa180 = phi i32 [ %add66, %while.end.do.body.preheader_crit_edge ], [ %s1.0170, %while.body.do.body.preheader_crit_edge ]
  %buf.addr.1.lcssa179 = phi ptr [ %add.ptr, %while.end.do.body.preheader_crit_edge ], [ %buf.addr.0168, %while.body.do.body.preheader_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %do.body.do.body_crit_edge, %do.body.preheader
  %buf.addr.2 = phi ptr [ %incdec.ptr, %do.body.do.body_crit_edge ], [ %buf.addr.1.lcssa179, %do.body.preheader ]
  %s1.2 = phi i32 [ %add73, %do.body.do.body_crit_edge ], [ %s1.1.lcssa180, %do.body.preheader ]
  %s2.2 = phi i32 [ %add74, %do.body.do.body_crit_edge ], [ %s2.1.lcssa181, %do.body.preheader ]
  %k.1 = phi i32 [ %dec, %do.body.do.body_crit_edge ], [ %k.0.lcssa182, %do.body.preheader ]
  %incdec.ptr = getelementptr i8, ptr %buf.addr.2, i32 1
  %33 = ptrtoint ptr %buf.addr.2 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %buf.addr.2, align 1
  %conv72 = zext i8 %34 to i32
  %add73 = add i32 %s1.2, %conv72
  %add74 = add i32 %add73, %s2.2
  %dec = add i32 %k.1, -1
  %tobool.not = icmp eq i32 %dec, 0
  br i1 %tobool.not, label %if.end75.loopexit, label %do.body.do.body_crit_edge

do.body.do.body_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

if.end75.loopexit:                                ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %uglygep = getelementptr i8, ptr %buf.addr.1.lcssa179, i32 %k.0.lcssa182
  br label %if.end75

if.end75:                                         ; preds = %if.end75.loopexit, %while.end.if.end75_crit_edge
  %buf.addr.3 = phi ptr [ %add.ptr, %while.end.if.end75_crit_edge ], [ %uglygep, %if.end75.loopexit ]
  %s1.3 = phi i32 [ %add66, %while.end.if.end75_crit_edge ], [ %add73, %if.end75.loopexit ]
  %s2.3 = phi i32 [ %add67, %while.end.if.end75_crit_edge ], [ %add74, %if.end75.loopexit ]
  %rem = urem i32 %s1.3, 65521
  %rem76 = urem i32 %s2.3, 65521
  %cmp2.not = icmp eq i32 %sub, 0
  br i1 %cmp2.not, label %if.end75.while.end77_crit_edge, label %if.end75.while.body_crit_edge

if.end75.while.body_crit_edge:                    ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end75.while.end77_crit_edge:                   ; preds = %if.end75
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end77

while.end77:                                      ; preds = %if.end75.while.end77_crit_edge, %while.cond.preheader.while.end77_crit_edge
  %s1.0.lcssa = phi i32 [ %and, %while.cond.preheader.while.end77_crit_edge ], [ %rem, %if.end75.while.end77_crit_edge ]
  %s2.0.lcssa = phi i32 [ %shr, %while.cond.preheader.while.end77_crit_edge ], [ %rem76, %if.end75.while.end77_crit_edge ]
  %shl = shl nuw i32 %s2.0.lcssa, 16
  %or = or i32 %shl, %s1.0.lcssa
  br label %cleanup

cleanup:                                          ; preds = %while.end77, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or, %while.end77 ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @zlib_inflate_table(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @inflate_fast(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @zlib_inflateEnd(ptr noundef readonly %strm) local_unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp = icmp eq ptr %strm, null
  br i1 %cmp, label %entry.return_crit_edge, label %lor.lhs.false

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

lor.lhs.false:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %state = getelementptr inbounds %struct.z_stream_s, ptr %strm, i32 0, i32 7
  %0 = ptrtoint ptr %state to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state, align 4
  %cmp1 = icmp eq ptr %1, null
  %spec.select = select i1 %cmp1, i32 -2, i32 0
  br label %return

return:                                           ; preds = %lor.lhs.false, %entry.return_crit_edge
  %retval.0 = phi i32 [ -2, %entry.return_crit_edge ], [ %spec.select, %lor.lhs.false ]
  ret i32 %retval.0
}

; Function Attrs: nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @zlib_inflateIncomp(ptr nocapture noundef %z) local_unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %state1 = getelementptr inbounds %struct.z_stream_s, ptr %z, i32 0, i32 7
  %0 = ptrtoint ptr %state1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %state1, align 4
  %next_out = getelementptr inbounds %struct.z_stream_s, ptr %z, i32 0, i32 3
  %2 = ptrtoint ptr %next_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %next_out, align 4
  %avail_out = getelementptr inbounds %struct.z_stream_s, ptr %z, i32 0, i32 4
  %4 = ptrtoint ptr %avail_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %avail_out, align 4
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %7, label %entry.cleanup_crit_edge [
    i32 11, label %entry.if.end_crit_edge
    i32 0, label %entry.if.end_crit_edge48
  ]

entry.if.end_crit_edge48:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge48
  %9 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %avail_out, align 4
  %10 = ptrtoint ptr %z to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %z, align 4
  %avail_in = getelementptr inbounds %struct.z_stream_s, ptr %z, i32 0, i32 1
  %12 = ptrtoint ptr %avail_in to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %avail_in, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 %13
  %14 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %add.ptr, ptr %next_out, align 4
  %wsize.i = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 9
  %15 = ptrtoint ptr %wsize.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %wsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %16)
  %cmp.not.i = icmp ult i32 %13, %16
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %window.i = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 12
  %17 = ptrtoint ptr %window.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %window.i, align 4
  %idx.neg.i = sub i32 0, %16
  %add.ptr.i = getelementptr i8, ptr %add.ptr, i32 %idx.neg.i
  %19 = call ptr @memcpy(ptr %18, ptr %add.ptr.i, i32 %16)
  %write.i = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 11
  %20 = ptrtoint ptr %write.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %write.i, align 4
  %21 = ptrtoint ptr %wsize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %wsize.i, align 4
  %whave.i = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 10
  %23 = ptrtoint ptr %whave.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %whave.i, align 4
  br label %zlib_updatewindow.exit

if.else.i:                                        ; preds = %if.end
  %write6.i = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 11
  %24 = ptrtoint ptr %write6.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %write6.i, align 4
  %sub7.i = sub i32 %16, %25
  %26 = tail call i32 @llvm.umin.i32(i32 %sub7.i, i32 %13) #8
  %window10.i = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 12
  %27 = ptrtoint ptr %window10.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %window10.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %28, i32 %25
  %29 = call ptr @memcpy(ptr %add.ptr12.i, ptr %11, i32 %26)
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %sub7.i)
  %tobool.not.not.i = icmp ugt i32 %13, %sub7.i
  br i1 %tobool.not.not.i, label %if.then17.i, label %if.else25.i

if.then17.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  %sub16.i = sub i32 %13, %26
  %30 = ptrtoint ptr %window10.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %window10.i, align 4
  %32 = ptrtoint ptr %next_out to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %next_out, align 4
  %idx.neg20.i = sub i32 0, %sub16.i
  %add.ptr21.i = getelementptr i8, ptr %33, i32 %idx.neg20.i
  %34 = call ptr @memcpy(ptr %31, ptr %add.ptr21.i, i32 %sub16.i)
  %35 = ptrtoint ptr %write6.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub16.i, ptr %write6.i, align 4
  %36 = ptrtoint ptr %wsize.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wsize.i, align 4
  %whave24.i = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 10
  %38 = ptrtoint ptr %whave24.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %whave24.i, align 4
  br label %zlib_updatewindow.exit

if.else25.i:                                      ; preds = %if.else.i
  %39 = ptrtoint ptr %write6.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %write6.i, align 4
  %add.i = add i32 %40, %26
  %41 = ptrtoint ptr %wsize.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %wsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %42)
  %cmp29.i = icmp eq i32 %add.i, %42
  %spec.store.select.i = select i1 %cmp29.i, i32 0, i32 %add.i
  %43 = ptrtoint ptr %write6.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %spec.store.select.i, ptr %write6.i, align 4
  %whave33.i = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 10
  %44 = ptrtoint ptr %whave33.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %whave33.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %42)
  %cmp35.i = icmp ult i32 %45, %42
  br i1 %cmp35.i, label %if.then36.i, label %if.else25.i.zlib_updatewindow.exit_crit_edge

if.else25.i.zlib_updatewindow.exit_crit_edge:     ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %zlib_updatewindow.exit

if.then36.i:                                      ; preds = %if.else25.i
  call void @__sanitizer_cov_trace_pc() #10
  %add38.i = add i32 %45, %26
  %46 = ptrtoint ptr %whave33.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %add38.i, ptr %whave33.i, align 4
  br label %zlib_updatewindow.exit

zlib_updatewindow.exit:                           ; preds = %if.then36.i, %if.else25.i.zlib_updatewindow.exit_crit_edge, %if.then17.i, %if.then.i
  %47 = ptrtoint ptr %avail_out to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %5, ptr %avail_out, align 4
  %48 = ptrtoint ptr %next_out to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %3, ptr %next_out, align 4
  %check = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 6
  %49 = ptrtoint ptr %check to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %check, align 4
  %51 = ptrtoint ptr %z to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %z, align 4
  %53 = ptrtoint ptr %avail_in to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %avail_in, align 4
  %call = tail call fastcc i32 @zlib_adler32(i32 noundef %50, ptr noundef %52, i32 noundef %54)
  %55 = ptrtoint ptr %check to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %call, ptr %check, align 4
  %adler = getelementptr inbounds %struct.z_stream_s, ptr %z, i32 0, i32 10
  %56 = ptrtoint ptr %adler to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call, ptr %adler, align 4
  %57 = ptrtoint ptr %avail_in to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %avail_in, align 4
  %total_out = getelementptr inbounds %struct.z_stream_s, ptr %z, i32 0, i32 5
  %59 = ptrtoint ptr %total_out to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %total_out, align 4
  %add = add i32 %60, %58
  store i32 %add, ptr %total_out, align 4
  %total_in = getelementptr inbounds %struct.z_stream_s, ptr %z, i32 0, i32 2
  %61 = ptrtoint ptr %total_in to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %total_in, align 4
  %add14 = add i32 %62, %58
  store i32 %add14, ptr %total_in, align 4
  %63 = ptrtoint ptr %z to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %z, align 4
  %add.ptr17 = getelementptr i8, ptr %64, i32 %58
  store ptr %add.ptr17, ptr %z, align 4
  %total = getelementptr inbounds %struct.inflate_state, ptr %1, i32 0, i32 7
  %65 = ptrtoint ptr %total to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %total, align 4
  %add19 = add i32 %66, %58
  store i32 %add19, ptr %total, align 4
  store i32 0, ptr %avail_in, align 4
  br label %cleanup

cleanup:                                          ; preds = %zlib_updatewindow.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %zlib_updatewindow.exit ], [ -3, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.abs.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 17)
  ret void
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { inlinehint nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32}
!llvm.module.flags = !{!34, !35, !36, !37, !38, !39, !40, !41}
!llvm.ident = !{!42}

!0 = !{ptr @zlib_inflate.order, !1, !"order", i1 false, i1 false}
!1 = !{!"../lib/zlib_inflate/inflate.c", i32 346, i32 33}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../lib/zlib_inflate/inflate.c", i32 373, i32 37}
!4 = !{ptr @.str.1, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../lib/zlib_inflate/inflate.c", i32 378, i32 37}
!6 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/zlib_inflate/inflate.c", i32 385, i32 37}
!8 = !{ptr @.str.3, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../lib/zlib_inflate/inflate.c", i32 433, i32 37}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/zlib_inflate/inflate.c", i32 442, i32 37}
!12 = !{ptr @.str.5, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/zlib_inflate/inflate.c", i32 476, i32 37}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/zlib_inflate/inflate.c", i32 498, i32 37}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/zlib_inflate/inflate.c", i32 522, i32 49}
!18 = !{ptr @.str.8, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../lib/zlib_inflate/inflate.c", i32 564, i32 37}
!20 = !{ptr @.str.9, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../lib/zlib_inflate/inflate.c", i32 573, i32 37}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../lib/zlib_inflate/inflate.c", i32 612, i32 37}
!24 = !{ptr @.str.11, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../lib/zlib_inflate/inflate.c", i32 645, i32 37}
!26 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../lib/zlib_inflate/inflate.c", i32 667, i32 37}
!28 = !{ptr @.str.13, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../lib/zlib_inflate/inflate.c", i32 716, i32 41}
!30 = !{ptr @zlib_fixedtables.lenfix, !31, !"lenfix", i1 false, i1 false}
!31 = !{!"../lib/zlib_inflate/inffixed.h", i32 10, i32 23}
!32 = !{ptr @zlib_fixedtables.distfix, !33, !"distfix", i1 false, i1 false}
!33 = !{!"../lib/zlib_inflate/inffixed.h", i32 87, i32 23}
!34 = !{i32 1, !"wchar_size", i32 2}
!35 = !{i32 1, !"min_enum_size", i32 4}
!36 = !{i32 8, !"branch-target-enforcement", i32 0}
!37 = !{i32 8, !"sign-return-address", i32 0}
!38 = !{i32 8, !"sign-return-address-all", i32 0}
!39 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!40 = !{i32 7, !"uwtable", i32 1}
!41 = !{i32 7, !"frame-pointer", i32 2}
!42 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
