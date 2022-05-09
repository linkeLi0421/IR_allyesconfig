; ModuleID = '/llk/IR_all_yes/lib/test-string_helpers.c_pt.bc'
source_filename = "../lib/test-string_helpers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.test_string = type { ptr, ptr, i32 }
%struct.test_string_1 = type { ptr, i32 }
%struct.test_string_2 = type { ptr, [32 x %struct.test_string_1] }

@__initcall__kmod_test_string_helpers__191_608_test_string_helpers_init6 = internal global ptr @test_string_helpers_init, section ".initcall6.init", align 4
@__UNIQUE_ID_file192 = internal constant [49 x i8] c"test_string_helpers.file=lib/test-string_helpers\00", section ".modinfo", align 1
@__UNIQUE_ID_license193 = internal constant [41 x i8] c"test_string_helpers.license=Dual BSD/GPL\00", section ".modinfo", align 1
@test_string_helpers_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 586, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\016test_string_helpers: Running tests...\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"test_string_helpers_init\00", [39 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"lib/test-string_helpers.c\00", [38 x i8] zeroinitializer }, align 32
@test_string_helpers_init._entry_ptr = internal global ptr @test_string_helpers_init._entry, section ".printk_index", align 4
@.str.3 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"unescape\00", [23 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"unescape inplace\00", [47 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"escape 0\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"escape 1\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"b\\ \09\0D\CF\00", [25 x i8] zeroinitializer }, align 32
@strings = internal unnamed_addr constant [4 x %struct.test_string] [%struct.test_string { ptr @.str.8, ptr @.str.9, i32 1 }, %struct.test_string { ptr @.str.10, ptr @.str.11, i32 2 }, %struct.test_string { ptr @.str.12, ptr @.str.13, i32 4 }, %struct.test_string { ptr @.str.14, ptr @.str.15, i32 8 }], section ".init.rodata", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\\f\\ \\n\\r\\t\\v\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\0C\\ \0A\0D\09\0B\00", [24 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\\40\\1\\387\\0064\\05\\040\\8a\\110\\777\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" \01\0387\064\05 \\8aH?7\00", [16 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\\xv\\xa\\x2c\\xD\\x6f2\00", [45 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\\xv\0A,\0Do2\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\\h\\\\\\\22\\a\\e\\\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"\\h\\\22\07\1B\\\00", [24 x i8] zeroinitializer }, align 32
@test_string_check_buf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 22, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"\014test_string_helpers: Test '%s' failed: flags = %#x\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_string_check_buf\00", [42 x i8] zeroinitializer }, align 32
@test_string_check_buf._entry_ptr = internal global ptr @test_string_check_buf._entry, section ".printk_index", align 4
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Input: \00", [24 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"Expected: \00", [21 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"Got: \00", [26 x i8] zeroinitializer }, align 32
@test_string_escape_overflow._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [84 x i8], [44 x i8] } { [84 x i8] c"\014test_string_helpers: Test '%s' failed: flags = %#x, osz = 0, expected %d, got %d\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"test_string_escape_overflow\00", [36 x i8] zeroinitializer }, align 32
@test_string_escape_overflow._entry_ptr = internal global ptr @test_string_escape_overflow._entry, section ".printk_index", align 4
@.str.24 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\\f\\134\\040\\n\\r\\t\\v\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"\\f\\x5c\\x20\\n\\r\\t\\v\00", [45 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\\\\h\\\\\\\22\\a\\e\\\\\00", [18 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\\\\\\150\\\\\\\22\\a\\e\\\\\00", [47 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\\\\\\x68\\\\\\\22\\a\\e\\\\\00", [47 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"\1Bb \\C\07\22\90\0D]\00", [21 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\1Bb \\C\07\22\90\\r]\00", [20 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\\eb \\\\C\\a\\\22\90\0D]\00", [17 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"\\eb \\\\C\\a\\\22\90\\r]\00", [16 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"\\033\\142\\040\\134\\103\\007\\042\\220\\015\\135\00", [55 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\\033\\142\\040\\134\\103\\007\\042\\220\\r\\135\00", [57 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\\e\\142\\040\\\\\\103\\a\\\22\\220\\015\\135\00", [63 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"\\e\\142\\040\\\\\\103\\a\\\22\\220\\r\\135\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\\eb \\C\\a\22\90\0D]\00", [19 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"\\eb \\C\\a\22\90\\r]\00", [18 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\\033b \\C\\007\22\\220\\015]\00", [41 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\\033b \\C\\007\22\\220\\r]\00", [43 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"\\eb \\C\\a\22\\220\\r]\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\\x1bb \\C\\x07\22\\x90\\x0d]\00", [41 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\07 \1Bb\22\90\CF\0D\00", [23 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\07 \1Bb\22\\220\\317\0D\00", [17 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\07 \1Bb\22\\x90\\xcf\0D\00", [17 x i8] zeroinitializer }, align 32
@escape0 = internal constant <{ { ptr, <{ %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, [29 x %struct.test_string_1] }> }, { ptr, <{ %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, [29 x %struct.test_string_1] }> }, { ptr, <{ [15 x %struct.test_string_1], [17 x %struct.test_string_1] }> }, { ptr, <{ %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, [29 x %struct.test_string_1] }> }, %struct.test_string_2 }> <{ { ptr, <{ %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, [29 x %struct.test_string_1] }> } { ptr @.str.9, <{ %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, [29 x %struct.test_string_1] }> <{ %struct.test_string_1 { ptr @.str.8, i32 1 }, %struct.test_string_1 { ptr @.str.24, i32 9 }, %struct.test_string_1 { ptr @.str.25, i32 33 }, [29 x %struct.test_string_1] zeroinitializer }> }, { ptr, <{ %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, [29 x %struct.test_string_1] }> } { ptr @.str.15, <{ %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, [29 x %struct.test_string_1] }> <{ %struct.test_string_1 { ptr @.str.26, i32 2 }, %struct.test_string_1 { ptr @.str.27, i32 10 }, %struct.test_string_1 { ptr @.str.28, i32 34 }, [29 x %struct.test_string_1] zeroinitializer }> }, { ptr, <{ [15 x %struct.test_string_1], [17 x %struct.test_string_1] }> } { ptr @.str.29, <{ [15 x %struct.test_string_1], [17 x %struct.test_string_1] }> <{ [15 x %struct.test_string_1] [%struct.test_string_1 { ptr @.str.30, i32 1 }, %struct.test_string_1 { ptr @.str.31, i32 2 }, %struct.test_string_1 { ptr @.str.32, i32 3 }, %struct.test_string_1 { ptr @.str.33, i32 8 }, %struct.test_string_1 { ptr @.str.34, i32 9 }, %struct.test_string_1 { ptr @.str.35, i32 10 }, %struct.test_string_1 { ptr @.str.36, i32 11 }, %struct.test_string_1 { ptr @.str.29, i32 16 }, %struct.test_string_1 { ptr @.str.30, i32 17 }, %struct.test_string_1 { ptr @.str.37, i32 18 }, %struct.test_string_1 { ptr @.str.38, i32 19 }, %struct.test_string_1 { ptr @.str.39, i32 24 }, %struct.test_string_1 { ptr @.str.40, i32 25 }, %struct.test_string_1 { ptr @.str.41, i32 27 }, %struct.test_string_1 { ptr @.str.42, i32 48 }], [17 x %struct.test_string_1] zeroinitializer }> }, { ptr, <{ %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, [29 x %struct.test_string_1] }> } { ptr @.str.43, <{ %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, [29 x %struct.test_string_1] }> <{ %struct.test_string_1 { ptr @.str.44, i32 72 }, %struct.test_string_1 { ptr @.str.45, i32 96 }, %struct.test_string_1 { ptr @.str.43, i32 64 }, [29 x %struct.test_string_1] zeroinitializer }> }, %struct.test_string_2 zeroinitializer }>, section ".init.rodata", align 4
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\0C\\134\\040\0A\\015\\011\0B\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"\0C\\x5c\\x20\0A\\x0d\\x09\0B\00", [44 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\\014\\134\\040\\012\\015\\011\\013\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\\x0c\\x5c\\x20\\x0a\\x0d\\x09\\x0b\00", [35 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"\\h\\\22\07\CF\1B\\\00", [23 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"\\134h\\134\22\07\\317\1B\\134\00", [43 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"\\134h\\134\22\\007\\317\\033\\134\00", [37 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\1B\\142\\040\\134C\07\22\90\\015]\00", [41 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\07 \1Bb\22\90\\317\0D\00", [20 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\07 \1Bb\22\90\\xcf\0D\00", [20 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"\07 \1Bb\22\90\CF\\r\00", [22 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\07 \1Bb\22\90\\317\\015\00", [17 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\07 \1Bb\22\90\\317\\r\00", [19 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"\07 \1Bb\22\90\\xcf\\x0d\00", [17 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"\07 \1Bb\22\90\\xcf\\r\00", [19 x i8] zeroinitializer }, align 32
@escape1 = internal constant <{ { ptr, <{ %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, [25 x %struct.test_string_1] }> }, { ptr, <{ %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, [28 x %struct.test_string_1] }> }, { ptr, <{ %struct.test_string_1, [31 x %struct.test_string_1] }> }, { ptr, <{ [12 x %struct.test_string_1], [20 x %struct.test_string_1] }> }, { ptr, <{ [12 x %struct.test_string_1], [20 x %struct.test_string_1] }> }, %struct.test_string_2 }> <{ { ptr, <{ %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, [25 x %struct.test_string_1] }> } { ptr @.str.9, <{ %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, [25 x %struct.test_string_1] }> <{ %struct.test_string_1 { ptr @.str.47, i32 8 }, %struct.test_string_1 { ptr @.str.48, i32 32 }, %struct.test_string_1 { ptr @.str.47, i32 271 }, %struct.test_string_1 { ptr @.str.49, i32 392 }, %struct.test_string_1 { ptr @.str.50, i32 416 }, %struct.test_string_1 { ptr @.str.47, i32 328 }, %struct.test_string_1 { ptr @.str.48, i32 352 }, [25 x %struct.test_string_1] zeroinitializer }> }, { ptr, <{ %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, [28 x %struct.test_string_1] }> } { ptr @.str.51, <{ %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, %struct.test_string_1, [28 x %struct.test_string_1] }> <{ %struct.test_string_1 { ptr @.str.52, i32 8 }, %struct.test_string_1 { ptr @.str.52, i32 271 }, %struct.test_string_1 { ptr @.str.53, i32 392 }, %struct.test_string_1 { ptr @.str.52, i32 328 }, [28 x %struct.test_string_1] zeroinitializer }> }, { ptr, <{ %struct.test_string_1, [31 x %struct.test_string_1] }> } { ptr @.str.29, <{ %struct.test_string_1, [31 x %struct.test_string_1] }> <{ %struct.test_string_1 { ptr @.str.54, i32 8 }, [31 x %struct.test_string_1] zeroinitializer }> }, { ptr, <{ [12 x %struct.test_string_1], [20 x %struct.test_string_1] }> } { ptr @.str.43, <{ [12 x %struct.test_string_1], [20 x %struct.test_string_1] }> <{ [12 x %struct.test_string_1] [%struct.test_string_1 { ptr @.str.43, i32 64 }, %struct.test_string_1 { ptr @.str.43, i32 65 }, %struct.test_string_1 { ptr @.str.43, i32 66 }, %struct.test_string_1 { ptr @.str.43, i32 67 }, %struct.test_string_1 { ptr @.str.55, i32 72 }, %struct.test_string_1 { ptr @.str.55, i32 73 }, %struct.test_string_1 { ptr @.str.55, i32 74 }, %struct.test_string_1 { ptr @.str.55, i32 79 }, %struct.test_string_1 { ptr @.str.56, i32 96 }, %struct.test_string_1 { ptr @.str.56, i32 97 }, %struct.test_string_1 { ptr @.str.56, i32 98 }, %struct.test_string_1 { ptr @.str.56, i32 99 }], [20 x %struct.test_string_1] zeroinitializer }> }, { ptr, <{ [12 x %struct.test_string_1], [20 x %struct.test_string_1] }> } { ptr @.str.43, <{ [12 x %struct.test_string_1], [20 x %struct.test_string_1] }> <{ [12 x %struct.test_string_1] [%struct.test_string_1 { ptr @.str.43, i32 128 }, %struct.test_string_1 { ptr @.str.57, i32 129 }, %struct.test_string_1 { ptr @.str.43, i32 130 }, %struct.test_string_1 { ptr @.str.57, i32 131 }, %struct.test_string_1 { ptr @.str.58, i32 136 }, %struct.test_string_1 { ptr @.str.59, i32 137 }, %struct.test_string_1 { ptr @.str.58, i32 138 }, %struct.test_string_1 { ptr @.str.55, i32 143 }, %struct.test_string_1 { ptr @.str.60, i32 160 }, %struct.test_string_1 { ptr @.str.61, i32 161 }, %struct.test_string_1 { ptr @.str.60, i32 162 }, %struct.test_string_1 { ptr @.str.61, i32 163 }], [20 x %struct.test_string_1] zeroinitializer }> }, %struct.test_string_2 zeroinitializer }>, section ".init.rodata", align 4
@.str.63 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0 B\00", [28 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"512 B\00", [26 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1.10 kB\00", [24 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"1.07 KiB\00", [23 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"8.39 MB\00", [24 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"8.00 MiB\00", [23 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"256 GB\00", [25 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"238 GiB\00", [24 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"33.6 MB\00", [24 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"32.0 MiB\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"5.70 MB\00", [24 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"5.44 MiB\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"75.6 ZB\00", [24 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"64.0 ZiB\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"STRING_UNITS_10\00", [16 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"STRING_UNITS_2\00", [17 x i8] zeroinitializer }, align 32
@test_string_get_size_check._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.80, ptr @.str.2, i32 497, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014test_string_helpers: Test 'test_string_get_size' failed!\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"test_string_get_size_check\00", [37 x i8] zeroinitializer }, align 32
@test_string_get_size_check._entry_ptr = internal global ptr @test_string_get_size_check._entry, section ".printk_index", align 4
@test_string_get_size_check._entry.81 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.82, ptr @.str.80, ptr @.str.2, i32 499, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [82 x i8], [46 x i8] } { [82 x i8] c"\014test_string_helpers: string_get_size(size = %llu, blk_size = %llu, units = %s)\0A\00", [46 x i8] zeroinitializer }, align 32
@test_string_get_size_check._entry_ptr.83 = internal global ptr @test_string_get_size_check._entry.81, section ".printk_index", align 4
@test_string_get_size_check._entry.84 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.80, ptr @.str.2, i32 500, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"\014test_string_helpers: expected: '%s', got '%s'\0A\00", [47 x i8] zeroinitializer }, align 32
@test_string_get_size_check._entry_ptr.86 = internal global ptr @test_string_get_size_check._entry.84, section ".printk_index", align 4
@strings_upper = internal unnamed_addr constant [2 x %struct.test_string] [%struct.test_string { ptr @.str.92, ptr @.str.93, i32 0 }, %struct.test_string { ptr @.str.94, ptr @.str.93, i32 0 }], section ".init.rodata", align 4
@test_string_upper_lower._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.87, ptr @.str.88, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [74 x i8], [54 x i8] } { [74 x i8] c"\014test_string_helpers: Test 'string_upper' failed : expected %s, got %s!\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"test_string_upper_lower\00", [40 x i8] zeroinitializer }, align 32
@test_string_upper_lower._entry_ptr = internal global ptr @test_string_upper_lower._entry, section ".printk_index", align 4
@strings_lower = internal unnamed_addr constant [2 x %struct.test_string] [%struct.test_string { ptr @.str.93, ptr @.str.92, i32 0 }, %struct.test_string { ptr @.str.94, ptr @.str.92, i32 0 }], section ".init.rodata", align 4
@test_string_upper_lower._entry.89 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.90, ptr @.str.88, ptr @.str.2, i32 574, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"\014test_string_helpers: Test 'string_lower failed : : expected %s, got %s!\0A\00", [53 x i8] zeroinitializer }, align 32
@test_string_upper_lower._entry_ptr.91 = internal global ptr @test_string_upper_lower._entry.89, section ".printk_index", align 4
@.str.92 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"abcdefgh1234567890test\00", [41 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ABCDEFGH1234567890TEST\00", [41 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"abCdeFgH1234567890TesT\00", [41 x i8] zeroinitializer }, align 32
@_ctype = external dso_local local_unnamed_addr constant [0 x i8], align 1
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 586, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 588, i32 24 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 589, i32 23 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 594, i32 22 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 598, i32 22 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 598, i32 46 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 42, i32 9 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 43, i32 10 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 47, i32 9 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 48, i32 10 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 52, i32 9 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 53, i32 10 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 57, i32 9 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 58, i32 10 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 22, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 24, i32 17 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 24, i32 31 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 26, i32 31 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 28, i32 31 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 413, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 132, i32 10 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 135, i32 10 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 143, i32 10 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 146, i32 10 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 149, i32 10 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 155, i32 8 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 157, i32 10 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 160, i32 10 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 163, i32 10 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 166, i32 10 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 169, i32 10 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 172, i32 10 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 175, i32 10 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 184, i32 10 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 187, i32 10 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 190, i32 10 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 193, i32 10 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 196, i32 10 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 200, i32 10 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 206, i32 8 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 208, i32 10 }
@___asan_gen_.241 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 211, i32 10 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 227, i32 10 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 230, i32 10 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 236, i32 10 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 239, i32 10 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 251, i32 8 }
@___asan_gen_.259 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 253, i32 10 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 259, i32 10 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 270, i32 10 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 290, i32 10 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 302, i32 10 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 322, i32 10 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 331, i32 10 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 334, i32 10 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 343, i32 10 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 346, i32 10 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 523, i32 2 }
@___asan_gen_.292 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 524, i32 2 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 525, i32 2 }
@___asan_gen_.304 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 528, i32 2 }
@___asan_gen_.310 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 529, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 530, i32 2 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 533, i32 2 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 536, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 513, i32 29 }
@___asan_gen_.334 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 516, i32 29 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 497, i32 2 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 498, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 500, i32 2 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 555, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 573, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 363, i32 9 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 364, i32 10 }
@___asan_gen_.377 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.378 = private constant [29 x i8] c"../lib/test-string_helpers.c\00", align 1
@___asan_gen_.379 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.378, i32 367, i32 9 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__UNIQUE_ID_file192, ptr @__UNIQUE_ID_license193, ptr @__initcall__kmod_test_string_helpers__191_608_test_string_helpers_init6, ptr @test_string_check_buf._entry, ptr @test_string_check_buf._entry_ptr, ptr @test_string_escape_overflow._entry, ptr @test_string_escape_overflow._entry_ptr, ptr @test_string_get_size_check._entry, ptr @test_string_get_size_check._entry.81, ptr @test_string_get_size_check._entry.84, ptr @test_string_get_size_check._entry_ptr, ptr @test_string_get_size_check._entry_ptr.83, ptr @test_string_get_size_check._entry_ptr.86, ptr @test_string_helpers_init._entry, ptr @test_string_helpers_init._entry_ptr, ptr @test_string_upper_lower._entry, ptr @test_string_upper_lower._entry.89, ptr @test_string_upper_lower._entry_ptr, ptr @test_string_upper_lower._entry_ptr.91, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.82, ptr @.str.85, ptr @.str.87, ptr @.str.88, ptr @.str.90, ptr @.str.92, ptr @.str.93, ptr @.str.94], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_string_helpers_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_string_check_buf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_string_escape_overflow._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 84, i32 128, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.259 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.292 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.310 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_string_get_size_check._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_string_get_size_check._entry.81 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 82, i32 128, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_string_get_size_check._entry.84 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_string_upper_lower._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 74, i32 128, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_string_upper_lower._entry.89 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.379 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_string_helpers_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry
  %i.022 = phi i32 [ 0, %entry ], [ %inc, %for.body.for.body_crit_edge ]
  tail call fastcc void @test_string_unescape(ptr noundef nonnull @.str.3, i32 noundef %i.022, i1 noundef zeroext false) #11
  %inc = add nuw nsw i32 %i.022, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body
  %call.i = tail call i32 @get_random_u32() #12
  %rem = and i32 %call.i, 15
  tail call fastcc void @test_string_unescape(ptr noundef nonnull @.str.4, i32 noundef %rem, i1 noundef zeroext true) #11
  br label %for.body4

for.body4:                                        ; preds = %for.body4.for.body4_crit_edge, %for.end
  %i.123 = phi i32 [ 0, %for.end ], [ %inc6, %for.body4.for.body4_crit_edge ]
  tail call fastcc void @test_string_escape(ptr noundef nonnull @.str.5, ptr noundef nonnull @escape0, i32 noundef %i.123, ptr noundef null) #11
  %inc6 = add nuw nsw i32 %i.123, 1
  %exitcond25.not = icmp eq i32 %inc6, 512
  br i1 %exitcond25.not, label %for.body4.for.body10_crit_edge, label %for.body4.for.body4_crit_edge

for.body4.for.body4_crit_edge:                    ; preds = %for.body4
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body4

for.body4.for.body10_crit_edge:                   ; preds = %for.body4
  br label %for.body10

for.body10:                                       ; preds = %for.body10.for.body10_crit_edge, %for.body4.for.body10_crit_edge
  %i.224 = phi i32 [ %inc12, %for.body10.for.body10_crit_edge ], [ 0, %for.body4.for.body10_crit_edge ]
  tail call fastcc void @test_string_escape(ptr noundef nonnull @.str.6, ptr noundef nonnull @escape1, i32 noundef %i.224, ptr noundef nonnull @.str.7) #11
  %inc12 = add nuw nsw i32 %i.224, 1
  %exitcond26.not = icmp eq i32 %inc12, 512
  br i1 %exitcond26.not, label %for.end13, label %for.body10.for.body10_crit_edge

for.body10.for.body10_crit_edge:                  ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body10

for.end13:                                        ; preds = %for.body10
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @test_string_get_size() #11
  tail call fastcc void @test_string_upper_lower() #11
  ret i32 -22
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_string_unescape(ptr noundef %name, i32 noundef %flags, i1 noundef zeroext %inplace) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 256) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i85 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 256) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i86 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 256) #13
  %tobool.not = icmp eq ptr %call7.i, null
  %tobool3.not = icmp eq ptr %call7.i85, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  %tobool5.not = icmp eq ptr %call7.i86, null
  %or.cond84 = select i1 %or.cond, i1 true, i1 %tobool5.not
  br i1 %or.cond84, label %entry.out40_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.out40_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out40

