; ModuleID = '/llk/IR_all_yes/lib/test_bitmap.c_pt.bc'
source_filename = "../lib/test_bitmap.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.test_bitmap_parselist = type { i32, ptr, ptr, i32, i32 }
%struct.test_bitmap_cut = type { i32, i32, i32, [4 x i32], [4 x i32] }
%struct.test_bitmap_print = type { ptr, i32, ptr, ptr }

@__check_eq_u32_array._entry = internal constant %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 114, ptr null, ptr null }, align 1
@.str = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\014test_bitmap: [%s:%u] array length differ: expected %u, got %u\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__check_eq_u32_array\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"lib/test_bitmap.c\00", [46 x i8] zeroinitializer }, align 32
@__check_eq_u32_array._entry_ptr = internal global ptr @__check_eq_u32_array._entry, section ".printk_index", align 4
@__check_eq_u32_array._entry.3 = internal constant %struct.pi_entry { ptr @.str.4, ptr @.str.1, ptr @.str.2, i32 119, ptr null, ptr null }, align 1
@.str.4 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\014test_bitmap: [%s:%u] array contents differ\0A\00", [50 x i8] zeroinitializer }, align 32
@__check_eq_u32_array._entry_ptr.5 = internal global ptr @__check_eq_u32_array._entry.3, section ".printk_index", align 4
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"  exp:  \00", [23 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"  got:  \00", [23 x i8] zeroinitializer }, align 32
@test_bitmap_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"\016test_bitmap: unloaded.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_bitmap_exit\00", [47 x i8] zeroinitializer }, align 32
@test_bitmap_exit._entry_ptr = internal global ptr @test_bitmap_exit._entry, section ".printk_index", align 4
@__initcall__kmod_test_bitmap__178_864_test_bitmap_init6 = internal global ptr @test_bitmap_init, section ".initcall6.init", align 4
@__exitcall_test_bitmap_exit = internal global ptr @test_bitmap_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author179 = internal constant [66 x i8] c"test_bitmap.author=david decotigny <david.decotigny@googlers.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file180 = internal constant [33 x i8] c"test_bitmap.file=lib/test_bitmap\00", section ".modinfo", align 1
@__UNIQUE_ID_license181 = internal constant [24 x i8] c"test_bitmap.license=GPL\00", section ".modinfo", align 1
@test_bitmap_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 864, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"\016test_bitmap: loaded.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"test_bitmap_init\00", [47 x i8] zeroinitializer }, align 32
@test_bitmap_init._entry_ptr = internal global ptr @test_bitmap_init._entry, section ".printk_index", align 4
@total_tests = internal unnamed_addr global i32 0, section ".init.data", align 4
@failed_tests = internal unnamed_addr global i32 0, section ".init.data", align 4
@.str.13 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0-22\00", [27 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0-1023\00", [25 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"9-1023\00", [25 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"64-1023\00", [24 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"64-78,98-1023\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"128-1023\00", [23 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@pbl_buffer = internal global [4096 x i8] zeroinitializer, section ".init.data", align 1
@.str.20 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%*pbl\00", [26 x i8] zeroinitializer }, align 32
@__check_eq_pbl._entry = internal constant %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.2, i32 96, ptr null, ptr null }, align 1
@.str.21 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\014test_bitmap: [%s:%u] expected \22%s\22, got \22%s\22\0A\00", [48 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__check_eq_pbl\00", [17 x i8] zeroinitializer }, align 32
@__check_eq_pbl._entry_ptr = internal global ptr @__check_eq_pbl._entry, section ".printk_index", align 4
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0-8\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0-63\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0-63,79-97\00", [21 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0-127\00", [26 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0-18\00", [27 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0-108\00", [26 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0-108,128-1023\00", [17 x i8] zeroinitializer }, align 32
@exp2 = internal constant [4 x i32] [i32 286331153, i32 858993459, i32 2004318071, i32 -1], section ".init.rodata", align 4
@exp2_to_exp3_mask = internal constant [2 x i32] [i32 2105646, i32 8388610], section ".init.rodata", align 4
@exp3_0_1 = internal constant [2 x i32] [i32 288436535, i32 867382067], section ".init.rodata", align 4
@exp3_1_0 = internal constant [2 x i32] [i32 2002212689, i32 -8388609], section ".init.rodata", align 4
@__check_eq_bitmap._entry = internal constant %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.2, i32 81, ptr null, ptr null }, align 1
@.str.30 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014test_bitmap: [%s:%u] bitmaps contents differ: expected \22%*pbl\22, got \22%*pbl\22\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__check_eq_bitmap\00", [46 x i8] zeroinitializer }, align 32
@__check_eq_bitmap._entry_ptr = internal global ptr @__check_eq_bitmap._entry, section ".printk_index", align 4
@exp1 = internal constant [30 x i32] [i32 1, i32 0, i32 2, i32 0, i32 65535, i32 0, i32 -65536, i32 0, i32 1431655765, i32 0, i32 -1431655766, i32 0, i32 286331153, i32 0, i32 572662306, i32 0, i32 -1, i32 0, i32 -2, i32 0, i32 286331153, i32 858993459, i32 2004318071, i32 -1, i32 0, i32 0, i32 32768, i32 0, i32 -2147483648, i32 0], section ".init.rodata", align 4
@test_bitmap_arr32._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.2, i32 580, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"\013test_bitmap: bitmap_copy_arr32(nbits == %d: tail is not safely cleared: %d\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_bitmap_arr32\00", [46 x i8] zeroinitializer }, align 32
@test_bitmap_arr32._entry_ptr = internal global ptr @test_bitmap_arr32._entry, section ".printk_index", align 4
@__check_eq_uint._entry = internal constant %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 66, ptr null, ptr null }, align 1
@.str.34 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013test_bitmap: [%s:%u] expected %u, got %u\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__check_eq_uint\00", [16 x i8] zeroinitializer }, align 32
@__check_eq_uint._entry_ptr = internal global ptr @__check_eq_uint._entry, section ".printk_index", align 4
@parse_tests = internal unnamed_addr constant [21 x %struct.test_bitmap_parselist] [%struct.test_bitmap_parselist { i32 0, ptr @.str.19, ptr @parse_test, i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.44, ptr @parse_test, i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.45, ptr @parse_test, i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.46, ptr @parse_test, i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.47, ptr getelementptr (i8, ptr @parse_test, i64 8), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.48, ptr getelementptr (i8, ptr @parse_test, i64 16), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.49, ptr getelementptr (i8, ptr @parse_test, i64 24), i32 33, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.50, ptr getelementptr (i8, ptr @parse_test, i64 16), i32 96, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.51, ptr @parse_test2, i32 96, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.52, ptr getelementptr (i8, ptr @parse_test2, i64 16), i32 128, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.53, ptr getelementptr (i8, ptr @parse_test2, i64 32), i32 124, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.53, ptr getelementptr (i8, ptr @parse_test2, i64 32), i32 124, i32 2 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.54, ptr getelementptr (i8, ptr @parse_test2, i64 32), i32 124, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.55, ptr getelementptr (i8, ptr @parse_test2, i64 32), i32 124, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.56, ptr getelementptr (i8, ptr @parse_test2, i64 32), i32 124, i32 0 }, %struct.test_bitmap_parselist { i32 -22, ptr @.str.57, ptr null, i32 128, i32 0 }, %struct.test_bitmap_parselist { i32 -75, ptr @.str.58, ptr null, i32 33, i32 0 }, %struct.test_bitmap_parselist { i32 -75, ptr @.str.59, ptr null, i32 128, i32 0 }, %struct.test_bitmap_parselist { i32 -75, ptr @.str.53, ptr null, i32 90, i32 0 }, %struct.test_bitmap_parselist { i32 -75, ptr @.str.60, ptr null, i32 95, i32 0 }, %struct.test_bitmap_parselist { i32 -75, ptr @.str.53, ptr null, i32 100, i32 0 }], section ".init.rodata", align 4
@test_bitmap_parse._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.2, i32 542, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"\013test_bitmap: parse: %d: input is %s, errno is %d, expected %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"test_bitmap_parse\00", [46 x i8] zeroinitializer }, align 32
@test_bitmap_parse._entry_ptr = internal global ptr @test_bitmap_parse._entry, section ".printk_index", align 4
@test_bitmap_parse._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.37, ptr @.str.2, i32 550, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"\013test_bitmap: parse: %d: input is %s, result is 0x%lx, expected 0x%lx\0A\00", [56 x i8] zeroinitializer }, align 32
@test_bitmap_parse._entry_ptr.40 = internal global ptr @test_bitmap_parse._entry.38, section ".printk_index", align 4
@test_bitmap_parse._entry.41 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.42, ptr @.str.37, ptr @.str.2, i32 556, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"\013test_bitmap: parse: %d: input is '%s' OK, Time: %llu\0A\00", [40 x i8] zeroinitializer }, align 32
@test_bitmap_parse._entry_ptr.43 = internal global ptr @test_bitmap_parse._entry.41, section ".printk_index", align 4
@parse_test = internal constant [8 x i32] [i32 0, i32 0, i32 1, i32 0, i32 -559038737, i32 0, i32 0, i32 1], section ".init.rodata", align 4
@.str.44 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c" \00", [30 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"0\00", [30 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"0\0A\00", [29 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"1\00", [30 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"deadbeef\00", [23 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1,0\00", [28 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"deadbeef,\0A,0,1\00", [17 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"deadbeef,1,0\00", [19 x i8] zeroinitializer }, align 32
@parse_test2 = internal constant [12 x i32] [i32 0, i32 1, i32 -559038737, i32 0, i32 0, i32 1, i32 -559038737, i32 -1163005939, i32 0, i32 1, i32 -559038737, i32 195948557], section ".init.rodata", align 4
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"baadf00d,deadbeef,1,0\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"badf00d,deadbeef,1,0\00", [43 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"  badf00d,deadbeef,1,0  \00", [39 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c" , badf00d,deadbeef,1,0 , \00", [37 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c" , badf00d, ,, ,,deadbeef,1,0 , \00", [63 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"goodfood,deadbeef,1,0\00", [42 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"3,0\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"123badf00d,deadbeef,1,0\00", [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fbadf00d,deadbeef,1,0\00", [42 x i8] zeroinitializer }, align 32
@parselist_tests = internal unnamed_addr constant [69 x %struct.test_bitmap_parselist] [%struct.test_bitmap_parselist { i32 0, ptr @.str.45, ptr @exp1, i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.47, ptr getelementptr (i8, ptr @exp1, i64 8), i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.69, ptr getelementptr (i8, ptr @exp1, i64 16), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.70, ptr getelementptr (i8, ptr @exp1, i64 24), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.71, ptr getelementptr (i8, ptr @exp1, i64 32), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.72, ptr getelementptr (i8, ptr @exp1, i64 40), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.73, ptr getelementptr (i8, ptr @exp1, i64 48), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.74, ptr getelementptr (i8, ptr @exp1, i64 56), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.75, ptr getelementptr (i8, ptr @exp1, i64 64), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.76, ptr getelementptr (i8, ptr @exp1, i64 72), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.77, ptr getelementptr (i8, ptr @exp1, i64 80), i32 64, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.78, ptr getelementptr (i8, ptr @exp1, i64 88), i32 64, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.79, ptr getelementptr (i8, ptr @exp1, i64 88), i32 64, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.80, ptr @exp2, i32 128, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.81, ptr null, i32 2048, i32 1 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.19, ptr getelementptr (i8, ptr @exp1, i64 96), i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.82, ptr getelementptr (i8, ptr @exp1, i64 96), i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.83, ptr getelementptr (i8, ptr @exp1, i64 96), i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.84, ptr getelementptr (i8, ptr @exp1, i64 96), i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.85, ptr getelementptr (i8, ptr @exp1, i64 96), i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.86, ptr @exp1, i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.87, ptr getelementptr (i8, ptr @exp1, i64 8), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.88, ptr getelementptr (i8, ptr @exp1, i64 104), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.89, ptr getelementptr (i8, ptr @exp1, i64 112), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.90, ptr getelementptr (i8, ptr @exp1, i64 96), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.91, ptr @exp1, i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.92, ptr @exp1, i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.93, ptr @exp1, i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.94, ptr getelementptr (i8, ptr @exp1, i64 8), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.95, ptr getelementptr (i8, ptr @exp1, i64 16), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.96, ptr getelementptr (i8, ptr @exp1, i64 104), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.97, ptr getelementptr (i8, ptr @exp1, i64 104), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.98, ptr getelementptr (i8, ptr @exp1, i64 104), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.99, ptr getelementptr (i8, ptr @exp1, i64 24), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.100, ptr getelementptr (i8, ptr @exp1, i64 112), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.101, ptr getelementptr (i8, ptr @exp1, i64 112), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.102, ptr @exp1, i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.103, ptr @exp1, i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.104, ptr getelementptr (i8, ptr @exp1, i64 16), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.105, ptr getelementptr (i8, ptr @exp1, i64 104), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.106, ptr getelementptr (i8, ptr @exp1, i64 104), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.107, ptr getelementptr (i8, ptr @exp1, i64 24), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.108, ptr getelementptr (i8, ptr @exp1, i64 112), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.109, ptr getelementptr (i8, ptr @exp1, i64 64), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.110, ptr getelementptr (i8, ptr @exp1, i64 64), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.111, ptr getelementptr (i8, ptr @exp1, i64 72), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.112, ptr getelementptr (i8, ptr @exp1, i64 64), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.113, ptr getelementptr (i8, ptr @exp1, i64 64), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.114, ptr getelementptr (i8, ptr @exp1, i64 32), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 0, ptr @.str.115, ptr getelementptr (i8, ptr @exp1, i64 32), i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 -22, ptr @.str.116, ptr null, i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 -22, ptr @.str.117, ptr null, i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 -22, ptr @.str.118, ptr null, i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 -22, ptr @.str.119, ptr null, i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 -22, ptr @.str.120, ptr null, i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 -34, ptr @.str.121, ptr null, i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 -34, ptr @.str.122, ptr null, i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 -22, ptr @.str.123, ptr null, i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 -22, ptr @.str.124, ptr null, i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 -22, ptr @.str.125, ptr null, i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 -22, ptr @.str.126, ptr null, i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 -22, ptr @.str.127, ptr null, i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 -22, ptr @.str.128, ptr null, i32 32, i32 0 }, %struct.test_bitmap_parselist { i32 -75, ptr @.str.129, ptr null, i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 -22, ptr @.str.130, ptr null, i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 -22, ptr @.str.131, ptr null, i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 -22, ptr @.str.132, ptr null, i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 -22, ptr @.str.133, ptr null, i32 8, i32 0 }, %struct.test_bitmap_parselist { i32 -22, ptr @.str.134, ptr null, i32 8, i32 0 }], section ".init.rodata", align 4
@test_bitmap_parselist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.62, ptr @.str.2, i32 429, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"\013test_bitmap: parselist: %d: input is %s, errno is %d, expected %d\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_bitmap_parselist\00", [42 x i8] zeroinitializer }, align 32
@test_bitmap_parselist._entry_ptr = internal global ptr @test_bitmap_parselist._entry, section ".printk_index", align 4
@test_bitmap_parselist._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.62, ptr @.str.2, i32 437, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [76 x i8], [52 x i8] } { [76 x i8] c"\013test_bitmap: parselist: %d: input is %s, result is 0x%lx, expected 0x%lx\0A\00", [52 x i8] zeroinitializer }, align 32
@test_bitmap_parselist._entry_ptr.65 = internal global ptr @test_bitmap_parselist._entry.63, section ".printk_index", align 4
@test_bitmap_parselist._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.62, ptr @.str.2, i32 443, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\013test_bitmap: parselist: %d: input is '%s' OK, Time: %llu\0A\00", [36 x i8] zeroinitializer }, align 32
@test_bitmap_parselist._entry_ptr.68 = internal global ptr @test_bitmap_parselist._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0-15\00", [27 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"16-31\00", [26 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0-31:1/2\00", [23 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"1-31:1/2\00", [23 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0-31:1/4\00", [23 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"1-31:1/4\00", [23 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0-31:4/4\00", [23 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"1-31:4/4\00", [23 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0-31:1/4,32-63:2/4\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"0-31:3/4,32-63:4/4\00", [45 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"  ,,  0-31:3/4  ,, 32-63:4/4  ,,  \00", [61 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"0-31:1/4,32-63:2/4,64-95:3/4,96-127:4/4\00", [56 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"0-2047:128/256\00", [17 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"\0A\00", [30 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c",,  ,,  , ,  ,\00", [17 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c" ,  ,,  , ,   \00", [17 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c" ,  ,,  , ,   \0A\00", [16 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0-0\00", [28 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"1-1\00", [28 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"15-15\00", [26 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"31-31\00", [26 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0-0:0/1\00", [24 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0-0:1/1\00", [24 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0-0:1/31\00", [23 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0-0:31/31\00", [22 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"1-1:1/1\00", [24 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"0-15:16/31\00", [21 x i8] zeroinitializer }, align 32
@.str.96 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"15-15:1/2\00", [22 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"15-15:31/31\00", [20 x i8] zeroinitializer }, align 32
@.str.98 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"15-31:1/31\00", [21 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"16-31:16/31\00", [20 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"31-31:31/31\00", [20 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"N-N\00", [28 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0-0:1/N\00", [24 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0-0:N/N\00", [24 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0-15:16/N\00", [22 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"15-15:N/N\00", [22 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"15-N:1/N\00", [23 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"16-N:16/N\00", [22 x i8] zeroinitializer }, align 32
@.str.108 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"N-N:N/N\00", [24 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"0-N:1/3,1-N:1/3,2-N:1/3\00", [40 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"0-31:1/3,1-31:1/3,2-31:1/3\00", [37 x i8] zeroinitializer }, align 32
@.str.111 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"1-10:8/12,8-31:24/29,0-31:0/3\00", [34 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"all\00", [28 x i8] zeroinitializer }, align 32
@.str.113 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"0, 1, all,  \00", [19 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"all:1/2\00", [24 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ALL:1/2\00", [24 x i8] zeroinitializer }, align 32
@.str.116 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"al\00", [29 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"alll\00", [27 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-1\00", [29 x i8] zeroinitializer }, align 32
@.str.119 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"-0\00", [29 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"10-1\00", [27 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"8-8\00", [28 x i8] zeroinitializer }, align 32
@.str.122 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0-31\00", [27 x i8] zeroinitializer }, align 32
@.str.123 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0-31:\00", [26 x i8] zeroinitializer }, align 32
@.str.124 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"0-31:0\00", [25 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"0-31:0/\00", [24 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0-31:0/0\00", [23 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0-31:1/0\00", [23 x i8] zeroinitializer }, align 32
@.str.128 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"0-31:10/1\00", [22 x i8] zeroinitializer }, align 32
@.str.129 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"0-98765432123456789:10/1\00", [39 x i8] zeroinitializer }, align 32
@.str.130 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"a-31\00", [27 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"0-a1\00", [27 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"a-31:10/1\00", [22 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"0-31:a/1\00", [23 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"0-\0A\00", [28 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"0-%ld\00", [26 x i8] zeroinitializer }, align 32
@test_bitmap_printlist._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.2, i32 470, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013test_bitmap: bitmap_print_to_pagebuf: result is %d, expected %d\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"test_bitmap_printlist\00", [42 x i8] zeroinitializer }, align 32
@test_bitmap_printlist._entry_ptr = internal global ptr @test_bitmap_printlist._entry, section ".printk_index", align 4
@test_bitmap_printlist._entry.138 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.139, ptr @.str.137, ptr @.str.2, i32 475, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013test_bitmap: bitmap_print_to_pagebuf: result is %s, expected %s\0A\00", [61 x i8] zeroinitializer }, align 32
@test_bitmap_printlist._entry_ptr.140 = internal global ptr @test_bitmap_printlist._entry.138, section ".printk_index", align 4
@test_bitmap_printlist._entry.141 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.142, ptr @.str.137, ptr @.str.2, i32 479, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"\013test_bitmap: bitmap_print_to_pagebuf: input is '%s', Time: %llu\0A\00", [61 x i8] zeroinitializer }, align 32
@test_bitmap_printlist._entry_ptr.143 = internal global ptr @test_bitmap_printlist._entry.141, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@test_mem_optimisations._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.144, ptr @.str.145, ptr @.str.2, i32 602, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"set not equal %d %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.145 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"test_mem_optimisations\00", [41 x i8] zeroinitializer }, align 32
@test_mem_optimisations._entry_ptr = internal global ptr @test_mem_optimisations._entry, section ".printk_index", align 4
@test_mem_optimisations._entry.146 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.147, ptr @.str.145, ptr @.str.2, i32 606, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.147 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"set not __equal %d %d\0A\00", [41 x i8] zeroinitializer }, align 32
@test_mem_optimisations._entry_ptr.148 = internal global ptr @test_mem_optimisations._entry.146, section ".printk_index", align 4
@test_mem_optimisations._entry.149 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.145, ptr @.str.2, i32 613, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"clear not equal %d %d\0A\00", [41 x i8] zeroinitializer }, align 32
@test_mem_optimisations._entry_ptr.151 = internal global ptr @test_mem_optimisations._entry.149, section ".printk_index", align 4
@test_mem_optimisations._entry.152 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.153, ptr @.str.145, ptr @.str.2, i32 618, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.153 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"clear not __equal %d %d\0A\00", [39 x i8] zeroinitializer }, align 32
@test_mem_optimisations._entry_ptr.154 = internal global ptr @test_mem_optimisations._entry.152, section ".printk_index", align 4
@clump_exp = internal unnamed_addr constant [8 x i8] c"\01\02\0088\0F\FF\05", section ".init.rodata", align 1
@__check_eq_clump8._entry = internal constant %struct.pi_entry { ptr @.str.155, ptr @.str.156, ptr @.str.2, i32 140, ptr null, ptr null }, align 1
@.str.155 = internal constant { [90 x i8], [38 x i8] } { [90 x i8] c"\014test_bitmap: [%s:%u] bit offset for clump out-of-bounds: expected less than %u, got %u\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.156 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__check_eq_clump8\00", [46 x i8] zeroinitializer }, align 32
@__check_eq_clump8._entry_ptr = internal global ptr @__check_eq_clump8._entry, section ".printk_index", align 4
@__check_eq_clump8._entry.157 = internal constant %struct.pi_entry { ptr @.str.158, ptr @.str.156, ptr @.str.2, i32 147, ptr null, ptr null }, align 1
@.str.158 = internal constant { [111 x i8], [49 x i8] } { [111 x i8] c"\014test_bitmap: [%s:%u] bit offset for zero clump: expected nonzero clump, got bit offset %u with clump value 0\00", [49 x i8] zeroinitializer }, align 32
@__check_eq_clump8._entry_ptr.159 = internal global ptr @__check_eq_clump8._entry.157, section ".printk_index", align 4
@__check_eq_clump8._entry.160 = internal constant %struct.pi_entry { ptr @.str.161, ptr @.str.156, ptr @.str.2, i32 153, ptr null, ptr null }, align 1
@.str.161 = internal constant { [79 x i8], [49 x i8] } { [79 x i8] c"\014test_bitmap: [%s:%u] expected clump value of 0x%lX, got clump value of 0x%lX\00", [49 x i8] zeroinitializer }, align 32
@__check_eq_clump8._entry_ptr.162 = internal global ptr @__check_eq_clump8._entry.160, section ".printk_index", align 4
@test_cut = internal global { [16 x %struct.test_bitmap_cut], [160 x i8] } { [16 x %struct.test_bitmap_cut] [%struct.test_bitmap_cut { i32 0, i32 0, i32 8, [4 x i32] [i32 10, i32 0, i32 0, i32 0], [4 x i32] [i32 10, i32 0, i32 0, i32 0] }, %struct.test_bitmap_cut { i32 0, i32 0, i32 32, [4 x i32] [i32 -623190355, i32 0, i32 0, i32 0], [4 x i32] [i32 -623190355, i32 0, i32 0, i32 0] }, %struct.test_bitmap_cut { i32 0, i32 3, i32 8, [4 x i32] [i32 170, i32 0, i32 0, i32 0], [4 x i32] [i32 21, i32 0, i32 0, i32 0] }, %struct.test_bitmap_cut { i32 3, i32 3, i32 8, [4 x i32] [i32 170, i32 0, i32 0, i32 0], [4 x i32] [i32 18, i32 0, i32 0, i32 0] }, %struct.test_bitmap_cut { i32 0, i32 1, i32 32, [4 x i32] [i32 -1515870811, i32 0, i32 0, i32 0], [4 x i32] [i32 1389548242, i32 0, i32 0, i32 0] }, %struct.test_bitmap_cut { i32 0, i32 8, i32 32, [4 x i32] [i32 -559038242, i32 0, i32 0, i32 0], [4 x i32] [i32 14593472, i32 0, i32 0, i32 0] }, %struct.test_bitmap_cut { i32 1, i32 1, i32 32, [4 x i32] [i32 1515870810, i32 0, i32 0, i32 0], [4 x i32] [i32 757935404, i32 0, i32 0, i32 0] }, %struct.test_bitmap_cut { i32 0, i32 15, i32 32, [4 x i32] [i32 -1515870811, i32 0, i32 0, i32 0], [4 x i32] [i32 84811, i32 0, i32 0, i32 0] }, %struct.test_bitmap_cut { i32 0, i32 16, i32 32, [4 x i32] [i32 -1515870811, i32 0, i32 0, i32 0], [4 x i32] [i32 42405, i32 0, i32 0, i32 0] }, %struct.test_bitmap_cut { i32 15, i32 15, i32 32, [4 x i32] [i32 -1515870811, i32 0, i32 0, i32 0], [4 x i32] [i32 75173, i32 0, i32 0, i32 0] }, %struct.test_bitmap_cut { i32 15, i32 16, i32 32, [4 x i32] [i32 -1515870811, i32 0, i32 0, i32 0], [4 x i32] [i32 42405, i32 0, i32 0, i32 0] }, %struct.test_bitmap_cut { i32 16, i32 15, i32 32, [4 x i32] [i32 -1515870811, i32 0, i32 0, i32 0], [4 x i32] [i32 107941, i32 0, i32 0, i32 0] }, %struct.test_bitmap_cut { i32 32, i32 32, i32 32, [4 x i32] [i32 -1515870811, i32 -1515870811, i32 0, i32 0], [4 x i32] [i32 -1515870811, i32 -1515870811, i32 0, i32 0] }, %struct.test_bitmap_cut { i32 1, i32 31, i32 32, [4 x i32] [i32 -1515870811, i32 -1515870811, i32 0, i32 0], [4 x i32] [i32 1, i32 1, i32 0, i32 0] }, %struct.test_bitmap_cut { i32 0, i32 64, i32 65, [4 x i32] [i32 -1515870811, i32 1, i32 1, i32 1], [4 x i32] [i32 1, i32 0, i32 0, i32 0] }, %struct.test_bitmap_cut { i32 16, i32 65, i32 81, [4 x i32] [i32 65535, i32 1515870810, i32 1515870810, i32 1515870810], [4 x i32] [i32 757989375, i32 0, i32 0, i32 0] }], [160 x i8] zeroinitializer }, align 32
@test_print = internal unnamed_addr constant [2 x %struct.test_bitmap_print] [%struct.test_bitmap_print { ptr @small_bitmap, i32 64, ptr @small_mask, ptr @small_list }, %struct.test_bitmap_print { ptr @large_bitmap, i32 2560, ptr @large_mask, ptr @large_list }], section ".init.rodata", align 4
@print_buf = internal global [8192 x i8] zeroinitializer, section ".init.data", align 1
@small_bitmap = internal constant [2 x i32] [i32 286331153, i32 858993459], section ".init.rodata", align 4
@small_mask = internal constant [19 x i8] c"33333333,11111111\0A\00", section ".init.rodata", align 1
@small_list = internal constant [70 x i8] c"0,4,8,12,16,20,24,28,32-33,36-37,40-41,44-45,48-49,52-53,56-57,60-61\0A\00", section ".init.rodata", align 1
@large_bitmap = internal constant [80 x i32] [i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459, i32 286331153, i32 858993459], section ".init.rodata", align 4
@large_mask = internal constant [721 x i8] c"33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111,33333333,11111111\0A\00", section ".init.rodata", align 1
@large_list = internal constant [4392 x i8] c"0,4,8,12,16,20,24,28,32-33,36-37,40-41,44-45,48-49,52-53,56-57,60-61,64,68,72,76,80,84,88,92,96-97,100-101,104-105,108-109,112-113,116-117,120-121,124-125,128,132,136,140,144,148,152,156,160-161,164-165,168-169,172-173,176-177,180-181,184-185,188-189,192,196,200,204,208,212,216,220,224-225,228-229,232-233,236-237,240-241,244-245,248-249,252-253,256,260,264,268,272,276,280,284,288-289,292-293,296-297,300-301,304-305,308-309,312-313,316-317,320,324,328,332,336,340,344,348,352-353,356-357,360-361,364-365,368-369,372-373,376-377,380-381,384,388,392,396,400,404,408,412,416-417,420-421,424-425,428-429,432-433,436-437,440-441,444-445,448,452,456,460,464,468,472,476,480-481,484-485,488-489,492-493,496-497,500-501,504-505,508-509,512,516,520,524,528,532,536,540,544-545,548-549,552-553,556-557,560-561,564-565,568-569,572-573,576,580,584,588,592,596,600,604,608-609,612-613,616-617,620-621,624-625,628-629,632-633,636-637,640,644,648,652,656,660,664,668,672-673,676-677,680-681,684-685,688-689,692-693,696-697,700-701,704,708,712,716,720,724,728,732,736-737,740-741,744-745,748-749,752-753,756-757,760-761,764-765,768,772,776,780,784,788,792,796,800-801,804-805,808-809,812-813,816-817,820-821,824-825,828-829,832,836,840,844,848,852,856,860,864-865,868-869,872-873,876-877,880-881,884-885,888-889,892-893,896,900,904,908,912,916,920,924,928-929,932-933,936-937,940-941,944-945,948-949,952-953,956-957,960,964,968,972,976,980,984,988,992-993,996-997,1000-1001,1004-1005,1008-1009,1012-1013,1016-1017,1020-1021,1024,1028,1032,1036,1040,1044,1048,1052,1056-1057,1060-1061,1064-1065,1068-1069,1072-1073,1076-1077,1080-1081,1084-1085,1088,1092,1096,1100,1104,1108,1112,1116,1120-1121,1124-1125,1128-1129,1132-1133,1136-1137,1140-1141,1144-1145,1148-1149,1152,1156,1160,1164,1168,1172,1176,1180,1184-1185,1188-1189,1192-1193,1196-1197,1200-1201,1204-1205,1208-1209,1212-1213,1216,1220,1224,1228,1232,1236,1240,1244,1248-1249,1252-1253,1256-1257,1260-1261,1264-1265,1268-1269,1272-1273,1276-1277,1280,1284,1288,1292,1296,1300,1304,1308,1312-1313,1316-1317,1320-1321,1324-1325,1328-1329,1332-1333,1336-1337,1340-1341,1344,1348,1352,1356,1360,1364,1368,1372,1376-1377,1380-1381,1384-1385,1388-1389,1392-1393,1396-1397,1400-1401,1404-1405,1408,1412,1416,1420,1424,1428,1432,1436,1440-1441,1444-1445,1448-1449,1452-1453,1456-1457,1460-1461,1464-1465,1468-1469,1472,1476,1480,1484,1488,1492,1496,1500,1504-1505,1508-1509,1512-1513,1516-1517,1520-1521,1524-1525,1528-1529,1532-1533,1536,1540,1544,1548,1552,1556,1560,1564,1568-1569,1572-1573,1576-1577,1580-1581,1584-1585,1588-1589,1592-1593,1596-1597,1600,1604,1608,1612,1616,1620,1624,1628,1632-1633,1636-1637,1640-1641,1644-1645,1648-1649,1652-1653,1656-1657,1660-1661,1664,1668,1672,1676,1680,1684,1688,1692,1696-1697,1700-1701,1704-1705,1708-1709,1712-1713,1716-1717,1720-1721,1724-1725,1728,1732,1736,1740,1744,1748,1752,1756,1760-1761,1764-1765,1768-1769,1772-1773,1776-1777,1780-1781,1784-1785,1788-1789,1792,1796,1800,1804,1808,1812,1816,1820,1824-1825,1828-1829,1832-1833,1836-1837,1840-1841,1844-1845,1848-1849,1852-1853,1856,1860,1864,1868,1872,1876,1880,1884,1888-1889,1892-1893,1896-1897,1900-1901,1904-1905,1908-1909,1912-1913,1916-1917,1920,1924,1928,1932,1936,1940,1944,1948,1952-1953,1956-1957,1960-1961,1964-1965,1968-1969,1972-1973,1976-1977,1980-1981,1984,1988,1992,1996,2000,2004,2008,2012,2016-2017,2020-2021,2024-2025,2028-2029,2032-2033,2036-2037,2040-2041,2044-2045,2048,2052,2056,2060,2064,2068,2072,2076,2080-2081,2084-2085,2088-2089,2092-2093,2096-2097,2100-2101,2104-2105,2108-2109,2112,2116,2120,2124,2128,2132,2136,2140,2144-2145,2148-2149,2152-2153,2156-2157,2160-2161,2164-2165,2168-2169,2172-2173,2176,2180,2184,2188,2192,2196,2200,2204,2208-2209,2212-2213,2216-2217,2220-2221,2224-2225,2228-2229,2232-2233,2236-2237,2240,2244,2248,2252,2256,2260,2264,2268,2272-2273,2276-2277,2280-2281,2284-2285,2288-2289,2292-2293,2296-2297,2300-2301,2304,2308,2312,2316,2320,2324,2328,2332,2336-2337,2340-2341,2344-2345,2348-2349,2352-2353,2356-2357,2360-2361,2364-2365,2368,2372,2376,2380,2384,2388,2392,2396,2400-2401,2404-2405,2408-2409,2412-2413,2416-2417,2420-2421,2424-2425,2428-2429,2432,2436,2440,2444,2448,2452,2456,2460,2464-2465,2468-2469,2472-2473,2476-2477,2480-2481,2484-2485,2488-2489,2492-2493,2496,2500,2504,2508,2512,2516,2520,2524,2528-2529,2532-2533,2536-2537,2540-2541,2544-2545,2548-2549,2552-2553,2556-2557\0A\00", section ".init.rodata", align 1
@__check_eq_str._entry = internal constant %struct.pi_entry { ptr @.str.163, ptr @.str.164, ptr @.str.2, i32 169, ptr null, ptr null }, align 1
@.str.163 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"\013test_bitmap: [%s:%u] expected %s, got %s\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.164 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__check_eq_str\00", [17 x i8] zeroinitializer }, align 32
@__check_eq_str._entry_ptr = internal global ptr @__check_eq_str._entry, section ".printk_index", align 4
@kstm_report._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.165, ptr @.str.166, ptr @.str.167, i32 30, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.165 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"\016test_bitmap: skipped %u tests\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.166 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"kstm_report\00", [20 x i8] zeroinitializer }, align 32
@.str.167 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"lib/../tools/testing/selftests/kselftest_module.h\00", [46 x i8] zeroinitializer }, align 32
@kstm_report._entry_ptr = internal global ptr @kstm_report._entry, section ".printk_index", align 4
@kstm_report._entry.168 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.169, ptr @.str.166, ptr @.str.167, i32 31, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.169 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\016test_bitmap: remaining %u tests passed\0A\00", [54 x i8] zeroinitializer }, align 32
@kstm_report._entry_ptr.170 = internal global ptr @kstm_report._entry.168, section ".printk_index", align 4
@kstm_report._entry.171 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.172, ptr @.str.166, ptr @.str.167, i32 33, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.172 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"\016test_bitmap: all %u tests passed\0A\00", [60 x i8] zeroinitializer }, align 32
@kstm_report._entry_ptr.173 = internal global ptr @kstm_report._entry.171, section ".printk_index", align 4
@kstm_report._entry.174 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.175, ptr @.str.166, ptr @.str.167, i32 35, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.175 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"\014test_bitmap: failed %u out of %u tests\0A\00", [54 x i8] zeroinitializer }, align 32
@kstm_report._entry_ptr.176 = internal global ptr @kstm_report._entry.174, section ".printk_index", align 4
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 112, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 119, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 120, i32 18 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 120, i32 32 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 122, i32 32 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 864, i32 1 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 200, i32 2 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 201, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 205, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 208, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 212, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 215, i32 2 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 219, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 92, i32 43 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 94, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 234, i32 2 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 237, i32 2 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 241, i32 2 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 244, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 262, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 271, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 283, i32 2 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 79, i32 3 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 578, i32 4 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 65, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 541, i32 4 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 548, i32 4 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 555, i32 4 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 500, i32 6 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 501, i32 6 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 502, i32 6 }
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 503, i32 6 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 504, i32 6 }
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 505, i32 6 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 506, i32 6 }
@___asan_gen_.332 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 508, i32 6 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 509, i32 6 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 510, i32 6 }
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 512, i32 6 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 513, i32 6 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 514, i32 6 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 516, i32 15 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 517, i32 15 }
@___asan_gen_.356 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 518, i32 15 }
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 520, i32 15 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 428, i32 4 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 435, i32 4 }
@___asan_gen_.380 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 442, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 333, i32 6 }
@___asan_gen_.386 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 334, i32 6 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 335, i32 6 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 336, i32 6 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 337, i32 6 }
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 338, i32 6 }
@___asan_gen_.401 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 339, i32 6 }
@___asan_gen_.404 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 340, i32 6 }
@___asan_gen_.407 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 341, i32 6 }
@___asan_gen_.410 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 342, i32 6 }
@___asan_gen_.413 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 343, i32 6 }
@___asan_gen_.416 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 345, i32 6 }
@___asan_gen_.419 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 347, i32 6 }
@___asan_gen_.422 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 350, i32 6 }
@___asan_gen_.425 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 351, i32 6 }
@___asan_gen_.428 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 352, i32 6 }
@___asan_gen_.431 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 353, i32 6 }
@___asan_gen_.434 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 355, i32 6 }
@___asan_gen_.437 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 356, i32 6 }
@___asan_gen_.440 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 357, i32 6 }
@___asan_gen_.443 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 358, i32 6 }
@___asan_gen_.446 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 360, i32 6 }
@___asan_gen_.449 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 361, i32 6 }
@___asan_gen_.452 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 362, i32 6 }
@___asan_gen_.455 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 363, i32 6 }
@___asan_gen_.458 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 364, i32 6 }
@___asan_gen_.461 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 365, i32 6 }
@___asan_gen_.464 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 366, i32 6 }
@___asan_gen_.467 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 367, i32 6 }
@___asan_gen_.470 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 368, i32 6 }
@___asan_gen_.473 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 369, i32 6 }
@___asan_gen_.476 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 370, i32 6 }
@___asan_gen_.479 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 372, i32 6 }
@___asan_gen_.482 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 373, i32 6 }
@___asan_gen_.485 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 374, i32 6 }
@___asan_gen_.488 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 375, i32 6 }
@___asan_gen_.491 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 376, i32 6 }
@___asan_gen_.494 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 377, i32 6 }
@___asan_gen_.497 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 378, i32 6 }
@___asan_gen_.500 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 379, i32 6 }
@___asan_gen_.503 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 381, i32 6 }
@___asan_gen_.506 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 382, i32 6 }
@___asan_gen_.509 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 383, i32 6 }
@___asan_gen_.512 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 385, i32 8 }
@___asan_gen_.515 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 386, i32 8 }
@___asan_gen_.518 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 387, i32 8 }
@___asan_gen_.521 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 388, i32 8 }
@___asan_gen_.524 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 389, i32 12 }
@___asan_gen_.527 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 390, i32 12 }
@___asan_gen_.530 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 392, i32 12 }
@___asan_gen_.533 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 393, i32 12 }
@___asan_gen_.536 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 394, i32 12 }
@___asan_gen_.539 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 395, i32 12 }
@___asan_gen_.542 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 396, i32 12 }
@___asan_gen_.545 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 397, i32 12 }
@___asan_gen_.548 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 398, i32 12 }
@___asan_gen_.551 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 399, i32 12 }
@___asan_gen_.554 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 400, i32 12 }
@___asan_gen_.557 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 401, i32 12 }
@___asan_gen_.560 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 402, i32 12 }
@___asan_gen_.563 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 403, i32 15 }
@___asan_gen_.566 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 405, i32 12 }
@___asan_gen_.569 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 406, i32 12 }
@___asan_gen_.572 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 407, i32 12 }
@___asan_gen_.575 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 408, i32 12 }
@___asan_gen_.578 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 409, i32 12 }
@___asan_gen_.581 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 461, i32 33 }
@___asan_gen_.590 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 470, i32 3 }
@___asan_gen_.596 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 475, i32 3 }
@___asan_gen_.602 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 479, i32 2 }
@___asan_gen_.611 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 602, i32 5 }
@___asan_gen_.617 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 606, i32 5 }
@___asan_gen_.623 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 613, i32 5 }
@___asan_gen_.629 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 617, i32 5 }
@___asan_gen_.635 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 139, i32 3 }
@___asan_gen_.638 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 146, i32 3 }
@___asan_gen_.641 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 152, i32 3 }
@___asan_gen_.642 = private unnamed_addr constant [9 x i8] c"test_cut\00", align 1
@___asan_gen_.644 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 666, i32 31 }
@___asan_gen_.649 = private constant [21 x i8] c"../lib/test_bitmap.c\00", align 1
@___asan_gen_.650 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.649, i32 169, i32 3 }
@___asan_gen_.662 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 30, i32 4 }
@___asan_gen_.668 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 31, i32 4 }
@___asan_gen_.674 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 33, i32 4 }
@___asan_gen_.675 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.678 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.679 = private unnamed_addr constant [53 x i8] c"../lib/../tools/testing/selftests/kselftest_module.h\00", align 1
@___asan_gen_.680 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.679, i32 35, i32 3 }
@llvm.compiler.used = appending global [213 x ptr] [ptr @__UNIQUE_ID_author179, ptr @__UNIQUE_ID_file180, ptr @__UNIQUE_ID_license181, ptr @__check_eq_bitmap._entry, ptr @__check_eq_bitmap._entry_ptr, ptr @__check_eq_clump8._entry, ptr @__check_eq_clump8._entry.157, ptr @__check_eq_clump8._entry.160, ptr @__check_eq_clump8._entry_ptr, ptr @__check_eq_clump8._entry_ptr.159, ptr @__check_eq_clump8._entry_ptr.162, ptr @__check_eq_pbl._entry, ptr @__check_eq_pbl._entry_ptr, ptr @__check_eq_str._entry, ptr @__check_eq_str._entry_ptr, ptr @__check_eq_u32_array, ptr @__check_eq_u32_array._entry, ptr @__check_eq_u32_array._entry.3, ptr @__check_eq_u32_array._entry_ptr, ptr @__check_eq_u32_array._entry_ptr.5, ptr @__check_eq_uint._entry, ptr @__check_eq_uint._entry_ptr, ptr @__exitcall_test_bitmap_exit, ptr @__initcall__kmod_test_bitmap__178_864_test_bitmap_init6, ptr @kstm_report._entry, ptr @kstm_report._entry.168, ptr @kstm_report._entry.171, ptr @kstm_report._entry.174, ptr @kstm_report._entry_ptr, ptr @kstm_report._entry_ptr.170, ptr @kstm_report._entry_ptr.173, ptr @kstm_report._entry_ptr.176, ptr @test_bitmap_arr32._entry, ptr @test_bitmap_arr32._entry_ptr, ptr @test_bitmap_exit, ptr @test_bitmap_exit._entry, ptr @test_bitmap_exit._entry_ptr, ptr @test_bitmap_init._entry, ptr @test_bitmap_init._entry_ptr, ptr @test_bitmap_parse._entry, ptr @test_bitmap_parse._entry.38, ptr @test_bitmap_parse._entry.41, ptr @test_bitmap_parse._entry_ptr, ptr @test_bitmap_parse._entry_ptr.40, ptr @test_bitmap_parse._entry_ptr.43, ptr @test_bitmap_parselist._entry, ptr @test_bitmap_parselist._entry.63, ptr @test_bitmap_parselist._entry.66, ptr @test_bitmap_parselist._entry_ptr, ptr @test_bitmap_parselist._entry_ptr.65, ptr @test_bitmap_parselist._entry_ptr.68, ptr @test_bitmap_printlist._entry, ptr @test_bitmap_printlist._entry.138, ptr @test_bitmap_printlist._entry.141, ptr @test_bitmap_printlist._entry_ptr, ptr @test_bitmap_printlist._entry_ptr.140, ptr @test_bitmap_printlist._entry_ptr.143, ptr @test_mem_optimisations._entry, ptr @test_mem_optimisations._entry.146, ptr @test_mem_optimisations._entry.149, ptr @test_mem_optimisations._entry.152, ptr @test_mem_optimisations._entry_ptr, ptr @test_mem_optimisations._entry_ptr.148, ptr @test_mem_optimisations._entry_ptr.151, ptr @test_mem_optimisations._entry_ptr.154, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.39, ptr @.str.42, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.139, ptr @.str.142, ptr @.str.144, ptr @.str.145, ptr @.str.147, ptr @.str.150, ptr @.str.153, ptr @.str.155, ptr @.str.156, ptr @.str.158, ptr @.str.161, ptr @test_cut, ptr @.str.163, ptr @.str.164, ptr @.str.165, ptr @.str.166, ptr @.str.167, ptr @.str.169, ptr @.str.172, ptr @.str.175], section "llvm.metadata"
@0 = internal global [168 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmap_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmap_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmap_arr32._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmap_parse._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmap_parse._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmap_parse._entry.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.332 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.356 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmap_parselist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmap_parselist._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 76, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmap_parselist._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.380 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.386 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.401 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.404 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.407 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.410 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.413 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.416 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.419 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.422 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.425 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.428 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.431 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.434 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.437 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.440 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.443 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.446 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.449 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.452 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.455 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.458 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.461 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.464 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.467 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.470 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.473 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.476 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.479 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.482 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.485 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.488 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.491 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.494 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.497 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.108 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.500 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.503 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.506 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.509 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.512 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.515 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.518 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.521 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.524 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.527 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.530 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.119 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.533 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.536 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.539 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.542 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.123 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.545 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.124 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.548 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.551 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.554 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.557 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.560 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.563 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.566 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.572 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.575 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.578 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.581 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmap_printlist._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmap_printlist._entry.138 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_bitmap_printlist._entry.141 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mem_optimisations._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.145 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.611 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mem_optimisations._entry.146 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.147 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.617 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mem_optimisations._entry.149 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.623 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_mem_optimisations._entry.152 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.153 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.629 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.155 to i32), i32 90, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.156 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.635 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.158 to i32), i32 111, i32 160, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.638 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.161 to i32), i32 79, i32 128, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.641 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @test_cut to i32), i32 704, i32 864, i32 ptrtoint (ptr @___asan_gen_.642 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.644 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.163 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.164 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.650 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kstm_report._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.165 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.166 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.167 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.662 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kstm_report._entry.168 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.169 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.668 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kstm_report._entry.171 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.172 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.674 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @kstm_report._entry.174 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.675 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.175 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.678 to i32), i32 ptrtoint (ptr @___asan_gen_.649 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.680 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @__check_eq_u32_array(ptr noundef %srcfile, i32 noundef %line, ptr noundef %exp_arr, i32 noundef %exp_len, ptr noundef %arr, i32 noundef %len) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @__sanitizer_cov_trace_cmp4(i32 %exp_len, i32 %len)
  %cmp.not = icmp eq i32 %exp_len, %len
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %srcfile, i32 noundef %line, i32 noundef %exp_len, i32 noundef %len) #11
  br label %return