for.body:                                         ; preds = %if.end19.for.body_crit_edge, %entry.for.body_crit_edge
  %q_test.091 = phi i32 [ %add21, %if.end19.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %p.090 = phi i32 [ %add, %if.end19.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %i.088 = phi i32 [ %inc, %if.end19.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr [4 x %struct.test_string], ptr @strings, i32 0, i32 %i.088
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %arrayidx, align 4
  %call9 = tail call i32 @strlen(ptr noundef %4) #14
  %arrayidx10 = getelementptr i8, ptr %call7.i, i32 %p.090
  %5 = call ptr @memcpy(ptr %arrayidx10, ptr %4, i32 %call9)
  %add = add i32 %call9, %p.090
  %flags12 = getelementptr [4 x %struct.test_string], ptr @strings, i32 0, i32 %i.088, i32 2
  %6 = ptrtoint ptr %flags12 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags12, align 4
  %and = and i32 %7, %flags
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool13.not = icmp eq i32 %and, 0
  br i1 %tobool13.not, label %for.body.if.end19_crit_edge, label %if.then14

for.body.if.end19_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then14:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %out = getelementptr [4 x %struct.test_string], ptr @strings, i32 0, i32 %i.088, i32 1
  %8 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %out, align 4
  %call18 = tail call i32 @strlen(ptr noundef %9) #14
  br label %if.end19

if.end19:                                         ; preds = %if.then14, %for.body.if.end19_crit_edge
  %s.0 = phi ptr [ %9, %if.then14 ], [ %4, %for.body.if.end19_crit_edge ]
  %len.0 = phi i32 [ %call18, %if.then14 ], [ %call9, %for.body.if.end19_crit_edge ]
  %arrayidx20 = getelementptr i8, ptr %call7.i85, i32 %q_test.091
  %10 = call ptr @memcpy(ptr %arrayidx20, ptr %s.0, i32 %len.0)
  %add21 = add i32 %len.0, %q_test.091
  %inc = add nuw nsw i32 %i.088, 1
  %exitcond.not = icmp eq i32 %inc, 4
  br i1 %exitcond.not, label %for.end, label %if.end19.for.body_crit_edge

if.end19.for.body_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end19
  %arrayidx23 = getelementptr i8, ptr %call7.i, i32 %add
  %11 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %arrayidx23, align 1
  br i1 %inplace, label %if.then25, label %if.else31

if.then25:                                        ; preds = %for.end
  %inc22 = add i32 %add, 1
  %12 = call ptr @memcpy(ptr %call7.i86, ptr %call7.i, i32 %inc22)
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %flags)
  %cmp26 = icmp eq i32 %flags, 15
  br i1 %cmp26, label %if.then27, label %if.else

if.then27:                                        ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i = tail call i32 @string_unescape(ptr noundef %call7.i86, ptr noundef %call7.i86, i32 noundef 0, i32 noundef 15) #12
  br label %if.end38

if.else:                                          ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @string_unescape(ptr noundef %call7.i86, ptr noundef %call7.i86, i32 noundef 0, i32 noundef %flags) #12
  br label %if.end38

if.else31:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %flags)
  %cmp32 = icmp eq i32 %flags, 15
  br i1 %cmp32, label %if.then33, label %if.else35

if.then33:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  %call.i87 = tail call i32 @string_unescape(ptr noundef %call7.i, ptr noundef %call7.i86, i32 noundef 256, i32 noundef 15) #12
  br label %if.end38

if.else35:                                        ; preds = %if.else31
  call void @__sanitizer_cov_trace_pc() #9
  %call36 = tail call i32 @string_unescape(ptr noundef nonnull %call7.i, ptr noundef nonnull %call7.i86, i32 noundef 256, i32 noundef %flags) #12
  br label %if.end38

if.end38:                                         ; preds = %if.else35, %if.then33, %if.else, %if.then27
  %q_real.0 = phi i32 [ %call.i.i, %if.then27 ], [ %call.i, %if.else ], [ %call.i87, %if.then33 ], [ %call36, %if.else35 ]
  tail call fastcc void @test_string_check_buf(ptr noundef %name, i32 noundef %flags, ptr noundef nonnull %call7.i, i32 noundef %add, ptr noundef nonnull %call7.i86, i32 noundef %q_real.0, ptr noundef nonnull %call7.i85, i32 noundef %add21) #11
  br label %out40

out40:                                            ; preds = %if.end38, %entry.out40_crit_edge
  tail call void @kfree(ptr noundef %call7.i86) #12
  tail call void @kfree(ptr noundef %call7.i85) #12
  tail call void @kfree(ptr noundef %call7.i) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_string_escape(ptr noundef %name, ptr nocapture noundef readonly %s2, i32 noundef %flags, ptr noundef %esc) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 512) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i88 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 512) #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i89 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 3264, i32 noundef 256) #13
  %tobool.not = icmp eq ptr %call7.i, null
  %tobool3.not = icmp eq ptr %call7.i88, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  %tobool5.not = icmp eq ptr %call7.i89, null
  %or.cond86 = select i1 %or.cond, i1 true, i1 %tobool5.not
  br i1 %or.cond86, label %entry.out39_crit_edge, label %for.cond.preheader