if.end:                                           ; preds = %entry
  %mul = shl i32 %exp_len, 2
  %bcmp = tail call i32 @bcmp(ptr %exp_arr, ptr %arr, i32 %mul) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool.not = icmp eq i32 %bcmp, 0
  br i1 %tobool.not, label %if.end.return_crit_edge, label %do.end4

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef %srcfile, i32 noundef %line) #11
  tail call void @print_hex_dump(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7, i32 noundef 2, i32 noundef 32, i32 noundef 4, ptr noundef %exp_arr, i32 noundef %mul, i1 noundef zeroext false) #13
  tail call void @print_hex_dump(ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.8, i32 noundef 2, i32 noundef 32, i32 noundef 4, ptr noundef %arr, i32 noundef %mul, i1 noundef zeroext false) #13
  br label %return

return:                                           ; preds = %do.end4, %if.end.return_crit_edge, %do.end
  %retval.0 = phi i1 [ false, %do.end ], [ false, %do.end4 ], [ true, %if.end.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @test_bitmap_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.9) #11
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @test_bitmap_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.11) #11
  tail call fastcc void @selftest() #14
  %0 = load i32, ptr @total_tests, align 4
  %1 = load i32, ptr @failed_tests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i = icmp eq i32 %1, 0
  br i1 %cmp.i, label %do.end7.i, label %do.end12.i