entry.out39_crit_edge:                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out39

for.cond.preheader:                               ; preds = %entry
  %3 = ptrtoint ptr %s2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %s2, align 4
  %tobool7.not102 = icmp eq ptr %4, null
  br i1 %tobool7.not102, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %and = and i32 %flags, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  %and10 = and i32 %flags, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  %and12 = and i32 %flags, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and12)
  %tobool13.not = icmp ne i32 %and12, 0
  %tobool15.not = icmp ne ptr %esc, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %flags)
  %tobool.not.i = icmp eq i32 %flags, 0
  %and2.i = and i32 %flags, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i)
  %tobool3.not.i = icmp eq i32 %and2.i, 0
  %spec.select.v.i = select i1 %tobool3.not.i, i32 -5, i32 -37
  %spec.select.i = and i32 %spec.select.v.i, %flags
  %or.cond87.not = and i1 %tobool13.not, %tobool15.not
  %brmerge = or i1 %tobool11.not, %or.cond87.not
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %5 = phi ptr [ %4, %for.body.lr.ph ], [ %17, %cleanup.for.body_crit_edge ]
  %q_test.0107 = phi i32 [ 0, %for.body.lr.ph ], [ %q_test.2, %cleanup.for.body_crit_edge ]
  %p.0106 = phi i32 [ 0, %for.body.lr.ph ], [ %p.2, %cleanup.for.body_crit_edge ]
  %s2.addr.0103 = phi ptr [ %s2, %for.body.lr.ph ], [ %incdec.ptr, %cleanup.for.body_crit_edge ]
  br i1 %tobool8.not, label %if.end24, label %if.then9