do.end7.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call9.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.172, i32 noundef %0) #11
  br label %kstm_report.exit

do.end12.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call14.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.175, i32 noundef %1, i32 noundef %0) #11
  br label %kstm_report.exit

kstm_report.exit:                                 ; preds = %do.end12.i, %do.end7.i
  %cond.i = phi i32 [ 0, %do.end7.i ], [ -22, %do.end12.i ]
  ret i32 %cond.i
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @selftest() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @test_zero_clear() #14
  tail call fastcc void @test_fill_set() #14
  tail call fastcc void @test_copy() #14
  tail call fastcc void @test_replace() #14
  tail call fastcc void @test_bitmap_arr32() #14
  tail call fastcc void @test_bitmap_parse() #14
  tail call fastcc void @test_bitmap_parselist() #14
  tail call fastcc void @test_bitmap_printlist() #14
  tail call fastcc void @test_mem_optimisations() #14
  tail call fastcc void @test_for_each_set_clump8() #14
  tail call fastcc void @test_bitmap_cut() #14
  tail call fastcc void @test_bitmap_print_buf() #14
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_zero_clear() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %bmap = alloca [32 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %bmap) #13
  %0 = call ptr @memset(ptr %bmap, i32 255, i32 128)
  %1 = load i32, ptr @total_tests, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @total_tests, align 4
  %call = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 200, ptr noundef nonnull @.str.13, ptr noundef nonnull %bmap, i32 noundef 23) #14
  br i1 %call, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @failed_tests, align 4
  %inc2 = add i32 %2, 1
  store i32 %inc2, ptr @failed_tests, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = load i32, ptr @total_tests, align 4
  %inc4 = add i32 %3, 1
  store i32 %inc4, ptr @total_tests, align 4
  %call6 = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 201, ptr noundef nonnull @.str.14, ptr noundef nonnull %bmap, i32 noundef 1024) #14
  br i1 %call6, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr @failed_tests, align 4
  %inc8 = add i32 %4, 1
  store i32 %inc8, ptr @failed_tests, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  call void @__bitmap_clear(ptr noundef nonnull %bmap, i32 noundef 0, i32 noundef 9) #13
  %5 = load i32, ptr @total_tests, align 4
  %inc13 = add i32 %5, 1
  store i32 %inc13, ptr @total_tests, align 4
  %call15 = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 205, ptr noundef nonnull @.str.15, ptr noundef nonnull %bmap, i32 noundef 1024) #14
  br i1 %call15, label %if.end9.if.end18_crit_edge, label %if.then16

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load i32, ptr @failed_tests, align 4
  %inc17 = add i32 %6, 1
  store i32 %inc17, ptr @failed_tests, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end9.if.end18_crit_edge
  %7 = ptrtoint ptr %bmap to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 0, ptr %bmap, align 8
  %8 = load i32, ptr @total_tests, align 4
  %inc22 = add i32 %8, 1
  store i32 %inc22, ptr @total_tests, align 4
  %call24 = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 208, ptr noundef nonnull @.str.16, ptr noundef nonnull %bmap, i32 noundef 1024) #14
  br i1 %call24, label %if.end18.if.end27_crit_edge, label %if.then25

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load i32, ptr @failed_tests, align 4
  %inc26 = add i32 %9, 1
  store i32 %inc26, ptr @failed_tests, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end18.if.end27_crit_edge
  call void @__bitmap_clear(ptr noundef nonnull %bmap, i32 noundef 79, i32 noundef 19) #13
  %10 = load i32, ptr @total_tests, align 4
  %inc31 = add i32 %10, 1
  store i32 %inc31, ptr @total_tests, align 4
  %call33 = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 212, ptr noundef nonnull @.str.17, ptr noundef nonnull %bmap, i32 noundef 1024) #14
  br i1 %call33, label %if.end27.if.end36_crit_edge, label %if.then34

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load i32, ptr @failed_tests, align 4
  %inc35 = add i32 %11, 1
  store i32 %inc35, ptr @failed_tests, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end27.if.end36_crit_edge
  %12 = call ptr @memset(ptr %bmap, i32 0, i32 16)
  %13 = load i32, ptr @total_tests, align 4
  %inc40 = add i32 %13, 1
  store i32 %inc40, ptr @total_tests, align 4
  %call42 = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 215, ptr noundef nonnull @.str.18, ptr noundef nonnull %bmap, i32 noundef 1024) #14
  br i1 %call42, label %if.end36.if.end45_crit_edge, label %if.then43

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then43:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %14 = load i32, ptr @failed_tests, align 4
  %inc44 = add i32 %14, 1
  store i32 %inc44, ptr @failed_tests, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end36.if.end45_crit_edge
  %15 = call ptr @memset(ptr %bmap, i32 0, i32 128)
  %16 = load i32, ptr @total_tests, align 4
  %inc49 = add i32 %16, 1
  store i32 %inc49, ptr @total_tests, align 4
  %call51 = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 219, ptr noundef nonnull @.str.19, ptr noundef nonnull %bmap, i32 noundef 1024) #14
  br i1 %call51, label %if.end45.if.end54_crit_edge, label %if.then52

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then52:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %17 = load i32, ptr @failed_tests, align 4
  %inc53 = add i32 %17, 1
  store i32 %inc53, ptr @failed_tests, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end45.if.end54_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %bmap) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_fill_set() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %bmap = alloca [32 x i32], align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %bmap) #13
  %0 = call ptr @memset(ptr %bmap, i32 0, i32 128)
  %1 = load i32, ptr @total_tests, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @total_tests, align 4
  %call = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 229, ptr noundef nonnull @.str.19, ptr noundef nonnull %bmap, i32 noundef 23) #14
  br i1 %call, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @failed_tests, align 4
  %inc2 = add i32 %2, 1
  store i32 %inc2, ptr @failed_tests, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = load i32, ptr @total_tests, align 4
  %inc4 = add i32 %3, 1
  store i32 %inc4, ptr @total_tests, align 4
  %call6 = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 230, ptr noundef nonnull @.str.19, ptr noundef nonnull %bmap, i32 noundef 1024) #14
  br i1 %call6, label %if.end.if.end9_crit_edge, label %if.then7

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %4 = load i32, ptr @failed_tests, align 4
  %inc8 = add i32 %4, 1
  store i32 %inc8, ptr @failed_tests, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.then7, %if.end.if.end9_crit_edge
  call void @__bitmap_set(ptr noundef nonnull %bmap, i32 noundef 0, i32 noundef 9) #13
  %5 = load i32, ptr @total_tests, align 4
  %inc13 = add i32 %5, 1
  store i32 %inc13, ptr @total_tests, align 4
  %call15 = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 234, ptr noundef nonnull @.str.23, ptr noundef nonnull %bmap, i32 noundef 1024) #14
  br i1 %call15, label %if.end9.if.end18_crit_edge, label %if.then16