if.then9:                                         ; preds = %for.body
  %inc = add i32 %p.0106, 1
  %arrayidx = getelementptr i8, ptr %call7.i89, i32 %p.0106
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %arrayidx, align 1
  %inc19 = add i32 %q_test.0107, 1
  %arrayidx20 = getelementptr i8, ptr %call7.i, i32 %q_test.0107
  br i1 %brmerge, label %if.else, label %if.then16

if.then16:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %arrayidx20, align 1
  br label %if.end.i

if.else:                                          ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 92, ptr %arrayidx20, align 1
  %inc21 = add i32 %q_test.0107, 2
  %arrayidx22 = getelementptr i8, ptr %call7.i, i32 %inc19
  %9 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 48, ptr %arrayidx22, align 1
  br label %if.end.i

if.end24:                                         ; preds = %for.body
  br i1 %tobool.not.i, label %if.end24.if.end28_crit_edge, label %if.end24.if.end.i_crit_edge

if.end24.if.end.i_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.end24.if.end28_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end.i:                                         ; preds = %if.end24.if.end.i_crit_edge, %if.else, %if.then16
  %q_test.196 = phi i32 [ %q_test.0107, %if.end24.if.end.i_crit_edge ], [ %inc19, %if.then16 ], [ %inc21, %if.else ]
  %p.194 = phi i32 [ %p.0106, %if.end24.if.end.i_crit_edge ], [ %inc, %if.then16 ], [ %inc, %if.else ]
  %s11.i = getelementptr inbounds %struct.test_string_2, ptr %s2.addr.0103, i32 0, i32 1
  br label %land.rhs.i

land.rhs.i:                                       ; preds = %for.inc.i.land.rhs.i_crit_edge, %if.end.i
  %i.024.i = phi i32 [ 0, %if.end.i ], [ %inc.i, %for.inc.i.land.rhs.i_crit_edge ]
  %s1.023.i = phi ptr [ %s11.i, %if.end.i ], [ %incdec.ptr.i, %for.inc.i.land.rhs.i_crit_edge ]
  %10 = ptrtoint ptr %s1.023.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %s1.023.i, align 4
  %tobool7.not.i = icmp eq ptr %11, null
  br i1 %tobool7.not.i, label %land.rhs.i.cleanup_crit_edge, label %for.body.i

land.rhs.i.cleanup_crit_edge:                     ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %land.rhs.i
  %flags8.i = getelementptr inbounds %struct.test_string_1, ptr %s1.023.i, i32 0, i32 1
  %12 = ptrtoint ptr %flags8.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags8.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %spec.select.i)
  %cmp9.i = icmp eq i32 %13, %spec.select.i
  br i1 %cmp9.i, label %for.body.i.if.end28_crit_edge, label %for.inc.i

for.body.i.if.end28_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

for.inc.i:                                        ; preds = %for.body.i
  %inc.i = add nuw nsw i32 %i.024.i, 1
  %incdec.ptr.i = getelementptr %struct.test_string_1, ptr %s1.023.i, i32 1
  %exitcond.not.i = icmp eq i32 %inc.i, 32
  br i1 %exitcond.not.i, label %for.inc.i.cleanup_crit_edge, label %for.inc.i.land.rhs.i_crit_edge

for.inc.i.land.rhs.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.rhs.i

for.inc.i.cleanup_crit_edge:                      ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end28:                                         ; preds = %for.body.i.if.end28_crit_edge, %if.end24.if.end28_crit_edge
  %q_test.195 = phi i32 [ %q_test.0107, %if.end24.if.end28_crit_edge ], [ %q_test.196, %for.body.i.if.end28_crit_edge ]
  %p.193 = phi i32 [ %p.0106, %if.end24.if.end28_crit_edge ], [ %p.194, %for.body.i.if.end28_crit_edge ]
  %retval.0.i = phi ptr [ %5, %if.end24.if.end28_crit_edge ], [ %11, %for.body.i.if.end28_crit_edge ]
  %call30 = tail call i32 @strlen(ptr noundef nonnull %5) #14
  %arrayidx31 = getelementptr i8, ptr %call7.i89, i32 %p.193
  %14 = call ptr @memcpy(ptr %arrayidx31, ptr %5, i32 %call30)
  %add = add i32 %call30, %p.193
  %call33 = tail call i32 @strlen(ptr noundef nonnull %retval.0.i) #14
  %arrayidx34 = getelementptr i8, ptr %call7.i, i32 %q_test.195
  %15 = call ptr @memcpy(ptr %arrayidx34, ptr %retval.0.i, i32 %call33)
  %add35 = add i32 %call33, %q_test.195
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %for.inc.i.cleanup_crit_edge, %land.rhs.i.cleanup_crit_edge
  %p.2 = phi i32 [ %add, %if.end28 ], [ %p.194, %land.rhs.i.cleanup_crit_edge ], [ %p.194, %for.inc.i.cleanup_crit_edge ]
  %q_test.2 = phi i32 [ %add35, %if.end28 ], [ %q_test.196, %land.rhs.i.cleanup_crit_edge ], [ %q_test.196, %for.inc.i.cleanup_crit_edge ]
  %incdec.ptr = getelementptr %struct.test_string_2, ptr %s2.addr.0103, i32 1
  %16 = ptrtoint ptr %incdec.ptr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %incdec.ptr, align 4
  %tobool7.not = icmp eq ptr %17, null
  br i1 %tobool7.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %p.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %p.2, %cleanup.for.end_crit_edge ]
  %q_test.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %q_test.2, %cleanup.for.end_crit_edge ]
  %call37 = tail call i32 @string_escape_mem(ptr noundef nonnull %call7.i89, i32 noundef %p.0.lcssa, ptr noundef nonnull %call7.i88, i32 noundef 512, i32 noundef %flags, ptr noundef %esc) #12
  tail call fastcc void @test_string_check_buf(ptr noundef %name, i32 noundef %flags, ptr noundef nonnull %call7.i89, i32 noundef %p.0.lcssa, ptr noundef nonnull %call7.i88, i32 noundef %call37, ptr noundef nonnull %call7.i, i32 noundef %q_test.0.lcssa) #11
  tail call fastcc void @test_string_escape_overflow(ptr noundef nonnull %call7.i89, i32 noundef %p.0.lcssa, i32 noundef %flags, ptr noundef %esc, i32 noundef %q_test.0.lcssa, ptr noundef %name) #11
  br label %out39

out39:                                            ; preds = %for.end, %entry.out39_crit_edge
  tail call void @kfree(ptr noundef %call7.i89) #12
  tail call void @kfree(ptr noundef %call7.i88) #12
  tail call void @kfree(ptr noundef %call7.i) #12
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_string_get_size() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @__test_string_get_size(i64 noundef 0, i64 noundef 512, ptr noundef nonnull @.str.63, ptr noundef nonnull @.str.63) #11
  tail call fastcc void @__test_string_get_size(i64 noundef 1, i64 noundef 512, ptr noundef nonnull @.str.64, ptr noundef nonnull @.str.64) #11
  tail call fastcc void @__test_string_get_size(i64 noundef 1100, i64 noundef 1, ptr noundef nonnull @.str.65, ptr noundef nonnull @.str.66) #11
  tail call fastcc void @__test_string_get_size(i64 noundef 16384, i64 noundef 512, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.68) #11
  tail call fastcc void @__test_string_get_size(i64 noundef 500118192, i64 noundef 512, ptr noundef nonnull @.str.69, ptr noundef nonnull @.str.70) #11
  tail call fastcc void @__test_string_get_size(i64 noundef 8192, i64 noundef 4096, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72) #11
  tail call fastcc void @__test_string_get_size(i64 noundef 3000, i64 noundef 1900, ptr noundef nonnull @.str.73, ptr noundef nonnull @.str.74) #11
  tail call fastcc void @__test_string_get_size(i64 noundef -1, i64 noundef 4096, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #11
  tail call fastcc void @__test_string_get_size(i64 noundef 4096, i64 noundef -1, ptr noundef nonnull @.str.75, ptr noundef nonnull @.str.76) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_string_upper_lower() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body:                                         ; preds = %if.end11.for.body_crit_edge, %entry
  %i.0127 = phi i32 [ 0, %entry ], [ %inc, %if.end11.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.test_string], ptr @strings_upper, i32 0, i32 %i.0127
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %call = tail call i32 @strlen(ptr noundef %1) #14
  %add = add i32 %call, 1
  %call9.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3264) #15
  %tobool.not = icmp eq ptr %call9.i, null
  br i1 %tobool.not, label %for.body.cleanup48_crit_edge, label %for.body.do.body.i_crit_edge