if.end9.if.end18_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then16:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load i32, ptr @failed_tests, align 4
  %inc17 = add i32 %6, 1
  store i32 %inc17, ptr @failed_tests, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then16, %if.end9.if.end18_crit_edge
  %7 = ptrtoint ptr %bmap to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 -1, ptr %bmap, align 8
  %8 = load i32, ptr @total_tests, align 4
  %inc22 = add i32 %8, 1
  store i32 %inc22, ptr @total_tests, align 4
  %call24 = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 237, ptr noundef nonnull @.str.24, ptr noundef nonnull %bmap, i32 noundef 1024) #14
  br i1 %call24, label %if.end18.if.end27_crit_edge, label %if.then25

if.end18.if.end27_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load i32, ptr @failed_tests, align 4
  %inc26 = add i32 %9, 1
  store i32 %inc26, ptr @failed_tests, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end18.if.end27_crit_edge
  call void @__bitmap_set(ptr noundef nonnull %bmap, i32 noundef 79, i32 noundef 19) #13
  %10 = load i32, ptr @total_tests, align 4
  %inc31 = add i32 %10, 1
  store i32 %inc31, ptr @total_tests, align 4
  %call33 = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 241, ptr noundef nonnull @.str.25, ptr noundef nonnull %bmap, i32 noundef 1024) #14
  br i1 %call33, label %if.end27.if.end36_crit_edge, label %if.then34

if.end27.if.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36

if.then34:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load i32, ptr @failed_tests, align 4
  %inc35 = add i32 %11, 1
  store i32 %inc35, ptr @failed_tests, align 4
  br label %if.end36

if.end36:                                         ; preds = %if.then34, %if.end27.if.end36_crit_edge
  %12 = call ptr @memset(ptr %bmap, i32 255, i32 16)
  %13 = load i32, ptr @total_tests, align 4
  %inc40 = add i32 %13, 1
  store i32 %inc40, ptr @total_tests, align 4
  %call42 = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 244, ptr noundef nonnull @.str.26, ptr noundef nonnull %bmap, i32 noundef 1024) #14
  br i1 %call42, label %if.end36.if.end45_crit_edge, label %if.then43

if.end36.if.end45_crit_edge:                      ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end45

if.then43:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %14 = load i32, ptr @failed_tests, align 4
  %inc44 = add i32 %14, 1
  store i32 %inc44, ptr @failed_tests, align 4
  br label %if.end45

if.end45:                                         ; preds = %if.then43, %if.end36.if.end45_crit_edge
  %15 = call ptr @memset(ptr %bmap, i32 255, i32 128)
  %16 = load i32, ptr @total_tests, align 4
  %inc49 = add i32 %16, 1
  store i32 %inc49, ptr @total_tests, align 4
  %call51 = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 248, ptr noundef nonnull @.str.14, ptr noundef nonnull %bmap, i32 noundef 1024) #14
  br i1 %call51, label %if.end45.if.end54_crit_edge, label %if.then52

if.end45.if.end54_crit_edge:                      ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then52:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #10
  %17 = load i32, ptr @failed_tests, align 4
  %inc53 = add i32 %17, 1
  store i32 %inc53, ptr @failed_tests, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.then52, %if.end45.if.end54_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %bmap) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_copy() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %bmap1 = alloca [32 x i32], align 4
  %bmap2 = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %bmap1) #13
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %bmap2) #13
  %0 = call ptr @memset(ptr %bmap1, i32 0, i32 128)
  %1 = getelementptr inbounds i8, ptr %bmap2, i32 4
  %2 = call ptr @memset(ptr %1, i32 0, i32 124)
  call void @__bitmap_set(ptr noundef nonnull %bmap1, i32 noundef 0, i32 noundef 19) #13
  %3 = ptrtoint ptr %bmap1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %bmap1, align 4
  %5 = ptrtoint ptr %bmap2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %bmap2, align 4
  %6 = load i32, ptr @total_tests, align 4
  %inc = add i32 %6, 1
  store i32 %inc, ptr @total_tests, align 4
  %call = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 262, ptr noundef nonnull @.str.27, ptr noundef nonnull %bmap2, i32 noundef 1024) #14
  br i1 %call, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = load i32, ptr @failed_tests, align 4
  %inc6 = add i32 %7, 1
  store i32 %inc6, ptr @failed_tests, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__bitmap_set(ptr noundef nonnull %bmap2, i32 noundef 0, i32 noundef 23) #13
  %8 = ptrtoint ptr %bmap1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %bmap1, align 4
  %10 = ptrtoint ptr %bmap2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %bmap2, align 4
  %11 = load i32, ptr @total_tests, align 4
  %inc11 = add i32 %11, 1
  store i32 %inc11, ptr @total_tests, align 4
  %call13 = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 266, ptr noundef nonnull @.str.27, ptr noundef nonnull %bmap2, i32 noundef 1024) #14
  br i1 %call13, label %if.end.if.end16_crit_edge, label %if.then14

if.end.if.end16_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16

if.then14:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = load i32, ptr @failed_tests, align 4
  %inc15 = add i32 %12, 1
  store i32 %inc15, ptr @failed_tests, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.then14, %if.end.if.end16_crit_edge
  call void @__bitmap_set(ptr noundef nonnull %bmap1, i32 noundef 0, i32 noundef 109) #13
  %13 = call ptr @memcpy(ptr %bmap2, ptr %bmap1, i32 128)
  %14 = load i32, ptr @total_tests, align 4
  %inc22 = add i32 %14, 1
  store i32 %inc22, ptr @total_tests, align 4
  %call24 = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 271, ptr noundef nonnull @.str.28, ptr noundef nonnull %bmap2, i32 noundef 1024) #14
  br i1 %call24, label %if.end16.if.end27_crit_edge, label %if.then25

if.end16.if.end27_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end27

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load i32, ptr @failed_tests, align 4
  %inc26 = add i32 %15, 1
  store i32 %inc26, ptr @failed_tests, align 4
  br label %if.end27

if.end27:                                         ; preds = %if.then25, %if.end16.if.end27_crit_edge
  %16 = call ptr @memcpy(ptr %bmap2, ptr %bmap1, i32 128)
  %17 = load i32, ptr @total_tests, align 4
  %inc33 = add i32 %17, 1
  store i32 %inc33, ptr @total_tests, align 4
  %call35 = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 275, ptr noundef nonnull @.str.28, ptr noundef nonnull %bmap2, i32 noundef 1024) #14
  br i1 %call35, label %if.end27.if.end38_crit_edge, label %if.then36

if.end27.if.end38_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.then36:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #10
  %18 = load i32, ptr @failed_tests, align 4
  %inc37 = add i32 %18, 1
  store i32 %inc37, ptr @failed_tests, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.then36, %if.end27.if.end38_crit_edge
  %19 = getelementptr inbounds i8, ptr %bmap2, i32 16
  %20 = call ptr @memset(ptr %19, i32 255, i32 112)
  %21 = call ptr @memcpy(ptr %bmap2, ptr %bmap1, i32 16)
  %22 = load i32, ptr @total_tests, align 4
  %inc44 = add i32 %22, 1
  store i32 %inc44, ptr @total_tests, align 4
  %call46 = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 283, ptr noundef nonnull @.str.29, ptr noundef nonnull %bmap2, i32 noundef 1024) #14
  br i1 %call46, label %if.end38.if.end49_crit_edge, label %if.then47

if.end38.if.end49_crit_edge:                      ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then47:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #10
  %23 = load i32, ptr @failed_tests, align 4
  %inc48 = add i32 %23, 1
  store i32 %inc48, ptr @failed_tests, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end38.if.end49_crit_edge
  %24 = getelementptr inbounds i8, ptr %bmap2, i32 16
  %25 = call ptr @memset(ptr %24, i32 255, i32 112)
  %26 = call ptr @memcpy(ptr %bmap2, ptr %bmap1, i32 16)
  %27 = load i32, ptr @total_tests, align 4
  %inc55 = add i32 %27, 1
  store i32 %inc55, ptr @total_tests, align 4
  %call57 = call fastcc zeroext i1 @__check_eq_pbl(i32 noundef 287, ptr noundef nonnull @.str.29, ptr noundef nonnull %bmap2, i32 noundef 1024) #14
  br i1 %call57, label %if.end49.if.end60_crit_edge, label %if.then58

if.end49.if.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end60

if.then58:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #10
  %28 = load i32, ptr @failed_tests, align 4
  %inc59 = add i32 %28, 1
  store i32 %inc59, ptr @failed_tests, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then58, %if.end49.if.end60_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %bmap2) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %bmap1) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_replace() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %bmap = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %bmap) #13
  %0 = call ptr @memset(ptr %bmap, i32 0, i32 128)
  call void @__bitmap_replace(ptr noundef nonnull %bmap, ptr noundef nonnull @exp2, ptr noundef getelementptr inbounds ([4 x i32], ptr @exp2, i32 0, i32 2), ptr noundef nonnull @exp2_to_exp3_mask, i32 noundef 64) #13
  %1 = load i32, ptr @total_tests, align 4
  %inc = add i32 %1, 1
  store i32 %inc, ptr @total_tests, align 4
  %call = call fastcc zeroext i1 @__check_eq_bitmap(i32 noundef 302, ptr noundef nonnull %bmap, ptr noundef nonnull @exp3_0_1, i32 noundef 64) #14
  br i1 %call, label %entry.if.end8_crit_edge, label %if.then6

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8