for.body.do.body.i_crit_edge:                     ; preds = %for.body
  br label %do.body.i

for.body.cleanup48_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup48

do.body.i:                                        ; preds = %do.body.i.do.body.i_crit_edge, %for.body.do.body.i_crit_edge
  %dst.addr.0.i = phi ptr [ %incdec.ptr.i, %do.body.i.do.body.i_crit_edge ], [ %call9.i, %for.body.do.body.i_crit_edge ]
  %src.addr.0.i = phi ptr [ %incdec.ptr1.i, %do.body.i.do.body.i_crit_edge ], [ %1, %for.body.do.body.i_crit_edge ]
  %2 = ptrtoint ptr %src.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %src.addr.0.i, align 1
  %conv.i.i = zext i8 %3 to i32
  %arrayidx.i.i = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i
  %4 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %arrayidx.i.i, align 1
  %6 = and i8 %5, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %cmp.not.i.i = icmp eq i8 %6, 0
  %sub.i.i = add i8 %3, -32
  %spec.select.i.i107 = select i1 %cmp.not.i.i, i8 %3, i8 %sub.i.i
  %incdec.ptr.i = getelementptr i8, ptr %dst.addr.0.i, i32 1
  %7 = ptrtoint ptr %dst.addr.0.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %spec.select.i.i107, ptr %dst.addr.0.i, align 1
  %incdec.ptr1.i = getelementptr i8, ptr %src.addr.0.i, i32 1
  %8 = ptrtoint ptr %src.addr.0.i to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %src.addr.0.i, align 1
  %tobool.not.i = icmp eq i8 %9, 0
  br i1 %tobool.not.i, label %string_upper.exit, label %do.body.i.do.body.i_crit_edge

do.body.i.do.body.i_crit_edge:                    ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

string_upper.exit:                                ; preds = %do.body.i
  %out = getelementptr [2 x %struct.test_string], ptr @strings_upper, i32 0, i32 %i.0127, i32 1
  %10 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %out, align 4
  %bcmp78 = tail call i32 @bcmp(ptr nonnull %call9.i, ptr %11, i32 %add) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp78)
  %tobool6.not = icmp eq i32 %bcmp78, 0
  br i1 %tobool6.not, label %if.end11, label %do.end

do.end:                                           ; preds = %string_upper.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.87, ptr noundef %11, ptr noundef nonnull %call9.i) #10
  br label %cleanup48.sink.split

if.end11:                                         ; preds = %string_upper.exit
  tail call void @kfree(ptr noundef nonnull %call9.i) #12
  %inc = add nuw nsw i32 %i.0127, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %if.end11.for.body15_crit_edge, label %if.end11.for.body_crit_edge

if.end11.for.body_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end11.for.body15_crit_edge:                    ; preds = %if.end11
  br label %for.body15

for.body15:                                       ; preds = %if.end40.for.body15_crit_edge, %if.end11.for.body15_crit_edge
  %i.1128 = phi i32 [ %inc46, %if.end40.for.body15_crit_edge ], [ 0, %if.end11.for.body15_crit_edge ]
  %arrayidx17 = getelementptr [2 x %struct.test_string], ptr @strings_lower, i32 0, i32 %i.1128
  %12 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx17, align 4
  %call22 = tail call i32 @strlen(ptr noundef %13) #14
  %add23 = add i32 %call22, 1
  %call9.i103 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add23, i32 noundef 3264) #15
  %tobool25.not = icmp eq ptr %call9.i103, null
  br i1 %tobool25.not, label %for.body15.cleanup48_crit_edge, label %for.body15.do.body.i118_crit_edge

for.body15.do.body.i118_crit_edge:                ; preds = %for.body15
  br label %do.body.i118

for.body15.cleanup48_crit_edge:                   ; preds = %for.body15
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup48

do.body.i118:                                     ; preds = %do.body.i118.do.body.i118_crit_edge, %for.body15.do.body.i118_crit_edge
  %dst.addr.0.i108 = phi ptr [ %incdec.ptr.i115, %do.body.i118.do.body.i118_crit_edge ], [ %call9.i103, %for.body15.do.body.i118_crit_edge ]
  %src.addr.0.i109 = phi ptr [ %incdec.ptr1.i116, %do.body.i118.do.body.i118_crit_edge ], [ %13, %for.body15.do.body.i118_crit_edge ]
  %14 = ptrtoint ptr %src.addr.0.i109 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %src.addr.0.i109, align 1
  %conv.i.i110 = zext i8 %15 to i32
  %arrayidx.i.i111 = getelementptr [0 x i8], ptr @_ctype, i32 0, i32 %conv.i.i110
  %16 = ptrtoint ptr %arrayidx.i.i111 to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %arrayidx.i.i111, align 1
  %18 = and i8 %17, 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %cmp.not.i.i112 = icmp eq i8 %18, 0
  %sub.i.i113 = add i8 %15, 32
  %spec.select.i.i114 = select i1 %cmp.not.i.i112, i8 %15, i8 %sub.i.i113
  %incdec.ptr.i115 = getelementptr i8, ptr %dst.addr.0.i108, i32 1
  %19 = ptrtoint ptr %dst.addr.0.i108 to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 %spec.select.i.i114, ptr %dst.addr.0.i108, align 1
  %incdec.ptr1.i116 = getelementptr i8, ptr %src.addr.0.i109, i32 1
  %20 = ptrtoint ptr %src.addr.0.i109 to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %src.addr.0.i109, align 1
  %tobool.not.i117 = icmp eq i8 %21, 0
  br i1 %tobool.not.i117, label %string_lower.exit, label %do.body.i118.do.body.i118_crit_edge

do.body.i118.do.body.i118_crit_edge:              ; preds = %do.body.i118
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i118

string_lower.exit:                                ; preds = %do.body.i118
  %out29 = getelementptr [2 x %struct.test_string], ptr @strings_lower, i32 0, i32 %i.1128, i32 1
  %22 = ptrtoint ptr %out29 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %out29, align 4
  %bcmp = tail call i32 @bcmp(ptr nonnull %call9.i103, ptr %23, i32 %add23) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool31.not = icmp eq i32 %bcmp, 0
  br i1 %tobool31.not, label %if.end40, label %do.end35

do.end35:                                         ; preds = %string_lower.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call39 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.90, ptr noundef %23, ptr noundef nonnull %call9.i103) #10
  br label %cleanup48.sink.split

if.end40:                                         ; preds = %string_lower.exit
  tail call void @kfree(ptr noundef nonnull %call9.i103) #12
  %inc46 = add nuw nsw i32 %i.1128, 1
  %exitcond133.not = icmp eq i32 %inc46, 2
  br i1 %exitcond133.not, label %if.end40.cleanup48_crit_edge, label %if.end40.for.body15_crit_edge

if.end40.for.body15_crit_edge:                    ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body15

if.end40.cleanup48_crit_edge:                     ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup48

cleanup48.sink.split:                             ; preds = %do.end35, %do.end
  %retval.1.i105124.lcssa.sink = phi ptr [ %call9.i103, %do.end35 ], [ %call9.i, %do.end ]
  tail call void @kfree(ptr noundef nonnull %retval.1.i105124.lcssa.sink) #12
  br label %cleanup48

cleanup48:                                        ; preds = %cleanup48.sink.split, %if.end40.cleanup48_crit_edge, %for.body15.cleanup48_crit_edge, %for.body.cleanup48_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @string_unescape(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_string_check_buf(ptr noundef %name, i32 noundef %flags, ptr noundef %in, i32 noundef %p, ptr noundef %out_real, i32 noundef %q_real, ptr noundef %out_test, i32 noundef %q_test) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_cmp4(i32 %q_real, i32 %q_test)
  %cmp = icmp eq i32 %q_real, %q_test
  br i1 %cmp, label %land.lhs.true, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true:                                    ; preds = %entry
  %bcmp = tail call i32 @bcmp(ptr %out_test, ptr %out_real, i32 %q_real) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %land.lhs.true.return_crit_edge, label %land.lhs.true.do.end_crit_edge

land.lhs.true.do.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

land.lhs.true.return_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

do.end:                                           ; preds = %land.lhs.true.do.end_crit_edge, %entry.do.end_crit_edge
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.16, ptr noundef %name, i32 noundef %flags) #10
  tail call void @print_hex_dump(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.19, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %in, i32 noundef %p, i1 noundef zeroext true) #12
  tail call void @print_hex_dump(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.20, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %out_test, i32 noundef %q_test, i1 noundef zeroext true) #12
  tail call void @print_hex_dump(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.21, i32 noundef 0, i32 noundef 16, i32 noundef 1, ptr noundef %out_real, i32 noundef %q_real, i1 noundef zeroext true) #12
  br label %return

return:                                           ; preds = %do.end, %land.lhs.true.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_random_u32() local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @string_escape_mem(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_string_escape_overflow(ptr noundef %in, i32 noundef %p, i32 noundef %flags, ptr noundef %esc, i32 noundef %q_test, ptr noundef %name) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @string_escape_mem(ptr noundef %in, i32 noundef %p, ptr noundef null, i32 noundef 0, i32 noundef %flags, ptr noundef %esc) #12
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %q_test)
  %cmp.not = icmp eq i32 %call, %q_test
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22, ptr noundef %name, i32 noundef %flags, i32 noundef %q_test, i32 noundef %call) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__test_string_get_size(i64 noundef %size, i64 noundef %blk_size, ptr noundef %exp_result10, ptr noundef %exp_result2) unnamed_addr #0 section ".init.text" align 64 {
entry:
  %buf10 = alloca [16 x i8], align 1
  %buf2 = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf10) #12
  %0 = call ptr @memset(ptr %buf10, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %buf2) #12
  %1 = call ptr @memset(ptr %buf2, i32 255, i32 16)
  call void @string_get_size(i64 noundef %size, i64 noundef %blk_size, i32 noundef 0, ptr noundef nonnull %buf10, i32 noundef 16) #12
  call void @string_get_size(i64 noundef %size, i64 noundef %blk_size, i32 noundef 1, ptr noundef nonnull %buf2, i32 noundef 16) #12
  call fastcc void @test_string_get_size_check(ptr noundef nonnull @.str.77, ptr noundef %exp_result10, ptr noundef nonnull %buf10, i64 noundef %size, i64 noundef %blk_size) #11
  call fastcc void @test_string_get_size_check(ptr noundef nonnull @.str.78, ptr noundef %exp_result2, ptr noundef nonnull %buf2, i64 noundef %size, i64 noundef %blk_size) #11
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf2) #12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %buf10) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @string_get_size(i64 noundef, i64 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_string_get_size_check(ptr noundef %units, ptr noundef %exp, ptr noundef %res, i64 noundef %size, i64 noundef %blk_size) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @strlen(ptr noundef %exp) #14
  %add = add i32 %call, 1
  %bcmp = tail call i32 @bcmp(ptr %res, ptr %exp, i32 %add) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr i8, ptr %res, i32 15
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %arrayidx, align 1
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.79) #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.82, i64 noundef %size, i64 noundef %blk_size, ptr noundef %units) #10
  %call10 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.85, ptr noundef %exp, ptr noundef %res) #10
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  ret void
}

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly nofree nounwind readonly willreturn }
attributes #8 = { nounwind uwtable(sync) }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { cold }
attributes #12 = { nounwind }
attributes #13 = { nounwind allocsize(2) }
attributes #14 = { nobuiltin }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !9, !10, !11, !13, !15, !17, !19, !21, !23, !25, !27, !29, !31, !33, !35, !37, !39, !41, !42, !43, !44, !46, !48, !50, !52, !54, !55, !56, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !77, !79, !81, !83, !85, !87, !89, !91, !93, !95, !97, !99, !101, !103, !105, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !142, !144, !145, !147, !148, !150, !151, !153, !154, !156, !157, !159, !161, !163, !164, !165, !166, !168, !169, !170, !172, !173, !174, !176, !177, !178, !179, !181, !182, !183, !185, !187, !189, !191}
!llvm.module.flags = !{!193, !194, !195, !196, !197, !198, !199}
!llvm.ident = !{!200}