if.then6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %2 = load i32, ptr @failed_tests, align 4
  %inc7 = add i32 %2, 1
  store i32 %inc7, ptr @failed_tests, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then6, %entry.if.end8_crit_edge
  %3 = call ptr @memset(ptr %bmap, i32 0, i32 128)
  call void @__bitmap_replace(ptr noundef nonnull %bmap, ptr noundef getelementptr inbounds ([4 x i32], ptr @exp2, i32 0, i32 2), ptr noundef nonnull @exp2, ptr noundef nonnull @exp2_to_exp3_mask, i32 noundef 64) #13
  %4 = load i32, ptr @total_tests, align 4
  %inc16 = add i32 %4, 1
  store i32 %inc16, ptr @total_tests, align 4
  %call18 = call fastcc zeroext i1 @__check_eq_bitmap(i32 noundef 306, ptr noundef nonnull %bmap, ptr noundef nonnull @exp3_1_0, i32 noundef 64) #14
  br i1 %call18, label %if.end8.if.end21_crit_edge, label %if.then19

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then19:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %5 = load i32, ptr @failed_tests, align 4
  %inc20 = add i32 %5, 1
  store i32 %inc20, ptr @failed_tests, align 4
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.end8.if.end21_crit_edge
  %6 = call ptr @memset(ptr %bmap, i32 255, i32 128)
  call void @__bitmap_replace(ptr noundef nonnull %bmap, ptr noundef nonnull @exp2, ptr noundef getelementptr inbounds ([4 x i32], ptr @exp2, i32 0, i32 2), ptr noundef nonnull @exp2_to_exp3_mask, i32 noundef 64) #13
  %7 = load i32, ptr @total_tests, align 4
  %inc30 = add i32 %7, 1
  store i32 %inc30, ptr @total_tests, align 4
  %call32 = call fastcc zeroext i1 @__check_eq_bitmap(i32 noundef 310, ptr noundef nonnull %bmap, ptr noundef nonnull @exp3_0_1, i32 noundef 64) #14
  br i1 %call32, label %if.end21.if.end35_crit_edge, label %if.then33

if.end21.if.end35_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

if.then33:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  %8 = load i32, ptr @failed_tests, align 4
  %inc34 = add i32 %8, 1
  store i32 %inc34, ptr @failed_tests, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.then33, %if.end21.if.end35_crit_edge
  %9 = call ptr @memset(ptr %bmap, i32 255, i32 128)
  call void @__bitmap_replace(ptr noundef nonnull %bmap, ptr noundef getelementptr inbounds ([4 x i32], ptr @exp2, i32 0, i32 2), ptr noundef nonnull @exp2, ptr noundef nonnull @exp2_to_exp3_mask, i32 noundef 64) #13
  %10 = load i32, ptr @total_tests, align 4
  %inc44 = add i32 %10, 1
  store i32 %inc44, ptr @total_tests, align 4
  %call46 = call fastcc zeroext i1 @__check_eq_bitmap(i32 noundef 314, ptr noundef nonnull %bmap, ptr noundef nonnull @exp3_1_0, i32 noundef 64) #14
  br i1 %call46, label %if.end35.if.end49_crit_edge, label %if.then47

if.end35.if.end49_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end49

if.then47:                                        ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load i32, ptr @failed_tests, align 4
  %inc48 = add i32 %11, 1
  store i32 %inc48, ptr @failed_tests, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then47, %if.end35.if.end49_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %bmap) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_bitmap_arr32() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %arr = alloca [30 x i32], align 4
  %bmap2 = alloca [30 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %arr) #13
  call void @llvm.lifetime.start.p0(i64 120, ptr nonnull %bmap2) #13
  %0 = call ptr @memset(ptr %bmap2, i32 255, i32 120)
  %1 = call ptr @memset(ptr %arr, i32 165, i32 120)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %nbits.053 = phi i32 [ 0, %entry ], [ %inc28, %for.inc.for.body_crit_edge ]
  %sub.i.i = add nuw nsw i32 %nbits.053, 31
  %2 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %2, 268435452
  %3 = call ptr @memcpy(ptr %arr, ptr @exp1, i32 %mul.i.i)
  %rem.i = and i32 %nbits.053, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %bitmap_copy_clear_tail.exit.thread, label %if.then.i51

bitmap_copy_clear_tail.exit.thread:               ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %4 = call ptr @memcpy(ptr %bmap2, ptr @exp1, i32 %mul.i.i)
  br label %bitmap_copy_clear_tail.exit52

if.then.i51:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %sub.i = sub nsw i32 0, %nbits.053
  %and.i = and i32 %sub.i, 31
  %shr.i = lshr i32 -1, %and.i
  %div6.i = lshr i32 %nbits.053, 5
  %arrayidx.i = getelementptr i32, ptr %arr, i32 %div6.i
  %5 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %6, %shr.i
  store i32 %and1.i, ptr %arrayidx.i, align 4
  %7 = call ptr @memcpy(ptr %bmap2, ptr %arr, i32 %mul.i.i)
  %arrayidx.i49 = getelementptr i32, ptr %bmap2, i32 %div6.i
  %8 = ptrtoint ptr %arrayidx.i49 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx.i49, align 4
  %and1.i50 = and i32 %9, %shr.i
  store i32 %and1.i50, ptr %arrayidx.i49, align 4
  br label %bitmap_copy_clear_tail.exit52

bitmap_copy_clear_tail.exit52:                    ; preds = %if.then.i51, %bitmap_copy_clear_tail.exit.thread
  %10 = load i32, ptr @total_tests, align 4
  %inc = add i32 %10, 1
  store i32 %inc, ptr @total_tests, align 4
  %call = call fastcc zeroext i1 @__check_eq_bitmap(i32 noundef 573, ptr noundef nonnull %bmap2, ptr noundef nonnull @exp1, i32 noundef %nbits.053) #14
  br i1 %call, label %bitmap_copy_clear_tail.exit52.if.end_crit_edge, label %if.then

bitmap_copy_clear_tail.exit52.if.end_crit_edge:   ; preds = %bitmap_copy_clear_tail.exit52
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %bitmap_copy_clear_tail.exit52
  call void @__sanitizer_cov_trace_pc() #10
  %11 = load i32, ptr @failed_tests, align 4
  %inc5 = add i32 %11, 1
  store i32 %inc5, ptr @failed_tests, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %bitmap_copy_clear_tail.exit52.if.end_crit_edge
  %sub = add nsw i32 %nbits.053, -1
  %or = or i32 %sub, 31
  %add = add i32 %or, 1
  %call7 = call i32 @_find_next_bit_be(ptr noundef nonnull %bmap2, i32 noundef %add, i32 noundef %nbits.053) #13
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %add)
  %cmp11 = icmp ult i32 %call7, %add
  br i1 %cmp11, label %do.end, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call14 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.32, i32 noundef %nbits.053, i32 noundef %call7) #11
  br label %if.end15

if.end15:                                         ; preds = %do.end, %if.end.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 928, i32 %nbits.053)
  %cmp16 = icmp ult i32 %nbits.053, 928
  br i1 %cmp16, label %if.then17, label %if.end15.for.inc_crit_edge

if.end15.for.inc_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then17:                                        ; preds = %if.end15
  %12 = load i32, ptr @total_tests, align 4
  %inc19 = add i32 %12, 1
  store i32 %inc19, ptr @total_tests, align 4
  %div40 = lshr i32 %sub.i.i, 5
  %arrayidx = getelementptr [30 x i32], ptr %arr, i32 0, i32 %div40
  %13 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1515870811, i32 %14)
  %cmp.not.i = icmp eq i32 %14, -1515870811
  br i1 %cmp.not.i, label %if.then17.for.inc_crit_edge, label %if.then23

if.then17.for.inc_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then23:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 584, i32 noundef %14, i32 noundef -1515870811) #11
  %15 = load i32, ptr @failed_tests, align 4
  %inc24 = add i32 %15, 1
  store i32 %inc24, ptr @failed_tests, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then23, %if.then17.for.inc_crit_edge, %if.end15.for.inc_crit_edge
  %inc28 = add nuw nsw i32 %nbits.053, 1
  %exitcond.not = icmp eq i32 %inc28, 960
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %bmap2) #13
  call void @llvm.lifetime.end.p0(i64 120, ptr nonnull %arr) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_bitmap_parse() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %bmap = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %bmap) #13
  %0 = call ptr @memset(ptr %bmap, i32 255, i32 256)
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %entry
  %i.056 = phi i32 [ 0, %entry ], [ %inc, %cleanup.for.body_crit_edge ]
  %arrayidx = getelementptr [21 x %struct.test_bitmap_parselist], ptr @parse_tests, i32 0, i32 %i.056
  %1 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %1)
  %test.sroa.0.0.copyload = load i32, ptr %arrayidx, align 4
  %test.sroa.6.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 4
  %2 = ptrtoint ptr %test.sroa.6.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %2)
  %test.sroa.6.0.copyload = load ptr, ptr %test.sroa.6.0.arrayidx.sroa_idx, align 4
  %test.sroa.12.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 8
  %3 = ptrtoint ptr %test.sroa.12.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %3)
  %test.sroa.12.0.copyload = load ptr, ptr %test.sroa.12.0.arrayidx.sroa_idx, align 4
  %test.sroa.16.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 12
  %4 = ptrtoint ptr %test.sroa.16.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %4)
  %test.sroa.16.0.copyload = load i32, ptr %test.sroa.16.0.arrayidx.sroa_idx, align 4
  %test.sroa.19.0.arrayidx.sroa_idx = getelementptr inbounds i8, ptr %arrayidx, i32 16
  %5 = ptrtoint ptr %test.sroa.19.0.arrayidx.sroa_idx to i32
  call void @__asan_load4_noabort(i32 %5)
  %test.sroa.19.0.copyload = load i32, ptr %test.sroa.19.0.arrayidx.sroa_idx, align 4
  %and = and i32 %test.sroa.19.0.copyload, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %cond.false, label %for.body.cond.end_crit_edge

for.body.cond.end_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cond.end

cond.false:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call = call i32 @strlen(ptr noundef %test.sroa.6.0.copyload) #12
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body.cond.end_crit_edge
  %cond = phi i32 [ %call, %cond.false ], [ -1, %for.body.cond.end_crit_edge ]
  %call1 = call i64 @ktime_get() #13
  %call3 = call i32 @bitmap_parse(ptr noundef %test.sroa.6.0.copyload, i32 noundef %cond, ptr noundef nonnull %bmap, i32 noundef %test.sroa.16.0.copyload) #13
  %call4 = call i64 @ktime_get() #13
  %sub = sub i64 %call4, %call1
  call void @__sanitizer_cov_trace_cmp4(i32 %call3, i32 %test.sroa.0.0.copyload)
  %cmp5.not = icmp eq i32 %call3, %test.sroa.0.0.copyload
  br i1 %cmp5.not, label %if.end, label %do.end

do.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #10
  %call8 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.36, i32 noundef %i.056, ptr noundef %test.sroa.6.0.copyload, i32 noundef %call3, i32 noundef %test.sroa.0.0.copyload) #11
  br label %cleanup

if.end:                                           ; preds = %cond.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %test.sroa.0.0.copyload)
  %tobool9.not = icmp ne i32 %test.sroa.0.0.copyload, 0
  %tobool10.not = icmp eq ptr %test.sroa.12.0.copyload, null
  %or.cond = select i1 %tobool9.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %if.end.if.end26_crit_edge, label %land.lhs.true11

if.end.if.end26_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

land.lhs.true11:                                  ; preds = %if.end
  %call15 = call i32 @__bitmap_equal(ptr noundef nonnull %bmap, ptr noundef nonnull %test.sroa.12.0.copyload, i32 noundef %test.sroa.16.0.copyload) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool16.not = icmp eq i32 %call15, 0
  br i1 %tobool16.not, label %do.end20, label %land.lhs.true11.if.end26_crit_edge

land.lhs.true11.if.end26_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end26

do.end20:                                         ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %bmap, align 4
  %8 = ptrtoint ptr %test.sroa.12.0.copyload to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %test.sroa.12.0.copyload, align 4
  %call25 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.39, i32 noundef %i.056, ptr noundef %test.sroa.6.0.copyload, i32 noundef %7, i32 noundef %9) #11
  br label %cleanup

if.end26:                                         ; preds = %land.lhs.true11.if.end26_crit_edge, %if.end.if.end26_crit_edge
  %and28 = and i32 %test.sroa.19.0.copyload, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and28)
  %tobool29.not = icmp eq i32 %and28, 0
  br i1 %tobool29.not, label %if.end26.cleanup_crit_edge, label %do.end33

if.end26.cleanup_crit_edge:                       ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end33:                                         ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #10
  %call36 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.42, i32 noundef %i.056, ptr noundef %test.sroa.6.0.copyload, i64 noundef %sub) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end33, %if.end26.cleanup_crit_edge, %do.end20, %do.end
  %inc = add nuw nsw i32 %i.056, 1
  %exitcond.not = icmp eq i32 %inc, 21
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %bmap) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_bitmap_parselist() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %bmap = alloca [64 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %bmap) #13
  %0 = call ptr @memset(ptr %bmap, i32 255, i32 256)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry
  %i.064 = phi i32 [ 0, %entry ], [ %inc, %for.inc.for.body_crit_edge ]
  %call = call i64 @ktime_get() #13
  %arrayidx = getelementptr [69 x %struct.test_bitmap_parselist], ptr @parselist_tests, i32 0, i32 %i.064
  %in = getelementptr [69 x %struct.test_bitmap_parselist], ptr @parselist_tests, i32 0, i32 %i.064, i32 1
  %1 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %in, align 4
  %nbits = getelementptr [69 x %struct.test_bitmap_parselist], ptr @parselist_tests, i32 0, i32 %i.064, i32 3
  %3 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %nbits, align 4
  %call2 = call i32 @bitmap_parselist(ptr noundef %2, ptr noundef nonnull %bmap, i32 noundef %4) #13
  %call3 = call i64 @ktime_get() #13
  %sub = sub i64 %call3, %call
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call2, i32 %6)
  %cmp5.not = icmp eq i32 %call2, %6
  br i1 %cmp5.not, label %if.end, label %do.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call10 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.61, i32 noundef %i.064, ptr noundef %2, i32 noundef %call2, i32 noundef %6) #11
  br label %for.inc

if.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.if.end32_crit_edge

if.end.if.end32_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true:                                    ; preds = %if.end
  %expected = getelementptr [69 x %struct.test_bitmap_parselist], ptr @parselist_tests, i32 0, i32 %i.064, i32 2
  %7 = ptrtoint ptr %expected to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %expected, align 4
  %tobool12.not = icmp eq ptr %8, null
  br i1 %tobool12.not, label %land.lhs.true.if.end32_crit_edge, label %land.lhs.true13

land.lhs.true.if.end32_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

land.lhs.true13:                                  ; preds = %land.lhs.true
  %call19 = call i32 @__bitmap_equal(ptr noundef nonnull %bmap, ptr noundef nonnull %8, i32 noundef %4) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %do.end24, label %land.lhs.true13.if.end32_crit_edge

land.lhs.true13.if.end32_crit_edge:               ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end32

do.end24:                                         ; preds = %land.lhs.true13
  call void @__sanitizer_cov_trace_pc() #10
  %9 = ptrtoint ptr %bmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %bmap, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %8, align 4
  %call31 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.64, i32 noundef %i.064, ptr noundef %2, i32 noundef %10, i32 noundef %12) #11
  br label %for.inc

if.end32:                                         ; preds = %land.lhs.true13.if.end32_crit_edge, %land.lhs.true.if.end32_crit_edge, %if.end.if.end32_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %i.064)
  %tobool34.not.not = icmp eq i32 %i.064, 14
  br i1 %tobool34.not.not, label %do.end38, label %if.end32.for.inc_crit_edge

if.end32.for.inc_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %call42 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.67, i32 noundef 14, ptr noundef %2, i64 noundef %sub) #11
  br label %for.inc

for.inc:                                          ; preds = %do.end38, %if.end32.for.inc_crit_edge, %do.end24, %do.end
  %inc = add nuw nsw i32 %i.064, 1
  %exitcond.not = icmp eq i32 %inc, 69
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %bmap) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_bitmap_printlist() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %expected = alloca [256 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 4096) #15
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 12), align 4
  %call7.i42 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3264, i32 noundef 4096) #15
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %expected) #13
  %2 = call ptr @memset(ptr %expected, i32 255, i32 256)
  %tobool.not = icmp eq ptr %call7.i42, null
  %tobool2.not = icmp eq ptr %call7.i, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool2.not
  br i1 %or.cond, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end:                                           ; preds = %entry
  %3 = call ptr @memset(ptr %call7.i, i32 255, i32 4096)
  %call3 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %expected, i32 noundef 256, ptr noundef nonnull @.str.135, i32 noundef 32767)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %if.end.out_crit_edge, label %if.end5

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %out

if.end5:                                          ; preds = %if.end
  %call6 = tail call i64 @ktime_get() #13
  %call7 = tail call i32 @bitmap_print_to_pagebuf(i1 noundef zeroext true, ptr noundef nonnull %call7.i42, ptr noundef nonnull %call7.i, i32 noundef 32768) #13
  %call8 = tail call i64 @ktime_get() #13
  %sub = sub i64 %call8, %call6
  %add = add nuw i32 %call3, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %add)
  %cmp9.not = icmp eq i32 %call7, %add
  br i1 %cmp9.not, label %if.end12, label %do.end

do.end:                                           ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.136, i32 noundef %call7, i32 noundef %call3) #11
  br label %out

if.end12:                                         ; preds = %if.end5
  %call14 = call i32 @strncmp(ptr noundef nonnull %call7.i42, ptr noundef nonnull %expected, i32 noundef %call3)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.end26, label %do.end19

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call22 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.139, ptr noundef nonnull %call7.i42, ptr noundef nonnull %expected) #11
  br label %out

do.end26:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  %call28 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.142, ptr noundef nonnull %call7.i42, i64 noundef %sub) #11
  br label %out

out:                                              ; preds = %do.end26, %do.end19, %do.end, %if.end.out_crit_edge, %entry.out_crit_edge
  call void @kfree(ptr noundef %call7.i42) #13
  call void @kfree(ptr noundef %call7.i) #13
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %expected) #13
  ret void
}

; Function Attrs: cold noinline nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_mem_optimisations() unnamed_addr #3 section ".init.text" align 64 {
entry:
  %bmap1 = alloca [32 x i32], align 4
  %bmap2 = alloca [32 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %bmap1) #13
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %bmap2) #13
  br label %for.body3.lr.ph

for.body3.lr.ph:                                  ; preds = %for.inc48.for.body3.lr.ph_crit_edge, %entry
  %start.089 = phi i32 [ 0, %entry ], [ %add49, %for.inc48.for.body3.lr.ph_crit_edge ]
  %sub = sub nuw nsw i32 1024, %start.089
  br label %for.body3

for.body3:                                        ; preds = %for.inc.for.body3_crit_edge, %for.body3.lr.ph
  %nbits.086 = phi i32 [ 0, %for.body3.lr.ph ], [ %add, %for.inc.for.body3_crit_edge ]
  %0 = call ptr @memset(ptr %bmap1, i32 90, i32 128)
  %1 = call ptr @memset(ptr %bmap2, i32 90, i32 128)
  call void @__bitmap_set(ptr noundef nonnull %bmap1, i32 noundef %start.089, i32 noundef %nbits.086) #13
  call void @__bitmap_set(ptr noundef nonnull %bmap2, i32 noundef %start.089, i32 noundef %nbits.086) #13
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull dereferenceable(128) %bmap1, ptr noundef nonnull dereferenceable(128) %bmap2, i32 128) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool9.not.i.not = icmp eq i32 %bcmp.i, 0
  br i1 %tobool9.not.i.not, label %for.body3.if.end_crit_edge, label %do.end

for.body3.if.end_crit_edge:                       ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %for.body3
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.144, i32 noundef %start.089, i32 noundef %nbits.086) #11
  %2 = load i32, ptr @failed_tests, align 4
  %inc = add i32 %2, 1
  store i32 %inc, ptr @failed_tests, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body3.if.end_crit_edge
  %call12 = call i32 @__bitmap_equal(ptr noundef nonnull %bmap1, ptr noundef nonnull %bmap2, i32 noundef 1024) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.end17, label %if.end.if.else11.i81_crit_edge

if.end.if.else11.i81_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.else11.i81

do.end17:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %call19 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.147, i32 noundef %start.089, i32 noundef %nbits.086) #11
  %3 = load i32, ptr @failed_tests, align 4
  %inc20 = add i32 %3, 1
  store i32 %inc20, ptr @failed_tests, align 4
  br label %if.else11.i81

if.else11.i81:                                    ; preds = %do.end17, %if.end.if.else11.i81_crit_edge
  call void @__bitmap_clear(ptr noundef nonnull %bmap1, i32 noundef %start.089, i32 noundef %nbits.086) #13
  call void @__bitmap_clear(ptr noundef nonnull %bmap2, i32 noundef %start.089, i32 noundef %nbits.086) #13
  %bcmp.i82 = call i32 @bcmp(ptr noundef nonnull dereferenceable(128) %bmap1, ptr noundef nonnull dereferenceable(128) %bmap2, i32 128) #16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i82)
  %tobool9.not.i83.not = icmp eq i32 %bcmp.i82, 0
  br i1 %tobool9.not.i83.not, label %if.else11.i81.if.end35_crit_edge, label %do.end31

if.else11.i81.if.end35_crit_edge:                 ; preds = %if.else11.i81
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end35

do.end31:                                         ; preds = %if.else11.i81
  call void @__sanitizer_cov_trace_pc() #10
  %call33 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.150, i32 noundef %start.089, i32 noundef %nbits.086) #11
  %4 = load i32, ptr @failed_tests, align 4
  %inc34 = add i32 %4, 1
  store i32 %inc34, ptr @failed_tests, align 4
  br label %if.end35

if.end35:                                         ; preds = %do.end31, %if.else11.i81.if.end35_crit_edge
  %call38 = call i32 @__bitmap_equal(ptr noundef nonnull %bmap1, ptr noundef nonnull %bmap2, i32 noundef 1024) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call38)
  %tobool39.not = icmp eq i32 %call38, 0
  br i1 %tobool39.not, label %do.end43, label %if.end35.for.inc_crit_edge

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

do.end43:                                         ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #10
  %call45 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.153, i32 noundef %start.089, i32 noundef %nbits.086) #11
  %5 = load i32, ptr @failed_tests, align 4
  %inc46 = add i32 %5, 1
  store i32 %inc46, ptr @failed_tests, align 4
  br label %for.inc

for.inc:                                          ; preds = %do.end43, %if.end35.for.inc_crit_edge
  %add = add nuw nsw i32 %nbits.086, 8
  %cmp2 = icmp ult i32 %add, %sub
  br i1 %cmp2, label %for.inc.for.body3_crit_edge, label %for.inc48

for.inc.for.body3_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3

for.inc48:                                        ; preds = %for.inc
  %add49 = add nuw nsw i32 %start.089, 8
  %cmp = icmp ult i32 %start.089, 1016
  br i1 %cmp, label %for.inc48.for.body3.lr.ph_crit_edge, label %for.end50

for.inc48.for.body3.lr.ph_crit_edge:              ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body3.lr.ph

for.end50:                                        ; preds = %for.inc48
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %bmap2) #13
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %bmap1) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_for_each_set_clump8() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %bits = alloca [2 x i32], align 8
  %clump = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %bits) #13
  %0 = getelementptr inbounds [2 x i32], ptr %bits, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %clump) #13
  %1 = ptrtoint ptr %clump to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %clump, align 4, !annotation !394
  %2 = ptrtoint ptr %bits to i32
  call void @__asan_store8_noabort(i32 %2)
  store i64 2203318222848, ptr %bits, align 8
  call void @__bitmap_set(ptr noundef nonnull %bits, i32 noundef 27, i32 noundef 3) #13
  call void @__bitmap_set(ptr noundef nonnull %bits, i32 noundef 35, i32 noundef 3) #13
  call void @__bitmap_set(ptr noundef nonnull %bits, i32 noundef 40, i32 noundef 4) #13
  call void @__bitmap_set(ptr noundef nonnull %bits, i32 noundef 48, i32 noundef 8) #13
  %3 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %0, align 4
  %or.i.i19 = or i32 %4, 83886080
  store i32 %or.i.i19, ptr %0, align 4
  %call = call i32 @find_next_clump8(ptr noundef nonnull %clump, ptr noundef nonnull %bits, i32 noundef 64, i32 noundef 0) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %call)
  %cmp20 = icmp ult i32 %call, 64
  br i1 %cmp20, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %start.021 = phi i32 [ %call13, %if.end.for.body_crit_edge ], [ %call, %entry.for.body_crit_edge ]
  %5 = load i32, ptr @total_tests, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr @total_tests, align 4
  %call10 = call fastcc zeroext i1 @__check_eq_clump8(i32 noundef %start.021, ptr noundef nonnull %clump) #14
  br i1 %call10, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %6 = load i32, ptr @failed_tests, align 4
  %inc11 = add i32 %6, 1
  store i32 %inc11, ptr @failed_tests, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %add = add nuw nsw i32 %start.021, 8
  %call13 = call i32 @find_next_clump8(ptr noundef nonnull %clump, ptr noundef nonnull %bits, i32 noundef 64, i32 noundef %add) #13
  %cmp = icmp ult i32 %call13, 64
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %clump) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %bits) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_bitmap_cut() unnamed_addr #0 section ".init.text" align 64 {
entry:
  %b = alloca [5 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %b) #13
  %0 = getelementptr inbounds [5 x i32], ptr %b, i32 0, i32 1
  %1 = ptrtoint ptr %b to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %b, align 4
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.017 = phi i32 [ 0, %entry ], [ %inc7, %if.end.for.body_crit_edge ]
  %arrayidx2 = getelementptr [16 x %struct.test_bitmap_cut], ptr @test_cut, i32 0, i32 %i.017
  %in3 = getelementptr [16 x %struct.test_bitmap_cut], ptr @test_cut, i32 0, i32 %i.017, i32 3
  %2 = call ptr @memcpy(ptr %0, ptr %in3, i32 16)
  %3 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %arrayidx2, align 4
  %cut = getelementptr [16 x %struct.test_bitmap_cut], ptr @test_cut, i32 0, i32 %i.017, i32 1
  %5 = ptrtoint ptr %cut to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cut, align 4
  %nbits = getelementptr [16 x %struct.test_bitmap_cut], ptr @test_cut, i32 0, i32 %i.017, i32 2
  %7 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nbits, align 4
  call void @bitmap_cut(ptr noundef nonnull %b, ptr noundef %0, i32 noundef %4, i32 noundef %6, i32 noundef %8) #13
  %9 = load i32, ptr @total_tests, align 4
  %inc = add i32 %9, 1
  store i32 %inc, ptr @total_tests, align 4
  %expected = getelementptr [16 x %struct.test_bitmap_cut], ptr @test_cut, i32 0, i32 %i.017, i32 4
  %10 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbits, align 4
  %call = call fastcc zeroext i1 @__check_eq_bitmap(i32 noundef 711, ptr noundef %expected, ptr noundef nonnull %b, i32 noundef %11) #14
  br i1 %call, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %12 = load i32, ptr @failed_tests, align 4
  %inc6 = add i32 %12, 1
  store i32 %inc6, ptr @failed_tests, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc7 = add nuw nsw i32 %i.017, 1
  %exitcond.not = icmp eq i32 %inc7, 16
  br i1 %exitcond.not, label %for.end, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %b) #13
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc void @test_bitmap_print_buf() unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body:                                         ; preds = %if.end57.for.body_crit_edge, %entry
  %cmp = phi i1 [ true, %entry ], [ false, %if.end57.for.body_crit_edge ]
  %i.086 = phi i32 [ 0, %entry ], [ 1, %if.end57.for.body_crit_edge ]
  %arrayidx = getelementptr [2 x %struct.test_bitmap_print], ptr @test_print, i32 0, i32 %i.086
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %nbits = getelementptr [2 x %struct.test_bitmap_print], ptr @test_print, i32 0, i32 %i.086, i32 1
  %2 = ptrtoint ptr %nbits to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %nbits, align 4
  %call = tail call i32 @bitmap_print_bitmask_to_buf(ptr noundef nonnull @print_buf, ptr noundef %1, i32 noundef %3, i64 noundef 0, i32 noundef 8192) #13
  %4 = load i32, ptr @total_tests, align 4
  %inc = add i32 %4, 1
  store i32 %inc, ptr @total_tests, align 4
  %mask = getelementptr [2 x %struct.test_bitmap_print], ptr @test_print, i32 0, i32 %i.086, i32 2
  %5 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %mask, align 4
  %call1 = tail call i32 @strlen(ptr noundef %6) #12
  %add = add i32 %call1, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %call)
  %cmp.not.i = icmp eq i32 %add, %call
  br i1 %cmp.not.i, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 830, i32 noundef %add, i32 noundef %call) #11
  %7 = load i32, ptr @failed_tests, align 4
  %inc3 = add i32 %7, 1
  store i32 %inc3, ptr @failed_tests, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %8 = load i32, ptr @total_tests, align 4
  %inc5 = add i32 %8, 1
  store i32 %inc5, ptr @total_tests, align 4
  %call7 = tail call fastcc zeroext i1 @__check_eq_str(i32 noundef 831, ptr noundef %6, i32 noundef %call) #14
  br i1 %call7, label %if.end.if.end10_crit_edge, label %if.then8

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end10

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %9 = load i32, ptr @failed_tests, align 4
  %inc9 = add i32 %9, 1
  store i32 %inc9, ptr @failed_tests, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %if.end.if.end10_crit_edge
  %call14 = tail call i32 @bitmap_print_list_to_buf(ptr noundef nonnull @print_buf, ptr noundef %1, i32 noundef %3, i64 noundef 0, i32 noundef 8192) #13
  %10 = load i32, ptr @total_tests, align 4
  %inc16 = add i32 %10, 1
  store i32 %inc16, ptr @total_tests, align 4
  %list = getelementptr [2 x %struct.test_bitmap_print], ptr @test_print, i32 0, i32 %i.086, i32 3
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %call17 = tail call i32 @strlen(ptr noundef %12) #12
  %add18 = add i32 %call17, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %add18, i32 %call14)
  %cmp.not.i78 = icmp eq i32 %add18, %call14
  br i1 %cmp.not.i78, label %if.end10.if.end22_crit_edge, label %if.then20

if.end10.if.end22_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end22

if.then20:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  %call.i79 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 835, i32 noundef %add18, i32 noundef %call14) #11
  %13 = load i32, ptr @failed_tests, align 4
  %inc21 = add i32 %13, 1
  store i32 %inc21, ptr @failed_tests, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.then20, %if.end10.if.end22_crit_edge
  %14 = load i32, ptr @total_tests, align 4
  %inc25 = add i32 %14, 1
  store i32 %inc25, ptr @total_tests, align 4
  %call27 = tail call fastcc zeroext i1 @__check_eq_str(i32 noundef 836, ptr noundef %12, i32 noundef %call14) #14
  br i1 %call27, label %if.end22.if.end30_crit_edge, label %if.then28

if.end22.if.end30_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then28:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #10
  %15 = load i32, ptr @failed_tests, align 4
  %inc29 = add i32 %15, 1
  store i32 %inc29, ptr @failed_tests, align 4
  br label %if.end30

if.end30:                                         ; preds = %if.then28, %if.end22.if.end30_crit_edge
  %call33 = tail call i32 @strlen(ptr noundef %12) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %call33)
  %cmp34 = icmp ugt i32 %call33, 4096
  br i1 %cmp34, label %if.then35, label %if.end30.if.end57_crit_edge

if.end30.if.end57_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then35:                                        ; preds = %if.end30
  %call38 = tail call i32 @bitmap_print_list_to_buf(ptr noundef nonnull @print_buf, ptr noundef %1, i32 noundef %3, i64 noundef 4096, i32 noundef 4096) #13
  %16 = load i32, ptr @total_tests, align 4
  %inc40 = add i32 %16, 1
  store i32 %inc40, ptr @total_tests, align 4
  %call42 = tail call i32 @strlen(ptr noundef %12) #12
  %sub = add i32 %call42, -4095
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %call38)
  %cmp.not.i82 = icmp eq i32 %sub, %call38
  br i1 %cmp.not.i82, label %if.then35.if.end47_crit_edge, label %if.then45