!0 = !{ptr @__initcall__kmod_test_string_helpers__191_608_test_string_helpers_init6, !1, !"__initcall__kmod_test_string_helpers__191_608_test_string_helpers_init6", i1 false, i1 false}
!1 = !{!"../lib/test-string_helpers.c", i32 608, i32 1}
!2 = !{ptr @__UNIQUE_ID_file192, !3, !"__UNIQUE_ID_file192", i1 false, i1 false}
!3 = !{!"../lib/test-string_helpers.c", i32 609, i32 1}
!4 = !{ptr @__UNIQUE_ID_license193, !3, !"__UNIQUE_ID_license193", i1 false, i1 false}
!5 = !{ptr @.str, !6, !"<string literal>", i1 false, i1 false}
!6 = !{!"../lib/test-string_helpers.c", i32 586, i32 2}
!7 = !{ptr @.str.1, !6, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.2, !6, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @test_string_helpers_init._entry, !6, !"_entry", i1 false, i1 false}
!10 = !{ptr @test_string_helpers_init._entry_ptr, !6, !"_entry_ptr", i1 false, i1 false}
!11 = !{ptr @.str.3, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../lib/test-string_helpers.c", i32 588, i32 24}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../lib/test-string_helpers.c", i32 589, i32 23}
!15 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../lib/test-string_helpers.c", i32 594, i32 22}
!17 = !{ptr @.str.6, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../lib/test-string_helpers.c", i32 598, i32 22}
!19 = !{ptr @.str.7, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../lib/test-string_helpers.c", i32 598, i32 46}
!21 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../lib/test-string_helpers.c", i32 42, i32 9}
!23 = !{ptr @.str.9, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../lib/test-string_helpers.c", i32 43, i32 10}
!25 = !{ptr @.str.10, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../lib/test-string_helpers.c", i32 47, i32 9}
!27 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../lib/test-string_helpers.c", i32 48, i32 10}
!29 = !{ptr @.str.12, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../lib/test-string_helpers.c", i32 52, i32 9}
!31 = !{ptr @.str.13, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../lib/test-string_helpers.c", i32 53, i32 10}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../lib/test-string_helpers.c", i32 57, i32 9}
!35 = !{ptr @.str.15, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../lib/test-string_helpers.c", i32 58, i32 10}
!37 = !{ptr @strings, !38, !"strings", i1 false, i1 false}
!38 = !{!"../lib/test-string_helpers.c", i32 40, i32 33}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../lib/test-string_helpers.c", i32 22, i32 2}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @test_string_check_buf._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @test_string_check_buf._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.18, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/test-string_helpers.c", i32 24, i32 17}
!46 = !{ptr @.str.19, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../lib/test-string_helpers.c", i32 24, i32 31}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/test-string_helpers.c", i32 26, i32 31}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../lib/test-string_helpers.c", i32 28, i32 31}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../lib/test-string_helpers.c", i32 413, i32 3}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @test_string_escape_overflow._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @test_string_escape_overflow._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../lib/test-string_helpers.c", i32 132, i32 10}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../lib/test-string_helpers.c", i32 135, i32 10}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../lib/test-string_helpers.c", i32 143, i32 10}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../lib/test-string_helpers.c", i32 146, i32 10}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../lib/test-string_helpers.c", i32 149, i32 10}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../lib/test-string_helpers.c", i32 155, i32 8}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../lib/test-string_helpers.c", i32 157, i32 10}
!71 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../lib/test-string_helpers.c", i32 160, i32 10}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../lib/test-string_helpers.c", i32 163, i32 10}
!75 = !{ptr @.str.33, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../lib/test-string_helpers.c", i32 166, i32 10}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../lib/test-string_helpers.c", i32 169, i32 10}
!79 = !{ptr @.str.35, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../lib/test-string_helpers.c", i32 172, i32 10}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../lib/test-string_helpers.c", i32 175, i32 10}
!83 = !{ptr @.str.37, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../lib/test-string_helpers.c", i32 184, i32 10}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../lib/test-string_helpers.c", i32 187, i32 10}
!87 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../lib/test-string_helpers.c", i32 190, i32 10}
!89 = !{ptr @.str.40, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../lib/test-string_helpers.c", i32 193, i32 10}
!91 = !{ptr @.str.41, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../lib/test-string_helpers.c", i32 196, i32 10}
!93 = !{ptr @.str.42, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../lib/test-string_helpers.c", i32 200, i32 10}
!95 = !{ptr @.str.43, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../lib/test-string_helpers.c", i32 206, i32 8}
!97 = !{ptr @.str.44, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../lib/test-string_helpers.c", i32 208, i32 10}
!99 = !{ptr @.str.45, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../lib/test-string_helpers.c", i32 211, i32 10}
!101 = !{ptr @escape0, !102, !"escape0", i1 false, i1 false}
!102 = !{!"../lib/test-string_helpers.c", i32 126, i32 35}
!103 = !{ptr @.str.47, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../lib/test-string_helpers.c", i32 227, i32 10}
!105 = !{ptr @.str.48, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../lib/test-string_helpers.c", i32 230, i32 10}
!107 = !{ptr @.str.49, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../lib/test-string_helpers.c", i32 236, i32 10}
!109 = !{ptr @.str.50, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../lib/test-string_helpers.c", i32 239, i32 10}
!111 = !{ptr @.str.51, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../lib/test-string_helpers.c", i32 251, i32 8}
!113 = !{ptr @.str.52, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../lib/test-string_helpers.c", i32 253, i32 10}
!115 = !{ptr @.str.53, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../lib/test-string_helpers.c", i32 259, i32 10}
!117 = !{ptr @.str.54, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../lib/test-string_helpers.c", i32 270, i32 10}
!119 = !{ptr @.str.55, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../lib/test-string_helpers.c", i32 290, i32 10}
!121 = !{ptr @.str.56, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../lib/test-string_helpers.c", i32 302, i32 10}
!123 = !{ptr @.str.57, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../lib/test-string_helpers.c", i32 322, i32 10}
!125 = !{ptr @.str.58, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../lib/test-string_helpers.c", i32 331, i32 10}
!127 = !{ptr @.str.59, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../lib/test-string_helpers.c", i32 334, i32 10}
!129 = !{ptr @.str.60, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../lib/test-string_helpers.c", i32 343, i32 10}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../lib/test-string_helpers.c", i32 346, i32 10}
!133 = !{ptr @escape1, !134, !"escape1", i1 false, i1 false}
!134 = !{!"../lib/test-string_helpers.c", i32 224, i32 35}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../lib/test-string_helpers.c", i32 523, i32 2}
!137 = !{ptr @.str.64, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../lib/test-string_helpers.c", i32 524, i32 2}
!139 = !{ptr @.str.65, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../lib/test-string_helpers.c", i32 525, i32 2}
!141 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @.str.67, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../lib/test-string_helpers.c", i32 528, i32 2}
!144 = !{ptr @.str.68, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @.str.69, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../lib/test-string_helpers.c", i32 529, i32 2}
!147 = !{ptr @.str.70, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.71, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../lib/test-string_helpers.c", i32 530, i32 2}
!150 = !{ptr @.str.72, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.73, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../lib/test-string_helpers.c", i32 533, i32 2}
!153 = !{ptr @.str.74, !152, !"<string literal>", i1 false, i1 false}
!154 = !{ptr @.str.75, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../lib/test-string_helpers.c", i32 536, i32 2}
!156 = !{ptr @.str.76, !155, !"<string literal>", i1 false, i1 false}
!157 = !{ptr @.str.77, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../lib/test-string_helpers.c", i32 513, i32 29}
!159 = !{ptr @.str.78, !160, !"<string literal>", i1 false, i1 false}
!160 = !{!"../lib/test-string_helpers.c", i32 516, i32 29}
!161 = !{ptr @.str.79, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../lib/test-string_helpers.c", i32 497, i32 2}
!163 = !{ptr @.str.80, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @test_string_get_size_check._entry, !162, !"_entry", i1 false, i1 false}
!165 = !{ptr @test_string_get_size_check._entry_ptr, !162, !"_entry_ptr", i1 false, i1 false}
!166 = !{ptr @.str.82, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../lib/test-string_helpers.c", i32 498, i32 2}
!168 = !{ptr @test_string_get_size_check._entry.81, !167, !"_entry", i1 false, i1 false}
!169 = !{ptr @test_string_get_size_check._entry_ptr.83, !167, !"_entry_ptr", i1 false, i1 false}
!170 = !{ptr @.str.85, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../lib/test-string_helpers.c", i32 500, i32 2}
!172 = !{ptr @test_string_get_size_check._entry.84, !171, !"_entry", i1 false, i1 false}
!173 = !{ptr @test_string_get_size_check._entry_ptr.86, !171, !"_entry_ptr", i1 false, i1 false}
!174 = !{ptr @.str.87, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../lib/test-string_helpers.c", i32 555, i32 4}
!176 = !{ptr @.str.88, !175, !"<string literal>", i1 false, i1 false}
!177 = !{ptr @test_string_upper_lower._entry, !175, !"_entry", i1 false, i1 false}
!178 = !{ptr @test_string_upper_lower._entry_ptr, !175, !"_entry_ptr", i1 false, i1 false}
!179 = !{ptr @.str.90, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../lib/test-string_helpers.c", i32 573, i32 4}
!181 = !{ptr @test_string_upper_lower._entry.89, !180, !"_entry", i1 false, i1 false}
!182 = !{ptr @test_string_upper_lower._entry_ptr.91, !180, !"_entry_ptr", i1 false, i1 false}
!183 = !{ptr @.str.92, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../lib/test-string_helpers.c", i32 363, i32 9}
!185 = !{ptr @.str.93, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../lib/test-string_helpers.c", i32 364, i32 10}
!187 = !{ptr @.str.94, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../lib/test-string_helpers.c", i32 367, i32 9}
!189 = !{ptr @strings_upper, !190, !"strings_upper", i1 false, i1 false}
!190 = !{!"../lib/test-string_helpers.c", i32 361, i32 33}
!191 = !{ptr @strings_lower, !192, !"strings_lower", i1 false, i1 false}
!192 = !{!"../lib/test-string_helpers.c", i32 372, i32 33}
!193 = !{i32 1, !"wchar_size", i32 2}
!194 = !{i32 1, !"min_enum_size", i32 4}
!195 = !{i32 8, !"branch-target-enforcement", i32 0}
!196 = !{i32 8, !"sign-return-address", i32 0}
!197 = !{i32 8, !"sign-return-address-all", i32 0}
!198 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!199 = !{i32 7, !"uwtable", i32 1}
!200 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