if.then35.if.end47_crit_edge:                     ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end47

if.then45:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #10
  %call.i83 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.2, i32 noundef 842, i32 noundef %sub, i32 noundef %call38) #11
  %17 = load i32, ptr @failed_tests, align 4
  %inc46 = add i32 %17, 1
  store i32 %inc46, ptr @failed_tests, align 4
  br label %if.end47

if.end47:                                         ; preds = %if.then45, %if.then35.if.end47_crit_edge
  %18 = load i32, ptr @total_tests, align 4
  %inc50 = add i32 %18, 1
  store i32 %inc50, ptr @total_tests, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 4096
  %call52 = tail call fastcc zeroext i1 @__check_eq_str(i32 noundef 843, ptr noundef %add.ptr, i32 noundef %call38) #14
  br i1 %call52, label %if.end47.if.end57_crit_edge, label %if.then53

if.end47.if.end57_crit_edge:                      ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end57

if.then53:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #10
  %19 = load i32, ptr @failed_tests, align 4
  %inc54 = add i32 %19, 1
  store i32 %inc54, ptr @failed_tests, align 4
  br label %if.end57

if.end57:                                         ; preds = %if.then53, %if.end47.if.end57_crit_edge, %if.end30.if.end57_crit_edge
  br i1 %cmp, label %if.end57.for.body_crit_edge, label %for.end

if.end57.for.body_crit_edge:                      ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__check_eq_pbl(i32 noundef %line, ptr noundef %expected_pbl, ptr noundef %bitmap, i32 noundef %nbits) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull @pbl_buffer, i32 noundef 4096, ptr noundef nonnull @.str.20, i32 noundef %nbits, ptr noundef %bitmap)
  %call1 = tail call i32 @strcmp(ptr noundef %expected_pbl, ptr noundef nonnull @pbl_buffer) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool.not = icmp eq i32 %call1, 0
  br i1 %tobool.not, label %entry.return_crit_edge, label %do.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.2, i32 noundef %line, ptr noundef %expected_pbl, ptr noundef nonnull @pbl_buffer) #11
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  ret i1 %tobool.not
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__check_eq_bitmap(i32 noundef %line, ptr noundef %exp_bmap, ptr noundef %bmap, i32 noundef %nbits) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call13.i = tail call i32 @__bitmap_equal(ptr noundef %exp_bmap, ptr noundef %bmap, i32 noundef %nbits) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13.i)
  %tobool.not = icmp eq i32 %call13.i, 0
  br i1 %tobool.not, label %do.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %return

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.2, i32 noundef %line, i32 noundef %nbits, ptr noundef %exp_bmap, i32 noundef %nbits, ptr noundef %bmap) #11
  br label %return

return:                                           ; preds = %do.end, %entry.return_crit_edge
  %0 = xor i1 %tobool.not, true
  ret i1 %0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_replace(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__bitmap_equal(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parse(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_parselist(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_to_pagebuf(i1 noundef zeroext, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @find_next_clump8(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__check_eq_clump8(i32 noundef %offset, ptr nocapture noundef readonly %clump) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %div1 = lshr i32 %offset, 3
  %arrayidx = getelementptr i8, ptr @clump_exp, i32 %div1
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %arrayidx, align 1
  %conv = zext i8 %1 to i32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.end4, label %if.end7

do.end4:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call6 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.158, ptr noundef nonnull @.str.2, i32 noundef 655, i32 noundef %offset) #11
  br label %cleanup

if.end7:                                          ; preds = %entry
  %2 = ptrtoint ptr %clump to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %clump, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %conv)
  %cmp8.not = icmp eq i32 %3, %conv
  br i1 %cmp8.not, label %if.end7.cleanup_crit_edge, label %do.end13

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end13:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %call15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.161, ptr noundef nonnull @.str.2, i32 noundef 655, i32 noundef %conv, i32 noundef %3) #11
  br label %cleanup

cleanup:                                          ; preds = %do.end13, %if.end7.cleanup_crit_edge, %do.end4
  %retval.0 = phi i1 [ false, %do.end13 ], [ false, %do.end4 ], [ true, %if.end7.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @bitmap_cut(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_bitmask_to_buf(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @__check_eq_str(i32 noundef %line, ptr noundef %exp_str, i32 noundef %len) unnamed_addr #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  %call = tail call i32 @strncmp(ptr noundef %exp_str, ptr noundef nonnull @print_buf, i32 noundef %len)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp eq i32 %call, 0
  br i1 %cmp, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.163, ptr noundef nonnull @.str.2, i32 noundef %line, ptr noundef %exp_str, ptr noundef nonnull @print_buf) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i1 %cmp
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @bitmap_print_list_to_buf(ptr noundef, ptr noundef, i32 noundef, i64 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 168)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 168)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold noinline nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="none" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="none" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind uwtable(sync) }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nobuiltin }
attributes #13 = { nounwind }
attributes #14 = { cold }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !30, !31, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !51, !52, !53, !55, !57, !59, !61, !63, !65, !67, !69, !71, !73, !75, !76, !77, !78, !80, !82, !84, !85, !86, !87, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !111, !113, !115, !117, !119, !121, !123, !125, !127, !129, !131, !133, !135, !137, !139, !141, !143, !145, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !164, !166, !168, !170, !172, !174, !176, !178, !180, !182, !184, !186, !188, !190, !192, !194, !196, !198, !200, !202, !204, !206, !208, !210, !212, !214, !216, !218, !220, !222, !224, !226, !228, !230, !232, !234, !236, !238, !240, !242, !244, !246, !248, !250, !252, !254, !256, !258, !260, !262, !264, !266, !268, !270, !272, !274, !276, !278, !280, !282, !284, !286, !288, !290, !292, !294, !296, !298, !299, !300, !301, !303, !304, !305, !307, !308, !309, !311, !312, !313, !314, !316, !317, !318, !320, !321, !322, !324, !325, !326, !328, !329, !330, !331, !333, !334, !335, !337, !338, !339, !341, !343, !345, !347, !349, !351, !353, !355, !357, !359, !361, !362, !363, !364, !366, !367, !368, !369, !370, !372, !373, !374, !376, !377, !378, !380, !381, !382, !384, !385}
!llvm.module.flags = !{!386, !387, !388, !389, !390, !391, !392}
!llvm.ident = !{!393}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../lib/test_bitmap.c", i32 112, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @__check_eq_u32_array._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @__check_eq_u32_array._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../lib/test_bitmap.c", i32 119, i32 3}
!8 = !{ptr @__check_eq_u32_array._entry.3, !7, !"_entry", i1 false, i1 false}
!9 = !{ptr @__check_eq_u32_array._entry_ptr.5, !7, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../lib/test_bitmap.c", i32 120, i32 18}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../lib/test_bitmap.c", i32 120, i32 32}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../lib/test_bitmap.c", i32 122, i32 32}
!16 = !{ptr @.str.9, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../lib/test_bitmap.c", i32 864, i32 1}
!18 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @test_bitmap_exit._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @test_bitmap_exit._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @__initcall__kmod_test_bitmap__178_864_test_bitmap_init6, !17, !"__initcall__kmod_test_bitmap__178_864_test_bitmap_init6", i1 false, i1 false}
!22 = !{ptr @__exitcall_test_bitmap_exit, !17, !"__exitcall_test_bitmap_exit", i1 false, i1 false}
!23 = !{ptr @__UNIQUE_ID_author179, !24, !"__UNIQUE_ID_author179", i1 false, i1 false}
!24 = !{!"../lib/test_bitmap.c", i32 865, i32 1}
!25 = !{ptr @__UNIQUE_ID_file180, !26, !"__UNIQUE_ID_file180", i1 false, i1 false}
!26 = !{!"../lib/test_bitmap.c", i32 866, i32 1}
!27 = !{ptr @__UNIQUE_ID_license181, !26, !"__UNIQUE_ID_license181", i1 false, i1 false}
!28 = !{ptr @.str.11, !17, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.12, !17, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @test_bitmap_init._entry, !17, !"_entry", i1 false, i1 false}
!31 = !{ptr @test_bitmap_init._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../lib/test_bitmap.c", i32 200, i32 2}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../lib/test_bitmap.c", i32 201, i32 2}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../lib/test_bitmap.c", i32 205, i32 2}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../lib/test_bitmap.c", i32 208, i32 2}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../lib/test_bitmap.c", i32 212, i32 2}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../lib/test_bitmap.c", i32 215, i32 2}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../lib/test_bitmap.c", i32 219, i32 2}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../lib/test_bitmap.c", i32 92, i32 43}
!48 = !{ptr @.str.21, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../lib/test_bitmap.c", i32 94, i32 3}
!50 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @__check_eq_pbl._entry, !49, !"_entry", i1 false, i1 false}
!52 = !{ptr @__check_eq_pbl._entry_ptr, !49, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @pbl_buffer, !54, !"pbl_buffer", i1 false, i1 false}
!54 = !{!"../lib/test_bitmap.c", i32 21, i32 13}
!55 = !{ptr @.str.23, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../lib/test_bitmap.c", i32 234, i32 2}
!57 = !{ptr @.str.24, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../lib/test_bitmap.c", i32 237, i32 2}
!59 = !{ptr @.str.25, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../lib/test_bitmap.c", i32 241, i32 2}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../lib/test_bitmap.c", i32 244, i32 2}
!63 = !{ptr @.str.27, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../lib/test_bitmap.c", i32 262, i32 2}
!65 = !{ptr @.str.28, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../lib/test_bitmap.c", i32 271, i32 2}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../lib/test_bitmap.c", i32 283, i32 2}
!69 = !{ptr @exp2, !70, !"exp2", i1 false, i1 false}
!70 = !{!"../lib/test_bitmap.c", i32 42, i32 28}
!71 = !{ptr @exp2_to_exp3_mask, !72, !"exp2_to_exp3_mask", i1 false, i1 false}
!72 = !{!"../lib/test_bitmap.c", i32 48, i32 28}
!73 = !{ptr @.str.30, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../lib/test_bitmap.c", i32 79, i32 3}
!75 = !{ptr @.str.31, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @__check_eq_bitmap._entry, !74, !"_entry", i1 false, i1 false}
!77 = !{ptr @__check_eq_bitmap._entry_ptr, !74, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @exp3_0_1, !79, !"exp3_0_1", i1 false, i1 false}
!79 = !{!"../lib/test_bitmap.c", i32 52, i32 28}
!80 = !{ptr @exp3_1_0, !81, !"exp3_1_0", i1 false, i1 false}
!81 = !{!"../lib/test_bitmap.c", i32 56, i32 28}
!82 = !{ptr @.str.32, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../lib/test_bitmap.c", i32 578, i32 4}
!84 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!85 = !{ptr @test_bitmap_arr32._entry, !83, !"_entry", i1 false, i1 false}
!86 = !{ptr @test_bitmap_arr32._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!87 = !{ptr @exp1, !88, !"exp1", i1 false, i1 false}
!88 = !{!"../lib/test_bitmap.c", i32 24, i32 28}
!89 = !{ptr @.str.34, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../lib/test_bitmap.c", i32 65, i32 3}
!91 = !{ptr @.str.35, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @__check_eq_uint._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @__check_eq_uint._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.36, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../lib/test_bitmap.c", i32 541, i32 4}
!96 = !{ptr @.str.37, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @test_bitmap_parse._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @test_bitmap_parse._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../lib/test_bitmap.c", i32 548, i32 4}
!101 = !{ptr @test_bitmap_parse._entry.38, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @test_bitmap_parse._entry_ptr.40, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.42, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../lib/test_bitmap.c", i32 555, i32 4}
!105 = !{ptr @test_bitmap_parse._entry.41, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @test_bitmap_parse._entry_ptr.43, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.44, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../lib/test_bitmap.c", i32 500, i32 6}
!109 = !{ptr @.str.45, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../lib/test_bitmap.c", i32 501, i32 6}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../lib/test_bitmap.c", i32 502, i32 6}
!113 = !{ptr @.str.47, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../lib/test_bitmap.c", i32 503, i32 6}
!115 = !{ptr @.str.48, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../lib/test_bitmap.c", i32 504, i32 6}
!117 = !{ptr @.str.49, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../lib/test_bitmap.c", i32 505, i32 6}
!119 = !{ptr @.str.50, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../lib/test_bitmap.c", i32 506, i32 6}
!121 = !{ptr @.str.51, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../lib/test_bitmap.c", i32 508, i32 6}
!123 = !{ptr @.str.52, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../lib/test_bitmap.c", i32 509, i32 6}
!125 = !{ptr @.str.53, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../lib/test_bitmap.c", i32 510, i32 6}
!127 = !{ptr @.str.54, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../lib/test_bitmap.c", i32 512, i32 6}
!129 = !{ptr @.str.55, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../lib/test_bitmap.c", i32 513, i32 6}
!131 = !{ptr @.str.56, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../lib/test_bitmap.c", i32 514, i32 6}
!133 = !{ptr @.str.57, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../lib/test_bitmap.c", i32 516, i32 15}
!135 = !{ptr @.str.58, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../lib/test_bitmap.c", i32 517, i32 15}
!137 = !{ptr @.str.59, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../lib/test_bitmap.c", i32 518, i32 15}
!139 = !{ptr @.str.60, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../lib/test_bitmap.c", i32 520, i32 15}
!141 = !{ptr @parse_tests, !142, !"parse_tests", i1 false, i1 false}
!142 = !{!"../lib/test_bitmap.c", i32 498, i32 43}
!143 = !{ptr @parse_test, !144, !"parse_test", i1 false, i1 false}
!144 = !{!"../lib/test_bitmap.c", i32 485, i32 28}
!145 = !{ptr @parse_test2, !146, !"parse_test2", i1 false, i1 false}
!146 = !{!"../lib/test_bitmap.c", i32 492, i32 28}
!147 = !{ptr @.str.61, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../lib/test_bitmap.c", i32 428, i32 4}
!149 = !{ptr @.str.62, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @test_bitmap_parselist._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @test_bitmap_parselist._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.64, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../lib/test_bitmap.c", i32 435, i32 4}
!154 = !{ptr @test_bitmap_parselist._entry.63, !153, !"_entry", i1 false, i1 false}
!155 = !{ptr @test_bitmap_parselist._entry_ptr.65, !153, !"_entry_ptr", i1 false, i1 false}
!156 = !{ptr @.str.67, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../lib/test_bitmap.c", i32 442, i32 4}
!158 = !{ptr @test_bitmap_parselist._entry.66, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @test_bitmap_parselist._entry_ptr.68, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.69, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../lib/test_bitmap.c", i32 333, i32 6}
!162 = !{ptr @.str.70, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../lib/test_bitmap.c", i32 334, i32 6}
!164 = !{ptr @.str.71, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../lib/test_bitmap.c", i32 335, i32 6}
!166 = !{ptr @.str.72, !167, !"<string literal>", i1 false, i1 false}
!167 = !{!"../lib/test_bitmap.c", i32 336, i32 6}
!168 = !{ptr @.str.73, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../lib/test_bitmap.c", i32 337, i32 6}
!170 = !{ptr @.str.74, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../lib/test_bitmap.c", i32 338, i32 6}
!172 = !{ptr @.str.75, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../lib/test_bitmap.c", i32 339, i32 6}
!174 = !{ptr @.str.76, !175, !"<string literal>", i1 false, i1 false}
!175 = !{!"../lib/test_bitmap.c", i32 340, i32 6}
!176 = !{ptr @.str.77, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../lib/test_bitmap.c", i32 341, i32 6}
!178 = !{ptr @.str.78, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../lib/test_bitmap.c", i32 342, i32 6}
!180 = !{ptr @.str.79, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../lib/test_bitmap.c", i32 343, i32 6}
!182 = !{ptr @.str.80, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../lib/test_bitmap.c", i32 345, i32 6}
!184 = !{ptr @.str.81, !185, !"<string literal>", i1 false, i1 false}
!185 = !{!"../lib/test_bitmap.c", i32 347, i32 6}
!186 = !{ptr @.str.82, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../lib/test_bitmap.c", i32 350, i32 6}
!188 = !{ptr @.str.83, !189, !"<string literal>", i1 false, i1 false}
!189 = !{!"../lib/test_bitmap.c", i32 351, i32 6}
!190 = !{ptr @.str.84, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../lib/test_bitmap.c", i32 352, i32 6}
!192 = !{ptr @.str.85, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../lib/test_bitmap.c", i32 353, i32 6}
!194 = !{ptr @.str.86, !195, !"<string literal>", i1 false, i1 false}
!195 = !{!"../lib/test_bitmap.c", i32 355, i32 6}
!196 = !{ptr @.str.87, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../lib/test_bitmap.c", i32 356, i32 6}
!198 = !{ptr @.str.88, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../lib/test_bitmap.c", i32 357, i32 6}
!200 = !{ptr @.str.89, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../lib/test_bitmap.c", i32 358, i32 6}
!202 = !{ptr @.str.90, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../lib/test_bitmap.c", i32 360, i32 6}
!204 = !{ptr @.str.91, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../lib/test_bitmap.c", i32 361, i32 6}
!206 = !{ptr @.str.92, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../lib/test_bitmap.c", i32 362, i32 6}
!208 = !{ptr @.str.93, !209, !"<string literal>", i1 false, i1 false}
!209 = !{!"../lib/test_bitmap.c", i32 363, i32 6}
!210 = !{ptr @.str.94, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../lib/test_bitmap.c", i32 364, i32 6}
!212 = !{ptr @.str.95, !213, !"<string literal>", i1 false, i1 false}
!213 = !{!"../lib/test_bitmap.c", i32 365, i32 6}
!214 = !{ptr @.str.96, !215, !"<string literal>", i1 false, i1 false}
!215 = !{!"../lib/test_bitmap.c", i32 366, i32 6}
!216 = !{ptr @.str.97, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../lib/test_bitmap.c", i32 367, i32 6}
!218 = !{ptr @.str.98, !219, !"<string literal>", i1 false, i1 false}
!219 = !{!"../lib/test_bitmap.c", i32 368, i32 6}
!220 = !{ptr @.str.99, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../lib/test_bitmap.c", i32 369, i32 6}
!222 = !{ptr @.str.100, !223, !"<string literal>", i1 false, i1 false}
!223 = !{!"../lib/test_bitmap.c", i32 370, i32 6}
!224 = !{ptr @.str.101, !225, !"<string literal>", i1 false, i1 false}
!225 = !{!"../lib/test_bitmap.c", i32 372, i32 6}
!226 = !{ptr @.str.102, !227, !"<string literal>", i1 false, i1 false}
!227 = !{!"../lib/test_bitmap.c", i32 373, i32 6}
!228 = !{ptr @.str.103, !229, !"<string literal>", i1 false, i1 false}
!229 = !{!"../lib/test_bitmap.c", i32 374, i32 6}
!230 = !{ptr @.str.104, !231, !"<string literal>", i1 false, i1 false}
!231 = !{!"../lib/test_bitmap.c", i32 375, i32 6}
!232 = !{ptr @.str.105, !233, !"<string literal>", i1 false, i1 false}
!233 = !{!"../lib/test_bitmap.c", i32 376, i32 6}
!234 = !{ptr @.str.106, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../lib/test_bitmap.c", i32 377, i32 6}
!236 = !{ptr @.str.107, !237, !"<string literal>", i1 false, i1 false}
!237 = !{!"../lib/test_bitmap.c", i32 378, i32 6}
!238 = !{ptr @.str.108, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../lib/test_bitmap.c", i32 379, i32 6}
!240 = !{ptr @.str.109, !241, !"<string literal>", i1 false, i1 false}
!241 = !{!"../lib/test_bitmap.c", i32 381, i32 6}
!242 = !{ptr @.str.110, !243, !"<string literal>", i1 false, i1 false}
!243 = !{!"../lib/test_bitmap.c", i32 382, i32 6}
!244 = !{ptr @.str.111, !245, !"<string literal>", i1 false, i1 false}
!245 = !{!"../lib/test_bitmap.c", i32 383, i32 6}
!246 = !{ptr @.str.112, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../lib/test_bitmap.c", i32 385, i32 8}
!248 = !{ptr @.str.113, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../lib/test_bitmap.c", i32 386, i32 8}
!250 = !{ptr @.str.114, !251, !"<string literal>", i1 false, i1 false}
!251 = !{!"../lib/test_bitmap.c", i32 387, i32 8}
!252 = !{ptr @.str.115, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../lib/test_bitmap.c", i32 388, i32 8}
!254 = !{ptr @.str.116, !255, !"<string literal>", i1 false, i1 false}
!255 = !{!"../lib/test_bitmap.c", i32 389, i32 12}
!256 = !{ptr @.str.117, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../lib/test_bitmap.c", i32 390, i32 12}
!258 = !{ptr @.str.118, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../lib/test_bitmap.c", i32 392, i32 12}
!260 = !{ptr @.str.119, !261, !"<string literal>", i1 false, i1 false}
!261 = !{!"../lib/test_bitmap.c", i32 393, i32 12}
!262 = !{ptr @.str.120, !263, !"<string literal>", i1 false, i1 false}
!263 = !{!"../lib/test_bitmap.c", i32 394, i32 12}
!264 = !{ptr @.str.121, !265, !"<string literal>", i1 false, i1 false}
!265 = !{!"../lib/test_bitmap.c", i32 395, i32 12}
!266 = !{ptr @.str.122, !267, !"<string literal>", i1 false, i1 false}
!267 = !{!"../lib/test_bitmap.c", i32 396, i32 12}
!268 = !{ptr @.str.123, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../lib/test_bitmap.c", i32 397, i32 12}
!270 = !{ptr @.str.124, !271, !"<string literal>", i1 false, i1 false}
!271 = !{!"../lib/test_bitmap.c", i32 398, i32 12}
!272 = !{ptr @.str.125, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../lib/test_bitmap.c", i32 399, i32 12}
!274 = !{ptr @.str.126, !275, !"<string literal>", i1 false, i1 false}
!275 = !{!"../lib/test_bitmap.c", i32 400, i32 12}
!276 = !{ptr @.str.127, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../lib/test_bitmap.c", i32 401, i32 12}
!278 = !{ptr @.str.128, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../lib/test_bitmap.c", i32 402, i32 12}
!280 = !{ptr @.str.129, !281, !"<string literal>", i1 false, i1 false}
!281 = !{!"../lib/test_bitmap.c", i32 403, i32 15}
!282 = !{ptr @.str.130, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../lib/test_bitmap.c", i32 405, i32 12}
!284 = !{ptr @.str.131, !285, !"<string literal>", i1 false, i1 false}
!285 = !{!"../lib/test_bitmap.c", i32 406, i32 12}
!286 = !{ptr @.str.132, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../lib/test_bitmap.c", i32 407, i32 12}
!288 = !{ptr @.str.133, !289, !"<string literal>", i1 false, i1 false}
!289 = !{!"../lib/test_bitmap.c", i32 408, i32 12}
!290 = !{ptr @.str.134, !291, !"<string literal>", i1 false, i1 false}
!291 = !{!"../lib/test_bitmap.c", i32 409, i32 12}
!292 = !{ptr @parselist_tests, !293, !"parselist_tests", i1 false, i1 false}
!293 = !{!"../lib/test_bitmap.c", i32 328, i32 43}
!294 = !{ptr @.str.135, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../lib/test_bitmap.c", i32 461, i32 33}
!296 = !{ptr @.str.136, !297, !"<string literal>", i1 false, i1 false}
!297 = !{!"../lib/test_bitmap.c", i32 470, i32 3}
!298 = !{ptr @.str.137, !297, !"<string literal>", i1 false, i1 false}
!299 = !{ptr @test_bitmap_printlist._entry, !297, !"_entry", i1 false, i1 false}
!300 = !{ptr @test_bitmap_printlist._entry_ptr, !297, !"_entry_ptr", i1 false, i1 false}
!301 = !{ptr @.str.139, !302, !"<string literal>", i1 false, i1 false}
!302 = !{!"../lib/test_bitmap.c", i32 475, i32 3}
!303 = !{ptr @test_bitmap_printlist._entry.138, !302, !"_entry", i1 false, i1 false}
!304 = !{ptr @test_bitmap_printlist._entry_ptr.140, !302, !"_entry_ptr", i1 false, i1 false}
!305 = !{ptr @.str.142, !306, !"<string literal>", i1 false, i1 false}
!306 = !{!"../lib/test_bitmap.c", i32 479, i32 2}
!307 = !{ptr @test_bitmap_printlist._entry.141, !306, !"_entry", i1 false, i1 false}
!308 = !{ptr @test_bitmap_printlist._entry_ptr.143, !306, !"_entry_ptr", i1 false, i1 false}
!309 = !{ptr @.str.144, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../lib/test_bitmap.c", i32 602, i32 5}
!311 = !{ptr @.str.145, !310, !"<string literal>", i1 false, i1 false}
!312 = !{ptr @test_mem_optimisations._entry, !310, !"_entry", i1 false, i1 false}
!313 = !{ptr @test_mem_optimisations._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!314 = !{ptr @.str.147, !315, !"<string literal>", i1 false, i1 false}
!315 = !{!"../lib/test_bitmap.c", i32 606, i32 5}
!316 = !{ptr @test_mem_optimisations._entry.146, !315, !"_entry", i1 false, i1 false}
!317 = !{ptr @test_mem_optimisations._entry_ptr.148, !315, !"_entry_ptr", i1 false, i1 false}
!318 = !{ptr @.str.150, !319, !"<string literal>", i1 false, i1 false}
!319 = !{!"../lib/test_bitmap.c", i32 613, i32 5}
!320 = !{ptr @test_mem_optimisations._entry.149, !319, !"_entry", i1 false, i1 false}
!321 = !{ptr @test_mem_optimisations._entry_ptr.151, !319, !"_entry_ptr", i1 false, i1 false}
!322 = !{ptr @.str.153, !323, !"<string literal>", i1 false, i1 false}
!323 = !{!"../lib/test_bitmap.c", i32 617, i32 5}
!324 = !{ptr @test_mem_optimisations._entry.152, !323, !"_entry", i1 false, i1 false}
!325 = !{ptr @test_mem_optimisations._entry_ptr.154, !323, !"_entry_ptr", i1 false, i1 false}
!326 = !{ptr @.str.155, !327, !"<string literal>", i1 false, i1 false}
!327 = !{!"../lib/test_bitmap.c", i32 139, i32 3}
!328 = !{ptr @.str.156, !327, !"<string literal>", i1 false, i1 false}
!329 = !{ptr @__check_eq_clump8._entry, !327, !"_entry", i1 false, i1 false}
!330 = !{ptr @__check_eq_clump8._entry_ptr, !327, !"_entry_ptr", i1 false, i1 false}
!331 = !{ptr @.str.158, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../lib/test_bitmap.c", i32 146, i32 3}
!333 = !{ptr @__check_eq_clump8._entry.157, !332, !"_entry", i1 false, i1 false}
!334 = !{ptr @__check_eq_clump8._entry_ptr.159, !332, !"_entry_ptr", i1 false, i1 false}
!335 = !{ptr @.str.161, !336, !"<string literal>", i1 false, i1 false}
!336 = !{!"../lib/test_bitmap.c", i32 152, i32 3}
!337 = !{ptr @__check_eq_clump8._entry.160, !336, !"_entry", i1 false, i1 false}
!338 = !{ptr @__check_eq_clump8._entry_ptr.162, !336, !"_entry_ptr", i1 false, i1 false}
!339 = !{ptr @clump_exp, !340, !"clump_exp", i1 false, i1 false}
!340 = !{!"../lib/test_bitmap.c", i32 625, i32 28}
!341 = !{ptr @test_cut, !342, !"test_cut", i1 false, i1 false}
!342 = !{!"../lib/test_bitmap.c", i32 666, i32 31}
!343 = !{ptr @test_print, !344, !"test_print", i1 false, i1 false}
!344 = !{!"../lib/test_bitmap.c", i32 815, i32 39}
!345 = !{ptr @small_bitmap, !346, !"small_bitmap", i1 false, i1 false}
!346 = !{!"../lib/test_bitmap.c", i32 722, i32 28}
!347 = !{ptr @small_mask, !348, !"small_mask", i1 false, i1 false}
!348 = !{!"../lib/test_bitmap.c", i32 726, i32 19}
!349 = !{ptr @small_list, !350, !"small_list", i1 false, i1 false}
!350 = !{!"../lib/test_bitmap.c", i32 727, i32 19}
!351 = !{ptr @large_bitmap, !352, !"large_bitmap", i1 false, i1 false}
!352 = !{!"../lib/test_bitmap.c", i32 729, i32 28}
!353 = !{ptr @large_mask, !354, !"large_mask", i1 false, i1 false}
!354 = !{!"../lib/test_bitmap.c", i32 752, i32 19}
!355 = !{ptr @large_list, !356, !"large_list", i1 false, i1 false}
!356 = !{!"../lib/test_bitmap.c", i32 773, i32 19}
!357 = !{ptr @print_buf, !358, !"print_buf", i1 false, i1 false}
!358 = !{!"../lib/test_bitmap.c", i32 22, i32 13}
!359 = !{ptr @.str.163, !360, !"<string literal>", i1 false, i1 false}
!360 = !{!"../lib/test_bitmap.c", i32 169, i32 3}
!361 = !{ptr @.str.164, !360, !"<string literal>", i1 false, i1 false}
!362 = !{ptr @__check_eq_str._entry, !360, !"_entry", i1 false, i1 false}
!363 = !{ptr @__check_eq_str._entry_ptr, !360, !"_entry_ptr", i1 false, i1 false}
!364 = !{ptr @.str.165, !365, !"<string literal>", i1 false, i1 false}
!365 = !{!"../lib/../tools/testing/selftests/kselftest_module.h", i32 30, i32 4}
!366 = !{ptr @.str.166, !365, !"<string literal>", i1 false, i1 false}
!367 = !{ptr @.str.167, !365, !"<string literal>", i1 false, i1 false}
!368 = !{ptr @kstm_report._entry, !365, !"_entry", i1 false, i1 false}
!369 = !{ptr @kstm_report._entry_ptr, !365, !"_entry_ptr", i1 false, i1 false}
!370 = !{ptr @.str.169, !371, !"<string literal>", i1 false, i1 false}
!371 = !{!"../lib/../tools/testing/selftests/kselftest_module.h", i32 31, i32 4}
!372 = !{ptr @kstm_report._entry.168, !371, !"_entry", i1 false, i1 false}
!373 = !{ptr @kstm_report._entry_ptr.170, !371, !"_entry_ptr", i1 false, i1 false}
!374 = !{ptr @.str.172, !375, !"<string literal>", i1 false, i1 false}
!375 = !{!"../lib/../tools/testing/selftests/kselftest_module.h", i32 33, i32 4}
!376 = !{ptr @kstm_report._entry.171, !375, !"_entry", i1 false, i1 false}
!377 = !{ptr @kstm_report._entry_ptr.173, !375, !"_entry_ptr", i1 false, i1 false}
!378 = !{ptr @.str.175, !379, !"<string literal>", i1 false, i1 false}
!379 = !{!"../lib/../tools/testing/selftests/kselftest_module.h", i32 35, i32 3}
!380 = !{ptr @kstm_report._entry.174, !379, !"_entry", i1 false, i1 false}
!381 = !{ptr @kstm_report._entry_ptr.176, !379, !"_entry_ptr", i1 false, i1 false}
!382 = !{ptr @total_tests, !383, !"total_tests", i1 false, i1 false}
!383 = !{!"../lib/test_bitmap.c", i32 19, i32 1}
!384 = !{ptr @failed_tests, !383, !"failed_tests", i1 false, i1 false}
!385 = distinct !{null, !383, !"skipped_tests", i1 false, i1 false}
!386 = !{i32 1, !"wchar_size", i32 2}
!387 = !{i32 1, !"min_enum_size", i32 4}
!388 = !{i32 8, !"branch-target-enforcement", i32 0}
!389 = !{i32 8, !"sign-return-address", i32 0}
!390 = !{i32 8, !"sign-return-address-all", i32 0}
!391 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!392 = !{i32 7, !"uwtable", i32 1}
!393 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!394 = !{!"auto-init"}
